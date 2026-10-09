# Notation

Code

Published

Last modified: 2026-10-08 18:58:13 (PDT)

Mathematical notation is not standardized. This section states the conventions these notes use, and the alternatives you may meet in other sources.

| symbol | meaning | LaTeX |
|----|----|----|
| \\\neg\\ | [not](#def-logical-connective) | `\neg` |
| \\\forall\\ | [for all](#def-quantifier) | `\forall` |
| \\\exists\\ | [there exists](#def-quantifier) | `\exists` |
| \\\cup\\ | union, “or” | `\cup` |
| \\\cap\\ | intersection, “and” | `\cap` |
| \\\mid\\ | given, [conditional on](https://morrison-lab.github.io/pds/probability-basics.html#def-conditional-prob) | `\mid`, `|` |
| \\\sum\\ | [sum](algebra.llms.md#sec-summation) | `\sum` |
| \\\prod\\ | product | `\prod` |
| \\\mu\\ | mean, \\\operatorname{E}\[X\]\\, of a [random variable](https://morrison-lab.github.io/pds/random-variables.html#def-random-variable) \\X\\ | `\mu` |
| \\\operatorname{E}\\ | [expectation](https://morrison-lab.github.io/pds/expectation.html#def-expectation) | `\mathbb{E}` |
| \\x^{\top}\\ | transpose of \\x\\ | `x\'` |
| \\'\\ | transpose or [derivative](calculus.llms.md#def-derivative)[^1] | `'` |
| \\\perp\\\\\\\perp\\ | [independent](https://morrison-lab.github.io/pds/independence.html#def-indpt) | `\perp\!\!\!\perp` |
| \\\therefore\\ | [therefore](#def-logical-entailment), thus | `\therefore` |
| \\\eta\\ | [linear predictor](https://en.wikipedia.org/wiki/Generalized_linear_model#:~:text=The%20linear%20predictor%20is%20the,data%20through%20the%20link%20function "linear predictor notation") of a generalized linear model[^2] | `\eta` |
| \\\mathopen{}\left\lfloor x\right\rfloor\mathclose{}\\ | floor of \\x\\: largest [integer](#def-integers) less than or equal to \\x\\ | `\lfloor x \rfloor` |
| \\\mathopen{}\left\lceil x\right\rceil\mathclose{}\\ | ceiling of \\x\\: smallest [integer](#def-integers) greater than or equal to \\x\\ | `\lceil x \rceil` |
| \\\mathbb{1}\_{A}(x)\\, \\\mathbb{1}\mathopen{}\left(P\right)\mathclose{}\\ | indicator function ([Section 6](#sec-indicator-functions)): \\1\\ if condition holds, \\0\\ otherwise | `\indic{A}(x)`, `\indicp{P}` |

Table 1: Notation used in this book

The links for conditioning, random variables, expectation, and independence go to the Morrison Lab’s probability notes, which define those terms.

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
> **Definition 1 (Integers)** The **integers** are the whole numbers, together with their negatives and \\0\\:
>
> \\\mathbb{Z} \stackrel{\text{def}}{=}\mathopen{}\left\\\ldots, -3, -2, -1, 0, 1, 2, 3, \ldots\right\\\mathclose{}\\
>
> An **integer** is an element of \\\mathbb{Z}\\. The integers greater than \\0\\ are the **positive integers**, and the integers less than \\0\\ are the **negative integers**.

> **NOTE:**
>
> **Example 1 (Integers and non-integers)**  
>
> - \\-7\\, \\0\\, and \\12\\ are integers.
> - \\\frac{1}{2}\\ and \\-2.5\\ are not integers.
> - \\\frac{6}{3}\\ is an integer, because \\\frac{6}{3} = 2\\.

> **NOTE:**
>
> **Definition 2 (Even and odd integers)** An integer ([Definition 1](#def-integers)) \\n\\ is **even** if \\n = 2k\\ for some integer \\k\\, and **odd** if \\n = 2k + 1\\ for some integer \\k\\.

> **NOTE:**
>
> **Example 2 (Even and odd integers)**  
>
> - \\6\\ is even, because \\6 = 2 \cdot 3\\.
> - \\0\\ is even, because \\0 = 2 \cdot 0\\.
> - \\-3\\ is odd, because \\-3 = 2 \cdot(-2) + 1\\.
> - \\7\\ is odd, because \\7 = 2 \cdot 3 + 1\\.
> - \\2.5\\ is neither even nor odd, because it is not an integer.

> **NOTE:**
>
> **Definition 3 (Natural numbers (our convention))** In these notes, the **natural numbers** are the positive integers ([Definition 1](#def-integers)):
>
> \\\mathbb{N} \stackrel{\text{def}}{=}\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\

> **NOTE:**
>
> **Definition 4 (Non-negative integers)** The **non-negative integers** are the natural numbers ([Definition 3](#def-natural-numbers)) together with \\0\\:
>
> \\\mathbb{N}\_0 \stackrel{\text{def}}{=}\mathopen{}\left\\0, 1, 2, 3, \ldots\right\\\mathclose{} = \mathbb{N} \cup \mathopen{}\left\\0\right\\\mathclose{}\\

> **NOTE:**
>
> **Example 3 (Natural numbers in a data analysis)**  
>
> - Observation indices start at \\1\\, so we write \\i \in \mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ with \\n \in \mathbb{N}\\.
> - A count outcome, such as the number of hospital visits in a year, can be \\0\\, so the set of values it can take is \\\mathbb{N}\_0\\, not \\\mathbb{N}\\.

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

## 3 Rational, real, and irrational numbers

> **NOTE:**
>
> **Definition 5 (Rational numbers)** A **rational number** is a number that can be written as a fraction \\\frac{a}{b}\\, where \\a\\ and \\b\\ are integers ([Definition 1](#def-integers)) and \\b \ne 0\\. The set of rational numbers is written \\\mathbb{Q}\\:
>
> \\\mathbb{Q} \stackrel{\text{def}}{=}\mathopen{}\left\\\frac{a}{b} : a \in \mathbb{Z},\\ b \in \mathbb{Z},\\ b \ne 0\right\\\mathclose{}\\

> **NOTE:**
>
> **Example 4 (Rational numbers)**  
>
> - \\\frac{3}{4}\\ is rational, with \\a = 3\\ and \\b = 4\\.
> - \\0.75\\ is rational, because \\0.75 = \frac{3}{4}\\.
> - Every integer is rational: for example, \\-5 = \frac{-5}{1}\\.
> - \\0.333\ldots\\, with the \\3\\s repeating forever, is rational, because \\0.333\ldots = \frac{1}{3}\\.

> **NOTE:**
>
> **Definition 6 (Real numbers)** A **real number** is a number that can be written as a decimal expansion: an integer part, followed by a decimal point and a finite or infinite list of decimal places after it. Equivalently, the real numbers are the points on the number line. The set of real numbers is written \\\mathbb{R}\\.

> **NOTE:**
>
> *Remark 1* (A working definition). [Definition 6](#def-real-numbers) is a working definition, not a construction: it does not say what an infinite decimal expansion is, or how to add or multiply two of them. Rudin ([1976](#ref-rudin1976principles), Appendix to Chapter 1) constructs the real numbers rigorously. Some real numbers have two decimal expansions: for example, \\0.999\ldots\\ and \\1.000\ldots\\ are the same real number, \\1\\.

> **NOTE:**
>
> **Example 5 (Real numbers)**  
>
> - \\3\\, \\-0.5\\, and \\\frac{1}{3} = 0.333\ldots\\ are real numbers.
> - \\\pi = 3.14159\ldots\\ is a real number.
> - Every rational number ([Definition 5](#def-rational-numbers)) is a real number, so \\\mathbb{N} \subseteq \mathbb{Z} \subseteq \mathbb{Q} \subseteq \mathbb{R}\\.

> **NOTE:**
>
> **Definition 7 (Irrational numbers)** An **irrational number** is a real number ([Definition 6](#def-real-numbers)) that is not rational ([Definition 5](#def-rational-numbers)).

> **NOTE:**
>
> **Example 6 (Irrational numbers)**  
>
> - \\\sqrt{2} = 1.41421\ldots\\, the [square root](algebra.llms.md#def-square-root) of \\2\\, is irrational: no fraction of integers \\\frac{a}{b}\\ squares to \\2\\ (see [Wikipedia: Square root of 2](https://en.wikipedia.org/wiki/Square_root_of_2)).
> - \\\pi = 3.14159\ldots\\ is irrational (see [Wikipedia: Proof that \\\pi\\ is irrational](https://en.wikipedia.org/wiki/Proof_that_%CF%80_is_irrational)).
> - \\1.5\\ is not irrational, because \\1.5 = \frac{3}{2}\\ is rational.

## 4 Percent sign (“%”)

The word “percent” comes from the Latin “per centum”; “centum” is Latin for 100, so “percent” means “per hundred” (cf. <https://en.wikipedia.org/wiki/Percentage>).

> **NOTE:**
>
> **Definition 8 (Percent)** For a real number \\x\\, “\\x\\ **percent**”, written \\x\\\\, means \\x / 100\\:
>
> \\ x\\ \stackrel{\text{def}}{=}\frac{x}{100} \\
>
> The percent sign “%” is a shorthand for “\\/100\\”.

> **NOTE:**
>
> **Example 7 (Ten percent is one tenth)** Contrary to what you may have learned previously, the equality \\10\\ = 0.1\\ is true and correct, just as \\10 \text{kg} = 10,000 \text{g}\\ is true and correct:
>
> \\ \begin{aligned} 10\\ &= \frac{10}{100} && \text{(definition of percent)} \\ &= 0.1 && \text{(divide)} \end{aligned} \\

You are welcome to switch between decimal and percent notation freely; just make sure you execute it correctly.

## 5 Proofs

> **NOTE:**
>
> **Definition 9 (Proposition (statement))** A **proposition**, or **statement**, is a sentence that is either true or false.

> **NOTE:**
>
> **Example 8 (Propositions, and a sentence that is not one)**  
>
> - “\\2 + 3 = 5\\” is a proposition, and it is true.
> - “\\7\\ is [even](#def-even-odd)” is a proposition, and it is false.
> - “\\x \> 2\\” is not a proposition on its own: it is true when \\x = 3\\ and false when \\x = 1\\, so it has no truth value until \\x\\ is given a value.

> **NOTE:**
>
> **Definition 10 (Predicate)** A **predicate** \\P(x)\\ is a sentence about a variable \\x\\ that becomes a proposition ([Definition 9](#def-proposition)) whenever a value is substituted for \\x\\.

> **NOTE:**
>
> **Example 9 (A predicate)** Let \\P(x)\\ be the predicate “\\x \> 2\\”, for real numbers \\x\\.
>
> - \\P(3)\\ is the proposition “\\3 \> 2\\”, which is true.
> - \\P(1)\\ is the proposition “\\1 \> 2\\”, which is false.

> **NOTE:**
>
> **Definition 11 (Logical connective)** A **logical connective** builds a new proposition ([Definition 9](#def-proposition)) from one or two propositions \\P\\ and \\Q\\, with a truth value that depends only on the truth values of \\P\\ and \\Q\\. These notes use five:
>
> - **not**: \\\neg P\\ (“not \\P\\”) is true when \\P\\ is false, and false when \\P\\ is true.
> - **and**: \\P \land Q\\ (“\\P\\ and \\Q\\”) is true when \\P\\ and \\Q\\ are both true, and false otherwise.
> - **or**: \\P \lor Q\\ (“\\P\\ or \\Q\\”) is true when at least one of \\P\\ and \\Q\\ is true, and false when both are false.
> - **implies**: \\P \Rightarrow Q\\ (“if \\P\\, then \\Q\\”, or “\\P\\ implies \\Q\\”) is false when \\P\\ is true and \\Q\\ is false, and true otherwise.
> - **if and only if**: \\P \Leftrightarrow Q\\ (“\\P\\ if and only if \\Q\\”) is true when \\P\\ and \\Q\\ have the same truth value, and false otherwise.

> **NOTE:**
>
> **Example 10 (Truth values of connectives)** Let \\P\\ be “\\2 + 3 = 5\\”, which is true, and let \\Q\\ be “\\7\\ is [even](#def-even-odd)”, which is false.
>
> - \\\neg Q\\, “\\7\\ is not even”, is true, because \\Q\\ is false.
> - \\P \land Q\\ is false, because \\Q\\ is false.
> - \\P \lor Q\\ is true, because \\P\\ is true.
> - \\P \Rightarrow Q\\ is false, because \\P\\ is true and \\Q\\ is false.
> - \\Q \Rightarrow P\\ is true, because \\Q\\ is false.
> - \\P \Leftrightarrow Q\\ is false, because \\P\\ and \\Q\\ have different truth values.

> **NOTE:**
>
> **Definition 12 (Quantifier)** A **quantifier** turns a predicate \\P(x)\\ ([Definition 10](#def-predicate)) about the elements \\x\\ of a set \\S\\ into a proposition ([Definition 9](#def-proposition)):
>
> - the **universal quantifier** “for all”: \\\forall x \in S, P(x)\\ (“for every \\x\\ in \\S\\, \\P(x)\\”) is true when \\P(x)\\ is true for every element \\x\\ of \\S\\, and false otherwise;
> - the **existential quantifier** “there exists”: \\\exists x \in S, P(x)\\ (“there is an \\x\\ in \\S\\ such that \\P(x)\\”) is true when \\P(x)\\ is true for at least one element \\x\\ of \\S\\, and false otherwise.

> **NOTE:**
>
> **Example 11 (Quantified propositions)** Let \\P(x)\\ be the predicate “\\x \> 2\\”, for [integers](#def-integers) \\x\\.
>
> - “\\\exists x \in \mathopen{}\left\\1, 2, 3\right\\\mathclose{}, P(x)\\” is true, because \\P(3)\\ is true.
> - “\\\forall x \in \mathopen{}\left\\1, 2, 3\right\\\mathclose{}, P(x)\\” is false, because \\P(1)\\ is false.
> - “\\\forall x \in \mathopen{}\left\\3, 4, 5\right\\\mathclose{}, P(x)\\” is true, because \\3 \> 2\\, \\4 \> 2\\, and \\5 \> 2\\ are all true.

> **NOTE:**
>
> **Definition 13 (Inequality)** An **inequality** is a proposition ([Definition 9](#def-proposition)) or a predicate ([Definition 10](#def-predicate)) that compares two expressions \\a\\ and \\b\\ whose values are [real numbers](#def-real-numbers), in one of the forms:
>
> - \\a \< b\\ (“\\a\\ is less than \\b\\”);
> - \\a \le b\\ (“\\a\\ is less than or equal to \\b\\”);
> - \\a \> b\\ (“\\a\\ is greater than \\b\\”);
> - \\a \ge b\\ (“\\a\\ is greater than or equal to \\b\\”).

> **NOTE:**
>
> **Example 12 (Inequalities)**  
>
> - “\\3 \< 5\\” is an inequality, and it is true.
> - “\\5 \le 3\\” is an inequality, and it is false.
> - “\\x \ge 2\\” is an inequality and a predicate: it is true when \\x = 2\\ and false when \\x = 1\\.
> - “\\x = 2\\” is not an inequality: it is an equality.

> **NOTE:**
>
> **Definition 14 (Logical entailment (logical consequence, deductive consequence))** Propositions or predicates \\P_1, \ldots, P_n\\ ([Definition 9](#def-proposition), [Definition 10](#def-predicate)) **logically entail** a proposition or predicate \\Q\\ when every choice of values for their variables that makes all of \\P_1, \ldots, P_n\\ true also makes \\Q\\ true. Then \\Q\\ is a **logical consequence**, or **deductive consequence**, of \\P_1, \ldots, P_n\\.

> **NOTE:**
>
> **Example 13 (Entailment, and its failure)** Let \\x\\ be an [integer](#def-integers).
>
> - “\\x = 2\\” entails “\\x^2 = 4\\”: the only value that makes “\\x = 2\\” true is \\x = 2\\, and \\2^2 = 4\\.
> - “\\x \> 3\\” and “\\x \< 5\\” together entail “\\x = 4\\”: \\4\\ is the only integer greater than \\3\\ and less than \\5\\.
> - “\\x^2 = 4\\” does not entail “\\x = 2\\”: the value \\x = -2\\ makes “\\x^2 = 4\\” true, since \\(-2)^2 = 4\\, but makes “\\x = 2\\” false.

We can use any of:

- \\\therefore\\ (`\therefore` in LaTeX),
- \\\Rightarrow\\ (`\Rightarrow`),
- \\\models\\ (`\models`)

to denote logical entailment ([Definition 14](#def-logical-entailment)). \\\Rightarrow\\ also writes the connective “implies” ([Definition 11](#def-logical-connective)); \\P\\ entails \\Q\\ exactly when \\P \Rightarrow Q\\ is true for every choice of values for the variables in \\P\\ and \\Q\\.

Let’s save \\\rightarrow\\ (`\rightarrow`) for [convergence](algebra.llms.md#def-sequence-limit) results.

> **NOTE:**
>
> **Definition 15 (Proof)** A **proof** of a proposition ([Definition 9](#def-proposition)) is a finite list of statements that ends with that proposition, in which each statement is
>
> - an assumption,
> - a definition,
> - a previously proved result, or
> - a consequence of earlier statements in the list, by one rule of logic or algebra.

> **NOTE:**
>
> **Example 14 (The sum of two even integers is even)** Let \\a\\ and \\b\\ be even integers ([Definition 2](#def-even-odd)). Then \\a = 2j\\ and \\b = 2k\\ for some integers \\j\\ and \\k\\, and
>
> \\ \begin{aligned} a + b &= 2j + 2k && \text{(substitute } a = 2j \text{ and } b = 2k \text{)} \\ &= 2(j + k) && \text{(distributive law)} \end{aligned} \\
>
> The second line uses the [distributive law](algebra.llms.md#def-distributive). Since \\j + k\\ is an integer, \\a + b\\ is even ([Definition 2](#def-even-odd)). For example, \\4 + 10 = 2 \cdot 2 + 2 \cdot 5 = 2 \cdot 7 = 14\\.

> **NOTE:**
>
> **Definition 16 (Derivation)** A **derivation** is a proof ([Definition 15](#def-proof)), or a part of one, written as a chain of expressions, one per line, in which each line is joined to the line before it by \\=\\ or by an inequality sign ([Definition 13](#def-inequality)), and carries an annotation that names the reason that step holds: an assumption, a definition, a previously proved result, or a rule of algebra. The chain shows how its first expression compares with its last:
>
> - if every step is \\=\\, the first expression equals the last;
> - if every step is \\=\\ or \\\le\\, the first is less than or equal to the last;
> - if every step is \\=\\, \\\le\\, or \\\<\\, and at least one step is \\\<\\, the first is less than the last.
>
> The same holds with \\\ge\\ and \\\>\\ in place of \\\le\\ and \\\<\\.

> **NOTE:**
>
> **Example 15 (A derivation with equalities and inequalities)** For every real number \\x\\:
>
> \\ \begin{aligned} (x + 1)^2 &= x^2 + 2x + 1 && \text{(square of a sum)} \\ &\ge 2x + 1 && \text{(} x^2 \ge 0 \text{)} \\ &\> 2x && \text{(} 1 \> 0 \text{)} \end{aligned} \\
>
> The first step uses the [square of a sum](algebra.llms.md#thm-square-of-a-sum). The steps are \\=\\, \\\ge\\, and \\\>\\, so the derivation shows \\(x + 1)^2 \> 2x\\. For example, with \\x = 3\\: \\(3 + 1)^2 = 16\\, and \\16 \> 6 = 2 \cdot 3\\.

> **NOTE:**
>
> **Definition 17 (Result, theorem, lemma, and corollary)** A **result** is a proposition ([Definition 9](#def-proposition)) that has a proof ([Definition 15](#def-proof)). These notes label each result by its role:
>
> - a **theorem** is a result of interest in its own right;
> - a **lemma** is a result proved mainly as a step in the proof of another result;
> - a **corollary** is a result that follows from a theorem with little extra work.

> **NOTE:**
>
> *Remark 2* (“Proposition” as a kind of result). Some sources also call a result of moderate importance a “proposition”. In these notes, “proposition” always means a sentence that is true or false ([Definition 9](#def-proposition)), whether or not it has been proved.

> **NOTE:**
>
> **Example 16 (A corollary of a result)** [Example 14](#exm-proof) proves the result “the sum of two even integers is even”. A corollary follows with little extra work: the sum of three even integers \\a\\, \\b\\, and \\c\\ is even, because \\a + b + c = (a + b) + c\\, \\a + b\\ is even by that result, and applying the result again to the even integers \\a + b\\ and \\c\\ shows that \\(a + b) + c\\ is even. For example, \\2 + 4 + 6 = (2 + 4) + 6 = 6 + 6 = 12\\, which is even.

> **NOTE:**
>
> **Definition 18 (Counterexample)** A **counterexample** to a proposition of the form “for every \\x\\ in \\A\\, \\P(x)\\”, where \\P(x)\\ is a predicate ([Definition 10](#def-predicate)), is an element \\x\\ of \\A\\ for which \\P(x)\\ is false. A single counterexample shows that the proposition is false.

> **NOTE:**
>
> **Example 17 (A counterexample)** The proposition “for every integer \\n\\, \\n + n \> n\\” is false. The integer \\n = 0\\ is a counterexample: \\0 + 0 = 0\\, and \\0 \> 0\\ is false. The proposition is true for some integers, such as \\n = 3\\, since \\3 + 3 = 6 \> 3\\, but one counterexample is enough to make it false.

> **NOTE:**
>
> **Definition 19 (Converse)** The **converse** of the proposition “if \\P\\, then \\Q\\” is the proposition “if \\Q\\, then \\P\\”.

> **NOTE:**
>
> **Example 18 (A true proposition with a false converse)** For an integer \\n\\, call \\n\\ a multiple of \\4\\ if \\n = 4k\\ for some integer \\k\\.
>
> - “If \\n\\ is a multiple of \\4\\, then \\n\\ is even” is true: \\n = 4k = 2 \cdot(2k)\\, and \\2k\\ is an integer.
> - Its converse, “if \\n\\ is even, then \\n\\ is a multiple of \\4\\”, is false. The integer \\n = 2\\ is a counterexample ([Definition 18](#def-counterexample)): \\2\\ is even, but \\2 = 4k\\ only for \\k = \frac{1}{2}\\, which is not an integer.
>
> So a proposition can be true while its converse is false.

> **NOTE:**
>
> **Definition 20 (Necessary and sufficient conditions)** When the proposition “if \\P\\, then \\Q\\” is true, \\P\\ is a **sufficient condition** for \\Q\\, and \\Q\\ is a **necessary condition** for \\P\\. When both “if \\P\\, then \\Q\\” and its converse ([Definition 19](#def-converse)) are true, \\P\\ is a **necessary and sufficient condition** for \\Q\\, written “\\P\\ if and only if \\Q\\”.

> **NOTE:**
>
> **Example 19 (Necessary but not sufficient)** In [Example 18](#exm-converse), “if \\n\\ is a multiple of \\4\\, then \\n\\ is even” is true, so:
>
> - being a multiple of \\4\\ is a sufficient condition for \\n\\ to be even;
> - being even is a necessary condition for \\n\\ to be a multiple of \\4\\.
>
> Being even is not a sufficient condition for being a multiple of \\4\\: \\n = 2\\ is even, but not a multiple of \\4\\.

> **NOTE:**
>
> **Definition 21 (Proof by contradiction)** A **proof by contradiction** of a proposition \\P\\ assumes that \\P\\ is false, and derives from that assumption a proposition that is known to be false. Since a true assumption cannot lead to a false proposition, the assumption that \\P\\ is false must itself be false, so \\P\\ is true.

> **NOTE:**
>
> **Example 20 (No integer is both even and odd)** Suppose, for contradiction, that some integer \\n\\ is both even and odd ([Definition 2](#def-even-odd)). Then \\n = 2j\\ and \\n = 2k + 1\\ for some integers \\j\\ and \\k\\, and
>
> \\ \begin{aligned} 2j &= 2k + 1 && \text{(both equal } n \text{)} \\ 2j - 2k &= 1 && \text{(subtract } 2k \text{ from both sides)} \\ 2(j - k) &= 1 && \text{(distributive law)} \\ j - k &= \tfrac{1}{2} && \text{(divide both sides by } 2 \text{)} \end{aligned} \\
>
> The third line uses the [distributive law](algebra.llms.md#def-distributive). But \\j - k\\ is an integer, and \\\frac{1}{2}\\ is not, so the last line is false. So no integer is both even and odd. For example, \\6 = 2 \cdot 3\\ is even, and \\6 = 2k + 1\\ would need \\k = 2.5\\, which is not an integer.

## 6 Indicator functions

An **indicator function** is a mathematical function that signals whether an element belongs to a specified set, or whether a given logical condition is satisfied. In statistics and epidemiology, indicator functions are ubiquitous. They represent:

- binary variables, which take only the values \\0\\ and \\1\\ ([Definition 23](#def-binary-variable));
- event and censoring indicators in survival analysis, the study of the time until an event such as death, where an observation is censored when follow-up ends before its event is seen;
- membership in subpopulations;
- domain restrictions in integrals and sums.

Despite their conceptual simplicity, notation for indicator functions varies substantially across textbooks, research papers, and subfields. This section summarizes the principal notational conventions.

> **NOTE:**
>
> **Definition 22 (Indicator function (set indicator, predicate indicator))** For any subset \\A \subseteq \Omega\\ of a universal set \\\Omega\\, the **indicator function** of \\A\\, or **set indicator**, is the function \\\mathbb{1}\_{A} : \Omega\to \\0, 1\\\\ defined by:
>
> \\ \mathbb{1}\_{A}(x) \stackrel{\text{def}}{=}\begin{cases} 1, & x \in A \\ 0, & x \notin A \end{cases} \\
>
> More generally, for any logical proposition or predicate \\P\\, the **indicator** of \\P\\, or **predicate indicator**, takes the value \\1\\ when \\P\\ is true and \\0\\ when \\P\\ is false:
>
> \\ \mathbb{1}\mathopen{}\left(P\right)\mathclose{} \stackrel{\text{def}}{=}\begin{cases} 1, & \text{if } P \text{ is true} \\ 0, & \text{if } P \text{ is false} \end{cases} \\

> **NOTE:**
>
> **Example 21 (Evaluating set and predicate indicators)** Consider the real line \\\Omega= \mathbb{R}\\, the set of nonnegative numbers \\A = \[0, \infty)\\, and a continuous [random variable](https://morrison-lab.github.io/pds/random-variables.html#def-random-variable) \\Y\\ (defined in the Morrison Lab’s probability notes).
>
> 1.  Set indicator \\\mathbb{1}\_{A}(x)\\:
>     - For \\x = 3.5\\: since \\3.5 \in \[0, \infty)\\, \\\mathbb{1}\_{A}(3.5) = 1\\.
>     - For \\x = -2.1\\: since \\-2.1 \notin \[0, \infty)\\, \\\mathbb{1}\_{A}(-2.1) = 0\\.
> 2.  Predicate indicator \\\mathbb{1}\mathopen{}\left(Y \> 5\right)\mathclose{}\\:
>     - If an observation yields \\Y = 7.2\\, the predicate \\7.2 \> 5\\ is true, so \\\mathbb{1}\mathopen{}\left(7.2 \> 5\right)\mathclose{} = 1\\.
>     - If an observation yields \\Y = 4.1\\, the predicate \\4.1 \> 5\\ is false, so \\\mathbb{1}\mathopen{}\left(4.1 \> 5\right)\mathclose{} = 0\\.

> **NOTE:**
>
> **Definition 23 (Binary variable)** A **binary variable** is a variable that takes only the values \\0\\ and \\1\\.

> **NOTE:**
>
> **Example 22 (A binary variable is an indicator)** In a study of \\n\\ people, let \\s_i = 1\\ if person \\i\\ smokes and \\s_i = 0\\ otherwise, for \\i \in \mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\. Then \\s_i\\ is a binary variable ([Definition 23](#def-binary-variable)). It is also the predicate indicator ([Definition 22](#def-indicator-function)) of the proposition “person \\i\\ smokes”: \\s_i = \mathbb{1}\mathopen{}\left(\text{person } i \text{ smokes}\right)\mathclose{}\\.
>
> In the same way, every indicator is a binary variable, and every binary variable \\X\\ is the indicator of its own value being \\1\\: \\X = \mathbb{1}\mathopen{}\left(X = 1\right)\mathclose{}\\, since both sides are \\1\\ when \\X = 1\\ and \\0\\ when \\X = 0\\.

### 6.1 Two primary notational paradigms: set vs. predicate notation

The vast majority of indicator notations belong to one of two families: set notation or predicate notation.

> **NOTE:**
>
> **Definition 24 (Set notation and predicate notation for indicators)** An indicator ([Definition 22](#def-indicator-function)) is written in **set notation** when the set \\A\\ appears as a subscript, as in \\\mathbb{1}\_{A}(x)\\, and in **predicate notation** when a proposition or predicate \\P\\ ([Definition 10](#def-predicate)) appears as its argument, as in \\\mathbb{1}\mathopen{}\left(P\right)\mathclose{}\\ or \\\mathbb{1}\mathopen{}\left(x \in A\right)\mathclose{}\\.

> **NOTE:**
>
> **Example 23 (One indicator in both notations)** Let \\A = \[0, \infty)\\, the nonnegative real numbers. The indicator of \\A\\ is \\\mathbb{1}\_{A}(x)\\ in set notation, and \\\mathbb{1}\mathopen{}\left(x \in A\right)\mathclose{}\\ or \\\mathbb{1}\mathopen{}\left(x \ge 0\right)\mathclose{}\\ in predicate notation ([Definition 24](#def-set-predicate-notation)). At \\x = 3.5\\, all three equal \\1\\; at \\x = -2.1\\, all three equal \\0\\.

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

Predicate notation is especially common in applied statistics and survival analysis, where indicators frequently depend on inequalities ([Definition 13](#def-inequality)) involving random variables, such as \\\mathbb{1}\mathopen{}\left(T_i \le t\right)\mathclose{}\\ (an event occurring before time \\t\\) or \\\mathbb{1}\mathopen{}\left(Y_i = 1\right)\mathclose{}\\ (a binary outcome).

#### Equivalence between paradigms

The two paradigms are connected by evaluating the predicate indicator at the membership statement \\x \in A\\:

\\ \mathbf{1}\_A(x) = \mathbb{I}(x \in A) \\

> **NOTE:**
>
> **Definition 25 (Support of a distribution)** The **support** of a discrete distribution is the set of values it gives positive probability. The support of a continuous distribution is the set of values where its density is positive.

> **NOTE:**
>
> **Example 24 (Supports of two count distributions)**  
>
> - A fair six-sided die gives each of \\1, 2, \ldots, 6\\ probability \\\tfrac{1}{6} \> 0\\ and every other value probability \\0\\, so its support is \\\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\.
> - A count that can be \\0\\, \\1\\, \\2\\, and so on, each with positive probability, such as the number of hospital visits in a year, has support \\\mathbb{N}\_0 = \mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\.

Set notation is more natural when the underlying set \\A\\ has a standard name (such as the support of a distribution ([Definition 25](#def-support)), or a geometric region). Predicate notation is more natural when the condition involves compound inequalities, such as \\\mathbb{1}\mathopen{}\left(0 \le t \le u\right)\mathclose{}\\.

### 6.2 Iverson bracket notation

In 1962, Kenneth Iverson introduced a compact notation in the programming language APL, later popularized in mathematics and computer science by Donald Knuth: the [Iverson bracket](https://en.wikipedia.org/wiki/Iverson_bracket).

> **NOTE:**
>
> **Definition 26 (Iverson bracket)** For any logical proposition \\P\\, the **Iverson bracket** of \\P\\ is
>
> \\ \[P\] \stackrel{\text{def}}{=}\begin{cases} 1, & \text{if } P \text{ is true} \\ 0, & \text{if } P \text{ is false} \end{cases} \\

> **NOTE:**
>
> **Example 25 (Evaluating Iverson brackets)**  
>
> - \\\[3 \> 2\] = 1\\, because \\3 \> 2\\ is true.
> - \\\[2 \> 3\] = 0\\, because \\2 \> 3\\ is false.
> - \\\[4 \in \mathopen{}\left\\1, 2\right\\\mathclose{}\] = 0\\, because \\4\\ is not an element of \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\.

> **NOTE:**
>
> *Remark 3* (The Iverson bracket is the predicate indicator). The Iverson bracket \\\[P\]\\ is the predicate indicator \\\mathbb{1}\mathopen{}\left(P\right)\mathclose{}\\ ([Definition 22](#def-indicator-function)) in different notation. Under this notation, set membership is written \\\[x \in A\]\\, so \\\[x \in A\] = \mathbb{1}\_{A}(x)\\. For example, the values in [Example 21](#exm-indicator-numerical) become \\\[7.2 \> 5\] = \mathbb{1}\mathopen{}\left(7.2 \> 5\right)\mathclose{} = 1\\ and, with \\A = \[0, \infty)\\, \\\[-2.1 \in A\] = \mathbb{1}\_{A}(-2.1) = 0\\.

> **NOTE:**
>
> **Definition 27 (Kronecker delta)** For integers \\i\\ and \\j\\, the **Kronecker delta** is
>
> \\\delta\_{ij} \stackrel{\text{def}}{=}\[i = j\]\\
>
> that is, \\\delta\_{ij} = 1\\ when \\i = j\\ and \\\delta\_{ij} = 0\\ when \\i \neq j\\ ([Definition 26](#def-iverson-bracket)).

> **NOTE:**
>
> **Example 26 (Evaluating the Kronecker delta)**  
>
> - \\\delta\_{11} = \[1 = 1\] = 1\\.
> - \\\delta\_{12} = \[1 = 2\] = 0\\.
> - \\\delta\_{22} = \[2 = 2\] = 1\\.
> - \\\delta\_{23} = \[2 = 3\] = 0\\.

### 6.3 Strengths and limitations of the Iverson bracket

The primary advantage of the Iverson bracket is algebraic conciseness: it turns a sum or integral over a subset into a sum or integral over a larger, fixed set. For example, if \\U\\ is a [finite set](sets-functions.llms.md#def-finite-set) that contains \\A\\, then:

\\ \sum\_{x \in A} f(x) = \sum\_{x \in U} f(x) \[x \in A\] \\

With \\A = \mathopen{}\left\\2, 4\right\\\mathclose{}\\, \\f(x) = x\\, and \\U = \mathopen{}\left\\1, 2, 3, 4, 5\right\\\mathclose{}\\, both sides equal \\2 + 4 = 6\\.

However, in statistics and epidemiology, square brackets are already heavily overloaded: they denote [closed intervals](sets-functions.llms.md#def-interval) \\\[a, b\]\\, [conditional expectations](https://morrison-lab.github.io/pds/expectation.html#def-cond-expectation) \\\operatorname{E}\[Y \mid X\]\\ (defined in the probability notes), and matrix delimiters. To prevent visual confusion with expectation brackets or intervals, statistical literature predominantly uses \\\mathbb{1}\\ or \\I\\ rather than the bare Iverson bracket.

### 6.4 Summary of indicator notations

[Table 2](#tbl-indicator-notations) compares the major notations encountered across the literature.

| Notation style | Typical syntax | Primary fields | Notes and potential ambiguities |
|:---|:---|:---|:---|
| **Blackboard bold 1** | \\\mathbb{1}\_{A}(x)\\, \\\mathbb{1}(P)\\ | Modern probability, mathematical statistics | Unambiguous; distinct from matrices and scalars; standard in this book. |
| **Bold numeral 1** | \\\mathbf{1}\_A(x)\\, \\\mathbf{1}(P)\\ | Probability theory, measure theory | Can be confused with a vector of ones \\\mathbf{1} = (1, \dots, 1)^{\top}\\. |
| **Blackboard bold I** | \\\mathbb{I}(x \in A)\\, \\\mathbb{I}(P)\\ | Econometrics, machine learning, statistics | Clear predicate notation; avoids confusion with numerals. |
| **Letter \\I\\** | \\I_A(x)\\, \\I(P)\\ | Classical statistics, epidemiology | Can be confused with the identity matrix \\I\\ or the Fisher information \\\mathcal{I}\\, which measures how much a sample tells about a parameter. |
| **Iverson bracket** | \\\[P\]\\, \\\[x \in A\]\\ | Computer science, discrete mathematics | Very compact, but square brackets collide with intervals and expectation brackets. |
| **Greek letter \\\chi\\** | \\\chi_A(x)\\ | Real analysis, measure theory | Often termed “characteristic function”; in probability, that name instead means \\t \mapsto \operatorname{E}\[e^{itX}\]\\ for a random variable \\X\\. |

Table 2: Notations for indicator functions across mathematical and statistical literature

### 6.5 Conventions in this book

In these notes, we standardize on blackboard bold \\\mathbb{1}\\ via the macros defined in `latex-macros/macros.qmd`:

- `\indic{A}` produces \\\mathbb{1}\_{A}\\ (set subscript)
- `\indicp{P}` produces \\\mathbb{1}\mathopen{}\left(P\right)\mathclose{}\\ (predicate in parentheses)
- `\indiccb{P}` produces \\\mathbb{1}\mathopen{}\left\\P\right\\\mathclose{}\\ (predicate in curly braces)
- `\1{P}` produces \\\text{1}\_{P}\\ (text numeral with subscript, used in legacy formulas)

Blackboard bold \\\mathbb{1}\\ is preferred because it avoids all common collisions: it is visually distinct from the scalar \\1\\, the identity matrix \\I\\, and the observed and expected Fisher information matrices (\\I\\, \\\mathcal{I}\\).

### 6.6 Key algebraic properties

Indicator functions translate the logical connectives ([Definition 11](#def-logical-connective)) “and”, “or”, and “not”, applied to set membership, into ordinary arithmetic on real numbers. One of the identities below uses idempotence:

> **NOTE:**
>
> **Definition 28 (Idempotent)** A number \\a\\ is **idempotent** if \\a \cdot a = a\\. A function \\f\\ with real values is **idempotent** if \\f(x) \cdot f(x) = f(x)\\ for every \\x\\ in its [domain](sets-functions.llms.md#def-domain).

> **NOTE:**
>
> **Example 27 (Idempotent numbers and indicators)**  
>
> - \\0\\ and \\1\\ are idempotent: \\0 \cdot 0 = 0\\ and \\1 \cdot 1 = 1\\.
> - \\2\\ is not idempotent: \\2 \cdot 2 = 4 \neq 2\\.
> - Every indicator function \\\mathbb{1}\_{A}\\ is idempotent, because each of its values is \\0\\ or \\1\\. For example, with \\A = \[0, \infty)\\, \\\mathbb{1}\_{A}(3.5) \cdot\mathbb{1}\_{A}(3.5) = 1 \cdot 1 = 1 = \mathbb{1}\_{A}(3.5)\\.
>
> The [idempotent matrices](linear-algebra.llms.md#def-idempotent-matrix) of linear algebra satisfy the same equation with matrix multiplication: \\\mathbf{M}^2 = \mathbf{M}\\ for a square matrix \\\mathbf{M}\\.

For subsets \\A\\ and \\B\\ of \\\Omega\\, with [complement](sets-functions.llms.md#def-complement) \\A^c \stackrel{\text{def}}{=}\Omega\setminus A\\, and for every \\x \in \Omega\\:

- **Intersection (“and”):** \\\mathbb{1}\_{A \cap B}(x) = \mathbb{1}\_{A}(x) \cdot \mathbb{1}\_{B}(x)\\

- **Union (“or”):** \\\mathbb{1}\_{A \cup B}(x) = \mathbb{1}\_{A}(x) + \mathbb{1}\_{B}(x) - \mathbb{1}\_{A}(x) \cdot \mathbb{1}\_{B}(x)\\

- **Complement (“not”):** \\\mathbb{1}\_{A^c}(x) = 1 - \mathbb{1}\_{A}(x)\\

- **Idempotence ([Definition 28](#def-idempotent)):** \\(\mathbb{1}\_{A}(x))^2 = \mathbb{1}\_{A}(x)\\

- **Expectation gives probability:** When \\\Omega\\ is a [sample space](https://morrison-lab.github.io/pds/probability-basics.html#def-sample-space) and \\A\\ is an [event](https://morrison-lab.github.io/pds/probability-basics.html#def-event), the [expectation](https://morrison-lab.github.io/pds/expectation.html#def-expectation) of its indicator is the [probability](https://morrison-lab.github.io/pds/probability-basics.html#def-probability) of the event (all four terms are defined in the Morrison Lab’s probability notes):

  \\ \operatorname{E}\[\mathbb{1}\_{A}\] = 0 \cdot \Pr(A^c) + 1 \cdot \Pr(A) = \Pr(A) \\

This [identity](algebra.llms.md#def-identity) turns probabilities into expectations. It is the mathematical foundation for:

- empirical proportions;
- estimators of survival curves, the probability of no event by each time;
- regression models for binary outcomes.

## 7 Notational shorthands

> **NOTE:**
>
> **Definition 29 (Lower and upper limits of a sum or integral)** In a [sum](algebra.llms.md#def-summation) \\\sum\_{i=m}^{n} a_i\\, the **lower limit** \\m\\ is the first value of the index \\i\\, and the **upper limit** \\n\\ is its last value. In an [integral](calculus.llms.md#def-riemann-integral) \\\int_a^b f(x)\\dx\\, the **lower limit** \\a\\ is the left end of the interval of integration, and the **upper limit** \\b\\ is its right end; together they are the **limits of integration**. In both, the lower limit is written below the symbol and the upper limit above it.

> **NOTE:**
>
> **Example 28 (Reading off limits)**  
>
> - In \\\sum\_{i=2}^{5} i^2\\, the lower limit is \\2\\ and the upper limit is \\5\\, so the sum is \\2^2 + 3^2 + 4^2 + 5^2 = 54\\.
> - In \\\int_0^3 x\\dx\\, the lower limit is \\0\\ and the upper limit is \\3\\.

> **NOTE:**
>
> *Remark 4* (Two meanings of “limit”). The lower and upper limits of a sum or integral ([Definition 29](#def-lower-upper-limits)) are not limits in the calculus sense, such as the [limit of a function](calculus.llms.md#def-limit) or the [limit of a sequence](algebra.llms.md#def-sequence-limit). They are the ends of the values the index or variable runs over. The two meanings meet in an integral such as \\\int_0^{\infty} f(x)\\dx\\, which means \\\lim\_{b \to \infty} \int_0^b f(x)\\dx\\: the upper limit \\b\\ is sent to infinity by a calculus limit.

> **NOTE:**
>
> **Definition 30 (Notational shorthand)** A **notational shorthand** is a way of writing an expression that leaves part of the expression out, such as the set a sum runs over or the limits of an integral, and relies on the reader to supply the missing part from context. The expression with every part written out is its **full form**.

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
> **Definition 31 (Range of a variable)** The **range** of a variable \\x\\, written \\\mathcal{R}(x)\\, is the set of values that \\x\\ can take.

For example, if \\x\\ is the number of heads in two tosses of a coin, then \\\mathcal{R}(x) = \mathopen{}\left\\0, 1, 2\right\\\mathclose{}\\. A [random variable](https://morrison-lab.github.io/pds/random-variables.html#def-random-variable) \\X\\ (defined in the Morrison Lab’s probability notes) is a [function](sets-functions.llms.md#def-function), and the set of values \\X\\ can take, \\\mathcal{R}(X)\\, is the [image](sets-functions.llms.md#def-image) of \\X\\. These notes use “range” only for variables: for a function, “range” can mean either the image or the codomain ([Image and range](sets-functions.llms.md#rem-image-range)). In statistics, “the range” of a dataset can also mean its largest value minus its smallest value; \\\mathcal{R}(x)\\ is a set, not that difference.

[Table 3](#tbl-notational-shorthands) lists shorthands you may meet in other sources, the full form each one abbreviates, and the part each one leaves out. In the table, \\x_1, \ldots, x_n\\ and \\a_1, \ldots, a_n\\ are \\n\\ numbers, \\b\_{ij}\\ is the entry in row \\i\\ and column \\j\\ of an \\m \times n\\ array, \\k\\ is an integer with \\1 \le k \le n\\, \\f\\ is a [function](sets-functions.llms.md#def-function) from \\\mathbb{R}\\ to \\\mathbb{R}\\, and, in the first row, \\\mathcal{R}(x)\\ is a finite set.

| Shorthand | Full form | Part left out |
|:---|:---|:---|
| \\\sum\_{x} f(x)\\ | \\\sum\_{x \in \mathcal{R}(x)} f(x)\\ | the set the sum runs over ([sum over a finite set](algebra.llms.md#def-sum-over-set)) |
| \\\sum\_{i} x_i\\ | \\\sum\_{i=1}^nx_i\\ | the lower and upper limits of the index ([summation notation](algebra.llms.md#def-summation)) |
| \\\sum x_i\\ | \\\sum\_{i=1}^nx_i\\ | the index and its lower and upper limits |
| \\\prod\_{i} x_i\\ | \\\prod\_{i=1}^nx_i\\ | the lower and upper limits of the index |
| \\\prod x_i\\ | \\\prod\_{i=1}^nx_i\\ | the index and its lower and upper limits |
| \\\sum\_{i, j} b\_{ij}\\ | \\\sum\_{i=1}^{m} \sum\_{j=1}^nb\_{ij}\\ | the limits of both indices |
| \\\sum\_{i \neq k} a_i\\ | \\\sum\_{i \in \mathopen{}\left\\1, \ldots, n\right\\\mathclose{} \setminus \mathopen{}\left\\k\right\\\mathclose{}} a_i\\ | the set \\\mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ of indices that \\k\\ is removed from |
| \\\int f(x)\\dx\\, used for a number | \\\int\_{-\infty}^{\infty} f(x)\\dx\\ | the limits of integration |
| \\\int f\\ | \\\int\_{-\infty}^{\infty} f(x)\\dx\\ | the limits, the variable of integration, and the differential \\dx\\ |
| \\x\_{1:n}\\ | \\(x_1, x_2, \ldots, x_n)\\ | the explicit list of entries |
| “the function \\x^2\\” | “the function \\f : \mathbb{R}\to \mathbb{R}\\ with \\f(x) = x^2\\” | the function’s name, domain, and codomain |

Table 3: Common notational shorthands and their full forms

> **NOTE:**
>
> *Remark 5* (\\\int f(x)\\dx\\ has two readings). In calculus, \\\int f(x)\\dx\\ with no limits is not a shorthand: it is the [indefinite integral](calculus.llms.md#def-indefinite-integral) of \\f\\, a family of functions rather than a number. Some sources, especially in probability, also write \\\int f(x)\\dx\\ for the number \\\int\_{-\infty}^{\infty} f(x)\\dx\\. Writing the limits out tells the reader which of the two is meant.

> **NOTE:**
>
> **Example 29 (Writing out an index shorthand)** Let \\n = 3\\ and \\(x_1, x_2, x_3) = (2, 5, 1)\\. A source that writes \\\sum\_{i} x_i\\ means \\\sum\_{i=1}^{3} x_i\\:
>
> \\ \begin{aligned} \sum\_{i=1}^{3} x_i &= x_1 + x_2 + x_3 && \text{(definition of summation notation)} \\ &= 2 + 5 + 1 && \text{(substitute the values)} \\ &= 8 && \text{(add)} \end{aligned} \\

## 8 Why is notation in probability and statistics so inconsistent and disorganized?

In grad school, we are asked to learn from increasingly disorganized materials and lectures. Not coincidentally, as the amount of organization decreases, the amount of complexity increases, the amount of difficulty increases, the number of reliable references decreases, and the amount of inconsistency in notation and content increases (both between multiple references and within single references!). In other words, as you approach the cutting-edge of most fields, you start to run into content that hasn’t been fully thought through or standardized. This lack of clarity is unfortunate and undesirable, but it is understandable and inevitable.

It’s worth noting that calculus was formalized in the [1600s](https://en.wikipedia.org/wiki/Leibniz%27s_notation), elementary algebra was formalized around [820](https://en.wikipedia.org/wiki/Al-Jabr), and arithmetic [even earlier](https://en.wikipedia.org/wiki/Arithmetic#History). And calculus still has [several competing notation systems](https://en.wikipedia.org/wiki/Notation_for_differentiation). In contrast, the field of statistics only emerged in the [late 1800s and early 1900s](https://en.wikipedia.org/wiki/History_of_statistics#Development_of_modern_statistics), so it’s not surprising that the notation and terminology is still developing. Generalized linear models were only formalized in 1972 ([Nelder and Wedderburn 1972](#ref-nelder1972generalized)), which is very recent in terms of the [pace of scientific development](https://en.wikipedia.org/wiki/The_Structure_of_Scientific_Revolutions).

## 9 Further reading

For the logical symbols and proof conventions used in these notes:

- Velleman ([2019](#ref-velleman2019prove)) explains how mathematical statements are built from logical connectives ([Definition 11](#def-logical-connective)) and quantifiers ([Definition 12](#def-quantifier)), and how to read and write them.
- Barker-Plummer et al. ([2011](#ref-barkerplummer2011language)) covers the same symbols as a formal language, with propositional logic (the logic of connectives) and first-order logic (which adds quantifiers).

For set and function notation, see the [Sets and Functions](sets-functions.llms.md) page.

## References

Barker-Plummer, Dave, Jon Barwise, and John Etchemendy. 2011. *Language, Proof and Logic*. 2nd ed. CSLI Publications. <https://www.amazon.com/dp/1575866323>.

Nelder, John Ashworth, and Robert WM Wedderburn. 1972. “Generalized Linear Models.” *Journal of the Royal Statistical Society Series A: Statistics in Society* 135 (3): 370–84. <https://doi.org/10.2307/2344614>.

Rudin, Walter. 1976. *Principles of Mathematical Analysis*. 3rd ed. International Series in Pure and Applied Mathematics. McGraw-Hill.

Velleman, Daniel J. 2019. *How to Prove It: A Structured Approach*. 3rd ed. Cambridge University Press. <https://doi.org/10.1017/9781108539890>.

Back to top

## Footnotes

[^1]: depending on whether it is applied to a matrix or a function

[^2]: A generalized linear model (GLM) is a regression model in which a chosen function \\g\\, the link function, of the mean \\\mu\\ of the outcome equals the linear predictor \\\eta = x^{\top} \beta\\, a [linear combination](linear-algebra.llms.md#def-linear-combination) of the predictor values \\x\\ with coefficients \\\beta\\: \\g(\mu) = \eta\\.
