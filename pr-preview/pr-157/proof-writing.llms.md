# Proof Writing

Code

Published

Last modified: 2026-10-05 23:05:46 (PDT)

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
> **Example 1 (The sum of two even integers is even)** Claim: if \\m\\ and \\n\\ are [even](notation.llms.md#def-even-odd) integers, then \\m + n\\ is even.
>
> Since \\m\\ and \\n\\ are even, there are integers \\j\\ and \\k\\ with \\m = 2j\\ and \\n = 2k\\. Then
>
> \\ \begin{aligned} m + n &= 2j + 2k && \text{(substitute } m = 2j \text{ and } n = 2k \text{)} \\&= 2(j + k) && \text{(distributive law, read from right to left)} \end{aligned} \\
>
> and \\j + k\\ is an integer, because a sum of integers is an integer. So \\m + n = 2 \cdot(\text{an integer})\\, which is the definition of even.

## 4 Proof by induction

> **NOTE:**
>
> **Definition 2 (Proof by induction)** To prove that a [predicate](notation.llms.md#def-predicate) \\P(n)\\ holds for every [integer](notation.llms.md#def-integers) \\n \ge n_0\\, a **proof by induction** on \\n\\ proves two things:
>
> 1.  the **base case**: \\P(n_0)\\ holds;
> 2.  the **inductive step**: for every \\n \ge n_0\\, if \\P(n)\\ holds, then \\P(n + 1)\\ holds. The assumption that \\P(n)\\ holds is called the **induction hypothesis**.
>
> Together these give \\P(n)\\ for every \\n \ge n_0\\: the base case gives \\P(n_0)\\, the inductive step then gives \\P(n_0 + 1)\\, then \\P(n_0 + 2)\\, and so on.

> **NOTE:**
>
> **Example 2 (The sum of the first \\n\\ positive integers)** Claim: for every integer \\n \ge 1\\,
>
> \\\sum\_{i=1}^{n} i = \frac{n (n + 1)}{2}\\
>
> **Base case** (\\n = 1\\): the left side is \\1\\, and the right side is \\\frac{1 \cdot 2}{2} = 1\\.
>
> **Inductive step**: assume the claim holds for \\n\\. Then
>
> \\ \begin{aligned} \sum\_{i=1}^{n+1} i &= \sum\_{i=1}^{n} i + (n + 1) && \text{(split off the last term)} \\&= \frac{n (n + 1)}{2} + (n + 1) && \text{(induction hypothesis)} \\&= \frac{n (n + 1)}{2} + \frac{2 (n + 1)}{2} && \text{(write } n + 1 \text{ over the denominator } 2 \text{)} \\&= \frac{n (n + 1) + 2 (n + 1)}{2} && \text{(add fractions with the same denominator)} \\&= \frac{(n + 2)(n + 1)}{2} && \text{(factor out } n + 1 \text{)} \\&= \frac{(n + 1)(n + 2)}{2} && \text{(reorder the factors)} \\&= \frac{(n + 1)\\((n + 1) + 1)}{2} && \text{(write } n + 2 \text{ as } (n + 1) + 1 \text{)} \end{aligned} \\
>
> which is the claim for \\n + 1\\.

## 5 Follow the golden rule

In general, follow the golden rule: treat your readers the way you want to be treated as a reader.

When you read someone else’s proof, you want to be able to follow every step without guessing, to know which result is being used at each line, and to never be left wondering where a quantity came from. Write your own proofs to meet that same standard.

## 6 Formal logic

> **NOTE:**
>
> **Definition 3 (Propositional logic)** **Propositional logic** is the study of [logical entailment](notation.llms.md#def-logical-entailment) among [propositions](notation.llms.md#def-proposition) built from basic propositions \\P, Q, R, \ldots\\ using only the [logical connectives](notation.llms.md#def-logical-connective). Whether such propositions entail one another depends only on the truth values of the basic propositions, not on what the basic propositions say.

> **NOTE:**
>
> **Example 3 (\\P\\ and \\P \Rightarrow Q\\ entail \\Q\\)** Suppose \\P\\ is true and \\P \Rightarrow Q\\ is true. If \\Q\\ were false, then \\P \Rightarrow Q\\ would have a true \\P\\ and a false \\Q\\, so \\P \Rightarrow Q\\ would be false, which contradicts the assumption. So \\Q\\ is true. This holds whatever \\P\\ and \\Q\\ say, so \\P\\ and \\P \Rightarrow Q\\ logically entail \\Q\\.

> **NOTE:**
>
> **Definition 4 (First-order logic)** **First-order logic** extends propositional logic ([Definition 3](#def-propositional-logic)) by also allowing [predicates](notation.llms.md#def-predicate) \\P(x)\\ about elements \\x\\ of a set, and [quantifiers](notation.llms.md#def-quantifier) \\\forall\\ and \\\exists\\ over those elements.

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
