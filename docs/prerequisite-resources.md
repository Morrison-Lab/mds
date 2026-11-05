# Free resources for the mathematics data science assumes

This survey lists free books, lecture notes and courses
on real analysis, measure theory and the other prerequisites of the data science courses.
It was compiled on 2026-11-05 from web search results and author pages.
Tao's *An Introduction to Measure Theory* is tracked in [#636](https://github.com/Morrison-Lab/mds/issues/636),
and Nield's *Essential Math for Data Science* in [#634](https://github.com/Morrison-Lab/mds/issues/634),
so neither is repeated here.
The work is tracked in [#638](https://github.com/Morrison-Lab/mds/issues/638).

## How to read the tables

- **Status** `fetched` means the author's page was read in this survey.
  `search only` means a search result described it, and the author's page could not be reached from the cloud session
  (its host is outside the session's allowed network domains).
  Check a `search only` entry before copying it into a page's Further reading section.
- **Measures coverage** compares the resource with what the measures page defines:
  $\sigma$-algebras, measures, Lebesgue measure, integrals, $L^p$ spaces and product measures.
  `unchecked` means the table of contents was not read.
- A resource is added to a page's Further reading section in its own pull request,
  not in this file.

## Real analysis

| Resource | Author | Level and prerequisites | Measures coverage | Access and license | Status |
| --- | --- | --- | --- | --- | --- |
| [18.100A and 18.100B Real Analysis](https://ocw.mit.edu/courses/18-100a-real-analysis-fall-2020/) (MIT OpenCourseWare) | MIT instructors | Undergraduate and graduate; first course in proofs | None indicated: limits, continuity and convergence | Free lecture-note PDFs; OpenCourseWare terms apply (license unchecked) | search only |
| *Basic Analysis: Introduction to Real Analysis*, listed with the MIT 18.100A materials | not named in the listing | Undergraduate; calculus | unchecked | Listed on the MIT page as a PDF; license unchecked | search only |

## Measure theory and measure-theoretic probability

| Resource | Author | Level and prerequisites | Measures coverage | Access and license | Status |
| --- | --- | --- | --- | --- | --- |
| [*A Basic Course in Measure and Probability: Theory for Applications*](https://www.cambridge.org/core/books/basic-course-in-measure-and-probability/3F3685364866934959D87834DFA04142) | Leadbetter, Cambanis and Pipiras | Advanced undergraduate to master's; aimed at statisticians and applications | Lebesgue integration and limit theorems, per the publisher; rest unchecked | Cambridge University Press; not free (library access) | search only |
| [*High-Dimensional Probability: An Introduction with Applications in Data Science*](https://www.math.uci.edu/~rvershyn/papers/HDP-book/HDP-2.pdf), 2nd ed. (2026) | Roman Vershynin | Master's and doctoral; probability at the master's level, undergraduate linear algebra, basic metric, normed and Hilbert spaces; measure theory not required | None: it uses measure-theoretic probability without developing it | Free download, "always free"; the page states no license | fetched |

No free, author-hosted measure theory text aimed at statistics or machine learning came up in the search.
The search results were publisher and bookseller listings only.
The free options found so far are real analysis courses and graduate probability books that assume measure theory.

## Linear algebra

| Resource | Author | Level and prerequisites | Access and license | Status |
| --- | --- | --- | --- | --- |
| [*Introduction to Applied Linear Algebra: Vectors, Matrices, and Least Squares*](https://web.stanford.edu/~boyd/vmls/) | Stephen Boyd and Lieven Vandenberghe | Undergraduate; applied, data science examples; used in Stanford ENGR108 | Free PDF on the authors' page; terms unchecked | search only |
| *Linear Algebra Done Wrong* | Sergei Treil | Undergraduate; proof-based | Free on the author's page at Brown University | search only |
| *Linear Algebra* | Jim Hefferon | Undergraduate; proofs, worked answers | Free PDF and LaTeX source; GFDL or CC BY-SA, as reported by search | search only |

Strang's *Linear Algebra and Learning from Data* is the data science book of the Strang books, and it is not free.

## Calculus, vector calculus and the whole prerequisite stack

| Resource | Author | Level and prerequisites | Access and license | Status |
| --- | --- | --- | --- | --- |
| [*Mathematics for Machine Learning*](https://mml-book.com/) | Deisenroth, Faisal and Ong | Undergraduate to master's; covers linear algebra, analytic geometry, matrix decompositions, vector calculus, optimization, probability and statistics | Cambridge University Press; the PDF is free for personal use and not for redistribution | search only |

## Optimization

| Resource | Author | Level and prerequisites | Access and license | Status |
| --- | --- | --- | --- | --- |
| [*Convex Optimization*](https://web.stanford.edu/~boyd/cvxbook/) | Stephen Boyd and Lieven Vandenberghe | Graduate; linear algebra, calculus | Free PDF; Cambridge University Press holds the copyright and allows the web copy | search only |

The search found no free optimization-for-machine-learning lecture notes.

## Probability

| Resource | Author | Level and prerequisites | Access and license | Status |
| --- | --- | --- | --- | --- |
| [*Introduction to Probability for Data Science*](https://probability4datascience.com/) | Stanley H. Chan | Undergraduate; 10 chapters, 687 pages | Free PDF; sources disagree on the license (Fulcrum lists open access, AIMath lists the author's copyright), so read the copyright page of the PDF first | search only |
| *Probability for Data Science* | Ani Adhikari and Jim Pitman (Berkeley Data 140) | Undergraduate | Free online; CC BY-NC-ND 4.0, as reported by search | search only |
| *Essential Probability Theory for Data Science* (DSCI 500B) | Kuter | Course text | Free on LibreTexts | search only |

## Statistics

| Resource | Author | Level and prerequisites | Access and license | Status |
| --- | --- | --- | --- | --- |
| *All of Statistics* | Larry Wasserman | Master's | No free official copy found; Springer library access only. Avoid the unauthorized copies that search returns | search only |

## Information theory

| Resource | Author | Level and prerequisites | Access and license | Status |
| --- | --- | --- | --- | --- |
| [*Information Theory, Inference, and Learning Algorithms*](https://www.inference.org.uk/itila/book.html) | David J. C. MacKay | Undergraduate to master's; self-study with over 400 exercises | The publisher and a 2003 announcement say the full book is free to view on screen; the page was not reachable here, so confirm the link and the terms | search only |

## Already in the project library

The private project library (`/mnt/project-files/books/`) holds copies of
Billingsley, *Probability and Measure* (3rd ed.);
Gut, *Probability: A Graduate Course* (2nd ed.);
Grinstead and Snell, *Introduction to Probability*;
Cover and Thomas, *Elements of Information Theory* (2nd ed.);
Wasserman, *All of Statistics*;
Casella and Berger, *Statistical Inference* (2nd ed.);
Denton and Waldron, *Linear Algebra in Twenty-Five Lectures*;
and Tao's author preliminary version of *An Introduction to Measure Theory*.
Only the file names were read, not the texts, and the library is private,
so each needs a public link and a license check before it appears on a page.

## Named but not yet checked

These come from memory, not from this survey, so none has been read.
Confirm each page, license and level before adding it to a page.

- Axler, *Measure, Integration and Real Analysis*.
- Bass, *Real Analysis for Graduate Students*.
- Durrett, *Probability: Theory and Examples*.
- Blitzstein and Hwang, *Introduction to Probability*.
- Blum, Hopcroft and Kannan, *Foundations of Data Science*.
- Hardt and Recht, *Patterns, Predictions, and Actions*.
- Bach, *Learning Theory from First Principles*.
- Bubeck, *Convex Optimization: Algorithms and Complexity*.
- Wasserman's intermediate statistics lecture notes (Carnegie Mellon).
- Polyanskiy and Wu, *Information Theory: From Coding to Learning*.

## Hosts to allow for a follow-up pass

The fetches for these hosts failed with a name-resolution error
because they are outside the cloud session's allowed network domains:
`measure.axler.net`, `www.jirka.org`, `www.probabilitybook.net`, `probability4datascience.com`,
`www.inference.org.uk`, `mml-book.com`, `mlstory.org` and `www.di.ens.fr`.
The Stanford and Cornell pages returned HTTP 503, and the Brown page was not tried.
