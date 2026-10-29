# Sigma-Algebras

Code

Published

Last modified: 2026-10-29 15:11:33 (PDT)

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
> **Example 1 (\\\sigma\\-algebras for die rolls)** For the die rolls \\D = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\ ([sets of die rolls](sets.llms.md#exm-set)), the collection of all subsets of \\D\\ is a \\\sigma\\-algebra on \\D\\, since complements and unions of subsets of \\D\\ are again subsets of \\D\\. So is the smaller collection
>
> \\{\mathopen{}\left\\\emptyset, {\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}, {\mathopen{}\left\\1, 3, 5\right\\\mathclose{}}, D\right\\\mathclose{}}\\
>
> which contains \\D\\, the complement of each of its sets, and every union of its sets: for example, \\{\mathopen{}\left\\2, 4, 6\right\\\mathclose{}} \cup {\mathopen{}\left\\1, 3, 5\right\\\mathclose{}} = D\\.

> **NOTE:**
>
> **Example 2 (A collection that is not a \\\sigma\\-algebra)** The collection \\{\mathopen{}\left\\\emptyset, {\mathopen{}\left\\1\right\\\mathclose{}}, D\right\\\mathclose{}}\\ is not a \\\sigma\\-algebra on \\D = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\: it contains \\{\mathopen{}\left\\1\right\\\mathclose{}}\\ but not its complement \\D \setminus {\mathopen{}\left\\1\right\\\mathclose{}} = {\mathopen{}\left\\2, 3, 4, 5, 6\right\\\mathclose{}}\\.

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
> **Definition 2 (\\\sigma\\-algebra generated by a collection)** Let \\\mathcal{C}\\ be a [collection](sets.llms.md#def-collection) of subsets of a set \\S\\. The **\\\sigma\\-algebra generated by** \\\mathcal{C}\\, written \\{\sigma\mathopen{}\left(\mathcal{C}\right)\mathclose{}}\\, is the intersection of all the \\\sigma\\-algebras on \\S\\ that contain every set in \\\mathcal{C}\\.

> **NOTE:**
>
> *Remark 2* (The smallest \\\sigma\\-algebra containing \\\mathcal{C}\\). \\{\sigma\mathopen{}\left(\mathcal{C}\right)\mathclose{}}\\ is a \\\sigma\\-algebra by [Theorem 3](#thm-sigma-algebra-intersection) (the collection of all subsets of \\S\\ is one of the \\\sigma\\-algebras intersected, by [Theorem 2](#thm-power-set-sigma-algebra), so there is at least one). It contains every set in \\\mathcal{C}\\, and it is contained in every other \\\sigma\\-algebra on \\S\\ that does, so it is the smallest \\\sigma\\-algebra on \\S\\ that contains \\\mathcal{C}\\.

> **NOTE:**
>
> **Example 4 (The \\\sigma\\-algebra generated by the even rolls)** For the die rolls \\D = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\, let \\\mathcal{C}= {\mathopen{}\left\\{\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}\right\\\mathclose{}}\\. Every \\\sigma\\-algebra on \\D\\ that contains \\{\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}\\ must also contain \\D\\, the complement \\{\mathopen{}\left\\1, 3, 5\right\\\mathclose{}}\\, and \\\emptyset\\ ([Definition 1](#def-sigma-algebra) and [Theorem 1](#thm-sigma-algebra-closure)). The collection \\{\mathopen{}\left\\\emptyset, {\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}, {\mathopen{}\left\\1, 3, 5\right\\\mathclose{}}, D\right\\\mathclose{}}\\ is already a \\\sigma\\-algebra ([Example 1](#exm-sigma-algebra)), so it is \\{\sigma\mathopen{}\left(\mathcal{C}\right)\mathclose{}}\\.

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
> - A single point \\{\mathopen{}\left\\a\right\\\mathclose{}} = \[a, a\]\\ is an interval, so it is a Borel set.
> - The [integers](number-systems.llms.md#def-integers) are a Borel set: they are the [union](sets.llms.md#def-union) of the [sequence](functions.llms.md#def-sequence) of single points \\{\mathopen{}\left\\0\right\\\mathclose{}}, {\mathopen{}\left\\1\right\\\mathclose{}}, {\mathopen{}\left\\-1\right\\\mathclose{}}, {\mathopen{}\left\\2\right\\\mathclose{}}, {\mathopen{}\left\\-2\right\\\mathclose{}}, \ldots\\ ([countable and uncountable sets](functions.llms.md#exm-countable-set) lists them this way), and \\\mathcal{B}\\ contains that union by [Definition 1](#def-sigma-algebra).
> - The [complement](sets.llms.md#def-complement) \\\mathbb{R}\setminus \[0, 1\]\\ is a Borel set, because \\\mathcal{B}\\ contains the complement of each of its sets.

Back to top

## References

\[1\]

Wikipedia contributors, “Sigma-algebra — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/%CF%83-algebra>

\[2\]

P. Billingsley, *Probability and measure*, 3rd ed. in Wiley series in probability and mathematical statistics. New York: Wiley, 1995.

\[3\]

G. Casella and R. Berger, *Statistical inference*, 2nd ed. Cengage Learning, 2002. Available: <https://www.cengage.com/c/statistical-inference-2e-casella-berger/9780534243128/>

\[4\]

Wikipedia contributors, “Borel set — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Borel_set>
