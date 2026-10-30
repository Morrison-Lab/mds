# Additivity

Code

Published

Last modified: 2026-10-30 00:52:40 (PDT)

## 0.1 Additivity

> **NOTE:**
>
> **Definition 1 (Finite additivity)** Let \\\mathcal{S}\\ be a [\\\sigma\\-algebra](measures-sigma-algebras.llms.md#def-sigma-algebra) on a set \\S\\. A [function](functions.llms.md#def-function) \\\mu: \mathcal{S}\to \[0, \infty\]\\, with values in the [extended non-negative reals](sets.llms.md#def-extended-nonneg-reals), is **finitely additive** [\[1\]](#ref-wikipedia_sigma_additive_set_function) if, for every finite collection of [pairwise disjoint](sets.llms.md#def-pairwise-disjoint) [sets](sets.llms.md#def-set) \\A_1, \ldots, A_n\\ in \\\mathcal{S}\\, the value of their union is the sum of their values:
>
> \\\mu(A_1 \cup \cdots \cup A_n) = \sum\_{i=1}^n\mu(A_i)\\

> **NOTE:**
>
> **Example 1 (Counting elements is finitely additive)** For the die rolls \\D = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\ ([sets of die rolls](sets.llms.md#exm-set)), let \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\, the number of elements of \\A\\ ([cardinality](functions.llms.md#def-cardinality)), for each set \\A\\ in the \\\sigma\\-algebra of all subsets of \\D\\ ([Example 1 in Sigma-Algebras](measures-sigma-algebras.llms.md#exm-sigma-algebra)). The sets \\{\mathopen{}\left\\1, 2\right\\\mathclose{}}\\ and \\{\mathopen{}\left\\5, 6\right\\\mathclose{}}\\ are pairwise disjoint ([low, middle and high die rolls](sets.llms.md#exm-pairwise-disjoint)), and:
>
> \\ \begin{aligned} \mu({\mathopen{}\left\\1, 2\right\\\mathclose{}} \cup {\mathopen{}\left\\5, 6\right\\\mathclose{}}) &= \mu({\mathopen{}\left\\1, 2, 5, 6\right\\\mathclose{}}) && \text{(take the union)} \\ &= 4 && \text{(count the elements)} \\ &= 2 + 2 && \text{(write 4 as a sum)} \\ &= \mu({\mathopen{}\left\\1, 2\right\\\mathclose{}}) + \mu({\mathopen{}\left\\5, 6\right\\\mathclose{}}) && \text{(count each set's elements)} \end{aligned} \\
>
> The same holds for any pairwise disjoint sets, because the sizes of disjoint sets add, so \\\mu\\ is finitely additive.

> **NOTE:**
>
> **Example 2 (Squaring the count is not finitely additive)** On the same \\\sigma\\-algebra, let \\\nu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}^2\\. The sets \\{\mathopen{}\left\\1\right\\\mathclose{}}\\ and \\{\mathopen{}\left\\2\right\\\mathclose{}}\\ are pairwise disjoint, but
>
> \\ \begin{aligned} \nu({\mathopen{}\left\\1\right\\\mathclose{}} \cup {\mathopen{}\left\\2\right\\\mathclose{}}) &= \nu({\mathopen{}\left\\1, 2\right\\\mathclose{}}) && \text{(take the union)} \\ &= 2^2 \\ &= 4, && \text{(count, then square)} \\ \nu({\mathopen{}\left\\1\right\\\mathclose{}}) + \nu({\mathopen{}\left\\2\right\\\mathclose{}}) &= 1^2 + 1^2 \\ &= 2, && \text{(count each set, then square)} \end{aligned} \\
>
> and \\4 \ne 2\\, so \\\nu\\ is not finitely additive.

> **NOTE:**
>
> **Definition 2 (Countable additivity (\\\sigma\\-additivity))** Let \\\mathcal{S}\\ be a [\\\sigma\\-algebra](measures-sigma-algebras.llms.md#def-sigma-algebra) on a set \\S\\. A function \\\mu: \mathcal{S}\to \[0, \infty\]\\ is **countably additive** [\[1\]](#ref-wikipedia_sigma_additive_set_function) (also called **\\\sigma\\-additive**) if, for every sequence of [pairwise disjoint](sets.llms.md#def-pairwise-disjoint) [sets](sets.llms.md#def-set) \\A_1, A_2, \ldots\\ in \\\mathcal{S}\\, the value of their union is the sum of their values:
>
> \\\mu\mathopen{}\left(\bigcup\_{i=1}^{\infty} A_i\right)\mathclose{} = \sum\_{i=1}^{\infty} \mu(A_i)\\

> **NOTE:**
>
> **Example 3 (Counting elements is countably additive)** For the counting function \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 1](#exm-finite-additivity), take any sequence of pairwise disjoint sets \\A_1, A_2, \ldots\\. No two of them share an element, and \\D\\ has only six elements, so at most six of the \\A_i\\ contain any elements; the rest are \\\emptyset\\, with \\\mu(\emptyset) = 0\\. The infinite sum therefore has at most six nonzero terms, and finite additivity ([Example 1](#exm-finite-additivity)) shows that those terms add up to \\\mu\\ of the union. So \\\mu\\ is countably additive.

> **NOTE:**
>
> *Remark 1* (The sum in countable additivity always has a value). By [sums of non-negative terms](algebra-exponentials.llms.md#lem-nonneg-series), the right-hand side of the equation in [Definition 2](#def-countable-additivity), \\\sum\_{i=1}^{\infty} \mu(A_i)\\, always has a value, because each \\\mu(A_i)\\ is in \\\[0, \infty\]\\. For example, if \\\mu(A_i) = 1/2^i\\ for each \\i\\, the partial sums are \\s_n = 1 - 1/2^n\\, and the sum is \\1\\; if \\\mu(A_i) = 1\\ for each \\i\\, the partial sums are \\s_n = n\\, and the sum is \\\infty\\.

> **NOTE:**
>
> **Lemma 1 (Countable additivity and the empty set)** If \\\mu\\ is a [countably additive](#def-countable-additivity) function on a [\\\sigma\\-algebra](measures-sigma-algebras.llms.md#def-sigma-algebra) \\\mathcal{S}\\, then \\\mu(\emptyset) = 0\\ or \\\mu(\emptyset) = \infty\\.

> **NOTE:**
>
> *Proof*. The set \\\emptyset = S \setminus S\\ is in \\\mathcal{S}\\, as the complement of \\S\\, and the sequence \\\emptyset, \emptyset, \ldots\\ is pairwise disjoint with union \\\emptyset\\, so:
>
> \\ \begin{aligned} \mu(\emptyset) &= \mu\mathopen{}\left(\bigcup\_{i=1}^{\infty} \emptyset\right)\mathclose{} && \text{(the union of copies of } \emptyset \text{ is } \emptyset \text{)} \\ &= \sum\_{i=1}^{\infty} \mu(\emptyset) && \text{(countable additivity)} \end{aligned} \\
>
> If \\\mu(\emptyset) = c\\ for a finite \\c \> 0\\, the right-hand side is \\c + c + \cdots = \infty \neq c\\, a [contradiction](proof-writing.llms.md#def-proof-by-contradiction). So \\\mu(\emptyset)\\ is 0 or \\\infty\\.

> **NOTE:**
>
> **Example 4 (A countably additive function with \\\mu(\emptyset) = 0\\)** The counting function \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 3](#exm-countable-additivity) is countably additive, and:
>
> \\ \begin{aligned} \mu(\emptyset) &= \mathopen{}\left\|\emptyset\right\|\mathclose{} && \text{(definition of } \mu\text{)} \\ &= 0 && \text{(} \emptyset \text{ has no elements)} \end{aligned} \\

> **NOTE:**
>
> **Example 5 (A countably additive function with \\\mu(\emptyset) = \infty\\)** For the die rolls \\D = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\ ([sets of die rolls](sets.llms.md#exm-set)), let \\\mu(A) \stackrel{\text{def}}{=}\infty\\ for every set \\A\\ in the \\\sigma\\-algebra of all subsets of \\D\\ ([Example 1 in Sigma-Algebras](measures-sigma-algebras.llms.md#exm-sigma-algebra)), including \\A = \emptyset\\. For any sequence of pairwise disjoint sets \\A_1, A_2, \ldots\\, the left-hand side of the countable additivity equation is:
>
> \\ \begin{aligned} \mu\mathopen{}\left(\bigcup\_{i=1}^{\infty} A_i\right)\mathclose{} &= \infty && \text{(definition of } \mu\text{)} \end{aligned} \\
>
> and the right-hand side, the [limit](algebra-exponentials.llms.md#def-sequence-limit) of its [partial sums](algebra-exponentials.llms.md#def-partial-sum) ([sums of non-negative terms](algebra-exponentials.llms.md#lem-nonneg-series)), is:
>
> \\ \begin{aligned} \sum\_{i=1}^{\infty} \mu(A_i) &= \infty + \infty + \cdots && \text{(definition of } \mu\text{)} \\ &= \infty && \text{(every partial sum is } \infty \text{)} \end{aligned} \\
>
> The two sides agree, so \\\mu\\ is countably additive, and \\\mu(\emptyset) = \infty\\.

> **NOTE:**
>
> *Remark 2* (\\\mu(\emptyset) = 0\\ is an extra requirement). [Example 4](#exm-empty-set-zero) and [Example 5](#exm-empty-set-infinity) show that both values allowed by [Lemma 1](#lem-countable-additivity-empty) occur for countably additive functions. So \\\mu(\emptyset) = 0\\ is an extra requirement, not a consequence of countable additivity.

> **NOTE:**
>
> **Theorem 1 (Countable additivity implies finite additivity)** If \\\mu\\ is a [countably additive](#def-countable-additivity) function on a [\\\sigma\\-algebra](measures-sigma-algebras.llms.md#def-sigma-algebra) \\\mathcal{S}\\, and \\\mu(\emptyset) = 0\\, then \\\mu\\ is [finitely additive](#def-finite-additivity).

> **NOTE:**
>
> *Proof*. Let \\A_1, \ldots, A_n\\ be pairwise disjoint sets in \\\mathcal{S}\\, and extend them to a sequence by setting
>
> \\ \begin{aligned} A\_{n+1} &= A\_{n+2} \\ &= \cdots \\ &= \emptyset. \end{aligned} \\
>
> The extended sequence is still pairwise disjoint, since \\\emptyset\\ shares no element with any set, and its union is \\A_1 \cup \cdots \cup A_n\\. So:
>
> \\ \begin{aligned} \mu(A_1 \cup \cdots \cup A_n) &= \mu\mathopen{}\left(\bigcup\_{i=1}^{\infty} A_i\right)\mathclose{} && \text{(} A_i = \emptyset \text{ for } i \> n \text{)} \\ &= \sum\_{i=1}^{\infty} \mu(A_i) && \text{(countable additivity)} \\ &= \sum\_{i=1}^n\mu(A_i) + \sum\_{i=n+1}^{\infty} \mu(\emptyset) && \text{(} A_i = \emptyset \text{ for } i \> n \text{)} \\ &= \sum\_{i=1}^n\mu(A_i) && \text{(} \mu(\emptyset) = 0 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 6 (Finitely additive but not countably additive)** Let \\S = {\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}}\\, with the \\\sigma\\-algebra of all subsets of \\S\\ ([Theorem 2 in Sigma-Algebras](measures-sigma-algebras.llms.md#thm-power-set-sigma-algebra)), and define:
>
> \\ \mu(A) \stackrel{\text{def}}{=}\begin{cases} 0 & \text{if } A \text{ is finite} \\ \infty & \text{if } A \text{ is infinite} \end{cases} \\
>
> *\\\mu\\ is finitely additive.* Let \\A_1, \ldots, A_n\\ be pairwise disjoint subsets of \\S\\. If every \\A_i\\ is finite, then so is their union, and:
>
> \\ \begin{aligned} \mu(A_1 \cup \cdots \cup A_n) &= 0 && \text{(a finite union of finite sets is finite)} \\ &= \sum\_{i=1}^n0 && \text{(a sum of zeros is 0)} \\ &= \sum\_{i=1}^n\mu(A_i) && \text{(each } A_i \text{ is finite)} \end{aligned} \\
>
> If some \\A_k\\ is infinite, then the union, which contains \\A_k\\, is infinite too, and:
>
> \\ \begin{aligned} \mu(A_1 \cup \cdots \cup A_n) &= \infty && \text{(the union is infinite)} \\ &= \mu(A_k) + \sum\_{i \in \mathopen{}\left\\1, \ldots, n\right\\\mathclose{} \setminus \mathopen{}\left\\k\right\\\mathclose{}} \mu(A_i) && \text{(} \mu(A_k) = \infty \text{, and } \infty + x = \infty \text{)} \\ &= \sum\_{i=1}^n\mu(A_i) && \text{(regroup the terms)} \end{aligned} \\
>
> *\\\mu\\ is not countably additive.* The single-element sets \\{\mathopen{}\left\\0\right\\\mathclose{}}, {\mathopen{}\left\\1\right\\\mathclose{}}, {\mathopen{}\left\\2\right\\\mathclose{}}, \ldots\\ are pairwise disjoint, and their union is \\S\\, which is infinite. So:
>
> \\ \begin{aligned} \mu\mathopen{}\left(\bigcup\_{k=0}^{\infty} {\mathopen{}\left\\k\right\\\mathclose{}}\right)\mathclose{} &= \mu(S) && \text{(the union is } S \text{)} \\ &= \infty && \text{(} S \text{ is infinite)} \end{aligned} \\
>
> but:
>
> \\ \begin{aligned} \sum\_{k=0}^{\infty} \mu({\mathopen{}\left\\k\right\\\mathclose{}}) &= 0 + 0 + \cdots && \text{(each } {\mathopen{}\left\\k\right\\\mathclose{}} \text{ is finite)} \\ &= 0 && \text{(every partial sum is 0)} \end{aligned} \\

> **NOTE:**
>
> *Remark 3* (Finite additivity does not imply countable additivity). [Example 6](#exm-finite-not-countable) shows that the [converse](proof-writing.llms.md#def-converse) of [Theorem 1](#thm-countable-implies-finite) fails, even when \\\mu(\emptyset) = 0\\: a finitely additive function need not be countably additive [\[1\]](#ref-wikipedia_sigma_additive_set_function). The function \\\mu\\ in [Example 6](#exm-finite-not-countable) has \\\mu(\emptyset) = 0\\, because \\\emptyset\\ is finite.

# Definitions on this page

- [Definition 1 (Finite additivity)](#def-finite-additivity)
- [Definition 2 (Countable additivity (\\\sigma\\-additivity))](#def-countable-additivity)

Back to top

## References

\[1\]

Wikipedia contributors, “Sigma-additive set function — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Sigma-additive_set_function>
