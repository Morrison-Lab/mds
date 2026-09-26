# Math for Data Science

Code

Published

Last modified: 2026-09-26 12:38:23 (PDT)

# Welcome

> Math is not just a way of calculating numerical answers; it is a way of thinking, using clear definitions for concepts and rigorous logic to organize our thoughts and back up our assertions.

Cheng ([2025](#ref-cheng2025math))

These notes collect the mathematics that data science courses assume: mathematical notation, algebra, precalculus, univariate calculus, linear algebra, and vector calculus. Some key results are listed here, organized by topic:

- [Notation](notation.llms.md)
- [Algebra](algebra.llms.md)
- [Calculus](calculus.llms.md)
- [Linear Algebra](linear-algebra.llms.md)
- [Vector Calculus](vector-calculus.llms.md)

## 0.1 Using these notes in another site

Course sites include these notes as a git submodule named `mds` at the site’s root, and include fragments with paths that start with `mds/`, for example `{{< include mds/_notation.qmd >}}`. This site includes its own fragments the same way, through a `mds` symlink that points at the repository root.

Quarto resolves `@id` cross-references only within one rendered page, so a host site that links to a result here uses an explicit link, `[text](notation.qmd#id)`.

# References

Cheng, Eugenia. 2025. “Opinion \| How Math Turned Me from a D.E.I. Skeptic to a Supporter.” *The New York Times*. <https://www.nytimes.com/2025/09/05/opinion/math-dei.html>.

Back to top
