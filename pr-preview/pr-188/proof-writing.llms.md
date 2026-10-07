# Proof Writing

Code

Published

Last modified: 2026-10-07 13:47:18 (PDT)

This page collects general advice on how to write [proofs](notation.llms.md#def-proof) and [derivations](notation.llms.md#def-derivation). The goal of a proof is not just to convince yourself that a [result](notation.llms.md#def-theorem) is true; it is to convince a *reader*, and to show them *why* it is true. Each principle on this page serves that goal. The symbols for [logical entailment](notation.llms.md#def-logical-entailment) are listed under [Proofs](notation.llms.md#proofs) on the Notation page.

## 1 Don’t skip steps

Show every step of the derivation. Each line should follow from the previous line by a single, identifiable move:

- applying a definition,
- substituting a known result, or
- performing one algebraic operation.

When you skip steps, you force the reader to reconstruct your reasoning, which is exactly the work the proof was supposed to do *for* them. A step that feels “obvious” while you are writing it is often the step a reader gets stuck on. Phrases like “it can be shown that” or “clearly” usually mark a skipped step; show the step instead.

## 2 Annotate each step

For each step, note the definition, [theorem](notation.llms.md#def-theorem), or algebraic rule that justifies it. A brief annotation to the right of the line is usually enough. Annotations make the proof checkable, and they teach the reader which tool to reach for in similar situations.

For example, here is a derivation that the [hat matrix](linear-algebra.llms.md#def-hat-matrix) \\\mathbf{H} = \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\\ is [idempotent](linear-algebra.llms.md#def-idempotent-matrix), \\\mathbf{H}^2 = \mathbf{H}\\, with each step annotated:

\\ \begin{aligned} \mathbf{H}^2 &= \mathbf{H}\mathbf{H} && \text{(definition of a matrix power)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\\\mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(definition of } \mathbf{H} \text{)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}({\mathbf{X}}^{\top}\mathbf{X})({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(regroup; matrix multiplication is associative)} \\ &= \mathbf{X}\\\mathbf{I}\_p\\({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(a matrix inverse times the matrix is } \mathbf{I}\_p \text{)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(the identity matrix changes nothing)} \\ &= \mathbf{H} && \text{(definition of } \mathbf{H} \text{)} \end{aligned} \\

The [Linear Algebra](linear-algebra.llms.md#thm-hat-matrix) page uses this derivation to show that \\\mathbf{H}\\ is a [projection matrix](linear-algebra.llms.md#def-projection-matrix). The probability notes derive the variance identity \\\operatorname{Var}\mathopen{}\left(X\right)\mathclose{} = \operatorname{E}\mathopen{}\left\[X^2\right\]\mathclose{} - \mathopen{}\left(\operatorname{E}\mathopen{}\left\[X\right\]\mathclose{}\right)^2\mathclose{}\\ [in the same annotated style](https://morrison-lab.github.io/pds/variance-covariance.html#thm-variance).

## 3 Direct proof

> **NOTE:**
>
> **Definition 1 (Direct proof)** A **direct proof** of a proposition \\Q\\ starts from the assumptions that \\Q\\ is stated under, if any, and reaches \\Q\\ through a chain of steps, each of which applies a definition, a previously proved result, or one rule of logic or algebra to the assumptions or to earlier steps. A direct proof never assumes that \\Q\\ is false; compare [proof by contradiction](notation.llms.md#def-proof-by-contradiction), which does.

> **NOTE:**
>
> **Example 1 (The square of an odd integer is odd)** Claim: if \\n\\ is an [odd](notation.llms.md#def-even-odd) integer, then \\n^2\\ is odd.
>
> Since \\n\\ is odd, there is an integer \\k\\ with \\n = 2k + 1\\. Then
>
> \\ \begin{aligned} n^2 &= (2k + 1)^2 && \text{(substitute } n = 2k + 1 \text{)} \\&= (2k)^2 + 2 \cdot 2k \cdot 1 + 1^2 && \text{(square of a sum)} \\&= 4k^2 + 4k + 1 && \text{(arithmetic)} \\&= 2(2k^2 + 2k) + 1 && \text{(distributive law, read from right to left)} \end{aligned} \\
>
> and \\2k^2 + 2k\\ is an integer, because sums and products of integers are integers. So \\n^2 = 2 \cdot(\text{an integer}) + 1\\, which is the definition of odd. For example, \\n = 7 = 2 \cdot 3 + 1\\ gives \\n^2 = 49 = 2 \cdot 24 + 1\\, and \\2 \cdot 3^2 + 2 \cdot 3 = 24\\.
>
> The notation page’s proof that [the sum of two even integers is even](notation.llms.md#exm-proof) is also a direct proof.

## 4 Follow the golden rule

In general, follow the golden rule: treat your readers the way you want to be treated as a reader.

When you read someone else’s proof, you want to be able to follow every step without guessing, to know which result is being used at each line, and to never be left wondering where a quantity came from. Write your own proofs to meet that same standard.

## 5 Proof by induction

Many proofs in these notes show that a statement holds for every [natural number](notation.llms.md#def-natural-numbers) \\n\\, or for every integer \\n\\ from some starting value on. Checking the statement one \\n\\ at a time would never finish; induction proves it for all of them with two arguments.

> **NOTE:**
>
> **Definition 2 (Proof by induction)** Let \\n_0\\ be an [integer](notation.llms.md#def-integers), and let \\P(n)\\ be a [predicate](notation.llms.md#def-predicate) about the integers \\n \ge n_0\\. A **proof by induction** on \\n\\ shows that \\P(n)\\ holds for every integer \\n \ge n_0\\ by showing two things:
>
> 1.  **Base case:** \\P(n_0)\\ holds.
> 2.  **Inductive step:** for every integer \\n \> n_0\\, if \\P(n - 1)\\ holds, then \\P(n)\\ holds.
>
> In the inductive step, the assumption that \\P(n - 1)\\ holds is called the **induction hypothesis**.

> **NOTE:**
>
> *Remark 1* (Why the two steps suffice). The base case gives \\P(n_0)\\. The inductive step with \\n = n_0 + 1\\ then gives \\P(n_0 + 1)\\, with \\n = n_0 + 2\\ it gives \\P(n_0 + 2)\\, and so on: each integer \\n \ge n_0\\ is reached after \\n - n_0\\ uses of the inductive step.
>
> When \\P(n)\\ is needed only for \\n_0 \le n \le r\\, it is enough to show the inductive step for \\n_0 \< n \le r\\; the same chain then stops at \\P(r)\\.

The following example uses [summation notation](algebra.llms.md#def-summation).

> **NOTE:**
>
> **Example 2 (Sum of the first \\n\\ natural numbers)** For every \\n \in \mathbb{N}\\,
>
> \\ \sum\_{i=1}^{n} i = \frac{n(n+1)}{2}. \\
>
> For example, with \\n = 3\\, \\1 + 2 + 3 = 6\\ and \\\frac{3 \cdot 4}{2} = 6\\. To prove the equation for every \\n\\, let \\P(n)\\ be the equation and use [Definition 2](#def-proof-by-induction) with \\n_0 = 1\\.
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
> \\ \begin{aligned} \sum\_{i=1}^{n} i &= 1 + 2 + \cdots + (n-1) + n && \text{(definition of a sum)} \\ &= \mathopen{}\left(1 + 2 + \cdots + (n-1)\right)\mathclose{} + n && \text{(associative law)} \\ &= \sum\_{i=1}^{n-1} i + n && \text{(definition of a sum)} \\ &= \frac{(n-1)\\\mathopen{}\left((n-1)+1\right)\mathclose{}}{2} + n && \text{(induction hypothesis)} \\ &= \frac{(n-1)\\n}{2} + n && \text{(} (n-1) + 1 = n \text{)} \\ &= \frac{(n-1)\\n}{2} + \frac{2n}{2} && \text{(} n = \tfrac{2n}{2} \text{)} \\ &= \frac{(n-1)\\n + 2n}{2} && \text{(common denominator)} \\ &= \frac{\mathopen{}\left((n-1) + 2\right)\mathclose{}\\n}{2} && \text{(distributive law)} \\ &= \frac{(n+1)\\n}{2} && \text{(} (n-1) + 2 = n + 1 \text{)} \\ &= \frac{n(n+1)}{2}, && \text{(commutative law)} \end{aligned} \\
>
> which is \\P(n)\\. By [Definition 2](#def-proof-by-induction), the equation holds for every \\n \in \mathbb{N}\\.

## 6 Formal logic

> **NOTE:**
>
> **Definition 3 (Propositional logic)** **Propositional logic** is the study of [logical entailment](notation.llms.md#def-logical-entailment) among [propositions](notation.llms.md#def-proposition) built from basic propositions \\P, Q, R, \ldots\\ using only the [logical connectives](notation.llms.md#def-logical-connective). Whether such propositions entail one another depends only on the truth values of the basic propositions, not on what the basic propositions say.

> **NOTE:**
>
> **Example 3 (\\P\\ and \\P \Rightarrow Q\\ entail \\Q\\)** Suppose \\P\\ is true and \\P \Rightarrow Q\\ is true. If \\Q\\ were false, then \\P \Rightarrow Q\\ would have a true \\P\\ and a false \\Q\\, so \\P \Rightarrow Q\\ would be false, which contradicts the assumption. So \\Q\\ is true. This holds whatever \\P\\ and \\Q\\ say, so \\P\\ and \\P \Rightarrow Q\\ logically entail \\Q\\.

> **NOTE:**
>
> **Definition 4 (First-order logic)** **First-order logic** extends propositional logic ([Definition 3](#def-propositional-logic)) by also allowing:
>
> - variables \\x, y, \ldots\\ that stand for elements of a set;
> - [predicates](notation.llms.md#def-predicate) of one or more of those variables, such as \\P(x)\\ or \\x \< y\\;
> - [functions](sets-functions.llms.md#def-function) of them, such as \\x + y\\;
> - equality between them;
> - [quantifiers](notation.llms.md#def-quantifier) \\\forall\\ and \\\exists\\ over them.

> **NOTE:**
>
> **Example 4 (From “for all” to one element)** Let \\P(x)\\ be a predicate about the elements of a set \\S\\, and let \\a \in S\\. The propositions \\\forall x \in S, P(x)\\ and \\a \in S\\ logically entail \\P(a)\\: if \\P(x)\\ is true for every element \\x\\ of \\S\\, then it is true for the element \\a\\. For example, \\\forall x \in \mathbb{Z}, x^2 \ge 0\\ entails \\3^2 \ge 0\\. Propositional logic alone cannot express this entailment, because it has no way to refer to the elements of \\S\\.

> **NOTE:**
>
> **Definition 5 (Formal proof)** A **formal proof** is a [proof](notation.llms.md#def-proof) written in propositional logic ([Definition 3](#def-propositional-logic)) or first-order logic ([Definition 4](#def-first-order-logic)) in which each step is an assumption or follows from earlier steps by one rule taken from a fixed list of allowed rules, so that checking the proof needs no understanding of what its propositions mean.

> **NOTE:**
>
> **Example 5 (A three-step formal proof)** Suppose the allowed rules include “from \\P\\ and \\P \Rightarrow Q\\, conclude \\Q\\”. Then this is a formal proof of \\Q\\ from the assumptions \\P\\ and \\P \Rightarrow Q\\:
>
> 1.  \\P\\ (assumption)
> 2.  \\P \Rightarrow Q\\ (assumption)
> 3.  \\Q\\ (from steps 1 and 2, by the rule above)

## 7 Further reading

- Velleman ([2019](#ref-velleman2019prove)) is a structured introduction to proof techniques such as [direct proof](#def-direct-proof), [proof by contradiction](notation.llms.md#def-proof-by-contradiction), and induction.
- Barker-Plummer et al. ([2011](#ref-barkerplummer2011language)) treats proofs as [formal proofs](#def-formal-proof) in [propositional logic](#def-propositional-logic) and [first-order logic](#def-first-order-logic).

## References

Barker-Plummer, Dave, Jon Barwise, and John Etchemendy. 2011. *Language, Proof and Logic*. 2nd ed. CSLI Publications. <https://www.amazon.com/dp/1575866323>.

Velleman, Daniel J. 2019. *How to Prove It: A Structured Approach*. 3rd ed. Cambridge University Press. <https://doi.org/10.1017/9781108539890>.

Back to top
