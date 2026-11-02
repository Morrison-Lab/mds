# Proof Writing

Code

Published

Last modified: 2026-11-01 18:29:48 (PST)

This page collects general advice on how to write [proofs](#def-proof) and [derivations](#def-derivation). The goal of a proof is not just to convince yourself that a [result](#def-result) is true; it is to convince a *reader*, and to show them *why* it is true. Each principle on this page serves that goal. The symbols for [logical entailment](#def-logical-entailment) are listed under [Definitions for proofs](#sec-proof-definitions) below.

## 0.1 Definitions for proofs

> **NOTE:**
>
> **Definition 1 (Proposition, statement)** A **proposition** [\[1\]](#ref-wikipedia_proposition), or **statement**, is a declarative sentence that is either true or false.

> **NOTE:**
>
> **Example 1 (Propositions, and a sentence that is not one)**  
>
> - “\\2 + 3 = 5\\” is a proposition, and it is true.
> - “\\7\\ is [even](number-systems.llms.md#def-even-odd)” is a proposition, and it is false.
> - “\\x \> 2\\” is not a proposition on its own: it is true when \\x = 3\\ and false when \\x = 1\\, so it has no truth value until \\x\\ is given a value.

> **NOTE:**
>
> **Definition 2 (Predicate)** A **predicate** [\[2\]](#ref-wikipedia_predicate_mathematical_logic) \\P(x)\\ is a declarative sentence about a variable \\x\\ that becomes a proposition ([Definition 1](#def-proposition)) whenever a value is substituted for \\x\\.

> **NOTE:**
>
> **Example 2 (A predicate)** Let \\P(x)\\ be the predicate “\\x \> 2\\”, for real numbers \\x\\.
>
> - \\P(3)\\ is the proposition “\\3 \> 2\\”, which is true.
> - \\P(1)\\ is the proposition “\\1 \> 2\\”, which is false.

> **NOTE:**
>
> **Definition 3 (Logical connective)** A **logical connective** [\[3\]](#ref-wikipedia_logical_connective) builds a new proposition ([Definition 1](#def-proposition)) from one or two propositions \\P\\ and \\Q\\, with a truth value that depends only on the truth values of \\P\\ and \\Q\\. These notes use five, each defined next: not, and, or, implies, and if and only if.

> **NOTE:**
>
> **Definition 4 (Not)** The logical connective ([Definition 3](#def-logical-connective)) **not** [\[4\]](#ref-wikipedia_negation) is written \\\neg P\\ (“not \\P\\”); it is true when \\P\\ is false, and false when \\P\\ is true.

> **NOTE:**
>
> **Example 3 (Negating a true and a false proposition)** Let \\P\\ be “\\5 \> 3\\”, which is true, and let \\Q\\ be “\\2 \> 3\\”, which is false.
>
> - \\\neg P\\, “it is not true that \\5 \> 3\\”, is false, because \\P\\ is true.
> - \\\neg Q\\, “it is not true that \\2 \> 3\\”, is true, because \\Q\\ is false.

> **NOTE:**
>
> **Definition 5 (And)** The logical connective ([Definition 3](#def-logical-connective)) **and** is written [\[5\]](#ref-wikipedia_logical_conjunction) \\P \land Q\\ (“\\P\\ and \\Q\\”); it is true when \\P\\ and \\Q\\ are both true, and false otherwise.

> **NOTE:**
>
> **Example 4 (Two propositions joined by “and”)** Let \\P\\ be “\\3 \< 5\\”, which is true, let \\Q\\ be “\\5 \< 4\\”, which is false, and let \\R\\ be “\\5 \< 7\\”, which is true.
>
> - \\P \land R\\ is true, because \\P\\ and \\R\\ are both true.
> - \\P \land Q\\ is false, because \\Q\\ is false.

> **NOTE:**
>
> **Definition 6 (Or)** The logical connective ([Definition 3](#def-logical-connective)) **or** is written [\[6\]](#ref-wikipedia_logical_disjunction) \\P \lor Q\\ (“\\P\\ or \\Q\\”); it is true when at least one of \\P\\ and \\Q\\ is true, and false when both are false.

> **NOTE:**
>
> **Example 5 (Two propositions joined by “or”)** Let \\P\\ be “\\3 \< 2\\”, which is false, let \\Q\\ be “\\5 \< 7\\”, which is true, and let \\R\\ be “\\5 \< 4\\”, which is false.
>
> - \\P \lor Q\\ is true, because \\Q\\ is true.
> - \\P \lor R\\ is false, because \\P\\ and \\R\\ are both false.

> **NOTE:**
>
> **Definition 7 (Implies)** The logical connective ([Definition 3](#def-logical-connective)) **implies** is written [\[7\]](#ref-wikipedia_material_conditional) \\P \Rightarrow Q\\ (“if \\P\\, then \\Q\\”, or “\\P\\ implies \\Q\\”); it is false when \\P\\ is true and \\Q\\ is false, and true otherwise.

> **NOTE:**
>
> **Example 6 (Implications with a true and a false premise)** Take \\x = 3\\.
>
> - \\x \> 2 \Rightarrow x \> 1\\ is true: the premise \\3 \> 2\\ is true and the conclusion \\3 \> 1\\ is true.
> - \\x \> 2 \Rightarrow x \> 4\\ is false: the premise \\3 \> 2\\ is true, but the conclusion \\3 \> 4\\ is false.
> - \\x \> 5 \Rightarrow x \> 4\\ is true: the premise \\3 \> 5\\ is false, so the implication is true whatever the conclusion.

> **NOTE:**
>
> **Definition 8 (If and only if)** The logical connective ([Definition 3](#def-logical-connective)) **if and only if** is written [\[8\]](#ref-wikipedia_logical_biconditional) \\P \Leftrightarrow Q\\ (“\\P\\ if and only if \\Q\\”); it is true when \\P\\ and \\Q\\ have the same truth value, and false otherwise.

> **NOTE:**
>
> **Example 7 (“If and only if” with equal and different truth values)** Take \\x = 4\\.
>
> - “\\x\\ is [even](number-systems.llms.md#def-even-odd) \\\Leftrightarrow x \> 3\\” is true: \\4\\ is even and \\4 \> 3\\, so both sides are true.
> - “\\x \> 3 \Leftrightarrow x \> 5\\” is false: \\4 \> 3\\ is true, but \\4 \> 5\\ is false.

> **NOTE:**
>
> **Example 8 (Truth values of connectives)** Let \\P\\ be “\\2 + 3 = 5\\”, which is true, and let \\Q\\ be “\\7\\ is [even](number-systems.llms.md#def-even-odd)”, which is false.
>
> - \\\neg Q\\, “\\7\\ is not even”, is true, because \\Q\\ is false.
> - \\P \land Q\\ is false, because \\Q\\ is false.
> - \\P \lor Q\\ is true, because \\P\\ is true.
> - \\P \Rightarrow Q\\ is false, because \\P\\ is true and \\Q\\ is false.
> - \\Q \Rightarrow P\\ is true, because \\Q\\ is false.
> - \\P \Leftrightarrow Q\\ is false, because \\P\\ and \\Q\\ have different truth values.

> **NOTE:**
>
> **Definition 9 (Truth table)** A **truth table** [\[9\]](#ref-wikipedia_truth_table) for a [proposition](#def-proposition) built from [propositions](#def-proposition) \\P_1, \ldots, P_n\\ with [logical connectives](#def-logical-connective) has one row for each of the \\2^n\\ combinations of truth values of \\P_1, \ldots, P_n\\, and gives the truth value of the proposition in each row.

> **NOTE:**
>
> **Example 9 (A truth table for \\P \Rightarrow Q\\)** The [proposition](#def-proposition) \\P \Rightarrow Q\\ is built from two [propositions](#def-proposition), so its [truth table](#def-truth-table) has \\2^2 = 4\\ rows. By the definition of [implies](#def-implies), \\P \Rightarrow Q\\ is false only in the row where \\P\\ is true and \\Q\\ is false:
>
> | \\P\\ | \\Q\\ | \\P \Rightarrow Q\\ |
> |:-----:|:-----:|:-------------------:|
> |   T   |   T   |          T          |
> |   T   |   F   |          F          |
> |   F   |   T   |          T          |
> |   F   |   F   |          T          |

> **NOTE:**
>
> **Definition 10 (Logically equivalent)** Two [propositions](#def-proposition) \\A\\ and \\B\\, each built from some or all of the propositions \\P_1, \ldots, P_n\\ with [logical connectives](#def-logical-connective), are **logically equivalent** [\[10\]](#ref-wikipedia_logical_equivalence), written \\A \equiv B\\, when they have the same truth value in every row of a [truth table](#def-truth-table) on \\P_1, \ldots, P_n\\.

> **NOTE:**
>
> **Example 10 (\\P \Rightarrow Q\\ is logically equivalent to \\\neg P \lor Q\\)** Adding a column for \\\neg P \lor Q\\ to the [truth table](#def-truth-table) of [Example 9](#exm-truth-table) gives:
>
> | \\P\\ | \\Q\\ | \\\neg P\\ | \\\neg P \lor Q\\ | \\P \Rightarrow Q\\ |
> |:-----:|:-----:|:----------:|:-----------------:|:-------------------:|
> |   T   |   T   |     F      |         T         |          T          |
> |   T   |   F   |     F      |         F         |          F          |
> |   F   |   T   |     T      |         T         |          T          |
> |   F   |   F   |     T      |         T         |          T          |
>
> The last two columns agree in every row, so \\(P \Rightarrow Q) \equiv (\neg P \lor Q)\\.

> **NOTE:**
>
> **Theorem 1 (De Morgan’s laws for propositions)** For any [propositions](#def-proposition) \\P\\ and \\Q\\ [\[11\]](#ref-wikipedia_de_morgans_laws):
>
> \\ \begin{aligned} \neg (P \land Q) &\equiv \neg P \lor \neg Q \\ \neg (P \lor Q) &\equiv \neg P \land \neg Q \end{aligned} \\

> **NOTE:**
>
> *Proof*. Each side of each law is built from \\P\\ and \\Q\\, so by [Definition 10](#def-logically-equivalent) it is enough to compare the two sides in each of the four rows of a [truth table](#def-truth-table):
>
> | \\P\\ | \\Q\\ | \\\neg (P \land Q)\\ | \\\neg P \lor \neg Q\\ | \\\neg (P \lor Q)\\ | \\\neg P \land \neg Q\\ |
> |:--:|:--:|:--:|:--:|:--:|:--:|
> | T | T | F | F | F | F |
> | T | F | T | T | F | F |
> | F | T | T | T | F | F |
> | F | F | T | T | T | T |
>
> The third and fourth columns agree in every row, which proves the first law, and the fifth and sixth columns agree in every row, which proves the second.

> **NOTE:**
>
> **Definition 11 (Quantifier)** A **quantifier** [\[12\]](#ref-wikipedia_quantifier_logic) turns a predicate \\P(x)\\ ([Definition 2](#def-predicate)) about the elements \\x\\ of a set \\S\\ into a proposition ([Definition 1](#def-proposition)). There are two, each defined next: the universal quantifier and the existential quantifier.

> **NOTE:**
>
> **Definition 12 (Universal quantifier)** The **universal quantifier** [\[13\]](#ref-wikipedia_universal_quantification) “for all” is a quantifier ([Definition 11](#def-quantifier)): \\\forall x \in S, P(x)\\ (“for every \\x\\ in \\S\\, \\P(x)\\”) is true when \\P(x)\\ is true for every element \\x\\ of \\S\\, and false otherwise.

> **NOTE:**
>
> **Example 11 (A universally quantified proposition)** Let \\P(x)\\ be the predicate “\\x\\ is [even](number-systems.llms.md#def-even-odd)”.
>
> - “\\\forall x \in \mathopen{}\left\\2, 4, 6\right\\\mathclose{}, P(x)\\” is true, because \\2\\, \\4\\, and \\6\\ are all even.
> - “\\\forall x \in \mathopen{}\left\\2, 3, 4\right\\\mathclose{}, P(x)\\” is false, because \\P(3)\\ is false.

> **NOTE:**
>
> **Definition 13 (Existential quantifier)** The **existential quantifier** [\[14\]](#ref-wikipedia_existential_quantification) “there exists” is a quantifier ([Definition 11](#def-quantifier)): \\\exists x \in S, P(x)\\ (“there is an \\x\\ in \\S\\ such that \\P(x)\\”) is true when \\P(x)\\ is true for at least one element \\x\\ of \\S\\, and false otherwise.

> **NOTE:**
>
> **Example 12 (An existentially quantified proposition)** Let \\P(x)\\ be the predicate “\\x\\ is [even](number-systems.llms.md#def-even-odd)”.
>
> - “\\\exists x \in \mathopen{}\left\\1, 2, 3\right\\\mathclose{}, P(x)\\” is true, because \\P(2)\\ is true.
> - “\\\exists x \in \mathopen{}\left\\1, 3, 5\right\\\mathclose{}, P(x)\\” is false, because none of \\1\\, \\3\\, and \\5\\ is even.

> **NOTE:**
>
> **Example 13 (Quantified propositions)** Let \\P(x)\\ be the predicate “\\x \> 2\\”, for [integers](number-systems.llms.md#def-integers) \\x\\.
>
> - “\\\exists x \in \mathopen{}\left\\1, 2, 3\right\\\mathclose{}, P(x)\\” is true, because \\P(3)\\ is true.
> - “\\\forall x \in \mathopen{}\left\\1, 2, 3\right\\\mathclose{}, P(x)\\” is false, because \\P(1)\\ is false.
> - “\\\forall x \in \mathopen{}\left\\3, 4, 5\right\\\mathclose{}, P(x)\\” is true, because \\3 \> 2\\, \\4 \> 2\\, and \\5 \> 2\\ are all true.

> **NOTE:**
>
> **Definition 14 (Inequality)** An **inequality** is a proposition ([Definition 1](#def-proposition)) or a predicate ([Definition 2](#def-predicate)) that compares two expressions \\a\\ and \\b\\ whose values are [real numbers](number-systems.llms.md#def-real-numbers), in one of the forms:
>
> - \\a \< b\\ (“\\a\\ is less than \\b\\”);
> - \\a \le b\\ (“\\a\\ is less than or equal to \\b\\”);
> - \\a \> b\\ (“\\a\\ is greater than \\b\\”);
> - \\a \ge b\\ (“\\a\\ is greater than or equal to \\b\\”).

> **NOTE:**
>
> **Example 14 (Inequalities)**  
>
> - “\\3 \< 5\\” is an inequality, and it is true.
> - “\\5 \le 3\\” is an inequality, and it is false.
> - “\\x \ge 2\\” is an inequality and a predicate: it is true when \\x = 2\\ and false when \\x = 1\\.
> - “\\x = 2\\” is not an inequality: it is an equality.

> **NOTE:**
>
> **Definition 15 (Logical entailment, logical consequence, deductive consequence)** Propositions or predicates \\P_1, \ldots, P_n\\ ([Definition 1](#def-proposition), [Definition 2](#def-predicate)) **logically entail** [\[15\]](#ref-wikipedia_logical_consequence) a proposition or predicate \\Q\\ when every choice of values for their variables that makes all of \\P_1, \ldots, P_n\\ true also makes \\Q\\ true. Then \\Q\\ is a **logical consequence**, or **deductive consequence**, of \\P_1, \ldots, P_n\\.

> **NOTE:**
>
> **Example 15 (Entailment, and its failure)** Let \\x\\ be an [integer](number-systems.llms.md#def-integers).
>
> - “\\x = 2\\” entails “\\x^2 = 4\\”: the only value that makes “\\x = 2\\” true is \\x = 2\\, and \\2^2 = 4\\.
> - “\\x \> 3\\” and “\\x \< 5\\” together entail “\\x = 4\\”: \\4\\ is the only integer greater than \\3\\ and less than \\5\\.
> - “\\x^2 = 4\\” does not entail “\\x = 2\\”: the value \\x = -2\\ makes “\\x^2 = 4\\” true, since \\(-2)^2 = 4\\, but makes “\\x = 2\\” false.

We can use any of:

- \\\therefore\\ (`\therefore` in LaTeX),
- \\\Rightarrow\\ (`\Rightarrow`),
- \\\models\\ (`\models`)

to denote logical entailment ([Definition 15](#def-logical-entailment)). \\\Rightarrow\\ also writes the connective “implies” ([Definition 7](#def-implies)); \\P\\ entails \\Q\\ exactly when \\P \Rightarrow Q\\ is true for every choice of values for the variables in \\P\\ and \\Q\\.

Let’s save \\\rightarrow\\ (`\rightarrow`) for [convergence](algebra-exponentials.llms.md#def-convergent-sequence) results.

> **NOTE:**
>
> **Definition 16 (Proof)** A **proof** [\[16\]](#ref-wikipedia_mathematical_proof) of a proposition ([Definition 1](#def-proposition)) is a finite list of statements that ends with that proposition, in which each statement is
>
> - an assumption,
> - a definition,
> - a previously proved result, or
> - a consequence of earlier statements in the list, by one rule of logic or algebra.

> **NOTE:**
>
> **Example 16 (The sum of two even integers is even)** Let \\a\\ and \\b\\ be even integers ([definition](number-systems.llms.md#def-even-odd)). Then \\a = 2j\\ and \\b = 2k\\ for some integers \\j\\ and \\k\\, and
>
> \\ \begin{aligned} a + b &= 2j + 2k && \text{(substitute } a = 2j \text{ and } b = 2k \text{)} \\ &= 2(j + k) && \text{(distributive law)} \end{aligned} \\
>
> The second line uses the [distributive law](algebra-sums.llms.md#def-distributive). Since \\j + k\\ is an integer, \\a + b\\ is even ([definition](number-systems.llms.md#def-even-odd)). For example,
>
> \\ \begin{aligned} 4 + 10 &= 2 \cdot 2 + 2 \cdot 5 \\ &= 2 \cdot 7 \\ &= 14. \end{aligned} \\

> **NOTE:**
>
> **Definition 17 (Derivation)** A **derivation** is a proof ([Definition 16](#def-proof)), or a part of one, written as a chain of expressions, one per line, in which each line is joined to the line before it by \\=\\ or by an inequality sign ([Definition 14](#def-inequality)), and carries an annotation that names the reason that step holds: an assumption, a definition, a previously proved result, or a rule of algebra.

> **NOTE:**
>
> **Example 17 (A derivation with equalities and inequalities)** For every real number \\x\\:
>
> \\ \begin{aligned} (x + 1)^2 &= x^2 + 2x + 1 && \text{(square of a sum)} \\ &\ge 2x + 1 && \text{(} x^2 \ge 0 \text{)} \\ &\> 2x && \text{(} 1 \> 0 \text{)} \end{aligned} \\
>
> The first step uses the [square of a sum](algebra-sums.llms.md#thm-square-of-a-sum). The steps are \\=\\, \\\ge\\, and \\\>\\, so the derivation shows \\(x + 1)^2 \> 2x\\. For example, with \\x = 3\\: \\(3 + 1)^2 = 16\\, and \\16 \> 6 = 2 \cdot 3\\.

> **NOTE:**
>
> **Theorem 2 (What a derivation shows)** Consider a derivation ([Definition 17](#def-derivation)) with expressions \\E_0, E_1, \ldots, E_n\\, where each line \\E_j\\ is joined to the line \\E\_{j-1}\\ before it by \\=\\, \\\le\\ or \\\<\\.
>
> 1.  If every step is \\=\\, then \\E_0 = E_n\\.
> 2.  If every step is \\=\\ or \\\le\\, then \\E_0 \le E_n\\.
> 3.  If every step is \\=\\, \\\le\\, or \\\<\\, and at least one step is \\\<\\, then \\E_0 \< E_n\\.
>
> The same holds with \\\ge\\ and \\\>\\ in place of \\\le\\ and \\\<\\.

> **NOTE:**
>
> *Proof*. First, a fact about two steps in a row. For numbers \\a\\, \\b\\ and \\c\\, if \\a \mathrel{R} b\\ and \\b \mathrel{S} c\\, where \\R\\ and \\S\\ are each one of \\=\\, \\\le\\ and \\\<\\, then \\a \mathrel{T} c\\, where \\T\\ is
>
> - \\\<\\ if \\R\\ or \\S\\ is \\\<\\;
> - otherwise \\\le\\ if \\R\\ or \\S\\ is \\\le\\;
> - otherwise \\=\\.
>
> This holds in each case:
>
> - If \\R\\ and \\S\\ are both \\=\\, then \\a = c\\ ([equalities are transitive](algebra-basics.llms.md#thm-equal-trans)).
> - If exactly one of \\R\\ and \\S\\ is \\=\\, replace \\b\\ by the equal expression in the other relation ([substitution](algebra-basics.llms.md#thm-substitution)). This gives the other relation between \\a\\ and \\c\\.
> - If neither is \\=\\, then each of \\a \mathrel{R} b\\ and \\b \mathrel{S} c\\ is \\\le\\ or \\\<\\, and \\\le\\ means \\\<\\ or \\=\\ ([strict](algebra-basics.llms.md#def-strict-inequality) and [non-strict inequalities](algebra-basics.llms.md#def-non-strict-inequality)). A case with an \\=\\ is covered by the previous bullet, and the remaining case is \\a \< b\\ and \\b \< c\\, which gives \\a \< c\\ because \\\<\\ is transitive on the real numbers. So two steps that are each \\\le\\ or \\\<\\ give \\\<\\ if either is \\\<\\, and otherwise \\\le\\.
>
> Now let \\T_j\\ be the relation named by the same rule applied to the first \\j\\ steps of the chain, with \\T_0\\ being \\=\\. We show \\E_0 \mathrel{T_j} E_j\\ by induction on \\j\\. For \\j = 0\\, \\E_0 = E_0\\. If \\E_0 \mathrel{T_j} E_j\\, then the step from \\E_j\\ to \\E\_{j+1}\\ and the fact above give \\E_0 \mathrel{T\_{j+1}} E\_{j+1}\\. At \\j = n\\, \\T_n\\ is \\=\\ when every step is \\=\\, which is part 1. It is \\\le\\ or \\=\\ when every step is \\=\\ or \\\le\\, and \\=\\ implies \\\le\\, which is part 2. It is \\\<\\ when some step is \\\<\\, which is part 3.
>
> The argument for \\\ge\\ and \\\>\\ is the same with the inequalities reversed.

> **NOTE:**
>
> **Example 18 (Checking a derivation line by line)** The derivation in [Example 17](#exm-derivation) has the steps \\=\\, \\\ge\\ and \\\>\\, so by [Theorem 2](#thm-derivation-chain) it shows \\(x + 1)^2 \> 2x\\. The code evaluates the four lines of that derivation at several values of \\x\\, and checks each step and the comparison of the first line with the last.
>
> ``` downlit
> x <- c(-3, -1, 0, 2, 3)
> lines <- data.frame(
>   x = x,
>   line_0 = (x + 1)^2,
>   line_1 = x^2 + 2 * x + 1,
>   line_2 = 2 * x + 1,
>   line_3 = 2 * x
> )
> steps <- with(
>   lines,
>   data.frame(
>     x = x,
>     step_1_equal = line_0 == line_1,
>     step_2_geq = line_1 >= line_2,
>     step_3_greater = line_2 > line_3,
>     first_greater_than_last = line_0 > line_3
>   )
> )
> lines
> ```
>
> ``` downlit
> steps
> ```
>
> At all 5 values of \\x\\, the three steps hold in 5, 5 and 5 cases, and the first line exceeds the last in 5 cases, as [Theorem 2](#thm-derivation-chain) says. At \\x = 0\\, for example, the first line is 1 and the last is 0.

> **NOTE:**
>
> **Definition 18 (Result)** A **result** is a proposition ([Definition 1](#def-proposition)) that has a proof ([Definition 16](#def-proof)). These notes label each result by its role: as a theorem, a lemma, or a corollary, each defined next.

> **NOTE:**
>
> **Example 19 (A proposition that is a result, and one that is not)** “\\2 + 3 = 5\\” is a proposition ([Definition 1](#def-proposition)) that has a proof, the computation of \\2 + 3\\, so it is a result. “\\7\\ is [even](number-systems.llms.md#def-even-odd)” is a proposition that is false, so it has no proof and is not a result.

> **NOTE:**
>
> *Remark 1* (“Proposition” as a kind of result). Some sources also call a result of moderate importance a “proposition”. In these notes, “proposition” always means a sentence that is true or false ([Definition 1](#def-proposition)), whether or not it has been proved.

> **NOTE:**
>
> **Definition 19 (Theorem)** A **theorem** [\[17\]](#ref-wikipedia_theorem) is a result ([Definition 18](#def-result)) of interest in its own right.

> **NOTE:**
>
> **Example 20 (A theorem)** “The sum of two even integers is even” is a result: [Example 16](#exm-proof) proves it. It is of interest in its own right, since it applies whenever two even integers are added, as in \\2 + 4 = 6\\, so it is a theorem.

> **NOTE:**
>
> **Definition 20 (Lemma)** A **lemma** [\[18\]](#ref-wikipedia_lemma_mathematics) is a result ([Definition 18](#def-result)) proved mainly as a step in the proof of another result.

> **NOTE:**
>
> **Example 21 (A lemma in the proof of a larger result)** To show that the sum of four even integers \\a\\, \\b\\, \\c\\, and \\d\\ is even, write \\a + b + c + d = (a + b) + (c + d)\\. By the result of [Example 16](#exm-proof), \\a + b\\ and \\c + d\\ are even, and applying that result again to these two sums shows that their sum is even. Here that result is proved mainly as a step in the proof of another result, so it serves as a lemma. For example, \\2 + 4 + 6 + 8 = (2 + 4) + (6 + 8) = 6 + 14 = 20\\, which is even.

> **NOTE:**
>
> **Definition 21 (Corollary)** A **corollary** [\[19\]](#ref-wikipedia_corollary) is a result ([Definition 18](#def-result)) that follows from a theorem with little extra work.

> **NOTE:**
>
> **Example 22 (A corollary of a result)** [Example 16](#exm-proof) proves the result “the sum of two even integers is even”. A corollary follows with little extra work: the sum of three even integers \\a\\, \\b\\, and \\c\\ is even, because \\a + b + c = (a + b) + c\\, \\a + b\\ is even by that result, and applying the result again to the even integers \\a + b\\ and \\c\\ shows that \\(a + b) + c\\ is even. For example,
>
> \\ \begin{aligned} 2 + 4 + 6 &= (2 + 4) + 6 \\ &= 6 + 6 \\ &= 12, \end{aligned} \\
>
> which is even.

> **NOTE:**
>
> **Definition 22 (Counterexample)** A **counterexample** [\[20\]](#ref-wikipedia_counterexample) to a proposition of the form “for every \\x\\ in \\A\\, \\P(x)\\”, where \\P(x)\\ is a predicate ([Definition 2](#def-predicate)), is an element \\x\\ of \\A\\ for which \\P(x)\\ is false. A single counterexample shows that the proposition is false.

> **NOTE:**
>
> **Example 23 (A counterexample)** The proposition “for every integer \\n\\, \\n + n \> n\\” is false. The integer \\n = 0\\ is a counterexample: \\0 + 0 = 0\\, and \\0 \> 0\\ is false. The proposition is true for some integers, such as \\n = 3\\, since \\3 + 3 = 6 \> 3\\, but one counterexample is enough to make it false.

> **NOTE:**
>
> **Definition 23 (Converse)** The **converse** [\[21\]](#ref-wikipedia_converse_logic) of the proposition “if \\P\\, then \\Q\\” is the proposition “if \\Q\\, then \\P\\”.

> **NOTE:**
>
> **Example 24 (A true proposition with a false converse)** For an integer \\n\\, call \\n\\ a multiple of \\4\\ if \\n = 4k\\ for some integer \\k\\.
>
> - “If \\n\\ is a multiple of \\4\\, then \\n\\ is even” is true:
>
>   \\ \begin{aligned} n &= 4k \\ &= 2 \cdot(2k), \end{aligned} \\
>
>   and \\2k\\ is an integer.
>
> - Its converse, “if \\n\\ is even, then \\n\\ is a multiple of \\4\\”, is false. The integer \\n = 2\\ is a counterexample ([Definition 22](#def-counterexample)): \\2\\ is even, but \\2 = 4k\\ only for \\k = \frac{1}{2}\\, which is not an integer.
>
> So a proposition can be true while its converse is false.

> **NOTE:**
>
> **Definition 24 (Contrapositive)** The **contrapositive** [\[22\]](#ref-wikipedia_contraposition) of the [proposition](#def-proposition) “if \\P\\, then \\Q\\” is the proposition “if \\\neg Q\\, then \\\neg P\\”.

> **NOTE:**
>
> **Theorem 3 (A conditional is equivalent to its contrapositive)** For any [propositions](#def-proposition) \\P\\ and \\Q\\,
>
> \\ (P \Rightarrow Q) \equiv (\neg Q \Rightarrow \neg P). \\

> **NOTE:**
>
> *Proof*. By the definition of [implies](#def-implies), \\P \Rightarrow Q\\ is false exactly when \\P\\ is true and \\Q\\ is false. By the same definition, \\\neg Q \Rightarrow \neg P\\ is false exactly when \\\neg Q\\ is true and \\\neg P\\ is false, that is, exactly when \\Q\\ is false and \\P\\ is true. So the two [propositions](#def-proposition) are false in the same row of a [truth table](#def-truth-table) and true in the other three, which is [Definition 10](#def-logically-equivalent).

> **NOTE:**
>
> **Example 25 (The contrapositive versus the converse)** The [proposition](#def-proposition) “if \\n\\ is a multiple of \\4\\, then \\n\\ is even” from [Example 24](#exm-converse) has:
>
> - converse ([Definition 23](#def-converse)): “if \\n\\ is even, then \\n\\ is a multiple of \\4\\”, which is false;
> - contrapositive ([Definition 24](#def-contrapositive)): “if \\n\\ is not even, then \\n\\ is not a multiple of \\4\\”, which is true, by [Theorem 3](#thm-contrapositive), because the original proposition is true.

> **NOTE:**
>
> **Definition 25 (Sufficient condition)** When the proposition “if \\P\\, then \\Q\\” is true, \\P\\ is a **sufficient condition** [\[23\]](#ref-wikipedia_necessity_and_sufficiency) for \\Q\\.

> **NOTE:**
>
> **Example 26 (A sufficient condition)** For a real number \\x\\, “if \\x \> 5\\, then \\x \> 2\\” is true, because a number greater than \\5\\ is greater than \\2\\. So \\x \> 5\\ is a sufficient condition for \\x \> 2\\: knowing that \\x = 6\\ satisfies \\x \> 5\\ is enough to conclude that \\6 \> 2\\.

> **NOTE:**
>
> **Definition 26 (Necessary condition)** When the proposition “if \\P\\, then \\Q\\” is true, \\Q\\ is a **necessary condition** [\[23\]](#ref-wikipedia_necessity_and_sufficiency) for \\P\\.

> **NOTE:**
>
> **Example 27 (A necessary condition)** For an integer \\n\\, “if \\n\\ is a multiple of \\6\\, then \\n\\ is a multiple of \\3\\” is true, because \\6k = 3 \cdot(2k)\\ for every integer \\k\\. So being a multiple of \\3\\ is a necessary condition for being a multiple of \\6\\: \\12 = 6 \cdot 2\\ is a multiple of \\6\\, and it is also a multiple of \\3\\, since \\12 = 3 \cdot 4\\.

> **NOTE:**
>
> **Definition 27 (Necessary and sufficient condition)** When both “if \\P\\, then \\Q\\” and its converse ([Definition 23](#def-converse)) are true, \\P\\ is a **necessary and sufficient condition** [\[23\]](#ref-wikipedia_necessity_and_sufficiency) for \\Q\\ ([Definition 25](#def-sufficient-condition), [Definition 26](#def-necessary-condition)), written “\\P\\ if and only if \\Q\\”.

> **NOTE:**
>
> **Example 28 (Necessary but not sufficient)** In [Example 24](#exm-converse), “if \\n\\ is a multiple of \\4\\, then \\n\\ is even” is true, so:
>
> - being a multiple of \\4\\ is a sufficient condition for \\n\\ to be even;
> - being even is a necessary condition for \\n\\ to be a multiple of \\4\\.
>
> Being even is not a sufficient condition for being a multiple of \\4\\: \\n = 2\\ is even, but not a multiple of \\4\\.

> **NOTE:**
>
> **Definition 28 (Proof by contradiction)** A **proof by contradiction** [\[24\]](#ref-wikipedia_proof_by_contradiction) of a proposition \\P\\ assumes that \\P\\ is false, and derives from that assumption a proposition that is known to be false.

> **NOTE:**
>
> **Example 29 (No integer is both even and odd)** Suppose, for contradiction, that some integer \\n\\ is both even and odd ([definition](number-systems.llms.md#def-even-odd)). Then \\n = 2j\\ and \\n = 2k + 1\\ for some integers \\j\\ and \\k\\, and
>
> \\ \begin{aligned} 2j &= 2k + 1 && \text{(both equal } n \text{)} \\ 2j - 2k &= 1 && \text{(subtract } 2k \text{ from both sides)} \\ 2(j - k) &= 1 && \text{(distributive law)} \\ j - k &= \tfrac{1}{2} && \text{(divide both sides by } 2 \text{)} \end{aligned} \\
>
> The third line uses the [distributive law](algebra-sums.llms.md#def-distributive). But \\j - k\\ is an integer, and \\\frac{1}{2}\\ is not, so the last line is false. So no integer is both even and odd. For example, \\6 = 2 \cdot 3\\ is even, and \\6 = 2k + 1\\ would need \\k = 2.5\\, which is not an integer.

> **NOTE:**
>
> **Theorem 4 (A proof by contradiction proves its proposition)** Let \\P\\ and \\Q\\ be propositions ([Definition 1](#def-proposition)). If \\\neg P \Rightarrow Q\\ is true and \\Q\\ is false, then \\P\\ is true.

> **NOTE:**
>
> *Proof*. By [Definition 7](#def-implies), \\\neg P \Rightarrow Q\\ is false only when \\\neg P\\ is true and \\Q\\ is false. Here \\Q\\ is false, and \\\neg P \Rightarrow Q\\ is true, so \\\neg P\\ is not true. Then \\\neg P\\ is false. Since \\\neg P\\ is true whenever \\P\\ is false, \\P\\ must be true.

> **NOTE:**
>
> **Example 30 (A truth table for a proof by contradiction)** There are only four ways to assign truth values to \\P\\ and \\Q\\. The code lists them, with the truth value of \\\neg P \Rightarrow Q\\, and marks the rows where \\\neg P \Rightarrow Q\\ is true and \\Q\\ is false.
>
> ``` downlit
> tt <- expand.grid(Q = c(TRUE, FALSE), P = c(TRUE, FALSE))
> tt$not_P_implies_Q <- !(!tt$P) | tt$Q
> tt$hypotheses_hold <- tt$not_P_implies_Q & !tt$Q
> tt
> ```
>
> The hypotheses of [Theorem 4](#thm-proof-by-contradiction) hold in 1 of the 4 rows, and in 1 of them \\P\\ is true. So whenever the hypotheses hold, \\P\\ is true.

## 0.2 Don’t skip steps

Show every step of the [derivation](#def-derivation). Each line should follow from the previous line by a single, identifiable move:

- applying a definition,
- substituting a known [result](#def-result), or
- performing one algebraic operation.

When you skip steps, you force the reader to reconstruct your reasoning, which is exactly the work the proof was supposed to do *for* them. A step that feels “obvious” while you are writing it is often the step a reader gets stuck on. Phrases like “it can be shown that” or “clearly” usually mark a skipped step; show the step instead.

## 0.3 Annotate each step

For each step, note the definition, [theorem](#def-theorem), or algebraic rule that justifies it. A brief annotation to the right of the line is usually enough. Annotations make the proof checkable, and they teach the reader which tool to reach for next time.

For example, here is a derivation that the [hat matrix](linear-algebra-projections.llms.md#def-hat-matrix) \\\mathbf{H} = \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\\ is [idempotent](linear-algebra-special-matrices.llms.md#def-idempotent-matrix), \\\mathbf{H}^2 = \mathbf{H}\\, with each step annotated:

\\ \begin{aligned} \mathbf{H}^2 &= \mathbf{H}\mathbf{H} && \text{(definition of a matrix power)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\\\mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(definition of } \mathbf{H} \text{)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}({\mathbf{X}}^{\top}\mathbf{X})({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(regroup; matrix multiplication is associative)} \\ &= \mathbf{X}\\\mathbf{I}\_p\\({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(a matrix inverse times the matrix is } \mathbf{I}\_p \text{)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(the identity matrix changes nothing)} \\ &= \mathbf{H} && \text{(definition of } \mathbf{H} \text{)} \end{aligned} \\

The [Linear Algebra](linear-algebra-projections.llms.md#thm-hat-matrix) page uses this derivation to show that \\\mathbf{H}\\ is a [projection matrix](linear-algebra-special-matrices.llms.md#def-projection-matrix). The probability notes derive the variance identity \\{\operatorname{Var}\mathopen{}\left(X\right)\mathclose{}} = {\mathbb{E}\mathopen{}\left\[X^2\right\]\mathclose{}} - {\mathopen{}\left({\mathbb{E}\mathopen{}\left\[X\right\]\mathclose{}}\right)\mathclose{}}^{2}\\ [in the same annotated style](https://morrison-lab.github.io/pds/variance-covariance.html#thm-variance).

## 0.4 Direct proof

> **NOTE:**
>
> **Definition 29 (Direct proof)** A **direct proof** [\[25\]](#ref-wikipedia_direct_proof) of a [proposition](#def-proposition) \\Q\\ starts from the assumptions that \\Q\\ is stated under, if any, and reaches \\Q\\ through a chain of steps, each of which applies a definition, a previously proved [result](#def-result), or one rule of logic or algebra to the assumptions or to earlier steps. A direct proof never assumes that \\Q\\ is false; compare [proof by contradiction](#def-proof-by-contradiction), which does.

> **NOTE:**
>
> **Example 31 (The square of an odd integer is odd)** Claim: if \\n\\ is an [odd](number-systems.llms.md#def-odd) [integer](number-systems.llms.md#def-integers), then \\n^2\\ is odd.
>
> Since \\n\\ is odd, there is an integer \\k\\ with \\n = 2k + 1\\. Then
>
> \\ \begin{aligned} n^2 &= (2k + 1)^2 && \text{(substitute } n = 2k + 1 \text{)} \\&= (2k)^2 + 2 \cdot 2k \cdot 1 + 1^2 && \text{(square of a sum)} \\&= 4k^2 + 4k + 1 && \text{(arithmetic)} \\&= 2(2k^2 + 2k) + 1 && \text{(distributive law, read from right to left)} \end{aligned} \\
>
> and \\2k^2 + 2k\\ is an integer, because adding or multiplying [integers](number-systems.llms.md#def-integers) gives an integer. So \\n^2 = 2 \cdot(\text{an integer}) + 1\\, which is the definition of odd. For example,
>
> \\ \begin{aligned} n &= 7 \\ &= 2 \cdot 3 + 1 \end{aligned} \\
>
> gives
>
> \\ \begin{aligned} n^2 &= 49 \\ &= 2 \cdot 24 + 1, \end{aligned} \\
>
> and \\2 \cdot 3^2 + 2 \cdot 3 = 24\\.
>
> The proof above that [the sum of two even integers is even](#exm-proof) is also a [direct proof](#def-direct-proof).

## 0.5 Proof by contrapositive

> **NOTE:**
>
> **Definition 30 (Proof by contrapositive)** A **proof by contrapositive** [\[22\]](#ref-wikipedia_contraposition) of a [proposition](#def-proposition) “if \\P\\, then \\Q\\” is a [direct proof](#def-direct-proof) of its [contrapositive](#def-contrapositive), “if \\\neg Q\\, then \\\neg P\\”: it assumes that \\Q\\ is false and reaches the conclusion that \\P\\ is false. By [Theorem 3](#thm-contrapositive), proving the contrapositive proves the original proposition.

> **NOTE:**
>
> **Example 32 (If \\x^2 + 3x \< 0\\, then \\x \< 0\\)** Claim: for every [real number](number-systems.llms.md#def-real-numbers) \\x\\, if \\x^2 + 3x \< 0\\, then \\x \< 0\\.
>
> A [direct proof](#def-direct-proof) would have to start from the [inequality](#def-inequality) \\x^2 + 3x \< 0\\, which says little about \\x\\ on its own. The contrapositive ([Definition 24](#def-contrapositive)) is “if \\x \ge 0\\, then \\x^2 + 3x \ge 0\\”, and its assumption is easier to use.
>
> Suppose \\x \ge 0\\. Then \\x^2 = x \cdot x \ge 0\\, because a product of two nonnegative numbers is nonnegative, and \\3x \ge 0\\, because \\3 \> 0\\ and \\x \ge 0\\. So
>
> \\ \begin{aligned} x^2 + 3x &\ge 0 + 0 && \text{(add the inequalities } x^2 \ge 0 \text{ and } 3x \ge 0 \text{)} \\&= 0. && \text{(arithmetic)} \end{aligned} \\
>
> That proves the contrapositive, so by [Theorem 3](#thm-contrapositive) the claim holds. For example, \\x = -1\\ gives \\x^2 + 3x = 1 - 3 = -2 \< 0\\, and indeed \\x \< 0\\.

## 0.6 Proof by cases

> **NOTE:**
>
> **Definition 31 (Proof by cases, proof by exhaustion)** A **proof by cases** [\[26\]](#ref-wikipedia_proof_by_exhaustion), also called a **proof by exhaustion**, of a [proposition](#def-proposition) \\Q\\ lists [propositions](#def-proposition) \\C_1, \ldots, C_k\\, the *cases*, shows that at least one of them is true, and proves \\C_i \Rightarrow Q\\ for each \\i\\.

> **NOTE:**
>
> **Example 33 (The square of a real number is nonnegative)** Claim: for every [real number](number-systems.llms.md#def-real-numbers) \\x\\, \\x^2 \ge 0\\.
>
> Every real number \\x\\ satisfies \\x \ge 0\\ or \\x \< 0\\, so these two cases cover every \\x\\.
>
> **Case 1: \\x \ge 0\\.** Then \\x^2 = x \cdot x\\ is a product of two nonnegative numbers, so \\x^2 \ge 0\\.
>
> **Case 2: \\x \< 0\\.** Then \\-x \> 0\\, and
>
> \\ \begin{aligned} x^2 &= x \cdot x && \text{(definition of } x^2 \text{)} \\&= (-x) \cdot(-x) && \text{(the two minus signs cancel)} \end{aligned} \\
>
> is a product of two positive numbers, so \\x^2 \> 0\\, and in particular \\x^2 \ge 0\\.
>
> The claim holds in both cases, so it holds for every real number \\x\\.

## 0.7 Follow the golden rule

In general, follow the golden rule: treat your readers the way you want to be treated as a reader.

When you read someone else’s proof, you want to be able to follow every step without guessing, to know which [result](#def-result) is being used at each line, and to never be left wondering where a quantity came from. Write your own [proofs](#def-proof) to meet that same standard.

## 0.8 Proof by induction

Many proofs in these notes show that a statement holds for every [natural number](number-systems.llms.md#def-natural-numbers) \\n\\, or for every integer \\n\\ from some starting value on. Checking the statement one \\n\\ at a time would never finish; induction proves it for all of them with two arguments.

> **NOTE:**
>
> **Definition 32 (Proof by induction)** Let \\n_0\\ be an [integer](number-systems.llms.md#def-integers), and let \\P(n)\\ be a [predicate](proof-writing.llms.md#def-predicate) about the integers \\n \ge n_0\\. A **proof by induction** [\[27\]](#ref-wikipedia_mathematical_induction) on \\n\\ shows that \\P(n)\\ holds for every integer \\n \ge n_0\\ by showing two things:
>
> 1.  **Base case:** \\P(n_0)\\ holds.
> 2.  **Inductive step:** for every integer \\n \> n_0\\, if \\P(n - 1)\\ holds, then \\P(n)\\ holds.
>
> In the inductive step, the assumption that \\P(n - 1)\\ holds is called the **induction hypothesis**.

> **NOTE:**
>
> *Remark 2* (Why the two steps suffice). The base case gives \\P(n_0)\\. The inductive step with \\n = n_0 + 1\\ then gives \\P(n_0 + 1)\\, with \\n = n_0 + 2\\ it gives \\P(n_0 + 2)\\, and so on: each integer \\n \ge n_0\\ is reached after \\n - n_0\\ uses of the inductive step.
>
> When \\P(n)\\ is needed only for \\n_0 \le n \le r\\, it is enough to show the inductive step for \\n_0 \< n \le r\\; the same chain then stops at \\P(r)\\.

The following example uses [summation notation](algebra-sums.llms.md#def-summation).

> **NOTE:**
>
> **Example 34 (Sum of the first \\n\\ natural numbers)** For every \\n \in \mathbb{N}\\,
>
> \\ \sum\_{i=1}^ni = \frac{n(n+1)}{2}. \\
>
> For example, with \\n = 3\\, \\1 + 2 + 3 = 6\\ and \\\frac{3 \cdot 4}{2} = 6\\. To prove the equation for every \\n\\, let \\P(n)\\ be the equation and use [Definition 32](#def-proof-by-induction) with \\n_0 = 1\\.
>
> **Base case, \\n = 1\\.** The sum has one term:
>
> \\ \begin{aligned} \sum\_{i=1}^{1} i &= 1 && \text{(definition of a sum)} \end{aligned} \\
>
> and the right side is
>
> \\ \begin{aligned} \frac{1\\(1+1)}{2} &= \frac{1 \cdot 2}{2} && \text{(} 1 + 1 = 2 \text{)} \\ &= \frac{2}{2} && \text{(} 1 \cdot 2 = 2 \text{)} \\ &= 1. && \text{(} \tfrac{2}{2} = 1 \text{)} \end{aligned} \\
>
> So \\P(1)\\ holds.
>
> **Inductive step.** Let \\n \ge 2\\, and suppose \\P(n - 1)\\ holds:
>
> \\ \sum\_{i=1}^{n-1} i = \frac{(n-1)\\\mathopen{}\left((n-1)+1\right)\mathclose{}}{2}. \\
>
> Then
>
> \\ \begin{aligned} \sum\_{i=1}^ni &= 1 + 2 + \cdots + (n-1) + n && \text{(definition of a sum)} \\ &= \mathopen{}\left(1 + 2 + \cdots + (n-1)\right)\mathclose{} + n && \text{(associative law)} \\ &= \sum\_{i=1}^{n-1} i + n && \text{(definition of a sum)} \\ &= \frac{(n-1)\\\mathopen{}\left((n-1)+1\right)\mathclose{}}{2} + n && \text{(induction hypothesis)} \\ &= \frac{(n-1)\\n}{2} + n && \text{(} (n-1) + 1 = n \text{)} \\ &= \frac{(n-1)\\n}{2} + \frac{2n}{2} && \text{(} n = \tfrac{2n}{2} \text{)} \\ &= \frac{(n-1)\\n + 2n}{2} && \text{(common denominator)} \\ &= \frac{\mathopen{}\left((n-1) + 2\right)\mathclose{}\\n}{2} && \text{(distributive law)} \\ &= \frac{(n+1)\\n}{2} && \text{(} (n-1) + 2 = n + 1 \text{)} \\ &= \frac{n(n+1)}{2}, && \text{(commutative law)} \end{aligned} \\
>
> which is \\P(n)\\. By [Definition 32](#def-proof-by-induction), the equation holds for every \\n \in \mathbb{N}\\.

## 0.9 Formal logic

> **NOTE:**
>
> **Definition 33 (Propositional logic)** **Propositional logic** [\[28\]](#ref-wikipedia_propositional_calculus) is the study of [logical entailment](#def-logical-entailment) among [propositions](#def-proposition) built from basic propositions \\P, Q, R, \ldots\\ using only the [logical connectives](#def-logical-connective). Whether such propositions entail one another depends only on the truth values of the basic propositions, not on what the basic propositions say.

> **NOTE:**
>
> **Example 35 (\\P\\ and \\P \Rightarrow Q\\ entail \\Q\\)** Suppose \\P\\ is true and \\P \Rightarrow Q\\ is true. If \\Q\\ were false, then \\P \Rightarrow Q\\ would have a true \\P\\ and a false \\Q\\, so \\P \Rightarrow Q\\ would be false, which contradicts the assumption. So \\Q\\ is true. This holds whatever \\P\\ and \\Q\\ say, so \\P\\ and \\P \Rightarrow Q\\ [logically entail](#def-logical-entailment) \\Q\\.

> **NOTE:**
>
> **Definition 34 (First-order logic)** **First-order logic** [\[29\]](#ref-wikipedia_first_order_logic) extends propositional logic ([Definition 33](#def-propositional-logic)) by also allowing:
>
> - variables \\x, y, \ldots\\ that stand for elements of a [set](sets.llms.md#def-set);
> - [predicates](#def-predicate) of one or more of those variables, such as \\P(x)\\ or \\x \< y\\;
> - [functions](functions.llms.md#def-function) of them, such as \\x + y\\;
> - equality between them;
> - [quantifiers](#def-quantifier) \\\forall\\ and \\\exists\\ over them.

> **NOTE:**
>
> **Example 36 (From “for all” to one element)** Let \\P(x)\\ be a [predicate](#def-predicate) about the elements of a [set](sets.llms.md#def-set) \\S\\, and let \\a \in S\\. The [propositions](#def-proposition) \\\forall x \in S, P(x)\\ and \\a \in S\\ [logically entail](#def-logical-entailment) \\P(a)\\: if \\P(x)\\ is true for every element \\x\\ of \\S\\, then it is true for the element \\a\\. For example, \\\forall x \in \mathbb{Z}, x^2 \ge 0\\ entails \\3^2 \ge 0\\. [Propositional logic](#def-propositional-logic) alone cannot express this entailment, because it has no way to refer to the elements of \\S\\.

> **NOTE:**
>
> **Definition 35 (Formal proof)** A **formal proof** [\[30\]](#ref-wikipedia_formal_proof) is a [proof](#def-proof) written in propositional logic ([Definition 33](#def-propositional-logic)) or first-order logic ([Definition 34](#def-first-order-logic)) in which each step is an assumption or follows from earlier steps by one rule taken from a fixed list of allowed rules, so that checking the proof needs no understanding of what its [propositions](#def-proposition) say.

> **NOTE:**
>
> **Example 37 (A three-step formal proof)** Suppose the allowed rules include “from \\P\\ and \\P \Rightarrow Q\\, conclude \\Q\\”. Then this is a [formal proof](#def-formal-proof) of \\Q\\ from the assumptions \\P\\ and \\P \Rightarrow Q\\:
>
> 1.  \\P\\ (assumption)
> 2.  \\P \Rightarrow Q\\ (assumption)
> 3.  \\Q\\ (from steps 1 and 2, by the rule above)

## 0.10 Further reading

- Velleman [\[31\]](#ref-velleman2019prove) is a structured introduction to proof techniques such as [direct proof](#def-direct-proof), [proof by contradiction](proof-writing.llms.md#def-proof-by-contradiction), and induction.
- Barker-Plummer et al. [\[32\]](#ref-barkerplummer2011language) treats proofs as [formal proofs](#def-formal-proof) in [propositional logic](#def-propositional-logic) and [first-order logic](#def-first-order-logic).

Free course materials on formal logic:

- Thomas Icard’s [Phil 150/250, Mathematical Logic course notes](https://web.stanford.edu/~icard/phil150) (Stanford) review sets, relations and functions, then cover propositional, modal and first-order logic.
- John Wilcox’s [logic handouts](https://www.johnwilcox.org/logic.html) supplement the same Stanford course, with a handout per week on the syntax and semantics of propositional and first-order logic, natural deduction and metalogic.
- Eric Pacuit’s [Phil 151: First Order Logic](https://cs.stanford.edu/~epacuit/classes/phil151winter09.html) (Stanford, Winter 2009) posts a syllabus, a modal logic study guide and problem sets.

## References

\[1\]

Wikipedia contributors, “Proposition — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Proposition>

\[2\]

Wikipedia contributors, “Predicate (mathematical logic) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Predicate_(mathematical_logic)>

\[3\]

Wikipedia contributors, “Logical connective — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Logical_connective>

\[4\]

Wikipedia contributors, “Negation — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Negation>

\[5\]

Wikipedia contributors, “Logical conjunction — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Logical_conjunction>

\[6\]

Wikipedia contributors, “Logical disjunction — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Logical_disjunction>

\[7\]

Wikipedia contributors, “Material conditional — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Material_conditional>

\[8\]

Wikipedia contributors, “Logical biconditional — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Logical_biconditional>

\[9\]

Wikipedia contributors, “Truth table — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Truth_table>

\[10\]

Wikipedia contributors, “Logical equivalence — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Logical_equivalence>

\[11\]

Wikipedia contributors, “De morgan’s laws — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/De_Morgan%27s_laws>

\[12\]

Wikipedia contributors, “Quantifier (logic) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Quantifier_(logic)>

\[13\]

Wikipedia contributors, “Universal quantification — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Universal_quantification>

\[14\]

Wikipedia contributors, “Existential quantification — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Existential_quantification>

\[15\]

Wikipedia contributors, “Logical consequence — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Logical_consequence>

\[16\]

Wikipedia contributors, “Mathematical proof — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Mathematical_proof>

\[17\]

Wikipedia contributors, “Theorem — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Theorem>

\[18\]

Wikipedia contributors, “Lemma (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Lemma_(mathematics)>

\[19\]

Wikipedia contributors, “Corollary — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Corollary>

\[20\]

Wikipedia contributors, “Counterexample — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Counterexample>

\[21\]

Wikipedia contributors, “Converse (logic) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Converse_(logic)>

\[22\]

Wikipedia contributors, “Contraposition — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Contraposition>

\[23\]

Wikipedia contributors, “Necessity and sufficiency — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Necessity_and_sufficiency>

\[24\]

Wikipedia contributors, “Proof by contradiction — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Proof_by_contradiction>

\[25\]

Wikipedia contributors, “Direct proof — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Direct_proof>

\[26\]

Wikipedia contributors, “Proof by exhaustion — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Proof_by_exhaustion>

\[27\]

Wikipedia contributors, “Mathematical induction — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Mathematical_induction>

\[28\]

Wikipedia contributors, “Propositional calculus — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Propositional_calculus>

\[29\]

Wikipedia contributors, “First-order logic — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/First-order_logic>

\[30\]

Wikipedia contributors, “Formal proof — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Formal_proof>

\[31\]

D. J. Velleman, *How to prove it: A structured approach*, 3rd ed. Cambridge University Press, 2019. doi: [10.1017/9781108539890](https://doi.org/10.1017/9781108539890).

\[32\]

D. Barker-Plummer, J. Barwise, and J. Etchemendy, *Language, proof and logic*, 2nd ed. Stanford, CA: CSLI Publications, 2011. Available: <https://www.amazon.com/dp/1575866323>

# Definitions on this page

- [Definition 1 (Proposition, statement)](#def-proposition)
- [Definition 2 (Predicate)](#def-predicate)
- [Definition 3 (Logical connective)](#def-logical-connective)
- [Definition 4 (Not)](#def-not)
- [Definition 5 (And)](#def-and)
- [Definition 6 (Or)](#def-or)
- [Definition 7 (Implies)](#def-implies)
- [Definition 8 (If and only if)](#def-iff)
- [Definition 9 (Truth table)](#def-truth-table)
- [Definition 10 (Logically equivalent)](#def-logically-equivalent)
- [Definition 11 (Quantifier)](#def-quantifier)
- [Definition 12 (Universal quantifier)](#def-universal-quantifier)
- [Definition 13 (Existential quantifier)](#def-existential-quantifier)
- [Definition 14 (Inequality)](#def-inequality)
- [Definition 15 (Logical entailment, logical consequence, deductive consequence)](#def-logical-entailment)
- [Definition 16 (Proof)](#def-proof)
- [Definition 17 (Derivation)](#def-derivation)
- [Definition 18 (Result)](#def-result)
- [Definition 19 (Theorem)](#def-theorem)
- [Definition 20 (Lemma)](#def-lemma)
- [Definition 21 (Corollary)](#def-corollary)
- [Definition 22 (Counterexample)](#def-counterexample)
- [Definition 23 (Converse)](#def-converse)
- [Definition 24 (Contrapositive)](#def-contrapositive)
- [Definition 25 (Sufficient condition)](#def-sufficient-condition)
- [Definition 26 (Necessary condition)](#def-necessary-condition)
- [Definition 27 (Necessary and sufficient condition)](#def-necessary-sufficient)
- [Definition 28 (Proof by contradiction)](#def-proof-by-contradiction)
- [Definition 29 (Direct proof)](#def-direct-proof)
- [Definition 30 (Proof by contrapositive)](#def-proof-by-contrapositive)
- [Definition 31 (Proof by cases, proof by exhaustion)](#def-proof-by-cases)
- [Definition 32 (Proof by induction)](#def-proof-by-induction)
- [Definition 33 (Propositional logic)](#def-propositional-logic)
- [Definition 34 (First-order logic)](#def-first-order-logic)
- [Definition 35 (Formal proof)](#def-formal-proof)

Back to top
