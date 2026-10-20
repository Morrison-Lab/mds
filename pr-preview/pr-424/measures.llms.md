# Measures

Code

Published

Last modified: 2026-10-19 23:35:06 (PDT)

> **NOTE:**
>
> *Remark*. A measure assigns a size to each set in a [collection of sets](sets.llms.md#def-collection): how many elements it has, how long it is, or how likely it is. This page builds measures from \\\sigma\\-algebras and additivity, using the definitions on the [Sets](sets.llms.md) and [Functions](functions.llms.md) pages. One kind of measure, the probability measure ([Definition 18](#def-probability-measure)), is the starting point of the Morrison Lab’s probability notes ([probability measure](https://morrison-lab.github.io/pds/probability-basics.html#def-probability)).

## 1 \\\sigma\\-algebras

> **NOTE:**
>
> **Definition 1 (\\\sigma\\-algebra (\\\sigma\\-field, Borel field))** A **\\\sigma\\-algebra** [\[1\]](#ref-wikipedia_sigma_algebra) (also called a **\\\sigma\\-field** [\[2\]](#ref-billingsley1995probability) or a **Borel field** [\[3\]](#ref-CaseBerg01), Definition 1.2.1) on a set \\S\\ is a [collection](sets.llms.md#def-collection) \\\mathcal{S}\\ of [subsets](sets.llms.md#def-subset) of \\S\\ that satisfies:
>
> - \\\mathcal{S}\\ contains \\S\\ itself.
> - For each set \\A\\ in \\\mathcal{S}\\, \\\mathcal{S}\\ contains its [complement](sets.llms.md#def-complement) \\S \setminus A\\.
> - For each [sequence](functions.llms.md#def-sequence) \\A_1, A_2, \ldots\\ of sets in \\\mathcal{S}\\, \\\mathcal{S}\\ contains their union \\\bigcup\_{i=1}^{\infty} A_i\\.

> **NOTE:**
>
> *Remark 1* (“Borel” in “Borel field”). The “Borel” in “Borel field” is a different use of “Borel” from the [Borel \\\sigma\\-algebra](#def-borel-sigma-algebra) on \\\mathbb{R}\\, which is one particular \\\sigma\\-algebra.

> **NOTE:**
>
> **Example 1 (\\\sigma\\-algebras for die rolls)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ ([sets of die rolls](sets.llms.md#exm-set)), the collection of all subsets of \\D\\ is a \\\sigma\\-algebra on \\D\\, since complements and unions of subsets of \\D\\ are again subsets of \\D\\. So is the smaller collection
>
> \\\mathopen{}\left\\\emptyset, \mathopen{}\left\\2, 4, 6\right\\\mathclose{}, \mathopen{}\left\\1, 3, 5\right\\\mathclose{}, D\right\\\mathclose{}\\
>
> which contains \\D\\, the complement of each of its sets, and every union of its sets: for example, \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{} \cup \mathopen{}\left\\1, 3, 5\right\\\mathclose{} = D\\.

> **NOTE:**
>
> **Example 2 (A collection that is not a \\\sigma\\-algebra)** The collection \\\mathopen{}\left\\\emptyset, \mathopen{}\left\\1\right\\\mathclose{}, D\right\\\mathclose{}\\ is not a \\\sigma\\-algebra on \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\: it contains \\\mathopen{}\left\\1\right\\\mathclose{}\\ but not its complement \\D \setminus \mathopen{}\left\\1\right\\\mathclose{} = \mathopen{}\left\\2, 3, 4, 5, 6\right\\\mathclose{}\\.

> **NOTE:**
>
> **Example 3 (A \\\sigma\\-algebra is closed under complements and countable unions)** A [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathcal{S}\\ on a [set](sets.llms.md#def-set) \\S\\ is [closed under](functions.llms.md#def-closed-under) [complements](sets.llms.md#def-complement) in \\S\\ and under [unions](sets.llms.md#def-union) of [sequences](functions.llms.md#def-sequence) of its [sets](sets.llms.md#def-set), because [Definition 1](#def-sigma-algebra) requires both. The [collection](sets.llms.md#def-collection) in [Example 2](#exm-not-sigma-algebra) is not closed under complements.

> **NOTE:**
>
> **Theorem 1 (Closure properties of a \\\sigma\\-algebra)** If \\\mathcal{S}\\ is a [\\\sigma\\-algebra](#def-sigma-algebra) on a set \\S\\, then \\\mathcal{S}\\ contains:
>
> - the [empty set](sets.llms.md#def-empty-set) \\\emptyset\\;
> - the union \\A_1 \cup \cdots \cup A_n\\ of any [finitely many](functions.llms.md#def-finite-set) sets \\A_1, \ldots, A_n\\ in \\\mathcal{S}\\;
> - the intersection \\\bigcap\_{i=1}^{\infty} A_i\\ of any sequence \\A_1, A_2, \ldots\\ of sets in \\\mathcal{S}\\.
>
> So \\\mathcal{S}\\ is [closed under](functions.llms.md#def-closed-under) [finite](functions.llms.md#def-finite-set) [unions](sets.llms.md#def-union) and under intersections of sequences of its sets.

> **NOTE:**
>
> *Proof*. *Empty set.* \\\mathcal{S}\\ contains \\S\\, so it contains the complement of \\S\\, which is \\S \setminus S = \emptyset\\.
>
> *Finite unions.* Extend \\A_1, \ldots, A_n\\ to a sequence by setting
>
> \\ \begin{aligned} A\_{n+1} &= A\_{n+2} \\ &= \cdots \\ &= \emptyset; \end{aligned} \\
>
> each of these sets is in \\\mathcal{S}\\, by the first part. Then:
>
> \\ \begin{aligned} A_1 \cup \cdots \cup A_n &= A_1 \cup \cdots \cup A_n \cup \emptyset \cup \emptyset \cup \cdots && \text{(a union with } \emptyset \text{ adds no elements)} \\ &= \bigcup\_{i=1}^{\infty} A_i && \text{(} A_i = \emptyset \text{ for } i \> n \text{)} \end{aligned} \\
>
> and \\\mathcal{S}\\ contains \\\bigcup\_{i=1}^{\infty} A_i\\ by the union rule of [Definition 1](#def-sigma-algebra).
>
> *Countable intersections.* Each \\A_i\\ is a subset of \\S\\, so an element of \\S\\ is outside \\S \setminus A_i\\ exactly when it is in \\A_i\\; that is, \\S \setminus (S \setminus A_i) = A_i\\. So, by [De Morgan’s laws](sets.llms.md#thm-de-morgan):
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
> **Theorem 3 (An intersection of \\\sigma\\-algebras is a \\\sigma\\-algebra)** Let \\\mathcal{S}\_j\\ be a [\\\sigma\\-algebra](#def-sigma-algebra) on a set \\S\\ for each \\j\\ in a nonempty set of indices \\J\\. Then their [intersection](sets.llms.md#def-intersection) \\\bigcap\_{j \in J} \mathcal{S}\_j\\, the collection of subsets of \\S\\ that are in every \\\mathcal{S}\_j\\, is a \\\sigma\\-algebra on \\S\\.

> **NOTE:**
>
> *Proof*. Each condition of [Definition 1](#def-sigma-algebra) holds:
>
> - \\S\\ is in every \\\mathcal{S}\_j\\, so it is in the intersection.
> - If \\A\\ is in the intersection, then \\A\\ is in every \\\mathcal{S}\_j\\, so its complement \\S \setminus A\\ is in every \\\mathcal{S}\_j\\, and so it is in the intersection.
> - If \\A_1, A_2, \ldots\\ are in the intersection, then they are in every \\\mathcal{S}\_j\\, so their union \\\bigcup\_{i=1}^{\infty} A_i\\ is in every \\\mathcal{S}\_j\\, and so it is in the intersection.

> **NOTE:**
>
> **Definition 2 (\\\sigma\\-algebra generated by a collection)** Let \\\mathcal{C}\\ be a [collection](sets.llms.md#def-collection) of subsets of a set \\S\\. The **\\\sigma\\-algebra generated by** \\\mathcal{C}\\, written \\\sigma\mathopen{}\left(\mathcal{C}\right)\mathclose{}\\, is the intersection of all the \\\sigma\\-algebras on \\S\\ that contain every set in \\\mathcal{C}\\.

> **NOTE:**
>
> *Remark 2* (The smallest \\\sigma\\-algebra containing \\\mathcal{C}\\). \\\sigma\mathopen{}\left(\mathcal{C}\right)\mathclose{}\\ is a \\\sigma\\-algebra by [Theorem 3](#thm-sigma-algebra-intersection) (the collection of all subsets of \\S\\ is one of the \\\sigma\\-algebras intersected, by [Theorem 2](#thm-power-set-sigma-algebra), so there is at least one). It contains every set in \\\mathcal{C}\\, and it is contained in every other \\\sigma\\-algebra on \\S\\ that does, so it is the smallest \\\sigma\\-algebra on \\S\\ that contains \\\mathcal{C}\\.

> **NOTE:**
>
> **Example 4 (The \\\sigma\\-algebra generated by the even rolls)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\, let \\\mathcal{C}= \mathopen{}\left\\\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\right\\\mathclose{}\\. Every \\\sigma\\-algebra on \\D\\ that contains \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ must also contain \\D\\, the complement \\\mathopen{}\left\\1, 3, 5\right\\\mathclose{}\\, and \\\emptyset\\ ([Definition 1](#def-sigma-algebra) and [Theorem 1](#thm-sigma-algebra-closure)). The collection \\\mathopen{}\left\\\emptyset, \mathopen{}\left\\2, 4, 6\right\\\mathclose{}, \mathopen{}\left\\1, 3, 5\right\\\mathclose{}, D\right\\\mathclose{}\\ is already a \\\sigma\\-algebra ([Example 1](#exm-sigma-algebra)), so it is \\\sigma\mathopen{}\left(\mathcal{C}\right)\mathclose{}\\.

> **NOTE:**
>
> **Definition 3 (Borel \\\sigma\\-algebra)** The **Borel \\\sigma\\-algebra** on \\\mathbb{R}\\, written \\\mathcal{B}\\, is the \\\sigma\\-algebra generated by ([Definition 2](#def-generated-sigma-algebra)) the collection of all [intervals](sets.llms.md#def-interval).

> **NOTE:**
>
> **Example 5 (The Borel \\\sigma\\-algebra contains \\\mathbb{R}\\ and the half-lines)** The [interval](sets.llms.md#def-interval) \\(-\infty, 0)\\ is in \\\mathcal{B}\\ by [Definition 3](#def-borel-sigma-algebra). So is its [complement](sets.llms.md#def-complement) \\\[0, \infty)\\, because \\\mathcal{B}\\ is a \\\sigma\\-algebra ([Definition 1](#def-sigma-algebra)). The [set](sets.llms.md#def-set) \\\mathbb{R}\\ is in \\\mathcal{B}\\ too: a \\\sigma\\-algebra on \\\mathbb{R}\\ contains \\\mathbb{R}\\ itself.

> **NOTE:**
>
> **Definition 4 (Borel set)** A **Borel set** [\[4\]](#ref-wikipedia_borel_set) is a [set](sets.llms.md#def-set) in the [Borel \\\sigma\\-algebra](#def-borel-sigma-algebra) \\\mathcal{B}\\.

> **NOTE:**
>
> **Example 6 (Some Borel sets)**  
>
> - Every [interval](sets.llms.md#def-interval), such as \\\[0, 1\]\\, \\(2, 5)\\, or \\\[0, \infty)\\, is a [Borel set](#def-borel-set).
> - A single point \\\mathopen{}\left\\a\right\\\mathclose{} = \[a, a\]\\ is an interval, so it is a Borel set.
> - The [integers](number-systems.llms.md#def-integers) are a Borel set: they are the [union](sets.llms.md#def-union) of the [sequence](functions.llms.md#def-sequence) of single points \\\mathopen{}\left\\0\right\\\mathclose{}, \mathopen{}\left\\1\right\\\mathclose{}, \mathopen{}\left\\-1\right\\\mathclose{}, \mathopen{}\left\\2\right\\\mathclose{}, \mathopen{}\left\\-2\right\\\mathclose{}, \ldots\\ ([countable and uncountable sets](functions.llms.md#exm-countable-set) lists them this way), and \\\mathcal{B}\\ contains that union by [Definition 1](#def-sigma-algebra).
> - The [complement](sets.llms.md#def-complement) \\\mathbb{R}\setminus \[0, 1\]\\ is a Borel set, because \\\mathcal{B}\\ contains the complement of each of its sets.

## 2 Additivity

> **NOTE:**
>
> **Definition 5 (Finite additivity)** Let \\\mathcal{S}\\ be a [\\\sigma\\-algebra](#def-sigma-algebra) on a set \\S\\. A [function](functions.llms.md#def-function) \\\mu: \mathcal{S}\to \[0, \infty\]\\, with values in the [extended non-negative reals](sets.llms.md#def-extended-nonneg-reals), is **finitely additive** [\[5\]](#ref-wikipedia_sigma_additive_set_function) if, for every finite collection of [pairwise disjoint](sets.llms.md#def-pairwise-disjoint) [sets](sets.llms.md#def-set) \\A_1, \ldots, A_n\\ in \\\mathcal{S}\\, the value of their union is the sum of their values:
>
> \\\mu(A_1 \cup \cdots \cup A_n) = \sum\_{i=1}^n\mu(A_i)\\

> **NOTE:**
>
> **Example 7 (Counting elements is finitely additive)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ ([sets of die rolls](sets.llms.md#exm-set)), let \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\, the number of elements of \\A\\ ([cardinality](functions.llms.md#def-cardinality)), for each set \\A\\ in the \\\sigma\\-algebra of all subsets of \\D\\ ([Example 1](#exm-sigma-algebra)). The sets \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\ and \\\mathopen{}\left\\5, 6\right\\\mathclose{}\\ are pairwise disjoint ([low and high die rolls](sets.llms.md#exm-pairwise-disjoint)), and:
>
> \\ \begin{aligned} \mu(\mathopen{}\left\\1, 2\right\\\mathclose{} \cup \mathopen{}\left\\5, 6\right\\\mathclose{}) &= \mu(\mathopen{}\left\\1, 2, 5, 6\right\\\mathclose{}) && \text{(take the union)} \\ &= 4 && \text{(count the elements)} \\ &= 2 + 2 && \text{(write 4 as a sum)} \\ &= \mu(\mathopen{}\left\\1, 2\right\\\mathclose{}) + \mu(\mathopen{}\left\\5, 6\right\\\mathclose{}) && \text{(count each set's elements)} \end{aligned} \\
>
> The same holds for any pairwise disjoint sets, because the sizes of disjoint sets add, so \\\mu\\ is finitely additive.

> **NOTE:**
>
> **Example 8 (Squaring the count is not finitely additive)** On the same \\\sigma\\-algebra, let \\\nu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}^2\\. The sets \\\mathopen{}\left\\1\right\\\mathclose{}\\ and \\\mathopen{}\left\\2\right\\\mathclose{}\\ are pairwise disjoint, but
>
> \\ \begin{aligned} \nu(\mathopen{}\left\\1\right\\\mathclose{} \cup \mathopen{}\left\\2\right\\\mathclose{}) &= \nu(\mathopen{}\left\\1, 2\right\\\mathclose{}) && \text{(take the union)} \\ &= 2^2 \\ &= 4, && \text{(count, then square)} \\ \nu(\mathopen{}\left\\1\right\\\mathclose{}) + \nu(\mathopen{}\left\\2\right\\\mathclose{}) &= 1^2 + 1^2 \\ &= 2, && \text{(count each set, then square)} \end{aligned} \\
>
> and \\4 \ne 2\\, so \\\nu\\ is not finitely additive.

> **NOTE:**
>
> **Definition 6 (Countable additivity (\\\sigma\\-additivity))** Let \\\mathcal{S}\\ be a [\\\sigma\\-algebra](#def-sigma-algebra) on a set \\S\\. A function \\\mu: \mathcal{S}\to \[0, \infty\]\\ is **countably additive** [\[5\]](#ref-wikipedia_sigma_additive_set_function) (also called **\\\sigma\\-additive**) if, for every sequence of [pairwise disjoint](sets.llms.md#def-pairwise-disjoint) [sets](sets.llms.md#def-set) \\A_1, A_2, \ldots\\ in \\\mathcal{S}\\, the value of their union is the sum of their values:
>
> \\\mu\mathopen{}\left(\bigcup\_{i=1}^{\infty} A_i\right)\mathclose{} = \sum\_{i=1}^{\infty} \mu(A_i)\\

> **NOTE:**
>
> **Example 9 (Counting elements is countably additive)** For the counting function \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 7](#exm-finite-additivity), take any sequence of pairwise disjoint sets \\A_1, A_2, \ldots\\. No two of them share an element, and \\D\\ has only six elements, so at most six of the \\A_i\\ contain any elements; the rest are \\\emptyset\\, with \\\mu(\emptyset) = 0\\. The infinite sum therefore has at most six nonzero terms, and finite additivity ([Example 7](#exm-finite-additivity)) shows that those terms add up to \\\mu\\ of the union. So \\\mu\\ is countably additive.

> **NOTE:**
>
> *Remark 3* (The sum in countable additivity always has a value). By [sums of non-negative terms](algebra-exponentials.llms.md#lem-nonneg-series), the right-hand side of the equation in [Definition 6](#def-countable-additivity), \\\sum\_{i=1}^{\infty} \mu(A_i)\\, always has a value, because each \\\mu(A_i)\\ is in \\\[0, \infty\]\\. For example, if \\\mu(A_i) = 1/2^i\\ for each \\i\\, the partial sums are \\s_n = 1 - 1/2^n\\, and the sum is \\1\\; if \\\mu(A_i) = 1\\ for each \\i\\, the partial sums are \\s_n = n\\, and the sum is \\\infty\\.

> **NOTE:**
>
> **Lemma 1 (Countable additivity and the empty set)** If \\\mu\\ is a [countably additive](#def-countable-additivity) function on a [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathcal{S}\\, then \\\mu(\emptyset) = 0\\ or \\\mu(\emptyset) = \infty\\.

> **NOTE:**
>
> *Proof*. The set \\\emptyset = S \setminus S\\ is in \\\mathcal{S}\\, as the complement of \\S\\, and the sequence \\\emptyset, \emptyset, \ldots\\ is pairwise disjoint with union \\\emptyset\\, so:
>
> \\ \begin{aligned} \mu(\emptyset) &= \mu\mathopen{}\left(\bigcup\_{i=1}^{\infty} \emptyset\right)\mathclose{} && \text{(the union of copies of } \emptyset \text{ is } \emptyset \text{)} \\ &= \sum\_{i=1}^{\infty} \mu(\emptyset) && \text{(countable additivity)} \end{aligned} \\
>
> If \\\mu(\emptyset) = c\\ for a finite \\c \> 0\\, the right-hand side is \\c + c + \cdots = \infty \neq c\\, a [contradiction](proof-writing.llms.md#def-proof-by-contradiction). So \\\mu(\emptyset)\\ is 0 or \\\infty\\.

> **NOTE:**
>
> **Example 10 (A countably additive function with \\\mu(\emptyset) = 0\\)** The counting function \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 9](#exm-countable-additivity) is countably additive, and:
>
> \\ \begin{aligned} \mu(\emptyset) &= \mathopen{}\left\|\emptyset\right\|\mathclose{} && \text{(definition of } \mu\text{)} \\ &= 0 && \text{(} \emptyset \text{ has no elements)} \end{aligned} \\

> **NOTE:**
>
> **Example 11 (A countably additive function with \\\mu(\emptyset) = \infty\\)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ ([sets of die rolls](sets.llms.md#exm-set)), let \\\mu(A) \stackrel{\text{def}}{=}\infty\\ for every set \\A\\ in the \\\sigma\\-algebra of all subsets of \\D\\ ([Example 1](#exm-sigma-algebra)), including \\A = \emptyset\\. For any sequence of pairwise disjoint sets \\A_1, A_2, \ldots\\, the left-hand side of the countable additivity equation is:
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
> *Remark 4* (\\\mu(\emptyset) = 0\\ is an extra requirement). [Example 10](#exm-empty-set-zero) and [Example 11](#exm-empty-set-infinity) show that both values allowed by [Lemma 1](#lem-countable-additivity-empty) occur for countably additive functions. So \\\mu(\emptyset) = 0\\ is an extra requirement, not a consequence of countable additivity.

> **NOTE:**
>
> **Theorem 4 (Countable additivity implies finite additivity)** If \\\mu\\ is a [countably additive](#def-countable-additivity) function on a [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathcal{S}\\, and \\\mu(\emptyset) = 0\\, then \\\mu\\ is [finitely additive](#def-finite-additivity).

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
> **Example 12 (Finitely additive but not countably additive)** Let \\S = \mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\, with the \\\sigma\\-algebra of all subsets of \\S\\ ([Theorem 2](#thm-power-set-sigma-algebra)), and define:
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
> *\\\mu\\ is not countably additive.* The single-element sets \\\mathopen{}\left\\0\right\\\mathclose{}, \mathopen{}\left\\1\right\\\mathclose{}, \mathopen{}\left\\2\right\\\mathclose{}, \ldots\\ are pairwise disjoint, and their union is \\S\\, which is infinite. So:
>
> \\ \begin{aligned} \mu\mathopen{}\left(\bigcup\_{k=0}^{\infty} \mathopen{}\left\\k\right\\\mathclose{}\right)\mathclose{} &= \mu(S) && \text{(the union is } S \text{)} \\ &= \infty && \text{(} S \text{ is infinite)} \end{aligned} \\
>
> but:
>
> \\ \begin{aligned} \sum\_{k=0}^{\infty} \mu(\mathopen{}\left\\k\right\\\mathclose{}) &= 0 + 0 + \cdots && \text{(each } \mathopen{}\left\\k\right\\\mathclose{} \text{ is finite)} \\ &= 0 && \text{(every partial sum is 0)} \end{aligned} \\

> **NOTE:**
>
> *Remark 5* (Finite additivity does not imply countable additivity). [Example 12](#exm-finite-not-countable) shows that the [converse](proof-writing.llms.md#def-converse) of [Theorem 4](#thm-countable-implies-finite) fails, even when \\\mu(\emptyset) = 0\\: a finitely additive function need not be countably additive [\[5\]](#ref-wikipedia_sigma_additive_set_function). The function \\\mu\\ in [Example 12](#exm-finite-not-countable) has \\\mu(\emptyset) = 0\\, because \\\emptyset\\ is finite.

## 3 Measures

> **NOTE:**
>
> **Definition 7 (Measure)** A **measure** on a set \\S\\ [\[6\]](#ref-wikipedia_measure_mathematics) with a [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathcal{S}\\ is a function \\\mu: \mathcal{S}\to \[0, \infty\]\\ that satisfies:
>
> - \\\mu(\emptyset) = 0\\.
> - \\\mu\\ is [countably additive](#def-countable-additivity).

> **NOTE:**
>
> **Example 13 (Counting elements is a measure)** The counting function \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 7](#exm-finite-additivity), defined on the \\\sigma\\-algebra of all subsets of \\D\\ ([Example 1](#exm-sigma-algebra)), takes values in \\\[0, \infty\]\\, is countably additive ([Example 9](#exm-countable-additivity)), and gives \\\mu(\emptyset) = 0\\, so it is a measure.

> **NOTE:**
>
> **Corollary 1 (Measures are finitely additive)** Every [measure](#def-measure) is [finitely additive](#def-finite-additivity).

> **NOTE:**
>
> *Proof*. A measure \\\mu\\ is countably additive and has \\\mu(\emptyset) = 0\\ ([Definition 7](#def-measure)), so [Theorem 4](#thm-countable-implies-finite) applies to it.

> **NOTE:**
>
> **Definition 8 (Counting measure)** The **counting measure** [\[7\]](#ref-wikipedia_counting_measure) on a set \\S\\ is the [measure](#def-measure) on the [\\\sigma\\-algebra of all subsets of \\S\\](#thm-power-set-sigma-algebra) that assigns each finite set its number of elements, and each infinite set the value \\\infty\\:
>
> \\ \mu(A) \stackrel{\text{def}}{=}\begin{cases} \mathopen{}\left\|A\right\|\mathclose{} & \text{if } A \text{ is finite} \\ \infty & \text{if } A \text{ is infinite} \end{cases} \\

> **NOTE:**
>
> **Example 14 (Counting measure on the non-negative integers)** For the counting measure \\\mu\\ on the [non-negative integers](number-systems.llms.md#def-nonnegative-integers) \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\, \\\mu(\mathopen{}\left\\0, 1, 2\right\\\mathclose{}) = 3\\, and the set of even numbers has \\\mu(\mathopen{}\left\\0, 2, 4, \ldots\right\\\mathclose{}) = \infty\\. The even numbers are the union of the pairwise disjoint sets \\\mathopen{}\left\\0\right\\\mathclose{}, \mathopen{}\left\\2\right\\\mathclose{}, \mathopen{}\left\\4\right\\\mathclose{}, \ldots\\, and countable additivity agrees:
>
> \\ \begin{aligned} \sum\_{k=0}^{\infty} \mu(\mathopen{}\left\\2k\right\\\mathclose{}) &= 1 + 1 + \cdots \\ &= \infty. \end{aligned} \\

> **NOTE:**
>
> **Definition 9 (Measurable space)** A **measurable space** [\[8\]](#ref-wikipedia_measurable_space) \\(S, \mathcal{S})\\ is a set \\S\\ together with a [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathcal{S}\\ on \\S\\.

> **NOTE:**
>
> **Definition 10 (Measurable set)** In a [measurable space](#def-measurable-space) \\(S, \mathcal{S})\\, the sets in \\\mathcal{S}\\ are its **measurable sets**.

> **NOTE:**
>
> **Example 15 (Measurable spaces of die rolls)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\:
>
> - \\(D, \mathcal{S})\\, with \\\mathcal{S}\\ the collection of all subsets of \\D\\, is a measurable space ([Example 1](#exm-sigma-algebra)).
> - \\(D, \mathopen{}\left\\\emptyset, \mathopen{}\left\\2, 4, 6\right\\\mathclose{}, \mathopen{}\left\\1, 3, 5\right\\\mathclose{}, D\right\\\mathclose{})\\ is also a measurable space. Its measurable sets are only those four; for example, \\\mathopen{}\left\\1\right\\\mathclose{}\\ is not one of them.

> **NOTE:**
>
> **Definition 11 (Measure space)** A **measure space** \\(S, \mathcal{S}, \mu)\\ is a [measurable space](#def-measurable-space) together with a [measure](#def-measure) \\\mu\\ on \\\mathcal{S}\\.

> **NOTE:**
>
> **Example 16 (Measure space of die rolls)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\, adding the counting function \\\mu(A) = \mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 13](#exm-measure) to the [measurable space](#def-measurable-space) \\(D, \mathcal{S})\\ of [Example 15](#exm-measurable-space) makes \\(D, \mathcal{S}, \mu)\\ a measure space.

> **NOTE:**
>
> **Definition 12 (Lebesgue measure)** **Lebesgue measure** on \\\mathbb{R}\\ [\[9\]](#ref-wikipedia_lebesgue_measure) is the [measure](#def-measure) \\\lambda\\ on the [Borel \\\sigma\\-algebra](#def-borel-sigma-algebra) \\\mathcal{B}\\ that assigns each [interval](sets.llms.md#def-interval) its length: for real numbers \\a \le b\\,
>
> \\ \begin{aligned} \lambda(\[a, b\]) &= \lambda((a, b)) \\ &= \lambda(\[a, b)) \\ &= \lambda((a, b\]) \\ &\stackrel{\text{def}}{=}b - a, \end{aligned} \\
>
> and \\\lambda(I) \stackrel{\text{def}}{=}\infty\\ for each unbounded interval \\I\\.

> **NOTE:**
>
> *Remark 6* (Lebesgue measure exists). Exactly one measure on \\\mathcal{B}\\ assigns every interval its length; constructing it takes more measure theory than these notes cover [\[9\]](#ref-wikipedia_lebesgue_measure), which also extends \\\lambda\\ to a larger \\\sigma\\-algebra, the Lebesgue-measurable sets, with the same values on Borel sets.

> **NOTE:**
>
> **Definition 13 (Lebesgue measure on an interval)** **Lebesgue measure on an interval** \\I\\, such as \\\[0, 1\]\\, is \\\lambda\\ ([Definition 12](#def-lebesgue-measure)) applied only to the Borel sets that are subsets of \\I\\.

> **NOTE:**
>
> **Example 17 (Lengths of some Borel sets)**  
>
> - \\ \begin{aligned} \lambda(\[2, 5\]) &= 5 - 2 \\ &= 3. \end{aligned} \\
>
> - A single point has length zero:
>
>   \\ \begin{aligned} \lambda(\mathopen{}\left\\a\right\\\mathclose{}) &= \lambda(\[a, a\]) \\ &= a - a \\ &= 0. \end{aligned} \\
>
> - The integers are the union of the pairwise disjoint single points \\\mathopen{}\left\\0\right\\\mathclose{}, \mathopen{}\left\\1\right\\\mathclose{}, \mathopen{}\left\\-1\right\\\mathclose{}, \mathopen{}\left\\2\right\\\mathclose{}, \mathopen{}\left\\-2\right\\\mathclose{}, \ldots\\ ([Example 6](#exm-borel-sigma-algebra)), so countable additivity gives
>
>   \\ \begin{aligned} \lambda(\mathbb{Z}) &= 0 + 0 + \cdots \\ &= 0. \end{aligned} \\
>
> - \\\lambda(\[0, \infty)) = \infty\\, because \\\[0, \infty)\\ is unbounded.
>
> - Lebesgue measure on \\\[0, 1\]\\ gives the whole interval \\\[0, 1\]\\ the value
>
>   \\ \begin{aligned} \lambda(\[0, 1\]) &= 1 - 0 \\ &= 1. \end{aligned} \\

> **NOTE:**
>
> *Remark 7* (Measures generalize size). A [measure](#def-measure) generalizes size: it can measure how many elements a set has, as in [Definition 8](#def-counting-measure), or how long a set of real numbers is, as Lebesgue measure ([Definition 12](#def-lebesgue-measure)) does, assigning each [interval](sets.llms.md#def-interval) \\\[a, b\]\\ its length \\b - a\\. For example, the counting measure on \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\ gives \\\mathopen{}\left\\2, 3, 4, 5\right\\\mathclose{}\\ the value \\4\\, while the Lebesgue measure of the interval \\\[2, 5\]\\ is \\5 - 2 = 3\\. Both can serve as the measures \\\mu_1\\ and \\\mu_2\\ in the [Tonelli](calculus-double-integrals.llms.md#thm-tonelli-measure) and [Fubini](calculus-double-integrals.llms.md#thm-fubini-measure) theorems.

> **NOTE:**
>
> **Definition 14 (Measure zero (null set))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). A set \\A \in \mathcal{S}\\ has **measure zero** [\[10\]](#ref-wikipedia_null_set) (also called a **null set** for \\\mu\\) if \\\mu(A) = 0\\.

> **NOTE:**
>
> **Example 18 (Sets of measure zero)**  
>
> - For a [counting measure](#def-counting-measure), only \\\emptyset\\ has measure zero: a nonempty set has at least one element, so its counting measure is at least \\1\\.
> - For Lebesgue measure, every single point \\\mathopen{}\left\\a\right\\\mathclose{}\\ and the integers \\\mathbb{Z}\\ have measure zero ([Example 17](#exm-lebesgue-measure)), although neither set is empty.

> **NOTE:**
>
> **Definition 15 (Almost everywhere (\\\mu\\-almost everywhere, \\\mu\\-a.e.))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). A statement about the elements of \\S\\ holds **\\\mu\\-almost everywhere** (written **\\\mu\\-a.e.**, or **almost everywhere** when \\\mu\\ is clear from context) [\[11\]](#ref-wikipedia_almost_everywhere) if the set of elements for which it fails is a [subset](sets.llms.md#def-subset) of a set of [measure zero](#def-measure-zero).

> **NOTE:**
>
> **Example 19 (Non-negative except on the integers)** Let \\g : \mathbb{R}\to \mathbb{R}\\ with \\g(x) = -1\\ when \\x\\ is an integer and \\g(x) = x^2\\ otherwise. The statement “\\g(x) \ge 0\\” fails exactly for \\x \in \mathbb{Z}\\, and \\\lambda(\mathbb{Z}) = 0\\ ([Example 17](#exm-lebesgue-measure)), so \\g \ge 0\\ holds \\\lambda\\-almost everywhere, though not everywhere.
>
> For a counting measure, only \\\emptyset\\ has measure zero ([Example 18](#exm-measure-zero)), so a statement holds almost everywhere only if it holds everywhere.

> **NOTE:**
>
> **Definition 16 (Finite measure)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). The measure \\\mu\\ is **finite** if [\[12\]](#ref-wikipedia_finite_measure) \\\mu(S) \< \infty\\.

> **NOTE:**
>
> **Definition 17 (\\\sigma\\-finite measure)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). The measure \\\mu\\ is **\\\sigma\\-finite** [\[13\]](#ref-wikipedia_sigma_finite_measure) if \\S\\ is the union \\\bigcup\_{i=1}^{\infty} A_i\\ of a sequence of sets \\A_1, A_2, \ldots\\ in \\\mathcal{S}\\ with \\\mu(A_i) \< \infty\\ for every \\i\\.

> **NOTE:**
>
> **Example 20 (Finite and \\\sigma\\-finite measures)**  
>
> - Every finite measure is \\\sigma\\-finite: take \\A_1 = S\\ and
>
>   \\ \begin{aligned} A_2 &= A_3 \\ &= \cdots \\ &= \emptyset, \end{aligned} \\
>
>   with \\\mu(A_1) = \mu(S) \< \infty\\ and \\\mu(\emptyset) = 0\\.
>
> - The counting measure on the die rolls \\D\\ is finite, with \\\mu(D) = 6\\.
>
> - The counting measure on \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\ is not finite, but it is \\\sigma\\-finite: it is the union of the sets \\A_i = \mathopen{}\left\\0, 1, \ldots, i\right\\\mathclose{}\\, each with \\\mu(A_i) = i + 1 \< \infty\\.
>
> - Lebesgue measure on \\\mathbb{R}\\ is not finite, since \\\lambda(\mathbb{R}) = \infty\\, but it is \\\sigma\\-finite: \\\mathbb{R}\\ is the union of the intervals \\A_i = \[-i, i\]\\, each with \\\lambda(A_i) = 2i \< \infty\\.

## 4 Probability measures

> **NOTE:**
>
> **Definition 18 (Probability measure)** A **probability measure** [\[14\]](#ref-wikipedia_probability_measure) on a [measurable space](#def-measurable-space) \\(\Omega, \mathcal{F})\\ is a [measure](#def-measure) \\\operatorname{P}\\ on \\\mathcal{F}\\ that gives the whole set \\\Omega\\ the value \\1\\:
>
> \\\operatorname{P}\mathopen{}\left(\Omega\right)\mathclose{} = 1\\

> **NOTE:**
>
> **Example 21 (A fair die, and the unit interval)**  
>
> - For one roll of a fair die, the sample space is
>
>   \\ \begin{aligned} \Omega&= D \\ &= \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}, \end{aligned} \\
>
>   the events are all subsets of \\D\\, and \\\operatorname{P}\mathopen{}\left(A\right)\mathclose{} \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{} / 6\\. \\\operatorname{P}\\ is the counting function \\\mu(A) = \mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 13](#exm-measure) divided by \\6\\. So \\\operatorname{P}\mathopen{}\left(\emptyset\right)\mathclose{} = 0\\, and \\\operatorname{P}\\ is countably additive, because each sum in [Example 9](#exm-countable-additivity) has at most six nonzero terms, and dividing a finite sum by \\6\\ divides each term by \\6\\. It is a probability measure, since
>
>   \\ \begin{aligned} \operatorname{P}\mathopen{}\left(D\right)\mathclose{} &= 6/6 \\ &= 1. \end{aligned} \\
>
>   The outcome \\3\\ is in the event “the roll is odd”, \\\mathopen{}\left\\1, 3, 5\right\\\mathclose{}\\, which has
>
>   \\ \begin{aligned} \operatorname{P}\mathopen{}\left(\mathopen{}\left\\1, 3, 5\right\\\mathclose{}\right)\mathclose{} &= 3/6 \\ &= 1/2. \end{aligned} \\
>
> - Lebesgue measure on \\\[0, 1\]\\ is a probability measure, because \\\lambda(\[0, 1\]) = 1\\ ([Example 17](#exm-lebesgue-measure)).
>
> - The counting measure on \\D\\ is not a probability measure, because it gives \\D\\ the value \\6\\.

> **NOTE:**
>
> **Definition 19 (Probability space)** For a probability measure \\\operatorname{P}\\ ([Definition 18](#def-probability-measure)) on a [measurable space](#def-measurable-space) \\(\Omega, \mathcal{F})\\, \\(\Omega, \mathcal{F}, \operatorname{P})\\ is a **probability space**. [\[15\]](#ref-wikipedia_probability_space)

> **NOTE:**
>
> **Definition 20 (Sample space)** In a probability space \\(\Omega, \mathcal{F}, \operatorname{P})\\ ([Definition 19](#def-probability-space)), \\\Omega\\ is its **sample space**. [\[16\]](#ref-wikipedia_sample_space)

> **NOTE:**
>
> **Definition 21 (Outcome)** In a probability space \\(\Omega, \mathcal{F}, \operatorname{P})\\ ([Definition 19](#def-probability-space)), the elements of the sample space \\\Omega\\ ([Definition 20](#def-sample-space)) are **outcomes**. [\[17\]](#ref-wikipedia_outcome_probability)

> **NOTE:**
>
> **Definition 22 (Event)** In a probability space \\(\Omega, \mathcal{F}, \operatorname{P})\\ ([Definition 19](#def-probability-space)), the sets in \\\mathcal{F}\\ are **events**. [\[18\]](#ref-wikipedia_event_probability_theory)

> **NOTE:**
>
> *Remark 8* (Mutually exclusive events). In [probability](#def-probability-measure), [pairwise disjoint](sets.llms.md#def-pairwise-disjoint) [events](#def-probability-measure) are usually called **mutually exclusive**. For example, for one roll of a six-sided die, the events “the roll is [even](number-systems.llms.md#def-even-odd)”, \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\, and “the roll is odd”, \\\mathopen{}\left\\1, 3, 5\right\\\mathclose{}\\, are mutually exclusive: no roll is both even and odd.

## 5 Measurable functions and integrals

> **NOTE:**
>
> **Definition 23 (Measurable function)** Let \\(S, \mathcal{S})\\ be a [measurable space](#def-measurable-space). A [function](functions.llms.md#def-function) \\f : S \to \mathbb{R}\\ is **measurable** (with respect to \\\mathcal{S}\\) [\[19\]](#ref-wikipedia_measurable_function) if, for every real number \\c\\, the set of elements where \\f\\ is at most \\c\\ is measurable:
>
> \\\mathopen{}\left\\s \in S : f(s) \le c\right\\\mathclose{} \in \mathcal{S}\\

> **NOTE:**
>
> *Remark 9* (Measurable functions in general). Other sources define a function \\f : S \to T\\ between measurable spaces \\(S, \mathcal{S})\\ and \\(T, \mathcal{T})\\ to be measurable when \\\mathopen{}\left\\s \in S : f(s) \in B\right\\\mathclose{} \in \mathcal{S}\\ for every \\B \in \mathcal{T}\\. For \\T = \mathbb{R}\\ with the [Borel \\\sigma\\-algebra](#def-borel-sigma-algebra), that definition is equivalent to [Definition 23](#def-measurable-function). For example, with \\B = (-\infty, c\]\\, the general definition requires \\\mathopen{}\left\\s \in S : f(s) \le c\right\\\mathclose{} \in \mathcal{S}\\, which is the condition in [Definition 23](#def-measurable-function).

> **NOTE:**
>
> **Example 22 (Measurable and not measurable)** On the die rolls \\D\\, take the \\\sigma\\-algebra \\\mathcal{S}= \mathopen{}\left\\\emptyset, \mathopen{}\left\\2, 4, 6\right\\\mathclose{}, \mathopen{}\left\\1, 3, 5\right\\\mathclose{}, D\right\\\mathclose{}\\ of [Example 1](#exm-sigma-algebra).
>
> - Let \\f(x) = 1\\ for even \\x\\ and \\f(x) = 0\\ for odd \\x\\. The set \\\mathopen{}\left\\x \in D : f(x) \le c\right\\\mathclose{}\\ is \\\emptyset\\ when \\c \< 0\\, \\\mathopen{}\left\\1, 3, 5\right\\\mathclose{}\\ when \\0 \le c \< 1\\, and \\D\\ when \\c \ge 1\\. All three are in \\\mathcal{S}\\, so \\f\\ is measurable.
> - Let \\g(x) = x\\. Then \\\mathopen{}\left\\x \in D : g(x) \le 1\right\\\mathclose{} = \mathopen{}\left\\1\right\\\mathclose{}\\, which is not in \\\mathcal{S}\\, so \\g\\ is not measurable.
>
> With the \\\sigma\\-algebra of all subsets of \\D\\ instead, every set \\\mathopen{}\left\\x \in D : g(x) \le c\right\\\mathclose{}\\ is a subset of \\D\\, so every function \\D \to \mathbb{R}\\, including \\g\\, is measurable.

> **NOTE:**
>
> **Definition 24 (Integral of a non-negative function)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space), and let \\f : S \to \[0, \infty)\\ be [measurable](#def-measurable-function). The **integral** of \\f\\ with respect to \\\mu\\ is [\[20\]](#ref-wikipedia_lebesgue_integration)
>
> \\ \int_S f \\ d\mu\stackrel{\text{def}}{=} \sup \mathopen{}\left\\\sum\_{i=1}^n\mathopen{}\left(\inf\_{s \in A_i} f(s)\right)\mathclose{} \mu(A_i)\right\\\mathclose{} \\
>
> where the [supremum](algebra-sums.llms.md#def-supremum) is over all ways of writing \\S\\ as the union of finitely many nonempty [pairwise disjoint](sets.llms.md#def-pairwise-disjoint) [sets](sets.llms.md#def-set) \\A_1, \ldots, A_n\\ in \\\mathcal{S}\\, and each \\\inf\_{s \in A_i} f(s)\\ is the [infimum](algebra-sums.llms.md#def-infimum) of the values of \\f\\ on \\A_i\\. In the sums, \\0 \cdot \infty \stackrel{\text{def}}{=}0\\, and \\x \cdot \infty \stackrel{\text{def}}{=}\infty\\ for \\x \> 0\\; the supremum is \\\infty\\ if some sum is \\\infty\\. The integral is also written \\\int_S f(s) \\ d\mu(s)\\.
>
> [\[2, Sec. 15\]](#ref-billingsley1995probability)

> **NOTE:**
>
> *Remark 10* (Each sum is a lower estimate). Each sum in [Definition 24](#def-integral-nonneg) splits \\S\\ into pieces and weights each piece \\A_i\\ by the smallest value \\f\\ approaches on it, so each sum is at most the integral. For Lebesgue measure on a closed interval \\\[a, b\]\\ and a function \\f \ge 0\\ that has a [Riemann integral](calculus-integration.llms.md#def-riemann-integral) on \\\[a, b\]\\, the two integrals agree: \\\int\_{\[a, b\]} f \\ d\lambda= \int_a^b f(x) \\ dx\\ [\[20\]](#ref-wikipedia_lebesgue_integration).

> **NOTE:**
>
> **Example 23 (Integrals with respect to counting measure)** Let \\\mu\\ be the counting measure on the die rolls \\D\\, and let \\g : D \to \[0, \infty)\\. Every function on \\D\\ is measurable ([Example 22](#exm-measurable-function)).
>
> *The integral is the sum of the values.* For any split of \\D\\ into nonempty pairwise disjoint sets \\A_1, \ldots, A_n\\:
>
> \\ \begin{aligned} \sum\_{i=1}^n\mathopen{}\left(\inf\_{x \in A_i} g(x)\right)\mathclose{} \mu(A_i) &= \sum\_{i=1}^n\sum\_{x \in A_i} \inf\_{y \in A_i} g(y) && \text{(} \mu(A_i) \text{ counts the elements of } A_i \text{)} \\ &\le \sum\_{i=1}^n\sum\_{x \in A_i} g(x) && \text{(an infimum is at most each value)} \\ &= \sum\_{x \in D} g(x) && \text{(each } x \in D \text{ is in exactly one } A_i \text{)} \end{aligned} \\
>
> The split into the six single points \\\mathopen{}\left\\1\right\\\mathclose{}, \ldots, \mathopen{}\left\\6\right\\\mathclose{}\\ gives exactly \\\sum\_{x \in D} g(x)\\, so the supremum is \\\int_D g \\ d\mu= \sum\_{x \in D} g(x)\\. For example, with \\g(x) = x\\,
>
> \\ \begin{aligned} \int_D g \\ d\mu&= 1 + 2 + \cdots + 6 \\ &= 21. \end{aligned} \\
>
> *An infinite integral.* For the counting measure \\\mu\\ on \\\mathbb{N}\\ and the constant function \\h(n) = 1\\, the split with one set, \\A_1 = \mathbb{N}\\, gives the sum
>
> \\ \begin{aligned} 1 \cdot \mu(\mathbb{N}) &= 1 \cdot \infty \\ &= \infty, \end{aligned} \\
>
> so \\\int\_{\mathbb{N}} h \\ d\mu= \infty\\.

> **NOTE:**
>
> *Remark 11* (A function in terms of its positive and negative parts). For a [function](functions.llms.md#def-function) \\f : S \to \mathbb{R}\\, with the [positive part](algebra-basics.llms.md#def-positive-negative-parts) and [negative part](algebra-basics.llms.md#def-negative-part), \\f = f^{+} - f^{-}\\ and \\\mathopen{}\left\|f\right\|\mathclose{} = f^{+} + f^{-}\\. (\\f^{+}\\, \\f^{-}\\, and \\\mathopen{}\left\|f\right\|\mathclose{}\\ are [measurable](#def-measurable-function) when \\f\\ is [\[2\]](#ref-billingsley1995probability), Theorem 13.3.)

> **NOTE:**
>
> **Definition 25 (Integral of a real-valued function)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space), and let \\f : S \to \mathbb{R}\\ be [measurable](#def-measurable-function). Let \\f^{+}\\ and \\f^{-}\\ be the [positive part](algebra-basics.llms.md#def-positive-negative-parts) and [negative part](algebra-basics.llms.md#def-negative-part) of \\f\\. The **integral** of \\f\\ with respect to \\\mu\\ is
>
> \\\int_S f \\ d\mu\stackrel{\text{def}}{=}\int_S f^{+} \\ d\mu- \int_S f^{-} \\ d\mu,\\
>
> using [Definition 24](#def-integral-nonneg) for each term, when at least one of the two terms is finite; otherwise, the integral of \\f\\ is undefined.
>
> [\[2, Sec. 15\]](#ref-billingsley1995probability)

> **NOTE:**
>
> **Example 24 (An integral with positive and negative parts)** For the counting measure \\\mu\\ on the die rolls \\D\\, let \\f(x) = x - 3\\. Its values at \\1, \ldots, 6\\ are \\-2, -1, 0, 1, 2, 3\\, so:
>
> - \\f^{+}\\ has values \\0, 0, 0, 1, 2, 3\\, and \\\int_D f^{+} \\ d\mu= 6\\ by [Example 23](#exm-integral-nonneg);
>
> - \\f^{-}\\ has values \\2, 1, 0, 0, 0, 0\\, and \\\int_D f^{-} \\ d\mu= 3\\;
>
> - \\ \begin{aligned} \int_D f \\ d\mu&= 6 - 3 \\ &= 3, \end{aligned} \\
>
>   which is also
>
>   \\ \begin{aligned} \sum\_{x \in D} (x - 3) &= 21 - 18 \\ &= 3. \end{aligned} \\

> **NOTE:**
>
> **Definition 26 (Absolutely integrable function (integrable function, absolute integrability))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). A [measurable](#def-measurable-function) function \\f : S \to \mathbb{R}\\ is **absolutely integrable** with respect to \\\mu\\ (often just called **integrable**) if the integral of its [absolute value](algebra-basics.llms.md#def-absolute-value) is finite:
>
> \\\int_S \mathopen{}\left\|f\right\|\mathclose{} \\ d\mu\< \infty\\
>
> The property itself is called **absolute integrability**.

> **NOTE:**
>
> *Remark 12* (An absolutely integrable function has a finite integral). If \\f\\ is absolutely integrable, then \\\int_S f^{+} \\ d\mu\\ and \\\int_S f^{-} \\ d\mu\\ are both finite, because \\f^{+} \le \mathopen{}\left\|f\right\|\mathclose{}\\ and \\f^{-} \le \mathopen{}\left\|f\right\|\mathclose{}\\, so each sum in [Definition 24](#def-integral-nonneg) for \\f^{+}\\ or \\f^{-}\\ is at most the matching sum for \\\mathopen{}\left\|f\right\|\mathclose{}\\. So \\\int_S f \\ d\mu\\ ([Definition 25](#def-integral)) is a real number.

> **NOTE:**
>
> **Example 25 (Absolutely integrable and not)**  
>
> - For the counting measure on the die rolls \\D\\, \\f(x) = x - 3\\ ([Example 24](#exm-integral)) is absolutely integrable:
>
>   \\ \begin{aligned} \int_D \mathopen{}\left\|f\right\|\mathclose{} \\ d\mu&= 2 + 1 + 0 + 1 + 2 + 3 \\ &= 9 \\ &\< \infty \end{aligned} \\
>
>   by [Example 23](#exm-integral-nonneg).
>
> - For the counting measure on \\\mathbb{N}\\, the constant function \\h(n) = 1\\ is not absolutely integrable, because
>
>   \\ \begin{aligned} \int\_{\mathbb{N}} \mathopen{}\left\|h\right\|\mathclose{} \\ d\mu&= \int\_{\mathbb{N}} h \\ d\mu\\ &= \infty \end{aligned} \\
>
>   ([Example 23](#exm-integral-nonneg)).

## 6 \\L^p\\ spaces

> **NOTE:**
>
> **Definition 27 (\\L^p\\ norm (\\p\\-norm of a function))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). For any [real number](number-systems.llms.md#def-real-numbers) \\p \ge 1\\, the **\\L^p\\ norm** of a [measurable function](#def-measurable-function) \\f : S \to \mathbb{R}\\ is:
>
> \\ \mathopen{}\left\lVert f\right\rVert\mathclose{}\_p \stackrel{\text{def}}{=}\mathopen{}\left(\int_S \mathopen{}\left\|f\right\|\mathclose{}^p \\ d\mu\right)\mathclose{}^{1/p}. \\

> **NOTE:**
>
> **Example 26 (The \\L^1\\ and \\L^2\\ norms of \\x \mapsto x\\ on the unit interval)** Let \\S = \[0, 1\]\\ with the [Lebesgue measure](#def-lebesgue-measure) \\\mu\\, and let \\f(x) = x\\. By [Definition 27](#def-lp-norm),
>
> \\ \begin{aligned} \mathopen{}\left\lVert f\right\rVert\mathclose{}\_1 &= \int_0^1 x \\ dx \\ &= \frac{1}{2}, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \mathopen{}\left\lVert f\right\rVert\mathclose{}\_2 &= \mathopen{}\left(\int_0^1 x^2 \\ dx\right)\mathclose{}^{1/2} \\ &= \mathopen{}\left(\frac{1}{3}\right)\mathclose{}^{1/2}. \end{aligned} \\

> **NOTE:**
>
> **Definition 28 (\\\mathcal{L}^p\\ space (\\\mathcal{L}^p(S, \mathcal{S}, \mu)\\))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). Let \\p \ge 1\\ be a [real number](number-systems.llms.md#def-real-numbers). The **\\\mathcal{L}^p\\ space** \\\mathcal{L}^p(S, \mathcal{S}, \mu)\\ is the [set](sets.llms.md#def-set) of all [measurable functions](#def-measurable-function) \\f : S \to \mathbb{R}\\ whose [\\L^p\\ norm](#def-lp-norm) is less than \\\infty\\: \\\mathopen{}\left\lVert f\right\rVert\mathclose{}\_p \< \infty\\.

> **NOTE:**
>
> **Example 27 (An \\L^1\\ function not in \\L^2\\)** Consider the [interval](sets.llms.md#def-interval) \\(0, 1)\\ with the Borel \\\sigma\\-algebra ([Definition 3](#def-borel-sigma-algebra)) and Lebesgue measure \\\mu\\ ([Definition 12](#def-lebesgue-measure)). Define \\f : (0, 1) \to \mathbb{R}\\ by \\f(x) = x^{-1/2}\\.
>
> 1.  For \\p = 1\\: \\ \begin{aligned} \mathopen{}\left\lVert f\right\rVert\mathclose{}\_1 &= \int_0^1 x^{-1/2} \\ dx \\ &= \mathopen{}\left\[2 x^{1/2}\right\]\mathclose{}\_0^1 \\ &= 2 \\ &\< \infty, \end{aligned} \\ so \\f \in \mathcal{L}^1((0, 1), \mu)\\.
> 2.  For \\p = 2\\: \\ \begin{aligned} \mathopen{}\left\|f(x)\right\|\mathclose{}^2 &= \mathopen{}\left(x^{-1/2}\right)\mathclose{}^2 \\ &= \frac{1}{x}. \end{aligned} \\ The [integral](#def-integral) is: \\ \begin{aligned} \int_0^1 \frac{1}{x} \\ dx &= \lim\_{\varepsilon\to 0^+} \mathopen{}\left\[\ln x\right\]\mathclose{}\_\varepsilon^1 \\ &= \lim\_{\varepsilon\to 0^+} (-\ln \varepsilon) \\ &= \infty. \end{aligned} \\ So \\\mathopen{}\left\lVert f\right\rVert\mathclose{}\_2 = \infty\\, so \\f \notin \mathcal{L}^2((0, 1), \mu)\\.
>
> This shows that \\\mathcal{L}^2 \subset \mathcal{L}^1\\ on [sets](sets.llms.md#def-set) of [finite measure](#def-finite-measure): a larger \\p\\ imposes stricter requirements near singularities.

> **NOTE:**
>
> **Definition 29 (Equal almost everywhere (\\f = g\\ \\\mu\\-a.e.))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). Let \\f, g : S \to \mathbb{R}\\ be [measurable](#def-measurable-function). The [functions](functions.llms.md#def-function) \\f\\ and \\g\\ are **equal almost everywhere**, written \\f = g\\ \\\mu\\-a.e., if \\f(s) = g(s)\\ holds [almost everywhere](#def-almost-everywhere).

> **NOTE:**
>
> **Example 28 (A function that differs from \\0\\ at one point)** Let \\S = \mathbb{R}\\ with the [Lebesgue measure](#def-lebesgue-measure) \\\mu\\. Let \\f(s) = 1\\ if \\s = 0\\, and \\f(s) = 0\\ otherwise. The [set](sets.llms.md#def-set) \\\mathopen{}\left\\s : f(s) \neq 0\right\\\mathclose{} = \mathopen{}\left\\0\right\\\mathclose{}\\ has [measure zero](#def-measure-zero), so \\f = 0\\ [almost everywhere](#def-almost-everywhere) by [Definition 29](#def-equal-almost-everywhere).

> **NOTE:**
>
> **Definition 30 (\\L^p\\ space (\\L^p(S, \mathcal{S}, \mu)\\, \\L^p(\mu)\\))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). Let \\p \ge 1\\ be a [real number](number-systems.llms.md#def-real-numbers). For each \\f\\ in the [\\\mathcal{L}^p\\ space](#def-lp-function-space), let \\\[f\]\\ be the [set](sets.llms.md#def-set) of all [functions](functions.llms.md#def-function) in \\\mathcal{L}^p(S, \mathcal{S}, \mu)\\ that are [equal almost everywhere](#def-equal-almost-everywhere) to \\f\\. The **\\L^p\\ space** \\L^p(S, \mathcal{S}, \mu)\\ (or simply **\\L^p(\mu)\\**) is the [set](sets.llms.md#def-set) of all such [sets](sets.llms.md#def-set) \\\[f\]\\, with the [norm](linear-algebra-inner-products.llms.md#def-norm) \\\mathopen{}\left\lVert\[f\]\right\rVert\mathclose{}\_p \stackrel{\text{def}}{=}\mathopen{}\left\lVert f\right\rVert\mathclose{}\_p\\ ([\\L^p\\ norm](#def-lp-norm)).

> **NOTE:**
>
> **Example 29 (The zero element of \\L^p\\)** Let \\f\\ be the [function](functions.llms.md#def-function) in [Example 28](#exm-equal-almost-everywhere), which is \\1\\ at \\s = 0\\ and \\0\\ elsewhere. Then \\f = 0\\ [almost everywhere](#def-almost-everywhere), so \\\[f\] = \[0\]\\. Also \\\mathopen{}\left\lVert f\right\rVert\mathclose{}\_p = 0\\ although \\f \neq 0\\, so \\\mathopen{}\left\lVert f\right\rVert\mathclose{}\_p = 0\\ can hold for a nonzero element of \\\mathcal{L}^p\\; on \\L^p(\mu)\\, \\\mathopen{}\left\lVert\[f\]\right\rVert\mathclose{}\_p = 0\\ only for \\\[f\] = \[0\]\\, as a [norm](linear-algebra-inner-products.llms.md#def-norm) requires.

> **NOTE:**
>
> **Definition 31 (Essential supremum norm (\\L^\infty\\ norm))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). The **essential supremum norm** (or **\\L^\infty\\ norm**) of a [measurable function](#def-measurable-function) \\f : S \to \mathbb{R}\\ is:
>
> \\ \mathopen{}\left\lVert f\right\rVert\mathclose{}\_\infty \stackrel{\text{def}}{=}\inf \mathopen{}\left\\ C \ge 0 : \mu(\mathopen{}\left\\s \in S : \mathopen{}\left\|f(s)\right\|\mathclose{} \> C\right\\\mathclose{}) = 0 \right\\\mathclose{}. \\

> **NOTE:**
>
> **Example 30 (The essential supremum norm ignores a null set)** Let \\S = \[0, 1\]\\ with the [Lebesgue measure](#def-lebesgue-measure) \\\mu\\. Let \\f(s) = 5\\ if \\s = 0\\ and \\f(s) = s\\ otherwise. Then \\\sup_s \mathopen{}\left\|f(s)\right\|\mathclose{} = 5\\. For \\C \ge 1\\, the [set](sets.llms.md#def-set) \\\mathopen{}\left\\s : \mathopen{}\left\|f(s)\right\|\mathclose{} \> C\right\\\mathclose{}\\ is empty or \\\mathopen{}\left\\0\right\\\mathclose{}\\, so it has [measure zero](#def-measure-zero), and for \\C \< 1\\ it has positive [measure](#def-measure). By [Definition 31](#def-essential-supremum-norm), \\\mathopen{}\left\lVert f\right\rVert\mathclose{}\_\infty = 1\\.

> **NOTE:**
>
> **Definition 32 (\\\mathcal{L}^\infty\\ space (\\\mathcal{L}^\infty(S, \mathcal{S}, \mu)\\))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). The **\\\mathcal{L}^\infty\\ space** \\\mathcal{L}^\infty(S, \mathcal{S}, \mu)\\ is the [set](sets.llms.md#def-set) of all [measurable functions](#def-measurable-function) \\f : S \to \mathbb{R}\\ whose [essential supremum norm](#def-essential-supremum-norm) is less than \\\infty\\: \\\mathopen{}\left\lVert f\right\rVert\mathclose{}\_\infty \< \infty\\.

> **NOTE:**
>
> **Example 31 (Bounded and unbounded functions)** Let \\S = (0, 1)\\ with the [Lebesgue measure](#def-lebesgue-measure) \\\mu\\. The [function](functions.llms.md#def-function) \\f(s) = s\\ has \\\mathopen{}\left\lVert f\right\rVert\mathclose{}\_\infty = 1 \< \infty\\, so \\f \in \mathcal{L}^\infty(S, \mathcal{S}, \mu)\\ by [Definition 32](#def-linf-function-space). The function \\g(s) = 1/s\\ exceeds every \\C\\ on the [set](sets.llms.md#def-set) \\(0, 1/C)\\ of positive [measure](#def-measure), so \\\mathopen{}\left\lVert g\right\rVert\mathclose{}\_\infty = \infty\\ and \\g \notin \mathcal{L}^\infty(S, \mathcal{S}, \mu)\\.

> **NOTE:**
>
> **Definition 33 (\\L^\infty\\ space (\\L^\infty(S, \mathcal{S}, \mu)\\, \\L^\infty(\mu)\\))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space). For each \\f\\ in the [\\\mathcal{L}^\infty\\ space](#def-linf-function-space), let \\\[f\]\\ be the [set](sets.llms.md#def-set) of all [functions](functions.llms.md#def-function) in \\\mathcal{L}^\infty(S, \mathcal{S}, \mu)\\ that are [equal almost everywhere](#def-equal-almost-everywhere) to \\f\\. The **\\L^\infty\\ space** \\L^\infty(S, \mathcal{S}, \mu)\\ (or simply **\\L^\infty(\mu)\\**) is the [set](sets.llms.md#def-set) of all such [sets](sets.llms.md#def-set) \\\[f\]\\, with the [norm](linear-algebra-inner-products.llms.md#def-norm) \\\mathopen{}\left\lVert\[f\]\right\rVert\mathclose{}\_\infty \stackrel{\text{def}}{=}\mathopen{}\left\lVert f\right\rVert\mathclose{}\_\infty\\ ([essential supremum norm](#def-essential-supremum-norm)).

> **NOTE:**
>
> **Example 32 (Bounded functions equal almost everywhere)** Let \\f\\ be the [function](functions.llms.md#def-function) in [Example 30](#exm-essential-supremum-norm) and \\h(s) = s\\ on \\\[0, 1\]\\. Then \\f = h\\ almost everywhere ([Definition 29](#def-equal-almost-everywhere)), so \\\[f\] = \[h\]\\ in \\L^\infty(\mu)\\, and \\\mathopen{}\left\lVert\[f\]\right\rVert\mathclose{}\_\infty = \mathopen{}\left\lVert h\right\rVert\mathclose{}\_\infty = 1\\.

> **NOTE:**
>
> **Theorem 5 (Holder’s inequality)** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space), and let \\p, q \in \[1, \infty\]\\ be conjugate exponents satisfying \\\frac{1}{p} + \frac{1}{q} = 1\\ (with the convention that \\q = \infty\\ when \\p = 1\\, and \\q = 1\\ when \\p = \infty\\). If \\f \in L^p(\mu)\\ and \\g \in L^q(\mu)\\ ([Definition 30](#def-lp-space)), then their product \\f g\\ is [absolutely integrable](#def-absolutely-integrable) (\\f g \in L^1(\mu)\\) and satisfies:
>
> \\ \mathopen{}\left\lVert f g\right\rVert\mathclose{}\_1 = \int_S \mathopen{}\left\|f g\right\|\mathclose{} \\ d\mu\le \mathopen{}\left\lVert f\right\rVert\mathclose{}\_p\\\mathopen{}\left\lVert g\right\rVert\mathclose{}\_q. \\
>
> When
>
> \\ \begin{aligned} p &= q \\ &= 2, \end{aligned} \\
>
> this inequality is the Cauchy-Schwarz inequality for integrals.

> **NOTE:**
>
> **Theorem 6 (Minkowski’s inequality (\\L^p\\ triangle inequality))** Let \\(S, \mathcal{S}, \mu)\\ be a [measure space](#def-measure-space) and let \\1 \le p \le \infty\\. For any functions \\f, g \in L^p(\mu)\\ ([Definition 30](#def-lp-space)), their sum \\f + g\\ is in \\L^p(\mu)\\ and satisfies:
>
> \\ \mathopen{}\left\lVert f + g\right\rVert\mathclose{}\_p \le \mathopen{}\left\lVert f\right\rVert\mathclose{}\_p + \mathopen{}\left\lVert g\right\rVert\mathclose{}\_p. \\
>
> Together with absolute homogeneity \\\mathopen{}\left\lVert c f\right\rVert\mathclose{}\_p = \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\lVert f\right\rVert\mathclose{}\_p\\ and definiteness, Minkowski’s inequality establishes that \\L^p(\mu)\\ satisfies all axioms of a [normed vector space](linear-algebra-inner-products.llms.md#def-norm).

> **NOTE:**
>
> **Example 33 (Applying Holder’s inequality to finite sums and expectations)**  
>
> 1.  **Finite vectors (Cauchy-Schwarz and taxicab bounds)**: Equipping a finite set with the [counting measure](#def-counting-measure), Holder’s inequality for conjugate exponents \\p, q\\ gives: \\ \sum\_{i=1}^n\mathopen{}\left\|x_i y_i\right\|\mathclose{} \le \mathopen{}\left(\sum\_{i=1}^n\mathopen{}\left\|x_i\right\|\mathclose{}^p\right)\mathclose{}^{1/p} \mathopen{}\left(\sum\_{i=1}^n\mathopen{}\left\|y_i\right\|\mathclose{}^q\right)\mathclose{}^{1/q}. \\ Setting \\p = 1\\, \\q = \infty\\ gives \\\sum\_{i=1}^n\mathopen{}\left\|x_i y_i\right\|\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_1\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\_\infty\\. Setting
>
>     \\ \begin{aligned} p &= q \\ &= 2 \end{aligned} \\
>
>     gives the standard vector [Cauchy-Schwarz inequality](linear-algebra-inner-products.llms.md#thm-cauchy-schwarz).
>
> 2.  **Covariance bound for random variables**: On a probability space with measure \\\operatorname{P}\\ ([Definition 18](#def-probability-measure)), taking
>
>     \\ \begin{aligned} p &= q \\ &= 2 \end{aligned} \\
>
>     gives \\\operatorname{E}\mathopen{}\left\[\mathopen{}\left\|X Y\right\|\mathclose{}\right\]\mathclose{} \le \sqrt{\operatorname{E}\mathopen{}\left\[X^2\right\]\mathclose{}}\\\sqrt{\operatorname{E}\mathopen{}\left\[Y^2\right\]\mathclose{}}\\, guaranteeing that the covariance between any two square-integrable random variables is finite.

> **NOTE:**
>
> *Remark 13* (\\L^p\\ spaces and norms in probability and machine learning). In probability, statistics, and machine learning, \\L^p\\ spaces structure the geometry of random variables, estimators, and loss functions:
>
> 1.  **Random variables, moments, and inclusion of \\L^p\\ spaces**: When \\\mu= \operatorname{P}\\ is a probability measure ([Definition 18](#def-probability-measure)) with total measure \\\operatorname{P}\mathopen{}\left(S\right)\mathclose{} = 1\\, an \\L^p\\ function is a random variable \\X\\ with finite \\p\\-th moment: \\ \mathopen{}\left\lVert X\right\rVert\mathclose{}\_p = \mathopen{}\left(\operatorname{E}\mathopen{}\left\[\mathopen{}\left\|X\right\|\mathclose{}^p\right\]\mathclose{}\right)\mathclose{}^{1/p}. \\ By [Jensen’s inequality](algebra-sums.llms.md#thm-jensen), if \\1 \le p \le q \le \infty\\, then \\\mathopen{}\left\lVert X\right\rVert\mathclose{}\_p \le \mathopen{}\left\lVert X\right\rVert\mathclose{}\_q\\, so \\L^q(P) \subseteq L^p(P)\\. For instance, every random variable with finite variance (\\X \in L^2\\) has finite expectation (\\X \in L^1\\).
>
> 2.  **The unique Hilbert space \\L^2\\ and conditional expectation**: Among all \\L^p\\ spaces, only \\L^2(\mu)\\ is an [inner product space](linear-algebra-inner-products.llms.md#def-inner-product-space), equipped with the inner product \\\mathopen{}\left\langle f, g\right\rangle\mathclose{} \stackrel{\text{def}}{=}\int_S f g \\ d\mu\\ (all other \\L^p\\ spaces fail the parallelogram law). The completeness of \\L^2\\ makes it a Hilbert space. In regression, the conditional expectation \\\operatorname{E}\mathopen{}\left\[Y \mid X\right\]\mathclose{}\\ is the orthogonal projection of \\Y \in L^2\\ onto the closed subspace of \\L^2\\ functions measurable with respect to \\X\\, minimizing the population mean squared error (pMSE) \\\mathopen{}\left\lVert Y - g(X)\right\rVert\mathclose{}\_2^2\\.
>
> 3.  **Loss functions, estimation, and robustness**: The choice of \\p\\ in \\L^p\\ norms defines loss functions for optimization and regression:
>
>     - **\\L^2\\ loss (population mean squared error (pMSE), or sample mean squared error (sMSE) on a sample)**: penalizes large errors quadratically, yielding the conditional mean; sensitive to outliers.
>     - **\\L^1\\ loss (population mean absolute error (pMAE), or sample mean absolute error (sMAE) on a sample)**: penalizes errors linearly, yielding the conditional median; robust to heavy tails and outliers.
>     - **\\L^\infty\\ loss (Chebyshev criterion)**: minimizes the worst-case maximum error across all instances.

## 7 Product measures

> **NOTE:**
>
> **Definition 34 (Measurable rectangle)** Let \\(S, \mathcal{S})\\ and \\(T, \mathcal{T})\\ be [measurable spaces](#def-measurable-space). A **measurable rectangle** is a [Cartesian product](sets.llms.md#def-cartesian-product) \\A \times B\\ with \\A \in \mathcal{S}\\ and \\B \in \mathcal{T}\\.

> **NOTE:**
>
> **Definition 35 (Product \\\sigma\\-algebra)** For the measurable spaces \\(S, \mathcal{S})\\ and \\(T, \mathcal{T})\\ of [Definition 34](#def-measurable-rectangle), the **product \\\sigma\\-algebra** \\\mathcal{S}\otimes \mathcal{T}\\ is the \\\sigma\\-algebra on \\S \times T\\ [generated by](#def-generated-sigma-algebra) the measurable rectangles.

> **NOTE:**
>
> **Example 34 (Product \\\sigma\\-algebras)**  
>
> - Give the die rolls \\D\\ the \\\sigma\\-algebra \\\mathcal{S}\\ of all its subsets. Each single pair \\\mathopen{}\left\\(a, b)\right\\\mathclose{} = \mathopen{}\left\\a\right\\\mathclose{} \times \mathopen{}\left\\b\right\\\mathclose{}\\ in \\D \times D\\ is a measurable rectangle. Every subset of \\D \times D\\ is a union of finitely many single pairs, and \\\mathcal{S}\otimes \mathcal{S}\\ contains finite unions of its sets ([Theorem 1](#thm-sigma-algebra-closure)), as well as \\\emptyset\\, so \\\mathcal{S}\otimes \mathcal{S}\\ is the collection of all subsets of \\D \times D\\.
> - The rectangle \\\[0, 2\] \times \[0, 3\]\\ is a measurable rectangle for the Borel \\\sigma\\-algebras, so it is in \\\mathcal{B}\otimes \mathcal{B}\\.

> **NOTE:**
>
> **Definition 36 (Product measure)** Let \\(S, \mathcal{S}, \mu)\\ and \\(T, \mathcal{T}, \nu)\\ be measure spaces with [\\\sigma\\-finite](#def-sigma-finite) measures \\\mu\\ and \\\nu\\. The **product measure** \\\mu\otimes \nu\\ is the measure on the [product \\\sigma\\-algebra](#def-product-sigma-algebra) \\\mathcal{S}\otimes \mathcal{T}\\ that gives each measurable rectangle the product of the measures of its sides:
>
> \\(\mu\otimes \nu)(A \times B) = \mu(A) \\ \nu(B) \quad \text{for all } A \in \mathcal{S}\text{ and } B \in \mathcal{T},\\
>
> with \\0 \cdot \infty = \infty \cdot 0 \stackrel{\text{def}}{=}0\\ and \\x \cdot \infty = \infty \cdot x \stackrel{\text{def}}{=}\infty\\ for \\x \> 0\\. Exactly one measure has these values [\[2\]](#ref-billingsley1995probability), Theorem 18.2.

> **NOTE:**
>
> **Example 35 (Product measures)**  
>
> - For the counting measure \\\mu\\ on the die rolls \\D\\, \\(\mu\otimes \mu)(A \times B) = \mathopen{}\left\|A\right\|\mathclose{} \mathopen{}\left\|B\right\|\mathclose{}\\, the number of pairs in \\A \times B\\. For example, the set of pairs in which both rolls are even is \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{} \times \mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\, with
>
>   \\ \begin{aligned} (\mu\otimes \mu)(\mathopen{}\left\\2, 4, 6\right\\\mathclose{} \times \mathopen{}\left\\2, 4, 6\right\\\mathclose{}) &= 3 \cdot 3 \\ &= 9 \end{aligned} \\
>
>   pairs.
>
> - For Lebesgue measure \\\lambda\\ on \\\mathbb{R}\\,
>
>   \\ \begin{aligned} (\lambda\otimes \lambda)(\[0, 2\] \times \[0, 3\]) &= 2 \cdot 3 \\ &= 6, \end{aligned} \\
>
>   the area of the rectangle.

## 8 Further reading

- Billingsley [\[2\]](#ref-billingsley1995probability) develops measure theory and builds probability on it. Its early chapters define \\\sigma\\-algebras, measures, and their basic properties.
- Folland [\[21\]](#ref-folland1999real) is a graduate text on measure and integration; its first chapters treat \\\sigma\\-algebras and measures.
- Gut [\[22\]](#ref-gut2013) is a graduate course in probability that opens with a chapter on introductory measure theory.

## References

\[1\]

Wikipedia contributors, “Sigma-algebra — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/%CF%83-algebra>

\[2\]

P. Billingsley, *Probability and measure*, 3rd ed. in Wiley series in probability and mathematical statistics. New York: Wiley, 1995.

\[3\]

G. Casella and R. Berger, *Statistical inference*, 2nd ed. Cengage Learning, 2002. Available: <https://www.cengage.com/c/statistical-inference-2e-casella-berger/9780534243128/>

\[4\]

Wikipedia contributors, “Borel set — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Borel_set>

\[5\]

Wikipedia contributors, “Sigma-additive set function — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Sigma-additive_set_function>

\[6\]

Wikipedia contributors, “Measure (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Measure_(mathematics)>

\[7\]

Wikipedia contributors, “Counting measure — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Counting_measure>

\[8\]

Wikipedia contributors, “Measurable space — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Measurable_space>

\[9\]

Wikipedia contributors, “Lebesgue measure — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Lebesgue_measure>

\[10\]

Wikipedia contributors, “Null set — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Null_set>

\[11\]

Wikipedia contributors, “Almost everywhere — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Almost_everywhere>

\[12\]

Wikipedia contributors, “Finite measure — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Finite_measure>

\[13\]

Wikipedia contributors, “Sigma-finite measure — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Sigma-finite_measure>

\[14\]

Wikipedia contributors, “Probability measure — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Probability_measure>

\[15\]

Wikipedia contributors, “Probability space — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Probability_space>

\[16\]

Wikipedia contributors, “Sample space — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Sample_space>

\[17\]

Wikipedia contributors, “Outcome (probability) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Outcome_(probability)>

\[18\]

Wikipedia contributors, “Event (probability theory) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Event_(probability_theory)>

\[19\]

Wikipedia contributors, “Measurable function — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Measurable_function>

\[20\]

Wikipedia contributors, “Lebesgue integration — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Lebesgue_integration>

\[21\]

G. B. Folland, *Real analysis: Modern techniques and their applications*, 2nd ed. Wiley, 1999. Available: <https://www.wiley.com/en-us/Real+Analysis%3A+Modern+Techniques+and+Their+Applications%2C+2nd+Edition-p-9780471317166>

\[22\]

A. Gut, *Probability: A graduate course*, 2nd ed. in Springer texts in statistics. New York: Springer, 2013. doi: [10.1007/978-1-4614-4708-5](https://doi.org/10.1007/978-1-4614-4708-5).

Back to top
