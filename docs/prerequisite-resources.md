# Free resources for the mathematics data science assumes

This survey lists free books, lecture notes and courses
on real analysis, measure theory and the other prerequisites of the data science courses.
It was compiled on 2026-11-05 from web search results and author pages,
and the author pages were then read with `curl` on the same day.
Tao's *An Introduction to Measure Theory* is tracked in [#636](https://github.com/Morrison-Lab/mds/issues/636),
and Nield's *Essential Math for Data Science* in [#634](https://github.com/Morrison-Lab/mds/issues/634),
so neither is repeated here.
The work is tracked in [#638](https://github.com/Morrison-Lab/mds/issues/638).

## How to read the tables

- **Status** `fetched` means the author's page
  (or, where noted, the book's own PDF) was read in this survey.
  `search only` means a search result described it,
  and the page has not been read.
  `unchanged` means the page was tried in the second pass and could not be read,
  so the row still carries what the first pass reported.
  Check a `search only` or `unchanged` entry before copying it into a page's Further reading section.
- **Measures coverage** compares the resource with what the measures page defines:
  $\sigma$-algebras, measures, Lebesgue measure, integrals, $L^p$ spaces and product measures.
  It records what the page or the contents lines read show, not the full text of the book.
  `unchecked` means the table of contents was not read.
- **Access and license** records only what the page itself says.
  Where a page states no license, the row says so.
- A resource is added to a page's Further reading section in its own pull request,
  not in this file.

## Real analysis

| Resource | Author | Level and prerequisites | Measures coverage | Access and license | Status |
| --- | --- | --- | --- | --- | --- |
| [18.100A and 18.100B Real Analysis](https://ocw.mit.edu/courses/18-100a-real-analysis-fall-2020/) (MIT OpenCourseWare) | MIT instructors | Undergraduate and graduate; first course in proofs | None indicated: limits, continuity and convergence | Free lecture-note PDFs; OpenCourseWare terms apply (license unchecked) | search only |
| [*Basic Analysis: Introduction to Real Analysis*](https://www.jirka.org/ra/), vol. I and II (version 6.3, 15 May 2026) | Jiří Lebl | Undergraduate, with a faster track for future graduate students; prerequisite is a basic proof course | None: Riemann (Darboux) integral on the real line, metric spaces, multivariable Riemann integral; no $\sigma$-algebras, Lebesgue measure or $L^p$ in the contents. The author says the first volume and the first three chapters of the second prepare students for graduate real analysis | Free PDFs ([vol. I](https://www.jirka.org/ra/realanal.pdf), [vol. II](https://www.jirka.org/ra/realanal2.pdf)) and a web version; dual licensed CC BY-NC-SA 4.0 and CC BY-SA 4.0 | fetched |
| [*Measure, Integration & Real Analysis*](https://measure.axler.net/) (Springer GTM, 2020) | Sheldon Axler | First-year graduate course; the author supplies a review of undergraduate real analysis for the prerequisites | Title and description cover measure, integration and real analysis; the page lists no chapters, so each defined item is unchecked | Open Access: the page says the electronic version is legally free ([PDF](https://measure.axler.net/MIRA.pdf), dated 12 June 2026); the page states no Creative Commons license | fetched |
| [*Real Analysis for Graduate Students*](https://bass.math.uconn.edu/), version 5.0 (published 2011, updated 2024) | Richard F. Bass | Beginning graduate students preparing for a qualifying exam; prerequisites not stated on the page | "Measure and integration theory plus additional topics," per the page; chapters not read | Self-published; free download ([PDF](https://draft-r-bass-scholar.media.uconn.edu/wp-content/uploads/sites/3926/2024/12/real-analysis-for-graduate-students_version-50_accessible.pdf)); the page states no license | fetched |

## Measure theory and measure-theoretic probability

| Resource | Author | Level and prerequisites | Measures coverage | Access and license | Status |
| --- | --- | --- | --- | --- | --- |
| [*A Basic Course in Measure and Probability: Theory for Applications*](https://www.cambridge.org/core/books/basic-course-in-measure-and-probability/3F3685364866934959D87834DFA04142) | Leadbetter, Cambanis and Pipiras | Advanced undergraduate to master's; aimed at statisticians and applications | Lebesgue integration and limit theorems, per the publisher; rest unchecked | Cambridge University Press; not free (library access) | search only |
| [*High-Dimensional Probability: An Introduction with Applications in Data Science*](https://www.math.uci.edu/~rvershyn/papers/HDP-book/HDP-2.pdf), 2nd ed. (2026) | Roman Vershynin | Master's and doctoral; probability at the master's level, undergraduate linear algebra, basic metric, normed and Hilbert spaces; measure theory not required | None: it uses measure-theoretic probability without developing it | Free download, "always free"; the page states no license | fetched |
| [*Probability: Theory and Examples*](https://services.math.duke.edu/~rtd/PTE/pte.html), 5th ed., version 5 | Rick Durrett | Graduate; the page states no prerequisites | Chapter 1 "Measure Theory": probability spaces, distributions, random variables, integration, properties of the integral, expected value, product measures and Fubini's theorem. Appendix: Carathéodory's extension, measurable sets, Kolmogorov extension, Radon-Nikodym. $L^p$ appears only as "Doob's inequality, $L^p$ convergence" | The page lists the contents only; it states no license or download terms in the text read | fetched |

No free, author-hosted measure theory text aimed at statistics or machine learning came up in the search.
Three texts read in the second pass reach measure and integration.
Axler's and Bass's pages say the electronic version is free.
Durrett's page lists the contents and states no download terms,
so it is not shown to be free.

## Linear algebra

| Resource | Author | Level and prerequisites | Measures coverage | Access and license | Status |
| --- | --- | --- | --- | --- | --- |
| [*Introduction to Applied Linear Algebra: Vectors, Matrices, and Least Squares*](https://web.stanford.edu/~boyd/vmls/) | Stephen Boyd and Lieven Vandenberghe | Undergraduate; textbook for Stanford ENGR108 and UCLA EE133A; the page states no prerequisites | None: applied linear algebra | Free book download on the authors' page; the page says Cambridge University Press holds the copyright and agreed to keep the book on the web | fetched |
| *Linear Algebra Done Wrong* | Sergei Treil | Undergraduate; proof-based | unchecked | Free on the author's page at Brown University | unchanged |
| [*Linear Algebra*](https://hefferon.net/linearalgebra/index.html) | Jim Hefferon | First undergraduate course; prerequisite one semester of calculus; the page says it proves all results and builds mathematical maturity | None: linear systems, vector spaces, linear maps, determinants, eigenvalues | Free, including the LaTeX source, through OpenIntro with the price slider at 0; the page links a "License and source" page that returned 404, so the license is unconfirmed (the earlier GFDL or CC BY-SA report is unchecked) | fetched |

Strang's *Linear Algebra and Learning from Data* is the data science book of the Strang books, and it is not free.

## Calculus, vector calculus and the whole prerequisite stack

| Resource | Author | Level and prerequisites | Measures coverage | Access and license | Status |
| --- | --- | --- | --- | --- | --- |
| [*Mathematics for Machine Learning*](https://mml-book.com/) | Deisenroth, Faisal and Ong | The page says it supplies the mathematical skills for reading machine learning books; prerequisites not stated. Chapters: linear algebra, analytic geometry, matrix decompositions, vector calculus, probability and distribution, continuous optimization, then four machine learning problems | None: the probability chapter title shows no measure theory | Copyright 2020 by the authors, published by Cambridge University Press; the authors say they "will keep PDFs of this book freely available." The page does not state a personal-use or no-redistribution term, so the first pass's wording was not confirmed | fetched |
| [*Patterns, Predictions, and Actions*](https://mlstory.org/) | Moritz Hardt and Benjamin Recht | Machine learning text with a "Mathematical background" chapter; prerequisites not stated on the page | None: no measure theory chapter in the contents | Free web text and full preprint PDF; the page states the text is CC BY-NC-ND 4.0 | fetched |

## Optimization

| Resource | Author | Level and prerequisites | Measures coverage | Access and license | Status |
| --- | --- | --- | --- | --- | --- |
| [*Convex Optimization*](https://web.stanford.edu/~boyd/cvxbook/) | Stephen Boyd and Lieven Vandenberghe | The page states no level; it points to a Stanford and a UCLA course | None indicated | Free book download; the page says Cambridge University Press holds the copyright and allowed the web copy | fetched |
| [*Convex Optimization: Algorithms and Complexity*](https://arxiv.org/abs/1405.4980) (Foundations and Trends in Machine Learning 8(3-4), 2015) | Sébastien Bubeck | Monograph; the abstract states no prerequisites | None: black-box and structural optimization, stochastic optimization | Free on arXiv (v2, 16 Nov 2015); the page links the arXiv non-exclusive distribution license | fetched |

The search found no free optimization-for-machine-learning lecture notes.

## Probability

| Resource | Author | Level and prerequisites | Measures coverage | Access and license | Status |
| --- | --- | --- | --- | --- | --- |
| [*Introduction to Probability for Data Science*](https://probability4datascience.com/), 2nd ed. (Michigan Publishing, 2026) | Stanley H. Chan | The page calls it a free undergraduate textbook; the eBook opens with a chapter of mathematical background | None indicated: the eBook lists set theory, probability space, axioms, random variables, joint distributions, sample statistics, regression, estimation and hypothesis testing, with no $\sigma$-algebra or measure section | The author says the book is free for everyone and links a free PDF and an HTML edition; the page states no license, so read the copyright page of the PDF first | fetched |
| Blitzstein and Hwang, *Introduction to Probability* ([probabilitybook.net](https://www.probabilitybook.net/)) | Joseph Blitzstein and Jessica Hwang | unchecked | unchecked | The page redirects to a Google Drive file titled "Blitzstein Hwang Probability.pdf" behind a sign-in screen, so it states no terms | not read |
| *Probability for Data Science* | Ani Adhikari and Jim Pitman (Berkeley Data 140) | Undergraduate | unchecked | Free online; CC BY-NC-ND 4.0, as reported by search | search only |
| *Essential Probability Theory for Data Science* (DSCI 500B) | Kuter | Course text | unchecked | Free on LibreTexts | search only |
| [*Foundations of Data Science*](https://www.cs.cornell.edu/jeh/book.pdf) (draft dated 4 Jan 2018) | Avrim Blum, John Hopcroft and Ravindran Kannan | Graduate-level topics; the PDF states no prerequisites | None in the contents lines read: introduction, high-dimensional space, random walks and Markov chains, machine learning, clustering, random graphs, other topics, appendix | The PDF carries "Copyright 2015. All rights reserved," so the free copy is the authors' posting, not an open license | fetched |

## Statistics

| Resource | Author | Level and prerequisites | Measures coverage | Access and license | Status |
| --- | --- | --- | --- | --- | --- |
| [*Learning Theory from First Principles*](https://www.di.ens.fr/~fbach/ltfp_book.pdf) (draft dated 26 May 2025) | Francis Bach | Graduate; the preface names algebra, probability theory and differential calculus | None: chapter 1 is mathematical preliminaries, including concentration inequalities; the 15 chapters run from supervised learning to lower bounds | The PDF says copyright is licensed exclusively to the MIT Press, which will release the final version, and it states no license for the free copy | fetched |
| *All of Statistics* | Larry Wasserman | Master's | unchecked | No free official copy found; Springer library access only. Avoid the unauthorized copies that search returns | search only |

## Information theory

| Resource | Author | Level and prerequisites | Measures coverage | Access and license | Status |
| --- | --- | --- | --- | --- | --- |
| [*Information Theory, Inference, and Learning Algorithms*](https://www.inference.org.uk/itila/book.html) | David J. C. MacKay | Undergraduate to master's; the page states no prerequisites (the contents are on a separate page, not read) | unchecked | The page says the files "will remain viewable" and links PDF copies at Toronto and AIMS. The book is copyright Cambridge University Press, "the same copyright rules will apply to the online copy as … to normal books," and copying the whole book onto paper is not permitted. The page was last modified in 2014 | fetched |
| [*Information Theory: From Coding to Learning*](https://people.lids.mit.edu/yp/homepage/data/itbook-export.pdf) (prepublication PDF, 16 Aug 2024, front matter read) | Yury Polyanskiy and Yihong Wu | Advanced undergraduate and graduate, per the front matter | None indicated: six parts on information measures, data compression, hypothesis testing and large deviations, channel coding, rate-distortion and metric entropy, and statistical applications | The PDF front matter says the prepublication version is free to view and download for personal use only, not for redistribution, resale or use in derivative works. Only the front matter of the PDF was read, and the author's MIT homepage links no book page | fetched |

## Already in the project library

The lab's private library holds copies of
Billingsley, *Probability and Measure* (3rd ed.);
Gut, *Probability: A Graduate Course* (2nd ed.);
Grinstead and Snell, *Introduction to Probability*;
Cover and Thomas, *Elements of Information Theory* (2nd ed.);
Wasserman, *All of Statistics*;
Casella and Berger, *Statistical Inference* (2nd ed.);
Denton and Waldron, *Linear Algebra in Twenty-Five Lectures*;
and Tao's author preliminary version of *An Introduction to Measure Theory*.
Only the file names were read, not the texts.
The library is private,
so each needs a public link and a license check before it appears on a page.

## Named but not yet checked

- Wasserman's intermediate statistics lecture notes (Carnegie Mellon).

## Pages that failed to load, by pass

- `https://www.probabilitybook.net/` redirects to a Google Drive sign-in.
- Sergei Treil's *Linear Algebra Done Wrong*: the Brown URLs tried did not resolve, so the page is still unread.
- Polyanskiy and Wu: no book page was reached, so the row rests on the PDF front matter.
- The first pass could not resolve several author hosts,
  such as `measure.axler.net`, `www.jirka.org` and `mml-book.com`.
  All of them were read in the second pass.
