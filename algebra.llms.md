# Algebra

Code

Published

Last modified: 2026-10-05 17:21:55 (PDT)

## 1 Equalities

Mastery of [Elementary Algebra](https://en.wikipedia.org/wiki/Elementary_algebra) (a.k.a. “College Algebra”) is a prerequisite for calculus, which is in turn a prerequisite for most statistics and data science courses. Nevertheless, each year, some students are still uncomfortable with algebraic manipulations of mathematical formulas. Therefore, I include this section as a quick reference.

> **NOTE:**
>
> **Theorem 1 (Equalities are transitive)** If \\a=b\\ and \\b=c\\, then \\a=c\\

> **NOTE:**
>
> **Theorem 2 (Substituting equivalent expressions)** If \\a = b\\, then for any function \\f(x)\\, \\f(a) = f(b)\\

## 2 Inequalities

> **NOTE:**
>
> **Theorem 3 (Adding to both sides of an inequality)** If \\a\<b\\, then \\a+c \< b+c\\

> **NOTE:**
>
> **Theorem 4 (negating both sides of an inequality)** If \\a \< b\\, then: \\-a \> -b\\

> **NOTE:**
>
> **Theorem 5 (Multiplying both sides of an inequality by a positive number)** If \\a \< b\\ and \\c \> 0\\, then \\ca \< cb\\.

> **NOTE:**
>
> **Theorem 6 (Negation is multiplication by \\-1\\)** \\-a = (-1)\*a\\

## 3 Minimum, maximum, argmin and argmax

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
> 2.  Evaluate \\g\\ at each of its four inputs:
>
>     | \\x\\    | \\0\\ | \\1\\ | \\3\\ | \\4\\ |
>     |----------|-------|-------|-------|-------|
>     | \\g(x)\\ | \\5\\ | \\2\\ | \\2\\ | \\5\\ |
>
>     The smallest value of \\g\\ is \\2\\, and \\g\\ takes it at two inputs, \\x = 1\\ and \\x = 3\\. The answer to “where?” is the set \\\mathopen{}\left\\1, 3\right\\\mathclose{}\\, not a single number.

> **NOTE:**
>
> **Definition 1 (Minimum)** Let \\A \subseteq \mathbb{R}\\. A number \\m\\ is the **minimum** of \\A\\, written \\\min A\\, if \\m \in A\\ and \\m \le a\\ for all \\a \in A\\.

> **NOTE:**
>
> *Remark 1* (Not every set has a minimum). The set \\\mathopen{}\left\\3, 1, 4\right\\\mathclose{}\\ has minimum \\1\\, and the interval \\\[0, 1\]\\ has minimum \\0\\. The interval \\(0, 1\]\\ has no minimum: every element \\a\\ of it has a smaller element, \\a/2\\, also in it.

> **NOTE:**
>
> **Definition 2 (Maximum)** Let \\A \subseteq \mathbb{R}\\. A number \\M\\ is the **maximum** of \\A\\, written \\\max A\\, if \\M \in A\\ and \\a \le M\\ for all \\a \in A\\.

> **NOTE:**
>
> **Example 1 (A maximum, and a set without one)**  
>
> - \\\max \mathopen{}\left\\-2, 5, 0\right\\\mathclose{} = 5\\: \\5\\ is in the set, and \\-2 \le 5\\, \\5 \le 5\\, \\0 \le 5\\.
> - The interval \\\[0, 1)\\ has no maximum. For any \\a \in \[0, 1)\\, the number \\\tfrac{a + 1}{2}\\ is also in \\\[0, 1)\\, and it is larger than \\a\\, since \\\tfrac{a + 1}{2} \> a\\ exactly when \\a \< 1\\. So no element of \\\[0, 1)\\ is at least as large as every element.

> **NOTE:**
>
> **Definition 3 (Argmin)** Let \\f : A \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). The **argmin** of \\f\\ over \\A\\ is the set of inputs where \\f\\ takes its smallest value:
>
> \\\arg \min\_{x \in A} f(x) \stackrel{\text{def}}{=}\mathopen{}\left\\x \in A : \forall a \in A,\\ f(x) \le f(a)\right\\\mathclose{}\\
>
> When this set has exactly one element \\\hat{x}\\, we write \\\hat{x} = \arg \min\_{x \in A} f(x)\\.

> **NOTE:**
>
> *Remark 2* (Smallest value versus where it occurs). The smallest value itself is \\\min f(A)\\, the minimum ([Definition 1](#def-minimum)) of the [image](sets-functions.llms.md#def-image) of \\f\\, and the argmin is where that value is attained. For example, let \\f(x) = x^2\\ on \\A = \mathopen{}\left\\-1, 0, 2\right\\\mathclose{}\\. The image is \\f(A) = \mathopen{}\left\\1, 0, 4\right\\\mathclose{}\\, so the smallest value is \\\min f(A) = 0\\, and \\\arg \min\_{x \in A} f(x) = \mathopen{}\left\\0\right\\\mathclose{}\\.
>
> The argmin is empty when \\f\\ has no smallest value, for example \\f(x) = x\\ on \\(0, 1\]\\.

> **NOTE:**
>
> **Definition 4 (Argmax)** Let \\f : A \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). The **argmax** of \\f\\ over \\A\\ is the set of inputs where \\f\\ takes its largest value:
>
> \\\arg \max\_{x \in A} f(x) \stackrel{\text{def}}{=}\mathopen{}\left\\x \in A : \forall a \in A,\\ f(a) \le f(x)\right\\\mathclose{}\\
>
> When this set has exactly one element \\\hat{x}\\, we write \\\hat{x} = \arg \max\_{x \in A} f(x)\\.

> **NOTE:**
>
> **Example 2 (An argmax with two points, and an empty one)**  
>
> - Let \\g(x) = x^2\\ on \\A = \mathopen{}\left\\-2, 0, 1, 2\right\\\mathclose{}\\. The values are \\g(-2) = 4\\, \\g(0) = 0\\, \\g(1) = 1\\ and \\g(2) = 4\\, so the largest value is \\4\\ and \\\arg \max\_{x \in A} g(x) = \mathopen{}\left\\-2, 2\right\\\mathclose{}\\. This argmax has two elements, so it is not written as a single \\\hat{x}\\.
> - Let \\f(x) = x\\ on \\\[0, 1)\\. As in [Example 1](#exm-maximum), for every input \\x\\ the input \\\tfrac{x + 1}{2}\\ has a larger value, so no input attains a largest value, and \\\arg \max\_{x \in \[0, 1)} f(x)\\ is the [empty set](sets-functions.llms.md#def-empty-set).

## 4 Global and local minimizers

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
> 3.  \\f(-3) = -27 + 9 = -18\\. Since \\-18 \< -2 = f(1)\\, \\f(1)\\ is not the smallest value of \\f\\ on \\\mathbb{R}\\.
>
> 4.  No. For each \\n \ge 2\\, \\f(-n) = -n^3 + 3n = -n(n^2 - 3) \le -n\\, so no value of \\f\\ is smaller than all the others: for any \\x\\, picking \\n \ge 2\\ with \\-n \< f(x)\\ gives \\f(-n) \< f(x)\\.

> **NOTE:**
>
> **Definition 5 (Global minimizer)** Let \\A \subseteq \mathbb{R}^p\\ and let \\f : A \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). A point \\x^\* \in A\\ is a **global minimizer** of \\f\\ over \\A\\ if \\f(x^\*) \le f(x)\\ for all \\x \in A\\.

> **NOTE:**
>
> *Remark 3* (Global minimizers form the argmin). The global minimizers of \\f\\ are exactly the elements of \\\arg \min\_{x \in A} f(x)\\ ([Definition 3](#def-argmin)). A function can have more than one global minimizer. For example, \\f(x) = (x^2 - 1)^2\\ on \\\mathbb{R}\\ satisfies \\f(x) \ge 0\\ for every \\x\\, and \\f(x) = 0\\ exactly when \\x = -1\\ or \\x = 1\\, so its global minimizers are \\-1\\ and \\1\\, and \\\arg \min\_{x \in \mathbb{R}} f(x) = \mathopen{}\left\\-1, 1\right\\\mathclose{}\\.

> **NOTE:**
>
> **Definition 6 (Local minimizer)** Let \\A \subseteq \mathbb{R}^p\\ and let \\f : A \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). A point \\x^\* \in A\\ is a **local minimizer** of \\f\\ if there is a number \\\delta \> 0\\ such that \\f(x^\*) \le f(x)\\ for all \\x \in A\\ with \\\mathopen{}\left\lVert x - x^\*\right\rVert\mathclose{} \< \delta\\, where \\\mathopen{}\left\lVert\cdot\right\rVert\mathclose{}\\ is the [Euclidean norm](linear-algebra.llms.md#def-euclidean-norm).

> **NOTE:**
>
> *Remark 4* (Local and global minimizers). For \\p = 1\\, \\\mathopen{}\left\lVert x - x^\*\right\rVert\mathclose{} = \mathopen{}\left\|x - x^\*\right\|\mathclose{}\\. For example, with \\x^\* = 1\\ and \\\delta = 1\\, the condition \\\mathopen{}\left\|x - 1\right\|\mathclose{} \< 1\\ means \\0 \< x \< 2\\.
>
> Every global minimizer ([Definition 5](#def-global-minimizer)) is a local minimizer: take any \\\delta \> 0\\. For example, \\x^\* = 0\\ is a global minimizer of \\f(x) = x^2\\ on \\\mathbb{R}\\, so it is also a local minimizer.
>
> The converse fails. In [Exercise 2](#exr-local-vs-global-min), \\x^\* = 1\\ is a local minimizer of \\f(x) = x^3 - 3x\\ (take \\\delta = 1\\), but not a global one.

> **NOTE:**
>
> **Example 3 (A point that is not a local minimizer)** For \\f(x) = x^3 - 3x\\, the point \\x = -1\\ is not a local minimizer. For any \\t\\,
>
> \\ \begin{aligned} f(-1 + t) &= (-1 + t)^3 - 3(-1 + t) && \text{(substitute)} \\ &= (-1 + 3t - 3t^2 + t^3) - 3(-1 + t) && \text{(expand the cube)} \\ &= -1 + 3t - 3t^2 + t^3 + 3 - 3t && \text{(distribute)} \\ &= 2 - 3t^2 + t^3 && \text{(collect terms)} \\ &= 2 + t^2 (t - 3) && \text{(factor out } t^2 \text{)} \\ &= f(-1) + t^2 (t - 3), && \text{(} f(-1) = (-1)^3 - 3(-1) = 2 \text{)} \end{aligned} \\
>
> and \\t^2 (t - 3) \< 0\\ whenever \\t \ne 0\\ and \\t \< 3\\. So whatever \\\delta \> 0\\ is, the point \\x = -1 + t\\ with \\t = \min\mathopen{}\left\\\delta / 2, 1\right\\\mathclose{}\\ satisfies \\\mathopen{}\left\|x - (-1)\right\|\mathclose{} \< \delta\\ and \\f(x) \< f(-1)\\. For example, \\f(-0.9) = -0.729 + 2.7 = 1.971 \< 2\\.

## 5 Convex functions

> **NOTE:**
>
> **Exercise 3 (A chord above a parabola)** Let \\f(x) = (x - 2)^2\\, and take the points \\x = 0\\ and \\y = 4\\ with \\t = \tfrac{1}{2}\\.
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
> **Definition 7 (Convex function)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). \\f\\ is **convex** if \\ f(t x + (1 - t) y) \le t f(x) + (1 - t) f(y) \\ for all \\x, y \in \mathbb{R}^p\\ and all \\t \in \[0, 1\]\\.

> **NOTE:**
>
> *Remark 5* (Chords lie on or above the graph). The point \\t x + (1 - t) y\\ lies on the line segment from \\x\\ to \\y\\, and the right-hand side is the height of the chord joining \\(x, f(x))\\ and \\(y, f(y))\\ above that point. So \\f\\ is convex when every chord lies on or above the graph.
>
> For example, take \\f(x) = x^2\\, \\x = -1\\, \\y = 3\\, and \\t = \tfrac{1}{2}\\. The point is \\\tfrac{1}{2} \cdot (-1) + \tfrac{1}{2} \cdot 3 = 1\\, where the graph has height \\f(1) = 1\\ and the chord has height \\\tfrac{1}{2} f(-1) + \tfrac{1}{2} f(3) = \tfrac{1}{2} \cdot 1 + \tfrac{1}{2} \cdot 9 = 5\\. The chord is above the graph: \\1 \le 5\\.

> **NOTE:**
>
> **Example 4 (A function that is not convex)** The function in [Exercise 2](#exr-local-vs-global-min), \\f(x) = x^3 - 3x\\, is not convex. Take \\x = -2\\, \\y = 0\\, \\t = \tfrac{1}{2}\\. The point is \\\tfrac{1}{2} \cdot (-2) + \tfrac{1}{2} \cdot 0 = -1\\, where the graph has height \\f(-1) = -1 + 3 = 2\\, but the chord has height \\\tfrac{1}{2} f(-2) + \tfrac{1}{2} f(0) = \tfrac{1}{2} (-8 + 6) + \tfrac{1}{2} \cdot 0 = -1\\, and \\2 \le -1\\ is false.

> **NOTE:**
>
> **Example 5 (A convex and a non-convex function)** \\f(x) = (x - 2)^2\\ is convex ([Definition 7](#def-convex-function)): by expanding the square, \\f(t x + (1 - t) y) - t f(x) - (1 - t) f(y) = -t (1 - t) (x - y)^2 \le 0\\. Its local minimizer \\x^\* = 2\\ is also a global minimizer, since \\f(x) = (x - 2)^2 \ge 0 = f(2)\\ for every \\x\\.
>
> Without convexity, a local minimizer need not be global: \\f(x) = x^3 - 3x\\ is not convex ([Example 4](#exm-cubic-not-convex)), and it has a local minimizer at \\x^\* = 1\\ that is not global ([Exercise 2](#exr-local-vs-global-min)).

> **NOTE:**
>
> **Theorem 7 (Local minimizers of convex functions are global)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ be a [convex function](#def-convex-function). Every [local minimizer](#def-local-minimizer) of \\f\\ is a [global minimizer](#def-global-minimizer) of \\f\\ over \\\mathbb{R}^p\\.

> **NOTE:**
>
> *Proof*. Let \\x^\*\\ be a local minimizer of \\f\\, so there is a \\\delta \> 0\\ with \\f(x^\*) \le f(x)\\ whenever \\\mathopen{}\left\lVert x - x^\*\right\rVert\mathclose{} \< \delta\\ ([Definition 6](#def-local-minimizer)). Suppose \\x^\*\\ is not a global minimizer ([Definition 5](#def-global-minimizer)). Then some \\y \in \mathbb{R}^p\\ has \\f(y) \< f(x^\*)\\, and in particular \\y \ne x^\*\\.
>
> Let \\t = \min\left\\\tfrac{1}{2}, \dfrac{\delta}{2 \mathopen{}\left\lVert y - x^\*\right\rVert\mathclose{}}\right\\\\, so \\t \in (0, 1)\\, and let \\z = t y + (1 - t) x^\*\\. Then \\z - x^\* = t (y - x^\*)\\, so \\\mathopen{}\left\lVert z - x^\*\right\rVert\mathclose{} = t \mathopen{}\left\lVert y - x^\*\right\rVert\mathclose{} \le \delta / 2 \< \delta\\.
>
> By convexity, \\ f(z) \le t f(y) + (1 - t) f(x^\*) \< t f(x^\*) + (1 - t) f(x^\*) = f(x^\*), \\ where the strict inequality uses \\t \> 0\\ and \\f(y) \< f(x^\*)\\. So \\f(z) \< f(x^\*)\\ with \\\mathopen{}\left\lVert z - x^\*\right\rVert\mathclose{} \< \delta\\, which contradicts \\x^\*\\ being a local minimizer. Hence \\x^\*\\ is a global minimizer.

## 6 Infimum and supremum

> **NOTE:**
>
> **Definition 8 (Infimum (greatest lower bound))** Let \\A \subseteq \mathbb{R}\\ be nonempty and bounded below, meaning that some \\t \in \mathbb{R}\\ satisfies \\t \le a\\ for all \\a \in A\\. The **infimum** of \\A\\, written \\\inf A\\, is the greatest real number \\t\\ satisfying \\t \le a\\ for all \\a \in A\\:
>
> \\\inf A \stackrel{\text{def}}{=}\max\mathopen{}\left\\t \in \mathbb{R}: \forall a \in A,\\ t \le a\right\\\mathclose{}\\
>
> If \\A\\ is nonempty but not bounded below, we write \\\inf A = -\infty\\ by convention.

> **NOTE:**
>
> *Remark 6* (Existence of the infimum, and when it is a minimum). The maximum in [Definition 8](#def-infimum) always exists: that is the completeness (greatest-lower-bound) property of the real numbers ([Rudin 1976](#ref-rudin1976principles), Definition 1.8, p. 4, and Theorem 1.19, p. 8). For example, for \\A = (1, 2\]\\, the numbers \\t\\ with \\t \le a\\ for all \\a \in A\\ are those with \\t \le 1\\, and the largest of them is \\1\\, so \\\inf A = 1\\.
>
> If the infimum belongs to \\A\\, it equals the minimum: \\\inf A = \min A\\. For example, \\\inf \[1, 2\] = 1 = \min \[1, 2\]\\. For \\A = (1, 2\]\\, the infimum \\1\\ is not in \\A\\, and \\A\\ has no minimum.

> **NOTE:**
>
> **Example 6 (Numerical examples of infimum)**  
>
> - \\\inf\\1, 2, 3\\ = 1\\, since \\1\\ is the smallest element.
> - \\\inf(0.5, 1\] = 0.5 = \min\[0.5, 1\]\\: for intervals open below, the infimum equals the minimum of the corresponding closed-below interval, even though \\0.5 \notin (0.5, 1\]\\. More generally, \\\inf(c, b\] = \min\[c, b\] = c\\ for any \\c \< b\\.
> - \\\inf\\t \ge 0 : t \> 0.5\\ = 0.5\\, even though \\0.5\\ itself is not in the set.
> - \\\inf\\-1, -2, -3, \ldots\\ = -\infty\\, because no real number is less than or equal to every element of that set.

> **NOTE:**
>
> **Definition 9 (Supremum (least upper bound))** Let \\A \subseteq \mathbb{R}\\ be nonempty and bounded above, meaning that some \\t \in \mathbb{R}\\ satisfies \\a \le t\\ for all \\a \in A\\. The **supremum** of \\A\\, written \\\sup A\\, is the smallest real number \\t\\ satisfying \\a \le t\\ for all \\a \in A\\:
>
> \\\sup A \stackrel{\text{def}}{=}\min\mathopen{}\left\\t \in \mathbb{R}: \forall a \in A,\\ a \le t\right\\\mathclose{}\\
>
> If \\A\\ is nonempty but not bounded above, we write \\\sup A = +\infty\\ by convention.

> **NOTE:**
>
> *Remark 7* (Existence of the supremum, and when it is a maximum). The minimum in [Definition 9](#def-supremum) always exists: that is the completeness (least-upper-bound) property of the real numbers ([Rudin 1976](#ref-rudin1976principles), Definition 1.8, p. 4, and Theorem 1.19, p. 8). For example, for \\A = \[1, 2)\\, the numbers \\t\\ with \\a \le t\\ for all \\a \in A\\ are those with \\t \ge 2\\, and the smallest of them is \\2\\, so \\\sup A = 2\\.
>
> If the supremum belongs to \\A\\, it equals the maximum: \\\sup A = \max A\\. For example, \\\sup \[1, 2\] = 2 = \max \[1, 2\]\\. For \\A = \[1, 2)\\, the supremum \\2\\ is not in \\A\\, and \\A\\ has no maximum.

> **NOTE:**
>
> **Example 7 (Numerical examples of supremum)**  
>
> - \\\sup\\1, 2, 3\\ = 3\\, since \\3\\ is the largest element.
> - \\\sup\\t \ge 0 : t \< 0.5\\ = 0.5\\, even though \\0.5\\ itself is not in the set.
> - \\\sup\\1, 2, 3, \ldots\\ = +\infty\\, because no real number is greater than or equal to every element of that set.

## 7 Sums

> **NOTE:**
>
> **Theorem 8 (adding zero changes nothing)** \\a+0=a\\

> **NOTE:**
>
> **Theorem 9 (Sums are symmetric)** \\a+b = b+a\\

> **NOTE:**
>
> **Theorem 10 (Sums are associative)** When adding three numbers, it does not matter which pair you add first:
>
> \\(a + b) + c = a + (b + c)\\

> **NOTE:**
>
> **Example 8 (Grouping a sum two ways)** \\(2 + 3) + 4 = 5 + 4 = 9\\, and \\2 + (3 + 4) = 2 + 7 = 9\\.

## 8 Products

> **NOTE:**
>
> **Theorem 11 (Multiplying by 1 changes nothing)** \\a \times 1 = a\\

> **NOTE:**
>
> **Theorem 12 (Products are symmetric)** \\a \times b = b \times a\\

> **NOTE:**
>
> **Theorem 13 (Products are associative)** \\(a \times b) \times c = a \times (b \times c)\\

## 9 Division

> **NOTE:**
>
> **Theorem 14 (Division can be written as a product)** If \\b \neq 0\\, then
>
> \\\frac {a}{b} = a \times \frac{1}{b}\\

## 10 Sums and products together

> **NOTE:**
>
> **Theorem 15 (Multiplication is distributive)** \\a(b+c) = ab + ac\\

> **NOTE:**
>
> **Exercise 4 (Expand a squared sum)** Is \\(3 + 4)^2\\ equal to \\3^2 + 4^2\\? Then expand \\(a + b)^2\\ for any numbers \\a\\ and \\b\\, using only the distributive law and the rules above.

> **NOTE:**
>
> *Solution 4*. No: \\(3 + 4)^2 = 7^2 = 49\\, while \\3^2 + 4^2 = 9 + 16 = 25\\. The difference, \\49 - 25 = 24\\, is \\2 \cdot 3 \cdot 4\\.
>
> To see where that extra term comes from, write the square as a product and apply the distributive law ([Theorem 15](#thm-mult-distr)) twice:
>
> \\ \begin{aligned} (a + b)^2 &= (a + b)(a + b) && \text{(definition of a square)} \\ &= (a + b)\\a + (a + b)\\b && \text{(distributive law)} \\ &= (a^2 + ba) + (ab + b^2) && \text{(distributive law, twice)} \\ &= a^2 + ab + ab + b^2 && \text{(commutative and associative laws)} \\ &= a^2 + 2ab + b^2 && \text{(collect like terms)} \end{aligned} \\
>
> The step “commutative and associative laws” uses [Theorem 12](#thm-prod-symmetric) to write \\ba\\ as \\ab\\, and [Theorem 10](#thm-sum-assoc) to drop the parentheses.

> **NOTE:**
>
> **Theorem 16 (Square of a sum)** For any numbers \\a\\ and \\b\\,
>
> \\ (a + b)^2 = a^2 + 2ab + b^2 \\

> **NOTE:**
>
> *Proof*. By [Solution 4](#sol-square-of-a-sum).

> **NOTE:**
>
> *Remark 8* (Square of a difference). Replacing \\b\\ by \\-b\\ in [Theorem 16](#thm-square-of-a-sum) gives \\(a - b)^2 = a^2 - 2ab + b^2\\. Squared errors such as \\(y - \hat{y})^2\\ are expanded this way. For example, with \\y = 5\\ and \\\hat{y} = 3\\, \\(5 - 3)^2 = 2^2 = 4\\, and \\5^2 - 2 \cdot 5 \cdot 3 + 3^2 = 25 - 30 + 9 = 4\\.

## 11 Summation notation

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
> 2.  Replace \\i\\ by each of \\1, 2, 3\\ in turn inside the parentheses, add the three squares, and multiply the total by \\\frac{1}{3}\\:
>
>     \\ \frac{1}{3} \sum\_{i=1}^{3} \left(y_i - \hat{y}\_i\right)^2 = \frac{1}{3} \left\[ \left(y_1 - \hat{y}\_1\right)^2 + \left(y_2 - \hat{y}\_2\right)^2 + \left(y_3 - \hat{y}\_3\right)^2 \right\] \\

> **NOTE:**
>
> **Definition 10 (Summation notation)** Let \\m\\ and \\n\\ be integers with \\m \le n\\, and let \\a_m, a\_{m+1}, \ldots, a_n\\ be numbers. The **sum** of \\a_m\\ through \\a_n\\ is
>
> \\ \sum\_{i=m}^{n} a_i \stackrel{\text{def}}{=}a_m + a\_{m+1} + \cdots + a_n \\
>
> The variable \\i\\ is the **index** of the sum; \\m\\ and \\n\\ are its **lower** and **upper limits**.

> **NOTE:**
>
> *Remark 9* (The index is a placeholder). The name of the index does not change the sum: \\\sum\_{i=1}^{n} a_i\\ and \\\sum\_{j=1}^{n} a_j\\ are the same number. For example, \\\sum\_{i=1}^{3} i = 1 + 2 + 3 = 6\\ and \\\sum\_{j=1}^{3} j = 1 + 2 + 3 = 6\\.

> **NOTE:**
>
> **Definition 11 (Empty sum)** When the upper limit is less than the lower limit (\\n \< m\\), the sum \\\sum\_{i=m}^{n} a_i\\ has no terms. By convention, such an **empty sum** equals \\0\\. For example, \\\sum\_{i=1}^{0} a_i = 0\\.

> **NOTE:**
>
> **Exercise 6 (Rearrange a sum)** Let \\c\\ be a number, and let \\a_1, a_2, a_3\\ and \\b_1, b_2, b_3\\ be numbers. Using [Definition 10](#def-summation) and the rules of algebra above, show that:
>
> 1.  \\\sum\_{i=1}^{3} c\\ a_i = c \sum\_{i=1}^{3} a_i\\;
> 2.  \\\sum\_{i=1}^{3} \left(a_i + b_i\right) = \sum\_{i=1}^{3} a_i + \sum\_{i=1}^{3} b_i\\.
>
> Does either argument depend on there being exactly three terms?

> **NOTE:**
>
> *Solution 6*. Each step below applies [Definition 10](#def-summation), the distributive law ([Theorem 15](#thm-mult-distr)), or the commutative and associative laws of addition ([Theorem 9](#thm-sum-symmetric) and [Theorem 10](#thm-sum-assoc)).
>
> 1.  Expand the sum, then factor out \\c\\:
>
>     \\ \begin{aligned} \sum\_{i=1}^{3} c\\ a_i &= c\\ a_1 + c\\ a_2 + c\\ a_3 && \text{(expand the sum)} \\ &= c \left(a_1 + a_2 + a_3\right) && \text{(distributive law)} \\ &= c \sum\_{i=1}^{3} a_i && \text{(collect the sum)} \end{aligned} \\
>
> 2.  Expand the sum, then regroup the terms:
>
>     \\ \begin{aligned} \sum\_{i=1}^{3} \left(a_i + b_i\right) &= \left(a_1 + b_1\right) + \left(a_2 + b_2\right) + \left(a_3 + b_3\right) && \text{(expand the sum)} \\ &= \left(a_1 + a_2 + a_3\right) + \left(b_1 + b_2 + b_3\right) && \text{(commutative and associative laws)} \\ &= \sum\_{i=1}^{3} a_i + \sum\_{i=1}^{3} b_i && \text{(collect the sum)} \end{aligned} \\
>
> Neither argument uses the number of terms: the same steps work for any lower and upper limits.

> **NOTE:**
>
> **Theorem 17 (A constant factor comes out of a sum)** For any number \\c\\ and numbers \\a_m, \ldots, a_n\\,
>
> \\ \sum\_{i=m}^{n} c\\ a_i = c \sum\_{i=m}^{n} a_i \\

> **NOTE:**
>
> *Proof*. By [Solution 6](#sol-sum-rules), part 1.

> **NOTE:**
>
> **Theorem 18 (A sum of sums splits)** For any numbers \\a_m, \ldots, a_n\\ and \\b_m, \ldots, b_n\\,
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
> 2.  In the order \\5, -1, 2\\, the terms are \\25\\, \\1\\ and \\4\\. Their total is \\25 + 1 + 4 = 30\\. The total is the same, because addition does not depend on the order of the terms.

> **NOTE:**
>
> **Definition 12 (Sum over a finite set)** Let \\A = \mathopen{}\left\\x_1, x_2, \ldots, x_k\right\\\mathclose{}\\ be a finite [set](sets-functions.llms.md#def-set) with \\k \ge 1\\ different elements. Let \\f\\ be a [function](sets-functions.llms.md#def-function) that gives a number \\f(x)\\ for each element \\x\\ of \\A\\. The **sum of \\f\\ over \\A\\** is
>
> \\ \sum\_{x \in A} f(x) \stackrel{\text{def}}{=}f(x_1) + f(x_2) + \cdots + f(x_k) \\
>
> If \\A\\ has no elements, the sum has no terms, and by convention it equals \\0\\. For example, \\\sum\_{x \in \mathopen{}\left\\\right\\\mathclose{}} x^2 = 0\\.

> **NOTE:**
>
> *Remark 10* (The order of the terms does not matter). The order in which we list the elements of \\A\\ does not change the sum. The reason is that addition is commutative and associative: we can reorder and regroup the terms of a finite sum without changing the total. For example, if \\A = \mathopen{}\left\\1, 2, 3\right\\\mathclose{}\\ and \\f(x) = x^2\\, listing \\A\\ as \\1, 2, 3\\ gives \\1 + 4 + 9 = 14\\, and listing \\A\\ as \\3, 1, 2\\ gives \\9 + 1 + 4 = 14\\. [Exercise 7](#exr-sum-over-set), part 2, shows another example.
>
> When \\A = \mathopen{}\left\\m, m+1, \ldots, n\right\\\mathclose{}\\, this sum is the same as \\\sum\_{i=m}^{n} f(i)\\ from [Definition 10](#def-summation).

> **NOTE:**
>
> *Remark 11* (Leaving the set out). Some authors leave the set out and write \\\sum\_{x} f(x)\\. This shorthand means the sum over every value \\x\\ can take, \\\sum\_{x \in \mathcal{R}(x)} f(x)\\, where \\\mathcal{R}(x)\\ is the [range](notation.llms.md#def-range-of-variable) of \\x\\. For example, if \\x\\ is the outcome of one roll of a six-sided die, \\\sum\_{x} f(x)\\ means \\\sum\_{x \in \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}} f(x)\\. In these notes, we write the set out in full (see [Notational shorthands](notation.llms.md#sec-notational-shorthands)).

## 12 Quotients

> **NOTE:**
>
> **Definition 13 (Quotient)** For real numbers \\a\\ and \\b\\ with \\b \neq 0\\, the **quotient** of \\a\\ by \\b\\ is the result of dividing \\a\\ by \\b\\:
>
> \\\frac{a}{b}\\

> **NOTE:**
>
> **Definition 14 (Fraction, numerator, and denominator)** A quotient \\\frac{a}{b}\\ ([Definition 13](#def-quotient)) is also called a **fraction**; \\a\\ is its **numerator** and \\b\\ its **denominator**. For example, the fraction \\\frac{6}{4}\\ has numerator \\6\\ and denominator \\4\\.

> **NOTE:**
>
> **Example 9 (A quotient)** The quotient of \\6\\ by \\4\\ is \\\frac{6}{4} = 1.5\\. The quotient of \\6\\ by \\0\\ is undefined, because [Definition 13](#def-quotient) requires a nonzero denominator.

> **NOTE:**
>
> **Definition 15 (Rate)** A **rate** is a quotient of two quantities, usually with a denominator that measures time, such as weeks or person-years of follow-up. For example, \\12\\ new cases in \\4\\ weeks is a rate of \\\frac{12}{4} = 3\\ new cases per week, and \\30\\ cases over \\10{,}000\\ person-years of follow-up is a rate of \\\frac{30}{10{,}000} = 0.003\\ cases per person-year.

cf. <https://en.wikipedia.org/wiki/Rate_(mathematics)>

> **NOTE:**
>
> **Definition 16 (Ratios)** A **ratio** is a quotient in which the numerator and denominator are measured using the same unit scales.
>
> cf. <https://en.wikipedia.org/wiki/Ratio>

> **NOTE:**
>
> **Example 10 (A ratio, and a quotient that is not one)**  
>
> - A board \\150\\ cm long and one \\75\\ cm long have length ratio \\\tfrac{150 \text{ cm}}{75 \text{ cm}} = 2\\: both lengths are in centimeters, so the units cancel and the ratio has none.
> - A sample of mass \\300\\ g and volume \\150\\ cm\\^3\\ gives the quotient \\\tfrac{300 \text{ g}}{150 \text{ cm}^3} = 2\\ g per cm\\^3\\, its density. The numerator and denominator are in different units, so this quotient is not a ratio.

> **NOTE:**
>
> **Definition 17 (Proportion)** In statistics, a **proportion** typically means a ratio where the numerator represents a subset of the denominator.
>
> See <https://en.wikipedia.org/wiki/Population_proportion>.
>
> See also <https://en.wikipedia.org/wiki/Proportion_(mathematics)> for other meanings.

> **NOTE:**
>
> **Example 11 (A proportion, and a ratio that is not one)** In a clinic with \\120\\ patients, \\30\\ of whom smoke:
>
> - the proportion of patients who smoke is \\\tfrac{30}{120} = 0.25\\: the \\30\\ smokers are a subset of the \\120\\ patients;
> - the ratio of smokers to non-smokers is \\\tfrac{30}{90} = \tfrac{1}{3}\\. Both counts are of patients, so this quotient is a ratio, but it is not a proportion: the \\30\\ smokers are not part of the \\90\\ non-smokers.

> **NOTE:**
>
> **Definition 18 (Proportional)** Two functions \\f(x)\\ and \\g(x)\\ are **proportional** if their ratio \\\frac{f(x)}{g(x)}\\ does not depend on \\x\\. (cf. <https://en.wikipedia.org/wiki/Proportionality_(mathematics)>)

> **NOTE:**
>
> **Example 12 (Proportional and non-proportional functions)**  
>
> - \\f(x) = 6x^2\\ and \\g(x) = 2x^2\\ are proportional: for \\x \ne 0\\, \\\tfrac{f(x)}{g(x)} = \tfrac{6x^2}{2x^2} = 3\\, which does not depend on \\x\\.
> - \\f(x) = x + 1\\ and \\g(x) = x\\ are not proportional: for \\x \ne 0\\, \\\tfrac{f(x)}{g(x)} = \tfrac{x + 1}{x} = \tfrac{x}{x} + \tfrac{1}{x} = 1 + \tfrac{1}{x}\\, which is \\2\\ at \\x = 1\\ and \\\tfrac{3}{2}\\ at \\x = 2\\.

Additional reference for elementary algebra: <https://en.wikipedia.org/wiki/Population_proportion#Mathematical_definition>

## 13 Polynomials

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
> **Definition 19 (Polynomial)** A **polynomial** (in one variable \\x\\) is a [function](sets-functions.llms.md#def-function) \\f : \mathbb{R}\to \mathbb{R}\\ that can be written as \\ f(x) = a_n x^n + a\_{n-1} x^{n-1} + \cdots + a_1 x + a_0 \\ for some integer \\n \ge 0\\ and constants \\a_0, a_1, \ldots, a_n \in \mathbb{R}\\ with \\a_n \ne 0\\.

> **NOTE:**
>
> *Remark 12* (Constant and zero polynomials). A constant function \\f(x) = 7\\ is a polynomial with \\n = 0\\ and \\a_0 = 7\\. The requirement \\a_n \ne 0\\ means this definition covers nonzero polynomials only: the zero function \\f(x) = 0\\ is excluded here, because it has no nonzero coefficient to serve as \\a_n\\.

> **NOTE:**
>
> **Definition 20 (Degree of a polynomial)** Let \\f(x) = a_n x^n + \cdots + a_1 x + a_0\\ be a [polynomial](#def-polynomial) with \\a_n \ne 0\\. The integer \\n\\ is the **degree** of \\f\\.

> **NOTE:**
>
> **Example 13 (Degrees of some polynomials)**  
>
> - \\f(x) = 4x\\ has degree \\1\\.
> - \\f(x) = 5 - 2x^2 + x^3\\ has degree \\3\\: the degree is the highest power with a nonzero coefficient, not the power in the first term written.
> - A constant polynomial \\f(x) = 7\\ has degree \\0\\.

> **NOTE:**
>
> **Definition 21 (Leading coefficient)** Let \\f(x) = a_n x^n + \cdots + a_1 x + a_0\\ be a [polynomial](#def-polynomial) of [degree](#def-polynomial-degree) \\n\\. The constant \\a_n\\ is the **leading coefficient** of \\f\\.

> **NOTE:**
>
> **Example 14 (Leading coefficients)**  
>
> - \\f(x) = 5 - 2x^2 + x^3\\ has degree \\3\\, so its leading coefficient is \\a_3 = 1\\, not the \\5\\ written first.
> - \\f(x) = 3 - x^2\\ has leading coefficient \\a_2 = -1\\.

## 14 Exponentials and Logarithms

In these notes, \\\operatorname{log}\mathopen{}\left\\x\right\\\mathclose{}\\ is the natural logarithm of \\x \> 0\\, the logarithm with base \\e \approx 2.718\\, and \\\operatorname{exp}\mathopen{}\left\\x\right\\\mathclose{} = e^x\\ is the exponential function. Some sources write \\\ln x\\ for the natural logarithm and reserve \\\log x\\ for base 10.

> **NOTE:**
>
> **Theorem 19 (\\\operatorname{exp}\mathopen{}\left\\\right\\\mathclose{}\\ and \\\operatorname{log}\mathopen{}\left\\\right\\\mathclose{}\\ are mutual inverses)**  
>
> 1.  For every \\a \> 0\\: \\\operatorname{exp}\mathopen{}\left\\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{}\right\\\mathclose{} = a\\.
> 2.  For every \\a \in \mathbb{R}\\: \\\operatorname{log}\mathopen{}\left\\\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{}\right\\\mathclose{} = a\\.

> **NOTE:**
>
> **Theorem 20 (Logarithm of a product)** If \\a \> 0\\ and \\b \> 0\\, then
>
> \\ \operatorname{log}\mathopen{}\left\\a \cdot b\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} + \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} \\

> **NOTE:**
>
> **Corollary 1 (Logarithm of a quotient)** If \\a \> 0\\ and \\b \> 0\\, then
>
> \\\operatorname{log}\mathopen{}\left\\\frac{a}{b}\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} - \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{}\\

> **NOTE:**
>
> *Proof*. Since \\a \> 0\\ and \\b \> 0\\, the quotient \\\frac{a}{b}\\ is positive, so [Theorem 20](#thm-log-prod) applies to the product \\\frac{a}{b} \cdot b\\:
>
> \\ \begin{aligned} \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} &= \operatorname{log}\mathopen{}\left\\\frac{a}{b} \cdot b\right\\\mathclose{} && \text{(} a = \tfrac{a}{b} \cdot b \text{)} \\ &= \operatorname{log}\mathopen{}\left\\\frac{a}{b}\right\\\mathclose{} + \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} && \text{(logarithm of a product)} \end{aligned} \\
>
> The second step applies [Theorem 20](#thm-log-prod). Subtracting \\\operatorname{log}\mathopen{}\left\\b\right\\\mathclose{}\\ from both sides gives \\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} - \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\\frac{a}{b}\right\\\mathclose{}\\.

> **NOTE:**
>
> **Theorem 21 (Logarithm of a power)** If \\a \> 0\\ and \\b \in \mathbb{R}\\, then
>
> \\ \operatorname{log}\mathopen{}\left\\a^b\right\\\mathclose{} = b \cdot\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} \\

> **NOTE:**
>
> **Theorem 22 (exponential of a sum)** The exponential of a sum is equal to the product of the exponentials of the addends:
>
> \\\operatorname{exp}\mathopen{}\left\\a+b\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{} \cdot\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{}\\

> **NOTE:**
>
> **Example 15 (Exponential of a sum)** With \\a = 2\\ and \\b = 3\\, \\\operatorname{exp}\mathopen{}\left\\2 + 3\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\5\right\\\mathclose{} \approx 148.41\\, and \\\operatorname{exp}\mathopen{}\left\\2\right\\\mathclose{} \cdot\operatorname{exp}\mathopen{}\left\\3\right\\\mathclose{} \approx 7.3891 \cdot 20.0855 \approx 148.41\\.

> **NOTE:**
>
> **Corollary 2 (exponential of a difference)** The exponential of a difference is the exponential of the first term divided by the exponential of the second term:
>
> \\\operatorname{exp}\mathopen{}\left\\a-b\right\\\mathclose{} = \frac{\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{}}{\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{}}\\

> **NOTE:**
>
> **Example 16 (Exponential of a difference)** With \\a = 5\\ and \\b = 2\\, \\\operatorname{exp}\mathopen{}\left\\5 - 2\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\3\right\\\mathclose{} \approx 20.09\\, and \\\frac{\operatorname{exp}\mathopen{}\left\\5\right\\\mathclose{}}{\operatorname{exp}\mathopen{}\left\\2\right\\\mathclose{}} \approx \frac{148.4132}{7.3891} \approx 20.09\\.

> **NOTE:**
>
> **Theorem 23 (Powers of 1 and first powers)** For every \\b \in \mathbb{R}\\,
>
> \\1^b = 1,\\
>
> and for every \\a \in \mathbb{R}\\,
>
> \\a^1 = a.\\

> **NOTE:**
>
> **Theorem 24 (Power of a sum)** If \\a \> 0\\ and \\b, c \in \mathbb{R}\\, then
>
> \\a^{b+c} = a^b \cdot a^c\\

> **NOTE:**
>
> **Example 17 (Power of a sum)** With \\a = 2\\, \\b = 3\\, and \\c = 4\\, \\2^{3+4} = 2^7 = 128\\, and \\2^3 \cdot 2^4 = 8 \cdot 16 = 128\\.

> **NOTE:**
>
> **Theorem 25 (Power of a product)** If \\a, b \> 0\\ and \\c \in \mathbb{R}\\, then
>
> \\(ab)^c = a^c \cdot b^c\\
>
> When \\c\\ is a positive integer, the same identity holds for all \\a, b \in \mathbb{R}\\, because both sides are products of \\c\\ copies of \\a\\ and \\c\\ copies of \\b\\, which can be regrouped by [Theorem 12](#thm-prod-symmetric) and [Theorem 13](#thm-prod-assoc).

> **NOTE:**
>
> **Example 18 (Power of a product)** With \\a = 2\\, \\b = 3\\, and \\c = 2\\, \\(2 \cdot 3)^2 = 6^2 = 36\\, and \\2^2 \cdot 3^2 = 4 \cdot 9 = 36\\.

> **NOTE:**
>
> **Theorem 26 (Power of a power)** If \\a \> 0\\ and \\b, c \in \mathbb{R}\\, then
>
> \\a^{bc} = \mathopen{}\left(a^b\right)\mathclose{}^c = \mathopen{}\left(a^c\right)\mathclose{}^b\\

> **NOTE:**
>
> **Example 19 (A negative base)** With \\a = -1\\, \\b = 2\\, and \\c = \frac{1}{2}\\:
>
> \\ \begin{aligned} a^{bc} &= (-1)^{2 \cdot\frac{1}{2}} \\ &= (-1)^{1} \\ &= -1 \end{aligned} \\
>
> but
>
> \\ \begin{aligned} \mathopen{}\left(a^b\right)\mathclose{}^c &= \mathopen{}\left((-1)^2\right)\mathclose{}^{\frac{1}{2}} \\ &= 1^{\frac{1}{2}} \\ &= 1 \end{aligned} \\
>
> So \\a^{bc} \neq \mathopen{}\left(a^b\right)\mathclose{}^c\\ here, which is why [Theorem 26](#thm-double-exp) requires \\a \> 0\\. The third expression, \\\mathopen{}\left(a^c\right)\mathclose{}^b = \mathopen{}\left((-1)^{\frac{1}{2}}\right)\mathclose{}^2\\, is not even a real number.

> **NOTE:**
>
> **Corollary 3 (natural exponential of a product)** \\\operatorname{exp}\mathopen{}\left\\ab\right\\\mathclose{} = (\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{})^b = (\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{})^a\\

> **NOTE:**
>
> *Remark 13* (Tarski’s high school identities). Restricted to positive integers, the following results are [Tarski’s eleven “high school” identities](https://en.wikipedia.org/wiki/Tarski%27s_high_school_algebra_problem):
>
> - sums are symmetric and associative ([Theorem 9](#thm-sum-symmetric), [Theorem 10](#thm-sum-assoc));
> - multiplying by 1 changes nothing, products are symmetric and associative, and multiplication is distributive ([Theorem 11](#thm-mult-one), [Theorem 12](#thm-prod-symmetric), [Theorem 13](#thm-prod-assoc), [Theorem 15](#thm-mult-distr));
> - \\1^b = 1\\, \\a^1 = a\\, and the power of a sum, of a product, and of a power ([Theorem 23](#thm-power-one), [Theorem 24](#thm-power-sum), [Theorem 25](#thm-power-product), [Theorem 26](#thm-double-exp)).

> **NOTE:**
>
> *Remark 14* (Tarski’s identities are not complete). Tarski asked whether every identity in \\+\\, \\\times\\, exponentiation and 1 that is true for all positive integers can be derived from the eleven identities in [Remark 13](#rem-tarski-identities). It cannot: Wilkie found an identity that is true for all positive integers but does not follow from them. So this list is a useful core, not a complete rulebook.

> **NOTE:**
>
> **Exercise 9** For \\b,c \in \mathbb{R}\\, when does \\b^c = bc\\?

> **NOTE:**
>
> *Solution 9*. We only count a pair \\(b, c)\\ when \\b^c\\ is a real number, so for \\b \< 0\\ we only consider integer \\c\\ (R agrees: `(-8)^(1/3)` is `NaN`). With that convention, \\bc = b^c\\ in each of the following cases:
>
> 1.  \\c = 1\\, for every \\b\\.
> 2.  \\b = 0\\ and \\c \> 0\\, since then \\b^c = 0 = bc\\. (\\b = 0\\ and \\c = 0\\ fails, since \\0^0 = 1 \neq 0\\.)
> 3.  \\b \> 0\\, \\c \> 0\\, \\c \neq 1\\, and \\b = \operatorname{exp}\mathopen{}\left\\\frac{\operatorname{log}\mathopen{}\left\\c\right\\\mathclose{}}{c-1}\right\\\mathclose{}\\. For \\b \> 0\\, dividing both sides of \\b^c = bc\\ by \\b\\ gives \\b^{c-1} = c\\, which needs \\c \> 0\\ because \\b^{c-1} \> 0\\; taking logarithms then gives \\(c-1)\operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\c\right\\\mathclose{}\\. For example, \\c = 2\\ gives \\b = 2\\, and indeed \\2^2 = 4 = 2 \cdot 2\\.
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
> Figure 2: **Graph of \\b^c - b\*c\\**. Red contour lines show where \\b^c = b\*c\\.

> **NOTE:**
>
> **Exercise 10** For \\a \ge 0,~b,c \in \mathbb{R}\\, when does \\(a^b)^c = a^{(b^c)}\\?

> **NOTE:**
>
> *Solution 10*. Short answer: rarely (that’s all you need to know for this course).
>
> Long answer:
>
> Split on whether \\a \> 0\\ or \\a = 0\\, because the logarithm we use for \\a \> 0\\ is undefined at \\a = 0\\.
>
> **Case \\a \> 0\\.** By [Theorem 26](#thm-double-exp), \\(a^b)^c = a^{bc}\\, so the question becomes when \\a^{bc} = a^{(b^c)}\\ (for pairs \\(b, c)\\ where \\b^c\\ is defined). Because \\a \> 0\\, both sides are positive, and we can take logarithms ([Theorem 21](#thm-log-exp)):
>
> \\ \begin{aligned} a^{bc} &= a^{(b^c)} \\ \operatorname{log}\mathopen{}\left\\a^{bc}\right\\\mathclose{} &= \operatorname{log}\mathopen{}\left\\a^{(b^c)}\right\\\mathclose{} && \text{(take logarithms of both sides)} \\ bc \cdot \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} &= b^c\cdot \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} && \text{(logarithm of a power)} \end{aligned} \tag{1}\\
>
> The last line of [Equation 1](#eq-double-exp-log-scale) holds exactly when
>
> 1.  \\a = 1\\ (so that \\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} = 0\\), or
> 2.  \\bc = b^c\\ (see [Exercise 9](#exr-exp-vs-mult)).
>
> **Case \\a = 0\\.** Here we cannot take logarithms, so we work from the values of powers of \\0\\: \\0^s = 0\\ for \\s \> 0\\, \\0^0 = 1\\, and \\0^s\\ is undefined for \\s \< 0\\.
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

## 15 Complex numbers

> **NOTE:**
>
> **Definition 22 (Imaginary unit)** The **imaginary unit** \\i\\ is a number whose square is \\-1\\:
>
> \\i^2 \stackrel{\text{def}}{=}-1.\\
>
> Apart from that one rule, \\i\\ obeys the usual rules of arithmetic:
>
> - sums and products with \\i\\ are commutative;
> - sums and products with \\i\\ are associative;
> - multiplication distributes over addition.
>
> The number \\-i\\ also squares to \\-1\\, since \\(-i)^2 = (-1)^2\\i^2 = -1\\; \\i\\ names one of these two square roots, chosen once and for all.

Axler ([2024](#ref-axler2024linear), Definition 1.1, p. 2) makes this idea rigorous: it defines a complex number as an ordered pair \\(a, b)\\ of real numbers, written \\a + bi\\, defines addition and multiplication of such pairs, writes \\0 + 1i\\ as \\i\\, and leaves it to the reader to verify that \\i^2 = -1\\.

> **NOTE:**
>
> **Example 20 (Powers of the imaginary unit)** The powers of \\i\\ repeat in a cycle of four:
>
> \\ \begin{aligned} i^3 &= i^2 \cdot i && \text{(split off one factor of } i \text{)} \\ &= (-1) \cdot i && \text{(}\href{#def-imaginary-unit}{\text{Definition~22}}\text{)} \\ &= -i && \text{(multiply)} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} i^4 &= i^2 \cdot i^2 && \text{(split the power into two squares)} \\ &= (-1) \cdot(-1) && \text{(}\href{#def-imaginary-unit}{\text{Definition~22}}\text{, twice)} \\ &= 1 && \text{(multiply)} \end{aligned} \\
>
> so the cycle starts again:
>
> \\ \begin{aligned} i^5 &= i^4 \cdot i && \text{(split off one factor of } i \text{)} \\ &= 1 \cdot i && \text{(} i^4 = 1 \text{)} \\ &= i && \text{(multiply)} \end{aligned} \\
>
> and the powers run \\i, -1, -i, 1, i, \ldots\\.

> **NOTE:**
>
> **Example 21 (No real number squares to \\-1\\)** The imaginary unit is not a real number, because the square of every real number \\x\\ is at least \\0\\:
>
> - if \\x \ge 0\\, then \\x^2 = x \cdot x\\ is a product of two nonnegative numbers, so \\x^2 \ge 0\\;
> - if \\x \< 0\\, then \\x^2 = x \cdot x\\ is a product of two negative numbers, so \\x^2 \> 0\\.
>
> For instance, \\3^2 = 9\\ and \\(-3)^2 = 9\\; neither is \\-1\\. So the equation \\x^2 = -1\\ has no real solution, and [Definition 22](#def-imaginary-unit) introduces a new number to solve it.

> **NOTE:**
>
> **Definition 23 (Complex number)** A **complex number** is a number of the form
>
> \\z = a + b\\i,\\
>
> where \\a\\ and \\b\\ are real numbers and \\i\\ is the imaginary unit ([Definition 22](#def-imaginary-unit)).
>
> - The **real part** of \\z\\ is \\\operatorname{Re} z \stackrel{\text{def}}{=}a\\.
> - The **imaginary part** of \\z\\ is \\\operatorname{Im} z \stackrel{\text{def}}{=}b\\.
> - The set of all complex numbers is \\\mathbb{C} \stackrel{\text{def}}{=}\\a + b\\i : a, b \in \mathbb{R}\\\\.
>
> Two complex numbers are equal exactly when their real parts are equal and their imaginary parts are equal. A real number \\a\\ is the complex number \\a + 0\\i\\, so \\\mathbb{R}\\ is a subset of \\\mathbb{C}\\.

Axler ([2024](#ref-axler2024linear), Definition 1.1, p. 2) defines \\\mathbb{C}\\ as the set of ordered pairs \\(a, b)\\ of real numbers, written \\a + bi\\, and Axler ([2024](#ref-axler2024linear), Definition 4.1, p. 120) defines the real and imaginary parts.

> **NOTE:**
>
> **Example 22 (Real and imaginary parts)** For \\z = 2 - 5\\i\\, the real part is \\\operatorname{Re} z = 2\\ and the imaginary part is \\\operatorname{Im} z = -5\\: the imaginary part is the real number \\-5\\, not \\-5\\i\\.
>
> The numbers \\1 + i\\ and \\1 - i\\ have the same real part, \\1\\, but different imaginary parts, \\1\\ and \\-1\\, so they are different complex numbers.
>
> The real number \\7\\ is the complex number \\7 + 0\\i\\, with real part \\7\\ and imaginary part \\0\\.

> **NOTE:**
>
> **Theorem 27 (Adding and multiplying complex numbers)** For real numbers \\a, b, c, d\\:
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
> \\ \begin{aligned} (a + b\\i)(c + d\\i) &= ac + ad\\i + bc\\i + bd\\i^2 && \text{(distribute)} \\ &= ac + ad\\i + bc\\i - bd && \text{(}\href{#def-imaginary-unit}{\text{Definition~22}}\text{)} \\ &= (ac - bd) + (ad + bc)\\i && \text{(group the real terms and the terms with } i \text{)} \end{aligned} \\

Axler ([2024](#ref-axler2024linear), Definition 1.1, p. 2) takes these two formulas as the definitions of addition and multiplication.

> **NOTE:**
>
> **Example 23 (Adding and multiplying two complex numbers)** Let \\w = 1 + 2\\i\\ and \\z = 3 - i\\. Their sum is
>
> \\ \begin{aligned} w + z &= (1 + 3) + (2 + (-1))\\i && \text{(}\href{#thm-complex-arithmetic}{\text{Theorem~27}}\text{, sum)} \\ &= 4 + i && \text{(add)} \end{aligned} \\
>
> and their product, multiplying out directly, is
>
> \\ \begin{aligned} w z &= 1 \cdot 3 + 1 \cdot(-i) + 2\\i \cdot 3 + 2\\i \cdot(-i) && \text{(distribute)} \\ &= 3 - i + 6\\i - 2\\i^2 && \text{(multiply)} \\ &= 3 - i + 6\\i + 2 && \text{(}\href{#def-imaginary-unit}{\text{Definition~22}}\text{)} \\ &= (3 + 2) + (-1 + 6)\\i && \text{(group the real terms and the terms with } i \text{)} \\ &= 5 + 5\\i && \text{(add)} \end{aligned} \\
>
> The product formula in [Theorem 27](#thm-complex-arithmetic) gives the same answer: with \\a = 1\\, \\b = 2\\, \\c = 3\\ and \\d = -1\\, \\ac - bd = 3 - (-2) = 5\\ and \\ad + bc = -1 + 6 = 5\\.

> **NOTE:**
>
> **Definition 24 (Complex conjugate)** The **complex conjugate** of a complex number \\z = a + b\\i\\ ([Definition 23](#def-complex-number)) is
>
> \\\overline{z} \stackrel{\text{def}}{=}a - b\\i.\\

Axler ([2024](#ref-axler2024linear), Definition 4.2, p. 120) gives the same definition, as \\\overline{z} = \operatorname{Re} z - (\operatorname{Im} z)\\i\\.

> **NOTE:**
>
> **Example 24 (Complex conjugates)**  
>
> - \\\overline{3 + 4\\i} = 3 - 4\\i\\.
> - \\\overline{-2\\i} = \overline{0 + (-2)\\i} = 0 - (-2)\\i = 2\\i\\.
> - \\\overline{5} = \overline{5 + 0\\i} = 5 - 0\\i = 5\\: a real number is its own complex conjugate. A complex number with a nonzero imaginary part, such as \\3 + 4\\i\\, is not.

> **NOTE:**
>
> **Definition 25 (Absolute value of a complex number)** The **absolute value**, or **modulus**, of a complex number \\z = a + b\\i\\ ([Definition 23](#def-complex-number)) is
>
> \\\mathopen{}\left\|z\right\|\mathclose{} \stackrel{\text{def}}{=}\sqrt{a^2 + b^2}.\\

Axler ([2024](#ref-axler2024linear), Definition 4.2, p. 120) gives the same definition.

> **NOTE:**
>
> **Example 25 (Absolute values of complex numbers)**  
>
> - \\\mathopen{}\left\|3 + 4\\i\right\|\mathclose{} = \sqrt{3^2 + 4^2} = \sqrt{25} = 5\\.
> - \\\mathopen{}\left\|-2\\i\right\|\mathclose{} = \sqrt{0^2 + (-2)^2} = \sqrt{4} = 2\\.
> - For a real number \\a = a + 0\\i\\, \\\mathopen{}\left\|a\right\|\mathclose{} = \sqrt{a^2 + 0^2} = \sqrt{a^2}\\, which is the usual absolute value of \\a\\; for instance, \\\mathopen{}\left\|-3\right\|\mathclose{} = \sqrt{9} = 3\\.

> **NOTE:**
>
> **Theorem 28 (A complex number times its conjugate)** For every complex number \\z\\,
>
> \\z\\\overline{z} = \mathopen{}\left\|z\right\|\mathclose{}^2.\\
>
> In particular, \\z\\\overline{z}\\ is a nonnegative real number.

> **NOTE:**
>
> *Proof*. Write \\z = a + b\\i\\ with \\a, b\\ real. Then
>
> \\ \begin{aligned} z\\\overline{z} &= (a + b\\i)(a - b\\i) && \text{(}\href{#def-complex-conjugate}{\text{Definition~24}}\text{)} \\ &= a^2 - ab\\i + ab\\i - b^2\\i^2 && \text{(distribute)} \\ &= a^2 - b^2\\i^2 && \text{(cancel } ab\\i \text{)} \\ &= a^2 + b^2 && \text{(}\href{#def-imaginary-unit}{\text{Definition~22}}\text{)} \\ &= \mathopen{}\left\|z\right\|\mathclose{}^2 && \text{(}\href{#def-complex-modulus}{\text{Definition~25}}\text{)} \end{aligned} \\

Axler ([2024](#ref-axler2024linear), result 4.4, p. 121) lists this identity among the properties of complex numbers.

> **NOTE:**
>
> **Example 26 (Multiplying \\3 + 4\\i\\ by its conjugate)** \\ \begin{aligned} (3 + 4\\i)(3 - 4\\i) &= 9 - 12\\i + 12\\i - 16\\i^2 && \text{(distribute)} \\ &= 9 - 16\\i^2 && \text{(cancel } 12\\i \text{)} \\ &= 9 + 16 && \text{(}\href{#def-imaginary-unit}{\text{Definition~22}}\text{)} \\ &= 25 && \text{(add)} \end{aligned} \\
>
> which is \\\mathopen{}\left\|3 + 4\\i\right\|\mathclose{}^2 = 5^2\\ from [Example 25](#exm-complex-modulus), as [Theorem 28](#thm-conj-product) says.

## 16 Further reading

- Abramson et al. ([2021](#ref-abramson2021algebra)) is a free online textbook on algebra and trigonometry. It covers equations, inequalities, polynomials, exponentials, and logarithms, which overlap with the algebra on this page.
- Rudin ([1976](#ref-rudin1976principles)) develops the real numbers, including the least upper bound property behind the infimum and supremum.

## References

Abramson, Jay et al. 2021. *Algebra and Trigonometry*. 2nd ed. OpenStax. <https://openstax.org/books/algebra-and-trigonometry-2e/pages/preface>.

Axler, Sheldon. 2024. *Linear Algebra Done Right*. 4th ed. Undergraduate Texts in Mathematics. Springer. <https://doi.org/10.1007/978-3-031-41026-0>.

Rudin, Walter. 1976. *Principles of Mathematical Analysis*. 3rd ed. International Series in Pure and Applied Mathematics. McGraw-Hill.

Back to top
