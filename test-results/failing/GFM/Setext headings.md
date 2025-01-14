# GFM - Setext headings

## [Example 50](https://github.github.com/gfm/#example-50)

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
## [Example 51](https://github.github.com/gfm/#example-51)

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
## [Example 52](https://github.github.com/gfm/#example-52)

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
## [Example 53](https://github.github.com/gfm/#example-53)

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
## [Example 54](https://github.github.com/gfm/#example-54)

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
## [Example 55](https://github.github.com/gfm/#example-55)

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
## [Example 56](https://github.github.com/gfm/#example-56)

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
## [Example 57](https://github.github.com/gfm/#example-57)

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
## [Example 58](https://github.github.com/gfm/#example-58)

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
## [Example 59](https://github.github.com/gfm/#example-59)

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
## [Example 60](https://github.github.com/gfm/#example-60)

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
## [Example 61](https://github.github.com/gfm/#example-61)

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
## [Example 62](https://github.github.com/gfm/#example-62)

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
## [Example 63](https://github.github.com/gfm/#example-63)

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
## [Example 64](https://github.github.com/gfm/#example-64)

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
## [Example 65](https://github.github.com/gfm/#example-65)

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
## [Example 66](https://github.github.com/gfm/#example-66)

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
## [Example 69](https://github.github.com/gfm/#example-69)

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
## [Example 71](https://github.github.com/gfm/#example-71)

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
## [Example 72](https://github.github.com/gfm/#example-72)

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
## [Example 73](https://github.github.com/gfm/#example-73)

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
## [Example 75](https://github.github.com/gfm/#example-75)

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
## [Example 76](https://github.github.com/gfm/#example-76)

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
