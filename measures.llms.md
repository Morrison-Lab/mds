# Measures

Code

Published

Last modified: 2026-10-05 19:53:51 (PDT)

> **NOTE:**
>
> *Remark*. A measure assigns a size to each set in a collection of sets: how many elements it has, how long it is, or how likely it is. This page builds measures from \\\sigma\\-algebras and additivity, using the [sets and functions](sets-functions.llms.md) page’s definitions. The Morrison Lab’s probability notes define a probability measure as a measure that gives the whole space size 1 ([probability measure](https://morrison-lab.github.io/pds/probability-basics.html#def-probability)).

## 1 \\\sigma\\-algebras

> **NOTE:**
>
> **Definition 1 (\\\sigma\\-algebra)** A **\\\sigma\\-algebra** on a set \\S\\ is a collection \\\mathscr{S}\\ of [subsets](sets-functions.llms.md#def-subset) of \\S\\ that satisfies:
>
> - \\\mathscr{S}\\ contains \\S\\ itself.
> - For each set \\A\\ in \\\mathscr{S}\\, \\\mathscr{S}\\ contains its complement \\S \setminus A\\.
> - For each sequence \\A_1, A_2, \ldots\\ of sets in \\\mathscr{S}\\, \\\mathscr{S}\\ contains their union \\\bigcup\_{i=1}^{\infty} A_i\\.

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
> **Theorem 1 (Closure properties of a \\\sigma\\-algebra)** If \\\mathscr{S}\\ is a [\\\sigma\\-algebra](#def-sigma-algebra) on a set \\S\\, then \\\mathscr{S}\\ contains:
>
> - the [empty set](sets-functions.llms.md#def-empty-set) \\\emptyset\\;
> - the union \\A_1 \cup \cdots \cup A_n\\ of any finitely many sets \\A_1, \ldots, A_n\\ in \\\mathscr{S}\\;
> - the intersection \\\bigcap\_{i=1}^{\infty} A_i\\ of any sequence \\A_1, A_2, \ldots\\ of sets in \\\mathscr{S}\\.

> **NOTE:**
>
> *Proof*. *Empty set.* \\\mathscr{S}\\ contains \\S\\, so it contains the complement of \\S\\, which is \\S \setminus S = \emptyset\\.
>
> *Finite unions.* Extend \\A_1, \ldots, A_n\\ to a sequence by setting \\A\_{n+1} = A\_{n+2} = \cdots = \emptyset\\; each of these sets is in \\\mathscr{S}\\, by the first part. Then:
>
> \\ \begin{aligned} A_1 \cup \cdots \cup A_n &= A_1 \cup \cdots \cup A_n \cup \emptyset \cup \emptyset \cup \cdots && \text{(a union with } \emptyset \text{ adds no elements)} \\ &= \bigcup\_{i=1}^{\infty} A_i && \text{(} A_i = \emptyset \text{ for } i \> n \text{)} \end{aligned} \\
>
> and \\\mathscr{S}\\ contains \\\bigcup\_{i=1}^{\infty} A_i\\ by the union rule of [Definition 1](#def-sigma-algebra).
>
> *Countable intersections.* An element of \\S\\ is in every \\A_i\\ exactly when it is in none of the complements \\S \setminus A_i\\, so:
>
> \\ \begin{aligned} \bigcap\_{i=1}^{\infty} A_i &= S \setminus \bigcup\_{i=1}^{\infty} (S \setminus A_i) && \text{(De Morgan's law)} \end{aligned} \\
>
> Each \\S \setminus A_i\\ is in \\\mathscr{S}\\ by the complement rule, so their union is in \\\mathscr{S}\\ by the union rule, and the complement of that union is in \\\mathscr{S}\\ by the complement rule again.

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

## 2 Pairwise disjoint sets

> **NOTE:**
>
> **Definition 2 (Pairwise disjoint sets)** Finitely or countably many sets \\A_1, A_2, \ldots\\ are **pairwise disjoint** (also called **disjoint** or **mutually disjoint**) when no two of them share an element:
>
> \\A_i \cap A_j = \emptyset \quad \text{for all } i \neq j\\

> **NOTE:**
>
> *Remark 2* (Mutually exclusive events). In probability, pairwise disjoint events are usually called **mutually exclusive**. For example, for one roll of a six-sided die, the events “the roll is even”, \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\, and “the roll is odd”, \\\mathopen{}\left\\1, 3, 5\right\\\mathclose{}\\, are mutually exclusive: no roll is both even and odd.

> **NOTE:**
>
> **Example 3 (Low and high die rolls)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ ([sets of die rolls](sets-functions.llms.md#exm-set)), the sets \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\ and \\\mathopen{}\left\\5, 6\right\\\mathclose{}\\ are pairwise disjoint: no roll is in both. The sets \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ and \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\ are not, because \\2\\ is in both.

## 3 Additivity

> **NOTE:**
>
> **Definition 3 (Finite additivity)** Let \\\mathscr{S}\\ be a [\\\sigma\\-algebra](#def-sigma-algebra) on a set \\S\\. A [function](sets-functions.llms.md#def-function) \\\mu : \mathscr{S} \to \[0, \infty\]\\, with values in the [extended non-negative reals](sets-functions.llms.md#def-extended-nonneg-reals), is **finitely additive** if, for every finite collection of [pairwise disjoint](#def-pairwise-disjoint) sets \\A_1, \ldots, A_n\\ in \\\mathscr{S}\\, the value of their union is the sum of their values:
>
> \\\mu(A_1 \cup \cdots \cup A_n) = \sum\_{i=1}^{n} \mu(A_i)\\

> **NOTE:**
>
> **Example 4 (Counting elements is finitely additive)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ ([sets of die rolls](sets-functions.llms.md#exm-set)), let \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\, the number of elements of \\A\\, for each set \\A\\ in the \\\sigma\\-algebra of all subsets of \\D\\ ([Example 1](#exm-sigma-algebra)). The sets \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\ and \\\mathopen{}\left\\5, 6\right\\\mathclose{}\\ are pairwise disjoint ([Example 3](#exm-pairwise-disjoint)), and:
>
> \\ \begin{aligned} \mu(\mathopen{}\left\\1, 2\right\\\mathclose{} \cup \mathopen{}\left\\5, 6\right\\\mathclose{}) &= \mu(\mathopen{}\left\\1, 2, 5, 6\right\\\mathclose{}) && \text{(take the union)} \\ &= 4 && \text{(count the elements)} \\ &= 2 + 2 && \text{(write 4 as a sum)} \\ &= \mu(\mathopen{}\left\\1, 2\right\\\mathclose{}) + \mu(\mathopen{}\left\\5, 6\right\\\mathclose{}) && \text{(count each set's elements)} \end{aligned} \\
>
> The same holds for any pairwise disjoint sets, because the sizes of disjoint sets add, so \\\mu\\ is finitely additive.

> **NOTE:**
>
> **Example 5 (Squaring the count is not finitely additive)** On the same \\\sigma\\-algebra, let \\\nu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}^2\\. The sets \\\mathopen{}\left\\1\right\\\mathclose{}\\ and \\\mathopen{}\left\\2\right\\\mathclose{}\\ are pairwise disjoint, but
>
> \\ \begin{aligned} \nu(\mathopen{}\left\\1\right\\\mathclose{} \cup \mathopen{}\left\\2\right\\\mathclose{}) &= \nu(\mathopen{}\left\\1, 2\right\\\mathclose{}) && \text{(take the union)} \\ &= 2^2 = 4, && \text{(count, then square)} \\ \nu(\mathopen{}\left\\1\right\\\mathclose{}) + \nu(\mathopen{}\left\\2\right\\\mathclose{}) &= 1^2 + 1^2 = 2, && \text{(count each set, then square)} \end{aligned} \\
>
> and \\4 \ne 2\\, so \\\nu\\ is not finitely additive.

> **NOTE:**
>
> **Definition 4 (Countable additivity)** Let \\\mathscr{S}\\ be a [\\\sigma\\-algebra](#def-sigma-algebra) on a set \\S\\. A function \\\mu : \mathscr{S} \to \[0, \infty\]\\ is **countably additive** (also called **\\\sigma\\-additive**) if, for every sequence of [pairwise disjoint](#def-pairwise-disjoint) sets \\A_1, A_2, \ldots\\ in \\\mathscr{S}\\, the value of their union is the sum of their values:
>
> \\\mu\\\left(\bigcup\_{i=1}^{\infty} A_i\right) = \sum\_{i=1}^{\infty} \mu(A_i)\\

> **NOTE:**
>
> **Example 6 (Counting elements is countably additive)** For the counting function \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 4](#exm-finite-additivity), take any sequence of pairwise disjoint sets \\A_1, A_2, \ldots\\. No two of them share an element, and \\D\\ has only six elements, so at most six of the \\A_i\\ contain any elements; the rest are \\\emptyset\\, with \\\mu(\emptyset) = 0\\. The infinite sum therefore has at most six nonzero terms, and finite additivity ([Example 4](#exm-finite-additivity)) shows that those terms add up to \\\mu\\ of the union. So \\\mu\\ is countably additive.

> **NOTE:**
>
> **Lemma 1 (Sums of non-negative terms)** Let \\a_1, a_2, \ldots\\ be values in \\\[0, \infty\]\\, with partial sums \\s_n \stackrel{\text{def}}{=}\sum\_{i=1}^{n} a_i\\, where \\x + \infty = \infty\\ for every \\x\\ in \\\[0, \infty\]\\. Then the partial sums are non-decreasing, \\s_1 \le s_2 \le \cdots\\, so their limit, the sum \\\sum\_{i=1}^{\infty} a_i = \lim\_{n \to \infty} s_n\\, always exists, and it is either a finite number or \\\infty\\.

> **NOTE:**
>
> *Proof*. For each \\n\\:
>
> \\ \begin{aligned} s\_{n+1} &= s_n + a\_{n+1} && \text{(definition of } s\_{n+1} \text{)} \\ &\ge s_n && \text{(} a\_{n+1} \ge 0 \text{)} \end{aligned} \\
>
> If some partial sum \\s_N\\ is \\\infty\\, then \\s_n = \infty\\ for every \\n \ge N\\, so the limit is \\\infty\\. Otherwise, the partial sums form a non-decreasing sequence of real numbers. If that sequence is bounded above, it converges to a finite number (see [Wikipedia: Monotone convergence theorem](https://en.wikipedia.org/wiki/Monotone_convergence_theorem)). If it is not bounded above, then for every number \\M\\ some \\s_N\\ exceeds \\M\\, and so does every later \\s_n \ge s_N\\; the limit is \\\infty\\.

> **NOTE:**
>
> *Remark 3* (The sum in countable additivity always has a value). By [Lemma 1](#lem-nonneg-series), the right-hand side of the equation in [Definition 4](#def-countable-additivity), \\\sum\_{i=1}^{\infty} \mu(A_i)\\, always has a value, because each \\\mu(A_i)\\ is in \\\[0, \infty\]\\. For example, if \\\mu(A_i) = 1/2^i\\ for each \\i\\, the partial sums are \\s_n = 1 - 1/2^n\\, and the sum is \\1\\; if \\\mu(A_i) = 1\\ for each \\i\\, the partial sums are \\s_n = n\\, and the sum is \\\infty\\.

> **NOTE:**
>
> **Lemma 2 (Countable additivity and the empty set)** If \\\mu\\ is a [countably additive](#def-countable-additivity) function on a [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathscr{S}\\, then \\\mu(\emptyset) = 0\\ or \\\mu(\emptyset) = \infty\\.

> **NOTE:**
>
> *Proof*. The set \\\emptyset = S \setminus S\\ is in \\\mathscr{S}\\, as the complement of \\S\\, and the sequence \\\emptyset, \emptyset, \ldots\\ is pairwise disjoint with union \\\emptyset\\, so:
>
> \\ \begin{aligned} \mu(\emptyset) &= \mu\\\left(\bigcup\_{i=1}^{\infty} \emptyset\right) && \text{(the union of copies of } \emptyset \text{ is } \emptyset \text{)} \\ &= \sum\_{i=1}^{\infty} \mu(\emptyset) && \text{(countable additivity)} \end{aligned} \\
>
> If \\\mu(\emptyset) = c\\ for a finite \\c \> 0\\, the right-hand side is \\c + c + \cdots = \infty \neq c\\, a contradiction. So \\\mu(\emptyset)\\ is 0 or \\\infty\\.

> **NOTE:**
>
> **Example 7 (A countably additive function with \\\mu(\emptyset) = 0\\)** The counting function \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 6](#exm-countable-additivity) is countably additive, and:
>
> \\ \begin{aligned} \mu(\emptyset) &= \mathopen{}\left\|\emptyset\right\|\mathclose{} && \text{(definition of } \mu \text{)} \\ &= 0 && \text{(} \emptyset \text{ has no elements)} \end{aligned} \\

> **NOTE:**
>
> **Example 8 (A countably additive function with \\\mu(\emptyset) = \infty\\)** For the die rolls \\D = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ ([sets of die rolls](sets-functions.llms.md#exm-set)), let \\\mu(A) \stackrel{\text{def}}{=}\infty\\ for every set \\A\\ in the \\\sigma\\-algebra of all subsets of \\D\\ ([Example 1](#exm-sigma-algebra)), including \\A = \emptyset\\. For any sequence of pairwise disjoint sets \\A_1, A_2, \ldots\\, the left-hand side of the countable additivity equation is:
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
> *Remark 4* (\\\mu(\emptyset) = 0\\ is an extra requirement). [Example 7](#exm-empty-set-zero) and [Example 8](#exm-empty-set-infinity) show that both values allowed by [Lemma 2](#lem-countable-additivity-empty) occur for countably additive functions. So \\\mu(\emptyset) = 0\\ is an extra requirement, not a consequence of countable additivity.

> **NOTE:**
>
> **Theorem 3 (Countable additivity implies finite additivity)** If \\\mu\\ is a [countably additive](#def-countable-additivity) function on a [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathscr{S}\\, and \\\mu(\emptyset) = 0\\, then \\\mu\\ is [finitely additive](#def-finite-additivity).

> **NOTE:**
>
> *Proof*. Let \\A_1, \ldots, A_n\\ be pairwise disjoint sets in \\\mathscr{S}\\, and extend them to a sequence by setting \\A\_{n+1} = A\_{n+2} = \cdots = \emptyset\\. The extended sequence is still pairwise disjoint, since \\\emptyset\\ shares no element with any set, and its union is \\A_1 \cup \cdots \cup A_n\\. So:
>
> \\ \begin{aligned} \mu(A_1 \cup \cdots \cup A_n) &= \mu\\\left(\bigcup\_{i=1}^{\infty} A_i\right) && \text{(} A_i = \emptyset \text{ for } i \> n \text{)} \\ &= \sum\_{i=1}^{\infty} \mu(A_i) && \text{(countable additivity)} \\ &= \sum\_{i=1}^{n} \mu(A_i) + \sum\_{i=n+1}^{\infty} \mu(\emptyset) && \text{(} A_i = \emptyset \text{ for } i \> n \text{)} \\ &= \sum\_{i=1}^{n} \mu(A_i) && \text{(} \mu(\emptyset) = 0 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 9 (Finitely additive but not countably additive)** Let \\S = \mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\, with the \\\sigma\\-algebra of all subsets of \\S\\ ([Theorem 2](#thm-power-set-sigma-algebra)), and define:
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
> *Remark 5* (Finite additivity does not imply countable additivity). [Example 9](#exm-finite-not-countable) shows that the converse of [Theorem 3](#thm-countable-implies-finite) fails, even when \\\mu(\emptyset) = 0\\: a finitely additive function need not be countably additive (see [Wikipedia: Sigma-additive set function, “An additive function which is not \\\sigma\\-additive”](https://en.wikipedia.org/wiki/Sigma-additive_set_function#An_additive_function_which_is_not_%CF%83-additive)). The function \\\mu\\ in [Example 9](#exm-finite-not-countable) has \\\mu(\emptyset) = 0\\, because \\\emptyset\\ is finite.

## 4 Measures

> **NOTE:**
>
> **Definition 5 (Measure)** A **measure** on a set \\S\\ with a [\\\sigma\\-algebra](#def-sigma-algebra) \\\mathscr{S}\\ is a function \\\mu : \mathscr{S} \to \[0, \infty\]\\ that satisfies:
>
> - \\\mu(\emptyset) = 0\\.
> - \\\mu\\ is [countably additive](#def-countable-additivity).

> **NOTE:**
>
> **Example 10 (Counting elements is a measure)** The counting function \\\mu(A) \stackrel{\text{def}}{=}\mathopen{}\left\|A\right\|\mathclose{}\\ of [Example 4](#exm-finite-additivity), defined on the \\\sigma\\-algebra of all subsets of \\D\\ ([Example 1](#exm-sigma-algebra)), takes values in \\\[0, \infty\]\\, is countably additive ([Example 6](#exm-countable-additivity)), and gives \\\mu(\emptyset) = 0\\, so it is a measure.

> **NOTE:**
>
> **Corollary 1 (Measures are finitely additive)** Every [measure](#def-measure) is [finitely additive](#def-finite-additivity).

> **NOTE:**
>
> *Proof*. A measure \\\mu\\ is countably additive and has \\\mu(\emptyset) = 0\\ ([Definition 5](#def-measure)), so [Theorem 3](#thm-countable-implies-finite) applies to it.

> **NOTE:**
>
> **Definition 6 (Counting measure)** The **counting measure** on a set \\S\\ is the [measure](#def-measure) on the [\\\sigma\\-algebra of all subsets of \\S\\](#thm-power-set-sigma-algebra) that assigns each finite set its number of elements, and each infinite set the value \\\infty\\:
>
> \\ \mu(A) \stackrel{\text{def}}{=}\begin{cases} \mathopen{}\left\|A\right\|\mathclose{} & \text{if } A \text{ is finite} \\ \infty & \text{if } A \text{ is infinite} \end{cases} \\

> **NOTE:**
>
> **Example 11 (Counting measure on the non-negative integers)** For the counting measure \\\mu\\ on \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\, \\\mu(\mathopen{}\left\\0, 1, 2\right\\\mathclose{}) = 3\\, and the set of even numbers has \\\mu(\mathopen{}\left\\0, 2, 4, \ldots\right\\\mathclose{}) = \infty\\. The even numbers are the union of the pairwise disjoint sets \\\mathopen{}\left\\0\right\\\mathclose{}, \mathopen{}\left\\2\right\\\mathclose{}, \mathopen{}\left\\4\right\\\mathclose{}, \ldots\\, and countable additivity agrees: \\\sum\_{k=0}^{\infty} \mu(\mathopen{}\left\\2k\right\\\mathclose{}) = 1 + 1 + \cdots = \infty\\.

> **NOTE:**
>
> *Remark 6* (Measures generalize size). A [measure](#def-measure) generalizes size: it can measure how many elements a set has, as in [Definition 6](#def-counting-measure), or how long a set of real numbers is, as [Lebesgue measure](https://en.wikipedia.org/wiki/Lebesgue_measure) does, assigning each interval \\\[a, b\]\\ its length \\b - a\\. For example, the counting measure on \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\ gives \\\mathopen{}\left\\2, 3, 4, 5\right\\\mathclose{}\\ the value \\4\\, while the Lebesgue measure of the interval \\\[2, 5\]\\ is \\5 - 2 = 3\\. Both appear as reference measures in the [Fubini–Tonelli theorem](calculus.llms.md#thm-fubini-tonelli).

## 5 Further reading

- Billingsley ([1995](#ref-billingsley1995probability)) develops measure theory and builds probability on it. Its early chapters define \\\sigma\\-algebras, measures, and their basic properties.
- Folland ([1999](#ref-folland1999real)) is a graduate text on measure and integration; its first chapters treat \\\sigma\\-algebras and measures.
- Gut ([2013](#ref-gut2013)) is a graduate course in probability that opens with a chapter on introductory measure theory.

## References

Billingsley, Patrick. 1995. *Probability and Measure*. 3rd ed. Wiley Series in Probability and Mathematical Statistics. Wiley.

Folland, Gerald B. 1999. *Real Analysis: Modern Techniques and Their Applications*. 2nd ed. Wiley. <https://www.wiley.com/en-us/Real+Analysis%3A+Modern+Techniques+and+Their+Applications%2C+2nd+Edition-p-9780471317166>.

Gut, Allan. 2013. *Probability: A Graduate Course*. 2nd ed. Springer Texts in Statistics. Springer. <https://doi.org/10.1007/978-1-4614-4708-5>.

Back to top
