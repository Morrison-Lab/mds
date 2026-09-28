# Math for Data Science

Code

Published

Last modified: 2026-09-28 02:56:52 (PDT)

## Welcome

> Math is not just a way of calculating numerical answers; it is a way of thinking, using clear definitions for concepts and rigorous logic to organize our thoughts and back up our assertions.

Cheng ([2025](#ref-cheng2025math))

These notes collect the mathematics that data science courses assume: mathematical notation, algebra (including exponentials and logarithms), univariate calculus, linear algebra, vector calculus, and proof writing. Some key results are listed here, organized by topic:

- [Notation](notation.llms.md): common symbols, natural numbers, the percent sign, proof symbols, and indicator functions
- [Algebra](algebra.llms.md): equalities and inequalities, infimum and supremum, sums, products, quotients, exponentials and logarithms
- [Calculus](calculus.llms.md): derivative rules, antiderivatives, regularity conditions, the Fundamental Theorem of Calculus, and double integrals
- [Linear Algebra](linear-algebra.llms.md): vectors, matrices and their operations, special matrices, quadratic forms, and the design matrix
- [Vector Calculus](vector-calculus.llms.md): derivatives with respect to vectors and matrices, quadratic forms, and the vector chain rule
- [Proof Writing](proof-writing.llms.md): showing and annotating every step of a derivation

## Using these notes in another site

Course sites include these notes as a git submodule named `mds` at the site’s root, and include fragments with paths that start with `mds/`, for example `{{< include mds/_notation.qmd >}}`. This site includes its own fragments the same way, through a `mds` symlink that points at the repository root.

Each page is a thin wrapper around one or more fragments:

| Page | Fragment(s) to include |
|----|----|
| [Notation](notation.llms.md) | `mds/_notation.qmd` |
| [Algebra](algebra.llms.md) | `mds/_algebra.qmd` |
| [Calculus](calculus.llms.md) | `mds/_calc-derivatives.qmd`, `mds/_calc-integrals.qmd`, and the double-integral subfiles `mds/_subfiles/_*fubini*.qmd` |
| [Linear Algebra](linear-algebra.llms.md) | `mds/_subfiles/_sec_linear_algebra.qmd` |
| [Vector Calculus](vector-calculus.llms.md) | `mds/_subfiles/_sec_vector_calc.qmd` |
| [Proof Writing](proof-writing.llms.md) | `mds/_proof-writing.qmd` |

`_notation.qmd` and `_algebra.qmd` include `latex-macros/macros.qmd` themselves; a host page that includes any of the other fragments must include `latex-macros/macros.qmd` first, as the pages of this site do.

Quarto resolves `@id` cross-references only within one rendered page, so a host site that links to a result here uses an explicit link, `[text](notation.qmd#id)`.

## References

Cheng, Eugenia. 2025. “Opinion \| How Math Turned Me from a D.E.I. Skeptic to a Supporter.” *The New York Times*. <https://www.nytimes.com/2025/09/05/opinion/math-dei.html>.

Back to top
