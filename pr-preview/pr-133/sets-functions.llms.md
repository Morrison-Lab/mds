# Sets and Functions

Code

Published

Last modified: 2026-10-05 20:11:23 (PDT)

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
> **Example 2 (Even die rolls in set-builder notation)** \\\mathopen{}\left\\x \in \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{} : x \text{ is even}\right\\\mathclose{} = \mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\, and \\\mathopen{}\left\\x \in \mathbb{R}: x \> 0\right\\\mathclose{}\\ is the set of positive real numbers.

> **NOTE:**
>
> **Definition 3 (Subset)** A set \\A\\ is a **subset** of a set \\B\\, written \\A \subseteq B\\, if every element of \\A\\ is an element of \\B\\.

> **NOTE:**
>
> **Example 3 (Even die rolls)** The even die rolls form a subset of the possible rolls: \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{} \subseteq \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\, because each of \\2\\, \\4\\, and \\6\\ is a possible roll. The set \\\mathopen{}\left\\2, 4, 7\right\\\mathclose{}\\ is not a subset of \\\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\, because \\7\\ is not a possible roll.

> **NOTE:**
>
> **Theorem 1 (Every set is a subset of itself)** For every set \\A\\, \\A \subseteq A\\.

> **NOTE:**
>
> *Proof*. Every element of \\A\\ is an element of \\A\\, which is [Definition 3](#def-subset) with \\B = A\\.

> **NOTE:**
>
> **Definition 4 (Strict subset)** A set \\A\\ is a **strict subset** of a set \\B\\, written \\A \subsetneq B\\, if \\A\\ is a [subset](#def-subset) of \\B\\ and \\A \neq B\\.

> **NOTE:**
>
> *Remark 2* (Proper subsets and the symbol \\\subset\\). Other sources call a strict subset a **proper subset**. Sources disagree about the symbol \\\subset\\: some use it for “subset” (\\\subseteq\\), and others for “strict subset” (\\\subsetneq\\) (see [Wikipedia: Subset](https://en.wikipedia.org/wiki/Subset)). For example, \\\mathopen{}\left\\1, 2\right\\\mathclose{} \subset \mathopen{}\left\\1, 2\right\\\mathclose{}\\ is true in the first reading, because \\\mathopen{}\left\\1, 2\right\\\mathclose{} \subseteq \mathopen{}\left\\1, 2\right\\\mathclose{}\\, and false in the second, because the two sets are equal. These notes avoid \\\subset\\ and write \\\subseteq\\ or \\\subsetneq\\.

> **NOTE:**
>
> **Definition 5 (Superset)** A set \\B\\ is a **superset** of a set \\A\\, written \\B \supseteq A\\, if every element of \\A\\ is an element of \\B\\.

> **NOTE:**
>
> *Remark 3* (Superset and subset). \\B \supseteq A\\ means the same thing as \\A \subseteq B\\ ([subset](#def-subset)). For example, \\\mathopen{}\left\\1, 2, 3\right\\\mathclose{} \supseteq \mathopen{}\left\\1, 3\right\\\mathclose{}\\, and \\\mathopen{}\left\\1, 3\right\\\mathclose{} \subseteq \mathopen{}\left\\1, 2, 3\right\\\mathclose{}\\. But \\\mathopen{}\left\\1, 3\right\\\mathclose{}\\ is not a superset of \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\, because \\2 \in \mathopen{}\left\\1, 2\right\\\mathclose{}\\ and \\2 \notin \mathopen{}\left\\1, 3\right\\\mathclose{}\\.

> **NOTE:**
>
> **Definition 6 (Strict superset)** A set \\B\\ is a **strict superset** of a set \\A\\, written \\B \supsetneq A\\, if \\B\\ is a [superset](#def-superset) of \\A\\ and \\B \neq A\\.

> **NOTE:**
>
> *Remark 4* (Strict superset and strict subset). \\B \supsetneq A\\ means the same thing as \\A \subsetneq B\\ ([strict subset](#def-strict-subset)). For example, \\\mathopen{}\left\\1, 2, 3\right\\\mathclose{} \supsetneq \mathopen{}\left\\1, 3\right\\\mathclose{}\\, because \\\mathopen{}\left\\1, 2, 3\right\\\mathclose{}\\ contains \\2\\ and \\\mathopen{}\left\\1, 3\right\\\mathclose{}\\ does not.

> **NOTE:**
>
> **Example 4 (Strict subsets and supersets of die rolls)** For the even rolls \\A = \mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ and the possible rolls \\B = \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\:
>
> - \\A \subsetneq B\\, because \\A \subseteq B\\ ([Example 3](#exm-subset)) and \\1 \in B\\ but \\1 \notin A\\, so \\A \neq B\\;
> - \\B \supseteq A\\ and \\B \supsetneq A\\, for the same reasons;
> - \\B \subseteq B\\, but \\B\\ is not a strict subset of itself, because \\B = B\\; likewise \\B \supseteq B\\, but \\B\\ is not a strict superset of itself, because \\B = B\\.

> **NOTE:**
>
> **Definition 7 (Empty set)** The **empty set**, denoted \\\emptyset\\, is the set that has no elements.

> **NOTE:**
>
> *Remark 5* (Other notation for the empty set). Other sources write \\\mathopen{}\left\\\right\\\mathclose{}\\ for \\\emptyset\\ (see [Wikipedia: Empty set](https://en.wikipedia.org/wiki/Empty_set)). Some sources call it the **null set**, but in measure theory a “null set” usually means a set of measure zero, which need not be empty. For example, the interval \\\[0, 0\] = \mathopen{}\left\\0\right\\\mathclose{}\\ has length \\0 - 0 = 0\\, so it is a null set in that sense, but it is not empty, because \\0 \in \mathopen{}\left\\0\right\\\mathclose{}\\.

> **NOTE:**
>
> **Example 5 (Impossible die rolls)** No roll of a six-sided die is greater than 6, so \\\mathopen{}\left\\x \in \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{} : x \> 6\right\\\mathclose{} = \emptyset\\.

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
> *Proof*. By [Definition 3](#def-subset), \\\emptyset \subseteq A\\ fails only if some element of \\\emptyset\\ is not in \\A\\. The [empty set](#def-empty-set) has no elements, so no such element exists.

## 2 Combining sets

> **NOTE:**
>
> **Definition 8 (Union)** The **union** of sets \\A\\ and \\B\\, written \\A \cup B\\, is the set of elements that are in \\A\\, in \\B\\, or in both:
>
> \\A \cup B \stackrel{\text{def}}{=}\mathopen{}\left\\x : x \in A \text{ or } x \in B\right\\\mathclose{}\\
>
> More generally, let \\I\\ be a set of indices, such as \\\mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ or \\\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\, and let \\A_i\\ be a set for each \\i \in I\\. The union of the sets \\A_i\\, written \\\bigcup\_{i \in I} A_i\\, is the set of elements that are in at least one \\A_i\\.

> **NOTE:**
>
> **Definition 9 (Intersection)** The **intersection** of sets \\A\\ and \\B\\, written \\A \cap B\\, is the set of elements that are in both \\A\\ and \\B\\:
>
> \\A \cap B \stackrel{\text{def}}{=}\mathopen{}\left\\x : x \in A \text{ and } x \in B\right\\\mathclose{}\\
>
> More generally, let \\I\\ be a nonempty set of indices, such as \\\mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ or \\\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\, and let \\A_i\\ be a set for each \\i \in I\\. The intersection of the sets \\A_i\\, written \\\bigcap\_{i \in I} A_i\\, is the set of elements that are in every \\A_i\\.

> **NOTE:**
>
> **Definition 10 (Set difference)** The **set difference** of sets \\A\\ and \\B\\, written \\A \setminus B\\, is the set of elements of \\A\\ that are not in \\B\\:
>
> \\A \setminus B \stackrel{\text{def}}{=}\mathopen{}\left\\x \in A : x \notin B\right\\\mathclose{}\\

> **NOTE:**
>
> **Example 6 (Combining sets of die rolls)** Let \\A = \mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ (the even rolls) and \\B = \mathopen{}\left\\1, 2, 3\right\\\mathclose{}\\ (the rolls of at most 3). Then:
>
> - \\A \cup B = \mathopen{}\left\\1, 2, 3, 4, 6\right\\\mathclose{}\\, the rolls that are even or at most 3;
> - \\A \cap B = \mathopen{}\left\\2\right\\\mathclose{}\\, the only roll that is both;
> - \\A \setminus B = \mathopen{}\left\\4, 6\right\\\mathclose{}\\, the even rolls greater than 3;
> - \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{} \cap \mathopen{}\left\\1, 3, 5\right\\\mathclose{} = \emptyset\\: no roll is both even and odd.

## 3 Countable sets

> **NOTE:**
>
> **Definition 11 (Countable set)** A set is **countable** if it is finite, or if its elements can be listed as a sequence \\a_1, a_2, a_3, \ldots\\ in which every element appears.

> **NOTE:**
>
> **Definition 12 (Countably infinite set)** A set is **countably infinite** if it is [countable](#def-countable-set) and not finite.

> **NOTE:**
>
> **Example 7 (Countable and uncountable sets)**  
>
> - \\\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ is countable, because it is finite.
> - The non-negative integers \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\ are countably infinite: the sequence \\0, 1, 2, \ldots\\ lists them.
> - The integers are countably infinite too: the sequence \\0, 1, -1, 2, -2, 3, -3, \ldots\\ lists every one of them.

> **NOTE:**
>
> **Theorem 4 (The unit interval is not countable)** The interval \\\[0, 1\]\\ is not [countable](#def-countable-set).

> **NOTE:**
>
> *Remark 6* (Cantor’s diagonal argument). The standard proof is Cantor’s diagonal argument: given any sequence of numbers in \\\[0, 1\]\\, it builds a number in \\\[0, 1\]\\ whose decimal expansion differs from the \\n\\th number’s in the \\n\\th digit, so the sequence misses it (see [Wikipedia: Cantor’s diagonal argument](https://en.wikipedia.org/wiki/Cantor%27s_diagonal_argument)). One way to choose the \\n\\th digit is to use \\5\\, unless the \\n\\th number’s \\n\\th digit is \\5\\, in which case use \\4\\. For example, if the sequence starts \\0.1234\ldots\\, \\0.3579\ldots\\, \\0.2468\ldots\\, the diagonal digits are \\1\\, \\5\\, and \\6\\, so the new number starts \\0.545\ldots\\, which differs from the first number in the first digit, from the second in the second digit, and from the third in the third digit.

## 4 Functions

> **NOTE:**
>
> **Definition 13 (Function)** A **function** \\f\\ from a set \\A\\ to a set \\B\\, written \\f : A \to B\\, assigns to each element \\a \in A\\ exactly one element \\f(a) \in B\\, called the value of \\f\\ at \\a\\. A function is also called a **map** (or *mapping*) or a **transformation**; on this site the three words mean the same thing, although some authors reserve “transformation” for a function from a set to itself.

> **NOTE:**
>
> **Example 8 (Doubling a die roll)** The rule \\f(a) = 2a\\ defines a function \\f : \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{} \to \mathbb{R}\\, because it assigns exactly one real number to each possible roll; for example, \\f(3) = 6\\. A rule that assigned both \\2\\ and \\-2\\ to the roll \\1\\ would not be a function, because a function assigns exactly one value to each element.

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
>
> For a single element \\a \in A\\, the value \\f(a)\\ is also called the **image of** \\a\\ under \\f\\.

> **NOTE:**
>
> *Remark 7* (Image and range). Many sources call the image the **range**, but others use “range” for the codomain, so these notes avoid “range” for functions in general (see [Wikipedia: Range of a function](https://en.wikipedia.org/wiki/Range_of_a_function)). For example, for \\f : \mathbb{R}\to \mathbb{R}\\ with \\f(a) = a^2\\, “the range of \\f\\” could mean the image \\\[0, \infty)\\ or the codomain \\\mathbb{R}\\.
>
> The image is always a subset of the codomain, because every value \\f(a)\\ lies in \\B\\.

> **NOTE:**
>
> **Example 9 (Domain, codomain, and image of the doubled die roll)** For the function \\f : \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{} \to \mathbb{R}\\ with \\f(a) = 2a\\ from [Example 8](#exm-function):
>
> - the domain is \\\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\;
> - the codomain is \\\mathbb{R}\\;
> - the image is \\\mathopen{}\left\\2, 4, 6, 8, 10, 12\right\\\mathclose{}\\.
>
> The image is a subset of the codomain, and here a much smaller one: most real numbers, such as \\3\\ and \\-1\\, are not values of \\f\\.

## 5 Extended non-negative real numbers

> **NOTE:**
>
> **Definition 17 (Extended non-negative real numbers)** The **extended non-negative real numbers**, written \\\[0, \infty\]\\, are the non-negative real numbers together with an extra element \\\infty\\ that is greater than every real number:
>
> \\\[0, \infty\] \stackrel{\text{def}}{=}\[0, \infty) \cup \mathopen{}\left\\\infty\right\\\mathclose{}\\
>
> Addition extends to \\\[0, \infty\]\\ by setting \\x + \infty = \infty + x = \infty\\ for every \\x \in \[0, \infty\]\\.

> **NOTE:**
>
> *Remark 8* (Arithmetic with \\\infty\\). \\\infty\\ is not a real number, so some real-number arithmetic does not extend to it: \\\infty - \infty\\ is left undefined, and \\\infty + 1 = \infty + 2\\ does not imply \\1 = 2\\. Measure theory uses \\\[0, \infty\]\\ because the size of a set, such as the length of the whole real line, can be infinite (see [Wikipedia: Extended real number line](https://en.wikipedia.org/wiki/Extended_real_number_line)).

> **NOTE:**
>
> **Example 10 (Adding with \\\infty\\)** In \\\[0, \infty\]\\, \\2 + 3 = 5\\ as usual, while \\2 + \infty = \infty\\ and \\\infty + \infty = \infty\\.

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
