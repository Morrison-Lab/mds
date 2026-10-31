# Sets

Code

Published

Last modified: 2026-10-30 16:28:50 (PDT)

> **NOTE:**
>
> *Remark*. Probability and statistics describe events, outcomes, and parameters as sets. This page collects the definitions of sets that the Morrison Lab’s probability and statistics notes build on. The [Functions](functions.llms.md) page defines functions between sets, and the [Expressions and Algorithms](expressions-algorithms.llms.md) page defines the expressions that write functions down and the algorithms that compute them.

## 0.1 Sets

> **NOTE:**
>
> **Definition 1 (Set)** A **set** [\[1\]](#ref-wikipedia_set_mathematics) is a collection of distinct objects, called its elements. We write \\a \in A\\ when \\a\\ is an element of the set \\A\\, and \\a \notin A\\ when it is not. Two sets are equal when they have exactly the same elements.

> **NOTE:**
>
> *Remark 1* (Naive and formal set theory). [Definition 1](#def-set) is the informal (“naive”) notion of a set, which is all these notes need. Formal set theory states axioms for sets instead [\[1\]](#ref-wikipedia_set_mathematics). For example, the last sentence of [Definition 1](#def-set), that two sets are equal when they have exactly the same elements, is one of those axioms, the *axiom of extensionality*.

> **NOTE:**
>
> **Example 1 (Sets of die rolls)** The possible results of rolling a six-sided die form the set \\{\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\, with \\3 \in {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\ and \\7 \notin {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\. The sets \\{\mathopen{}\left\\1, 2, 3\right\\\mathclose{}}\\ and \\{\mathopen{}\left\\3, 2, 1\right\\\mathclose{}}\\ are equal, because they have the same elements; the order in which the elements are listed does not matter.

> **NOTE:**
>
> **Definition 2 (Set-builder notation)** For a set \\A\\ and a statement \\P(x)\\ about an element \\x\\, **set-builder notation** [\[2\]](#ref-wikipedia_set_builder_notation) \\{\mathopen{}\left\\x \in A : P(x)\right\\\mathclose{}}\\ denotes the set of elements \\x\\ of \\A\\ for which \\P(x)\\ is true.

> **NOTE:**
>
> **Example 2 (Even die rolls in set-builder notation)** \\{\mathopen{}\left\\x \in {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}} : x \text{ is even}\right\\\mathclose{}} = {\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}\\ is the set of [even](number-systems.llms.md#def-even-odd) rolls, and \\{\mathopen{}\left\\x \in \mathbb{R}: x \> 0\right\\\mathclose{}}\\ is the set of positive [real numbers](number-systems.llms.md#def-real-numbers).

> **NOTE:**
>
> **Definition 3 (Subset)** A set \\A\\ is a **subset** [\[3\]](#ref-wikipedia_subset) of a set \\B\\, written \\A \subseteq B\\, if every element of \\A\\ is an element of \\B\\.

> **NOTE:**
>
> **Example 3 (Even die rolls)** The even die rolls form a subset of the possible rolls: \\{\mathopen{}\left\\2, 4, 6\right\\\mathclose{}} \subseteq {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\, because each of \\2\\, \\4\\, and \\6\\ is a possible roll. The set \\{\mathopen{}\left\\2, 4, 7\right\\\mathclose{}}\\ is not a subset of \\{\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\, because \\7\\ is not a possible roll.

> **NOTE:**
>
> **Theorem 1 (Every set is a subset of itself)** For every set \\A\\, \\A \subseteq A\\.

> **NOTE:**
>
> *Proof*. Every element of \\A\\ is an element of \\A\\, which is [Definition 3](#def-subset) with \\B = A\\.

> **NOTE:**
>
> **Definition 4 (Strict subset, proper subset)** A [set](#def-set) \\A\\ is a **strict subset** (also called a **proper subset**) of a set \\B\\, written \\A \subsetneq B\\, if \\A\\ is a [subset](#def-subset) of \\B\\ and \\A \neq B\\.

> **NOTE:**
>
> *Remark 2* (The symbol \\\subset\\). Sources disagree about the symbol \\\subset\\: some use it for “subset” (\\\subseteq\\), and others for “strict subset” (\\\subsetneq\\) [\[3\]](#ref-wikipedia_subset). For example, \\{\mathopen{}\left\\1, 2\right\\\mathclose{}} \subset {\mathopen{}\left\\1, 2\right\\\mathclose{}}\\ is true in the first reading, because \\{\mathopen{}\left\\1, 2\right\\\mathclose{}} \subseteq {\mathopen{}\left\\1, 2\right\\\mathclose{}}\\, and false in the second, because the two sets are equal. These notes avoid \\\subset\\ and write \\\subseteq\\ or \\\subsetneq\\.

> **NOTE:**
>
> **Definition 5 (Superset)** A set \\B\\ is a **superset** of a set \\A\\, written \\B \supseteq A\\, if every element of \\A\\ is an element of \\B\\.

> **NOTE:**
>
> *Remark 3* (Superset and subset). \\B \supseteq A\\ means the same thing as \\A \subseteq B\\ ([subset](#def-subset)). For example, \\{\mathopen{}\left\\1, 2, 3\right\\\mathclose{}} \supseteq {\mathopen{}\left\\1, 3\right\\\mathclose{}}\\, and \\{\mathopen{}\left\\1, 3\right\\\mathclose{}} \subseteq {\mathopen{}\left\\1, 2, 3\right\\\mathclose{}}\\. But \\{\mathopen{}\left\\1, 3\right\\\mathclose{}}\\ is not a superset of \\{\mathopen{}\left\\1, 2\right\\\mathclose{}}\\, because \\2 \in {\mathopen{}\left\\1, 2\right\\\mathclose{}}\\ and \\2 \notin {\mathopen{}\left\\1, 3\right\\\mathclose{}}\\.

> **NOTE:**
>
> **Definition 6 (Strict superset)** A set \\B\\ is a **strict superset** of a set \\A\\, written \\B \supsetneq A\\, if \\B\\ is a [superset](#def-superset) of \\A\\ and \\B \neq A\\.

> **NOTE:**
>
> *Remark 4* (Strict superset and strict subset). \\B \supsetneq A\\ means the same thing as \\A \subsetneq B\\ ([strict subset](#def-strict-subset)). For example, \\{\mathopen{}\left\\1, 2, 3\right\\\mathclose{}} \supsetneq {\mathopen{}\left\\1, 3\right\\\mathclose{}}\\, because \\{\mathopen{}\left\\1, 2, 3\right\\\mathclose{}}\\ contains \\2\\ and \\{\mathopen{}\left\\1, 3\right\\\mathclose{}}\\ does not.

> **NOTE:**
>
> **Example 4 (Strict subsets and supersets of die rolls)** For the even rolls \\A = {\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}\\ and the possible rolls \\B = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\:
>
> - \\A \subsetneq B\\, because \\A \subseteq B\\ ([Example 3](#exm-subset)) and \\1 \in B\\ but \\1 \notin A\\, so \\A \neq B\\;
> - \\B \supseteq A\\ and \\B \supsetneq A\\, for the same reasons;
> - \\B \subseteq B\\, but \\B\\ is not a strict subset of itself, because \\B = B\\; likewise \\B \supseteq B\\, but \\B\\ is not a strict superset of itself, because \\B = B\\.

> **NOTE:**
>
> **Definition 7 (Empty set)** The **empty set** [\[4\]](#ref-wikipedia_empty_set), denoted \\\emptyset\\, is the set that has no elements.

> **NOTE:**
>
> *Remark 5* (Other notation for the empty set). Other sources write \\{\mathopen{}\left\\\right\\\mathclose{}}\\ for \\\emptyset\\ [\[4\]](#ref-wikipedia_empty_set). Some sources call it the **null set**, but in measure theory a “null set” usually means a set of [measure zero](measures-measure-spaces.llms.md#def-measure-zero), which need not be empty. For example, the interval \\\[0, 0\] = {\mathopen{}\left\\0\right\\\mathclose{}}\\ has length \\0 - 0 = 0\\, so it is a null set in that sense, but it is not empty, because \\0 \in {\mathopen{}\left\\0\right\\\mathclose{}}\\.

> **NOTE:**
>
> **Example 5 (Impossible die rolls)** No roll of a six-sided die is greater than 6, so \\{\mathopen{}\left\\x \in {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}} : x \> 6\right\\\mathclose{}} = \emptyset\\.

> **NOTE:**
>
> **Definition 8 (Vacuous truth)** A statement of the form “every element of \\A\\ has property \\P\\” is **vacuously true** [\[5\]](#ref-wikipedia_vacuous_truth) when \\A\\ is the [empty set](#def-empty-set): \\A\\ has no elements, so no element of \\A\\ fails to have property \\P\\.

> **NOTE:**
>
> **Example 6 (Every impossible die roll is even)** The set of die rolls greater than 6 is \\\emptyset\\ ([Example 5](#exm-empty-set)). So “every die roll greater than 6 is even” is vacuously true, and so is “every die roll greater than 6 is odd”: there is no such roll to fail either statement.

> **NOTE:**
>
> **Theorem 2 (There is only one empty set)** If \\E_1\\ and \\E_2\\ are sets with no elements, then \\E_1 = E_2\\.

> **NOTE:**
>
> *Proof*. Neither set has any elements, so every element of \\E_1\\ is an element of \\E_2\\ and vice versa, [vacuously](#def-vacuous-truth). Sets with the same elements are equal ([Definition 1](#def-set)).

> **NOTE:**
>
> **Theorem 3 (The empty set is a subset of every set)** For every set \\A\\, \\\emptyset \subseteq A\\.

> **NOTE:**
>
> *Proof*. By [Definition 3](#def-subset), \\\emptyset \subseteq A\\ fails only if some element of \\\emptyset\\ is not in \\A\\. The [empty set](#def-empty-set) has no elements, so no such element exists.

> **NOTE:**
>
> **Definition 9 (Lower bound and upper bound)** For a [subset](#def-subset) \\S \subseteq \mathbb{R}\\ of the [real numbers](number-systems.llms.md#def-real-numbers), a [real number](number-systems.llms.md#def-real-numbers) \\a\\ is a **lower bound** of \\S\\ if \\a \le x\\ for every \\x \in S\\, and a real number \\b\\ is an **upper bound** of \\S\\ if \\x \le b\\ for every \\x \in S\\; each is a **bound** of \\S\\.

> **NOTE:**
>
> **Definition 10 (Interval)** An **interval** [\[6\]](#ref-wikipedia_interval_mathematics) is a [subset](#def-subset) of the [real numbers](number-systems.llms.md#def-real-numbers) that consists of all real numbers between two bounds \\a \le b\\ ([Definition 9](#def-bound)), possibly including one or both bounds, or of all real numbers on one side of a single bound, or all of \\\mathbb{R}\\. The bounds \\a\\ and \\b\\ that define the interval are its **endpoints**.

> **NOTE:**
>
> **Definition 11 (Closed interval)** For [real numbers](number-systems.llms.md#def-real-numbers) \\a \le b\\, the **closed interval** is the interval ([Definition 10](#def-interval)) \\\[a, b\] \stackrel{\text{def}}{=}{\mathopen{}\left\\x \in \mathbb{R}: a \le x \le b\right\\\mathclose{}}\\ that includes both bounds ([Definition 9](#def-bound)).

> **NOTE:**
>
> **Definition 12 (Open interval)** For [real numbers](number-systems.llms.md#def-real-numbers) \\a \le b\\, the **open interval** is the interval ([Definition 10](#def-interval)) \\(a, b) \stackrel{\text{def}}{=}{\mathopen{}\left\\x \in \mathbb{R}: a \< x \< b\right\\\mathclose{}}\\ that includes neither bound ([Definition 9](#def-bound)).

> **NOTE:**
>
> **Definition 13 (Half-open intervals)** For [real numbers](number-systems.llms.md#def-real-numbers) \\a \le b\\, the **half-open intervals** are the intervals ([Definition 10](#def-interval)) \\\[a, b) \stackrel{\text{def}}{=}{\mathopen{}\left\\x \in \mathbb{R}: a \le x \< b\right\\\mathclose{}}\\ and \\(a, b\] \stackrel{\text{def}}{=}{\mathopen{}\left\\x \in \mathbb{R}: a \< x \le b\right\\\mathclose{}}\\ that include one bound ([Definition 9](#def-bound)) and not the other.

> **NOTE:**
>
> **Definition 14 (Unbounded intervals)** For [real numbers](number-systems.llms.md#def-real-numbers) \\a\\ and \\b\\, the **unbounded intervals** are the intervals ([Definition 10](#def-interval)) with at most one bound ([Definition 9](#def-bound)):
>
> - \\\[a, \infty) \stackrel{\text{def}}{=}{\mathopen{}\left\\x \in \mathbb{R}: x \ge a\right\\\mathclose{}}\\ and \\(a, \infty) \stackrel{\text{def}}{=}{\mathopen{}\left\\x \in \mathbb{R}: x \> a\right\\\mathclose{}}\\;
> - \\(-\infty, b\] \stackrel{\text{def}}{=}{\mathopen{}\left\\x \in \mathbb{R}: x \le b\right\\\mathclose{}}\\ and \\(-\infty, b) \stackrel{\text{def}}{=}{\mathopen{}\left\\x \in \mathbb{R}: x \< b\right\\\mathclose{}}\\;
> - \\(-\infty, \infty) \stackrel{\text{def}}{=}\mathbb{R}\\.

> **NOTE:**
>
> *Remark 6* (Brackets and parentheses in interval notation). In the notation for an [interval](#def-interval), a bracket marks an [endpoint](#def-interval) that belongs to the interval, while a parenthesis marks an endpoint that is excluded. The symbols \\\infty\\, \\-\infty\\ denote no [real number](number-systems.llms.md#def-real-numbers), so they always get a parenthesis.

> **NOTE:**
>
> **Example 7 (Which numbers are in an interval)**  
>
> - \\1 \in \[1, 2\]\\, but \\1 \notin (1, 2)\\.
> - \\2 \in (1, 2\]\\, but \\2 \notin \[1, 2)\\.
> - \\1.5\\ is in all four of \\\[1, 2\]\\, \\(1, 2)\\, \\\[1, 2)\\, and \\(1, 2\]\\.
> - \\\[0, \infty)\\ is the set of non-negative real numbers: \\0 \in \[0, \infty)\\ and \\1000 \in \[0, \infty)\\, but \\-0.1 \notin \[0, \infty)\\.

> **NOTE:**
>
> **Definition 15 (Collection of sets, family of sets)** A **collection of sets** (also called a **family of sets**) [\[7\]](#ref-wikipedia_family_of_sets) is a set whose elements are themselves sets.

> **NOTE:**
>
> **Example 8 (The collection of all subsets of a two-element set)** The subsets of \\{\mathopen{}\left\\1, 2\right\\\mathclose{}}\\ are \\\emptyset\\, \\{\mathopen{}\left\\1\right\\\mathclose{}}\\, \\{\mathopen{}\left\\2\right\\\mathclose{}}\\, and \\{\mathopen{}\left\\1, 2\right\\\mathclose{}}\\ ([Theorem 3](#thm-empty-subset) and [Theorem 1](#thm-subset-reflexive) give the first and the last), so the collection of all subsets of \\{\mathopen{}\left\\1, 2\right\\\mathclose{}}\\ is
>
> \\{\mathopen{}\left\\\emptyset, {\mathopen{}\left\\1\right\\\mathclose{}}, {\mathopen{}\left\\2\right\\\mathclose{}}, {\mathopen{}\left\\1, 2\right\\\mathclose{}}\right\\\mathclose{}}\\
>
> It has four elements, each of them a set. The collection \\{\mathopen{}\left\\\emptyset\right\\\mathclose{}}\\ has one element, the empty set, so it is not equal to \\\emptyset\\, which has none.

> **NOTE:**
>
> **Definition 16 (Label)** A **label** is a name or symbol attached to an object, so that we can refer to the object and tell it apart from other objects.

> **NOTE:**
>
> **Example 9 (Labels)** The numbers \\1, 2, 3\\ can label three students in a class list. Then “student 2” refers to one particular student. The letters \\A\\ and \\B\\ can label two sets.

> **NOTE:**
>
> **Definition 17 (Index set)** An **index set** [\[8\]](#ref-wikipedia_index_set) is a set whose elements are used as [labels](#def-label) for objects. Each element of the index set is called an index.

> **NOTE:**
>
> **Example 10 (Index sets)** The set \\\\1, \ldots, n\\\\ labels the entries of a vector with \\n\\ entries. The set of nonnegative real numbers can label moments in time.

> **NOTE:**
>
> **Definition 18 (Indexed family)** An **indexed family** [\[9\]](#ref-wikipedia_indexed_family) is a collection of objects, one for each element of a given [index set](#def-index-set). The object for the index \\i\\ is written \\a_i\\.

> **NOTE:**
>
> **Example 11 (Indexed families)** The entries \\x_1, \ldots, x_n\\ of a vector are an indexed family of numbers, with index set \\\\1, \ldots, n\\\\. The functions \\f\_\theta\\, one for each parameter value \\\theta\\ in a parameter set, are an indexed family of functions.

## 0.2 Combining sets

> **NOTE:**
>
> **Definition 19 (Union)** The **union** [\[10\]](#ref-wikipedia_union_set_theory) of sets \\A\\ and \\B\\, written \\A \cup B\\, is the set of elements that are in \\A\\, in \\B\\, or in both:
>
> \\A \cup B \stackrel{\text{def}}{=}{\mathopen{}\left\\x : x \in A \text{ or } x \in B\right\\\mathclose{}}\\

> **NOTE:**
>
> **Definition 20 (Union of a family of sets)** Let \\I\\ be a set of indices, such as \\\mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ or \\\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\, and let \\A_i\\ be a set for each \\i \in I\\. The **union** of the sets \\A_i\\, written \\\bigcup\_{i \in I} A_i\\, is the set of elements that are in at least one \\A_i\\. For \\I = \mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\, it is also written \\\bigcup\_{i=1}^{n} A_i\\ or \\A_1 \cup \cdots \cup A_n\\, and for \\I = \mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\, it is written \\\bigcup\_{i=1}^{\infty} A_i\\.

> **NOTE:**
>
> **Definition 21 (Intersection)** The **intersection** [\[11\]](#ref-wikipedia_intersection_set_theory) of sets \\A\\ and \\B\\, written \\A \cap B\\, is the set of elements that are in both \\A\\ and \\B\\:
>
> \\A \cap B \stackrel{\text{def}}{=}{\mathopen{}\left\\x : x \in A \text{ and } x \in B\right\\\mathclose{}}\\

> **NOTE:**
>
> **Definition 22 (Intersection of a family of sets)** Let \\I\\ be a nonempty set of indices, such as \\\mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ or \\\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\, and let \\A_i\\ be a set for each \\i \in I\\. The **intersection** of the sets \\A_i\\, written \\\bigcap\_{i \in I} A_i\\, is the set of elements that are in every \\A_i\\. For \\I = \mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\, it is also written \\\bigcap\_{i=1}^{n} A_i\\ or \\A_1 \cap \cdots \cap A_n\\, and for \\I = \mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\, it is written \\\bigcap\_{i=1}^{\infty} A_i\\.

> **NOTE:**
>
> **Definition 23 (Set difference)** The **set difference** [\[12\]](#ref-wikipedia_complement_set_theory) of sets \\A\\ and \\B\\, written \\A \setminus B\\, is the set of elements of \\A\\ that are not in \\B\\:
>
> \\A \setminus B \stackrel{\text{def}}{=}{\mathopen{}\left\\x \in A : x \notin B\right\\\mathclose{}}\\

> **NOTE:**
>
> **Definition 24 (Complement)** Let \\A\\ be a [subset](#def-subset) of a set \\S\\. The **complement** [\[12\]](#ref-wikipedia_complement_set_theory) of \\A\\ in \\S\\ is the set difference ([Definition 23](#def-set-difference)) \\S \setminus A\\: the elements of \\S\\ that are not in \\A\\. When the set \\S\\ is clear from context, the complement of \\A\\ is written \\A^c\\:
>
> \\A^c \stackrel{\text{def}}{=}S \setminus A = {\mathopen{}\left\\x \in S : x \notin A\right\\\mathclose{}}\\

> **NOTE:**
>
> **Example 12 (Complements of sets of die rolls)** Let \\S = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\ be the possible rolls of a die.
>
> - The complement of the even rolls \\A = {\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}\\ is \\A^c = {\mathopen{}\left\\1, 3, 5\right\\\mathclose{}}\\, the odd rolls.
> - The complement of \\S\\ itself is \\S^c = \emptyset\\, and the complement of \\\emptyset\\ is \\\emptyset^c = S\\.
>
> The complement depends on \\S\\: in \\S = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\, the complement of \\{\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}\\ is \\{\mathopen{}\left\\1, 3, 5\right\\\mathclose{}}\\, but in \\S = {\mathopen{}\left\\2, 4, 6, 8\right\\\mathclose{}}\\, it is \\{\mathopen{}\left\\8\right\\\mathclose{}}\\.

> **NOTE:**
>
> **Example 13 (Combining sets of die rolls)** Let \\A = {\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}\\ (the even rolls) and \\B = {\mathopen{}\left\\1, 2, 3\right\\\mathclose{}}\\ (the rolls of at most 3). Then:
>
> - \\A \cup B = {\mathopen{}\left\\1, 2, 3, 4, 6\right\\\mathclose{}}\\, the rolls that are even or at most 3;
> - \\A \cap B = {\mathopen{}\left\\2\right\\\mathclose{}}\\, the only roll that is both;
> - \\A \setminus B = {\mathopen{}\left\\4, 6\right\\\mathclose{}}\\, the even rolls greater than 3;
> - \\{\mathopen{}\left\\2, 4, 6\right\\\mathclose{}} \cap {\mathopen{}\left\\1, 3, 5\right\\\mathclose{}} = \emptyset\\: no roll is both even and odd.

> **NOTE:**
>
> **Example 14 (Unions and intersections of many sets)**  
>
> - \\ \begin{aligned} \bigcup\_{i=1}^{3} {\mathopen{}\left\\i, i + 1\right\\\mathclose{}} &= {\mathopen{}\left\\1, 2\right\\\mathclose{}} \cup {\mathopen{}\left\\2, 3\right\\\mathclose{}} \cup {\mathopen{}\left\\3, 4\right\\\mathclose{}} \\ &= {\mathopen{}\left\\1, 2, 3, 4\right\\\mathclose{}}. \end{aligned} \\
>
> - \\\bigcup\_{i=1}^{\infty} {\mathopen{}\left\\i\right\\\mathclose{}} = \mathbb{N}\\: each natural number \\n\\ is in the set \\{\mathopen{}\left\\n\right\\\mathclose{}}\\, and each set \\{\mathopen{}\left\\i\right\\\mathclose{}}\\ contains only the natural number \\i\\.
>
> - \\\bigcap\_{i=1}^{\infty} \[0, 1/i\] = {\mathopen{}\left\\0\right\\\mathclose{}}\\: \\0\\ is in every interval \\\[0, 1/i\]\\; a number \\x \> 0\\ is not in \\\[0, 1/i\]\\ once \\i \> 1/x\\; and a number \\x \< 0\\ is in none of them.

> **NOTE:**
>
> **Theorem 4 (De Morgan’s laws)** Let \\S\\ be a set, let \\I\\ be a nonempty set of indices, and let \\A_i\\ be a [subset](#def-subset) of \\S\\ for each \\i \in I\\. Then the complement of a union is the intersection of the complements, [\[13\]](#ref-wikipedia_de_morgans_laws) and the complement of an intersection is the union of the complements:
>
> \\ \begin{aligned} S \setminus \bigcup\_{i \in I} A_i &= \bigcap\_{i \in I} (S \setminus A_i) \\ S \setminus \bigcap\_{i \in I} A_i &= \bigcup\_{i \in I} (S \setminus A_i) \end{aligned} \\
>
> With the complement notation of [Definition 24](#def-complement), these read \\\mathopen{}\left(\bigcup\_{i \in I} A_i\right)\mathclose{}^c = \bigcap\_{i \in I} A_i^c\\ and \\\mathopen{}\left(\bigcap\_{i \in I} A_i\right)\mathclose{}^c = \bigcup\_{i \in I} A_i^c\\.

> **NOTE:**
>
> *Proof*. Two sets are equal when they have the same elements ([Definition 1](#def-set)), so it is enough to show that an element \\x\\ is in the left-hand side [if and only if](proof-writing.llms.md#def-necessary-sufficient) (\\\iff\\) it is in the right-hand side. For the first law:
>
> \\ \begin{aligned} x \in S \setminus \bigcup\_{i \in I} A_i &\iff x \in S \text{ and } x \notin \bigcup\_{i \in I} A_i && \text{(}\href{#def-set-difference}{\text{Definition~23}}\text{)} \\ &\iff x \in S \text{ and } x \notin A_i \text{ for every } i \in I && \text{(}\href{#def-union}{\text{Definition~19}}\text{)} \\ &\iff x \in S \setminus A_i \text{ for every } i \in I && \text{(}\href{#def-set-difference}{\text{Definition~23}}\text{)} \\ &\iff x \in \bigcap\_{i \in I} (S \setminus A_i) && \text{(}\href{#def-intersection}{\text{Definition~21}}\text{)} \end{aligned} \\
>
> For the second law:
>
> \\ \begin{aligned} x \in S \setminus \bigcap\_{i \in I} A_i &\iff x \in S \text{ and } x \notin \bigcap\_{i \in I} A_i && \text{(}\href{#def-set-difference}{\text{Definition~23}}\text{)} \\ &\iff x \in S \text{ and } x \notin A_i \text{ for some } i \in I && \text{(}\href{#def-intersection}{\text{Definition~21}}\text{)} \\ &\iff x \in S \setminus A_i \text{ for some } i \in I && \text{(}\href{#def-set-difference}{\text{Definition~23}}\text{)} \\ &\iff x \in \bigcup\_{i \in I} (S \setminus A_i) && \text{(}\href{#def-union}{\text{Definition~19}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 15 (De Morgan’s laws for die rolls)** In \\S = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\, let \\A = {\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}\\ and \\B = {\mathopen{}\left\\1, 2, 3\right\\\mathclose{}}\\, as in [Example 13](#exm-set-operations), so \\A^c = {\mathopen{}\left\\1, 3, 5\right\\\mathclose{}}\\ and \\B^c = {\mathopen{}\left\\4, 5, 6\right\\\mathclose{}}\\.
>
> - \\ \begin{aligned} (A \cup B)^c &= {\mathopen{}\left\\1, 2, 3, 4, 6\right\\\mathclose{}}^c \\ &= {\mathopen{}\left\\5\right\\\mathclose{}}, \end{aligned} \\
>
>   and
>
>   \\ \begin{aligned} A^c \cap B^c &= {\mathopen{}\left\\1, 3, 5\right\\\mathclose{}} \cap {\mathopen{}\left\\4, 5, 6\right\\\mathclose{}} \\ &= {\mathopen{}\left\\5\right\\\mathclose{}}. \end{aligned} \\
>
> - \\ \begin{aligned} (A \cap B)^c &= {\mathopen{}\left\\2\right\\\mathclose{}}^c \\ &= {\mathopen{}\left\\1, 3, 4, 5, 6\right\\\mathclose{}}, \end{aligned} \\
>
>   and
>
>   \\ \begin{aligned} A^c \cup B^c &= {\mathopen{}\left\\1, 3, 5\right\\\mathclose{}} \cup {\mathopen{}\left\\4, 5, 6\right\\\mathclose{}} \\ &= {\mathopen{}\left\\1, 3, 4, 5, 6\right\\\mathclose{}}. \end{aligned} \\

> **NOTE:**
>
> **Definition 25 (Disjoint sets)** Two [sets](#def-set) \\A\\ and \\B\\ are **disjoint** if their [intersection](#def-intersection) is the [empty set](#def-empty-set):
>
> \\A \cap B = \emptyset\\

> **NOTE:**
>
> **Example 16 (Two disjoint sets of die rolls)** For the die rolls \\D = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\ ([sets of die rolls](#exm-set)), the sets \\{\mathopen{}\left\\1, 2\right\\\mathclose{}}\\ and \\{\mathopen{}\left\\5, 6\right\\\mathclose{}}\\ are disjoint: no roll is in both. The sets \\{\mathopen{}\left\\2, 4, 6\right\\\mathclose{}}\\ and \\{\mathopen{}\left\\1, 2\right\\\mathclose{}}\\ are not, because \\2\\ is in both.

> **NOTE:**
>
> **Definition 26 (Pairwise disjoint sets, mutually disjoint sets)** Some [sets](#def-set) \\A_1, A_2, \ldots\\ (a list that may end or go on without end) are **pairwise disjoint** [\[14\]](#ref-wikipedia_disjoint_sets) (also called **mutually disjoint**) when every two of them are [disjoint](#def-disjoint-sets):
>
> \\A_i \cap A_j = \emptyset \quad \text{for all } i \neq j\\

> **NOTE:**
>
> **Example 17 (Low, middle and high die rolls)** For the die rolls \\D = {\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}}\\ ([sets of die rolls](#exm-set)), the sets \\{\mathopen{}\left\\1, 2\right\\\mathclose{}}\\, \\{\mathopen{}\left\\3, 4\right\\\mathclose{}}\\ and \\{\mathopen{}\left\\5, 6\right\\\mathclose{}}\\ are [pairwise disjoint](#def-pairwise-disjoint): no roll is in more than one of them. The sets \\{\mathopen{}\left\\1, 2\right\\\mathclose{}}\\, \\{\mathopen{}\left\\3, 4\right\\\mathclose{}}\\ and \\{\mathopen{}\left\\2, 5\right\\\mathclose{}}\\ are not, because \\2\\ is in both the first and the third.

> **NOTE:**
>
> **Definition 27 (Ordered pair)** An **ordered pair** [\[15\]](#ref-wikipedia_ordered_pair) \\(a, b)\\ is a pair of objects listed in order, with \\a\\ first and \\b\\ second; two ordered pairs are equal, \\(a, b) = (c, d)\\, when \\a = c\\ and \\b = d\\.

> **NOTE:**
>
> **Definition 28 (Cartesian product)** The **Cartesian product** [\[16\]](#ref-wikipedia_cartesian_product) of sets \\A\\ and \\B\\, written \\A \times B\\, is the set of ordered pairs whose first entry is in \\A\\ and whose second entry is in \\B\\:
>
> \\A \times B \stackrel{\text{def}}{=}{\mathopen{}\left\\(a, b) : a \in A \text{ and } b \in B\right\\\mathclose{}}\\

> **NOTE:**
>
> **Example 18 (Cartesian products)**  
>
> - \\{\mathopen{}\left\\1, 2\right\\\mathclose{}} \times {\mathopen{}\left\\5, 6\right\\\mathclose{}} = {\mathopen{}\left\\(1, 5), (1, 6), (2, 5), (2, 6)\right\\\mathclose{}}\\. The pair \\(5, 1)\\ is not in it, because its first entry, \\5\\, is not in \\{\mathopen{}\left\\1, 2\right\\\mathclose{}}\\; so \\(1, 5) \ne (5, 1)\\.
> - The results of rolling a die twice form \\{\mathopen{}\left\\1, \ldots, 6\right\\\mathclose{}} \times {\mathopen{}\left\\1, \ldots, 6\right\\\mathclose{}}\\, which has \\6 \cdot 6 = 36\\ elements, such as \\(3, 5)\\: a 3 on the first roll and a 5 on the second.
> - \\\[0, 2\] \times \[0, 3\]\\ is the set of points \\(x, y)\\ in the plane with \\0 \le x \le 2\\ and \\0 \le y \le 3\\: a rectangle of width \\2\\ and height \\3\\.

## 0.3 Extended non-negative real numbers

> **NOTE:**
>
> **Definition 29 (Extended non-negative real numbers)** The **extended non-negative real numbers**, written \\\[0, \infty\]\\, are the non-negative real numbers together with an extra element \\\infty\\ that is greater than every real number:
>
> \\\[0, \infty\] \stackrel{\text{def}}{=}\[0, \infty) \cup {\mathopen{}\left\\\infty\right\\\mathclose{}}\\
>
> Addition extends to \\\[0, \infty\]\\ by setting
>
> \\ \begin{aligned} x + \infty &= \infty + x \\ &= \infty \end{aligned} \\
>
> for every \\x \in \[0, \infty\]\\.

> **NOTE:**
>
> *Remark 7* (Arithmetic with \\\infty\\). \\\infty\\ is not a real number, so some real-number arithmetic does not extend to it: \\\infty - \infty\\ is left undefined, and \\\infty + 1 = \infty + 2\\ does not imply \\1 = 2\\. Measure theory uses \\\[0, \infty\]\\ because the size of a set, such as the length of the whole real line, can be infinite [\[17\]](#ref-wikipedia_extended_real_number_line).

> **NOTE:**
>
> **Example 19 (Adding with \\\infty\\)** In \\\[0, \infty\]\\, \\2 + 3 = 5\\ as usual, while \\2 + \infty = \infty\\ and \\\infty + \infty = \infty\\.

## 0.4 Further reading

These books and articles treat sets and the logic behind them in more depth.

- Devlin [\[18\]](#ref-devlin1993joy) is an undergraduate introduction to axiomatic set theory. It covers the axioms of set theory, ordinals, and cardinals, which go well beyond the countable sets and functions in these notes.
- Halmos [\[19\]](#ref-halmos1974naive) is a short, informal treatment of the same axioms, covering relations, functions, families of sets, and cardinal numbers.
- Enderton [\[20\]](#ref-enderton2001logic) is a standard introduction to mathematical logic. Its first chapter collects the facts about sets, relations, and functions that the later chapters use.
- Barker-Plummer et al. [\[21\]](#ref-barkerplummer2011language) teaches propositional and first-order logic, the language behind statements such as “for every set \\A\\ there exists…”.

## References

\[1\]

Wikipedia contributors, “Set (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Set_(mathematics)>

\[2\]

Wikipedia contributors, “Set-builder notation — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Set-builder_notation>

\[3\]

Wikipedia contributors, “Subset — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Subset>

\[4\]

Wikipedia contributors, “Empty set — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Empty_set>

\[5\]

Wikipedia contributors, “Vacuous truth — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Vacuous_truth>

\[6\]

Wikipedia contributors, “Interval (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Interval_(mathematics)>

\[7\]

Wikipedia contributors, “Family of sets — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Family_of_sets>

\[8\]

Wikipedia contributors, “Index set — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Index_set>

\[9\]

Wikipedia contributors, “Indexed family — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Indexed_family>

\[10\]

Wikipedia contributors, “Union (set theory) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Union_(set_theory)>

\[11\]

Wikipedia contributors, “Intersection (set theory) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Intersection_(set_theory)>

\[12\]

Wikipedia contributors, “Complement (set theory) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Complement_(set_theory)>

\[13\]

Wikipedia contributors, “De morgan’s laws — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/De_Morgan%27s_laws>

\[14\]

Wikipedia contributors, “Disjoint sets — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Disjoint_sets>

\[15\]

Wikipedia contributors, “Ordered pair — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Ordered_pair>

\[16\]

Wikipedia contributors, “Cartesian product — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Cartesian_product>

\[17\]

Wikipedia contributors, “Extended real number line — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Extended_real_number_line>

\[18\]

K. Devlin, *The joy of sets: Fundamentals of contemporary set theory*, 2nd ed. in Undergraduate texts in mathematics. New York: Springer, 1993. doi: [10.1007/978-1-4612-0903-4](https://doi.org/10.1007/978-1-4612-0903-4).

\[19\]

P. R. Halmos, *Naive set theory*. in Undergraduate texts in mathematics. New York: Springer, 1974. doi: [10.1007/978-1-4757-1645-0](https://doi.org/10.1007/978-1-4757-1645-0).

\[20\]

H. B. Enderton, *A mathematical introduction to logic*, 2nd ed. San Diego, CA: Academic Press, 2001. doi: [10.1016/C2009-0-22107-6](https://doi.org/10.1016/C2009-0-22107-6).

\[21\]

D. Barker-Plummer, J. Barwise, and J. Etchemendy, *Language, proof and logic*, 2nd ed. Stanford, CA: CSLI Publications, 2011. Available: <https://www.amazon.com/dp/1575866323>

# Definitions on this page

- [Definition 1 (Set)](#def-set)
- [Definition 2 (Set-builder notation)](#def-set-builder)
- [Definition 3 (Subset)](#def-subset)
- [Definition 4 (Strict subset, proper subset)](#def-strict-subset)
- [Definition 5 (Superset)](#def-superset)
- [Definition 6 (Strict superset)](#def-strict-superset)
- [Definition 7 (Empty set)](#def-empty-set)
- [Definition 8 (Vacuous truth)](#def-vacuous-truth)
- [Definition 9 (Lower bound and upper bound)](#def-bound)
- [Definition 10 (Interval)](#def-interval)
- [Definition 11 (Closed interval)](#def-closed-interval)
- [Definition 12 (Open interval)](#def-open-interval)
- [Definition 13 (Half-open intervals)](#def-half-open-interval)
- [Definition 14 (Unbounded intervals)](#def-unbounded-interval)
- [Definition 15 (Collection of sets, family of sets)](#def-collection)
- [Definition 16 (Label)](#def-label)
- [Definition 17 (Index set)](#def-index-set)
- [Definition 18 (Indexed family)](#def-indexed-family)
- [Definition 19 (Union)](#def-union)
- [Definition 20 (Union of a family of sets)](#def-indexed-union)
- [Definition 21 (Intersection)](#def-intersection)
- [Definition 22 (Intersection of a family of sets)](#def-indexed-intersection)
- [Definition 23 (Set difference)](#def-set-difference)
- [Definition 24 (Complement)](#def-complement)
- [Definition 25 (Disjoint sets)](#def-disjoint-sets)
- [Definition 26 (Pairwise disjoint sets, mutually disjoint sets)](#def-pairwise-disjoint)
- [Definition 27 (Ordered pair)](#def-ordered-pair)
- [Definition 28 (Cartesian product)](#def-cartesian-product)
- [Definition 29 (Extended non-negative real numbers)](#def-extended-nonneg-reals)

Back to top
