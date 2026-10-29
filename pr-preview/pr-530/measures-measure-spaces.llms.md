# Measures and Probability Measures

Code

Published

Last modified: 2026-10-29 12:39:36 (PDT)

## 1 Measures

> **NOTE:**
>
> **Definition 1 (Measure)** A **measure** on a set \\S\\ [\[1\]](#ref-wikipedia_measure_mathematics) with a [\\\sigma\\-algebra](measures-sigma-algebras.llms.md#def-sigma-algebra) \\\mathcal{S}\\ is a function \\\mu: \mathcal{S}\to \[0, \infty\]\\ that satisfies:
>
> - \\\mu(\emptyset) = 0\\.
> - \\\mu\\ is [countably additive](measures-additivity.llms.md#def-countable-additivity).

> **NOTE:**
>
> **Example 1 (Counting elements is a measure)** The counting function \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 1 in Additivity](measures-additivity.llms.md#exm-finite-additivity), defined on the \\\sigma\\-algebra of all subsets of \\D\\ ([Example 1 in Sigma-Algebras](measures-sigma-algebras.llms.md#exm-sigma-algebra)), takes values in \\\[0, \infty\]\\, is countably additive ([Example 3 in Additivity](measures-additivity.llms.md#exm-countable-additivity)), and gives \\\mu(\emptyset) = 0\\, so it is a measure.

> **NOTE:**
>
> **Corollary 1 (Measures are finitely additive)** Every [measure](#def-measure) is [finitely additive](measures-additivity.llms.md#def-finite-additivity).

> **NOTE:**
>
> *Proof*. A measure \\\mu\\ is countably additive and has \\\mu(\emptyset) = 0\\ ([Definition 1](#def-measure)), so [Theorem 1 in Additivity](measures-additivity.llms.md#thm-countable-implies-finite) applies to it.

> **NOTE:**
>
> **Definition 2 (Counting measure)** The **counting measure** [\[2\]](#ref-wikipedia_counting_measure) on a set \\S\\ is the [measure](#def-measure) on the [\\\sigma\\-algebra of all subsets of \\S\\](measures-sigma-algebras.llms.md#thm-power-set-sigma-algebra) that assigns each finite set its number of elements, and each infinite set the value \\\infty\\:
>
> \\ \mu(A) \stackrel{\text{def}}{=}\begin{cases} \mathopen{}\left\|A\right\|\mathclose{} & \text{if } A \text{ is finite} \\ \infty & \text{if } A \text{ is infinite} \end{cases} \\

> **NOTE:**
>
> **Example 2 (Counting measure on the non-negative integers)** For the counting measure \\\mu\\ on the [non-negative integers](number-systems.llms.md#def-nonnegative-integers) \\{\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}}\\, \\\mu({\mathopen{}\left\\0, 1, 2\right\\\mathclose{}}) = 3\\, and the set of even numbers has \\\mu({\mathopen{}\left\\0, 2, 4, \ldots\right\\\mathclose{}}) = \infty\\. The even numbers are the union of the pairwise disjoint sets \\{\mathopen{}\left\\0\right\\\mathclose{}}, {\mathopen{}\left\\2\right\\\mathclose{}}, {\mathopen{}\left\\4\right\\\mathclose{}}, \ldots\\, and countable additivity agrees:
>
> \\ \begin{aligned} \sum\_{k=0}^{\infty} \mu({\mathopen{}\left\\2k\right\\\mathclose{}}) &= 1 + 1 + \cdots \\ &= \infty. \end{aligned} \\

> **NOTE:**
>
> **Definition 3 (Measurable space)** A **measurable space** [\[3\]](#ref-wikipedia_measurable_space) \\(S, \mathcal{S})\\ is a set \\S\\ together with a [\\\sigma\\-algebra](measures-sigma-algebras.llms.md#def-sigma-algebra) \\\mathcal{S}\\ on \\S\\.

> **NOTE:**
>
> **Definition 4 (Measurable set)** In a [measurable space](#def-measurable-space) \\(S, \mathcal{S})\\, the sets in \\\mathcal{S}\\ are its **measurable sets**.

> **NOTE:**
>
> **Example 3 (Measurable spaces of die rolls)** For the die rolls \\D = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\:
>
> - \\(D, \mathcal{S})\\, with \\\mathcal{S}\\ the collection of all subsets of \\D\\, is a measurable space ([Example 1 in Sigma-Algebras](measures-sigma-algebras.llms.md#exm-sigma-algebra)).
> - \\(D, {\mathopen{}\left\\\emptyset, {\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}, {\mathopen{}\left\\1, 3, 5\right\\\mathclose{}}, D\right\\\mathclose{}})\\ is also a measurable space. Its measurable sets are only those four; for example, \\{\mathopen{}\left\\1\right\\\mathclose{}}\\ is not one of them.

> **NOTE:**
>
> **Definition 5 (Measure space)** A **measure space** \\(S, \mathcal{S}, \mu)\\ is a [measurable space](#def-measurable-space) together with a [measure](#def-measure) \\\mu\\ on \\\mathcal{S}\\.

> **NOTE:**
>
> **Example 4 (Measure space of die rolls)** For the die rolls \\D = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\, adding the counting function \\\mu(A) = \mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 1](#exm-measure) to the [measurable space](#def-measurable-space) \\(D, \mathcal{S})\\ of [Example 3](#exm-measurable-space) makes \\(D, \mathcal{S}, \mu)\\ a measure space.

> **NOTE:**
>
> **Definition 6 (Lebesgue measure)** **Lebesgue measure** on \\\mathbb{R}\\ [\[4\]](#ref-wikipedia_lebesgue_measure) is the [measure](#def-measure) \\\lambda\\ on the [Borel \\\sigma\\-algebra](measures-sigma-algebras.llms.md#def-borel-sigma-algebra) \\\mathcal{B}\\ that assigns each [interval](sets.llms.md#def-interval) its length: for real numbers \\a \le b\\,
>
> \\ \begin{aligned} \lambda(\[a, b\]) &= \lambda((a, b)) \\ &= \lambda(\[a, b)) \\ &= \lambda((a, b\]) \\ &\stackrel{\text{def}}{=}b - a, \end{aligned} \\
>
> and \\\lambda(I) \stackrel{\text{def}}{=}\infty\\ for each unbounded interval \\I\\.

> **NOTE:**
>
> *Remark 1* (Lebesgue measure exists). Exactly one measure on \\\mathcal{B}\\ assigns every interval its length; constructing it takes more measure theory than these notes cover [\[4\]](#ref-wikipedia_lebesgue_measure), which also extends \\\lambda\\ to a larger \\\sigma\\-algebra, the Lebesgue-measurable sets, with the same values on Borel sets.

> **NOTE:**
>
> **Definition 7 (Lebesgue measure on an interval)** **Lebesgue measure on an interval** \\I\\, such as \\\[0, 1\]\\, is \\\lambda\\ ([Definition 6](#def-lebesgue-measure)) applied only to the Borel sets that are subsets of \\I\\.

> **NOTE:**
>
> **Example 5 (Lengths of some Borel sets)**  
>
> - \\ \begin{aligned} \lambda(\[2, 5\]) &= 5 - 2 \\ &= 3. \end{aligned} \\
>
> - A single point has length zero:
>
>   \\ \begin{aligned} \lambda({\mathopen{}\left\\a\right\\\mathclose{}}) &= \lambda(\[a, a\]) \\ &= a - a \\ &= 0. \end{aligned} \\
>
> - The integers are the union of the pairwise disjoint single points \\{\mathopen{}\left\\0\right\\\mathclose{}}, {\mathopen{}\left\\1\right\\\mathclose{}}, {\mathopen{}\left\\-1\right\\\mathclose{}}, {\mathopen{}\left\\2\right\\\mathclose{}}, {\mathopen{}\left\\-2\right\\\mathclose{}}, \ldots\\ ([Example 6 in Sigma-Algebras](measures-sigma-algebras.llms.md#exm-borel-sigma-algebra)), so countable additivity gives
>
>   \\ \begin{aligned} \lambda(\mathbb{Z}) &= 0 + 0 + \cdots \\ &= 0. \end{aligned} \\
>
> - \\\lambda(\[0, \infty)) = \infty\\, because \\\[0, \infty)\\ is unbounded.
>
> - Lebesgue measure on \\\[0, 1\]\\ gives the whole interval \\\[0, 1\]\\ the value
>
>   \\ \begin{aligned} \lambda(\[0, 1\]) &= 1 - 0 \\ &= 1. \end{aligned} \\

> **NOTE:**
>
> *Remark 2* (Measures generalize size). A [measure](#def-measure) generalizes size: it can measure how many elements a set has, as in [Definition 2](#def-counting-measure), or how long a set of real numbers is, as Lebesgue measure ([Definition 6](#def-lebesgue-measure)) does, assigning each [interval](sets.llms.md#def-interval) \\\[a, b\]\\ its length \\b - a\\. For example, the counting measure on \\{\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}}\\ gives \\{\mathopen{}\left\\2, 3, 4, 5\right\\\mathclose{}}\\ the value \\4\\, while the Lebesgue measure of the interval \\\[2, 5\]\\ is \\5 - 2 = 3\\. Both can serve as the measures \\\mu_1\\ and \\\mu_2\\ in the [Tonelli](calculus-double-integrals.llms.md#thm-tonelli-measure) and [Fubini](calculus-double-integrals.llms.md#thm-fubini-measure) theorems.

> **NOTE:**
>
> **Definition 8 (Measure zero, null set)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). A set \\A \in \mathcal{S}\\ has **measure zero** [\[5\]](#ref-wikipedia_null_set) (also called a **null set** for \\\mu\\) if \\\mu(A) = 0\\.

> **NOTE:**
>
> **Example 6 (Sets of measure zero)**  
>
> - For a [counting measure](#def-counting-measure), only \\\emptyset\\ has measure zero: a nonempty set has at least one element, so its counting measure is at least \\1\\.
> - For Lebesgue measure, every single point \\{\mathopen{}\left\\a\right\\\mathclose{}}\\ and the integers \\\mathbb{Z}\\ have measure zero ([Example 5](#exm-lebesgue-measure)), although neither set is empty.

> **NOTE:**
>
> **Definition 9 (Almost everywhere (\\\mu\\-almost everywhere, \\\mu\\-a.e.))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). A statement about the elements of \\S\\ holds **\\\mu\\-almost everywhere** (written **\\\mu\\-a.e.**, or **almost everywhere** when \\\mu\\ is clear from context) [\[6\]](#ref-wikipedia_almost_everywhere) if the set of elements for which it fails is a [subset](sets.llms.md#def-subset) of a set of [measure zero](#def-measure-zero).

> **NOTE:**
>
> **Example 7 (Non-negative except on the integers)** Let \\g : \mathbb{R}\to \mathbb{R}\\ with \\g(x) = -1\\ when \\x\\ is an integer and \\g(x) = x^2\\ otherwise. The statement “\\g(x) \ge 0\\” fails exactly for \\x \in \mathbb{Z}\\, and \\\lambda(\mathbb{Z}) = 0\\ ([Example 5](#exm-lebesgue-measure)), so \\g \ge 0\\ holds \\\lambda\\-almost everywhere, though not everywhere.
>
> For a counting measure, only \\\emptyset\\ has measure zero ([Example 6](#exm-measure-zero)), so a statement holds almost everywhere only if it holds everywhere.

> **NOTE:**
>
> Show R code
>
> ``` downlit
> aeg_x_pf <- seq(-3, 3, length.out = 301)
> aeg_curve_pf <- tibble::tibble(x = aeg_x_pf, y = aeg_x_pf^2)
> aeg_ints_pf <- -3:3
> aeg_open_pf <- tibble::tibble(x = aeg_ints_pf, y = aeg_ints_pf^2)
> aeg_dots_pf <- tibble::tibble(x = aeg_ints_pf, y = -1)
> aeg_aes_pf <- ggplot2::aes(x, y)
> ggplot2::ggplot(aeg_curve_pf, aeg_aes_pf) +
>   ggplot2::geom_line(colour = "#0072B2") +
>   ggplot2::geom_point(data = aeg_open_pf, shape = 1, size = 3) +
>   ggplot2::geom_point(data = aeg_dots_pf, colour = "#D55E00", size = 3) +
>   ggplot2::geom_hline(yintercept = 0, linetype = "dashed") +
>   ggplot2::labs(x = "x", y = "g(x)")
> ```
>
> Show R code
>
> ``` python
> import matplotlib.pyplot as plt
> import numpy as np
>
> aeg_x_pf = np.linspace(-3, 3, 301)
> aeg_ints_pf = np.arange(-3, 4)
> fig, ax = plt.subplots(figsize=(5, 3.5), layout="constrained")
> ax.plot(aeg_x_pf, aeg_x_pf**2, color="#0072B2")
> ax.plot(aeg_ints_pf, aeg_ints_pf**2, linestyle="", marker="o",
>         markerfacecolor="white", color="black")
> ax.plot(aeg_ints_pf, -np.ones(7), linestyle="", marker="o", color="#D55E00")
> ax.axhline(0, linestyle="dashed", color="black")
> ax.set_xlabel("x")
> ax.set_ylabel("g(x)")
> plt.show()
> ```
>
> ## R
>
> [![Plot of a function for x from minus 3 to 3. A blue parabola, x squared, opens upward with its lowest value 0 at x of 0. At each of the integers minus 3 to 3, the parabola has an open circle, and a vermilion filled point sits below the axis at the value minus 1.](measures-measure-spaces_files/figure-html/almost-everywhere-r-1.png)](measures-measure-spaces_files/figure-html/almost-everywhere-r-1.png "Figure 1: The plot shows the function g of Example 7 on [-3, 3]. It is x^2 except at the integers, where it is -1. It falls below the dashed line g = 0 only at those points, which together have measure zero, so g \ge 0 almost everywhere.")
>
> ## Python
>
> [![Plot of a function for x from minus 3 to 3. A blue parabola, x squared, opens upward with its lowest value 0 at x of 0. At each of the integers minus 3 to 3, the parabola has an open circle, and a vermilion filled point sits below the axis at the value minus 1.](measures-measure-spaces_files/figure-html/almost-everywhere-python-1.png)](measures-measure-spaces_files/figure-html/almost-everywhere-python-1.png "Figure 1: The plot shows the function g of Example 7 on [-3, 3]. It is x^2 except at the integers, where it is -1. It falls below the dashed line g = 0 only at those points, which together have measure zero, so g \ge 0 almost everywhere.")
>
> Figure 1: The plot shows the [function](functions.llms.md#def-function) \\g\\ of [Example 7](#exm-almost-everywhere) on \\\[-3, 3\]\\. It is \\x^2\\ except at the [integers](number-systems.llms.md#def-integers), where it is \\-1\\. It falls below the dashed line \\g = 0\\ only at those points, which together have [measure zero](#def-measure-zero), so \\g \ge 0\\ [almost everywhere](#def-almost-everywhere).

> **NOTE:**
>
> **Definition 10 (Finite measure)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). The measure \\\mu\\ is **finite** if [\[7\]](#ref-wikipedia_finite_measure) \\\mu(S) \< \infty\\.

> **NOTE:**
>
> **Definition 11 (\\\sigma\\-finite measure)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). The measure \\\mu\\ is **\\\sigma\\-finite** [\[8\]](#ref-wikipedia_sigma_finite_measure) if \\S\\ is the union \\\bigcup\_{i=1}^{\infty} A_i\\ of a sequence of sets \\A_1, A_2, \ldots\\ in \\\mathcal{S}\\ with \\\mu(A_i) \< \infty\\ for every \\i\\.

> **NOTE:**
>
> **Example 8 (Finite and \\\sigma\\-finite measures)**  
>
> - Every finite measure is \\\sigma\\-finite: take \\A_1 = S\\ and
>
>   \\ \begin{aligned} A_2 &= A_3 \\ &= \cdots \\ &= \emptyset, \end{aligned} \\
>
>   with \\\mu(A_1) = \mu(S) \< \infty\\ and \\\mu(\emptyset) = 0\\.
>
> - The counting measure on the die rolls \\D\\ is finite, with \\\mu(D) = 6\\.
>
> - The counting measure on \\{\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}}\\ is not finite, but it is \\\sigma\\-finite: it is the union of the sets \\A_i = {\mathopen{}\left\\0, 1, \ldots, i\right\\\mathclose{}}\\, each with \\\mu(A_i) = i + 1 \< \infty\\.
>
> - Lebesgue measure on \\\mathbb{R}\\ is not finite, since \\\lambda(\mathbb{R}) = \infty\\, but it is \\\sigma\\-finite: \\\mathbb{R}\\ is the union of the intervals \\A_i = \[-i, i\]\\, each with \\\lambda(A_i) = 2i \< \infty\\.

## 2 Probability measures

> **NOTE:**
>
> **Definition 12 (Probability measure)** A **probability measure** [\[9\]](#ref-wikipedia_probability_measure) on a [measurable space](#def-measurable-space) \\(\Omega, \mathcal{F})\\ is a [measure](#def-measure) \\\mathbb{P}\\ on \\\mathcal{F}\\ that gives the whole set \\\Omega\\ the value \\1\\:
>
> \\{\mathbb{P}\mathopen{}\left(\Omega\right)\mathclose{}} = 1\\

> **NOTE:**
>
> **Example 9 (A fair die, and the unit interval)**  
>
> - For one roll of a fair die, the sample space is
>
>   \\ \begin{aligned} \Omega&= D \\ &= {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}, \end{aligned} \\
>
>   the events are all subsets of \\D\\, and \\{\mathbb{P}\mathopen{}\left(A\right)\mathclose{}} \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{} / 6\\. \\\mathbb{P}\\ is the counting function \\\mu(A) = \mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 1](#exm-measure) divided by \\6\\. So \\{\mathbb{P}\mathopen{}\left(\emptyset\right)\mathclose{}} = 0\\, and \\\mathbb{P}\\ is countably additive, because each sum in [Example 3 in Additivity](measures-additivity.llms.md#exm-countable-additivity) has at most six nonzero terms, and dividing a finite sum by \\6\\ divides each term by \\6\\. It is a probability measure, since
>
>   \\ \begin{aligned} {\mathbb{P}\mathopen{}\left(D\right)\mathclose{}} &= 6/6 \\ &= 1. \end{aligned} \\
>
>   The outcome \\3\\ is in the event “the roll is odd”, \\{\mathopen{}\left\\1, 3, 5\right\\\mathclose{}}\\, which has
>
>   \\ \begin{aligned} {\mathbb{P}\mathopen{}\left({\mathopen{}\left\\1, 3, 5\right\\\mathclose{}}\right)\mathclose{}} &= 3/6 \\ &= 1/2. \end{aligned} \\
>
> - Lebesgue measure on \\\[0, 1\]\\ is a probability measure, because \\\lambda(\[0, 1\]) = 1\\ ([Example 5](#exm-lebesgue-measure)).
>
> - The counting measure on \\D\\ is not a probability measure, because it gives \\D\\ the value \\6\\.

> **NOTE:**
>
> **Definition 13 (Probability space)** For a probability measure \\\mathbb{P}\\ ([Definition 12](#def-probability-measure)) on a [measurable space](#def-measurable-space) \\(\Omega, \mathcal{F})\\, \\(\Omega, \mathcal{F}, \mathbb{P})\\ is a **probability space**. [\[10\]](#ref-wikipedia_probability_space)

> **NOTE:**
>
> **Definition 14 (Sample space)** In a probability space \\(\Omega, \mathcal{F}, \mathbb{P})\\ ([Definition 13](#def-probability-space)), \\\Omega\\ is its **sample space**. [\[11\]](#ref-wikipedia_sample_space)

> **NOTE:**
>
> **Definition 15 (Outcome)** In a probability space \\(\Omega, \mathcal{F}, \mathbb{P})\\ ([Definition 13](#def-probability-space)), the elements of the sample space \\\Omega\\ ([Definition 14](#def-sample-space)) are **outcomes**. [\[12\]](#ref-wikipedia_outcome_probability)

> **NOTE:**
>
> **Definition 16 (Event)** In a probability space \\(\Omega, \mathcal{F}, \mathbb{P})\\ ([Definition 13](#def-probability-space)), the sets in \\\mathcal{F}\\ are **events**. [\[13\]](#ref-wikipedia_event_probability_theory)

> **NOTE:**
>
> *Remark 3* (Mutually exclusive events). In [probability](#def-probability-measure), [pairwise disjoint](sets.llms.md#def-pairwise-disjoint) [events](#def-probability-measure) are usually called **mutually exclusive**. For example, for one roll of a six-sided die, the events “the roll is [even](number-systems.llms.md#def-even-odd)”, \\{\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}\\, and “the roll is odd”, \\{\mathopen{}\left\\1, 3, 5\right\\\mathclose{}}\\, are mutually exclusive: no roll is both even and odd.

Back to top

## References

\[1\]

Wikipedia contributors, “Measure (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Measure_(mathematics)>

\[2\]

Wikipedia contributors, “Counting measure — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Counting_measure>

\[3\]

Wikipedia contributors, “Measurable space — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Measurable_space>

\[4\]

Wikipedia contributors, “Lebesgue measure — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Lebesgue_measure>

\[5\]

Wikipedia contributors, “Null set — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Null_set>

\[6\]

Wikipedia contributors, “Almost everywhere — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Almost_everywhere>

\[7\]

Wikipedia contributors, “Finite measure — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Finite_measure>

\[8\]

Wikipedia contributors, “Sigma-finite measure — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Sigma-finite_measure>

\[9\]

Wikipedia contributors, “Probability measure — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Probability_measure>

\[10\]

Wikipedia contributors, “Probability space — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Probability_space>

\[11\]

Wikipedia contributors, “Sample space — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Sample_space>

\[12\]

Wikipedia contributors, “Outcome (probability) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Outcome_(probability)>

\[13\]

Wikipedia contributors, “Event (probability theory) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Event_(probability_theory)>
