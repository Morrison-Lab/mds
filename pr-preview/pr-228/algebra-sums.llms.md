# Convexity, Infimum and Sums

Code

Published

Last modified: 2026-10-10 18:58:14 (PDT)

## 1 Convex functions

> **NOTE:**
>
> **Exercise 1 (A value compared with an average of values)** Let \\f(x) = (x - 2)^2\\, and take the points \\x = 0\\ and \\y = 4\\ with \\t = \tfrac{1}{2}\\.
>
> 1.  Compute \\f(t x + (1 - t) y)\\.
> 2.  Compute \\t f(x) + (1 - t) f(y)\\.
> 3.  Is \\f(t x + (1 - t) y) \le t f(x) + (1 - t) f(y)\\?

> **NOTE:**
>
> *Solution 1*.
>
> 1.  With \\t = \tfrac{1}{2}\\,
>
>     \\ \begin{aligned} t x + (1 - t) y &= \tfrac{1}{2} \cdot 0 + \tfrac{1}{2} \cdot 4 \\ &= 2, \end{aligned} \\
>
>     so
>
>     \\ \begin{aligned} f(2) &= (2 - 2)^2 \\ &= 0. \end{aligned} \\
>
> 2.  \\ \begin{aligned} f(0) &= (0 - 2)^2 \\ &= 4 \end{aligned} \\
>
>     and
>
>     \\ \begin{aligned} f(4) &= (4 - 2)^2 \\ &= 4, \end{aligned} \\
>
>     so \\\tfrac{1}{2} \cdot 4 + \tfrac{1}{2} \cdot 4 = 4\\.
>
> 3.  Yes: \\0 \le 4\\. The value of \\f\\ at the midpoint of \\0\\ and \\4\\ is below the average of its values at the two endpoints.

> **NOTE:**
>
> **Definition 1 (Line segment)** Let \\x, y \in \mathbb{R}^p\\. The **line segment** from \\x\\ to \\y\\ is the set of points \\ \mathopen{}\left\\t x + (1 - t) y : t \in \[0, 1\]\right\\\mathclose{}. \\ The value \\t = 1\\ gives \\x\\, the value \\t = 0\\ gives \\y\\, and \\t = \tfrac{1}{2}\\ gives the midpoint \\\tfrac{1}{2}(x + y)\\.

> **NOTE:**
>
> **Example 1 (A line segment in \\\mathbb{R}\\)** For \\p = 1\\, \\x = 0\\ and \\y = 4\\, the line segment from \\x\\ to \\y\\ is the [interval](sets-functions.llms.md#def-interval) \\\[0, 4\]\\. The value \\t = \tfrac{1}{4}\\ gives the point \\\tfrac{1}{4} \cdot 0 + \tfrac{3}{4} \cdot 4 = 3\\.

> **NOTE:**
>
> **Definition 2 (Chord)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function), and let \\x, y \in \mathbb{R}^p\\. The **chord** of \\f\\ from \\x\\ to \\y\\ is the line segment ([Definition 1](#def-line-segment)) in \\\mathbb{R}^{p+1}\\ from the point \\(x, f(x))\\ to the point \\(y, f(y))\\ of the [graph](sets-functions.llms.md#def-graph) of \\f\\: \\ \mathopen{}\left\\\mathopen{}\left(t x + (1 - t) y,\\ t f(x) + (1 - t) f(y)\right)\mathclose{} : t \in \[0, 1\]\right\\\mathclose{}. \\ Above the point \\t x + (1 - t) y\\, the chord has height \\t f(x) + (1 - t) f(y)\\.

> **NOTE:**
>
> **Example 2 (A chord of \\x^2\\)** For \\f(x) = x^2\\, \\x = -1\\ and \\y = 3\\, the chord runs from \\(-1, f(-1)) = (-1, 1)\\ to \\(3, f(3)) = (3, 9)\\. With \\t = \tfrac{1}{2}\\, it passes through \\\mathopen{}\left(\tfrac{1}{2} \cdot (-1) + \tfrac{1}{2} \cdot 3,\\ \tfrac{1}{2} \cdot 1 + \tfrac{1}{2} \cdot 9\right)\mathclose{} = (1, 5)\\, so above the point \\1\\ it has height \\5\\.

> **NOTE:**
>
> **Definition 3 (Convex function)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). \\f\\ is **convex** if \\ f(t x + (1 - t) y) \le t f(x) + (1 - t) f(y) \\ for all \\x, y \in \mathbb{R}^p\\ and all \\t \in \[0, 1\]\\.

> **NOTE:**
>
> *Remark 1* (Chords lie on or above the graph). The point \\t x + (1 - t) y\\ lies on the [line segment](#def-line-segment) from \\x\\ to \\y\\, and the right-hand side is the height above that point of the [chord](#def-chord) of \\f\\ from \\x\\ to \\y\\. So \\f\\ is convex when every chord lies on or above the [graph](sets-functions.llms.md#def-graph).
>
> For example, take \\f(x) = x^2\\, \\x = -1\\, \\y = 3\\, and \\t = \tfrac{1}{2}\\. The point is \\\tfrac{1}{2} \cdot (-1) + \tfrac{1}{2} \cdot 3 = 1\\, where the graph has height \\f(1) = 1\\ and the chord has height
>
> \\ \begin{aligned} \tfrac{1}{2} f(-1) + \tfrac{1}{2} f(3) &= \tfrac{1}{2} \cdot 1 + \tfrac{1}{2} \cdot 9 \\ &= 5. \end{aligned} \\
>
> The chord is above the graph: \\1 \le 5\\.

> **NOTE:**
>
> **Example 3 (A function that is not convex)** The function in [Exercise 2 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#exr-local-vs-global-min), \\f(x) = x^3 - 3x\\, is not convex. Take \\x = -2\\, \\y = 0\\, \\t = \tfrac{1}{2}\\. The point is \\\tfrac{1}{2} \cdot (-2) + \tfrac{1}{2} \cdot 0 = -1\\, where the graph has height
>
> \\ \begin{aligned} f(-1) &= -1 + 3 \\ &= 2, \end{aligned} \\
>
> but the chord has height
>
> \\ \begin{aligned} \tfrac{1}{2} f(-2) + \tfrac{1}{2} f(0) &= \tfrac{1}{2} (-8 + 6) + \tfrac{1}{2} \cdot 0 \\ &= -1, \end{aligned} \\
>
> and \\2 \le -1\\ is false.

> **NOTE:**
>
> **Example 4 (A convex and a non-convex function)** \\f(x) = (x - 2)^2\\ is convex ([Definition 3](#def-convex-function)): by expanding the square, \\f(t x + (1 - t) y) - t f(x) - (1 - t) f(y) = -t (1 - t) (x - y)^2 \le 0\\. Its local minimizer \\x^\* = 2\\ is also a global minimizer, since
>
> \\ \begin{aligned} f(x) &= (x - 2)^2 \\ &\ge 0 \\ &= f(2) \end{aligned} \\
>
> for every \\x\\.
>
> Without convexity, a local minimizer need not be global: \\f(x) = x^3 - 3x\\ is not convex ([Example 3](#exm-cubic-not-convex)), and it has a local minimizer at \\x^\* = 1\\ that is not global ([Exercise 2 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#exr-local-vs-global-min)).

> **NOTE:**
>
> **Theorem 1 (Local minimizers of convex functions are global)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ be a [convex function](#def-convex-function). Every [local minimizer](algebra-basics.llms.md#def-local-minimizer) of \\f\\ is a [global minimizer](algebra-basics.llms.md#def-global-minimizer) of \\f\\ over \\\mathbb{R}^p\\.

> **NOTE:**
>
> *Proof*. Let \\x^\*\\ be a local minimizer of \\f\\, so there is a \\\delta\> 0\\ with \\f(x^\*) \le f(x)\\ whenever \\\mathopen{}\left\lVert x - x^\*\right\rVert\mathclose{} \< \delta\\ ([Definition 12 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#def-local-minimizer)). Suppose \\x^\*\\ is not a global minimizer ([Definition 11 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#def-global-minimizer)). Then some \\y \in \mathbb{R}^p\\ has \\f(y) \< f(x^\*)\\, and in particular \\y \ne x^\*\\.
>
> Let \\t = \min\mathopen{}\left\\\tfrac{1}{2}, \dfrac{\delta}{2 \mathopen{}\left\lVert y - x^\*\right\rVert\mathclose{}}\right\\\mathclose{}\\, so \\t \in (0, 1)\\, and let \\z = t y + (1 - t) x^\*\\. Then \\z - x^\* = t (y - x^\*)\\, so \\\mathopen{}\left\lVert z - x^\*\right\rVert\mathclose{} = t \mathopen{}\left\lVert y - x^\*\right\rVert\mathclose{} \le \delta/ 2 \< \delta\\.
>
> By convexity, \\ f(z) \le t f(y) + (1 - t) f(x^\*) \< t f(x^\*) + (1 - t) f(x^\*) = f(x^\*), \\ where the strict inequality uses \\t \> 0\\ and \\f(y) \< f(x^\*)\\. So \\f(z) \< f(x^\*)\\ with \\\mathopen{}\left\lVert z - x^\*\right\rVert\mathclose{} \< \delta\\, which contradicts \\x^\*\\ being a local minimizer. Hence \\x^\*\\ is a global minimizer.

> **NOTE:**
>
> **Theorem 2 (Jensen’s inequality for a weighted average)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ be a [convex function](#def-convex-function). Let \\x_1, \ldots, x_n \in \mathbb{R}^p\\, and let \\w_1, \ldots, w_n \ge 0\\ be weights with \\\sum\_{i=1}^nw_i = 1\\. Then \\ f\mathopen{}\left(\sum\_{i=1}^nw_i x_i\right)\mathclose{} \le \sum\_{i=1}^nw_i f(x_i). \\

> **NOTE:**
>
> *Proof*. The proof is by induction on \\n\\.
>
> For \\n = 1\\ the weight is \\w_1 = 1\\, and both sides equal \\f(x_1)\\.
>
> Now let \\n \ge 2\\, and assume the inequality holds for \\n - 1\\ points. If \\w_n = 1\\, the other weights are all \\0\\, and both sides equal \\f(x_n)\\. Otherwise let
>
> \\ \begin{aligned} s &= 1 - w_n \\ &= \sum\_{i=1}^{n-1} w_i \\ &\> 0 \end{aligned} \\
>
> and \\ y = \sum\_{i=1}^{n-1} \frac{w_i}{s} x_i. \\ The weights \\w_i / s\\ are non-negative and sum to \\1\\, so the induction assumption gives \\ f(y) \le \sum\_{i=1}^{n-1} \frac{w_i}{s} f(x_i). \\ Since \\\sum\_{i=1}^nw_i x_i = s y + (1 - s) x_n\\ and \\s \in (0, 1\]\\, the definition of a convex function ([Definition 3](#def-convex-function)) gives \\ f\mathopen{}\left(\sum\_{i=1}^nw_i x_i\right)\mathclose{} = f(s y + (1 - s) x_n) \le s f(y) + (1 - s) f(x_n). \\ Substituting the bound on \\f(y)\\, and using \\1 - s = w_n\\, \\ s f(y) + (1 - s) f(x_n) \le \sum\_{i=1}^{n-1} w_i f(x_i) + w_n f(x_n) = \sum\_{i=1}^nw_i f(x_i). \\

> **NOTE:**
>
> **Example 5 (The mean of the squares is at least the square of the mean)** Take \\f(x) = x^2\\. It is convex by [Definition 3](#def-convex-function): for \\t \in \[0, 1\]\\, \\ t x^2 + (1 - t) y^2 - \mathopen{}\left(t x + (1 - t) y\right)\mathclose{}^2 = t (1 - t) (x - y)^2 \ge 0. \\ Take the three points \\x_1 = 1\\, \\x_2 = 2\\, \\x_3 = 6\\, and the equal weights
>
> \\ \begin{aligned} w_1 &= w_2 \\ &= w_3 \\ &= \tfrac{1}{3}. \end{aligned} \\
>
> The weighted average of the points is their mean, \\\tfrac{1}{3}(1 + 2 + 6) = 3\\, so the left side of [Theorem 2](#thm-jensen) is \\f(3) = 9\\. The right side is the mean of the squares, \\\tfrac{1}{3}(1 + 4 + 36) = \tfrac{41}{3}\\. The inequality holds: \\9 \le \tfrac{41}{3}\\.
>
> The gap is \\\tfrac{41}{3} - 9 = \tfrac{14}{3}\\. That is the average squared distance of the points from their mean, \\\tfrac{1}{3}\mathopen{}\left((1-3)^2 + (2-3)^2 + (6-3)^2\right)\mathclose{} = \tfrac{14}{3}\\, which is the variance of the three points. For \\f(x) = x^2\\, Jensen’s inequality says a variance is never negative.

> **NOTE:**
>
> *Remark 2* (The inequality reverses for concave functions). If \\f\\ is [concave](optimization.llms.md#def-strictly-convex), then \\-f\\ is convex, and applying [Theorem 2](#thm-jensen) to \\-f\\ reverses the inequality: \\f\mathopen{}\left(\sum_i w_i x_i\right)\mathclose{} \ge \sum_i w_i f(x_i)\\. For \\f(x) = -x^2\\ and the points in [Example 5](#exm-jensen), \\f(3) = -9 \ge -\tfrac{41}{3}\\.

## 2 Infimum and supremum

> **NOTE:**
>
> **Definition 4 (Upper and lower bounds)** Let \\A \subseteq \mathbb{R}\\.
>
> - A real number \\u\\ is an **upper bound** for \\A\\ if \\a \le u\\ for all \\a \in A\\.
> - A real number \\\ell\\ is a **lower bound** for \\A\\ if \\\ell\le a\\ for all \\a \in A\\.
>
> \\A\\ is **bounded above** if it has an upper bound, **bounded below** if it has a lower bound, and **bounded** if it is both bounded above and bounded below. A real-valued [function](sets-functions.llms.md#def-function) is bounded above, bounded below, or bounded if its [image](sets-functions.llms.md#def-image) is.

> **NOTE:**
>
> **Example 6 (Bounded and unbounded sets)**  
>
> - For \\A = (0, 1\]\\, \\1\\, \\2\\, and \\100\\ are upper bounds, and \\0\\ and \\-5\\ are lower bounds, so \\A\\ is bounded. \\0.5\\ is not an upper bound, because \\0.6 \in A\\ and \\0.6 \> 0.5\\.
> - The natural numbers \\\mathbb{N}= \mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\ are bounded below, by \\1\\, but not bounded above: for any real number \\u\\, some natural number \\n\\ satisfies \\n \> u\\.

> **NOTE:**
>
> **Theorem 3 (Completeness of the real numbers)** Let \\A \subseteq \mathbb{R}\\ be nonempty.
>
> - If \\A\\ is [bounded above](#def-bounded), the set of upper bounds of \\A\\ has a [minimum](algebra-basics.llms.md#def-minimum).
> - If \\A\\ is bounded below, the set of lower bounds of \\A\\ has a [maximum](algebra-basics.llms.md#def-maximum).

> **NOTE:**
>
> *Proof*. The first statement is the least-upper-bound property of \\\mathbb{R}\\ ([Rudin 1976](#ref-rudin1976principles), Definition 1.8, p. 4, and Theorem 1.19, p. 8). For the second, let \\-A = \mathopen{}\left\\-a : a \in A\right\\\mathclose{}\\. Negating both sides of an inequality reverses it ([Theorem 4 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#thm-neg-ineq)), so \\\ell\\ is a lower bound of \\A\\ exactly when \\-\ell\\ is an upper bound of \\-A\\. The set \\-A\\ is nonempty and bounded above, so by the first statement its upper bounds have a minimum \\u\\, and then \\-u\\ is the largest lower bound of \\A\\.

> **NOTE:**
>
> **Example 7 (Completeness for an interval)** For \\A = (1, 2\]\\, the lower bounds of \\A\\ are the numbers \\\ell\le 1\\, and the largest of them is \\1\\. The upper bounds of \\A\\ are the numbers \\u\ge 2\\, and the smallest of them is \\2\\.

> **NOTE:**
>
> **Definition 5 (Infimum (greatest lower bound))** Let \\A \subseteq \mathbb{R}\\ be nonempty and bounded below ([Definition 4](#def-bounded)). The **infimum** of \\A\\, written \\\inf A\\, is the greatest real number \\t\\ satisfying \\t \le a\\ for all \\a \in A\\:
>
> \\\inf A \stackrel{\text{def}}{=}\max\mathopen{}\left\\t \in \mathbb{R}: \forall a \in A,\\ t \le a\right\\\mathclose{}\\
>
> If \\A\\ is nonempty but not bounded below, we write \\\inf A = -\infty\\ by convention.

> **NOTE:**
>
> *Remark 3* (Existence of the infimum, and when it is a minimum). The maximum in [Definition 5](#def-infimum) always exists, by the completeness of the real numbers ([Theorem 3](#thm-completeness)). For example, for \\A = (1, 2\]\\, the numbers \\t\\ with \\t \le a\\ for all \\a \in A\\ are those with \\t \le 1\\, and the largest of them is \\1\\, so \\\inf A = 1\\.
>
> If the infimum belongs to \\A\\, it equals the minimum: \\\inf A = \min A\\. For example,
>
> \\ \begin{aligned} \inf \[1, 2\] &= 1 \\ &= \min \[1, 2\]. \end{aligned} \\
>
> For \\A = (1, 2\]\\, the infimum \\1\\ is not in \\A\\, and \\A\\ has no minimum.

> **NOTE:**
>
> **Example 8 (Numerical examples of infimum)**  
>
> - \\\inf\\1, 2, 3\\ = 1\\, since \\1\\ is the smallest element.
>
> - \\ \begin{aligned} \inf(0.5, 1\] &= 0.5 \\ &= \min\[0.5, 1\]: \end{aligned} \\
>
>   for intervals open below, the infimum equals the minimum of the corresponding closed-below interval, even though \\0.5 \notin (0.5, 1\]\\. More generally,
>
>   \\ \begin{aligned} \inf(c, b\] &= \min\[c, b\] \\ &= c \end{aligned} \\
>
>   for any \\c \< b\\.
>
> - \\\inf\\t \ge 0 : t \> 0.5\\ = 0.5\\, even though \\0.5\\ itself is not in the set.
>
> - \\\inf\\-1, -2, -3, \ldots\\ = -\infty\\, because no real number is less than or equal to every element of that set.

> **NOTE:**
>
> **Definition 6 (Supremum (least upper bound))** Let \\A \subseteq \mathbb{R}\\ be nonempty and bounded above ([Definition 4](#def-bounded)). The **supremum** of \\A\\, written \\\sup A\\, is the smallest real number \\t\\ satisfying \\a \le t\\ for all \\a \in A\\:
>
> \\\sup A \stackrel{\text{def}}{=}\min\mathopen{}\left\\t \in \mathbb{R}: \forall a \in A,\\ a \le t\right\\\mathclose{}\\
>
> If \\A\\ is nonempty but not bounded above, we write \\\sup A = +\infty\\ by convention.

> **NOTE:**
>
> *Remark 4* (Existence of the supremum, and when it is a maximum). The minimum in [Definition 6](#def-supremum) always exists, by the completeness of the real numbers ([Theorem 3](#thm-completeness)). For example, for \\A = \[1, 2)\\, the numbers \\t\\ with \\a \le t\\ for all \\a \in A\\ are those with \\t \ge 2\\, and the smallest of them is \\2\\, so \\\sup A = 2\\.
>
> If the supremum belongs to \\A\\, it equals the maximum: \\\sup A = \max A\\. For example,
>
> \\ \begin{aligned} \sup \[1, 2\] &= 2 \\ &= \max \[1, 2\]. \end{aligned} \\
>
> For \\A = \[1, 2)\\, the supremum \\2\\ is not in \\A\\, and \\A\\ has no maximum.

> **NOTE:**
>
> **Example 9 (Numerical examples of supremum)**  
>
> - \\\sup\\1, 2, 3\\ = 3\\, since \\3\\ is the largest element.
> - \\\sup\\t \ge 0 : t \< 0.5\\ = 0.5\\, even though \\0.5\\ itself is not in the set.
> - \\\sup\\1, 2, 3, \ldots\\ = +\infty\\, because no real number is greater than or equal to every element of that set.

## 3 Sums

> **NOTE:**
>
> **Definition 7 (Term of a sum)** In a sum \\a_1 + a_2 + \cdots + a_n\\, each of the numbers or expressions \\a_1, a_2, \ldots, a_n\\ being added is a **term** of the sum.

> **NOTE:**
>
> **Example 10 (Terms of a sum)**  
>
> - The sum \\3 + 5 + 9\\ has three terms: \\3\\, \\5\\ and \\9\\.
> - The sum \\x^2 - 3x + 7 = x^2 + (-3x) + 7\\ has three terms: \\x^2\\, \\-3x\\ and \\7\\. A subtracted expression counts as a term with a minus sign.

> **NOTE:**
>
> **Definition 8 (Identity element)** Let \\S\\ be a set, such as the real numbers \\\mathbb{R}\\, and let \\\star\\ be an operation that combines two elements \\a\\ and \\b\\ of \\S\\ into an element \\a \star b\\ of \\S\\, such as addition (\\a + b\\) or multiplication (\\a \times b\\) of real numbers. An element \\u\\ of \\S\\ is an **identity element** for \\\star\\ if \\a \star u = a\\ and \\u \star a = a\\ for every \\a \in S\\.

> **NOTE:**
>
> **Example 11 (Identity elements for addition and multiplication)**  
>
> - \\0\\ is the identity element for addition: for example, \\5 + 0 = 5\\ and \\0 + 5 = 5\\ ([Theorem 4](#thm-add-ident)).
> - \\1\\ is the identity element for multiplication: for example, \\5 \times 1 = 5\\ and \\1 \times 5 = 5\\ ([Theorem 7](#thm-mult-one)).
> - \\0\\ is not an identity element for subtraction: \\5 - 0 = 5\\, but \\0 - 5 = -5 \ne 5\\.

> **NOTE:**
>
> **Definition 9 (Commutative operation)** An operation \\\star\\ on a set \\S\\ ([Definition 8](#def-identity-element)) is **commutative** if \\a \star b = b \star a\\ for all \\a, b \in S\\: the order of the two inputs does not matter. Some sources, including the titles of [Theorem 5](#thm-sum-symmetric) and [Theorem 8](#thm-prod-symmetric), call a commutative operation **symmetric**.

> **NOTE:**
>
> **Example 12 (A commutative operation, and one that is not)**  
>
> - Addition is commutative: for example,
>
>   \\ \begin{aligned} 2 + 5 &= 7 \\ &= 5 + 2. \end{aligned} \\
>
> - Subtraction is not commutative: \\5 - 3 = 2\\, but \\3 - 5 = -2\\.

> **NOTE:**
>
> **Definition 10 (Associative operation)** An operation \\\star\\ on a set \\S\\ ([Definition 8](#def-identity-element)) is **associative** if \\(a \star b) \star c = a \star (b \star c)\\ for all \\a, b, c \in S\\: which pair is combined first does not matter.

> **NOTE:**
>
> **Example 13 (An associative operation, and one that is not)**  
>
> - Multiplication is associative: for example,
>
>   \\ \begin{aligned} (2 \times 3) \times 4 &= 6 \times 4 \\ &= 24 \end{aligned} \\
>
>   and
>
>   \\ \begin{aligned} 2 \times (3 \times 4) &= 2 \times 12 \\ &= 24. \end{aligned} \\
>
> - Subtraction is not associative:
>
>   \\ \begin{aligned} (8 - 4) - 2 &= 4 - 2 \\ &= 2, \end{aligned} \\
>
>   but
>
>   \\ \begin{aligned} 8 - (4 - 2) &= 8 - 2 \\ &= 6. \end{aligned} \\

> **NOTE:**
>
> **Theorem 4 (Adding zero changes nothing)** \\a+0=a\\

> **NOTE:**
>
> **Theorem 5 (Sums are symmetric)** \\a+b = b+a\\

> **NOTE:**
>
> **Theorem 6 (Sums are associative)** When adding three numbers, it does not matter which pair you add first:
>
> \\(a + b) + c = a + (b + c)\\

> **NOTE:**
>
> **Example 14 (Grouping a sum two ways)** \\ \begin{aligned} (2 + 3) + 4 &= 5 + 4 \\ &= 9, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} 2 + (3 + 4) &= 2 + 7 \\ &= 9. \end{aligned} \\

## 4 Products

> **NOTE:**
>
> **Theorem 7 (Multiplying by 1 changes nothing)** \\a \times 1 = a\\

> **NOTE:**
>
> **Theorem 8 (Products are symmetric)** \\a \times b = b \times a\\

> **NOTE:**
>
> **Theorem 9 (Products are associative)** \\(a \times b) \times c = a \times (b \times c)\\

## 5 Division

> **NOTE:**
>
> **Theorem 10 (Division can be written as a product)** If \\b \neq 0\\, then
>
> \\\frac {a}{b} = a \times \frac{1}{b}\\

## 6 Sums and products together

> **NOTE:**
>
> **Definition 11 (Distributive law)** An operation \\\star\\ on a set \\S\\ **distributes over** an operation \\\diamond\\ on \\S\\ ([Definition 8](#def-identity-element)) if
>
> \\a \star (b \diamond c) = (a \star b) \diamond (a \star c)\\
>
> for all \\a, b, c \in S\\. The **distributive law** is the statement that multiplication distributes over addition, \\a \times (b + c) = (a \times b) + (a \times c)\\ ([Theorem 11](#thm-mult-distr)); we then say multiplication is **distributive**.

> **NOTE:**
>
> **Example 15 (Multiplication distributes over addition, but not the reverse)**  
>
> - \\ \begin{aligned} 3 \times (4 + 5) &= 3 \times 9 \\ &= 27, \end{aligned} \\
>
>   and
>
>   \\ \begin{aligned} (3 \times 4) + (3 \times 5) &= 12 + 15 \\ &= 27. \end{aligned} \\
>
> - Addition does not distribute over multiplication:
>
>   \\ \begin{aligned} 2 + (3 \times 4) &= 2 + 12 \\ &= 14, \end{aligned} \\
>
>   but
>
>   \\ \begin{aligned} (2 + 3) \times (2 + 4) &= 5 \times 6 \\ &= 30. \end{aligned} \\

> **NOTE:**
>
> **Theorem 11 (Multiplication is distributive)** \\a(b+c) = ab + ac\\

> **NOTE:**
>
> **Definition 12 (Like terms)** Two [terms](#def-term) of a sum are **like terms** if they are the same product of variables, each to the same power, possibly multiplied by different constants: \\c_1 m\\ and \\c_2 m\\, where \\c_1\\ and \\c_2\\ are constants and \\m\\ is that product. To **collect** like terms is to replace their sum by one term, using the distributive law ([Theorem 11](#thm-mult-distr)): \\c_1 m + c_2 m = (c_1 + c_2) m\\.

> **NOTE:**
>
> **Example 16 (Like and unlike terms)**  
>
> - \\3ab\\ and \\-5ab\\ are like terms; collecting them gives
>
>   \\ \begin{aligned} 3ab + (-5ab) &= (3 - 5) ab \\ &= -2ab. \end{aligned} \\
>
> - \\2x\\ and \\2x^2\\ are not like terms: \\x\\ appears to different powers.

> **NOTE:**
>
> **Exercise 2 (Expand a squared sum)** Is \\(3 + 4)^2\\ equal to \\3^2 + 4^2\\? Then expand \\(a + b)^2\\ for any numbers \\a\\ and \\b\\, using only the distributive law and the rules above.

> **NOTE:**
>
> *Solution 2*. No:
>
> \\ \begin{aligned} (3 + 4)^2 &= 7^2 \\ &= 49, \end{aligned} \\
>
> while
>
> \\ \begin{aligned} 3^2 + 4^2 &= 9 + 16 \\ &= 25. \end{aligned} \\
>
> The difference, \\49 - 25 = 24\\, is \\2 \cdot 3 \cdot 4\\.
>
> To see where that extra term comes from, write the square as a product and apply the distributive law ([Theorem 11](#thm-mult-distr)) twice:
>
> \\ \begin{aligned} (a + b)^2 &= (a + b)(a + b) && \text{(definition of a square)} \\ &= (a + b)\\a + (a + b)\\b && \text{(distributive law)} \\ &= (a^2 + ba) + (ab + b^2) && \text{(distributive law, twice)} \\ &= a^2 + ab + ab + b^2 && \text{(commutative and associative laws)} \\ &= a^2 + 2ab + b^2 && \text{(collect like terms, }\href{#def-like-terms}{\text{Definition~12}}\text{)} \end{aligned} \\
>
> The step “commutative and associative laws” uses [Theorem 8](#thm-prod-symmetric) to write \\ba\\ as \\ab\\, and [Theorem 6](#thm-sum-assoc) to drop the parentheses.

> **NOTE:**
>
> **Theorem 12 (Square of a sum)** For any numbers \\a\\ and \\b\\,
>
> \\ (a + b)^2 = a^2 + 2ab + b^2 \\

> **NOTE:**
>
> *Proof*. By [Solution 2](#sol-square-of-a-sum).

> **NOTE:**
>
> *Remark 5* (Square of a difference). Replacing \\b\\ by \\-b\\ in [Theorem 12](#thm-square-of-a-sum) gives \\(a - b)^2 = a^2 - 2ab + b^2\\. For example, the square \\(y - \hat y)^2\\ of the difference between an observed value \\y\\ and a prediction \\\hat y\\ of it expands this way. With \\y = 5\\ and \\\hat y= 3\\,
>
> \\ \begin{aligned} (5 - 3)^2 &= 2^2 \\ &= 4, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} 5^2 - 2 \cdot 5 \cdot 3 + 3^2 &= 25 - 30 + 9 \\ &= 4. \end{aligned} \\

## 7 Summation notation

> **NOTE:**
>
> **Exercise 3 (Expand a sum)** The expression \\\sum\_{i=1}^{4} i^2\\ is shorthand for a sum of four terms.
>
> 1.  Guess which four terms, and add them up.
> 2.  Write \\\frac{1}{N}\sum\_{i=1}^N\mathopen{}\left(y_i - \hat y_i\right)\mathclose{}^2\\ for \\N = 3\\ without the \\\sum\\ symbol.

> **NOTE:**
>
> *Solution 3*.
>
> 1.  Replace \\i\\ by each of \\1, 2, 3, 4\\ in turn, and add the results:
>
>     \\ \begin{aligned} \sum\_{i=1}^{4} i^2 &= 1^2 + 2^2 + 3^2 + 4^2 \\ &= 1 + 4 + 9 + 16 \\ &= 30 \end{aligned} \\
>
> 2.  Replace \\i\\ by each of \\1, 2, 3\\ in turn inside the parentheses, add the three squares, and multiply the total by \\\frac{1}{3}\\:
>
>     \\ \frac{1}{3} \sum\_{i=1}^{3} \mathopen{}\left(y_i - \hat y_i\right)\mathclose{}^2 = \frac{1}{3} \mathopen{}\left\[ \mathopen{}\left(y_1 - \hat y_1\right)\mathclose{}^2 + \mathopen{}\left(y_2 - \hat y_2\right)\mathclose{}^2 + \mathopen{}\left(y_3 - \hat y_3\right)\mathclose{}^2 \right\]\mathclose{} \\

> **NOTE:**
>
> **Definition 13 (Summation notation)** Let \\m\\ and \\n\\ be integers with \\m \le n\\, and let \\a_m, a\_{m+1}, \ldots, a_n\\ be numbers. The **sum** of \\a_m\\ through \\a_n\\ is
>
> \\ \sum\_{i=m}^{n} a_i \stackrel{\text{def}}{=}a_m + a\_{m+1} + \cdots + a_n \\
>
> The variable \\i\\ is the **index** of the sum; \\m\\ and \\n\\ are its **lower** and **upper limits**.

> **NOTE:**
>
> *Remark 6* (The index is a placeholder). The name of the index does not change the sum: \\\sum\_{i=1}^na_i\\ and \\\sum\_{j=1}^na_j\\ are the same number. For example,
>
> \\ \begin{aligned} \sum\_{i=1}^{3} i &= 1 + 2 + 3 \\ &= 6 \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \sum\_{j=1}^{3} j &= 1 + 2 + 3 \\ &= 6. \end{aligned} \\

> **NOTE:**
>
> **Definition 14 (Empty sum)** When the upper limit is less than the lower limit (\\n \< m\\), the sum \\\sum\_{i=m}^{n} a_i\\ has no terms. By convention, such an **empty sum** equals \\0\\. For example, \\\sum\_{i=1}^{0} a_i = 0\\.

> **NOTE:**
>
> **Exercise 4 (Rearrange a sum)** Let \\c\\ be a number, and let \\a_1, a_2, a_3\\ and \\b_1, b_2, b_3\\ be numbers. Using [Definition 13](#def-summation) and the rules of algebra above, show that:
>
> 1.  \\\sum\_{i=1}^{3} c\\ a_i = c \sum\_{i=1}^{3} a_i\\;
> 2.  \\\sum\_{i=1}^{3} \mathopen{}\left(a_i + b_i\right)\mathclose{} = \sum\_{i=1}^{3} a_i + \sum\_{i=1}^{3} b_i\\.
>
> Does either argument depend on there being exactly three terms?

> **NOTE:**
>
> *Solution 4*. Each step below applies [Definition 13](#def-summation), the distributive law ([Theorem 11](#thm-mult-distr)), or the commutative and associative laws of addition ([Theorem 5](#thm-sum-symmetric) and [Theorem 6](#thm-sum-assoc)).
>
> 1.  Expand the sum, then factor out \\c\\:
>
>     \\ \begin{aligned} \sum\_{i=1}^{3} c\\ a_i &= c\\ a_1 + c\\ a_2 + c\\ a_3 && \text{(expand the sum)} \\ &= c \mathopen{}\left(a_1 + a_2 + a_3\right)\mathclose{} && \text{(distributive law)} \\ &= c \sum\_{i=1}^{3} a_i && \text{(collect the sum)} \end{aligned} \\
>
> 2.  Expand the sum, then regroup the terms:
>
>     \\ \begin{aligned} \sum\_{i=1}^{3} \mathopen{}\left(a_i + b_i\right)\mathclose{} &= \mathopen{}\left(a_1 + b_1\right)\mathclose{} + \mathopen{}\left(a_2 + b_2\right)\mathclose{} + \mathopen{}\left(a_3 + b_3\right)\mathclose{} && \text{(expand the sum)} \\ &= \mathopen{}\left(a_1 + a_2 + a_3\right)\mathclose{} + \mathopen{}\left(b_1 + b_2 + b_3\right)\mathclose{} && \text{(commutative and associative laws)} \\ &= \sum\_{i=1}^{3} a_i + \sum\_{i=1}^{3} b_i && \text{(collect the sum)} \end{aligned} \\
>
> Neither argument uses the number of terms: the same steps work for any lower and upper limits.

> **NOTE:**
>
> **Theorem 13 (A constant factor comes out of a sum)** For any number \\c\\ and numbers \\a_m, \ldots, a_n\\,
>
> \\ \sum\_{i=m}^{n} c\\ a_i = c \sum\_{i=m}^{n} a_i \\

> **NOTE:**
>
> *Proof*. By [Solution 4](#sol-sum-rules), part 1.

> **NOTE:**
>
> **Theorem 14 (A sum of sums splits)** For any numbers \\a_m, \ldots, a_n\\ and \\b_m, \ldots, b_n\\,
>
> \\ \sum\_{i=m}^{n} \mathopen{}\left(a_i + b_i\right)\mathclose{} = \sum\_{i=m}^{n} a_i + \sum\_{i=m}^{n} b_i \\

> **NOTE:**
>
> *Proof*. By [Solution 4](#sol-sum-rules), part 2.

> **NOTE:**
>
> **Exercise 5 (Sum over a set)** Let \\A = \mathopen{}\left\\-1, 2, 5\right\\\mathclose{}\\ and let \\f(x) = x^2\\. The expression \\\sum\_{x \in A} f(x)\\ means: add up \\f(x)\\ for each element \\x\\ of \\A\\.
>
> 1.  Write \\\sum\_{x \in A} f(x)\\ without the \\\sum\\ symbol, and compute its value.
> 2.  List the elements of \\A\\ in a different order, and add up the same terms in that order. Is the total the same?

> **NOTE:**
>
> *Solution 5*.
>
> 1.  Replace \\x\\ by each element of \\A\\ in turn, and add the results:
>
>     \\ \begin{aligned} \sum\_{x \in A} f(x) &= f(-1) + f(2) + f(5) \\ &= (-1)^2 + 2^2 + 5^2 \\ &= 1 + 4 + 25 \\ &= 30 \end{aligned} \\
>
> 2.  In the order \\5, -1, 2\\, the terms are \\25\\, \\1\\ and \\4\\. Their total is \\25 + 1 + 4 = 30\\. The total is the same, because addition does not depend on the order of the terms.

> **NOTE:**
>
> **Definition 15 (Sum over a finite set)** Let \\A = \mathopen{}\left\\x_1, x_2, \ldots, x_k\right\\\mathclose{}\\ be a [finite](sets-functions.llms.md#def-finite-set) [set](sets-functions.llms.md#def-set) with \\k \ge 1\\ different elements. Let \\f\\ be a [function](sets-functions.llms.md#def-function) that gives a number \\f(x)\\ for each element \\x\\ of \\A\\. The **sum of \\f\\ over \\A\\** is
>
> \\ \sum\_{x \in A} f(x) \stackrel{\text{def}}{=}f(x_1) + f(x_2) + \cdots + f(x_k) \\
>
> If \\A\\ has no elements, the sum has no terms, and by convention it equals \\0\\. For example, \\\sum\_{x \in \mathopen{}\left\\\right\\\mathclose{}} x^2 = 0\\.

> **NOTE:**
>
> *Remark 7* (The order of the terms does not matter). The order in which we list the elements of \\A\\ does not change the sum. The reason is that addition is commutative and associative: we can reorder and regroup the terms of a finite sum without changing the total. For example, if \\A = \mathopen{}\left\\1, 2, 3\right\\\mathclose{}\\ and \\f(x) = x^2\\, listing \\A\\ as \\1, 2, 3\\ gives \\1 + 4 + 9 = 14\\, and listing \\A\\ as \\3, 1, 2\\ gives \\9 + 1 + 4 = 14\\. [Exercise 5](#exr-sum-over-set), part 2, shows another example.
>
> When \\A = \mathopen{}\left\\m, m+1, \ldots, n\right\\\mathclose{}\\, this sum is the same as \\\sum\_{i=m}^{n} f(i)\\ from [Definition 13](#def-summation).

> **NOTE:**
>
> *Remark 8* (Leaving the set out). Some authors leave the set out and write \\\sum\_{x} f(x)\\. This shorthand means the sum over every value \\x\\ can take, \\\sum\_{x \in \mathcal{R}(x)} f(x)\\, where \\\mathcal{R}(x)\\ is the [range](notation.llms.md#def-range-of-variable) of \\x\\. For example, if \\x\\ is the outcome of one roll of a six-sided die, \\\sum\_{x} f(x)\\ means \\\sum\_{x \in \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}} f(x)\\. In these notes, we write the set out in full (see [Notational shorthands](notation.llms.md#sec-notational-shorthands)).

## 8 Quotients

> **NOTE:**
>
> **Definition 16 (Quotient)** For real numbers \\a\\ and \\b\\ with \\b \neq 0\\, the **quotient** of \\a\\ by \\b\\ is the result of dividing \\a\\ by \\b\\:
>
> \\\frac{a}{b}\\

> **NOTE:**
>
> **Definition 17 (Fraction, numerator, and denominator)** A quotient \\\frac{a}{b}\\ ([Definition 16](#def-quotient)) is also called a **fraction**; \\a\\ is its **numerator** and \\b\\ its **denominator**. For example, the fraction \\\frac{6}{4}\\ has numerator \\6\\ and denominator \\4\\.

> **NOTE:**
>
> **Example 17 (A quotient)** The quotient of \\6\\ by \\4\\ is \\\frac{6}{4} = 1.5\\. The quotient of \\6\\ by \\0\\ is undefined, because [Definition 16](#def-quotient) requires a nonzero denominator.

> **NOTE:**
>
> **Definition 18 (Follow-up and person-years)** In a study that observes participants over time, a participant’s **follow-up** is the length of time the study observes that participant, and the study’s **person-years** are the sum of the follow-up times of all participants, measured in years.

> **NOTE:**
>
> **Example 18 (Counting person-years)** If \\10\\ people are each followed for \\2\\ years, the study has \\10 \cdot 2 = 20\\ person-years. If one person is followed for \\3\\ years and another for \\\tfrac{1}{2}\\ year, the study has \\3 + \tfrac{1}{2} = 3.5\\ person-years.

> **NOTE:**
>
> **Definition 19 (Rate)** A **rate** is a quotient of two quantities, usually with a denominator that measures time, such as weeks or person-years of follow-up ([Definition 18](#def-person-years)). For example, \\12\\ new cases in \\4\\ weeks is a rate of \\\frac{12}{4} = 3\\ new cases per week, and \\30\\ cases over \\10{,}000\\ person-years of follow-up is a rate of \\\frac{30}{10{,}000} = 0.003\\ cases per person-year.

cf. <https://en.wikipedia.org/wiki/Rate_(mathematics)>

> **NOTE:**
>
> **Definition 20 (Ratios)** A **ratio** is a quotient in which the numerator and denominator are measured using the same unit scales.
>
> cf. <https://en.wikipedia.org/wiki/Ratio>

> **NOTE:**
>
> **Example 19 (A ratio, and a quotient that is not one)**  
>
> - A board \\150\\ cm long and one \\75\\ cm long have length ratio \\\tfrac{150 \text{ cm}}{75 \text{ cm}} = 2\\: both lengths are in centimeters, so the units cancel and the ratio has none.
> - A sample of mass \\300\\ g and volume \\150\\ cm\\^3\\ gives the quotient \\\tfrac{300 \text{ g}}{150 \text{ cm}^3} = 2\\ g per cm\\^3\\, its density. The numerator and denominator are in different units, so this quotient is not a ratio.

> **NOTE:**
>
> **Definition 21 (Proportion)** In statistics, a **proportion** typically means a ratio where the numerator represents a subset of the denominator.
>
> See <https://en.wikipedia.org/wiki/Population_proportion>.
>
> See also <https://en.wikipedia.org/wiki/Proportion_(mathematics)> for other meanings.

> **NOTE:**
>
> **Example 20 (A proportion, and a ratio that is not one)** In a clinic with \\120\\ patients, \\30\\ of whom smoke:
>
> - the proportion of patients who smoke is \\\tfrac{30}{120} = 0.25\\: the \\30\\ smokers are a subset of the \\120\\ patients;
> - the ratio of smokers to non-smokers is \\\tfrac{30}{90} = \tfrac{1}{3}\\. Both counts are of patients, so this quotient is a ratio, but it is not a proportion: the \\30\\ smokers are not part of the \\90\\ non-smokers.

> **NOTE:**
>
> **Definition 22 (Proportional)** Two functions \\f(x)\\ and \\g(x)\\ are **proportional** if their ratio \\\frac{f(x)}{g(x)}\\ does not depend on \\x\\. (cf. <https://en.wikipedia.org/wiki/Proportionality_(mathematics)>)

> **NOTE:**
>
> **Example 21 (Proportional and non-proportional functions)**  
>
> - \\f(x) = 6x^2\\ and \\g(x) = 2x^2\\ are proportional: for \\x \ne 0\\,
>
>   \\ \begin{aligned} \tfrac{f(x)}{g(x)} &= \tfrac{6x^2}{2x^2} \\ &= 3, \end{aligned} \\
>
>   which does not depend on \\x\\.
>
> - \\f(x) = x + 1\\ and \\g(x) = x\\ are not proportional: for \\x \ne 0\\,
>
>   \\ \begin{aligned} \tfrac{f(x)}{g(x)} &= \tfrac{x + 1}{x} \\ &= \tfrac{x}{x} + \tfrac{1}{x} \\ &= 1 + \tfrac{1}{x}, \end{aligned} \\
>
>   which is \\2\\ at \\x = 1\\ and \\\tfrac{3}{2}\\ at \\x = 2\\.

Additional reference for elementary algebra: <https://en.wikipedia.org/wiki/Population_proportion#Mathematical_definition>

Back to top

## References

Rudin, Walter. 1976. *Principles of Mathematical Analysis*. 3rd ed. International Series in Pure and Applied Mathematics. McGraw-Hill.
