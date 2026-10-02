# Algebra

Code

Published

Last modified: 2026-10-01 23:47:01 (PDT)

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

Not every set has a minimum. The interval \\(0, 1\]\\ has none: every element \\a\\ of it has a smaller element, \\a/2\\, also in it. In [Exercise 1](#exr-min-and-argmin), the smallest value of \\g\\ is \\\min\mathopen{}\left\\5, 2, 2, 5\right\\\mathclose{} = 2\\.

> **NOTE:**
>
> **Definition 2 (Maximum)** Let \\A \subseteq \mathbb{R}\\. A number \\M\\ is the **maximum** of \\A\\, written \\\max A\\, if \\M \in A\\ and \\a \le M\\ for all \\a \in A\\.

> **NOTE:**
>
> **Definition 3 (Argmin)** Let \\f : A \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). The **argmin** of \\f\\ over \\A\\ is the set of inputs where \\f\\ takes its smallest value:
>
> \\\arg \min\_{x \in A} f(x) \stackrel{\text{def}}{=}\mathopen{}\left\\x \in A : \forall a \in A,\\ f(x) \le f(a)\right\\\mathclose{}\\
>
> When this set has exactly one element \\\hat{x}\\, we write \\\hat{x} = \arg \min\_{x \in A} f(x)\\.

The smallest value itself is \\\min f(A)\\, the minimum ([Definition 1](#def-minimum)) of the [image](sets-functions.llms.md#def-image) of \\f\\, and the argmin is where that value is attained. In [Exercise 1](#exr-min-and-argmin), \\\arg \min\_{x \in \mathbb{R}} f(x) = 2\\ and \\\arg \min\_{x \in \mathopen{}\left\\0, 1, 3, 4\right\\\mathclose{}} g(x) = \mathopen{}\left\\1, 3\right\\\mathclose{}\\. The argmin is empty when \\f\\ has no smallest value, for example \\f(x) = x\\ on \\(0, 1\]\\.

> **NOTE:**
>
> **Definition 4 (Argmax)** Let \\f : A \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). The **argmax** of \\f\\ over \\A\\ is the set of inputs where \\f\\ takes its largest value:
>
> \\\arg \max\_{x \in A} f(x) \stackrel{\text{def}}{=}\mathopen{}\left\\x \in A : \forall a \in A,\\ f(a) \le f(x)\right\\\mathclose{}\\
>
> When this set has exactly one element \\\hat{x}\\, we write \\\hat{x} = \arg \max\_{x \in A} f(x)\\.

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

The global minimizers of \\f\\ are exactly the elements of \\\arg \min\_{x \in A} f(x)\\ ([Definition 3](#def-argmin)). In [Exercise 2](#exr-local-vs-global-min), \\f\\ has no global minimizer over \\\mathbb{R}\\.

> **NOTE:**
>
> **Definition 6 (Local minimizer)** Let \\A \subseteq \mathbb{R}^p\\ and let \\f : A \to \mathbb{R}\\ be a [function](sets-functions.llms.md#def-function). A point \\x^\* \in A\\ is a **local minimizer** of \\f\\ if there is a number \\\delta \> 0\\ such that \\f(x^\*) \le f(x)\\ for all \\x \in A\\ with \\\mathopen{}\left\lVert x - x^\*\right\rVert\mathclose{} \< \delta\\, where \\\mathopen{}\left\lVert\cdot\right\rVert\mathclose{}\\ is the [Euclidean norm](linear-algebra.llms.md#def-euclidean-norm).

For \\p = 1\\, \\\mathopen{}\left\lVert x - x^\*\right\rVert\mathclose{} = \mathopen{}\left\|x - x^\*\right\|\mathclose{}\\. Every global minimizer ([Definition 5](#def-global-minimizer)) is a local minimizer: take any \\\delta \> 0\\. The converse fails. In [Exercise 2](#exr-local-vs-global-min), \\x^\* = 1\\ is a local minimizer of \\f\\ (take \\\delta = 1\\), but not a global one.

## 5 Infimum and supremum

> **NOTE:**
>
> **Definition 7 (Infimum (greatest lower bound))** Let \\A \subseteq \mathbb{R}\\ be nonempty and bounded below, meaning that some \\t \in \mathbb{R}\\ satisfies \\t \le a\\ for all \\a \in A\\. The **infimum** of \\A\\, written \\\inf A\\, is the greatest real number \\t\\ satisfying \\t \le a\\ for all \\a \in A\\:
>
> \\\inf A \stackrel{\text{def}}{=}\max\mathopen{}\left\\t \in \mathbb{R}: \forall a \in A,\\ t \le a\right\\\mathclose{}\\
>
> If \\A\\ is nonempty but not bounded below, we write \\\inf A = -\infty\\ by convention.

The maximum in [Definition 7](#def-infimum) always exists: that is the completeness (greatest-lower-bound) property of the real numbers ([Rudin 1976](#ref-rudin1976principles), Definition 1.8, p. 4, and Theorem 1.19, p. 8). If the infimum belongs to \\A\\, it equals the minimum: \\\inf A = \min A\\.

> **NOTE:**
>
> **Example 1 (Numerical examples of infimum)**  
>
> - \\\inf\\1, 2, 3\\ = 1\\, since \\1\\ is the smallest element.
> - \\\inf(0.5, 1\] = 0.5 = \min\[0.5, 1\]\\: for intervals open below, the infimum equals the minimum of the corresponding closed-below interval, even though \\0.5 \notin (0.5, 1\]\\. More generally, \\\inf(c, b\] = \min\[c, b\] = c\\ for any \\c \< b\\.
> - \\\inf\\t \ge 0 : t \> 0.5\\ = 0.5\\, even though \\0.5\\ itself is not in the set.
> - \\\inf\\-1, -2, -3, \ldots\\ = -\infty\\, because no real number is less than or equal to every element of that set.

> **NOTE:**
>
> **Definition 8 (Supremum (least upper bound))** Let \\A \subseteq \mathbb{R}\\ be nonempty and bounded above, meaning that some \\t \in \mathbb{R}\\ satisfies \\a \le t\\ for all \\a \in A\\. The **supremum** of \\A\\, written \\\sup A\\, is the smallest real number \\t\\ satisfying \\a \le t\\ for all \\a \in A\\:
>
> \\\sup A \stackrel{\text{def}}{=}\min\mathopen{}\left\\t \in \mathbb{R}: \forall a \in A,\\ a \le t\right\\\mathclose{}\\
>
> If \\A\\ is nonempty but not bounded above, we write \\\sup A = +\infty\\ by convention.

The minimum in [Definition 8](#def-supremum) always exists: that is the completeness (least-upper-bound) property of the real numbers ([Rudin 1976](#ref-rudin1976principles), Definition 1.8, p. 4, and Theorem 1.19, p. 8). If the supremum belongs to \\A\\, it equals the maximum: \\\sup A = \max A\\.

> **NOTE:**
>
> **Example 2 (Numerical examples of supremum)**  
>
> - \\\sup\\1, 2, 3\\ = 3\\, since \\3\\ is the largest element.
> - \\\sup\\t \ge 0 : t \< 0.5\\ = 0.5\\, even though \\0.5\\ itself is not in the set.
> - \\\sup\\1, 2, 3, \ldots\\ = +\infty\\, because no real number is greater than or equal to every element of that set.

## 6 Sums

> **NOTE:**
>
> **Theorem 7 (adding zero changes nothing)** \\a+0=a\\

> **NOTE:**
>
> **Theorem 8 (Sums are symmetric)** \\a+b = b+a\\

> **NOTE:**
>
> **Theorem 9 (Sums are associative)**  
>
> When summing three or more terms, the order in which you sum them does not matter:
>
> \\(a + b) + c = a + (b + c)\\

## 7 Products

> **NOTE:**
>
> **Theorem 10 (Multiplying by 1 changes nothing)** \\a \times 1 = a\\

> **NOTE:**
>
> **Theorem 11 (Products are symmetric)** \\a \times b = b \times a\\

> **NOTE:**
>
> **Theorem 12 (Products are associative)** \\(a \times b) \times c = a \times (b \times c)\\

## 8 Division

> **NOTE:**
>
> **Theorem 13 (Division can be written as a product)** If \\b \neq 0\\, then
>
> \\\frac {a}{b} = a \times \frac{1}{b}\\

## 9 Sums and products together

> **NOTE:**
>
> **Theorem 14 (Multiplication is distributive)** \\a(b+c) = ab + ac\\

> **NOTE:**
>
> **Exercise 3 (Expand a squared sum)** Is \\(3 + 4)^2\\ equal to \\3^2 + 4^2\\? Then expand \\(a + b)^2\\ for any numbers \\a\\ and \\b\\, using only the distributive law and the rules above.

> **NOTE:**
>
> *Solution 3*. No: \\(3 + 4)^2 = 7^2 = 49\\, while \\3^2 + 4^2 = 9 + 16 = 25\\. The difference, \\49 - 25 = 24\\, is \\2 \cdot 3 \cdot 4\\.
>
> To see where that extra term comes from, write the square as a product and apply the distributive law ([Theorem 14](#thm-mult-distr)) twice:
>
> \\ \begin{aligned} (a + b)^2 &= (a + b)(a + b) && \text{(definition of a square)} \\ &= (a + b)\\a + (a + b)\\b && \text{(distributive law)} \\ &= (a^2 + ba) + (ab + b^2) && \text{(distributive law, twice)} \\ &= a^2 + ab + ab + b^2 && \text{(commutative and associative laws)} \\ &= a^2 + 2ab + b^2 && \text{(collect like terms)} \end{aligned} \\
>
> The step “commutative and associative laws” uses [Theorem 11](#thm-prod-symmetric) to write \\ba\\ as \\ab\\, and [Theorem 9](#thm-sum-assoc) to drop the parentheses.

> **NOTE:**
>
> **Theorem 15 (Square of a sum)** For any numbers \\a\\ and \\b\\,
>
> \\ (a + b)^2 = a^2 + 2ab + b^2 \\

> **NOTE:**
>
> *Proof*. By [Solution 3](#sol-square-of-a-sum).

Replacing \\b\\ by \\-b\\ gives \\(a - b)^2 = a^2 - 2ab + b^2\\. Squared errors such as \\(y - \hat{y})^2\\ are expanded this way.

## 10 Quotients

> **NOTE:**
>
> **Definition 9 (Quotient)** For real numbers \\a\\ and \\b\\ with \\b \neq 0\\, the **quotient** of \\a\\ by \\b\\ is the result of dividing \\a\\ by \\b\\:
>
> \\\frac{a}{b}\\

A quotient is also called a *fraction*; \\a\\ is its *numerator* and \\b\\ its *denominator*. A quotient whose denominator measures time or population size is often called a *rate*; in epidemiology, rates typically have such a denominator.

cf. <https://en.wikipedia.org/wiki/Rate_(mathematics)>

> **NOTE:**
>
> **Example 3 (A quotient)** The quotient of \\6\\ by \\4\\ is \\\frac{6}{4} = 1.5\\. The quotient of \\6\\ by \\0\\ is undefined, because [Definition 9](#def-quotient) requires a nonzero denominator.

> **NOTE:**
>
> **Definition 10 (Ratios)** A **ratio** is a quotient in which the numerator and denominator are measured using the same unit scales.
>
> cf. <https://en.wikipedia.org/wiki/Ratio>

> **NOTE:**
>
> **Definition 11 (Proportion)** In statistics, a **proportion** typically means a ratio where the numerator represents a subset of the denominator.
>
> See <https://en.wikipedia.org/wiki/Population_proportion>.
>
> See also <https://en.wikipedia.org/wiki/Proportion_(mathematics)> for other meanings.

> **NOTE:**
>
> **Definition 12 (Proportional)** Two functions \\f(x)\\ and \\g(x)\\ are **proportional** if their ratio \\\frac{f(x)}{g(x)}\\ does not depend on \\x\\. (cf. <https://en.wikipedia.org/wiki/Proportionality_(mathematics)>)

Additional reference for elementary algebra: <https://en.wikipedia.org/wiki/Population_proportion#Mathematical_definition>

## 11 Exponentials and Logarithms

In these notes, \\\operatorname{log}\mathopen{}\left\\x\right\\\mathclose{}\\ is the natural logarithm of \\x \> 0\\, the logarithm with base \\e \approx 2.718\\, and \\\operatorname{exp}\mathopen{}\left\\x\right\\\mathclose{} = e^x\\ is the exponential function. Some sources write \\\ln x\\ for the natural logarithm and reserve \\\log x\\ for base 10.

> **NOTE:**
>
> **Theorem 16 (\\\operatorname{exp}\mathopen{}\left\\\right\\\mathclose{}\\ and \\\operatorname{log}\mathopen{}\left\\\right\\\mathclose{}\\ are mutual inverses)**  
>
> 1.  For every \\a \> 0\\: \\\operatorname{exp}\mathopen{}\left\\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{}\right\\\mathclose{} = a\\.
> 2.  For every \\a \in \mathbb{R}\\: \\\operatorname{log}\mathopen{}\left\\\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{}\right\\\mathclose{} = a\\.

> **NOTE:**
>
> **Theorem 17 (Logarithm of a product)** If \\a \> 0\\ and \\b \> 0\\, then
>
> \\ \operatorname{log}\mathopen{}\left\\a \cdot b\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} + \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} \\

> **NOTE:**
>
> **Corollary 1 (Logarithm of a quotient)** If \\a \> 0\\ and \\b \> 0\\, then
>
> \\\operatorname{log}\mathopen{}\left\\\frac{a}{b}\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} - \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{}\\

> **NOTE:**
>
> *Proof*. Since \\a \> 0\\ and \\b \> 0\\, the quotient \\\frac{a}{b}\\ is positive, so [Theorem 17](#thm-log-prod) applies to the product \\\frac{a}{b} \cdot b\\:
>
> \\ \begin{aligned} \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} &= \operatorname{log}\mathopen{}\left\\\frac{a}{b} \cdot b\right\\\mathclose{} && \text{(} a = \tfrac{a}{b} \cdot b \text{)} \\ &= \operatorname{log}\mathopen{}\left\\\frac{a}{b}\right\\\mathclose{} + \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} && \text{(logarithm of a product)} \end{aligned} \\
>
> The second step applies [Theorem 17](#thm-log-prod). Subtracting \\\operatorname{log}\mathopen{}\left\\b\right\\\mathclose{}\\ from both sides gives \\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} - \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\\frac{a}{b}\right\\\mathclose{}\\.

> **NOTE:**
>
> **Theorem 18 (Logarithm of a power)** If \\a \> 0\\ and \\b \in \mathbb{R}\\, then
>
> \\ \operatorname{log}\mathopen{}\left\\a^b\right\\\mathclose{} = b \cdot\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} \\

> **NOTE:**
>
> **Theorem 19 (exponential of a sum)**  
>
> The exponential of a sum is equal to the product of the exponentials of the addends:
>
> \\\operatorname{exp}\mathopen{}\left\\a+b\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{} \cdot\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{}\\

> **NOTE:**
>
> **Corollary 2 (exponential of a difference)**  
>
> The exponential of a difference is the exponential of the first term divided by the exponential of the second term:
>
> \\\operatorname{exp}\mathopen{}\left\\a-b\right\\\mathclose{} = \frac{\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{}}{\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{}}\\

> **NOTE:**
>
> **Theorem 20 (Power of a power)** If \\a \> 0\\ and \\b, c \in \mathbb{R}\\, then
>
> \\a^{bc} = \mathopen{}\left(a^b\right)\mathclose{}^c = \mathopen{}\left(a^c\right)\mathclose{}^b\\

> **NOTE:**
>
> **Example 4 (A negative base)** With \\a = -1\\, \\b = 2\\, and \\c = \frac{1}{2}\\:
>
> \\ \begin{aligned} a^{bc} &= (-1)^{2 \cdot\frac{1}{2}} \\ &= (-1)^{1} \\ &= -1 \end{aligned} \\
>
> but
>
> \\ \begin{aligned} \mathopen{}\left(a^b\right)\mathclose{}^c &= \mathopen{}\left((-1)^2\right)\mathclose{}^{\frac{1}{2}} \\ &= 1^{\frac{1}{2}} \\ &= 1 \end{aligned} \\
>
> So \\a^{bc} \neq \mathopen{}\left(a^b\right)\mathclose{}^c\\ here, which is why [Theorem 20](#thm-double-exp) requires \\a \> 0\\. The third expression, \\\mathopen{}\left(a^c\right)\mathclose{}^b = \mathopen{}\left((-1)^{\frac{1}{2}}\right)\mathclose{}^2\\, is not even a real number.

> **NOTE:**
>
> **Corollary 3 (natural exponential of a product)** \\\operatorname{exp}\mathopen{}\left\\ab\right\\\mathclose{} = (\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{})^b = (\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{})^a\\

> **NOTE:**
>
> **Exercise 4** For \\b,c \in \mathbb{R}\\, when does \\b^c = bc\\?

> **NOTE:**
>
> *Solution 4*. We only count a pair \\(b, c)\\ when \\b^c\\ is a real number, so for \\b \< 0\\ we only consider integer \\c\\ (R agrees: `(-8)^(1/3)` is `NaN`). With that convention, \\bc = b^c\\ in each of the following cases:
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
> **Exercise 5** For \\a \ge 0,~b,c \in \mathbb{R}\\, when does \\(a^b)^c = a^{(b^c)}\\?

> **NOTE:**
>
> *Solution 5*. Short answer: rarely (that’s all you need to know for this course).
>
> Long answer:
>
> Split on whether \\a \> 0\\ or \\a = 0\\, because the logarithm we use for \\a \> 0\\ is undefined at \\a = 0\\.
>
> **Case \\a \> 0\\.** By [Theorem 20](#thm-double-exp), \\(a^b)^c = a^{bc}\\, so the question becomes when \\a^{bc} = a^{(b^c)}\\ (for pairs \\(b, c)\\ where \\b^c\\ is defined). Because \\a \> 0\\, both sides are positive, and we can take logarithms ([Theorem 18](#thm-log-exp)):
>
> \\ \begin{aligned} a^{bc} &= a^{(b^c)} \\ \operatorname{log}\mathopen{}\left\\a^{bc}\right\\\mathclose{} &= \operatorname{log}\mathopen{}\left\\a^{(b^c)}\right\\\mathclose{} && \text{(take logarithms of both sides)} \\ bc \cdot \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} &= b^c\cdot \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} && \text{(logarithm of a power)} \end{aligned} \tag{1}\\
>
> The last line of [Equation 1](#eq-double-exp-log-scale) holds exactly when
>
> 1.  \\a = 1\\ (so that \\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} = 0\\), or
> 2.  \\bc = b^c\\ (see [Exercise 4](#exr-exp-vs-mult)).
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

Back to top

## References

Rudin, Walter. 1976. *Principles of Mathematical Analysis*. 3rd ed. International Series in Pure and Applied Mathematics. McGraw-Hill.
