# GFM - List items

## [Example 223](https://github.github.com/gfm/#example-223)

This markdown:

```markdown
A paragraph
with two lines.

    indented code

> A block quote.

```

Should give output:

```html
<p>A paragraph with two lines.</p><pre><code>indented code</code></pre><blockquote><p>A block quote.</p></blockquote>
```

But instead was:

```html
<p>A paragraph with two lines.</p><pre><code>indented code</code></pre><p>&gt; A block quote.</p>
```
## [Example 224](https://github.github.com/gfm/#example-224)

This markdown:

```markdown
1.  A paragraph
    with two lines.

        indented code

    > A block quote.

```

Should give output:

```html
<ol><li><p>A paragraph with two lines.</p><pre><code>indented code</code></pre><blockquote><p>A block quote.</p></blockquote></li></ol>
```

But instead was:

```html
<p>1. A paragraph</p><pre><code>with two lines.</code></pre><pre><code>indented code</code></pre><pre><code>&gt; A block quote.</code></pre>
```
## [Example 225](https://github.github.com/gfm/#example-225)

This markdown:

```markdown
- one

 two

```

Should give output:

```html
<ul><li>one</li></ul><p>two</p>
```

But instead was:

```html
ERROR Problem at row 4 Expecting --- Problem at row 4 Expecting *** Problem at row 4 Expecting ___
```
## [Example 226](https://github.github.com/gfm/#example-226)

This markdown:

```markdown
- one

  two

```

Should give output:

```html
<ul><li><p>one</p><p>two</p></li></ul>
```

But instead was:

```html
ERROR Problem at row 4 Expecting --- Problem at row 4 Expecting *** Problem at row 4 Expecting ___
```
## [Example 227](https://github.github.com/gfm/#example-227)

This markdown:

```markdown
 -    one

     two

```

Should give output:

```html
<ul><li>one</li></ul><pre><code>two</code></pre>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
## [Example 228](https://github.github.com/gfm/#example-228)

This markdown:

```markdown
 -    one

      two

```

Should give output:

```html
<ul><li><p>one</p><p>two</p></li></ul>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
## [Example 229](https://github.github.com/gfm/#example-229)

This markdown:

```markdown
   > > 1.  one
>>
>>     two

```

Should give output:

```html
<blockquote><blockquote><ol><li><p>one</p><p>two</p></li></ol></blockquote></blockquote>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
## [Example 230](https://github.github.com/gfm/#example-230)

This markdown:

```markdown
>>- one
>>
  >  > two

```

Should give output:

```html
<blockquote><blockquote><ul><li>one</li></ul><p>two</p></blockquote></blockquote>
```

But instead was:

```html
ERROR Problem at row 5 Expecting --- Problem at row 5 Expecting *** Problem at row 5 Expecting ___
```
## [Example 231](https://github.github.com/gfm/#example-231)

This markdown:

```markdown
-one

2.two

```

Should give output:

```html
<p>-one</p><p>2.two</p>
```

But instead was:

```html
<ul><li><p>one</p></li></ul><p>2.two</p>
```
## [Example 232](https://github.github.com/gfm/#example-232)

This markdown:

```markdown
- foo


  bar

```

Should give output:

```html
<ul><li><p>foo</p><p>bar</p></li></ul>
```

But instead was:

```html
ERROR Problem at row 5 Expecting --- Problem at row 5 Expecting *** Problem at row 5 Expecting ___
```
## [Example 233](https://github.github.com/gfm/#example-233)

This markdown:

```markdown
1.  foo

    ```
    bar
    ```

    baz

    > bam

```

Should give output:

```html
<ol><li><p>foo</p><pre><code>bar</code></pre><p>baz</p><blockquote><p>bam</p></blockquote></li></ol>
```

But instead was:

```html
<p>1. foo</p><pre><code>```</code></pre><pre><code>bar</code></pre><pre><code>```</code></pre><pre><code>baz</code></pre><pre><code>&gt; bam</code></pre>
```
## [Example 234](https://github.github.com/gfm/#example-234)

This markdown:

```markdown
- Foo

      bar


      baz

```

Should give output:

```html
<ul><li><p>Foo</p><pre><code>bar baz</code></pre></li></ul>
```

But instead was:

```html
<ul><li><p>Foo</p></li></ul><pre><code>bar</code></pre><pre><code>baz</code></pre>
```
## [Example 235](https://github.github.com/gfm/#example-235)

This markdown:

```markdown
123456789. ok

```

Should give output:

```html
<ol start="123456789"><li>ok</li></ol>
```

But instead was:

```html
<p>123456789. ok</p>
```
## [Example 237](https://github.github.com/gfm/#example-237)

This markdown:

```markdown
0. ok

```

Should give output:

```html
<ol start="0"><li>ok</li></ol>
```

But instead was:

```html
<p>0. ok</p>
```
## [Example 238](https://github.github.com/gfm/#example-238)

This markdown:

```markdown
003. ok

```

Should give output:

```html
<ol start="3"><li>ok</li></ol>
```

But instead was:

```html
<p>003. ok</p>
```
## [Example 239](https://github.github.com/gfm/#example-239)

This markdown:

```markdown
-1. not ok

```

Should give output:

```html
<p>-1. not ok</p>
```

But instead was:

```html
<ul><li><p>1. not ok</p></li></ul>
```
## [Example 240](https://github.github.com/gfm/#example-240)

This markdown:

```markdown
- foo

      bar

```

Should give output:

```html
<ul><li><p>foo</p><pre><code>bar</code></pre></li></ul>
```

But instead was:

```html
<ul><li><p>foo</p></li></ul><pre><code>bar</code></pre>
```
## [Example 241](https://github.github.com/gfm/#example-241)

This markdown:

```markdown
  10.  foo

           bar

```

Should give output:

```html
<ol start="10"><li><p>foo</p><pre><code>bar</code></pre></li></ol>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
## [Example 243](https://github.github.com/gfm/#example-243)

This markdown:

```markdown
1.     indented code

   paragraph

       more code

```

Should give output:

```html
<ol><li><pre><code>indented code</code></pre><p>paragraph</p><pre><code>more code</code></pre></li></ol>
```

But instead was:

```html
ERROR Problem at row 4 Expecting --- Problem at row 4 Expecting *** Problem at row 4 Expecting ___
```
## [Example 244](https://github.github.com/gfm/#example-244)

This markdown:

```markdown
1.      indented code

   paragraph

       more code

```

Should give output:

```html
<ol><li><pre><code>indented code</code></pre><p>paragraph</p><pre><code>more code</code></pre></li></ol>
```

But instead was:

```html
ERROR Problem at row 4 Expecting --- Problem at row 4 Expecting *** Problem at row 4 Expecting ___
```
## [Example 245](https://github.github.com/gfm/#example-245)

This markdown:

```markdown
   foo

bar

```

Should give output:

```html
<p>foo</p><p>bar</p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
## [Example 246](https://github.github.com/gfm/#example-246)

This markdown:

```markdown
-    foo

  bar

```

Should give output:

```html
<ul><li>foo</li></ul><p>bar</p>
```

But instead was:

```html
ERROR Problem at row 4 Expecting --- Problem at row 4 Expecting *** Problem at row 4 Expecting ___
```
## [Example 247](https://github.github.com/gfm/#example-247)

This markdown:

```markdown
-  foo

   bar

```

Should give output:

```html
<ul><li><p>foo</p><p>bar</p></li></ul>
```

But instead was:

```html
ERROR Problem at row 4 Expecting --- Problem at row 4 Expecting *** Problem at row 4 Expecting ___
```
## [Example 248](https://github.github.com/gfm/#example-248)

This markdown:

```markdown
-
  foo
-
  ```
  bar
  ```
-
      baz

```

Should give output:

```html
<ul><li>foo</li><li><pre><code>bar</code></pre></li><li><pre><code>baz</code></pre></li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
## [Example 249](https://github.github.com/gfm/#example-249)

This markdown:

```markdown
-   
  foo

```

Should give output:

```html
<ul><li>foo</li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
## [Example 250](https://github.github.com/gfm/#example-250)

This markdown:

```markdown
-

  foo

```

Should give output:

```html
<ul><li></li></ul><p>foo</p>
```

But instead was:

```html
ERROR Problem at row 4 Expecting --- Problem at row 4 Expecting *** Problem at row 4 Expecting ___
```
## [Example 251](https://github.github.com/gfm/#example-251)

This markdown:

```markdown
- foo
-
- bar

```

Should give output:

```html
<ul><li>foo</li><li></li><li>bar</li></ul>
```

But instead was:

```html
<ul><li><p>foo</p></li><li><p></p></li><li><p>bar</p></li></ul>
```
## [Example 252](https://github.github.com/gfm/#example-252)

This markdown:

```markdown
- foo
-   
- bar

```

Should give output:

```html
<ul><li>foo</li><li></li><li>bar</li></ul>
```

But instead was:

```html
<ul><li><p>foo</p></li><li><p></p></li><li><p>bar</p></li></ul>
```
## [Example 253](https://github.github.com/gfm/#example-253)

This markdown:

```markdown
1. foo
2.
3. bar

```

Should give output:

```html
<ol><li>foo</li><li></li><li>bar</li></ol>
```

But instead was:

```html
<p>1. foo 2. 3. bar</p>
```
## [Example 254](https://github.github.com/gfm/#example-254)

This markdown:

```markdown
*

```

Should give output:

```html
<ul><li></li></ul>
```

But instead was:

```html

```
## [Example 255](https://github.github.com/gfm/#example-255)

This markdown:

```markdown
foo
*

foo
1.

```

Should give output:

```html
<p>foo *</p><p>foo 1.</p>
```

But instead was:

```html
<p>foo</p><p>foo 1.</p>
```
## [Example 256](https://github.github.com/gfm/#example-256)

This markdown:

```markdown
 1.  A paragraph
     with two lines.

         indented code

     > A block quote.

```

Should give output:

```html
<ol><li><p>A paragraph with two lines.</p><pre><code>indented code</code></pre><blockquote><p>A block quote.</p></blockquote></li></ol>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
## [Example 257](https://github.github.com/gfm/#example-257)

This markdown:

```markdown
  1.  A paragraph
      with two lines.

          indented code

      > A block quote.

```

Should give output:

```html
<ol><li><p>A paragraph with two lines.</p><pre><code>indented code</code></pre><blockquote><p>A block quote.</p></blockquote></li></ol>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
## [Example 258](https://github.github.com/gfm/#example-258)

This markdown:

```markdown
   1.  A paragraph
       with two lines.

           indented code

       > A block quote.

```

Should give output:

```html
<ol><li><p>A paragraph with two lines.</p><pre><code>indented code</code></pre><blockquote><p>A block quote.</p></blockquote></li></ol>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
## [Example 259](https://github.github.com/gfm/#example-259)

This markdown:

```markdown
    1.  A paragraph
        with two lines.

            indented code

        > A block quote.

```

Should give output:

```html
<pre><code>1. A paragraph with two lines. indented code &gt; A block quote.</code></pre>
```

But instead was:

```html
<pre><code>1. A paragraph</code></pre><pre><code>with two lines.</code></pre><pre><code>indented code</code></pre><pre><code>&gt; A block quote.</code></pre>
```
## [Example 260](https://github.github.com/gfm/#example-260)

This markdown:

```markdown
  1.  A paragraph
with two lines.

          indented code

      > A block quote.

```

Should give output:

```html
<ol><li><p>A paragraph with two lines.</p><pre><code>indented code</code></pre><blockquote><p>A block quote.</p></blockquote></li></ol>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
## [Example 261](https://github.github.com/gfm/#example-261)

This markdown:

```markdown
  1.  A paragraph
    with two lines.

```

Should give output:

```html
<ol><li>A paragraph with two lines.</li></ol>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
## [Example 262](https://github.github.com/gfm/#example-262)

This markdown:

```markdown
> 1. > Blockquote
continued here.

```

Should give output:

```html
<blockquote><ol><li><blockquote><p>Blockquote continued here.</p></blockquote></li></ol></blockquote>
```

But instead was:

```html
<p>&gt; 1. &gt; Blockquote continued here.</p>
```
## [Example 263](https://github.github.com/gfm/#example-263)

This markdown:

```markdown
> 1. > Blockquote
> continued here.

```

Should give output:

```html
<blockquote><ol><li><blockquote><p>Blockquote continued here.</p></blockquote></li></ol></blockquote>
```

But instead was:

```html
<p>&gt; 1. &gt; Blockquote &gt; continued here.</p>
```
## [Example 264](https://github.github.com/gfm/#example-264)

This markdown:

```markdown
- foo
  - bar
    - baz
      - boo

```

Should give output:

```html
<ul><li>foo<ul><li>bar<ul><li>baz<ul><li>boo</li></ul></li></ul></li></ul></li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
## [Example 265](https://github.github.com/gfm/#example-265)

This markdown:

```markdown
- foo
 - bar
  - baz
   - boo

```

Should give output:

```html
<ul><li>foo</li><li>bar</li><li>baz</li><li>boo</li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
## [Example 266](https://github.github.com/gfm/#example-266)

This markdown:

```markdown
10) foo
    - bar

```

Should give output:

```html
<ol start="10"><li>foo<ul><li>bar</li></ul></li></ol>
```

But instead was:

```html
<p>10) foo</p><pre><code>- bar</code></pre>
```
## [Example 267](https://github.github.com/gfm/#example-267)

This markdown:

```markdown
10) foo
   - bar

```

Should give output:

```html
<ol start="10"><li>foo</li></ol><ul><li>bar</li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
## [Example 268](https://github.github.com/gfm/#example-268)

This markdown:

```markdown
- - foo

```

Should give output:

```html
<ul><li><ul><li>foo</li></ul></li></ul>
```

But instead was:

```html
<ul><li><p>- foo</p></li></ul>
```
## [Example 269](https://github.github.com/gfm/#example-269)

This markdown:

```markdown
1. - 2. foo

```

Should give output:

```html
<ol><li><ul><li><ol start="2"><li>foo</li></ol></li></ul></li></ol>
```

But instead was:

```html
<p>1. - 2. foo</p>
```
## [Example 270](https://github.github.com/gfm/#example-270)

This markdown:

```markdown
- # Foo
- Bar
  ---
  baz

```

Should give output:

```html
<ul><li><h1>Foo</h1></li><li><h2>Bar</h2>baz</li></ul>
```

But instead was:

```html
ERROR Problem at row 6 Expecting --- Problem at row 6 Expecting *** Problem at row 6 Expecting ___
```
