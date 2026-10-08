# Measures

Code

Published

Last modified: 2026-10-07 17:14:27 (PDT)

> **NOTE:**
>
> *Remark*. A measure assigns a size to each set in a [collection of sets](sets-functions.llms.md#def-collection): how many elements it has, how long it is, or how likely it is. This page builds measures from \\\sigma\\-algebras and additivity, using the [sets and functions](sets-functions.llms.md) page’s definitions. One kind of measure, the probability measure ([Definition 19](#def-probability-measure)), is the starting point of the Morrison Lab’s probability notes ([probability measure](https://morrison-lab.github.io/pds/probability-basics.html#def-probability)).

## 1 \\\sigma\\-algebras

> **NOTE:**
>
> **Definition 1 (\\\sigma\\-algebra)** A **\\\sigma\\-algebra** on a set \\S\\ is a [collection](sets-functions.llms.md#def-collection) \\\mathcal{S}\\ of [subsets](sets-functions.llms.md#def-subset) of \\S\\ that satisfies:
>
> - \\\mathcal{S}\\ contains \\S\\ itself.
> - For each set \\A\\ in \\\mathcal{S}\\, \\\mathcal{S}\\ contains its [complement](sets-functions.llms.md#def-complement) \\S \setminus A\\.
> - For each [sequence](sets-functions.llms.md#def-sequence) \\A_1, A_2, \ldots\\ of sets in \\\mathcal{S}\\, \\\mathcal{S}\\ contains their union \\\bigcup\_{i=1}^{\infty} A_i\\.

> **NOTE:**
>
> *Remark 1* (\\\sigma\\-field). Other sources call a \\\sigma\\-algebra a **\\\sigma\\-field** (see [Wikipedia: \\\sigma\\-algebra](https://en.wikipedia.org/wiki/%CE%A3-algebra)). For example, Billingsley ([1995](#ref-billingsley1995probability)) uses “\\\sigma\\-field”. The two names mean the same thing.

> **NOTE:**
>
> **Example 1 (\\\sigma\\-algebras for die rolls)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ ([sets of die rolls](sets-functions.llms.md#exm-set)), the collection of all subsets of \\D\\ is a \\\sigma\\-algebra on \\D\\, since complements and unions of subsets of \\D\\ are again subsets of \\D\\. So is the smaller collection
>
> \\\mathopen{}\left\\\emptyset, \mathopen{}\left\\2, 4, 6\right\\\mathclose{}, \mathopen{}\left\\1, 3, 5\right\\\mathclose{}, D\right\\\mathclose{}\\
>
> which contains \\D\\, the complement of each of its sets, and every union of its sets: for example, \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{} \cup \mathopen{}\left\\1, 3, 5\right\\\mathclose{} = D\\.

> **NOTE:**
>
> **Example 2 (A collection that is not a \\\sigma\\-algebra)** The collection \\\mathopen{}\left\\\emptyset, \mathopen{}\left\\1\right\\\mathclose{}, D\right\\\mathclose{}\\ is not a \\\sigma\\-algebra on \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\: it contains \\\mathopen{}\left\\1\right\\\mathclose{}\\ but not its complement \\D \setminus \mathopen{}\left\\1\right\\\mathclose{} = \mathopen{}\left\\2, 3, 4, 5, 6\right\\\mathclose{}\\.

> **NOTE:**
>
> **Definition 2 (Closed under an operation (closure))** A set \\A\\ is **closed under** an operation, such as addition of numbers or union of sets, if applying the operation to elements of \\A\\ always gives an element of \\A\\. This property is called **closure** under the operation.

> **NOTE:**
>
> **Example 3 (Closed and not closed)**  
>
> - The [even](notation.llms.md#def-even-odd) integers are closed under addition: for example, \\2 + 4 = 6\\ is even, and \\2m + 2n = 2(m + n)\\ is even for all integers \\m\\ and \\n\\.
> - The odd integers are not closed under addition: \\1\\ and \\3\\ are odd, but \\1 + 3 = 4\\ is even.
> - A [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathcal{S}\\ on a set \\S\\ is closed under complements in \\S\\ and under unions of sequences of its sets, because [Definition 1](#def-sigma-algebra) requires both. The collection in [Example 2](#exm-not-sigma-algebra) is not closed under complements.

> **NOTE:**
>
> **Theorem 1 (Closure properties of a \\\sigma\\-algebra)** If \\\mathcal{S}\\ is a [\\\sigma\\-algebra](#def-sigma-algebra) on a set \\S\\, then \\\mathcal{S}\\ contains:
>
> - the [empty set](sets-functions.llms.md#def-empty-set) \\\emptyset\\;
> - the union \\A_1 \cup \cdots \cup A_n\\ of any [finitely many](sets-functions.llms.md#def-finite-set) sets \\A_1, \ldots, A_n\\ in \\\mathcal{S}\\;
> - the intersection \\\bigcap\_{i=1}^{\infty} A_i\\ of any sequence \\A_1, A_2, \ldots\\ of sets in \\\mathcal{S}\\.
>
> So \\\mathcal{S}\\ is [closed under](#def-closed-under) finite unions and under intersections of sequences of its sets.

> **NOTE:**
>
> *Proof*. *Empty set.* \\\mathcal{S}\\ contains \\S\\, so it contains the complement of \\S\\, which is \\S \setminus S = \emptyset\\.
>
> *Finite unions.* Extend \\A_1, \ldots, A_n\\ to a sequence by setting \\A\_{n+1} = A\_{n+2} = \cdots = \emptyset\\; each of these sets is in \\\mathcal{S}\\, by the first part. Then:
>
> \\ \begin{aligned} A_1 \cup \cdots \cup A_n &= A_1 \cup \cdots \cup A_n \cup \emptyset \cup \emptyset \cup \cdots && \text{(a union with } \emptyset \text{ adds no elements)} \\ &= \bigcup\_{i=1}^{\infty} A_i && \text{(} A_i = \emptyset \text{ for } i \> n \text{)} \end{aligned} \\
>
> and \\\mathcal{S}\\ contains \\\bigcup\_{i=1}^{\infty} A_i\\ by the union rule of [Definition 1](#def-sigma-algebra).
>
> *Countable intersections.* Each \\A_i\\ is a subset of \\S\\, so an element of \\S\\ is outside \\S \setminus A_i\\ exactly when it is in \\A_i\\; that is, \\S \setminus (S \setminus A_i) = A_i\\. So, by [De Morgan’s laws](sets-functions.llms.md#thm-de-morgan):
>
> \\ \begin{aligned} S \setminus \bigcup\_{i=1}^{\infty} (S \setminus A_i) &= \bigcap\_{i=1}^{\infty} \mathopen{}\left(S \setminus (S \setminus A_i)\right)\mathclose{} && \text{(De Morgan's laws)} \\ &= \bigcap\_{i=1}^{\infty} A_i && \text{(} S \setminus (S \setminus A_i) = A_i \text{)} \end{aligned} \\
>
> Each \\S \setminus A_i\\ is in \\\mathcal{S}\\ by the complement rule, so their union is in \\\mathcal{S}\\ by the union rule, and the complement of that union is in \\\mathcal{S}\\ by the complement rule again.

> **NOTE:**
>
> **Theorem 2 (All subsets form a \\\sigma\\-algebra)** For any set \\S\\, the collection of all subsets of \\S\\ is a [\\\sigma\\-algebra](#def-sigma-algebra) on \\S\\.

> **NOTE:**
>
> *Proof*. Each condition of [Definition 1](#def-sigma-algebra) holds:
>
> - \\S\\ is a subset of itself.
> - For each subset \\A\\ of \\S\\, the complement \\S \setminus A\\ contains only elements of \\S\\, so it is a subset of \\S\\.
> - For each sequence \\A_1, A_2, \ldots\\ of subsets of \\S\\, every element of \\\bigcup\_{i=1}^{\infty} A_i\\ is in some \\A_i\\ and so in \\S\\; the union is a subset of \\S\\.

> **NOTE:**
>
> **Theorem 3 (An intersection of \\\sigma\\-algebras is a \\\sigma\\-algebra)** Let \\\mathcal{S}\_j\\ be a [\\\sigma\\-algebra](#def-sigma-algebra) on a set \\S\\ for each \\j\\ in a nonempty set of indices \\J\\. Then their [intersection](sets-functions.llms.md#def-intersection) \\\bigcap\_{j \in J} \mathcal{S}\_j\\, the collection of subsets of \\S\\ that are in every \\\mathcal{S}\_j\\, is a \\\sigma\\-algebra on \\S\\.

> **NOTE:**
>
> *Proof*. Each condition of [Definition 1](#def-sigma-algebra) holds:
>
> - \\S\\ is in every \\\mathcal{S}\_j\\, so it is in the intersection.
> - If \\A\\ is in the intersection, then \\A\\ is in every \\\mathcal{S}\_j\\, so its complement \\S \setminus A\\ is in every \\\mathcal{S}\_j\\, and so it is in the intersection.
> - If \\A_1, A_2, \ldots\\ are in the intersection, then they are in every \\\mathcal{S}\_j\\, so their union \\\bigcup\_{i=1}^{\infty} A_i\\ is in every \\\mathcal{S}\_j\\, and so it is in the intersection.

> **NOTE:**
>
> **Definition 3 (\\\sigma\\-algebra generated by a collection)** Let \\\mathcal{C}\\ be a [collection](sets-functions.llms.md#def-collection) of subsets of a set \\S\\. The **\\\sigma\\-algebra generated by** \\\mathcal{C}\\, written \\\sigma\mathopen{}\left(\mathcal{C}\right)\mathclose{}\\, is the intersection of all the \\\sigma\\-algebras on \\S\\ that contain every set in \\\mathcal{C}\\.

> **NOTE:**
>
> *Remark 2* (The smallest \\\sigma\\-algebra containing \\\mathcal{C}\\). \\\sigma\mathopen{}\left(\mathcal{C}\right)\mathclose{}\\ is a \\\sigma\\-algebra by [Theorem 3](#thm-sigma-algebra-intersection) (the collection of all subsets of \\S\\ is one of the \\\sigma\\-algebras intersected, by [Theorem 2](#thm-power-set-sigma-algebra), so there is at least one). It contains every set in \\\mathcal{C}\\, and it is contained in every other \\\sigma\\-algebra on \\S\\ that does, so it is the smallest \\\sigma\\-algebra on \\S\\ that contains \\\mathcal{C}\\.

> **NOTE:**
>
> **Example 4 (The \\\sigma\\-algebra generated by the even rolls)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\, let \\\mathcal{C}= \mathopen{}\left\\\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\right\\\mathclose{}\\. Every \\\sigma\\-algebra on \\D\\ that contains \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ must also contain \\D\\, the complement \\\mathopen{}\left\\1, 3, 5\right\\\mathclose{}\\, and \\\emptyset\\ ([Definition 1](#def-sigma-algebra) and [Theorem 1](#thm-sigma-algebra-closure)). The collection \\\mathopen{}\left\\\emptyset, \mathopen{}\left\\2, 4, 6\right\\\mathclose{}, \mathopen{}\left\\1, 3, 5\right\\\mathclose{}, D\right\\\mathclose{}\\ is already a \\\sigma\\-algebra ([Example 1](#exm-sigma-algebra)), so it is \\\sigma\mathopen{}\left(\mathcal{C}\right)\mathclose{}\\.

> **NOTE:**
>
> **Definition 4 (Borel \\\sigma\\-algebra)** The **Borel \\\sigma\\-algebra** on \\\mathbb{R}\\, written \\\mathcal{B}\\, is the \\\sigma\\-algebra generated by ([Definition 3](#def-generated-sigma-algebra)) the collection of all [intervals](sets-functions.llms.md#def-interval). Its sets are called **Borel sets**.

> **NOTE:**
>
> **Example 5 (Some Borel sets)**  
>
> - Every interval, such as \\\[0, 1\]\\, \\(2, 5)\\, or \\\[0, \infty)\\, is a Borel set.
> - A single point \\\mathopen{}\left\\a\right\\\mathclose{} = \[a, a\]\\ is an interval, so it is a Borel set.
> - The [integers](notation.llms.md#def-integers) are a Borel set: they are the union of the sequence of single points \\\mathopen{}\left\\0\right\\\mathclose{}, \mathopen{}\left\\1\right\\\mathclose{}, \mathopen{}\left\\-1\right\\\mathclose{}, \mathopen{}\left\\2\right\\\mathclose{}, \mathopen{}\left\\-2\right\\\mathclose{}, \ldots\\ ([countable and uncountable sets](sets-functions.llms.md#exm-countable-set) lists them this way), and \\\mathcal{B}\\ contains that union by [Definition 1](#def-sigma-algebra).
> - The complement \\\mathbb{R}\setminus \[0, 1\]\\ is a Borel set, because \\\mathcal{B}\\ contains the complement of each of its sets.

## 2 Pairwise disjoint sets

> **NOTE:**
>
> **Definition 5 (Pairwise disjoint sets (disjoint, mutually disjoint))** Finitely or countably many sets \\A_1, A_2, \ldots\\ are **pairwise disjoint** (also called **disjoint** or **mutually disjoint**) when no two of them share an element:
>
> \\A_i \cap A_j = \emptyset \quad \text{for all } i \neq j\\

> **NOTE:**
>
> **Example 6 (Low and high die rolls)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ ([sets of die rolls](sets-functions.llms.md#exm-set)), the sets \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\ and \\\mathopen{}\left\\5, 6\right\\\mathclose{}\\ are pairwise disjoint: no roll is in both. The sets \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ and \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\ are not, because \\2\\ is in both.

## 3 Infinite sums

> **NOTE:**
>
> **Definition 6 (Non-decreasing sequence)** A [sequence](sets-functions.llms.md#def-sequence) \\a_1, a_2, \ldots\\ of real numbers or of [extended non-negative reals](sets-functions.llms.md#def-extended-nonneg-reals) is **non-decreasing** if each term is at least as large as the one before it:
>
> \\a_n \le a\_{n+1} \quad \text{for every } n \in \mathbb{N}\\

> **NOTE:**
>
> **Example 7 (Non-decreasing and not)**  
>
> - \\1, 2, 2, 3, 3, 3, \ldots\\ is non-decreasing: a term may equal the one before it.
> - \\1, 2, \infty, \infty, \ldots\\ is non-decreasing, because \\\infty\\ is greater than every real number.
> - \\1, \frac{1}{2}, \frac{1}{3}, \ldots\\ is not non-decreasing, because \\a_2 = \frac{1}{2} \< 1 = a_1\\.

> **NOTE:**
>
> **Definition 7 (Partial sum)** Let \\a_1, a_2, \ldots\\ be a [sequence](sets-functions.llms.md#def-sequence) of real numbers or of [extended non-negative reals](sets-functions.llms.md#def-extended-nonneg-reals). For each \\n \in \mathbb{N}\\, its \\n\\th **partial sum** is the [sum](algebra.llms.md#def-summation) of its first \\n\\ terms:
>
> \\s_n \stackrel{\text{def}}{=}\sum\_{i=1}^{n} a_i = a_1 + \cdots + a_n\\

> **NOTE:**
>
> **Example 8 (Partial sums of halves)** For \\a_i = 1/2^i\\, the sequence \\\frac{1}{2}, \frac{1}{4}, \frac{1}{8}, \ldots\\, the first three partial sums are \\s_1 = \frac{1}{2}\\, \\s_2 = \frac{1}{2} + \frac{1}{4} = \frac{3}{4}\\, and \\s_3 = \frac{3}{4} + \frac{1}{8} = \frac{7}{8}\\. In general, \\s_n = 1 - 1/2^n\\.

> **NOTE:**
>
> **Definition 8 (Infinite sum (series))** Let \\a_1, a_2, \ldots\\ be a sequence in \\\[0, \infty\]\\, with partial sums \\s_n\\ ([Definition 7](#def-partial-sum)). The **infinite sum** (also called a **series**) \\\sum\_{i=1}^{\infty} a_i\\ is the limit of the partial sums:
>
> \\\sum\_{i=1}^{\infty} a_i \stackrel{\text{def}}{=}\lim\_{n \to \infty} s_n\\
>
> Here the limit is a real number when the partial sums are real numbers that [converge](algebra.llms.md#def-sequence-limit) to it, and it is \\\infty\\ when the partial sums [diverge to \\\infty\\](algebra.llms.md#def-sequence-limit) or some partial sum is \\\infty\\; [Lemma 1](#lem-nonneg-series), next, shows that one of these always happens. Sums with other index ranges, such as \\\sum\_{k=0}^{\infty} a_k\\, are defined the same way.

> **NOTE:**
>
> **Example 9 (A finite and an infinite sum)**  
>
> - For \\a_i = 1/2^i\\, the partial sums \\s_n = 1 - 1/2^n\\ ([Example 8](#exm-partial-sum)) converge to \\1\\, because \\1/2^n \to 0\\. So \\\sum\_{i=1}^{\infty} 1/2^i = 1\\.
> - For \\a_i = 1\\, the partial sums are \\s_n = n\\, which diverge to \\\infty\\. So \\\sum\_{i=1}^{\infty} 1 = \infty\\.

> **NOTE:**
>
> **Lemma 1 (Sums of non-negative terms)** Let \\a_1, a_2, \ldots\\ be values in \\\[0, \infty\]\\, with partial sums \\s_n\\ ([Definition 7](#def-partial-sum)), where \\x + \infty = \infty\\ for every \\x\\ in \\\[0, \infty\]\\. Then the partial sums are [non-decreasing](#def-non-decreasing), \\s_1 \le s_2 \le \cdots\\, so their [limit](algebra.llms.md#def-sequence-limit), the infinite sum \\\sum\_{i=1}^{\infty} a_i\\ ([Definition 8](#def-infinite-sum)), always exists, and it is either a finite number or \\\infty\\.

> **NOTE:**
>
> *Proof*. For each \\n\\:
>
> \\ \begin{aligned} s\_{n+1} &= s_n + a\_{n+1} && \text{(definition of } s\_{n+1} \text{)} \\ &\ge s_n && \text{(} a\_{n+1} \ge 0 \text{)} \end{aligned} \\
>
> If some partial sum \\s_N\\ is \\\infty\\, then \\s_n = \infty\\ for every \\n \ge N\\, so the limit is \\\infty\\. Otherwise, the partial sums form a non-decreasing sequence of [real numbers](notation.llms.md#def-real-numbers). If that sequence is [bounded above](algebra.llms.md#def-bounded), it [converges](algebra.llms.md#def-sequence-limit) to a finite number (see [Wikipedia: Monotone convergence theorem](https://en.wikipedia.org/wiki/Monotone_convergence_theorem)). If it is not bounded above, then for every number \\M\\ some \\s_N\\ exceeds \\M\\, and so does every later \\s_n \ge s_N\\; the limit is \\\infty\\.

## 4 Additivity

> **NOTE:**
>
> **Definition 9 (Finite additivity)** Let \\\mathcal{S}\\ be a [\\\sigma\\-algebra](#def-sigma-algebra) on a set \\S\\. A [function](sets-functions.llms.md#def-function) \\\mu : \mathcal{S}\to \[0, \infty\]\\, with values in the [extended non-negative reals](sets-functions.llms.md#def-extended-nonneg-reals), is **finitely additive** if, for every finite collection of [pairwise disjoint](#def-pairwise-disjoint) sets \\A_1, \ldots, A_n\\ in \\\mathcal{S}\\, the value of their union is the sum of their values:
>
> \\\mu(A_1 \cup \cdots \cup A_n) = \sum\_{i=1}^{n} \mu(A_i)\\

> **NOTE:**
>
> **Example 10 (Counting elements is finitely additive)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ ([sets of die rolls](sets-functions.llms.md#exm-set)), let \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\, the number of elements of \\A\\ ([cardinality](sets-functions.llms.md#def-finite-set)), for each set \\A\\ in the \\\sigma\\-algebra of all subsets of \\D\\ ([Example 1](#exm-sigma-algebra)). The sets \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\ and \\\mathopen{}\left\\5, 6\right\\\mathclose{}\\ are pairwise disjoint ([Example 6](#exm-pairwise-disjoint)), and:
>
> \\ \begin{aligned} \mu(\mathopen{}\left\\1, 2\right\\\mathclose{} \cup \mathopen{}\left\\5, 6\right\\\mathclose{}) &= \mu(\mathopen{}\left\\1, 2, 5, 6\right\\\mathclose{}) && \text{(take the union)} \\ &= 4 && \text{(count the elements)} \\ &= 2 + 2 && \text{(write 4 as a sum)} \\ &= \mu(\mathopen{}\left\\1, 2\right\\\mathclose{}) + \mu(\mathopen{}\left\\5, 6\right\\\mathclose{}) && \text{(count each set's elements)} \end{aligned} \\
>
> The same holds for any pairwise disjoint sets, because the sizes of disjoint sets add, so \\\mu\\ is finitely additive.

> **NOTE:**
>
> **Example 11 (Squaring the count is not finitely additive)** On the same \\\sigma\\-algebra, let \\\nu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}^2\\. The sets \\\mathopen{}\left\\1\right\\\mathclose{}\\ and \\\mathopen{}\left\\2\right\\\mathclose{}\\ are pairwise disjoint, but
>
> \\ \begin{aligned} \nu(\mathopen{}\left\\1\right\\\mathclose{} \cup \mathopen{}\left\\2\right\\\mathclose{}) &= \nu(\mathopen{}\left\\1, 2\right\\\mathclose{}) && \text{(take the union)} \\ &= 2^2 = 4, && \text{(count, then square)} \\ \nu(\mathopen{}\left\\1\right\\\mathclose{}) + \nu(\mathopen{}\left\\2\right\\\mathclose{}) &= 1^2 + 1^2 = 2, && \text{(count each set, then square)} \end{aligned} \\
>
> and \\4 \ne 2\\, so \\\nu\\ is not finitely additive.

> **NOTE:**
>
> **Definition 10 (Countable additivity (\\\sigma\\-additivity))** Let \\\mathcal{S}\\ be a [\\\sigma\\-algebra](#def-sigma-algebra) on a set \\S\\. A function \\\mu : \mathcal{S}\to \[0, \infty\]\\ is **countably additive** (also called **\\\sigma\\-additive**) if, for every sequence of [pairwise disjoint](#def-pairwise-disjoint) sets \\A_1, A_2, \ldots\\ in \\\mathcal{S}\\, the value of their union is the sum of their values:
>
> \\\mu\\\left(\bigcup\_{i=1}^{\infty} A_i\right) = \sum\_{i=1}^{\infty} \mu(A_i)\\

> **NOTE:**
>
> **Example 12 (Counting elements is countably additive)** For the counting function \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 10](#exm-finite-additivity), take any sequence of pairwise disjoint sets \\A_1, A_2, \ldots\\. No two of them share an element, and \\D\\ has only six elements, so at most six of the \\A_i\\ contain any elements; the rest are \\\emptyset\\, with \\\mu(\emptyset) = 0\\. The infinite sum therefore has at most six nonzero terms, and finite additivity ([Example 10](#exm-finite-additivity)) shows that those terms add up to \\\mu\\ of the union. So \\\mu\\ is countably additive.

> **NOTE:**
>
> *Remark 3* (The sum in countable additivity always has a value). By [Lemma 1](#lem-nonneg-series), the right-hand side of the equation in [Definition 10](#def-countable-additivity), \\\sum\_{i=1}^{\infty} \mu(A_i)\\, always has a value, because each \\\mu(A_i)\\ is in \\\[0, \infty\]\\. For example, if \\\mu(A_i) = 1/2^i\\ for each \\i\\, the partial sums are \\s_n = 1 - 1/2^n\\, and the sum is \\1\\; if \\\mu(A_i) = 1\\ for each \\i\\, the partial sums are \\s_n = n\\, and the sum is \\\infty\\.

> **NOTE:**
>
> **Lemma 2 (Countable additivity and the empty set)** If \\\mu\\ is a [countably additive](#def-countable-additivity) function on a [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathcal{S}\\, then \\\mu(\emptyset) = 0\\ or \\\mu(\emptyset) = \infty\\.

> **NOTE:**
>
> *Proof*. The set \\\emptyset = S \setminus S\\ is in \\\mathcal{S}\\, as the complement of \\S\\, and the sequence \\\emptyset, \emptyset, \ldots\\ is pairwise disjoint with union \\\emptyset\\, so:
>
> \\ \begin{aligned} \mu(\emptyset) &= \mu\\\left(\bigcup\_{i=1}^{\infty} \emptyset\right) && \text{(the union of copies of } \emptyset \text{ is } \emptyset \text{)} \\ &= \sum\_{i=1}^{\infty} \mu(\emptyset) && \text{(countable additivity)} \end{aligned} \\
>
> If \\\mu(\emptyset) = c\\ for a finite \\c \> 0\\, the right-hand side is \\c + c + \cdots = \infty \neq c\\, a [contradiction](notation.llms.md#def-proof-by-contradiction). So \\\mu(\emptyset)\\ is 0 or \\\infty\\.

> **NOTE:**
>
> **Example 13 (A countably additive function with \\\mu(\emptyset) = 0\\)** The counting function \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 12](#exm-countable-additivity) is countably additive, and:
>
> \\ \begin{aligned} \mu(\emptyset) &= \mathopen{}\left\|\emptyset\right\|\mathclose{} && \text{(definition of } \mu \text{)} \\ &= 0 && \text{(} \emptyset \text{ has no elements)} \end{aligned} \\

> **NOTE:**
>
> **Example 14 (A countably additive function with \\\mu(\emptyset) = \infty\\)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ ([sets of die rolls](sets-functions.llms.md#exm-set)), let \\\mu(A) \stackrel{\text{def}}{=}\infty\\ for every set \\A\\ in the \\\sigma\\-algebra of all subsets of \\D\\ ([Example 1](#exm-sigma-algebra)), including \\A = \emptyset\\. For any sequence of pairwise disjoint sets \\A_1, A_2, \ldots\\, the left-hand side of the countable additivity equation is:
>
> \\ \begin{aligned} \mu\\\left(\bigcup\_{i=1}^{\infty} A_i\right) &= \infty && \text{(definition of } \mu \text{)} \end{aligned} \\
>
> and the right-hand side, the limit of its partial sums ([Lemma 1](#lem-nonneg-series)), is:
>
> \\ \begin{aligned} \sum\_{i=1}^{\infty} \mu(A_i) &= \infty + \infty + \cdots && \text{(definition of } \mu \text{)} \\ &= \infty && \text{(every partial sum is } \infty \text{)} \end{aligned} \\
>
> The two sides agree, so \\\mu\\ is countably additive, and \\\mu(\emptyset) = \infty\\.

> **NOTE:**
>
> *Remark 4* (\\\mu(\emptyset) = 0\\ is an extra requirement). [Example 13](#exm-empty-set-zero) and [Example 14](#exm-empty-set-infinity) show that both values allowed by [Lemma 2](#lem-countable-additivity-empty) occur for countably additive functions. So \\\mu(\emptyset) = 0\\ is an extra requirement, not a consequence of countable additivity.

> **NOTE:**
>
> **Theorem 4 (Countable additivity implies finite additivity)** If \\\mu\\ is a [countably additive](#def-countable-additivity) function on a [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathcal{S}\\, and \\\mu(\emptyset) = 0\\, then \\\mu\\ is [finitely additive](#def-finite-additivity).

> **NOTE:**
>
> *Proof*. Let \\A_1, \ldots, A_n\\ be pairwise disjoint sets in \\\mathcal{S}\\, and extend them to a sequence by setting \\A\_{n+1} = A\_{n+2} = \cdots = \emptyset\\. The extended sequence is still pairwise disjoint, since \\\emptyset\\ shares no element with any set, and its union is \\A_1 \cup \cdots \cup A_n\\. So:
>
> \\ \begin{aligned} \mu(A_1 \cup \cdots \cup A_n) &= \mu\\\left(\bigcup\_{i=1}^{\infty} A_i\right) && \text{(} A_i = \emptyset \text{ for } i \> n \text{)} \\ &= \sum\_{i=1}^{\infty} \mu(A_i) && \text{(countable additivity)} \\ &= \sum\_{i=1}^{n} \mu(A_i) + \sum\_{i=n+1}^{\infty} \mu(\emptyset) && \text{(} A_i = \emptyset \text{ for } i \> n \text{)} \\ &= \sum\_{i=1}^{n} \mu(A_i) && \text{(} \mu(\emptyset) = 0 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 15 (Finitely additive but not countably additive)** Let \\S = \mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\, with the \\\sigma\\-algebra of all subsets of \\S\\ ([Theorem 2](#thm-power-set-sigma-algebra)), and define:
>
> \\ \mu(A) \stackrel{\text{def}}{=}\begin{cases} 0 & \text{if } A \text{ is finite} \\ \infty & \text{if } A \text{ is infinite} \end{cases} \\
>
> *\\\mu\\ is finitely additive.* Let \\A_1, \ldots, A_n\\ be pairwise disjoint subsets of \\S\\. If every \\A_i\\ is finite, then so is their union, and:
>
> \\ \begin{aligned} \mu(A_1 \cup \cdots \cup A_n) &= 0 && \text{(a finite union of finite sets is finite)} \\ &= \sum\_{i=1}^{n} 0 && \text{(a sum of zeros is 0)} \\ &= \sum\_{i=1}^{n} \mu(A_i) && \text{(each } A_i \text{ is finite)} \end{aligned} \\
>
> If some \\A_k\\ is infinite, then the union, which contains \\A_k\\, is infinite too, and:
>
> \\ \begin{aligned} \mu(A_1 \cup \cdots \cup A_n) &= \infty && \text{(the union is infinite)} \\ &= \mu(A_k) + \sum\_{i \in \mathopen{}\left\\1, \ldots, n\right\\\mathclose{} \setminus \mathopen{}\left\\k\right\\\mathclose{}} \mu(A_i) && \text{(} \mu(A_k) = \infty \text{, and } \infty + x = \infty \text{)} \\ &= \sum\_{i=1}^{n} \mu(A_i) && \text{(regroup the terms)} \end{aligned} \\
>
> *\\\mu\\ is not countably additive.* The single-element sets \\\mathopen{}\left\\0\right\\\mathclose{}, \mathopen{}\left\\1\right\\\mathclose{}, \mathopen{}\left\\2\right\\\mathclose{}, \ldots\\ are pairwise disjoint, and their union is \\S\\, which is infinite. So:
>
> \\ \begin{aligned} \mu\\\left(\bigcup\_{k=0}^{\infty} \mathopen{}\left\\k\right\\\mathclose{}\right) &= \mu(S) && \text{(the union is } S \text{)} \\ &= \infty && \text{(} S \text{ is infinite)} \end{aligned} \\
>
> but:
>
> \\ \begin{aligned} \sum\_{k=0}^{\infty} \mu(\mathopen{}\left\\k\right\\\mathclose{}) &= 0 + 0 + \cdots && \text{(each } \mathopen{}\left\\k\right\\\mathclose{} \text{ is finite)} \\ &= 0 && \text{(every partial sum is 0)} \end{aligned} \\

> **NOTE:**
>
> *Remark 5* (Finite additivity does not imply countable additivity). [Example 15](#exm-finite-not-countable) shows that the [converse](notation.llms.md#def-converse) of [Theorem 4](#thm-countable-implies-finite) fails, even when \\\mu(\emptyset) = 0\\: a finitely additive function need not be countably additive (see [Wikipedia: Sigma-additive set function, “An additive function which is not \\\sigma\\-additive”](https://en.wikipedia.org/wiki/Sigma-additive_set_function#An_additive_function_which_is_not_%CF%83-additive)). The function \\\mu\\ in [Example 15](#exm-finite-not-countable) has \\\mu(\emptyset) = 0\\, because \\\emptyset\\ is finite.

## 5 Measures

> **NOTE:**
>
> **Definition 11 (Measure)** A **measure** on a set \\S\\ with a [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathcal{S}\\ is a function \\\mu : \mathcal{S}\to \[0, \infty\]\\ that satisfies:
>
> - \\\mu(\emptyset) = 0\\.
> - \\\mu\\ is [countably additive](#def-countable-additivity).

> **NOTE:**
>
> **Example 16 (Counting elements is a measure)** The counting function \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 10](#exm-finite-additivity), defined on the \\\sigma\\-algebra of all subsets of \\D\\ ([Example 1](#exm-sigma-algebra)), takes values in \\\[0, \infty\]\\, is countably additive ([Example 12](#exm-countable-additivity)), and gives \\\mu(\emptyset) = 0\\, so it is a measure.

> **NOTE:**
>
> **Corollary 1 (Measures are finitely additive)** Every [measure](#def-measure) is [finitely additive](#def-finite-additivity).

> **NOTE:**
>
> *Proof*. A measure \\\mu\\ is countably additive and has \\\mu(\emptyset) = 0\\ ([Definition 11](#def-measure)), so [Theorem 4](#thm-countable-implies-finite) applies to it.

> **NOTE:**
>
> **Definition 12 (Counting measure)** The **counting measure** on a set \\S\\ is the [measure](#def-measure) on the [\\\sigma\\-algebra of all subsets of \\S\\](#thm-power-set-sigma-algebra) that assigns each finite set its number of elements, and each infinite set the value \\\infty\\:
>
> \\ \mu(A) \stackrel{\text{def}}{=}\begin{cases} \mathopen{}\left\|A\right\|\mathclose{} & \text{if } A \text{ is finite} \\ \infty & \text{if } A \text{ is infinite} \end{cases} \\

> **NOTE:**
>
> **Example 17 (Counting measure on the non-negative integers)** For the counting measure \\\mu\\ on the [non-negative integers](notation.llms.md#def-nonnegative-integers) \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\, \\\mu(\mathopen{}\left\\0, 1, 2\right\\\mathclose{}) = 3\\, and the set of even numbers has \\\mu(\mathopen{}\left\\0, 2, 4, \ldots\right\\\mathclose{}) = \infty\\. The even numbers are the union of the pairwise disjoint sets \\\mathopen{}\left\\0\right\\\mathclose{}, \mathopen{}\left\\2\right\\\mathclose{}, \mathopen{}\left\\4\right\\\mathclose{}, \ldots\\, and countable additivity agrees: \\\sum\_{k=0}^{\infty} \mu(\mathopen{}\left\\2k\right\\\mathclose{}) = 1 + 1 + \cdots = \infty\\.

> **NOTE:**
>
> **Definition 13 (Measurable space)** A **measurable space** \\(S, \mathcal{S})\\ is a set \\S\\ together with a [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathcal{S}\\ on \\S\\; the sets in \\\mathcal{S}\\ are its **measurable sets**.

> **NOTE:**
>
> **Example 18 (Measurable spaces of die rolls)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\:
>
> - \\(D, \mathcal{S})\\, with \\\mathcal{S}\\ the collection of all subsets of \\D\\, is a measurable space ([Example 1](#exm-sigma-algebra)).
> - \\(D, \mathopen{}\left\\\emptyset, \mathopen{}\left\\2, 4, 6\right\\\mathclose{}, \mathopen{}\left\\1, 3, 5\right\\\mathclose{}, D\right\\\mathclose{})\\ is also a measurable space. Its measurable sets are only those four; for example, \\\mathopen{}\left\\1\right\\\mathclose{}\\ is not one of them.

> **NOTE:**
>
> **Definition 14 (Measure space)** A **measure space** \\(S, \mathcal{S}, \mu)\\ is a [measurable space](#def-measurable-space) together with a [measure](#def-measure) \\\mu\\ on \\\mathcal{S}\\.

> **NOTE:**
>
> **Example 19 (Measure space of die rolls)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\, adding the counting function \\\mu(A) = \mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 16](#exm-measure) to the [measurable space](#def-measurable-space) \\(D, \mathcal{S})\\ of [Example 18](#exm-measurable-space) makes \\(D, \mathcal{S}, \mu)\\ a measure space.

> **NOTE:**
>
> **Definition 15 (Lebesgue measure)** **Lebesgue measure** on \\\mathbb{R}\\ is the [measure](#def-measure) \\\lambda\\ on the [Borel \\\sigma\\-algebra](#def-borel-sigma-algebra) \\\mathcal{B}\\ that assigns each [interval](sets-functions.llms.md#def-interval) its length: for real numbers \\a \le b\\,
>
> \\\lambda(\[a, b\]) = \lambda((a, b)) = \lambda(\[a, b)) = \lambda((a, b\]) \stackrel{\text{def}}{=}b - a,\\
>
> and \\\lambda(I) \stackrel{\text{def}}{=}\infty\\ for each unbounded interval \\I\\.
>
> **Lebesgue measure on an interval** \\I\\, such as \\\[0, 1\]\\, is \\\lambda\\ applied only to the Borel sets that are subsets of \\I\\.

> **NOTE:**
>
> *Remark 6* (Lebesgue measure exists). Exactly one measure on \\\mathcal{B}\\ assigns every interval its length; constructing it takes more measure theory than these notes cover (see [Wikipedia: Lebesgue measure](https://en.wikipedia.org/wiki/Lebesgue_measure), which also extends \\\lambda\\ to a larger \\\sigma\\-algebra, the Lebesgue-measurable sets, with the same values on Borel sets).

> **NOTE:**
>
> **Example 20 (Lengths of some Borel sets)**  
>
> - \\\lambda(\[2, 5\]) = 5 - 2 = 3\\.
> - A single point has length zero: \\\lambda(\mathopen{}\left\\a\right\\\mathclose{}) = \lambda(\[a, a\]) = a - a = 0\\.
> - The integers are the union of the pairwise disjoint single points \\\mathopen{}\left\\0\right\\\mathclose{}, \mathopen{}\left\\1\right\\\mathclose{}, \mathopen{}\left\\-1\right\\\mathclose{}, \mathopen{}\left\\2\right\\\mathclose{}, \mathopen{}\left\\-2\right\\\mathclose{}, \ldots\\ ([Example 5](#exm-borel-sigma-algebra)), so countable additivity gives \\\lambda(\mathbb{Z}) = 0 + 0 + \cdots = 0\\.
> - \\\lambda(\[0, \infty)) = \infty\\, because \\\[0, \infty)\\ is unbounded.
> - Lebesgue measure on \\\[0, 1\]\\ gives the whole interval \\\[0, 1\]\\ the value \\\lambda(\[0, 1\]) = 1 - 0 = 1\\.

> **NOTE:**
>
> *Remark 7* (Measures generalize size). A [measure](#def-measure) generalizes size: it can measure how many elements a set has, as in [Definition 12](#def-counting-measure), or how long a set of real numbers is, as Lebesgue measure ([Definition 15](#def-lebesgue-measure)) does, assigning each [interval](sets-functions.llms.md#def-interval) \\\[a, b\]\\ its length \\b - a\\. For example, the counting measure on \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\ gives \\\mathopen{}\left\\2, 3, 4, 5\right\\\mathclose{}\\ the value \\4\\, while the Lebesgue measure of the interval \\\[2, 5\]\\ is \\5 - 2 = 3\\. Both can serve as the measures \\\mu_1\\ and \\\mu_2\\ in the [Fubini–Tonelli theorem](calculus.llms.md#thm-fubini-tonelli).

> **NOTE:**
>
> **Definition 16 (Measure zero (null set))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). A set \\A \in \mathcal{S}\\ has **measure zero** (also called a **null set** for \\\mu\\) if \\\mu(A) = 0\\.

> **NOTE:**
>
> **Example 21 (Sets of measure zero)**  
>
> - For a [counting measure](#def-counting-measure), only \\\emptyset\\ has measure zero: a nonempty set has at least one element, so its counting measure is at least \\1\\.
> - For Lebesgue measure, every single point \\\mathopen{}\left\\a\right\\\mathclose{}\\ and the integers \\\mathbb{Z}\\ have measure zero ([Example 20](#exm-lebesgue-measure)), although neither set is empty.

> **NOTE:**
>
> **Definition 17 (Almost everywhere (\\\mu\\-almost everywhere, \\\mu\\-a.e.))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). A statement about the elements of \\S\\ holds **\\\mu\\-almost everywhere** (written **\\\mu\\-a.e.**, or **almost everywhere** when \\\mu\\ is clear from context) if the set of elements for which it fails is a [subset](sets-functions.llms.md#def-subset) of a set of [measure zero](#def-measure-zero).

> **NOTE:**
>
> **Example 22 (Non-negative except on the integers)** Let \\g : \mathbb{R}\to \mathbb{R}\\ with \\g(x) = -1\\ when \\x\\ is an integer and \\g(x) = x^2\\ otherwise. The statement “\\g(x) \ge 0\\” fails exactly for \\x \in \mathbb{Z}\\, and \\\lambda(\mathbb{Z}) = 0\\ ([Example 20](#exm-lebesgue-measure)), so \\g \ge 0\\ holds \\\lambda\\-almost everywhere, though not everywhere.
>
> For a counting measure, only \\\emptyset\\ has measure zero ([Example 21](#exm-measure-zero)), so a statement holds almost everywhere only if it holds everywhere.

> **NOTE:**
>
> **Definition 18 (Finite and \\\sigma\\-finite measures)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). The measure \\\mu\\ is **finite** if \\\mu(S) \< \infty\\. It is **\\\sigma\\-finite** if \\S\\ is the union \\\bigcup\_{i=1}^{\infty} A_i\\ of a sequence of sets \\A_1, A_2, \ldots\\ in \\\mathcal{S}\\ with \\\mu(A_i) \< \infty\\ for every \\i\\.

> **NOTE:**
>
> **Example 23 (Finite and \\\sigma\\-finite measures)**  
>
> - Every finite measure is \\\sigma\\-finite: take \\A_1 = S\\ and \\A_2 = A_3 = \cdots = \emptyset\\, with \\\mu(A_1) = \mu(S) \< \infty\\ and \\\mu(\emptyset) = 0\\.
> - The counting measure on the die rolls \\D\\ is finite, with \\\mu(D) = 6\\.
> - The counting measure on \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\ is not finite, but it is \\\sigma\\-finite: it is the union of the sets \\A_i = \mathopen{}\left\\0, 1, \ldots, i\right\\\mathclose{}\\, each with \\\mu(A_i) = i + 1 \< \infty\\.
> - Lebesgue measure on \\\mathbb{R}\\ is not finite, since \\\lambda(\mathbb{R}) = \infty\\, but it is \\\sigma\\-finite: \\\mathbb{R}\\ is the union of the intervals \\A_i = \[-i, i\]\\, each with \\\lambda(A_i) = 2i \< \infty\\.

## 6 Probability measures

> **NOTE:**
>
> **Definition 19 (Probability measure)** A **probability measure** on a [measurable space](#def-measurable-space) \\(\Omega, \mathcal{F})\\ is a [measure](#def-measure) \\P\\ on \\\mathcal{F}\\ that gives the whole set \\\Omega\\ the value \\1\\:
>
> \\P(\Omega) = 1\\
>
> Then \\(\Omega, \mathcal{F}, P)\\ is a **probability space**, \\\Omega\\ is its **sample space**, the elements of \\\Omega\\ are **outcomes**, and the sets in \\\mathcal{F}\\ are **events**.

> **NOTE:**
>
> **Example 24 (A fair die, and the unit interval)**  
>
> - For one roll of a fair die, the sample space is \\\Omega = D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\, the events are all subsets of \\D\\, and \\P(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{} / 6\\. \\P\\ is the counting function \\\mu(A) = \mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 16](#exm-measure) divided by \\6\\. So \\P(\emptyset) = 0\\, and \\P\\ is countably additive, because each sum in [Example 12](#exm-countable-additivity) has at most six nonzero terms, and dividing a finite sum by \\6\\ divides each term by \\6\\. It is a probability measure, since \\P(D) = 6/6 = 1\\. The outcome \\3\\ is in the event “the roll is odd”, \\\mathopen{}\left\\1, 3, 5\right\\\mathclose{}\\, which has \\P(\mathopen{}\left\\1, 3, 5\right\\\mathclose{}) = 3/6 = 1/2\\.
> - Lebesgue measure on \\\[0, 1\]\\ is a probability measure, because \\\lambda(\[0, 1\]) = 1\\ ([Example 20](#exm-lebesgue-measure)).
> - The counting measure on \\D\\ is not a probability measure, because it gives \\D\\ the value \\6\\.

> **NOTE:**
>
> *Remark 8* (Mutually exclusive events). In probability, [pairwise disjoint](#def-pairwise-disjoint) [events](#def-probability-measure) are usually called **mutually exclusive**. For example, for one roll of a six-sided die, the events “the roll is [even](notation.llms.md#def-even-odd)”, \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\, and “the roll is odd”, \\\mathopen{}\left\\1, 3, 5\right\\\mathclose{}\\, are mutually exclusive: no roll is both even and odd.

## 7 Measurable functions and integrals

> **NOTE:**
>
> **Definition 20 (Measurable function)** Let \\(S, \mathcal{S})\\ be a [measurable space](#def-measurable-space). A [function](sets-functions.llms.md#def-function) \\f : S \to \mathbb{R}\\ is **measurable** (with respect to \\\mathcal{S}\\) if, for every real number \\c\\, the set of elements where \\f\\ is at most \\c\\ is measurable:
>
> \\\mathopen{}\left\\s \in S : f(s) \le c\right\\\mathclose{} \in \mathcal{S}\\

> **NOTE:**
>
> *Remark 9* (Measurable functions in general). Other sources define a function \\f : S \to T\\ between measurable spaces \\(S, \mathcal{S})\\ and \\(T, \mathcal{T})\\ to be measurable when \\\mathopen{}\left\\s \in S : f(s) \in B\right\\\mathclose{} \in \mathcal{S}\\ for every \\B \in \mathcal{T}\\. For \\T = \mathbb{R}\\ with the [Borel \\\sigma\\-algebra](#def-borel-sigma-algebra), that definition is equivalent to [Definition 20](#def-measurable-function) (see [Wikipedia: Measurable function](https://en.wikipedia.org/wiki/Measurable_function)). For example, with \\B = (-\infty, c\]\\, the general definition requires \\\mathopen{}\left\\s \in S : f(s) \le c\right\\\mathclose{} \in \mathcal{S}\\, which is the condition in [Definition 20](#def-measurable-function).

> **NOTE:**
>
> **Example 25 (Measurable and not measurable)** On the die rolls \\D\\, take the \\\sigma\\-algebra \\\mathcal{S}= \mathopen{}\left\\\emptyset, \mathopen{}\left\\2, 4, 6\right\\\mathclose{}, \mathopen{}\left\\1, 3, 5\right\\\mathclose{}, D\right\\\mathclose{}\\ of [Example 1](#exm-sigma-algebra).
>
> - Let \\f(x) = 1\\ for even \\x\\ and \\f(x) = 0\\ for odd \\x\\. The set \\\mathopen{}\left\\x \in D : f(x) \le c\right\\\mathclose{}\\ is \\\emptyset\\ when \\c \< 0\\, \\\mathopen{}\left\\1, 3, 5\right\\\mathclose{}\\ when \\0 \le c \< 1\\, and \\D\\ when \\c \ge 1\\. All three are in \\\mathcal{S}\\, so \\f\\ is measurable.
> - Let \\g(x) = x\\. Then \\\mathopen{}\left\\x \in D : g(x) \le 1\right\\\mathclose{} = \mathopen{}\left\\1\right\\\mathclose{}\\, which is not in \\\mathcal{S}\\, so \\g\\ is not measurable.
>
> With the \\\sigma\\-algebra of all subsets of \\D\\ instead, every set \\\mathopen{}\left\\x \in D : g(x) \le c\right\\\mathclose{}\\ is a subset of \\D\\, so every function \\D \to \mathbb{R}\\, including \\g\\, is measurable.

> **NOTE:**
>
> **Definition 21 (Integral of a non-negative function)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space), and let \\f : S \to \[0, \infty)\\ be [measurable](#def-measurable-function). The **integral** of \\f\\ with respect to \\\mu\\ is
>
> \\ \int_S f \\ d\mu \stackrel{\text{def}}{=} \sup \mathopen{}\left\\\sum\_{i=1}^{n} \mathopen{}\left(\inf\_{s \in A_i} f(s)\right)\mathclose{} \mu(A_i)\right\\\mathclose{} \\
>
> where the [supremum](algebra.llms.md#def-supremum) is over all ways of writing \\S\\ as the union of finitely many nonempty [pairwise disjoint](#def-pairwise-disjoint) sets \\A_1, \ldots, A_n\\ in \\\mathcal{S}\\, and each \\\inf\_{s \in A_i} f(s)\\ is the [infimum](algebra.llms.md#def-infimum) of the values of \\f\\ on \\A_i\\. In the sums, \\0 \cdot \infty \stackrel{\text{def}}{=}0\\, and \\x \cdot \infty \stackrel{\text{def}}{=}\infty\\ for \\x \> 0\\; the supremum is \\\infty\\ if some sum is \\\infty\\. The integral is also written \\\int_S f(s) \\ d\mu(s)\\.
>
> ([Billingsley 1995, sec. 15](#ref-billingsley1995probability))

> **NOTE:**
>
> *Remark 10* (Each sum is a lower estimate). Each sum in [Definition 21](#def-integral-nonneg) splits \\S\\ into pieces and weights each piece \\A_i\\ by the smallest value \\f\\ approaches on it, so each sum is at most the integral. For Lebesgue measure on a closed interval \\\[a, b\]\\ and a function \\f \ge 0\\ that has a [Riemann integral](calculus.llms.md#def-riemann-integral) on \\\[a, b\]\\, the two integrals agree: \\\int\_{\[a, b\]} f \\ d\lambda = \int_a^b f(x) \\ dx\\ (see [Wikipedia: Lebesgue integral](https://en.wikipedia.org/wiki/Lebesgue_integral)).

> **NOTE:**
>
> **Example 26 (Integrals with respect to counting measure)** Let \\\mu\\ be the counting measure on the die rolls \\D\\, and let \\g : D \to \[0, \infty)\\. Every function on \\D\\ is measurable ([Example 25](#exm-measurable-function)).
>
> *The integral is the sum of the values.* For any split of \\D\\ into nonempty pairwise disjoint sets \\A_1, \ldots, A_n\\:
>
> \\ \begin{aligned} \sum\_{i=1}^{n} \mathopen{}\left(\inf\_{x \in A_i} g(x)\right)\mathclose{} \mu(A_i) &= \sum\_{i=1}^{n} \sum\_{x \in A_i} \inf\_{y \in A_i} g(y) && \text{(} \mu(A_i) \text{ counts the elements of } A_i \text{)} \\ &\le \sum\_{i=1}^{n} \sum\_{x \in A_i} g(x) && \text{(an infimum is at most each value)} \\ &= \sum\_{x \in D} g(x) && \text{(each } x \in D \text{ is in exactly one } A_i \text{)} \end{aligned} \\
>
> The split into the six single points \\\mathopen{}\left\\1\right\\\mathclose{}, \ldots, \mathopen{}\left\\6\right\\\mathclose{}\\ gives exactly \\\sum\_{x \in D} g(x)\\, so the supremum is \\\int_D g \\ d\mu = \sum\_{x \in D} g(x)\\. For example, with \\g(x) = x\\, \\\int_D g \\ d\mu = 1 + 2 + \cdots + 6 = 21\\.
>
> *An infinite integral.* For the counting measure \\\mu\\ on \\\mathbb{N}\\ and the constant function \\h(n) = 1\\, the split with one set, \\A_1 = \mathbb{N}\\, gives the sum \\1 \cdot \mu(\mathbb{N}) = 1 \cdot \infty = \infty\\, so \\\int\_{\mathbb{N}} h \\ d\mu = \infty\\.

> **NOTE:**
>
> **Definition 22 (Integral of a real-valued function)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space), and let \\f : S \to \mathbb{R}\\ be [measurable](#def-measurable-function). The **positive part** and **negative part** of \\f\\ are the non-negative functions
>
> \\ \begin{aligned} f^{+}(s) &\stackrel{\text{def}}{=}\max\mathopen{}\left\\f(s), 0\right\\\mathclose{} \\ f^{-}(s) &\stackrel{\text{def}}{=}\max\mathopen{}\left\\-f(s), 0\right\\\mathclose{} \end{aligned} \\
>
> so that \\f = f^{+} - f^{-}\\ and \\\mathopen{}\left\|f\right\|\mathclose{} = f^{+} + f^{-}\\. The **integral** of \\f\\ with respect to \\\mu\\ is
>
> \\\int_S f \\ d\mu \stackrel{\text{def}}{=}\int_S f^{+} \\ d\mu - \int_S f^{-} \\ d\mu,\\
>
> using [Definition 21](#def-integral-nonneg) for each term, when at least one of the two terms is finite; otherwise, the integral of \\f\\ is undefined. (\\f^{+}\\, \\f^{-}\\, and \\\mathopen{}\left\|f\right\|\mathclose{}\\ are measurable when \\f\\ is ([Billingsley 1995](#ref-billingsley1995probability), Theorem 13.3).)
>
> ([Billingsley 1995, sec. 15](#ref-billingsley1995probability))

> **NOTE:**
>
> **Example 27 (An integral with positive and negative parts)** For the counting measure \\\mu\\ on the die rolls \\D\\, let \\f(x) = x - 3\\. Its values at \\1, \ldots, 6\\ are \\-2, -1, 0, 1, 2, 3\\, so:
>
> - \\f^{+}\\ has values \\0, 0, 0, 1, 2, 3\\, and \\\int_D f^{+} \\ d\mu = 6\\ by [Example 26](#exm-integral-nonneg);
> - \\f^{-}\\ has values \\2, 1, 0, 0, 0, 0\\, and \\\int_D f^{-} \\ d\mu = 3\\;
> - \\\int_D f \\ d\mu = 6 - 3 = 3\\, which is also \\\sum\_{x \in D} (x - 3) = 21 - 18 = 3\\.

> **NOTE:**
>
> **Definition 23 (Absolutely integrable function (integrable function, absolute integrability))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). A [measurable](#def-measurable-function) function \\f : S \to \mathbb{R}\\ is **absolutely integrable** with respect to \\\mu\\ (often just called **integrable**) if the integral of its [absolute value](algebra.llms.md#def-absolute-value) is finite:
>
> \\\int_S \mathopen{}\left\|f\right\|\mathclose{} \\ d\mu \< \infty\\
>
> The property itself is called **absolute integrability**.

> **NOTE:**
>
> *Remark 11* (An absolutely integrable function has a finite integral). If \\f\\ is absolutely integrable, then \\\int_S f^{+} \\ d\mu\\ and \\\int_S f^{-} \\ d\mu\\ are both finite, because \\f^{+} \le \mathopen{}\left\|f\right\|\mathclose{}\\ and \\f^{-} \le \mathopen{}\left\|f\right\|\mathclose{}\\, so each sum in [Definition 21](#def-integral-nonneg) for \\f^{+}\\ or \\f^{-}\\ is at most the matching sum for \\\mathopen{}\left\|f\right\|\mathclose{}\\. So \\\int_S f \\ d\mu\\ ([Definition 22](#def-integral)) is a real number.

> **NOTE:**
>
> **Example 28 (Absolutely integrable and not)**  
>
> - For the counting measure on the die rolls \\D\\, \\f(x) = x - 3\\ ([Example 27](#exm-integral)) is absolutely integrable: \\\int_D \mathopen{}\left\|f\right\|\mathclose{} \\ d\mu = 2 + 1 + 0 + 1 + 2 + 3 = 9 \< \infty\\ by [Example 26](#exm-integral-nonneg).
> - For the counting measure on \\\mathbb{N}\\, the constant function \\h(n) = 1\\ is not absolutely integrable, because \\\int\_{\mathbb{N}} \mathopen{}\left\|h\right\|\mathclose{} \\ d\mu = \int\_{\mathbb{N}} h \\ d\mu = \infty\\ ([Example 26](#exm-integral-nonneg)).

## 8 Product measures

> **NOTE:**
>
> **Definition 24 (Product \\\sigma\\-algebra)** Let \\(S, \mathcal{S})\\ and \\(T, \mathcal{T})\\ be [measurable spaces](#def-measurable-space). A **measurable rectangle** is a [Cartesian product](sets-functions.llms.md#def-cartesian-product) \\A \times B\\ with \\A \in \mathcal{S}\\ and \\B \in \mathcal{T}\\. The **product \\\sigma\\-algebra** \\\mathcal{S}\otimes \mathcal{T}\\ is the \\\sigma\\-algebra on \\S \times T\\ [generated by](#def-generated-sigma-algebra) the measurable rectangles.

> **NOTE:**
>
> **Example 29 (Product \\\sigma\\-algebras)**  
>
> - Give the die rolls \\D\\ the \\\sigma\\-algebra \\\mathcal{S}\\ of all its subsets. Each single pair \\\mathopen{}\left\\(a, b)\right\\\mathclose{} = \mathopen{}\left\\a\right\\\mathclose{} \times \mathopen{}\left\\b\right\\\mathclose{}\\ in \\D \times D\\ is a measurable rectangle. Every subset of \\D \times D\\ is a union of finitely many single pairs, and \\\mathcal{S}\otimes \mathcal{S}\\ contains finite unions of its sets ([Theorem 1](#thm-sigma-algebra-closure)), as well as \\\emptyset\\, so \\\mathcal{S}\otimes \mathcal{S}\\ is the collection of all subsets of \\D \times D\\.
> - The rectangle \\\[0, 2\] \times \[0, 3\]\\ is a measurable rectangle for the Borel \\\sigma\\-algebras, so it is in \\\mathcal{B}\otimes \mathcal{B}\\.

> **NOTE:**
>
> **Definition 25 (Product measure)** Let \\(S, \mathcal{S}, \mu)\\ and \\(T, \mathcal{T}, \nu)\\ be measure spaces with [\\\sigma\\-finite](#def-sigma-finite) measures \\\mu\\ and \\\nu\\. The **product measure** \\\mu \otimes \nu\\ is the measure on the [product \\\sigma\\-algebra](#def-product-sigma-algebra) \\\mathcal{S}\otimes \mathcal{T}\\ that gives each measurable rectangle the product of the measures of its sides:
>
> \\(\mu \otimes \nu)(A \times B) = \mu(A) \\ \nu(B) \quad \text{for all } A \in \mathcal{S}\text{ and } B \in \mathcal{T},\\
>
> with \\0 \cdot \infty = \infty \cdot 0 \stackrel{\text{def}}{=}0\\ and \\x \cdot \infty = \infty \cdot x \stackrel{\text{def}}{=}\infty\\ for \\x \> 0\\. Exactly one measure has these values ([Billingsley 1995](#ref-billingsley1995probability), Theorem 18.2).

> **NOTE:**
>
> **Example 30 (Product measures)**  
>
> - For the counting measure \\\mu\\ on the die rolls \\D\\, \\(\mu \otimes \mu)(A \times B) = \mathopen{}\left\|A\right\|\mathclose{} \mathopen{}\left\|B\right\|\mathclose{}\\, the number of pairs in \\A \times B\\. For example, the set of pairs in which both rolls are even is \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{} \times \mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\, with \\(\mu \otimes \mu)(\mathopen{}\left\\2, 4, 6\right\\\mathclose{} \times \mathopen{}\left\\2, 4, 6\right\\\mathclose{}) = 3 \cdot 3 = 9\\ pairs.
> - For Lebesgue measure \\\lambda\\ on \\\mathbb{R}\\, \\(\lambda \otimes \lambda)(\[0, 2\] \times \[0, 3\]) = 2 \cdot 3 = 6\\, the area of the rectangle.

## 9 Further reading

- Billingsley ([1995](#ref-billingsley1995probability)) develops measure theory and builds probability on it. Its early chapters define \\\sigma\\-algebras, measures, and their basic properties.
- Folland ([1999](#ref-folland1999real)) is a graduate text on measure and integration; its first chapters treat \\\sigma\\-algebras and measures.
- Gut ([2013](#ref-gut2013)) is a graduate course in probability that opens with a chapter on introductory measure theory.

## References

Billingsley, Patrick. 1995. *Probability and Measure*. 3rd ed. Wiley Series in Probability and Mathematical Statistics. Wiley.

Folland, Gerald B. 1999. *Real Analysis: Modern Techniques and Their Applications*. 2nd ed. Wiley. <https://www.wiley.com/en-us/Real+Analysis%3A+Modern+Techniques+and+Their+Applications%2C+2nd+Edition-p-9780471317166>.

Gut, Allan. 2013. *Probability: A Graduate Course*. 2nd ed. Springer Texts in Statistics. Springer. <https://doi.org/10.1007/978-1-4614-4708-5>.

Back to top
