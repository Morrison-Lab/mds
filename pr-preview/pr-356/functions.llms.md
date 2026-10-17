# Functions

Code

Published

Last modified: 2026-10-17 10:45:11 (PDT)

> **NOTE:**
>
> *Remark*. Random variables, densities, and measures are functions. This page collects the definitions of functions, sequences, and countable sets that the Morrison Lab’s probability and statistics notes build on. The functions here go between the sets defined on the [Sets](sets.llms.md) page.

## 1 Functions

> **NOTE:**
>
> **Definition 1 (Function (map, mapping, transformation))** A **function** \\f\\ from a set \\A\\ to a set \\B\\, written \\f : A \to B\\, assigns to each element \\a \in A\\ exactly one element \\f(a) \in B\\.
>
> A function is also called a **map** (or **mapping**) or a **transformation**; on this site the three words mean the same thing, although some authors reserve “transformation” for a function from a set to itself.

> **NOTE:**
>
> **Example 1 (Doubling a die roll)** The rule \\f(a) = 2a\\ defines a function \\f : \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{} \to \mathbb{R}\\, because it assigns exactly one real number to each possible roll; for example, \\f(3) = 6\\. A rule that assigned both \\2\\ and \\-2\\ to the roll \\1\\ would not be a function, because a function assigns exactly one value to each element.

> **NOTE:**
>
> **Definition 2 (Argument (input))** An **argument** (or **input**) of a [function](#def-function) \\f : A \to B\\ is an element \\a \in A\\ that \\f\\ is applied to.

> **NOTE:**
>
> **Example 2 (Arguments of doubling a die roll)** For the function \\f(a) = 2a\\ in [Example 1](#exm-function), the roll \\3\\ is an argument of \\f\\, because \\f\\ can be applied to it. The number \\7\\ is not an argument of \\f\\, because it is not an element of \\\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\.

> **NOTE:**
>
> **Definition 3 (Value (output))** The **value** (or **output**) of a [function](#def-function) \\f : A \to B\\ at an [argument](#def-argument) \\a \in A\\ is the element \\f(a) \in B\\ that \\f\\ assigns to \\a\\.

> **NOTE:**
>
> **Example 3 (Values of doubling a die roll)** For the function \\f(a) = 2a\\ in [Example 1](#exm-function), the value of \\f\\ at the argument \\3\\ is \\f(3) = 6\\, and the value at the argument \\5\\ is \\f(5) = 10\\.

> **NOTE:**
>
> **Definition 4 (Relation)** A **relation** \\\sim\\ on a set \\S\\ is a rule that, for each [ordered pair](sets.llms.md#def-ordered-pair) of elements \\a, b \in S\\, says whether \\a \sim b\\ holds (“\\a\\ is related to \\b\\”).

> **NOTE:**
>
> **Example 4 (Relations on the real numbers)** \\=\\, \\\<\\ and \\\le\\ are relations on \\\mathbb{R}\\. For \\\<\\, the pair \\(2, 5)\\ is related, since \\2 \< 5\\, but the pair \\(5, 2)\\ is not, since \\5 \< 2\\ is false: the order of the pair matters.

> **NOTE:**
>
> **Definition 5 (Domain)** The **domain** of a [function](#def-function) \\f : A \to B\\ is the set \\A\\ of elements that \\f\\ assigns values to.

> **NOTE:**
>
> **Definition 6 (Codomain)** The **codomain** of a [function](#def-function) \\f : A \to B\\ is the set \\B\\ that its values are required to lie in.

> **NOTE:**
>
> **Definition 7 (Image)** The **image** of a [function](#def-function) \\f : A \to B\\ is the set of values that \\f\\ actually takes:
>
> \\f(A) \stackrel{\text{def}}{=}\mathopen{}\left\\f(a) : a \in A\right\\\mathclose{}\\
>
> For a single element \\a \in A\\, the value \\f(a)\\ is also called the **image of** \\a\\ under \\f\\.

> **NOTE:**
>
> **Definition 8 (Range)** The word **range** of a [function](#def-function) \\f : A \to B\\ has two conflicting meanings, and sources use one or the other:
>
> - the [image](#def-image) of \\f\\, the set \\f(A)\\ of values that \\f\\ actually takes;
> - the [codomain](#def-codomain) of \\f\\, the set \\B\\ that its values are required to lie in.
>
> To avoid the ambiguity, these notes write “image” or “codomain” instead, and recommend that you do too (see [Wikipedia: Range of a function](https://en.wikipedia.org/wiki/Range_of_a_function)).

> **NOTE:**
>
> **Example 5 (Two ranges of a squaring function)** For \\f : \mathbb{R}\to \mathbb{R}\\ with \\f(a) = a^2\\, “the range of \\f\\” could mean the image \\\[0, \infty)\\ or the codomain \\\mathbb{R}\\. The image is always a subset of the codomain, because every value \\f(a)\\ lies in the codomain.

> **NOTE:**
>
> *Remark 1* (Image and range). Many sources call the [image](#def-image) the “range”, but others use “range” for the [codomain](#def-codomain). [Definition 8](#def-range) gives the two meanings and the terms these notes use instead.

> **NOTE:**
>
> **Example 6 (Domain, codomain, and image of the doubled die roll)** For the function \\f : \mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{} \to \mathbb{R}\\ with \\f(a) = 2a\\ from [Example 1](#exm-function):
>
> - the domain is \\\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\;
> - the codomain is \\\mathbb{R}\\;
> - the image is \\\mathopen{}\left\\2, 4, 6, 8, 10, 12\right\\\mathclose{}\\.
>
> The image is a subset of the codomain, and here a much smaller one: most real numbers, such as \\3\\ and \\-1\\, are not values of \\f\\.

> **NOTE:**
>
> **Definition 9 (Graph of a function)** The **graph** of a [function](#def-function) \\f : A \to B\\ is the set of [ordered pairs](sets.llms.md#def-ordered-pair) \\(a, f(a))\\, one for each element \\a\\ of its domain:
>
> \\\mathopen{}\left\\(a, f(a)) : a \in A\right\\\mathclose{}\\

> **NOTE:**
>
> **Example 7 (The graph of a function on three points)** Let \\f : \mathopen{}\left\\-1, 0, 2\right\\\mathclose{} \to \mathbb{R}\\ with \\f(a) = a^2\\. Then \\f(-1) = 1\\, \\f(0) = 0\\, and \\f(2) = 4\\, so the graph of \\f\\ is \\\mathopen{}\left\\(-1, 1), (0, 0), (2, 4)\right\\\mathclose{}\\. The pair \\(1, 1)\\ is not in the graph, because \\1\\ is not in the domain of \\f\\.

> **NOTE:**
>
> *Remark 2* (The graph of a real function is a curve). For a function \\f : \mathbb{R}\to \mathbb{R}\\, the graph is a curve in the plane, with \\a\\ on the horizontal axis and \\f(a)\\ on the vertical axis.

> **NOTE:**
>
> *Remark 3* (What a function is fundamentally). [Definition 1](#def-function) defines what a function *does*: it assigns an output to each input. In formal set theory, what a function *is* is described in terms of [ordered pairs](sets.llms.md#def-ordered-pair) and its graph ([Definition 9](#def-graph)): the set of pairs \\G = \mathopen{}\left\\(a, f(a)) : a \in A\right\\\mathclose{} \subseteq A \times B\\. Authors define a function formally in one of two ways:
>
> 1.  **As its graph** ([Halmos 1974, sec. 8](#ref-halmos1974naive), p. 30): a function is a subset of \\A \times B\\ containing exactly one pair \\(a, b)\\ for each \\a \in A\\, where \\b = f(a)\\, and the statement \\f(a) = b\\ is notation for \\(a, b) \in f\\. Under this convention, the codomain \\B\\ is specified alongside the graph in the declaration \\f : A \to B\\.
> 2.  **As a triple \\(A, B, G)\\**: the function consists of the domain \\A\\, the codomain \\B\\, and the graph \\G \subseteq A \times B\\. This explicit packaging retains the codomain \\B\\ as part of the function itself, distinguishing functions that have the same graph but different codomains (such as a function mapping into \\\mathbb{R}\\ versus into integers).
>
> For example, the die-doubling function in [Example 1](#exm-function) has the graph of six ordered pairs \\\mathopen{}\left\\(1, 2), (2, 4), (3, 6), (4, 8), (5, 10), (6, 12)\right\\\mathclose{}\\.
>
> This distinction clarifies what a function is and is not:
>
> - **Not an algebraic formula:** A function is not fundamentally an equation or algebraic expression. While many functions are specified by a formula (such as \\f(x) = x^2\\), many others cannot be written in closed form (such as empirical measurements or a lookup table), yet every function has a well-defined set of input-output pairs.
> - **Not a curve:** A curve or plot is a geometric visualization of a function whose domain and codomain are subsets of \\\mathbb{R}\\, but functions can map between arbitrary sets (such as sets of words, matrices, or probability distributions).
> - **Sets of pairs with unique first entries:** Any subset of \\A \times B\\ in which no two distinct pairs share the same first element defines a function from the set of those first elements to \\B\\.
>
> In computer science, viewing a function as a set of key-value pairs corresponds directly to a **dictionary**, **lookup table**, or **hash map**. Evaluating an expression computes outputs on demand; caching computed outputs \\(a, f(a))\\ on demand to return on future calls without recomputing is known as **memoization**.

> **NOTE:**
>
> **Definition 10 (Composition)** Let \\g : A \to B\\ and \\f : B \to C\\ be [functions](#def-function). The **composition** of \\f\\ and \\g\\ is the function \\f \circ g : A \to C\\ defined by
>
> \\(f \circ g)(a) \stackrel{\text{def}}{=}f(g(a)) \quad \text{for each } a \in A.\\

> **NOTE:**
>
> **Definition 11 (Inner function)** In a composition \\f \circ g\\ ([Definition 10](#def-composition)), \\g\\ is the **inner function**, applied first.

> **NOTE:**
>
> **Definition 12 (Outer function)** In a composition \\f \circ g\\ ([Definition 10](#def-composition)), \\f\\ is the **outer function**, applied to the result.

> **NOTE:**
>
> **Example 8 (The order of composition matters)** Let \\g : \mathbb{R}\to \mathbb{R}\\ with \\g(x) = x + 1\\, and \\f : \mathbb{R}\to \mathbb{R}\\ with \\f(x) = x^2\\.
>
> - \\ \begin{aligned} (f \circ g)(2) &= f(g(2)) \\ &= f(3) \\ &= 9: \end{aligned} \\
>
>   \\g\\ is the inner function, and \\f\\ is the outer function.
>
> - \\ \begin{aligned} (g \circ f)(2) &= g(f(2)) \\ &= g(4) \\ &= 5: \end{aligned} \\
>
>   now \\f\\ is the inner function, and \\g\\ is the outer function.
>
> Since \\9 \ne 5\\, \\f \circ g\\ and \\g \circ f\\ are different functions.

> **NOTE:**
>
> **Definition 13 (Inverse function)** Let \\f : A \to B\\ be a [function](#def-function). A function \\g : B \to A\\ is the **inverse function** of \\f\\, written \\f^{-1}\\, if both
>
> - \\g(f(a)) = a\\ for every \\a \in A\\, and
> - \\f(g(b)) = b\\ for every \\b \in B\\.
>
> A function that has an inverse function is **invertible**.

> **NOTE:**
>
> *Remark 4* (\\f^{-1}\\ is not \\1/f\\). The \\-1\\ in \\f^{-1}\\ does not mean a reciprocal: \\f^{-1}(b)\\ is the input that \\f\\ maps to \\b\\, not \\\frac{1}{f(b)}\\. For example, with \\f(x) = 2x\\ on \\\mathbb{R}\\, \\f^{-1}(4) = 2\\, but \\\frac{1}{f(4)} = \frac{1}{8}\\.

> **NOTE:**
>
> **Example 9 (An invertible function, and one that is not)**  
>
> - Let \\f : \mathbb{R}\to \mathbb{R}\\ with \\f(x) = 2x + 1\\. Its inverse function is \\f^{-1}(y) = \frac{y - 1}{2}\\. For example, \\f(3) = 7\\ and
>
>   \\ \begin{aligned} f^{-1}(7) &= \frac{7 - 1}{2} \\ &= 3. \end{aligned} \\
>
> - Let \\h : \mathbb{R}\to \mathbb{R}\\ with \\h(x) = x^2\\. Then \\h(-2) = 4\\ and \\h(2) = 4\\, so an inverse function would need \\h^{-1}(4)\\ to equal both \\-2\\ and \\2\\. So \\h\\ is not invertible.

> **NOTE:**
>
> **Definition 14 (Elementwise application of a function to a vector)** Let \\f : A \to B\\ be a function ([definition](#def-function)), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= {\mathopen{}\left(x_1, x_2, \ldots, x_n\right)\mathclose{}}^{\top}\\ be a vector whose entries all lie in \\A\\. The **elementwise application** of \\f\\ to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, written \\f^{\odot}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\, is the vector of the values of \\f\\ at the entries of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\:
>
> \\ f^{\odot}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = {\mathopen{}\left(f(x_1), f(x_2), \ldots, f(x_n)\right)\mathclose{}}^{\top}. \\
>
> It is a function \\f^{\odot} : A^n \to B^n\\, where \\A^n\\ is the \\n\\-fold Cartesian product of \\A\\ with itself ([definition](sets.llms.md#def-cartesian-product)).

> **NOTE:**
>
> **Example 10 (The exponential and logistic functions applied to a vector)** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= {\mathopen{}\left(-1, 0, 2\right)\mathclose{}}^{\top}\\. With \\\operatorname{exp}(t) = e^t\\ and the logistic function \\\operatorname{expit}(t) = \frac{1}{1 + e^{-t}}\\,
>
> \\ \begin{aligned} \operatorname{exp}^{\odot}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= {\mathopen{}\left(e^{-1}, e^{0}, e^{2}\right)\mathclose{}}^{\top}, \\ \operatorname{expit}^{\odot}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= {\mathopen{}\left(\operatorname{expit}(-1), \operatorname{expit}(0), \operatorname{expit}(2)\right)\mathclose{}}^{\top}. \end{aligned} \\
>
> The code evaluates both, using R’s [`exp()`](https://rdrr.io/r/base/Log.html) and [`plogis()`](https://rdrr.io/r/stats/Logistic.html), which apply to a vector entry by entry.
>
> ``` downlit
> x <- c(-1, 0, 2)
> exp_x <- exp(x)
> expit_x <- plogis(x)
> exp_x
> #> [1] 0.3678794 1.0000000 7.3890561
> expit_x
> #> [1] 0.2689414 0.5000000 0.8807971
> ```
>
> So \\\operatorname{exp}^{\odot}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \approx\\ (0.3679, 1, 7.3891) and \\\operatorname{expit}^{\odot}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \approx\\ (0.2689, 0.5, 0.8808). Each entry of the output depends only on the entry of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ in the same position.

> **NOTE:**
>
> *Remark 5* (Notation and software for elementwise application).
>
> - The superscript \\\odot\\ keeps \\f^{\odot}\\ apart from \\f\\ itself. Where a function \\f\\ takes a whole vector as its argument, as in the multivariable calculus of [vector calculus](vector-calculus.llms.md), \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ means \\f\\ evaluated at the vector, which is generally not the vector of its values at the entries.
> - If \\f\\ has parameters, as in \\f\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}}\\, the same parameters are used at every entry.
> - Software usually applies a scalar function to a vector this way, without a special symbol: R and NumPy evaluate `exp(x)` entry by entry. The matrix exponential of a square matrix is a different function from \\\operatorname{exp}^{\odot}\\.

> **NOTE:**
>
> **Definition 15 (Operator)** An **operator** is a [function](#def-function) whose [arguments](#def-argument) and [values](#def-value) are both functions or both vectors.

> **NOTE:**
>
> **Example 11 (The derivative as an operator)** Let \\D\\ send each differentiable function \\f : \mathbb{R}\to \mathbb{R}\\ to its derivative function \\D f = f'\\. Then \\D\\ is an operator, because its arguments and its values are functions. For example, \\D\\ sends \\f(x) = x^2\\ to the function \\(D f)(x) = 2x\\.

> **NOTE:**
>
> *Remark 6* (Other uses of “operator”). Some authors call every function an operator, and others reserve the word for functions whose domain and codomain are the same set, as in the [linear operator](linear-algebra-matrices.llms.md#def-linear-operator).

> **NOTE:**
>
> **Definition 16 (Functional)** A **functional** is a [function](#def-function) whose [arguments](#def-argument) are functions or vectors and whose [values](#def-value) are real numbers.

> **NOTE:**
>
> **Example 12 (Evaluation, integration and expectation as functionals)**  
>
> - Evaluation at \\0\\ sends each function \\f : \mathbb{R}\to \mathbb{R}\\ to the number \\f(0)\\.
> - The definite integral sends each continuous function \\f : \[0, 1\] \to \mathbb{R}\\ to the number \\\int_0^1 f(x)\\dx\\. For \\f(x) = x^2\\, the value is \\\frac{1}{3}\\.
> - The [expectation](https://morrison-lab.github.io/pds/expectation.html#def-expectation) sends each random variable, which is a function, to a real number, its population mean.
> - Summing the entries sends each vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^n\\ to the number \\\sum\_{i=1}^n x_i\\.
>
> Each takes a function or a vector as its argument and returns a number, so each is a functional. The derivative operator in [Example 11](#exm-operator) is not a functional, because its values are functions, not numbers.

> **NOTE:**
>
> **Definition 17 (Sequence)** A **sequence** in a set \\S\\ is a [function](#def-function) \\a : \mathbb{N}\to S\\ from the [natural numbers](number-systems.llms.md#def-natural-numbers) to \\S\\. Its value \\a(n)\\ is written \\a_n\\, and the sequence is written \\(a_n)\\ or \\a_1, a_2, a_3, \ldots\\.

> **NOTE:**
>
> **Definition 18 (Term of a sequence)** The value \\a_n\\ of a sequence \\(a_n)\\ ([Definition 17](#def-sequence)) is called its \\n\\th **term**.

> **NOTE:**
>
> **Example 13 (Sequences)**  
>
> - \\a_n = \frac{1}{n}\\ is the sequence \\1, \frac{1}{2}, \frac{1}{3}, \frac{1}{4}, \ldots\\; its third term is \\a_3 = \frac{1}{3}\\.
> - \\b_n = (-1)^n\\ is the sequence \\-1, 1, -1, 1, \ldots\\: a sequence can repeat values.
> - The die rolls \\4, 1, 4\\ form a finite sequence of length \\3\\, with \\a_1 = 4\\, \\a_2 = 1\\, and \\a_3 = 4\\. As a set, \\\mathopen{}\left\\4, 1, 4\right\\\mathclose{} = \mathopen{}\left\\1, 4\right\\\mathclose{}\\, but as a sequence, the order and the repeats matter.

> **NOTE:**
>
> **Definition 19 (Finite sequence)** Let \\S\\ be a set. A **finite sequence** of length \\n\\ is a function from \\\mathopen{}\left\\1, \ldots, n\right\\\mathclose{}\\ to \\S\\, written \\a_1, \ldots, a_n\\.

## 2 Countable sets

> **NOTE:**
>
> **Definition 20 (Finite set)** A set \\A\\ is **finite** if it is empty, or if, for some natural number \\n\\, its elements can be listed as a finite sequence ([Definition 19](#def-finite-sequence)) \\a_1, \ldots, a_n\\ in which each element of \\A\\ appears exactly once.

> **NOTE:**
>
> **Definition 21 (Cardinality)** For a finite set \\A\\ ([Definition 20](#def-finite-set)), the number \\n\\ in such a list is the **cardinality** of \\A\\, its number of elements, written \\\mathopen{}\left\|A\right\|\mathclose{}\\; the empty set has cardinality \\\mathopen{}\left\|\emptyset\right\|\mathclose{} = 0\\.

> **NOTE:**
>
> *Remark 7* (Two meanings of \\\mathopen{}\left\|\cdot\right\|\mathclose{}\\). Applied to a set, the bars \\\mathopen{}\left\|A\right\|\mathclose{}\\ mean the cardinality of \\A\\. Applied to a number, \\\mathopen{}\left\|x\right\|\mathclose{}\\ means its [absolute value](algebra-basics.llms.md#def-absolute-value), or its [modulus](algebra-complex.llms.md#def-complex-modulus) when \\x\\ is complex. For example, \\\mathopen{}\left\|\mathopen{}\left\\-3\right\\\mathclose{}\right\|\mathclose{} = 1\\, but \\\mathopen{}\left\|-3\right\|\mathclose{} = 3\\.

> **NOTE:**
>
> **Example 14 (Finite and infinite sets)**  
>
> - \\\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\\ is finite, with \\\mathopen{}\left\|\mathopen{}\left\\2, 4, 6\right\\\mathclose{}\right\|\mathclose{} = 3\\.
> - \\\mathopen{}\left\\1, 1, 2\right\\\mathclose{} = \mathopen{}\left\\1, 2\right\\\mathclose{}\\, so \\\mathopen{}\left\|\mathopen{}\left\\1, 1, 2\right\\\mathclose{}\right\|\mathclose{} = 2\\: a repeated listing does not count twice.
> - \\\emptyset\\ is finite, with \\\mathopen{}\left\|\emptyset\right\|\mathclose{} = 0\\.
> - The natural numbers \\\mathbb{N}= \mathopen{}\left\\1, 2, 3, \ldots\right\\\mathclose{}\\ are infinite: for any \\n\\, a list \\a_1, \ldots, a_n\\ of natural numbers misses the natural number \\a_1 + \cdots + a_n + 1\\, which is larger than every number in the list.

> **NOTE:**
>
> **Definition 22 (Infinite set)** A set that is not finite ([Definition 20](#def-finite-set)) is **infinite**.

> **NOTE:**
>
> **Definition 23 (Countable set)** A set is **countable** if it is finite ([Definition 20](#def-finite-set)), or if its elements can be listed as a sequence ([Definition 17](#def-sequence)) \\a_1, a_2, a_3, \ldots\\ in which every element appears.

> **NOTE:**
>
> **Definition 24 (Countably infinite set)** A set is **countably infinite** if it is [countable](#def-countable-set) and not finite.

> **NOTE:**
>
> **Example 15 (Countable and uncountable sets)**  
>
> - \\\mathopen{}\left\\1, 2, 3, 4, 5, 6\right\\\mathclose{}\\ is countable, because it is finite.
> - The [non-negative integers](number-systems.llms.md#def-nonnegative-integers) \\\mathopen{}\left\\0, 1, 2, \ldots\right\\\mathclose{}\\ are countably infinite: the sequence \\0, 1, 2, \ldots\\ lists them.
> - The [integers](number-systems.llms.md#def-integers) are countably infinite too: the sequence \\0, 1, -1, 2, -2, 3, -3, \ldots\\ lists every one of them.

> **NOTE:**
>
> **Theorem 1 (The unit interval is not countable)** The interval \\\[0, 1\]\\ is not [countable](#def-countable-set).

> **NOTE:**
>
> *Remark 8* (Cantor’s diagonal argument). The standard [proof](proof-writing.llms.md#def-proof) is Cantor’s diagonal argument: given any sequence of numbers in \\\[0, 1\]\\, it builds a number in \\\[0, 1\]\\ whose [decimal expansion](number-systems.llms.md#def-real-numbers) differs from the \\n\\th number’s in the \\n\\th digit (its \\n\\th decimal place, one of \\0, 1, \ldots, 9\\), so the sequence misses it (see [Wikipedia: Cantor’s diagonal argument](https://en.wikipedia.org/wiki/Cantor%27s_diagonal_argument)). One way to choose the \\n\\th digit is to use \\5\\, unless the \\n\\th number’s \\n\\th digit is \\5\\, in which case use \\4\\. For example, if the sequence starts \\0.1234\ldots\\, \\0.3579\ldots\\, \\0.2468\ldots\\, the diagonal digits are \\1\\, \\5\\, and \\6\\, so the new number starts \\0.545\ldots\\, which differs from the first number in the first digit, from the second in the second digit, and from the third in the third digit.

## References

Halmos, Paul R. 1974. *Naive Set Theory*. Undergraduate Texts in Mathematics. Springer. <https://doi.org/10.1007/978-1-4757-1645-0>.

Back to top
