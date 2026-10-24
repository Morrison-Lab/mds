# Vectors

Code

Published

Last modified: 2026-10-23 23:07:54 (PDT)

## 1 Vectors

> **NOTE:**
>
> **Exercise 1 (Store a data point as one object)** A house has a floor area of \\120\\ square meters, \\3\\ bedrooms, and an age of \\15\\ years.
>
> 1.  Write these three numbers as a single vertical list \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, in the order given, and call its entries \\x_1\\, \\x_2\\ and \\x_3\\. What is \\x_2\\?
> 2.  Does the list \\(3, 120, 15)\\ describe the same house?

> **NOTE:**
>
> *Solution 1*.
>
> 1.  Stacking the three numbers in order gives
>
>     \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \begin{bmatrix} 120 \\ 3 \\ 15 \end{bmatrix}, \\
>
>     so \\x_2 = 3\\, the number of bedrooms.
>
> 2.  No. The list \\(3, 120, 15)\\ would describe a house with \\3\\ square meters of floor area and \\120\\ bedrooms. An entry’s position says what it measures, so the order of the entries matters.

> **NOTE:**
>
> **Definition 1 (Column vector)** A **column vector** [\[1\]](#ref-wikipedia_row_and_column_vectors) of length \\p\\ is an ordered list of \\p\\ [real numbers](number-systems.llms.md#def-real-numbers), written vertically as a \\p \times 1\\ array:
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \begin{bmatrix} x\_{1} \\ x\_{2} \\ \vdots \\ x\_{p} \end{bmatrix} \\

> **NOTE:**
>
> *Remark 1* (Vectors are columns by default). In these notes, as in most statistics textbooks, a vector is a column vector unless stated otherwise. A vector written inline as a list in parentheses is still a column vector: for example, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (2, -1, 5)\\ means
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \begin{bmatrix} 2 \\ -1 \\ 5 \end{bmatrix}. \\

> **NOTE:**
>
> *Remark 2* (Why the vector mark sits under the symbol). In these notes, the mark that shows a symbol is a vector is a tilde under the letter, as in \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\. Many books instead use a bold letter or an arrow over the letter. We chose a mark underneath because bold letters are hard to write by hand on a board, and because the space above a letter is already used by the hat that marks an estimated value, as in \\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}}\\. The [notation choices page](https://morrison-lab.github.io/macros/notation-choices.html#sec-vector-mark) gives the full reasons and an example of an estimated vector.

> **NOTE:**
>
> **Definition 2 (The set \\\mathbb{R}^p\\)** For a positive [integer](number-systems.llms.md#def-integers) \\p\\, \\\mathbb{R}^p\\ is the set of all [column vectors](#def-column-vector) of length \\p\\ whose entries are [real numbers](number-systems.llms.md#def-real-numbers).

> **NOTE:**
>
> *Remark 3* (Reading \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\). Writing \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\ says, in one symbol, that \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is a column vector with \\p\\ real entries. For example, \\(1, -2, 0.5) \in \mathbb{R}^3\\. The vector \\(1, 2)\\ is not in \\\mathbb{R}^3\\, because it has only \\2\\ entries; it is in \\\mathbb{R}^2\\. In [Exercise 1](#exr-list-as-vector), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^3\\.

> **NOTE:**
>
> **Definition 3 (Scalar)** In linear algebra, a **scalar** [\[2\]](#ref-wikipedia_scalar_mathematics) is a single [real number](number-systems.llms.md#def-real-numbers), as opposed to a vector or a matrix, which holds several numbers.

> **NOTE:**
>
> **Example 1 (Scalars and a vector)** The numbers \\5\\ and \\-0.2\\ are scalars. The column vector \\(5, -0.2)\\ is not a scalar: it has \\2\\ entries, so it is in \\\mathbb{R}^2\\ ([Definition 2](#def-real-coordinate-space)), and each of its \\2\\ entries is a scalar.

> **NOTE:**
>
> **Definition 4 (Real-valued function, scalar-valued function)** A [function](functions.llms.md#def-function) \\f : A \to \mathbb{R}\\, whose values are numbers, is **real-valued** (also called **scalar-valued**, since its values are [scalars](#def-scalar)).

> **NOTE:**
>
> **Definition 5 (Vector-valued function)** A function \\f : A \to \mathbb{R}^m\\, whose values are vectors ([Definition 2](#def-real-coordinate-space)), is **vector-valued**.

> **NOTE:**
>
> **Example 2 (A real-valued and a vector-valued function)** On \\\mathbb{R}^2\\, \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1 + x_2\\ is real-valued and \\g(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \begin{bmatrix}x_1 + x_2 \\ x_1 - x_2\end{bmatrix}\\ is vector-valued:
>
> \\ f\mathopen{}\left(\begin{bmatrix}3 \\ 4\end{bmatrix}\right)\mathclose{} = 3 + 4 = 7, \qquad g\mathopen{}\left(\begin{bmatrix}3 \\ 4\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}3 + 4 \\ 3 - 4\end{bmatrix} = \begin{bmatrix}7 \\ -1\end{bmatrix} \\

> **NOTE:**
>
> **Definition 6 (Transpose)** The **transpose** of a column vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is the row vector with the same [sequence](functions.llms.md#def-sequence) of entries, written horizontally:
>
> \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \equiv \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}' \equiv \[x_1,\\ x_2,\\ \ldots,\\ x_p\] \\

> **NOTE:**
>
> **Example 3 (Transposing a column vector)** The transpose of the column vector with entries \\2\\, \\-1\\, \\5\\ is the row vector with the same entries:
>
> \\ {\begin{bmatrix} 2 \\ -1 \\ 5 \end{bmatrix}}^{\top} = \[2,\\ -1,\\ 5\]. \\

> **NOTE:**
>
> **Definition 7 (Vector addition)** The **sum** of two column vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ of the same length \\p\\ is the column vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ of length \\p\\ obtained by adding entry by entry:
>
> \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\_i \stackrel{\text{def}}{=}x_i + y_i, \quad i = 1, \ldots, p\\

> **NOTE:**
>
> **Example 4 (Adding two vectors)** \\ \begin{aligned} \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix} + \begin{bmatrix} 4 \\ 5 \\ 6 \end{bmatrix} &= \begin{bmatrix} 1 + 4 \\ 2 + 5 \\ 3 + 6 \end{bmatrix} \\ &= \begin{bmatrix} 5 \\ 7 \\ 9 \end{bmatrix} \end{aligned} \\

> **NOTE:**
>
> **Definition 8 (Dot product)** For any two real-valued vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (x_1, \ldots, x_p)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (y_1, \ldots, y_p)\\ of the same length \\p\\, the **dot product** of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is:
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\stackrel{\text{def}}{=}\sum\_{i=1}^px_i y_i \tag{1}\\

See also the definitions in:

- Dobson and Barnett [\[3\]](#ref-dobson4e), Section 1.3 (equation 1.1, page 7)

- Kaplan [\[4\]](#ref-mosaiccalc), chapter on vectors

- [wikipedia](https://en.wikipedia.org/wiki/Linear_combination)

The dot product has a different generalization for two matrices; see [wikipedia](https://en.wikipedia.org/wiki/Dot_product#Dyadics_and_matrices) for more.

> **NOTE:**
>
> **Example 5 (A dot product)** For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 2, 3)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (4, 5, 6)\\:
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} &= 1 \cdot 4 + 2 \cdot 5 + 3 \cdot 6 && \text{(definition of the dot product)} \\ &= 4 + 10 + 18 && \text{(multiply)} \\ &= 32 && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> **Definition 9 (Linear combination)** A **linear combination** of the numbers \\a_1, \ldots, a_k\\ with coefficients \\c_1, \ldots, c_k\\ is the [sum](algebra-sums.llms.md#def-summation)
>
> \\c_1 a_1 + \cdots + c_k a_k = \sum\_{i=1}^{k} c_i a_i\\
>
> A linear combination of vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_k\\ of the same length is defined entry by entry: entry \\j\\ of \\\sum\_{i=1}^{k} c_i \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_i\\ is the linear combination of the \\j\\th entries of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_k\\ with the same coefficients.

> **NOTE:**
>
> **Definition 10 (Coefficients of a linear combination)** The numbers \\c_1, \ldots, c_k\\ in a linear combination ([Definition 9](#def-linear-combination)) \\\sum\_{i=1}^{k} c_i a_i\\ are its **coefficients**.

> **NOTE:**
>
> **Example 6 (Coefficients of a linear combination of numbers)** The linear combination of the numbers \\4\\ and \\5\\ with coefficients \\2\\ and \\3\\ is \\2 \cdot 4 + 3 \cdot 5 = 8 + 15 = 23\\.

> **NOTE:**
>
> **Definition 11 (Weighted sum)** A **weighted sum** of the [numbers](number-systems.llms.md#def-real-numbers) \\a_1, \ldots, a_k\\ is a [linear combination](#def-linear-combination) of them, with [coefficients](#def-lincom-coefficient) \\w_1, \ldots, w_k\\:
>
> \\w_1 a_1 + \cdots + w_k a_k = \sum\_{i=1}^{k} w_i a_i\\
>
> Multiply each \\a_i\\ by its coefficient \\w_i\\, then add.

> **NOTE:**
>
> **Definition 12 (Weight)** The [coefficients](#def-lincom-coefficient) \\w_1, \ldots, w_k\\ of a [weighted sum](#def-weighted-sum) \\\sum\_{i=1}^{k} w_i a_i\\ are called its **weights**. The weight \\w_i\\ says how much \\a_i\\ counts.

> **NOTE:**
>
> **Example 7 (The total price of a shopping basket)** A basket holds \\3\\ items that cost \\\\2\\ each and \\2\\ items that cost \\\\5\\ each. The total price is the [weighted sum](#def-weighted-sum) of the prices \\2\\ and \\5\\ with [weights](#def-weight) \\3\\ and \\2\\, the count of items at each price:
>
> \\ \begin{aligned} 3 \cdot 2 + 2 \cdot 5 &= 6 + 10 && \text{(multiply each price by its weight)} \\ &= 16 && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> **Definition 13 (Weighted average, weighted mean)** A **weighted average** (or **weighted mean**) of the [numbers](number-systems.llms.md#def-real-numbers) \\a_1, \ldots, a_k\\ is a [weighted sum](#def-weighted-sum) of them whose [weights](#def-weight) \\w_1, \ldots, w_k\\ are non-negative and add to \\1\\:
>
> \\ \sum\_{i=1}^{k} w_i a_i \quad\text{with}\quad w_i \ge 0 \text{ for each } i \quad\text{and}\quad \sum\_{i=1}^{k} w_i = 1 \\
>
> An \\a_i\\ with a larger [weight](#def-weight) counts for more.

> **NOTE:**
>
> **Example 8 (A course grade)** A course grade counts the midterm for \\1/4\\ and the final for \\3/4\\. A student scores \\70\\ on the midterm and \\90\\ on the final. The [weights](#def-weight) \\1/4\\ and \\3/4\\ are non-negative and add to \\1\\, so the grade is a [weighted average](#def-weighted-average) of \\70\\ and \\90\\:
>
> \\ \begin{aligned} \frac{1}{4} \cdot 70 + \frac{3}{4} \cdot 90 &= 17.5 + 67.5 && \text{(multiply each score by its weight)} \\ &= 85 && \text{(add)} \end{aligned} \\
>
> The grade \\85\\ lies between \\70\\ and \\90\\, and nearer to \\90\\, which has the larger [weight](#def-weight).

> **NOTE:**
>
> **Example 9 (A linear combination of two vectors)** The linear combination of \\{(1, 0)}^{\top}\\ and \\{(0, 1)}^{\top}\\ with coefficients \\2\\ and \\3\\ is \\{(2 \cdot 1 + 3 \cdot 0,\\ 2 \cdot 0 + 3 \cdot 1)}^{\top} = {(2, 3)}^{\top}\\.

> **NOTE:**
>
> *Remark 4* (The dot product is a linear combination). The dot product \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is a linear combination ([Definition 9](#def-linear-combination)) of the entries of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, with coefficients \\x_1, \ldots, x_p\\. In [Example 5](#exm-dot-product), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= 1 \cdot 4 + 2 \cdot 5 + 3 \cdot 6\\ is the linear combination of \\4\\, \\5\\, and \\6\\ with coefficients \\1\\, \\2\\, and \\3\\.
>
> The dot product is also the standard *inner product* on \\\mathbb{R}^p\\; “inner product” is the general notion ([Definition 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#def-inner-product), later in these notes), of which the dot product is one example.

> **NOTE:**
>
> **Theorem 1 (Dot product is symmetric)** The dot product is symmetric:
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} &= \sum\_{i=1}^px_i y_i && \text{(definition of the dot product)} \\ &= \sum\_{i=1}^py_i x_i && \text{(products of numbers are symmetric)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(definition of the dot product)} \end{aligned} \\

### 1.1 Special vectors

> **NOTE:**
>
> **Definition 14 (Zero vector)** The **zero vector** \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ of length \\p\\ has all entries equal to zero:
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}= \begin{bmatrix} 0 \\ 0 \\ \vdots \\ 0 \end{bmatrix} \\

> **NOTE:**
>
> *Remark 5* (The zero vector is the additive identity). Adding the zero vector to a vector leaves it unchanged ([Definition 7](#def-vector-addition)): \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ for any vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ of the same length, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ is the [identity element](algebra-sums.llms.md#def-identity-element) for vector addition. For example,
>
> \\ \begin{aligned} (2, -1) + (0, 0) &= (2 + 0, -1 + 0) \\ &= (2, -1). \end{aligned} \\

> **NOTE:**
>
> **Definition 15 (Mean, average)** The **mean** [\[5\]](#ref-wikipedia_arithmetic_mean) (or **average**) of \\n\\ numbers \\y_1, \ldots, y_n\\ is their [sum](algebra-sums.llms.md#def-summation) divided by how many there are:
>
> \\\bar{y} \stackrel{\text{def}}{=}\frac{1}{n}\sum\_{i=1}^ny_i\\

> **NOTE:**
>
> **Example 10 (The mean of three numbers)** For \\y_1 = 2\\, \\y_2 = -1\\ and \\y_3 = 5\\:
>
> \\ \begin{aligned} \bar{y} &= \frac{1}{3}\\\mathopen{}\left(2 + (-1) + 5\right)\mathclose{} && \text{(definition of the mean, with } n = 3 \text{)} \\ &= \frac{1}{3} \cdot 6 && \text{(add)} \\ &= 2 && \text{(multiply)} \end{aligned} \\

> **NOTE:**
>
> *Remark 6* (The sample mean estimates the population mean). When the numbers are observed data values, \\\bar{y}\\ is also called the sample mean, an estimator of the [population mean](https://morrison-lab.github.io/pds/expectation.html#def-expectation).

> **NOTE:**
>
> **Definition 16 (Ones vector)** The **ones vector** \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}}\\ of length \\p\\ has all entries equal to one:
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}} = \begin{bmatrix} 1 \\ 1 \\ \vdots \\ 1 \end{bmatrix} \\

> **NOTE:**
>
> **Definition 17 (Sum of the elements of a vector)** The **sum of the elements** of a vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\ is the [sum](algebra-sums.llms.md#def-summation) of its entries:
>
> \\ {s\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}} \stackrel{\text{def}}{=}\sum\_{i=1}^px_i. \\
>
> In words, \\{s\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}}\\ is the entries of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ added together.

> **NOTE:**
>
> **Example 11 (The sum of the elements of a vector with three entries)** For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (2, -1, 5)\\,
>
> \\ \begin{aligned} {s\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}} &= 2 + (-1) + 5 && \text{(definition of the sum of the elements, with } p = 3 \text{)} \\ &= 6. && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 2 (The ones vector sums the entries)** For every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\, the [sum of the elements](#def-sum-of-elements) of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is the [dot product](#def-dot-product) of the [ones vector](#def-ones-vector) with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\:
>
> \\ {s\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}. \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= \sum\_{i=1}^p1 \cdot x_i && \text{(}\href{#def-dot-product}{\text{Definition~8}}\text{, with every entry of } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}} \text{ equal to } 1 \text{)} \\ &= \sum\_{i=1}^px_i && \text{(multiply each entry by } 1 \text{)} \\ &= {s\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}}. && \text{(}\href{#def-sum-of-elements}{\text{Definition~17}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 12 (The ones vector applied to a vector with three entries)** For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (2, -1, 5)\\ and the [ones vector](#def-ones-vector) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}}\\ with three entries,
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= 1 \cdot 2 + 1 \cdot(-1) + 1 \cdot 5 && \text{(}\href{#def-dot-product}{\text{Definition~8}}\text{)} \\ &= 6, && \text{(multiply and add)} \end{aligned} \\
>
> which is \\{s\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}}\\, as in [Example 11](#exm-sum-of-elements). Dividing by \\p = 3\\ gives the [mean](#def-mean) of the entries, \\6 / 3 = 2\\.

> **NOTE:**
>
> **Definition 18 (Indicator vector, standard basis vector)** The \\j\\-th **indicator vector** (or **standard basis vector** [\[6\]](#ref-wikipedia_standard_basis) ) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\\ of length \\p\\ has a \\1\\ in position \\j\\ and \\0\\s elsewhere:
>
> \\ (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\_i = \begin{cases} 1 & \text{if } i = j \\ 0 & \text{if } i \neq j \end{cases} \qquad \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j = \begin{bmatrix} 0 \\ \vdots \\ 0 \\ 1 \\ 0 \\ \vdots \\ 0 \end{bmatrix} \leftarrow \text{position } j \\

> **NOTE:**
>
> *Remark 7* (Indicator vectors build every vector). For \\p = 3\\, the indicator vectors are \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1 = (1, 0, 0)\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_2 = (0, 1, 0)\\, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_3 = (0, 0, 1)\\. Every vector of length \\3\\ is a weighted sum \\c_1\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1 + c_2\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_2 + c_3\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_3\\ of them, with weights equal to its entries; for example, \\(2, -1, 5) = 2\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1 - 1\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_2 + 5\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_3\\. No other weights work: entry \\j\\ of \\c_1\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1 + c_2\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_2 + c_3\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_3\\ is \\c_j\\, so each weight \\c_j\\ must equal entry \\j\\ of the vector.

> **NOTE:**
>
> **Theorem 3 (Indicator vectors select entries)** For any vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ of length \\p\\ and any \\j \in \\1, \ldots, p\\\\:
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= x_j\\

> **NOTE:**
>
> *Proof*. Writing the dot product componentwise:
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= \sum\_{i=1}^p(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\_i\\ x_i && \text{(definition of the dot product)} \\&= \sum\_{i=1}^p \begin{cases} 1 \cdot x_i & \text{if } i = j \\ 0 \cdot x_i & \text{if } i \neq j \end{cases} && \text{(definition of } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j \text{)} \\&= x_j && \text{(only the } i = j \text{ term is nonzero)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 4 (A vector is a linear combination of indicator vectors)** Every vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\ is the linear combination ([Definition 9](#def-linear-combination)) of the indicator vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_p\\ ([Definition 18](#def-indicator-vector)) with coefficients \\x_1, \ldots, x_p\\:
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \sum\_{j=1}^px_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\\

> **NOTE:**
>
> *Proof*. Compare the two sides entry by entry. For each \\i \in \\1, \ldots, p\\\\:
>
> \\ \begin{aligned} \mathopen{}\left(\sum\_{j=1}^px_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\right)\mathclose{}\_i &= \sum\_{j=1}^px_j (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\_i && \text{(}\href{#def-linear-combination}{\text{Definition~9}}\text{, entry by entry)} \\&= \sum\_{j=1}^p \begin{cases} x_j \cdot 1 & \text{if } j = i \\ x_j \cdot 0 & \text{if } j \neq i \end{cases} && \text{(}\href{#def-indicator-vector}{\text{Definition~18}}\text{)} \\&= x_i \cdot 1 + \sum\_{j \neq i} x_j \cdot 0 && \text{(split off the } j = i \text{ term)} \\&= x_i + 0 && \text{(times } 1 \text{ changes nothing; times } 0 \text{ gives } 0 \text{)} \\&= x_i && \text{(adding } 0 \text{ changes nothing)} \end{aligned} \\

> **NOTE:**
>
> **Example 13 (Expanding a vector in indicator vectors)** \\ \begin{aligned} \begin{bmatrix}4 \\ -1 \\ 2\end{bmatrix} &= 4 \begin{bmatrix}1 \\ 0 \\ 0\end{bmatrix} + (-1) \begin{bmatrix}0 \\ 1 \\ 0\end{bmatrix} + 2 \begin{bmatrix}0 \\ 0 \\ 1\end{bmatrix} \\ &= 4 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1 - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_2 + 2 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_3 \end{aligned} \\

### 1.2 Orthogonality

> **NOTE:**
>
> **Definition 19 (Orthogonal vectors)** Two vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ of the same length are **orthogonal** [\[7\]](#ref-wikipedia_orthogonality) (written \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\perp \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\) if their dot product ([Definition 8](#def-dot-product)) is zero:
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\perp \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\iff \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= 0\\

> **NOTE:**
>
> *Remark 8* (Orthogonal means perpendicular). Orthogonality extends the geometric idea of perpendicular lines to vectors with any number of entries. In the plane, \\(1, 2)\\ and \\(-2, 1)\\ are perpendicular, and their dot product is \\1 \cdot(-2) + 2 \cdot 1 = 0\\. The same test works in \\\mathbb{R}^3\\, where pictures are harder to draw:
>
> \\ \begin{aligned} (1, 1, 0) \cdot (1, -1, 5) &= 1 - 1 + 0 \\ &= 0, \end{aligned} \\
>
> so \\(1, 1, 0) \perp (1, -1, 5)\\.

> **NOTE:**
>
> **Example 14 (Vectors that are not orthogonal)** \\ \begin{aligned} (1, 2) \cdot (1, 1) &= 1 \cdot 1 + 2 \cdot 1 \\ &= 3 \\ &\ne 0, \end{aligned} \\
>
> so \\(1, 2)\\ and \\(1, 1)\\ are not orthogonal.

> **NOTE:**
>
> **Definition 20 (Euclidean norm (length, \\L_2\\ norm))** The **Euclidean norm** [\[8\]](#ref-wikipedia_euclidean_vector) (or **length**, also called the **\\L_2\\ norm** and written \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_2\\) of a vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ of length \\p\\ is
>
> \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \stackrel{\text{def}}{=}\sqrt{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} = \sqrt{\sum\_{i=1}^px_i^2} \tag{2}\\
>
> where \\\sqrt{\cdot}\\ is the [square root](algebra-basics.llms.md#def-square-root).

> **NOTE:**
>
> **Example 15 (The length of a vector)** For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (3, 4)\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} &= \sqrt{3^2 + 4^2} && \text{(definition of the norm)} \\ &= \sqrt{25} && \text{(square and add)} \\ &= 5 \end{aligned} \\
>
> The vector \\(0.6, 0.8)\\ has norm \\\sqrt{0.36 + 0.64} = 1\\.

> **NOTE:**
>
> **Definition 21 (Unit vector)** A **unit vector** [\[9\]](#ref-wikipedia_unit_vector) is a vector whose Euclidean norm ([Definition 20](#def-euclidean-norm)) is \\1\\. A unit vector is said to have *unit length*.

> **NOTE:**
>
> **Example 16 (A unit vector and a vector that is not one)** For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (0.6, 0.8)\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} &= \sqrt{0.6^2 + 0.8^2} && \text{(definition of the norm)} \\ &= \sqrt{0.36 + 0.64} && \text{(square)} \\ &= \sqrt{1} && \text{(add)} \\ &= 1 && \text{(take the square root)} \end{aligned} \\
>
> so \\(0.6, 0.8)\\ is a unit vector. The vector \\(1, 1)\\ is not:
>
> \\ \begin{aligned} \mathopen{}\left\lVert(1, 1)\right\rVert\mathclose{} &= \sqrt{1^2 + 1^2} \\ &= \sqrt{2} \\ &\ne 1. \end{aligned} \\

> **NOTE:**
>
> **Exercise 2 (How far apart are two points?)** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 2)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (4, 6)\\.
>
> 1.  Compute the vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\.
> 2.  Compute the length of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, using the [Euclidean norm](#def-euclidean-norm).
> 3.  Is the result the same if you compute the length of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ instead?

> **NOTE:**
>
> *Solution 2*.
>
> 1.  \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}&= (1 - 4, 2 - 6) \\ &= (-3, -4). \end{aligned} \\
>
> 2.  \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} &= \sqrt{(-3)^2 + (-4)^2} \\ &= \sqrt{25} \\ &= 5. \end{aligned} \\
>
> 3.  \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (3, 4)\\, and
>
>     \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} &= \sqrt{3^2 + 4^2} \\ &= 5. \end{aligned} \\
>
>     Yes, the result is the same.

> **NOTE:**
>
> **Definition 22 (Euclidean distance)** The **Euclidean distance** [\[10\]](#ref-wikipedia_euclidean_distance) between two vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ of length \\p\\ is the [Euclidean norm](#def-euclidean-norm) of their difference:
>
> \\d(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \stackrel{\text{def}}{=}\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} = \sqrt{\sum\_{i=1}^p(x_i - y_i)^2} \tag{3}\\

> **NOTE:**
>
> *Remark 9* (Distance from the origin). The distance from the origin \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ to a vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is the norm of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\:
>
> \\ \begin{aligned} d(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\right\rVert\mathclose{} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \end{aligned} \\
>
> [\[11, p. 39\]](#ref-goodfellow2016deep).
>
> For example, the distance from \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ to \\(3, 4)\\ is \\\mathopen{}\left\lVert(3, 4)\right\rVert\mathclose{} = 5\\, as in [Example 15](#exm-euclidean-norm).

> **NOTE:**
>
> **Definition 23 (Orthonormal vectors)** A set of vectors \\\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_1, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_2, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_k\\\\ is **orthonormal** if the vectors are mutually orthogonal ([Definition 19](#def-orthogonal-vectors)) and each has norm \\1\\ ([Definition 20](#def-euclidean-norm)), that is, [unit length](#def-unit-vector):
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_j = \begin{cases} 1 & \text{if } i = j \\ 0 & \text{if } i \neq j \end{cases}\\

> **NOTE:**
>
> **Example 17 (Indicator vectors are orthonormal)** The indicator vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_2, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_p\\ ([Definition 18](#def-indicator-vector)) form an orthonormal set. By [Theorem 3](#thm-indicator-selection), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\\ is entry \\i\\ of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\\, which is \\1\\ if \\i = j\\ and \\0\\ if \\i \neq j\\. For \\p = 2\\:
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1 &= 1 \cdot 1 + 0 \cdot 0 \\ &= 1, \end{aligned} \\
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_2 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_2 &= 0 \cdot 0 + 1 \cdot 1 \\ &= 1, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_2 &= 1 \cdot 0 + 0 \cdot 1 \\ &= 0. \end{aligned} \\

> **NOTE:**
>
> **Example 18 (Two ways to fail to be orthonormal)**  
>
> - \\(1, 1)\\ and \\(1, -1)\\ are orthogonal, since \\1 \cdot 1 + 1 \cdot(-1) = 0\\, but not orthonormal: \\(1, 1) \cdot (1, 1) = 2 \ne 1\\.
>
> - \\(1, 0)\\ and \\(0.6, 0.8)\\ both have unit length, since \\(1, 0) \cdot (1, 0) = 1\\ and
>
>   \\ \begin{aligned} (0.6, 0.8) \cdot (0.6, 0.8) &= 0.36 + 0.64 \\ &= 1, \end{aligned} \\
>
>   but they are not orthonormal: \\(1, 0) \cdot (0.6, 0.8) = 0.6 \ne 0\\.

> **NOTE:**
>
> **Exercise 3 (Compute an inner product and a norm)** Let
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}= \begin{bmatrix} 3 \\ -1 \\ 2 \end{bmatrix}, \qquad \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \begin{bmatrix} 0 \\ 4 \\ -2 \end{bmatrix}\\
>
> Compute \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ and \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\right\rVert\mathclose{}\_2\\.

> **NOTE:**
>
> *Solution 3*. Multiply entry by entry and add:
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} &=(3)(0) + (-1)(4) + (2)(-2) \\ &= 0 - 4 - 4 \\ &= -8 \end{aligned} \\
>
> For the norm, take the inner product of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\\ with itself first:
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}} &= 3^2 + (-1)^2 + 2^2 \\ &= 9 + 1 + 4 \\ &= 14 \end{aligned} \\
>
> so
>
> \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\right\rVert\mathclose{}\_2 = \sqrt{14} \approx 3.742\\
>
> The inner product came out negative while the norm cannot: a norm is a square root of a sum of squares, so it is never below zero.
>
> Python has both operations built in, and R builds them from `sum`.
>
> ``` python
> import numpy as np
>
> a = np.array([3.0, -1.0, 2.0])
> b = np.array([0.0, 4.0, -2.0])
>
> inner = float(a @ b)
> norm_a = round(float(np.linalg.norm(a)), 3)
>
> print(inner, norm_a)
> #> -8.0 3.742
> ```
>
> ``` downlit
> a <- c(3, -1, 2)
> b <- c(0, 4, -2)
>
> print(c(sum(a * b), round(sqrt(sum(a^2)), 3)))
> #> [1] -8.000  3.742
> ```
>
> Both print -8 and 3.742.

> **TIP:**
>
> Hutchinson’s [Linear Function Basics](https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/#linear_function_basics) (24 min) covers dot products and the Euclidean norm, and goes on to hyperplanes ([Definition 22 in Matrices](linear-algebra-matrices.llms.md#def-hyperplane)) and [level sets](vector-calculus.llms.md#def-level-set) [\[12\]](#ref-hutchinson_wwu_ml_videos). The login for the video site is posted [on Canvas](https://wwu.instructure.com/courses/1906010/modules#module_3922392).

Back to top

## References

\[1\]

Wikipedia contributors, “Row and column vectors — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Row_and_column_vectors>

\[2\]

Wikipedia contributors, “Scalar (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Scalar_(mathematics)>

\[3\]

A. J. Dobson and A. G. Barnett, *An introduction to generalized linear models*, 4th ed. CRC press, 2018. doi: [10.1201/9781315182780](https://doi.org/10.1201/9781315182780).

\[4\]

D. Kaplan, *MOSAIC calculus*. www.mosaic-web.org, 2022. Available: [www.mosaic-web.org](https://www.mosaic-web.org)

\[5\]

Wikipedia contributors, “Arithmetic mean — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Arithmetic_mean>

\[6\]

Wikipedia contributors, “Standard basis — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Standard_basis>

\[7\]

Wikipedia contributors, “Orthogonality — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Orthogonality>

\[8\]

Wikipedia contributors, “Euclidean vector — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Euclidean_vector>

\[9\]

Wikipedia contributors, “Unit vector — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Unit_vector>

\[10\]

Wikipedia contributors, “Euclidean distance — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Euclidean_distance>

\[11\]

I. Goodfellow, Y. Bengio, and A. Courville, *Deep learning*. MIT Press, 2016. Available: <https://www.deeplearningbook.org/>

\[12\]

B. Hutchinson, “DATA 471/571 (machine learning) and CSCI 481/581 (deep learning) video lectures.” Western Washington University. Accessed: Sep. 28, 2026. \[Online\]. Available: <https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/>
