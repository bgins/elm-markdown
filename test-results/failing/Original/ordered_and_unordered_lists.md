# Original - ordered_and_unordered_lists

## Example undefined

This markdown:

```markdown
## Unordered

Asterisks tight:

*	asterisk 1
*	asterisk 2
*	asterisk 3


Asterisks loose:

*	asterisk 1

*	asterisk 2

*	asterisk 3

* * *

Pluses tight:

+	Plus 1
+	Plus 2
+	Plus 3


Pluses loose:

+	Plus 1

+	Plus 2

+	Plus 3

* * *


Minuses tight:

-	Minus 1
-	Minus 2
-	Minus 3


Minuses loose:

-	Minus 1

-	Minus 2

-	Minus 3


## Ordered

Tight:

1.	First
2.	Second
3.	Third

and:

1. One
2. Two
3. Three


Loose using tabs:

1.	First

2.	Second

3.	Third

and using spaces:

1. One

2. Two

3. Three

Multiple paragraphs:

1.	Item 1, graf one.

	Item 2. graf two. The quick brown fox jumped over the lazy dog's
	back.

2.	Item 2.

3.	Item 3.



## Nested

*	Tab
	*	Tab
		*	Tab

Here's another:

1. First
2. Second:
	* Fee
	* Fie
	* Foe
3. Third

Same thing but with paragraphs:

1. First

2. Second:
	* Fee
	* Fie
	* Foe

3. Third


This was an error in Markdown 1.0.1:

*	this

	*	sub

	that

Ordered lists start from initial number:

3. Three
1. Four

Ordered lists start from initial zero:

0. Zero
1. One

```

Should give output:

```html
<h2>Unordered</h2><p>Asterisks tight:</p><ul><li>asterisk 1</li><li>asterisk 2</li><li>asterisk 3</li></ul><p>Asterisks loose:</p><ul><li><p>asterisk 1</p></li><li><p>asterisk 2</p></li><li><p>asterisk 3</p></li></ul><hr><p>Pluses tight:</p><ul><li>Plus 1</li><li>Plus 2</li><li>Plus 3</li></ul><p>Pluses loose:</p><ul><li><p>Plus 1</p></li><li><p>Plus 2</p></li><li><p>Plus 3</p></li></ul><hr><p>Minuses tight:</p><ul><li>Minus 1</li><li>Minus 2</li><li>Minus 3</li></ul><p>Minuses loose:</p><ul><li><p>Minus 1</p></li><li><p>Minus 2</p></li><li><p>Minus 3</p></li></ul><h2>Ordered</h2><p>Tight:</p><ol><li>First</li><li>Second</li><li>Third</li></ol><p>and:</p><ol><li>One</li><li>Two</li><li>Three</li></ol><p>Loose using tabs:</p><ol><li><p>First</p></li><li><p>Second</p></li><li><p>Third</p></li></ol><p>and using spaces:</p><ol><li><p>One</p></li><li><p>Two</p></li><li><p>Three</p></li></ol><p>Multiple paragraphs:</p><ol><li><p>Item 1, graf one.</p><p>Item 2. graf two. The quick brown fox jumped over the lazy dog&#39;s back.</p></li><li><p>Item 2.</p></li><li><p>Item 3.</p></li></ol><h2>Nested</h2><ul><li>Tab<ul><li>Tab<ul><li>Tab</li></ul></li></ul></li></ul><p>Here&#39;s another:</p><ol><li>First</li><li>Second:<ul><li>Fee</li><li>Fie</li><li>Foe</li></ul></li><li>Third</li></ol><p>Same thing but with paragraphs:</p><ol><li><p>First</p></li><li><p>Second:</p><ul><li>Fee</li><li>Fie</li><li>Foe</li></ul></li><li><p>Third</p></li></ol><p>This was an error in Markdown 1.0.1:</p><ul><li><p>this</p><ul><li>sub</li></ul><p>that</p></li></ul><p>Ordered lists start from initial number:</p><ol start="3"><li>Three</li><li>Four</li></ol><p>Ordered lists start from initial zero:</p><ol start="0"><li>Zero</li><li>One</li></ol>
```

But instead was:

```html
<h2>Unordered</h2><p>Asterisks tight:</p><p><em>asterisk 1</em>asterisk 2<em>asterisk 3</em></p><p>Asterisks loose:</p><p><em>asterisk 1</em></p><p><em>asterisk 2</em></p><p><em>asterisk 3</em></p><p><em></em></p><p>Pluses tight:</p><p>+ Plus 1 + Plus 2 + Plus 3</p><p>Pluses loose:</p><p>+ Plus 1</p><p>+ Plus 2</p><p>+ Plus 3</p><p><em></em></p><p>Minuses tight:</p><ul><li><p>Minus 1</p></li><li><p>Minus 2</p></li><li><p>Minus 3</p></li></ul><p>Minuses loose:</p><ul><li><p>Minus 1</p></li></ul><ul><li><p>Minus 2</p></li></ul><ul><li><p>Minus 3</p></li></ul><h2>Ordered</h2><p>Tight:</p><p>1. First 2. Second 3. Third</p><p>and:</p><p>1. One 2. Two 3. Three</p><p>Loose using tabs:</p><p>1. First</p><p>2. Second</p><p>3. Third</p><p>and using spaces:</p><p>1. One</p><p>2. Two</p><p>3. Three</p><p>Multiple paragraphs:</p><p>1. Item 1, graf one.</p><pre><code>Item 2. graf two. The quick brown fox jumped over the lazy dog&#39;s</code></pre><pre><code>back.</code></pre><p>2. Item 2.</p><p>3. Item 3.</p><h2>Nested</h2><p><em>Tab</em></p><pre><code>* Tab</code></pre><pre><code>* Tab</code></pre><p>Here&#39;s another:</p><p>1. First 2. Second:</p><pre><code>* Fee</code></pre><pre><code>* Fie</code></pre><pre><code>* Foe</code></pre><p>3. Third</p><p>Same thing but with paragraphs:</p><p>1. First</p><p>2. Second:</p><pre><code>* Fee</code></pre><pre><code>* Fie</code></pre><pre><code>* Foe</code></pre><p>3. Third</p><p>This was an error in Markdown 1.0.1:</p><p><em>this</em></p><pre><code>* sub</code></pre><pre><code>that</code></pre><p>Ordered lists start from initial number:</p><p>3. Three 1. Four</p><p>Ordered lists start from initial zero:</p><p>0. Zero 1. One</p>
```
