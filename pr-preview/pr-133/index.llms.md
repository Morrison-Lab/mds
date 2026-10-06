# Math for Data Science

Code

Published

Last modified: 2026-10-05 17:33:48 (PDT)

## Welcome

> Math is not just a way of calculating numerical answers; it is a way of thinking, using clear definitions for concepts and rigorous logic to organize our thoughts and back up our assertions.

Cheng ([2025](#ref-cheng2025math))

These notes collect the mathematics that data science courses assume: mathematical notation, algebra (including exponentials and logarithms), univariate calculus, linear algebra, vector calculus, and proof writing. Some key results are listed here, organized by topic:

- [Notation](notation.llms.md): common symbols, natural numbers, the percent sign, proof symbols, and indicator functions
- [Sets and Functions](sets-functions.llms.md): sets, subsets and supersets, the empty set, unions, intersections, and set differences, countable sets, functions with their domains, codomains, and images, and the extended non-negative real numbers
- [Algebra](algebra.llms.md): equalities and inequalities, infimum and supremum, sums, products, quotients, exponentials and logarithms
- [Measures](measures.llms.md): \\\sigma\\-algebras, pairwise disjoint sets, finite and countable additivity, measures, and the counting measure
- [Calculus](calculus.llms.md): derivative rules, antiderivatives, regularity conditions, the Fundamental Theorem of Calculus, and double integrals
- [Linear Algebra](linear-algebra.llms.md): vectors, matrices and their operations, special matrices, quadratic forms, eigendecompositions, definite matrices, determinants, and the design matrix
- [Vector Calculus](vector-calculus.llms.md): derivatives with respect to vectors and matrices, quadratic forms, and the vector chain rule
- [Proof Writing](proof-writing.llms.md): showing and annotating every step of a derivation

## Further reading

These resources cover related material.

- [Mathematical Methods in Data Science (MMiDS)](https://mmids-textbook.github.io/index.html) by Sebastien Roch (University of Wisconsin-Madison), is available online and in print from Cambridge University Press. It grew out of MATH 535, a one-semester advanced undergraduate and master’s course at the University of Wisconsin-Madison. It is written as an invitation to data science and AI for math students, and as a mathematical companion to machine learning, AI, and statistics courses. Its chapters treat least squares, optimization, the singular value decomposition, spectral graph theory, probabilistic models, random walks on graphs, and neural networks, so they overlap with our linear algebra and vector calculus pages.
- [UCLA Biostat 216, Mathematical Methods for Biostatistics](https://github.com/ucla-biostat-216) is a course for first-year biostatistics MS and PhD students at UCLA. As of October 2026, the most recent course site in the organization is the [2024 Fall edition](https://ucla-biostat-216.github.io/2024fall/), taught by Hua Zhou. Its [schedule](https://ucla-biostat-216.github.io/2024fall/schedule/schedule.html) links slides on vectors, matrices, vector spaces, rank, orthogonal projection, matrix inverses, least squares, determinants, eigendecompositions, positive (semi)definite matrices, the SVD, and multivariate calculus and optimization. Those topics overlap with our [linear algebra](linear-algebra.llms.md) and [vector calculus](vector-calculus.llms.md) pages.
- [Calculus for Machine Learning](https://www.youtube.com/playlist?list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx) is a YouTube playlist by Jon Krohn (56 videos as of October 2026), taken from his Machine Learning Foundations series. It includes limits, derivative rules, partial derivatives, and integrals, so it overlaps with our [calculus](calculus.llms.md) and [vector calculus](vector-calculus.llms.md) pages. Those pages link the individual videos in the sections they match.

## Using these notes in another site

Course sites link to these pages by URL; they do not include this repository as a git submodule. A host site that keeps a copy of this repository at its root, named `mds`, can still include fragments with paths that start with `mds/`, for example `{{< include mds/_notation.qmd >}}`. This site includes its own fragments the same way, through a `mds` symlink that points at the repository root.

Each page is a thin wrapper around one or more fragments:

| Page | Fragment(s) to include |
|----|----|
| [Notation](notation.llms.md) | `mds/_notation.qmd` |
| [Sets and Functions](sets-functions.llms.md) | `mds/_sets-functions.qmd` |
| [Algebra](algebra.llms.md) | `mds/_algebra.qmd` |
| [Measures](measures.llms.md) | `mds/_measures.qmd` |
| [Calculus](calculus.llms.md) | `mds/_calc-derivatives.qmd`, `mds/_calc-integrals.qmd`, and the double-integral subfiles `mds/_subfiles/_*fubini*.qmd` |
| [Linear Algebra](linear-algebra.llms.md) | `mds/_subfiles/_sec_linear_algebra.qmd` |
| [Vector Calculus](vector-calculus.llms.md) | `mds/_subfiles/_sec_vector_calc.qmd` |
| [Proof Writing](proof-writing.llms.md) | `mds/_proof-writing.qmd` |

`_notation.qmd`, `_sets-functions.qmd`, `_algebra.qmd`, `_measures.qmd`, and `_subfiles/_sec_linear_algebra.qmd` include `latex-macros/macros.qmd` themselves; a host page that includes any of the other fragments must include `latex-macros/macros.qmd` first, as the pages of this site do.

Quarto resolves `@id` cross-references only within one rendered page, so a host site that links to a result here uses an explicit link, `[text](notation.qmd#id)`.

## References

Cheng, Eugenia. 2025. “Opinion \| How Math Turned Me from a D.E.I. Skeptic to a Supporter.” *The New York Times*. <https://www.nytimes.com/2025/09/05/opinion/math-dei.html>.

Back to top
