# Number Systems

Code

Published

Last modified: 2026-10-23 14:50:39 (PDT)

> **NOTE:**
>
> *Remark*. Probability and statistics count with the integers and natural numbers and measure with the real numbers. This page defines those number systems. It also defines the words that sort their members: even and odd integers, and rational and irrational real numbers.

## 1 Natural numbers

> **NOTE:**
>
> **Exercise 1 (Which numbers are natural?)** List the elements of the set \\\mathopen{}\left\\n \in \mathbb{N}: n \< 3\right\\\mathclose{}\\. Is your answer the same in every textbook?

> **NOTE:**
>
> *Solution 1*. The answer depends on whether the source counts \\0\\ as a natural number:
>
> - if \\\mathbb{N}\\ starts at \\0\\, the set is \\\mathopen{}\left\\0, 1, 2\right\\\mathclose{}\\;
> - if \\\mathbb{N}\\ starts at \\1\\, the set is \\\mathopen{}\left\\1, 2\right\\\mathclose{}\\.
>
> Both conventions are in common use, so the answer is not the same in every textbook.

> **NOTE:**
>
> **Definition 1 (Integers)** The **integers** [\[1\]](#ref-wikipedia_integer) are the whole numbers, together with their negatives and \\0\\:
>
> \\\mathbb{Z} \stackrel{\text{def}}{=}\mathopen{}\left\\\ldots, -3, -2, -1, 0, 1, 2, 3, \ldots\right\\\mathclose{}\\
>
> An **integer** is an element of \\\mathbb{Z}\\.

> **NOTE:**
>
> **Definition 2 (Positive integers)** The integers ([Definition 1](#def-integers)) greater than \\0\\ are the **positive integers**.

> **NOTE:**
>
> **Definition 3 (Negative integers)** The integers ([Definition 1](#def-integers)) less than \\0\\ are the **negative integers**.

> **NOTE:**
>
> **Example 1 (Integers and non-integers)**  
>
> - \\-7\\, \\0\\, and \\12\\ are integers.
> - \\\frac{1}{2}\\ and \\-2.5\\ are not integers.
> - \\\frac{6}{3}\\ is an integer, because \\\frac{6}{3} = 2\\.

> **NOTE:**
>
> **Definition 4 (Even integer)** An integer ([Definition 1](#def-integers)) \\n\\ is **even** [\[2\]](#ref-wikipedia_parity_mathematics) if \\n = 2k\\ for some integer \\k\\.

> **NOTE:**
>
> **Definition 5 (Odd integer)** An integer ([Definition 1](#def-integers)) \\n\\ is **odd** [\[2\]](#ref-wikipedia_parity_mathematics) if \\n = 2k + 1\\ for some integer \\k\\.

> **NOTE:**
>
> **Example 2 (Even and odd integers)**  
>
> - \\6\\ is even, because \\6 = 2 \cdot 3\\.
> - \\0\\ is even, because \\0 = 2 \cdot 0\\.
> - \\-3\\ is odd, because \\-3 = 2 \cdot(-2) + 1\\.
> - \\7\\ is odd, because \\7 = 2 \cdot 3 + 1\\.
> - \\2.5\\ is neither even nor odd, because it is not an integer.

> **NOTE:**
>
> **Definition 6 (Natural numbers (our convention))** In these notes, the **natural numbers** [\[3\]](#ref-wikipedia_natural_number) are the positive integers ([Definition 2](#def-positive-integer)):
>
> \\\mathbb{N}\stackrel{\text{def}}{=}\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\

> **NOTE:**
>
> **Definition 7 (Non-negative integers)** The **non-negative integers** are the natural numbers ([Definition 6](#def-natural-numbers)) together with \\0\\:
>
> \\\mathbb{N}\_0 \stackrel{\text{def}}{=}\mathopen{}\left\\0, 1, 2, 3, \ldots\right\\\mathclose{} = \mathbb{N}\cup \mathopen{}\left\\0\right\\\mathclose{}\\

> **NOTE:**
>
> **Example 3 (Natural numbers in a data analysis)**  
>
> - Observation indices start at \\1\\, so we write \\i \in \mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ with \\n \in \mathbb{N}\\.
> - A count outcome, such as the number of hospital visits in a year, can be \\0\\, so the set of values it can take is \\\mathbb{N}\_0\\, not \\\mathbb{N}\\.

> **NOTE:**
>
> Other sources may define \\\mathbb{N}\\ differently, so check each source’s definition before reading its formulas:
>
> - Many sources include \\0\\ in \\\mathbb{N}\\. The international standard ISO 80000-2 defines \\\mathbb{N}\\ to include \\0\\, continuing the earlier standard ISO 31-11 (1978).
> - Other sources start \\\mathbb{N}\\ at \\1\\, as these notes do.
> - To remove the ambiguity, some sources write \\\mathbb{N}\_1\\ or \\\mathbb{Z}^+\\ for \\\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\, and \\\mathbb{N}\_0\\ or \\\mathbb{Z}^{0+}\\ for \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\.
> - The words vary too. “Positive integers” (\\\mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\) and “non-negative integers” (\\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\) are unambiguous. “Whole numbers” usually includes \\0\\, but can also mean all of the integers, negative ones included. “Counting numbers” usually starts at \\1\\, but some sources include \\0\\.
> - Some older texts write \\J\\ for the natural numbers.
>
> When a formula’s meaning depends on whether \\0\\ is included, we write the set out explicitly, for example \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\ or \\\mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\.
>
> Source: [Wikipedia, “Natural number”, “Terminology and notation” and “Zero as natural number”](https://en.wikipedia.org/w/index.php?title=Natural_number&oldid=1375965996), which cites ISO 80000-2:2019 and the textbooks using each notation.

## 2 Rational, real, and irrational numbers

> **NOTE:**
>
> **Definition 8 (Rational numbers)** A **rational number** [\[4\]](#ref-wikipedia_rational_number) is a number that can be written as a fraction \\\frac{a}{b}\\, where \\a\\ and \\b\\ are integers ([Definition 1](#def-integers)) and \\b \ne 0\\. The set of rational numbers is written \\\mathbb{Q}\\:
>
> \\\mathbb{Q} \stackrel{\text{def}}{=}\mathopen{}\left\\\frac{a}{b} : a \in \mathbb{Z},\\ b \in \mathbb{Z},\\ b \ne 0\right\\\mathclose{}\\

> **NOTE:**
>
> **Example 4 (Rational numbers)**  
>
> - \\\frac{3}{4}\\ is rational, with \\a = 3\\ and \\b = 4\\.
> - \\0.75\\ is rational, because \\0.75 = \frac{3}{4}\\.
> - Every integer is rational: for example, \\-5 = \frac{-5}{1}\\.
> - \\0.333\ldots\\, with the \\3\\s repeating forever, is rational, because \\0.333\ldots = \frac{1}{3}\\.

> **NOTE:**
>
> **Definition 9 (Real numbers)** A **real number** [\[5\]](#ref-wikipedia_real_number) is a number that can be written as a decimal expansion: an integer part, followed by a decimal point and a finite or infinite list of decimal places after it. Equivalently, the real numbers are the points on the number line. The set of real numbers is written \\\mathbb{R}\\.

> **NOTE:**
>
> *Remark 1* (A working definition). [Definition 9](#def-real-numbers) is a working definition, not a construction: it does not say what an infinite decimal expansion is, or how to add or multiply two of them. Rudin [\[6\]](#ref-rudin1976principles), Appendix to Chapter 1 constructs the real numbers rigorously. Some real numbers have two decimal expansions: for example, \\0.999\ldots\\ and \\1.000\ldots\\ are the same real number, \\1\\.

> **NOTE:**
>
> **Example 5 (Real numbers)**  
>
> - \\3\\, \\-0.5\\, and \\\frac{1}{3} = 0.333\ldots\\ are real numbers.
> - \\\pi = 3.14159\ldots\\ is a real number.
> - Every rational number ([Definition 8](#def-rational-numbers)) is a real number, so \\\mathbb{N}\subseteq \mathbb{Z} \subseteq \mathbb{Q} \subseteq \mathbb{R}\\.

> **NOTE:**
>
> **Definition 10 (Irrational numbers)** An **irrational number** [\[7\]](#ref-wikipedia_irrational_number) is a real number ([Definition 9](#def-real-numbers)) that is not rational ([Definition 8](#def-rational-numbers)).

> **NOTE:**
>
> **Example 6 (Irrational numbers)**  
>
> - \\\sqrt{2} = 1.41421\ldots\\, the [square root](algebra-basics.llms.md#def-square-root) of \\2\\, is irrational: no fraction of integers \\\frac{a}{b}\\ squares to \\2\\ [\[8\]](#ref-wikipedia_square_root_of_2).
> - \\\pi = 3.14159\ldots\\ is irrational [\[9\]](#ref-wikipedia_proof_that_pi_is_irrational).
> - \\1.5\\ is not irrational, because \\1.5 = \frac{3}{2}\\ is rational.

Back to top

## References

\[1\]

Wikipedia contributors, “Integer — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Integer>

\[2\]

Wikipedia contributors, “Parity (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Parity_(mathematics)>

\[3\]

Wikipedia contributors, “Natural number — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Natural_number>

\[4\]

Wikipedia contributors, “Rational number — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Rational_number>

\[5\]

Wikipedia contributors, “Real number — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Real_number>

\[6\]

W. Rudin, *Principles of mathematical analysis*, 3rd ed. in International series in pure and applied mathematics. New York: McGraw-Hill, 1976.

\[7\]

Wikipedia contributors, “Irrational number — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Irrational_number>

\[8\]

Wikipedia contributors, “Square root of 2 — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Square_root_of_2>

\[9\]

Wikipedia contributors, “Proof that pi is irrational — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Proof_that_%CF%80_is_irrational>
