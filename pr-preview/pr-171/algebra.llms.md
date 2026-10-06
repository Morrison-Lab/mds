# Algebra

Code

Published

Last modified: 2026-10-06 15:10:39 (PDT)

## 1 Equalities

Mastery of [Elementary Algebra](https://en.wikipedia.org/wiki/Elementary_algebra) (a.k.a. “College Algebra”) is a prerequisite for calculus, which is in turn a prerequisite for most statistics and data science courses. Nevertheless, each year, some students are still uncomfortable with algebraic manipulations of mathematical formulas. Therefore, I include this section as a quick reference.

> **NOTE:**
>
> **Definition 1 (Transitive relation)** Let \\\sim\\ be a [relation](sets-functions.llms.md#def-relation) on a set \\S\\. The relation \\\sim\\ is **transitive** if, for all \\a, b, c \in S\\, \\a \sim b\\ and \\b \sim c\\ together imply \\a \sim c\\.

> **NOTE:**
>
> **Example 1 (A transitive relation and one that is not)**  
>
> - \\\le\\ is transitive: for example, \\1 \le 2\\ and \\2 \le 5\\, and indeed \\1 \le 5\\.
> - \\\ne\\ is not transitive: \\1 \ne 2\\ and \\2 \ne 1\\, but \\1 \ne 1\\ is false.

> **NOTE:**
>
> **Theorem 1 (Equalities are transitive)** If \\a=b\\ and \\b=c\\, then \\a=c\\. That is, \\=\\ is a [transitive](#def-transitive) relation.

> **NOTE:**
>
> **Theorem 2 (Substituting equivalent expressions)** If \\a = b\\, then for any function \\f(x)\\, \\f(a) = f(b)\\

> **NOTE:**
>
> **Definition 2 (Identity)** An **identity** is an equation between two expressions that holds for every value of its variables in a stated set, such as the [real numbers](notation.llms.md#def-real-numbers).

> **NOTE:**
>
> **Example 2 (An identity, and an equation that is not one)**  
>
> - \\2(x + 1) = 2x + 2\\ is an identity: it holds for every real \\x\\. For example, at \\x = 3\\, both sides equal \\8\\.
> - \\x + 1 = 3\\ is not an identity: it holds at \\x = 2\\, but at \\x = 0\\ the left side is \\1\\ and the right side is \\3\\.

## 2 Inequalities

> **NOTE:**
>
> **Definition 3 (Strict and non-strict inequalities)** For [real numbers](notation.llms.md#def-real-numbers) \\a\\ and \\b\\, \\a \< b\\ (“\\a\\ is less than \\b\\”) and \\a \> b\\ (“\\a\\ is greater than \\b\\”) are **strict inequalities**. The **non-strict inequalities** also allow equality:
>
> - \\a \le b\\ means \\a \< b\\ or \\a = b\\;
> - \\a \ge b\\ means \\a \> b\\ or \\a = b\\.

> **NOTE:**
>
> **Example 3 (Strict and non-strict inequalities)**  
>
> - \\3 \le 3\\ is true, because \\3 = 3\\, but \\3 \< 3\\ is false.
> - \\2 \< 3\\ and \\2 \le 3\\ are both true.
> - \\4 \ge 5\\ is false, because \\4 \> 5\\ and \\4 = 5\\ are both false.

> **NOTE:**
>
> **Theorem 3 (Adding to both sides of an inequality)** If \\a\<b\\, then \\a+c \< b+c\\

> **NOTE:**
>
> **Theorem 4 (Negating both sides of an inequality)** If \\a \< b\\, then: \\-a \> -b\\

> **NOTE:**
>
> **Theorem 5 (Multiplying both sides of an inequality by a positive number)** If \\a \< b\\ and \\c \> 0\\, then \\ca \< cb\\.

> **NOTE:**
>
> **Theorem 6 (Negation is multiplication by \\-1\\)** \\-a = (-1)\*a\\

## 3 Powers, square roots, and absolute values

> **NOTE:**
>
> **Definition 4 (Power, base, and exponent)** Let \\a\\ be a real number and \\n\\ a [natural number](notation.llms.md#def-natural-numbers). The \\n\\th **power** of \\a\\ is the product of \\n\\ copies of \\a\\:
>
> \\a^n \stackrel{\text{def}}{=}\underbrace{a \cdot a \cdot\cdots \cdot a}\_{n \text{ factors}}\\
>
> In \\a^n\\, \\a\\ is the **base** and \\n\\ is the **exponent**. The second power \\a^2\\ is the **square** of \\a\\. For the exponent \\0\\ and negative [integer](notation.llms.md#def-integers) exponents:
>
> - \\a^0 \stackrel{\text{def}}{=}1\\, including \\0^0 = 1\\ by convention;
> - \\a^{-n} \stackrel{\text{def}}{=}\frac{1}{a^n}\\, when \\a \ne 0\\.
>
> [Definition 47](#def-real-power) extends powers to real exponents when the base is positive.

> **NOTE:**
>
> **Example 4 (Powers)**  
>
> - \\2^3 = 2 \cdot 2 \cdot 2 = 8\\, with base \\2\\ and exponent \\3\\.
> - \\(-3)^2 = (-3) \cdot(-3) = 9\\, but \\-3^2 = -(3^2) = -9\\: the exponent applies only to the \\3\\.
> - \\5^0 = 1\\.
> - \\2^{-2} = \frac{1}{2^2} = \frac{1}{4}\\.

> **NOTE:**
>
> **Definition 5 (Square root)** For a real number \\a \ge 0\\, the **square root** of \\a\\, written \\\sqrt{a}\\, is the non-negative real number whose square ([Definition 4](#def-power)) is \\a\\.

> **NOTE:**
>
> **Example 5 (Square roots)**  
>
> - \\\sqrt{9} = 3\\. Although \\(-3)^2 = 9\\ too, \\-3\\ is negative, so \\\sqrt{9}\\ is not \\-3\\.
> - \\\sqrt{0} = 0\\.
> - \\\sqrt{2} \approx 1.41421\\.
> - \\\sqrt{-4}\\ is not a real number, because no real number squares to \\-4\\ (see [Section 18](#sec-complex-numbers)).

> **NOTE:**
>
> **Definition 6 (Absolute value of a real number)** The **absolute value** of a real number \\a\\ is
>
> \\ \mathopen{}\left\|a\right\|\mathclose{} \stackrel{\text{def}}{=}\begin{cases} a, & a \ge 0 \\ -a, & a \< 0 \end{cases} \\
>
> For real numbers \\a\\ and \\b\\, \\\mathopen{}\left\|a - b\right\|\mathclose{}\\ is the distance between \\a\\ and \\b\\ on the number line.

> **NOTE:**
>
> **Example 6 (Absolute values)**  
>
> - \\\mathopen{}\left\|2.5\right\|\mathclose{} = 2.5\\, because \\2.5 \ge 0\\.
> - \\\mathopen{}\left\|-3\right\|\mathclose{} = -(-3) = 3\\, because \\-3 \< 0\\.
> - \\\mathopen{}\left\|0\right\|\mathclose{} = 0\\.
> - \\\mathopen{}\left\|-3\right\|\mathclose{} = 3 = \sqrt{9} = \sqrt{(-3)^2}\\: for every real \\a\\, \\\mathopen{}\left\|a\right\|\mathclose{} = \sqrt{a^2}\\ ([Definition 5](#def-square-root)).
> - \\\mathopen{}\left\|x - 1\right\|\mathclose{} \< 1\\ says that \\x\\ is less than \\1\\ away from \\1\\, that is, \\0 \< x \< 2\\.

## 4 Minimum, maximum, argmin and argmax

> **NOTE:**
>
> **Exercise 1 (Smallest value, and where it occurs)**  
>
> 1.  Let \\f(x) = (x - 2)^2 + 1\\ for every \\x \in \mathbb{R}\\. What is the smallest value \\f\\ takes, and at which \\x\\ does it take that value?
> 2.  Now let \\g(x) = (x - 2)^2 + 1\\ only for \\x \in \mathopen{}\left\\0, 1, 3, 4\right\\\mathclose{}\\. What is the smallest value \\g\\ takes, and at which \\x\\ does it take that value?

> **NOTE:**
>
> *Solution 1*.
>
> 1.  The square of a real number is never negative, so \\(x - 2)^2 \ge 0\\ for every \\x\\, and therefore \\f(x) \ge 0 + 1 = 1\\. The square is \\0\\ only when \\x - 2 = 0\\, that is, when \\x = 2\\, and there \\f(2) = 1\\. So the smallest value of \\f\\ is \\1\\, and \\x = 2\\ is the only input where \\f\\ takes it.
>
> &nbsp;
>
> 2.  Evaluate \\g\\ at each of its four inputs:
>
>     | \\x\\    | \\0\\ | \\1\\ | \\3\\ | \\4\\ |
>     |----------|-------|-------|-------|-------|
>     | \\g(x)\\ | \\5\\ | \\2\\ | \\2\\ | \\5\\ |
>
>     The smallest value of \\g\\ is \\2\\, and \\g\\ takes it at two inputs, \\x = 1\\ and \\x = 3\\. The answer to “where?” is the set \\\mathopen{}\left\\1, 3\right\\\mathclose{}\\, not a single number.

> **NOTE:**
>
> **Definition 7 (Minimum)** Let \\A \subseteq \mathbb{R}\\. A number \\m\\ is the **minimum** of \\A\\, written \\\min A\\, if \\m \in A\\ and \\m \le a\\ for all \\a \in A\\.

> **NOTE:**
>
> *Remark 1* (Not every set has a minimum). The set \\\mathopen{}\left\\3, 1, 4\right\\\mathclose{}\\ has minimum \\1\\, and the [interval](sets-functions.llms.md#def-interval) \\\[0, 1\]\\ has minimum \\0\\. The interval \\(0, 1\]\\ has no minimum: every element \\a\\ of it has a smaller element, \\a/2\\, also in it.

> **NOTE:**
>
> **Definition 8 (Maximum)** Let \\A \subseteq \mathbb{R}\\. A number \\M\\ is the **maximum** of \\A\\, written \\\max A\\, if \\M \in A\\ and \\a \le M\\ for all \\a \in A\\.

> **NOTE:**
>
> **Example 7 (A maximum, and a set without one)**  
>
> - \\\max \mathopen{}\left\\-2, 5, 0\right\\\mathclose{} = 5\\: \\5\\ is in the set, and \\-2 \le 5\\, \\5 \le 5\\, \\0 \le 5\\.
> - The interval \\\[0, 1)\\ has no maximum. For any \\a \in \[0, 1)\\, the number \\\tfrac{a + 1}{2}\\ is also in \\\[0, 1)\\, and it is larger than \\a\\, since \\\tfrac{a + 1}{2} \> a\\ exactly when \\a \< 1\\. So no element of \\\[0, 1)\\ is at least as large as every element.

> **NOTE:**
>
> **Definition 9 (Argmin)** Let \\f : A \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). The **argmin** of \\f\\ over \\A\\ is the set of inputs where \\f\\ takes its smallest value:
>
> \\\arg \min\_{x \in A} f(x) \stackrel{\text{def}}{=}\mathopen{}\left\\x \in A : \forall a \in A,\\ f(x) \le f(a)\right\\\mathclose{}\\
>
> When this set has exactly one element \\\hat{x}\\, we write \\\hat{x} = \arg \min\_{x \in A} f(x)\\.

> **NOTE:**
>
> *Remark 2* (Smallest value versus where it occurs). The smallest value itself is \\\min f(A)\\, the minimum ([Definition 7](#def-minimum)) of the [image](sets-functions.llms.md#def-image) of \\f\\, and the argmin is where that value is attained. For example, let \\f(x) = x^2\\ on \\A = \mathopen{}\left\\-1, 0, 2\right\\\mathclose{}\\. The image is \\f(A) = \mathopen{}\left\\1, 0, 4\right\\\mathclose{}\\, so the smallest value is \\\min f(A) = 0\\, and \\\arg \min\_{x \in A} f(x) = \mathopen{}\left\\0\right\\\mathclose{}\\.
>
> The argmin is empty when \\f\\ has no smallest value, for example \\f(x) = x\\ on \\(0, 1\]\\.

> **NOTE:**
>
> **Definition 10 (Argmax)** Let \\f : A \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). The **argmax** of \\f\\ over \\A\\ is the set of inputs where \\f\\ takes its largest value:
>
> \\\arg \max\_{x \in A} f(x) \stackrel{\text{def}}{=}\mathopen{}\left\\x \in A : \forall a \in A,\\ f(a) \le f(x)\right\\\mathclose{}\\
>
> When this set has exactly one element \\\hat{x}\\, we write \\\hat{x} = \arg \max\_{x \in A} f(x)\\.

> **NOTE:**
>
> **Example 8 (An argmax with two points, and an empty one)**  
>
> - Let \\g(x) = x^2\\ on \\A = \mathopen{}\left\\-2, 0, 1, 2\right\\\mathclose{}\\. The values are \\g(-2) = 4\\, \\g(0) = 0\\, \\g(1) = 1\\ and \\g(2) = 4\\, so the largest value is \\4\\ and \\\arg \max\_{x \in A} g(x) = \mathopen{}\left\\-2, 2\right\\\mathclose{}\\. This argmax has two elements, so it is not written as a single \\\hat{x}\\.
> - Let \\f(x) = x\\ on \\\[0, 1)\\. As in [Example 7](#exm-maximum), for every input \\x\\ the input \\\tfrac{x + 1}{2}\\ has a larger value, so no input attains a largest value, and \\\arg \max\_{x \in \[0, 1)} f(x)\\ is the [empty set](sets-functions.llms.md#def-empty-set).

## 5 Global and local minimizers

> **NOTE:**
>
> **Exercise 2 (A dip that is not the bottom)** Let \\f(x) = x^3 - 3x\\ for \\x \in \mathbb{R}\\.
>
> 1.  Show that \\f(x) - f(1) = (x - 1)^2 (x + 2)\\.
> 2.  Use part 1 to show that \\f(x) \ge f(1)\\ for every \\x\\ in the interval \\(0, 2)\\.
> 3.  Compute \\f(-3)\\. Is \\f(1)\\ the smallest value \\f\\ takes on all of \\\mathbb{R}\\?
> 4.  Does \\f\\ take a smallest value anywhere on \\\mathbb{R}\\?

> **NOTE:**
>
> *Solution 2*.
>
> 1.  Since \\f(1) = 1 - 3 = -2\\,
>
>     \\ \begin{aligned} f(x) - f(1) &= x^3 - 3x + 2 \\ &= (x - 1)(x^2 + x - 2) \\ &= (x - 1)(x - 1)(x + 2) \\ &= (x - 1)^2 (x + 2). \end{aligned} \\
>
> 2.  For \\x \in (0, 2)\\, \\(x - 1)^2 \ge 0\\ and \\x + 2 \> 0\\, so their product is at least \\0\\. By part 1, \\f(x) - f(1) \ge 0\\, that is, \\f(x) \ge f(1)\\.
>
> &nbsp;
>
> 3.  \\f(-3) = -27 + 9 = -18\\. Since \\-18 \< -2 = f(1)\\, \\f(1)\\ is not the smallest value of \\f\\ on \\\mathbb{R}\\.
>
> 4.  No. For each \\n \ge 2\\, \\f(-n) = -n^3 + 3n = -n(n^2 - 3) \le -n\\, so no value of \\f\\ is smaller than all the others: for any \\x\\, picking \\n \ge 2\\ with \\-n \< f(x)\\ gives \\f(-n) \< f(x)\\.

> **NOTE:**
>
> **Definition 11 (Global minimizer)** Let \\A \subseteq \mathbb{R}^p\\ and let \\f : A \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). A point \\x^\* \in A\\ is a **global minimizer** of \\f\\ over \\A\\ if \\f(x^\*) \le f(x)\\ for all \\x \in A\\.

> **NOTE:**
>
> *Remark 3* (Global minimizers form the argmin). The global minimizers of \\f\\ are exactly the elements of \\\arg \min\_{x \in A} f(x)\\ ([Definition 9](#def-argmin)). A function can have more than one global minimizer. For example, \\f(x) = (x^2 - 1)^2\\ on \\\mathbb{R}\\ satisfies \\f(x) \ge 0\\ for every \\x\\, and \\f(x) = 0\\ exactly when \\x = -1\\ or \\x = 1\\, so its global minimizers are \\-1\\ and \\1\\, and \\\arg \min\_{x \in \mathbb{R}} f(x) = \mathopen{}\left\\-1, 1\right\\\mathclose{}\\.

> **NOTE:**
>
> **Definition 12 (Local minimizer)** Let \\A \subseteq \mathbb{R}^p\\ and let \\f : A \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). A point \\x^\* \in A\\ is a **local minimizer** of \\f\\ if there is a number \\\delta \> 0\\ such that \\f(x^\*) \le f(x)\\ for all \\x \in A\\ with \\\mathopen{}\left\lVert x - x^\*\right\rVert\mathclose{} \< \delta\\, where \\\mathopen{}\left\lVert\cdot\right\rVert\mathclose{}\\ is the [Euclidean norm](linear-algebra.llms.md#def-euclidean-norm).

> **NOTE:**
>
> *Remark 4* (Local and global minimizers). For \\p = 1\\, \\\mathopen{}\left\lVert x - x^\*\right\rVert\mathclose{} = \mathopen{}\left\|x - x^\*\right\|\mathclose{}\\. For example, with \\x^\* = 1\\ and \\\delta = 1\\, the condition \\\mathopen{}\left\|x - 1\right\|\mathclose{} \< 1\\ means \\0 \< x \< 2\\.
>
> Every global minimizer ([Definition 11](#def-global-minimizer)) is a local minimizer: take any \\\delta \> 0\\. For example, \\x^\* = 0\\ is a global minimizer of \\f(x) = x^2\\ on \\\mathbb{R}\\, so it is also a local minimizer.
>
> The [converse](notation.llms.md#def-converse) fails. In [Exercise 2](#exr-local-vs-global-min), \\x^\* = 1\\ is a local minimizer of \\f(x) = x^3 - 3x\\ (take \\\delta = 1\\), but not a global one.

> **NOTE:**
>
> **Example 9 (A point that is not a local minimizer)** For \\f(x) = x^3 - 3x\\, the point \\x = -1\\ is not a local minimizer. For any \\t\\,
>
> \\ \begin{aligned} f(-1 + t) &= (-1 + t)^3 - 3(-1 + t) && \text{(substitute)} \\ &= (-1 + 3t - 3t^2 + t^3) - 3(-1 + t) && \text{(expand the cube)} \\ &= -1 + 3t - 3t^2 + t^3 + 3 - 3t && \text{(distribute } -3 \text{)} \end{aligned} \\
>
> \\ \begin{aligned} f(-1 + t) &= 2 - 3t^2 + t^3 && \text{(combine like terms)} \\ &= 2 + t^2 (t - 3) && \text{(factor out } t^2 \text{)} \\ &= f(-1) + t^2 (t - 3), && \text{(} f(-1) = 2 \text{)} \end{aligned} \\
>
> and \\t^2 (t - 3) \< 0\\ whenever \\t \ne 0\\ and \\t \< 3\\. So whatever \\\delta \> 0\\ is, the point \\x = -1 + t\\ with \\t = \min\mathopen{}\left\\\delta / 2, 1\right\\\mathclose{}\\ satisfies \\\mathopen{}\left\|x - (-1)\right\|\mathclose{} \< \delta\\ and \\f(x) \< f(-1)\\. For example, \\f(-0.9) = -0.729 + 2.7 = 1.971 \< 2\\.

## 6 Convex functions

> **NOTE:**
>
> **Exercise 3 (A value compared with an average of values)** Let \\f(x) = (x - 2)^2\\, and take the points \\x = 0\\ and \\y = 4\\ with \\t = \tfrac{1}{2}\\.
>
> 1.  Compute \\f(t x + (1 - t) y)\\.
> 2.  Compute \\t f(x) + (1 - t) f(y)\\.
> 3.  Is \\f(t x + (1 - t) y) \le t f(x) + (1 - t) f(y)\\?

> **NOTE:**
>
> *Solution 3*.
>
> 1.  With \\t = \tfrac{1}{2}\\, \\t x + (1 - t) y = \tfrac{1}{2} \cdot 0 + \tfrac{1}{2} \cdot 4 = 2\\, so \\f(2) = (2 - 2)^2 = 0\\.
>
> 2.  \\f(0) = (0 - 2)^2 = 4\\ and \\f(4) = (4 - 2)^2 = 4\\, so \\\tfrac{1}{2} \cdot 4 + \tfrac{1}{2} \cdot 4 = 4\\.
>
> 3.  Yes: \\0 \le 4\\. The value of \\f\\ at the midpoint of \\0\\ and \\4\\ is below the average of its values at the two endpoints.

> **NOTE:**
>
> **Definition 13 (Line segment)** Let \\x, y \in \mathbb{R}^p\\. The **line segment** from \\x\\ to \\y\\ is the set of points \\ \mathopen{}\left\\t x + (1 - t) y : t \in \[0, 1\]\right\\\mathclose{}. \\ The value \\t = 1\\ gives \\x\\, the value \\t = 0\\ gives \\y\\, and \\t = \tfrac{1}{2}\\ gives the midpoint \\\tfrac{1}{2}(x + y)\\.

> **NOTE:**
>
> **Example 10 (A line segment in \\\mathbb{R}\\)** For \\p = 1\\, \\x = 0\\ and \\y = 4\\, the line segment from \\x\\ to \\y\\ is the [interval](sets-functions.llms.md#def-interval) \\\[0, 4\]\\. The value \\t = \tfrac{1}{4}\\ gives the point \\\tfrac{1}{4} \cdot 0 + \tfrac{3}{4} \cdot 4 = 3\\.

> **NOTE:**
>
> **Definition 14 (Chord)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function), and let \\x, y \in \mathbb{R}^p\\. The **chord** of \\f\\ from \\x\\ to \\y\\ is the line segment ([Definition 13](#def-line-segment)) in \\\mathbb{R}^{p+1}\\ from the point \\(x, f(x))\\ to the point \\(y, f(y))\\ of the [graph](sets-functions.llms.md#def-graph) of \\f\\: \\ \mathopen{}\left\\\mathopen{}\left(t x + (1 - t) y,\\ t f(x) + (1 - t) f(y)\right)\mathclose{} : t \in \[0, 1\]\right\\\mathclose{}. \\ Above the point \\t x + (1 - t) y\\, the chord has height \\t f(x) + (1 - t) f(y)\\.

> **NOTE:**
>
> **Example 11 (A chord of \\x^2\\)** For \\f(x) = x^2\\, \\x = -1\\ and \\y = 3\\, the chord runs from \\(-1, f(-1)) = (-1, 1)\\ to \\(3, f(3)) = (3, 9)\\. With \\t = \tfrac{1}{2}\\, it passes through \\\mathopen{}\left(\tfrac{1}{2} \cdot (-1) + \tfrac{1}{2} \cdot 3,\\ \tfrac{1}{2} \cdot 1 + \tfrac{1}{2} \cdot 9\right)\mathclose{} = (1, 5)\\, so above the point \\1\\ it has height \\5\\.

> **NOTE:**
>
> **Definition 15 (Convex function)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). \\f\\ is **convex** if \\ f(t x + (1 - t) y) \le t f(x) + (1 - t) f(y) \\ for all \\x, y \in \mathbb{R}^p\\ and all \\t \in \[0, 1\]\\.

> **NOTE:**
>
> *Remark 5* (Chords lie on or above the graph). The point \\t x + (1 - t) y\\ lies on the [line segment](#def-line-segment) from \\x\\ to \\y\\, and the right-hand side is the height above that point of the [chord](#def-chord) of \\f\\ from \\x\\ to \\y\\. So \\f\\ is convex when every chord lies on or above the [graph](sets-functions.llms.md#def-graph).
>
> For example, take \\f(x) = x^2\\, \\x = -1\\, \\y = 3\\, and \\t = \tfrac{1}{2}\\. The point is \\\tfrac{1}{2} \cdot (-1) + \tfrac{1}{2} \cdot 3 = 1\\, where the graph has height \\f(1) = 1\\ and the chord has height \\\tfrac{1}{2} f(-1) + \tfrac{1}{2} f(3) = \tfrac{1}{2} \cdot 1 + \tfrac{1}{2} \cdot 9 = 5\\. The chord is above the graph: \\1 \le 5\\.

> **NOTE:**
>
> **Example 12 (A function that is not convex)** The function in [Exercise 2](#exr-local-vs-global-min), \\f(x) = x^3 - 3x\\, is not convex. Take \\x = -2\\, \\y = 0\\, \\t = \tfrac{1}{2}\\. The point is \\\tfrac{1}{2} \cdot (-2) + \tfrac{1}{2} \cdot 0 = -1\\, where the graph has height \\f(-1) = -1 + 3 = 2\\, but the chord has height \\\tfrac{1}{2} f(-2) + \tfrac{1}{2} f(0) = \tfrac{1}{2} (-8 + 6) + \tfrac{1}{2} \cdot 0 = -1\\, and \\2 \le -1\\ is false.

> **NOTE:**
>
> **Example 13 (A convex and a non-convex function)** \\f(x) = (x - 2)^2\\ is convex ([Definition 15](#def-convex-function)): by expanding the square, \\f(t x + (1 - t) y) - t f(x) - (1 - t) f(y) = -t (1 - t) (x - y)^2 \le 0\\. Its local minimizer \\x^\* = 2\\ is also a global minimizer, since \\f(x) = (x - 2)^2 \ge 0 = f(2)\\ for every \\x\\.
>
> Without convexity, a local minimizer need not be global: \\f(x) = x^3 - 3x\\ is not convex ([Example 12](#exm-cubic-not-convex)), and it has a local minimizer at \\x^\* = 1\\ that is not global ([Exercise 2](#exr-local-vs-global-min)).

> **NOTE:**
>
> **Theorem 7 (Local minimizers of convex functions are global)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ be a [convex function](#def-convex-function). Every [local minimizer](#def-local-minimizer) of \\f\\ is a [global minimizer](#def-global-minimizer) of \\f\\ over \\\mathbb{R}^p\\.

> **NOTE:**
>
> *Proof*. Let \\x^\*\\ be a local minimizer of \\f\\, so there is a \\\delta \> 0\\ with \\f(x^\*) \le f(x)\\ whenever \\\mathopen{}\left\lVert x - x^\*\right\rVert\mathclose{} \< \delta\\ ([Definition 12](#def-local-minimizer)). Suppose \\x^\*\\ is not a global minimizer ([Definition 11](#def-global-minimizer)). Then some \\y \in \mathbb{R}^p\\ has \\f(y) \< f(x^\*)\\, and in particular \\y \ne x^\*\\.
>
> Let \\t = \min\left\\\tfrac{1}{2}, \dfrac{\delta}{2 \mathopen{}\left\lVert y - x^\*\right\rVert\mathclose{}}\right\\\\, so \\t \in (0, 1)\\, and let \\z = t y + (1 - t) x^\*\\. Then \\z - x^\* = t (y - x^\*)\\, so \\\mathopen{}\left\lVert z - x^\*\right\rVert\mathclose{} = t \mathopen{}\left\lVert y - x^\*\right\rVert\mathclose{} \le \delta / 2 \< \delta\\.
>
> By convexity, \\ f(z) \le t f(y) + (1 - t) f(x^\*) \< t f(x^\*) + (1 - t) f(x^\*) = f(x^\*), \\ where the strict inequality uses \\t \> 0\\ and \\f(y) \< f(x^\*)\\. So \\f(z) \< f(x^\*)\\ with \\\mathopen{}\left\lVert z - x^\*\right\rVert\mathclose{} \< \delta\\, which contradicts \\x^\*\\ being a local minimizer. Hence \\x^\*\\ is a global minimizer.

## 7 Infimum and supremum

> **NOTE:**
>
> **Definition 16 (Upper and lower bounds)** Let \\A \subseteq \mathbb{R}\\.
>
> - A real number \\u\\ is an **upper bound** for \\A\\ if \\a \le u\\ for all \\a \in A\\.
> - A real number \\\ell\\ is a **lower bound** for \\A\\ if \\\ell \le a\\ for all \\a \in A\\.
>
> \\A\\ is **bounded above** if it has an upper bound, **bounded below** if it has a lower bound, and **bounded** if it is both bounded above and bounded below. A real-valued [function](sets-functions.llms.md#def-function) is bounded above, bounded below, or bounded if its [image](sets-functions.llms.md#def-image) is.

> **NOTE:**
>
> **Example 14 (Bounded and unbounded sets)**  
>
> - For \\A = (0, 1\]\\, \\1\\, \\2\\, and \\100\\ are upper bounds, and \\0\\ and \\-5\\ are lower bounds, so \\A\\ is bounded. \\0.5\\ is not an upper bound, because \\0.6 \in A\\ and \\0.6 \> 0.5\\.
> - The natural numbers \\\mathbb{N} = \mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\ are bounded below, by \\1\\, but not bounded above: for any real number \\u\\, some natural number \\n\\ satisfies \\n \> u\\.

> **NOTE:**
>
> **Theorem 8 (Completeness of the real numbers)** Let \\A \subseteq \mathbb{R}\\ be nonempty.
>
> - If \\A\\ is [bounded above](#def-bounded), the set of upper bounds of \\A\\ has a [minimum](#def-minimum).
> - If \\A\\ is bounded below, the set of lower bounds of \\A\\ has a [maximum](#def-maximum).

> **NOTE:**
>
> *Proof*. The first statement is the least-upper-bound property of \\\mathbb{R}\\ ([Rudin 1976](#ref-rudin1976principles), Definition 1.8, p. 4, and Theorem 1.19, p. 8). For the second, let \\-A = \mathopen{}\left\\-a : a \in A\right\\\mathclose{}\\. Negating both sides of an inequality reverses it ([Theorem 4](#thm-neg-ineq)), so \\\ell\\ is a lower bound of \\A\\ exactly when \\-\ell\\ is an upper bound of \\-A\\. The set \\-A\\ is nonempty and bounded above, so by the first statement its upper bounds have a minimum \\u\\, and then \\-u\\ is the largest lower bound of \\A\\.

> **NOTE:**
>
> **Example 15 (Completeness for an interval)** For \\A = (1, 2\]\\, the lower bounds of \\A\\ are the numbers \\\ell \le 1\\, and the largest of them is \\1\\. The upper bounds of \\A\\ are the numbers \\u \ge 2\\, and the smallest of them is \\2\\.

> **NOTE:**
>
> **Definition 17 (Infimum (greatest lower bound))** Let \\A \subseteq \mathbb{R}\\ be nonempty and bounded below ([Definition 16](#def-bounded)). The **infimum** of \\A\\, written \\\inf A\\, is the greatest real number \\t\\ satisfying \\t \le a\\ for all \\a \in A\\:
>
> \\\inf A \stackrel{\text{def}}{=}\max\mathopen{}\left\\t \in \mathbb{R}: \forall a \in A,\\ t \le a\right\\\mathclose{}\\
>
> If \\A\\ is nonempty but not bounded below, we write \\\inf A = -\infty\\ by convention.

> **NOTE:**
>
> *Remark 6* (Existence of the infimum, and when it is a minimum). The maximum in [Definition 17](#def-infimum) always exists, by the completeness of the real numbers ([Theorem 8](#thm-completeness)). For example, for \\A = (1, 2\]\\, the numbers \\t\\ with \\t \le a\\ for all \\a \in A\\ are those with \\t \le 1\\, and the largest of them is \\1\\, so \\\inf A = 1\\.
>
> If the infimum belongs to \\A\\, it equals the minimum: \\\inf A = \min A\\. For example, \\\inf \[1, 2\] = 1 = \min \[1, 2\]\\. For \\A = (1, 2\]\\, the infimum \\1\\ is not in \\A\\, and \\A\\ has no minimum.

> **NOTE:**
>
> **Example 16 (Numerical examples of infimum)**  
>
> - \\\inf\\1, 2, 3\\ = 1\\, since \\1\\ is the smallest element.
> - \\\inf(0.5, 1\] = 0.5 = \min\[0.5, 1\]\\: for intervals open below, the infimum equals the minimum of the corresponding closed-below interval, even though \\0.5 \notin (0.5, 1\]\\. More generally, \\\inf(c, b\] = \min\[c, b\] = c\\ for any \\c \< b\\.
> - \\\inf\\t \ge 0 : t \> 0.5\\ = 0.5\\, even though \\0.5\\ itself is not in the set.
> - \\\inf\\-1, -2, -3, \ldots\\ = -\infty\\, because no real number is less than or equal to every element of that set.

> **NOTE:**
>
> **Definition 18 (Supremum (least upper bound))** Let \\A \subseteq \mathbb{R}\\ be nonempty and bounded above ([Definition 16](#def-bounded)). The **supremum** of \\A\\, written \\\sup A\\, is the smallest real number \\t\\ satisfying \\a \le t\\ for all \\a \in A\\:
>
> \\\sup A \stackrel{\text{def}}{=}\min\mathopen{}\left\\t \in \mathbb{R}: \forall a \in A,\\ a \le t\right\\\mathclose{}\\
>
> If \\A\\ is nonempty but not bounded above, we write \\\sup A = +\infty\\ by convention.

> **NOTE:**
>
> *Remark 7* (Existence of the supremum, and when it is a maximum). The minimum in [Definition 18](#def-supremum) always exists, by the completeness of the real numbers ([Theorem 8](#thm-completeness)). For example, for \\A = \[1, 2)\\, the numbers \\t\\ with \\a \le t\\ for all \\a \in A\\ are those with \\t \ge 2\\, and the smallest of them is \\2\\, so \\\sup A = 2\\.
>
> If the supremum belongs to \\A\\, it equals the maximum: \\\sup A = \max A\\. For example, \\\sup \[1, 2\] = 2 = \max \[1, 2\]\\. For \\A = \[1, 2)\\, the supremum \\2\\ is not in \\A\\, and \\A\\ has no maximum.

> **NOTE:**
>
> **Example 17 (Numerical examples of supremum)**  
>
> - \\\sup\\1, 2, 3\\ = 3\\, since \\3\\ is the largest element.
> - \\\sup\\t \ge 0 : t \< 0.5\\ = 0.5\\, even though \\0.5\\ itself is not in the set.
> - \\\sup\\1, 2, 3, \ldots\\ = +\infty\\, because no real number is greater than or equal to every element of that set.

## 8 Sums

> **NOTE:**
>
> **Definition 19 (Term of a sum)** In a sum \\a_1 + a_2 + \cdots + a_n\\, each of the numbers or expressions \\a_1, a_2, \ldots, a_n\\ being added is a **term** of the sum.

> **NOTE:**
>
> **Example 18 (Terms of a sum)**  
>
> - The sum \\3 + 5 + 9\\ has three terms: \\3\\, \\5\\ and \\9\\.
> - The sum \\x^2 - 3x + 7 = x^2 + (-3x) + 7\\ has three terms: \\x^2\\, \\-3x\\ and \\7\\. A subtracted expression counts as a term with a minus sign.

> **NOTE:**
>
> **Definition 20 (Identity element)** Let \\S\\ be a set, such as the real numbers \\\mathbb{R}\\, and let \\\star\\ be an operation that combines two elements \\a\\ and \\b\\ of \\S\\ into an element \\a \star b\\ of \\S\\, such as addition (\\a + b\\) or multiplication (\\a \times b\\) of real numbers. An element \\u\\ of \\S\\ is an **identity element** for \\\star\\ if \\a \star u = a\\ and \\u \star a = a\\ for every \\a \in S\\.

> **NOTE:**
>
> **Example 19 (Identity elements for addition and multiplication)**  
>
> - \\0\\ is the identity element for addition: for example, \\5 + 0 = 5\\ and \\0 + 5 = 5\\ ([Theorem 9](#thm-add-ident)).
> - \\1\\ is the identity element for multiplication: for example, \\5 \times 1 = 5\\ and \\1 \times 5 = 5\\ ([Theorem 12](#thm-mult-one)).
> - \\0\\ is not an identity element for subtraction: \\5 - 0 = 5\\, but \\0 - 5 = -5 \ne 5\\.

> **NOTE:**
>
> **Definition 21 (Commutative operation)** An operation \\\star\\ on a set \\S\\ ([Definition 20](#def-identity-element)) is **commutative** if \\a \star b = b \star a\\ for all \\a, b \in S\\: the order of the two inputs does not matter. Some sources, including the titles of [Theorem 10](#thm-sum-symmetric) and [Theorem 13](#thm-prod-symmetric), call a commutative operation **symmetric**.

> **NOTE:**
>
> **Example 20 (A commutative operation, and one that is not)**  
>
> - Addition is commutative: for example, \\2 + 5 = 7 = 5 + 2\\.
> - Subtraction is not commutative: \\5 - 3 = 2\\, but \\3 - 5 = -2\\.

> **NOTE:**
>
> **Definition 22 (Associative operation)** An operation \\\star\\ on a set \\S\\ ([Definition 20](#def-identity-element)) is **associative** if \\(a \star b) \star c = a \star (b \star c)\\ for all \\a, b, c \in S\\: which pair is combined first does not matter.

> **NOTE:**
>
> **Example 21 (An associative operation, and one that is not)**  
>
> - Multiplication is associative: for example, \\(2 \times 3) \times 4 = 6 \times 4 = 24\\ and \\2 \times (3 \times 4) = 2 \times 12 = 24\\.
> - Subtraction is not associative: \\(8 - 4) - 2 = 4 - 2 = 2\\, but \\8 - (4 - 2) = 8 - 2 = 6\\.

> **NOTE:**
>
> **Theorem 9 (Adding zero changes nothing)** \\a+0=a\\

> **NOTE:**
>
> **Theorem 10 (Sums are symmetric)** \\a+b = b+a\\

> **NOTE:**
>
> **Theorem 11 (Sums are associative)** When adding three numbers, it does not matter which pair you add first:
>
> \\(a + b) + c = a + (b + c)\\

> **NOTE:**
>
> **Example 22 (Grouping a sum two ways)** \\(2 + 3) + 4 = 5 + 4 = 9\\, and \\2 + (3 + 4) = 2 + 7 = 9\\.

## 9 Products

> **NOTE:**
>
> **Theorem 12 (Multiplying by 1 changes nothing)** \\a \times 1 = a\\

> **NOTE:**
>
> **Theorem 13 (Products are symmetric)** \\a \times b = b \times a\\

> **NOTE:**
>
> **Theorem 14 (Products are associative)** \\(a \times b) \times c = a \times (b \times c)\\

## 10 Division

> **NOTE:**
>
> **Theorem 15 (Division can be written as a product)** If \\b \neq 0\\, then
>
> \\\frac {a}{b} = a \times \frac{1}{b}\\

## 11 Sums and products together

> **NOTE:**
>
> **Definition 23 (Distributive law)** An operation \\\star\\ on a set \\S\\ **distributes over** an operation \\\diamond\\ on \\S\\ ([Definition 20](#def-identity-element)) if
>
> \\a \star (b \diamond c) = (a \star b) \diamond (a \star c)\\
>
> for all \\a, b, c \in S\\. The **distributive law** is the statement that multiplication distributes over addition, \\a \times (b + c) = (a \times b) + (a \times c)\\ ([Theorem 16](#thm-mult-distr)); we then say multiplication is **distributive**.

> **NOTE:**
>
> **Example 23 (Multiplication distributes over addition, but not the reverse)**  
>
> - \\3 \times (4 + 5) = 3 \times 9 = 27\\, and \\(3 \times 4) + (3 \times 5) = 12 + 15 = 27\\.
> - Addition does not distribute over multiplication: \\2 + (3 \times 4) = 2 + 12 = 14\\, but \\(2 + 3) \times (2 + 4) = 5 \times 6 = 30\\.

> **NOTE:**
>
> **Theorem 16 (Multiplication is distributive)** \\a(b+c) = ab + ac\\

> **NOTE:**
>
> **Definition 24 (Like terms)** Two [terms](#def-term) of a sum are **like terms** if they are the same product of variables, each to the same power, possibly multiplied by different constants: \\c_1 m\\ and \\c_2 m\\, where \\c_1\\ and \\c_2\\ are constants and \\m\\ is that product. To **collect** like terms is to replace their sum by one term, using the distributive law ([Theorem 16](#thm-mult-distr)): \\c_1 m + c_2 m = (c_1 + c_2) m\\.

> **NOTE:**
>
> **Example 24 (Like and unlike terms)**  
>
> - \\3ab\\ and \\-5ab\\ are like terms; collecting them gives \\3ab + (-5ab) = (3 - 5) ab = -2ab\\.
> - \\2x\\ and \\2x^2\\ are not like terms: \\x\\ appears to different powers.

> **NOTE:**
>
> **Exercise 4 (Expand a squared sum)** Is \\(3 + 4)^2\\ equal to \\3^2 + 4^2\\? Then expand \\(a + b)^2\\ for any numbers \\a\\ and \\b\\, using only the distributive law and the rules above.

> **NOTE:**
>
> *Solution 4*. No: \\(3 + 4)^2 = 7^2 = 49\\, while \\3^2 + 4^2 = 9 + 16 = 25\\. The difference, \\49 - 25 = 24\\, is \\2 \cdot 3 \cdot 4\\.
>
> To see where that extra term comes from, write the square as a product and apply the distributive law ([Theorem 16](#thm-mult-distr)) twice:
>
> \\ \begin{aligned} (a + b)^2 &= (a + b)(a + b) && \text{(definition of a square)} \\ &= (a + b)\\a + (a + b)\\b && \text{(distributive law)} \\ &= (a^2 + ba) + (ab + b^2) && \text{(distributive law, twice)} \\ &= a^2 + ab + ab + b^2 && \text{(commutative and associative laws)} \\ &= a^2 + 2ab + b^2 && \text{(collect like terms, }\href{#def-like-terms}{\text{Definition~24}}\text{)} \end{aligned} \\
>
> The step “commutative and associative laws” uses [Theorem 13](#thm-prod-symmetric) to write \\ba\\ as \\ab\\, and [Theorem 11](#thm-sum-assoc) to drop the parentheses.

> **NOTE:**
>
> **Theorem 17 (Square of a sum)** For any numbers \\a\\ and \\b\\,
>
> \\ (a + b)^2 = a^2 + 2ab + b^2 \\

> **NOTE:**
>
> *Proof*. By [Solution 4](#sol-square-of-a-sum).

> **NOTE:**
>
> *Remark 8* (Square of a difference). Replacing \\b\\ by \\-b\\ in [Theorem 17](#thm-square-of-a-sum) gives \\(a - b)^2 = a^2 - 2ab + b^2\\. For example, the square \\(y - \hat{y})^2\\ of the difference between an observed value \\y\\ and a prediction \\\hat{y}\\ of it expands this way. With \\y = 5\\ and \\\hat{y} = 3\\, \\(5 - 3)^2 = 2^2 = 4\\, and \\5^2 - 2 \cdot 5 \cdot 3 + 3^2 = 25 - 30 + 9 = 4\\.

## 12 Summation notation

> **NOTE:**
>
> **Exercise 5 (Expand a sum)** The expression \\\sum\_{i=1}^{4} i^2\\ is shorthand for a sum of four terms.
>
> 1.  Guess which four terms, and add them up.
> 2.  Write \\\frac{1}{N} \sum\_{i=1}^{N} \left(y_i - \hat{y}\_i\right)^2\\ for \\N = 3\\ without the \\\sum\\ symbol.

> **NOTE:**
>
> *Solution 5*.
>
> 1.  Replace \\i\\ by each of \\1, 2, 3, 4\\ in turn, and add the results:
>
>     \\ \begin{aligned} \sum\_{i=1}^{4} i^2 &= 1^2 + 2^2 + 3^2 + 4^2 \\ &= 1 + 4 + 9 + 16 \\ &= 30 \end{aligned} \\
>
> &nbsp;
>
> 2.  Replace \\i\\ by each of \\1, 2, 3\\ in turn inside the parentheses, add the three squares, and multiply the total by \\\frac{1}{3}\\:
>
>     \\ \frac{1}{3} \sum\_{i=1}^{3} \left(y_i - \hat{y}\_i\right)^2 = \frac{1}{3} \left\[ \left(y_1 - \hat{y}\_1\right)^2 + \left(y_2 - \hat{y}\_2\right)^2 + \left(y_3 - \hat{y}\_3\right)^2 \right\] \\

> **NOTE:**
>
> **Definition 25 (Summation notation)** Let \\m\\ and \\n\\ be integers with \\m \le n\\, and let \\a_m, a\_{m+1}, \ldots, a_n\\ be numbers. The **sum** of \\a_m\\ through \\a_n\\ is
>
> \\ \sum\_{i=m}^{n} a_i \stackrel{\text{def}}{=}a_m + a\_{m+1} + \cdots + a_n \\
>
> The variable \\i\\ is the **index** of the sum; \\m\\ and \\n\\ are its **lower** and **upper limits**.

> **NOTE:**
>
> *Remark 9* (The index is a placeholder). The name of the index does not change the sum: \\\sum\_{i=1}^{n} a_i\\ and \\\sum\_{j=1}^{n} a_j\\ are the same number. For example, \\\sum\_{i=1}^{3} i = 1 + 2 + 3 = 6\\ and \\\sum\_{j=1}^{3} j = 1 + 2 + 3 = 6\\.

> **NOTE:**
>
> **Definition 26 (Empty sum)** When the upper limit is less than the lower limit (\\n \< m\\), the sum \\\sum\_{i=m}^{n} a_i\\ has no terms. By convention, such an **empty sum** equals \\0\\. For example, \\\sum\_{i=1}^{0} a_i = 0\\.

> **NOTE:**
>
> **Exercise 6 (Rearrange a sum)** Let \\c\\ be a number, and let \\a_1, a_2, a_3\\ and \\b_1, b_2, b_3\\ be numbers. Using [Definition 25](#def-summation) and the rules of algebra above, show that:
>
> 1.  \\\sum\_{i=1}^{3} c\\ a_i = c \sum\_{i=1}^{3} a_i\\;
> 2.  \\\sum\_{i=1}^{3} \left(a_i + b_i\right) = \sum\_{i=1}^{3} a_i + \sum\_{i=1}^{3} b_i\\.
>
> Does either argument depend on there being exactly three terms?

> **NOTE:**
>
> *Solution 6*. Each step below applies [Definition 25](#def-summation), the distributive law ([Theorem 16](#thm-mult-distr)), or the commutative and associative laws of addition ([Theorem 10](#thm-sum-symmetric) and [Theorem 11](#thm-sum-assoc)).
>
> 1.  Expand the sum, then factor out \\c\\:
>
>     \\ \begin{aligned} \sum\_{i=1}^{3} c\\ a_i &= c\\ a_1 + c\\ a_2 + c\\ a_3 && \text{(expand the sum)} \\ &= c \left(a_1 + a_2 + a_3\right) && \text{(distributive law)} \\ &= c \sum\_{i=1}^{3} a_i && \text{(collect the sum)} \end{aligned} \\
>
> &nbsp;
>
> 2.  Expand the sum, then regroup the terms:
>
>     \\ \begin{aligned} \sum\_{i=1}^{3} \left(a_i + b_i\right) &= \left(a_1 + b_1\right) + \left(a_2 + b_2\right) + \left(a_3 + b_3\right) && \text{(expand the sum)} \\ &= \left(a_1 + a_2 + a_3\right) + \left(b_1 + b_2 + b_3\right) && \text{(commutative and associative laws)} \\ &= \sum\_{i=1}^{3} a_i + \sum\_{i=1}^{3} b_i && \text{(collect the sum)} \end{aligned} \\
>
> Neither argument uses the number of terms: the same steps work for any lower and upper limits.

> **NOTE:**
>
> **Theorem 18 (A constant factor comes out of a sum)** For any number \\c\\ and numbers \\a_m, \ldots, a_n\\,
>
> \\ \sum\_{i=m}^{n} c\\ a_i = c \sum\_{i=m}^{n} a_i \\

> **NOTE:**
>
> *Proof*. By [Solution 6](#sol-sum-rules), part 1.

> **NOTE:**
>
> **Theorem 19 (A sum of sums splits)** For any numbers \\a_m, \ldots, a_n\\ and \\b_m, \ldots, b_n\\,
>
> \\ \sum\_{i=m}^{n} \left(a_i + b_i\right) = \sum\_{i=m}^{n} a_i + \sum\_{i=m}^{n} b_i \\

> **NOTE:**
>
> *Proof*. By [Solution 6](#sol-sum-rules), part 2.

> **NOTE:**
>
> **Exercise 7 (Sum over a set)** Let \\A = \mathopen{}\left\\-1, 2, 5\right\\\mathclose{}\\ and let \\f(x) = x^2\\. The expression \\\sum\_{x \in A} f(x)\\ means: add up \\f(x)\\ for each element \\x\\ of \\A\\.
>
> 1.  Write \\\sum\_{x \in A} f(x)\\ without the \\\sum\\ symbol, and compute its value.
> 2.  List the elements of \\A\\ in a different order, and add up the same terms in that order. Is the total the same?

> **NOTE:**
>
> *Solution 7*.
>
> 1.  Replace \\x\\ by each element of \\A\\ in turn, and add the results:
>
>     \\ \begin{aligned} \sum\_{x \in A} f(x) &= f(-1) + f(2) + f(5) \\ &= (-1)^2 + 2^2 + 5^2 \\ &= 1 + 4 + 25 \\ &= 30 \end{aligned} \\
>
> &nbsp;
>
> 2.  In the order \\5, -1, 2\\, the terms are \\25\\, \\1\\ and \\4\\. Their total is \\25 + 1 + 4 = 30\\. The total is the same, because addition does not depend on the order of the terms.

> **NOTE:**
>
> **Definition 27 (Sum over a finite set)** Let \\A = \mathopen{}\left\\x_1, x_2, \ldots, x_k\right\\\mathclose{}\\ be a [finite](sets-functions.llms.md#def-finite-set) [set](sets-functions.llms.md#def-set) with \\k \ge 1\\ different elements. Let \\f\\ be a [function](sets-functions.llms.md#def-function) that gives a number \\f(x)\\ for each element \\x\\ of \\A\\. The **sum of \\f\\ over \\A\\** is
>
> \\ \sum\_{x \in A} f(x) \stackrel{\text{def}}{=}f(x_1) + f(x_2) + \cdots + f(x_k) \\
>
> If \\A\\ has no elements, the sum has no terms, and by convention it equals \\0\\. For example, \\\sum\_{x \in \mathopen{}\left\\\right\\\mathclose{}} x^2 = 0\\.

> **NOTE:**
>
> *Remark 10* (The order of the terms does not matter). The order in which we list the elements of \\A\\ does not change the sum. The reason is that addition is commutative and associative: we can reorder and regroup the terms of a finite sum without changing the total. For example, if \\A = \mathopen{}\left\\1, 2, 3\right\\\mathclose{}\\ and \\f(x) = x^2\\, listing \\A\\ as \\1, 2, 3\\ gives \\1 + 4 + 9 = 14\\, and listing \\A\\ as \\3, 1, 2\\ gives \\9 + 1 + 4 = 14\\. [Exercise 7](#exr-sum-over-set), part 2, shows another example.
>
> When \\A = \mathopen{}\left\\m, m+1, \ldots, n\right\\\mathclose{}\\, this sum is the same as \\\sum\_{i=m}^{n} f(i)\\ from [Definition 25](#def-summation).

> **NOTE:**
>
> *Remark 11* (Leaving the set out). Some authors leave the set out and write \\\sum\_{x} f(x)\\. This shorthand means the sum over every value \\x\\ can take, \\\sum\_{x \in \mathcal{R}(x)} f(x)\\, where \\\mathcal{R}(x)\\ is the [range](notation.llms.md#def-range-of-variable) of \\x\\. For example, if \\x\\ is the outcome of one roll of a six-sided die, \\\sum\_{x} f(x)\\ means \\\sum\_{x \in \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}} f(x)\\. In these notes, we write the set out in full (see [Notational shorthands](notation.llms.md#sec-notational-shorthands)).

## 13 Quotients

> **NOTE:**
>
> **Definition 28 (Quotient)** For real numbers \\a\\ and \\b\\ with \\b \neq 0\\, the **quotient** of \\a\\ by \\b\\ is the result of dividing \\a\\ by \\b\\:
>
> \\\frac{a}{b}\\

> **NOTE:**
>
> **Definition 29 (Fraction, numerator, and denominator)** A quotient \\\frac{a}{b}\\ ([Definition 28](#def-quotient)) is also called a **fraction**; \\a\\ is its **numerator** and \\b\\ its **denominator**. For example, the fraction \\\frac{6}{4}\\ has numerator \\6\\ and denominator \\4\\.

> **NOTE:**
>
> **Example 25 (A quotient)** The quotient of \\6\\ by \\4\\ is \\\frac{6}{4} = 1.5\\. The quotient of \\6\\ by \\0\\ is undefined, because [Definition 28](#def-quotient) requires a nonzero denominator.

> **NOTE:**
>
> **Definition 30 (Follow-up and person-years)** In a study that observes participants over time, a participant’s **follow-up** is the length of time the study observes that participant, and the study’s **person-years** are the sum of the follow-up times of all participants, measured in years.

> **NOTE:**
>
> **Example 26 (Counting person-years)** If \\10\\ people are each followed for \\2\\ years, the study has \\10 \cdot 2 = 20\\ person-years. If one person is followed for \\3\\ years and another for \\\tfrac{1}{2}\\ year, the study has \\3 + \tfrac{1}{2} = 3.5\\ person-years.

> **NOTE:**
>
> **Definition 31 (Rate)** A **rate** is a quotient of two quantities, usually with a denominator that measures time, such as weeks or person-years of follow-up ([Definition 30](#def-person-years)). For example, \\12\\ new cases in \\4\\ weeks is a rate of \\\frac{12}{4} = 3\\ new cases per week, and \\30\\ cases over \\10{,}000\\ person-years of follow-up is a rate of \\\frac{30}{10{,}000} = 0.003\\ cases per person-year.

cf. <https://en.wikipedia.org/wiki/Rate_(mathematics)>

> **NOTE:**
>
> **Definition 32 (Ratios)** A **ratio** is a quotient in which the numerator and denominator are measured using the same unit scales.
>
> cf. <https://en.wikipedia.org/wiki/Ratio>

> **NOTE:**
>
> **Example 27 (A ratio, and a quotient that is not one)**  
>
> - A board \\150\\ cm long and one \\75\\ cm long have length ratio \\\tfrac{150 \text{ cm}}{75 \text{ cm}} = 2\\: both lengths are in centimeters, so the units cancel and the ratio has none.
> - A sample of mass \\300\\ g and volume \\150\\ cm\\^3\\ gives the quotient \\\tfrac{300 \text{ g}}{150 \text{ cm}^3} = 2\\ g per cm\\^3\\, its density. The numerator and denominator are in different units, so this quotient is not a ratio.

> **NOTE:**
>
> **Definition 33 (Proportion)** In statistics, a **proportion** typically means a ratio where the numerator represents a subset of the denominator.
>
> See <https://en.wikipedia.org/wiki/Population_proportion>.
>
> See also <https://en.wikipedia.org/wiki/Proportion_(mathematics)> for other meanings.

> **NOTE:**
>
> **Example 28 (A proportion, and a ratio that is not one)** In a clinic with \\120\\ patients, \\30\\ of whom smoke:
>
> - the proportion of patients who smoke is \\\tfrac{30}{120} = 0.25\\: the \\30\\ smokers are a subset of the \\120\\ patients;
> - the ratio of smokers to non-smokers is \\\tfrac{30}{90} = \tfrac{1}{3}\\. Both counts are of patients, so this quotient is a ratio, but it is not a proportion: the \\30\\ smokers are not part of the \\90\\ non-smokers.

> **NOTE:**
>
> **Definition 34 (Proportional)** Two functions \\f(x)\\ and \\g(x)\\ are **proportional** if their ratio \\\frac{f(x)}{g(x)}\\ does not depend on \\x\\. (cf. <https://en.wikipedia.org/wiki/Proportionality_(mathematics)>)

> **NOTE:**
>
> **Example 29 (Proportional and non-proportional functions)**  
>
> - \\f(x) = 6x^2\\ and \\g(x) = 2x^2\\ are proportional: for \\x \ne 0\\, \\\tfrac{f(x)}{g(x)} = \tfrac{6x^2}{2x^2} = 3\\, which does not depend on \\x\\.
> - \\f(x) = x + 1\\ and \\g(x) = x\\ are not proportional: for \\x \ne 0\\, \\\tfrac{f(x)}{g(x)} = \tfrac{x + 1}{x} = \tfrac{x}{x} + \tfrac{1}{x} = 1 + \tfrac{1}{x}\\, which is \\2\\ at \\x = 1\\ and \\\tfrac{3}{2}\\ at \\x = 2\\.

Additional reference for elementary algebra: <https://en.wikipedia.org/wiki/Population_proportion#Mathematical_definition>

## 14 Polynomials

> **NOTE:**
>
> **Exercise 8 (Reading a polynomial)** Let \\f(x) = 3x^4 - x + 7\\.
>
> 1.  Write \\f\\ in the form \\a_n x^n + a\_{n-1} x^{n-1} + \cdots + a_1 x + a_0\\, listing every coefficient \\a_4, a_3, a_2, a_1, a_0\\.
> 2.  What is the degree of \\f\\, and what is its leading coefficient?

> **NOTE:**
>
> *Solution 8*.
>
> 1.  \\f(x) = 3x^4 + 0 \cdot x^3 + 0 \cdot x^2 + (-1) \cdot x + 7\\, so \\a_4 = 3\\, \\a_3 = 0\\, \\a_2 = 0\\, \\a_1 = -1\\, and \\a_0 = 7\\. Powers of \\x\\ that do not appear have coefficient \\0\\.
>
> 2.  The highest power with a nonzero coefficient is \\x^4\\, so the degree is \\4\\ and the leading coefficient is \\a_4 = 3\\.

> **NOTE:**
>
> **Definition 35 (Constant function)** A [function](sets-functions.llms.md#def-function) \\f : A \to B\\ is **constant** if there is some \\c \in B\\ with \\f(x) = c\\ for all \\x \in A\\.

> **NOTE:**
>
> **Example 30 (Constant and non-constant functions)**  
>
> - \\f(x) = 7\\ on \\\mathbb{R}\\ is constant, with \\c = 7\\.
> - \\f(x) = x^2\\ on \\\mathbb{R}\\ is not constant: \\f(0) = 0\\ but \\f(1) = 1\\.

> **NOTE:**
>
> **Definition 36 (Polynomial)** A **polynomial** (in one variable \\x\\) is a [function](sets-functions.llms.md#def-function) \\f : \mathbb{R}\to \mathbb{R}\\ that can be written as \\ f(x) = a_n x^n + a\_{n-1} x^{n-1} + \cdots + a_1 x + a_0 \\ for some integer \\n \ge 0\\ and constants \\a_0, a_1, \ldots, a_n \in \mathbb{R}\\ with \\a_n \ne 0\\. The constants \\a_0, a_1, \ldots, a_n\\ are the **coefficients** of \\f\\, with \\a_k\\ the coefficient of \\x^k\\, and the [terms](#def-term) of \\f\\ are \\a_n x^n, \ldots, a_1 x, a_0\\.

> **NOTE:**
>
> *Remark 12* (Constant and zero polynomials). A [constant function](#def-constant-function) \\f(x) = 7\\ is a polynomial with \\n = 0\\ and \\a_0 = 7\\. The requirement \\a_n \ne 0\\ means this definition covers nonzero polynomials only: the zero function \\f(x) = 0\\ is excluded here, because it has no nonzero coefficient to serve as \\a_n\\.

> **NOTE:**
>
> **Definition 37 (Degree of a polynomial)** Let \\f(x) = a_n x^n + \cdots + a_1 x + a_0\\ be a [polynomial](#def-polynomial) with \\a_n \ne 0\\. The integer \\n\\ is the **degree** of \\f\\.

> **NOTE:**
>
> **Example 31 (Degrees of some polynomials)**  
>
> - \\f(x) = 4x\\ has degree \\1\\.
> - \\f(x) = 5 - 2x^2 + x^3\\ has degree \\3\\: the degree is the highest power with a nonzero coefficient, not the power in the first term written.
> - A [constant](#def-constant-function) polynomial \\f(x) = 7\\ has degree \\0\\.

> **NOTE:**
>
> **Definition 38 (Leading coefficient)** Let \\f(x) = a_n x^n + \cdots + a_1 x + a_0\\ be a [polynomial](#def-polynomial) of [degree](#def-polynomial-degree) \\n\\. The constant \\a_n\\ is the **leading coefficient** of \\f\\.

> **NOTE:**
>
> **Example 32 (Leading coefficients)**  
>
> - \\f(x) = 5 - 2x^2 + x^3\\ has degree \\3\\, so its leading coefficient is \\a_3 = 1\\, not the \\5\\ written first.
> - \\f(x) = 3 - x^2\\ has leading coefficient \\a_2 = -1\\.

> **NOTE:**
>
> **Definition 39 (Quadratic and cubic polynomials)** A [polynomial](#def-polynomial) of [degree](#def-polynomial-degree) \\2\\, \\f(x) = a_2 x^2 + a_1 x + a_0\\ with \\a_2 \ne 0\\, is a **quadratic** polynomial. A polynomial of degree \\3\\ is a **cubic** polynomial.

> **NOTE:**
>
> **Example 33 (Quadratic and cubic polynomials)**  
>
> - \\f(x) = (x - 2)^2 = x^2 - 4x + 4\\ is quadratic, by [Remark 8](#rem-square-of-a-difference) with \\a = x\\ and \\b = 2\\.
> - \\f(x) = x^3 - 3x\\ is cubic.
> - \\f(x) = 4x + 1\\ is neither: it has degree \\1\\.

> **NOTE:**
>
> **Definition 40 (Parabola)** A **parabola** is the [graph](sets-functions.llms.md#def-graph) of a quadratic polynomial ([Definition 39](#def-quadratic-cubic)).

> **NOTE:**
>
> **Example 34 (The parabola \\y = x^2\\)** The graph of \\f(x) = x^2\\ is a parabola. It contains the points \\(-1, 1)\\, \\(0, 0)\\ and \\(2, 4)\\, and its lowest point is \\(0, 0)\\, since \\x^2 \ge 0\\ for every \\x\\.

## 15 Affine and linear functions of one variable

> **NOTE:**
>
> **Definition 41 (Affine function of one variable)** A [function](sets-functions.llms.md#def-function) \\f: \mathbb{R}\to \mathbb{R}\\ is **affine** if there are numbers \\m\\ and \\b\\ such that
>
> \\f(x) = m x + b \quad \text{for all } x \in \mathbb{R}\\
>
> In this formula, \\m\\ is called the **slope** of \\f\\ and \\b\\ its **intercept**.

> **NOTE:**
>
> **Definition 42 (Linear function of one variable)** A function \\f: \mathbb{R}\to \mathbb{R}\\ is **linear** if it is affine ([Definition 41](#def-affine-function)) with intercept \\0\\; that is, if there is a number \\m\\ such that
>
> \\f(x) = m x \quad \text{for all } x \in \mathbb{R}\\

> **NOTE:**
>
> **Theorem 20 (Intercept and slope of an affine function)** Let \\f(x) = m x + b\\ be an affine function ([Definition 41](#def-affine-function)).
>
> 1.  The intercept is the value at zero: \\f(0) = b\\.
> 2.  The slope is the change in \\f\\ per unit change in \\x\\: for any \\x_1 \neq x_2\\, \\\frac{f(x_2) - f(x_1)}{x_2 - x_1} = m\\
> 3.  So \\f\\ determines its slope and intercept: if also \\f(x) = m' x + b'\\ for all \\x\\, then \\m' = m\\ and \\b' = b\\.

> **NOTE:**
>
> *Proof*. **Part 1.**
>
> \\ \begin{aligned} f(0) &= m \cdot 0 + b && \text{(}\href{#def-affine-function}{\text{Definition~41}}\text{)} \\&= 0 + b && \text{(any number times } 0 \text{ is } 0 \text{)} \\&= b + 0 && \text{(}\href{#thm-sum-symmetric}{\text{Theorem~10}}\text{)} \\&= b && \text{(}\href{#thm-add-ident}{\text{Theorem~9}}\text{)} \end{aligned} \\
>
> **Part 2.** First the numerator:
>
> \\ \begin{aligned} f(x_2) - f(x_1) &= (m x_2 + b) - (m x_1 + b) && \text{(}\href{#def-affine-function}{\text{Definition~41}}\text{)} \\&= m x_2 + b - m x_1 - b && \text{(subtracting a sum subtracts each term)} \\&= m x_2 - m x_1 + b - b && \text{(}\href{#thm-sum-symmetric}{\text{Theorem~10}}\text{, swapping } b \text{ and } {-m x_1} \text{)} \\&= (m x_2 - m x_1) + (b - b) && \text{(}\href{#thm-sum-assoc}{\text{Theorem~11}}\text{)} \\&= (m x_2 - m x_1) + 0 && (b - b = 0) \\&= m x_2 - m x_1 && \text{(}\href{#thm-add-ident}{\text{Theorem~9}}\text{)} \\&= m x_2 + m (-x_1) && (-(m x_1) = m (-x_1) \text{, by }\href{#thm-negative-one}{\text{Theorem~6}}\text{ and }\href{#thm-prod-assoc}{\text{Theorem~14}}\text{)} \\&= m (x_2 + (-x_1)) && \text{(}\href{#thm-mult-distr}{\text{Theorem~16}}\text{, read right to left)} \\&= m (x_2 - x_1) && \text{(adding a negative is subtracting)} \end{aligned} \\
>
> Then, writing \\d = x_2 - x_1\\, which is not \\0\\ because \\x_1 \neq x_2\\,
>
> \\ \begin{aligned} \frac{f(x_2) - f(x_1)}{x_2 - x_1} &= \frac{m d}{d} && \text{(the numerator above)} \\&= (m d) \cdot\frac{1}{d} && \text{(}\href{#thm-prod-div}{\text{Theorem~15}}\text{)} \\&= m \cdot\mathopen{}\left(d \cdot\frac{1}{d}\right)\mathclose{} && \text{(}\href{#thm-prod-assoc}{\text{Theorem~14}}\text{)} \\&= m \cdot\frac{d}{d} && \text{(}\href{#thm-prod-div}{\text{Theorem~15}}\text{)} \\&= m \cdot 1 && \text{(a nonzero number divided by itself is } 1 \text{)} \\&= m && \text{(}\href{#thm-mult-one}{\text{Theorem~12}}\text{)} \end{aligned} \\
>
> **Part 3.** Part 1, applied to each formula, gives \\b = f(0) = b'\\. Part 2 with \\x_1 = 0\\ and \\x_2 = 1\\, applied to each formula, gives \\m = f(1) - f(0) = m'\\.

> **NOTE:**
>
> **Example 35 (An affine function, and a linear one)** \\f(x) = 2x + 3\\ is affine with slope \\2\\ and intercept \\3\\. By [Theorem 20](#thm-affine-function-props), \\f(0) = 3\\, and each unit step in \\x\\ raises \\f\\ by \\2\\: for example, \\f(1) = 5\\ and \\f(2) = 7\\. Its intercept is not \\0\\, so it is not linear.
>
> \\g(x) = -\tfrac{1}{2} x\\ is affine with intercept \\0\\, so it is linear: \\g(0) = 0\\, and each unit step in \\x\\ lowers \\g\\ by \\\tfrac{1}{2}\\.

> **NOTE:**
>
> *Remark 13* (Elementary algebra calls \\m x + b\\ “linear”). Elementary algebra usually calls \\f(x) = m x + b\\ a *linear function*, because its graph is a straight line. This site calls that an affine function and keeps “linear” for the case \\b = 0\\, because that is the sense used in linear algebra, where a [linear map](linear-algebra.llms.md#def-linear-map) must send \\0\\ to \\0\\ ([theorem](linear-algebra.llms.md#thm-linear-map-zero)).

## 16 Limits of sequences

> **NOTE:**
>
> **Definition 43 (Limit of a sequence)** A [sequence](sets-functions.llms.md#def-sequence) \\(a_n)\\ of real numbers **converges** to a real number \\L\\, written \\\lim\_{n \to \infty} a_n = L\\ or \\a_n \to L\\, if for every \\\epsilon \> 0\\ there is a natural number \\N\\ such that
>
> \\\mathopen{}\left\|a_n - L\right\|\mathclose{} \< \epsilon \quad \text{for every } n \ge N.\\
>
> Then \\L\\ is the **limit** of the sequence. A sequence that converges to some real number is **convergent**, and a sequence that does not converge to any real number **diverges**. A sequence **diverges to \\\infty\\**, written \\\lim\_{n \to \infty} a_n = \infty\\, if for every real number \\M\\ there is a natural number \\N\\ such that \\a_n \> M\\ for every \\n \ge N\\.

> **NOTE:**
>
> **Example 36 (A convergent sequence and a divergent one)**  
>
> - \\a_n = \frac{1}{n}\\ converges to \\0\\. Given \\\epsilon \> 0\\, take \\N\\ to be any natural number larger than \\\frac{1}{\epsilon}\\. For every \\n \ge N\\, \\\mathopen{}\left\|\frac{1}{n} - 0\right\|\mathclose{} = \frac{1}{n} \le \frac{1}{N} \< \epsilon\\. For example, with \\\epsilon = 0.01\\, take \\N = 101\\: every \\n \ge 101\\ has \\\frac{1}{n} \le \frac{1}{101} \< 0.01\\.
> - \\c_n = n\\ diverges. For any real number \\L\\ and \\\epsilon = 1\\, every \\n \> L + 1\\ has \\\mathopen{}\left\|n - L\right\|\mathclose{} \> 1\\, so no \\N\\ works. For example, with \\L = 5\\, every \\n \ge 7\\ has \\\mathopen{}\left\|n - 5\right\|\mathclose{} \ge 2\\. It diverges to \\\infty\\: for every real number \\M\\, every \\n \ge N\\ has \\c_n = n \> M\\ when \\N\\ is a natural number larger than \\M\\.

## 17 Exponentials and Logarithms

> **NOTE:**
>
> **Definition 44 (Exponential function)** The **exponential function** \\\operatorname{exp}: \mathbb{R}\to (0, \infty)\\ is
>
> \\\operatorname{exp}\mathopen{}\left\\x\right\\\mathclose{} \stackrel{\text{def}}{=}\lim\_{n \to \infty} \mathopen{}\left(1 + \frac{x}{n}\right)\mathclose{}^n,\\
>
> the [limit](#def-sequence-limit) of the [sequence](sets-functions.llms.md#def-sequence) \\\mathopen{}\left(1 + \frac{x}{1}\right)\mathclose{}^1, \mathopen{}\left(1 + \frac{x}{2}\right)\mathclose{}^2, \mathopen{}\left(1 + \frac{x}{3}\right)\mathclose{}^3, \ldots\\. That limit exists for every real number \\x\\, and it is positive.

> **NOTE:**
>
> **Example 37 (Approximating \\\operatorname{exp}\mathopen{}\left\\1\right\\\mathclose{}\\)** For \\x = 1\\, the terms \\\mathopen{}\left(1 + \frac{1}{n}\right)\mathclose{}^n\\ are:
>
> |    \\n\\ | \\\mathopen{}\left(1 + \frac{1}{n}\right)\mathclose{}^n\\ |
> |---------:|:----------------------------------------------------------|
> |    \\1\\ | \\2\\                                                     |
> |   \\10\\ | \\2.59374\ldots\\                                         |
> |  \\100\\ | \\2.70481\ldots\\                                         |
> | \\1000\\ | \\2.71692\ldots\\                                         |
>
> They approach \\\operatorname{exp}\mathopen{}\left\\1\right\\\mathclose{} = 2.71828\ldots\\. For \\x = 0\\, every term is \\\mathopen{}\left(1 + 0\right)\mathclose{}^n = 1\\, so \\\operatorname{exp}\mathopen{}\left\\0\right\\\mathclose{} = 1\\.

> **NOTE:**
>
> **Definition 45 (Euler’s number)** **Euler’s number** is
>
> \\e \stackrel{\text{def}}{=}\operatorname{exp}\mathopen{}\left\\1\right\\\mathclose{} = 2.71828\ldots\\

> **NOTE:**
>
> **Example 38 (Euler’s number is irrational)** \\e = 2.71828\ldots\\ is an [irrational number](notation.llms.md#def-irrational-numbers), so no fraction equals it exactly. The fraction \\\frac{19}{7} = 2.714\ldots\\ is close, but \\\frac{19}{7} \ne e\\ (see [Wikipedia: e (mathematical constant)](https://en.wikipedia.org/wiki/E_(mathematical_constant))).

> **NOTE:**
>
> **Definition 46 (Natural logarithm)** For a real number \\a \> 0\\, the **natural logarithm** of \\a\\, written \\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{}\\, is the real number \\y\\ with \\\operatorname{exp}\mathopen{}\left\\y\right\\\mathclose{} = a\\. The exponential function takes each positive value at exactly one input, so there is exactly one such \\y\\, and \\\log : (0, \infty) \to \mathbb{R}\\ is the [inverse function](sets-functions.llms.md#def-inverse-function) of \\\operatorname{exp}\\ ([Definition 44](#def-exponential-function)).

> **NOTE:**
>
> *Remark 14* (Other notations for the natural logarithm). In these notes, \\\operatorname{log}\mathopen{}\left\\x\right\\\mathclose{}\\ is always the natural logarithm, the logarithm with base \\e\\ ([Definition 45](#def-euler-number)). Some sources write \\\ln x\\ for the natural logarithm and reserve \\\log x\\ for the logarithm with base 10.

> **NOTE:**
>
> **Example 39 (Natural logarithms)**  
>
> - \\\operatorname{log}\mathopen{}\left\\1\right\\\mathclose{} = 0\\, because \\\operatorname{exp}\mathopen{}\left\\0\right\\\mathclose{} = 1\\ ([Example 37](#exm-exponential-function)).
> - \\\operatorname{log}\mathopen{}\left\\e\right\\\mathclose{} = 1\\, because \\\operatorname{exp}\mathopen{}\left\\1\right\\\mathclose{} = e\\ ([Definition 45](#def-euler-number)).
> - \\\operatorname{log}\mathopen{}\left\\0\right\\\mathclose{}\\ and \\\operatorname{log}\mathopen{}\left\\-2\right\\\mathclose{}\\ are not defined, because \\\operatorname{exp}\mathopen{}\left\\y\right\\\mathclose{} \> 0\\ for every real \\y\\.

> **NOTE:**
>
> **Definition 47 (Power with a real exponent)** For a real number \\a \> 0\\ and a real number \\b\\,
>
> \\a^b \stackrel{\text{def}}{=}\operatorname{exp}\mathopen{}\left\\b \cdot\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{}\right\\\mathclose{}.\\
>
> When \\b\\ is an integer, this agrees with [Definition 4](#def-power).

> **NOTE:**
>
> **Example 40 (Real powers, and \\e^x\\)**  
>
> - \\2^3 = \operatorname{exp}\mathopen{}\left\\3 \cdot\operatorname{log}\mathopen{}\left\\2\right\\\mathclose{}\right\\\mathclose{} \approx \operatorname{exp}\mathopen{}\left\\3 \cdot 0.69315\right\\\mathclose{} \approx \operatorname{exp}\mathopen{}\left\\2.07944\right\\\mathclose{} \approx 8\\, which agrees with \\2^3 = 2 \cdot 2 \cdot 2 = 8\\ from [Definition 4](#def-power).
>
> - \\2^{1/2} = \operatorname{exp}\mathopen{}\left\\\frac{1}{2} \cdot\operatorname{log}\mathopen{}\left\\2\right\\\mathclose{}\right\\\mathclose{} \approx \operatorname{exp}\mathopen{}\left\\0.34657\right\\\mathclose{} \approx 1.41421\\, which is \\\sqrt{2}\\ ([Definition 5](#def-square-root)).
>
> - For every real \\x\\, with base \\e\\ ([Definition 45](#def-euler-number)):
>
>   \\ \begin{aligned} e^x &= \operatorname{exp}\mathopen{}\left\\x \cdot\operatorname{log}\mathopen{}\left\\e\right\\\mathclose{}\right\\\mathclose{} && \text{(}\href{#def-real-power}{\text{Definition~47}}\text{, with } a = e \text{ and } b = x \text{)} \\ &= \operatorname{exp}\mathopen{}\left\\x \cdot 1\right\\\mathclose{} && \text{(}\operatorname{log}\mathopen{}\left\\e\right\\\mathclose{} = 1 \text{, by }\href{#exm-natural-log}{\text{Example~39}}\text{)} \\ &= \operatorname{exp}\mathopen{}\left\\x\right\\\mathclose{} && \text{(}\href{#thm-mult-one}{\text{Theorem~12}}\text{)} \end{aligned} \\
>
>   So \\e^x\\ and \\\operatorname{exp}\mathopen{}\left\\x\right\\\mathclose{}\\ are two names for the same number.

> **NOTE:**
>
> **Definition 48 (Real powers of zero and of negative numbers)** [Definition 4](#def-power) and [Definition 47](#def-real-power) leave some powers \\b^c\\ with \\b \le 0\\ unassigned. We complete them as follows.
>
> - For a real number \\c \> 0\\, \\0^c \stackrel{\text{def}}{=}0\\. For a natural number \\c\\, this agrees with [Definition 4](#def-power).
> - For \\b \< 0\\, \\b^c\\ is defined only when \\c\\ is an [integer](notation.llms.md#def-integers), by [Definition 4](#def-power); for \\b \< 0\\ and a non-integer \\c\\, \\b^c\\ is undefined.

> **NOTE:**
>
> **Example 41 (Powers of zero and of negative numbers)**  
>
> - \\0^{1/2} = 0\\, which agrees with \\\sqrt{0} = 0\\ ([Definition 5](#def-square-root)).
> - \\(-8)^2 = 64\\ and \\(-8)^{-1} = -\tfrac{1}{8}\\ are defined, since the exponents are integers.
> - \\(-8)^{1/3}\\ is undefined, even though \\(-2)^3 = -8\\. R follows the same convention: `(-8)^(1/3)` is `NaN`.

> **NOTE:**
>
> **Theorem 21 (\\\operatorname{exp}\\ and \\\operatorname{log}\\ are mutual inverses)**  
>
> 1.  For every \\a \> 0\\: \\\operatorname{exp}\mathopen{}\left\\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{}\right\\\mathclose{} = a\\.
> 2.  For every \\a \in \mathbb{R}\\: \\\operatorname{log}\mathopen{}\left\\\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{}\right\\\mathclose{} = a\\.

> **NOTE:**
>
> **Theorem 22 (Logarithm of a product)** If \\a \> 0\\ and \\b \> 0\\, then
>
> \\ \operatorname{log}\mathopen{}\left\\a \cdot b\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} + \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} \\

> **NOTE:**
>
> **Corollary 1 (Logarithm of a quotient)** If \\a \> 0\\ and \\b \> 0\\, then
>
> \\\operatorname{log}\mathopen{}\left\\\frac{a}{b}\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} - \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{}\\

> **NOTE:**
>
> *Proof*. Since \\a \> 0\\ and \\b \> 0\\, the quotient \\\frac{a}{b}\\ is positive, so [Theorem 22](#thm-log-prod) applies to the product \\\frac{a}{b} \cdot b\\:
>
> \\ \begin{aligned} \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} &= \operatorname{log}\mathopen{}\left\\\frac{a}{b} \cdot b\right\\\mathclose{} && \text{(} a = \tfrac{a}{b} \cdot b \text{)} \\ &= \operatorname{log}\mathopen{}\left\\\frac{a}{b}\right\\\mathclose{} + \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} && \text{(logarithm of a product)} \end{aligned} \\
>
> The second step applies [Theorem 22](#thm-log-prod). Subtracting \\\operatorname{log}\mathopen{}\left\\b\right\\\mathclose{}\\ from both sides gives \\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} - \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\\frac{a}{b}\right\\\mathclose{}\\.

> **NOTE:**
>
> **Theorem 23 (Logarithm of a power)** If \\a \> 0\\ and \\b \in \mathbb{R}\\, then
>
> \\ \operatorname{log}\mathopen{}\left\\a^b\right\\\mathclose{} = b \cdot\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} \\

> **NOTE:**
>
> **Theorem 24 (Exponential of a sum)** The exponential of a sum is equal to the product of the exponentials of its [terms](#def-term):
>
> \\\operatorname{exp}\mathopen{}\left\\a+b\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{} \cdot\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{}\\

> **NOTE:**
>
> **Example 42 (Exponential of a sum)** With \\a = 2\\ and \\b = 3\\, \\\operatorname{exp}\mathopen{}\left\\2 + 3\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\5\right\\\mathclose{} \approx 148.41\\, and \\\operatorname{exp}\mathopen{}\left\\2\right\\\mathclose{} \cdot\operatorname{exp}\mathopen{}\left\\3\right\\\mathclose{} \approx 7.3891 \cdot 20.0855 \approx 148.41\\.

> **NOTE:**
>
> **Corollary 2 (Exponential of a difference)** The exponential of a difference is the exponential of the first term divided by the exponential of the second term:
>
> \\\operatorname{exp}\mathopen{}\left\\a-b\right\\\mathclose{} = \frac{\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{}}{\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{}}\\

> **NOTE:**
>
> **Example 43 (Exponential of a difference)** With \\a = 5\\ and \\b = 2\\, \\\operatorname{exp}\mathopen{}\left\\5 - 2\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\3\right\\\mathclose{} \approx 20.09\\, and \\\frac{\operatorname{exp}\mathopen{}\left\\5\right\\\mathclose{}}{\operatorname{exp}\mathopen{}\left\\2\right\\\mathclose{}} \approx \frac{148.4132}{7.3891} \approx 20.09\\.

> **NOTE:**
>
> **Theorem 25 (Powers of 1 and first powers)** For every \\b \in \mathbb{R}\\,
>
> \\1^b = 1,\\
>
> and for every \\a \in \mathbb{R}\\,
>
> \\a^1 = a.\\

> **NOTE:**
>
> **Theorem 26 (Power of a sum)** If \\a \> 0\\ and \\b, c \in \mathbb{R}\\, then
>
> \\a^{b+c} = a^b \cdot a^c\\

> **NOTE:**
>
> **Example 44 (Power of a sum)** With \\a = 2\\, \\b = 3\\, and \\c = 4\\, \\2^{3+4} = 2^7 = 128\\, and \\2^3 \cdot 2^4 = 8 \cdot 16 = 128\\.

> **NOTE:**
>
> **Theorem 27 (Power of a product)** If \\a, b \> 0\\ and \\c \in \mathbb{R}\\, then
>
> \\(ab)^c = a^c \cdot b^c\\
>
> When \\c\\ is a positive integer, the same identity holds for all \\a, b \in \mathbb{R}\\, because both sides are products of \\c\\ copies of \\a\\ and \\c\\ copies of \\b\\, which can be regrouped by [Theorem 13](#thm-prod-symmetric) and [Theorem 14](#thm-prod-assoc).

> **NOTE:**
>
> **Example 45 (Power of a product)** With \\a = 2\\, \\b = 3\\, and \\c = 2\\, \\(2 \cdot 3)^2 = 6^2 = 36\\, and \\2^2 \cdot 3^2 = 4 \cdot 9 = 36\\.

> **NOTE:**
>
> **Theorem 28 (Power of a power)** If \\a \> 0\\ and \\b, c \in \mathbb{R}\\, then
>
> \\a^{bc} = \mathopen{}\left(a^b\right)\mathclose{}^c = \mathopen{}\left(a^c\right)\mathclose{}^b\\

> **NOTE:**
>
> **Example 46 (A negative base)** With \\a = -1\\, \\b = 2\\, and \\c = \frac{1}{2}\\:
>
> \\ \begin{aligned} a^{bc} &= (-1)^{2 \cdot\frac{1}{2}} \\ &= (-1)^{1} \\ &= -1 \end{aligned} \\
>
> but
>
> \\ \begin{aligned} \mathopen{}\left(a^b\right)\mathclose{}^c &= \mathopen{}\left((-1)^2\right)\mathclose{}^{\frac{1}{2}} \\ &= 1^{\frac{1}{2}} \\ &= 1 \end{aligned} \\
>
> So \\a^{bc} \neq \mathopen{}\left(a^b\right)\mathclose{}^c\\ here, which is why [Theorem 28](#thm-double-exp) requires \\a \> 0\\. The third expression, \\\mathopen{}\left(a^c\right)\mathclose{}^b = \mathopen{}\left((-1)^{\frac{1}{2}}\right)\mathclose{}^2\\, is not even a real number.

> **NOTE:**
>
> **Corollary 3 (Natural exponential of a product)** \\\operatorname{exp}\mathopen{}\left\\ab\right\\\mathclose{} = (\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{})^b = (\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{})^a\\

> **NOTE:**
>
> *Remark 15* (Tarski’s high school identities). Restricted to positive integers, the following results are [Tarski’s eleven “high school” identities](https://en.wikipedia.org/wiki/Tarski%27s_high_school_algebra_problem):
>
> - sums are symmetric and associative ([Theorem 10](#thm-sum-symmetric), [Theorem 11](#thm-sum-assoc));
> - multiplying by 1 changes nothing, products are symmetric and associative, and multiplication is distributive ([Theorem 12](#thm-mult-one), [Theorem 13](#thm-prod-symmetric), [Theorem 14](#thm-prod-assoc), [Theorem 16](#thm-mult-distr));
> - \\1^b = 1\\, \\a^1 = a\\, and the power of a sum, of a product, and of a power ([Theorem 25](#thm-power-one), [Theorem 26](#thm-power-sum), [Theorem 27](#thm-power-product), [Theorem 28](#thm-double-exp)).

> **NOTE:**
>
> *Remark 16* (Tarski’s identities are not complete). Tarski asked whether every identity in \\+\\, \\\times\\, exponentiation and 1 that is true for all positive integers can be derived from the eleven identities in [Remark 15](#rem-tarski-identities). It cannot: Wilkie found an identity that is true for all positive integers but does not follow from them. So this list is a useful core, not a complete rulebook.

> **NOTE:**
>
> **Definition 49 (Contour line)** For a function \\g\\ of two real variables \\b\\ and \\c\\ and a number \\k\\, the **contour line** of \\g\\ at height \\k\\ is the set of points where \\g\\ equals \\k\\:
>
> \\\mathopen{}\left\\(b, c) : g(b, c) = k\right\\\mathclose{}\\
>
> On a plot of the surface \\z = g(b, c)\\, it is the curve along which the surface has height \\k\\.

> **NOTE:**
>
> **Example 47 (Contour lines of a bowl)** For \\g(b, c) = b^2 + c^2\\, the contour line at height \\k = 4\\ is \\\mathopen{}\left\\(b, c) : b^2 + c^2 = 4\right\\\mathclose{}\\, the circle of radius \\2\\ around \\(0, 0)\\: for example, \\g(2, 0) = 4 + 0 = 4\\ and \\g(0, -2) = 0 + 4 = 4\\. The contour line at height \\k = -1\\ is empty, because \\b^2 + c^2 \ge 0\\ for all \\b\\ and \\c\\.

> **NOTE:**
>
> **Exercise 9 (Exponentiation versus multiplication)** For \\b,c \in \mathbb{R}\\, when does \\b^c = bc\\?

> **NOTE:**
>
> *Solution 9*. We only count a pair \\(b, c)\\ when \\b^c\\ is defined, so for \\b \< 0\\ we only consider integer \\c\\ ([Definition 48](#def-power-nonpositive-base)). With that convention, \\bc = b^c\\ in each of the following cases:
>
> 1.  \\c = 1\\, for every \\b\\.
> 2.  \\b = 0\\ and \\c \> 0\\, since then \\b^c = 0 = bc\\. (\\b = 0\\ and \\c = 0\\ fails, since \\0^0 = 1 \neq 0\\.)
> 3.  \\b \> 0\\, \\c \> 0\\, \\c \neq 1\\, and \\b = \operatorname{exp}\mathopen{}\left\\\frac{\operatorname{log}\mathopen{}\left\\c\right\\\mathclose{}}{c-1}\right\\\mathclose{}\\. For \\b \> 0\\, dividing both sides of \\b^c = bc\\ by \\b\\ gives \\b^{c-1} = c\\, which needs \\c \> 0\\ because \\b^{c-1} \> 0\\; taking logarithms then gives \\(c-1)\operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\c\right\\\mathclose{}\\. For example, \\c = 2\\ gives \\b = 2\\, and indeed \\2^2 = 4 = 2 \cdot 2\\.
>
> &nbsp;
>
> 4.  \\b \< 0\\ and \\c\\ is an odd integer with \\c \ge 3\\, with \\b = -c^{1/(c-1)}\\; for example, \\b = -\sqrt{3}\\ and \\c = 3\\ give \\b^c = -3\sqrt{3} = bc\\.
> 5.  \\b \< 0\\ and \\c\\ is an even integer with \\c \le -2\\, with \\b = -(-c)^{1/(c-1)}\\; for example, \\b = -2^{-1/3}\\ and \\c = -2\\ give \\b^c = 2^{2/3} = bc\\.
>
> For \\b \< 0\\, cases 4 and 5 come from \\b^{c-1} = c\\ as well: when \\c - 1\\ is even, \\b^{c-1} \> 0\\, so \\c\\ must be positive; when \\c - 1\\ is odd, \\b^{c-1} \< 0\\, so \\c\\ must be negative.
>
> See the red contours in [Figure 2](#fig-double-exponential2) for a visualization of the \\b \ge 0\\ cases.
>
> Show R code
>
> ``` downlit
> mult_f <- function(b, c) b * c
> pow_f <- function(b, c) b^c
> values_b <- seq(0, 5, by = .01)
> values_c <- seq(-.5, 3, by = .01)
>
> mult_mat <- outer(values_b, values_c, mult_f)
> pow_mat <- outer(values_b, values_c, pow_f)
> pow_mat[is.infinite(pow_mat)] <- NA
>
> opacity <- .3
> z_min <- min(mult_mat, pow_mat, na.rm = TRUE)
> z_max <- 5
> plotly::plot_ly(
>   x = ~values_b,
>   y = ~values_c
> ) |>
>   plotly::add_surface(
>     z = ~ t(mult_mat),
>     contours = list(
>       z = list(
>         show = TRUE,
>         start = -1,
>         end = 1,
>         size = .1
>       )
>     ),
>     name = "b*c",
>     showscale = FALSE,
>     opacity = opacity,
>     colorscale = list(c(0, 1), c("green", "green"))
>   ) |>
>   plotly::add_surface(
>     opacity = opacity,
>     colorscale = list(c(0, 1), c("red", "red")),
>     z = ~ t(pow_mat),
>     contours = list(
>       z = list(
>         show = TRUE,
>         start = z_min,
>         end = z_max,
>         size = .2
>       )
>     ),
>     showscale = FALSE,
>     name = "b^c"
>   ) |>
>   plotly::layout(
>     scene = list(
>       xaxis = list(
>         # type = "log",
>         title = "b"
>       ),
>       yaxis = list(
>         # type = "log",
>         title = "c"
>       ),
>       zaxis = list(
>         # type = "log",
>         range = c(z_min, z_max),
>         title = "outcome"
>       ),
>       camera = list(eye = list(x = -1.25, y = -1.25, z = 0.5)),
>       aspectratio = list(x = .9, y = .8, z = 0.7)
>     )
>   )
> ```
>
> Figure 1: Graph of \\b\*c\\ and \\b^c\\
>
> Show R code
>
> ``` downlit
> pow_minus_mult_f <- function(b, c) pow_f(b, c) - mult_f(b, c)
>
> mat1 <- outer(values_b, values_c, pow_minus_mult_f)
> mat1[is.infinite(mat1)] <- NA
>
> opacity <- .3
> plotly::plot_ly(
>   x = ~values_b,
>   y = ~values_c
> ) |>
>   plotly::add_surface(
>     z = ~ t(mat1),
>     contours = list(
>       z = list(
>         show = TRUE,
>         start = 0,
>         end = 1,
>         size = 1,
>         color = "red"
>       )
>     ),
>     name = "b^c - b*c",
>     showscale = TRUE,
>     opacity = opacity
>   ) |>
>   plotly::layout(
>     scene = list(
>       xaxis = list(
>         # type = "log",
>         title = "b"
>       ),
>       yaxis = list(
>         # type = "log",
>         title = "c"
>       ),
>       zaxis = list(
>         title = "outcome"
>       ),
>       camera = list(eye = list(x = -1.25, y = -1.25, z = 0.5)),
>       aspectratio = list(x = .9, y = .8, z = 0.7)
>     )
>   )
> ```
>
> Figure 2: **Graph of \\b^c - b\*c\\**. The red [contour lines](#def-contour-line) are at heights \\0\\ and \\1\\; the ones at height \\0\\ show where \\b^c = b\*c\\.

> **NOTE:**
>
> **Exercise 10 (Repeated exponentiation)** For \\a \ge 0,~b,c \in \mathbb{R}\\, when does \\(a^b)^c = a^{(b^c)}\\?

> **NOTE:**
>
> *Solution 10*. Short answer: rarely (that’s all you need to know for this course).
>
> Long answer:
>
> Split on whether \\a \> 0\\ or \\a = 0\\, because the logarithm we use for \\a \> 0\\ is undefined at \\a = 0\\.
>
> **Case \\a \> 0\\.** By [Theorem 28](#thm-double-exp), \\(a^b)^c = a^{bc}\\, so the question becomes when \\a^{bc} = a^{(b^c)}\\ (for pairs \\(b, c)\\ where \\b^c\\ is defined). Because \\a \> 0\\, both sides are positive, and we can take logarithms ([Theorem 23](#thm-log-exp)):
>
> \\ \begin{aligned} a^{bc} &= a^{(b^c)} \\ \operatorname{log}\mathopen{}\left\\a^{bc}\right\\\mathclose{} &= \operatorname{log}\mathopen{}\left\\a^{(b^c)}\right\\\mathclose{} && \text{(take logarithms of both sides)} \\ bc \cdot \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} &= b^c\cdot \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} && \text{(logarithm of a power)} \end{aligned} \tag{1}\\
>
> The last line of [Equation 1](#eq-double-exp-log-scale) holds exactly when
>
> 1.  \\a = 1\\ (so that \\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} = 0\\), or
> 2.  \\bc = b^c\\ (see [Exercise 9](#exr-exp-vs-mult)).
>
> **Case \\a = 0\\.** Here we cannot take logarithms, so we work from the values of powers of \\0\\: \\0^s = 0\\ for \\s \> 0\\ ([Definition 48](#def-power-nonpositive-base)), \\0^0 = 1\\, and \\0^s\\ is undefined for \\s \< 0\\.
>
> - If \\b \< 0\\, then \\0^b\\ is undefined, so \\(a^b)^c\\ is undefined.
> - If \\b \> 0\\, then \\(0^b)^c = 0^c\\ and \\b^c \> 0\\, so \\0^{(b^c)} = 0\\; the two sides agree exactly when \\c \> 0\\.
> - If \\b = 0\\, then \\(0^0)^c = 1^c = 1\\; for \\c \> 0\\, \\0^{(0^c)} = 0^0 = 1\\, so the two sides agree, and for \\c \le 0\\ they do not.
>
> So for \\a = 0\\, \\(a^b)^c = a^{(b^c)}\\ exactly when \\b \ge 0\\ and \\c \> 0\\.
>
> In particular, when \\a = 0\\, \\b \ge 0\\, and \\c = 0\\, the two sides differ:
>
> \\ \begin{aligned} (a^b)^c &= (0^b)^0 \\ &= 1 \end{aligned} \\
>
> \\ \begin{aligned} a^{(b^c)} &= 0^{(b^0)} \\ &= 0^1 \\ &= 0 \end{aligned} \\

## 18 Complex numbers

> **NOTE:**
>
> **Definition 50 (Imaginary unit)** The **imaginary unit** \\i\\ is a number whose square is \\-1\\:
>
> \\i^2 \stackrel{\text{def}}{=}-1.\\
>
> Apart from that one rule, \\i\\ obeys the usual rules of arithmetic:
>
> - sums and products with \\i\\ are [commutative](#def-commutative);
> - sums and products with \\i\\ are [associative](#def-associative);
> - multiplication [distributes](#def-distributive) over addition.
>
> The number \\-i\\ also squares to \\-1\\, since \\(-i)^2 = (-1)^2\\i^2 = -1\\; \\i\\ names one of these two square roots, chosen once and for all.

Axler ([2024](#ref-axler2024linear), Definition 1.1, p. 2) makes this idea rigorous: it defines a complex number as an ordered pair \\(a, b)\\ of real numbers, written \\a + bi\\, defines addition and multiplication of such pairs, writes \\0 + 1i\\ as \\i\\, and leaves it to the reader to verify that \\i^2 = -1\\.

> **NOTE:**
>
> **Example 48 (Powers of the imaginary unit)** The powers of \\i\\ repeat in a cycle of four:
>
> \\ \begin{aligned} i^3 &= i^2 \cdot i && \text{(split off one factor of } i \text{)} \\ &= (-1) \cdot i && \text{(}\href{#def-imaginary-unit}{\text{Definition~50}}\text{)} \\ &= -i && \text{(multiply)} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} i^4 &= i^2 \cdot i^2 && \text{(split the power into two squares)} \\ &= (-1) \cdot(-1) && \text{(}\href{#def-imaginary-unit}{\text{Definition~50}}\text{, twice)} \\ &= 1 && \text{(multiply)} \end{aligned} \\
>
> so the cycle starts again:
>
> \\ \begin{aligned} i^5 &= i^4 \cdot i && \text{(split off one factor of } i \text{)} \\ &= 1 \cdot i && \text{(} i^4 = 1 \text{)} \\ &= i && \text{(multiply)} \end{aligned} \\
>
> and the powers run \\i, -1, -i, 1, i, \ldots\\.

> **NOTE:**
>
> **Example 49 (No real number squares to \\-1\\)** The imaginary unit is not a real number, because the square of every real number \\x\\ is at least \\0\\:
>
> - if \\x \ge 0\\, then \\x^2 = x \cdot x\\ is a product of two nonnegative numbers, so \\x^2 \ge 0\\;
> - if \\x \< 0\\, then \\x^2 = x \cdot x\\ is a product of two negative numbers, so \\x^2 \> 0\\.
>
> For instance, \\3^2 = 9\\ and \\(-3)^2 = 9\\; neither is \\-1\\. So the equation \\x^2 = -1\\ has no real solution, and [Definition 50](#def-imaginary-unit) introduces a new number to solve it.

> **NOTE:**
>
> **Definition 51 (Complex number)** A **complex number** is a number of the form
>
> \\z = a + b\\i,\\
>
> where \\a\\ and \\b\\ are real numbers and \\i\\ is the imaginary unit ([Definition 50](#def-imaginary-unit)).
>
> - The **real part** of \\z\\ is \\\operatorname{Re} z \stackrel{\text{def}}{=}a\\.
> - The **imaginary part** of \\z\\ is \\\operatorname{Im} z \stackrel{\text{def}}{=}b\\.
> - The set of all complex numbers is \\\mathbb{C} \stackrel{\text{def}}{=}\\a + b\\i : a, b \in \mathbb{R}\\\\.
>
> Two complex numbers are equal exactly when their real parts are equal and their imaginary parts are equal. A real number \\a\\ is the complex number \\a + 0\\i\\, so \\\mathbb{R}\\ is a subset of \\\mathbb{C}\\.

Axler ([2024](#ref-axler2024linear), Definition 1.1, p. 2) defines \\\mathbb{C}\\ as the set of ordered pairs \\(a, b)\\ of real numbers, written \\a + bi\\, and Axler ([2024](#ref-axler2024linear), Definition 4.1, p. 120) defines the real and imaginary parts.

> **NOTE:**
>
> **Example 50 (Real and imaginary parts)** For \\z = 2 - 5\\i\\, the real part is \\\operatorname{Re} z = 2\\ and the imaginary part is \\\operatorname{Im} z = -5\\: the imaginary part is the real number \\-5\\, not \\-5\\i\\.
>
> The numbers \\1 + i\\ and \\1 - i\\ have the same real part, \\1\\, but different imaginary parts, \\1\\ and \\-1\\, so they are different complex numbers.
>
> The real number \\7\\ is the complex number \\7 + 0\\i\\, with real part \\7\\ and imaginary part \\0\\.

> **NOTE:**
>
> **Theorem 29 (Adding and multiplying complex numbers)** For real numbers \\a, b, c, d\\:
>
> \\(a + b\\i) + (c + d\\i) = (a + c) + (b + d)\\i\\
>
> and
>
> \\(a + b\\i)(c + d\\i) = (ac - bd) + (ad + bc)\\i.\\

> **NOTE:**
>
> *Proof*. **Sum.**
>
> \\ \begin{aligned} (a + b\\i) + (c + d\\i) &= a + c + b\\i + d\\i && \text{(rearrange the terms)} \\ &= (a + c) + (b + d)\\i && \text{(factor out } i \text{)} \end{aligned} \\
>
> **Product.**
>
> \\ \begin{aligned} (a + b\\i)(c + d\\i) &= ac + ad\\i + bc\\i + bd\\i^2 && \text{(distribute)} \\ &= ac + ad\\i + bc\\i - bd && \text{(}\href{#def-imaginary-unit}{\text{Definition~50}}\text{)} \\ &= (ac - bd) + (ad + bc)\\i && \text{(group the real terms and the terms with } i \text{)} \end{aligned} \\

Axler ([2024](#ref-axler2024linear), Definition 1.1, p. 2) takes these two formulas as the definitions of addition and multiplication.

> **NOTE:**
>
> **Example 51 (Adding and multiplying two complex numbers)** Let \\w = 1 + 2\\i\\ and \\z = 3 - i\\. Their sum is
>
> \\ \begin{aligned} w + z &= (1 + 3) + (2 + (-1))\\i && \text{(}\href{#thm-complex-arithmetic}{\text{Theorem~29}}\text{, sum)} \\ &= 4 + i && \text{(add)} \end{aligned} \\
>
> and their product, multiplying out directly, is
>
> \\ \begin{aligned} w z &= 1 \cdot 3 + 1 \cdot(-i) + 2\\i \cdot 3 + 2\\i \cdot(-i) && \text{(distribute)} \\ &= 3 - i + 6\\i - 2\\i^2 && \text{(multiply)} \\ &= 3 - i + 6\\i + 2 && \text{(}\href{#def-imaginary-unit}{\text{Definition~50}}\text{)} \\ &= (3 + 2) + (-1 + 6)\\i && \text{(group the real terms and the terms with } i \text{)} \\ &= 5 + 5\\i && \text{(add)} \end{aligned} \\
>
> The product formula in [Theorem 29](#thm-complex-arithmetic) gives the same answer: with \\a = 1\\, \\b = 2\\, \\c = 3\\ and \\d = -1\\, \\ac - bd = 3 - (-2) = 5\\ and \\ad + bc = -1 + 6 = 5\\.

> **NOTE:**
>
> **Definition 52 (Complex conjugate)** The **complex conjugate** of a complex number \\z = a + b\\i\\ ([Definition 51](#def-complex-number)) is
>
> \\\overline{z} \stackrel{\text{def}}{=}a - b\\i.\\

Axler ([2024](#ref-axler2024linear), Definition 4.2, p. 120) gives the same definition, as \\\overline{z} = \operatorname{Re} z - (\operatorname{Im} z)\\i\\.

> **NOTE:**
>
> **Example 52 (Complex conjugates)**  
>
> - \\\overline{3 + 4\\i} = 3 - 4\\i\\.
> - \\\overline{-2\\i} = \overline{0 + (-2)\\i} = 0 - (-2)\\i = 2\\i\\.
> - \\\overline{5} = \overline{5 + 0\\i} = 5 - 0\\i = 5\\: a real number is its own complex conjugate. A complex number with a nonzero imaginary part, such as \\3 + 4\\i\\, is not.

> **NOTE:**
>
> **Definition 53 (Absolute value of a complex number)** The **absolute value**, or **modulus**, of a complex number \\z = a + b\\i\\ ([Definition 51](#def-complex-number)) is
>
> \\\mathopen{}\left\|z\right\|\mathclose{} \stackrel{\text{def}}{=}\sqrt{a^2 + b^2}.\\

Axler ([2024](#ref-axler2024linear), Definition 4.2, p. 120) gives the same definition.

> **NOTE:**
>
> **Example 53 (Absolute values of complex numbers)**  
>
> - \\\mathopen{}\left\|3 + 4\\i\right\|\mathclose{} = \sqrt{3^2 + 4^2} = \sqrt{25} = 5\\.
> - \\\mathopen{}\left\|-2\\i\right\|\mathclose{} = \sqrt{0^2 + (-2)^2} = \sqrt{4} = 2\\.
> - For a real number \\a = a + 0\\i\\, \\\mathopen{}\left\|a\right\|\mathclose{} = \sqrt{a^2 + 0^2} = \sqrt{a^2}\\, which is the usual absolute value of \\a\\; for instance, \\\mathopen{}\left\|-3\right\|\mathclose{} = \sqrt{9} = 3\\.

> **NOTE:**
>
> **Theorem 30 (A complex number times its conjugate)** For every complex number \\z\\,
>
> \\z\\\overline{z} = \mathopen{}\left\|z\right\|\mathclose{}^2.\\
>
> In particular, \\z\\\overline{z}\\ is a nonnegative real number.

> **NOTE:**
>
> *Proof*. Write \\z = a + b\\i\\ with \\a, b\\ real. Then
>
> \\ \begin{aligned} z\\\overline{z} &= (a + b\\i)(a - b\\i) && \text{(}\href{#def-complex-conjugate}{\text{Definition~52}}\text{)} \\ &= a^2 - ab\\i + ab\\i - b^2\\i^2 && \text{(distribute)} \\ &= a^2 - b^2\\i^2 && \text{(cancel } ab\\i \text{)} \\ &= a^2 + b^2 && \text{(}\href{#def-imaginary-unit}{\text{Definition~50}}\text{)} \\ &= \mathopen{}\left\|z\right\|\mathclose{}^2 && \text{(}\href{#def-complex-modulus}{\text{Definition~53}}\text{)} \end{aligned} \\

Axler ([2024](#ref-axler2024linear), result 4.4, p. 121) lists this identity among the properties of complex numbers.

> **NOTE:**
>
> **Example 54 (Multiplying \\3 + 4\\i\\ by its conjugate)** \\ \begin{aligned} &(3 + 4\\i)(3 - 4\\i) \\ &= 9 - 12\\i + 12\\i - 16\\i^2 && \text{(distribute)} \\ &= 9 - 16\\i^2 && \text{(cancel } 12\\i \text{)} \\ &= 9 + 16 && \text{(}\href{#def-imaginary-unit}{\text{Definition~50}}\text{)} \\ &= 25 && \text{(add)} \end{aligned} \\
>
> which is \\\mathopen{}\left\|3 + 4\\i\right\|\mathclose{}^2 = 5^2\\ from [Example 53](#exm-complex-modulus), as [Theorem 30](#thm-conj-product) says.

## 19 Further reading

- Abramson et al. ([2021](#ref-abramson2021algebra)) is a free online textbook on algebra and trigonometry. It covers equations, inequalities, polynomials, exponentials, and logarithms, which overlap with the algebra on this page.
- Rudin ([1976](#ref-rudin1976principles)) develops the real numbers, including the least upper bound property behind the infimum and supremum.

## References

Abramson, Jay et al. 2021. *Algebra and Trigonometry*. 2nd ed. OpenStax. <https://openstax.org/books/algebra-and-trigonometry-2e/pages/preface>.

Axler, Sheldon. 2024. *Linear Algebra Done Right*. 4th ed. Undergraduate Texts in Mathematics. Springer. <https://doi.org/10.1007/978-3-031-41026-0>.

Rudin, Walter. 1976. *Principles of Mathematical Analysis*. 3rd ed. International Series in Pure and Applied Mathematics. McGraw-Hill.

Back to top
