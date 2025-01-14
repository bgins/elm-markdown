# Original - auto_links

## Example undefined

This markdown:

```markdown
Link: <http://example.com/>.

With an ampersand: <http://example.com/?foo=1&bar=2>

* In a list?
* <http://example.com/>
* It should.

> Blockquoted: <http://example.com/>

Auto-links should not occur here: `<http://example.com/>`

	or here: <http://example.com/>

```

Should give output:

```html
<p>Link:<a href="http://example.com/">http://example.com/</a>.</p><p>With an ampersand:<a href="http://example.com/?foo=1&amp;bar=2">http://example.com/?foo=1&amp;bar=2</a></p><ul><li>In a list?</li><li><a href="http://example.com/">http://example.com/</a></li><li>It should.</li></ul><blockquote><p>Blockquoted:<a href="http://example.com/">http://example.com/</a></p></blockquote><p>Auto-links should not occur here:<code>&lt;http://example.com/&gt;</code></p><pre><code>or here: &lt;http://example.com/&gt;</code></pre>
```

But instead was:

```html
<p>Link: &lt;http://example.com/&gt;.</p><p>With an ampersand: &lt;http://example.com/?foo=1&amp;bar=2&gt;</p><p><em>In a list?</em>&lt;http://example.com/&gt;<em>It should.</em></p><p>&gt; Blockquoted: &lt;http://example.com/&gt;</p><p>Auto-links should not occur here:<code>&lt;http://example.com/&gt;</code></p><pre><code>or here: &lt;http://example.com/&gt;</code></pre>
```
