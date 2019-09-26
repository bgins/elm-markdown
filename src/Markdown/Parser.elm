module Markdown.Parser exposing (..)

import List.Extra
import Markdown.Block as Block exposing (Block)
import Markdown.CodeBlock
import Markdown.Decoder
import Markdown.Html exposing (..)
import Markdown.Inlines as Inlines exposing (StyledString)
import Markdown.List
import Parser
import Parser.Advanced as Advanced exposing ((|.), (|=), Nestable(..), Step(..), andThen, chompIf, chompUntil, chompWhile, getChompedString, inContext, int, lazy, loop, map, multiComment, oneOf, problem, succeed, symbol, token)
import XmlParser exposing (Node(..))


type alias Decoder a =
    Markdown.Decoder.Decoder a


type alias Renderer view =
    { heading : { level : Int, rawText : String, children : List view } -> view
    , raw : List view -> view
    , htmlDecoder : Decoder (List view -> view)
    , plain : String -> view
    , code : String -> view
    , bold : String -> view
    , italic : String -> view

    -- TODO make this a `Result` so users can validate links
    , link : { title : Maybe String, destination : String } -> List view -> Result String view
    , image : { src : String } -> String -> Result String view
    , list : List view -> view
    , codeBlock : { body : String, language : Maybe String } -> view
    , thematicBreak : view
    }


renderStyled : Renderer view -> List StyledString -> Result String (List view)
renderStyled renderer styledStrings =
    styledStrings
        |> List.foldr (foldThing renderer) []
        |> combineResults


foldThing : Renderer view -> StyledString -> List (Result String view) -> List (Result String view)
foldThing renderer { style, string } soFar =
    case style.link of
        Just link ->
            case link.destination of
                Inlines.Link destination ->
                    case Advanced.run Inlines.parse string of
                        Ok styledLine ->
                            (renderStyled renderer styledLine
                                |> Result.andThen
                                    (\children ->
                                        renderer.link { title = link.title, destination = destination } children
                                    )
                            )
                                :: soFar

                        Err error ->
                            (error |> List.map deadEndToString |> List.map Err)
                                ++ soFar

                Inlines.Image src ->
                    renderer.image { src = src } string
                        :: soFar

        Nothing ->
            if style.isBold then
                (renderer.bold string |> Ok)
                    :: soFar

            else if style.isItalic then
                (renderer.italic string |> Ok)
                    :: soFar

            else if style.isCode then
                (renderer.code string |> Ok)
                    :: soFar

            else
                (renderer.plain string |> Ok)
                    :: soFar


renderHelper :
    Renderer view
    -> List Block
    -> List (Result String view)
renderHelper renderer blocks =
    List.map
        (\block ->
            case block of
                Block.Heading level content ->
                    renderStyled renderer content
                        |> Result.map
                            (\children ->
                                renderer.heading
                                    { level = level, rawText = Inlines.toString content, children = children }
                            )

                Block.Body content ->
                    renderStyled renderer content
                        |> Result.map renderer.raw

                Block.Html tag attributes children ->
                    renderHtmlNode renderer tag attributes children

                Block.ListBlock items ->
                    items
                        |> List.map (renderStyled renderer)
                        |> combineResults
                        |> Result.map (List.map renderer.raw)
                        |> Result.map renderer.list

                Block.CodeBlock codeBlock ->
                    codeBlock
                        |> renderer.codeBlock
                        |> Ok

                Block.ThematicBreak ->
                    Ok renderer.thematicBreak
        )
        blocks


render :
    Renderer view
    -> String
    -> Result String (List view)
render renderer markdownText =
    markdownText
        |> parse
        |> Result.mapError deadEndsToString
        |> Result.andThen
            (\markdownAst ->
                markdownAst
                    |> renderHelper renderer
                    |> combineResults
            )


renderAst :
    Renderer view
    -> Result (List (Advanced.DeadEnd String Parser.Problem)) (List Block)
    -> Result String (List view)
renderAst renderer astResult =
    astResult
        |> Result.mapError deadEndsToString
        |> Result.andThen
            (\markdownAst ->
                markdownAst
                    |> renderHelper renderer
                    |> combineResults
            )


combineResults : List (Result x a) -> Result x (List a)
combineResults =
    List.foldr (Result.map2 (::)) (Ok [])


deadEndsToString : List (Advanced.DeadEnd String Parser.Problem) -> String
deadEndsToString deadEnds =
    deadEnds
        |> List.map deadEndToString
        |> String.join "\n"


deadEndToString : Advanced.DeadEnd String Parser.Problem -> String
deadEndToString deadEnd =
    "Problem at row " ++ String.fromInt deadEnd.row ++ "\n" ++ problemToString deadEnd.problem


problemToString : Parser.Problem -> String
problemToString problem =
    case problem of
        Parser.Expecting string ->
            "Expecting " ++ string

        Parser.ExpectingInt ->
            "Expecting int"

        Parser.ExpectingHex ->
            "Expecting hex"

        Parser.ExpectingOctal ->
            "Expecting octal"

        Parser.ExpectingBinary ->
            "Expecting binary"

        Parser.ExpectingFloat ->
            "Expecting float"

        Parser.ExpectingNumber ->
            "Expecting number"

        Parser.ExpectingVariable ->
            "Expecting variable"

        Parser.ExpectingSymbol string ->
            "Expecting symbol " ++ string

        Parser.ExpectingKeyword string ->
            "Expecting keyword " ++ string

        Parser.ExpectingEnd ->
            "Expecting keyword end"

        Parser.UnexpectedChar ->
            "Unexpected char"

        Parser.Problem problemDescription ->
            problemDescription

        Parser.BadRepeat ->
            "Bad repeat"


renderHtmlNode : Renderer view -> String -> List Attribute -> List Block -> Result String view
renderHtmlNode renderer tag attributes children =
    useRed tag
        attributes
        children
        renderer.htmlDecoder
        (renderHelper renderer children)


useRed : String -> List Attribute -> List Block -> Decoder (List view -> view) -> List (Result String view) -> Result String view
useRed tag attributes children (Markdown.Decoder.Decoder redRenderer) renderedChildren =
    renderedChildren
        |> combineResults
        |> Result.andThen
            (\okChildren ->
                redRenderer tag attributes children
                    |> Result.map
                        (\myRenderer -> myRenderer okChildren)
            )


type alias Parser a =
    Advanced.Parser String Parser.Problem a


type alias Attribute =
    { name : String, value : String }


plainLine : Parser (List Block)
plainLine =
    succeed identity
        |= Advanced.getChompedString (Advanced.chompUntilEndOr "\n")
        |> Advanced.andThen
            (\line ->
                case Advanced.run Inlines.parse line of
                    Ok styledLine ->
                        succeed styledLine

                    Err error ->
                        problem (Parser.Expecting (error |> List.map deadEndToString |> String.join "\n"))
            )
        |> Advanced.map Block.Body
        |> Advanced.map List.singleton


listBlock : Parser Block
listBlock =
    Markdown.List.parser
        |> map Block.ListBlock


blankLine : Parser Block
blankLine =
    succeed (Block.Body [])
        |. symbol (Advanced.Token "\n" (Parser.Expecting "\n"))


htmlParser : Parser Block
htmlParser =
    XmlParser.element
        |> xmlNodeToHtmlNode


toTopLevelHtml : String -> List Attribute -> List Block -> Block
toTopLevelHtml tag attributes children =
    Block.Html tag attributes children


xmlNodeToHtmlNode : Parser Node -> Parser Block
xmlNodeToHtmlNode parser =
    Advanced.andThen
        (\xmlNode ->
            case xmlNode of
                XmlParser.Text innerText ->
                    -- TODO is this right?
                    Block.Body
                        -- TODO remove hardcoding
                        [ { string = innerText
                          , style =
                                { isCode = False
                                , isBold = False
                                , isItalic = False
                                , link = Nothing
                                }
                          }
                        ]
                        |> Advanced.succeed

                XmlParser.Element tag attributes children ->
                    Advanced.andThen
                        (\parsedChildren ->
                            Advanced.succeed
                                (Block.Html tag
                                    attributes
                                    parsedChildren
                                )
                        )
                        (nodesToBlocksParser children)
        )
        parser


nodesToBlocksParser : List Node -> Parser (List Block)
nodesToBlocksParser children =
    children
        |> List.map childToParser
        |> combine
        |> Advanced.map List.concat


combine : List (Parser a) -> Parser (List a)
combine list =
    list
        |> List.foldl
            (\parser listParser ->
                listParser
                    |> Advanced.andThen
                        (\soFar ->
                            parser
                                |> Advanced.map (\a -> a :: soFar)
                        )
            )
            (Advanced.succeed [])


childToParser : Node -> Parser (List Block)
childToParser node =
    case node of
        Element tag attributes children ->
            nodesToBlocksParser children
                |> Advanced.andThen
                    (\childrenAsBlocks ->
                        Advanced.succeed [ Block.Html tag attributes childrenAsBlocks ]
                    )

        Text innerText ->
            case Advanced.run multiParser innerText of
                Ok value ->
                    succeed value

                Err error ->
                    Advanced.problem
                        (Parser.Expecting
                            (error
                                |> List.map deadEndToString
                                |> String.join "\n"
                            )
                        )


multiParser : Parser (List Block)
multiParser =
    loop [ [] ] statementsHelp
        |. succeed Advanced.end
        -- TODO find a more elegant way to exclude empty blocks for each blank lines
        |> map (List.filter (\item -> item /= Block.Body []))


statementsHelp : List (List Block) -> Parser (Step (List (List Block)) (List Block))
statementsHelp revStmts =
    oneOf
        [ succeed
            (\offsetBefore stmts offsetAfter ->
                let
                    madeProgress =
                        offsetAfter > offsetBefore
                in
                if madeProgress then
                    Loop (stmts :: revStmts)

                else
                    Done
                        (List.reverse (stmts :: revStmts)
                            |> List.concat
                        )
            )
            |= Advanced.getOffset
            |= oneOf
                [ Markdown.CodeBlock.parser |> map Block.CodeBlock |> map List.singleton
                , thematicBreak |> map List.singleton
                , listBlock |> map List.singleton
                , blankLine |> map List.singleton
                , heading |> map List.singleton
                , htmlParser |> map List.singleton
                , plainLine
                ]
            |= Advanced.getOffset

        -- TODO this is causing files to require newlines
        -- at the end... how do I avoid this?
        -- |. symbol (Advanced.Token "\n" (Parser.Expecting "newline"))
        , succeed ()
            |> map
                (\_ ->
                    Done
                        (List.reverse revStmts
                            |> List.concat
                        )
                )
        ]


spaceOrTab =
    \c -> c == ' ' || c == '\t'


oneOrMore condition =
    chompIf condition (Parser.Problem "Expected one or more character")
        |. chompWhile condition


zeroOrMore condition =
    chompWhile condition


thematicBreak : Parser Block
thematicBreak =
    succeed Block.ThematicBreak
        |. oneOf
            [ symbol (Advanced.Token "   " (Parser.Problem "Expecting 3 spaces"))
            , symbol (Advanced.Token "  " (Parser.Problem "Expecting 2 spaces"))
            , symbol (Advanced.Token " " (Parser.Problem "Expecting space"))
            , succeed ()
            ]
        |. oneOf
            [ symbol (Advanced.Token "---" (Parser.Expecting "---"))
                |. chompWhile (\c -> c == '-')
            , symbol (Advanced.Token "***" (Parser.Expecting "***"))
                |. chompWhile (\c -> c == '*')
            , symbol (Advanced.Token "___" (Parser.Expecting "___"))
                |. chompWhile (\c -> c == '_')
            ]
        |. zeroOrMore spaceOrTab
        |. oneOf
            [ Advanced.end (Parser.Problem "Expecting end")
            , chompIf (\c -> c == '\n') (Parser.Problem "Expecting newline")
            ]



-- |. chompIf (\c -> c == '\n') (Parser.Problem "Expecting newline")


heading : Parser Block
heading =
    succeed Block.Heading
        |. symbol (Advanced.Token "#" (Parser.Expecting "#"))
        |= (getChompedString
                (succeed ()
                    |. chompWhile (\c -> c == '#')
                )
                |> andThen
                    (\additionalHashes ->
                        let
                            level =
                                String.length additionalHashes + 1
                        in
                        if level >= 7 then
                            Advanced.problem (Parser.Expecting "heading with < 7 #'s")

                        else
                            succeed level
                    )
           )
        |. chompWhile (\c -> c == ' ')
        |= (getChompedString
                (succeed ()
                    -- |. chompWhile (\c -> c /= '\n')
                    |. Advanced.chompUntilEndOr "\n"
                )
                |> Advanced.andThen
                    (\headingText ->
                        let
                            result =
                                headingText
                                    |> dropTrailingHashes
                                    |> Advanced.run Inlines.parse
                        in
                        case result of
                            Ok styled ->
                                succeed styled

                            Err error ->
                                problem (Parser.Expecting "TODO")
                    )
           )


dropTrailingHashes headingString =
    if headingString |> String.endsWith "#" then
        String.dropRight 1 headingString
            |> String.trimRight
            |> dropTrailingHashes

    else
        headingString


parse : String -> Result (List (Advanced.DeadEnd String Parser.Problem)) (List Block)
parse input =
    Advanced.run multiParser input
