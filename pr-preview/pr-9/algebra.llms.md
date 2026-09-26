# Algebra

Code

Published

Last modified: 2026-09-26 12:42:19 (PDT)

## 1 Elementary Algebra

Mastery of [Elementary Algebra](https://en.wikipedia.org/wiki/Elementary_algebra) (a.k.a. “College Algebra”) is a prerequisite for calculus, which is in turn a prerequisite for most statistics and data science courses. Nevertheless, each year, some students are still uncomfortable with algebraic manipulations of mathematical formulas. Therefore, I include this section as a quick reference.

### 1.1 Equalities

> **NOTE:**
>
> **Theorem 1 (Equalities are transitive)** If \\a=b\\ and \\b=c\\, then \\a=c\\

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 2 (Substituting equivalent expressions)** If \\a = b\\, then for any function \\f(x)\\, \\f(a) = f(b)\\

------------------------------------------------------------------------

### 1.2 Inequalities

> **NOTE:**
>
> **Theorem 3 (Adding to both sides of an inequality)** If \\a\<b\\, then \\a+c \< b+c\\

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 4 (negating both sides of an inequality)** If \\a \< b\\, then: \\-a \> -b\\

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 5 (Multiplying both sides of an inequality by a nonnegative number)** If \\a \< b\\ and \\c \geq 0\\, then \\ca \< cb\\.

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 6 (Negation is multiplication by \\-1\\)** \\-a = (-1)\*a\\

------------------------------------------------------------------------

### 1.3 Infimum and supremum

> **NOTE:**
>
> **Definition 1 (Infimum (greatest lower bound))** The **infimum** of a nonempty set \\A \subseteq \mathbb{R}\\, written \\\inf A\\, is the greatest real number \\m\\ satisfying \\m \le a\\ for all \\a \in A\\:
>
> \\\inf A \stackrel{\text{def}}{=}\max\_{t \in \mathbb{R}}\mathopen{}\left\\t : \forall a \in A, a \ge t\right\\\mathclose{}\\
>
> If the infimum belongs to \\A\\, it equals the minimum: \\\inf A = \min A\\.

> **NOTE:**
>
> **Example 1 (Numerical examples of infimum)**  
>
> - \\\inf\\1, 2, 3\\ = 1\\, since \\1\\ is the smallest element.
> - \\\inf(0.5, 1\] = 0.5 = \min\[0.5, 1\]\\: for intervals open below, the infimum equals the minimum of the corresponding closed-below interval, even though \\0.5 \notin (0.5, 1\]\\. More generally, \\\inf(c, b\] = \min\[c, b\] = c\\ for any \\c \< b\\.
> - \\\inf\\t \ge 0 : t \> 0.5\\ = 0.5\\, even though \\0.5\\ itself is not in the set.

> **NOTE:**
>
> **Definition 2 (Supremum (least upper bound))** The **supremum** of a nonempty set \\A \subseteq \mathbb{R}\\, written \\\sup A\\, is the smallest real number \\M\\ satisfying \\M \ge a\\ for all \\a \in A\\:
>
> \\\sup A \stackrel{\text{def}}{=}\min\_{t \in \mathbb{R}}\mathopen{}\left\\t : \forall a \in A, a \le t\right\\\mathclose{}\\
>
> If the supremum belongs to \\A\\, it equals the maximum: \\\sup A = \max A\\.

> **NOTE:**
>
> **Example 2 (Numerical examples of supremum)**  
>
> - \\\sup\\1, 2, 3\\ = 3\\, since \\3\\ is the largest element.
> - \\\sup\\t \ge 0 : t \< 0.5\\ = 0.5\\, even though \\0.5\\ itself is not in the set.

### 1.4 Sums

> **NOTE:**
>
> **Theorem 7 (adding zero changes nothing)** \\a+0=a\\

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 8 (Sums are symmetric)** \\a+b = b+a\\

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 9 (Sums are associative)**  
>
> When summing three or more terms, the order in which you sum them does not matter:
>
> \\(a + b) + c = a + (b + c)\\

------------------------------------------------------------------------

### 1.5 Products

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 10 (Multiplying by 1 changes nothing)** \\a \times 1 = a\\

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 11 (Products are symmetric)** \\a \times b = b \times a\\

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 12 (Products are associative)** \\(a \times b) \times c = a \times (b \times c)\\

### 1.6 Division

> **NOTE:**
>
> **Theorem 13 (Division can be written as a product)** \\\frac {a}{b} = a \times \frac{1}{b}\\

### 1.7 Sums and products together

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 14 (Multiplication is distributive)** \\a(b+c) = ab + ac\\

------------------------------------------------------------------------

### 1.8 Quotients

> **NOTE:**
>
> **Definition 3 (Quotients, fractions, rates)**  
>
> A **quotient** (also called a *fraction* or *rate*) is a division of one quantity by another:
>
> \\\frac{a}{b}\\
>
> In epidemiology, rates typically have a quantity involving time or population in the denominator.
>
> c.f. <https://en.wikipedia.org/wiki/Rate_(mathematics)>

> **NOTE:**
>
> **Definition 4 (Ratios)** A **ratio** is a quotient in which the numerator and denominator are measured using the same unit scales.
>
> c.f. <https://en.wikipedia.org/wiki/Ratio>

------------------------------------------------------------------------

> **NOTE:**
>
> **Definition 5 (Proportion)** In statistics, a **proportion** typically means a ratio where the numerator represents a subset of the denominator.
>
> See <https://en.wikipedia.org/wiki/Population_proportion>.
>
> See also <https://en.wikipedia.org/wiki/Proportion_(mathematics)> for other meanings.

------------------------------------------------------------------------

> **NOTE:**
>
> **Definition 6 (Proportional)** Two functions \\f(x)\\ and \\g(x)\\ are **proportional** if their ratio \\\frac{f(x)}{g(x)}\\ does not depend on \\x\\. (c.f. <https://en.wikipedia.org/wiki/Proportionality_(mathematics)>)

------------------------------------------------------------------------

Additional reference for elementary algebra: <https://en.wikipedia.org/wiki/Population_proportion#Mathematical_definition>

------------------------------------------------------------------------

### 1.9 Exponentials and Logarithms

> **NOTE:**
>
> **Theorem 15 (logarithm of a product is the sum of the logs of the factors)** \\ \log{a\cdot b} = \log{a} + \log{b} \\

> **NOTE:**
>
> **Corollary 1 (logarithm of a quotient)**  
>
> The logarithm of a quotient is equal to the difference of the logs of the factors:
>
> \\\log{\frac{a}{b}} = \log{a} - \log{b}\\

> **NOTE:**
>
> **Theorem 16 (logarithm of an exponential function)** \\ \operatorname{log}\mathopen{}\left\\a^b\right\\\mathclose{} = b \cdot\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} \\

> **NOTE:**
>
> **Theorem 17 (exponential of a sum)**  
>
> The exponential of a sum is equal to the product of the exponentials of the addends:
>
> \\\operatorname{exp}\mathopen{}\left\\a+b\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{} \cdot\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{}\\

> **NOTE:**
>
> **Corollary 2 (exponential of a difference)**  
>
> The exponential of a difference is equal to the quotient of the exponentials of the addends:
>
> \\\operatorname{exp}\mathopen{}\left\\a-b\right\\\mathclose{} = \frac{\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{}}{\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{}}\\

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 18 (exponential of a product)** \\a^{bc} = \mathopen{}\left(a^b\right)\mathclose{}^c = \mathopen{}\left(a^c\right)\mathclose{}^b\\

------------------------------------------------------------------------

> **NOTE:**
>
> **Corollary 3 (natural exponential of a product)** \\\operatorname{exp}\mathopen{}\left\\ab\right\\\mathclose{} = (\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{})^b = (\operatorname{exp}\mathopen{}\left\\b\right\\\mathclose{})^a\\

------------------------------------------------------------------------

> **NOTE:**
>
> **Exercise 1** For \\a \ge 0,~b,c \in \mathbb{R}\\, When does \\(a^b)^c = a^{(b^c)}\\?

------------------------------------------------------------------------

> **NOTE:**
>
> *Solution 1*. Short answer: rarely (that’s all you need to know for this course).
>
> Long answer:
>
> If \\(a^b)^c = a^{(b^c)}\\, then since \\(a^b)^c = a^{bc}\\, we have: \\a^{bc} = a^{(b^c)}\\ \\\operatorname{log}\mathopen{}\left\\a^{bc}\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\a^{(b^c)}\right\\\mathclose{}\\ \\bc \cdot \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} = b^c\cdot \operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} \tag{1}\\
>
> [Equation 1](#eq-double-exp-log-scale) holds in each of the following cases:
>
> 1.  \\bc = b^c\\ (see [Exercise 2](#exr-exp-vs-mult)).
> 2.  \\a=1\\ (i.e., \\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{} = 0\\).
> 3.  \\a=0\\ (i.e., \\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{}= -\infty\\) *and* \\\operatorname{sign}\mathopen{}\left\\bc\right\\\mathclose{}=\operatorname{sign}\mathopen{}\left\\b^c\right\\\mathclose{}\\.
>
> In particular, when \\a=0\\ and \\c=0\\, \\bc = 0\\ and \\b^c = 1\\ (for any \\b \in \mathbb{R}\\), so \\\operatorname{sign}\mathopen{}\left\\bc\right\\\mathclose{}\neq \operatorname{sign}\mathopen{}\left\\b^c\right\\\mathclose{}\\, and \\(a^b)^c \neq a^{(b^c)}\\:
>
> \\ \begin{aligned} (a^b)^c &= (0^b)^0 \\ &= 1 \end{aligned} \\
>
> \\ \begin{aligned} a^{(b^c)} &= 0^{(b^0)} \\ &= 0^1 \\ &= 0 \end{aligned} \\

------------------------------------------------------------------------

> **NOTE:**
>
> **Exercise 2** For \\b,c \in \mathbb{R}\\, when does \\b^c = bc\\?

------------------------------------------------------------------------

> **NOTE:**
>
> *Solution 2*. \\bc = b^c\\ in each of the following cases:
>
> 1.  \\c = 1\\.
> 2.  \\b=0\\ and \\c \> 0\\.
> 3.  \\b = \operatorname{exp}\mathopen{}\left\\\frac{\log{c}}{c-1}\right\\\mathclose{}\\ (for \\c \ge 0\\).
>
> See the red contours in [Figure 2](#fig-double-exponential2) for a visualization.
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

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 19 (\\\operatorname{exp}\mathopen{}\left\\\right\\\mathclose{}\\ and \\\operatorname{log}\mathopen{}\left\\\right\\\mathclose{}\\ are mutual inverses)** \\\operatorname{exp}\mathopen{}\left\\\operatorname{log}\mathopen{}\left\\a\right\\\mathclose{}\right\\\mathclose{} = \operatorname{log}\mathopen{}\left\\\operatorname{exp}\mathopen{}\left\\a\right\\\mathclose{}\right\\\mathclose{} = a\\

Back to top
