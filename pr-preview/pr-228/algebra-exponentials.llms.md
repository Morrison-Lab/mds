# Polynomials, Exponentials and Logarithms

Code

Published

Last modified: 2026-10-10 18:58:14 (PDT)

## 1 Polynomials

> **NOTE:**
>
> **Exercise 1 (Reading a polynomial)** Let \\f(x) = 3x^4 - x + 7\\.
>
> 1.  Write \\f\\ in the form \\a_n x^n + a\_{n-1} x^{n-1} + \cdots + a_1 x + a_0\\, listing every coefficient \\a_4, a_3, a_2, a_1, a_0\\.
> 2.  What is the degree of \\f\\, and what is its leading coefficient?

> **NOTE:**
>
> *Solution 1*.
>
> 1.  \\f(x) = 3x^4 + 0 \cdot x^3 + 0 \cdot x^2 + (-1) \cdot x + 7\\, so \\a_4 = 3\\, \\a_3 = 0\\, \\a_2 = 0\\, \\a_1 = -1\\, and \\a_0 = 7\\. Powers of \\x\\ that do not appear have coefficient \\0\\.
>
> 2.  The highest power with a nonzero coefficient is \\x^4\\, so the degree is \\4\\ and the leading coefficient is \\a_4 = 3\\.

> **NOTE:**
>
> **Definition 1 (Constant function)** A [function](sets-functions.llms.md#def-function) \\f : A \to B\\ is **constant** if there is some \\c \in B\\ with \\f(x) = c\\ for all \\x \in A\\.

> **NOTE:**
>
> **Example 1 (Constant and non-constant functions)**  
>
> - \\f(x) = 7\\ on \\\mathbb{R}\\ is constant, with \\c = 7\\.
> - \\f(x) = x^2\\ on \\\mathbb{R}\\ is not constant: \\f(0) = 0\\ but \\f(1) = 1\\.

> **NOTE:**
>
> **Definition 2 (Polynomial)** A **polynomial** (in one variable \\x\\) is a [function](sets-functions.llms.md#def-function) \\f : \mathbb{R}\to \mathbb{R}\\ that can be written as \\ f(x) = a_n x^n + a\_{n-1} x^{n-1} + \cdots + a_1 x + a_0 \\ for some integer \\n \ge 0\\ and constants \\a_0, a_1, \ldots, a_n \in \mathbb{R}\\ with \\a_n \ne 0\\. The constants \\a_0, a_1, \ldots, a_n\\ are the **coefficients** of \\f\\, with \\a_k\\ the coefficient of \\x^k\\, and the [terms](algebra-sums.llms.md#def-term) of \\f\\ are \\a_n x^n, \ldots, a_1 x, a_0\\.

> **NOTE:**
>
> *Remark 1* (Constant and zero polynomials). A [constant function](#def-constant-function) \\f(x) = 7\\ is a polynomial with \\n = 0\\ and \\a_0 = 7\\. The requirement \\a_n \ne 0\\ means this definition covers nonzero polynomials only: the zero function \\f(x) = 0\\ is excluded here, because it has no nonzero coefficient to serve as \\a_n\\.

> **NOTE:**
>
> **Definition 3 (Degree of a polynomial)** Let \\f(x) = a_n x^n + \cdots + a_1 x + a_0\\ be a [polynomial](#def-polynomial) with \\a_n \ne 0\\. The integer \\n\\ is the **degree** of \\f\\.

> **NOTE:**
>
> **Example 2 (Degrees of some polynomials)**  
>
> - \\f(x) = 4x\\ has degree \\1\\.
> - \\f(x) = 5 - 2x^2 + x^3\\ has degree \\3\\: the degree is the highest power with a nonzero coefficient, not the power in the first term written.
> - A [constant](#def-constant-function) polynomial \\f(x) = 7\\ has degree \\0\\.

> **NOTE:**
>
> **Definition 4 (Leading coefficient)** Let \\f(x) = a_n x^n + \cdots + a_1 x + a_0\\ be a [polynomial](#def-polynomial) of [degree](#def-polynomial-degree) \\n\\. The constant \\a_n\\ is the **leading coefficient** of \\f\\.

> **NOTE:**
>
> **Example 3 (Leading coefficients)**  
>
> - \\f(x) = 5 - 2x^2 + x^3\\ has degree \\3\\, so its leading coefficient is \\a_3 = 1\\, not the \\5\\ written first.
> - \\f(x) = 3 - x^2\\ has leading coefficient \\a_2 = -1\\.

> **NOTE:**
>
> **Definition 5 (Quadratic and cubic polynomials)** A [polynomial](#def-polynomial) of [degree](#def-polynomial-degree) \\2\\, \\f(x) = a_2 x^2 + a_1 x + a_0\\ with \\a_2 \ne 0\\, is a **quadratic** polynomial. A polynomial of degree \\3\\ is a **cubic** polynomial.

> **NOTE:**
>
> **Example 4 (Quadratic and cubic polynomials)**  
>
> - \\ \begin{aligned} f(x) &= (x - 2)^2 \\ &= x^2 - 4x + 4 \end{aligned} \\
>
>   is quadratic, by [Remark 5 in Convexity, Infimum and Sums](algebra-sums.llms.md#rem-square-of-a-difference) with \\a = x\\ and \\b = 2\\.
>
> - \\f(x) = x^3 - 3x\\ is cubic.
>
> - \\f(x) = 4x + 1\\ is neither: it has degree \\1\\.

> **NOTE:**
>
> **Definition 6 (Parabola)** A **parabola** is the [graph](sets-functions.llms.md#def-graph) of a quadratic polynomial ([Definition 5](#def-quadratic-cubic)).

> **NOTE:**
>
> **Example 5 (The parabola \\y = x^2\\)** The graph of \\f(x) = x^2\\ is a parabola. It contains the points \\(-1, 1)\\, \\(0, 0)\\ and \\(2, 4)\\, and its lowest point is \\(0, 0)\\, since \\x^2 \ge 0\\ for every \\x\\.

## 2 Affine and linear functions of one variable

> **NOTE:**
>
> **Definition 7 (Affine function of one variable)** A [function](sets-functions.llms.md#def-function) \\f: \mathbb{R}\to \mathbb{R}\\ is **affine** if there are numbers \\m\\ and \\b\\ such that
>
> \\f(x) = m x + b \quad \text{for all } x \in \mathbb{R}\\
>
> In this formula, \\m\\ is called the **slope** of \\f\\ and \\b\\ its **intercept**.

> **NOTE:**
>
> **Definition 8 (Linear function of one variable)** A function \\f: \mathbb{R}\to \mathbb{R}\\ is **linear** if it is affine ([Definition 7](#def-affine-function)) with intercept \\0\\; that is, if there is a number \\m\\ such that
>
> \\f(x) = m x \quad \text{for all } x \in \mathbb{R}\\

> **NOTE:**
>
> **Theorem 1 (Intercept and slope of an affine function)** Let \\f(x) = m x + b\\ be an affine function ([Definition 7](#def-affine-function)).
>
> 1.  The intercept is the value at zero: \\f(0) = b\\.
> 2.  The slope is the change in \\f\\ per unit change in \\x\\: for any \\x_1 \neq x_2\\, \\\frac{f(x_2) - f(x_1)}{x_2 - x_1} = m\\
> 3.  So \\f\\ determines its slope and intercept: if also \\f(x) = m' x + b'\\ for all \\x\\, then \\m' = m\\ and \\b' = b\\.

> **NOTE:**
>
> *Proof*. **Part 1.**
>
> \\ \begin{aligned} f(0) &= m \cdot 0 + b && \text{(}\href{#def-affine-function}{\text{Definition~7}}\text{)} \\&= 0 + b && \text{(any number times } 0 \text{ is } 0 \text{)} \\&= b + 0 && \text{(}\href{algebra-sums.qmd#thm-sum-symmetric}{\text{Theorem~5 in Convexity, Infimum and Sums}}\text{)} \\&= b && \text{(}\href{algebra-sums.qmd#thm-add-ident}{\text{Theorem~4 in Convexity, Infimum and Sums}}\text{)} \end{aligned} \\
>
> **Part 2.** First the numerator:
>
> \\ \begin{aligned} f(x_2) - f(x_1) &= (m x_2 + b) - (m x_1 + b) && \text{(}\href{#def-affine-function}{\text{Definition~7}}\text{)} \\&= m x_2 + b - m x_1 - b && \text{(subtracting a sum subtracts each term)} \\&= m x_2 - m x_1 + b - b && \text{(}\href{algebra-sums.qmd#thm-sum-symmetric}{\text{Theorem~5 in Convexity, Infimum and Sums}}\text{, swapping } b \text{ and } {-m x_1} \text{)} \\&= (m x_2 - m x_1) + (b - b) && \text{(}\href{algebra-sums.qmd#thm-sum-assoc}{\text{Theorem~6 in Convexity, Infimum and Sums}}\text{)} \\&= (m x_2 - m x_1) + 0 && (b - b = 0) \\&= m x_2 - m x_1 && \text{(}\href{algebra-sums.qmd#thm-add-ident}{\text{Theorem~4 in Convexity, Infimum and Sums}}\text{)} \\&= m x_2 + m (-x_1) && (-(m x_1) = m (-x_1) \text{, by }\href{algebra-basics.qmd#thm-negative-one}{\text{Theorem~6 in Equalities, Inequalities and Minimizers}}\text{ and }\href{algebra-sums.qmd#thm-prod-assoc}{\text{Theorem~9 in Convexity, Infimum and Sums}}\text{)} \\&= m (x_2 + (-x_1)) && \text{(}\href{algebra-sums.qmd#thm-mult-distr}{\text{Theorem~11 in Convexity, Infimum and Sums}}\text{, read right to left)} \\&= m (x_2 - x_1) && \text{(adding a negative is subtracting)} \end{aligned} \\
>
> Then, writing \\d = x_2 - x_1\\, which is not \\0\\ because \\x_1 \neq x_2\\,
>
> \\ \begin{aligned} \frac{f(x_2) - f(x_1)}{x_2 - x_1} &= \frac{m d}{d} && \text{(the numerator above)} \\&= (m d) \cdot\frac{1}{d} && \text{(}\href{algebra-sums.qmd#thm-prod-div}{\text{Theorem~10 in Convexity, Infimum and Sums}}\text{)} \\&= m \cdot\mathopen{}\left(d \cdot\frac{1}{d}\right)\mathclose{} && \text{(}\href{algebra-sums.qmd#thm-prod-assoc}{\text{Theorem~9 in Convexity, Infimum and Sums}}\text{)} \\&= m \cdot\frac{d}{d} && \text{(}\href{algebra-sums.qmd#thm-prod-div}{\text{Theorem~10 in Convexity, Infimum and Sums}}\text{)} \\&= m \cdot 1 && \text{(a nonzero number divided by itself is } 1 \text{)} \\&= m && \text{(}\href{algebra-sums.qmd#thm-mult-one}{\text{Theorem~7 in Convexity, Infimum and Sums}}\text{)} \end{aligned} \\
>
> **Part 3.** Part 1, applied to each formula, gives
>
> \\ \begin{aligned} b &= f(0) \\ &= b'. \end{aligned} \\
>
> Part 2 with \\x_1 = 0\\ and \\x_2 = 1\\, applied to each formula, gives
>
> \\ \begin{aligned} m &= f(1) - f(0) \\ &= m'. \end{aligned} \\

> **NOTE:**
>
> **Example 6 (An affine function, and a linear one)** \\f(x) = 2x + 3\\ is affine with slope \\2\\ and intercept \\3\\. By [Theorem 1](#thm-affine-function-props), \\f(0) = 3\\, and each unit step in \\x\\ raises \\f\\ by \\2\\: for example, \\f(1) = 5\\ and \\f(2) = 7\\. Its intercept is not \\0\\, so it is not linear.
>
> \\g(x) = -\tfrac{1}{2} x\\ is affine with intercept \\0\\, so it is linear: \\g(0) = 0\\, and each unit step in \\x\\ lowers \\g\\ by \\\tfrac{1}{2}\\.

> **NOTE:**
>
> *Remark 2* (Elementary algebra calls \\m x + b\\ “linear”). Elementary algebra usually calls \\f(x) = m x + b\\ a *linear function*, because its graph is a straight line. This site calls that an affine function and keeps “linear” for the case \\b = 0\\, because that is the sense used in linear algebra, where a [linear map](linear-algebra-matrices.llms.md#def-linear-map) must send \\0\\ to \\0\\ ([theorem](linear-algebra-matrices.llms.md#thm-linear-map-zero)).

## 3 Limits of sequences

> **NOTE:**
>
> **Definition 9 (Limit of a sequence)** A [sequence](sets-functions.llms.md#def-sequence) \\(a_n)\\ of real numbers **converges** to a real number \\L\\, written \\\lim\_{n \to \infty} a_n = L\\ or \\a_n \to L\\, if for every \\\varepsilon\> 0\\ there is a natural number \\N\\ such that
>
> \\\mathopen{}\left\|a_n - L\right\|\mathclose{} \< \varepsilon\quad \text{for every } n \ge N.\\
>
> Then \\L\\ is the **limit** of the sequence. A sequence that converges to some real number is **convergent**, and a sequence that does not converge to any real number **diverges**. A sequence **diverges to \\\infty\\**, written \\\lim\_{n \to \infty} a_n = \infty\\, if for every real number \\M\\ there is a natural number \\N\\ such that \\a_n \> M\\ for every \\n \ge N\\.

> **NOTE:**
>
> **Example 7 (A convergent sequence and a divergent one)**  
>
> - \\a_n = \frac{1}{n}\\ converges to \\0\\. Given \\\varepsilon\> 0\\, take \\N\\ to be any natural number larger than \\\frac{1}{\varepsilon}\\. For every \\n \ge N\\, \\\mathopen{}\left\|\frac{1}{n} - 0\right\|\mathclose{} = \frac{1}{n} \le \frac{1}{N} \< \varepsilon\\. For example, with \\\varepsilon= 0.01\\, take \\N = 101\\: every \\n \ge 101\\ has \\\frac{1}{n} \le \frac{1}{101} \< 0.01\\.
> - \\c_n = n\\ diverges. For any real number \\L\\ and \\\varepsilon= 1\\, every \\n \> L + 1\\ has \\\mathopen{}\left\|n - L\right\|\mathclose{} \> 1\\, so no \\N\\ works. For example, with \\L = 5\\, every \\n \ge 7\\ has \\\mathopen{}\left\|n - 5\right\|\mathclose{} \ge 2\\. It diverges to \\\infty\\: for every real number \\M\\, every \\n \ge N\\ has \\c_n = n \> M\\ when \\N\\ is a natural number larger than \\M\\.

## 4 Exponentials and Logarithms

> **NOTE:**
>
> **Definition 10 (Exponential function)** The **exponential function** \\\operatorname{exp}: \mathbb{R}\to (0, \infty)\\ is
>
> \\\operatorname{exp}\mathopen{}\left\\x\right\\\mathclose{} \stackrel{\text{def}}{=}\lim\_{n \to \infty} \mathopen{}\left(1 + \frac{x}{n}\right)\mathclose{}^n,\\
>
> the [limit](#def-sequence-limit) of the [sequence](sets-functions.llms.md#def-sequence) \\\mathopen{}\left(1 + \frac{x}{1}\right)\mathclose{}^1, \mathopen{}\left(1 + \frac{x}{2}\right)\mathclose{}^2, \mathopen{}\left(1 + \frac{x}{3}\right)\mathclose{}^3, \ldots\\. That limit exists for every real number \\x\\, and it is positive.

> **NOTE:**
>
> **Example 8 (Approximating \\\operatorname{exp}\mathopen{}\left\\1\right\\\mathclose{}\\)** For \\x = 1\\, the terms \\\mathopen{}\left(1 + \frac{1}{n}\right)\mathclose{}^n\\ are:
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
> **Definition 11 (Euler’s number)** **Euler’s number** is
>
> \\e \stackrel{\text{def}}{=}\operatorname{exp}\mathopen{}\left\\1\right\\\mathclose{} = 2.71828\ldots\\

> **NOTE:**
>
> **Example 9 (Euler’s number is irrational)** \\e = 2.71828\ldots\\ is an [irrational number](notation.llms.md#def-irrational-numbers), so no fraction equals it exactly. The fraction \\\frac{19}{7} = 2.714\ldots\\ is close, but \\\frac{19}{7} \ne e\\ (see [Wikipedia: e (mathematical constant)](https://en.wikipedia.org/wiki/E_(mathematical_constant))).

> **NOTE:**
>
> **Definition 12 (Natural logarithm)** For a real number \\a \> 0\\, the **natural logarithm** of \\a\\, written \\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{}\\, is the real number \\y\\ with \\\operatorname{exp}\mathopen{}\left\\y\right\\\mathclose{} = a\\. The exponential function takes each positive value at exactly one input, so there is exactly one such \\y\\, and \\\log : (0, \infty) \to \mathbb{R}\\ is the [inverse function](sets-functions.llms.md#def-inverse-function) of \\\operatorname{exp}\\ ([Definition 10](#def-exponential-function)).

> **NOTE:**
>
> *Remark 3* (Other notations for the natural logarithm). In these notes, \\\operatorname{log}\mathopen{}\left\\x\right\\\mathclose{}\\ is always the natural logarithm, the logarithm with base \\e\\ ([Definition 11](#def-euler-number)). Some sources write \\\ln x\\ for the natural logarithm and reserve \\\log x\\ for the logarithm with base 10.

> **NOTE:**
>
> **Example 10 (Natural logarithms)**  
>
> - \\\operatorname{log}\mathopen{}\left\\1\right\\\mathclose{} = 0\\, because \\\operatorname{exp}\mathopen{}\left\\0\right\\\mathclose{} = 1\\ ([Example 8](#exm-exponential-function)).
> - \\\operatorname{log}\mathopen{}\left\\e\right\\\mathclose{} = 1\\, because \\\operatorname{exp}\mathopen{}\left\\1\right\\\mathclose{} = e\\ ([Definition 11](#def-euler-number)).
> - \\\operatorname{log}\mathopen{}\left\\0\right\\\mathclose{}\\ and \\\operatorname{log}\mathopen{}\left\\-2\right\\\mathclose{}\\ are not defined, because \\\operatorname{exp}\mathopen{}\left\\y\right\\\mathclose{} \> 0\\ for every real \\y\\.

> **NOTE:**
>
> **Definition 13 (Power with a real exponent)** For a real number \\a \> 0\\ and a real number \\b\\,
>
> \\a^b \stackrel{\text{def}}{=}\operatorname{exp}\mathopen{}\left\\b \cdot\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{}\right\\\mathclose{}.\\
>
> When \\b\\ is an integer, this agrees with [Definition 4 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#def-power).

> **NOTE:**
>
> **Example 11 (Real powers, and \\e^x\\)**  
>
> - \\2^3 = \operatorname{exp}\mathopen{}\left\\3 \cdot\operatorname{log}\mathopen{}\left\\2\right\\\mathclose{}\right\\\mathclose{} \approx \operatorname{exp}\mathopen{}\left\\3 \cdot 0.69315\right\\\mathclose{} \approx \operatorname{exp}\mathopen{}\left\\2.07944\right\\\mathclose{} \approx 8\\, which agrees with
>
>   \\ \begin{aligned} 2^3 &= 2 \cdot 2 \cdot 2 \\ &= 8 \end{aligned} \\
>
>   from [Definition 4 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#def-power).
>
> - \\2^{1/2} = \operatorname{exp}\mathopen{}\left\\\frac{1}{2} \cdot\operatorname{log}\mathopen{}\left\\2\right\\\mathclose{}\right\\\mathclose{} \approx \operatorname{exp}\mathopen{}\left\\0.34657\right\\\mathclose{} \approx 1.41421\\, which is \\\sqrt{2}\\ ([Definition 5 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#def-square-root)).
>
> - For every real \\x\\, with base \\e\\ ([Definition 11](#def-euler-number)):
>
>   \\ \begin{aligned} e^x &= \operatorname{exp}\mathopen{}\left\\x \cdot\operatorname{log}\mathopen{}\left\\e\right\\\mathclose{}\right\\\mathclose{} && \text{(}\href{#def-real-power}{\text{Definition~13}}\text{, with } a = e \text{ and } b = x \text{)} \\ &= \operatorname{exp}\mathopen{}\left\\x \cdot 1\right\\\mathclose{} && \text{(}\operatorname{log}\mathopen{}\left\\e\right\\\mathclose{} = 1 \text{, by }\href{#exm-natural-log}{\text{Example~10}}\text{)} \\ &= \operatorname{exp}\mathopen{}\left\\x\right\\\mathclose{} && \text{(}\href{algebra-sums.qmd#thm-mult-one}{\text{Theorem~7 in Convexity, Infimum and Sums}}\text{)} \end{aligned} \\
>
>   So \\e^x\\ and \\\operatorname{exp}\mathopen{}\left\\x\right\\\mathclose{}\\ are two names for the same number.

> **NOTE:**
>
> **Definition 14 (Real powers of zero and of negative numbers)** [Definition 4 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#def-power) and [Definition 13](#def-real-power) leave some powers \\b^c\\ with \\b \le 0\\ unassigned. We complete them as follows.
>
> - For a real number \\c \> 0\\, \\0^c \stackrel{\text{def}}{=}0\\. For a natural number \\c\\, this agrees with [Definition 4 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#def-power).
> - For \\b \< 0\\, \\b^c\\ is defined only when \\c\\ is an [integer](notation.llms.md#def-integers), by [Definition 4 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#def-power); for \\b \< 0\\ and a non-integer \\c\\, \\b^c\\ is undefined.

> **NOTE:**
>
> **Example 12 (Powers of zero and of negative numbers)**  
>
> - \\0^{1/2} = 0\\, which agrees with \\\sqrt{0} = 0\\ ([Definition 5 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#def-square-root)).
> - \\(-8)^2 = 64\\ and \\(-8)^{-1} = -\tfrac{1}{8}\\ are defined, since the exponents are integers.
> - \\(-8)^{1/3}\\ is undefined, even though \\(-2)^3 = -8\\. R follows the same convention: `(-8)^(1/3)` is `NaN`.

> **NOTE:**
>
> **Theorem 2 (\\\operatorname{exp}\\ and \\\operatorname{log}\\ are mutual inverses)**  
>
> 1.  For every \\a \> 0\\: \\\operatorname{exp}\mathopen{}\left\\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{}\right\\\mathclose{} = a\\.
> 2.  For every \\a \in \mathbb{R}\\: \\\operatorname{log}\mathopen{}\left\\\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{}\right\\\mathclose{} = a\\.

> **NOTE:**
>
> **Theorem 3 (Logarithm of a product)** If \\a \> 0\\ and \\b \> 0\\, then
>
> \\ \operatorname{log}\mathopen{}\left\\a \cdot b\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} + \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} \\

> **NOTE:**
>
> **Corollary 1 (Logarithm of a quotient)** If \\a \> 0\\ and \\b \> 0\\, then
>
> \\\operatorname{log}\mathopen{}\left\\\frac{a}{b}\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} - \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{}\\

> **NOTE:**
>
> *Proof*. Since \\a \> 0\\ and \\b \> 0\\, the quotient \\\frac{a}{b}\\ is positive, so [Theorem 3](#thm-log-prod) applies to the product \\\frac{a}{b} \cdot b\\:
>
> \\ \begin{aligned} \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} &= \operatorname{log}\mathopen{}\left\\\frac{a}{b} \cdot b\right\\\mathclose{} && \text{(} a = \tfrac{a}{b} \cdot b \text{)} \\ &= \operatorname{log}\mathopen{}\left\\\frac{a}{b}\right\\\mathclose{} + \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} && \text{(logarithm of a product)} \end{aligned} \\
>
> The second step applies [Theorem 3](#thm-log-prod). Subtracting \\\operatorname{log}\mathopen{}\left\\b\right\\\mathclose{}\\ from both sides gives \\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} - \operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\\frac{a}{b}\right\\\mathclose{}\\.

> **NOTE:**
>
> **Theorem 4 (Logarithm of a power)** If \\a \> 0\\ and \\b \in \mathbb{R}\\, then
>
> \\ \operatorname{log}\mathopen{}\left\\a^b\right\\\mathclose{} = b \cdot\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} \\

> **NOTE:**
>
> **Theorem 5 (Exponential of a sum)** The exponential of a sum is equal to the product of the exponentials of its [terms](algebra-sums.llms.md#def-term):
>
> \\\operatorname{exp}\mathopen{}\left\\a+b\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{} \cdot\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{}\\

> **NOTE:**
>
> **Example 13 (Exponential of a sum)** With \\a = 2\\ and \\b = 3\\, \\\operatorname{exp}\mathopen{}\left\\2 + 3\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\5\right\\\mathclose{} \approx 148.41\\, and \\\operatorname{exp}\mathopen{}\left\\2\right\\\mathclose{} \cdot\operatorname{exp}\mathopen{}\left\\3\right\\\mathclose{} \approx 7.3891 \cdot 20.0855 \approx 148.41\\.

> **NOTE:**
>
> **Corollary 2 (Exponential of a difference)** The exponential of a difference is the exponential of the first term divided by the exponential of the second term:
>
> \\\operatorname{exp}\mathopen{}\left\\a-b\right\\\mathclose{} = \frac{\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{}}{\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{}}\\

> **NOTE:**
>
> **Example 14 (Exponential of a difference)** With \\a = 5\\ and \\b = 2\\, \\\operatorname{exp}\mathopen{}\left\\5 - 2\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\3\right\\\mathclose{} \approx 20.09\\, and \\\frac{\operatorname{exp}\mathopen{}\left\\5\right\\\mathclose{}}{\operatorname{exp}\mathopen{}\left\\2\right\\\mathclose{}} \approx \frac{148.4132}{7.3891} \approx 20.09\\.

> **NOTE:**
>
> **Theorem 6 (Powers of 1 and first powers)** For every \\b \in \mathbb{R}\\,
>
> \\1^b = 1,\\
>
> and for every \\a \in \mathbb{R}\\,
>
> \\a^1 = a.\\

> **NOTE:**
>
> **Theorem 7 (Power of a sum)** If \\a \> 0\\ and \\b, c \in \mathbb{R}\\, then
>
> \\a^{b+c} = a^b \cdot a^c\\

> **NOTE:**
>
> **Example 15 (Power of a sum)** With \\a = 2\\, \\b = 3\\, and \\c = 4\\,
>
> \\ \begin{aligned} 2^{3+4} &= 2^7 \\ &= 128, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} 2^3 \cdot 2^4 &= 8 \cdot 16 \\ &= 128. \end{aligned} \\

> **NOTE:**
>
> **Theorem 8 (Power of a product)** If \\a, b \> 0\\ and \\c \in \mathbb{R}\\, then
>
> \\(ab)^c = a^c \cdot b^c\\
>
> When \\c\\ is a positive integer, the same identity holds for all \\a, b \in \mathbb{R}\\, because both sides are products of \\c\\ copies of \\a\\ and \\c\\ copies of \\b\\, which can be regrouped by [Theorem 8 in Convexity, Infimum and Sums](algebra-sums.llms.md#thm-prod-symmetric) and [Theorem 9 in Convexity, Infimum and Sums](algebra-sums.llms.md#thm-prod-assoc).

> **NOTE:**
>
> **Example 16 (Power of a product)** With \\a = 2\\, \\b = 3\\, and \\c = 2\\,
>
> \\ \begin{aligned} (2 \cdot 3)^2 &= 6^2 \\ &= 36, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} 2^2 \cdot 3^2 &= 4 \cdot 9 \\ &= 36. \end{aligned} \\

> **NOTE:**
>
> **Theorem 9 (Power of a power)** If \\a \> 0\\ and \\b, c \in \mathbb{R}\\, then
>
> \\ \begin{aligned} a^{bc} &= \mathopen{}\left(a^b\right)\mathclose{}^c \\ &= \mathopen{}\left(a^c\right)\mathclose{}^b \end{aligned} \\

> **NOTE:**
>
> **Example 17 (A negative base)** With \\a = -1\\, \\b = 2\\, and \\c = \frac{1}{2}\\:
>
> \\ \begin{aligned} a^{bc} &= (-1)^{2 \cdot\frac{1}{2}} \\ &= (-1)^{1} \\ &= -1 \end{aligned} \\
>
> but
>
> \\ \begin{aligned} \mathopen{}\left(a^b\right)\mathclose{}^c &= \mathopen{}\left((-1)^2\right)\mathclose{}^{\frac{1}{2}} \\ &= 1^{\frac{1}{2}} \\ &= 1 \end{aligned} \\
>
> So \\a^{bc} \neq \mathopen{}\left(a^b\right)\mathclose{}^c\\ here, which is why [Theorem 9](#thm-double-exp) requires \\a \> 0\\. The third expression, \\\mathopen{}\left(a^c\right)\mathclose{}^b = \mathopen{}\left((-1)^{\frac{1}{2}}\right)\mathclose{}^2\\, is not even a real number.

> **NOTE:**
>
> **Corollary 3 (Natural exponential of a product)** \\ \begin{aligned} \operatorname{exp}\mathopen{}\left\\ab\right\\\mathclose{} &= (\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{})^b \\ &= (\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{})^a \end{aligned} \\

> **NOTE:**
>
> *Remark 4* (Tarski’s high school identities). Restricted to positive integers, the following results are [Tarski’s eleven “high school” identities](https://en.wikipedia.org/wiki/Tarski%27s_high_school_algebra_problem):
>
> - sums are symmetric and associative ([Theorem 5 in Convexity, Infimum and Sums](algebra-sums.llms.md#thm-sum-symmetric), [Theorem 6 in Convexity, Infimum and Sums](algebra-sums.llms.md#thm-sum-assoc));
> - multiplying by 1 changes nothing, products are symmetric and associative, and multiplication is distributive ([Theorem 7 in Convexity, Infimum and Sums](algebra-sums.llms.md#thm-mult-one), [Theorem 8 in Convexity, Infimum and Sums](algebra-sums.llms.md#thm-prod-symmetric), [Theorem 9 in Convexity, Infimum and Sums](algebra-sums.llms.md#thm-prod-assoc), [Theorem 11 in Convexity, Infimum and Sums](algebra-sums.llms.md#thm-mult-distr));
> - \\1^b = 1\\, \\a^1 = a\\, and the power of a sum, of a product, and of a power ([Theorem 6](#thm-power-one), [Theorem 7](#thm-power-sum), [Theorem 8](#thm-power-product), [Theorem 9](#thm-double-exp)).

> **NOTE:**
>
> *Remark 5* (Tarski’s identities are not complete). Tarski asked whether every identity in \\+\\, \\\times\\, exponentiation and 1 that is true for all positive integers can be derived from the eleven identities in [Remark 4](#rem-tarski-identities). It cannot: Wilkie found an identity that is true for all positive integers but does not follow from them. So this list is a useful core, not a complete rulebook.

> **NOTE:**
>
> **Definition 15 (Contour line)** For a function \\g\\ of two real variables \\b\\ and \\c\\ and a number \\k\\, the **contour line** of \\g\\ at height \\k\\ is the set of points where \\g\\ equals \\k\\:
>
> \\\mathopen{}\left\\(b, c) : g(b, c) = k\right\\\mathclose{}\\
>
> On a plot of the surface \\z = g(b, c)\\, it is the curve along which the surface has height \\k\\.

> **NOTE:**
>
> **Example 18 (Contour lines of a bowl)** For \\g(b, c) = b^2 + c^2\\, the contour line at height \\k = 4\\ is \\\mathopen{}\left\\(b, c) : b^2 + c^2 = 4\right\\\mathclose{}\\, the circle of radius \\2\\ around \\(0, 0)\\: for example,
>
> \\ \begin{aligned} g(2, 0) &= 4 + 0 \\ &= 4 \end{aligned} \\
>
> and
>
> \\ \begin{aligned} g(0, -2) &= 0 + 4 \\ &= 4. \end{aligned} \\
>
> The contour line at height \\k = -1\\ is empty, because \\b^2 + c^2 \ge 0\\ for all \\b\\ and \\c\\.

> **NOTE:**
>
> **Exercise 2 (Exponentiation versus multiplication)** For \\b,c \in \mathbb{R}\\, when does \\b^c = bc\\?

> **NOTE:**
>
> *Solution 2*. We only count a pair \\(b, c)\\ when \\b^c\\ is defined, so for \\b \< 0\\ we only consider integer \\c\\ ([Definition 14](#def-power-nonpositive-base)). With that convention, \\bc = b^c\\ in each of the following cases:
>
> 1.  \\c = 1\\, for every \\b\\.
>
> 2.  \\b = 0\\ and \\c \> 0\\, since then
>
>     \\ \begin{aligned} b^c &= 0 \\ &= bc. \end{aligned} \\
>
>     (\\b = 0\\ and \\c = 0\\ fails, since \\0^0 = 1 \neq 0\\.)
>
> 3.  \\b \> 0\\, \\c \> 0\\, \\c \neq 1\\, and \\b = \operatorname{exp}\mathopen{}\left\\\frac{\operatorname{log}\mathopen{}\left\\c\right\\\mathclose{}}{c-1}\right\\\mathclose{}\\. For \\b \> 0\\, dividing both sides of \\b^c = bc\\ by \\b\\ gives \\b^{c-1} = c\\, which needs \\c \> 0\\ because \\b^{c-1} \> 0\\; taking logarithms then gives \\(c-1)\operatorname{log}\mathopen{}\left\\b\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\c\right\\\mathclose{}\\. For example, \\c = 2\\ gives \\b = 2\\, and indeed
>
>     \\ \begin{aligned} 2^2 &= 4 \\ &= 2 \cdot 2. \end{aligned} \\
>
> 4.  \\b \< 0\\ and \\c\\ is an odd integer with \\c \ge 3\\, with \\b = -c^{1/(c-1)}\\; for example, \\b = -\sqrt{3}\\ and \\c = 3\\ give
>
>     \\ \begin{aligned} b^c &= -3\sqrt{3} \\ &= bc. \end{aligned} \\
>
> 5.  \\b \< 0\\ and \\c\\ is an even integer with \\c \le -2\\, with \\b = -(-c)^{1/(c-1)}\\; for example, \\b = -2^{-1/3}\\ and \\c = -2\\ give
>
>     \\ \begin{aligned} b^c &= 2^{2/3} \\ &= bc. \end{aligned} \\
>
> For \\b \< 0\\, cases 4 and 5 come from \\b^{c-1} = c\\ as well: when \\c - 1\\ is even, \\b^{c-1} \> 0\\, so \\c\\ must be positive; when \\c - 1\\ is odd, \\b^{c-1} \< 0\\, so \\c\\ must be negative.
>
> See the red contours in [Figure 2](#fig-double-exponential2) for a visualization of the \\b \ge 0\\ cases.

Show R code

``` downlit
mult_f <- function(b, c) b * c
pow_f <- function(b, c) b^c
values_b <- seq(0, 5, by = .01)
values_c <- seq(-.5, 3, by = .01)

mult_mat <- outer(values_b, values_c, mult_f)
pow_mat <- outer(values_b, values_c, pow_f)
pow_mat[is.infinite(pow_mat)] <- NA

opacity <- .3
z_min <- min(mult_mat, pow_mat, na.rm = TRUE)
z_max <- 5
plotly::plot_ly(
  x = ~values_b,
  y = ~values_c
) |>
  plotly::add_surface(
    z = ~ t(mult_mat),
    contours = list(
      z = list(
        show = TRUE,
        start = -1,
        end = 1,
        size = .1
      )
    ),
    name = "b*c",
    showscale = FALSE,
    opacity = opacity,
    colorscale = list(c(0, 1), c("green", "green"))
  ) |>
  plotly::add_surface(
    opacity = opacity,
    colorscale = list(c(0, 1), c("red", "red")),
    z = ~ t(pow_mat),
    contours = list(
      z = list(
        show = TRUE,
        start = z_min,
        end = z_max,
        size = .2
      )
    ),
    showscale = FALSE,
    name = "b^c"
  ) |>
  plotly::layout(
    scene = list(
      xaxis = list(
        # type = "log",
        title = "b"
      ),
      yaxis = list(
        # type = "log",
        title = "c"
      ),
      zaxis = list(
        # type = "log",
        range = c(z_min, z_max),
        title = "outcome"
      ),
      camera = list(eye = list(x = -1.25, y = -1.25, z = 0.5)),
      aspectratio = list(x = .9, y = .8, z = 0.7)
    )
  )
```

Figure 1: Graph of \\b\*c\\ and \\b^c\\

Show R code

``` downlit
pow_minus_mult_f <- function(b, c) pow_f(b, c) - mult_f(b, c)

mat1 <- outer(values_b, values_c, pow_minus_mult_f)
mat1[is.infinite(mat1)] <- NA

opacity <- .3
plotly::plot_ly(
  x = ~values_b,
  y = ~values_c
) |>
  plotly::add_surface(
    z = ~ t(mat1),
    contours = list(
      z = list(
        show = TRUE,
        start = 0,
        end = 1,
        size = 1,
        color = "red"
      )
    ),
    name = "b^c - b*c",
    showscale = TRUE,
    opacity = opacity
  ) |>
  plotly::layout(
    scene = list(
      xaxis = list(
        # type = "log",
        title = "b"
      ),
      yaxis = list(
        # type = "log",
        title = "c"
      ),
      zaxis = list(
        title = "outcome"
      ),
      camera = list(eye = list(x = -1.25, y = -1.25, z = 0.5)),
      aspectratio = list(x = .9, y = .8, z = 0.7)
    )
  )
```

Figure 2: **Graph of \\b^c - b\*c\\**. The red [contour lines](#def-contour-line) are at heights \\0\\ and \\1\\; the ones at height \\0\\ show where \\b^c = b\*c\\.

> **NOTE:**
>
> **Exercise 3 (Repeated exponentiation)** For \\a \ge 0,~b,c \in \mathbb{R}\\, when does \\(a^b)^c = a^{(b^c)}\\?

> **NOTE:**
>
> *Solution 3*. Short answer: rarely (that’s all you need to know for this course).
>
> Long answer:
>
> Split on whether \\a \> 0\\ or \\a = 0\\, because the logarithm we use for \\a \> 0\\ is undefined at \\a = 0\\.
>
> **Case \\a \> 0\\.** By [Theorem 9](#thm-double-exp), \\(a^b)^c = a^{bc}\\, so the question becomes when \\a^{bc} = a^{(b^c)}\\ (for pairs \\(b, c)\\ where \\b^c\\ is defined). Because \\a \> 0\\, both sides are positive, and we can take logarithms ([Theorem 4](#thm-log-exp)):
>
> \\ \begin{aligned} a^{bc} &= a^{(b^c)} \\ \operatorname{log}\mathopen{}\left\\a^{bc}\right\\\mathclose{} &= \operatorname{log}\mathopen{}\left\\a^{(b^c)}\right\\\mathclose{} && \text{(take logarithms of both sides)} \\ bc \cdot \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} &= b^c\cdot \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} && \text{(logarithm of a power)} \end{aligned} \tag{1}\\
>
> The last line of [Equation 1](#eq-double-exp-log-scale) holds exactly when
>
> 1.  \\a = 1\\ (so that \\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} = 0\\), or
> 2.  \\bc = b^c\\ (see [Exercise 2](#exr-exp-vs-mult)).
>
> **Case \\a = 0\\.** Here we cannot take logarithms, so we work from the values of powers of \\0\\: \\0^s = 0\\ for \\s \> 0\\ ([Definition 14](#def-power-nonpositive-base)), \\0^0 = 1\\, and \\0^s\\ is undefined for \\s \< 0\\.
>
> - If \\b \< 0\\, then \\0^b\\ is undefined, so \\(a^b)^c\\ is undefined.
>
> - If \\b \> 0\\, then \\(0^b)^c = 0^c\\ and \\b^c \> 0\\, so \\0^{(b^c)} = 0\\; the two sides agree exactly when \\c \> 0\\.
>
> - If \\b = 0\\, then
>
>   \\ \begin{aligned} (0^0)^c &= 1^c \\ &= 1; \end{aligned} \\
>
>   for \\c \> 0\\,
>
>   \\ \begin{aligned} 0^{(0^c)} &= 0^0 \\ &= 1, \end{aligned} \\
>
>   so the two sides agree, and for \\c \le 0\\ they do not.
>
> So for \\a = 0\\, \\(a^b)^c = a^{(b^c)}\\ exactly when \\b \ge 0\\ and \\c \> 0\\.
>
> In particular, when \\a = 0\\, \\b \ge 0\\, and \\c = 0\\, the two sides differ:
>
> \\ \begin{aligned} (a^b)^c &= (0^b)^0 \\ &= 1 \end{aligned} \\
>
> \\ \begin{aligned} a^{(b^c)} &= 0^{(b^0)} \\ &= 0^1 \\ &= 0 \end{aligned} \\

Back to top
