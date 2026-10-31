# Measurable Functions and Integrals

Code

Published

Last modified: 2026-10-30 16:44:42 (PDT)

## 0.1 Measurable functions and integrals

> **NOTE:**
>
> **Definition 1 (Measurable function)** Let \\(S, \mathcal{S})\\ be a [measurable space](measures-measure-spaces.llms.md#def-measurable-space). A [function](functions.llms.md#def-function) \\f : S \to \mathbb{R}\\ is **measurable** (with respect to \\\mathcal{S}\\) [\[1\]](#ref-wikipedia_measurable_function) if, for every real number \\c\\, the set of elements where \\f\\ is at most \\c\\ is measurable:
>
> \\{\mathopen{}\left\\s \in S : f(s) \le c\right\\\mathclose{}} \in \mathcal{S}\\

> **NOTE:**
>
> *Remark 1* (Measurable functions in general). Other sources define a function \\f : S \to T\\ between measurable spaces \\(S, \mathcal{S})\\ and \\(T, \mathcal{T})\\ to be measurable when \\{\mathopen{}\left\\s \in S : f(s) \in B\right\\\mathclose{}} \in \mathcal{S}\\ for every \\B \in \mathcal{T}\\. For \\T = \mathbb{R}\\ with the [Borel \\\sigma\\-algebra](measures-sigma-algebras.llms.md#def-borel-sigma-algebra), that definition is equivalent to [Definition 1](#def-measurable-function). For example, with \\B = (-\infty, c\]\\, the general definition requires \\{\mathopen{}\left\\s \in S : f(s) \le c\right\\\mathclose{}} \in \mathcal{S}\\, which is the condition in [Definition 1](#def-measurable-function).

> **NOTE:**
>
> **Example 1 (Measurable and not measurable)** On the die rolls \\D\\, take the \\\sigma\\-algebra \\\mathcal{S}= {\mathopen{}\left\\\emptyset, {\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}, {\mathopen{}\left\\1, 3, 5\right\\\mathclose{}}, D\right\\\mathclose{}}\\ of [Example 1 in Sigma-Algebras](measures-sigma-algebras.llms.md#exm-sigma-algebra).
>
> - Let \\f(x) = 1\\ for even \\x\\ and \\f(x) = 0\\ for odd \\x\\. The set \\{\mathopen{}\left\\x \in D : f(x) \le c\right\\\mathclose{}}\\ is \\\emptyset\\ when \\c \< 0\\, \\{\mathopen{}\left\\1, 3, 5\right\\\mathclose{}}\\ when \\0 \le c \< 1\\, and \\D\\ when \\c \ge 1\\. All three are in \\\mathcal{S}\\, so \\f\\ is measurable.
> - Let \\g(x) = x\\. Then \\{\mathopen{}\left\\x \in D : g(x) \le 1\right\\\mathclose{}} = {\mathopen{}\left\\1\right\\\mathclose{}}\\, which is not in \\\mathcal{S}\\, so \\g\\ is not measurable.
>
> With the \\\sigma\\-algebra of all subsets of \\D\\ instead, every set \\{\mathopen{}\left\\x \in D : g(x) \le c\right\\\mathclose{}}\\ is a subset of \\D\\, so every function \\D \to \mathbb{R}\\, including \\g\\, is measurable.

> **NOTE:**
>
> **Definition 2 (Integral of a non-negative function)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](measures-measure-spaces.llms.md#def-measure-space), and let \\f : S \to \[0, \infty)\\ be [measurable](#def-measurable-function). The **integral** of \\f\\ with respect to \\\mu\\ is [\[2\]](#ref-wikipedia_lebesgue_integration)
>
> \\ \int_S f \\ d\mu\stackrel{\text{def}}{=} \sup {\mathopen{}\left\\\sum\_{i=1}^n\mathopen{}\left(\inf\_{s \in A_i} f(s)\right)\mathclose{} \mu(A_i)\right\\\mathclose{}} \\
>
> where the [supremum](algebra-sums.llms.md#def-supremum) is over all ways of writing \\S\\ as the union of finitely many nonempty [pairwise disjoint](sets.llms.md#def-pairwise-disjoint) [sets](sets.llms.md#def-set) \\A_1, \ldots, A_n\\ in \\\mathcal{S}\\, and each \\\inf\_{s \in A_i} f(s)\\ is the [infimum](algebra-sums.llms.md#def-infimum) of the values of \\f\\ on \\A_i\\. In the sums, \\0 \cdot \infty \stackrel{\text{def}}{=}0\\, and \\x \cdot \infty \stackrel{\text{def}}{=}\infty\\ for \\x \> 0\\; the supremum is \\\infty\\ if some sum is \\\infty\\. The integral is also written \\\int_S f(s) \\ d\mu(s)\\.
>
> [\[3, Sec. 15\]](#ref-billingsley1995probability)

> **NOTE:**
>
> *Remark 2* (Each sum is a lower estimate). Each sum in [Definition 2](#def-integral-nonneg) splits \\S\\ into pieces and weights each piece \\A_i\\ by the smallest value \\f\\ approaches on it, so each sum is at most the integral. For Lebesgue measure on a closed interval \\\[a, b\]\\ and a function \\f \ge 0\\ that has a [Riemann integral](calculus-integration.llms.md#def-riemann-integral) on \\\[a, b\]\\, the two integrals agree: \\\int\_{\[a, b\]} f \\ d\lambda= \int_a^b f(x) \\ dx\\ [\[2\]](#ref-wikipedia_lebesgue_integration).

> **NOTE:**
>
> **Example 2 (Integrals with respect to counting measure)** Let \\\mu\\ be the counting measure on the die rolls \\D\\, and let \\g : D \to \[0, \infty)\\. Every function on \\D\\ is measurable ([Example 1](#exm-measurable-function)).
>
> *The integral is the sum of the values.* For any split of \\D\\ into nonempty pairwise disjoint sets \\A_1, \ldots, A_n\\:
>
> \\ \begin{aligned} \sum\_{i=1}^n\mathopen{}\left(\inf\_{x \in A_i} g(x)\right)\mathclose{} \mu(A_i) &= \sum\_{i=1}^n\sum\_{x \in A_i} \inf\_{y \in A_i} g(y) && \text{(} \mu(A_i) \text{ counts the elements of } A_i \text{)} \\ &\le \sum\_{i=1}^n\sum\_{x \in A_i} g(x) && \text{(an infimum is at most each value)} \\ &= \sum\_{x \in D} g(x) && \text{(each } x \in D \text{ is in exactly one } A_i \text{)} \end{aligned} \\
>
> The split into the six single points \\{\mathopen{}\left\\1\right\\\mathclose{}}, \ldots, {\mathopen{}\left\\6\right\\\mathclose{}}\\ gives exactly \\\sum\_{x \in D} g(x)\\, so the supremum is \\\int_D g \\ d\mu= \sum\_{x \in D} g(x)\\. For example, with \\g(x) = x\\,
>
> \\ \begin{aligned} \int_D g \\ d\mu&= 1 + 2 + \cdots + 6 \\ &= 21. \end{aligned} \\
>
> *An infinite integral.* For the counting measure \\\mu\\ on \\\mathbb{N}\\ and the constant function \\h(n) = 1\\, the split with one set, \\A_1 = \mathbb{N}\\, gives the sum
>
> \\ \begin{aligned} 1 \cdot \mu(\mathbb{N}) &= 1 \cdot \infty \\ &= \infty, \end{aligned} \\
>
> so \\\int\_{\mathbb{N}} h \\ d\mu= \infty\\.

> **NOTE:**
>
> *Remark 3* (A function in terms of its positive and negative parts). For a [function](functions.llms.md#def-function) \\f : S \to \mathbb{R}\\, with the [positive part](algebra-basics.llms.md#def-positive-negative-parts) and [negative part](algebra-basics.llms.md#def-negative-part), \\f = f^{+} - f^{-}\\ and \\\mathopen{}\left\|f\right\|\mathclose{} = f^{+} + f^{-}\\. (\\f^{+}\\, \\f^{-}\\, and \\\mathopen{}\left\|f\right\|\mathclose{}\\ are [measurable](#def-measurable-function) when \\f\\ is [\[3\]](#ref-billingsley1995probability), Theorem 13.3.)

> **NOTE:**
>
> **Definition 3 (Integral of a real-valued function)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](measures-measure-spaces.llms.md#def-measure-space), and let \\f : S \to \mathbb{R}\\ be [measurable](#def-measurable-function). Let \\f^{+}\\ and \\f^{-}\\ be the [positive part](algebra-basics.llms.md#def-positive-negative-parts) and [negative part](algebra-basics.llms.md#def-negative-part) of \\f\\. The **integral** of \\f\\ with respect to \\\mu\\ is
>
> \\\int_S f \\ d\mu\stackrel{\text{def}}{=}\int_S f^{+} \\ d\mu- \int_S f^{-} \\ d\mu,\\
>
> using [Definition 2](#def-integral-nonneg) for each term, when at least one of the two terms is finite; otherwise, the integral of \\f\\ is undefined.
>
> [\[3, Sec. 15\]](#ref-billingsley1995probability)

> **NOTE:**
>
> **Example 3 (An integral with positive and negative parts)** For the counting measure \\\mu\\ on the die rolls \\D\\, let \\f(x) = x - 3\\. Its values at \\1, \ldots, 6\\ are \\-2, -1, 0, 1, 2, 3\\, so:
>
> - \\f^{+}\\ has values \\0, 0, 0, 1, 2, 3\\, and \\\int_D f^{+} \\ d\mu= 6\\ by [Example 2](#exm-integral-nonneg);
>
> - \\f^{-}\\ has values \\2, 1, 0, 0, 0, 0\\, and \\\int_D f^{-} \\ d\mu= 3\\;
>
> - \\ \begin{aligned} \int_D f \\ d\mu&= 6 - 3 \\ &= 3, \end{aligned} \\
>
>   which is also
>
>   \\ \begin{aligned} \sum\_{x \in D} (x - 3) &= 21 - 18 \\ &= 3. \end{aligned} \\

> **NOTE:**
>
> Show R code
>
> ``` downlit
> pnp_rolls_pf <- 1:6
> pnp_f_pf <- pnp_rolls_pf - 3
> pnp_plus_pf <- pmax(pnp_f_pf, 0)
> pnp_minus_pf <- pmax(-pnp_f_pf, 0)
> pnp_f_tbl_pf <- tibble::tibble(
>   x = pnp_rolls_pf, value = pnp_f_pf, panel = "f (sum = 3)"
> )
> pnp_plus_tbl_pf <- tibble::tibble(
>   x = pnp_rolls_pf, value = pnp_plus_pf, panel = "f+ (sum = 6)"
> )
> pnp_minus_tbl_pf <- tibble::tibble(
>   x = pnp_rolls_pf, value = pnp_minus_pf, panel = "f- (sum = 3)"
> )
> pnp_bars_pf <- dplyr::bind_rows(pnp_f_tbl_pf, pnp_plus_tbl_pf, pnp_minus_tbl_pf)
> pnp_aes_pf <- ggplot2::aes(x, value, fill = panel)
> pnp_colours_pf <- c("#0072B2", "#009E73", "#D55E00")
> ggplot2::ggplot(pnp_bars_pf, pnp_aes_pf) +
>   ggplot2::geom_col() +
>   ggplot2::facet_wrap(ggplot2::vars(panel)) +
>   ggplot2::scale_fill_manual(values = pnp_colours_pf) +
>   ggplot2::scale_x_continuous(breaks = pnp_rolls_pf) +
>   ggplot2::guides(fill = "none") +
>   ggplot2::labs(x = "Die roll x", y = "Value")
> ```
>
> Show R code
>
> ``` python
> import matplotlib.pyplot as plt
> import numpy as np
>
> pnp_rolls_pf = np.arange(1, 7)
> pnp_f_pf = pnp_rolls_pf - 3
> pnp_panels_pf = [
>     ("f (sum = 3)", pnp_f_pf, "#0072B2"),
>     ("f+ (sum = 6)", np.maximum(pnp_f_pf, 0), "#009E73"),
>     ("f- (sum = 3)", np.maximum(-pnp_f_pf, 0), "#D55E00"),
> ]
> fig, axes = plt.subplots(1, 3, figsize=(7, 3.5), sharey=True,
>                          layout="constrained")
> for ax, (title, values, colour) in zip(axes, pnp_panels_pf):
>     ax.bar(pnp_rolls_pf, values, color=colour)
>     ax.set_title(title)
>     ax.set_xlabel("Die roll x")
> axes[0].set_ylabel("Value")
> plt.show()
> ```
>
> ## R
>
> [![Three bar charts side by side, each with the die rolls 1 to 6 on the horizontal axis. The left chart, f, has bars of height minus 2, minus 1, 0, 1, 2 and 3, the first two below the axis. The middle chart, the positive part, has bars of height 0, 0, 0, 1, 2 and 3, which sum to 6. The right chart, the negative part, has bars of height 2, 1, 0, 0, 0 and 0, which sum to 3.](measures-integrals_files/figure-html/positive-negative-parts-r-1.png)](measures-integrals_files/figure-html/positive-negative-parts-r-1.png "Figure 1: Let D be the die rolls of Example 3. The plot shows the function f(x) = x - 3 on D, its positive part, and its negative part. With the counting measure, each integral is the sum of the bar heights, and 6 - 3 = 3 is the integral of f.")
>
> ## Python
>
> [![Three bar charts side by side, each with the die rolls 1 to 6 on the horizontal axis. The left chart, f, has bars of height minus 2, minus 1, 0, 1, 2 and 3, the first two below the axis. The middle chart, the positive part, has bars of height 0, 0, 0, 1, 2 and 3, which sum to 6. The right chart, the negative part, has bars of height 2, 1, 0, 0, 0 and 0, which sum to 3.](measures-integrals_files/figure-html/positive-negative-parts-python-1.png)](measures-integrals_files/figure-html/positive-negative-parts-python-1.png "Figure 1: Let D be the die rolls of Example 3. The plot shows the function f(x) = x - 3 on D, its positive part, and its negative part. With the counting measure, each integral is the sum of the bar heights, and 6 - 3 = 3 is the integral of f.")
>
> Figure 1: Let \\D\\ be the die rolls of [Example 3](#exm-integral). The plot shows the [function](functions.llms.md#def-function) \\f(x) = x - 3\\ on \\D\\, its [positive part](algebra-basics.llms.md#def-positive-negative-parts), and its [negative part](algebra-basics.llms.md#def-negative-part). With the [counting measure](measures-measure-spaces.llms.md#def-counting-measure), each [integral](#def-integral) is the [sum](algebra-sums.llms.md#def-summation) of the bar heights, and \\6 - 3 = 3\\ is the integral of \\f\\.

> **NOTE:**
>
> **Definition 4 (Absolutely integrable function, integrable function)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](measures-measure-spaces.llms.md#def-measure-space). A [measurable](#def-measurable-function) function \\f : S \to \mathbb{R}\\ is **absolutely integrable** with respect to \\\mu\\ (often just called **integrable**) if the integral of its [absolute value](algebra-basics.llms.md#def-absolute-value) is finite:
>
> \\\int_S \mathopen{}\left\|f\right\|\mathclose{} \\ d\mu\< \infty\\
>
> The property itself is called absolute integrability.

> **NOTE:**
>
> *Remark 4* (An absolutely integrable function has a finite integral). If \\f\\ is absolutely integrable, then \\\int_S f^{+} \\ d\mu\\ and \\\int_S f^{-} \\ d\mu\\ are both finite, because \\f^{+} \le \mathopen{}\left\|f\right\|\mathclose{}\\ and \\f^{-} \le \mathopen{}\left\|f\right\|\mathclose{}\\, so each sum in [Definition 2](#def-integral-nonneg) for \\f^{+}\\ or \\f^{-}\\ is at most the matching sum for \\\mathopen{}\left\|f\right\|\mathclose{}\\. So \\\int_S f \\ d\mu\\ ([Definition 3](#def-integral)) is a real number.

> **NOTE:**
>
> **Example 4 (Absolutely integrable and not)**  
>
> - For the counting measure on the die rolls \\D\\, \\f(x) = x - 3\\ ([Example 3](#exm-integral)) is absolutely integrable:
>
>   \\ \begin{aligned} \int_D \mathopen{}\left\|f\right\|\mathclose{} \\ d\mu&= 2 + 1 + 0 + 1 + 2 + 3 \\ &= 9 \\ &\< \infty \end{aligned} \\
>
>   by [Example 2](#exm-integral-nonneg).
>
> - For the counting measure on \\\mathbb{N}\\, the constant function \\h(n) = 1\\ is not absolutely integrable, because
>
>   \\ \begin{aligned} \int\_{\mathbb{N}} \mathopen{}\left\|h\right\|\mathclose{} \\ d\mu&= \int\_{\mathbb{N}} h \\ d\mu\\ &= \infty \end{aligned} \\
>
>   ([Example 2](#exm-integral-nonneg)).

# Definitions on this page

- [Definition 1 (Measurable function)](#def-measurable-function)
- [Definition 2 (Integral of a non-negative function)](#def-integral-nonneg)
- [Definition 3 (Integral of a real-valued function)](#def-integral)
- [Definition 4 (Absolutely integrable function, integrable function)](#def-absolutely-integrable)

Back to top

## References

\[1\]

Wikipedia contributors, “Measurable function — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Measurable_function>

\[2\]

Wikipedia contributors, “Lebesgue integration — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Lebesgue_integration>

\[3\]

P. Billingsley, *Probability and measure*, 3rd ed. in Wiley series in probability and mathematical statistics. New York: Wiley, 1995.
