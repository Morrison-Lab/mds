# Notation

Code

Published

Last modified: 2026-10-17 02:34:23 (PDT)

Mathematical notation is not standardized. This section states the conventions these notes use, and the alternatives you may meet in other sources.

> **NOTE:**
>
> | symbol | meaning | LaTeX |
> |----|----|----|
> | \\\neg\\ | [not](proof-writing.llms.md#def-not) | `\neg` |
> | \\\forall\\ | [for all](proof-writing.llms.md#def-universal-quantifier) | `\forall` |
> | \\\exists\\ | [there exists](proof-writing.llms.md#def-existential-quantifier) | `\exists` |
> | \\\cup\\ | union, “or” | `\cup` |
> | \\\cap\\ | intersection, “and” | `\cap` |
> | \\\mid\\ | given, [conditional on](https://morrison-lab.github.io/pds/probability-basics.html#def-conditional-prob) | `\mid`, `|` |
> | \\\sum\\ | [sum](algebra-sums.llms.md#sec-summation) | `\sum` |
> | \\\prod\\ | product | `\prod` |
> | \\\mu\\ | population mean, \\\operatorname{E}\[X\]\\, of a [random variable](https://morrison-lab.github.io/pds/random-variables.html#def-random-variable) \\X\\ | `\mu` |
> | \\\operatorname{E}\\ | [expectation](https://morrison-lab.github.io/pds/expectation.html#def-expectation) | `\mathbb{E}` |
> | \\x^{\top}\\ | transpose of \\x\\ | `x\'` |
> | \\'\\ | transpose or [derivative](calculus-derivatives.llms.md#def-derivative)[^1] | `'` |
> | \\\perp\\\\\\\perp\\ | [independent](https://morrison-lab.github.io/pds/independence.html#def-indpt) | `\perp\!\!\!\perp` |
> | \\\therefore\\ | [therefore](proof-writing.llms.md#def-logical-entailment), thus | `\therefore` |
> | \\\eta\\ | [linear predictor](https://en.wikipedia.org/wiki/Generalized_linear_model#:~:text=The%20linear%20predictor%20is%20the,data%20through%20the%20link%20function "linear predictor notation") of a generalized linear model[^2] | `\eta` |
> | \\\mathopen{}\left\lfloor x\right\rfloor\mathclose{}\\ | floor of \\x\\: largest [integer](number-systems.llms.md#def-integers) less than or equal to \\x\\ | `\lfloor x \rfloor` |
> | \\\mathopen{}\left\lceil x\right\rceil\mathclose{}\\ | ceiling of \\x\\: smallest [integer](number-systems.llms.md#def-integers) greater than or equal to \\x\\ | `\lceil x \rceil` |
> | \\\mathbb{1}\_{A}(x)\\, \\\mathbb{1}\mathopen{}\left(P\right)\mathclose{}\\ | indicator function ([definition](indicator-functions.llms.md#def-indicator-function)): \\1\\ if condition holds, \\0\\ otherwise | `\indic{A}(x)`, `\indicp{P}` |
>
> Table 1: Notation used in this book

The links for conditioning, random variables, expectation, and independence go to the Morrison Lab’s probability notes, which define those terms.

## 1 Writing math in Quarto

The third column of [Table 1](#tbl-notation-collected) gives the LaTeX command for each symbol. Quarto and R Markdown documents write math in LaTeX syntax: put inline math between single dollar signs, as in `$x^2$`, and displayed equations between double dollar signs, as in `$$x^2$$`. The [equations section of Quarto’s Markdown guide](https://quarto.org/docs/authoring/markdown-basics.html#equations) shows the details. These notes also use shorthand macros, such as `\floor{x}` for \\\mathopen{}\left\lfloor x\right\rfloor\mathclose{}\\, defined in the `latex-macros` submodule’s `macros.qmd`.

## 2 Why is notation in probability and statistics so inconsistent and disorganized?

In grad school, we are asked to learn from increasingly disorganized materials and lectures. Not coincidentally, as the amount of organization decreases, the amount of complexity increases, the amount of difficulty increases, the number of reliable references decreases, and the amount of inconsistency in notation and content increases (both between multiple references and within single references!). In other words, as you approach the cutting-edge of most fields, you start to run into content that hasn’t been fully thought through or standardized. This lack of clarity is unfortunate and undesirable, but it is understandable and inevitable.

It’s worth noting that calculus was formalized in the [1600s](https://en.wikipedia.org/wiki/Leibniz%27s_notation), elementary algebra was formalized around [820](https://en.wikipedia.org/wiki/Al-Jabr), and arithmetic [even earlier](https://en.wikipedia.org/wiki/Arithmetic#History). And calculus still has [several competing notation systems](https://en.wikipedia.org/wiki/Notation_for_differentiation). In contrast, the field of statistics only emerged in the [late 1800s and early 1900s](https://en.wikipedia.org/wiki/History_of_statistics#Development_of_modern_statistics), so it’s not surprising that the notation and terminology is still developing. Generalized linear models were only formalized in 1972 ([Nelder and Wedderburn 1972](#ref-nelder1972generalized)), which is very recent in terms of the [pace of scientific development](https://en.wikipedia.org/wiki/The_Structure_of_Scientific_Revolutions).

## 3 Further reading

For the logical symbols and proof conventions used in these notes (whose definitions are on the [Proof Writing](proof-writing.llms.md#sec-proof-definitions) page):

- Velleman ([2019](#ref-velleman2019prove)) explains how mathematical statements are built from logical connectives ([definition](proof-writing.llms.md#def-logical-connective)) and quantifiers ([definition](proof-writing.llms.md#def-quantifier)), and how to read and write them.
- Barker-Plummer et al. ([2011](#ref-barkerplummer2011language)) covers the same symbols as a formal language, with propositional logic (the logic of connectives) and first-order logic (which adds quantifiers).

For set and function notation, see the [Sets](sets.llms.md), [Functions](functions.llms.md), and [Expressions and Algorithms](expressions-algorithms.llms.md) pages.

## References

Barker-Plummer, Dave, Jon Barwise, and John Etchemendy. 2011. *Language, Proof and Logic*. 2nd ed. CSLI Publications. <https://www.amazon.com/dp/1575866323>.

Nelder, John Ashworth, and Robert WM Wedderburn. 1972. “Generalized Linear Models.” *Journal of the Royal Statistical Society Series A: Statistics in Society* 135 (3): 370–84. <https://doi.org/10.2307/2344614>.

Velleman, Daniel J. 2019. *How to Prove It: A Structured Approach*. 3rd ed. Cambridge University Press. <https://doi.org/10.1017/9781108539890>.

Back to top

## Footnotes

[^1]: depending on whether it is applied to a matrix or a function

[^2]: A generalized linear model (GLM) is a regression model in which a chosen function \\g\\, the link function, of the population mean \\\mu\\ of the outcome equals the linear predictor \\\eta = x^{\top} \beta\\, a [linear combination](linear-algebra-vectors.llms.md#def-linear-combination) of the predictor values \\x\\ with coefficients \\\beta\\: \\g(\mu) = \eta\\.
