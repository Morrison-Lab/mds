# Proof Writing

Code

Published

Last modified: 2026-10-05 18:01:47 (PDT)

This page collects general advice on how to write proofs and derivations. The goal of a proof is not just to convince yourself that a result is true; it is to convince a *reader*, and to show them *why* it is true. Each principle on this page serves that goal. The symbols for logical entailment are listed under [Proofs](notation.llms.md#proofs) on the Notation page.

## 1 Don’t skip steps

Show every step of the derivation. Each line should follow from the previous line by a single, identifiable move:

- applying a definition,
- substituting a known result, or
- performing one algebraic operation.

When you skip steps, you force the reader to reconstruct your reasoning, which is exactly the work the proof was supposed to do *for* them. A step that feels “obvious” while you are writing it is often the step a reader gets stuck on. Phrases like “it can be shown that” or “clearly” usually mark a skipped step; show the step instead.

## 2 Annotate each step

For each step, note the definition, theorem, or algebraic rule that justifies it. A brief annotation to the right of the line is usually enough. Annotations make the proof checkable, and they teach the reader which tool to reach for in similar situations.

For example, here is a derivation that the [hat matrix](linear-algebra.llms.md#def-hat-matrix) \\\mathbf{H} = \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\\ is idempotent, \\\mathbf{H}^2 = \mathbf{H}\\, with each step annotated:

\\ \begin{aligned} \mathbf{H}^2 &= \mathbf{H}\mathbf{H} && \text{(definition of a matrix power)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\\\mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(definition of } \mathbf{H} \text{)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}({\mathbf{X}}^{\top}\mathbf{X})({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(regroup; matrix multiplication is associative)} \\ &= \mathbf{X}\\\mathbf{I}\_p\\({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(a matrix inverse times the matrix is } \mathbf{I}\_p \text{)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(the identity matrix changes nothing)} \\ &= \mathbf{H} && \text{(definition of } \mathbf{H} \text{)} \end{aligned} \\

The [Linear Algebra](linear-algebra.llms.md#thm-hat-matrix) page uses this derivation to show that \\\mathbf{H}\\ is a projection matrix. The probability notes derive the variance identity \\\operatorname{Var}\mathopen{}\left(X\right)\mathclose{} = \operatorname{E}\mathopen{}\left\[X^2\right\]\mathclose{} - \mathopen{}\left(\operatorname{E}\mathopen{}\left\[X\right\]\mathclose{}\right)^2\mathclose{}\\ [in the same annotated style](https://morrison-lab.github.io/pds/variance-covariance.html#thm-variance).

## 3 Proof by induction

> **NOTE:**
>
> **Definition 1 (Proof by induction)** To prove that a statement \\P(n)\\ holds for every integer \\n \ge n_0\\, a **proof by induction** on \\n\\ proves two things:
>
> 1.  the **base case**: \\P(n_0)\\ holds;
> 2.  the **inductive step**: for every \\n \ge n_0\\, if \\P(n)\\ holds, then \\P(n + 1)\\ holds. The assumption that \\P(n)\\ holds is called the **induction hypothesis**.
>
> Together these give \\P(n)\\ for every \\n \ge n_0\\: the base case gives \\P(n_0)\\, the inductive step then gives \\P(n_0 + 1)\\, then \\P(n_0 + 2)\\, and so on.

> **NOTE:**
>
> **Example 1 (The sum of the first \\n\\ positive integers)** Claim: for every integer \\n \ge 1\\,
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

## 4 Follow the golden rule

In general, follow the golden rule: treat your readers the way you want to be treated as a reader.

When you read someone else’s proof, you want to be able to follow every step without guessing, to know which result is being used at each line, and to never be left wondering where a quantity came from. Write your own proofs to meet that same standard.

## 5 Further reading

- Velleman ([2019](#ref-velleman2019prove)) is a structured introduction to proof techniques such as direct proof, proof by contradiction, and induction.
- Barker-Plummer et al. ([2011](#ref-barkerplummer2011language)) treats proofs as formal derivations in propositional and first-order logic.

## References

Barker-Plummer, Dave, Jon Barwise, and John Etchemendy. 2011. *Language, Proof and Logic*. 2nd ed. CSLI Publications. <https://www.amazon.com/dp/1575866323>.

Velleman, Daniel J. 2019. *How to Prove It: A Structured Approach*. 3rd ed. Cambridge University Press. <https://doi.org/10.1017/9781108539890>.

Back to top
