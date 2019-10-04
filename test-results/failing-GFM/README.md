# GFM

## Emphasis and strong emphasis

### [Example 351](https://github.github.com/gfm/#example-351)

This markdown:

```markdown
a * foo bar*

```

Should give output:

```html
<p>a * foo bar*</p>
```

But instead was:

```html
<p>a<em>foo bar</em></p>
```
### [Example 352](https://github.github.com/gfm/#example-352)

This markdown:

```markdown
a*"foo"*

```

Should give output:

```html
<p>a*&quot;foo&quot;*</p>
```

But instead was:

```html
<p>a<em>&quot;foo&quot;</em></p>
```
### [Example 353](https://github.github.com/gfm/#example-353)

This markdown:

```markdown
* a *

```

Should give output:

```html
<p>* a *</p>
```

But instead was:

```html
<p><em>a</em></p>
```
### [Example 356](https://github.github.com/gfm/#example-356)

This markdown:

```markdown
_foo bar_

```

Should give output:

```html
<p><em>foo bar</em></p>
```

But instead was:

```html
<p>_foo bar_</p>
```
### [Example 363](https://github.github.com/gfm/#example-363)

This markdown:

```markdown
foo-_(bar)_

```

Should give output:

```html
<p>foo-<em>(bar)</em></p>
```

But instead was:

```html
<p>foo-_(bar)_</p>
```
### [Example 364](https://github.github.com/gfm/#example-364)

This markdown:

```markdown
_foo*

```

Should give output:

```html
<p>_foo*</p>
```

But instead was:

```html
<p>_foo</p>
```
### [Example 365](https://github.github.com/gfm/#example-365)

This markdown:

```markdown
*foo bar *

```

Should give output:

```html
<p>*foo bar *</p>
```

But instead was:

```html
<p><em>foo bar</em></p>
```
### [Example 366](https://github.github.com/gfm/#example-366)

This markdown:

```markdown
*foo bar
*

```

Should give output:

```html
<p>*foo bar *</p>
```

But instead was:

```html
<p><em>foo bar</em></p>
```
### [Example 367](https://github.github.com/gfm/#example-367)

This markdown:

```markdown
*(*foo)

```

Should give output:

```html
<p>*(*foo)</p>
```

But instead was:

```html
<p><em>(</em>foo)</p>
```
### [Example 368](https://github.github.com/gfm/#example-368)

This markdown:

```markdown
*(*foo*)*

```

Should give output:

```html
<p><em>(<em>foo</em>)</em></p>
```

But instead was:

```html
<p><em>(</em>foo<em>)</em></p>
```
### [Example 372](https://github.github.com/gfm/#example-372)

This markdown:

```markdown
_(_foo_)_

```

Should give output:

```html
<p><em>(<em>foo</em>)</em></p>
```

But instead was:

```html
<p>_(_foo_)_</p>
```
### [Example 375](https://github.github.com/gfm/#example-375)

This markdown:

```markdown
_foo_bar_baz_

```

Should give output:

```html
<p><em>foo_bar_baz</em></p>
```

But instead was:

```html
<p>_foo_bar_baz_</p>
```
### [Example 376](https://github.github.com/gfm/#example-376)

This markdown:

```markdown
_(bar)_.

```

Should give output:

```html
<p><em>(bar)</em>.</p>
```

But instead was:

```html
<p>_(bar)_.</p>
```
### [Example 378](https://github.github.com/gfm/#example-378)

This markdown:

```markdown
** foo bar**

```

Should give output:

```html
<p>** foo bar**</p>
```

But instead was:

```html
<p><strong>foo bar</strong></p>
```
### [Example 379](https://github.github.com/gfm/#example-379)

This markdown:

```markdown
a**"foo"**

```

Should give output:

```html
<p>a**&quot;foo&quot;**</p>
```

But instead was:

```html
<p>a<strong>&quot;foo&quot;</strong></p>
```
### [Example 381](https://github.github.com/gfm/#example-381)

This markdown:

```markdown
__foo bar__

```

Should give output:

```html
<p><strong>foo bar</strong></p>
```

But instead was:

```html
<p>__foo bar__</p>
```
### [Example 388](https://github.github.com/gfm/#example-388)

This markdown:

```markdown
__foo, __bar__, baz__

```

Should give output:

```html
<p><strong>foo,<strong>bar</strong>, baz</strong></p>
```

But instead was:

```html
<p>__foo, __bar__, baz__</p>
```
### [Example 389](https://github.github.com/gfm/#example-389)

This markdown:

```markdown
foo-__(bar)__

```

Should give output:

```html
<p>foo-<strong>(bar)</strong></p>
```

But instead was:

```html
<p>foo-__(bar)__</p>
```
### [Example 390](https://github.github.com/gfm/#example-390)

This markdown:

```markdown
**foo bar **

```

Should give output:

```html
<p>**foo bar **</p>
```

But instead was:

```html
<p><strong>foo bar</strong></p>
```
### [Example 391](https://github.github.com/gfm/#example-391)

This markdown:

```markdown
**(**foo)

```

Should give output:

```html
<p>**(**foo)</p>
```

But instead was:

```html
<p><strong>(</strong>foo)</p>
```
### [Example 392](https://github.github.com/gfm/#example-392)

This markdown:

```markdown
*(**foo**)*

```

Should give output:

```html
<p><em>(<strong>foo</strong>)</em></p>
```

But instead was:

```html
<p><em>(</em><strong>foo</strong><em>)</em></p>
```
### [Example 393](https://github.github.com/gfm/#example-393)

This markdown:

```markdown
**Gomphocarpus (*Gomphocarpus physocarpus*, syn.
*Asclepias physocarpa*)**

```

Should give output:

```html
<p><strong>Gomphocarpus (<em>Gomphocarpus physocarpus</em>, syn.<em>Asclepias physocarpa</em>)</strong></p>
```

But instead was:

```html
<p><strong>Gomphocarpus (</strong><strong>Gomphocarpus physocarpus</strong><strong>, syn.</strong><strong>Asclepias physocarpa</strong><strong>)</strong></p>
```
### [Example 394](https://github.github.com/gfm/#example-394)

This markdown:

```markdown
**foo "*bar*" foo**

```

Should give output:

```html
<p><strong>foo &quot;<em>bar</em>&quot; foo</strong></p>
```

But instead was:

```html
<p><strong>foo &quot;</strong><strong>bar</strong><strong>&quot; foo</strong></p>
```
### [Example 398](https://github.github.com/gfm/#example-398)

This markdown:

```markdown
_(__foo__)_

```

Should give output:

```html
<p><em>(<strong>foo</strong>)</em></p>
```

But instead was:

```html
<p>_(__foo__)_</p>
```
### [Example 401](https://github.github.com/gfm/#example-401)

This markdown:

```markdown
__foo__bar__baz__

```

Should give output:

```html
<p><strong>foo__bar__baz</strong></p>
```

But instead was:

```html
<p>__foo__bar__baz__</p>
```
### [Example 402](https://github.github.com/gfm/#example-402)

This markdown:

```markdown
__(bar)__.

```

Should give output:

```html
<p><strong>(bar)</strong>.</p>
```

But instead was:

```html
<p>__(bar)__.</p>
```
### [Example 403](https://github.github.com/gfm/#example-403)

This markdown:

```markdown
*foo [bar](/url)*

```

Should give output:

```html
<p><em>foo<a href="/url">bar</a></em></p>
```

But instead was:

```html
<p><em>foo</em><a href="/url">bar</a></p>
```
### [Example 405](https://github.github.com/gfm/#example-405)

This markdown:

```markdown
_foo __bar__ baz_

```

Should give output:

```html
<p><em>foo<strong>bar</strong>baz</em></p>
```

But instead was:

```html
<p>_foo __bar__ baz_</p>
```
### [Example 406](https://github.github.com/gfm/#example-406)

This markdown:

```markdown
_foo _bar_ baz_

```

Should give output:

```html
<p><em>foo<em>bar</em>baz</em></p>
```

But instead was:

```html
<p>_foo _bar_ baz_</p>
```
### [Example 407](https://github.github.com/gfm/#example-407)

This markdown:

```markdown
__foo_ bar_

```

Should give output:

```html
<p><em><em>foo</em>bar</em></p>
```

But instead was:

```html
<p>__foo_ bar_</p>
```
### [Example 408](https://github.github.com/gfm/#example-408)

This markdown:

```markdown
*foo *bar**

```

Should give output:

```html
<p><em>foo<em>bar</em></em></p>
```

But instead was:

```html
<p><em>foo</em>bar</p>
```
### [Example 409](https://github.github.com/gfm/#example-409)

This markdown:

```markdown
*foo **bar** baz*

```

Should give output:

```html
<p><em>foo<strong>bar</strong>baz</em></p>
```

But instead was:

```html
<p><em>foo</em><strong>bar</strong><em>baz</em></p>
```
### [Example 410](https://github.github.com/gfm/#example-410)

This markdown:

```markdown
*foo**bar**baz*

```

Should give output:

```html
<p><em>foo<strong>bar</strong>baz</em></p>
```

But instead was:

```html
<p><em>foo</em><strong>bar</strong><em>baz</em></p>
```
### [Example 411](https://github.github.com/gfm/#example-411)

This markdown:

```markdown
*foo**bar*

```

Should give output:

```html
<p><em>foo**bar</em></p>
```

But instead was:

```html
<p><em>foo</em><strong>bar</strong></p>
```
### [Example 412](https://github.github.com/gfm/#example-412)

This markdown:

```markdown
***foo** bar*

```

Should give output:

```html
<p><em><strong>foo</strong>bar</em></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 413](https://github.github.com/gfm/#example-413)

This markdown:

```markdown
*foo **bar***

```

Should give output:

```html
<p><em>foo<strong>bar</strong></em></p>
```

But instead was:

```html
<p><em>foo</em><strong>bar</strong></p>
```
### [Example 414](https://github.github.com/gfm/#example-414)

This markdown:

```markdown
*foo**bar***

```

Should give output:

```html
<p><em>foo<strong>bar</strong></em></p>
```

But instead was:

```html
<p><em>foo</em><strong>bar</strong></p>
```
### [Example 415](https://github.github.com/gfm/#example-415)

This markdown:

```markdown
foo***bar***baz

```

Should give output:

```html
<p>foo<em><strong>bar</strong></em>baz</p>
```

But instead was:

```html
<p>foo<strong>bar</strong>baz</p>
```
### [Example 416](https://github.github.com/gfm/#example-416)

This markdown:

```markdown
foo******bar*********baz

```

Should give output:

```html
<p>foo<strong><strong><strong>bar</strong></strong></strong>***baz</p>
```

But instead was:

```html
<p>foo<strong>bar</strong><strong>baz</strong></p>
```
### [Example 417](https://github.github.com/gfm/#example-417)

This markdown:

```markdown
*foo **bar *baz* bim** bop*

```

Should give output:

```html
<p><em>foo<strong>bar<em>baz</em>bim</strong>bop</em></p>
```

But instead was:

```html
<p><em>foo</em><strong>bar</strong><strong>baz</strong><strong>bim</strong><em>bop</em></p>
```
### [Example 418](https://github.github.com/gfm/#example-418)

This markdown:

```markdown
*foo [*bar*](/url)*

```

Should give output:

```html
<p><em>foo<a href="/url"><em>bar</em></a></em></p>
```

But instead was:

```html
<p><em>foo</em><a href="/url"><em>bar</em></a></p>
```
### [Example 419](https://github.github.com/gfm/#example-419)

This markdown:

```markdown
** is not an empty emphasis

```

Should give output:

```html
<p>** is not an empty emphasis</p>
```

But instead was:

```html
<p><strong>is not an empty emphasis</strong></p>
```
### [Example 420](https://github.github.com/gfm/#example-420)

This markdown:

```markdown
**** is not an empty strong emphasis

```

Should give output:

```html
<p>**** is not an empty strong emphasis</p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 421](https://github.github.com/gfm/#example-421)

This markdown:

```markdown
**foo [bar](/url)**

```

Should give output:

```html
<p><strong>foo<a href="/url">bar</a></strong></p>
```

But instead was:

```html
<p><strong>foo</strong><a href="/url">bar</a></p>
```
### [Example 423](https://github.github.com/gfm/#example-423)

This markdown:

```markdown
__foo _bar_ baz__

```

Should give output:

```html
<p><strong>foo<em>bar</em>baz</strong></p>
```

But instead was:

```html
<p>__foo _bar_ baz__</p>
```
### [Example 424](https://github.github.com/gfm/#example-424)

This markdown:

```markdown
__foo __bar__ baz__

```

Should give output:

```html
<p><strong>foo<strong>bar</strong>baz</strong></p>
```

But instead was:

```html
<p>__foo __bar__ baz__</p>
```
### [Example 425](https://github.github.com/gfm/#example-425)

This markdown:

```markdown
____foo__ bar__

```

Should give output:

```html
<p><strong><strong>foo</strong>bar</strong></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 426](https://github.github.com/gfm/#example-426)

This markdown:

```markdown
**foo **bar****

```

Should give output:

```html
<p><strong>foo<strong>bar</strong></strong></p>
```

But instead was:

```html
<p><strong>foo</strong>bar</p>
```
### [Example 427](https://github.github.com/gfm/#example-427)

This markdown:

```markdown
**foo *bar* baz**

```

Should give output:

```html
<p><strong>foo<em>bar</em>baz</strong></p>
```

But instead was:

```html
<p><strong>foo</strong><strong>bar</strong><strong>baz</strong></p>
```
### [Example 428](https://github.github.com/gfm/#example-428)

This markdown:

```markdown
**foo*bar*baz**

```

Should give output:

```html
<p><strong>foo<em>bar</em>baz</strong></p>
```

But instead was:

```html
<p><strong>foo</strong><strong>bar</strong><strong>baz</strong></p>
```
### [Example 429](https://github.github.com/gfm/#example-429)

This markdown:

```markdown
***foo* bar**

```

Should give output:

```html
<p><strong><em>foo</em>bar</strong></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 430](https://github.github.com/gfm/#example-430)

This markdown:

```markdown
**foo *bar***

```

Should give output:

```html
<p><strong>foo<em>bar</em></strong></p>
```

But instead was:

```html
<p><strong>foo</strong><strong>bar</strong></p>
```
### [Example 431](https://github.github.com/gfm/#example-431)

This markdown:

```markdown
**foo *bar **baz**
bim* bop**

```

Should give output:

```html
<p><strong>foo<em>bar<strong>baz</strong>bim</em>bop</strong></p>
```

But instead was:

```html
<p><strong>foo</strong><strong>bar</strong><em>baz</em><strong>bim</strong><strong>bop</strong></p>
```
### [Example 432](https://github.github.com/gfm/#example-432)

This markdown:

```markdown
**foo [*bar*](/url)**

```

Should give output:

```html
<p><strong>foo<a href="/url"><em>bar</em></a></strong></p>
```

But instead was:

```html
<p><strong>foo</strong><a href="/url"><em>bar</em></a></p>
```
### [Example 434](https://github.github.com/gfm/#example-434)

This markdown:

```markdown
____ is not an empty strong emphasis

```

Should give output:

```html
<p>____ is not an empty strong emphasis</p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 435](https://github.github.com/gfm/#example-435)

This markdown:

```markdown
foo ***

```

Should give output:

```html
<p>foo ***</p>
```

But instead was:

```html
<p>foo</p>
```
### [Example 436](https://github.github.com/gfm/#example-436)

This markdown:

```markdown
foo *\**

```

Should give output:

```html
<p>foo<em>*</em></p>
```

But instead was:

```html
<p>foo<em>\</em></p>
```
### [Example 438](https://github.github.com/gfm/#example-438)

This markdown:

```markdown
foo *****

```

Should give output:

```html
<p>foo *****</p>
```

But instead was:

```html
<p>foo</p>
```
### [Example 439](https://github.github.com/gfm/#example-439)

This markdown:

```markdown
foo **\***

```

Should give output:

```html
<p>foo<strong>*</strong></p>
```

But instead was:

```html
<p>foo<strong>\</strong></p>
```
### [Example 441](https://github.github.com/gfm/#example-441)

This markdown:

```markdown
**foo*

```

Should give output:

```html
<p>*<em>foo</em></p>
```

But instead was:

```html
<p><strong>foo</strong></p>
```
### [Example 442](https://github.github.com/gfm/#example-442)

This markdown:

```markdown
*foo**

```

Should give output:

```html
<p><em>foo</em>*</p>
```

But instead was:

```html
<p><em>foo</em></p>
```
### [Example 443](https://github.github.com/gfm/#example-443)

This markdown:

```markdown
***foo**

```

Should give output:

```html
<p>*<strong>foo</strong></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 444](https://github.github.com/gfm/#example-444)

This markdown:

```markdown
****foo*

```

Should give output:

```html
<p>***<em>foo</em></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 445](https://github.github.com/gfm/#example-445)

This markdown:

```markdown
**foo***

```

Should give output:

```html
<p><strong>foo</strong>*</p>
```

But instead was:

```html
<p><strong>foo</strong></p>
```
### [Example 446](https://github.github.com/gfm/#example-446)

This markdown:

```markdown
*foo****

```

Should give output:

```html
<p><em>foo</em>***</p>
```

But instead was:

```html
<p><em>foo</em></p>
```
### [Example 448](https://github.github.com/gfm/#example-448)

This markdown:

```markdown
foo _\__

```

Should give output:

```html
<p>foo<em>_</em></p>
```

But instead was:

```html
<p>foo _\__</p>
```
### [Example 449](https://github.github.com/gfm/#example-449)

This markdown:

```markdown
foo _*_

```

Should give output:

```html
<p>foo<em>*</em></p>
```

But instead was:

```html
<p>foo _<em>_</em></p>
```
### [Example 451](https://github.github.com/gfm/#example-451)

This markdown:

```markdown
foo __\___

```

Should give output:

```html
<p>foo<strong>_</strong></p>
```

But instead was:

```html
<p>foo __\___</p>
```
### [Example 452](https://github.github.com/gfm/#example-452)

This markdown:

```markdown
foo __*__

```

Should give output:

```html
<p>foo<strong>*</strong></p>
```

But instead was:

```html
<p>foo __<em>__</em></p>
```
### [Example 453](https://github.github.com/gfm/#example-453)

This markdown:

```markdown
__foo_

```

Should give output:

```html
<p>_<em>foo</em></p>
```

But instead was:

```html
<p>__foo_</p>
```
### [Example 454](https://github.github.com/gfm/#example-454)

This markdown:

```markdown
_foo__

```

Should give output:

```html
<p><em>foo</em>_</p>
```

But instead was:

```html
<p>_foo__</p>
```
### [Example 455](https://github.github.com/gfm/#example-455)

This markdown:

```markdown
___foo__

```

Should give output:

```html
<p>_<strong>foo</strong></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 456](https://github.github.com/gfm/#example-456)

This markdown:

```markdown
____foo_

```

Should give output:

```html
<p>___<em>foo</em></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 457](https://github.github.com/gfm/#example-457)

This markdown:

```markdown
__foo___

```

Should give output:

```html
<p><strong>foo</strong>_</p>
```

But instead was:

```html
<p>__foo___</p>
```
### [Example 458](https://github.github.com/gfm/#example-458)

This markdown:

```markdown
_foo____

```

Should give output:

```html
<p><em>foo</em>___</p>
```

But instead was:

```html
<p>_foo____</p>
```
### [Example 460](https://github.github.com/gfm/#example-460)

This markdown:

```markdown
*_foo_*

```

Should give output:

```html
<p><em><em>foo</em></em></p>
```

But instead was:

```html
<p><em>_foo_</em></p>
```
### [Example 461](https://github.github.com/gfm/#example-461)

This markdown:

```markdown
__foo__

```

Should give output:

```html
<p><strong>foo</strong></p>
```

But instead was:

```html
<p>__foo__</p>
```
### [Example 462](https://github.github.com/gfm/#example-462)

This markdown:

```markdown
_*foo*_

```

Should give output:

```html
<p><em><em>foo</em></em></p>
```

But instead was:

```html
<p>_<em>foo</em>_</p>
```
### [Example 463](https://github.github.com/gfm/#example-463)

This markdown:

```markdown
****foo****

```

Should give output:

```html
<p><strong><strong>foo</strong></strong></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 464](https://github.github.com/gfm/#example-464)

This markdown:

```markdown
____foo____

```

Should give output:

```html
<p><strong><strong>foo</strong></strong></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 465](https://github.github.com/gfm/#example-465)

This markdown:

```markdown
******foo******

```

Should give output:

```html
<p><strong><strong><strong>foo</strong></strong></strong></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 466](https://github.github.com/gfm/#example-466)

This markdown:

```markdown
***foo***

```

Should give output:

```html
<p><em><strong>foo</strong></em></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 467](https://github.github.com/gfm/#example-467)

This markdown:

```markdown
_____foo_____

```

Should give output:

```html
<p><em><strong><strong>foo</strong></strong></em></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting end Problem at row 1 Expecting newline
```
### [Example 469](https://github.github.com/gfm/#example-469)

This markdown:

```markdown
*foo __bar *baz bim__ bam*

```

Should give output:

```html
<p><em>foo<strong>bar *baz bim</strong>bam</em></p>
```

But instead was:

```html
<p><em>foo __bar</em>baz bim__ bam</p>
```
### [Example 470](https://github.github.com/gfm/#example-470)

This markdown:

```markdown
**foo **bar baz**

```

Should give output:

```html
<p>**foo<strong>bar baz</strong></p>
```

But instead was:

```html
<p><strong>foo</strong>bar baz</p>
```
### [Example 471](https://github.github.com/gfm/#example-471)

This markdown:

```markdown
*foo *bar baz*

```

Should give output:

```html
<p>*foo<em>bar baz</em></p>
```

But instead was:

```html
<p><em>foo</em>bar baz</p>
```
### [Example 472](https://github.github.com/gfm/#example-472)

This markdown:

```markdown
*[bar*](/url)

```

Should give output:

```html
<p>*<a href="/url">bar*</a></p>
```

But instead was:

```html
<p><a href="/url">bar</a></p>
```
### [Example 474](https://github.github.com/gfm/#example-474)

This markdown:

```markdown
*<img src="foo" title="*"/>

```

Should give output:

```html
<p>*<img src="foo" title="*"></p>
```

But instead was:

```html
<p><em>&lt;img src=&quot;foo&quot; title=&quot;</em>&quot;/&gt;</p>
```
### [Example 475](https://github.github.com/gfm/#example-475)

This markdown:

```markdown
**<a href="**">

```

Should give output:

```html
<p>**<a href="**"></p>
```

But instead was:

```html
<p><strong>&lt;a href=&quot;</strong>&quot;&gt;</p>
```
### [Example 476](https://github.github.com/gfm/#example-476)

This markdown:

```markdown
__<a href="__">

```

Should give output:

```html
<p>__<a href="__"></p>
```

But instead was:

```html
<p>__&lt;a href=&quot;__&quot;&gt;</p>
```
### [Example 477](https://github.github.com/gfm/#example-477)

This markdown:

```markdown
*a `*`*

```

Should give output:

```html
<p><em>a<code>*</code></em></p>
```

But instead was:

```html
<p><em>a</em></p>
```
### [Example 478](https://github.github.com/gfm/#example-478)

This markdown:

```markdown
_a `_`_

```

Should give output:

```html
<p><em>a<code>_</code></em></p>
```

But instead was:

```html
<p>_a<code>_</code>_</p>
```
### [Example 479](https://github.github.com/gfm/#example-479)

This markdown:

```markdown
**a<http://foo.bar/?q=**>

```

Should give output:

```html
<p>**a<a href="http://foo.bar/?q=**">http://foo.bar/?q=**</a></p>
```

But instead was:

```html
<p><strong>a&lt;http://foo.bar/?q=</strong>&gt;</p>
```
### [Example 480](https://github.github.com/gfm/#example-480)

This markdown:

```markdown
__a<http://foo.bar/?q=__>

```

Should give output:

```html
<p>__a<a href="http://foo.bar/?q=__">http://foo.bar/?q=__</a></p>
```

But instead was:

```html
<p>__a&lt;http://foo.bar/?q=__&gt;</p>
```
## Link reference definitions

### [Example 161](https://github.github.com/gfm/#example-161)

This markdown:

```markdown
[foo]: /url "title"

[foo]

```

Should give output:

```html
<p><a href="/url" title="title">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 162](https://github.github.com/gfm/#example-162)

This markdown:

```markdown
   [foo]: 
      /url  
           'the title'  

[foo]

```

Should give output:

```html
<p><a href="/url" title="the title">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 163](https://github.github.com/gfm/#example-163)

This markdown:

```markdown
[Foo*bar\]]:my_(url) 'title (with parens)'

[Foo*bar\]]

```

Should give output:

```html
<p><a href="my_(url)" title="title (with parens)">Foo*bar]</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 164](https://github.github.com/gfm/#example-164)

This markdown:

```markdown
[Foo bar]:
<my url>
'title'

[Foo bar]

```

Should give output:

```html
<p><a href="my%20url" title="title">Foo bar</a></p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting symbol =
```
### [Example 165](https://github.github.com/gfm/#example-165)

This markdown:

```markdown
[foo]: /url '
title
line1
line2
'

[foo]

```

Should give output:

```html
<p><a href="/url" title="
title
line1
line2
">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 14 Expecting Problem at row 1 Expecting symbol (
```
### [Example 166](https://github.github.com/gfm/#example-166)

This markdown:

```markdown
[foo]: /url 'title

with blank line'

[foo]

```

Should give output:

```html
<p>[foo]: /url &#39;title</p><p>with blank line&#39;</p><p>[foo]</p>
```

But instead was:

```html
ERROR Problem at row 9 Expecting Problem at row 1 Expecting symbol (
```
### [Example 167](https://github.github.com/gfm/#example-167)

This markdown:

```markdown
[foo]:
/url

[foo]

```

Should give output:

```html
<p><a href="/url">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 8 Expecting Problem at row 1 Expecting symbol (
```
### [Example 168](https://github.github.com/gfm/#example-168)

This markdown:

```markdown
[foo]:

[foo]

```

Should give output:

```html
<p>[foo]:</p><p>[foo]</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 169](https://github.github.com/gfm/#example-169)

This markdown:

```markdown
[foo]: <>

[foo]

```

Should give output:

```html
<p><a href="">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 170](https://github.github.com/gfm/#example-170)

This markdown:

```markdown
[foo]: <bar>(baz)

[foo]

```

Should give output:

```html
<p>[foo]:<bar>(baz)</p><p>[foo]</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 171](https://github.github.com/gfm/#example-171)

This markdown:

```markdown
[foo]: /url\bar\*baz "foo\"bar\baz"

[foo]

```

Should give output:

```html
<p><a href="/url%5Cbar*baz" title="foo&quot;bar\baz">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 172](https://github.github.com/gfm/#example-172)

This markdown:

```markdown
[foo]

[foo]: url

```

Should give output:

```html
<p><a href="url">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 173](https://github.github.com/gfm/#example-173)

This markdown:

```markdown
[foo]

[foo]: first
[foo]: second

```

Should give output:

```html
<p><a href="first">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 8 Expecting Problem at row 1 Expecting symbol (
```
### [Example 174](https://github.github.com/gfm/#example-174)

This markdown:

```markdown
[FOO]: /url

[Foo]

```

Should give output:

```html
<p><a href="/url">Foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 175](https://github.github.com/gfm/#example-175)

This markdown:

```markdown
[ΑΓΩ]: /φου

[αγω]

```

Should give output:

```html
<p><a href="/%CF%86%CE%BF%CF%85">αγω</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 176](https://github.github.com/gfm/#example-176)

This markdown:

```markdown
[foo]: /url

```

Should give output:

```html

```

But instead was:

```html
ERROR Problem at row 3 Expecting Problem at row 1 Expecting symbol (
```
### [Example 177](https://github.github.com/gfm/#example-177)

This markdown:

```markdown
[
foo
]: /url
bar

```

Should give output:

```html
<p>bar</p>
```

But instead was:

```html
ERROR Problem at row 9 Expecting Problem at row 1 Expecting symbol (
```
### [Example 178](https://github.github.com/gfm/#example-178)

This markdown:

```markdown
[foo]: /url "title" ok

```

Should give output:

```html
<p>[foo]: /url &quot;title&quot; ok</p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting Problem at row 1 Expecting symbol (
```
### [Example 179](https://github.github.com/gfm/#example-179)

This markdown:

```markdown
[foo]: /url
"title" ok

```

Should give output:

```html
<p>&quot;title&quot; ok</p>
```

But instead was:

```html
ERROR Problem at row 5 Expecting Problem at row 1 Expecting symbol (
```
### [Example 180](https://github.github.com/gfm/#example-180)

This markdown:

```markdown
    [foo]: /url "title"

[foo]

```

Should give output:

```html
<pre><code>[foo]: /url &quot;title&quot;</code></pre><p>[foo]</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 181](https://github.github.com/gfm/#example-181)

This markdown:

```markdown
```
[foo]: /url
```

[foo]

```

Should give output:

```html
<pre><code>[foo]: /url</code></pre><p>[foo]</p>
```

But instead was:

```html
ERROR Problem at row 9 Expecting Problem at row 1 Expecting symbol (
```
### [Example 182](https://github.github.com/gfm/#example-182)

This markdown:

```markdown
Foo
[bar]: /baz

[bar]

```

Should give output:

```html
<p>Foo [bar]: /baz</p><p>[bar]</p>
```

But instead was:

```html
ERROR Problem at row 8 Expecting Problem at row 1 Expecting symbol (
```
### [Example 183](https://github.github.com/gfm/#example-183)

This markdown:

```markdown
# [Foo]
[foo]: /url
> bar

```

Should give output:

```html
<h1><a href="/url">Foo</a></h1><blockquote><p>bar</p></blockquote>
```

But instead was:

```html
ERROR Problem at row 7 Expecting Problem at row 1 Expecting symbol (
```
### [Example 184](https://github.github.com/gfm/#example-184)

This markdown:

```markdown
[foo]: /url
bar
===
[foo]

```

Should give output:

```html
<h1>bar</h1><p><a href="/url">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 9 Expecting Problem at row 1 Expecting symbol (
```
### [Example 185](https://github.github.com/gfm/#example-185)

This markdown:

```markdown
[foo]: /url
===
[foo]

```

Should give output:

```html
<p>===<a href="/url">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 7 Expecting Problem at row 1 Expecting symbol (
```
### [Example 186](https://github.github.com/gfm/#example-186)

This markdown:

```markdown
[foo]: /foo-url "foo"
[bar]: /bar-url
  "bar"
[baz]: /baz-url

[foo],
[bar],
[baz]

```

Should give output:

```html
<p><a href="/foo-url" title="foo">foo</a>,<a href="/bar-url" title="bar">bar</a>,<a href="/baz-url">baz</a></p>
```

But instead was:

```html
ERROR Problem at row 5 Expecting --- Problem at row 5 Expecting *** Problem at row 5 Expecting ___
```
### [Example 187](https://github.github.com/gfm/#example-187)

This markdown:

```markdown
[foo]

> [foo]: /url

```

Should give output:

```html
<p><a href="/url">foo</a></p><blockquote></blockquote>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 188](https://github.github.com/gfm/#example-188)

This markdown:

```markdown
[foo]: /url

```

Should give output:

```html

```

But instead was:

```html
ERROR Problem at row 3 Expecting Problem at row 1 Expecting symbol (
```
## Raw HTML

### [Example 609](https://github.github.com/gfm/#example-609)

This markdown:

```markdown
<a><bab><c2c>

```

Should give output:

```html
<p><a><bab><c2c></p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol
```
### [Example 610](https://github.github.com/gfm/#example-610)

This markdown:

```markdown
<a/><b2/>

```

Should give output:

```html
<p><a><b2></p>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 611](https://github.github.com/gfm/#example-611)

This markdown:

```markdown
<a  /><b2
data="foo" >

```

Should give output:

```html
<p><a><b2 data="foo"></p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting symbol
```
### [Example 612](https://github.github.com/gfm/#example-612)

This markdown:

```markdown
<a foo="bar" bam = 'baz <em>"</em>'
_boolean zoop:33=zoop:33 />

```

Should give output:

```html
<p><a _boolean="" bam="baz &lt;em&gt;&quot;&lt;/em&gt;" foo="bar" zoop:33="zoop:33"></p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol =
```
### [Example 613](https://github.github.com/gfm/#example-613)

This markdown:

```markdown
Foo <responsive-image src="foo.jpg" />

```

Should give output:

```html
<p>Foo<responsive-image src="foo.jpg"></p>
```

But instead was:

```html
<p>Foo &lt;responsive-image src=&quot;foo.jpg&quot; /&gt;</p>
```
### [Example 614](https://github.github.com/gfm/#example-614)

This markdown:

```markdown
<33> <__>

```

Should give output:

```html
<p>&lt;33&gt; &lt;__&gt;</p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol
```
### [Example 615](https://github.github.com/gfm/#example-615)

This markdown:

```markdown
<a h*#ref="hi">

```

Should give output:

```html
<p>&lt;a h*#ref=&quot;hi&quot;&gt;</p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol
```
### [Example 616](https://github.github.com/gfm/#example-616)

This markdown:

```markdown
<a href="hi'> <a href=hi'>

```

Should give output:

```html
<p>&lt;a href=&quot;hi&#39;&gt; &lt;a href=hi&#39;&gt;</p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol &quot;
```
### [Example 617](https://github.github.com/gfm/#example-617)

This markdown:

```markdown
< a><
foo><bar/ >
<foo bar=baz
bim!bop />

```

Should give output:

```html
<p>&lt; a&gt;&lt; foo&gt;&lt;bar/ &gt; &lt;foo bar=baz bim!bop /&gt;</p>
```

But instead was:

```html
ERROR Problem at row 1 Bad repeat
```
### [Example 618](https://github.github.com/gfm/#example-618)

This markdown:

```markdown
<a href='bar'title=title>

```

Should give output:

```html
<p>&lt;a href=&#39;bar&#39;title=title&gt;</p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol &quot; Problem at row 1 Expecting symbol &#39;
```
### [Example 619](https://github.github.com/gfm/#example-619)

This markdown:

```markdown
</a></foo >

```

Should give output:

```html
<p></a></foo></p>
```

But instead was:

```html
ERROR Problem at row 1 Bad repeat
```
### [Example 620](https://github.github.com/gfm/#example-620)

This markdown:

```markdown
</a href="foo">

```

Should give output:

```html
<p>&lt;/a href=&quot;foo&quot;&gt;</p>
```

But instead was:

```html
ERROR Problem at row 1 Bad repeat
```
### [Example 621](https://github.github.com/gfm/#example-621)

This markdown:

```markdown
foo <!-- this is a
comment - with hyphen -->

```

Should give output:

```html
<p>foo</p>
```

But instead was:

```html
<p>foo &lt;!-- this is a comment - with hyphen --&gt;</p>
```
### [Example 624](https://github.github.com/gfm/#example-624)

This markdown:

```markdown
foo <?php echo $a; ?>

```

Should give output:

```html
<p>foo</p>
```

But instead was:

```html
<p>foo &lt;?php echo $a; ?&gt;</p>
```
### [Example 625](https://github.github.com/gfm/#example-625)

This markdown:

```markdown
foo <!ELEMENT br EMPTY>

```

Should give output:

```html
<p>foo</p>
```

But instead was:

```html
<p>foo &lt;!ELEMENT br EMPTY&gt;</p>
```
### [Example 626](https://github.github.com/gfm/#example-626)

This markdown:

```markdown
foo <![CDATA[>&<]]>

```

Should give output:

```html
<p>foo&amp;&lt;]]&gt;</p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting Problem at row 1 Expecting symbol (
```
### [Example 627](https://github.github.com/gfm/#example-627)

This markdown:

```markdown
foo <a href="&ouml;">

```

Should give output:

```html
<p>foo<a href="ö"></p>
```

But instead was:

```html
<p>foo &lt;a href=&quot;&amp;ouml;&quot;&gt;</p>
```
### [Example 628](https://github.github.com/gfm/#example-628)

This markdown:

```markdown
foo <a href="\*">

```

Should give output:

```html
<p>foo<a href="\*"></p>
```

But instead was:

```html
<p>foo &lt;a href=&quot;\<em>&quot;&gt;</em></p>
```
### [Example 629](https://github.github.com/gfm/#example-629)

This markdown:

```markdown
<a href="\"">

```

Should give output:

```html
<p>&lt;a href=&quot;&quot;&quot;&gt;</p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol /&gt; Problem at row 1 Expecting symbol &gt;
```
## Autolinks

### [Example 590](https://github.github.com/gfm/#example-590)

This markdown:

```markdown
<http://foo.bar.baz>

```

Should give output:

```html
<p><a href="http://foo.bar.baz">http://foo.bar.baz</a></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol /&gt; Problem at row 1 Expecting symbol &gt;
```
### [Example 591](https://github.github.com/gfm/#example-591)

This markdown:

```markdown
<http://foo.bar.baz/test?q=hello&id=22&boolean>

```

Should give output:

```html
<p><a href="http://foo.bar.baz/test?q=hello&amp;id=22&amp;boolean">http://foo.bar.baz/test?q=hello&amp;id=22&amp;boolean</a></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol /&gt; Problem at row 1 Expecting symbol &gt;
```
### [Example 592](https://github.github.com/gfm/#example-592)

This markdown:

```markdown
<irc://foo.bar:2233/baz>

```

Should give output:

```html
<p><a href="irc://foo.bar:2233/baz">irc://foo.bar:2233/baz</a></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol /&gt; Problem at row 1 Expecting symbol &gt;
```
### [Example 593](https://github.github.com/gfm/#example-593)

This markdown:

```markdown
<MAILTO:FOO@BAR.BAZ>

```

Should give output:

```html
<p><a href="MAILTO:FOO@BAR.BAZ">MAILTO:FOO@BAR.BAZ</a></p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol
```
### [Example 594](https://github.github.com/gfm/#example-594)

This markdown:

```markdown
<a+b+c:d>

```

Should give output:

```html
<p><a href="a+b+c:d">a+b+c:d</a></p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol
```
### [Example 595](https://github.github.com/gfm/#example-595)

This markdown:

```markdown
<made-up-scheme://foo,bar>

```

Should give output:

```html
<p><a href="made-up-scheme://foo,bar">made-up-scheme://foo,bar</a></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol /&gt; Problem at row 1 Expecting symbol &gt;
```
### [Example 596](https://github.github.com/gfm/#example-596)

This markdown:

```markdown
<http://../>

```

Should give output:

```html
<p><a href="http://../">http://../</a></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol /&gt; Problem at row 1 Expecting symbol &gt;
```
### [Example 597](https://github.github.com/gfm/#example-597)

This markdown:

```markdown
<localhost:5001/foo>

```

Should give output:

```html
<p><a href="localhost:5001/foo">localhost:5001/foo</a></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol /&gt; Problem at row 1 Expecting symbol &gt;
```
### [Example 598](https://github.github.com/gfm/#example-598)

This markdown:

```markdown
<http://foo.bar/baz bim>

```

Should give output:

```html
<p>&lt;http://foo.bar/baz bim&gt;</p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol /&gt; Problem at row 1 Expecting symbol &gt;
```
### [Example 599](https://github.github.com/gfm/#example-599)

This markdown:

```markdown
<http://example.com/\[\>

```

Should give output:

```html
<p><a href="http://example.com/%5C%5B%5C">http://example.com/\[\</a></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol /&gt; Problem at row 1 Expecting symbol &gt;
```
### [Example 600](https://github.github.com/gfm/#example-600)

This markdown:

```markdown
<foo@bar.example.com>

```

Should give output:

```html
<p><a href="mailto:foo@bar.example.com">foo@bar.example.com</a></p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol
```
### [Example 601](https://github.github.com/gfm/#example-601)

This markdown:

```markdown
<foo+special@Bar.baz-bar0.com>

```

Should give output:

```html
<p><a href="mailto:foo+special@Bar.baz-bar0.com">foo+special@Bar.baz-bar0.com</a></p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol
```
### [Example 602](https://github.github.com/gfm/#example-602)

This markdown:

```markdown
<foo\+@bar.example.com>

```

Should give output:

```html
<p>&lt;foo+@bar.example.com&gt;</p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol
```
### [Example 603](https://github.github.com/gfm/#example-603)

This markdown:

```markdown
<>

```

Should give output:

```html
<p>&lt;&gt;</p>
```

But instead was:

```html
ERROR Problem at row 1 Bad repeat
```
### [Example 604](https://github.github.com/gfm/#example-604)

This markdown:

```markdown
< http://foo.bar >

```

Should give output:

```html
<p>&lt; http://foo.bar &gt;</p>
```

But instead was:

```html
ERROR Problem at row 1 Bad repeat
```
### [Example 605](https://github.github.com/gfm/#example-605)

This markdown:

```markdown
<m:abc>

```

Should give output:

```html
<p>&lt;m:abc&gt;</p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol
```
### [Example 606](https://github.github.com/gfm/#example-606)

This markdown:

```markdown
<foo.bar.baz>

```

Should give output:

```html
<p>&lt;foo.bar.baz&gt;</p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol
```
## Soft line breaks

### [Example 646](https://github.github.com/gfm/#example-646)

This markdown:

```markdown
foo 
 baz

```

Should give output:

```html
<p>foo baz</p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
## Links

### [Example 481](https://github.github.com/gfm/#example-481)

This markdown:

```markdown
[link](/uri "title")

```

Should give output:

```html
<p><a href="/uri" title="title">link</a></p>
```

But instead was:

```html
<p><a href="/uri \" title\""="">link</a></p>
```
### [Example 484](https://github.github.com/gfm/#example-484)

This markdown:

```markdown
[link](<>)

```

Should give output:

```html
<p><a href="">link</a></p>
```

But instead was:

```html
<p><a href="&lt;&gt;">link</a></p>
```
### [Example 485](https://github.github.com/gfm/#example-485)

This markdown:

```markdown
[link](/my uri)

```

Should give output:

```html
<p>[link](/my uri)</p>
```

But instead was:

```html
<p><a href="/my uri">link</a></p>
```
### [Example 486](https://github.github.com/gfm/#example-486)

This markdown:

```markdown
[link](</my uri>)

```

Should give output:

```html
<p><a href="/my%20uri">link</a></p>
```

But instead was:

```html
<p><a href="&lt;/my uri&gt;">link</a></p>
```
### [Example 487](https://github.github.com/gfm/#example-487)

This markdown:

```markdown
[link](foo
bar)

```

Should give output:

```html
<p>[link](foo bar)</p>
```

But instead was:

```html
<p><a href="foo bar">link</a></p>
```
### [Example 488](https://github.github.com/gfm/#example-488)

This markdown:

```markdown
[link](<foo
bar>)

```

Should give output:

```html
<p>[link](<foo bar="">)</p>
```

But instead was:

```html
<p><a href="&lt;foo bar&gt;">link</a></p>
```
### [Example 489](https://github.github.com/gfm/#example-489)

This markdown:

```markdown
[a](<b)c>)

```

Should give output:

```html
<p><a href="b)c">a</a></p>
```

But instead was:

```html
<p><a href="&lt;b">a</a>c&gt;)</p>
```
### [Example 490](https://github.github.com/gfm/#example-490)

This markdown:

```markdown
[link](<foo\>)

```

Should give output:

```html
<p>[link](&lt;foo&gt;)</p>
```

But instead was:

```html
<p><a href="&lt;foo\&gt;">link</a></p>
```
### [Example 491](https://github.github.com/gfm/#example-491)

This markdown:

```markdown
[a](<b)c
[a](<b)c>
[a](<b>c)

```

Should give output:

```html
<p>[a](&lt;b)c [a](&lt;b)c&gt; [a](<b>c)</p>
```

But instead was:

```html
<p><a href="&lt;b">a</a>c<a href="&lt;b">a</a>c&gt;<a href="&lt;b&gt;c">a</a></p>
```
### [Example 492](https://github.github.com/gfm/#example-492)

This markdown:

```markdown
[link](\(foo\))

```

Should give output:

```html
<p><a href="(foo)">link</a></p>
```

But instead was:

```html
<p><a href="\(foo\">link</a>)</p>
```
### [Example 493](https://github.github.com/gfm/#example-493)

This markdown:

```markdown
[link](foo(and(bar)))

```

Should give output:

```html
<p><a href="foo(and(bar))">link</a></p>
```

But instead was:

```html
<p><a href="foo(and(bar">link</a>))</p>
```
### [Example 494](https://github.github.com/gfm/#example-494)

This markdown:

```markdown
[link](foo\(and\(bar\))

```

Should give output:

```html
<p><a href="foo(and(bar)">link</a></p>
```

But instead was:

```html
<p><a href="foo\(and\(bar\">link</a>)</p>
```
### [Example 495](https://github.github.com/gfm/#example-495)

This markdown:

```markdown
[link](<foo(and(bar)>)

```

Should give output:

```html
<p><a href="foo(and(bar)">link</a></p>
```

But instead was:

```html
<p><a href="&lt;foo(and(bar">link</a>&gt;)</p>
```
### [Example 496](https://github.github.com/gfm/#example-496)

This markdown:

```markdown
[link](foo\)\:)

```

Should give output:

```html
<p><a href="foo):">link</a></p>
```

But instead was:

```html
<p><a href="foo\">link</a>\:)</p>
```
### [Example 498](https://github.github.com/gfm/#example-498)

This markdown:

```markdown
[link](foo\bar)

```

Should give output:

```html
<p><a href="foo%5Cbar">link</a></p>
```

But instead was:

```html
<p><a href="foo\bar">link</a></p>
```
### [Example 499](https://github.github.com/gfm/#example-499)

This markdown:

```markdown
[link](foo%20b&auml;)

```

Should give output:

```html
<p><a href="foo%20b%C3%A4">link</a></p>
```

But instead was:

```html
<p><a href="foo%20bä">link</a></p>
```
### [Example 500](https://github.github.com/gfm/#example-500)

This markdown:

```markdown
[link]("title")

```

Should give output:

```html
<p><a href="%22title%22">link</a></p>
```

But instead was:

```html
<p><a href="\" title\""="">link</a></p>
```
### [Example 501](https://github.github.com/gfm/#example-501)

This markdown:

```markdown
[link](/url "title")
[link](/url 'title')
[link](/url (title))

```

Should give output:

```html
<p><a href="/url" title="title">link</a><a href="/url" title="title">link</a><a href="/url" title="title">link</a></p>
```

But instead was:

```html
<p><a href="/url \" title\""="">link</a><a href="/url &#39;title&#39;">link</a><a href="/url (title">link</a>)</p>
```
### [Example 502](https://github.github.com/gfm/#example-502)

This markdown:

```markdown
[link](/url "title \"&quot;")

```

Should give output:

```html
<p><a href="/url" title="title &quot;&quot;">link</a></p>
```

But instead was:

```html
<p><a \\"&quot;\""="" href="/url \" title="">link</a></p>
```
### [Example 503](https://github.github.com/gfm/#example-503)

This markdown:

```markdown
[link](/url "title")

```

Should give output:

```html
<p><a href="/url%C2%A0%22title%22">link</a></p>
```

But instead was:

```html
<p><a href="/url \" title\""="">link</a></p>
```
### [Example 504](https://github.github.com/gfm/#example-504)

This markdown:

```markdown
[link](/url "title "and" title")

```

Should give output:

```html
<p>[link](/url &quot;title &quot;and&quot; title&quot;)</p>
```

But instead was:

```html
<p><a \"and\"="" href="/url \" title="" title\""="">link</a></p>
```
### [Example 505](https://github.github.com/gfm/#example-505)

This markdown:

```markdown
[link](/url 'title "and" title')

```

Should give output:

```html
<p><a href="/url" title="title &quot;and&quot; title">link</a></p>
```

But instead was:

```html
<p><a and\"="" href="/url &#39;title \" title'"="">link</a></p>
```
### [Example 506](https://github.github.com/gfm/#example-506)

This markdown:

```markdown
[link](   /uri
  "title"  )

```

Should give output:

```html
<p><a href="/uri" title="title">link</a></p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 507](https://github.github.com/gfm/#example-507)

This markdown:

```markdown
[link] (/uri)

```

Should give output:

```html
<p>[link] (/uri)</p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting Problem at row 1 Expecting symbol (
```
### [Example 508](https://github.github.com/gfm/#example-508)

This markdown:

```markdown
[link [foo [bar]]](/uri)

```

Should give output:

```html
<p><a href="/uri">link [foo [bar]]</a></p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting Problem at row 1 Expecting symbol (
```
### [Example 509](https://github.github.com/gfm/#example-509)

This markdown:

```markdown
[link] bar](/uri)

```

Should give output:

```html
<p>[link] bar](/uri)</p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting Problem at row 1 Expecting symbol (
```
### [Example 510](https://github.github.com/gfm/#example-510)

This markdown:

```markdown
[link [bar](/uri)

```

Should give output:

```html
<p>[link<a href="/uri">bar</a></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol ]
```
### [Example 511](https://github.github.com/gfm/#example-511)

This markdown:

```markdown
[link \[bar](/uri)

```

Should give output:

```html
<p><a href="/uri">link [bar</a></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol ]
```
### [Example 512](https://github.github.com/gfm/#example-512)

This markdown:

```markdown
[link *foo **bar** `#`*](/uri)

```

Should give output:

```html
<p><a href="/uri">link<em>foo<strong>bar</strong><code>#</code></em></a></p>
```

But instead was:

```html
<p><a href="/uri">link<em>foo</em><strong>bar</strong><em></em><em>#</em></a></p>
```
### [Example 513](https://github.github.com/gfm/#example-513)

This markdown:

```markdown
[![moon](moon.jpg)](/uri)

```

Should give output:

```html
<p><a href="/uri"><img alt="moon" src="moon.jpg"></a></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol ]
```
### [Example 514](https://github.github.com/gfm/#example-514)

This markdown:

```markdown
[foo [bar](/uri)](/uri)

```

Should give output:

```html
<p>[foo<a href="/uri">bar</a>](/uri)</p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol ]
```
### [Example 515](https://github.github.com/gfm/#example-515)

This markdown:

```markdown
[foo *[bar [baz](/uri)](/uri)*](/uri)

```

Should give output:

```html
<p>[foo<em>[bar<a href="/uri">baz</a>](/uri)</em>](/uri)</p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol ]
```
### [Example 516](https://github.github.com/gfm/#example-516)

This markdown:

```markdown
![[[foo](uri1)](uri2)](uri3)

```

Should give output:

```html
<p><img alt="[foo](uri2)" src="uri3"></p>
```

But instead was:

```html
<p><img src="uri1">](uri2)](uri3)</p>
```
### [Example 517](https://github.github.com/gfm/#example-517)

This markdown:

```markdown
*[foo*](/uri)

```

Should give output:

```html
<p>*<a href="/uri">foo*</a></p>
```

But instead was:

```html
<p><a href="/uri">foo</a></p>
```
### [Example 518](https://github.github.com/gfm/#example-518)

This markdown:

```markdown
[foo *bar](baz*)

```

Should give output:

```html
<p><a href="baz*">foo *bar</a></p>
```

But instead was:

```html
<p><a href="baz*">foo<em>bar</em></a></p>
```
### [Example 519](https://github.github.com/gfm/#example-519)

This markdown:

```markdown
*foo [bar* baz]

```

Should give output:

```html
<p><em>foo [bar</em>baz]</p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting Problem at row 1 Expecting symbol (
```
### [Example 520](https://github.github.com/gfm/#example-520)

This markdown:

```markdown
[foo <bar attr="](baz)">

```

Should give output:

```html
<p>[foo<bar attr="](baz)"></p>
```

But instead was:

```html
<p><a href="baz">foo &lt;bar attr=&quot;</a>&quot;&gt;</p>
```
### [Example 521](https://github.github.com/gfm/#example-521)

This markdown:

```markdown
[foo`](/uri)`

```

Should give output:

```html
<p>[foo<code>](/uri)</code></p>
```

But instead was:

```html
<p><a href="/uri">foo</a></p>
```
### [Example 522](https://github.github.com/gfm/#example-522)

This markdown:

```markdown
[foo<http://example.com/?search=](uri)>

```

Should give output:

```html
<p>[foo<a href="http://example.com/?search=%5D(uri)">http://example.com/?search=](uri)</a></p>
```

But instead was:

```html
<p><a href="uri">foo&lt;http://example.com/?search=</a>&gt;</p>
```
### [Example 523](https://github.github.com/gfm/#example-523)

This markdown:

```markdown
[foo][bar]

[bar]: /url "title"

```

Should give output:

```html
<p><a href="/url" title="title">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 524](https://github.github.com/gfm/#example-524)

This markdown:

```markdown
[link [foo [bar]]][ref]

[ref]: /uri

```

Should give output:

```html
<p><a href="/uri">link [foo [bar]]</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 525](https://github.github.com/gfm/#example-525)

This markdown:

```markdown
[link \[bar][ref]

[ref]: /uri

```

Should give output:

```html
<p><a href="/uri">link [bar</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 526](https://github.github.com/gfm/#example-526)

This markdown:

```markdown
[link *foo **bar** `#`*][ref]

[ref]: /uri

```

Should give output:

```html
<p><a href="/uri">link<em>foo<strong>bar</strong><code>#</code></em></a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 527](https://github.github.com/gfm/#example-527)

This markdown:

```markdown
[![moon](moon.jpg)][ref]

[ref]: /uri

```

Should give output:

```html
<p><a href="/uri"><img alt="moon" src="moon.jpg"></a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 528](https://github.github.com/gfm/#example-528)

This markdown:

```markdown
[foo [bar](/uri)][ref]

[ref]: /uri

```

Should give output:

```html
<p>[foo<a href="/uri">bar</a>]<a href="/uri">ref</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 529](https://github.github.com/gfm/#example-529)

This markdown:

```markdown
[foo *bar [baz][ref]*][ref]

[ref]: /uri

```

Should give output:

```html
<p>[foo<em>bar<a href="/uri">baz</a></em>]<a href="/uri">ref</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 530](https://github.github.com/gfm/#example-530)

This markdown:

```markdown
*[foo*][ref]

[ref]: /uri

```

Should give output:

```html
<p>*<a href="/uri">foo*</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 531](https://github.github.com/gfm/#example-531)

This markdown:

```markdown
[foo *bar][ref]

[ref]: /uri

```

Should give output:

```html
<p><a href="/uri">foo *bar</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 532](https://github.github.com/gfm/#example-532)

This markdown:

```markdown
[foo <bar attr="][ref]">

[ref]: /uri

```

Should give output:

```html
<p>[foo<bar attr="][ref]"></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 533](https://github.github.com/gfm/#example-533)

This markdown:

```markdown
[foo`][ref]`

[ref]: /uri

```

Should give output:

```html
<p>[foo<code>][ref]</code></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 534](https://github.github.com/gfm/#example-534)

This markdown:

```markdown
[foo<http://example.com/?search=][ref]>

[ref]: /uri

```

Should give output:

```html
<p>[foo<a href="http://example.com/?search=%5D%5Bref%5D">http://example.com/?search=][ref]</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 535](https://github.github.com/gfm/#example-535)

This markdown:

```markdown
[foo][BaR]

[bar]: /url "title"

```

Should give output:

```html
<p><a href="/url" title="title">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 536](https://github.github.com/gfm/#example-536)

This markdown:

```markdown
[Толпой][Толпой] is a Russian word.

[ТОЛПОЙ]: /url

```

Should give output:

```html
<p><a href="/url">Толпой</a>is a Russian word.</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 537](https://github.github.com/gfm/#example-537)

This markdown:

```markdown
[Foo
  bar]: /url

[Baz][Foo bar]

```

Should give output:

```html
<p><a href="/url">Baz</a></p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 538](https://github.github.com/gfm/#example-538)

This markdown:

```markdown
[foo] [bar]

[bar]: /url "title"

```

Should give output:

```html
<p>[foo]<a href="/url" title="title">bar</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 539](https://github.github.com/gfm/#example-539)

This markdown:

```markdown
[foo]
[bar]

[bar]: /url "title"

```

Should give output:

```html
<p>[foo]<a href="/url" title="title">bar</a></p>
```

But instead was:

```html
ERROR Problem at row 8 Expecting Problem at row 1 Expecting symbol (
```
### [Example 540](https://github.github.com/gfm/#example-540)

This markdown:

```markdown
[foo]: /url1

[foo]: /url2

[bar][foo]

```

Should give output:

```html
<p><a href="/url1">bar</a></p>
```

But instead was:

```html
ERROR Problem at row 9 Expecting Problem at row 1 Expecting symbol (
```
### [Example 541](https://github.github.com/gfm/#example-541)

This markdown:

```markdown
[bar][foo\!]

[foo!]: /url

```

Should give output:

```html
<p>[bar][foo!]</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 542](https://github.github.com/gfm/#example-542)

This markdown:

```markdown
[foo][ref[]

[ref[]: /uri

```

Should give output:

```html
<p>[foo][ref[]</p><p>[ref[]: /uri</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 543](https://github.github.com/gfm/#example-543)

This markdown:

```markdown
[foo][ref[bar]]

[ref[bar]]: /uri

```

Should give output:

```html
<p>[foo][ref[bar]]</p><p>[ref[bar]]: /uri</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 544](https://github.github.com/gfm/#example-544)

This markdown:

```markdown
[[[foo]]]

[[[foo]]]: /url

```

Should give output:

```html
<p>[[[foo]]]</p><p>[[[foo]]]: /url</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 545](https://github.github.com/gfm/#example-545)

This markdown:

```markdown
[foo][ref\[]

[ref\[]: /uri

```

Should give output:

```html
<p><a href="/uri">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 546](https://github.github.com/gfm/#example-546)

This markdown:

```markdown
[bar\\]: /uri

[bar\\]

```

Should give output:

```html
<p><a href="/uri">bar\</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 547](https://github.github.com/gfm/#example-547)

This markdown:

```markdown
[]

[]: /uri

```

Should give output:

```html
<p>[]</p><p>[]: /uri</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 548](https://github.github.com/gfm/#example-548)

This markdown:

```markdown
[
 ]

[
 ]: /uri

```

Should give output:

```html
<p>[ ]</p><p>[ ]: /uri</p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 549](https://github.github.com/gfm/#example-549)

This markdown:

```markdown
[foo][]

[foo]: /url "title"

```

Should give output:

```html
<p><a href="/url" title="title">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 550](https://github.github.com/gfm/#example-550)

This markdown:

```markdown
[*foo* bar][]

[*foo* bar]: /url "title"

```

Should give output:

```html
<p><a href="/url" title="title"><em>foo</em>bar</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 551](https://github.github.com/gfm/#example-551)

This markdown:

```markdown
[Foo][]

[foo]: /url "title"

```

Should give output:

```html
<p><a href="/url" title="title">Foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 552](https://github.github.com/gfm/#example-552)

This markdown:

```markdown
[foo] 
[]

[foo]: /url "title"

```

Should give output:

```html
<p><a href="/url" title="title">foo</a>[]</p>
```

But instead was:

```html
ERROR Problem at row 8 Expecting Problem at row 1 Expecting symbol (
```
### [Example 553](https://github.github.com/gfm/#example-553)

This markdown:

```markdown
[foo]

[foo]: /url "title"

```

Should give output:

```html
<p><a href="/url" title="title">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 554](https://github.github.com/gfm/#example-554)

This markdown:

```markdown
[*foo* bar]

[*foo* bar]: /url "title"

```

Should give output:

```html
<p><a href="/url" title="title"><em>foo</em>bar</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 555](https://github.github.com/gfm/#example-555)

This markdown:

```markdown
[[*foo* bar]]

[*foo* bar]: /url "title"

```

Should give output:

```html
<p>[<a href="/url" title="title"><em>foo</em>bar</a>]</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 556](https://github.github.com/gfm/#example-556)

This markdown:

```markdown
[[bar [foo]

[foo]: /url

```

Should give output:

```html
<p>[[bar<a href="/url">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 557](https://github.github.com/gfm/#example-557)

This markdown:

```markdown
[Foo]

[foo]: /url "title"

```

Should give output:

```html
<p><a href="/url" title="title">Foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 558](https://github.github.com/gfm/#example-558)

This markdown:

```markdown
[foo] bar

[foo]: /url

```

Should give output:

```html
<p><a href="/url">foo</a>bar</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 559](https://github.github.com/gfm/#example-559)

This markdown:

```markdown
\[foo]

[foo]: /url "title"

```

Should give output:

```html
<p>[foo]</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 560](https://github.github.com/gfm/#example-560)

This markdown:

```markdown
[foo*]: /url

*[foo*]

```

Should give output:

```html
<p>*<a href="/url">foo*</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 561](https://github.github.com/gfm/#example-561)

This markdown:

```markdown
[foo][bar]

[foo]: /url1
[bar]: /url2

```

Should give output:

```html
<p><a href="/url2">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 8 Expecting Problem at row 1 Expecting symbol (
```
### [Example 562](https://github.github.com/gfm/#example-562)

This markdown:

```markdown
[foo][]

[foo]: /url1

```

Should give output:

```html
<p><a href="/url1">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 563](https://github.github.com/gfm/#example-563)

This markdown:

```markdown
[foo]()

[foo]: /url1

```

Should give output:

```html
<p><a href="">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 564](https://github.github.com/gfm/#example-564)

This markdown:

```markdown
[foo](not a link)

[foo]: /url1

```

Should give output:

```html
<p><a href="/url1">foo</a>(not a link)</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 565](https://github.github.com/gfm/#example-565)

This markdown:

```markdown
[foo][bar][baz]

[baz]: /url

```

Should give output:

```html
<p>[foo]<a href="/url">bar</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 566](https://github.github.com/gfm/#example-566)

This markdown:

```markdown
[foo][bar][baz]

[baz]: /url1
[bar]: /url2

```

Should give output:

```html
<p><a href="/url2">foo</a><a href="/url1">baz</a></p>
```

But instead was:

```html
ERROR Problem at row 8 Expecting Problem at row 1 Expecting symbol (
```
### [Example 567](https://github.github.com/gfm/#example-567)

This markdown:

```markdown
[foo][bar][baz]

[baz]: /url1
[foo]: /url2

```

Should give output:

```html
<p>[foo]<a href="/url1">bar</a></p>
```

But instead was:

```html
ERROR Problem at row 8 Expecting Problem at row 1 Expecting symbol (
```
## Hard line breaks

### [Example 630](https://github.github.com/gfm/#example-630)

This markdown:

```markdown
foo  
baz

```

Should give output:

```html
<p>foo<br>baz</p>
```

But instead was:

```html
<p>foo baz</p>
```
### [Example 631](https://github.github.com/gfm/#example-631)

This markdown:

```markdown
foo\
baz

```

Should give output:

```html
<p>foo<br>baz</p>
```

But instead was:

```html
<p>foo\ baz</p>
```
### [Example 632](https://github.github.com/gfm/#example-632)

This markdown:

```markdown
foo       
baz

```

Should give output:

```html
<p>foo<br>baz</p>
```

But instead was:

```html
<p>foo baz</p>
```
### [Example 633](https://github.github.com/gfm/#example-633)

This markdown:

```markdown
foo  
     bar

```

Should give output:

```html
<p>foo<br>bar</p>
```

But instead was:

```html
<p>foo</p><pre><code>bar</code></pre>
```
### [Example 634](https://github.github.com/gfm/#example-634)

This markdown:

```markdown
foo\
     bar

```

Should give output:

```html
<p>foo<br>bar</p>
```

But instead was:

```html
<p>foo\</p><pre><code>bar</code></pre>
```
### [Example 635](https://github.github.com/gfm/#example-635)

This markdown:

```markdown
*foo  
bar*

```

Should give output:

```html
<p><em>foo<br>bar</em></p>
```

But instead was:

```html
<p><em>foo bar</em></p>
```
### [Example 636](https://github.github.com/gfm/#example-636)

This markdown:

```markdown
*foo\
bar*

```

Should give output:

```html
<p><em>foo<br>bar</em></p>
```

But instead was:

```html
<p><em>foo\ bar</em></p>
```
### [Example 639](https://github.github.com/gfm/#example-639)

This markdown:

```markdown
<a href="foo  
bar">

```

Should give output:

```html
<p><a href="foo  
bar"></p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting symbol
```
### [Example 640](https://github.github.com/gfm/#example-640)

This markdown:

```markdown
<a href="foo\
bar">

```

Should give output:

```html
<p><a href="foo\
bar"></p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting symbol
```
## HTML blocks

### [Example 118](https://github.github.com/gfm/#example-118)

This markdown:

```markdown
<table><tr><td>
<pre>
**Hello**,

_world_.
</pre>
</td></tr></table>

```

Should give output:

```html
<table><tr><td><pre>**Hello**,<p><em>world</em>.</pre></p></td></tr></table>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 119](https://github.github.com/gfm/#example-119)

This markdown:

```markdown
<table>
  <tr>
    <td>
           hi
    </td>
  </tr>
</table>

okay.

```

Should give output:

```html
<table><tr><td>hi</td></tr></table><p>okay.</p>
```

But instead was:

```html
ERROR Problem at row 7 Expecting Problem at row 2 Expecting --- Problem at row 2 Expecting *** Problem at row 2 Expecting ___
```
### [Example 120](https://github.github.com/gfm/#example-120)

This markdown:

```markdown
 <div>
  *hello*
         <foo><a>

```

Should give output:

```html
<div>*hello*<foo><a>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 121](https://github.github.com/gfm/#example-121)

This markdown:

```markdown
</div>
*foo*

```

Should give output:

```html
</div>*foo*
```

But instead was:

```html
ERROR Problem at row 1 Bad repeat
```
### [Example 122](https://github.github.com/gfm/#example-122)

This markdown:

```markdown
<DIV CLASS="foo">

*Markdown*

</DIV>

```

Should give output:

```html
<div class="foo"><p><em>Markdown</em></p></div>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 123](https://github.github.com/gfm/#example-123)

This markdown:

```markdown
<div id="foo"
  class="bar">
</div>

```

Should give output:

```html
<div class="bar" id="foo"></div>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 124](https://github.github.com/gfm/#example-124)

This markdown:

```markdown
<div id="foo" class="bar
  baz">
</div>

```

Should give output:

```html
<div class="bar
 baz" id="foo"></div>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 125](https://github.github.com/gfm/#example-125)

This markdown:

```markdown
<div>
*foo*

*bar*

```

Should give output:

```html
<div>*foo*<p><em>bar</em></p>
```

But instead was:

```html
ERROR Problem at row 5 Expecting symbol
```
### [Example 126](https://github.github.com/gfm/#example-126)

This markdown:

```markdown
<div id="foo"
*hi*

```

Should give output:

```html

```

But instead was:

```html
ERROR Problem at row 3 Expecting symbol =
```
### [Example 127](https://github.github.com/gfm/#example-127)

This markdown:

```markdown
<div class
foo

```

Should give output:

```html

```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol =
```
### [Example 128](https://github.github.com/gfm/#example-128)

This markdown:

```markdown
<div *???-&&&-<---
*foo*

```

Should give output:

```html

```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol =
```
### [Example 129](https://github.github.com/gfm/#example-129)

This markdown:

```markdown
<div><a href="bar">*foo*</a></div>

```

Should give output:

```html
<div><a href="bar">*foo*</a></div>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 130](https://github.github.com/gfm/#example-130)

This markdown:

```markdown
<table><tr><td>
foo
</td></tr></table>

```

Should give output:

```html
<table><tr><td>foo</td></tr></table>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 131](https://github.github.com/gfm/#example-131)

This markdown:

```markdown
<div></div>
``` c
int x = 33;
```

```

Should give output:

```html
<div></div>``` c int x = 33; ```
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 132](https://github.github.com/gfm/#example-132)

This markdown:

```markdown
<a href="foo">
*bar*
</a>

```

Should give output:

```html
<a href="foo">*bar*</a>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 133](https://github.github.com/gfm/#example-133)

This markdown:

```markdown
<Warning>
*bar*
</Warning>

```

Should give output:

```html
<warning>*bar*</warning>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 134](https://github.github.com/gfm/#example-134)

This markdown:

```markdown
<i class="foo">
*bar*
</i>

```

Should give output:

```html
<i class="foo">*bar*</i>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 135](https://github.github.com/gfm/#example-135)

This markdown:

```markdown
</ins>
*bar*

```

Should give output:

```html
</ins>*bar*
```

But instead was:

```html
ERROR Problem at row 1 Bad repeat
```
### [Example 136](https://github.github.com/gfm/#example-136)

This markdown:

```markdown
<del>
*foo*
</del>

```

Should give output:

```html
<del>*foo*</del>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 137](https://github.github.com/gfm/#example-137)

This markdown:

```markdown
<del>

*foo*

</del>

```

Should give output:

```html
<del><p><em>foo</em></p></del>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 138](https://github.github.com/gfm/#example-138)

This markdown:

```markdown
<del>*foo*</del>

```

Should give output:

```html
<p><del><em>foo</em></del></p>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 139](https://github.github.com/gfm/#example-139)

This markdown:

```markdown
<pre language="haskell"><code>
import Text.HTML.TagSoup

main :: IO ()
main = print $ parseTags tags
</code></pre>
okay

```

Should give output:

```html
<pre language="haskell"><code>import Text.HTML.TagSoup main :: IO () main = print $ parseTags tags</code></pre><p>okay</p>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 140](https://github.github.com/gfm/#example-140)

This markdown:

```markdown
<script type="text/javascript">
// JavaScript example

document.getElementById("demo").innerHTML = "Hello JavaScript!";
</script>
okay

```

Should give output:

```html
<script type="text/javascript">// JavaScript example document.getElementById(&quot;demo&quot;).innerHTML = &quot;Hello JavaScript!&quot;;</script><p>okay</p>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 141](https://github.github.com/gfm/#example-141)

This markdown:

```markdown
<style
  type="text/css">
h1 {color:red;}

p {color:blue;}
</style>
okay

```

Should give output:

```html
<style type="text/css">h1 {color:red;} p {color:blue;}</style><p>okay</p>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 142](https://github.github.com/gfm/#example-142)

This markdown:

```markdown
<style
  type="text/css">

foo

```

Should give output:

```html
<style type="text/css">foo
```

But instead was:

```html
ERROR Problem at row 5 Expecting symbol
```
### [Example 143](https://github.github.com/gfm/#example-143)

This markdown:

```markdown
> <div>
> foo

bar

```

Should give output:

```html
<blockquote><div>foo</blockquote><p>bar</p>
```

But instead was:

```html
<p>&gt; &lt;div&gt; &gt; foo</p><p>bar</p>
```
### [Example 144](https://github.github.com/gfm/#example-144)

This markdown:

```markdown
- <div>
- foo

```

Should give output:

```html
<ul><li><div></li><li>foo</li></ul>
```

But instead was:

```html
<ul><li><p>&lt;div&gt;</p></li><li><p>foo</p></li></ul>
```
### [Example 145](https://github.github.com/gfm/#example-145)

This markdown:

```markdown
<style>p{color:red;}</style>
*foo*

```

Should give output:

```html
<style>p{color:red;}</style><p><em>foo</em></p>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 146](https://github.github.com/gfm/#example-146)

This markdown:

```markdown
<!-- foo -->*bar*
*baz*

```

Should give output:

```html
*bar*<p><em>baz</em></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol =
```
### [Example 147](https://github.github.com/gfm/#example-147)

This markdown:

```markdown
<script>
foo
</script>1. *bar*

```

Should give output:

```html
<script>foo</script>1. *bar*
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 148](https://github.github.com/gfm/#example-148)

This markdown:

```markdown
<!-- Foo

bar
   baz -->
okay

```

Should give output:

```html
<p>okay</p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting symbol =
```
### [Example 149](https://github.github.com/gfm/#example-149)

This markdown:

```markdown
<?php

  echo '>';

?>
okay

```

Should give output:

```html
&#39;; ?&gt;<p>okay</p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting symbol =
```
### [Example 150](https://github.github.com/gfm/#example-150)

This markdown:

```markdown
<!DOCTYPE html>

```

Should give output:

```html
<!DOCTYPE HTML>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol =
```
### [Example 151](https://github.github.com/gfm/#example-151)

This markdown:

```markdown
<![CDATA[
function matchwo(a,b)
{
  if (a < b && a < 0) then {
    return 1;

  } else {

    return 0;
  }
}
]]>
okay

```

Should give output:

```html
<p>okay</p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol =
```
### [Example 152](https://github.github.com/gfm/#example-152)

This markdown:

```markdown
  <!-- foo -->

    <!-- foo -->

```

Should give output:

```html
<pre><code>&lt;!-- foo --&gt;</code></pre>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 153](https://github.github.com/gfm/#example-153)

This markdown:

```markdown
  <div>

    <div>

```

Should give output:

```html
<div><pre><code>&lt;div&gt;</code></pre>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 154](https://github.github.com/gfm/#example-154)

This markdown:

```markdown
Foo
<div>
bar
</div>

```

Should give output:

```html
<p>Foo</p><div>bar</div>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 155](https://github.github.com/gfm/#example-155)

This markdown:

```markdown
<div>
bar
</div>
*foo*

```

Should give output:

```html
<div>bar</div>*foo*
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 156](https://github.github.com/gfm/#example-156)

This markdown:

```markdown
Foo
<a href="bar">
baz

```

Should give output:

```html
<p>Foo<a href="bar">baz</p>
```

But instead was:

```html
ERROR Problem at row 5 Expecting symbol
```
### [Example 157](https://github.github.com/gfm/#example-157)

This markdown:

```markdown
<div>

*Emphasized* text.

</div>

```

Should give output:

```html
<div><p><em>Emphasized</em>text.</p></div>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 158](https://github.github.com/gfm/#example-158)

This markdown:

```markdown
<div>
*Emphasized* text.
</div>

```

Should give output:

```html
<div>*Emphasized* text.</div>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 159](https://github.github.com/gfm/#example-159)

This markdown:

```markdown
<table>

<tr>

<td>
Hi
</td>

</tr>

</table>

```

Should give output:

```html
<table><tr><td>Hi</td></tr></table>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 160](https://github.github.com/gfm/#example-160)

This markdown:

```markdown
<table>

  <tr>

    <td>
      Hi
    </td>

  </tr>

</table>

```

Should give output:

```html
<table><tr><pre><code>&lt;td&gt; Hi &lt;/td&gt;</code></pre></tr></table>
```

But instead was:

```html
ERROR Problem at row 11 Expecting Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
## Paragraphs

### [Example 192](https://github.github.com/gfm/#example-192)

This markdown:

```markdown
  aaa
 bbb

```

Should give output:

```html
<p>aaa bbb</p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 193](https://github.github.com/gfm/#example-193)

This markdown:

```markdown
aaa
             bbb
                                       ccc

```

Should give output:

```html
<p>aaa bbb ccc</p>
```

But instead was:

```html
<p>aaa</p><pre><code>bbb</code></pre><pre><code>ccc</code></pre>
```
### [Example 194](https://github.github.com/gfm/#example-194)

This markdown:

```markdown
   aaa
bbb

```

Should give output:

```html
<p>aaa bbb</p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 196](https://github.github.com/gfm/#example-196)

This markdown:

```markdown
aaa     
bbb     

```

Should give output:

```html
<p>aaa<br>bbb</p>
```

But instead was:

```html
<p>aaa bbb</p>
```
## Fenced code blocks

### [Example 91](https://github.github.com/gfm/#example-91)

This markdown:

```markdown
``
foo
``

```

Should give output:

```html
<p><code>foo</code></p>
```

But instead was:

```html
<p>foo</p>
```
### [Example 94](https://github.github.com/gfm/#example-94)

This markdown:

```markdown
````
aaa
```
``````

```

Should give output:

```html
<pre><code>aaa ```</code></pre>
```

But instead was:

```html
ERROR Problem at row 8 Expecting symbol ```
```
### [Example 95](https://github.github.com/gfm/#example-95)

This markdown:

```markdown
~~~~
aaa
~~~
~~~~

```

Should give output:

```html
<pre><code>aaa ~~~</code></pre>
```

But instead was:

```html
ERROR Problem at row 8 Expecting symbol ~~~
```
### [Example 96](https://github.github.com/gfm/#example-96)

This markdown:

```markdown
```

```

Should give output:

```html
<pre><code></code></pre>
```

But instead was:

```html
ERROR Problem at row 3 Expecting symbol ```
```
### [Example 97](https://github.github.com/gfm/#example-97)

This markdown:

```markdown
`````

```
aaa

```

Should give output:

```html
<pre><code>``` aaa</code></pre>
```

But instead was:

```html
<pre><code></code></pre><p>aaa</p>
```
### [Example 98](https://github.github.com/gfm/#example-98)

This markdown:

```markdown
> ```
> aaa

bbb

```

Should give output:

```html
<blockquote><pre><code>aaa</code></pre></blockquote><p>bbb</p>
```

But instead was:

```html
<p>&gt;<code>&gt; aaa</code></p><p>bbb</p>
```
### [Example 100](https://github.github.com/gfm/#example-100)

This markdown:

```markdown
```
```

```

Should give output:

```html
<pre><code></code></pre>
```

But instead was:

```html
ERROR Problem at row 4 Expecting symbol ```
```
### [Example 101](https://github.github.com/gfm/#example-101)

This markdown:

```markdown
 ```
 aaa
aaa
```

```

Should give output:

```html
<pre><code>aaa aaa</code></pre>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 102](https://github.github.com/gfm/#example-102)

This markdown:

```markdown
  ```
aaa
  aaa
aaa
  ```

```

Should give output:

```html
<pre><code>aaa aaa aaa</code></pre>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 103](https://github.github.com/gfm/#example-103)

This markdown:

```markdown
   ```
   aaa
    aaa
  aaa
   ```

```

Should give output:

```html
<pre><code>aaa aaa aaa</code></pre>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 104](https://github.github.com/gfm/#example-104)

This markdown:

```markdown
    ```
    aaa
    ```

```

Should give output:

```html
<pre><code>``` aaa ```</code></pre>
```

But instead was:

```html
<pre><code>```</code></pre><pre><code>aaa</code></pre><pre><code>```</code></pre>
```
### [Example 105](https://github.github.com/gfm/#example-105)

This markdown:

```markdown
```
aaa
  ```

```

Should give output:

```html
<pre><code>aaa</code></pre>
```

But instead was:

```html
ERROR Problem at row 5 Expecting symbol ```
```
### [Example 106](https://github.github.com/gfm/#example-106)

This markdown:

```markdown
   ```
aaa
  ```

```

Should give output:

```html
<pre><code>aaa</code></pre>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 107](https://github.github.com/gfm/#example-107)

This markdown:

```markdown
```
aaa
    ```

```

Should give output:

```html
<pre><code>aaa ```</code></pre>
```

But instead was:

```html
ERROR Problem at row 5 Expecting symbol ```
```
### [Example 108](https://github.github.com/gfm/#example-108)

This markdown:

```markdown
``` ```
aaa

```

Should give output:

```html
<p><code></code>aaa</p>
```

But instead was:

```html
ERROR Problem at row 4 Expecting symbol ```
```
### [Example 109](https://github.github.com/gfm/#example-109)

This markdown:

```markdown
~~~~~~
aaa
~~~ ~~

```

Should give output:

```html
<pre><code>aaa ~~~ ~~</code></pre>
```

But instead was:

```html
ERROR Problem at row 5 Expecting --- Problem at row 5 Expecting *** Problem at row 5 Expecting ___
```
### [Example 111](https://github.github.com/gfm/#example-111)

This markdown:

```markdown
foo
---
~~~
bar
~~~
# baz

```

Should give output:

```html
<h2>foo</h2><pre><code>bar</code></pre><h1>baz</h1>
```

But instead was:

```html
<p>foo</p><hr><pre><code>bar</code></pre><h1>baz</h1>
```
### [Example 112](https://github.github.com/gfm/#example-112)

This markdown:

```markdown
```ruby
def foo(x)
  return 3
end
```

```

Should give output:

```html
<pre><code class="language-ruby">def foo(x) return 3 end</code></pre>
```

But instead was:

```html
<pre><code>def foo(x) return 3 end</code></pre>
```
### [Example 113](https://github.github.com/gfm/#example-113)

This markdown:

```markdown
~~~~    ruby startline=3 $%@#$
def foo(x)
  return 3
end
~~~~~~~

```

Should give output:

```html
<pre><code class="language-ruby">def foo(x) return 3 end</code></pre>
```

But instead was:

```html
ERROR Problem at row 9 Expecting symbol ~~~
```
### [Example 114](https://github.github.com/gfm/#example-114)

This markdown:

```markdown
````;
````

```

Should give output:

```html
<pre><code class="language-;"></code></pre>
```

But instead was:

```html
ERROR Problem at row 4 Expecting symbol ```
```
### [Example 115](https://github.github.com/gfm/#example-115)

This markdown:

```markdown
``` aa ```
foo

```

Should give output:

```html
<p><code>aa</code>foo</p>
```

But instead was:

```html
ERROR Problem at row 4 Expecting symbol ```
```
### [Example 116](https://github.github.com/gfm/#example-116)

This markdown:

```markdown
~~~ aa ``` ~~~
foo
~~~

```

Should give output:

```html
<pre><code class="language-aa">foo</code></pre>
```

But instead was:

```html
<pre><code>foo</code></pre>
```
## [extension] Strikethrough

### [Example 491](https://github.github.com/gfm/#example-491)

This markdown:

```markdown
~~Hi~~ Hello, world!
```

Should give output:

```html
<p><del>Hi</del>Hello, world!</p>
```

But instead was:

```html
<p>~~Hi~~ Hello, world!</p>
```
## Blank lines

### [Example 197](https://github.github.com/gfm/#example-197)

This markdown:

```markdown
  

aaa
  

# aaa

  

```

Should give output:

```html
<p>aaa</p><h1>aaa</h1>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
## Images

### [Example 568](https://github.github.com/gfm/#example-568)

This markdown:

```markdown
![foo](/url "title")

```

Should give output:

```html
<p><img alt="foo" src="/url" title="title"></p>
```

But instead was:

```html
<p><img src="/url \" title\""=""></p>
```
### [Example 569](https://github.github.com/gfm/#example-569)

This markdown:

```markdown
![foo *bar*]

[foo *bar*]: train.jpg "train & tracks"

```

Should give output:

```html
<p><img alt="foo bar" src="train.jpg" title="train &amp; tracks"></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 570](https://github.github.com/gfm/#example-570)

This markdown:

```markdown
![foo ![bar](/url)](/url2)

```

Should give output:

```html
<p><img alt="foo bar" src="/url2"></p>
```

But instead was:

```html
<p><img src="/url">](/url2)</p>
```
### [Example 571](https://github.github.com/gfm/#example-571)

This markdown:

```markdown
![foo [bar](/url)](/url2)

```

Should give output:

```html
<p><img alt="foo bar" src="/url2"></p>
```

But instead was:

```html
<p><img src="/url">](/url2)</p>
```
### [Example 572](https://github.github.com/gfm/#example-572)

This markdown:

```markdown
![foo *bar*][]

[foo *bar*]: train.jpg "train & tracks"

```

Should give output:

```html
<p><img alt="foo bar" src="train.jpg" title="train &amp; tracks"></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 573](https://github.github.com/gfm/#example-573)

This markdown:

```markdown
![foo *bar*][foobar]

[FOOBAR]: train.jpg "train & tracks"

```

Should give output:

```html
<p><img alt="foo bar" src="train.jpg" title="train &amp; tracks"></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 574](https://github.github.com/gfm/#example-574)

This markdown:

```markdown
![foo](train.jpg)

```

Should give output:

```html
<p><img alt="foo" src="train.jpg"></p>
```

But instead was:

```html
<p><img src="train.jpg"></p>
```
### [Example 575](https://github.github.com/gfm/#example-575)

This markdown:

```markdown
My ![foo bar](/path/to/train.jpg  "title"   )

```

Should give output:

```html
<p>My<img alt="foo bar" src="/path/to/train.jpg" title="title"></p>
```

But instead was:

```html
<p>My<img "="" src="/path/to/train.jpg  \" title\"=""></p>
```
### [Example 576](https://github.github.com/gfm/#example-576)

This markdown:

```markdown
![foo](<url>)

```

Should give output:

```html
<p><img alt="foo" src="url"></p>
```

But instead was:

```html
<p><img src="&lt;url&gt;"></p>
```
### [Example 577](https://github.github.com/gfm/#example-577)

This markdown:

```markdown
![](/url)

```

Should give output:

```html
<p><img alt="" src="/url"></p>
```

But instead was:

```html

```
### [Example 578](https://github.github.com/gfm/#example-578)

This markdown:

```markdown
![foo][bar]

[bar]: /url

```

Should give output:

```html
<p><img alt="foo" src="/url"></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 579](https://github.github.com/gfm/#example-579)

This markdown:

```markdown
![foo][bar]

[BAR]: /url

```

Should give output:

```html
<p><img alt="foo" src="/url"></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 580](https://github.github.com/gfm/#example-580)

This markdown:

```markdown
![foo][]

[foo]: /url "title"

```

Should give output:

```html
<p><img alt="foo" src="/url" title="title"></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 581](https://github.github.com/gfm/#example-581)

This markdown:

```markdown
![*foo* bar][]

[*foo* bar]: /url "title"

```

Should give output:

```html
<p><img alt="foo bar" src="/url" title="title"></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 582](https://github.github.com/gfm/#example-582)

This markdown:

```markdown
![Foo][]

[foo]: /url "title"

```

Should give output:

```html
<p><img alt="Foo" src="/url" title="title"></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 583](https://github.github.com/gfm/#example-583)

This markdown:

```markdown
![foo] 
[]

[foo]: /url "title"

```

Should give output:

```html
<p><img alt="foo" src="/url" title="title">[]</p>
```

But instead was:

```html
ERROR Problem at row 8 Expecting Problem at row 1 Expecting symbol (
```
### [Example 584](https://github.github.com/gfm/#example-584)

This markdown:

```markdown
![foo]

[foo]: /url "title"

```

Should give output:

```html
<p><img alt="foo" src="/url" title="title"></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 585](https://github.github.com/gfm/#example-585)

This markdown:

```markdown
![*foo* bar]

[*foo* bar]: /url "title"

```

Should give output:

```html
<p><img alt="foo bar" src="/url" title="title"></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 586](https://github.github.com/gfm/#example-586)

This markdown:

```markdown
![[foo]]

[[foo]]: /url "title"

```

Should give output:

```html
<p>![[foo]]</p><p>[[foo]]: /url &quot;title&quot;</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 587](https://github.github.com/gfm/#example-587)

This markdown:

```markdown
![Foo]

[foo]: /url "title"

```

Should give output:

```html
<p><img alt="Foo" src="/url" title="title"></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 588](https://github.github.com/gfm/#example-588)

This markdown:

```markdown
!\[foo]

[foo]: /url "title"

```

Should give output:

```html
<p>![foo]</p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 589](https://github.github.com/gfm/#example-589)

This markdown:

```markdown
\![foo]

[foo]: /url "title"

```

Should give output:

```html
<p>!<a href="/url" title="title">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
## [extension] Autolinks

### [Example 621](https://github.github.com/gfm/#example-621)

This markdown:

```markdown
www.commonmark.org
```

Should give output:

```html
<p><a href="http://www.commonmark.org">www.commonmark.org</a></p>
```

But instead was:

```html
<p>www.commonmark.org</p>
```
### [Example 622](https://github.github.com/gfm/#example-622)

This markdown:

```markdown
Visit www.commonmark.org/help for more information.
```

Should give output:

```html
<p>Visit<a href="http://www.commonmark.org/help">www.commonmark.org/help</a>for more information.</p>
```

But instead was:

```html
<p>Visit www.commonmark.org/help for more information.</p>
```
### [Example 623](https://github.github.com/gfm/#example-623)

This markdown:

```markdown
Visit www.commonmark.org.

Visit www.commonmark.org/a.b.
```

Should give output:

```html
<p>Visit<a href="http://www.commonmark.org">www.commonmark.org</a>.</p><p>Visit<a href="http://www.commonmark.org/a.b">www.commonmark.org/a.b</a>.</p>
```

But instead was:

```html
<p>Visit www.commonmark.org.</p><p>Visit www.commonmark.org/a.b.</p>
```
### [Example 624](https://github.github.com/gfm/#example-624)

This markdown:

```markdown
www.google.com/search?q=Markup+(business)

www.google.com/search?q=Markup+(business)))

(www.google.com/search?q=Markup+(business))

(www.google.com/search?q=Markup+(business)
```

Should give output:

```html
<p><a href="http://www.google.com/search?q=Markup+(business)">www.google.com/search?q=Markup+(business)</a></p><p><a href="http://www.google.com/search?q=Markup+(business)">www.google.com/search?q=Markup+(business)</a>))</p><p>(<a href="http://www.google.com/search?q=Markup+(business)">www.google.com/search?q=Markup+(business)</a>)</p><p>(<a href="http://www.google.com/search?q=Markup+(business)">www.google.com/search?q=Markup+(business)</a></p>
```

But instead was:

```html
<p>www.google.com/search?q=Markup+(business)</p><p>www.google.com/search?q=Markup+(business)))</p><p>(www.google.com/search?q=Markup+(business))</p><p>(www.google.com/search?q=Markup+(business)</p>
```
### [Example 625](https://github.github.com/gfm/#example-625)

This markdown:

```markdown
www.google.com/search?q=(business))+ok
```

Should give output:

```html
<p><a href="http://www.google.com/search?q=(business))+ok">www.google.com/search?q=(business))+ok</a></p>
```

But instead was:

```html
<p>www.google.com/search?q=(business))+ok</p>
```
### [Example 626](https://github.github.com/gfm/#example-626)

This markdown:

```markdown
www.google.com/search?q=commonmark&hl=en

www.google.com/search?q=commonmark&hl;
```

Should give output:

```html
<p><a href="http://www.google.com/search?q=commonmark&amp;hl=en">www.google.com/search?q=commonmark&amp;hl=en</a></p><p><a href="http://www.google.com/search?q=commonmark">www.google.com/search?q=commonmark</a>&amp;hl;</p>
```

But instead was:

```html
<p>www.google.com/search?q=commonmark&amp;hl=en</p><p>www.google.com/search?q=commonmark&amp;hl;</p>
```
### [Example 627](https://github.github.com/gfm/#example-627)

This markdown:

```markdown
www.commonmark.org/he<lp
```

Should give output:

```html
<p><a href="http://www.commonmark.org/he">www.commonmark.org/he</a>&lt;lp</p>
```

But instead was:

```html
<p>www.commonmark.org/he&lt;lp</p>
```
### [Example 628](https://github.github.com/gfm/#example-628)

This markdown:

```markdown
http://commonmark.org

(Visit https://encrypted.google.com/search?q=Markup+(business))

Anonymous FTP is available at ftp://foo.bar.baz.
```

Should give output:

```html
<p><a href="http://commonmark.org">http://commonmark.org</a></p><p>(Visit<a href="https://encrypted.google.com/search?q=Markup+(business)">https://encrypted.google.com/search?q=Markup+(business)</a>)</p><p>Anonymous FTP is available at<a href="ftp://foo.bar.baz">ftp://foo.bar.baz</a>.</p>
```

But instead was:

```html
<p>http://commonmark.org</p><p>(Visit https://encrypted.google.com/search?q=Markup+(business))</p><p>Anonymous FTP is available at ftp://foo.bar.baz.</p>
```
### [Example 629](https://github.github.com/gfm/#example-629)

This markdown:

```markdown
foo@bar.baz
```

Should give output:

```html
<p><a href="mailto:foo@bar.baz">foo@bar.baz</a></p>
```

But instead was:

```html
<p>foo@bar.baz</p>
```
### [Example 630](https://github.github.com/gfm/#example-630)

This markdown:

```markdown
hello@mail+xyz.example isn't valid, but hello+xyz@mail.example is.
```

Should give output:

```html
<p>hello@mail+xyz.example isn&#39;t valid, but<a href="mailto:hello+xyz@mail.example">hello+xyz@mail.example</a>is.</p>
```

But instead was:

```html
<p>hello@mail+xyz.example isn&#39;t valid, but hello+xyz@mail.example is.</p>
```
### [Example 631](https://github.github.com/gfm/#example-631)

This markdown:

```markdown
a.b-c_d@a.b

a.b-c_d@a.b.

a.b-c_d@a.b-

a.b-c_d@a.b_
```

Should give output:

```html
<p><a href="mailto:a.b-c_d@a.b">a.b-c_d@a.b</a></p><p><a href="mailto:a.b-c_d@a.b">a.b-c_d@a.b</a>.</p><p>a.b-c_d@a.b-</p><p>a.b-c_d@a.b_</p>
```

But instead was:

```html
<p>a.b-c_d@a.b</p><p>a.b-c_d@a.b.</p><p>a.b-c_d@a.b-</p><p>a.b-c_d@a.b_</p>
```
## Indented code blocks

### [Example 77](https://github.github.com/gfm/#example-77)

This markdown:

```markdown
    a simple
      indented code block

```

Should give output:

```html
<pre><code>a simple indented code block</code></pre>
```

But instead was:

```html
<pre><code>a simple</code></pre><pre><code>indented code block</code></pre>
```
### [Example 78](https://github.github.com/gfm/#example-78)

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
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 79](https://github.github.com/gfm/#example-79)

This markdown:

```markdown
1.  foo

    - bar

```

Should give output:

```html
<ol><li><p>foo</p><ul><li>bar</li></ul></li></ol>
```

But instead was:

```html
<p>1. foo</p><pre><code>- bar</code></pre>
```
### [Example 80](https://github.github.com/gfm/#example-80)

This markdown:

```markdown
    <a/>
    *hi*

    - one

```

Should give output:

```html
<pre><code>&lt;a/&gt; *hi* - one</code></pre>
```

But instead was:

```html
<pre><code>&lt;a/&gt;</code></pre><pre><code>*hi*</code></pre><pre><code>- one</code></pre>
```
### [Example 81](https://github.github.com/gfm/#example-81)

This markdown:

```markdown
    chunk1

    chunk2
  
 
 
    chunk3

```

Should give output:

```html
<pre><code>chunk1 chunk2 chunk3</code></pre>
```

But instead was:

```html
ERROR Problem at row 6 Expecting --- Problem at row 6 Expecting *** Problem at row 6 Expecting ___
```
### [Example 82](https://github.github.com/gfm/#example-82)

This markdown:

```markdown
    chunk1
      
      chunk2

```

Should give output:

```html
<pre><code>chunk1 chunk2</code></pre>
```

But instead was:

```html
<pre><code>chunk1</code></pre><pre><code></code></pre><pre><code>chunk2</code></pre>
```
### [Example 83](https://github.github.com/gfm/#example-83)

This markdown:

```markdown
Foo
    bar


```

Should give output:

```html
<p>Foo bar</p>
```

But instead was:

```html
<p>Foo</p><pre><code>bar</code></pre>
```
### [Example 85](https://github.github.com/gfm/#example-85)

This markdown:

```markdown
# Heading
    foo
Heading
------
    foo
----

```

Should give output:

```html
<h1>Heading</h1><pre><code>foo</code></pre><h2>Heading</h2><pre><code>foo</code></pre><hr>
```

But instead was:

```html
<h1>Heading</h1><pre><code>foo</code></pre><p>Heading</p><hr><pre><code>foo</code></pre><hr>
```
### [Example 86](https://github.github.com/gfm/#example-86)

This markdown:

```markdown
        foo
    bar

```

Should give output:

```html
<pre><code>foo bar</code></pre>
```

But instead was:

```html
<pre><code>foo</code></pre><pre><code>bar</code></pre>
```
### [Example 87](https://github.github.com/gfm/#example-87)

This markdown:

```markdown

    
    foo
    


```

Should give output:

```html
<pre><code>foo</code></pre>
```

But instead was:

```html
<pre><code></code></pre><pre><code>foo</code></pre><pre><code></code></pre>
```
## Inlines

### [Example 297](https://github.github.com/gfm/#example-297)

This markdown:

```markdown
`hi`lo`

```

Should give output:

```html
<p><code>hi</code>lo`</p>
```

But instead was:

```html
<p><code>hi</code>lo</p>
```
## Setext headings

### [Example 50](https://github.github.com/gfm/#example-50)

This markdown:

```markdown
Foo *bar*
=========

Foo *bar*
---------

```

Should give output:

```html
<h1>Foo<em>bar</em></h1><h2>Foo<em>bar</em></h2>
```

But instead was:

```html
<p>Foo<em>bar</em>=========</p><p>Foo<em>bar</em></p><hr>
```
### [Example 51](https://github.github.com/gfm/#example-51)

This markdown:

```markdown
Foo *bar
baz*
====

```

Should give output:

```html
<h1>Foo<em>bar baz</em></h1>
```

But instead was:

```html
<p>Foo<em>bar baz</em>====</p>
```
### [Example 52](https://github.github.com/gfm/#example-52)

This markdown:

```markdown
  Foo *bar
baz*	
====

```

Should give output:

```html
<h1>Foo<em>bar baz</em></h1>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 53](https://github.github.com/gfm/#example-53)

This markdown:

```markdown
Foo
-------------------------

Foo
=

```

Should give output:

```html
<h2>Foo</h2><h1>Foo</h1>
```

But instead was:

```html
<p>Foo</p><hr><p>Foo =</p>
```
### [Example 54](https://github.github.com/gfm/#example-54)

This markdown:

```markdown
   Foo
---

  Foo
-----

  Foo
  ===

```

Should give output:

```html
<h2>Foo</h2><h2>Foo</h2><h1>Foo</h1>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 55](https://github.github.com/gfm/#example-55)

This markdown:

```markdown
    Foo
    ---

    Foo
---

```

Should give output:

```html
<pre><code>Foo --- Foo</code></pre><hr>
```

But instead was:

```html
<pre><code>Foo</code></pre><pre><code>---</code></pre><pre><code>Foo</code></pre><hr>
```
### [Example 56](https://github.github.com/gfm/#example-56)

This markdown:

```markdown
Foo
   ----      

```

Should give output:

```html
<h2>Foo</h2>
```

But instead was:

```html
<p>Foo</p><hr>
```
### [Example 57](https://github.github.com/gfm/#example-57)

This markdown:

```markdown
Foo
    ---

```

Should give output:

```html
<p>Foo ---</p>
```

But instead was:

```html
<p>Foo</p><pre><code>---</code></pre>
```
### [Example 58](https://github.github.com/gfm/#example-58)

This markdown:

```markdown
Foo
= =

Foo
--- -

```

Should give output:

```html
<p>Foo = =</p><p>Foo</p><hr>
```

But instead was:

```html
ERROR Problem at row 8 Expecting end Problem at row 8 Expecting newline
```
### [Example 59](https://github.github.com/gfm/#example-59)

This markdown:

```markdown
Foo  
-----

```

Should give output:

```html
<h2>Foo</h2>
```

But instead was:

```html
<p>Foo</p><hr>
```
### [Example 60](https://github.github.com/gfm/#example-60)

This markdown:

```markdown
Foo\
----

```

Should give output:

```html
<h2>Foo\</h2>
```

But instead was:

```html
<p>Foo\</p><hr>
```
### [Example 61](https://github.github.com/gfm/#example-61)

This markdown:

```markdown
`Foo
----
`

<a title="a lot
---
of dashes"/>

```

Should give output:

```html
<h2>`Foo</h2><p>`</p><h2>&lt;a title=&quot;a lot</h2><p>of dashes&quot;/&gt;</p>
```

But instead was:

```html
ERROR Ran into a oneOf with no possibilities!
```
### [Example 62](https://github.github.com/gfm/#example-62)

This markdown:

```markdown
> Foo
---

```

Should give output:

```html
<blockquote><p>Foo</p></blockquote><hr>
```

But instead was:

```html
<p>&gt; Foo</p><hr>
```
### [Example 63](https://github.github.com/gfm/#example-63)

This markdown:

```markdown
> foo
bar
===

```

Should give output:

```html
<blockquote><p>foo bar ===</p></blockquote>
```

But instead was:

```html
<p>&gt; foo bar ===</p>
```
### [Example 64](https://github.github.com/gfm/#example-64)

This markdown:

```markdown
- Foo
---

```

Should give output:

```html
<ul><li>Foo</li></ul><hr>
```

But instead was:

```html
<ul><li><p>Foo</p></li><li><p>--</p></li></ul>
```
### [Example 65](https://github.github.com/gfm/#example-65)

This markdown:

```markdown
Foo
Bar
---

```

Should give output:

```html
<h2>Foo Bar</h2>
```

But instead was:

```html
<p>Foo Bar</p><hr>
```
### [Example 66](https://github.github.com/gfm/#example-66)

This markdown:

```markdown
---
Foo
---
Bar
---
Baz

```

Should give output:

```html
<hr><h2>Foo</h2><h2>Bar</h2><p>Baz</p>
```

But instead was:

```html
<hr><p>Foo</p><hr><p>Bar</p><hr><p>Baz</p>
```
### [Example 69](https://github.github.com/gfm/#example-69)

This markdown:

```markdown
- foo
-----

```

Should give output:

```html
<ul><li>foo</li></ul><hr>
```

But instead was:

```html
<ul><li><p>foo</p></li><li><p>----</p></li></ul>
```
### [Example 71](https://github.github.com/gfm/#example-71)

This markdown:

```markdown
> foo
-----

```

Should give output:

```html
<blockquote><p>foo</p></blockquote><hr>
```

But instead was:

```html
<p>&gt; foo</p><hr>
```
### [Example 72](https://github.github.com/gfm/#example-72)

This markdown:

```markdown
\> foo
------

```

Should give output:

```html
<h2>&gt; foo</h2>
```

But instead was:

```html
<p>\&gt; foo</p><hr>
```
### [Example 73](https://github.github.com/gfm/#example-73)

This markdown:

```markdown
Foo

bar
---
baz

```

Should give output:

```html
<p>Foo</p><h2>bar</h2><p>baz</p>
```

But instead was:

```html
<p>Foo</p><p>bar</p><hr><p>baz</p>
```
### [Example 75](https://github.github.com/gfm/#example-75)

This markdown:

```markdown
Foo
bar
* * *
baz

```

Should give output:

```html
<p>Foo bar</p><hr><p>baz</p>
```

But instead was:

```html
<p>Foo bar<em></em><em>baz</em></p>
```
### [Example 76](https://github.github.com/gfm/#example-76)

This markdown:

```markdown
Foo
bar
\---
baz

```

Should give output:

```html
<p>Foo bar --- baz</p>
```

But instead was:

```html
<p>Foo bar \--- baz</p>
```
## List items

### [Example 223](https://github.github.com/gfm/#example-223)

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
### [Example 224](https://github.github.com/gfm/#example-224)

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
### [Example 225](https://github.github.com/gfm/#example-225)

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
### [Example 226](https://github.github.com/gfm/#example-226)

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
### [Example 227](https://github.github.com/gfm/#example-227)

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
### [Example 228](https://github.github.com/gfm/#example-228)

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
### [Example 229](https://github.github.com/gfm/#example-229)

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
### [Example 230](https://github.github.com/gfm/#example-230)

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
### [Example 231](https://github.github.com/gfm/#example-231)

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
### [Example 232](https://github.github.com/gfm/#example-232)

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
### [Example 233](https://github.github.com/gfm/#example-233)

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
### [Example 234](https://github.github.com/gfm/#example-234)

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
### [Example 235](https://github.github.com/gfm/#example-235)

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
### [Example 237](https://github.github.com/gfm/#example-237)

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
### [Example 238](https://github.github.com/gfm/#example-238)

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
### [Example 239](https://github.github.com/gfm/#example-239)

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
### [Example 240](https://github.github.com/gfm/#example-240)

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
### [Example 241](https://github.github.com/gfm/#example-241)

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
### [Example 243](https://github.github.com/gfm/#example-243)

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
### [Example 244](https://github.github.com/gfm/#example-244)

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
### [Example 245](https://github.github.com/gfm/#example-245)

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
### [Example 246](https://github.github.com/gfm/#example-246)

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
### [Example 247](https://github.github.com/gfm/#example-247)

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
### [Example 248](https://github.github.com/gfm/#example-248)

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
### [Example 249](https://github.github.com/gfm/#example-249)

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
### [Example 250](https://github.github.com/gfm/#example-250)

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
### [Example 251](https://github.github.com/gfm/#example-251)

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
### [Example 252](https://github.github.com/gfm/#example-252)

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
### [Example 253](https://github.github.com/gfm/#example-253)

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
### [Example 254](https://github.github.com/gfm/#example-254)

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
### [Example 255](https://github.github.com/gfm/#example-255)

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
### [Example 256](https://github.github.com/gfm/#example-256)

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
### [Example 257](https://github.github.com/gfm/#example-257)

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
### [Example 258](https://github.github.com/gfm/#example-258)

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
### [Example 259](https://github.github.com/gfm/#example-259)

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
### [Example 260](https://github.github.com/gfm/#example-260)

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
### [Example 261](https://github.github.com/gfm/#example-261)

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
### [Example 262](https://github.github.com/gfm/#example-262)

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
### [Example 263](https://github.github.com/gfm/#example-263)

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
### [Example 264](https://github.github.com/gfm/#example-264)

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
### [Example 265](https://github.github.com/gfm/#example-265)

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
### [Example 266](https://github.github.com/gfm/#example-266)

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
### [Example 267](https://github.github.com/gfm/#example-267)

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
### [Example 268](https://github.github.com/gfm/#example-268)

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
### [Example 269](https://github.github.com/gfm/#example-269)

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
### [Example 270](https://github.github.com/gfm/#example-270)

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
## ATX headings

### [Example 33](https://github.github.com/gfm/#example-33)

This markdown:

```markdown
####### foo

```

Should give output:

```html
<p>####### foo</p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting heading with &lt; 7 #&#39;s
```
### [Example 34](https://github.github.com/gfm/#example-34)

This markdown:

```markdown
#5 bolt

#hashtag

```

Should give output:

```html
<p>#5 bolt</p><p>#hashtag</p>
```

But instead was:

```html
<h1>5 bolt</h1><h1>hashtag</h1>
```
### [Example 35](https://github.github.com/gfm/#example-35)

This markdown:

```markdown
\## foo

```

Should give output:

```html
<p>## foo</p>
```

But instead was:

```html
<p>\## foo</p>
```
### [Example 36](https://github.github.com/gfm/#example-36)

This markdown:

```markdown
# foo *bar* \*baz\*

```

Should give output:

```html
<h1>foo<em>bar</em>*baz*</h1>
```

But instead was:

```html
<h1>foo<em>bar</em>\<em>baz\</em></h1>
```
### [Example 38](https://github.github.com/gfm/#example-38)

This markdown:

```markdown
 ### foo
  ## foo
   # foo

```

Should give output:

```html
<h3>foo</h3><h2>foo</h2><h1>foo</h1>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 40](https://github.github.com/gfm/#example-40)

This markdown:

```markdown
foo
    # bar

```

Should give output:

```html
<p>foo # bar</p>
```

But instead was:

```html
<p>foo</p><pre><code># bar</code></pre>
```
### [Example 41](https://github.github.com/gfm/#example-41)

This markdown:

```markdown
## foo ##
  ###   bar    ###

```

Should give output:

```html
<h2>foo</h2><h3>bar</h3>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 43](https://github.github.com/gfm/#example-43)

This markdown:

```markdown
### foo ###     

```

Should give output:

```html
<h3>foo</h3>
```

But instead was:

```html
<h3>foo ###</h3>
```
### [Example 45](https://github.github.com/gfm/#example-45)

This markdown:

```markdown
# foo#

```

Should give output:

```html
<h1>foo#</h1>
```

But instead was:

```html
<h1>foo</h1>
```
### [Example 46](https://github.github.com/gfm/#example-46)

This markdown:

```markdown
### foo \###
## foo #\##
# foo \#

```

Should give output:

```html
<h3>foo ###</h3><h2>foo ###</h2><h1>foo #</h1>
```

But instead was:

```html
<h3>foo \</h3><h2>foo #\</h2><h1>foo \</h1>
```
## Lists

### [Example 271](https://github.github.com/gfm/#example-271)

This markdown:

```markdown
- foo
- bar
+ baz

```

Should give output:

```html
<ul><li>foo</li><li>bar</li></ul><ul><li>baz</li></ul>
```

But instead was:

```html
<ul><li><p>foo</p></li><li><p>bar</p></li></ul><p>+ baz</p>
```
### [Example 272](https://github.github.com/gfm/#example-272)

This markdown:

```markdown
1. foo
2. bar
3) baz

```

Should give output:

```html
<ol><li>foo</li><li>bar</li></ol><ol start="3"><li>baz</li></ol>
```

But instead was:

```html
<p>1. foo 2. bar 3) baz</p>
```
### [Example 273](https://github.github.com/gfm/#example-273)

This markdown:

```markdown
Foo
- bar
- baz

```

Should give output:

```html
<p>Foo</p><ul><li>bar</li><li>baz</li></ul>
```

But instead was:

```html
<p>Foo</p><ul><li><p>bar</p></li><li><p>baz</p></li></ul>
```
### [Example 275](https://github.github.com/gfm/#example-275)

This markdown:

```markdown
The number of windows in my house is
1.  The number of doors is 6.

```

Should give output:

```html
<p>The number of windows in my house is</p><ol><li>The number of doors is 6.</li></ol>
```

But instead was:

```html
<p>The number of windows in my house is 1. The number of doors is 6.</p>
```
### [Example 276](https://github.github.com/gfm/#example-276)

This markdown:

```markdown
- foo

- bar


- baz

```

Should give output:

```html
<ul><li><p>foo</p></li><li><p>bar</p></li><li><p>baz</p></li></ul>
```

But instead was:

```html
<ul><li><p>foo</p></li></ul><ul><li><p>bar</p></li></ul><ul><li><p>baz</p></li></ul>
```
### [Example 277](https://github.github.com/gfm/#example-277)

This markdown:

```markdown
- foo
  - bar
    - baz


      bim

```

Should give output:

```html
<ul><li>foo<ul><li>bar<ul><li><p>baz</p><p>bim</p></li></ul></li></ul></li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 278](https://github.github.com/gfm/#example-278)

This markdown:

```markdown
- foo
- bar

<!-- -->

- baz
- bim

```

Should give output:

```html
<ul><li>foo</li><li>bar</li></ul><ul><li>baz</li><li>bim</li></ul>
```

But instead was:

```html
ERROR Problem at row 6 Expecting symbol =
```
### [Example 279](https://github.github.com/gfm/#example-279)

This markdown:

```markdown
-   foo

    notcode

-   foo

<!-- -->

    code

```

Should give output:

```html
<ul><li><p>foo</p><p>notcode</p></li><li><p>foo</p></li></ul><pre><code>code</code></pre>
```

But instead was:

```html
ERROR Problem at row 10 Expecting symbol =
```
### [Example 280](https://github.github.com/gfm/#example-280)

This markdown:

```markdown
- a
 - b
  - c
   - d
  - e
 - f
- g

```

Should give output:

```html
<ul><li>a</li><li>b</li><li>c</li><li>d</li><li>e</li><li>f</li><li>g</li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 281](https://github.github.com/gfm/#example-281)

This markdown:

```markdown
1. a

  2. b

   3. c

```

Should give output:

```html
<ol><li><p>a</p></li><li><p>b</p></li><li><p>c</p></li></ol>
```

But instead was:

```html
ERROR Problem at row 4 Expecting --- Problem at row 4 Expecting *** Problem at row 4 Expecting ___
```
### [Example 282](https://github.github.com/gfm/#example-282)

This markdown:

```markdown
- a
 - b
  - c
   - d
    - e

```

Should give output:

```html
<ul><li>a</li><li>b</li><li>c</li><li>d - e</li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 283](https://github.github.com/gfm/#example-283)

This markdown:

```markdown
1. a

  2. b

    3. c

```

Should give output:

```html
<ol><li><p>a</p></li><li><p>b</p></li></ol><pre><code>3. c</code></pre>
```

But instead was:

```html
ERROR Problem at row 4 Expecting --- Problem at row 4 Expecting *** Problem at row 4 Expecting ___
```
### [Example 284](https://github.github.com/gfm/#example-284)

This markdown:

```markdown
- a
- b

- c

```

Should give output:

```html
<ul><li><p>a</p></li><li><p>b</p></li><li><p>c</p></li></ul>
```

But instead was:

```html
<ul><li><p>a</p></li><li><p>b</p></li></ul><ul><li><p>c</p></li></ul>
```
### [Example 285](https://github.github.com/gfm/#example-285)

This markdown:

```markdown
* a
*

* c

```

Should give output:

```html
<ul><li><p>a</p></li><li></li><li><p>c</p></li></ul>
```

But instead was:

```html
<p><em>a</em></p><p><em>c</em></p>
```
### [Example 286](https://github.github.com/gfm/#example-286)

This markdown:

```markdown
- a
- b

  c
- d

```

Should give output:

```html
<ul><li><p>a</p></li><li><p>b</p><p>c</p></li><li><p>d</p></li></ul>
```

But instead was:

```html
ERROR Problem at row 6 Expecting --- Problem at row 6 Expecting *** Problem at row 6 Expecting ___
```
### [Example 287](https://github.github.com/gfm/#example-287)

This markdown:

```markdown
- a
- b

  [ref]: /url
- d

```

Should give output:

```html
<ul><li><p>a</p></li><li><p>b</p></li><li><p>d</p></li></ul>
```

But instead was:

```html
ERROR Problem at row 6 Expecting --- Problem at row 6 Expecting *** Problem at row 6 Expecting ___
```
### [Example 288](https://github.github.com/gfm/#example-288)

This markdown:

```markdown
- a
- ```
  b


  ```
- c

```

Should give output:

```html
<ul><li>a</li><li><pre><code>b</code></pre></li><li>c</li></ul>
```

But instead was:

```html
ERROR Problem at row 5 Expecting --- Problem at row 5 Expecting *** Problem at row 5 Expecting ___
```
### [Example 289](https://github.github.com/gfm/#example-289)

This markdown:

```markdown
- a
  - b

    c
- d

```

Should give output:

```html
<ul><li>a<ul><li><p>b</p><p>c</p></li></ul></li><li>d</li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 290](https://github.github.com/gfm/#example-290)

This markdown:

```markdown
* a
  > b
  >
* c

```

Should give output:

```html
<ul><li>a<blockquote><p>b</p></blockquote></li><li>c</li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 291](https://github.github.com/gfm/#example-291)

This markdown:

```markdown
- a
  > b
  ```
  c
  ```
- d

```

Should give output:

```html
<ul><li>a<blockquote><p>b</p></blockquote><pre><code>c</code></pre></li><li>d</li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 292](https://github.github.com/gfm/#example-292)

This markdown:

```markdown
- a

```

Should give output:

```html
<ul><li>a</li></ul>
```

But instead was:

```html
<ul><li><p>a</p></li></ul>
```
### [Example 293](https://github.github.com/gfm/#example-293)

This markdown:

```markdown
- a
  - b

```

Should give output:

```html
<ul><li>a<ul><li>b</li></ul></li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 294](https://github.github.com/gfm/#example-294)

This markdown:

```markdown
1. ```
   foo
   ```

   bar

```

Should give output:

```html
<ol><li><pre><code>foo</code></pre><p>bar</p></li></ol>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 295](https://github.github.com/gfm/#example-295)

This markdown:

```markdown
* foo
  * bar

  baz

```

Should give output:

```html
<ul><li><p>foo</p><ul><li>bar</li></ul><p>baz</p></li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
### [Example 296](https://github.github.com/gfm/#example-296)

This markdown:

```markdown
- a
  - b
  - c

- d
  - e
  - f

```

Should give output:

```html
<ul><li><p>a</p><ul><li>b</li><li>c</li></ul></li><li><p>d</p><ul><li>e</li><li>f</li></ul></li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
## Thematic breaks

### [Example 16](https://github.github.com/gfm/#example-16)

This markdown:

```markdown
--
**
__

```

Should give output:

```html
<p>-- ** __</p>
```

But instead was:

```html
<ul><li><p>-</p></li></ul><p><strong>__</strong></p>
```
### [Example 19](https://github.github.com/gfm/#example-19)

This markdown:

```markdown
Foo
    ***

```

Should give output:

```html
<p>Foo ***</p>
```

But instead was:

```html
<p>Foo</p><pre><code>***</code></pre>
```
### [Example 21](https://github.github.com/gfm/#example-21)

This markdown:

```markdown
 - - -

```

Should give output:

```html
<hr>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 22](https://github.github.com/gfm/#example-22)

This markdown:

```markdown
 **  * ** * ** * **

```

Should give output:

```html
<hr>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 23](https://github.github.com/gfm/#example-23)

This markdown:

```markdown
-     -      -      -

```

Should give output:

```html
<hr>
```

But instead was:

```html
<ul><li><p>- - -</p></li></ul>
```
### [Example 24](https://github.github.com/gfm/#example-24)

This markdown:

```markdown
- - - -    

```

Should give output:

```html
<hr>
```

But instead was:

```html
<ul><li><p>- - -</p></li></ul>
```
### [Example 25](https://github.github.com/gfm/#example-25)

This markdown:

```markdown
_ _ _ _ a

a------

---a---

```

Should give output:

```html
<p>_ _ _ _ a</p><p>a------</p><p>---a---</p>
```

But instead was:

```html
ERROR Problem at row 7 Expecting end Problem at row 7 Expecting newline
```
### [Example 26](https://github.github.com/gfm/#example-26)

This markdown:

```markdown
 *-*

```

Should give output:

```html
<p><em>-</em></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 27](https://github.github.com/gfm/#example-27)

This markdown:

```markdown
- foo
***
- bar

```

Should give output:

```html
<ul><li>foo</li></ul><hr><ul><li>bar</li></ul>
```

But instead was:

```html
<ul><li><p>foo</p></li></ul><hr><ul><li><p>bar</p></li></ul>
```
### [Example 29](https://github.github.com/gfm/#example-29)

This markdown:

```markdown
Foo
---
bar

```

Should give output:

```html
<h2>Foo</h2><p>bar</p>
```

But instead was:

```html
<p>Foo</p><hr><p>bar</p>
```
### [Example 30](https://github.github.com/gfm/#example-30)

This markdown:

```markdown
* Foo
* * *
* Bar

```

Should give output:

```html
<ul><li>Foo</li></ul><hr><ul><li>Bar</li></ul>
```

But instead was:

```html
<p><em>Foo</em><em></em><em>Bar</em></p>
```
### [Example 31](https://github.github.com/gfm/#example-31)

This markdown:

```markdown
- Foo
- * * *

```

Should give output:

```html
<ul><li>Foo</li><li><hr></li></ul>
```

But instead was:

```html
<ul><li><p>Foo</p></li><li><p><em></em></p></li></ul>
```
## Precedence

### [Example 12](https://github.github.com/gfm/#example-12)

This markdown:

```markdown
- `one
- two`

```

Should give output:

```html
<ul><li>`one</li><li>two`</li></ul>
```

But instead was:

```html
<ul><li><p><code>one</code></p></li><li><p>two</p></li></ul>
```
## Tabs

### [Example 2](https://github.github.com/gfm/#example-2)

This markdown:

```markdown
  	foo	baz		bim

```

Should give output:

```html
<pre><code>foo baz bim</code></pre>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 3](https://github.github.com/gfm/#example-3)

This markdown:

```markdown
    a	a
    ὐ	a

```

Should give output:

```html
<pre><code>a a ὐ a</code></pre>
```

But instead was:

```html
<pre><code>a a</code></pre><pre><code>ὐ a</code></pre>
```
### [Example 4](https://github.github.com/gfm/#example-4)

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
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 5](https://github.github.com/gfm/#example-5)

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
### [Example 6](https://github.github.com/gfm/#example-6)

This markdown:

```markdown
>		foo

```

Should give output:

```html
<blockquote><pre><code>foo</code></pre></blockquote>
```

But instead was:

```html
<p>&gt; foo</p>
```
### [Example 7](https://github.github.com/gfm/#example-7)

This markdown:

```markdown
-		foo

```

Should give output:

```html
<ul><li><pre><code>foo</code></pre></li></ul>
```

But instead was:

```html
<ul><li><p>foo</p></li></ul>
```
### [Example 8](https://github.github.com/gfm/#example-8)

This markdown:

```markdown
    foo
	bar

```

Should give output:

```html
<pre><code>foo bar</code></pre>
```

But instead was:

```html
<pre><code>foo</code></pre><pre><code>bar</code></pre>
```
### [Example 9](https://github.github.com/gfm/#example-9)

This markdown:

```markdown
 - foo
   - bar
	 - baz

```

Should give output:

```html
<ul><li>foo<ul><li>bar<ul><li>baz</li></ul></li></ul></li></ul>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 11](https://github.github.com/gfm/#example-11)

This markdown:

```markdown
*	*	*	

```

Should give output:

```html
<hr>
```

But instead was:

```html
<p><em></em><em></em></p>
```
## Block quotes

### [Example 198](https://github.github.com/gfm/#example-198)

This markdown:

```markdown
> # Foo
> bar
> baz

```

Should give output:

```html
<blockquote><h1>Foo</h1><p>bar baz</p></blockquote>
```

But instead was:

```html
<p>&gt; # Foo &gt; bar &gt; baz</p>
```
### [Example 199](https://github.github.com/gfm/#example-199)

This markdown:

```markdown
># Foo
>bar
> baz

```

Should give output:

```html
<blockquote><h1>Foo</h1><p>bar baz</p></blockquote>
```

But instead was:

```html
<p>&gt;# Foo &gt;bar &gt; baz</p>
```
### [Example 200](https://github.github.com/gfm/#example-200)

This markdown:

```markdown
   > # Foo
   > bar
 > baz

```

Should give output:

```html
<blockquote><h1>Foo</h1><p>bar baz</p></blockquote>
```

But instead was:

```html
ERROR Problem at row 1 Expecting --- Problem at row 1 Expecting *** Problem at row 1 Expecting ___
```
### [Example 201](https://github.github.com/gfm/#example-201)

This markdown:

```markdown
    > # Foo
    > bar
    > baz

```

Should give output:

```html
<pre><code>&gt; # Foo &gt; bar &gt; baz</code></pre>
```

But instead was:

```html
<pre><code>&gt; # Foo</code></pre><pre><code>&gt; bar</code></pre><pre><code>&gt; baz</code></pre>
```
### [Example 202](https://github.github.com/gfm/#example-202)

This markdown:

```markdown
> # Foo
> bar
baz

```

Should give output:

```html
<blockquote><h1>Foo</h1><p>bar baz</p></blockquote>
```

But instead was:

```html
<p>&gt; # Foo &gt; bar baz</p>
```
### [Example 203](https://github.github.com/gfm/#example-203)

This markdown:

```markdown
> bar
baz
> foo

```

Should give output:

```html
<blockquote><p>bar baz foo</p></blockquote>
```

But instead was:

```html
<p>&gt; bar baz &gt; foo</p>
```
### [Example 204](https://github.github.com/gfm/#example-204)

This markdown:

```markdown
> foo
---

```

Should give output:

```html
<blockquote><p>foo</p></blockquote><hr>
```

But instead was:

```html
<p>&gt; foo</p><hr>
```
### [Example 205](https://github.github.com/gfm/#example-205)

This markdown:

```markdown
> - foo
- bar

```

Should give output:

```html
<blockquote><ul><li>foo</li></ul></blockquote><ul><li>bar</li></ul>
```

But instead was:

```html
<p>&gt; - foo</p><ul><li><p>bar</p></li></ul>
```
### [Example 206](https://github.github.com/gfm/#example-206)

This markdown:

```markdown
>     foo
    bar

```

Should give output:

```html
<blockquote><pre><code>foo</code></pre></blockquote><pre><code>bar</code></pre>
```

But instead was:

```html
<p>&gt; foo</p><pre><code>bar</code></pre>
```
### [Example 207](https://github.github.com/gfm/#example-207)

This markdown:

```markdown
> ```
foo
```

```

Should give output:

```html
<blockquote><pre><code></code></pre></blockquote><p>foo</p><pre><code></code></pre>
```

But instead was:

```html
ERROR Problem at row 7 Expecting symbol ```
```
### [Example 208](https://github.github.com/gfm/#example-208)

This markdown:

```markdown
> foo
    - bar

```

Should give output:

```html
<blockquote><p>foo - bar</p></blockquote>
```

But instead was:

```html
<p>&gt; foo</p><pre><code>- bar</code></pre>
```
### [Example 209](https://github.github.com/gfm/#example-209)

This markdown:

```markdown
>

```

Should give output:

```html
<blockquote></blockquote>
```

But instead was:

```html
<p>&gt;</p>
```
### [Example 210](https://github.github.com/gfm/#example-210)

This markdown:

```markdown
>
>  
> 

```

Should give output:

```html
<blockquote></blockquote>
```

But instead was:

```html
<p>&gt; &gt; &gt;</p>
```
### [Example 211](https://github.github.com/gfm/#example-211)

This markdown:

```markdown
>
> foo
>  

```

Should give output:

```html
<blockquote><p>foo</p></blockquote>
```

But instead was:

```html
<p>&gt; &gt; foo &gt;</p>
```
### [Example 212](https://github.github.com/gfm/#example-212)

This markdown:

```markdown
> foo

> bar

```

Should give output:

```html
<blockquote><p>foo</p></blockquote><blockquote><p>bar</p></blockquote>
```

But instead was:

```html
<p>&gt; foo</p><p>&gt; bar</p>
```
### [Example 213](https://github.github.com/gfm/#example-213)

This markdown:

```markdown
> foo
> bar

```

Should give output:

```html
<blockquote><p>foo bar</p></blockquote>
```

But instead was:

```html
<p>&gt; foo &gt; bar</p>
```
### [Example 214](https://github.github.com/gfm/#example-214)

This markdown:

```markdown
> foo
>
> bar

```

Should give output:

```html
<blockquote><p>foo</p><p>bar</p></blockquote>
```

But instead was:

```html
<p>&gt; foo &gt; &gt; bar</p>
```
### [Example 215](https://github.github.com/gfm/#example-215)

This markdown:

```markdown
foo
> bar

```

Should give output:

```html
<p>foo</p><blockquote><p>bar</p></blockquote>
```

But instead was:

```html
<p>foo &gt; bar</p>
```
### [Example 216](https://github.github.com/gfm/#example-216)

This markdown:

```markdown
> aaa
***
> bbb

```

Should give output:

```html
<blockquote><p>aaa</p></blockquote><hr><blockquote><p>bbb</p></blockquote>
```

But instead was:

```html
<p>&gt; aaa</p><hr><p>&gt; bbb</p>
```
### [Example 217](https://github.github.com/gfm/#example-217)

This markdown:

```markdown
> bar
baz

```

Should give output:

```html
<blockquote><p>bar baz</p></blockquote>
```

But instead was:

```html
<p>&gt; bar baz</p>
```
### [Example 218](https://github.github.com/gfm/#example-218)

This markdown:

```markdown
> bar

baz

```

Should give output:

```html
<blockquote><p>bar</p></blockquote><p>baz</p>
```

But instead was:

```html
<p>&gt; bar</p><p>baz</p>
```
### [Example 219](https://github.github.com/gfm/#example-219)

This markdown:

```markdown
> bar
>
baz

```

Should give output:

```html
<blockquote><p>bar</p></blockquote><p>baz</p>
```

But instead was:

```html
<p>&gt; bar &gt; baz</p>
```
### [Example 220](https://github.github.com/gfm/#example-220)

This markdown:

```markdown
> > > foo
bar

```

Should give output:

```html
<blockquote><blockquote><blockquote><p>foo bar</p></blockquote></blockquote></blockquote>
```

But instead was:

```html
<p>&gt; &gt; &gt; foo bar</p>
```
### [Example 221](https://github.github.com/gfm/#example-221)

This markdown:

```markdown
>>> foo
> bar
>>baz

```

Should give output:

```html
<blockquote><blockquote><blockquote><p>foo bar baz</p></blockquote></blockquote></blockquote>
```

But instead was:

```html
<p>&gt;&gt;&gt; foo &gt; bar &gt;&gt;baz</p>
```
### [Example 222](https://github.github.com/gfm/#example-222)

This markdown:

```markdown
>     code

>    not code

```

Should give output:

```html
<blockquote><pre><code>code</code></pre></blockquote><blockquote><p>not code</p></blockquote>
```

But instead was:

```html
<p>&gt; code</p><p>&gt; not code</p>
```
## [extension] Task list items

### [Example 279](https://github.github.com/gfm/#example-279)

This markdown:

```markdown
- [ ] foo
- [x] bar
```

Should give output:

```html
<ul><li><input disabled="" type="checkbox">foo</li><li><input checked="" disabled="" type="checkbox">bar</li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting symbol
```
### [Example 280](https://github.github.com/gfm/#example-280)

This markdown:

```markdown
- [x] foo
  - [ ] bar
  - [x] baz
- [ ] bim
```

Should give output:

```html
<ul><li><input checked="" disabled="" type="checkbox">foo<ul><li><input disabled="" type="checkbox">bar</li><li><input checked="" disabled="" type="checkbox">baz</li></ul></li><li><input disabled="" type="checkbox">bim</li></ul>
```

But instead was:

```html
ERROR Problem at row 3 Expecting --- Problem at row 3 Expecting *** Problem at row 3 Expecting ___
```
## Code spans

### [Example 329](https://github.github.com/gfm/#example-329)

This markdown:

```markdown
`` foo ` bar ``

```

Should give output:

```html
<p><code>foo ` bar</code></p>
```

But instead was:

```html
<p>foo<code>bar</code></p>
```
### [Example 330](https://github.github.com/gfm/#example-330)

This markdown:

```markdown
` `` `

```

Should give output:

```html
<p><code>``</code></p>
```

But instead was:

```html
<p><code></code><code></code></p>
```
### [Example 331](https://github.github.com/gfm/#example-331)

This markdown:

```markdown
`  ``  `

```

Should give output:

```html
<p><code>``</code></p>
```

But instead was:

```html
<p><code></code><code></code></p>
```
### [Example 335](https://github.github.com/gfm/#example-335)

This markdown:

```markdown
``
foo
bar  
baz
``

```

Should give output:

```html
<p><code>foo bar baz</code></p>
```

But instead was:

```html
<p>foo bar baz</p>
```
### [Example 336](https://github.github.com/gfm/#example-336)

This markdown:

```markdown
``
foo 
``

```

Should give output:

```html
<p><code>foo</code></p>
```

But instead was:

```html
<p>foo</p>
```
### [Example 338](https://github.github.com/gfm/#example-338)

This markdown:

```markdown
`foo\`bar`

```

Should give output:

```html
<p><code>foo\</code>bar`</p>
```

But instead was:

```html
<p><code>foo\</code>bar</p>
```
### [Example 339](https://github.github.com/gfm/#example-339)

This markdown:

```markdown
``foo`bar``

```

Should give output:

```html
<p><code>foo`bar</code></p>
```

But instead was:

```html
<p>foo<code>bar</code></p>
```
### [Example 340](https://github.github.com/gfm/#example-340)

This markdown:

```markdown
` foo `` bar `

```

Should give output:

```html
<p><code>foo `` bar</code></p>
```

But instead was:

```html
<p><code>foo</code><code>bar</code></p>
```
### [Example 341](https://github.github.com/gfm/#example-341)

This markdown:

```markdown
*foo`*`

```

Should give output:

```html
<p>*foo<code>*</code></p>
```

But instead was:

```html
<p><em>foo</em></p>
```
### [Example 342](https://github.github.com/gfm/#example-342)

This markdown:

```markdown
[not a `link](/foo`)

```

Should give output:

```html
<p>[not a<code>link](/foo</code>)</p>
```

But instead was:

```html
<p><a href="/foo`">not a<code>link</code></a></p>
```
### [Example 343](https://github.github.com/gfm/#example-343)

This markdown:

```markdown
`<a href="`">`

```

Should give output:

```html
<p><code>&lt;a href=&quot;</code>&quot;&gt;`</p>
```

But instead was:

```html
<p><code>&lt;a href=&quot;</code>&quot;&gt;</p>
```
### [Example 344](https://github.github.com/gfm/#example-344)

This markdown:

```markdown
<a href="`">`

```

Should give output:

```html
<p><a href="`">`</p>
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol
```
### [Example 345](https://github.github.com/gfm/#example-345)

This markdown:

```markdown
`<http://foo.bar.`baz>`

```

Should give output:

```html
<p><code>&lt;http://foo.bar.</code>baz&gt;`</p>
```

But instead was:

```html
<p><code>&lt;http://foo.bar.</code>baz&gt;</p>
```
### [Example 346](https://github.github.com/gfm/#example-346)

This markdown:

```markdown
<http://foo.bar.`baz>`

```

Should give output:

```html
<p><a href="http://foo.bar.%60baz">http://foo.bar.`baz</a>`</p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol /&gt; Problem at row 1 Expecting symbol &gt;
```
### [Example 347](https://github.github.com/gfm/#example-347)

This markdown:

```markdown
```foo``

```

Should give output:

```html
<p>```foo``</p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting symbol ```
```
### [Example 348](https://github.github.com/gfm/#example-348)

This markdown:

```markdown
`foo

```

Should give output:

```html
<p>`foo</p>
```

But instead was:

```html
<p><code>foo</code></p>
```
### [Example 349](https://github.github.com/gfm/#example-349)

This markdown:

```markdown
`foo``bar``

```

Should give output:

```html
<p>`foo<code>bar</code></p>
```

But instead was:

```html
<p><code>foo</code><code>bar</code></p>
```
## [extension] Tables

### [Example 198](https://github.github.com/gfm/#example-198)

This markdown:

```markdown
| foo | bar |
| --- | --- |
| baz | bim |
```

Should give output:

```html
<table><thead><tr><th>foo</th><th>bar</th></tr></thead><tbody><tr><td>baz</td><td>bim</td></tr></tbody></table>
```

But instead was:

```html
<p>| foo | bar | | --- | --- | | baz | bim |</p>
```
### [Example 199](https://github.github.com/gfm/#example-199)

This markdown:

```markdown
| abc | defghi |
:-: | -----------:
bar | baz
```

Should give output:

```html
<table><thead><tr><th align="center">abc</th><th align="right">defghi</th></tr></thead><tbody><tr><td align="center">bar</td><td align="right">baz</td></tr></tbody></table>
```

But instead was:

```html
<p>| abc | defghi | :-: | -----------: bar | baz</p>
```
### [Example 200](https://github.github.com/gfm/#example-200)

This markdown:

```markdown
| f\|oo  |
| ------ |
| b `\|` az |
| b **\|** im |
```

Should give output:

```html
<table><thead><tr><th>f|oo</th></tr></thead><tbody><tr><td>b<code>|</code>az</td></tr><tr><td>b<strong>|</strong>im</td></tr></tbody></table>
```

But instead was:

```html
<p>| f\|oo | | ------ | | b<code>\|</code>az | | b<strong>\|</strong>im |</p>
```
### [Example 201](https://github.github.com/gfm/#example-201)

This markdown:

```markdown
| abc | def |
| --- | --- |
| bar | baz |
> bar
```

Should give output:

```html
<table><thead><tr><th>abc</th><th>def</th></tr></thead><tbody><tr><td>bar</td><td>baz</td></tr></tbody></table><blockquote><p>bar</p></blockquote>
```

But instead was:

```html
<p>| abc | def | | --- | --- | | bar | baz | &gt; bar</p>
```
### [Example 202](https://github.github.com/gfm/#example-202)

This markdown:

```markdown
| abc | def |
| --- | --- |
| bar | baz |
bar

bar
```

Should give output:

```html
<table><thead><tr><th>abc</th><th>def</th></tr></thead><tbody><tr><td>bar</td><td>baz</td></tr><tr><td>bar</td><td></td></tr></tbody></table><p>bar</p>
```

But instead was:

```html
<p>| abc | def | | --- | --- | | bar | baz | bar</p><p>bar</p>
```
### [Example 204](https://github.github.com/gfm/#example-204)

This markdown:

```markdown
| abc | def |
| --- | --- |
| bar |
| bar | baz | boo |
```

Should give output:

```html
<table><thead><tr><th>abc</th><th>def</th></tr></thead><tbody><tr><td>bar</td><td></td></tr><tr><td>bar</td><td>baz</td></tr></tbody></table>
```

But instead was:

```html
<p>| abc | def | | --- | --- | | bar | | bar | baz | boo |</p>
```
### [Example 205](https://github.github.com/gfm/#example-205)

This markdown:

```markdown
| abc | def |
| --- | --- |
```

Should give output:

```html
<table><thead><tr><th>abc</th><th>def</th></tr></thead></table>
```

But instead was:

```html
<p>| abc | def | | --- | --- |</p>
```
## [extension] Disallowed Raw HTML

### [Example 653](https://github.github.com/gfm/#example-653)

This markdown:

```markdown
<strong> <title> <style> <em>

<blockquote>
  <xmp> is disallowed.  <XMP> is also disallowed.
</blockquote>
```

Should give output:

```html
<p><strong>&lt;title&gt; &lt;style&gt;<em></p><blockquote>&lt;xmp&gt; is disallowed. &lt;XMP&gt; is also disallowed.</blockquote>
```

But instead was:

```html
ERROR Problem at row 5 tag name mismatch: XMP and blockquote
```
## Backslash escapes

### [Example 298](https://github.github.com/gfm/#example-298)

This markdown:

```markdown
\!\"\#\$\%\&\'\(\)\*\+\,\-\.\/\:\;\<\=\>\?\@\[\\\]\^\_\`\{\|\}\~

```

Should give output:

```html
<p>!&quot;#$%&amp;&#39;()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting Problem at row 1 Expecting symbol (
```
### [Example 300](https://github.github.com/gfm/#example-300)

This markdown:

```markdown
\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url "not a reference"
\&ouml; not a character entity

```

Should give output:

```html
<p>*not emphasized* &lt;br/&gt; not a tag [not a link](/foo) `not code` 1. not a list * not a list # not a heading [foo]: /url &quot;not a reference&quot; &amp;ouml; not a character entity</p>
```

But instead was:

```html
ERROR Problem at row 19 Expecting Problem at row 1 Expecting symbol (
```
### [Example 301](https://github.github.com/gfm/#example-301)

This markdown:

```markdown
\\*emphasis*

```

Should give output:

```html
<p>\<em>emphasis</em></p>
```

But instead was:

```html
<p>\\<em>emphasis</em></p>
```
### [Example 302](https://github.github.com/gfm/#example-302)

This markdown:

```markdown
foo\
bar

```

Should give output:

```html
<p>foo<br>bar</p>
```

But instead was:

```html
<p>foo\ bar</p>
```
### [Example 303](https://github.github.com/gfm/#example-303)

This markdown:

```markdown
`` \[\` ``

```

Should give output:

```html
<p><code>\[\`</code></p>
```

But instead was:

```html
ERROR Problem at row 3 Expecting Problem at row 1 Expecting symbol ]
```
### [Example 306](https://github.github.com/gfm/#example-306)

This markdown:

```markdown
<http://example.com?find=\*>

```

Should give output:

```html
<p><a href="http://example.com?find=%5C*">http://example.com?find=\*</a></p>
```

But instead was:

```html
ERROR Problem at row 1 Expecting symbol /&gt; Problem at row 1 Expecting symbol &gt;
```
### [Example 307](https://github.github.com/gfm/#example-307)

This markdown:

```markdown
<a href="/bar\/)">

```

Should give output:

```html
<a href="/bar\/)">
```

But instead was:

```html
ERROR Problem at row 2 Expecting symbol
```
### [Example 308](https://github.github.com/gfm/#example-308)

This markdown:

```markdown
[foo](/bar\* "ti\*tle")

```

Should give output:

```html
<p><a href="/bar*" title="ti*tle">foo</a></p>
```

But instead was:

```html
<p><a href="/bar\* \" ti\*tle\""="">foo</a></p>
```
### [Example 309](https://github.github.com/gfm/#example-309)

This markdown:

```markdown
[foo]

[foo]: /bar\* "ti\*tle"

```

Should give output:

```html
<p><a href="/bar*" title="ti*tle">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 310](https://github.github.com/gfm/#example-310)

This markdown:

```markdown
``` foo\+bar
foo
```

```

Should give output:

```html
<pre><code class="language-foo+bar">foo</code></pre>
```

But instead was:

```html
<pre><code>foo</code></pre>
```
## Entity and numeric character references

### [Example 311](https://github.github.com/gfm/#example-311)

This markdown:

```markdown
&nbsp; &amp; &copy; &AElig; &Dcaron;
&frac34; &HilbertSpace; &DifferentialD;
&ClockwiseContourIntegral; &ngE;

```

Should give output:

```html
<p>&amp; © Æ Ď ¾ ℋ ⅆ ∲ ≧̸</p>
```

But instead was:

```html
<p>&amp;nbsp; &amp;amp; &amp;copy; &amp;AElig; &amp;Dcaron; &amp;frac34; &amp;HilbertSpace; &amp;DifferentialD; &amp;ClockwiseContourIntegral; &amp;ngE;</p>
```
### [Example 312](https://github.github.com/gfm/#example-312)

This markdown:

```markdown
&#35; &#1234; &#992; &#0;

```

Should give output:

```html
<p># Ӓ Ϡ �</p>
```

But instead was:

```html
<p>&amp;#35; &amp;#1234; &amp;#992; &amp;#0;</p>
```
### [Example 313](https://github.github.com/gfm/#example-313)

This markdown:

```markdown
&#X22; &#XD06; &#xcab;

```

Should give output:

```html
<p>&quot; ആ ಫ</p>
```

But instead was:

```html
<p>&amp;#X22; &amp;#XD06; &amp;#xcab;</p>
```
### [Example 317](https://github.github.com/gfm/#example-317)

This markdown:

```markdown
<a href="&ouml;&ouml;.html">

```

Should give output:

```html
<a href="öö.html">
```

But instead was:

```html
ERROR Problem at row 1 No entity named &quot;ö&quot; found.
```
### [Example 318](https://github.github.com/gfm/#example-318)

This markdown:

```markdown
[foo](/f&ouml;&ouml; "f&ouml;&ouml;")

```

Should give output:

```html
<p><a href="/f%C3%B6%C3%B6" title="föö">foo</a></p>
```

But instead was:

```html
<p><a f&ouml;&ouml;\""="" href="/föö \">foo</a></p>
```
### [Example 319](https://github.github.com/gfm/#example-319)

This markdown:

```markdown
[foo]

[foo]: /f&ouml;&ouml; "f&ouml;&ouml;"

```

Should give output:

```html
<p><a href="/f%C3%B6%C3%B6" title="föö">foo</a></p>
```

But instead was:

```html
ERROR Problem at row 6 Expecting Problem at row 1 Expecting symbol (
```
### [Example 320](https://github.github.com/gfm/#example-320)

This markdown:

```markdown
``` f&ouml;&ouml;
foo
```

```

Should give output:

```html
<pre><code class="language-föö">foo</code></pre>
```

But instead was:

```html
<pre><code>foo</code></pre>
```
### [Example 323](https://github.github.com/gfm/#example-323)

This markdown:

```markdown
&#42;foo&#42;
*foo*

```

Should give output:

```html
<p>*foo*<em>foo</em></p>
```

But instead was:

```html
<p>&amp;#42;foo&amp;#42;<em>foo</em></p>
```
### [Example 324](https://github.github.com/gfm/#example-324)

This markdown:

```markdown
&#42; foo

* foo

```

Should give output:

```html
<p>* foo</p><ul><li>foo</li></ul>
```

But instead was:

```html
<p>&amp;#42; foo</p><p><em>foo</em></p>
```
### [Example 325](https://github.github.com/gfm/#example-325)

This markdown:

```markdown
foo&#10;&#10;bar

```

Should give output:

```html
<p>foo bar</p>
```

But instead was:

```html
<p>foo&amp;#10;&amp;#10;bar</p>
```
### [Example 326](https://github.github.com/gfm/#example-326)

This markdown:

```markdown
&#9;foo

```

Should give output:

```html
<p>foo</p>
```

But instead was:

```html
<p>&amp;#9;foo</p>
```
### [Example 327](https://github.github.com/gfm/#example-327)

This markdown:

```markdown
[a](url &quot;tit&quot;)

```

Should give output:

```html
<p>[a](url &quot;tit&quot;)</p>
```

But instead was:

```html
<p><a href="url &quot;tit&quot;">a</a></p>
```
