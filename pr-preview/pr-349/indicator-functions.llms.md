# Indicator Functions

Code

Published

Last modified: 2026-10-17 02:44:23 (PDT)

## 1 Indicator functions

An **indicator function** is a mathematical function that signals whether an element belongs to a specified set, or whether a given logical condition is satisfied. In statistics and epidemiology, indicator functions are ubiquitous. They represent:

- binary variables, which take only the values \\0\\ and \\1\\ ([Definition 3](#def-binary-variable));
- event and censoring indicators in survival analysis, the study of the time until an event such as death, where an observation is censored when follow-up ends before its event is seen;
- membership in subpopulations;
- domain restrictions in integrals and sums.

Despite their conceptual simplicity, notation for indicator functions varies substantially across textbooks, research papers, and subfields. This section summarizes the principal notational conventions.

> **NOTE:**
>
> **Definition 1 (Indicator function (set indicator))** For any subset \\A \subseteq \Omega\\ of a universal set \\\Omega\\, the **indicator function** of \\A\\, or **set indicator**, is the function \\\mathbb{1}\_{A} : \Omega\to \\0, 1\\\\ defined by:
>
> \\ \mathbb{1}\_{A}(x) \stackrel{\text{def}}{=}\begin{cases} 1, & x \in A \\ 0, & x \notin A \end{cases} \\

> **NOTE:**
>
> **Definition 2 (Predicate indicator)** For any logical proposition or predicate \\P\\, the **indicator** of \\P\\, or **predicate indicator**, takes the value \\1\\ when \\P\\ is true and \\0\\ when \\P\\ is false:
>
> \\ \mathbb{1}\mathopen{}\left(P\right)\mathclose{} \stackrel{\text{def}}{=}\begin{cases} 1, & \text{if } P \text{ is true} \\ 0, & \text{if } P \text{ is false} \end{cases} \\

> **NOTE:**
>
> **Example 1 (Evaluating set and predicate indicators)** Consider the real line \\\Omega= \mathbb{R}\\, the set of nonnegative numbers \\A = \[0, \infty)\\, and a continuous [random variable](https://morrison-lab.github.io/pds/random-variables.html#def-random-variable) \\Y\\ (defined in the Morrison Lab’s probability notes).
>
> 1.  Set indicator \\\mathbb{1}\_{A}(x)\\:
>     - For \\x = 3.5\\: since \\3.5 \in \[0, \infty)\\, \\\mathbb{1}\_{A}(3.5) = 1\\.
>     - For \\x = -2.1\\: since \\-2.1 \notin \[0, \infty)\\, \\\mathbb{1}\_{A}(-2.1) = 0\\.
> 2.  Predicate indicator \\\mathbb{1}\mathopen{}\left(Y \> 5\right)\mathclose{}\\:
>     - If an observation yields \\Y = 7.2\\, the predicate \\7.2 \> 5\\ is true, so \\\mathbb{1}\mathopen{}\left(7.2 \> 5\right)\mathclose{} = 1\\.
>     - If an observation yields \\Y = 4.1\\, the predicate \\4.1 \> 5\\ is false, so \\\mathbb{1}\mathopen{}\left(4.1 \> 5\right)\mathclose{} = 0\\.

> **NOTE:**
>
> **Definition 3 (Binary variable)** A **binary variable** is a variable that takes only the values \\0\\ and \\1\\.

> **NOTE:**
>
> **Example 2 (A binary variable is an indicator)** In a study of \\n\\ people, let \\s_i = 1\\ if person \\i\\ smokes and \\s_i = 0\\ otherwise, for \\i \in \mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\. Then \\s_i\\ is a binary variable ([Definition 3](#def-binary-variable)). It is also the predicate indicator ([Definition 1](#def-indicator-function)) of the proposition “person \\i\\ smokes”: \\s_i = \mathbb{1}\mathopen{}\left(\text{person } i \text{ smokes}\right)\mathclose{}\\.
>
> In the same way, every indicator is a binary variable, and every binary variable \\X\\ is the indicator of its own value being \\1\\: \\X = \mathbb{1}\mathopen{}\left(X = 1\right)\mathclose{}\\, since both sides are \\1\\ when \\X = 1\\ and \\0\\ when \\X = 0\\.

### 1.1 Two primary notational paradigms: set vs. predicate notation

The vast majority of indicator notations belong to one of two families: set notation or predicate notation.

> **NOTE:**
>
> **Definition 4 (Set notation for indicators)** An indicator ([Definition 1](#def-indicator-function)) is written in **set notation** when the set \\A\\ appears as a subscript, as in \\\mathbb{1}\_{A}(x)\\.

> **NOTE:**
>
> **Definition 5 (Predicate notation for indicators)** An indicator ([Definition 1](#def-indicator-function)) is written in **predicate notation** when a proposition or predicate \\P\\ ([definition](proof-writing.llms.md#def-predicate)) appears as its argument, as in \\\mathbb{1}\mathopen{}\left(P\right)\mathclose{}\\ or \\\mathbb{1}\mathopen{}\left(x \in A\right)\mathclose{}\\.

> **NOTE:**
>
> **Example 3 (One indicator in both notations)** Let \\A = \[0, \infty)\\, the nonnegative real numbers. The indicator of \\A\\ is \\\mathbb{1}\_{A}(x)\\ in set notation, and \\\mathbb{1}\mathopen{}\left(x \in A\right)\mathclose{}\\ or \\\mathbb{1}\mathopen{}\left(x \ge 0\right)\mathclose{}\\ in predicate notation ([Definition 4](#def-set-predicate-notation), [Definition 5](#def-predicate-notation)). At \\x = 3.5\\, all three equal \\1\\; at \\x = -2.1\\, all three equal \\0\\.

#### Set notation

In set notation, the indicator is tied to a set \\A\\, which appears as a subscript:

- \\\mathbf{1}\_A(x)\\ (bold numeral one)
- \\\mathbb{1}\_{A}(x)\\ (blackboard bold numeral one)
- \\I_A(x)\\ (capital letter \\I\\)
- \\\mathbb{I}\_A(x)\\ (blackboard bold letter \\I\\)
- \\\chi_A(x)\\ (Greek letter chi, historically termed the *characteristic function*)

When the function is viewed as a mathematical object in its own right (for instance, as an element of an \\L^p\\ function space, the set of functions \\f\\ for which \\\int \mathopen{}\left\|f(x)\right\|\mathclose{}^p \\ dx\\ is finite), authors often omit the argument \\x\\, writing simply \\\mathbf{1}\_A\\, \\\mathbb{1}\_{A}\\, or \\I_A\\.

#### Predicate notation

In predicate notation, the indicator takes a logical condition, relation, or proposition \\P\\ directly as its argument or subscript:

- \\\mathbb{I}(x \in A)\\ or \\\mathbb{I}(P)\\
- \\\mathbf{1}(x \in A)\\ or \\\mathbf{1}(P)\\
- \\\mathbb{1}(x \in A)\\ or \\\mathbb{1}(P)\\
- \\\mathbb{1}\\x \in A\\\\ or \\\mathbb{1}\\P\\\\
- \\I(x \in A)\\ or \\I(P)\\

Predicate notation is especially common in applied statistics and survival analysis, where indicators frequently depend on inequalities ([definition](proof-writing.llms.md#def-inequality)) involving random variables, such as \\\mathbb{1}\mathopen{}\left(T_i \le t\right)\mathclose{}\\ (an event occurring before time \\t\\) or \\\mathbb{1}\mathopen{}\left(Y_i = 1\right)\mathclose{}\\ (a binary outcome).

#### Equivalence between paradigms

The two paradigms are connected by evaluating the predicate indicator at the membership statement \\x \in A\\:

\\ \mathbf{1}\_A(x) = \mathbb{I}(x \in A) \\

> **NOTE:**
>
> **Definition 6 (Support of a distribution)** The **support** of a discrete distribution is the set of values it gives positive probability. The support of a continuous distribution is the set of values where its density is positive.

> **NOTE:**
>
> **Example 4 (Supports of two count distributions)**  
>
> - A fair six-sided die gives each of \\1, 2, \ldots, 6\\ probability \\\tfrac{1}{6} \> 0\\ and every other value probability \\0\\, so its support is \\\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\.
> - A count that can be \\0\\, \\1\\, \\2\\, and so on, each with positive probability, such as the number of hospital visits in a year, has support \\\mathbb{N}\_0 = \mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\.

Set notation is more natural when the underlying set \\A\\ has a standard name (such as the support of a distribution ([Definition 6](#def-support)), or a geometric region). Predicate notation is more natural when the condition involves compound inequalities, such as \\\mathbb{1}\mathopen{}\left(0 \le t \le u\right)\mathclose{}\\.

### 1.2 Iverson bracket notation

In 1962, Kenneth Iverson introduced a compact notation in the programming language APL, later popularized in mathematics and computer science by Donald Knuth: the [Iverson bracket](https://en.wikipedia.org/wiki/Iverson_bracket).

> **NOTE:**
>
> **Definition 7 (Iverson bracket)** For any logical proposition \\P\\, the **Iverson bracket** of \\P\\ is
>
> \\ \[P\] \stackrel{\text{def}}{=}\begin{cases} 1, & \text{if } P \text{ is true} \\ 0, & \text{if } P \text{ is false} \end{cases} \\

> **NOTE:**
>
> **Example 5 (Evaluating Iverson brackets)**  
>
> - \\\[3 \> 2\] = 1\\, because \\3 \> 2\\ is true.
> - \\\[2 \> 3\] = 0\\, because \\2 \> 3\\ is false.
> - \\\[4 \in \mathopen{}\left\\1, 2\right\\\mathclose{}\] = 0\\, because \\4\\ is not an element of \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\.

> **NOTE:**
>
> *Remark 1* (The Iverson bracket is the predicate indicator). The Iverson bracket \\\[P\]\\ is the predicate indicator \\\mathbb{1}\mathopen{}\left(P\right)\mathclose{}\\ ([Definition 1](#def-indicator-function)) in different notation. Under this notation, set membership is written \\\[x \in A\]\\, so \\\[x \in A\] = \mathbb{1}\_{A}(x)\\. For example, the values in [Example 1](#exm-indicator-numerical) become
>
> \\ \begin{aligned} \[7.2 \> 5\] &= \mathbb{1}\mathopen{}\left(7.2 \> 5\right)\mathclose{} \\ &= 1 \end{aligned} \\
>
> and, with \\A = \[0, \infty)\\,
>
> \\ \begin{aligned} \[-2.1 \in A\] &= \mathbb{1}\_{A}(-2.1) \\ &= 0. \end{aligned} \\

> **NOTE:**
>
> **Definition 8 (Kronecker delta)** For integers \\i\\ and \\j\\, the **Kronecker delta** is
>
> \\\delta\_{ij} \stackrel{\text{def}}{=}\[i = j\]\\
>
> that is, \\\delta\_{ij} = 1\\ when \\i = j\\ and \\\delta\_{ij} = 0\\ when \\i \neq j\\ ([Definition 7](#def-iverson-bracket)).

> **NOTE:**
>
> **Example 6 (Evaluating the Kronecker delta)**  
>
> - \\ \begin{aligned} \delta\_{11} &= \[1 = 1\] \\ &= 1. \end{aligned} \\
>
> - \\ \begin{aligned} \delta\_{12} &= \[1 = 2\] \\ &= 0. \end{aligned} \\
>
> - \\ \begin{aligned} \delta\_{22} &= \[2 = 2\] \\ &= 1. \end{aligned} \\
>
> - \\ \begin{aligned} \delta\_{23} &= \[2 = 3\] \\ &= 0. \end{aligned} \\

### 1.3 Strengths and limitations of the Iverson bracket

The primary advantage of the Iverson bracket is algebraic conciseness: it turns a sum or integral over a subset into a sum or integral over a larger, fixed set. For example, if \\U\\ is a [finite set](functions.llms.md#def-finite-set) that contains \\A\\, then:

\\ \sum\_{x \in A} f(x) = \sum\_{x \in U} f(x) \[x \in A\] \\

With \\A = \mathopen{}\left\\2, 4\right\\\mathclose{}\\, \\f(x) = x\\, and \\U = \mathopen{}\left\\1, 2, 3, 4, 5\right\\\mathclose{}\\, both sides equal \\2 + 4 = 6\\.

However, in statistics and epidemiology, square brackets are already heavily overloaded: they denote [closed intervals](sets.llms.md#def-closed-interval) \\\[a, b\]\\, [conditional expectations](https://morrison-lab.github.io/pds/expectation.html#def-cond-expectation) \\\operatorname{E}\[Y \mid X\]\\ (defined in the probability notes), and matrix delimiters. To prevent visual confusion with expectation brackets or intervals, statistical literature predominantly uses \\\mathbb{1}\\ or \\I\\ rather than the bare Iverson bracket.

### 1.4 Summary of indicator notations

[Table 1](#tbl-indicator-notations) compares the major notations encountered across the literature.

> **NOTE:**
>
> | Notation style | Typical syntax | Primary fields | Notes and potential ambiguities |
> |:---|:---|:---|:---|
> | **Blackboard bold 1** | \\\mathbb{1}\_{A}(x)\\, \\\mathbb{1}(P)\\ | Modern probability, mathematical statistics | Unambiguous; distinct from matrices and scalars; standard in this book. |
> | **Bold numeral 1** | \\\mathbf{1}\_A(x)\\, \\\mathbf{1}(P)\\ | Probability theory, measure theory | Can be confused with a vector of ones \\\mathbf{1} = (1, \dots, 1)^{\top}\\. |
> | **Blackboard bold I** | \\\mathbb{I}(x \in A)\\, \\\mathbb{I}(P)\\ | Econometrics, machine learning, statistics | Clear predicate notation; avoids confusion with numerals. |
> | **Letter \\I\\** | \\I_A(x)\\, \\I(P)\\ | Classical statistics, epidemiology | Can be confused with the identity matrix \\I\\ or the Fisher information \\\mathcal{I}\\, which measures how much a sample tells about a parameter. |
> | **Iverson bracket** | \\\[P\]\\, \\\[x \in A\]\\ | Computer science, discrete mathematics | Very compact, but square brackets collide with intervals and expectation brackets. |
> | **Greek letter \\\chi\\** | \\\chi_A(x)\\ | Real analysis, measure theory | Often termed “characteristic function”; in probability, that name instead means \\t \mapsto \operatorname{E}\[e^{itX}\]\\ for a random variable \\X\\. |
>
> Table 1: Notations for indicator functions across mathematical and statistical literature

### 1.5 Conventions in this book

In these notes, we standardize on blackboard bold \\\mathbb{1}\\ via the macros defined in `latex-macros/macros.qmd`:

- `\indic{A}` produces \\\mathbb{1}\_{A}\\ (set subscript)
- `\indicp{P}` produces \\\mathbb{1}\mathopen{}\left(P\right)\mathclose{}\\ (predicate in parentheses)
- `\indiccb{P}` produces \\\mathbb{1}\mathopen{}\left\\P\right\\\mathclose{}\\ (predicate in curly braces)
- `\1{P}` produces \\\text{1}\_{P}\\ (text numeral with subscript, used in legacy formulas)

Blackboard bold \\\mathbb{1}\\ is preferred because it avoids all common collisions: it is visually distinct from the scalar \\1\\, the identity matrix \\I\\, and the observed and expected Fisher information matrices (\\I\\, \\\mathcal{I}\\).

### 1.6 Key algebraic properties

Indicator functions translate the logical connectives ([definition](proof-writing.llms.md#def-logical-connective)) “and”, “or”, and “not”, applied to set membership, into ordinary arithmetic on real numbers. One of the identities below uses idempotence:

> **NOTE:**
>
> **Definition 9 (Idempotent)** A number \\a\\ is **idempotent** if \\a \cdot a = a\\. A function \\f\\ with real values is **idempotent** if \\f(x) \cdot f(x) = f(x)\\ for every \\x\\ in its [domain](functions.llms.md#def-domain).

> **NOTE:**
>
> **Example 7 (Idempotent numbers and indicators)**  
>
> - \\0\\ and \\1\\ are idempotent: \\0 \cdot 0 = 0\\ and \\1 \cdot 1 = 1\\.
>
> - \\2\\ is not idempotent: \\2 \cdot 2 = 4 \neq 2\\.
>
> - Every indicator function \\\mathbb{1}\_{A}\\ is idempotent, because each of its values is \\0\\ or \\1\\. For example, with \\A = \[0, \infty)\\,
>
>   \\ \begin{aligned} \mathbb{1}\_{A}(3.5) \cdot\mathbb{1}\_{A}(3.5) &= 1 \cdot 1 \\ &= 1 \\ &= \mathbb{1}\_{A}(3.5). \end{aligned} \\
>
> The [idempotent matrices](linear-algebra-special-matrices.llms.md#def-idempotent-matrix) of linear algebra satisfy the same equation with matrix multiplication: \\\mathbf{M}^2 = \mathbf{M}\\ for a square matrix \\\mathbf{M}\\.

For subsets \\A\\ and \\B\\ of \\\Omega\\, with [complement](sets.llms.md#def-complement) \\A^c \stackrel{\text{def}}{=}\Omega\setminus A\\, and for every \\x \in \Omega\\:

- **Intersection (“and”):** \\\mathbb{1}\_{A \cap B}(x) = \mathbb{1}\_{A}(x) \cdot \mathbb{1}\_{B}(x)\\

- **Union (“or”):** \\\mathbb{1}\_{A \cup B}(x) = \mathbb{1}\_{A}(x) + \mathbb{1}\_{B}(x) - \mathbb{1}\_{A}(x) \cdot \mathbb{1}\_{B}(x)\\

- **Complement (“not”):** \\\mathbb{1}\_{A^c}(x) = 1 - \mathbb{1}\_{A}(x)\\

- **Idempotence ([Definition 9](#def-idempotent)):** \\(\mathbb{1}\_{A}(x))^2 = \mathbb{1}\_{A}(x)\\

- **Expectation gives probability:** When \\\Omega\\ is a [sample space](https://morrison-lab.github.io/pds/probability-basics.html#def-sample-space) and \\A\\ is an [event](https://morrison-lab.github.io/pds/probability-basics.html#def-event), the [expectation](https://morrison-lab.github.io/pds/expectation.html#def-expectation) of its indicator is the [probability](https://morrison-lab.github.io/pds/probability-basics.html#def-probability) of the event (all four terms are defined in the Morrison Lab’s probability notes):

  \\ \begin{aligned} \operatorname{E}\[\mathbb{1}\_{A}\] &= 0 \cdot \Pr(A^c) + 1 \cdot \Pr(A) \\ &= \Pr(A) \end{aligned} \\

This [identity](algebra-basics.llms.md#def-identity) turns probabilities into expectations. It is the mathematical foundation for:

- empirical proportions;
- estimators of survival curves, the probability of no event by each time;
- regression models for binary outcomes.

Back to top
