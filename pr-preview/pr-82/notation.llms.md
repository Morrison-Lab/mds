# Notation

Code

Published

Last modified: 2026-10-04 12:52:04 (PDT)

Mathematical notation is not standardized. This section states the conventions these notes use, and the alternatives you may meet in other sources.

| symbol | meaning | LaTeX |
|----|----|----|
| \\\neg\\ | not | `\neg` |
| \\\forall\\ | all | `\forall` |
| \\\exists\\ | some | `\exists` |
| \\\cup\\ | union, “or” | `\cup` |
| \\\cap\\ | intersection, “and” | `\cap` |
| \\\mid\\ | given, conditional on | `\mid`, `|` |
| \\\sum\\ | [sum](algebra.llms.md#sec-summation) | `\sum` |
| \\\prod\\ | product | `\prod` |
| \\\mu\\ | mean | `\mu` |
| \\\operatorname{E}\\ | [expectation](https://morrison-lab.github.io/pds/expectation.html#def-expectation) | `\mathbb{E}` |
| \\x^{\top}\\ | transpose of \\x\\ | `x^{\top}` |
| \\'\\ | transpose or derivative[^1] | `'` |
| \\\perp\\\\\\\perp\\ | [independent](https://morrison-lab.github.io/pds/independence.html#def-indpt) | `\perp\!\!\!\perp` |
| \\\therefore\\ | therefore, thus | `\therefore` |
| \\\eta\\ | [linear component of a GLM](https://en.wikipedia.org/wiki/Generalized_linear_model#:~:text=The%20linear%20predictor%20is%20the,data%20through%20the%20link%20function "linear predictor notation") | `\eta` |
| \\\mathopen{}\left\lfloor x\right\rfloor\mathclose{}\\ | floor of \\x\\: largest integer less than or equal to \\x\\ | `\lfloor x \rfloor` |
| \\\mathopen{}\left\lceil x\right\rceil\mathclose{}\\ | ceiling of \\x\\: smallest integer greater than or equal to \\x\\ | `\lceil x \rceil` |
| \\\mathbb{1}\_{A}(x)\\, \\\mathbb{1}\mathopen{}\left(P\right)\mathclose{}\\ | indicator function ([Section 5](#sec-indicator-functions)): \\1\\ if condition holds, \\0\\ otherwise | `\indic{A}(x)`, `\indicp{P}` |

Table 1: Notation used in this book

## 1 Writing math in Quarto

The third column of [Table 1](#tbl-notation-collected) gives the LaTeX command for each symbol. Quarto and R Markdown documents write math in LaTeX syntax: put inline math between single dollar signs, as in `$x^2$`, and displayed equations between double dollar signs, as in `$$x^2$$`. The [equations section of Quarto’s Markdown guide](https://quarto.org/docs/authoring/markdown-basics.html#equations) shows the details. These notes also use shorthand macros, such as `\floor{x}` for \\\mathopen{}\left\lfloor x\right\rfloor\mathclose{}\\, defined in the `latex-macros` submodule’s `macros.qmd`.

## 2 Natural numbers

> **NOTE:**
>
> **Exercise 1 (Which numbers are natural?)** List the elements of the set \\\mathopen{}\left\\n \in \mathbb{N} : n \< 3\right\\\mathclose{}\\. Is your answer the same in every textbook?

> **NOTE:**
>
> *Solution 1*. The answer depends on whether the source counts \\0\\ as a natural number:
>
> - if \\\mathbb{N}\\ starts at \\0\\, the set is \\\mathopen{}\left\\0, 1, 2\right\\\mathclose{}\\;
> - if \\\mathbb{N}\\ starts at \\1\\, the set is \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\.
>
> Both conventions are in common use, so the answer is not the same in every textbook.

> **NOTE:**
>
> **Definition 1 (Natural numbers (our convention))** In these notes, the **natural numbers** are the positive integers:
>
> \\\mathbb{N} \stackrel{\text{def}}{=}\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\

> **NOTE:**
>
> **Definition 2 (Non-negative integers)** The **non-negative integers** are the natural numbers ([Definition 1](#def-natural-numbers)) together with \\0\\:
>
> \\\mathbb{N}\_0 \stackrel{\text{def}}{=}\mathopen{}\left\\0, 1, 2, 3, \ldots\right\\\mathclose{} = \mathbb{N} \cup \mathopen{}\left\\0\right\\\mathclose{}\\

> **NOTE:**
>
> **Example 1 (Natural numbers in a data analysis)**  
>
> - Observation indices start at \\1\\, so we write \\i \in \mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ with \\n \in \mathbb{N}\\.
> - A count outcome, such as the number of hospital visits in a year, can be \\0\\, so its support is \\\mathbb{N}\_0\\, not \\\mathbb{N}\\.

> **NOTE:**
>
> Other sources may define \\\mathbb{N}\\ differently, so check each source’s definition before reading its formulas:
>
> - Many sources include \\0\\ in \\\mathbb{N}\\. The international standard ISO 80000-2 defines \\\mathbb{N}\\ to include \\0\\, continuing the earlier standard ISO 31-11 (1978).
> - Other sources start \\\mathbb{N}\\ at \\1\\, as these notes do.
> - To remove the ambiguity, some sources write \\\mathbb{N}\_1\\ or \\\mathbb{Z}^+\\ for \\\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\, and \\\mathbb{N}\_0\\ or \\\mathbb{Z}^{0+}\\ for \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\.
> - The words vary too. “Positive integers” (\\\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\) and “non-negative integers” (\\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\) are unambiguous. “Whole numbers” usually includes \\0\\, but can also mean all of the integers, negative ones included. “Counting numbers” usually starts at \\1\\, but some sources include \\0\\.
> - Some older texts write \\J\\ for the natural numbers.
>
> When a formula’s meaning depends on whether \\0\\ is included, we write the set out explicitly, for example \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\ or \\\mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\.
>
> Source: [Wikipedia, “Natural number”, “Terminology and notation” and “Zero as natural number”](https://en.wikipedia.org/w/index.php?title=Natural_number&oldid=1375965996), which cites ISO 80000-2:2019 and the textbooks using each notation.

## 3 Percent sign (“%”)

The percent sign “%” is just a shorthand for “\\/100\\”. The word “percent” comes from the Latin “per centum”; “centum” is Latin for 100, so “percent” means “per hundred” (cf. <https://en.wikipedia.org/wiki/Percentage>)

So, contrary to what you may have learned previously, \\10\\ = 0.1\\ is a true and correct equality, just as \\10 \text{kg} = 10,000 \text{g}\\ is true and correct.

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} 10\\ &= 10 / 100 \\ &= \frac{10}{100} \\ &= 0.1 \end{aligned} \\

You are welcome to switch between decimal and percent notation freely; just make sure you execute it correctly.

## 4 Proofs

We can use any of:

- \\\therefore\\ (`\therefore` in LaTeX),
- \\\Rightarrow\\ (`\Rightarrow`),
- \\\models\\ (`\models`)

to denote logical entailments (deductive consequences).

Let’s save \\\rightarrow\\ (`\rightarrow`) for convergence results.

## 5 Indicator functions

An **indicator function** is a mathematical function that signals whether an element belongs to a specified set, or whether a given logical condition is satisfied. In statistics and epidemiology, indicator functions are ubiquitous: they represent binary variables, censor and event indicators in survival analysis, membership in subpopulations, and domain restrictions in integrals and sums.

Despite their conceptual simplicity, notation for indicator functions varies substantially across textbooks, research papers, and subfields. This section summarizes the principal notational conventions.

> **NOTE:**
>
> **Definition 3 (Indicator function)** For any subset \\A \subseteq \Omega\\ of a universal set \\\Omega\\, the **indicator function** of \\A\\ is the function \\\mathbb{1}\_{A} : \Omega \to \\0, 1\\\\ defined by:
>
> \\ \mathbb{1}\_{A}(x) \stackrel{\text{def}}{=}\begin{cases} 1, & x \in A \\ 0, & x \notin A \end{cases} \\
>
> More generally, for any logical proposition or predicate \\P\\, the **indicator** of \\P\\ takes the value \\1\\ when \\P\\ is true and \\0\\ when \\P\\ is false:
>
> \\ \mathbb{1}\mathopen{}\left(P\right)\mathclose{} \stackrel{\text{def}}{=}\begin{cases} 1, & \text{if } P \text{ is true} \\ 0, & \text{if } P \text{ is false} \end{cases} \\

> **NOTE:**
>
> **Example 2 (Evaluating set and predicate indicators)** Consider the real line \\\Omega = \mathbb{R}\\, the set of nonnegative numbers \\A = \[0, \infty)\\, and a continuous [random variable](https://morrison-lab.github.io/pds/random-variables.html#def-random-variable) \\Y\\.
>
> 1.  **Set indicator** \\\mathbb{1}\_{A}(x)\\:
>     - For \\x = 3.5\\: since \\3.5 \in \[0, \infty)\\, \\\mathbb{1}\_{A}(3.5) = 1\\.
>     - For \\x = -2.1\\: since \\-2.1 \notin \[0, \infty)\\, \\\mathbb{1}\_{A}(-2.1) = 0\\.
> 2.  **Predicate indicator** \\\mathbb{1}\mathopen{}\left(Y \> 5\right)\mathclose{}\\:
>     - If an observation yields \\Y = 7.2\\, the predicate \\7.2 \> 5\\ is true, so \\\mathbb{1}\mathopen{}\left(7.2 \> 5\right)\mathclose{} = 1\\.
>     - If an observation yields \\Y = 4.1\\, the predicate \\4.1 \> 5\\ is false, so \\\mathbb{1}\mathopen{}\left(4.1 \> 5\right)\mathclose{} = 0\\.

### 5.1 Two primary notational paradigms: set vs. predicate notation

The vast majority of indicator notations belong to one of two families: **set notation** or **predicate notation**.

#### Set notation

In **set notation**, the indicator is tied to a set \\A\\, which appears as a subscript:

- \\\mathbf{1}\_A(x)\\ (bold numeral one)
- \\\mathbb{1}\_A(x)\\ (blackboard bold numeral one)
- \\I_A(x)\\ (capital letter \\I\\)
- \\\mathbb{I}\_A(x)\\ (blackboard bold letter \\I\\)
- \\\chi_A(x)\\ (Greek letter chi, historically termed the *characteristic function*)

When the function is viewed as a mathematical object in its own right (for instance, as an element of an \\L^p\\ function space), authors often omit the argument \\x\\, writing simply \\\mathbf{1}\_A\\, \\\mathbb{1}\_A\\, or \\I_A\\.

#### Predicate notation

In **predicate notation**, the indicator takes a logical condition, relation, or proposition \\P\\ directly as its argument or subscript:

- \\\mathbb{I}(x \in A)\\ or \\\mathbb{I}(P)\\
- \\\mathbf{1}(x \in A)\\ or \\\mathbf{1}(P)\\
- \\\mathbb{1}(x \in A)\\ or \\\mathbb{1}(P)\\
- \\\mathbb{1}\\x \in A\\\\ or \\\mathbb{1}\\P\\\\
- \\I(x \in A)\\ or \\I(P)\\

Predicate notation is especially common in applied statistics and survival analysis, where indicators frequently depend on inequalities involving random variables, such as \\\mathbb{1}\mathopen{}\left(T_i \le t\right)\mathclose{}\\ (an event occurring before time \\t\\) or \\\mathbb{1}\mathopen{}\left(Y_i = 1\right)\mathclose{}\\ (a binary outcome).

#### Equivalence between paradigms

The two paradigms are connected by evaluating the predicate indicator at the membership statement \\x \in A\\:

\\ \mathbf{1}\_A(x) = \mathbb{I}(x \in A) \\

Set notation is more natural when the underlying set \\A\\ has a standard name (such as the support of a distribution or a geometric region). Predicate notation is more natural when the condition involves compound inequalities, such as \\\mathbb{1}\mathopen{}\left(0 \le t \le u\right)\mathclose{}\\.

### 5.2 Iverson bracket notation

In 1962, Kenneth Iverson introduced a compact notation in the programming language APL, later popularized in mathematics and computer science by Donald Knuth: the [Iverson bracket](https://en.wikipedia.org/wiki/Iverson_bracket).

> **NOTE:**
>
> **Definition 4 (Iverson bracket)** For any logical proposition \\P\\, the **Iverson bracket** of \\P\\ is
>
> \\ \[P\] \stackrel{\text{def}}{=}\begin{cases} 1, & \text{if } P \text{ is true} \\ 0, & \text{if } P \text{ is false} \end{cases} \\

> **NOTE:**
>
> **Example 3 (Evaluating Iverson brackets)**  
>
> - \\\[3 \> 2\] = 1\\, because \\3 \> 2\\ is true.
> - \\\[2 \> 3\] = 0\\, because \\2 \> 3\\ is false.
> - \\\[4 \in \mathopen{}\left\\1, 2\right\\\mathclose{}\] = 0\\, because \\4\\ is not an element of \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\.

> **NOTE:**
>
> *Remark 1* (The Iverson bracket is the predicate indicator). The Iverson bracket \\\[P\]\\ is the predicate indicator \\\mathbb{1}\mathopen{}\left(P\right)\mathclose{}\\ ([Definition 3](#def-indicator-function)) in different notation. Under this notation, set membership is written \\\[x \in A\]\\, so \\\[x \in A\] = \mathbb{1}\_{A}(x)\\. For example, the values in [Example 2](#exm-indicator-numerical) become \\\[7.2 \> 5\] = \mathbb{1}\mathopen{}\left(7.2 \> 5\right)\mathclose{} = 1\\ and, with \\A = \[0, \infty)\\, \\\[-2.1 \in A\] = \mathbb{1}\_{A}(-2.1) = 0\\.

> **NOTE:**
>
> **Definition 5 (Kronecker delta)** For integers \\i\\ and \\j\\, the **Kronecker delta** is
>
> \\\delta\_{ij} \stackrel{\text{def}}{=}\[i = j\]\\
>
> that is, \\\delta\_{ij} = 1\\ when \\i = j\\ and \\\delta\_{ij} = 0\\ when \\i \neq j\\ ([Definition 4](#def-iverson-bracket)).

> **NOTE:**
>
> **Example 4 (Evaluating the Kronecker delta)**  
>
> - \\\delta\_{11} = \[1 = 1\] = 1\\.
> - \\\delta\_{12} = \[1 = 2\] = 0\\.
> - \\\delta\_{22} = \[2 = 2\] = 1\\.
> - \\\delta\_{23} = \[2 = 3\] = 0\\.

### 5.3 Strengths and limitations of the Iverson bracket

The primary advantage of the Iverson bracket is algebraic conciseness: it turns a sum or integral over a subset into a sum or integral over a larger, fixed set. For example, if \\U\\ is a finite set that contains \\A\\, then:

\\ \sum\_{x \in A} f(x) = \sum\_{x \in U} f(x) \[x \in A\] \\

With \\A = \mathopen{}\left\\2, 4\right\\\mathclose{}\\, \\f(x) = x\\, and \\U = \mathopen{}\left\\1, 2, 3, 4, 5\right\\\mathclose{}\\, both sides equal \\2 + 4 = 6\\.

However, in statistics and epidemiology, square brackets are already heavily overloaded: they denote closed intervals \\\[a, b\]\\, conditional expectations \\\operatorname{E}\[Y \mid X\]\\, and matrix delimiters. To prevent visual confusion with expectation brackets or intervals, statistical literature predominantly uses \\\mathbb{1}\\ or \\I\\ rather than the bare Iverson bracket.

### 5.4 Summary of indicator notations

[Table 2](#tbl-indicator-notations) compares the major notations encountered across the literature.

| Notation style | Typical syntax | Primary fields | Notes and potential ambiguities |
|:---|:---|:---|:---|
| **Blackboard bold 1** | \\\mathbb{1}\_A(x)\\, \\\mathbb{1}(P)\\ | Modern probability, mathematical statistics | Unambiguous; distinct from matrices and scalars; standard in this book. |
| **Bold numeral 1** | \\\mathbf{1}\_A(x)\\, \\\mathbf{1}(P)\\ | Probability theory, measure theory | Can be confused with a vector of ones \\\mathbf{1} = (1, \dots, 1)^{\top}\\. |
| **Blackboard bold I** | \\\mathbb{I}(x \in A)\\, \\\mathbb{I}(P)\\ | Econometrics, machine learning, statistics | Clear predicate notation; avoids confusion with numerals. |
| **Letter \\I\\** | \\I_A(x)\\, \\I(P)\\ | Classical statistics, epidemiology | Can be confused with the identity matrix \\I\\ or Fisher information \\\mathcal{I}\\. |
| **Iverson bracket** | \\\[P\]\\, \\\[x \in A\]\\ | Computer science, discrete mathematics | Very compact, but square brackets collide with intervals and expectation brackets. |
| **Greek letter \\\chi\\** | \\\chi_A(x)\\ | Real analysis, measure theory | Often termed “characteristic function”; collides with the Fourier transform in probability. |

Table 2: Notations for indicator functions across mathematical and statistical literature

### 5.5 Conventions in this book

In these notes, we standardize on blackboard bold \\\mathbb{1}\\ via the macros defined in `latex-macros/macros.qmd`:

- `\indic{A}` produces \\\mathbb{1}\_{A}\\ (set subscript)
- `\indicp{P}` produces \\\mathbb{1}\mathopen{}\left(P\right)\mathclose{}\\ (predicate in parentheses)
- `\indiccb{P}` produces \\\mathbb{1}\mathopen{}\left\\P\right\\\mathclose{}\\ (predicate in curly braces)
- `\1{P}` produces \\\text{1}\_{P}\\ (text numeral with subscript, used in legacy formulas)

Blackboard bold \\\mathbb{1}\\ is preferred because it avoids all common collisions: it is visually distinct from the scalar \\1\\, the identity matrix \\I\\, and the information matrices (\\I\\, \\\mathcal{I}\\).

### 5.6 Key algebraic properties

Indicator functions translate logical operations on events into ordinary arithmetic on real numbers:

For subsets \\A\\ and \\B\\ of \\\Omega\\, with complement \\A^c \stackrel{\text{def}}{=}\Omega \setminus A\\, and for every \\x \in \Omega\\:

- **Intersection (“and”):** \\\mathbb{1}\_{A \cap B}(x) = \mathbb{1}\_{A}(x) \cdot \mathbb{1}\_{B}(x)\\

- **Union (“or”):** \\\mathbb{1}\_{A \cup B}(x) = \mathbb{1}\_{A}(x) + \mathbb{1}\_{B}(x) - \mathbb{1}\_{A}(x) \cdot \mathbb{1}\_{B}(x)\\

- **Complement (“not”):** \\\mathbb{1}\_{A^c}(x) = 1 - \mathbb{1}\_{A}(x)\\

- **Idempotence:** \\(\mathbb{1}\_{A}(x))^2 = \mathbb{1}\_{A}(x)\\

- **Expectation gives probability:** For any event \\A\\, the [expectation](https://morrison-lab.github.io/pds/expectation.html#def-expectation) of its indicator is the probability of the event:

  \\ \operatorname{E}\[\mathbb{1}\_{A}\] = 0 \cdot \Pr(A^c) + 1 \cdot \Pr(A) = \Pr(A) \\

This fundamental identity connects probability theory directly to linear expectation. It provides the mathematical foundation for empirical proportions, survival curve estimators, and regression models for binary outcomes.

## 6 Notational shorthands

> **NOTE:**
>
> **Definition 6 (Notational shorthand)** A **notational shorthand** is a way of writing an expression that leaves part of the expression out, such as the set a sum runs over or the limits of an integral, and relies on the reader to supply the missing part from context. The expression with every part written out is its **full form**.

> **NOTE:**
>
> In these notes, we avoid notational shorthands in permanent writing and write the full form of each expression, even where a shorthand would be shorter. A reader who supplies the missing part of a shorthand from a different context than the writer intended reads a different expression than the one the writer meant. Handwritten board work is often less complete, but it should still write out ranges and limits where it can.
>
> We make one exception: writing two factors side by side means multiplying them, as in \\2x\\ for \\2 \cdot x\\ and \\ab\\ for \\a \cdot b\\. We still write the multiplication sign when the side-by-side form could be misread:
>
> - \\2 \cdot 3\\, not \\23\\, which reads as twenty-three;
> - \\a \cdot(b + c)\\ when \\a\\ could be a function, since \\a(b + c)\\ could mean \\a\\ evaluated at \\b + c\\.

> **NOTE:**
>
> **Definition 7 (Range of a variable)** The **range** of a variable \\x\\, written \\\mathcal{R}(x)\\, is the set of values that \\x\\ can take.

For example, if \\x\\ is the number of heads in two tosses of a coin, then \\\mathcal{R}(x) = \mathopen{}\left\\0, 1, 2\right\\\mathclose{}\\. A [random variable](https://morrison-lab.github.io/pds/random-variables.html#def-random-variable) \\X\\ is a [function](sets-functions.llms.md#def-function), and the set of values \\X\\ can take, \\\mathcal{R}(X)\\, is the [image](sets-functions.llms.md#def-image) of \\X\\. These notes use “range” only for variables: for a function, “range” can mean either the image or the codomain ([Image and range](sets-functions.llms.md#rem-image-range)). In statistics, “the range” of a dataset can also mean its largest value minus its smallest value; \\\mathcal{R}(x)\\ is a set, not that difference.

[Table 3](#tbl-notational-shorthands) lists shorthands you may meet in other sources, the full form each one abbreviates, and the part each one leaves out. In the table, \\x_1, \ldots, x_n\\ and \\a_1, \ldots, a_n\\ are \\n\\ numbers, \\b\_{ij}\\ is the entry in row \\i\\ and column \\j\\ of an \\m \times n\\ array, \\k\\ is an integer with \\1 \le k \le n\\, \\f\\ is a [function](sets-functions.llms.md#def-function) from \\\mathbb{R}\\ to \\\mathbb{R}\\, and, in the first row, \\\mathcal{R}(x)\\ is a finite set.

| Shorthand | Full form | Part left out |
|:---|:---|:---|
| \\\sum\_{x} f(x)\\ | \\\sum\_{x \in \mathcal{R}(x)} f(x)\\ | the set the sum runs over ([sum over a finite set](algebra.llms.md#def-sum-over-set)) |
| \\\sum\_{i} x_i\\ | \\\sum\_{i=1}^{n} x_i\\ | the lower and upper limits of the index ([summation notation](algebra.llms.md#def-summation)) |
| \\\sum x_i\\ | \\\sum\_{i=1}^{n} x_i\\ | the index and its lower and upper limits |
| \\\prod\_{i} x_i\\ | \\\prod\_{i=1}^{n} x_i\\ | the lower and upper limits of the index |
| \\\prod x_i\\ | \\\prod\_{i=1}^{n} x_i\\ | the index and its lower and upper limits |
| \\\sum\_{i, j} b\_{ij}\\ | \\\sum\_{i=1}^{m} \sum\_{j=1}^{n} b\_{ij}\\ | the limits of both indices |
| \\\sum\_{i \neq k} a_i\\ | \\\sum\_{i \in \mathopen{}\left\\1, \ldots, n\right\\\mathclose{} \setminus \mathopen{}\left\\k\right\\\mathclose{}} a_i\\ | the set \\\mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ of indices that \\k\\ is removed from |
| \\\int f(x)\\dx\\, used for a number | \\\int\_{-\infty}^{\infty} f(x)\\dx\\ | the limits of integration |
| \\\int f\\ | \\\int\_{-\infty}^{\infty} f(x)\\dx\\ | the limits, the variable of integration, and the differential \\dx\\ |
| \\x\_{1:n}\\ | \\(x_1, x_2, \ldots, x_n)\\ | the explicit list of entries |
| “the function \\x^2\\” | “the function \\f : \mathbb{R}\to \mathbb{R}\\ with \\f(x) = x^2\\” | the function’s name, domain, and codomain |

Table 3: Common notational shorthands and their full forms

> **NOTE:**
>
> *Remark 2* (\\\int f(x)\\dx\\ has two readings). In calculus, \\\int f(x)\\dx\\ with no limits is not a shorthand: it is the [indefinite integral](calculus.llms.md#def-indefinite-integral) of \\f\\, a family of functions rather than a number. Some sources, especially in probability, also write \\\int f(x)\\dx\\ for the number \\\int\_{-\infty}^{\infty} f(x)\\dx\\. Writing the limits out tells the reader which of the two is meant.

> **NOTE:**
>
> **Example 5 (Writing out an index shorthand)** Let \\n = 3\\ and \\(x_1, x_2, x_3) = (2, 5, 1)\\. A source that writes \\\sum\_{i} x_i\\ means \\\sum\_{i=1}^{3} x_i\\:
>
> \\ \begin{aligned} \sum\_{i=1}^{3} x_i &= x_1 + x_2 + x_3 && \text{(definition of summation notation)} \\ &= 2 + 5 + 1 && \text{(substitute the values)} \\ &= 8 && \text{(add)} \end{aligned} \\

## 7 Why is notation in probability and statistics so inconsistent and disorganized?

In grad school, we are asked to learn from increasingly disorganized materials and lectures. Not coincidentally, as the amount of organization decreases, the amount of complexity increases, the amount of difficulty increases, the number of reliable references decreases, and the amount of inconsistency in notation and content increases (both between multiple references and within single references!). In other words, as you approach the cutting-edge of most fields, you start to run into content that hasn’t been fully thought through or standardized. This lack of clarity is unfortunate and undesirable, but it is understandable and inevitable.

It’s worth noting that calculus was formalized in the [1600s](https://en.wikipedia.org/wiki/Leibniz%27s_notation), elementary algebra was formalized around [820](https://en.wikipedia.org/wiki/Al-Jabr), and arithmetic [even earlier](https://en.wikipedia.org/wiki/Arithmetic#History). And calculus still has [several competing notation systems](https://en.wikipedia.org/wiki/Notation_for_differentiation). In contrast, the field of statistics only emerged in the [late 1800s and early 1900s](https://en.wikipedia.org/wiki/History_of_statistics#Development_of_modern_statistics), so it’s not surprising that the notation and terminology is still developing. Generalized linear models were only formalized in 1972 ([Nelder and Wedderburn 1972](#ref-nelder1972generalized)), which is very recent in terms of the [pace of scientific development](https://en.wikipedia.org/wiki/The_Structure_of_Scientific_Revolutions).

## 8 Further reading

For the logical symbols and proof conventions used in these notes:

- Velleman ([2019](#ref-velleman2019prove)) explains how mathematical statements are built from logical connectives and quantifiers, and how to read and write them.
- Barker-Plummer et al. ([2011](#ref-barkerplummer2011language)) covers the same symbols as a formal language, with propositional and first-order logic.

For set and function notation, see the [Sets and Functions](sets-functions.llms.md) page.

## References

Barker-Plummer, Dave, Jon Barwise, and John Etchemendy. 2011. *Language, Proof and Logic*. 2nd ed. CSLI Publications. <https://www.amazon.com/dp/1575866323>.

Nelder, John Ashworth, and Robert WM Wedderburn. 1972. “Generalized Linear Models.” *Journal of the Royal Statistical Society Series A: Statistics in Society* 135 (3): 370–84. <https://doi.org/10.2307/2344614>.

Velleman, Daniel J. 2019. *How to Prove It: A Structured Approach*. 3rd ed. Cambridge University Press. <https://doi.org/10.1017/9781108539890>.

Back to top

## Footnotes

[^1]: depending on whether it is applied to a matrix or a function
