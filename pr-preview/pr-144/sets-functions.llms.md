# Sets and Functions

Code

Published

Last modified: 2026-10-05 20:36:39 (PDT)

> **NOTE:**
>
> *Remark*. Probability and statistics describe events, outcomes, and parameters as sets, and random variables, densities, and measures as functions. This page collects the definitions of sets and functions that the Morrison Lab’s probability and statistics notes build on.

## 1 Sets

> **NOTE:**
>
> **Definition 1 (Set)** A **set** is a collection of distinct objects, called its elements. We write \\a \in A\\ when \\a\\ is an element of the set \\A\\, and \\a \notin A\\ when it is not. Two sets are equal when they have exactly the same elements.

> **NOTE:**
>
> *Remark 1* (Naive and formal set theory). [Definition 1](#def-set) is the informal (“naive”) notion of a set, which is all these notes need. Formal set theory states axioms for sets instead (see [Wikipedia: Set (mathematics)](https://en.wikipedia.org/wiki/Set_(mathematics))). For example, the last sentence of [Definition 1](#def-set), that two sets are equal when they have exactly the same elements, is one of those axioms, the *axiom of extensionality*.

> **NOTE:**
>
> **Example 1 (Sets of die rolls)** The possible results of rolling a six-sided die form the set \\\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\, with \\3 \in \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ and \\7 \notin \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\. The sets \\\mathopen{}\left\\1, 2, 3\right\\\mathclose{}\\ and \\\mathopen{}\left\\3, 2, 1\right\\\mathclose{}\\ are equal, because they have the same elements; the order in which the elements are listed does not matter.

> **NOTE:**
>
> **Definition 2 (Set-builder notation)** For a set \\A\\ and a statement \\P(x)\\ about an element \\x\\, **set-builder notation** \\\mathopen{}\left\\x \in A : P(x)\right\\\mathclose{}\\ denotes the set of elements \\x\\ of \\A\\ for which \\P(x)\\ is true.

> **NOTE:**
>
> **Example 2 (Even die rolls in set-builder notation)** \\\mathopen{}\left\\x \in \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{} : x \text{ is even}\right\\\mathclose{} = \mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ is the set of [even](notation.llms.md#def-even-odd) rolls, and \\\mathopen{}\left\\x \in \mathbb{R}: x \> 0\right\\\mathclose{}\\ is the set of positive [real numbers](notation.llms.md#def-real-numbers).

> **NOTE:**
>
> **Definition 3 (Interval)** For [real numbers](notation.llms.md#def-real-numbers) \\a \le b\\, the **intervals** with **endpoints** \\a\\ and \\b\\ are:
>
> - the **closed interval** \\\[a, b\] \stackrel{\text{def}}{=}\mathopen{}\left\\x \in \mathbb{R}: a \le x \le b\right\\\mathclose{}\\;
> - the **open interval** \\(a, b) \stackrel{\text{def}}{=}\mathopen{}\left\\x \in \mathbb{R}: a \< x \< b\right\\\mathclose{}\\;
> - the **half-open intervals** \\\[a, b) \stackrel{\text{def}}{=}\mathopen{}\left\\x \in \mathbb{R}: a \le x \< b\right\\\mathclose{}\\ and \\(a, b\] \stackrel{\text{def}}{=}\mathopen{}\left\\x \in \mathbb{R}: a \< x \le b\right\\\mathclose{}\\.
>
> The **unbounded intervals** have at most one endpoint:
>
> - \\\[a, \infty) \stackrel{\text{def}}{=}\mathopen{}\left\\x \in \mathbb{R}: x \ge a\right\\\mathclose{}\\ and \\(a, \infty) \stackrel{\text{def}}{=}\mathopen{}\left\\x \in \mathbb{R}: x \> a\right\\\mathclose{}\\;
> - \\(-\infty, b\] \stackrel{\text{def}}{=}\mathopen{}\left\\x \in \mathbb{R}: x \le b\right\\\mathclose{}\\ and \\(-\infty, b) \stackrel{\text{def}}{=}\mathopen{}\left\\x \in \mathbb{R}: x \< b\right\\\mathclose{}\\;
> - \\(-\infty, \infty) \stackrel{\text{def}}{=}\mathbb{R}\\.
>
> A square bracket means the endpoint belongs to the interval, and a parenthesis means it does not. The symbols \\\infty\\ and \\-\infty\\ are not real numbers, so they always get a parenthesis.

> **NOTE:**
>
> **Example 3 (Which numbers are in an interval)**  
>
> - \\1 \in \[1, 2\]\\, but \\1 \notin (1, 2)\\.
> - \\2 \in (1, 2\]\\, but \\2 \notin \[1, 2)\\.
> - \\1.5\\ is in all four of \\\[1, 2\]\\, \\(1, 2)\\, \\\[1, 2)\\, and \\(1, 2\]\\.
> - \\\[0, \infty)\\ is the set of non-negative real numbers: \\0 \in \[0, \infty)\\ and \\1000 \in \[0, \infty)\\, but \\-0.1 \notin \[0, \infty)\\.

> **NOTE:**
>
> **Definition 4 (Subset)** A set \\A\\ is a **subset** of a set \\B\\, written \\A \subseteq B\\, if every element of \\A\\ is an element of \\B\\.

> **NOTE:**
>
> **Example 4 (Even die rolls)** The even die rolls form a subset of the possible rolls: \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{} \subseteq \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\, because each of \\2\\, \\4\\, and \\6\\ is a possible roll. The set \\\mathopen{}\left\\2, 4, 7\right\\\mathclose{}\\ is not a subset of \\\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\, because \\7\\ is not a possible roll.

> **NOTE:**
>
> **Theorem 1 (Every set is a subset of itself)** For every set \\A\\, \\A \subseteq A\\.

> **NOTE:**
>
> *Proof*. Every element of \\A\\ is an element of \\A\\, which is [Definition 4](#def-subset) with \\B = A\\.

> **NOTE:**
>
> **Definition 5 (Strict subset)** A set \\A\\ is a **strict subset** of a set \\B\\, written \\A \subsetneq B\\, if \\A\\ is a [subset](#def-subset) of \\B\\ and \\A \neq B\\.

> **NOTE:**
>
> *Remark 2* (Proper subsets and the symbol \\\subset\\). Other sources call a strict subset a **proper subset**. Sources disagree about the symbol \\\subset\\: some use it for “subset” (\\\subseteq\\), and others for “strict subset” (\\\subsetneq\\) (see [Wikipedia: Subset](https://en.wikipedia.org/wiki/Subset)). For example, \\\mathopen{}\left\\1, 2\right\\\mathclose{} \subset \mathopen{}\left\\1, 2\right\\\mathclose{}\\ is true in the first reading, because \\\mathopen{}\left\\1, 2\right\\\mathclose{} \subseteq \mathopen{}\left\\1, 2\right\\\mathclose{}\\, and false in the second, because the two sets are equal. These notes avoid \\\subset\\ and write \\\subseteq\\ or \\\subsetneq\\.

> **NOTE:**
>
> **Definition 6 (Superset)** A set \\B\\ is a **superset** of a set \\A\\, written \\B \supseteq A\\, if every element of \\A\\ is an element of \\B\\.

> **NOTE:**
>
> *Remark 3* (Superset and subset). \\B \supseteq A\\ means the same thing as \\A \subseteq B\\ ([subset](#def-subset)). For example, \\\mathopen{}\left\\1, 2, 3\right\\\mathclose{} \supseteq \mathopen{}\left\\1, 3\right\\\mathclose{}\\, and \\\mathopen{}\left\\1, 3\right\\\mathclose{} \subseteq \mathopen{}\left\\1, 2, 3\right\\\mathclose{}\\. But \\\mathopen{}\left\\1, 3\right\\\mathclose{}\\ is not a superset of \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\, because \\2 \in \mathopen{}\left\\1, 2\right\\\mathclose{}\\ and \\2 \notin \mathopen{}\left\\1, 3\right\\\mathclose{}\\.

> **NOTE:**
>
> **Definition 7 (Strict superset)** A set \\B\\ is a **strict superset** of a set \\A\\, written \\B \supsetneq A\\, if \\B\\ is a [superset](#def-superset) of \\A\\ and \\B \neq A\\.

> **NOTE:**
>
> *Remark 4* (Strict superset and strict subset). \\B \supsetneq A\\ means the same thing as \\A \subsetneq B\\ ([strict subset](#def-strict-subset)). For example, \\\mathopen{}\left\\1, 2, 3\right\\\mathclose{} \supsetneq \mathopen{}\left\\1, 3\right\\\mathclose{}\\, because \\\mathopen{}\left\\1, 2, 3\right\\\mathclose{}\\ contains \\2\\ and \\\mathopen{}\left\\1, 3\right\\\mathclose{}\\ does not.

> **NOTE:**
>
> **Example 5 (Strict subsets and supersets of die rolls)** For the even rolls \\A = \mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ and the possible rolls \\B = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\:
>
> - \\A \subsetneq B\\, because \\A \subseteq B\\ ([Example 4](#exm-subset)) and \\1 \in B\\ but \\1 \notin A\\, so \\A \neq B\\;
> - \\B \supseteq A\\ and \\B \supsetneq A\\, for the same reasons;
> - \\B \subseteq B\\, but \\B\\ is not a strict subset of itself, because \\B = B\\; likewise \\B \supseteq B\\, but \\B\\ is not a strict superset of itself, because \\B = B\\.

> **NOTE:**
>
> **Definition 8 (Empty set)** The **empty set**, denoted \\\emptyset\\, is the set that has no elements.

> **NOTE:**
>
> *Remark 5* (Other notation for the empty set). Other sources write \\\mathopen{}\left\\\right\\\mathclose{}\\ for \\\emptyset\\ (see [Wikipedia: Empty set](https://en.wikipedia.org/wiki/Empty_set)). Some sources call it the **null set**, but in measure theory a “null set” usually means a set of measure zero, which need not be empty. For example, the interval \\\[0, 0\] = \mathopen{}\left\\0\right\\\mathclose{}\\ has length \\0 - 0 = 0\\, so it is a null set in that sense, but it is not empty, because \\0 \in \mathopen{}\left\\0\right\\\mathclose{}\\.

> **NOTE:**
>
> **Example 6 (Impossible die rolls)** No roll of a six-sided die is greater than 6, so \\\mathopen{}\left\\x \in \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{} : x \> 6\right\\\mathclose{} = \emptyset\\.

> **NOTE:**
>
> **Theorem 2 (There is only one empty set)** If \\E_1\\ and \\E_2\\ are sets with no elements, then \\E_1 = E_2\\.

> **NOTE:**
>
> *Proof*. Neither set has any elements, so every element of \\E_1\\ is an element of \\E_2\\ and vice versa, vacuously. Sets with the same elements are equal ([Definition 1](#def-set)).

> **NOTE:**
>
> **Theorem 3 (The empty set is a subset of every set)** For every set \\A\\, \\\emptyset \subseteq A\\.

> **NOTE:**
>
> *Proof*. By [Definition 4](#def-subset), \\\emptyset \subseteq A\\ fails only if some element of \\\emptyset\\ is not in \\A\\. The [empty set](#def-empty-set) has no elements, so no such element exists.

## 2 Combining sets

> **NOTE:**
>
> **Definition 9 (Union)** The **union** of sets \\A\\ and \\B\\, written \\A \cup B\\, is the set of elements that are in \\A\\, in \\B\\, or in both:
>
> \\A \cup B \stackrel{\text{def}}{=}\mathopen{}\left\\x : x \in A \text{ or } x \in B\right\\\mathclose{}\\
>
> More generally, let \\I\\ be a set of indices, such as \\\mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ or \\\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\, and let \\A_i\\ be a set for each \\i \in I\\. The union of the sets \\A_i\\, written \\\bigcup\_{i \in I} A_i\\, is the set of elements that are in at least one \\A_i\\.

> **NOTE:**
>
> **Definition 10 (Intersection)** The **intersection** of sets \\A\\ and \\B\\, written \\A \cap B\\, is the set of elements that are in both \\A\\ and \\B\\:
>
> \\A \cap B \stackrel{\text{def}}{=}\mathopen{}\left\\x : x \in A \text{ and } x \in B\right\\\mathclose{}\\
>
> More generally, let \\I\\ be a nonempty set of indices, such as \\\mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ or \\\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\, and let \\A_i\\ be a set for each \\i \in I\\. The intersection of the sets \\A_i\\, written \\\bigcap\_{i \in I} A_i\\, is the set of elements that are in every \\A_i\\.

> **NOTE:**
>
> **Definition 11 (Set difference)** The **set difference** of sets \\A\\ and \\B\\, written \\A \setminus B\\, is the set of elements of \\A\\ that are not in \\B\\:
>
> \\A \setminus B \stackrel{\text{def}}{=}\mathopen{}\left\\x \in A : x \notin B\right\\\mathclose{}\\

> **NOTE:**
>
> **Definition 12 (Complement)** Let \\A\\ be a [subset](#def-subset) of a set \\S\\. The **complement** of \\A\\ in \\S\\ is the set difference ([Definition 11](#def-set-difference)) \\S \setminus A\\: the elements of \\S\\ that are not in \\A\\. When the set \\S\\ is clear from context, the complement of \\A\\ is written \\A^c\\:
>
> \\A^c \stackrel{\text{def}}{=}S \setminus A = \mathopen{}\left\\x \in S : x \notin A\right\\\mathclose{}\\

> **NOTE:**
>
> **Example 7 (Complements of sets of die rolls)** Let \\S = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ be the possible rolls of a die.
>
> - The complement of the even rolls \\A = \mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ is \\A^c = \mathopen{}\left\\1, 3, 5\right\\\mathclose{}\\, the odd rolls.
> - The complement of \\S\\ itself is \\S^c = \emptyset\\, and the complement of \\\emptyset\\ is \\\emptyset^c = S\\.
>
> The complement depends on \\S\\: in \\S = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\, the complement of \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ is \\\mathopen{}\left\\1, 3, 5\right\\\mathclose{}\\, but in \\S = \mathopen{}\left\\2, 4, 6, 8\right\\\mathclose{}\\, it is \\\mathopen{}\left\\8\right\\\mathclose{}\\.

> **NOTE:**
>
> **Example 8 (Combining sets of die rolls)** Let \\A = \mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ (the even rolls) and \\B = \mathopen{}\left\\1, 2, 3\right\\\mathclose{}\\ (the rolls of at most 3). Then:
>
> - \\A \cup B = \mathopen{}\left\\1, 2, 3, 4, 6\right\\\mathclose{}\\, the rolls that are even or at most 3;
> - \\A \cap B = \mathopen{}\left\\2\right\\\mathclose{}\\, the only roll that is both;
> - \\A \setminus B = \mathopen{}\left\\4, 6\right\\\mathclose{}\\, the even rolls greater than 3;
> - \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{} \cap \mathopen{}\left\\1, 3, 5\right\\\mathclose{} = \emptyset\\: no roll is both even and odd.

## 3 Functions

> **NOTE:**
>
> **Definition 13 (Function)** A **function** \\f\\ from a set \\A\\ to a set \\B\\, written \\f : A \to B\\, assigns to each element \\a \in A\\ exactly one element \\f(a) \in B\\, called the value of \\f\\ at \\a\\.

> **NOTE:**
>
> **Example 9 (Doubling a die roll)** The rule \\f(a) = 2a\\ defines a function \\f : \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{} \to \mathbb{R}\\, because it assigns exactly one real number to each possible roll; for example, \\f(3) = 6\\. A rule that assigned both \\2\\ and \\-2\\ to the roll \\1\\ would not be a function, because a function assigns exactly one value to each element.

> **NOTE:**
>
> **Definition 14 (Domain)** The **domain** of a [function](#def-function) \\f : A \to B\\ is the set \\A\\ of elements that \\f\\ assigns values to.

> **NOTE:**
>
> **Definition 15 (Codomain)** The **codomain** of a [function](#def-function) \\f : A \to B\\ is the set \\B\\ that its values are required to lie in.

> **NOTE:**
>
> **Definition 16 (Image)** The **image** of a [function](#def-function) \\f : A \to B\\ is the set of values that \\f\\ actually takes:
>
> \\f(A) \stackrel{\text{def}}{=}\mathopen{}\left\\f(a) : a \in A\right\\\mathclose{}\\

> **NOTE:**
>
> *Remark 6* (Image and range). Many sources call the image the **range**, but others use “range” for the codomain, so these notes avoid “range” for functions in general (see [Wikipedia: Range of a function](https://en.wikipedia.org/wiki/Range_of_a_function)). For example, for \\f : \mathbb{R}\to \mathbb{R}\\ with \\f(a) = a^2\\, “the range of \\f\\” could mean the image \\\[0, \infty)\\ or the codomain \\\mathbb{R}\\.
>
> The image is always a subset of the codomain, because every value \\f(a)\\ lies in \\B\\.

> **NOTE:**
>
> **Example 10 (Domain, codomain, and image of the doubled die roll)** For the function \\f : \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{} \to \mathbb{R}\\ with \\f(a) = 2a\\ from [Example 9](#exm-function):
>
> - the domain is \\\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\;
> - the codomain is \\\mathbb{R}\\;
> - the image is \\\mathopen{}\left\\2, 4, 6, 8, 10, 12\right\\\mathclose{}\\.
>
> The image is a subset of the codomain, and here a much smaller one: most real numbers, such as \\3\\ and \\-1\\, are not values of \\f\\.

> **NOTE:**
>
> **Definition 17 (Graph of a function)** The **graph** of a [function](#def-function) \\f : A \to B\\ is the set of ordered pairs \\(a, f(a))\\, one for each element \\a\\ of its domain:
>
> \\\mathopen{}\left\\(a, f(a)) : a \in A\right\\\mathclose{}\\
>
> For a function \\f : \mathbb{R}\to \mathbb{R}\\, the graph is a curve in the plane, with \\a\\ on the horizontal axis and \\f(a)\\ on the vertical axis.

> **NOTE:**
>
> **Example 11 (The graph of a function on three points)** Let \\f : \mathopen{}\left\\-1, 0, 2\right\\\mathclose{} \to \mathbb{R}\\ with \\f(a) = a^2\\. Then \\f(-1) = 1\\, \\f(0) = 0\\, and \\f(2) = 4\\, so the graph of \\f\\ is \\\mathopen{}\left\\(-1, 1), (0, 0), (2, 4)\right\\\mathclose{}\\. The pair \\(1, 1)\\ is not in the graph, because \\1\\ is not in the domain of \\f\\.

> **NOTE:**
>
> **Definition 18 (Composition)** Let \\g : A \to B\\ and \\f : B \to C\\ be [functions](#def-function). The **composition** of \\f\\ and \\g\\ is the function \\f \circ g : A \to C\\ defined by
>
> \\(f \circ g)(a) \stackrel{\text{def}}{=}f(g(a)) \quad \text{for each } a \in A.\\
>
> In \\f \circ g\\, \\g\\ is the **inner function**, applied first, and \\f\\ is the **outer function**, applied to the result.

> **NOTE:**
>
> **Example 12 (The order of composition matters)** Let \\g : \mathbb{R}\to \mathbb{R}\\ with \\g(x) = x + 1\\, and \\f : \mathbb{R}\to \mathbb{R}\\ with \\f(x) = x^2\\.
>
> - \\(f \circ g)(2) = f(g(2)) = f(3) = 9\\: \\g\\ is the inner function, and \\f\\ is the outer function.
> - \\(g \circ f)(2) = g(f(2)) = g(4) = 5\\: now \\f\\ is the inner function, and \\g\\ is the outer function.
>
> Since \\9 \ne 5\\, \\f \circ g\\ and \\g \circ f\\ are different functions.

> **NOTE:**
>
> **Definition 19 (Inverse function)** Let \\f : A \to B\\ be a [function](#def-function). A function \\g : B \to A\\ is the **inverse function** of \\f\\, written \\f^{-1}\\, if both
>
> - \\g(f(a)) = a\\ for every \\a \in A\\, and
> - \\f(g(b)) = b\\ for every \\b \in B\\.
>
> A function that has an inverse function is **invertible**.

> **NOTE:**
>
> *Remark 7* (\\f^{-1}\\ is not \\1/f\\). The \\-1\\ in \\f^{-1}\\ does not mean a reciprocal: \\f^{-1}(b)\\ is the input that \\f\\ maps to \\b\\, not \\\frac{1}{f(b)}\\. For example, with \\f(x) = 2x\\ on \\\mathbb{R}\\, \\f^{-1}(4) = 2\\, but \\\frac{1}{f(4)} = \frac{1}{8}\\.

> **NOTE:**
>
> **Example 13 (An invertible function, and one that is not)**  
>
> - Let \\f : \mathbb{R}\to \mathbb{R}\\ with \\f(x) = 2x + 1\\. Its inverse function is \\f^{-1}(y) = \frac{y - 1}{2}\\. For example, \\f(3) = 7\\ and \\f^{-1}(7) = \frac{7 - 1}{2} = 3\\.
> - Let \\h : \mathbb{R}\to \mathbb{R}\\ with \\h(x) = x^2\\. Then \\h(-2) = 4\\ and \\h(2) = 4\\, so an inverse function would need \\h^{-1}(4)\\ to equal both \\-2\\ and \\2\\. So \\h\\ is not invertible.

> **NOTE:**
>
> **Definition 20 (Sequence)** A **sequence** in a set \\S\\ is a [function](#def-function) \\a : \mathbb{N} \to S\\ from the [natural numbers](notation.llms.md#def-natural-numbers) to \\S\\. Its value \\a(n)\\ is written \\a_n\\ and called its \\n\\th **term**, and the sequence is written \\(a_n)\\ or \\a_1, a_2, a_3, \ldots\\.
>
> A **finite sequence** of length \\n\\ is a function from \\\mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ to \\S\\, written \\a_1, \ldots, a_n\\.

> **NOTE:**
>
> **Example 14 (Sequences)**  
>
> - \\a_n = \frac{1}{n}\\ is the sequence \\1, \frac{1}{2}, \frac{1}{3}, \frac{1}{4}, \ldots\\; its third term is \\a_3 = \frac{1}{3}\\.
> - \\b_n = (-1)^n\\ is the sequence \\-1, 1, -1, 1, \ldots\\: a sequence can repeat values.
> - The die rolls \\4, 1, 4\\ form a finite sequence of length \\3\\, with \\a_1 = 4\\, \\a_2 = 1\\, and \\a_3 = 4\\. As a set, \\\mathopen{}\left\\4, 1, 4\right\\\mathclose{} = \mathopen{}\left\\1, 4\right\\\mathclose{}\\, but as a sequence, the order and the repeats matter.

## 4 Countable sets

> **NOTE:**
>
> **Definition 21 (Finite set, infinite set, and cardinality)** A set \\A\\ is **finite** if it is empty, or if, for some natural number \\n\\, its elements can be listed as a finite sequence ([Definition 20](#def-sequence)) \\a_1, \ldots, a_n\\ in which each element of \\A\\ appears exactly once. That number \\n\\ is the **cardinality** of \\A\\, its number of elements, written \\\mathopen{}\left\|A\right\|\mathclose{}\\; the empty set has cardinality \\\mathopen{}\left\|\emptyset\right\|\mathclose{} = 0\\.
>
> A set that is not finite is **infinite**.

> **NOTE:**
>
> *Remark 8* (Two meanings of \\\mathopen{}\left\|\cdot\right\|\mathclose{}\\). Applied to a set, the bars \\\mathopen{}\left\|A\right\|\mathclose{}\\ mean the cardinality of \\A\\. Applied to a number, \\\mathopen{}\left\|x\right\|\mathclose{}\\ means its [absolute value](algebra.llms.md#def-absolute-value), or its [modulus](algebra.llms.md#def-complex-modulus) when \\x\\ is complex. For example, \\\mathopen{}\left\|\mathopen{}\left\\-3\right\\\mathclose{}\right\|\mathclose{} = 1\\, but \\\mathopen{}\left\|-3\right\|\mathclose{} = 3\\.

> **NOTE:**
>
> **Example 15 (Finite and infinite sets)**  
>
> - \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ is finite, with \\\mathopen{}\left\|\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\right\|\mathclose{} = 3\\.
> - \\\mathopen{}\left\\1, 1, 2\right\\\mathclose{} = \mathopen{}\left\\1, 2\right\\\mathclose{}\\, so \\\mathopen{}\left\|\mathopen{}\left\\1, 1, 2\right\\\mathclose{}\right\|\mathclose{} = 2\\: a repeated listing does not count twice.
> - \\\emptyset\\ is finite, with \\\mathopen{}\left\|\emptyset\right\|\mathclose{} = 0\\.
> - The natural numbers \\\mathbb{N} = \mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\ are infinite: for any \\n\\, a list \\a_1, \ldots, a_n\\ of natural numbers misses the natural number \\a_1 + \cdots + a_n + 1\\, which is larger than every number in the list.

> **NOTE:**
>
> **Definition 22 (Countable set)** A set is **countable** if it is finite ([Definition 21](#def-finite-set)), or if its elements can be listed as a sequence ([Definition 20](#def-sequence)) \\a_1, a_2, a_3, \ldots\\ in which every element appears.

> **NOTE:**
>
> **Definition 23 (Countably infinite set)** A set is **countably infinite** if it is [countable](#def-countable-set) and not finite.

> **NOTE:**
>
> **Example 16 (Countable and uncountable sets)**  
>
> - \\\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ is countable, because it is finite.
> - The [non-negative integers](notation.llms.md#def-nonnegative-integers) \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\ are countably infinite: the sequence \\0, 1, 2, \ldots\\ lists them.
> - The [integers](notation.llms.md#def-integers) are countably infinite too: the sequence \\0, 1, -1, 2, -2, 3, -3, \ldots\\ lists every one of them.

> **NOTE:**
>
> **Theorem 4 (The unit interval is not countable)** The interval \\\[0, 1\]\\ is not [countable](#def-countable-set).

> **NOTE:**
>
> *Remark 9* (Cantor’s diagonal argument). The standard [proof](notation.llms.md#def-proof) is Cantor’s diagonal argument: given any sequence of numbers in \\\[0, 1\]\\, it builds a number in \\\[0, 1\]\\ whose decimal expansion differs from the \\n\\th number’s in the \\n\\th digit, so the sequence misses it (see [Wikipedia: Cantor’s diagonal argument](https://en.wikipedia.org/wiki/Cantor%27s_diagonal_argument)). One way to choose the \\n\\th digit is to use \\5\\, unless the \\n\\th number’s \\n\\th digit is \\5\\, in which case use \\4\\. For example, if the sequence starts \\0.1234\ldots\\, \\0.3579\ldots\\, \\0.2468\ldots\\, the diagonal digits are \\1\\, \\5\\, and \\6\\, so the new number starts \\0.545\ldots\\, which differs from the first number in the first digit, from the second in the second digit, and from the third in the third digit.

## 5 Extended non-negative real numbers

> **NOTE:**
>
> **Definition 24 (Extended non-negative real numbers)** The **extended non-negative real numbers**, written \\\[0, \infty\]\\, are the non-negative real numbers together with an extra element \\\infty\\ that is greater than every real number:
>
> \\\[0, \infty\] \stackrel{\text{def}}{=}\[0, \infty) \cup \mathopen{}\left\\\infty\right\\\mathclose{}\\
>
> Addition extends to \\\[0, \infty\]\\ by setting \\x + \infty = \infty + x = \infty\\ for every \\x \in \[0, \infty\]\\.

> **NOTE:**
>
> *Remark 10* (Arithmetic with \\\infty\\). \\\infty\\ is not a real number, so some real-number arithmetic does not extend to it: \\\infty - \infty\\ is left undefined, and \\\infty + 1 = \infty + 2\\ does not imply \\1 = 2\\. Measure theory uses \\\[0, \infty\]\\ because the size of a set, such as the length of the whole real line, can be infinite (see [Wikipedia: Extended real number line](https://en.wikipedia.org/wiki/Extended_real_number_line)).

> **NOTE:**
>
> **Example 17 (Adding with \\\infty\\)** In \\\[0, \infty\]\\, \\2 + 3 = 5\\ as usual, while \\2 + \infty = \infty\\ and \\\infty + \infty = \infty\\.

## 6 Further reading

These books treat sets and the logic behind them in more depth.

- Devlin ([1993](#ref-devlin1993joy)) is an undergraduate introduction to axiomatic set theory. It covers the axioms of set theory, ordinals, and cardinals, which go well beyond the countable sets and functions on this page.
- Halmos ([1974](#ref-halmos1974naive)) is a short, informal treatment of the same axioms, covering relations, functions, families of sets, and cardinal numbers.
- Enderton ([2001](#ref-enderton2001logic)) is a standard introduction to mathematical logic. Its first chapter collects the facts about sets, relations, and functions that the later chapters use.
- Barker-Plummer et al. ([2011](#ref-barkerplummer2011language)) teaches propositional and first-order logic, the language behind statements such as “for every set \\A\\ there exists…”.

## References

Barker-Plummer, Dave, Jon Barwise, and John Etchemendy. 2011. *Language, Proof and Logic*. 2nd ed. CSLI Publications. <https://www.amazon.com/dp/1575866323>.

Devlin, Keith. 1993. *The Joy of Sets: Fundamentals of Contemporary Set Theory*. 2nd ed. Undergraduate Texts in Mathematics. Springer. <https://doi.org/10.1007/978-1-4612-0903-4>.

Enderton, Herbert B. 2001. *A Mathematical Introduction to Logic*. 2nd ed. Academic Press. <https://doi.org/10.1016/C2009-0-22107-6>.

Halmos, Paul R. 1974. *Naive Set Theory*. Undergraduate Texts in Mathematics. Springer. <https://doi.org/10.1007/978-1-4757-1645-0>.

Back to top
