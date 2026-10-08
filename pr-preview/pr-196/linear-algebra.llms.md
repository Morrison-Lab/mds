# Linear Algebra

Code

- [Show All Code](javascript:void(0))

- [Hide All Code](javascript:void(0))

- 

  ------------------------------------------------------------------------

- [View Source](javascript:void(0))

Published

Last modified: 2026-10-08 11:10:29 (PDT)

## 1 Vectors

> **NOTE:**
>
> **Exercise 1 (Store a data point as one object)** A house has a floor area of \\120\\ square meters, \\3\\ bedrooms, and an age of \\15\\ years.
>
> 1.  Write these three numbers as a single vertical list \\\tilde{x}\\, in the order given, and call its entries \\x_1\\, \\x_2\\ and \\x_3\\. What is \\x_2\\?
> 2.  Does the list \\(3, 120, 15)\\ describe the same house?

> **NOTE:**
>
> *Solution 1*.
>
> 1.  Stacking the three numbers in order gives
>
>     \\ \tilde{x}= \begin{bmatrix} 120 \\ 3 \\ 15 \end{bmatrix}, \\
>
>     so \\x_2 = 3\\, the number of bedrooms.
>
> 2.  No. The list \\(3, 120, 15)\\ would describe a house with \\3\\ square meters of floor area and \\120\\ bedrooms. An entry’s position says what it measures, so the order of the entries matters.

> **NOTE:**
>
> **Definition 1 (Column vector)** A **column vector** of length \\p\\ is an ordered list of \\p\\ numbers, written vertically:
>
> \\ \tilde{x}= \begin{bmatrix} x\_{1} \\ x\_{2} \\ \vdots \\ x\_{p} \end{bmatrix} \\

> **NOTE:**
>
> *Remark 1* (Vectors are columns by default). In these notes, as in most statistics textbooks, a vector is a column vector unless stated otherwise. A vector written inline as a list in parentheses is still a column vector: for example, \\\tilde{x}= (2, -1, 5)\\ means
>
> \\ \tilde{x}= \begin{bmatrix} 2 \\ -1 \\ 5 \end{bmatrix}. \\

> **NOTE:**
>
> **Definition 2 (The set \\\mathbb{R}^p\\)** For a positive [integer](notation.llms.md#def-integers) \\p\\, \\\mathbb{R}^p\\ is the set of all [column vectors](#def-column-vector) of length \\p\\ whose entries are [real numbers](notation.llms.md#def-real-numbers).

> **NOTE:**
>
> *Remark 2* (Reading \\\tilde{x}\in \mathbb{R}^p\\). Writing \\\tilde{x}\in \mathbb{R}^p\\ says, in one symbol, that \\\tilde{x}\\ is a column vector with \\p\\ real entries. For example, \\(1, -2, 0.5) \in \mathbb{R}^3\\. The vector \\(1, 2)\\ is not in \\\mathbb{R}^3\\, because it has only \\2\\ entries; it is in \\\mathbb{R}^2\\. In [Exercise 1](#exr-list-as-vector), \\\tilde{x}\in \mathbb{R}^3\\.

> **NOTE:**
>
> **Definition 3 (Scalar)** In linear algebra, a **scalar** is a single [real number](notation.llms.md#def-real-numbers), as opposed to a vector or a matrix, which holds several numbers.

> **NOTE:**
>
> **Example 1 (Scalars and a vector)** The numbers \\5\\ and \\-0.2\\ are scalars. The column vector \\(5, -0.2)\\ is not a scalar: it has \\2\\ entries, so it is in \\\mathbb{R}^2\\ ([Definition 2](#def-real-coordinate-space)), and each of its \\2\\ entries is a scalar.

> **NOTE:**
>
> **Definition 4 (Real-valued (scalar-valued) and vector-valued functions)** A [function](sets-functions.llms.md#def-function) \\f : A \to \mathbb{R}\\, whose values are numbers, is **real-valued** (also called **scalar-valued**, since its values are [scalars](#def-scalar)). A function \\f : A \to \mathbb{R}^m\\, whose values are vectors ([Definition 2](#def-real-coordinate-space)), is **vector-valued**.

> **NOTE:**
>
> **Example 2 (A real-valued and a vector-valued function)** On \\\mathbb{R}^2\\, \\f(\tilde{x}) = x_1 + x_2\\ is real-valued and \\g(\tilde{x}) = \begin{bmatrix}x_1 + x_2 \\ x_1 - x_2\end{bmatrix}\\ is vector-valued:
>
> \\ f\mathopen{}\left(\begin{bmatrix}3 \\ 4\end{bmatrix}\right)\mathclose{} = 3 + 4 = 7, \qquad g\mathopen{}\left(\begin{bmatrix}3 \\ 4\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}3 + 4 \\ 3 - 4\end{bmatrix} = \begin{bmatrix}7 \\ -1\end{bmatrix} \\

> **NOTE:**
>
> **Definition 5 (Transpose)** The **transpose** of a column vector \\\tilde{x}\\ is the row vector with the same [sequence](sets-functions.llms.md#def-sequence) of entries, written horizontally:
>
> \\ {\tilde{x}}^{\top} \equiv \tilde{x}' \equiv \[x_1,\\ x_2,\\ \ldots,\\ x_p\] \\

> **NOTE:**
>
> **Example 3 (Transposing a column vector)** The transpose of the column vector with entries \\2\\, \\-1\\, \\5\\ is the row vector with the same entries:
>
> \\ {\begin{bmatrix} 2 \\ -1 \\ 5 \end{bmatrix}}^{\top} = \[2,\\ -1,\\ 5\]. \\

> **NOTE:**
>
> **Definition 6 (Vector addition)** The **sum** of two column vectors \\\tilde{x}\\ and \\\tilde{y}\\ of the same length \\p\\ is the column vector \\\tilde{x}+ \tilde{y}\\ of length \\p\\ obtained by adding entry by entry:
>
> \\(\tilde{x}+ \tilde{y})\_i \stackrel{\text{def}}{=}x_i + y_i, \quad i = 1, \ldots, p\\

> **NOTE:**
>
> **Example 4 (Adding two vectors)** \\ \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix} + \begin{bmatrix} 4 \\ 5 \\ 6 \end{bmatrix} = \begin{bmatrix} 1 + 4 \\ 2 + 5 \\ 3 + 6 \end{bmatrix} = \begin{bmatrix} 5 \\ 7 \\ 9 \end{bmatrix} \\

> **NOTE:**
>
> **Definition 7 (Dot product)** For any two real-valued vectors \\\tilde{x}= (x_1, \ldots, x_p)\\ and \\\tilde{y}= (y_1, \ldots, y_p)\\ of the same length \\p\\, the **dot product** of \\\tilde{x}\\ and \\\tilde{y}\\ is:
>
> \\\tilde{x}\cdot \tilde{y}= \tilde{x}^\top \tilde{y}\stackrel{\text{def}}{=}\sum\_{i=1}^px_i y_i \tag{1}\\

See also the definitions in:

- Dobson and Barnett ([2018](#ref-dobson4e)), Section 1.3 (equation 1.1, page 7)

- Kaplan ([2022](#ref-mosaiccalc)), chapter on vectors

- [wikipedia](https://en.wikipedia.org/wiki/Linear_combination)

The dot product has a different generalization for two matrices; see [wikipedia](https://en.wikipedia.org/wiki/Dot_product#Dyadics_and_matrices) for more.

> **NOTE:**
>
> **Example 5 (A dot product)** For \\\tilde{x}= (1, 2, 3)\\ and \\\tilde{y}= (4, 5, 6)\\:
>
> \\ \begin{aligned} \tilde{x}\cdot \tilde{y} &= 1 \cdot 4 + 2 \cdot 5 + 3 \cdot 6 && \text{(definition of the dot product)} \\ &= 4 + 10 + 18 && \text{(multiply)} \\ &= 32 && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> **Definition 8 (Linear combination)** A **linear combination** of the numbers \\a_1, \ldots, a_k\\ with **coefficients** \\c_1, \ldots, c_k\\ is the weighted sum
>
> \\c_1 a_1 + \cdots + c_k a_k = \sum\_{i=1}^k c_i a_i\\
>
> A linear combination of vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ of the same length is defined entry by entry: entry \\j\\ of \\\sum\_{i=1}^k c_i \tilde{v}\_i\\ is the linear combination of the \\j\\th entries of \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ with the same coefficients. For example, the linear combination of \\{(1, 0)}^{\top}\\ and \\{(0, 1)}^{\top}\\ with coefficients \\2\\ and \\3\\ is \\{(2 \cdot 1 + 3 \cdot 0,\\ 2 \cdot 0 + 3 \cdot 1)}^{\top} = {(2, 3)}^{\top}\\.

> **NOTE:**
>
> *Remark 3* (The dot product is a linear combination). The dot product \\\tilde{x}\cdot \tilde{y}\\ is a linear combination ([Definition 8](#def-linear-combination)) of the entries of \\\tilde{y}\\, with coefficients \\x_1, \ldots, x_p\\. In [Example 5](#exm-dot-product), \\\tilde{x}\cdot \tilde{y}= 1 \cdot 4 + 2 \cdot 5 + 3 \cdot 6\\ is the linear combination of \\4\\, \\5\\, and \\6\\ with coefficients \\1\\, \\2\\, and \\3\\.
>
> The dot product is also the standard *inner product* on \\\mathbb{R}^p\\; “inner product” is the general notion ([Definition 55](#def-inner-product), later on this page), of which the dot product is one example.

> **NOTE:**
>
> **Theorem 1 (Dot product is symmetric)** The dot product is symmetric:
>
> \\\tilde{x}\cdot \tilde{y}= \tilde{y}\cdot \tilde{x}\\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \tilde{x}\cdot \tilde{y} &= \sum\_{i=1}^px_i y_i && \text{(definition of the dot product)} \\ &= \sum\_{i=1}^py_i x_i && \text{(products of numbers are symmetric)} \\ &= \tilde{y}\cdot \tilde{x} && \text{(definition of the dot product)} \end{aligned} \\

### 1.1 Special vectors

> **NOTE:**
>
> **Definition 9 (Zero vector)** The **zero vector** \\\tilde{0}\\ of length \\p\\ has all entries equal to zero:
>
> \\ \tilde{0}= \begin{bmatrix} 0 \\ 0 \\ \vdots \\ 0 \end{bmatrix} \\

> **NOTE:**
>
> *Remark 4* (The zero vector is the additive identity). Adding the zero vector to a vector leaves it unchanged ([Definition 6](#def-vector-addition)): \\\tilde{x}+ \tilde{0}= \tilde{x}\\ for any vector \\\tilde{x}\\ of the same length, so \\\tilde{0}\\ is the [identity element](algebra.llms.md#def-identity-element) for vector addition. For example, \\(2, -1) + (0, 0) = (2 + 0, -1 + 0) = (2, -1)\\.

> **NOTE:**
>
> **Definition 10 (Mean (average, sample mean))** The **mean** (or **average**) of \\n\\ numbers \\y_1, \ldots, y_n\\ is their [sum](algebra.llms.md#def-summation) divided by how many there are:
>
> \\\bar{y} \stackrel{\text{def}}{=}\frac{1}{n} \sum\_{i=1}^{n} y_i\\
>
> When the numbers are observed data values, \\\bar{y}\\ is also called the **sample mean**.

> **NOTE:**
>
> **Example 6 (The mean of three numbers)** For \\y_1 = 2\\, \\y_2 = -1\\ and \\y_3 = 5\\:
>
> \\ \begin{aligned} \bar{y} &= \frac{1}{3}\\\mathopen{}\left(2 + (-1) + 5\right)\mathclose{} && \text{(definition of the mean, with } n = 3 \text{)} \\ &= \frac{1}{3} \cdot 6 && \text{(add)} \\ &= 2 && \text{(multiply)} \end{aligned} \\

> **NOTE:**
>
> **Definition 11 (Ones vector)** The **ones vector** \\\tilde{1}\\ of length \\p\\ has all entries equal to one:
>
> \\ \tilde{1} = \begin{bmatrix} 1 \\ 1 \\ \vdots \\ 1 \end{bmatrix} \\

> **NOTE:**
>
> *Remark 5* (The ones vector sums the entries). The dot product ([Definition 7](#def-dot-product)) of \\\tilde{1}\\ with \\\tilde{x}\\ is the sum of the entries of \\\tilde{x}\\: \\\tilde{1} \cdot \tilde{x}= \sum\_{i=1}^p1 \cdot x_i = \sum\_{i=1}^px_i\\. For example, for \\\tilde{x}= (2, -1, 5)\\, \\\tilde{1} \cdot \tilde{x}= 2 + (-1) + 5 = 6\\, and dividing by the length \\p = 3\\ gives the [mean](#def-mean) of the entries, \\6 / 3 = 2\\.

> **NOTE:**
>
> **Definition 12 (Indicator vector (standard basis vector))** The \\j\\-th **indicator vector** (or **standard basis vector**) \\\tilde{e}\_j\\ of length \\p\\ has a \\1\\ in position \\j\\ and \\0\\s elsewhere:
>
> \\ (\tilde{e}\_j)\_i = \begin{cases} 1 & \text{if } i = j \\ 0 & \text{if } i \neq j \end{cases} \qquad \tilde{e}\_j = \begin{bmatrix} 0 \\ \vdots \\ 0 \\ 1 \\ 0 \\ \vdots \\ 0 \end{bmatrix} \leftarrow \text{position } j \\

> **NOTE:**
>
> *Remark 6* (Indicator vectors build every vector). For \\p = 3\\, the indicator vectors are \\\tilde{e}\_1 = (1, 0, 0)\\, \\\tilde{e}\_2 = (0, 1, 0)\\, and \\\tilde{e}\_3 = (0, 0, 1)\\. Every vector of length \\3\\ is a weighted sum \\c_1\tilde{e}\_1 + c_2\tilde{e}\_2 + c_3\tilde{e}\_3\\ of them, with weights equal to its entries; for example, \\(2, -1, 5) = 2\tilde{e}\_1 - 1\tilde{e}\_2 + 5\tilde{e}\_3\\. No other weights work: entry \\j\\ of \\c_1\tilde{e}\_1 + c_2\tilde{e}\_2 + c_3\tilde{e}\_3\\ is \\c_j\\, so each weight \\c_j\\ must equal entry \\j\\ of the vector.

> **NOTE:**
>
> **Theorem 2 (Indicator vectors select entries)** For any vector \\\tilde{x}\\ of length \\p\\ and any \\j \in \\1, \ldots, p\\\\:
>
> \\\tilde{e}\_j \cdot \tilde{x}= x_j\\

> **NOTE:**
>
> *Proof*. Writing the dot product componentwise:
>
> \\ \begin{aligned} \tilde{e}\_j \cdot \tilde{x} &= \sum\_{i=1}^{p} (\tilde{e}\_j)\_i\\ x_i && \text{(definition of the dot product)} \\&= \sum\_{i=1}^{p} \begin{cases} 1 \cdot x_i & \text{if } i = j \\ 0 \cdot x_i & \text{if } i \neq j \end{cases} && \text{(definition of } \tilde{e}\_j \text{)} \\&= x_j && \text{(only the } i = j \text{ term is nonzero)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 3 (A vector is a linear combination of indicator vectors)** Every vector \\\tilde{x}\in \mathbb{R}^p\\ is the linear combination ([Definition 8](#def-linear-combination)) of the indicator vectors \\\tilde{e}\_1, \ldots, \tilde{e}\_p\\ ([Definition 12](#def-indicator-vector)) with coefficients \\x_1, \ldots, x_p\\:
>
> \\\tilde{x}= \sum\_{j=1}^{p} x_j \tilde{e}\_j\\

> **NOTE:**
>
> *Proof*. Compare the two sides entry by entry. For each \\i \in \\1, \ldots, p\\\\:
>
> \\ \begin{aligned} \mathopen{}\left(\sum\_{j=1}^{p} x_j \tilde{e}\_j\right)\mathclose{}\_i &= \sum\_{j=1}^{p} x_j (\tilde{e}\_j)\_i && \text{(}\href{#def-linear-combination}{\text{Definition~8}}\text{, entry by entry)} \\&= \sum\_{j=1}^{p} \begin{cases} x_j \cdot 1 & \text{if } j = i \\ x_j \cdot 0 & \text{if } j \neq i \end{cases} && \text{(}\href{#def-indicator-vector}{\text{Definition~12}}\text{)} \\&= x_i \cdot 1 + \sum\_{j \neq i} x_j \cdot 0 && \text{(split off the } j = i \text{ term)} \\&= x_i + 0 && \text{(times } 1 \text{ changes nothing; times } 0 \text{ gives } 0 \text{)} \\&= x_i && \text{(adding } 0 \text{ changes nothing)} \end{aligned} \\

> **NOTE:**
>
> **Example 7 (Expanding a vector in indicator vectors)** \\ \begin{bmatrix}4 \\ -1 \\ 2\end{bmatrix} = 4 \begin{bmatrix}1 \\ 0 \\ 0\end{bmatrix} + (-1) \begin{bmatrix}0 \\ 1 \\ 0\end{bmatrix} + 2 \begin{bmatrix}0 \\ 0 \\ 1\end{bmatrix} = 4 \tilde{e}\_1 - \tilde{e}\_2 + 2 \tilde{e}\_3 \\

### 1.2 Orthogonality

> **NOTE:**
>
> **Definition 13 (Orthogonal vectors)** Two vectors \\\tilde{x}\\ and \\\tilde{y}\\ of the same length are **orthogonal** (written \\\tilde{x}\perp \tilde{y}\\) if their dot product ([Definition 7](#def-dot-product)) is zero:
>
> \\\tilde{x}\perp \tilde{y}\iff \tilde{x}\cdot \tilde{y}= 0\\

> **NOTE:**
>
> *Remark 7* (Orthogonal means perpendicular). Orthogonality extends the geometric idea of perpendicular lines to vectors with any number of entries. In the plane, \\(1, 2)\\ and \\(-2, 1)\\ are perpendicular, and their dot product is \\1 \cdot(-2) + 2 \cdot 1 = 0\\. The same test works in \\\mathbb{R}^3\\, where pictures are harder to draw: \\(1, 1, 0) \cdot (1, -1, 5) = 1 - 1 + 0 = 0\\, so \\(1, 1, 0) \perp (1, -1, 5)\\.

> **NOTE:**
>
> **Example 8 (Vectors that are not orthogonal)** \\(1, 2) \cdot (1, 1) = 1 \cdot 1 + 2 \cdot 1 = 3 \ne 0\\, so \\(1, 2)\\ and \\(1, 1)\\ are not orthogonal.

> **NOTE:**
>
> **Definition 14 (Euclidean norm (length, \\L_2\\ norm))** The **Euclidean norm** (or **length**, also called the **\\L_2\\ norm** and written \\\lVert \tilde{x}\rVert_2\\) of a vector \\\tilde{x}\\ of length \\p\\ is
>
> \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \stackrel{\text{def}}{=}\sqrt{\tilde{x}\cdot \tilde{x}} = \sqrt{\sum\_{i=1}^px_i^2} \tag{2}\\
>
> where \\\sqrt{\cdot}\\ is the [square root](algebra.llms.md#def-square-root).

> **NOTE:**
>
> **Example 9 (The length of a vector)** For \\\tilde{x}= (3, 4)\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} &= \sqrt{3^2 + 4^2} && \text{(definition of the norm)} \\ &= \sqrt{25} && \text{(square and add)} \\ &= 5 \end{aligned} \\
>
> The vector \\(0.6, 0.8)\\ has norm \\\sqrt{0.36 + 0.64} = 1\\.

> **NOTE:**
>
> **Definition 15 (Unit vector)** A **unit vector** is a vector whose Euclidean norm ([Definition 14](#def-euclidean-norm)) is \\1\\. A unit vector is said to have *unit length*.

> **NOTE:**
>
> **Example 10 (A unit vector and a vector that is not one)** For \\\tilde{x}= (0.6, 0.8)\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} &= \sqrt{0.6^2 + 0.8^2} && \text{(definition of the norm)} \\ &= \sqrt{0.36 + 0.64} && \text{(square)} \\ &= \sqrt{1} && \text{(add)} \\ &= 1 && \text{(take the square root)} \end{aligned} \\
>
> so \\(0.6, 0.8)\\ is a unit vector. The vector \\(1, 1)\\ is not: \\\mathopen{}\left\lVert(1, 1)\right\rVert\mathclose{} = \sqrt{1^2 + 1^2} = \sqrt{2} \ne 1\\.

> **NOTE:**
>
> **Exercise 2 (How far apart are two points?)** Let \\\tilde{x}= (1, 2)\\ and \\\tilde{y}= (4, 6)\\.
>
> 1.  Compute the vector \\\tilde{x}- \tilde{y}\\.
> 2.  Compute the length of \\\tilde{x}- \tilde{y}\\, using the [Euclidean norm](#def-euclidean-norm).
> 3.  Is the result the same if you compute the length of \\\tilde{y}- \tilde{x}\\ instead?

> **NOTE:**
>
> *Solution 2*.
>
> 1.  \\\tilde{x}- \tilde{y}= (1 - 4, 2 - 6) = (-3, -4)\\.
>
> 2.  \\\mathopen{}\left\lVert\tilde{x}- \tilde{y}\right\rVert\mathclose{} = \sqrt{(-3)^2 + (-4)^2} = \sqrt{25} = 5\\.
>
> 3.  \\\tilde{y}- \tilde{x}= (3, 4)\\, and \\\mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{} = \sqrt{3^2 + 4^2} = 5\\. Yes, the result is the same.

> **NOTE:**
>
> **Definition 16 (Euclidean distance)** The **Euclidean distance** between two vectors \\\tilde{x}\\ and \\\tilde{y}\\ of length \\p\\ is the [Euclidean norm](#def-euclidean-norm) of their difference:
>
> \\d(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}\mathopen{}\left\lVert\tilde{x}- \tilde{y}\right\rVert\mathclose{} = \sqrt{\sum\_{i=1}^p(x_i - y_i)^2} \tag{3}\\

> **NOTE:**
>
> *Remark 8* (Distance from the origin). The distance from the origin \\\tilde{0}\\ to a vector \\\tilde{x}\\ is the norm of \\\tilde{x}\\: \\d(\tilde{x}, \tilde{0}) = \mathopen{}\left\lVert\tilde{x}- \tilde{0}\right\rVert\mathclose{} = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\ ([Goodfellow et al. 2016, 39](#ref-goodfellow2016deep)).
>
> For example, the distance from \\\tilde{0}\\ to \\(3, 4)\\ is \\\mathopen{}\left\lVert(3, 4)\right\rVert\mathclose{} = 5\\, as in [Example 9](#exm-euclidean-norm).

> **NOTE:**
>
> **Definition 17 (Orthonormal vectors)** A set of vectors \\\\\tilde{x}\_1, \tilde{x}\_2, \ldots, \tilde{x}\_k\\\\ is **orthonormal** if the vectors are mutually orthogonal ([Definition 13](#def-orthogonal-vectors)) and each has norm \\1\\ ([Definition 14](#def-euclidean-norm)), that is, [unit length](#def-unit-vector):
>
> \\\tilde{x}\_i \cdot \tilde{x}\_j = \begin{cases} 1 & \text{if } i = j \\ 0 & \text{if } i \neq j \end{cases}\\

> **NOTE:**
>
> **Example 11 (Indicator vectors are orthonormal)** The indicator vectors \\\tilde{e}\_1, \tilde{e}\_2, \ldots, \tilde{e}\_p\\ ([Definition 12](#def-indicator-vector)) form an orthonormal set. By [Theorem 2](#thm-indicator-selection), \\\tilde{e}\_i \cdot \tilde{e}\_j\\ is entry \\i\\ of \\\tilde{e}\_j\\, which is \\1\\ if \\i = j\\ and \\0\\ if \\i \neq j\\. For \\p = 2\\: \\\tilde{e}\_1 \cdot \tilde{e}\_1 = 1 \cdot 1 + 0 \cdot 0 = 1\\, \\\tilde{e}\_2 \cdot \tilde{e}\_2 = 0 \cdot 0 + 1 \cdot 1 = 1\\, and \\\tilde{e}\_1 \cdot \tilde{e}\_2 = 1 \cdot 0 + 0 \cdot 1 = 0\\.

> **NOTE:**
>
> **Example 12 (Two ways to fail to be orthonormal)**  
>
> - \\(1, 1)\\ and \\(1, -1)\\ are orthogonal, since \\1 \cdot 1 + 1 \cdot(-1) = 0\\, but not orthonormal: \\(1, 1) \cdot (1, 1) = 2 \ne 1\\.
> - \\(1, 0)\\ and \\(0.6, 0.8)\\ both have unit length, since \\(1, 0) \cdot (1, 0) = 1\\ and \\(0.6, 0.8) \cdot (0.6, 0.8) = 0.36 + 0.64 = 1\\, but they are not orthonormal: \\(1, 0) \cdot (0.6, 0.8) = 0.6 \ne 0\\.

> **NOTE:**
>
> **Exercise 3 (Compute an inner product and a norm)** Let
>
> \\\tilde{a} = \begin{bmatrix} 3 \\ -1 \\ 2 \end{bmatrix}, \qquad \tilde{b} = \begin{bmatrix} 0 \\ 4 \\ -2 \end{bmatrix}\\
>
> Compute \\\tilde{a}^\top \tilde{b}\\ and \\\lVert \tilde{a} \rVert_2\\.

> **NOTE:**
>
> *Solution 3*. Multiply entry by entry and add:
>
> \\\tilde{a}^\top \tilde{b} = (3)(0) + (-1)(4) + (2)(-2) = 0 - 4 - 4 = -8\\
>
> For the norm, take the inner product of \\\tilde{a}\\ with itself first:
>
> \\\tilde{a}^\top \tilde{a} = 3^2 + (-1)^2 + 2^2 = 9 + 1 + 4 = 14\\
>
> so
>
> \\\lVert \tilde{a} \rVert_2 = \sqrt{14} \approx 3.742\\
>
> The inner product came out negative while the norm cannot: a norm is a square root of a sum of squares, so it is never below zero.
>
> Python has both operations built in, and R builds them from `sum`.
>
> ``` numberSource
> import numpy as np
>
> a = np.array([3.0, -1.0, 2.0])
> b = np.array([0.0, 4.0, -2.0])
>
> print(a @ b, round(float(np.linalg.norm(a)), 3))
> ```
>
> ``` numberSource
> a <- c(3, -1, 2)
> b <- c(0, 4, -2)
>
> print(c(sum(a * b), round(sqrt(sum(a^2)), 3)))
> #> [1] -8.000  3.742
> ```
>
> Both print \\-8\\ and \\3.742\\.

> **TIP:**
>
> Hutchinson’s [Linear Function Basics](https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/#linear_function_basics) (24 min) covers dot products and the Euclidean norm, and goes on to hyperplanes ([Definition 36](#def-hyperplane), later on this page) and [level sets](vector-calculus.llms.md#def-level-set) ([Hutchinson, n.d.](#ref-hutchinson_wwu_ml_videos)). The login for the video site is posted [on Canvas](https://wwu.instructure.com/courses/1906010/modules#module_3922392).

## 2 Matrices

> **NOTE:**
>
> **Definition 18 (Matrix)** A **matrix** of dimensions \\m \times n\\ is a rectangular array of \\m \cdot n\\ numbers, arranged in \\m\\ rows and \\n\\ columns:
>
> \\ \mathbf{A} = \begin{bmatrix} a\_{11} & a\_{12} & \cdots & a\_{1n} \\ a\_{21} & a\_{22} & \cdots & a\_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ a\_{m1} & a\_{m2} & \cdots & a\_{mn} \end{bmatrix} \\

> **NOTE:**
>
> *Remark 9* (Matrix entries, and vectors as matrices). The entry in row \\i\\ and column \\j\\ of \\\mathbf{A}\\ is written \\a\_{ij}\\ or \\(\mathbf{A})\_{ij}\\. For example, for the \\2 \times 3\\ matrix
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}, \\
>
> \\a\_{12} = 2\\ and \\a\_{23} = 6\\.
>
> A column vector of length \\p\\ is a \\p \times 1\\ matrix, and a row vector of length \\p\\ is a \\1 \times p\\ matrix. For example, the column vector \\(7, 8)\\ is a \\2 \times 1\\ matrix, and the row vector \\\[7,\\ 8\]\\ is a \\1 \times 2\\ matrix.

> **NOTE:**
>
> **Definition 19 (Tensor)** A **tensor** of order \\k \ge 1\\ is an array of numbers with \\k\\ indices, \\ \mathcal{A} = \mathopen{}\left(a\_{i_1 i_2 \cdots i_k}\right)\mathclose{}, \quad i_1 = 1, \ldots, n_1, \\ \ldots, \\ i_k = 1, \ldots, n_k, \\ and its dimensions are \\n_1 \times n_2 \times \cdots \times n_k\\.

> **NOTE:**
>
> **Example 13 (Vectors, matrices and images as tensors)** A vector of length \\p\\ is a tensor of order \\1\\, and an \\m \times n\\ [matrix](#def-matrix) is a tensor of order \\2\\. A \\28 \times 28\\ grayscale image is a matrix: the entry \\a\_{ij}\\ is the brightness of the pixel in row \\i\\ and column \\j\\. A \\28 \times 28\\ color image stores three numbers per pixel (red, green, blue), so it is an order-3 tensor with dimensions \\28 \times 28 \times 3\\, and \\a\_{ijc}\\ is the value of color channel \\c\\ at the pixel in row \\i\\ and column \\j\\. It has \\28 \cdot 28 \cdot 3 = 2352\\ entries.

### 2.1 Matrix transpose

> **NOTE:**
>
> **Definition 20 (Matrix transpose)** The **transpose** of an \\m \times n\\ matrix \\\mathbf{A}\\ is the \\n \times m\\ matrix \\{\mathbf{A}}^{\top}\\ obtained by swapping the rows and columns of \\\mathbf{A}\\:
>
> \\({\mathbf{A}}^{\top})\_{ij} = a\_{ji}\\

> **NOTE:**
>
> **Example 14 (Transposing a \\2 \times 3\\ matrix)** For \\\mathbf{A} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}\\,
>
> \\ {\mathbf{A}}^{\top} = \begin{bmatrix} 1 & 4 \\ 2 & 5 \\ 3 & 6 \end{bmatrix}, \\
>
> a \\3 \times 2\\ matrix. For instance, entry \\(1, 2)\\ of the transpose is \\a\_{21} = 4\\.

### 2.2 Matrix addition

> **NOTE:**
>
> **Definition 21 (Zero matrix)** The \\m \times n\\ **zero matrix** \\\mathbf{0}\_{m \times n}\\ (or \\\mathbf{0}\\ when dimensions are clear from context) has all entries equal to zero:
>
> \\ \mathbf{0}\_{m \times n} = \begin{bmatrix} 0 & 0 & \cdots & 0 \\ 0 & 0 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & 0 \end{bmatrix} \\

> **NOTE:**
>
> **Example 15 (Zero matrices of two shapes)** \\ \mathbf{0}\_{2 \times 3} = \begin{bmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \end{bmatrix}, \qquad \mathbf{0}\_{3 \times 2} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \\ 0 & 0 \end{bmatrix}. \\
>
> Both have all entries \\0\\, but one is \\2 \times 3\\ and the other \\3 \times 2\\, so they are different matrices.

> **NOTE:**
>
> **Definition 22 (Matrix addition)** Two matrices \\\mathbf{A}\\ and \\\mathbf{B}\\ of the same dimensions \\m \times n\\ can be added element-wise; their **matrix sum** is:
>
> \\(\mathbf{A} + \mathbf{B})\_{ij} = a\_{ij} + b\_{ij}\\

> **NOTE:**
>
> **Example 16 (Adding matrices, and a sum that is not defined)** \\ \begin{aligned} \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} + \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix} &= \begin{bmatrix} 1 + 0 & 2 + 1 \\ 3 + 1 & 4 + 0 \end{bmatrix} && \text{(add entry by entry)} \\ &= \begin{bmatrix} 1 & 3 \\ 4 & 4 \end{bmatrix}. && \text{(add)} \end{aligned} \\
>
> A \\2 \times 2\\ matrix and a \\2 \times 3\\ matrix cannot be added: they do not have the same dimensions, so entry \\(1, 3)\\ of the sum would have no first term.

> **NOTE:**
>
> **Theorem 4 (Matrix addition is commutative)** For \\m \times n\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\, matrix addition is [commutative](algebra.llms.md#def-commutative):
>
> \\\mathbf{A} + \mathbf{B} = \mathbf{B} + \mathbf{A}\\

> **NOTE:**
>
> **Theorem 5 (Matrix addition is associative)** For \\m \times n\\ matrices \\\mathbf{A}\\, \\\mathbf{B}\\, and \\\mathbf{C}\\, matrix addition is [associative](algebra.llms.md#def-associative):
>
> \\(\mathbf{A} + \mathbf{B}) + \mathbf{C} = \mathbf{A} + (\mathbf{B} + \mathbf{C})\\

> **NOTE:**
>
> **Theorem 6 (Zero matrix is the additive identity)** For an \\m \times n\\ matrix \\\mathbf{A}\\:
>
> \\\mathbf{A} + \mathbf{0}\_{m \times n} = \mathbf{A}\\

> **NOTE:**
>
> **Theorem 7 (Additive inverse)** For any \\m \times n\\ matrix \\\mathbf{A}\\, the \\m \times n\\ matrix \\-\mathbf{A}\\ (defined by \\(-\mathbf{A})\_{ij} = -a\_{ij}\\) satisfies:
>
> \\\mathbf{A} + (-\mathbf{A}) = \mathbf{0}\_{m \times n}\\

### 2.3 Scalar multiplication

> **NOTE:**
>
> **Definition 23 (Scalar multiplication)** The **scalar multiple** of a matrix \\\mathbf{A}\\ by a scalar \\c\\ is:
>
> \\(c\mathbf{A})\_{ij} = c \cdot a\_{ij}\\

> **NOTE:**
>
> **Example 17 (A scalar multiple)** \\ 3 \begin{bmatrix} 1 & -2 \\ 0 & 4 \end{bmatrix} = \begin{bmatrix} 3 \cdot 1 & 3 \cdot(-2) \\ 3 \cdot 0 & 3 \cdot 4 \end{bmatrix} = \begin{bmatrix} 3 & -6 \\ 0 & 12 \end{bmatrix}. \\

### 2.4 Matrix multiplication

> **NOTE:**
>
> **Definition 24 (Matrix multiplication)** The **product** of an \\m \times k\\ matrix \\\mathbf{A}\\ and a \\k \times n\\ matrix \\\mathbf{B}\\ is the \\m \times n\\ matrix \\\mathbf{C} = \mathbf{A}\mathbf{B}\\ with entries:
>
> \\c\_{ij} = \sum\_{s=1}^{k} a\_{is}\\ b\_{sj}\\

> **NOTE:**
>
> *Remark 10* (Matrix multiplication is not commutative). When \\\mathbf{A}\mathbf{B}\\ and \\\mathbf{B}\mathbf{A}\\ are both defined, they are usually different. For example, with
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix}, \qquad \mathbf{B} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \end{bmatrix}, \\
>
> \\ \mathbf{A}\mathbf{B} = \begin{bmatrix} 3 & 2 \\ 1 & 1 \end{bmatrix} \neq \begin{bmatrix} 1 & 2 \\ 1 & 3 \end{bmatrix} = \mathbf{B}\mathbf{A}. \\

> **NOTE:**
>
> **Example 18 (Dot product as matrix multiplication)** The dot product of two column vectors \\\tilde{x}\\ and \\\tilde{\beta}\\ can be written as a matrix product of the row vector \\{\tilde{x}}^{\top}\\ with the column vector \\\tilde{\beta}\\:
>
> \\ \begin{aligned} \tilde{x}\cdot \tilde{\beta} &= {\tilde{x}}^{\top}\\ \tilde{\beta} \\ &= \[x_1,\\ x_2,\\ \ldots,\\ x_p\] \begin{bmatrix} \beta\_{1} \\ \beta\_{2} \\ \vdots \\ \beta\_{p} \end{bmatrix} \\ &= x_1\beta_1 + x_2\beta_2 + \cdots + x_p \beta_p \end{aligned} \\

> **NOTE:**
>
> **Theorem 8 (Matrix multiplication is associative)** For an \\m \times k\\ matrix \\\mathbf{A}\\, a \\k \times l\\ matrix \\\mathbf{B}\\, and an \\l \times n\\ matrix \\\mathbf{C}\\:
>
> \\ \underbrace{(\mathbf{A}\mathbf{B})\mathbf{C}}\_{m \times n} = \underbrace{\mathbf{A}(\mathbf{B}\mathbf{C})}\_{m \times n} \\

> **NOTE:**
>
> *Proof*. Entry \\(i, j)\\ of each side, from [Definition 24](#def-matrix-mult):
>
> \\ \begin{aligned} \mathopen{}\left\[(\mathbf{A}\mathbf{B})\mathbf{C}\right\]\mathclose{}\_{ij} &= \sum\_{t=1}^{l} (\mathbf{A}\mathbf{B})\_{it}\\ c\_{tj} && \text{(definition of } (\mathbf{A}\mathbf{B})\mathbf{C} \text{)} \\ &= \sum\_{t=1}^{l} \mathopen{}\left(\sum\_{s=1}^{k} a\_{is}\\ b\_{st}\right)\mathclose{} c\_{tj} && \text{(definition of } \mathbf{A}\mathbf{B} \text{)} \\ &= \sum\_{s=1}^{k} a\_{is} \mathopen{}\left(\sum\_{t=1}^{l} b\_{st}\\ c\_{tj}\right)\mathclose{} && \text{(distribute and swap the finite sums)} \\ &= \sum\_{s=1}^{k} a\_{is}\\ (\mathbf{B}\mathbf{C})\_{sj} && \text{(definition of } \mathbf{B}\mathbf{C} \text{)} \\ &= \mathopen{}\left\[\mathbf{A}(\mathbf{B}\mathbf{C})\right\]\mathclose{}\_{ij} && \text{(definition of } \mathbf{A}(\mathbf{B}\mathbf{C}) \text{)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 9 (Matrix multiplication is distributive over addition)** Matrix multiplication [distributes](algebra.llms.md#def-distributive) over addition from the left and from the right. For an \\m \times k\\ matrix \\\mathbf{A}\\ and \\k \times n\\ matrices \\\mathbf{B}\\ and \\\mathbf{C}\\:
>
> \\\mathbf{A}(\mathbf{B} + \mathbf{C}) = \mathbf{A}\mathbf{B} + \mathbf{A}\mathbf{C}\\
>
> For \\m \times k\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\ and a \\k \times n\\ matrix \\\mathbf{C}\\:
>
> \\(\mathbf{A} + \mathbf{B})\mathbf{C} = \mathbf{A}\mathbf{C} + \mathbf{B}\mathbf{C}\\

> **NOTE:**
>
> **Exercise 4 (Which of these products are defined?)** Let \\\mathbf{A}\\ be \\4 \times 3\\, let \\\mathbf{B}\\ be \\3 \times 2\\, and let \\\tilde{x}\in \mathbb{R}^3\\. For each expression, say whether it is defined, and if so give the shape of the result:
>
> 1.  \\\mathbf{A}\mathbf{B}\\
> 2.  \\\mathbf{B}\mathbf{A}\\
> 3.  \\\mathbf{A} \tilde{x}\\
> 4.  \\\tilde{x}^\top \tilde{x}\\
> 5.  \\\tilde{x}\tilde{x}^\top\\

> **NOTE:**
>
> *Solution 4*. A vector in \\\mathbb{R}^3\\ is a \\3 \times 1\\ matrix, so the same rule settles every case.
>
> 1.  \\\mathbf{A}\mathbf{B}\\: \\(4 \times 3)(3 \times 2)\\. The inner pair is \\3\\ and \\3\\, so it is defined, and the result is \\4 \times 2\\.
> 2.  \\\mathbf{B}\mathbf{A}\\: \\(3 \times 2)(4 \times 3)\\. The inner pair is \\2\\ and \\4\\, which do not match, so it is **not defined**. Matrix multiplication is not commutative, and this is the blunt form of that: swapping the order can leave an expression that means nothing.
> 3.  \\\mathbf{A} \tilde{x}\\: \\(4 \times 3)(3 \times 1)\\, defined, result \\4 \times 1\\ — a vector in \\\mathbb{R}^4\\.
> 4.  \\\tilde{x}^\top \tilde{x}\\: \\(1 \times 3)(3 \times 1)\\, defined, result \\1 \times 1\\ — a single number. The product is the inner product of [Equation 1](#eq-inner-product).
> 5.  \\\tilde{x}\tilde{x}^\top\\: \\(3 \times 1)(1 \times 3)\\, defined, result \\3 \times 3\\ — a matrix.
>
> The last two use the same two vectors and differ only in order, and they return objects of different kinds. Reading a transpose as decoration rather than as a shape change is the commonest way to lose track of an expression.

### 2.5 Square and identity matrices

> **NOTE:**
>
> **Definition 25 (Square matrix)** A matrix is **square** if it has the same number of rows as columns.

> **NOTE:**
>
> **Example 19 (Square and not square)** \\\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\ is square (\\2\\ rows, \\2\\ columns); \\\begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}\\ is not (\\2\\ rows, \\3\\ columns).

> **NOTE:**
>
> **Definition 26 (Main diagonal)** The **main diagonal** of an \\m \times n\\ matrix \\\mathbf{A}\\ is the list of its entries \\a\_{11}, a\_{22}, \ldots, a\_{kk}\\, where \\k\\ is the smaller of \\m\\ and \\n\\. These are the **diagonal entries** of \\\mathbf{A}\\; every entry \\a\_{ij}\\ with \\i \ne j\\ is an **off-diagonal entry**.

> **NOTE:**
>
> **Example 20 (Diagonal entries of a square and a non-square matrix)**  
>
> - For \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\, the diagonal entries are \\a\_{11} = 1\\ and \\a\_{22} = 4\\, and the off-diagonal entries are \\a\_{12} = 2\\ and \\a\_{21} = 3\\.
> - For \\\mathbf{B} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}\\, \\m = 2\\ and \\n = 3\\, so \\k = 2\\, and the diagonal entries are \\b\_{11} = 1\\ and \\b\_{22} = 5\\; the other four entries, \\2\\, \\3\\, \\4\\ and \\6\\, are off-diagonal.

> **NOTE:**
>
> **Definition 27 (Identity matrix)** The \\p \times p\\ **identity matrix** \\\mathbf{I}\_p\\ (or \\\mathbf{I}\\ when the size is clear from context) has ones on the [main diagonal](#def-main-diagonal) and zeros elsewhere:
>
> \\ (\mathbf{I}\_p)\_{ij} = \begin{cases} 1 & \text{if } i = j \\ 0 & \text{if } i \neq j \end{cases} \qquad \mathbf{I}\_p = \begin{bmatrix} 1 & 0 & \cdots & 0 \\ 0 & 1 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & 1 \end{bmatrix} \\
>
> Equivalently, the entries of the identity matrix are given by the [Kronecker delta](notation.llms.md#def-kronecker-delta): \\(\mathbf{I}\_p)\_{ij} = \delta\_{ij}\\.

> **NOTE:**
>
> **Example 21 (The \\3 \times 3\\ identity)** \\ \mathbf{I}\_3 = \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix}, \\
>
> so, for instance, \\(\mathbf{I}\_3)\_{22} = 1\\ and \\(\mathbf{I}\_3)\_{23} = 0\\.

> **NOTE:**
>
> **Theorem 10 (Identity matrix is a multiplicative identity)** For any \\m \times p\\ matrix \\\mathbf{A}\\:
>
> \\\mathbf{A}\\\mathbf{I}\_p = \mathbf{A}\\
>
> \\\mathbf{I}\_m\\\mathbf{A} = \mathbf{A}\\

### 2.6 Matrix-vector multiplication

> **NOTE:**
>
> **Definition 28 (Matrix-vector multiplication)** The **matrix-vector product** of an \\m \times p\\ matrix \\\mathbf{A}\\ and a \\p \times 1\\ column vector \\\tilde{x}\\ is the \\m \times 1\\ column vector \\\mathbf{A}\tilde{x}\\ with entries:
>
> \\(\mathbf{A}\tilde{x})\_i = \sum\_{j=1}^{p} a\_{ij}\\ x_j\\

> **NOTE:**
>
> *Remark 11* (Each entry is a dot product). Matrix-vector multiplication extends the dot product ([Definition 7](#def-dot-product)): entry \\i\\ of \\\mathbf{A}\tilde{x}\\ is the dot product of row \\i\\ of \\\mathbf{A}\\ with \\\tilde{x}\\. For example,
>
> \\ \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix} = \begin{bmatrix} 1 \cdot 1 + 2 \cdot(-1) \\ 3 \cdot 1 + 4 \cdot(-1) \end{bmatrix} = \begin{bmatrix} -1 \\ -1 \end{bmatrix}. \\

> **NOTE:**
>
> **Definition 29 (Linear system (system of linear equations))** A **linear system** (or **system of linear equations**) with \\m\\ equations in \\n\\ unknowns is an equation \\\mathbf{A} \tilde{x}= \tilde{b}\\ in which the \\m \times n\\ matrix \\\mathbf{A}\\ and the vector \\\tilde{b} \in \mathbb{R}^m\\ are given. A **solution** of the system is a vector \\\tilde{x}\in \mathbb{R}^n\\ for which \\\mathbf{A} \tilde{x}= \tilde{b}\\ holds.

> **NOTE:**
>
> **Example 22 (Two equations in two unknowns)** By [Definition 28](#def-matvec-mult), row \\i\\ of \\\mathbf{A} \tilde{x}= \tilde{b}\\ is the equation \\a\_{i1} x_1 + \cdots + a\_{in} x_n = b_i\\. So the two equations \\x_1 + 2 x_2 = 5\\ and \\3 x_1 + 4 x_2 = 6\\ form the linear system \\\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \tilde{x}= \begin{bmatrix} 5 \\ 6 \end{bmatrix}\\. The vector \\\tilde{x}= (-4, 4.5)\\ is a solution:
>
> \\ \begin{aligned} \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \begin{bmatrix} -4 \\ 4.5 \end{bmatrix} &= \begin{bmatrix} 1 \cdot(-4) + 2 \cdot 4.5 \\ 3 \cdot(-4) + 4 \cdot 4.5 \end{bmatrix} && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\ &= \begin{bmatrix} -4 + 9 \\ -12 + 18 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 5 \\ 6 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> The vector \\(1, 2)\\ is not a solution: its first equation holds, since \\1 + 2 \cdot 2 = 5\\, but its second gives \\3 \cdot 1 + 4 \cdot 2 = 11 \ne 6\\.

### 2.7 Linear and affine maps

> **NOTE:**
>
> **Definition 30 (Linear map (linear transformation, linear function))** A [function](sets-functions.llms.md#def-function) \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is a **linear map** (also called a **linear transformation** or **linear function**) if it preserves vector addition and scalar multiplication: for all \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\ and \\c \in \mathbb{R}\\,
>
> 1.  \\f(\tilde{x}+ \tilde{y}) = f(\tilde{x}) + f(\tilde{y})\\ (*additivity*)
> 2.  \\f(c\tilde{x}) = c f(\tilde{x})\\ (*homogeneity*)

> **NOTE:**
>
> **Example 23 (A linear map, and two functions that are not)**  
>
> - \\f(\tilde{x}) = (2 x_1,\\ x_1 + x_2)\\ on \\\mathbb{R}^2\\ is linear. For \\\tilde{x}, \tilde{y}\in \mathbb{R}^2\\ and \\c \in \mathbb{R}\\: \\f(\tilde{x}+ \tilde{y}) = (2 (x_1 + y_1),\\ (x_1 + y_1) + (x_2 + y_2)) = f(\tilde{x}) + f(\tilde{y})\\ and \\f(c \tilde{x}) = (2 c x_1,\\ c x_1 + c x_2) = c f(\tilde{x})\\.
> - \\g(x) = x + 1\\ on \\\mathbb{R}\\ is not linear: additivity fails, since \\g(0 + 0) = 1\\ but \\g(0) + g(0) = 2\\.
> - \\h(x) = x^2\\ on \\\mathbb{R}\\ is not linear: \\h(2 \cdot 1) = 4\\ but \\2\\h(1) = 2\\, so \\h(c x) \ne c\\h(x)\\ for \\c = 2\\, \\x = 1\\.

> **NOTE:**
>
> **Definition 31 (Linear operator)** A **linear operator** on \\\mathbb{R}^p\\ is a linear map ([Definition 30](#def-linear-map)) from \\\mathbb{R}^p\\ to itself, that is, a linear map \\f : \mathbb{R}^p \to \mathbb{R}^p\\ whose input and output have the same length. Some authors use “operator” more loosely, for any linear map.

> **NOTE:**
>
> **Example 24 (A linear operator, and a linear map that is not one)** The map \\f(\tilde{x}) = (2 x_1,\\ x_1 + x_2)\\ from [Example 23](#exm-linear-map) sends \\\mathbb{R}^2\\ to \\\mathbb{R}^2\\, so it is a linear operator on \\\mathbb{R}^2\\. The linear map \\g(\tilde{x}) = x_1 + x_2\\ sends \\\mathbb{R}^2\\ to \\\mathbb{R}\\, so it is linear but not an operator: its outputs have length \\1\\, not \\2\\.

> **NOTE:**
>
> **Theorem 11 (A linear map sends zero to zero)** If \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is a linear map ([Definition 30](#def-linear-map)), then \\f(\tilde{0}) = \tilde{0}\\.

> **NOTE:**
>
> *Proof*. On the left, \\\tilde{0}\\ is the zero vector of length \\p\\; on the right, it is the zero vector of length \\m\\.
>
> \\ \begin{aligned} f(\tilde{0}) &= f(0 \cdot\tilde{0}) && \text{(every entry of } 0 \cdot\tilde{0}\text{ is } 0 \cdot 0 = 0 \text{; }\href{#def-scalar-mult}{\text{Definition~23}}\text{)} \\&= 0 \cdot f(\tilde{0}) && \text{(homogeneity, with } c = 0 \text{ and } \tilde{x}= \tilde{0}\text{)} \\&= \tilde{0} && \text{(every entry of } 0 \cdot f(\tilde{0}) \text{ is } 0 \text{; }\href{#def-scalar-mult}{\text{Definition~23}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 25 (Ruling out linearity at zero)** In [Example 23](#exm-linear-map), \\g(x) = x + 1\\ has \\g(0) = 1 \neq 0\\, so by [Theorem 11](#thm-linear-map-zero) it is not linear, without checking additivity or homogeneity.
>
> Sending \\\tilde{0}\\ to \\\tilde{0}\\ is necessary but not sufficient: \\h(x) = x^2\\ in the same example has \\h(0) = 0\\ and is still not linear.

> **NOTE:**
>
> **Theorem 12 (Multiplying by a matrix is a linear map)** For any \\m \times p\\ matrix \\\mathbf{A}\\, the function \\f: \mathbb{R}^p \to \mathbb{R}^m\\ defined by \\f(\tilde{x}) = \mathbf{A}\tilde{x}\\ is a linear map ([Definition 30](#def-linear-map)).

> **NOTE:**
>
> *Proof*. Both conditions are checked one entry at a time. For each \\i \in \\1, \ldots, m\\\\, additivity:
>
> \\ \begin{aligned} \mathopen{}\left(\mathbf{A}(\tilde{x}+ \tilde{y})\right)\mathclose{}\_i &= \sum\_{j=1}^{p} a\_{ij} (\tilde{x}+ \tilde{y})\_j && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\&= \sum\_{j=1}^{p} a\_{ij} (x_j + y_j) && \text{(}\href{#def-vector-addition}{\text{Definition~6}}\text{)} \\&= \sum\_{j=1}^{p} (a\_{ij} x_j + a\_{ij} y_j) && \text{(multiplication distributes over addition)} \\&= \sum\_{j=1}^{p} a\_{ij} x_j + \sum\_{j=1}^{p} a\_{ij} y_j && \text{(a sum of sums splits)} \\&= (\mathbf{A}\tilde{x})\_i + (\mathbf{A}\tilde{y})\_i && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\&= (\mathbf{A}\tilde{x}+ \mathbf{A}\tilde{y})\_i && \text{(}\href{#def-vector-addition}{\text{Definition~6}}\text{)} \end{aligned} \\
>
> and homogeneity:
>
> \\ \begin{aligned} \mathopen{}\left(\mathbf{A}(c\tilde{x})\right)\mathclose{}\_i &= \sum\_{j=1}^{p} a\_{ij} (c\tilde{x})\_j && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\&= \sum\_{j=1}^{p} a\_{ij}\\ c\\ x_j && \text{(}\href{#def-scalar-mult}{\text{Definition~23}}\text{)} \\&= \sum\_{j=1}^{p} c\\ a\_{ij} x_j && \text{(products are symmetric)} \\&= c \sum\_{j=1}^{p} a\_{ij} x_j && \text{(a constant factor comes out of a sum)} \\&= c\\ (\mathbf{A}\tilde{x})\_i && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\&= (c\\ \mathbf{A}\tilde{x})\_i && \text{(}\href{#def-scalar-mult}{\text{Definition~23}}\text{)} \end{aligned} \\
>
> The four algebra rules cited here are on the [algebra page](algebra.llms.md): [distributivity](algebra.llms.md#thm-mult-distr), [a sum of sums](algebra.llms.md#thm-sum-of-sums), [symmetry of products](algebra.llms.md#thm-prod-symmetric), and [a constant factor](algebra.llms.md#thm-sum-constant-factor).

> **NOTE:**
>
> **Theorem 13 (A linear map preserves linear combinations)** If \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is a linear map ([Definition 30](#def-linear-map)), then for any vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k \in \mathbb{R}^p\\ and any coefficients \\c_1, \ldots, c_k \in \mathbb{R}\\:
>
> \\f\mathopen{}\left(\sum\_{j=1}^{k} c_j \tilde{v}\_j\right)\mathclose{} = \sum\_{j=1}^{k} c_j f(\tilde{v}\_j)\\

> **NOTE:**
>
> *Proof*. By [induction](proof-writing.llms.md#def-proof-by-induction) on \\k\\. For \\k = 1\\, the claim \\f(c_1 \tilde{v}\_1) = c_1 f(\tilde{v}\_1)\\ is homogeneity.
>
> Suppose the claim holds for \\k\\ vectors. Then for \\k + 1\\:
>
> \\ \begin{aligned} f\mathopen{}\left(\sum\_{j=1}^{k+1} c_j \tilde{v}\_j\right)\mathclose{} &= f\mathopen{}\left(\sum\_{j=1}^{k} c_j \tilde{v}\_j + c\_{k+1} \tilde{v}\_{k+1}\right)\mathclose{} && \text{(split off the last term)} \\&= f\mathopen{}\left(\sum\_{j=1}^{k} c_j \tilde{v}\_j\right)\mathclose{} + f(c\_{k+1} \tilde{v}\_{k+1}) && \text{(additivity)} \\&= \sum\_{j=1}^{k} c_j f(\tilde{v}\_j) + f(c\_{k+1} \tilde{v}\_{k+1}) && \text{(induction hypothesis)} \\&= \sum\_{j=1}^{k} c_j f(\tilde{v}\_j) + c\_{k+1} f(\tilde{v}\_{k+1}) && \text{(homogeneity)} \\&= \sum\_{j=1}^{k+1} c_j f(\tilde{v}\_j) && \text{(join the last term back on)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 14 (Every linear map is multiplication by a matrix)** If \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is a linear map ([Definition 30](#def-linear-map)), then there is exactly one \\m \times p\\ matrix \\\mathbf{A}\\ such that
>
> \\f(\tilde{x}) = \mathbf{A}\tilde{x}\quad \text{for all } \tilde{x}\in \mathbb{R}^p\\
>
> Column \\j\\ of \\\mathbf{A}\\ is \\f(\tilde{e}\_j)\\, the value of \\f\\ at the \\j\\th indicator vector ([Definition 12](#def-indicator-vector)); that is, \\a\_{ij} = \mathopen{}\left(f(\tilde{e}\_j)\right)\mathclose{}\_i\\.

> **NOTE:**
>
> *Proof*. **Existence.** Let \\\mathbf{A}\\ be the \\m \times p\\ matrix with \\a\_{ij} = \mathopen{}\left(f(\tilde{e}\_j)\right)\mathclose{}\_i\\. For any \\\tilde{x}\in \mathbb{R}^p\\,
>
> \\ \begin{aligned} f(\tilde{x}) &= f\mathopen{}\left(\sum\_{j=1}^{p} x_j \tilde{e}\_j\right)\mathclose{} && \text{(}\href{#thm-standard-basis-expansion}{\text{Theorem~3}}\text{)} \\&= \sum\_{j=1}^{p} x_j f(\tilde{e}\_j) && \text{(}\href{#thm-linear-map-lincom}{\text{Theorem~13}}\text{)} \end{aligned} \\
>
> and entry \\i\\ of that sum is
>
> \\ \begin{aligned} \mathopen{}\left(\sum\_{j=1}^{p} x_j f(\tilde{e}\_j)\right)\mathclose{}\_i &= \sum\_{j=1}^{p} x_j \mathopen{}\left(f(\tilde{e}\_j)\right)\mathclose{}\_i && \text{(}\href{#def-linear-combination}{\text{Definition~8}}\text{, entry by entry)} \\&= \sum\_{j=1}^{p} x_j a\_{ij} && \text{(definition of } \mathbf{A} \text{)} \\&= \sum\_{j=1}^{p} a\_{ij} x_j && \text{(products are symmetric)} \\&= (\mathbf{A}\tilde{x})\_i && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \end{aligned} \\
>
> **Uniqueness.** Suppose \\\mathbf{B}\\ is any \\m \times p\\ matrix with \\f(\tilde{x}) = \mathbf{B}\tilde{x}\\ for all \\\tilde{x}\\. Taking \\\tilde{x}= \tilde{e}\_j\\, for each \\i\\:
>
> \\ \begin{aligned} \mathopen{}\left(f(\tilde{e}\_j)\right)\mathclose{}\_i &= (\mathbf{B}\tilde{e}\_j)\_i && \text{(assumption on } \mathbf{B} \text{)} \\&= \sum\_{k=1}^{p} b\_{ik} (\tilde{e}\_j)\_k && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\&= b\_{ij} \cdot 1 + \sum\_{k \neq j} b\_{ik} \cdot 0 && \text{(}\href{#def-indicator-vector}{\text{Definition~12}}\text{, splitting off the } k = j \text{ term)} \\&= b\_{ij} + 0 && \text{(times } 1 \text{ changes nothing; times } 0 \text{ gives } 0 \text{)} \\&= b\_{ij} && \text{(adding } 0 \text{ changes nothing)} \end{aligned} \\
>
> So \\b\_{ij} = \mathopen{}\left(f(\tilde{e}\_j)\right)\mathclose{}\_i = a\_{ij}\\ for every \\i\\ and \\j\\, and \\\mathbf{B} = \mathbf{A}\\.

> **NOTE:**
>
> **Definition 32 (Matrix of a linear map)** The **matrix of** a linear map \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is the unique \\m \times p\\ matrix \\\mathbf{A}\\ with \\f(\tilde{x}) = \mathbf{A}\tilde{x}\\ for all \\\tilde{x}\\ ([Theorem 14](#thm-linear-map-matrix)). Its column \\j\\ is \\f(\tilde{e}\_j)\\.

> **NOTE:**
>
> **Example 26 (Finding the matrix of a linear map)** For \\f(\tilde{x}) = (2 x_1,\\ x_1 + x_2)\\ from [Example 23](#exm-linear-map), the values of \\f\\ at the indicator vectors are
>
> \\ f(\tilde{e}\_1) = f\mathopen{}\left(\begin{bmatrix}1 \\ 0\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}2 \cdot 1 \\ 1 + 0\end{bmatrix} = \begin{bmatrix}2 \\ 1\end{bmatrix}, \qquad f(\tilde{e}\_2) = f\mathopen{}\left(\begin{bmatrix}0 \\ 1\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}2 \cdot 0 \\ 0 + 1\end{bmatrix} = \begin{bmatrix}0 \\ 1\end{bmatrix} \\
>
> and these are the columns of the matrix of \\f\\ ([Definition 32](#def-matrix-of-linear-map)): \\\mathbf{A} = \begin{bmatrix}2 & 0 \\ 1 & 1\end{bmatrix}\\.

> **NOTE:**
>
> **Corollary 1 (Linear functions from vectors to numbers)** A function \\f: \mathbb{R}^p \to \mathbb{R}\\ is linear ([Definition 30](#def-linear-map)) if and only if there is a vector \\\tilde{w} \in \mathbb{R}^p\\ such that
>
> \\f(\tilde{x}) = \tilde{w}^\top \tilde{x}\quad \text{for all } \tilde{x}\in \mathbb{R}^p\\
>
> and then \\w_j = f(\tilde{e}\_j)\\ for each \\j\\.

> **NOTE:**
>
> *Proof*. **If \\f\\ is linear.** [Theorem 14](#thm-linear-map-matrix) with \\m = 1\\ gives a \\1 \times p\\ matrix \\\mathbf{A}\\ with \\f(\tilde{x}) = \mathbf{A}\tilde{x}\\ and \\a\_{1j} = f(\tilde{e}\_j)\\. Let \\\tilde{w}\\ be the vector with \\w_j = a\_{1j}\\, so that \\\mathbf{A} = \tilde{w}^\top\\. Then
>
> \\ \begin{aligned} f(\tilde{x}) &= \mathbf{A}\tilde{x} && \text{(}\href{#thm-linear-map-matrix}{\text{Theorem~14}}\text{)} \\&= \tilde{w}^\top \tilde{x} && (\mathbf{A} = \tilde{w}^\top) \end{aligned} \\
>
> and \\w_j = a\_{1j} = f(\tilde{e}\_j)\\.
>
> **If \\f(\tilde{x}) = \tilde{w}^\top \tilde{x}\\.** Here \\\tilde{w}^\top\\ is a \\1 \times p\\ matrix, so \\f\\ is linear by [Theorem 12](#thm-matrix-map-linear).

> **NOTE:**
>
> **Example 27 (A linear function from \\\mathbb{R}^2\\ to \\\mathbb{R}\\)** \\f(\tilde{x}) = 3 x_1 + 5 x_2\\ is \\\tilde{w}^\top \tilde{x}\\ with \\\tilde{w} = {(3, 5)}^{\top}\\, so it is linear by [Corollary 1](#cor-linear-scalar). The entries of \\\tilde{w}\\ are the values at the indicator vectors: \\f(\tilde{e}\_1) = 3 \cdot 1 + 5 \cdot 0 = 3\\ and \\f(\tilde{e}\_2) = 3 \cdot 0 + 5 \cdot 1 = 5\\.
>
> \\g(\tilde{x}) = 3 x_1 + 5 x_2 + 1\\ is not linear, because \\g(\tilde{0}) = 1 \neq 0\\ ([Theorem 11](#thm-linear-map-zero)).

> **TIP:**
>
> Two chapters of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown show the results above geometrically:
>
> - [Linear transformations and matrices](https://www.youtube.com/watch?v=kYB8IZa5AuE) (Chapter 3) shows why a linear map is fixed by where it sends the indicator vectors, which become the columns of its matrix ([Definition 32](#def-matrix-of-linear-map)).
> - [Dot products and duality](https://www.youtube.com/watch?v=LyGKycYT2v0) (Chapter 9) shows why every linear map from \\\mathbb{R}^p\\ to \\\mathbb{R}\\ is a dot product with a fixed vector ([Corollary 1](#cor-linear-scalar)).

> **NOTE:**
>
> **Definition 33 (Translation)** For a fixed vector \\\tilde{b} \in \mathbb{R}^m\\, the **translation** by \\\tilde{b}\\ is the function \\t\_{\tilde{b}} : \mathbb{R}^m \to \mathbb{R}^m\\ defined by
>
> \\t\_{\tilde{b}}(\tilde{y}) = \tilde{y}+ \tilde{b}\\
>
> It moves every point by the same vector \\\tilde{b}\\.

> **NOTE:**
>
> **Example 28 (Translating two points)** The translation by \\\tilde{b} = {(1, -2)}^{\top}\\ sends
>
> \\ t\_{\tilde{b}}\mathopen{}\left(\begin{bmatrix}0 \\ 0\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}0 + 1 \\ 0 + (-2)\end{bmatrix} = \begin{bmatrix}1 \\ -2\end{bmatrix}, \qquad t\_{\tilde{b}}\mathopen{}\left(\begin{bmatrix}3 \\ 4\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}3 + 1 \\ 4 + (-2)\end{bmatrix} = \begin{bmatrix}4 \\ 2\end{bmatrix} \\
>
> Both points move one unit right and two units down.

> **NOTE:**
>
> **Definition 34 (Affine map (affine transformation, affine function))** A [function](sets-functions.llms.md#def-function) \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is an **affine map** (also called an **affine transformation** or **affine function**) if it is a matrix product followed by a translation ([Definition 33](#def-translation)) (a [composition](sets-functions.llms.md#def-composition), with the matrix product as the inner function): there are an \\m \times p\\ matrix \\\mathbf{A}\\ and a vector \\\tilde{b} \in \mathbb{R}^m\\ such that
>
> \\f(\tilde{x}) = t\_{\tilde{b}}(\mathbf{A} \tilde{x}) = \mathbf{A} \tilde{x}+ \tilde{b} \quad \text{for all } \tilde{x}\in \mathbb{R}^p\\
>
> The vector \\\tilde{b}\\ is called the **offset** of \\f\\ (statistics also calls it the **intercept**, and machine learning the **bias**).
>
> For a real-valued function ([Definition 4](#def-real-vector-valued), \\m = 1\\), \\\mathbf{A}\\ is a single row, written \\\tilde{w}^\top\\, and \\\tilde{b}\\ is a single number \\b\\, so an affine function is a linear function \\\tilde{w}^\top \tilde{x}\\ ([Corollary 1](#cor-linear-scalar)) plus an offset:
>
> \\f(\tilde{x}) = \tilde{w}^\top \tilde{x}+ b, \qquad \tilde{w} \in \mathbb{R}^p, \quad b \in \mathbb{R} \tag{4}\\

> **NOTE:**
>
> **Definition 35 (Augmented vector)** The **augmented vector** of \\\tilde{x}\in \mathbb{R}^p\\ is the vector \\\tilde{\tilde{x}} \in \mathbb{R}^{p+1}\\ formed by placing a \\1\\ above the entries of \\\tilde{x}\\:
>
> \\\tilde{\tilde{x}} = \begin{bmatrix}1 \\ \tilde{x}\end{bmatrix} = {(1, x_1, \ldots, x_p)}^{\top}\\

> **NOTE:**
>
> **Example 29 (An affine function as a dot product with an augmented vector)** For \\\tilde{x}= {(2, 5)}^{\top}\\, the augmented vector is \\\tilde{\tilde{x}} = {(1, 2, 5)}^{\top}\\. With \\\tilde{w} = {(3, -1)}^{\top}\\ and \\b = 4\\, the affine function \\\tilde{w}^\top \tilde{x}+ b\\ ([Equation 4](#eq-linear-scalar)) equals the dot product of \\{(b, w_1, w_2)}^{\top} = {(4, 3, -1)}^{\top}\\ with \\\tilde{\tilde{x}}\\:
>
> \\ \tilde{w}^\top \tilde{x}+ b = 3 \cdot 2 + (-1) \cdot 5 + 4 = 5, \qquad {(4, 3, -1)}^{\top} \cdot \tilde{\tilde{x}} = 4 \cdot 1 + 3 \cdot 2 + (-1) \cdot 5 = 5 \\

> **NOTE:**
>
> **Theorem 15 (An affine map sends zero to its offset)** An affine map \\f(\tilde{x}) = \mathbf{A}\tilde{x}+ \tilde{b}\\ ([Definition 34](#def-affine-map)) satisfies \\f(\tilde{0}) = \tilde{b}\\.

> **NOTE:**
>
> *Proof*. First, \\\mathbf{A}\tilde{0}= \tilde{0}\\: for each \\i\\,
>
> \\ \begin{aligned} (\mathbf{A}\tilde{0})\_i &= \sum\_{j=1}^{p} a\_{ij} \cdot 0 && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\&= \sum\_{j=1}^{p} 0 && \text{(any number times } 0 \text{ is } 0 \text{)} \\&= 0 && \text{(a sum of zeros is } 0 \text{)} \end{aligned} \\
>
> Then
>
> \\ \begin{aligned} f(\tilde{0}) &= \mathbf{A}\tilde{0}+ \tilde{b} && \text{(}\href{#def-affine-map}{\text{Definition~34}}\text{)} \\&= \tilde{0}+ \tilde{b} && (\mathbf{A}\tilde{0}= \tilde{0}) \\&= \tilde{b} && \text{(adding } \tilde{0}\text{ changes no entry; }\href{#def-vector-addition}{\text{Definition~6}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 16 (An affine map is linear exactly when its offset is zero)** An affine map \\f(\tilde{x}) = \mathbf{A}\tilde{x}+ \tilde{b}\\ ([Definition 34](#def-affine-map)) is linear ([Definition 30](#def-linear-map)) if and only if \\\tilde{b} = \tilde{0}\\.

> **NOTE:**
>
> *Proof*. If \\\tilde{b} = \tilde{0}\\, then \\f(\tilde{x}) = \mathbf{A}\tilde{x}+ \tilde{0}= \mathbf{A}\tilde{x}\\, which is linear by [Theorem 12](#thm-matrix-map-linear). Conversely, if \\f\\ is linear, then \\f(\tilde{0}) = \tilde{0}\\ by [Theorem 11](#thm-linear-map-zero), and \\f(\tilde{0}) = \tilde{b}\\ by [Theorem 15](#thm-affine-map-zero), so \\\tilde{b} = \tilde{0}\\.

> **NOTE:**
>
> **Example 30 (Two affine maps with the same matrix)** Let \\\mathbf{A} = \begin{bmatrix}2 & 0 \\ 1 & 1\end{bmatrix}\\, the matrix of the linear map in [Example 23](#exm-linear-map). \\f(\tilde{x}) = \mathbf{A}\tilde{x}\\ has offset \\\tilde{0}\\, so it is linear. \\g(\tilde{x}) = \mathbf{A}\tilde{x}+ \begin{bmatrix}1 \\ 0\end{bmatrix}\\ has offset \\\begin{bmatrix}1 \\ 0\end{bmatrix} \neq \tilde{0}\\, so by [Theorem 16](#thm-affine-linear-iff) it is not linear: indeed \\g(\tilde{0}) = \begin{bmatrix}1 \\ 0\end{bmatrix}\\, not \\\tilde{0}\\.

> **NOTE:**
>
> **Corollary 2 (Every linear map is affine)** Every linear map \\f : \mathbb{R}^p \to \mathbb{R}^m\\ ([Definition 30](#def-linear-map)) is an affine map ([Definition 34](#def-affine-map)) with offset \\\tilde{0}\\.

> **NOTE:**
>
> *Proof*. If \\f\\ is linear, [Theorem 14](#thm-linear-map-matrix) gives a matrix \\\mathbf{A}\\ with \\f(\tilde{x}) = \mathbf{A}\tilde{x}= \mathbf{A}\tilde{x}+ \tilde{0}\\, which is [Definition 34](#def-affine-map) with \\\tilde{b} = \tilde{0}\\.

> **NOTE:**
>
> **Theorem 17 (An affine map determines its matrix and offset)** If \\f(\tilde{x}) = \mathbf{A}\tilde{x}+ \tilde{b}\\ and \\f(\tilde{x}) = \mathbf{A}'\tilde{x}+ \tilde{b}'\\ for all \\\tilde{x}\in \mathbb{R}^p\\ ([Definition 34](#def-affine-map)), then \\\mathbf{A}' = \mathbf{A}\\ and \\\tilde{b}' = \tilde{b}\\.

> **NOTE:**
>
> *Proof*. By [Theorem 15](#thm-affine-map-zero), applied to each formula, \\\tilde{b} = f(\tilde{0}) = \tilde{b}'\\. Then \\\mathbf{A}\tilde{x}= f(\tilde{x}) - \tilde{b} = \mathbf{A}'\tilde{x}\\ for all \\\tilde{x}\\, so \\\mathbf{A}\\ and \\\mathbf{A}'\\ are both matrices ([Definition 32](#def-matrix-of-linear-map)) of the linear map \\\tilde{x}\mapsto f(\tilde{x}) - \tilde{b}\\ (linear by [Theorem 12](#thm-matrix-map-linear)), and the uniqueness in [Theorem 14](#thm-linear-map-matrix) gives \\\mathbf{A}' = \mathbf{A}\\.

> **NOTE:**
>
> *Remark 12* (“Linear” in this site, and in machine learning and statistics). This site uses “linear” only in the sense of [Definition 30](#def-linear-map), so by [Theorem 16](#thm-affine-linear-iff) a function with a nonzero offset is affine but not linear. For functions of one variable, this is the same split as [affine](algebra.llms.md#def-affine-function) \\a x + b\\ versus [linear](algebra.llms.md#def-linear-function) \\a x\\ on the algebra page. (The algebra page writes these as \\m x + b\\ and \\m x\\; here \\m\\ already names the number of outputs.)
>
> Machine learning and statistics often call any function of the form [Equation 4](#eq-linear-scalar) “linear”, as in a *linear model* in statistics or a *linear layer* in a neural network, and call the offset \\b\\ the bias (machine learning) or the intercept (statistics), as [Definition 34](#def-affine-map) notes. A model with an intercept is affine in \\\tilde{x}\\ but linear in its coefficients \\(b, \tilde{w})\\, and that is the sense of “linear” in “linear model”: it stays linear in the coefficients even when the inputs are transformed: \\w_1 x + w_2 x^2 + b\\ is not affine in \\x\\, but it is linear in \\(b, w_1, w_2)\\. Separately, the affine function \\\tilde{w}^\top \tilde{x}+ b\\ is a linear function of the augmented vector \\\tilde{\tilde{x}}\\ ([Definition 35](#def-augmented-vector)), with \\b\\ as the coefficient on its first entry.

> **TIP:**
>
> - Zhou ([2024d](#ref-zhou2024matrix)), sections 6 (“Linear functions and operators”; see [Definition 31](#def-linear-operator)) and 7 (“Affine functions”), proves that every linear function is a matrix-vector product by the same route as [Theorem 14](#thm-linear-map-matrix), and that every affine function has the form \\\mathbf{A}\tilde{x}+ \tilde{b}\\. It defines “affine” differently, by \\f(\alpha \tilde{x}+ \beta \tilde{y}) = \alpha f(\tilde{x}) + \beta f(\tilde{y})\\ whenever \\\alpha + \beta = 1\\, and shows that this condition holds exactly for the maps \\\mathbf{A}\tilde{x}+ \tilde{b}\\, so the two definitions agree.
> - Boyd and Vandenberghe ([2018](#ref-boyd2018vmls)), chapter 2 (“Linear functions”), covers the vector-to-number case: linear functions as inner products, affine functions, the [first-order Taylor approximation](calculus.llms.md#def-linear-approximation) as an affine function, and the regression model. Section 8.1 (“Linear and affine functions”) covers the vector-to-vector case. A free PDF is on the book’s website.

> **NOTE:**
>
> **Definition 36 (Hyperplane)** A **hyperplane** in \\\mathbb{R}^p\\ is the set of points \\\tilde{x}\in \mathbb{R}^p\\ satisfying
>
> \\\tilde{w}^\top \tilde{x}+ b = 0\\
>
> for some vector \\\tilde{w} \in \mathbb{R}^p \setminus \\\tilde{0}\\\\ and number \\b \in \mathbb{R}\\. The vector \\\tilde{w}\\ is a **normal vector** of the hyperplane, and \\b\\ is its offset. When \\b = 0\\, the hyperplane contains the origin \\\tilde{0}\\, since \\\tilde{w}^\top \tilde{0}= 0\\.
>
> Geometrically:
>
> - In \\\mathbb{R}^2\\ (\\p = 2\\), a hyperplane is a line: \\w_1 x_1 + w_2 x_2 + b = 0\\.
> - In \\\mathbb{R}^3\\ (\\p = 3\\), a hyperplane is a plane.
> - A hyperplane divides the space \\\mathbb{R}^p\\ into two half-spaces, one on each side of it ([Definition 50](#def-half-space)).

> **NOTE:**
>
> **Example 31 (A line in \\\mathbb{R}^2\\, and why the normal vector must be nonzero)**  
>
> - With \\\tilde{w} = (1, 1)\\ and \\b = -1\\, the hyperplane in \\\mathbb{R}^2\\ is the line \\x_1 + x_2 - 1 = 0\\. The point \\(1, 0)\\ is on it, since \\1 + 0 - 1 = 0\\; the point \\(1, 1)\\ is not, since \\1 + 1 - 1 = 1 \> 0\\, so it lies in the half-space where \\\tilde{w}^\top \tilde{x}+ b \> 0\\.
> - With \\\tilde{w} = \tilde{0}\\, the equation reads \\b = 0\\: if \\b \ne 0\\ no point satisfies it, and if \\b = 0\\ every point does, so the set is empty or all of \\\mathbb{R}^2\\, not a line. That degenerate case is why the definition requires \\\tilde{w} \ne \tilde{0}\\.

Show R code

``` numberSource
viewof planeW1 = Inputs.range([-1.5, 1.5], {value: 1, step: 0.1, label: "w1"})
viewof planeW2 = Inputs.range([-1.5, 1.5], {value: 0.5, step: 0.1, label: "w2"})
viewof planeB = Inputs.range([-2, 2], {value: 0, step: 0.1, label: "b"})
viewof planeTurn = Inputs.range([0, 360], {value: 30, step: 5, label: "turn the view"})
```

Show R code

``` numberSource
{
  const sign = (v) => (v < 0 ? "\u2212" : "+");
  const fmt = (v) => Math.abs(v).toFixed(1);
  return md`f(x1, x2) = ${planeW1.toFixed(1)} x1 ${sign(planeW2)} ${fmt(planeW2)} x2 ${sign(planeB)} ${fmt(planeB)}.
The orange slice, along x1 with x2 = 0, rises ${planeW1.toFixed(1)} for each unit of x1;
the green slice, along x2, rises ${planeW2.toFixed(1)} for each unit of x2.
Both slices cross the vertical axis at height b = ${planeB.toFixed(1)}.`;
}
```

Show R code

``` numberSource
// The graph z = f(x1, x2) over the square [-2, 2] x [-2, 2], drawn in 3-D:
// turn the square about the vertical axis, then look down on it from 30 degrees.
planeView = {
  const f = (x1, x2) => planeW1 * x1 + planeW2 * x2 + planeB;
  const w = 340, h = 300, s = 38, sz = 16, elev = 30 * Math.PI / 180;
  const turn = planeTurn * Math.PI / 180;
  const at = (x1, x2, z) => {
    const u = x1 * Math.cos(turn) - x2 * Math.sin(turn);
    const v = x1 * Math.sin(turn) + x2 * Math.cos(turn);
    return [w / 2 + s * u, h / 2 - s * Math.sin(elev) * v - sz * Math.cos(elev) * z];
  };
  const path = (pts) => d3.line()(pts.map(([a, b, z]) => at(a, b, z)));
  const svg = d3.create("svg").attr("width", w).attr("height", h)
    .attr("role", "img")
    .attr("aria-label", "A tilted plane drawn in three dimensions over a square of inputs, " +
      "with its two slices through the origin highlighted, " +
      "and a vertical marker at the origin showing the height b.");
  const ticks = d3.range(-2, 2.01, 0.5);
  const corners = [[-2, -2], [2, -2], [2, 2], [-2, 2], [-2, -2]];
  // the floor, z = 0, and the three axes
  svg.append("path").attr("d", path(corners.map(([a, b]) => [a, b, 0])))
    .attr("fill", "#eee").attr("stroke", "#bbb");
  const axis = (p, q, name) => {
    svg.append("path").attr("d", path([p, q])).attr("stroke", "#888");
    const [tx, ty] = at(...q);
    svg.append("text").attr("x", tx + 4).attr("y", ty).attr("font-size", 13).text(name);
  };
  axis([0, 0, 0], [2.6, 0, 0], "x1");
  axis([0, 0, 0], [0, 2.6, 0], "x2");
  axis([0, 0, -8], [0, 0, 8], "f");
  // the plane itself, as a mesh of lines along each input
  svg.append("path").attr("d", path(corners.map(([a, b]) => [a, b, f(a, b)])))
    .attr("fill", "#1f77b4").attr("fill-opacity", 0.18).attr("stroke", "#1f77b4");
  for (const t of ticks) {
    svg.append("path").attr("d", path([[t, -2, f(t, -2)], [t, 2, f(t, 2)]]))
      .attr("stroke", "#1f77b4").attr("stroke-opacity", 0.35).attr("fill", "none");
    svg.append("path").attr("d", path([[-2, t, f(-2, t)], [2, t, f(2, t)]]))
      .attr("stroke", "#1f77b4").attr("stroke-opacity", 0.35).attr("fill", "none");
  }
  // the slice along x1 (x2 = 0) has slope w1; the slice along x2 has slope w2
  svg.append("path").attr("d", path([[-2, 0, f(-2, 0)], [2, 0, f(2, 0)]]))
    .attr("stroke", "#ff7f0e").attr("stroke-width", 3);
  svg.append("path").attr("d", path([[0, -2, f(0, -2)], [0, 2, f(0, 2)]]))
    .attr("stroke", "#2ca02c").attr("stroke-width", 3);
  const [ox, oy] = at(0, 0, planeB);
  svg.append("circle").attr("cx", ox).attr("cy", oy).attr("r", 4).attr("fill", "#222");
  svg.append("text").attr("x", ox + 6).attr("y", oy - 6).attr("font-size", 13).text("b");
  return svg.node();
}
```

Show R code

``` numberSource
Plot.plot({
  ariaLabel: 'Contour map of the same plane seen from directly above, ' +
    'with x1 across and x2 up, ' +
    'shaded by the value of f, ' +
    'with straight level lines one unit of f apart.',
  width: 300, height: 300, marginLeft: 40,
  x: {domain: [-2, 2], label: "x1"},
  y: {domain: [-2, 2], label: "x2"},
  color: {type: "diverging", scheme: "RdBu", domain: [-8, 8], legend: true, label: "f(x1, x2)"},
  marks: [
    Plot.contour({
      x1: -2, y1: -2, x2: 2, y2: 2,
      fill: (x1, x2) => planeW1 * x1 + planeW2 * x2 + planeB,
      thresholds: d3.range(-8, 8.01, 1), stroke: "#333", strokeOpacity: 0.5
    }),
    Plot.ruleY([0], {stroke: "#ff7f0e", strokeWidth: 3}),
    Plot.ruleX([0], {stroke: "#2ca02c", strokeWidth: 3})
  ]
})
```

Figure 1: The [graph](sets-functions.llms.md#def-graph) of \\f(x_1, x_2) = w_1 x_1 + w_2 x_2 + b\\, in three dimensions and from above.

> **NOTE:**
>
> **Exercise 5 (Write a rule in matrix form)** A clinic scores a patient’s risk from three measurements.
>
> | symbol  | meaning                 | units      |
> |---------|-------------------------|------------|
> | \\x_1\\ | age                     | years      |
> | \\x_2\\ | systolic blood pressure | mmHg       |
> | \\x_3\\ | body mass index         | kg/m\\^2\\ |
>
> The rule in use is
>
> \\\text{score} = 0.4\\x_1 + 0.2\\x_2 + 1.5\\x_3 - 30\\
>
> Write this rule in the form of [Equation 4](#eq-linear-scalar), naming \\\tilde{w}\\, \\b\\ and \\p\\ explicitly, and give the score for a patient aged \\50\\ with blood pressure \\130\\ and BMI \\28\\.

> **NOTE:**
>
> *Solution 5*. Read the coefficients straight off the rule. There are three inputs, so \\p = 3\\:
>
> \\\tilde{w} = \begin{bmatrix} 0.4 \\ 0.2 \\ 1.5 \end{bmatrix}, \qquad b = -30\\
>
> and the rule is \\f(\tilde{x}) = \tilde{w}^\top \tilde{x} + b\\. For the patient,
>
> \\\tilde{x} = \begin{bmatrix} 50 \\ 130 \\ 28 \end{bmatrix}\\
>
> \\\tilde{w}^\top \tilde{x} = (0.4)(50) + (0.2)(130) + (1.5)(28) = 20 + 26 + 42 = 88\\
>
> \\f(\tilde{x}) = 88 - 30 = 58\\
>
> Two things are worth noticing. The coefficients are not comparable as they stand: \\1.5\\ is the largest number but BMI is measured on the smallest scale, so the weight on a feature says nothing on its own about how much that feature matters. And \\b = -30\\ is doing real work — without it the score would be \\88\\, which is a different clinical claim entirely.

> **NOTE:**
>
> **Exercise 6 (Which of these are affine in \\\tilde{w}\\?)** Each of the five expressions is a function of the weights \\\tilde{w} \in \mathbb{R}^p\\, with the data \\\tilde{x}\\ and \\y\\ held fixed. Say which ones are affine ([Definition 34](#def-affine-map)), that is, have the form [Equation 4](#eq-linear-scalar) — an inner product plus an offset — and which of those are also linear ([Definition 30](#def-linear-map)).
>
> 1.  \\\tilde{w}^\top \tilde{x}\\
> 2.  \\\tilde{w}^\top \tilde{x} - y\\
> 3.  \\(\tilde{w}^\top \tilde{x} - y)^2\\
> 4.  \\\lVert \tilde{w} \rVert_2^2\\
> 5.  \\w_1 x_1 + 3\\

> **NOTE:**
>
> *Solution 6*.
>
> 1.  **Affine, and linear.** It is [Equation 4](#eq-linear-scalar) with \\b = 0\\, which is a linear map by [Theorem 12](#thm-matrix-map-linear): the matrix \\{\tilde{x}}^{\top}\\ times \\\tilde{w}\\.
> 2.  **Affine.** Still an inner product plus an offset; here the offset is \\b = -y\\, which is a constant because \\y\\ is held fixed. It is linear only when \\y = 0\\: otherwise \\\tilde{w} = \tilde{0}\\ gives \\-y \ne 0\\, and a linear map sends \\\tilde{0}\\ to \\0\\ ([Theorem 11](#thm-linear-map-zero)).
> 3.  **Not affine.** Squaring is not an inner product plus an offset. This expression is the squared error of one observation, and its curvature in \\\tilde{w}\\ is exactly why fitting a model is an optimization problem rather than a lookup.
> 4.  **Not affine.** By [Equation 2](#eq-l2-norm) this is \\\tilde{w}^\top \tilde{w}\\, which has \\\tilde{w}\\ in both slots at once. Hold either slot fixed and it is linear in the other; as a function of the single variable \\\tilde{w}\\ it is quadratic.
> 5.  **Affine, not linear.** It is [Equation 4](#eq-linear-scalar) with coefficient vector \\\tilde{a} = (x_1, 0, \dots, 0)^\top\\ and \\b = 3\\; at \\\tilde{w} = \tilde{0}\\ it equals \\3 \ne 0\\, so it is not linear ([Theorem 11](#thm-linear-map-zero)). The data \\\tilde{x}\\ is untouched — \\\tilde{a}\\ is a new vector built from its first entry.
>
> Items 1, 2 and 5 are affine and items 3 and 4 are not, which is the split that matters: a *model* can be affine in its weights while the *quantity we minimize* is not. Squared error and the norm penalty are both curved in \\\tilde{w}\\, and that curvature is what makes fitting an optimization problem at all: there is always a downhill direction to follow. Curvature alone does not promise a *single* answer. The squared error of one observation is completely flat along a whole line of weight vectors, every one of which fits that observation exactly, and pinning down one of them is part of what the norm penalty is added for in week 3.

### 2.8 Transposes of sums and products

> **NOTE:**
>
> **Theorem 18 (Transpose of a sum)** For \\m \times n\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\:
>
> \\{(\mathbf{A} + \mathbf{B})}^{\top} = {\mathbf{A}}^{\top} + {\mathbf{B}}^{\top}\\
>
> In particular, for column vectors \\\tilde{x}\\ and \\\tilde{y}\\ of the same length:
>
> \\{(\tilde{x}+ \tilde{y})}^{\top} = {\tilde{x}}^{\top} + {\tilde{y}}^{\top}\\

> **NOTE:**
>
> *Proof*. Entry \\(i, j)\\ of each side:
>
> \\ \begin{aligned} \mathopen{}\left\[{(\mathbf{A} + \mathbf{B})}^{\top}\right\]\mathclose{}\_{ij} &= (\mathbf{A} + \mathbf{B})\_{ji} && \text{(definition of the transpose)} \\ &= a\_{ji} + b\_{ji} && \text{(definition of matrix addition)} \\ &= ({\mathbf{A}}^{\top})\_{ij} + ({\mathbf{B}}^{\top})\_{ij} && \text{(definition of the transpose)} \\ &= \mathopen{}\left\[{\mathbf{A}}^{\top} + {\mathbf{B}}^{\top}\right\]\mathclose{}\_{ij} && \text{(definition of matrix addition)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 19 (Transpose of a product)** For an \\m \times k\\ matrix \\\mathbf{A}\\ and a \\k \times n\\ matrix \\\mathbf{B}\\:
>
> \\ \underbrace{{(\mathbf{A}\mathbf{B})}^{\top}}\_{n \times m} = \underbrace{{\mathbf{B}}^{\top}}\_{n \times k}\\\underbrace{{\mathbf{A}}^{\top}}\_{k \times m} \\

> **NOTE:**
>
> *Proof*. Entry \\(i, j)\\ of each side:
>
> \\ \begin{aligned} \mathopen{}\left\[{(\mathbf{A}\mathbf{B})}^{\top}\right\]\mathclose{}\_{ij} &= (\mathbf{A}\mathbf{B})\_{ji} && \text{(definition of the transpose)} \\ &= \sum\_{s=1}^{k} a\_{js}\\ b\_{si} && \text{(definition of matrix multiplication)} \\ &= \sum\_{s=1}^{k} ({\mathbf{B}}^{\top})\_{is}\\ ({\mathbf{A}}^{\top})\_{sj} && \text{(definition of the transpose; reorder each product)} \\ &= \mathopen{}\left\[{\mathbf{B}}^{\top}\\{\mathbf{A}}^{\top}\right\]\mathclose{}\_{ij} && \text{(definition of matrix multiplication)} \end{aligned} \\

> **NOTE:**
>
> *Remark 13* (The order of the factors reverses). Transposing a product reverses the order of the factors. Keeping the original order usually gives an undefined product or a different matrix. For example, with \\\mathbf{A} = \[1,\\ 2\]\\ (\\1 \times 2\\) and \\\mathbf{B} = \begin{bmatrix} 3 \\ 4 \end{bmatrix}\\ (\\2 \times 1\\), \\\mathbf{A}\mathbf{B} = 1 \cdot 3 + 2 \cdot 4 = 11\\, so \\{(\mathbf{A}\mathbf{B})}^{\top} = 11\\, and
>
> \\ {\mathbf{B}}^{\top}\\{\mathbf{A}}^{\top} = \[3,\\ 4\] \begin{bmatrix} 1 \\ 2 \end{bmatrix} = 11, \qquad {\mathbf{A}}^{\top}\\{\mathbf{B}}^{\top} = \begin{bmatrix} 1 \\ 2 \end{bmatrix} \[3,\\ 4\] = \begin{bmatrix} 3 & 4 \\ 6 & 8 \end{bmatrix}. \\
>
> If instead \\\mathbf{A}\\ is \\2 \times 3\\ and \\\mathbf{B}\\ is \\3 \times 1\\, then \\{\mathbf{B}}^{\top}\\{\mathbf{A}}^{\top}\\ is a \\(1 \times 3)(3 \times 2)\\ product, but \\{\mathbf{A}}^{\top}\\{\mathbf{B}}^{\top}\\ is a \\(3 \times 2)(1 \times 3)\\ product, which is undefined.

### 2.9 Rank

> **NOTE:**
>
> **Definition 37 (Linearly independent vectors)** Vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ of the same length \\p\\ are **linearly independent** if the only numbers \\c_1, \ldots, c_k\\ with
>
> \\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k = \tilde{0}\\
>
> are \\c_1 = \cdots = c_k = 0\\. Vectors that are not linearly independent are **linearly dependent**.

> **NOTE:**
>
> **Example 32 (Independent and dependent pairs of vectors)**  
>
> - \\\tilde{v}\_1 = (1, 0)\\ and \\\tilde{v}\_2 = (1, 1)\\ are linearly independent: \\c_1 \tilde{v}\_1 + c_2 \tilde{v}\_2 = (c_1 + c_2, c_2)\\, which is \\\tilde{0}\\ only if \\c_2 = 0\\ and then \\c_1 = 0\\.
> - \\\tilde{v}\_1 = (1, 2)\\ and \\\tilde{v}\_2 = (2, 4)\\ are not: \\2 \tilde{v}\_1 - \tilde{v}\_2 = \tilde{0}\\.

> **NOTE:**
>
> **Definition 38 (Rank)** The **rank** of a matrix \\\mathbf{A}\\, written \\\operatorname{rank}(\mathbf{A})\\, is the largest number of columns of \\\mathbf{A}\\ that are linearly independent ([Definition 37](#def-linearly-independent)).

> **NOTE:**
>
> **Example 33 (The rank of two \\3 \times 2\\ matrices)** The matrix \\\begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ has rank \\2\\: if \\c_1 (1, 1, 1) + c_2 (1, 2, 3) = \tilde{0}\\, then subtracting the first entry from the second gives \\c_2 = 0\\, and then \\c_1 = 0\\.
>
> The matrix \\\begin{bmatrix} 1 & 2 \\ 1 & 2 \\ 1 & 2 \end{bmatrix}\\ has rank \\1\\: its second column is twice its first, so the two columns are not linearly independent, but the first column on its own is.

> **NOTE:**
>
> **Definition 39 (Full column rank)** An \\n \times p\\ matrix has **full column rank** if its rank ([Definition 38](#def-rank)) is \\p\\, so that all of its columns are linearly independent.

> **NOTE:**
>
> *Remark 14* (Full column rank needs at least as many rows as columns). In [Example 33](#exm-rank), the first matrix has full column rank: its rank is \\2\\, and it has \\2\\ columns. The second does not, because its rank is \\1\\.
>
> An \\n \times p\\ matrix can have full column rank only when \\p \le n\\, because more than \\n\\ vectors of length \\n\\ are never linearly independent. For example, the \\2 \times 3\\ matrix \\\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}\\ has \\3\\ columns of length \\2\\, and \\1 \cdot(1, 0) + 1 \cdot(0, 1) - 1 \cdot(1, 1) = \tilde{0}\\, with coefficients that are not all zero. So its \\3\\ columns are not linearly independent, and its rank is less than \\3\\.

### 2.10 Subspaces

> **NOTE:**
>
> This section is adapted from Zhou ([2024h](#ref-zhou2024vecsp)), used under the MIT License. The license text is:
>
> > Copyright (c) 2024 ucla-biostat-216
> >
> > Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
> >
> > The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
> >
> > THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

> **NOTE:**
>
> **Definition 40 (Subspace (linear subspace, vector space, linear space))** A set \\\mathcal{S}\\ of vectors in \\\mathbb{R}^p\\ is a **subspace** of \\\mathbb{R}^p\\ if it is not empty and it is closed under vector addition and scalar multiplication:
>
> 1.  if \\\tilde{u} \in \mathcal{S}\\ and \\\tilde{v} \in \mathcal{S}\\, then \\\tilde{u} + \tilde{v} \in \mathcal{S}\\;
> 2.  if \\\tilde{u} \in \mathcal{S}\\ and \\c \in \mathbb{R}\\, then \\c \tilde{u} \in \mathcal{S}\\.
>
> A subspace is also called a **linear subspace**, a **vector space**, or a **linear space**.

> **NOTE:**
>
> **Example 34 (A line through the origin is a subspace)** Let \\\mathcal{S} = \mathopen{}\left\\c\\(1, 2) : c \in \mathbb{R}\right\\\mathclose{}\\, the line in \\\mathbb{R}^2\\ through \\(0, 0)\\ and \\(1, 2)\\.
>
> - **Addition:** \\a\\(1, 2) + b\\(1, 2) = (a + b)\\(1, 2)\\, which is in \\\mathcal{S}\\.
> - **Scalar multiplication:** \\c\\\mathopen{}\left(a\\(1, 2)\right)\mathclose{} = (ca)\\(1, 2)\\, which is in \\\mathcal{S}\\.
>
> So \\\mathcal{S}\\ is a subspace of \\\mathbb{R}^2\\. Two other subspaces of \\\mathbb{R}^p\\ are the set \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ that holds only the zero vector, and \\\mathbb{R}^p\\ itself.

> **NOTE:**
>
> **Example 35 (A line that misses the origin is not a subspace)** Let \\\mathcal{T} = \mathopen{}\left\\(x, 1) : x \in \mathbb{R}\right\\\mathclose{}\\, the horizontal line in \\\mathbb{R}^2\\ at height \\1\\. The vectors \\(0, 1)\\ and \\(2, 1)\\ are in \\\mathcal{T}\\, but their sum \\(2, 2)\\ is not, because its second entry is \\2\\, not \\1\\. So \\\mathcal{T}\\ is not closed under addition, and it is not a subspace.

> **NOTE:**
>
> **Theorem 20 (Every subspace contains the zero vector)** If \\\mathcal{S}\\ is a subspace of \\\mathbb{R}^p\\ ([Definition 40](#def-subspace)), then \\\tilde{0}\in \mathcal{S}\\.

> **NOTE:**
>
> *Proof*. A subspace is not empty, so it contains some vector \\\tilde{u}\\. Closure under scalar multiplication with \\c = 0\\ puts \\0 \cdot\tilde{u}\\ in \\\mathcal{S}\\, and \\0 \cdot\tilde{u} = \tilde{0}\\.

> **NOTE:**
>
> **Example 36 (Using the zero vector to rule out a subspace)** The plane \\\mathopen{}\left\\(x, y, z) : x + y + z = 1\right\\\mathclose{}\\ in \\\mathbb{R}^3\\ does not contain \\\tilde{0}= (0, 0, 0)\\, because \\0 + 0 + 0 = 0 \neq 1\\. So, by [Theorem 20](#thm-subspace-zero), it is not a subspace. The line \\\mathcal{T}\\ in [Example 35](#exm-not-subspace) fails the same test: \\(0, 0)\\ is not in \\\mathcal{T}\\, because its second entry is not \\1\\.
>
> Containing \\\tilde{0}\\ is necessary but not sufficient. The union of the two coordinate axes in \\\mathbb{R}^2\\, \\\mathopen{}\left\\(x, 0) : x \in \mathbb{R}\right\\\mathclose{} \cup \mathopen{}\left\\(0, y) : y \in \mathbb{R}\right\\\mathclose{}\\, contains \\\tilde{0}\\, but \\(1, 0) + (0, 1) = (1, 1)\\ lies on neither axis, so the union is not closed under addition and is not a subspace.

> **NOTE:**
>
> **Definition 41 (Span)** The **span** of vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k \in \mathbb{R}^p\\ is the set of all their linear combinations:
>
> \\ \operatorname{span}\mathopen{}\left\\\tilde{v}\_1, \ldots, \tilde{v}\_k\right\\\mathclose{} \stackrel{\text{def}}{=} \mathopen{}\left\\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k : c_1, \ldots, c_k \in \mathbb{R}\right\\\mathclose{}. \\
>
> The vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ **span** a set \\\mathcal{S}\\ if their span equals \\\mathcal{S}\\.
>
> By convention, the span of the empty list (\\k = 0\\) is \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, and the empty list counts as linearly independent ([Definition 37](#def-linearly-independent)), since it has no coefficients that could fail to be zero.

> **NOTE:**
>
> **Example 37 (Two spans in \\\mathbb{R}^3\\)**  
>
> - \\\operatorname{span}\mathopen{}\left\\(1, 0, 0), (0, 1, 0)\right\\\mathclose{}\\ is the set of vectors \\(c_1, c_2, 0)\\, the plane \\z = 0\\ in \\\mathbb{R}^3\\.
> - \\\operatorname{span}\mathopen{}\left\\(1, 2, 3), (2, 4, 6)\right\\\mathclose{}\\ is only the line \\\mathopen{}\left\\c\\(1, 2, 3) : c \in \mathbb{R}\right\\\mathclose{}\\, because \\(2, 4, 6) = 2\\(1, 2, 3)\\, so \\c_1 (1, 2, 3) + c_2 (2, 4, 6) = (c_1 + 2 c_2)\\(1, 2, 3)\\. Adding a vector to a list does not always enlarge its span.

> **NOTE:**
>
> **Theorem 21 (A span is a subspace)** For any vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k \in \mathbb{R}^p\\, \\\operatorname{span}\mathopen{}\left\\\tilde{v}\_1, \ldots, \tilde{v}\_k\right\\\mathclose{}\\ ([Definition 41](#def-span)) is a subspace of \\\mathbb{R}^p\\ ([Definition 40](#def-subspace)).

> **NOTE:**
>
> *Proof*. The span is not empty: it contains \\0 \cdot\tilde{v}\_1 + \cdots + 0 \cdot\tilde{v}\_k = \tilde{0}\\.
>
> **Addition.** Take two vectors in the span, \\\tilde{u} = a_1 \tilde{v}\_1 + \cdots + a_k \tilde{v}\_k\\ and \\\tilde{w} = b_1 \tilde{v}\_1 + \cdots + b_k \tilde{v}\_k\\. Then
>
> \\ \begin{aligned} \tilde{u} + \tilde{w} &= (a_1 \tilde{v}\_1 + \cdots + a_k \tilde{v}\_k) + (b_1 \tilde{v}\_1 + \cdots + b_k \tilde{v}\_k) && \text{(substitute the two combinations)} \\ &= (a_1 + b_1)\\\tilde{v}\_1 + \cdots + (a_k + b_k)\\\tilde{v}\_k && \text{(regroup, and distribute each } \tilde{v}\_i \text{)} \end{aligned} \\
>
> which is a linear combination of \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\, so it is in the span.
>
> **Scalar multiplication.** For \\c \in \mathbb{R}\\,
>
> \\ \begin{aligned} c\\\tilde{u} &= c\\(a_1 \tilde{v}\_1 + \cdots + a_k \tilde{v}\_k) && \text{(substitute the combination)} \\ &= (c a_1)\\\tilde{v}\_1 + \cdots + (c a_k)\\\tilde{v}\_k && \text{(distribute } c \text{ over the sum)} \end{aligned} \\
>
> which is again in the span.

> **NOTE:**
>
> **Example 38 (The line in [Example 34](#exm-subspace) is a span)** The line \\\mathcal{S} = \mathopen{}\left\\c\\(1, 2) : c \in \mathbb{R}\right\\\mathclose{}\\ in [Example 34](#exm-subspace) is \\\operatorname{span}\mathopen{}\left\\(1, 2)\right\\\mathclose{}\\, so [Theorem 21](#thm-span-subspace) gives a second [proof](notation.llms.md#def-proof) that it is a subspace. Likewise, the plane \\z = 0\\ in [Example 37](#exm-span) is a subspace of \\\mathbb{R}^3\\, because it is \\\operatorname{span}\mathopen{}\left\\(1, 0, 0), (0, 1, 0)\right\\\mathclose{}\\.

> **NOTE:**
>
> **Theorem 22 (A matrix-vector product combines the columns)** If \\\mathbf{A}\\ is an \\m \times n\\ matrix with columns \\\tilde{a}\_1, \ldots, \tilde{a}\_n\\ and \\\tilde{x} \in \mathbb{R}^n\\, then
>
> \\ \mathbf{A} \tilde{x} = x_1 \tilde{a}\_1 + \cdots + x_n \tilde{a}\_n. \\

> **NOTE:**
>
> *Proof*. Compare entry \\i\\ of the two sides, for each \\i = 1, \ldots, m\\. Entry \\i\\ of \\\tilde{a}\_j\\ is \\a\_{ij}\\, so
>
> \\ \begin{aligned} (\mathbf{A} \tilde{x})\_i &= a\_{i1} x_1 + \cdots + a\_{in} x_n && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\ &= x_1 a\_{i1} + \cdots + x_n a\_{in} && \text{(multiplication of numbers is commutative)} \\ &= (x_1 \tilde{a}\_1 + \cdots + x_n \tilde{a}\_n)\_i && \text{(entry } i \text{ of each } x_j \tilde{a}\_j \text{ is } x_j a\_{ij} \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 39 (A product as a combination of columns)** \\ \begin{aligned} \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix} &= 1 \cdot\begin{bmatrix} 1 \\ 3 \end{bmatrix} + (-1) \cdot\begin{bmatrix} 2 \\ 4 \end{bmatrix} && \text{(}\href{#thm-matvec-columns}{\text{Theorem~22}}\text{)} \\ &= \begin{bmatrix} -1 \\ -1 \end{bmatrix}, && \text{(arithmetic)} \end{aligned} \\
>
> the same answer as computing each entry as a row-times-vector dot product ([Remark 11](#rem-matvec-row-dot-products)).

> **NOTE:**
>
> **Theorem 23 (A matrix maps a combination to the same combination of images)** If \\\mathbf{A}\\ is an \\m \times n\\ matrix, \\\tilde{z}\_1, \ldots, \tilde{z}\_k \in \mathbb{R}^n\\ and \\c_1, \ldots, c_k \in \mathbb{R}\\, then
>
> \\ \mathbf{A}\\(c_1 \tilde{z}\_1 + \cdots + c_k \tilde{z}\_k) = c_1\\\mathbf{A} \tilde{z}\_1 + \cdots + c_k\\\mathbf{A} \tilde{z}\_k. \\

> **NOTE:**
>
> *Proof*. The function \\\tilde{x}\mapsto \mathbf{A}\tilde{x}\\ is a linear map by [Theorem 12](#thm-matrix-map-linear), and a linear map preserves linear combinations by [Theorem 13](#thm-linear-map-lincom). Applying that theorem with \\f(\tilde{x}) = \mathbf{A}\tilde{x}\\ and \\\tilde{v}\_i = \tilde{z}\_i\\ gives the identity.

> **NOTE:**
>
> **Example 40 (Applying a matrix to a combination)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\, \\\tilde{z}\_1 = (1, 0)\\ and \\\tilde{z}\_2 = (0, 1)\\. Then \\\mathbf{A} \tilde{z}\_1 = (1, 3)\\ and \\\mathbf{A} \tilde{z}\_2 = (2, 4)\\, and for the combination \\2 \tilde{z}\_1 - \tilde{z}\_2 = (2, -1)\\:
>
> \\ \begin{aligned} \mathbf{A}\\(2, -1) &= (1 \cdot 2 + 2 \cdot(-1),\\ 3 \cdot 2 + 4 \cdot(-1)) && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\ &= (0, 2) && \text{(arithmetic)} \\ &= 2\\(1, 3) - (2, 4), && \text{(arithmetic)} \end{aligned} \\
>
> which is \\2\\\mathbf{A} \tilde{z}\_1 - \mathbf{A} \tilde{z}\_2\\, as [Theorem 23](#thm-matvec-linear) says.

> **NOTE:**
>
> **Theorem 24 (More than \\p\\ vectors in \\\mathbb{R}^p\\ are linearly dependent)** If \\k \> p\\, then any \\k\\ vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k \in \mathbb{R}^p\\ are not linearly independent ([Definition 37](#def-linearly-independent)): some numbers \\c_1, \ldots, c_k\\, not all zero, satisfy \\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k = \tilde{0}\_p\\.

> **NOTE:**
>
> *Proof*. [Induction](proof-writing.llms.md#def-proof-by-induction) on \\p\\.
>
> **Base case, \\p = 1\\.** Each \\\tilde{v}\_i\\ is a single number \\v_i\\, and \\k \ge 2\\. If \\v_1 = 0\\, take \\c_1 = 1\\ and every other \\c_i = 0\\. Otherwise take \\c_1 = v_2\\, \\c_2 = -v_1\\ and every other \\c_i = 0\\; then \\c_2 \neq 0\\, and \\v_2 v_1 - v_1 v_2 = 0\\.
>
> **Inductive step.** Let \\p \ge 2\\, assume the [theorem](notation.llms.md#def-theorem) holds for vectors in \\\mathbb{R}^{p-1}\\, and take \\k \> p\\ vectors in \\\mathbb{R}^p\\. Write \\v\_{i,p}\\ for the last entry of \\\tilde{v}\_i\\.
>
> *Case 1: every \\v\_{i,p} = 0\\.* Deleting the last entry gives \\k \> p - 1\\ vectors in \\\mathbb{R}^{p-1}\\, which by the inductive hypothesis have a combination with coefficients not all zero that equals \\\tilde{0}\_{p-1}\\. The same coefficients combine the original vectors to \\\tilde{0}\_p\\, since every last entry is \\0\\.
>
> *Case 2: some \\v\_{i,p} \neq 0\\.* Renumber the vectors so that \\v\_{k,p} \neq 0\\, and for \\i = 1, \ldots, k-1\\ let
>
> \\ \tilde{w}\_i \stackrel{\text{def}}{=}\tilde{v}\_i - \frac{v\_{i,p}}{v\_{k,p}}\\\tilde{v}\_k. \\
>
> The last entry of \\\tilde{w}\_i\\ is \\v\_{i,p} - \frac{v\_{i,p}}{v\_{k,p}}\\v\_{k,p} = 0\\. Deleting that zero last entry gives \\k - 1 \> p - 1\\ vectors in \\\mathbb{R}^{p-1}\\, so by the inductive hypothesis there are numbers \\c_1, \ldots, c\_{k-1}\\, not all zero, whose combination of the shortened vectors is \\\tilde{0}\_{p-1}\\. Putting the zero last entries back gives \\c_1 \tilde{w}\_1 + \cdots + c\_{k-1} \tilde{w}\_{k-1} = \tilde{0}\_p\\. Then
>
> \\ \begin{aligned} \tilde{0}\_p &= c_1 \tilde{w}\_1 + \cdots + c\_{k-1} \tilde{w}\_{k-1} && \text{(choice of } c_1, \ldots, c\_{k-1} \text{)} \\ &= \sum\_{i=1}^{k-1} c_i \mathopen{}\left(\tilde{v}\_i - \frac{v\_{i,p}}{v\_{k,p}}\\\tilde{v}\_k\right)\mathclose{} && \text{(definition of } \tilde{w}\_i \text{)} \\ &= \sum\_{i=1}^{k-1} c_i \tilde{v}\_i - \sum\_{i=1}^{k-1} \frac{c_i v\_{i,p}}{v\_{k,p}}\\\tilde{v}\_k && \text{(distribute each } c_i \text{, and split the sum)} \\ &= c_1 \tilde{v}\_1 + \cdots + c\_{k-1} \tilde{v}\_{k-1} - \mathopen{}\left(\sum\_{i=1}^{k-1} \frac{c_i v\_{i,p}}{v\_{k,p}}\right)\mathclose{}\\\tilde{v}\_k, && \text{(factor } \tilde{v}\_k \text{ out of the second sum)} \end{aligned} \\
>
> a combination of \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ equal to \\\tilde{0}\_p\\ whose first \\k - 1\\ coefficients are not all zero.

> **NOTE:**
>
> **Example 41 (Three vectors in \\\mathbb{R}^2\\)** [Theorem 24](#thm-many-vectors-dependent) says the three vectors \\(1, 0)\\, \\(0, 1)\\ and \\(1, 1)\\ in \\\mathbb{R}^2\\ are linearly dependent, and indeed \\1 \cdot(1, 0) + 1 \cdot(0, 1) - 1 \cdot(1, 1) = (0, 0)\\. The theorem says nothing about \\k \le p\\ vectors: \\(1, 0)\\ and \\(0, 1)\\ are linearly independent, while \\(1, 2)\\ and \\(2, 4)\\ are not ([Example 32](#exm-linearly-independent)).

> **NOTE:**
>
> **Definition 42 (Basis)** A **basis** of a subspace \\\mathcal{S}\\ ([Definition 40](#def-subspace)) is a list of vectors that are linearly independent ([Definition 37](#def-linearly-independent)) and span \\\mathcal{S}\\ ([Definition 41](#def-span)).

> **NOTE:**
>
> **Example 42 (Two bases of \\\mathbb{R}^2\\)**  
>
> - \\(1, 0)\\ and \\(0, 1)\\ form a basis of \\\mathbb{R}^2\\: they are linearly independent, and any \\(x, y) \in \mathbb{R}^2\\ equals \\x\\(1, 0) + y\\(0, 1)\\.
> - \\(1, 0)\\ and \\(1, 1)\\ also form a basis of \\\mathbb{R}^2\\: [Example 32](#exm-linearly-independent) shows they are linearly independent, and any \\(x, y)\\ equals \\(x - y)\\(1, 0) + y\\(1, 1)\\, because \\(x - y) + y = x\\ in the first entry and \\0 + y = y\\ in the second.

> **NOTE:**
>
> **Example 43 (Lists that are not bases of \\\mathbb{R}^2\\)**  
>
> - \\(1, 0)\\ and \\(2, 0)\\ are not a basis of \\\mathbb{R}^2\\. They are not linearly independent, since \\2\\(1, 0) - (2, 0) = \tilde{0}\\, and they do not span \\\mathbb{R}^2\\: every combination \\c_1 (1, 0) + c_2 (2, 0)\\ has second entry \\0\\, so \\(0, 1)\\ is not in their span.
> - \\(1, 0)\\, \\(0, 1)\\ and \\(1, 1)\\ span \\\mathbb{R}^2\\, but they are not a basis: \\(1, 0) + (0, 1) - (1, 1) = \tilde{0}\\, so they are not linearly independent.

> **NOTE:**
>
> **Theorem 25 (Coefficients in a basis are unique)** If \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ is a basis of a subspace \\\mathcal{S}\\ ([Definition 42](#def-basis)), then every \\\tilde{x} \in \mathcal{S}\\ is a linear combination \\\tilde{x} = c_1 \tilde{a}\_1 + \cdots + c_k \tilde{a}\_k\\ for exactly one list of numbers \\c_1, \ldots, c_k\\.

> **NOTE:**
>
> *Proof*. At least one such list exists, because the basis spans \\\mathcal{S}\\ ([Definition 41](#def-span)).
>
> Suppose two lists both work:
>
> \\ c_1 \tilde{a}\_1 + \cdots + c_k \tilde{a}\_k = \tilde{x} = d_1 \tilde{a}\_1 + \cdots + d_k \tilde{a}\_k. \\
>
> Subtracting the right side from the left side gives
>
> \\ \begin{aligned} \tilde{0} &= (c_1 \tilde{a}\_1 + \cdots + c_k \tilde{a}\_k) - (d_1 \tilde{a}\_1 + \cdots + d_k \tilde{a}\_k) && \text{(both combinations equal } \tilde{x} \text{)} \\ &= (c_1 - d_1)\\\tilde{a}\_1 + \cdots + (c_k - d_k)\\\tilde{a}\_k && \text{(regroup, and distribute each } \tilde{a}\_i \text{)} \end{aligned} \\
>
> Because \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ are linearly independent ([Definition 37](#def-linearly-independent)), every coefficient \\c_i - d_i\\ is \\0\\, so \\c_i = d_i\\ for each \\i\\.

> **NOTE:**
>
> **Example 44 (Coefficients of \\(3, 5)\\ in two bases)** In the basis \\(1, 0), (0, 1)\\ of [Example 42](#exm-basis), \\(3, 5) = 3\\(1, 0) + 5\\(0, 1)\\, and no other coefficients work. In the basis \\(1, 0), (1, 1)\\, the formula in [Example 42](#exm-basis) gives \\(3, 5) = (3 - 5)\\(1, 0) + 5\\(1, 1) = -2\\(1, 0) + 5\\(1, 1)\\. The same vector has different coefficients in different bases, but within one basis its coefficients are unique.
>
> The list \\(1, 0), (0, 1), (1, 1)\\ in [Example 43](#exm-not-basis) spans \\\mathbb{R}^2\\ but is not linearly independent, and the coefficients of \\(3, 5)\\ are not unique: \\(3, 5) = 3\\(1, 0) + 5\\(0, 1) + 0\\(1, 1) = 0\\(1, 0) + 2\\(0, 1) + 3\\(1, 1)\\.

> **NOTE:**
>
> **Definition 43 (Coordinates in a basis)** Let \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ be a basis of a subspace \\\mathcal{S}\\ ([Definition 42](#def-basis)), and let \\\tilde{x} \in \mathcal{S}\\. The **coordinates** of \\\tilde{x}\\ in this basis are the numbers \\c_1, \ldots, c_k\\ with \\\tilde{x} = c_1 \tilde{a}\_1 + \cdots + c_k \tilde{a}\_k\\, and \\(c_1, \ldots, c_k) \in \mathbb{R}^k\\ is the **coordinate vector** of \\\tilde{x}\\. By [Theorem 25](#thm-basis-unique) there is exactly one such list of numbers.

> **NOTE:**
>
> **Example 45 (Coordinates of \\(4, 1)\\ in two bases of \\\mathbb{R}^2\\)** In the basis \\(1, 0), (1, 1)\\ of [Example 42](#exm-basis), the coordinates of \\(4, 1)\\ are \\3\\ and \\1\\:
>
> \\ \begin{aligned} 3\\(1, 0) + 1\\(1, 1) &= (3 + 1,\\ 0 + 1) && \text{(}\href{#def-linear-combination}{\text{Definition~8}}\text{, entry by entry)} \\ &= (4, 1). && \text{(add)} \end{aligned} \\
>
> In the basis \\(1, 0), (0, 1)\\, its coordinates are its entries, \\4\\ and \\1\\.

> **NOTE:**
>
> **Theorem 26 (All bases of a subspace have the same number of vectors)** If \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ and \\\tilde{b}\_1, \ldots, \tilde{b}\_l\\ are both bases of a subspace \\\mathcal{S}\\ of \\\mathbb{R}^p\\ ([Definition 42](#def-basis)), then \\k = l\\.

> **NOTE:**
>
> *Proof*. Let \\\mathbf{A}\\ be the \\p \times k\\ matrix with columns \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\, and \\\mathbf{B}\\ the \\p \times l\\ matrix with columns \\\tilde{b}\_1, \ldots, \tilde{b}\_l\\.
>
> **Write \\\mathbf{A}\\ in terms of \\\mathbf{B}\\.** Each \\\tilde{a}\_j\\ is in \\\mathcal{S}\\, and the \\\tilde{b}\\’s span \\\mathcal{S}\\ ([Definition 41](#def-span)), so \\\tilde{a}\_j = \mathbf{B} \tilde{c}\_j\\ for some \\\tilde{c}\_j \in \mathbb{R}^l\\ ([Definition 28](#def-matvec-mult)). Let \\\mathbf{C}\\ be the \\l \times k\\ matrix with columns \\\tilde{c}\_1, \ldots, \tilde{c}\_k\\. Then \\\underbrace{\mathbf{A}}\_{p \times k} = \underbrace{\mathbf{B}}\_{p \times l}\\\underbrace{\mathbf{C}}\_{l \times k}\\, because column \\j\\ of \\\mathbf{B} \mathbf{C}\\ is \\\mathbf{B} \tilde{c}\_j\\.
>
> **The columns of \\\mathbf{C}\\ are linearly independent.** Suppose \\\mathbf{C} \tilde{x} = \tilde{0}\\ for some \\\tilde{x} \in \mathbb{R}^k\\. Then
>
> \\ \begin{aligned} \mathbf{A} \tilde{x} &= (\mathbf{B} \mathbf{C})\\\tilde{x} && \text{(substitute } \mathbf{A} = \mathbf{B} \mathbf{C} \text{)} \\ &= \mathbf{B}\\(\mathbf{C} \tilde{x}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{B}\\\tilde{0} && \text{(substitute } \mathbf{C} \tilde{x} = \tilde{0}\text{)} \\ &= \tilde{0} && \text{(a matrix times the zero vector is } \tilde{0}\text{)} \end{aligned} \\
>
> \\\mathbf{A} \tilde{x}\\ is the combination \\x_1 \tilde{a}\_1 + \cdots + x_k \tilde{a}\_k\\ ([Theorem 22](#thm-matvec-columns)), and the \\\tilde{a}\\’s are linearly independent ([Definition 37](#def-linearly-independent)), so \\\tilde{x} = \tilde{0}\\. So the only combination of the columns of \\\mathbf{C}\\ that equals \\\tilde{0}\\ has all coefficients \\0\\.
>
> **Count.** \\\mathbf{C}\\ has \\k\\ linearly independent columns of length \\l\\. More than \\l\\ vectors in \\\mathbb{R}^l\\ are never linearly independent ([Theorem 24](#thm-many-vectors-dependent)), so \\k \le l\\. Exchanging the roles of the two bases gives \\l \le k\\, so \\k = l\\.

> **NOTE:**
>
> **Example 46 (Both bases of \\\mathbb{R}^2\\ in [Example 42](#exm-basis) have two vectors)** The bases \\(1, 0), (0, 1)\\ and \\(1, 0), (1, 1)\\ of \\\mathbb{R}^2\\ in [Example 42](#exm-basis) both have \\2\\ vectors, as [Theorem 26](#thm-basis-size) requires. So no list of \\3\\ vectors is a basis of \\\mathbb{R}^2\\, which agrees with [Example 43](#exm-not-basis): the list \\(1, 0), (0, 1), (1, 1)\\ spans \\\mathbb{R}^2\\ but is not linearly independent.

> **NOTE:**
>
> **Definition 44 (Dimension)** The **dimension** of a subspace \\\mathcal{S}\\, written \\\dim(\mathcal{S})\\, is the number of vectors in any basis of \\\mathcal{S}\\ ([Definition 42](#def-basis)). [Theorem 26](#thm-basis-size) makes this number well defined. By convention, the empty list is the basis of \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, so \\\dim(\mathopen{}\left\\\tilde{0}\right\\\mathclose{}) = 0\\.

> **NOTE:**
>
> **Example 47 (The dimensions of some subspaces)**  
>
> - \\\dim(\mathopen{}\left\\\tilde{0}\right\\\mathclose{}) = 0\\, by the convention in [Definition 44](#def-dimension).
> - \\\dim(\mathbb{R}^2) = 2\\, by [Example 42](#exm-basis). More generally, \\\dim(\mathbb{R}^p) = p\\: the indicator vectors \\\tilde{e}\_1, \ldots, \tilde{e}\_p\\ ([Definition 12](#def-indicator-vector)) are linearly independent, since \\c_1 \tilde{e}\_1 + \cdots + c_p \tilde{e}\_p = (c_1, \ldots, c_p)\\, which is \\\tilde{0}\_p\\ only if every \\c_i = 0\\; and they span \\\mathbb{R}^p\\, since any \\\tilde{x} = x_1 \tilde{e}\_1 + \cdots + x_p \tilde{e}\_p\\.
> - The line in [Example 34](#exm-subspace) has dimension \\1\\: the single vector \\(1, 2)\\ is linearly independent and spans the line.
> - The plane \\z = 0\\ in [Example 37](#exm-span) has dimension \\2\\, with basis \\(1, 0, 0), (0, 1, 0)\\.

> **NOTE:**
>
> **Theorem 27 (Adding a vector outside the span keeps a list independent)** If \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ are linearly independent ([Definition 37](#def-linearly-independent)) and \\\tilde{w}\\ is not in \\\operatorname{span}\mathopen{}\left\\\tilde{v}\_1, \ldots, \tilde{v}\_k\right\\\mathclose{}\\ ([Definition 41](#def-span)), then \\\tilde{v}\_1, \ldots, \tilde{v}\_k, \tilde{w}\\ are linearly independent.

> **NOTE:**
>
> *Proof*. Suppose \\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k + d\\\tilde{w} = \tilde{0}\\.
>
> **The coefficient \\d\\ is \\0\\.** If \\d \neq 0\\, then
>
> \\ \begin{aligned} \tilde{w} &= \frac{1}{d}\\\mathopen{}\left(d\\\tilde{w}\right)\mathclose{} && \text{(} d \neq 0 \text{)} \\ &= \frac{1}{d}\\\mathopen{}\left(-c_1 \tilde{v}\_1 - \cdots - c_k \tilde{v}\_k\right)\mathclose{} && \text{(solve the supposed equation for } d\\\tilde{w} \text{)} \\ &= \mathopen{}\left(-\frac{c_1}{d}\right)\mathclose{}\\\tilde{v}\_1 + \cdots + \mathopen{}\left(-\frac{c_k}{d}\right)\mathclose{}\\\tilde{v}\_k, && \text{(distribute } \tfrac{1}{d} \text{)} \end{aligned} \\
>
> which puts \\\tilde{w}\\ in \\\operatorname{span}\mathopen{}\left\\\tilde{v}\_1, \ldots, \tilde{v}\_k\right\\\mathclose{}\\, contrary to the assumption.
>
> **The other coefficients are \\0\\.** With \\d = 0\\, the equation reads \\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k = \tilde{0}\\, so every \\c_i = 0\\, because \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ are linearly independent.

> **NOTE:**
>
> **Example 48 (Adding \\(0, 0, 1)\\ to two independent vectors in \\\mathbb{R}^3\\)** The vectors \\(1, 0, 0)\\ and \\(0, 1, 0)\\ are linearly independent, and their span is the plane \\z = 0\\ ([Example 37](#exm-span)). The vector \\(0, 0, 1)\\ has third entry \\1\\, so it is not in that plane, and by [Theorem 27](#thm-add-outside-span) the three vectors \\(1, 0, 0)\\, \\(0, 1, 0)\\, \\(0, 0, 1)\\ are linearly independent. Adding \\(1, 1, 0)\\ instead would not work: \\(1, 1, 0)\\ is in the span, and \\(1, 0, 0) + (0, 1, 0) - (1, 1, 0) = \tilde{0}\\.

> **NOTE:**
>
> **Theorem 28 (An independent list extends to a basis)** If \\\mathcal{S}\\ is a subspace of \\\mathbb{R}^p\\ ([Definition 40](#def-subspace)) and \\\tilde{v}\_1, \ldots, \tilde{v}\_k \in \mathcal{S}\\ are linearly independent ([Definition 37](#def-linearly-independent)), then adding vectors of \\\mathcal{S}\\ to the list gives a basis of \\\mathcal{S}\\ ([Definition 42](#def-basis)). Starting from the empty list shows that every subspace has a basis.

> **NOTE:**
>
> *Proof*. Repeat the following step. If the current list spans \\\mathcal{S}\\, stop: it is linearly independent and spans \\\mathcal{S}\\, so it is a basis. Otherwise, some \\\tilde{w} \in \mathcal{S}\\ is not in the span of the current list; add \\\tilde{w}\\ to the list, which stays linearly independent by [Theorem 27](#thm-add-outside-span).
>
> Every list produced is a linearly independent list of vectors in \\\mathbb{R}^p\\, so it has at most \\p\\ vectors ([Theorem 24](#thm-many-vectors-dependent)). Each step adds one vector, so the process stops after at most \\p - k\\ steps, and when it stops the list is a basis of \\\mathcal{S}\\.
>
> For the empty list, which is linearly independent and spans \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ by the conventions in [Definition 41](#def-span), the first step asks whether \\\mathcal{S} = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\: if so, the empty list is already a basis; if not, the process adds vectors as described.

> **NOTE:**
>
> **Example 49 (Extending \\(1, 1, 0)\\ to a basis of \\\mathbb{R}^3\\)** Start with the single vector \\(1, 1, 0)\\.
>
> 1.  \\(1, 0, 0)\\ is not in \\\operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\, because every multiple \\c\\(1, 1, 0)\\ has equal first and second entries. Add it.
> 2.  \\(0, 0, 1)\\ is not in \\\operatorname{span}\mathopen{}\left\\(1, 1, 0), (1, 0, 0)\right\\\mathclose{}\\, because every combination of those two vectors has third entry \\0\\. Add it.
> 3.  The list \\(1, 1, 0), (1, 0, 0), (0, 0, 1)\\ spans \\\mathbb{R}^3\\: \\(x, y, z) = y\\(1, 1, 0) + (x - y)\\(1, 0, 0) + z\\(0, 0, 1)\\. Stop.
>
> The result is a basis of \\\mathbb{R}^3\\ that contains the starting vector.

> **NOTE:**
>
> **Theorem 29 (An independent list in a subspace has at most \\\dim\\ vectors)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\ with \\\dim(\mathcal{S}) = d\\ ([Definition 44](#def-dimension)).
>
> 1.  Any linearly independent list of vectors in \\\mathcal{S}\\ has at most \\d\\ vectors.
> 2.  If \\\mathcal{T}\\ is a subspace with \\\mathcal{T} \subseteq \mathcal{S}\\, then \\\dim(\mathcal{T}) \le \dim(\mathcal{S})\\.

> **NOTE:**
>
> *Proof*. **Part 1.** If \\d = 0\\, then \\\mathcal{S} = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, so every vector in a nonempty list from \\\mathcal{S}\\ is \\\tilde{0}\\, and \\1 \cdot\tilde{0}= \tilde{0}\\ shows the list is not linearly independent; only the empty list, with \\0 = d\\ vectors, is. Now let \\d \ge 1\\, and let \\\tilde{a}\_1, \ldots, \tilde{a}\_d\\ be a basis of \\\mathcal{S}\\, and let \\\tilde{u}\_1, \ldots, \tilde{u}\_k \in \mathcal{S}\\ be linearly independent. Each \\\tilde{u}\_j\\ is in \\\mathcal{S}\\, so \\\tilde{u}\_j = c\_{1j} \tilde{a}\_1 + \cdots + c\_{dj} \tilde{a}\_d\\ for some coordinate vector \\\tilde{c}\_j = (c\_{1j}, \ldots, c\_{dj}) \in \mathbb{R}^d\\. Suppose \\k \> d\\. Then \\\tilde{c}\_1, \ldots, \tilde{c}\_k\\ are \\k \> d\\ vectors in \\\mathbb{R}^d\\, so some \\x_1, \ldots, x_k\\, not all zero, satisfy \\x_1 \tilde{c}\_1 + \cdots + x_k \tilde{c}\_k = \tilde{0}\_d\\ ([Theorem 24](#thm-many-vectors-dependent)); entry \\i\\ of that equation says \\\sum\_{j=1}^{k} x_j c\_{ij} = 0\\. Then
>
> \\ \begin{aligned} \sum\_{j=1}^{k} x_j \tilde{u}\_j &= \sum\_{j=1}^{k} x_j \sum\_{i=1}^{d} c\_{ij} \tilde{a}\_i && \text{(substitute each } \tilde{u}\_j \text{)} \\ &= \sum\_{j=1}^{k} \sum\_{i=1}^{d} x_j c\_{ij}\\\tilde{a}\_i && \text{(distribute each } x_j \text{ over the inner sum)} \\ &= \sum\_{i=1}^{d} \sum\_{j=1}^{k} x_j c\_{ij}\\\tilde{a}\_i && \text{(swap the order of the finite sums)} \\ &= \sum\_{i=1}^{d} \mathopen{}\left(\sum\_{j=1}^{k} x_j c\_{ij}\right)\mathclose{}\\\tilde{a}\_i && \text{(factor } \tilde{a}\_i \text{ out of the inner sum)} \\ &= \sum\_{i=1}^{d} 0 \cdot\tilde{a}\_i && \text{(entry } i \text{ of } \textstyle\sum_j x_j \tilde{c}\_j = \tilde{0}\_d \text{)} \\ &= \tilde{0}\_p, && \text{(a zero multiple of a vector is } \tilde{0}\text{)} \end{aligned} \\
>
> a combination of \\\tilde{u}\_1, \ldots, \tilde{u}\_k\\ with coefficients not all zero that equals \\\tilde{0}\_p\\. That contradicts their linear independence, so \\k \le d\\.
>
> **Part 2.** \\\mathcal{T}\\ has a basis ([Theorem 28](#thm-extend-basis)) with \\\dim(\mathcal{T})\\ vectors. Those vectors are linearly independent and lie in \\\mathcal{S}\\, so by Part 1 there are at most \\\dim(\mathcal{S})\\ of them.

> **NOTE:**
>
> **Example 50 (Subspaces of a plane have dimension at most two)** The plane \\\mathcal{S} = \mathopen{}\left\\(x, y, 0) : x, y \in \mathbb{R}\right\\\mathclose{}\\ in \\\mathbb{R}^3\\ has dimension \\2\\ ([Example 47](#exm-dimension)). By [Theorem 29](#thm-dim-bound), no three vectors with third entry \\0\\ are linearly independent; for instance, \\(1, 0, 0) + (0, 1, 0) - (1, 1, 0) = \tilde{0}\\. The line \\\mathcal{T} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ lies in \\\mathcal{S}\\, and \\\dim(\mathcal{T}) = 1 \le 2 = \dim(\mathcal{S})\\.

> **NOTE:**
>
> **Theorem 30 (A subspace inside another of the same dimension equals it)** If \\\mathcal{T}\\ and \\\mathcal{S}\\ are subspaces of \\\mathbb{R}^p\\ with \\\mathcal{T} \subseteq \mathcal{S}\\ and \\\dim(\mathcal{T}) = \dim(\mathcal{S})\\ ([Definition 44](#def-dimension)), then \\\mathcal{T} = \mathcal{S}\\.

> **NOTE:**
>
> *Proof*. Let \\d = \dim(\mathcal{S})\\, and let \\\tilde{t}\_1, \ldots, \tilde{t}\_d\\ be a basis of \\\mathcal{T}\\ ([Theorem 28](#thm-extend-basis)); it has \\d\\ vectors because \\\dim(\mathcal{T}) = d\\. (When \\d = 0\\ it is the empty list, whose span is \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ by the convention in [Definition 41](#def-span), and the argument is unchanged.) Suppose some \\\tilde{s} \in \mathcal{S}\\ is not in \\\operatorname{span}\mathopen{}\left\\\tilde{t}\_1, \ldots, \tilde{t}\_d\right\\\mathclose{} = \mathcal{T}\\. Then \\\tilde{t}\_1, \ldots, \tilde{t}\_d, \tilde{s}\\ are linearly independent ([Theorem 27](#thm-add-outside-span)), and they are \\d + 1\\ vectors of \\\mathcal{S}\\, which contradicts part 1 of [Theorem 29](#thm-dim-bound). So every vector of \\\mathcal{S}\\ is in \\\mathcal{T}\\, that is, \\\mathcal{S} \subseteq \mathcal{T}\\. Together with \\\mathcal{T} \subseteq \mathcal{S}\\, this inclusion gives \\\mathcal{T} = \mathcal{S}\\.

> **NOTE:**
>
> **Example 51 (Two independent vectors in a plane span it)** Let \\\mathcal{S} = \mathopen{}\left\\(x, y, 0) : x, y \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\, which has dimension \\2\\ ([Example 47](#exm-dimension)), and let \\\mathcal{T} = \operatorname{span}\mathopen{}\left\\(1, 0, 0), (1, 1, 0)\right\\\mathclose{}\\. Both vectors have third entry \\0\\, so \\\mathcal{T} \subseteq \mathcal{S}\\. They are linearly independent: \\c_1 (1, 0, 0) + c_2 (1, 1, 0) = (c_1 + c_2, c_2, 0)\\, which is \\\tilde{0}\\ only if \\c_2 = 0\\ and then \\c_1 = 0\\. So \\\dim(\mathcal{T}) = 2\\, and [Theorem 30](#thm-subspace-equal-dim) gives \\\mathcal{T} = \mathcal{S}\\ without solving for any coefficients. As a check, \\(x, y, 0) = (x - y)\\(1, 0, 0) + y\\(1, 1, 0)\\.

> **NOTE:**
>
> **Example 52 (Equal dimensions without containment)** The lines \\\operatorname{span}\mathopen{}\left\\(1, 0, 0)\right\\\mathclose{}\\ and \\\operatorname{span}\mathopen{}\left\\(0, 1, 0)\right\\\mathclose{}\\ in \\\mathbb{R}^3\\ both have dimension \\1\\, but they are not equal: \\(1, 0, 0)\\ is in the first and not the second. [Theorem 30](#thm-subspace-equal-dim) does not apply, because neither line contains the other.

### 2.11 Column space and null space

> **NOTE:**
>
> **Definition 45 (Column space (range, image))** The **column space** of an \\m \times n\\ matrix \\\mathbf{A}\\ is
>
> \\ \mathcal{C}(\mathbf{A}) \stackrel{\text{def}}{=} \mathopen{}\left\\\mathbf{A} \tilde{x} : \tilde{x} \in \mathbb{R}^n\right\\\mathclose{}, \\
>
> the set of all vectors \\\mathbf{A} \tilde{x}\\ in \\\mathbb{R}^m\\. It is also called the **range** or **image** of \\\mathbf{A}\\. The **row space** of \\\mathbf{A}\\ is \\\mathcal{C}({\mathbf{A}}^{\top})\\, a set of vectors in \\\mathbb{R}^n\\.

> **NOTE:**
>
> **Example 53 (The column space of a rank-one matrix)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix}. \\
>
> For any \\\tilde{x} \in \mathbb{R}^3\\, \\\mathbf{A} \tilde{x} = (x_1 - 2x_2 - 2x_3,\\ 3\\(x_1 - 2x_2 - 2x_3)) = (x_1 - 2x_2 - 2x_3)\\(1, 3)\\ ([Definition 28](#def-matvec-mult)). The number \\x_1 - 2x_2 - 2x_3\\ can be any real number (take \\x_2 = x_3 = 0\\), so \\\mathcal{C}(\mathbf{A}) = \mathopen{}\left\\c\\(1, 3) : c \in \mathbb{R}\right\\\mathclose{}\\, a line in \\\mathbb{R}^2\\. The vector \\(1, 0)\\ is not in \\\mathcal{C}(\mathbf{A})\\: \\c\\(1, 3)\\ has second entry \\3c\\, which is \\0\\ only if \\c = 0\\, and then the first entry is \\0\\, not \\1\\.

> **NOTE:**
>
> **Theorem 31 (The column space is the span of the columns)** If \\\mathbf{A}\\ is an \\m \times n\\ matrix with columns \\\tilde{a}\_1, \ldots, \tilde{a}\_n\\, then
>
> \\ \mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_n\right\\\mathclose{}, \\
>
> so \\\mathcal{C}(\mathbf{A})\\ is a subspace of \\\mathbb{R}^m\\, and the row space \\\mathcal{C}({\mathbf{A}}^{\top})\\ is a subspace of \\\mathbb{R}^n\\.

> **NOTE:**
>
> *Proof*. By [Theorem 22](#thm-matvec-columns), \\\mathbf{A} \tilde{x} = x_1 \tilde{a}\_1 + \cdots + x_n \tilde{a}\_n\\, and as \\\tilde{x}\\ ranges over \\\mathbb{R}^n\\, the coefficients \\x_1, \ldots, x_n\\ range over all lists of \\n\\ numbers. So the set of all \\\mathbf{A} \tilde{x}\\ ([Definition 45](#def-column-space)) is the set of all linear combinations of the columns, which is their span ([Definition 41](#def-span)). A span is a subspace ([Theorem 21](#thm-span-subspace)). Applying the same argument to \\{\mathbf{A}}^{\top}\\, whose columns are the rows of \\\mathbf{A}\\, shows the row space is a subspace of \\\mathbb{R}^n\\.

> **NOTE:**
>
> **Example 54 (Reading off the column space and row space from the columns and rows)** For \\\mathbf{A}\\ in [Example 53](#exm-column-space), the columns are \\(1, 3)\\, \\(-2, -6) = -2\\(1, 3)\\ and \\(-2, -6) = -2\\(1, 3)\\, so by [Theorem 31](#thm-column-space-span) \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\, the same line found in [Example 53](#exm-column-space). The rows are \\(1, -2, -2)\\ and \\(3, -6, -6) = 3\\(1, -2, -2)\\, so the row space is \\\operatorname{span}\mathopen{}\left\\(1, -2, -2)\right\\\mathclose{}\\, a line in \\\mathbb{R}^3\\.

> **NOTE:**
>
> **Definition 46 (Null space (kernel))** The **null space** of an \\m \times n\\ matrix \\\mathbf{A}\\ is
>
> \\ \mathcal{N}(\mathbf{A}) \stackrel{\text{def}}{=} \mathopen{}\left\\\tilde{x} \in \mathbb{R}^n : \mathbf{A} \tilde{x} = \tilde{0}\_m\right\\\mathclose{}, \\
>
> the set of [solutions](#def-linear-system) of the linear system \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\. It is also called the **kernel** of \\\mathbf{A}\\. The **left null space** of \\\mathbf{A}\\ is \\\mathcal{N}({\mathbf{A}}^{\top})\\, a set of vectors in \\\mathbb{R}^m\\.

> **NOTE:**
>
> **Example 55 (The null space and left null space of a rank-one matrix)** For \\\mathbf{A}\\ in [Example 53](#exm-column-space), \\\mathbf{A} \tilde{x} = (x_1 - 2x_2 - 2x_3,\\ 3\\(x_1 - 2x_2 - 2x_3))\\, so \\\mathbf{A} \tilde{x} = \tilde{0}\_2\\ exactly when \\x_1 = 2x_2 + 2x_3\\. Writing \\\tilde{x} = (2x_2 + 2x_3, x_2, x_3) = x_2\\(2, 1, 0) + x_3\\(2, 0, 1)\\ shows \\\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\, a plane in \\\mathbb{R}^3\\.
>
> For the left null space, \\{\mathbf{A}}^{\top} \tilde{y} = (y_1 + 3y_2,\\ -2\\(y_1 + 3y_2),\\ -2\\(y_1 + 3y_2))\\, which is \\\tilde{0}\_3\\ exactly when \\y_1 = -3y_2\\, so \\\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(-3, 1)\right\\\mathclose{}\\, a line in \\\mathbb{R}^2\\.

> **NOTE:**
>
> **Theorem 32 (A null space is a subspace)** For any \\m \times n\\ matrix \\\mathbf{A}\\, \\\mathcal{N}(\mathbf{A})\\ ([Definition 46](#def-null-space)) is a subspace of \\\mathbb{R}^n\\ ([Definition 40](#def-subspace)).

> **NOTE:**
>
> *Proof*. \\\mathbf{A} \tilde{0}\_n = \tilde{0}\_m\\, so \\\tilde{0}\_n \in \mathcal{N}(\mathbf{A})\\, and the null space is not empty. If \\\tilde{u}, \tilde{w} \in \mathcal{N}(\mathbf{A})\\ and \\c \in \mathbb{R}\\, then
>
> \\ \begin{aligned} \mathbf{A}\\(\tilde{u} + \tilde{w}) &= \mathbf{A} \tilde{u} + \mathbf{A} \tilde{w} && \text{(}\href{#thm-matmul-distrib}{\text{Theorem~9}}\text{)} \\ &= \tilde{0}\_m + \tilde{0}\_m && \text{(} \tilde{u} \text{ and } \tilde{w} \text{ are in the null space)} \\ &= \tilde{0}\_m && \text{(adding } \tilde{0}\_m \text{ changes nothing)} \end{aligned} \\
>
> and, for each entry \\i = 1, \ldots, m\\,
>
> \\ \begin{aligned} \mathopen{}\left(\mathbf{A}\\(c \tilde{u})\right)\mathclose{}\_i &= a\_{i1} (c u_1) + \cdots + a\_{in} (c u_n) && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\ &= c\\(a\_{i1} u_1 + \cdots + a\_{in} u_n) && \text{(factor } c \text{ out of each term)} \\ &= c\\(\mathbf{A} \tilde{u})\_i && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\ &= c \cdot 0 && \text{(} \tilde{u} \text{ is in the null space)} \\ &= 0, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\mathbf{A}\\(c \tilde{u}) = \tilde{0}\_m\\. Therefore \\\tilde{u} + \tilde{w}\\ and \\c \tilde{u}\\ are in \\\mathcal{N}(\mathbf{A})\\.

> **NOTE:**
>
> **Example 56 (The solutions of \\\mathbf{A} \tilde{x} = \tilde{b}\\ with \\\tilde{b} \neq \tilde{0}\\ are not a subspace)** In [Example 55](#exm-null-space), \\(2, 1, 0)\\ and \\(2, 0, 1)\\ are in \\\mathcal{N}(\mathbf{A})\\, and so is their sum \\(4, 1, 1)\\, since \\4 - 2 \cdot 1 - 2 \cdot 1 = 0\\. By contrast, the solutions of \\\mathbf{A} \tilde{x} = (1, 3)\\ for the same \\\mathbf{A}\\ are the vectors with \\x_1 - 2x_2 - 2x_3 = 1\\. That set does not contain \\\tilde{0}\_3\\, so by [Theorem 20](#thm-subspace-zero) it is not a subspace.

> **NOTE:**
>
> **Theorem 33 (The row space and null space share only the zero vector)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \mathcal{C}({\mathbf{A}}^{\top}) \cap \mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}. \\

> **NOTE:**
>
> *Proof*. Both sets are subspaces, by [Theorem 31](#thm-column-space-span) and [Theorem 32](#thm-null-space-subspace), so both contain \\\tilde{0}\_n\\ ([Theorem 20](#thm-subspace-zero)).
>
> Now take any \\\tilde{x}\\ in both sets. Being in the row space means \\\tilde{x} = {\mathbf{A}}^{\top} \tilde{u}\\ for some \\\tilde{u} \in \mathbb{R}^m\\ ([Definition 45](#def-column-space)), and being in the null space means \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\ ([Definition 46](#def-null-space)). Then
>
> \\ \begin{aligned} {\tilde{x}}^{\top} \tilde{x} &= {({\mathbf{A}}^{\top} \tilde{u})}^{\top}\\\tilde{x} && \text{(substitute } \tilde{x} = {\mathbf{A}}^{\top} \tilde{u} \text{ in the first factor)} \\ &= \mathopen{}\left({\tilde{u}}^{\top}\\{({\mathbf{A}}^{\top})}^{\top}\right)\mathclose{}\\\tilde{x} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= \mathopen{}\left({\tilde{u}}^{\top} \mathbf{A}\right)\mathclose{}\\\tilde{x} && \text{(transposing twice returns the original matrix)} \\ &= {\tilde{u}}^{\top}\\(\mathbf{A} \tilde{x}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {\tilde{u}}^{\top}\\\tilde{0}\_m && \text{(substitute } \mathbf{A} \tilde{x} = \tilde{0}\_m \text{)} \\ &= 0. && \text{(every term of the inner product is } 0 \text{)} \end{aligned} \\
>
> But \\{\tilde{x}}^{\top} \tilde{x} = x_1^2 + \cdots + x_n^2\\, which is \\0\\ only when every \\x_i = 0\\. So \\\tilde{x} = \tilde{0}\_n\\.

> **NOTE:**
>
> **Example 57 (The row space and null space in [Example 55](#exm-null-space))** For \\\mathbf{A}\\ in [Example 53](#exm-column-space), the row space is \\\operatorname{span}\mathopen{}\left\\(1, -2, -2)\right\\\mathclose{}\\ and the null space is \\\operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\ ([Example 55](#exm-null-space)). A vector \\c\\(1, -2, -2)\\ of the row space is in the null space only if
>
> \\ \begin{aligned} \mathbf{A}\\\mathopen{}\left(c\\(1, -2, -2)\right)\mathclose{} &= c\\\mathopen{}\left(1 - 2 \cdot(-2) - 2 \cdot(-2),\\ 3\\(1 - 2 \cdot(-2) - 2 \cdot(-2))\right)\mathclose{} && \text{(}\href{#exm-null-space}{\text{Example~55}}\text{'s formula for } \mathbf{A} \tilde{x} \text{)} \\ &= c\\(9, 27) && \text{(arithmetic)} \end{aligned} \\
>
> is \\\tilde{0}\_2\\, that is, only if \\c = 0\\. So the two subspaces share only \\\tilde{0}\_3\\.

> **NOTE:**
>
> **Definition 47 (Gram matrix)** The **Gram matrix** of an \\m \times n\\ matrix \\\mathbf{A}\\ is the \\n \times n\\ matrix \\{\mathbf{A}}^{\top} \mathbf{A}\\.

> **NOTE:**
>
> **Example 58 (A Gram matrix and its entries)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \\ 0 & 1 \end{bmatrix}\\, with columns \\\tilde{a}\_1 = (1, 1, 0)\\ and \\\tilde{a}\_2 = (0, 1, 1)\\. Then
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \mathbf{A} &= \begin{bmatrix} 1 & 1 & 0 \\ 0 & 1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 1 & 1 \\ 0 & 1 \end{bmatrix} && \text{(}\href{#def-matrix-transpose}{\text{Definition~20}}\text{)} \\ &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 1 + 0 \cdot 0 & 1 \cdot 0 + 1 \cdot 1 + 0 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 1 + 1 \cdot 0 & 0 \cdot 0 + 1 \cdot 1 + 1 \cdot 1 \end{bmatrix} && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{)} \\ &= \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}. && \text{(multiply and add)} \end{aligned} \\
>
> Row \\i\\ of \\{\mathbf{A}}^{\top}\\ is column \\i\\ of \\\mathbf{A}\\, so entry \\(i, j)\\ of the Gram matrix is the dot product \\\tilde{a}\_i \cdot \tilde{a}\_j\\: for instance, \\\tilde{a}\_1 \cdot \tilde{a}\_2 = 0 + 1 + 0 = 1\\ is entry \\(1, 2)\\.

> **NOTE:**
>
> **Theorem 34 (\\{\mathbf{A}}^{\top} \mathbf{A}\\ has the same null space as \\\mathbf{A}\\)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \mathcal{N}({\mathbf{A}}^{\top} \mathbf{A}) = \mathcal{N}(\mathbf{A}). \\

> **NOTE:**
>
> *Proof*. **\\\mathcal{N}(\mathbf{A}) \subseteq \mathcal{N}({\mathbf{A}}^{\top} \mathbf{A})\\.** If \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\, then \\{\mathbf{A}}^{\top} \mathbf{A} \tilde{x} = {\mathbf{A}}^{\top}\\\tilde{0}\_m = \tilde{0}\_n\\.
>
> **\\\mathcal{N}({\mathbf{A}}^{\top} \mathbf{A}) \subseteq \mathcal{N}(\mathbf{A})\\.** If \\{\mathbf{A}}^{\top} \mathbf{A} \tilde{x} = \tilde{0}\_n\\, then
>
> \\ \begin{aligned} 0 &= {\tilde{x}}^{\top}\\\tilde{0}\_n && \text{(every term of the inner product is } 0 \text{)} \\ &= {\tilde{x}}^{\top}\\\mathopen{}\left({\mathbf{A}}^{\top} \mathbf{A} \tilde{x}\right)\mathclose{} && \text{(substitute } \tilde{0}\_n = {\mathbf{A}}^{\top} \mathbf{A} \tilde{x} \text{)} \\ &= \mathopen{}\left({\tilde{x}}^{\top} {\mathbf{A}}^{\top}\right)\mathclose{}\\(\mathbf{A} \tilde{x}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {(\mathbf{A} \tilde{x})}^{\top}\\(\mathbf{A} \tilde{x}) && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= (\mathbf{A} \tilde{x}) \cdot (\mathbf{A} \tilde{x}) && \text{(}\href{#exm-dot-product-matmul}{\text{Example~18}}\text{)} \\ &= \mathopen{}\left\lVert\mathbf{A} \tilde{x}\right\rVert\mathclose{}^2. && \text{(square both sides of }\href{#eq-l2-norm}{\text{Equation~2}}\text{)} \end{aligned} \\
>
> A vector whose Euclidean norm is \\0\\ has every entry \\0\\, so \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\.

> **NOTE:**
>
> **Example 59 (The null space of a Gram matrix)** For \\\mathbf{A}\\ in [Example 53](#exm-column-space),
>
> \\ {\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 1 & 3 \\ -2 & -6 \\ -2 & -6 \end{bmatrix} \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix} = \begin{bmatrix} 10 & -20 & -20 \\ -20 & 40 & 40 \\ -20 & 40 & 40 \end{bmatrix}. \\
>
> Every row is a multiple of \\(1, -2, -2)\\, so \\{\mathbf{A}}^{\top} \mathbf{A} \tilde{x} = \tilde{0}\_3\\ exactly when \\x_1 - 2x_2 - 2x_3 = 0\\, the same condition as for \\\mathcal{N}(\mathbf{A})\\ in [Example 55](#exm-null-space).

### 2.12 Rank-nullity and rank factorization

> **NOTE:**
>
> This section is adapted from Zhou ([2024f](#ref-zhou2024rank)), used under the MIT License (see the license text in [Section 2.10](#sec-subspaces)).

> **NOTE:**
>
> **Theorem 35 (The rank is the dimension of the column space)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \operatorname{rank}(\mathbf{A}) = \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{}. \\

> **NOTE:**
>
> *Proof*. Let \\r = \operatorname{rank}(\mathbf{A})\\ ([Definition 38](#def-rank)), and choose \\r\\ linearly independent columns of \\\mathbf{A}\\; by [Definition 38](#def-rank), no larger set of columns is linearly independent. We show the chosen columns are a basis of \\\mathcal{C}(\mathbf{A})\\ ([Definition 42](#def-basis)).
>
> **Every column is in the span of the chosen columns.** A chosen column is in that span trivially. If some unchosen column \\\tilde{a}\_j\\ were not in the span, then adding it to the chosen columns would give \\r + 1\\ linearly independent columns ([Theorem 27](#thm-add-outside-span)), more than \\r\\. So every column of \\\mathbf{A}\\ is in the span of the chosen columns.
>
> **The chosen columns span \\\mathcal{C}(\mathbf{A})\\.** The span of the chosen columns is a subspace ([Theorem 21](#thm-span-subspace)), so it is closed under addition and scalar multiplication, and it contains every linear combination of the columns of \\\mathbf{A}\\. By [Theorem 31](#thm-column-space-span), those combinations make up \\\mathcal{C}(\mathbf{A})\\, so \\\mathcal{C}(\mathbf{A})\\ is contained in the span of the chosen columns. The chosen columns are themselves columns of \\\mathbf{A}\\, so their span is contained in \\\mathcal{C}(\mathbf{A})\\, and the two sets are equal.
>
> The chosen columns are linearly independent and span \\\mathcal{C}(\mathbf{A})\\, so they are a basis of it, and \\\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = r\\ ([Definition 44](#def-dimension)). If \\r = 0\\, every column is \\\tilde{0}\_m\\, \\\mathcal{C}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_m\right\\\mathclose{}\\, and both sides are \\0\\.

> **NOTE:**
>
> **Example 60 (The rank of the matrix in [Example 53](#exm-column-space))** For \\\mathbf{A}\\ in [Example 53](#exm-column-space), \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\ (1), and \\(1, 3)\\ is linearly independent because it is nonzero, so it is a basis and \\\mathcal{C}(\mathbf{A})\\ has dimension \\1\\. So \\\operatorname{rank}(\mathbf{A}) = 1\\, by [Theorem 35](#thm-rank-dim). Directly: the first column \\(1, 3)\\ is linearly independent on its own, and any two columns are dependent, because each column is a multiple of \\(1, 3)\\.

> **NOTE:**
>
> **Definition 48 (Nullity)** The **nullity** of a matrix \\\mathbf{A}\\ is the dimension of its null space ([Definition 46](#def-null-space)):
>
> \\ \operatorname{nullity}(\mathbf{A}) \stackrel{\text{def}}{=}\dim\mathopen{}\left(\mathcal{N}(\mathbf{A})\right)\mathclose{}. \\

> **NOTE:**
>
> **Example 61 (The nullity of the matrix in [Example 53](#exm-column-space))** For \\\mathbf{A}\\ in [Example 53](#exm-column-space), \\\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\ ([Example 55](#exm-null-space)). Those two vectors are linearly independent: \\c_1 (2, 1, 0) + c_2 (2, 0, 1) = (2c_1 + 2c_2, c_1, c_2)\\, which is \\\tilde{0}\_3\\ only if \\c_1 = c_2 = 0\\. So they are a basis of \\\mathcal{N}(\mathbf{A})\\, and \\\operatorname{nullity}(\mathbf{A}) = 2\\. The \\2 \times 2\\ identity matrix has nullity \\0\\, because \\\mathbf{I} \tilde{x} = \tilde{x}\\ is \\\tilde{0}\_2\\ only when \\\tilde{x} = \tilde{0}\_2\\.

> **NOTE:**
>
> **Theorem 36 (Rank-nullity theorem)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \operatorname{rank}(\mathbf{A}) + \operatorname{nullity}(\mathbf{A}) = n. \\

> **NOTE:**
>
> *Proof*. Let \\\nu = \operatorname{nullity}(\mathbf{A})\\. Choose a basis \\\tilde{x}\_1, \ldots, \tilde{x}\_\nu\\ of \\\mathcal{N}(\mathbf{A})\\, and extend it to a basis \\\tilde{x}\_1, \ldots, \tilde{x}\_\nu, \tilde{y}\_1, \ldots, \tilde{y}\_{n - \nu}\\ of \\\mathbb{R}^n\\ ([Theorem 28](#thm-extend-basis)); it has \\n\\ vectors, because every basis of \\\mathbb{R}^n\\ has \\\dim(\mathbb{R}^n) = n\\ vectors ([Theorem 26](#thm-basis-size), [Example 47](#exm-dimension)). We show that \\\mathbf{A} \tilde{y}\_1, \ldots, \mathbf{A} \tilde{y}\_{n - \nu}\\ are a basis of \\\mathcal{C}(\mathbf{A})\\, using [Theorem 23](#thm-matvec-linear) to apply \\\mathbf{A}\\ to linear combinations.
>
> **They are linearly independent.** Suppose \\\sum\_{i=1}^{n-\nu} v_i\\\mathbf{A} \tilde{y}\_i = \tilde{0}\_m\\. Then \\\mathbf{A}\\\mathopen{}\left(\sum_i v_i \tilde{y}\_i\right)\mathclose{} = \tilde{0}\_m\\ ([Theorem 23](#thm-matvec-linear)), so \\\sum_i v_i \tilde{y}\_i \in \mathcal{N}(\mathbf{A})\\, and it equals \\\sum\_{j=1}^{\nu} u_j \tilde{x}\_j\\ for some numbers \\u_j\\, since the \\\tilde{x}\_j\\ span \\\mathcal{N}(\mathbf{A})\\. Moving everything to one side,
>
> \\ \sum\_{j=1}^{\nu} (-u_j)\\\tilde{x}\_j + \sum\_{i=1}^{n-\nu} v_i \tilde{y}\_i = \tilde{0}\_n, \\
>
> and because the \\\tilde{x}\\’s and \\\tilde{y}\\’s together form a basis of \\\mathbb{R}^n\\, which is linearly independent, every coefficient is \\0\\; in particular every \\v_i = 0\\.
>
> **They span \\\mathcal{C}(\mathbf{A})\\.** Take any \\\tilde{w} \in \mathcal{C}(\mathbf{A})\\, so \\\tilde{w} = \mathbf{A} \tilde{z}\\ for some \\\tilde{z} \in \mathbb{R}^n\\ ([Definition 45](#def-column-space)). Write \\\tilde{z} = \sum_j a_j \tilde{x}\_j + \sum_i b_i \tilde{y}\_i\\ in the basis of \\\mathbb{R}^n\\. Then
>
> \\ \begin{aligned} \tilde{w} &= \mathbf{A}\\\mathopen{}\left(\sum\_{j=1}^{\nu} a_j \tilde{x}\_j + \sum\_{i=1}^{n-\nu} b_i \tilde{y}\_i\right)\mathclose{} && \text{(substitute } \tilde{z} \text{)} \\ &= \sum\_{j=1}^{\nu} a_j\\\mathbf{A} \tilde{x}\_j + \sum\_{i=1}^{n-\nu} b_i\\\mathbf{A} \tilde{y}\_i && \text{(}\href{#thm-matvec-linear}{\text{Theorem~23}}\text{)} \\ &= \sum\_{j=1}^{\nu} a_j\\\tilde{0}\_m + \sum\_{i=1}^{n-\nu} b_i\\\mathbf{A} \tilde{y}\_i && \text{(each } \tilde{x}\_j \in \mathcal{N}(\mathbf{A}) \text{)} \\ &= \sum\_{i=1}^{n-\nu} b_i\\\mathbf{A} \tilde{y}\_i, && \text{(drop the zero terms)} \end{aligned} \\
>
> a linear combination of \\\mathbf{A} \tilde{y}\_1, \ldots, \mathbf{A} \tilde{y}\_{n-\nu}\\. These vectors are in \\\mathcal{C}(\mathbf{A})\\, so their span is exactly \\\mathcal{C}(\mathbf{A})\\.
>
> So \\\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = n - \nu\\, and \\\operatorname{rank}(\mathbf{A}) = n - \nu\\ by [Theorem 35](#thm-rank-dim).

> **NOTE:**
>
> **Example 62 (Checking rank-nullity on the matrix in [Example 53](#exm-column-space))** The matrix \\\mathbf{A}\\ in [Example 53](#exm-column-space) has \\n = 3\\ columns, rank \\1\\ ([Example 60](#exm-rank-dim)) and nullity \\2\\ ([Example 61](#exm-nullity)), and \\1 + 2 = 3\\. The \\2 \times 2\\ identity matrix has rank \\2\\ and nullity \\0\\ ([Example 61](#exm-nullity)), and \\2 + 0 = 2\\.

> **NOTE:**
>
> **Theorem 37 (Multiplying on the right cannot increase the rank)** If \\\mathbf{A}\\ is \\m \times n\\ and \\\mathbf{B}\\ is \\n \times k\\, then
>
> \\ \operatorname{rank}(\mathbf{A} \mathbf{B}) \le \operatorname{rank}(\mathbf{A}). \\

> **NOTE:**
>
> *Proof*. **\\\mathcal{C}(\mathbf{A} \mathbf{B}) \subseteq \mathcal{C}(\mathbf{A})\\.** Any vector in \\\mathcal{C}(\mathbf{A} \mathbf{B})\\ is \\(\mathbf{A} \mathbf{B})\\\tilde{x}\\ for some \\\tilde{x} \in \mathbb{R}^k\\ ([Definition 45](#def-column-space)), and
>
> \\ \begin{aligned} (\mathbf{A} \mathbf{B})\\\tilde{x} &= \mathbf{A}\\(\mathbf{B} \tilde{x}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \end{aligned} \\
>
> is \\\mathbf{A}\\ times the vector \\\mathbf{B} \tilde{x} \in \mathbb{R}^n\\, so it is in \\\mathcal{C}(\mathbf{A})\\.
>
> **Compare dimensions.** Both column spaces are subspaces ([Theorem 31](#thm-column-space-span)), so
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A} \mathbf{B}) &= \dim\mathopen{}\left(\mathcal{C}(\mathbf{A} \mathbf{B})\right)\mathclose{} && \text{(}\href{#thm-rank-dim}{\text{Theorem~35}}\text{)} \\ &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} && \text{(}\href{#thm-dim-bound}{\text{Theorem~29}}\text{, part 2)} \\ &= \operatorname{rank}(\mathbf{A}). && \text{(}\href{#thm-rank-dim}{\text{Theorem~35}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 63 (A product can lose rank)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}, \qquad \mathbf{B} = \begin{bmatrix} 0 & 0 \\ 1 & 0 \end{bmatrix}, \qquad \mathbf{A} \mathbf{B} = \begin{bmatrix} 1 \cdot 0 + 0 \cdot 1 & 1 \cdot 0 + 0 \cdot 0 \\ 0 \cdot 0 + 0 \cdot 1 & 0 \cdot 0 + 0 \cdot 0 \end{bmatrix} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix}. \\
>
> \\\mathbf{A}\\ has rank \\1\\, but \\\mathbf{A} \mathbf{B}\\ has rank \\0\\, so the inequality in [Theorem 37](#thm-rank-product) can be strict. With the \\2 \times 2\\ identity in place of \\\mathbf{B}\\, \\\mathbf{A} \mathbf{I} = \mathbf{A}\\ keeps rank \\1\\, and the inequality is an equality.

> **NOTE:**
>
> **Theorem 38 (Fundamental theorem of ranks)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \operatorname{rank}(\mathbf{A}) = \operatorname{rank}({\mathbf{A}}^{\top}) = \operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) = \operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}). \\
>
> In particular, the largest number of linearly independent rows of \\\mathbf{A}\\ equals the largest number of linearly independent columns.

> **NOTE:**
>
> *Proof*. **\\\operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) = \operatorname{rank}(\mathbf{A})\\.** Both matrices have \\n\\ columns, and \\\mathcal{N}({\mathbf{A}}^{\top} \mathbf{A}) = \mathcal{N}(\mathbf{A})\\ ([Theorem 34](#thm-null-gram)), so they have the same nullity ([Definition 48](#def-nullity)). Then
>
> \\ \begin{aligned} \operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) &= n - \operatorname{nullity}({\mathbf{A}}^{\top} \mathbf{A}) && \text{(}\href{#thm-rank-nullity}{\text{Theorem~36}}\text{)} \\ &= n - \operatorname{nullity}(\mathbf{A}) && \text{(equal null spaces)} \\ &= \operatorname{rank}(\mathbf{A}). && \text{(}\href{#thm-rank-nullity}{\text{Theorem~36}}\text{)} \end{aligned} \\
>
> **\\\operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}) = \operatorname{rank}({\mathbf{A}}^{\top})\\.** Apply the previous step to the \\n \times m\\ matrix \\{\mathbf{A}}^{\top}\\, using \\{({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}\\.
>
> **Chain the inequalities.**
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A}) &= \operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) && \text{(first step)} \\ &\le \operatorname{rank}({\mathbf{A}}^{\top}) && \text{(}\href{#thm-rank-product}{\text{Theorem~37}}\text{, with } {\mathbf{A}}^{\top} \text{ on the left)} \\ &= \operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}) && \text{(second step)} \\ &\le \operatorname{rank}(\mathbf{A}). && \text{(}\href{#thm-rank-product}{\text{Theorem~37}}\text{, with } \mathbf{A} \text{ on the left)} \end{aligned} \\
>
> The chain starts and ends at \\\operatorname{rank}(\mathbf{A})\\, so every quantity in it equals \\\operatorname{rank}(\mathbf{A})\\. The columns of \\{\mathbf{A}}^{\top}\\ are the rows of \\\mathbf{A}\\, which gives the statement about rows.

> **NOTE:**
>
> **Example 64 (Four equal ranks)** For \\\mathbf{A}\\ in [Example 53](#exm-column-space), \\\operatorname{rank}(\mathbf{A}) = 1\\ ([Example 60](#exm-rank-dim)). Its transpose \\{\mathbf{A}}^{\top} = \begin{bmatrix} 1 & 3 \\ -2 & -6 \\ -2 & -6 \end{bmatrix}\\ has second column \\3\\ times its first, so its rank is \\1\\. \\{\mathbf{A}}^{\top} \mathbf{A}\\ in [Example 59](#exm-null-gram) has every row a multiple of \\(1, -2, -2)\\, so its rank is \\1\\ too, and
>
> \\ \mathbf{A} {\mathbf{A}}^{\top} = \begin{bmatrix} 1 \cdot 1 + (-2)(-2) + (-2)(-2) & 1 \cdot 3 + (-2)(-6) + (-2)(-6) \\ 3 \cdot 1 + (-6)(-2) + (-6)(-2) & 3 \cdot 3 + (-6)(-6) + (-6)(-6) \end{bmatrix} = \begin{bmatrix} 9 & 27 \\ 27 & 81 \end{bmatrix}, \\
>
> whose second column is \\3\\ times its first, so its rank is \\1\\.

> **NOTE:**
>
> **Corollary 3 (The rank is at most the smaller dimension)** For any \\m \times n\\ matrix \\\mathbf{A}\\, \\\operatorname{rank}(\mathbf{A}) \le \min\mathopen{}\left\\m, n\right\\\mathclose{}\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{A}\\ has \\n\\ columns, so at most \\n\\ of them are linearly independent, and \\\operatorname{rank}(\mathbf{A}) \le n\\ ([Definition 38](#def-rank)). Likewise \\{\mathbf{A}}^{\top}\\ has \\m\\ columns, so \\\operatorname{rank}(\mathbf{A}) = \operatorname{rank}({\mathbf{A}}^{\top}) \le m\\ ([Theorem 38](#thm-rank-transpose)).

> **NOTE:**
>
> **Example 65 (A \\2 \times 3\\ matrix has rank at most \\2\\)** By [Corollary 3](#cor-rank-bound), every \\2 \times 3\\ matrix has rank at most \\\min\mathopen{}\left\\2, 3\right\\\mathclose{} = 2\\, even though it has \\3\\ columns. The matrix \\\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}\\ of [Remark 14](#rem-full-column-rank-shape) reaches that bound: its first two columns \\(1, 0)\\ and \\(0, 1)\\ are linearly independent, so its rank is \\2\\.

> **NOTE:**
>
> **Definition 49 (Affine subspace)** An **affine subspace** of \\\mathbb{R}^p\\ is a set of the form
>
> \\ \mathopen{}\left\\\tilde{x}\_0 + \tilde{s} : \tilde{s} \in \mathcal{S}\right\\\mathclose{} \\
>
> for some vector \\\tilde{x}\_0 \in \mathbb{R}^p\\ and some subspace \\\mathcal{S}\\ of \\\mathbb{R}^p\\ ([Definition 40](#def-subspace)): the [image](sets-functions.llms.md#def-image) of \\\mathcal{S}\\ under the translation by \\\tilde{x}\_0\\ ([Definition 33](#def-translation)).

> **NOTE:**
>
> **Example 66 (A line that misses the origin is an affine subspace)** The line \\\mathcal{T} = \mathopen{}\left\\(x, 1) : x \in \mathbb{R}\right\\\mathclose{}\\ of [Example 35](#exm-not-subspace) is not a subspace, but it is an affine subspace, with \\\tilde{x}\_0 = (0, 1)\\ and \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 0)\right\\\mathclose{}\\ ([Definition 41](#def-span)):
>
> \\ \begin{aligned} (0, 1) + c\\(1, 0) &= (0 + c,\\ 1 + 0) && \text{(}\href{#def-scalar-mult}{\text{Definition~23}}\text{, }\href{#def-vector-addition}{\text{Definition~6}}\text{)} \\ &= (c, 1), && \text{(add)} \end{aligned} \\
>
> and as \\c\\ ranges over \\\mathbb{R}\\, \\(c, 1)\\ ranges over all of \\\mathcal{T}\\. Every subspace \\\mathcal{S}\\ is also an affine subspace, with \\\tilde{x}\_0 = \tilde{0}\\.

> **NOTE:**
>
> **Theorem 39 (A hyperplane is a translated subspace of dimension \\p - 1\\)** Let \\\tilde{w} \in \mathbb{R}^p\\ be nonzero, let \\b \in \mathbb{R}\\, let \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w}^\top \tilde{x}+ b = 0\right\\\mathclose{}\\ be the hyperplane with normal vector \\\tilde{w}\\ and offset \\b\\ ([Definition 36](#def-hyperplane)), and let \\\mathcal{H}\_0 = \mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w}^\top \tilde{x}= 0\right\\\mathclose{}\\ be the hyperplane with the same normal vector and offset \\0\\.
>
> 1.  \\\mathcal{H}\_0\\ is a subspace of \\\mathbb{R}^p\\ ([Definition 40](#def-subspace)) of dimension \\p - 1\\ ([Definition 44](#def-dimension)).
> 2.  \\\mathcal{H}\\ is not empty, and for any \\\tilde{x}\_0 \in \mathcal{H}\\, \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\_0 + \tilde{s} : \tilde{s} \in \mathcal{H}\_0\right\\\mathclose{}\\, so \\\mathcal{H}\\ is an affine subspace ([Definition 49](#def-affine-subspace)).
> 3.  For any \\\tilde{x}, \tilde{y}\in \mathcal{H}\\, the normal vector is orthogonal to their difference: \\\tilde{w} \perp (\tilde{x}- \tilde{y})\\ ([Definition 13](#def-orthogonal-vectors)).

> **NOTE:**
>
> *Proof*. Here \\\tilde{w}^\top\\ is a \\1 \times p\\ matrix, and \\\tilde{w}^\top \tilde{x}= \tilde{w} \cdot \tilde{x}\\ ([Example 18](#exm-dot-product-matmul)).
>
> **Part 1.** \\\mathcal{H}\_0\\ is the null space \\\mathcal{N}(\tilde{w}^\top)\\ ([Definition 46](#def-null-space)), so it is a subspace ([Theorem 32](#thm-null-space-subspace)). The \\p\\ columns of \\\tilde{w}^\top\\ are the numbers \\w_1, \ldots, w_p\\. Some \\w_j \ne 0\\, because \\\tilde{w} \ne \tilde{0}\\, and that column on its own is linearly independent (\\c\\w_j = 0\\ forces \\c = 0\\), so \\\operatorname{rank}(\tilde{w}^\top) \ge 1\\ ([Definition 38](#def-rank)); and \\\operatorname{rank}(\tilde{w}^\top) \le \min\mathopen{}\left\\1, p\right\\\mathclose{} = 1\\ ([Corollary 3](#cor-rank-bound)). So
>
> \\ \begin{aligned} \dim(\mathcal{H}\_0) &= \operatorname{nullity}(\tilde{w}^\top) && \text{(}\href{#def-nullity}{\text{Definition~48}}\text{)} \\ &= p - \operatorname{rank}(\tilde{w}^\top) && \text{(}\href{#thm-rank-nullity}{\text{Theorem~36}}\text{, for the } p \text{ columns of } \tilde{w}^\top \text{)} \\ &= p - 1. && \text{(the rank is } 1 \text{)} \end{aligned} \\
>
> **Part 2.** \\\tilde{w} \cdot \tilde{w} = w_1^2 + \cdots + w_p^2 \> 0\\, because some \\w_j \ne 0\\. So \\\tilde{x}^\* \stackrel{\text{def}}{=}-\frac{b}{\tilde{w} \cdot \tilde{w}}\\\tilde{w}\\ is defined, and
>
> \\ \begin{aligned} \tilde{w}^\top \tilde{x}^\* + b &= -\frac{b}{\tilde{w} \cdot \tilde{w}}\\(\tilde{w}^\top \tilde{w}) + b && \text{(homogeneity of } \tilde{x}\mapsto \tilde{w}^\top \tilde{x}\text{, }\href{#thm-matrix-map-linear}{\text{Theorem~12}}\text{)} \\ &= -b + b && \text{(} \tilde{w}^\top \tilde{w} = \tilde{w} \cdot \tilde{w} \text{)} \\ &= 0, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\tilde{x}^\* \in \mathcal{H}\\, and \\\mathcal{H}\\ is not empty. Now take any \\\tilde{x}\_0 \in \mathcal{H}\\, so \\\tilde{w}^\top \tilde{x}\_0 = -b\\. For any \\\tilde{x}\in \mathbb{R}^p\\,
>
> \\ \begin{aligned} \tilde{w}^\top (\tilde{x}- \tilde{x}\_0) &= \tilde{w}^\top \tilde{x}- \tilde{w}^\top \tilde{x}\_0 && \text{(}\href{#thm-matvec-linear}{\text{Theorem~23}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= \tilde{w}^\top \tilde{x}- (-b) && \text{(} \tilde{x}\_0 \in \mathcal{H} \text{)} \\ &= \tilde{w}^\top \tilde{x}+ b, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\tilde{x}\in \mathcal{H}\\ exactly when \\\tilde{x}- \tilde{x}\_0 \in \mathcal{H}\_0\\, that is, exactly when \\\tilde{x}= \tilde{x}\_0 + \tilde{s}\\ with \\\tilde{s} = \tilde{x}- \tilde{x}\_0 \in \mathcal{H}\_0\\. \\\mathcal{H}\_0\\ is a subspace (part 1), so \\\mathcal{H}\\ has the form in [Definition 49](#def-affine-subspace).
>
> **Part 3.** For \\\tilde{x}, \tilde{y}\in \mathcal{H}\\, both \\\tilde{w}^\top \tilde{x}\\ and \\\tilde{w}^\top \tilde{y}\\ equal \\-b\\, so
>
> \\ \begin{aligned} \tilde{w} \cdot (\tilde{x}- \tilde{y}) &= \tilde{w}^\top \tilde{x}- \tilde{w}^\top \tilde{y} && \text{(}\href{#thm-matvec-linear}{\text{Theorem~23}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= (-b) - (-b) && \text{(} \tilde{x}, \tilde{y}\in \mathcal{H} \text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\

> **NOTE:**
>
> **Example 67 (The plane \\x_1 + x_2 + x_3 = 1\\ in \\\mathbb{R}^3\\)** Take \\\tilde{w} = (1, 1, 1)\\ and \\b = -1\\, so \\\mathcal{H} = \mathopen{}\left\\\tilde{x}: x_1 + x_2 + x_3 - 1 = 0\right\\\mathclose{}\\, the plane that [Example 36](#exm-subspace-zero) showed is not a subspace. By part 1, \\\mathcal{H}\_0 = \mathopen{}\left\\\tilde{x}: x_1 + x_2 + x_3 = 0\right\\\mathclose{}\\ is a subspace of dimension \\3 - 1 = 2\\.
>
> - \\\tilde{x}\_0 = (1, 0, 0)\\ is in \\\mathcal{H}\\, since \\1 + 0 + 0 - 1 = 0\\, and so is \\\tilde{y}= (0, 1, 0)\\.
> - Their difference \\\tilde{y}- \tilde{x}\_0 = (-1, 1, 0)\\ has entries summing to \\-1 + 1 + 0 = 0\\, so it is in \\\mathcal{H}\_0\\, and \\\tilde{y}= \tilde{x}\_0 + (-1, 1, 0)\\, as part 2 says.
> - \\\tilde{w} \cdot (-1, 1, 0) = -1 + 1 + 0 = 0\\, as part 3 says.
> - The point built in the proof is \\\tilde{x}^\* = -\frac{-1}{3}\\(1, 1, 1) = \mathopen{}\left(\tfrac{1}{3}, \tfrac{1}{3}, \tfrac{1}{3}\right)\mathclose{}\\, and \\\tfrac{1}{3} + \tfrac{1}{3} + \tfrac{1}{3} - 1 = 0\\.

> **NOTE:**
>
> **Definition 50 (Half-space)** Let \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w}^\top \tilde{x}+ b = 0\right\\\mathclose{}\\ be a hyperplane ([Definition 36](#def-hyperplane)). The two **open half-spaces** of \\\mathcal{H}\\ are
>
> \\ \mathcal{H}^+ \stackrel{\text{def}}{=}\mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w}^\top \tilde{x}+ b \> 0\right\\\mathclose{} \quad \text{and} \quad \mathcal{H}^- \stackrel{\text{def}}{=}\mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w}^\top \tilde{x}+ b \< 0\right\\\mathclose{}. \tag{5}\\
>
> The **closed half-spaces** also include \\\mathcal{H}\\ itself: \\\mathcal{H}^+ \cup \mathcal{H}\\ and \\\mathcal{H}^- \cup \mathcal{H}\\. Every point of \\\mathbb{R}^p\\ is in exactly one of \\\mathcal{H}^+\\, \\\mathcal{H}\\ and \\\mathcal{H}^-\\, because the number \\\tilde{w}^\top \tilde{x}+ b\\ is positive, zero or negative. The vector \\\tilde{w}\\ points into \\\mathcal{H}^+\\: the number \\\tilde{w}^\top \tilde{x}+ b\\ goes up when \\\tilde{x}\\ moves in the direction \\\tilde{w}\\.

> **NOTE:**
>
> *Remark*. Replacing \\(\tilde{w}, b)\\ by \\(-\tilde{w}, -b)\\ describes the same hyperplane but swaps the names \\\mathcal{H}^+\\ and \\\mathcal{H}^-\\. The sign of \\\tilde{w}^\top \tilde{x}+ b\\ tells you which side of the hyperplane \\\tilde{x}\\ is on. A linear classifier uses this sign to assign one of two labels.

> **NOTE:**
>
> **Example 68 (Half-spaces of a line in the plane)** Let \\\mathcal{H}\\ be the line in \\\mathbb{R}^2\\ with \\\tilde{w} = (1, 2)\\ and \\b = -2\\ ([Definition 36](#def-hyperplane)), so \\\mathcal{H} = \mathopen{}\left\\\tilde{x}: x_1 + 2 x_2 - 2 = 0\right\\\mathclose{}\\. Evaluate \\\tilde{w}^\top \tilde{x}+ b\\ at three points ([Definition 50](#def-half-space)):
>
> - At \\(0, 0)\\ it equals \\0 + 0 - 2 = -2 \< 0\\, so \\(0, 0) \in \mathcal{H}^-\\.
> - At \\(2, 0)\\ it equals \\2 + 0 - 2 = 0\\, so \\(2, 0) \in \mathcal{H}\\.
> - At \\(2, 1)\\ it equals \\2 + 2 - 2 = 2 \> 0\\, so \\(2, 1) \in \mathcal{H}^+\\.
>
> Moving from \\(2, 0)\\ in the direction \\\tilde{w} = (1, 2)\\ gives \\(3, 2)\\, where the value is \\3 + 4 - 2 = 5 \> 0\\. So the direction \\\tilde{w}\\ leads into \\\mathcal{H}^+\\.

> **NOTE:**
>
> **Theorem 40 (Differences of points in a hyperplane and in a half-space)** Let \\\tilde{w} \in \mathbb{R}^p\\ be nonzero, let \\b \in \mathbb{R}\\, and let \\\mathcal{H}\\, \\\mathcal{H}^+\\ be the hyperplane and open half-space of [Definition 50](#def-half-space). For a set \\S \subseteq \mathbb{R}^p\\, let \\D(S) \stackrel{\text{def}}{=}\mathopen{}\left\\\tilde{y}- \tilde{x}: \tilde{x}, \tilde{y}\in S\right\\\mathclose{}\\ be the set of differences of its points.
>
> 1.  \\D(\mathcal{H}) = \mathopen{}\left\\\tilde{s} : \tilde{w}^\top \tilde{s} = 0\right\\\mathclose{}\\, a subspace of dimension \\p - 1\\.
> 2.  \\D(\mathcal{H}^+) = \mathbb{R}^p\\, a subspace of dimension \\p\\.
>
> The same holds for \\\mathcal{H}^-\\.

> **NOTE:**
>
> *Proof*. **Part 1.** Let \\\tilde{x}, \tilde{y}\in \mathcal{H}\\. By [Theorem 39](#thm-hyperplane-subspace) part 3, \\\tilde{w} \cdot (\tilde{y}- \tilde{x}) = 0\\, so \\\tilde{y}- \tilde{x}\in \mathcal{H}\_0 = \mathopen{}\left\\\tilde{s} : \tilde{w}^\top \tilde{s} = 0\right\\\mathclose{}\\. Conversely, fix any \\\tilde{x}\_0 \in \mathcal{H}\\ (it exists by [Theorem 39](#thm-hyperplane-subspace) part 2). For any \\\tilde{s} \in \mathcal{H}\_0\\, the point \\\tilde{x}\_0 + \tilde{s}\\ is in \\\mathcal{H}\\ by the same part, and \\(\tilde{x}\_0 + \tilde{s}) - \tilde{x}\_0 = \tilde{s}\\. So \\D(\mathcal{H}) = \mathcal{H}\_0\\, which has dimension \\p - 1\\ by [Theorem 39](#thm-hyperplane-subspace) part 1.
>
> **Part 2.** Every difference is in \\\mathbb{R}^p\\, so \\D(\mathcal{H}^+) \subseteq \mathbb{R}^p\\. For the other direction, fix any \\\tilde{x}\_0 \in \mathcal{H}\\ and any \\\tilde{v} \in \mathbb{R}^p\\. For a number \\t \> 0\\ to be chosen, let \\\tilde{x}\_t \stackrel{\text{def}}{=}\tilde{x}\_0 + t\\\tilde{w}\\. Then
>
> \\ \begin{aligned} \tilde{w}^\top \tilde{x}\_t + b &= \mathopen{}\left(\tilde{w}^\top \tilde{x}\_0 + b\right)\mathclose{} + t\\\tilde{w}^\top \tilde{w} && \text{(linearity of } \tilde{x}\mapsto \tilde{w}^\top \tilde{x}\text{)} \\ &= t\\\tilde{w}^\top \tilde{w}, && \text{(} \tilde{x}\_0 \in \mathcal{H} \text{)} \end{aligned} \\
>
> which is positive, so \\\tilde{x}\_t \in \mathcal{H}^+\\. Next,
>
> \\ \begin{aligned} \tilde{w}^\top (\tilde{x}\_t + \tilde{v}) + b &= \mathopen{}\left(\tilde{w}^\top \tilde{x}\_t + b\right)\mathclose{} + \tilde{w}^\top \tilde{v} && \text{(linearity of } \tilde{x}\mapsto \tilde{w}^\top \tilde{x}\text{)} \\ &= t\\\tilde{w}^\top \tilde{w} + \tilde{w}^\top \tilde{v}. && \text{(the display above)} \end{aligned} \\
>
> Because \\\tilde{w}^\top \tilde{w} \> 0\\, this is positive once \\t \> -\tilde{w}^\top \tilde{v} / \tilde{w}^\top \tilde{w}\\. Choose such a \\t \> 0\\. Then \\\tilde{x}\_t\\ and \\\tilde{x}\_t + \tilde{v}\\ are both in \\\mathcal{H}^+\\, and their difference is \\\tilde{v}\\. So \\\tilde{v} \in D(\mathcal{H}^+)\\. The whole space \\\mathbb{R}^p\\ is a subspace of dimension \\p\\ ([Definition 44](#def-dimension)).
>
> The proof for \\\mathcal{H}^-\\ is the same with \\-\tilde{w}\\ and \\-b\\ in place of \\\tilde{w}\\ and \\b\\.

> **NOTE:**
>
> **Example 69 (Two iris species on either side of a line)** The `iris` data set in R has the petal length and petal width, in centimeters, of 150 irises. Take the 100 flowers of the species versicolor and virginica, and let \\\tilde{x}= (x_1, x_2)\\ be the petal length and petal width of one flower. A logistic regression of the species on \\\tilde{x}\\ gives a coefficient vector \\\tilde{w}\\ and an intercept \\b\\. The line \\\tilde{w}^\top \tilde{x}+ b = 0\\ is a hyperplane in \\\mathbb{R}^2\\ ([Definition 36](#def-hyperplane)), and the two species mostly fall in its two open half-spaces ([Definition 50](#def-half-space)). [Figure 2](#fig-half-space-iris) shows the line and the flowers.
>
> Show R code
>
> ``` numberSource
> two_species <- droplevels(subset(iris, Species != "setosa"))
> fit <- glm(
>   Species ~ Petal.Length + Petal.Width,
>   family = binomial,
>   data = two_species
> )
> w <- coef(fit)[c("Petal.Length", "Petal.Width")]
> b <- coef(fit)[["(Intercept)"]]
> two_species$score <- as.vector(
>   as.matrix(two_species[c("Petal.Length", "Petal.Width")]) %*% w + b
> )
> two_species$side <- ifelse(two_species$score > 0, "positive", "negative")
> ggplot2::ggplot(two_species) +
>   ggplot2::aes(x = Petal.Length, y = Petal.Width, colour = Species) +
>   ggplot2::geom_point() +
>   ggplot2::geom_abline(intercept = -b / w[[2]], slope = -w[[1]] / w[[2]]) +
>   ggplot2::labs(x = "Petal length (cm)", y = "Petal width (cm)")
> ```
>
> [![Scatter plot of petal width against petal length for 100 irises. Versicolor points, in one color, are mostly to the lower left. Virginica points, in another color, are mostly to the upper right. A straight line runs between the two groups and separates most of them.](linear-algebra_files/figure-html/fig-half-space-iris-1.png)](linear-algebra_files/figure-html/fig-half-space-iris-1.png "Figure 2: Petal length and width of versicolor and virginica irises, with the line where a logistic regression is indifferent between the two species")
>
> Figure 2: Petal length and width of versicolor and virginica irises, with the line where a logistic regression is indifferent between the two species
>
> ``` numberSource
> table(two_species$Species, two_species$side)
> #>             
> #>              negative positive
> #>   versicolor       47        3
> #>   virginica         3       47
> ```
>
> The vector \\\tilde{w}\\ points toward the virginica side, so the positive half-space \\\mathcal{H}^+\\ holds 50 of the 100 flowers, and 47 of them are virginica. The line is a set of dimension \\p - 1 = 1\\, and each side is a region of the plane of dimension \\p = 2\\ ([Theorem 40](#thm-half-space-dimension)).

> **NOTE:**
>
> **Exercise 7 (Which side of the plane?)** Let \\\mathcal{H}\\ be the plane in \\\mathbb{R}^3\\ with \\\tilde{w} = (1, 1, 1)\\ and \\b = -1\\ ([Example 67](#exm-hyperplane-subspace)).
>
> 1.  For each point, say whether it is in \\\mathcal{H}^+\\, \\\mathcal{H}\\ or \\\mathcal{H}^-\\ ([Definition 50](#def-half-space)): \\(0, 0, 0)\\, \\(1, 0, 0)\\ and \\(1, 1, 1)\\.
> 2.  Write the plane and its half-spaces using \\-\tilde{w}\\ and \\-b\\. Which points from part 1 change sides?
> 3.  State the dimension of \\D(\mathcal{H})\\ and of \\D(\mathcal{H}^+)\\ ([Theorem 40](#thm-half-space-dimension)).

> **NOTE:**
>
> *Solution 7*.
>
> 1.  Compute \\\tilde{w}^\top \tilde{x}+ b = x_1 + x_2 + x_3 - 1\\ at each point.
>
>     - At \\(0, 0, 0)\\ it equals \\0 + 0 + 0 - 1 = -1 \< 0\\, so the point is in \\\mathcal{H}^-\\.
>     - At \\(1, 0, 0)\\ it equals \\1 + 0 + 0 - 1 = 0\\, so the point is in \\\mathcal{H}\\.
>     - At \\(1, 1, 1)\\ it equals \\1 + 1 + 1 - 1 = 2 \> 0\\, so the point is in \\\mathcal{H}^+\\.
>
> 2.  With \\-\tilde{w} = (-1, -1, -1)\\ and \\-b = 1\\, the equation is \\-x_1 - x_2 - x_3 + 1 = 0\\. Multiplying both sides by \\-1\\ gives the original equation, so it is the same plane. The new expression is the negative of the old one at every point, so the new positive half-space is the old \\\mathcal{H}^-\\ and the new negative half-space is the old \\\mathcal{H}^+\\. The origin \\(0, 0, 0)\\ is now in the positive half-space, and \\(1, 1, 1)\\ is now in the negative half-space. The point \\(1, 0, 0)\\ stays on the plane. So the origin and \\(1, 1, 1)\\ both change names, and the point on the plane does not.
>
> 3.  Here \\p = 3\\. \\D(\mathcal{H})\\ is the subspace \\\mathopen{}\left\\\tilde{s} : s_1 + s_2 + s_3 = 0\right\\\mathclose{}\\, which has dimension \\p - 1 = 2\\. \\D(\mathcal{H}^+) = \mathbb{R}^3\\ has dimension \\p = 3\\.

> **NOTE:**
>
> **Definition 51 (Rank factorization)** Let \\\mathbf{A}\\ be an \\m \times n\\ matrix with \\\operatorname{rank}(\mathbf{A}) = r \ge 1\\. A **rank factorization** of \\\mathbf{A}\\ is a product
>
> \\ \underbrace{\mathbf{A}}\_{m \times n} = \underbrace{\mathbf{C}}\_{m \times r}\\\underbrace{\mathbf{R}}\_{r \times n}. \\

> **NOTE:**
>
> **Example 70 (A rank factorization of a rank-one matrix)** The matrix \\\mathbf{A}\\ in [Example 53](#exm-column-space) has rank \\1\\ ([Example 60](#exm-rank-dim)), and
>
> \\ \begin{bmatrix} 1 \\ 3 \end{bmatrix} \begin{bmatrix} 1 & -2 & -2 \end{bmatrix} = \begin{bmatrix} 1 \cdot 1 & 1 \cdot(-2) & 1 \cdot(-2) \\ 3 \cdot 1 & 3 \cdot(-2) & 3 \cdot(-2) \end{bmatrix} = \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix}, \\
>
> so \\\mathbf{C} = \begin{bmatrix} 1 \\ 3 \end{bmatrix}\\ (\\2 \times 1\\) and \\\mathbf{R} = \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}\\ (\\1 \times 3\\) are a rank factorization. It is not unique: \\\mathbf{C} = \begin{bmatrix} 2 \\ 6 \end{bmatrix}\\ and \\\mathbf{R} = \begin{bmatrix} \frac{1}{2} & -1 & -1 \end{bmatrix}\\ give the same product. A product \\\mathbf{C} \mathbf{R}\\ with \\\mathbf{C}\\ of size \\2 \times 2\\ is not a rank factorization of this \\\mathbf{A}\\, because the inner dimension must equal \\\operatorname{rank}(\mathbf{A}) = 1\\.

> **NOTE:**
>
> **Theorem 41 (Every nonzero matrix has a rank factorization)** Every \\m \times n\\ matrix \\\mathbf{A}\\ with \\\operatorname{rank}(\mathbf{A}) = r \ge 1\\ has a rank factorization ([Definition 51](#def-rank-factorization)). One is given by taking the columns of \\\mathbf{C}\\ to be any basis of \\\mathcal{C}(\mathbf{A})\\.

> **NOTE:**
>
> *Proof*. \\\mathcal{C}(\mathbf{A})\\ has dimension \\r\\ ([Theorem 35](#thm-rank-dim)), so it has a basis \\\tilde{c}\_1, \ldots, \tilde{c}\_r\\ ([Theorem 28](#thm-extend-basis)); let \\\mathbf{C}\\ be the \\m \times r\\ matrix with these columns. Each column \\\tilde{a}\_j\\ of \\\mathbf{A}\\ is in \\\mathcal{C}(\mathbf{A})\\, so \\\tilde{a}\_j = r\_{1j} \tilde{c}\_1 + \cdots + r\_{rj} \tilde{c}\_r\\ for some numbers \\r\_{ij}\\, because the basis spans \\\mathcal{C}(\mathbf{A})\\. Let \\\mathbf{R}\\ be the \\r \times n\\ matrix with entries \\r\_{ij}\\, whose column \\j\\ is \\\tilde{r}\_j = (r\_{1j}, \ldots, r\_{rj})\\. Then column \\j\\ of \\\mathbf{C} \mathbf{R}\\ is
>
> \\ \begin{aligned} \mathbf{C} \tilde{r}\_j &= r\_{1j} \tilde{c}\_1 + \cdots + r\_{rj} \tilde{c}\_r && \text{(}\href{#thm-matvec-columns}{\text{Theorem~22}}\text{)} \\ &= \tilde{a}\_j, && \text{(choice of the } r\_{ij} \text{)} \end{aligned} \\
>
> so \\\mathbf{C} \mathbf{R} = \mathbf{A}\\.

> **NOTE:**
>
> **Example 71 (Building a rank factorization from a basis)** For \\\mathbf{A}\\ in [Example 53](#exm-column-space), \\(1, 3)\\ spans \\\mathcal{C}(\mathbf{A})\\ (1), and it is linearly independent because it is nonzero (\\c\\(1, 3) = \tilde{0}\_2\\ forces \\c = 0\\), so it is a basis of \\\mathcal{C}(\mathbf{A})\\. The columns of \\\mathbf{A}\\ are \\(1, 3) = 1 \cdot(1, 3)\\, \\(-2, -6) = -2 \cdot(1, 3)\\ and \\(-2, -6) = -2 \cdot(1, 3)\\, so the construction in [Theorem 41](#thm-rank-factorization) gives \\\mathbf{C} = \begin{bmatrix} 1 \\ 3 \end{bmatrix}\\ and \\\mathbf{R} = \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}\\, the factorization in [Example 70](#exm-rank-factorization).

### 2.13 Sums and direct sums

> **NOTE:**
>
> This section, [Section 2.14](#sec-orthogonal-complements) and [Section 2.15](#sec-fundamental-theorem) are adapted from Zhou ([2024e](#ref-zhou2024orthproj)), used under the MIT License (see the license text in [Section 2.10](#sec-subspaces)). The source proves that a subspace and its orthogonal complement together make up \\\mathbb{R}^p\\ by extending an orthonormal basis; the proof here uses the rank-nullity theorem ([Theorem 36](#thm-rank-nullity)) instead.

> **NOTE:**
>
> **Definition 52 (Sum of subspaces)** The **sum** of two subspaces \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ of \\\mathbb{R}^p\\ ([Definition 40](#def-subspace)) is the set of all sums of a vector from \\\mathcal{S}\_1\\ and a vector from \\\mathcal{S}\_2\\:
>
> \\ \mathcal{S}\_1 + \mathcal{S}\_2 \stackrel{\text{def}}{=} \mathopen{}\left\\\tilde{x}\_1 + \tilde{x}\_2 : \tilde{x}\_1 \in \mathcal{S}\_1,\\ \tilde{x}\_2 \in \mathcal{S}\_2\right\\\mathclose{}. \\

> **NOTE:**
>
> **Example 72 (Two lines sum to a plane)** Let \\\mathcal{S}\_1 = \operatorname{span}\mathopen{}\left\\(1, 0, 0)\right\\\mathclose{}\\ and \\\mathcal{S}\_2 = \operatorname{span}\mathopen{}\left\\(0, 1, 0)\right\\\mathclose{}\\, two lines in \\\mathbb{R}^3\\. A vector of \\\mathcal{S}\_1 + \mathcal{S}\_2\\ has the form \\a\\(1, 0, 0) + b\\(0, 1, 0) = (a, b, 0)\\, and \\a\\ and \\b\\ can be any numbers, so \\\mathcal{S}\_1 + \mathcal{S}\_2 = \mathopen{}\left\\(a, b, 0) : a, b \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\.

> **NOTE:**
>
> **Example 73 (The sum is not the union)** For the two lines in [Example 72](#exm-subspace-sum), the union \\\mathcal{S}\_1 \cup \mathcal{S}\_2\\ contains \\(1, 0, 0)\\ and \\(0, 1, 0)\\ but not their sum \\(1, 1, 0)\\: every multiple of \\(1, 0, 0)\\ has second entry \\0\\, and every multiple of \\(0, 1, 0)\\ has first entry \\0\\. So the union is not closed under addition and is not a subspace, while the sum, the whole plane \\z = 0\\, is.

> **NOTE:**
>
> **Theorem 42 (Sums and intersections of subspaces are subspaces)** If \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are subspaces of \\\mathbb{R}^p\\ ([Definition 40](#def-subspace)), then \\\mathcal{S}\_1 + \mathcal{S}\_2\\ ([Definition 52](#def-subspace-sum)) and \\\mathcal{S}\_1 \cap \mathcal{S}\_2\\ are subspaces of \\\mathbb{R}^p\\.

> **NOTE:**
>
> *Proof*. Both \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ contain \\\tilde{0}\\ ([Theorem 20](#thm-subspace-zero)).
>
> **The sum.** It is not empty: it contains \\\tilde{0}+ \tilde{0}= \tilde{0}\\. Take two of its vectors, \\\tilde{u} = \tilde{u}\_1 + \tilde{u}\_2\\ and \\\tilde{w} = \tilde{w}\_1 + \tilde{w}\_2\\, with \\\tilde{u}\_1, \tilde{w}\_1 \in \mathcal{S}\_1\\ and \\\tilde{u}\_2, \tilde{w}\_2 \in \mathcal{S}\_2\\, and a number \\c\\. Then
>
> \\ \begin{aligned} \tilde{u} + \tilde{w} &= (\tilde{u}\_1 + \tilde{u}\_2) + (\tilde{w}\_1 + \tilde{w}\_2) && \text{(substitute)} \\ &= (\tilde{u}\_1 + \tilde{w}\_1) + (\tilde{u}\_2 + \tilde{w}\_2), && \text{(regroup; vector addition is entrywise)} \end{aligned} \\
>
> where \\\tilde{u}\_1 + \tilde{w}\_1 \in \mathcal{S}\_1\\ and \\\tilde{u}\_2 + \tilde{w}\_2 \in \mathcal{S}\_2\\, because each subspace is closed under addition. Likewise
>
> \\ \begin{aligned} c\\\tilde{u} &= c\\(\tilde{u}\_1 + \tilde{u}\_2) && \text{(substitute)} \\ &= c\\\tilde{u}\_1 + c\\\tilde{u}\_2, && \text{(distribute } c \text{ entrywise)} \end{aligned} \\
>
> where \\c\\\tilde{u}\_1 \in \mathcal{S}\_1\\ and \\c\\\tilde{u}\_2 \in \mathcal{S}\_2\\, because each subspace is closed under scalar multiplication. So \\\tilde{u} + \tilde{w}\\ and \\c\\\tilde{u}\\ are in \\\mathcal{S}\_1 + \mathcal{S}\_2\\.
>
> **The intersection.** It is not empty: it contains \\\tilde{0}\\. If \\\tilde{u}\\ and \\\tilde{w}\\ are in both \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\, then \\\tilde{u} + \tilde{w}\\ and \\c\\\tilde{u}\\ are in \\\mathcal{S}\_1\\, because \\\mathcal{S}\_1\\ is a subspace, and in \\\mathcal{S}\_2\\ for the same reason, so they are in \\\mathcal{S}\_1 \cap \mathcal{S}\_2\\.

> **NOTE:**
>
> **Example 74 (Two planes in \\\mathbb{R}^3\\)** Let \\\mathcal{S}\_1 = \mathopen{}\left\\(a, b, 0) : a, b \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\, and \\\mathcal{S}\_2 = \mathopen{}\left\\(0, b, c) : b, c \in \mathbb{R}\right\\\mathclose{}\\, the plane \\x = 0\\.
>
> - **Intersection:** a vector in both has third entry \\0\\ and first entry \\0\\, so \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\(0, b, 0) : b \in \mathbb{R}\right\\\mathclose{}\\, the \\y\\-axis, which is a line through the origin.
> - **Sum:** \\(a, b, 0) + (0, b', c) = (a, b + b', c)\\, and any \\(x, y, z)\\ arises this way, with \\a = x\\, \\b = y\\, \\b' = 0\\ and \\c = z\\. So \\\mathcal{S}\_1 + \mathcal{S}\_2 = \mathbb{R}^3\\.

> **NOTE:**
>
> **Theorem 43 (The dimension of a sum of subspaces)** If \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are subspaces of \\\mathbb{R}^p\\, then
>
> \\ \dim(\mathcal{S}\_1 + \mathcal{S}\_2) = \dim(\mathcal{S}\_1) + \dim(\mathcal{S}\_2) - \dim(\mathcal{S}\_1 \cap \mathcal{S}\_2). \\

> **NOTE:**
>
> *Proof*. All three sets in the formula are subspaces ([Theorem 42](#thm-sum-intersection-subspace)), so each has a dimension ([Definition 44](#def-dimension)). Let \\k = \dim(\mathcal{S}\_1 \cap \mathcal{S}\_2)\\, \\d_1 = \dim(\mathcal{S}\_1)\\ and \\d_2 = \dim(\mathcal{S}\_2)\\.
>
> **Build a list.** Choose a basis \\\tilde{z}\_1, \ldots, \tilde{z}\_k\\ of \\\mathcal{S}\_1 \cap \mathcal{S}\_2\\ ([Theorem 28](#thm-extend-basis)). These vectors are linearly independent and lie in \\\mathcal{S}\_1\\, so [Theorem 28](#thm-extend-basis) extends them to a basis \\\tilde{z}\_1, \ldots, \tilde{z}\_k, \tilde{x}\_1, \ldots, \tilde{x}\_{d_1 - k}\\ of \\\mathcal{S}\_1\\, which has \\d_1\\ vectors ([Theorem 26](#thm-basis-size)). In the same way, extend them to a basis \\\tilde{z}\_1, \ldots, \tilde{z}\_k, \tilde{y}\_1, \ldots, \tilde{y}\_{d_2 - k}\\ of \\\mathcal{S}\_2\\. We show that the \\\tilde{z}\\’s, \\\tilde{x}\\’s and \\\tilde{y}\\’s together, \\k + (d_1 - k) + (d_2 - k) = d_1 + d_2 - k\\ vectors, are a basis of \\\mathcal{S}\_1 + \mathcal{S}\_2\\ ([Definition 42](#def-basis)).
>
> **They span \\\mathcal{S}\_1 + \mathcal{S}\_2\\.** Any \\\tilde{v} \in \mathcal{S}\_1 + \mathcal{S}\_2\\ is \\\tilde{v}\_1 + \tilde{v}\_2\\ with \\\tilde{v}\_1 \in \mathcal{S}\_1\\ and \\\tilde{v}\_2 \in \mathcal{S}\_2\\. \\\tilde{v}\_1\\ is a linear combination of the \\\tilde{z}\\’s and \\\tilde{x}\\’s, and \\\tilde{v}\_2\\ is a linear combination of the \\\tilde{z}\\’s and \\\tilde{y}\\’s, so their sum is a linear combination of all three groups. Conversely, each vector in the list is in \\\mathcal{S}\_1 + \mathcal{S}\_2\\ (for example, \\\tilde{x}\_1 = \tilde{x}\_1 + \tilde{0}\\), and \\\mathcal{S}\_1 + \mathcal{S}\_2\\ is a subspace, so it contains every linear combination of them.
>
> **They are linearly independent.** Suppose
>
> \\ \sum\_{i=1}^{k} a_i \tilde{z}\_i + \sum\_{j=1}^{d_1 - k} b_j \tilde{x}\_j + \sum\_{l=1}^{d_2 - k} c_l \tilde{y}\_l = \tilde{0}. \\
>
> Let \\\tilde{w} \stackrel{\text{def}}{=}\sum\_{l} c_l \tilde{y}\_l\\. Then \\\tilde{w} \in \mathcal{S}\_2\\, because it is a linear combination of vectors of \\\mathcal{S}\_2\\. Subtracting \\\sum\_{i} a_i \tilde{z}\_i + \sum\_{j} b_j \tilde{x}\_j\\ from both sides of the supposed equation gives
>
> \\ \tilde{w} = \sum\_{i=1}^{k} (-a_i)\\\tilde{z}\_i + \sum\_{j=1}^{d_1 - k} (-b_j)\\\tilde{x}\_j, \\
>
> a linear combination of vectors of \\\mathcal{S}\_1\\, so \\\tilde{w} \in \mathcal{S}\_1\\ too. So \\\tilde{w} \in \mathcal{S}\_1 \cap \mathcal{S}\_2\\, and \\\tilde{w} = \sum\_{i} e_i \tilde{z}\_i\\ for some numbers \\e_i\\, since the \\\tilde{z}\\’s span the intersection. Then
>
> \\ \begin{aligned} \tilde{0} &= \tilde{w} - \tilde{w} && \text{(a vector minus itself)} \\ &= \sum\_{i=1}^{k} e_i \tilde{z}\_i - \sum\_{l=1}^{d_2 - k} c_l \tilde{y}\_l && \text{(substitute the two expressions for } \tilde{w} \text{)} \\ &= \sum\_{i=1}^{k} e_i \tilde{z}\_i + \sum\_{l=1}^{d_2 - k} (-c_l)\\\tilde{y}\_l, && \text{(write each subtraction as adding } -1 \text{ times)} \end{aligned} \\
>
> and because the \\\tilde{z}\\’s and \\\tilde{y}\\’s are a basis of \\\mathcal{S}\_2\\, every \\c_l = 0\\. The supposed equation then reads \\\sum\_{i} a_i \tilde{z}\_i + \sum\_{j} b_j \tilde{x}\_j = \tilde{0}\\, and because the \\\tilde{z}\\’s and \\\tilde{x}\\’s are a basis of \\\mathcal{S}\_1\\, every \\a_i\\ and \\b_j\\ is \\0\\.
>
> So \\\dim(\mathcal{S}\_1 + \mathcal{S}\_2) = d_1 + d_2 - k\\. When some of the groups are empty (for example \\k = 0\\, or \\\mathcal{S}\_1 = \mathcal{S}\_1 \cap \mathcal{S}\_2\\), the sums over them are \\\tilde{0}\\ and the argument goes through unchanged.

> **NOTE:**
>
> **Example 75 (Two planes in \\\mathbb{R}^3\\, by dimension)** For the planes \\z = 0\\ and \\x = 0\\ in [Example 74](#exm-sum-intersection-subspace), each has dimension \\2\\: the plane \\z = 0\\ has basis \\(1, 0, 0), (0, 1, 0)\\ ([Example 47](#exm-dimension)), and the plane \\x = 0\\ has basis \\(0, 1, 0), (0, 0, 1)\\ by the same argument. Their intersection, the \\y\\-axis \\\operatorname{span}\mathopen{}\left\\(0, 1, 0)\right\\\mathclose{}\\, has dimension \\1\\, because the single nonzero vector \\(0, 1, 0)\\ is linearly independent (\\c\\(0, 1, 0) = (0, c, 0)\\ is \\\tilde{0}\\ only if \\c = 0\\) and so is a basis of it. [Theorem 43](#thm-dim-sum) gives
>
> \\ \dim(\mathcal{S}\_1 + \mathcal{S}\_2) = 2 + 2 - 1 = 3, \\
>
> which agrees with \\\mathcal{S}\_1 + \mathcal{S}\_2 = \mathbb{R}^3\\ ([Example 74](#exm-sum-intersection-subspace)) and \\\dim(\mathbb{R}^3) = 3\\ ([Example 47](#exm-dimension)).

> **NOTE:**
>
> **Corollary 4 (The dimension of a sum is at most the sum of the dimensions)** If \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are subspaces of \\\mathbb{R}^p\\, then
>
> \\ \dim(\mathcal{S}\_1 + \mathcal{S}\_2) \le \dim(\mathcal{S}\_1) + \dim(\mathcal{S}\_2), \\
>
> with equality exactly when \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\.

> **NOTE:**
>
> *Proof*. By [Theorem 43](#thm-dim-sum), the two sides differ by \\\dim(\mathcal{S}\_1 \cap \mathcal{S}\_2) \ge 0\\. That dimension is \\0\\ exactly when a basis of the intersection is the empty list, that is, when the intersection is the span of the empty list, \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ ([Definition 41](#def-span), [Example 47](#exm-dimension)).

> **NOTE:**
>
> **Example 76 (Equality and strict inequality)**  
>
> - For the lines \\\mathcal{S}\_1 = \operatorname{span}\mathopen{}\left\\(1, 0, 0)\right\\\mathclose{}\\ and \\\mathcal{S}\_2 = \operatorname{span}\mathopen{}\left\\(0, 1, 0)\right\\\mathclose{}\\ in [Example 72](#exm-subspace-sum), a common vector satisfies \\a\\(1, 0, 0) = b\\(0, 1, 0)\\, so \\(a, -b, 0) = \tilde{0}\\ and \\a = b = 0\\. The intersection is \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, and indeed \\\dim(\mathcal{S}\_1 + \mathcal{S}\_2) = 2 = 1 + 1\\: the sum is the plane \\z = 0\\ ([Example 72](#exm-subspace-sum)), which has dimension \\2\\ ([Example 47](#exm-dimension)), and each line has dimension \\1\\, with its spanning vector as a basis.
> - For \\\mathcal{S}\_1 = \mathcal{S}\_2 = \operatorname{span}\mathopen{}\left\\(1, 0, 0)\right\\\mathclose{}\\, the sum is the same line, because \\a\\(1, 0, 0) + b\\(1, 0, 0) = (a + b)\\(1, 0, 0)\\, so \\\dim(\mathcal{S}\_1 + \mathcal{S}\_2) = 1 \< 1 + 1\\, a [strict inequality](algebra.llms.md#def-strict-inequality).

> **NOTE:**
>
> **Theorem 44 (Rank is subadditive)** For \\m \times n\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\,
>
> \\ \operatorname{rank}(\mathbf{A} + \mathbf{B}) \le \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(\mathbf{B}). \\

> **NOTE:**
>
> *Proof*. **\\\mathcal{C}(\mathbf{A} + \mathbf{B}) \subseteq \mathcal{C}(\mathbf{A}) + \mathcal{C}(\mathbf{B})\\.** Any vector of \\\mathcal{C}(\mathbf{A} + \mathbf{B})\\ is \\(\mathbf{A} + \mathbf{B})\\\tilde{x}\\ for some \\\tilde{x} \in \mathbb{R}^n\\ ([Definition 45](#def-column-space)), and \\(\mathbf{A} + \mathbf{B})\\\tilde{x} = \mathbf{A} \tilde{x} + \mathbf{B} \tilde{x}\\ ([Theorem 9](#thm-matmul-distrib), with \\\tilde{x}\\ as an \\n \times 1\\ matrix), a vector of \\\mathcal{C}(\mathbf{A})\\ plus a vector of \\\mathcal{C}(\mathbf{B})\\.
>
> **Compare dimensions.** All the sets involved are subspaces of \\\mathbb{R}^m\\ ([Theorem 31](#thm-column-space-span), [Theorem 42](#thm-sum-intersection-subspace)), so
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A} + \mathbf{B}) &= \dim\mathopen{}\left(\mathcal{C}(\mathbf{A} + \mathbf{B})\right)\mathclose{} && \text{(}\href{#thm-rank-dim}{\text{Theorem~35}}\text{)} \\ &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A}) + \mathcal{C}(\mathbf{B})\right)\mathclose{} && \text{(the containment, and part 2 of }\href{#thm-dim-bound}{\text{Theorem~29}}\text{)} \\ &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} + \dim\mathopen{}\left(\mathcal{C}(\mathbf{B})\right)\mathclose{} && \text{(}\href{#cor-dim-subadditive}{\text{Corollary~4}}\text{)} \\ &= \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(\mathbf{B}). && \text{(}\href{#thm-rank-dim}{\text{Theorem~35}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 77 (Subadditivity with equality and without)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ and \\\mathbf{B} = \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix}\\. Each has one nonzero column and one zero column. The nonzero column on its own is linearly independent (\\c\\\tilde{v} = \tilde{0}\_2\\ with \\\tilde{v} \ne \tilde{0}\_2\\ forces \\c = 0\\), and the two columns together are not, since \\1\\ times the zero column is \\\tilde{0}\_2\\; so each matrix has rank \\1\\ ([Definition 38](#def-rank)). By the same argument, \\-\mathbf{A}\\ has rank \\1\\.
>
> - \\\mathbf{A} + \mathbf{B}\\ is the \\2 \times 2\\ identity matrix, which has rank \\2\\ ([Example 62](#exm-rank-nullity)), so the bound \\2 \le 1 + 1\\ holds with equality.
> - \\\mathbf{A} + (-\mathbf{A})\\ is the \\2 \times 2\\ zero matrix, which has rank \\0\\: any nonempty list of its columns contains \\\tilde{0}\_2\\, and \\1 \cdot\tilde{0}\_2 = \tilde{0}\_2\\. So the bound \\0 \le \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(-\mathbf{A}) = 1 + 1\\ is strict.

> **NOTE:**
>
> **Definition 53 (Direct sum)** Let \\\mathcal{S}\_1\\, \\\mathcal{S}\_2\\ and \\\mathcal{V}\\ be subspaces of \\\mathbb{R}^p\\. \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are **complementary** in \\\mathcal{V}\\ if
>
> \\ \mathcal{V} = \mathcal{S}\_1 + \mathcal{S}\_2 \quad \text{and} \quad \mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{} \\
>
> ([Definition 52](#def-subspace-sum)). Then \\\mathcal{V}\\ is the **direct sum** of \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\, written \\\mathcal{V} = \mathcal{S}\_1 \oplus \mathcal{S}\_2\\.

> **NOTE:**
>
> **Example 78 (\\\mathbb{R}^3\\ is a plane plus a line)** Let \\\mathcal{S}\_1 = \mathopen{}\left\\(a, b, 0) : a, b \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\, and \\\mathcal{S}\_2 = \mathopen{}\left\\(0, 0, c) : c \in \mathbb{R}\right\\\mathclose{}\\, the \\z\\-axis.
>
> - **Sum:** any \\(x, y, z) \in \mathbb{R}^3\\ is \\(x, y, 0) + (0, 0, z)\\, so \\\mathcal{S}\_1 + \mathcal{S}\_2 = \mathbb{R}^3\\.
> - **Intersection:** a vector in both has third entry \\0\\ and first and second entries \\0\\, so \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\.
>
> So \\\mathbb{R}^3 = \mathcal{S}\_1 \oplus \mathcal{S}\_2\\.

> **NOTE:**
>
> **Example 79 (Two planes that sum to \\\mathbb{R}^3\\ but not directly)** The planes \\z = 0\\ and \\x = 0\\ sum to \\\mathbb{R}^3\\ ([Example 74](#exm-sum-intersection-subspace)), but they share the \\y\\-axis, so they are not complementary, and \\\mathbb{R}^3\\ is not their direct sum. The shared line shows up as more than one way to split a vector: \\(0, 1, 0) = (0, 1, 0) + \tilde{0}= \tilde{0}+ (0, 1, 0)\\, with the first term in the plane \\z = 0\\ and the second in the plane \\x = 0\\ both times.

> **NOTE:**
>
> **Theorem 45 (Three ways to recognize a direct sum)** Let \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ be subspaces of \\\mathbb{R}^p\\, and let \\\mathcal{V} = \mathcal{S}\_1 + \mathcal{S}\_2\\. The following statements are equivalent:
>
> 1.  \\\mathcal{V} = \mathcal{S}\_1 \oplus \mathcal{S}\_2\\ ([Definition 53](#def-direct-sum)).
> 2.  \\\dim(\mathcal{V}) = \dim(\mathcal{S}\_1) + \dim(\mathcal{S}\_2)\\.
> 3.  Every \\\tilde{x} \in \mathcal{V}\\ can be written as \\\tilde{x} = \tilde{x}\_1 + \tilde{x}\_2\\ with \\\tilde{x}\_1 \in \mathcal{S}\_1\\ and \\\tilde{x}\_2 \in \mathcal{S}\_2\\ in only one way.

> **NOTE:**
>
> *Proof*. Since \\\mathcal{V} = \mathcal{S}\_1 + \mathcal{S}\_2\\ is given, statement 1 says exactly that \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\.
>
> **1 and 2 are equivalent.** By [Corollary 4](#cor-dim-subadditive), \\\dim(\mathcal{S}\_1 + \mathcal{S}\_2) = \dim(\mathcal{S}\_1) + \dim(\mathcal{S}\_2)\\ exactly when \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\.
>
> **1 implies 3.** Every \\\tilde{x} \in \mathcal{V}\\ has at least one such expression, because \\\mathcal{V} = \mathcal{S}\_1 + \mathcal{S}\_2\\. Suppose \\\tilde{x} = \tilde{u}\_1 + \tilde{u}\_2 = \tilde{v}\_1 + \tilde{v}\_2\\, with \\\tilde{u}\_1, \tilde{v}\_1 \in \mathcal{S}\_1\\ and \\\tilde{u}\_2, \tilde{v}\_2 \in \mathcal{S}\_2\\. Then
>
> \\ \begin{aligned} \tilde{u}\_1 - \tilde{v}\_1 &= (\tilde{u}\_1 + \tilde{u}\_2) - \tilde{u}\_2 - \tilde{v}\_1 && \text{(add and subtract } \tilde{u}\_2 \text{)} \\ &= (\tilde{v}\_1 + \tilde{v}\_2) - \tilde{u}\_2 - \tilde{v}\_1 && \text{(substitute } \tilde{u}\_1 + \tilde{u}\_2 = \tilde{v}\_1 + \tilde{v}\_2 \text{)} \\ &= \tilde{v}\_2 - \tilde{u}\_2. && \text{(cancel } \tilde{v}\_1 \text{)} \end{aligned} \\
>
> The left side is in \\\mathcal{S}\_1\\ and the right side is in \\\mathcal{S}\_2\\, because each subspace is closed under addition and scalar multiplication (the difference is \\\tilde{u}\_1 + (-1)\\\tilde{v}\_1\\). So both sides are in \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, which gives \\\tilde{u}\_1 = \tilde{v}\_1\\ and \\\tilde{u}\_2 = \tilde{v}\_2\\.
>
> **3 implies 1.** Take any \\\tilde{x} \in \mathcal{S}\_1 \cap \mathcal{S}\_2\\. Then \\\tilde{x} = \tilde{x} + \tilde{0}\\, with \\\tilde{x} \in \mathcal{S}\_1\\ and \\\tilde{0}\in \mathcal{S}\_2\\, and \\\tilde{x} = \tilde{0}+ \tilde{x}\\, with \\\tilde{0}\in \mathcal{S}\_1\\ and \\\tilde{x} \in \mathcal{S}\_2\\ ([Theorem 20](#thm-subspace-zero)). By statement 3 these two expressions are the same, so \\\tilde{x} = \tilde{0}\\, and \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\.

> **NOTE:**
>
> **Example 80 (Checking the three statements)** For the plane \\z = 0\\ and the \\z\\-axis in [Example 78](#exm-direct-sum):
>
> - the dimensions add up: \\2 + 1 = 3 = \dim(\mathbb{R}^3)\\, since the plane has dimension \\2\\ ([Example 47](#exm-dimension)), the \\z\\-axis has the single nonzero vector \\(0, 0, 1)\\ as a basis, and \\\dim(\mathbb{R}^3) = 3\\ ([Example 47](#exm-dimension));
> - the split is unique: if \\(x, y, z) = (a, b, 0) + (0, 0, c) = (a, b, c)\\, then \\a = x\\, \\b = y\\ and \\c = z\\.
>
> For the planes \\z = 0\\ and \\x = 0\\ in [Example 79](#exm-not-direct-sum), both statements fail: \\2 + 2 = 4 \ne 3 = \dim(\mathcal{S}\_1 + \mathcal{S}\_2)\\ ([Example 75](#exm-dim-sum)), and \\(0, 1, 0)\\ splits in two ways.

### 2.14 Orthogonal complements

> **NOTE:**
>
> **Theorem 46 (The dot product is linear in each slot)** For vectors \\\tilde{x}, \tilde{u}, \tilde{w} \in \mathbb{R}^p\\ and numbers \\a, b\\,
>
> \\ \tilde{x} \cdot (a\\\tilde{u} + b\\\tilde{w}) = a\\(\tilde{x} \cdot \tilde{u}) + b\\(\tilde{x} \cdot \tilde{w}) \\
>
> and
>
> \\ (a\\\tilde{u} + b\\\tilde{w}) \cdot \tilde{x} = a\\(\tilde{u} \cdot \tilde{x}) + b\\(\tilde{w} \cdot \tilde{x}). \\

> **NOTE:**
>
> *Proof*. **Second slot.**
>
> \\ \begin{aligned} \tilde{x} \cdot (a\\\tilde{u} + b\\\tilde{w}) &= \sum\_{i=1}^{p} x_i\\(a\\\tilde{u} + b\\\tilde{w})\_i && \text{(}\href{#def-dot-product}{\text{Definition~7}}\text{)} \\ &= \sum\_{i=1}^{p} x_i\\(a u_i + b w_i) && \text{(}\href{#def-scalar-mult}{\text{Definition~23}}\text{, }\href{#def-vector-addition}{\text{Definition~6}}\text{)} \\ &= \sum\_{i=1}^{p} \mathopen{}\left(x_i a u_i + x_i b w_i\right)\mathclose{} && \text{(distribute each } x_i \text{)} \\ &= \sum\_{i=1}^{p} \mathopen{}\left(a\\x_i u_i + b\\x_i w_i\right)\mathclose{} && \text{(commute the factors in each product)} \\ &= \sum\_{i=1}^{p} a\\x_i u_i + \sum\_{i=1}^{p} b\\x_i w_i && \text{(split the finite sum)} \\ &= a \sum\_{i=1}^{p} x_i u_i + b \sum\_{i=1}^{p} x_i w_i && \text{(factor } a \text{ and } b \text{ out of the sums)} \\ &= a\\(\tilde{x} \cdot \tilde{u}) + b\\(\tilde{x} \cdot \tilde{w}). && \text{(}\href{#def-dot-product}{\text{Definition~7}}\text{)} \end{aligned} \\
>
> **First slot.**
>
> \\ \begin{aligned} (a\\\tilde{u} + b\\\tilde{w}) \cdot \tilde{x} &= \tilde{x} \cdot (a\\\tilde{u} + b\\\tilde{w}) && \text{(}\href{#thm-lincom-symmetric}{\text{Theorem~1}}\text{)} \\ &= a\\(\tilde{x} \cdot \tilde{u}) + b\\(\tilde{x} \cdot \tilde{w}) && \text{(second slot)} \\ &= a\\(\tilde{u} \cdot \tilde{x}) + b\\(\tilde{w} \cdot \tilde{x}). && \text{(}\href{#thm-lincom-symmetric}{\text{Theorem~1}}\text{, twice)} \end{aligned} \\
>
> Two special cases are used often. With \\a = b = 1\\, and \\1\\\tilde{u} = \tilde{u}\\, the theorem gives \\\tilde{x} \cdot (\tilde{u} + \tilde{w}) = \tilde{x} \cdot \tilde{u} + \tilde{x} \cdot \tilde{w}\\. With \\\tilde{w} = \tilde{u}\\ and \\b = 0\\, and \\0\\\tilde{u} = \tilde{0}\\, it gives \\\tilde{x} \cdot (a\\\tilde{u}) = a\\(\tilde{x} \cdot \tilde{u})\\, and likewise in the first slot.

> **NOTE:**
>
> **Example 81 (Splitting a dot product)** Let \\\tilde{x} = (1, 2)\\, \\\tilde{u} = (3, 0)\\, \\\tilde{w} = (0, 1)\\, \\a = 2\\ and \\b = -1\\. Directly, \\a\\\tilde{u} + b\\\tilde{w} = (6, -1)\\ and \\\tilde{x} \cdot (6, -1) = 6 - 2 = 4\\. By [Theorem 46](#thm-dot-linear), \\a\\(\tilde{x} \cdot \tilde{u}) + b\\(\tilde{x} \cdot \tilde{w}) = 2 \cdot 3 + (-1) \cdot 2 = 4\\, the same number.

> **NOTE:**
>
> **Definition 54 (Orthogonal complement)** The **orthogonal complement** of a set \\\mathcal{X}\\ of vectors in \\\mathbb{R}^p\\ is the set of vectors orthogonal ([Definition 13](#def-orthogonal-vectors)) to every vector of \\\mathcal{X}\\:
>
> \\ \mathcal{X}^\perp \stackrel{\text{def}}{=} \mathopen{}\left\\\tilde{u} \in \mathbb{R}^p : \tilde{x} \cdot \tilde{u} = 0 \text{ for all } \tilde{x} \in \mathcal{X}\right\\\mathclose{}. \\
>
> \\\mathcal{X}^\perp\\ is read “\\\mathcal{X}\\ perp”. \\\mathcal{X}\\ need not be a subspace.

> **NOTE:**
>
> **Example 82 (Orthogonal complements in \\\mathbb{R}^3\\)**  
>
> - **A plane.** Let \\\mathcal{X} = \mathopen{}\left\\(a, b, 0) : a, b \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\. A vector \\\tilde{u}\\ is in \\\mathcal{X}^\perp\\ when \\(a, b, 0) \cdot \tilde{u} = a u_1 + b u_2 = 0\\ for all \\a\\ and \\b\\. Taking \\(a, b) = (1, 0)\\ forces \\u_1 = 0\\, and taking \\(a, b) = (0, 1)\\ forces \\u_2 = 0\\; conversely, if \\u_1 = u_2 = 0\\, then \\a u_1 + b u_2 = 0\\ for all \\a\\ and \\b\\. So \\\mathcal{X}^\perp = \mathopen{}\left\\(0, 0, c) : c \in \mathbb{R}\right\\\mathclose{}\\, the \\z\\-axis.
> - **Two vectors.** The two-element set \\\mathopen{}\left\\(1, 0, 0), (0, 1, 0)\right\\\mathclose{}\\ is not a subspace, and its orthogonal complement is the \\z\\-axis too: the two conditions \\u_1 = 0\\ and \\u_2 = 0\\ are the same as for the plane.
> - **The extremes.** \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}^\perp = \mathbb{R}^3\\, because \\\tilde{0}\cdot \tilde{u} = 0\\ for every \\\tilde{u}\\. \\(\mathbb{R}^3)^\perp = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, because a \\\tilde{u}\\ in it is orthogonal to itself, and \\\tilde{u} \cdot \tilde{u} = u_1^2 + u_2^2 + u_3^2 = 0\\ forces \\\tilde{u} = \tilde{0}\\.

> **NOTE:**
>
> **Theorem 47 (An orthogonal complement is a subspace)** For any set \\\mathcal{X}\\ of vectors in \\\mathbb{R}^p\\, \\\mathcal{X}^\perp\\ ([Definition 54](#def-orthogonal-complement)) is a subspace of \\\mathbb{R}^p\\ ([Definition 40](#def-subspace)).

> **NOTE:**
>
> *Proof*. \\\mathcal{X}^\perp\\ is not empty: \\\tilde{x} \cdot \tilde{0}= \sum_i x_i \cdot 0 = 0\\ for every \\\tilde{x}\\, so \\\tilde{0}\in \mathcal{X}^\perp\\. Let \\\tilde{u}, \tilde{w} \in \mathcal{X}^\perp\\, let \\c \in \mathbb{R}\\, and let \\\tilde{x} \in \mathcal{X}\\.
>
> **Addition.**
>
> \\ \begin{aligned} \tilde{x} \cdot (\tilde{u} + \tilde{w}) &= \tilde{x} \cdot \tilde{u} + \tilde{x} \cdot \tilde{w} && \text{(}\href{#thm-dot-linear}{\text{Theorem~46}}\text{, special case } a = b = 1 \text{)} \\ &= 0 + 0 && \text{(} \tilde{u}, \tilde{w} \in \mathcal{X}^\perp \text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\
>
> **Scalar multiplication.**
>
> \\ \begin{aligned} \tilde{x} \cdot (c\\\tilde{u}) &= c\\(\tilde{x} \cdot \tilde{u}) && \text{(}\href{#thm-dot-linear}{\text{Theorem~46}}\text{, special case } b = 0 \text{)} \\ &= c \cdot 0 && \text{(} \tilde{u} \in \mathcal{X}^\perp \text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\
>
> These two equations hold for every \\\tilde{x} \in \mathcal{X}\\, so \\\tilde{u} + \tilde{w}\\ and \\c\\\tilde{u}\\ are in \\\mathcal{X}^\perp\\.

> **NOTE:**
>
> **Example 83 (The complement of a single vector is a line)** The one-element set \\\mathcal{X} = \mathopen{}\left\\(1, 2)\right\\\mathclose{}\\ in \\\mathbb{R}^2\\ is not a subspace: \\2\\(1, 2) = (2, 4)\\ is not in it. Its orthogonal complement is
>
> \\ \mathcal{X}^\perp = \mathopen{}\left\\\tilde{u} \in \mathbb{R}^2 : u_1 + 2 u_2 = 0\right\\\mathclose{} = \mathopen{}\left\\c\\(-2, 1) : c \in \mathbb{R}\right\\\mathclose{}, \\
>
> since \\u_1 + 2u_2 = 0\\ means \\\tilde{u} = (-2u_2, u_2) = u_2\\(-2, 1)\\. That set is \\\operatorname{span}\mathopen{}\left\\(-2, 1)\right\\\mathclose{}\\, a subspace by [Theorem 21](#thm-span-subspace), as [Theorem 47](#thm-orthogonal-complement-subspace) says it must be. It contains \\(-2, 1)\\, the vector [Remark 7](#rem-orthogonal-perpendicular) found perpendicular to \\(1, 2)\\.

> **NOTE:**
>
> **Theorem 48 (The orthogonal complement of a column space is a null space)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top}). \\

> **NOTE:**
>
> *Proof*. Let \\\tilde{a}\_1, \ldots, \tilde{a}\_n\\ be the columns of \\\mathbf{A}\\, so \\\tilde{a}\_j = (a\_{1j}, \ldots, a\_{mj})\\. For \\\tilde{x} \in \mathbb{R}^m\\, entry \\j\\ of \\{\mathbf{A}}^{\top} \tilde{x}\\ is
>
> \\ \begin{aligned} ({\mathbf{A}}^{\top} \tilde{x})\_j &= \sum\_{i=1}^{m} ({\mathbf{A}}^{\top})\_{ji}\\ x_i && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\ &= \sum\_{i=1}^{m} a\_{ij}\\ x_i && \text{(}\href{#def-matrix-transpose}{\text{Definition~20}}\text{)} \\ &= \tilde{a}\_j \cdot \tilde{x}. && \text{(}\href{#def-dot-product}{\text{Definition~7}}\text{)} \end{aligned} \\
>
> So \\\tilde{x} \in \mathcal{N}({\mathbf{A}}^{\top})\\ ([Definition 46](#def-null-space)) exactly when \\\tilde{a}\_j \cdot \tilde{x} = 0\\ for every column \\\tilde{a}\_j\\.
>
> **\\\mathcal{C}(\mathbf{A})^\perp \subseteq \mathcal{N}({\mathbf{A}}^{\top})\\.** Each column \\\tilde{a}\_j\\ is in \\\mathcal{C}(\mathbf{A})\\ ([Theorem 31](#thm-column-space-span)), so a vector orthogonal to all of \\\mathcal{C}(\mathbf{A})\\ is orthogonal to every column.
>
> **\\\mathcal{N}({\mathbf{A}}^{\top}) \subseteq \mathcal{C}(\mathbf{A})^\perp\\.** Suppose \\\tilde{a}\_j \cdot \tilde{x} = 0\\ for every \\j\\, and take any \\\tilde{y} \in \mathcal{C}(\mathbf{A})\\, so \\\tilde{y} = \mathbf{A} \tilde{z}\\ for some \\\tilde{z} \in \mathbb{R}^n\\ ([Definition 45](#def-column-space)). Then
>
> \\ \begin{aligned} \tilde{y} \cdot \tilde{x} &= \sum\_{i=1}^{m} (\mathbf{A} \tilde{z})\_i\\ x_i && \text{(}\href{#def-dot-product}{\text{Definition~7}}\text{)} \\ &= \sum\_{i=1}^{m} \mathopen{}\left(\sum\_{j=1}^{n} a\_{ij} z_j\right)\mathclose{}\\ x_i && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\ &= \sum\_{i=1}^{m} \sum\_{j=1}^{n} a\_{ij}\\ z_j\\ x_i && \text{(distribute each } x_i \text{ over the inner sum)} \\ &= \sum\_{j=1}^{n} \sum\_{i=1}^{m} a\_{ij}\\ z_j\\ x_i && \text{(swap the order of the finite sums)} \\ &= \sum\_{j=1}^{n} z_j \sum\_{i=1}^{m} a\_{ij}\\ x_i && \text{(commute, then factor } z_j \text{ out of the inner sum)} \\ &= \sum\_{j=1}^{n} z_j\\ (\tilde{a}\_j \cdot \tilde{x}) && \text{(}\href{#def-dot-product}{\text{Definition~7}}\text{)} \\ &= \sum\_{j=1}^{n} z_j \cdot 0 && \text{(each } \tilde{a}\_j \cdot \tilde{x} = 0 \text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\
>
> So \\\tilde{x}\\ is orthogonal to every vector of \\\mathcal{C}(\mathbf{A})\\.

> **NOTE:**
>
> **Example 84 (The complement of the column space in [Example 53](#exm-column-space))** For \\\mathbf{A}\\ in [Example 53](#exm-column-space), \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\ (1). [Example 55](#exm-null-space) found \\\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(-3, 1)\right\\\mathclose{}\\, so by [Theorem 48](#thm-complement-null-space) this line is \\\mathcal{C}(\mathbf{A})^\perp\\. Directly, for any \\c\\,
>
> \\ \begin{aligned} \mathopen{}\left(c\\(1, 3)\right)\mathclose{} \cdot (-3, 1) &= c\\\mathopen{}\left((1, 3) \cdot (-3, 1)\right)\mathclose{} && \text{(}\href{#thm-dot-linear}{\text{Theorem~46}}\text{, special case } b = 0 \text{, first slot)} \\ &= c\\(-3 + 3) && \text{(}\href{#def-dot-product}{\text{Definition~7}}\text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 49 (A subspace and its orthogonal complement make up the whole space)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\. Then
>
> 1.  \\\mathcal{S} \cap \mathcal{S}^\perp = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\;
> 2.  \\\dim(\mathcal{S}) + \dim(\mathcal{S}^\perp) = p\\;
> 3.  \\\mathbb{R}^p = \mathcal{S} \oplus \mathcal{S}^\perp\\ ([Definition 53](#def-direct-sum)).
>
> So every \\\tilde{y} \in \mathbb{R}^p\\ can be written as \\\tilde{y} = \tilde{u} + \tilde{v}\\ with \\\tilde{u} \in \mathcal{S}\\ and \\\tilde{v} \in \mathcal{S}^\perp\\ in only one way ([Theorem 45](#thm-direct-sum-equiv)).

> **NOTE:**
>
> *Proof*. \\\mathcal{S}^\perp\\ is a subspace ([Theorem 47](#thm-orthogonal-complement-subspace)), so it has a dimension ([Definition 44](#def-dimension)).
>
> **Part 1.** Both \\\mathcal{S}\\ and \\\mathcal{S}^\perp\\ contain \\\tilde{0}\\ ([Theorem 20](#thm-subspace-zero)). If \\\tilde{x}\\ is in both, then \\\tilde{x}\\ is orthogonal to every vector of \\\mathcal{S}\\, \\\tilde{x}\\ itself included, so \\\tilde{x} \cdot \tilde{x} = x_1^2 + \cdots + x_p^2 = 0\\, which forces every \\x_i = 0\\.
>
> **Part 2.** Let \\d = \dim(\mathcal{S})\\. If \\d = 0\\, then \\\mathcal{S}\\ has a basis ([Theorem 28](#thm-extend-basis)) with \\0\\ vectors ([Definition 44](#def-dimension)), the empty list, whose span is \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ ([Definition 41](#def-span)); so \\\mathcal{S} = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, \\\mathcal{S}^\perp = \mathbb{R}^p\\ (every \\\tilde{u}\\ satisfies \\\tilde{0}\cdot \tilde{u} = 0\\), and \\0 + p = p\\ ([Example 47](#exm-dimension)). If \\d \ge 1\\, choose a basis \\\tilde{a}\_1, \ldots, \tilde{a}\_d\\ of \\\mathcal{S}\\ ([Theorem 28](#thm-extend-basis)), and let \\\mathbf{A}\\ be the \\p \times d\\ matrix with these columns. The basis spans \\\mathcal{S}\\, so \\\mathcal{S} = \mathcal{C}(\mathbf{A})\\ ([Theorem 31](#thm-column-space-span)), and \\\mathcal{S}^\perp = \mathcal{N}({\mathbf{A}}^{\top})\\ ([Theorem 48](#thm-complement-null-space)). \\{\mathbf{A}}^{\top}\\ is \\d \times p\\, so
>
> \\ \begin{aligned} \dim(\mathcal{S}^\perp) &= \dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{} && \text{(}\href{#thm-complement-null-space}{\text{Theorem~48}}\text{)} \\ &= \operatorname{nullity}({\mathbf{A}}^{\top}) && \text{(}\href{#def-nullity}{\text{Definition~48}}\text{)} \\ &= p - \operatorname{rank}({\mathbf{A}}^{\top}) && \text{(}\href{#thm-rank-nullity}{\text{Theorem~36}}\text{, for the } p \text{ columns of } {\mathbf{A}}^{\top} \text{)} \\ &= p - \operatorname{rank}(\mathbf{A}) && \text{(}\href{#thm-rank-transpose}{\text{Theorem~38}}\text{)} \\ &= p - \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} && \text{(}\href{#thm-rank-dim}{\text{Theorem~35}}\text{)} \\ &= p - d. && \text{(} \mathcal{C}(\mathbf{A}) = \mathcal{S} \text{)} \end{aligned} \\
>
> **Part 3.** \\\mathcal{S} + \mathcal{S}^\perp\\ is a subspace of \\\mathbb{R}^p\\ ([Theorem 42](#thm-sum-intersection-subspace)), and
>
> \\ \begin{aligned} \dim(\mathcal{S} + \mathcal{S}^\perp) &= \dim(\mathcal{S}) + \dim(\mathcal{S}^\perp) - \dim(\mathcal{S} \cap \mathcal{S}^\perp) && \text{(}\href{#thm-dim-sum}{\text{Theorem~43}}\text{)} \\ &= p - \dim(\mathcal{S} \cap \mathcal{S}^\perp) && \text{(part 2)} \\ &= p - 0 && \text{(part 1, and } \dim(\mathopen{}\left\\\tilde{0}\right\\\mathclose{}) = 0 \text{ by }\href{#exm-dimension}{\text{Example~47}}\text{)} \\ &= p. && \text{(arithmetic)} \end{aligned} \\
>
> Since \\\mathcal{S} + \mathcal{S}^\perp \subseteq \mathbb{R}^p\\, \\\mathbb{R}^p\\ is a subspace ([Example 34](#exm-subspace)) and \\\dim(\mathbb{R}^p) = p\\ ([Example 47](#exm-dimension)), [Theorem 30](#thm-subspace-equal-dim) gives \\\mathcal{S} + \mathcal{S}^\perp = \mathbb{R}^p\\. Together with part 1, \\\mathbb{R}^p = \mathcal{S} \oplus \mathcal{S}^\perp\\. The uniqueness of the split then follows from [Theorem 45](#thm-direct-sum-equiv) (statement 1 implies statement 3).

> **NOTE:**
>
> **Example 85 (Splitting a vector of \\\mathbb{R}^3\\ along a line and its complement)** Let \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ in \\\mathbb{R}^3\\. A single nonzero vector is linearly independent (\\c\\\tilde{v} = \tilde{0}\\ with \\\tilde{v} \ne \tilde{0}\\ forces \\c = 0\\), so \\(1, 1, 0)\\ is a basis of \\\mathcal{S}\\ and \\\dim(\mathcal{S}) = 1\\. A vector \\\tilde{u}\\ is in \\\mathcal{S}^\perp\\ exactly when \\u_1 + u_2 = 0\\: that condition says \\(1, 1, 0) \cdot \tilde{u} = 0\\, and then \\c\\(1, 1, 0) \cdot \tilde{u} = c\\(u_1 + u_2) = 0\\ for every \\c\\. So \\\mathcal{S}^\perp = \mathopen{}\left\\(a, -a, c) : a, c \in \mathbb{R}\right\\\mathclose{} = \operatorname{span}\mathopen{}\left\\(1, -1, 0), (0, 0, 1)\right\\\mathclose{}\\. Those two vectors are linearly independent, because \\a\\(1, -1, 0) + c\\(0, 0, 1) = (a, -a, c)\\ is \\\tilde{0}\\ only if \\a = c = 0\\, so \\\dim(\mathcal{S}^\perp) = 2\\, and \\1 + 2 = 3\\, as part 2 says.
>
> To split \\\tilde{y} = (3, 1, 2)\\, look for \\\tilde{u} = t\\(1, 1, 0)\\ with \\\tilde{v} = \tilde{y} - \tilde{u} = (3 - t, 1 - t, 2)\\ in \\\mathcal{S}^\perp\\: that membership needs \\(3 - t) + (1 - t) = 0\\, so \\t = 2\\. Then \\\tilde{u} = (2, 2, 0)\\ and \\\tilde{v} = (1, -1, 2)\\, with \\\tilde{u} + \tilde{v} = (3, 1, 2)\\ and \\(1, 1, 0) \cdot (1, -1, 2) = 1 - 1 + 0 = 0\\.

> **NOTE:**
>
> **Theorem 50 (The orthogonal complement of the orthogonal complement)** For any subspace \\\mathcal{S}\\ of \\\mathbb{R}^p\\,
>
> \\ (\mathcal{S}^\perp)^\perp = \mathcal{S}. \\

> **NOTE:**
>
> *Proof*. **\\\mathcal{S} \subseteq (\mathcal{S}^\perp)^\perp\\.** Take \\\tilde{s} \in \mathcal{S}\\ and any \\\tilde{v} \in \mathcal{S}^\perp\\. By [Definition 54](#def-orthogonal-complement), \\\tilde{s} \cdot \tilde{v} = 0\\, so \\\tilde{v} \cdot \tilde{s} = 0\\ too ([Theorem 1](#thm-lincom-symmetric)). So \\\tilde{s}\\ is orthogonal to every vector of \\\mathcal{S}^\perp\\, that is, \\\tilde{s} \in (\mathcal{S}^\perp)^\perp\\.
>
> **Equal dimensions.** \\\mathcal{S}^\perp\\ is a subspace ([Theorem 47](#thm-orthogonal-complement-subspace)), so part 2 of [Theorem 49](#thm-orthogonal-direct-sum) applies to it as well as to \\\mathcal{S}\\:
>
> \\ \begin{aligned} \dim\mathopen{}\left((\mathcal{S}^\perp)^\perp\right)\mathclose{} &= p - \dim(\mathcal{S}^\perp) && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~49}}\text{, applied to } \mathcal{S}^\perp \text{)} \\ &= p - \mathopen{}\left(p - \dim(\mathcal{S})\right)\mathclose{} && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~49}}\text{, applied to } \mathcal{S} \text{)} \\ &= \dim(\mathcal{S}). && \text{(arithmetic)} \end{aligned} \\
>
> \\(\mathcal{S}^\perp)^\perp\\ is a subspace ([Theorem 47](#thm-orthogonal-complement-subspace)) that contains \\\mathcal{S}\\ and has the same dimension, so it equals \\\mathcal{S}\\ ([Theorem 30](#thm-subspace-equal-dim)).

> **NOTE:**
>
> **Example 86 (Back to the line)** In [Example 85](#exm-orthogonal-direct-sum), \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ and \\\mathcal{S}^\perp = \operatorname{span}\mathopen{}\left\\(1, -1, 0), (0, 0, 1)\right\\\mathclose{}\\. Put those two spanning vectors in the columns of the \\3 \times 2\\ matrix \\\mathbf{B} = \begin{bmatrix} 1 & 0 \\ -1 & 0 \\ 0 & 1 \end{bmatrix}\\, so \\\mathcal{S}^\perp = \mathcal{C}(\mathbf{B})\\ ([Theorem 31](#thm-column-space-span)) and \\(\mathcal{S}^\perp)^\perp = \mathcal{N}({\mathbf{B}}^{\top})\\ ([Theorem 48](#thm-complement-null-space)). Since \\{\mathbf{B}}^{\top} \tilde{w} = (w_1 - w_2,\\ w_3)\\ ([Definition 28](#def-matvec-mult)), \\\tilde{w} \in (\mathcal{S}^\perp)^\perp\\ exactly when \\w_1 - w_2 = 0\\ and \\w_3 = 0\\. So \\(\mathcal{S}^\perp)^\perp = \mathopen{}\left\\(a, a, 0) : a \in \mathbb{R}\right\\\mathclose{} = \mathcal{S}\\.

> **NOTE:**
>
> **Example 87 (A set that is not a subspace does not come back)** The one-element set \\\mathcal{X} = \mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ is not a subspace. Its orthogonal complement is the same as that of \\\mathcal{S}\\ in [Example 86](#exm-double-complement), since both are defined by the single condition \\u_1 + u_2 = 0\\, so \\(\mathcal{X}^\perp)^\perp = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\, which contains \\(2, 2, 0) \notin \mathcal{X}\\. [Theorem 50](#thm-double-complement) needs \\\mathcal{S}\\ to be a subspace.

### 2.15 The fundamental theorem of linear algebra

> **NOTE:**
>
> **Theorem 51 (Fundamental theorem of linear algebra)** Let \\\mathbf{A}\\ be an \\m \times n\\ matrix with \\\operatorname{rank}(\mathbf{A}) = r\\. Then
>
> 1.  \\\mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top})\\, and \\\mathbb{R}^m = \mathcal{C}(\mathbf{A}) \oplus \mathcal{N}({\mathbf{A}}^{\top})\\;
> 2.  \\\mathcal{C}(\mathbf{A}) = \mathcal{N}({\mathbf{A}}^{\top})^\perp\\;
> 3.  \\\mathcal{N}(\mathbf{A})^\perp = \mathcal{C}({\mathbf{A}}^{\top})\\, and \\\mathbb{R}^n = \mathcal{C}({\mathbf{A}}^{\top}) \oplus \mathcal{N}(\mathbf{A})\\;
> 4.  \\\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = \dim\mathopen{}\left(\mathcal{C}({\mathbf{A}}^{\top})\right)\mathclose{} = r\\, \\\dim\mathopen{}\left(\mathcal{N}(\mathbf{A})\right)\mathclose{} = n - r\\, and \\\dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{} = m - r\\.

> **NOTE:**
>
> *Proof*. **Part 1.** The first equation is [Theorem 48](#thm-complement-null-space). \\\mathcal{C}(\mathbf{A})\\ is a subspace of \\\mathbb{R}^m\\ ([Theorem 31](#thm-column-space-span)), so
>
> \\ \begin{aligned} \mathbb{R}^m &= \mathcal{C}(\mathbf{A}) \oplus \mathcal{C}(\mathbf{A})^\perp && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~49}}\text{)} \\ &= \mathcal{C}(\mathbf{A}) \oplus \mathcal{N}({\mathbf{A}}^{\top}). && \text{(first equation)} \end{aligned} \\
>
> **Part 2.**
>
> \\ \begin{aligned} \mathcal{C}(\mathbf{A}) &= \mathopen{}\left(\mathcal{C}(\mathbf{A})^\perp\right)\mathclose{}^\perp && \text{(}\href{#thm-double-complement}{\text{Theorem~50}}\text{)} \\ &= \mathcal{N}({\mathbf{A}}^{\top})^\perp. && \text{(part 1)} \end{aligned} \\
>
> **Part 3.** Apply parts 2 and 1 to the \\n \times m\\ matrix \\{\mathbf{A}}^{\top}\\, using \\{({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}\\: part 2 gives \\\mathcal{C}({\mathbf{A}}^{\top}) = \mathcal{N}(\mathbf{A})^\perp\\, and part 1 gives \\\mathbb{R}^n = \mathcal{C}({\mathbf{A}}^{\top}) \oplus \mathcal{N}(\mathbf{A})\\.
>
> **Part 4.** \\\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = r\\ by [Theorem 35](#thm-rank-dim). \\\dim\mathopen{}\left(\mathcal{C}({\mathbf{A}}^{\top})\right)\mathclose{} = \operatorname{rank}({\mathbf{A}}^{\top})\\ by [Theorem 35](#thm-rank-dim), and that is \\r\\ by [Theorem 38](#thm-rank-transpose). \\\mathbf{A}\\ has \\n\\ columns, so \\\dim\mathopen{}\left(\mathcal{N}(\mathbf{A})\right)\mathclose{} = n - r\\ ([Definition 48](#def-nullity), [Theorem 36](#thm-rank-nullity)). \\{\mathbf{A}}^{\top}\\ has \\m\\ columns and rank \\r\\, so \\\dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{} = m - r\\ in the same way.

> **NOTE:**
>
> **Example 88 (The four subspaces of the matrix in [Example 53](#exm-column-space))** For \\\mathbf{A}\\ in [Example 53](#exm-column-space), \\m = 2\\, \\n = 3\\ and \\r = 1\\ ([Example 60](#exm-rank-dim)).
>
> - **In \\\mathbb{R}^3\\:** the row space \\\mathcal{C}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(1, -2, -2)\right\\\mathclose{}\\
>   1.  has dimension \\1 = r\\, and \\\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\ has dimension \\2 = n - r\\ ([Example 61](#exm-nullity)). The spanning vectors are orthogonal: \\(1, -2, -2) \cdot (2, 1, 0) = 2 - 2 + 0 = 0\\ and \\(1, -2, -2) \cdot (2, 0, 1) = 2 + 0 - 2 = 0\\.
> - **In \\\mathbb{R}^2\\:** \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\ has dimension \\1 = r\\, and \\\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(-3, 1)\right\\\mathclose{}\\ has dimension \\1 = m - r\\ ([Example 84](#exm-complement-null-space)).
>
> By part 3, \\\tilde{y} = (1, 0, 0)\\ splits uniquely into a row-space part \\t\\(1, -2, -2)\\ and a null-space part. The null-space part \\\tilde{y} - t\\(1, -2, -2)\\ lies in \\\mathcal{N}(\mathbf{A})\\ (part 3), and \\\mathcal{N}(\mathbf{A}) = \mathcal{C}({\mathbf{A}}^{\top})^\perp\\ ([Theorem 48](#thm-complement-null-space) applied to \\{\mathbf{A}}^{\top}\\, with \\{({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}\\), so it must be orthogonal to \\(1, -2, -2)\\:
>
> \\ \begin{aligned} 0 &= (1, -2, -2) \cdot \mathopen{}\left((1, 0, 0) - t\\(1, -2, -2)\right)\mathclose{} && \text{(orthogonality)} \\ &= (1, -2, -2) \cdot \mathopen{}\left(1 \cdot(1, 0, 0) + (-t)\\(1, -2, -2)\right)\mathclose{} && \text{(write the difference as a linear combination)} \\ &= 1 \cdot\mathopen{}\left((1, -2, -2) \cdot (1, 0, 0)\right)\mathclose{} + (-t)\\\mathopen{}\left((1, -2, -2) \cdot (1, -2, -2)\right)\mathclose{} && \text{(}\href{#thm-dot-linear}{\text{Theorem~46}}\text{)} \\ &= 1 \cdot 1 + (-t) \cdot 9 && \text{(}\href{#def-dot-product}{\text{Definition~7}}\text{)} \\ &= 1 - 9t, && \text{(arithmetic)} \end{aligned} \\
>
> so \\t = \frac{1}{9}\\. The row-space part is \\\mathopen{}\left(\frac{1}{9}, -\frac{2}{9}, -\frac{2}{9}\right)\mathclose{}\\ and the null-space part is \\\mathopen{}\left(\frac{8}{9}, \frac{2}{9}, \frac{2}{9}\right)\mathclose{}\\; as a check, row 1 of \\\mathbf{A}\\ gives \\\frac{8}{9} - 2 \cdot\frac{2}{9} - 2 \cdot\frac{2}{9} = 0\\, and row 2 is \\3\\ times row 1, so \\\mathbf{A}\\ sends the null-space part to \\\tilde{0}\_2\\.

### 2.16 Inner products

> **NOTE:**
>
> **Definition 55 (Inner product)** An **inner product** on \\\mathbb{R}^p\\ is a function that assigns to each ordered pair of vectors \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\ a real number \\\left\langle \tilde{x}, \tilde{y} \right\rangle\\, and that has the following four properties for all \\\tilde{x}, \tilde{y}, \tilde{z} \in \mathbb{R}^p\\ and all real numbers \\a, b\\:
>
> - **positivity**: \\\left\langle \tilde{x}, \tilde{x} \right\rangle \ge 0\\;
> - **definiteness**: \\\left\langle \tilde{x}, \tilde{x} \right\rangle = 0\\ if and only if \\\tilde{x}= \tilde{0}\_{p \times 1}\\;
> - **linearity in the first slot**: \\\left\langle a\\\tilde{x}+ b\\\tilde{y}, \tilde{z} \right\rangle = a\\\left\langle \tilde{x}, \tilde{z} \right\rangle + b\\\left\langle \tilde{y}, \tilde{z} \right\rangle\\;
> - **symmetry**: \\\left\langle \tilde{x}, \tilde{y} \right\rangle = \left\langle \tilde{y}, \tilde{x} \right\rangle\\.

> **NOTE:**
>
> *Remark 15* (The definition in other sources). Axler ([2024](#ref-axler2024linear), Definition 6.2, p. 183) states the same definition for any vector space over the real or complex numbers. Axler splits linearity in the first slot into additivity and homogeneity, and his last property is *conjugate* symmetry, \\\left\langle \tilde{u}, \tilde{v} \right\rangle = \overline{\left\langle \tilde{v}, \tilde{u} \right\rangle}\\, which for real numbers is the same as symmetry. Symmetry and linearity in the first slot together give linearity in the second slot.

> **NOTE:**
>
> **Example 89 (The dot product is an inner product)** The dot product ([Definition 7](#def-dot-product)) is an inner product on \\\mathbb{R}^p\\, called the **Euclidean** or **standard** inner product. Each of the four properties in [Definition 55](#def-inner-product) holds:
>
> - **positivity**: \\\tilde{x}\cdot \tilde{x}= \sum\_{i=1}^px_i^2\\ is a sum of squares, so it is at least \\0\\;
> - **definiteness**: a sum of squares is \\0\\ exactly when every term is \\0\\, so \\\tilde{x}\cdot \tilde{x}= 0\\ exactly when every \\x_i = 0\\, that is, when \\\tilde{x}= \tilde{0}\_{p \times 1}\\;
> - **linearity in the first slot**: this property is the first-slot half of [Theorem 46](#thm-dot-linear);
> - **symmetry**: this property is [Theorem 1](#thm-lincom-symmetric).
>
> For instance, with \\\tilde{x}= (1, -2, 2)\\,
>
> \\ \begin{aligned} \tilde{x}\cdot \tilde{x} &= 1 \cdot 1 + (-2) \cdot(-2) + 2 \cdot 2 && \text{(definition of the dot product)} \\ &= 1 + 4 + 4 && \text{(multiply)} \\ &= 9 && \text{(add)} \end{aligned} \\
>
> which is positive, as positivity and definiteness require of a nonzero vector.

> **NOTE:**
>
> **Definition 56 (Inner product space)** An **inner product space** is a vector space equipped with an inner product ([Definition 55](#def-inner-product)). For vectors in \\\mathbb{R}^p\\ ([Definition 2](#def-real-coordinate-space)), the pair \\(\mathbb{R}^p, \left\langle \cdot, \cdot \right\rangle)\\ is a real inner product space.

> **NOTE:**
>
> **Example 90 (Real coordinate space as an inner product space)** The Euclidean space \\\mathbb{R}^p\\ equipped with the standard dot product ([Definition 7](#def-dot-product)) is an inner product space, because the dot product satisfies the four inner product axioms ([Example 89](#exm-dot-product-inner-product)). For \\p = 2\\, any vector \\\tilde{x}= (x_1, x_2) \in \mathbb{R}^2\\ has squared norm \\\left\langle \tilde{x}, \tilde{x} \right\rangle = x_1^2 + x_2^2 \ge 0\\, which is zero if and only if \\x_1 = x_2 = 0\\.
>
> Equipping the same vector space \\\mathbb{R}^p\\ with different inner products yields different inner product spaces with different geometric notions of angle and distance on the same set of vectors.

> **NOTE:**
>
> **Example 91 (A weighted inner product)** Let \\\tilde{c} = (c_1, \ldots, c_p)\\ be a vector of positive numbers, and define
>
> \\\left\langle \tilde{x}, \tilde{y} \right\rangle\_{\tilde{c}} \stackrel{\text{def}}{=}\sum\_{i=1}^pc_i\\x_i y_i.\\
>
> This function is also an inner product on \\\mathbb{R}^p\\ ([Axler 2024](#ref-axler2024linear), Example 6.3(b), p. 184):
>
> - **positivity**: \\\left\langle \tilde{x}, \tilde{x} \right\rangle\_{\tilde{c}} = \sum\_{i=1}^pc_i\\x_i^2\\, and each term \\c_i\\x_i^2\\ is a positive number times a square, so the sum is at least \\0\\;
> - **definiteness**: a sum of nonnegative terms is \\0\\ exactly when every term is \\0\\, and \\c_i\\x_i^2 = 0\\ exactly when \\x_i = 0\\, because \\c_i \> 0\\; so \\\left\langle \tilde{x}, \tilde{x} \right\rangle\_{\tilde{c}} = 0\\ exactly when \\\tilde{x}= \tilde{0}\_{p \times 1}\\;
> - **linearity in the first slot**: see the derivation after this list;
> - **symmetry**: \\c_i\\x_i y_i = c_i\\y_i x_i\\ for each \\i\\, so \\\left\langle \tilde{x}, \tilde{y} \right\rangle\_{\tilde{c}} = \left\langle \tilde{y}, \tilde{x} \right\rangle\_{\tilde{c}}\\.
>
> For linearity in the first slot, take \\\tilde{x}, \tilde{y}, \tilde{z} \in \mathbb{R}^p\\ and real numbers \\a, b\\:
>
> \\ \begin{aligned} \left\langle a\\\tilde{x}+ b\\\tilde{y}, \tilde{z} \right\rangle\_{\tilde{c}} &= \sum\_{i=1}^pc_i\\(a\\\tilde{x}+ b\\\tilde{y})\_i\\z_i && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\tilde{c}} \text{)} \\ &= \sum\_{i=1}^pc_i\\(a x_i + b y_i)\\z_i && \text{(}\href{#def-scalar-mult}{\text{Definition~23}}\text{, }\href{#def-vector-addition}{\text{Definition~6}}\text{)} \\ &= \sum\_{i=1}^p\mathopen{}\left(a\\c_i x_i z_i + b\\c_i y_i z_i\right)\mathclose{} && \text{(distribute, and commute the factors in each product)} \\ &= \sum\_{i=1}^pa\\c_i x_i z_i + \sum\_{i=1}^pb\\c_i y_i z_i && \text{(split the finite sum)} \\ &= a \sum\_{i=1}^pc_i x_i z_i + b \sum\_{i=1}^pc_i y_i z_i && \text{(factor } a \text{ and } b \text{ out of the sums)} \\ &= a\\\left\langle \tilde{x}, \tilde{z} \right\rangle\_{\tilde{c}} + b\\\left\langle \tilde{y}, \tilde{z} \right\rangle\_{\tilde{c}} && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\tilde{c}} \text{)} \end{aligned} \\
>
> Different inner products can give different numbers for the same pair of vectors. With \\p = 2\\, \\\tilde{c} = (2, 1)\\, \\\tilde{x}= (1, 3)\\ and \\\tilde{y}= (4, -1)\\:
>
> \\ \begin{aligned} \left\langle \tilde{x}, \tilde{y} \right\rangle\_{\tilde{c}} &= 2 \cdot 1 \cdot 4 + 1 \cdot 3 \cdot(-1) && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\tilde{c}} \text{)} \\ &= 8 - 3 && \text{(multiply)} \\ &= 5 && \text{(subtract)} \end{aligned} \\
>
> while the dot product of the same vectors is
>
> \\ \begin{aligned} \tilde{x}\cdot \tilde{y} &= 1 \cdot 4 + 3 \cdot(-1) && \text{(definition of the dot product)} \\ &= 4 - 3 && \text{(multiply)} \\ &= 1 && \text{(subtract)} \end{aligned} \\

> **NOTE:**
>
> **Example 92 (Functions that are not inner products)** Each of these functions on \\\mathbb{R}^2\\ has some of the properties in [Definition 55](#def-inner-product), but not all four:
>
> - \\f(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}x_1 y_1 - x_2 y_2\\ is symmetric, because \\x_i y_i = y_i x_i\\, and linear in the first slot, because it is a linear combination of \\x_1\\ and \\x_2\\ with coefficients \\y_1\\ and \\-y_2\\. It fails positivity: for \\\tilde{x}= (0, 1)\\, \\f(\tilde{x}, \tilde{x}) = 0 \cdot 0 - 1 \cdot 1 = -1 \< 0\\. It also fails definiteness: for \\\tilde{x}= (1, 1)\\, \\f(\tilde{x}, \tilde{x}) = 1 \cdot 1 - 1 \cdot 1 = 0\\ although \\\tilde{x}\neq \tilde{0}\_{2 \times 1}\\.
> - \\g(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}x_1 y_1\\ is symmetric and linear in the first slot, for the same reasons as \\f\\, and has positivity, because \\g(\tilde{x}, \tilde{x}) = x_1^2 \ge 0\\. It fails definiteness: for \\\tilde{x}= (0, 1)\\, \\g(\tilde{x}, \tilde{x}) = 0 \cdot 0 = 0\\ although \\\tilde{x}\neq \tilde{0}\_{2 \times 1}\\.
> - \\h(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}\mathopen{}\left\|x_1 y_1\right\|\mathclose{} + \mathopen{}\left\|x_2 y_2\right\|\mathclose{}\\, where \\\mathopen{}\left\|\cdot\right\|\mathclose{}\\ is the [absolute value](algebra.llms.md#def-absolute-value), is symmetric, because \\\mathopen{}\left\|x_i y_i\right\|\mathclose{} = \mathopen{}\left\|y_i x_i\right\|\mathclose{}\\, and has positivity and definiteness, because \\h(\tilde{x}, \tilde{x}) = x_1^2 + x_2^2\\ is a sum of squares. It is not linear in the first slot: take \\\tilde{x}= \tilde{y}= (1, 0)\\, \\a = -1\\ and \\b = 0\\; then \\h(a\\\tilde{x}, \tilde{y}) = \mathopen{}\left\|(-1) \cdot 1\right\|\mathclose{} + \mathopen{}\left\|0 \cdot 0\right\|\mathclose{} = 1\\, while \\a\\h(\tilde{x}, \tilde{y}) = (-1) \cdot(\mathopen{}\left\|1 \cdot 1\right\|\mathclose{} + \mathopen{}\left\|0 \cdot 0\right\|\mathclose{}) = -1\\.

### 2.17 Cauchy-Schwarz and the triangle inequality

> **NOTE:**
>
> This section is adapted from Zhou ([2024i](#ref-zhou2024vector)), used under the MIT License (see the license text in [Section 2.10](#sec-subspaces)). The source leaves the proof of the triangle inequality to class; it is written out here.

> **NOTE:**
>
> **Theorem 52 (Basic properties of the Euclidean norm)** For any \\\tilde{x} \in \mathbb{R}^p\\ and any number \\c\\:
>
> 1.  \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \ge 0\\, and \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = 0\\ if and only if \\\tilde{x} = \tilde{0}\\;
> 2.  \\\mathopen{}\left\lVert c\\\tilde{x}\right\rVert\mathclose{} = \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\.

> **NOTE:**
>
> *Proof*. **Part 1.** \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = \sqrt{x_1^2 + \cdots + x_p^2}\\ ([Equation 2](#eq-l2-norm)) is the square root of a sum of squares, so it is at least \\0\\. It is \\0\\ exactly when \\x_1^2 + \cdots + x_p^2 = 0\\, and a sum of squares is \\0\\ exactly when every term is \\0\\, that is, when every \\x_i = 0\\: if some \\x_i \ne 0\\, its square is positive and the sum is positive, and if every \\x_i = 0\\, the sum is \\0\\.
>
> **Part 2.**
>
> \\ \begin{aligned} \mathopen{}\left\lVert c\\\tilde{x}\right\rVert\mathclose{} &= \sqrt{\sum\_{i=1}^{p} (c\\x_i)^2} && \text{(}\href{#eq-l2-norm}{\text{Equation~2}}\text{, and }\href{#def-scalar-mult}{\text{Definition~23}}\text{)} \\ &= \sqrt{\sum\_{i=1}^{p} c^2 x_i^2} && \text{(} (c\\x_i)^2 = c^2 x_i^2 \text{)} \\ &= \sqrt{c^2 \sum\_{i=1}^{p} x_i^2} && \text{(factor } c^2 \text{ out of the sum)} \\ &= \sqrt{c^2}\\\sqrt{\sum\_{i=1}^{p} x_i^2} && \text{(the square root of a product of nonnegative numbers)} \\ &= \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}. && \text{(} \sqrt{c^2} = \mathopen{}\left\|c\right\|\mathclose{} \text{, and }\href{#eq-l2-norm}{\text{Equation~2}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 93 (Scaling a vector scales its length)** For \\\tilde{x} = (3, 4)\\, \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = 5\\ ([Example 9](#exm-euclidean-norm)). Then \\-2\\\tilde{x} = (-6, -8)\\ has norm \\\sqrt{36 + 64} = 10 = \mathopen{}\left\|-2\right\|\mathclose{} \cdot 5\\, as part 2 says. Dividing by the norm gives a vector of length \\1\\: \\\mathopen{}\left\lVert\tfrac{1}{5}\\\tilde{x}\right\rVert\mathclose{} = \tfrac{1}{5} \cdot 5 = 1\\, and \\\tfrac{1}{5}\\\tilde{x} = (0.6, 0.8)\\ is the unit vector in [Example 9](#exm-euclidean-norm).

> **NOTE:**
>
> **Theorem 53 (The squared norm of a sum)** For any \\\tilde{x}, \tilde{y} \in \mathbb{R}^p\\,
>
> \\ \mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{}^2 = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2. \\
>
> In particular, if \\\tilde{x} \perp \tilde{y}\\ ([Definition 13](#def-orthogonal-vectors)), then \\\mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{}^2 = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2\\ (the **Pythagorean theorem**).

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{}^2 &= (\tilde{x} + \tilde{y}) \cdot (\tilde{x} + \tilde{y}) && \text{(square both sides of }\href{#eq-l2-norm}{\text{Equation~2}}\text{)} \\ &= \tilde{x} \cdot (\tilde{x} + \tilde{y}) + \tilde{y} \cdot (\tilde{x} + \tilde{y}) && \text{(}\href{#thm-dot-linear}{\text{Theorem~46}}\text{, first slot, } a = b = 1 \text{)} \\ &= \tilde{x} \cdot \tilde{x} + \tilde{x} \cdot \tilde{y} + \tilde{y} \cdot \tilde{x} + \tilde{y} \cdot \tilde{y} && \text{(}\href{#thm-dot-linear}{\text{Theorem~46}}\text{, second slot, } a = b = 1 \text{, twice)} \\ &= \tilde{x} \cdot \tilde{x} + \tilde{x} \cdot \tilde{y} + \tilde{x} \cdot \tilde{y} + \tilde{y} \cdot \tilde{y} && \text{(}\href{#thm-lincom-symmetric}{\text{Theorem~1}}\text{)} \\ &= \tilde{x} \cdot \tilde{x} + 2\\(\tilde{x} \cdot \tilde{y}) + \tilde{y} \cdot \tilde{y} && \text{(combine like terms)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2. && \text{(}\href{#eq-l2-norm}{\text{Equation~2}}\text{, squared)} \end{aligned} \\
>
> If \\\tilde{x} \perp \tilde{y}\\, then \\\tilde{x} \cdot \tilde{y} = 0\\, and the middle term drops out.

> **NOTE:**
>
> **Example 94 (Checking the expansion)** For \\\tilde{x} = (3, 0)\\ and \\\tilde{y} = (1, 4)\\: \\\tilde{x} + \tilde{y} = (4, 4)\\, so \\\mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{}^2 = 16 + 16 = 32\\, and \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 = 9 + 2 \cdot 3 + 17 = 32\\. For the orthogonal vectors \\(3, 0)\\ and \\(0, 4)\\, \\\mathopen{}\left\lVert(3, 4)\right\rVert\mathclose{}^2 = 25 = 9 + 16\\, the \\3\\-\\4\\-\\5\\ right triangle.

> **NOTE:**
>
> **Theorem 54 (Cauchy-Schwarz inequality)** For any \\\tilde{x}, \tilde{y} \in \mathbb{R}^p\\,
>
> \\ \mathopen{}\left\|\tilde{x} \cdot \tilde{y}\right\|\mathclose{} \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}, \\
>
> with equality exactly when \\\tilde{x}\\ and \\\tilde{y}\\ are linearly dependent ([Definition 37](#def-linearly-independent)).

> **NOTE:**
>
> *Proof*. **If \\\tilde{y} = \tilde{0}\\.** Then \\\tilde{x} \cdot \tilde{0}= \sum_i x_i \cdot 0 = 0\\ ([Definition 7](#def-dot-product)) and \\\mathopen{}\left\lVert\tilde{0}\right\rVert\mathclose{} = 0\\ ([Theorem 52](#thm-norm-properties), part 1), so both sides are \\0\\ and equality holds; and \\\tilde{x}, \tilde{y}\\ are linearly dependent, because \\0\\\tilde{x} + 1\\\tilde{y} = \tilde{0}\\.
>
> **If \\\tilde{y} \ne \tilde{0}\\.** Then \\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} \> 0\\ ([Theorem 52](#thm-norm-properties), part 1). Let \\t \stackrel{\text{def}}{=}(\tilde{x} \cdot \tilde{y}) / \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2\\. Then
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x} - t\\\tilde{y}\right\rVert\mathclose{}^2 &= \mathopen{}\left\lVert\tilde{x} + (-1)\\(t\\\tilde{y})\right\rVert\mathclose{}^2 && \text{(} \tilde{x} - \tilde{v} = \tilde{x} + (-1)\\\tilde{v} \text{)} \\ &= \mathopen{}\left\lVert\tilde{x} + (-t)\\\tilde{y}\right\rVert\mathclose{}^2 && \text{(} (-1)\\(t\\\tilde{y}) = (-t)\\\tilde{y} \text{, entrywise)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\\mathopen{}\left(\tilde{x} \cdot ((-t)\\\tilde{y})\right)\mathclose{} + \mathopen{}\left\lVert(-t)\\\tilde{y}\right\rVert\mathclose{}^2 && \text{(}\href{#thm-norm-sum-square}{\text{Theorem~53}}\text{)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(-t)\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left\lVert(-t)\\\tilde{y}\right\rVert\mathclose{}^2 && \text{(}\href{#thm-dot-linear}{\text{Theorem~46}}\text{, special case } b = 0 \text{)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(-t)\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left(\mathopen{}\left\|-t\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\right)\mathclose{}^2 && \text{(}\href{#thm-norm-properties}{\text{Theorem~52}}\text{, part 2)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(-t)\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left\|-t\right\|\mathclose{}^2\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(} (ab)^2 = a^2 b^2 \text{)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 - 2t\\(\tilde{x} \cdot \tilde{y}) + t^2\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(} 2\\(-t) = -2t \text{ and } \mathopen{}\left\|-t\right\|\mathclose{}^2 = t^2 \text{)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 - 2\\\frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2} + \frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^4}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(substitute } t \text{)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 - 2\\\frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2} + \frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2} && \text{(cancel one factor } \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 \text{)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 - \frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2}. && \text{(combine the last two terms)} \end{aligned} \tag{6}\\
>
> The left side is at least \\0\\ ([Theorem 52](#thm-norm-properties), part 1), so
>
> \\ \begin{aligned} 0 &\le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 - \frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2} && \text{(}\href{#eq-cauchy-schwarz-chain}{\text{Equation~6}}\text{)} \\ \frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2} &\le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 && \text{(add } (\tilde{x} \cdot \tilde{y})^2 / \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 \text{ to both sides)} \\ (\tilde{x} \cdot \tilde{y})^2 &\le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2, && \text{(multiply both sides by } \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 \> 0 \text{)} \end{aligned} \\
>
> and taking nonnegative square roots of both sides, which preserves the inequality, gives \\\mathopen{}\left\|\tilde{x} \cdot \tilde{y}\right\|\mathclose{} \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\\.
>
> **When equality holds (\\\tilde{y} \ne \tilde{0}\\).** Both sides of the inequality are nonnegative, so equality holds exactly when \\(\tilde{x} \cdot \tilde{y})^2 = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2\\, that is (dividing by \\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 \> 0\\ and rearranging), when \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 - (\tilde{x} \cdot \tilde{y})^2 / \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 = 0\\. By [Equation 6](#eq-cauchy-schwarz-chain), that quantity is \\\mathopen{}\left\lVert\tilde{x} - t\\\tilde{y}\right\rVert\mathclose{}^2\\, so equality holds exactly when \\\tilde{x} - t\\\tilde{y} = \tilde{0}\\ ([Theorem 52](#thm-norm-properties), part 1), that is, when \\\tilde{x} = t\\\tilde{y}\\.
>
> - If \\\tilde{x} = t\\\tilde{y}\\, then \\1\\\tilde{x} + (-t)\\\tilde{y} = \tilde{0}\\, so the two vectors are linearly dependent.
>
> - Conversely, suppose \\a\\\tilde{x} + b\\\tilde{y} = \tilde{0}\\ with \\a, b\\ not both \\0\\. Then \\a \ne 0\\: otherwise \\b \ne 0\\ and \\b\\\tilde{y} = \tilde{0}\\, so \\\tilde{y} = \tfrac{1}{b}\\(b\\\tilde{y}) = \tilde{0}\\, contrary to assumption. Subtracting \\b\\\tilde{y}\\ from both sides gives \\a\\\tilde{x} = -b\\\tilde{y}\\, and multiplying by \\\tfrac{1}{a}\\ gives \\\tilde{x} = s\\\tilde{y}\\ with \\s = -b/a\\. Then
>
>   \\ \begin{aligned} \mathopen{}\left\|\tilde{x} \cdot \tilde{y}\right\|\mathclose{} &= \mathopen{}\left\|(s\\\tilde{y}) \cdot \tilde{y}\right\|\mathclose{} && \text{(substitute } \tilde{x} = s\\\tilde{y} \text{)} \\ &= \mathopen{}\left\|s\\(\tilde{y} \cdot \tilde{y})\right\|\mathclose{} && \text{(}\href{#thm-dot-linear}{\text{Theorem~46}}\text{, special case } b = 0 \text{, first slot)} \\ &= \mathopen{}\left\|s\right\|\mathclose{}\\\mathopen{}\left\|\tilde{y} \cdot \tilde{y}\right\|\mathclose{} && \text{(} \mathopen{}\left\|ab\right\|\mathclose{} = \mathopen{}\left\|a\right\|\mathclose{}\\\mathopen{}\left\|b\right\|\mathclose{} \text{)} \\ &= \mathopen{}\left\|s\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(} \tilde{y} \cdot \tilde{y} = \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 \ge 0 \text{, }\href{#eq-l2-norm}{\text{Equation~2}}\text{)} \\ &= \mathopen{}\left(\mathopen{}\left\|s\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\right)\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} && \text{(regroup)} \\ &= \mathopen{}\left\lVert s\\\tilde{y}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} && \text{(}\href{#thm-norm-properties}{\text{Theorem~52}}\text{, part 2)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}, && \text{(} s\\\tilde{y} = \tilde{x} \text{)} \end{aligned} \\
>
>   so equality holds.

> **NOTE:**
>
> **Example 95 (A strict case and an equality case)**  
>
> - For \\\tilde{x} = (1, 2)\\ and \\\tilde{y} = (3, 4)\\: \\\tilde{x} \cdot \tilde{y} = 3 + 8 = 11\\, while \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} = \sqrt{5} \cdot 5 \approx 11.18\\. The inequality is strict, and the vectors are linearly independent: \\(3, 4)\\ is not a multiple of \\(1, 2)\\, since \\3 \cdot 2 \ne 4\\.
> - For \\\tilde{x} = (1, 2)\\ and \\\tilde{y} = (2, 4) = 2\\\tilde{x}\\: \\\tilde{x} \cdot \tilde{y} = 2 + 8 = 10\\ and \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} = \sqrt{5}\\\sqrt{20} = \sqrt{100} = 10\\, so equality holds.

> **NOTE:**
>
> **Theorem 55 (Triangle inequality)** For any \\\tilde{x}, \tilde{y} \in \mathbb{R}^p\\,
>
> \\ \mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}. \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{}^2 &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(}\href{#thm-norm-sum-square}{\text{Theorem~53}}\text{)} \\ &\le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\\mathopen{}\left\|\tilde{x} \cdot \tilde{y}\right\|\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(a number is at most its absolute value)} \\ &\le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(}\href{#thm-cauchy-schwarz}{\text{Theorem~54}}\text{)} \\ &= \mathopen{}\left(\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\right)\mathclose{}^2. && \text{(expand the square)} \end{aligned} \\
>
> Both \\\mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{}\\ and \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\\ are nonnegative ([Theorem 52](#thm-norm-properties)), and for nonnegative numbers \\a^2 \le b^2\\ implies \\a \le b\\.

> **NOTE:**
>
> **Example 96 (A strict case and an equality case)**  
>
> - For \\\tilde{x} = (3, 0)\\ and \\\tilde{y} = (0, 4)\\: \\\mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{} = \mathopen{}\left\lVert(3, 4)\right\rVert\mathclose{} = 5\\, while \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} = 3 + 4 = 7\\.
> - For \\\tilde{x} = (1, 0)\\ and \\\tilde{y} = (2, 0)\\, which point the same way: \\\mathopen{}\left\lVert(3, 0)\right\rVert\mathclose{} = 3 = 1 + 2\\, so equality holds.

> **NOTE:**
>
> **Definition 57 (Norm (normed vector space))** A **norm** on a real vector space \\V\\ is a function \\\mathopen{}\left\lVert\cdot\right\rVert\mathclose{} : V \to \[0, \infty)\\ that assigns to each vector \\\tilde{x}\in V\\ a nonnegative real number \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\, and satisfies the following three axioms for all \\\tilde{x}, \tilde{y}\in V\\ and all scalars \\c \in \mathbb{R}\\:
>
> 1.  **Positivity and definiteness**: \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \ge 0\\, and \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = 0\\ if and only if \\\tilde{x}= \tilde{0}\\;
> 2.  **Absolute homogeneity**: \\\mathopen{}\left\lVert c\\\tilde{x}\right\rVert\mathclose{} = \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\;
> 3.  **Subadditivity (triangle inequality)**: \\\mathopen{}\left\lVert\tilde{x}+ \tilde{y}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\\.
>
> A vector space equipped with a norm is called a **normed vector space** (or **normed space**).

> **NOTE:**
>
> **Example 97 (Euclidean space as a normed vector space)** The Euclidean space \\\mathbb{R}^p\\ equipped with the Euclidean norm ([Definition 14](#def-euclidean-norm)) is a normed vector space:
>
> - Positivity and absolute homogeneity hold by [Theorem 52](#thm-norm-properties).
> - The triangle inequality holds by [Theorem 55](#thm-triangle-inequality).
>
> Every inner product space \\(\mathbb{R}^p, \left\langle \cdot, \cdot \right\rangle)\\ ([Definition 56](#def-inner-product-space)) naturally defines an induced norm \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \stackrel{\text{def}}{=}\sqrt{\left\langle \tilde{x}, \tilde{x} \right\rangle}\\, which satisfies all three norm axioms.

> **NOTE:**
>
> **Definition 58 (Vector \\p\\-norm (\\\ell_p\\ norm, \\\ell_1\\ norm, \\\ell_2\\ norm, infinity norm))** For a vector \\\tilde{x}= (x_1, \ldots, x_p) \in \mathbb{R}^p\\ and any real number \\k \ge 1\\, the **vector \\p\\-norm** (or **\\\ell_p\\ norm**, traditionally named with parameter \\p\\ but denoted here with exponent \\k\\ to avoid clashing with the ambient vector dimension \\p\\) is:
>
> \\ \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k \stackrel{\text{def}}{=}\mathopen{}\left(\sum\_{i=1}^p \mathopen{}\left\|x_i\right\|\mathclose{}^k\right)\mathclose{}^{1/k}. \\
>
> Three special cases are widely used:
>
> 1.  **\\\ell_1\\ norm** (\\k = 1\\, also called the **taxicab norm** or **Manhattan norm**): \\ \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_1 \stackrel{\text{def}}{=}\sum\_{i=1}^p \mathopen{}\left\|x_i\right\|\mathclose{}. \\
> 2.  **\\\ell_2\\ norm** (\\k = 2\\): the standard Euclidean norm ([Definition 14](#def-euclidean-norm)), \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_2 = \sqrt{\sum\_{i=1}^p x_i^2}\\.
> 3.  **infinity norm** (\\k = \infty\\, also called the **\\\ell\_\infty\\ norm**, **maximum norm**, or **Chebyshev norm**): \\ \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty \stackrel{\text{def}}{=}\max\_{1 \le i \le p} \mathopen{}\left\|x_i\right\|\mathclose{} = \lim\_{k \to \infty} \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k. \\
>
> Each vector \\p\\-norm satisfies the norm axioms ([Definition 57](#def-norm)) on \\\mathbb{R}^p\\.

> **NOTE:**
>
> **Example 98 (Calculating \\\ell_1\\, \\\ell_2\\, and \\\ell\_\infty\\ norms)** For \\\tilde{x}= (3, -4) \in \mathbb{R}^2\\:
>
> - \\\ell_1\\ norm: \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_1 = \mathopen{}\left\|3\right\|\mathclose{} + \mathopen{}\left\|-4\right\|\mathclose{} = 3 + 4 = 7\\.
> - \\\ell_2\\ norm: \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_2 = \sqrt{3^2 + (-4)^2} = \sqrt{9 + 16} = \sqrt{25} = 5\\.
> - \\\ell\_\infty\\ norm: \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty = \max(\mathopen{}\left\|3\right\|\mathclose{}, \mathopen{}\left\|-4\right\|\mathclose{}) = 4\\.
>
> Notice that \\4 \le 5 \le 7\\. For any vector \\\tilde{x}\in \mathbb{R}^p\\, the norms satisfy the chain of inequalities:
>
> \\ \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_2 \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_1 \le \sqrt{p}\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_2 \le p\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty. \\

> **NOTE:**
>
> *Remark 16* (Unit balls and regularization in machine learning). The unit ball in \\\mathbb{R}^2\\ under the \\\ell_p\\ norm is the set \\\mathopen{}\left\\\tilde{x}\in \mathbb{R}^2 : \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k \le 1\right\\\mathclose{}\\:
>
> - For \\k = 1\\, the unit ball is a diamond (cross-polytope) with sharp vertices along the coordinate axes \\(\pm 1, 0)\\ and \\(0, \pm 1)\\.
> - For \\k = 2\\, the unit ball is the smooth round Euclidean unit disk.
> - For \\k = \infty\\, the unit ball is an axis-aligned square with vertices \\(\pm 1, \pm 1)\\.
>
> In regression and machine learning, adding an \\\ell_1\\ penalty (Lasso regularization) to an objective function encourages sparse solutions: the level curves of the loss function tend to make contact with the sharp corners of the \\\ell_1\\ unit ball on the coordinate axes, setting irrelevant feature weights exactly to zero. In contrast, the smooth spherical \\\ell_2\\ penalty (Ridge regularization) shrinks all weights toward zero without setting them exactly to zero.

> **NOTE:**
>
> **Definition 59 (Cosine and sine)** The *unit circle* is the set of points \\(x_1, x_2)\\ in the plane with \\x_1^2 + x_2^2 = 1\\, and \\\pi \approx 3.14159\\ is half of its circumference. For a real number \\\theta\\, start at the point \\(1, 0)\\ and move a distance \\\mathopen{}\left\|\theta\right\|\mathclose{}\\ along the unit circle, counterclockwise if \\\theta \ge 0\\ and clockwise if \\\theta \< 0\\. The point reached is \\(\cos\theta, \sin\theta)\\: its first coordinate is the **cosine** of \\\theta\\, and its second coordinate is the **sine** of \\\theta\\.

> **NOTE:**
>
> **Example 99 (Cosines and sines of some angles)**  
>
> - \\\theta = 0\\ stays at \\(1, 0)\\, so \\\cos 0 = 1\\ and \\\sin 0 = 0\\.
> - \\\theta = \pi\\ goes half way around the circle, to \\(-1, 0)\\, so \\\cos\pi = -1\\ and \\\sin\pi = 0\\.
> - \\\theta = \pi/2\\ goes a quarter of the way round, to \\(0, 1)\\, so \\\cos(\pi/2) = 0\\ and \\\sin(\pi/2) = 1\\.
> - \\\theta = \pi/4\\ goes an eighth of the way round, to the point of the circle with \\x_1 = x_2 \> 0\\. There \\x_1^2 + x_1^2 = 1\\, so \\x_1^2 = \tfrac{1}{2}\\ and \\x_1 = \tfrac{1}{\sqrt{2}} \approx 0.7071\\: \\\cos(\pi/4) = \sin(\pi/4) = \tfrac{1}{\sqrt{2}}\\.
>
> Angles are also measured in *degrees*, with a full turn of \\2\pi\\ equal to \\360\\ degrees, so \\\pi/2\\ is \\90\\ degrees and \\\pi/4\\ is \\45\\ degrees.

> **NOTE:**
>
> **Definition 60 (Angle between two vectors)** The **angle** between two nonzero vectors \\\tilde{x}, \tilde{y} \in \mathbb{R}^p\\ is the unique number \\\theta \in \[0, \pi\]\\ whose cosine ([Definition 59](#def-cosine-sine)) satisfies
>
> \\ \cos\theta = \frac{\tilde{x} \cdot \tilde{y}}{\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}}. \\

> **NOTE:**
>
> *Remark 17* (Why the angle is well defined). The denominator is positive, because both vectors are nonzero ([Theorem 52](#thm-norm-properties)), and by [Theorem 54](#thm-cauchy-schwarz) the ratio lies between \\-1\\ and \\1\\. On \\\[0, \pi\]\\, \\\cos\\ is decreasing from \\1\\ to \\-1\\ and takes each value in \\\[-1, 1\]\\ exactly once, so there is exactly one such \\\theta\\. The angle is \\\pi/2\\ exactly when \\\tilde{x} \cdot \tilde{y} = 0\\, so for nonzero vectors, orthogonal ([Definition 13](#def-orthogonal-vectors)) means at a right angle.

> **NOTE:**
>
> **Example 100 (Some angles in the plane)**  
>
> - \\(1, 0)\\ and \\(1, 1)\\: \\\cos\theta = \frac{1}{1 \cdot\sqrt{2}}\\, so \\\theta = \pi/4\\.
> - \\(1, 2)\\ and \\(-2, 1)\\: \\\cos\theta = \frac{-2 + 2}{\sqrt{5}\\\sqrt{5}} = 0\\, so \\\theta = \pi/2\\.
> - \\(1, 0)\\ and \\(-3, 0)\\: \\\cos\theta = \frac{-3}{1 \cdot 3} = -1\\, so \\\theta = \pi\\.
> - \\(1, 0)\\ and \\\tilde{0}\\: there is no angle, because the ratio would divide by \\\mathopen{}\left\lVert\tilde{0}\right\rVert\mathclose{} = 0\\.

> **NOTE:**
>
> **Definition 61 (Cosine similarity)** The **cosine similarity** between two nonzero vectors \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\ is the cosine of the angle between them ([Definition 60](#def-angle)):
>
> \\ \operatorname{cossim}(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}\frac{\tilde{x}\cdot \tilde{y}}{\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}}. \\
>
> In a general real inner product space ([Definition 56](#def-inner-product-space)) with inner product \\\left\langle \cdot, \cdot \right\rangle\\ and induced norm \\\mathopen{}\left\lVert\cdot\right\rVert\mathclose{}\\, the cosine similarity is
>
> \\ \operatorname{cossim}(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}\frac{\left\langle \tilde{x}, \tilde{y} \right\rangle}{\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}}. \\

> **NOTE:**
>
> **Example 101 (Cosine similarity of parallel, orthogonal, and arbitrary vectors)** For vectors in \\\mathbb{R}^2\\:
>
> - Parallel vectors \\\tilde{x}= (1, 2)\\ and \\\tilde{y}= (2, 4)\\: \\\operatorname{cossim}(\tilde{x}, \tilde{y}) = \frac{2 + 8}{\sqrt{5}\\\sqrt{20}} = \frac{10}{10} = 1\\.
> - Orthogonal vectors \\\tilde{x}= (1, 2)\\ and \\\tilde{y}= (-2, 1)\\: \\\operatorname{cossim}(\tilde{x}, \tilde{y}) = \frac{-2 + 2}{\sqrt{5}\\\sqrt{5}} = \frac{0}{5} = 0\\.
> - Arbitrary vectors \\\tilde{x}= (1, 0)\\ and \\\tilde{y}= (1, 1)\\: \\\operatorname{cossim}(\tilde{x}, \tilde{y}) = \frac{1 \cdot 1 + 0 \cdot 1}{1 \cdot\sqrt{2}} = \frac{1}{\sqrt{2}}\\.
>
> When both vectors have unit Euclidean norm (\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} = 1\\), cosine similarity equals their inner product: \\\operatorname{cossim}(\tilde{x}, \tilde{y}) = \left\langle \tilde{x}, \tilde{y} \right\rangle\\.

### 2.18 Orthonormal bases and Gram-Schmidt

> **NOTE:**
>
> Like [Section 2.17](#sec-cauchy-schwarz), this section is adapted from Zhou ([2024i](#ref-zhou2024vector)), used under the MIT License (see the license text in [Section 2.10](#sec-subspaces)). The source leaves the proof that orthonormal vectors are linearly independent to class; it is written out here.

> **NOTE:**
>
> **Theorem 56 (The dot product of a vector with a linear combination)** For vectors \\\tilde{x}, \tilde{u}\_1, \ldots, \tilde{u}\_k \in \mathbb{R}^p\\ and numbers \\c_1, \ldots, c_k\\, with \\k \ge 1\\,
>
> \\ \tilde{x} \cdot \mathopen{}\left(\sum\_{j=1}^{k} c_j \tilde{u}\_j\right)\mathclose{} = \sum\_{j=1}^{k} c_j\\(\tilde{x} \cdot \tilde{u}\_j). \\

> **NOTE:**
>
> *Proof*. Write \\u\_{ji}\\ for entry \\i\\ of \\\tilde{u}\_j\\. Then
>
> \\ \begin{aligned} \tilde{x} \cdot \mathopen{}\left(\sum\_{j=1}^{k} c_j \tilde{u}\_j\right)\mathclose{} &= \sum\_{i=1}^{p} x_i \sum\_{j=1}^{k} c_j u\_{ji} && \text{(}\href{#def-dot-product}{\text{Definition~7}}\text{, }\href{#def-linear-combination}{\text{Definition~8}}\text{)} \\ &= \sum\_{i=1}^{p} \sum\_{j=1}^{k} x_i c_j u\_{ji} && \text{(distribute each } x_i \text{ over the inner sum)} \\ &= \sum\_{j=1}^{k} \sum\_{i=1}^{p} x_i c_j u\_{ji} && \text{(swap the order of the finite sums)} \\ &= \sum\_{j=1}^{k} \sum\_{i=1}^{p} c_j x_i u\_{ji} && \text{(commute the factors in each product)} \\ &= \sum\_{j=1}^{k} c_j \sum\_{i=1}^{p} x_i u\_{ji} && \text{(factor } c_j \text{ out of the inner sum)} \\ &= \sum\_{j=1}^{k} c_j\\(\tilde{x} \cdot \tilde{u}\_j). && \text{(}\href{#def-dot-product}{\text{Definition~7}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 102 (Dotting with a combination of three vectors)** Let \\\tilde{x} = (1, 2, 3)\\ and take the combination \\2\\(1, 0, 0) - (0, 1, 0) + 4\\(0, 0, 1) = (2, -1, 4)\\. Directly, \\\tilde{x} \cdot (2, -1, 4) = 2 - 2 + 12 = 12\\. By [Theorem 56](#thm-dot-linear-sum), \\2 \cdot 1 - 1 \cdot 2 + 4 \cdot 3 = 12\\, the same number.

> **NOTE:**
>
> **Theorem 57 (Orthonormal vectors are linearly independent)** If \\\tilde{q}\_1, \ldots, \tilde{q}\_k\\ are orthonormal ([Definition 17](#def-orthonormal-vectors)), then they are linearly independent ([Definition 37](#def-linearly-independent)).

> **NOTE:**
>
> *Proof*. Suppose \\\sum\_{j=1}^{k} c_j \tilde{q}\_j = \tilde{0}\\, and fix any \\i\\ between \\1\\ and \\k\\. Then
>
> \\ \begin{aligned} 0 &= \tilde{q}\_i \cdot \tilde{0} && \text{(every term of the dot product is } 0 \text{)} \\ &= \tilde{q}\_i \cdot \mathopen{}\left(\sum\_{j=1}^{k} c_j \tilde{q}\_j\right)\mathclose{} && \text{(substitute the supposed equation)} \\ &= \sum\_{j=1}^{k} c_j\\(\tilde{q}\_i \cdot \tilde{q}\_j) && \text{(}\href{#thm-dot-linear-sum}{\text{Theorem~56}}\text{)} \\ &= c_i. && \text{(} \tilde{q}\_i \cdot \tilde{q}\_j \text{ is } 1 \text{ if } j = i \text{ and } 0 \text{ otherwise)} \end{aligned} \\
>
> So every \\c_i = 0\\.

> **NOTE:**
>
> **Example 103 (Three orthonormal vectors in \\\mathbb{R}^3\\)** Let
>
> \\ \tilde{q}\_1 = (0, 0, 1), \quad \tilde{q}\_2 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0), \quad \tilde{q}\_3 = \tfrac{1}{\sqrt{2}}\\(1, -1, 0). \\
>
> Each has norm \\1\\: \\\mathopen{}\left\lVert\tilde{q}\_2\right\rVert\mathclose{}^2 = \tfrac{1}{2}\\(1 + 1 + 0) = 1\\, and likewise for the others. They are mutually orthogonal: \\\tilde{q}\_1 \cdot \tilde{q}\_2 = 0\\ and \\\tilde{q}\_1 \cdot \tilde{q}\_3 = 0\\, because \\\tilde{q}\_1\\ has its only nonzero entry where the others have \\0\\, and \\\tilde{q}\_2 \cdot \tilde{q}\_3 = \tfrac{1}{2}\\(1 - 1 + 0) = 0\\. So by [Theorem 57](#thm-orthonormal-independent) they are linearly independent, with no need to solve \\c_1 \tilde{q}\_1 + c_2 \tilde{q}\_2 + c_3 \tilde{q}\_3 = \tilde{0}\\.
>
> The converse fails: \\(1, 0)\\ and \\(1, 1)\\ are linearly independent, since \\c_1 (1, 0) + c_2 (1, 1) = (c_1 + c_2, c_2)\\ is \\\tilde{0}\\ only if \\c_2 = 0\\ and then \\c_1 = 0\\, but they are not orthonormal, since \\(1, 0) \cdot (1, 1) = 1 \ne 0\\.

> **NOTE:**
>
> **Definition 62 (Orthonormal basis)** An **orthonormal basis** of a subspace \\\mathcal{S}\\ of \\\mathbb{R}^p\\ is a basis of \\\mathcal{S}\\ ([Definition 42](#def-basis)) whose vectors are orthonormal ([Definition 17](#def-orthonormal-vectors)).

> **NOTE:**
>
> **Example 104 (Orthonormal bases of \\\mathbb{R}^3\\)**  
>
> - The indicator vectors \\\tilde{e}\_1, \tilde{e}\_2, \tilde{e}\_3\\ are orthonormal
>   2.  and a basis of \\\mathbb{R}^3\\ ([Example 47](#exm-dimension)).
> - The vectors \\\tilde{q}\_1, \tilde{q}\_2, \tilde{q}\_3\\ of [Example 103](#exm-orthonormal-independent) are orthonormal and linearly independent, so they are a basis of their span ([Definition 42](#def-basis)), which therefore has dimension \\3\\ ([Definition 44](#def-dimension)) and is all of \\\mathbb{R}^3\\ ([Theorem 30](#thm-subspace-equal-dim), [Example 47](#exm-dimension)). So they are an orthonormal basis of \\\mathbb{R}^3\\ too.

> **NOTE:**
>
> **Example 105 (Bases that are not orthonormal, and orthonormal lists that are not bases)**  
>
> - \\(1, 0), (1, 1)\\ is a basis of \\\mathbb{R}^2\\ ([Example 42](#exm-basis)). It is not an orthonormal basis, since \\(1, 0) \cdot (1, 1) = 1\\.
> - \\(1, 0, 0), (0, 1, 0)\\ is orthonormal but not a basis of \\\mathbb{R}^3\\: its span is the plane \\z = 0\\ ([Example 37](#exm-span)), which does not contain \\(0, 0, 1)\\.

> **NOTE:**
>
> **Theorem 58 (Coordinates in an orthonormal basis are dot products)** If \\\tilde{q}\_1, \ldots, \tilde{q}\_k\\ is an orthonormal basis of a subspace \\\mathcal{S}\\ ([Definition 62](#def-orthonormal-basis)), then every \\\tilde{x} \in \mathcal{S}\\ satisfies
>
> \\ \tilde{x} = \sum\_{i=1}^{k} (\tilde{q}\_i \cdot \tilde{x})\\\tilde{q}\_i. \\

> **NOTE:**
>
> *Proof*. The basis spans \\\mathcal{S}\\, so \\\tilde{x} = \sum\_{j=1}^{k} c_j \tilde{q}\_j\\ for some numbers \\c_j\\. For each \\i\\,
>
> \\ \begin{aligned} \tilde{q}\_i \cdot \tilde{x} &= \tilde{q}\_i \cdot \mathopen{}\left(\sum\_{j=1}^{k} c_j \tilde{q}\_j\right)\mathclose{} && \text{(substitute)} \\ &= \sum\_{j=1}^{k} c_j\\(\tilde{q}\_i \cdot \tilde{q}\_j) && \text{(}\href{#thm-dot-linear-sum}{\text{Theorem~56}}\text{)} \\ &= c_i, && \text{(}\href{#def-orthonormal-vectors}{\text{Definition~17}}\text{)} \end{aligned} \\
>
> so each coefficient \\c_i\\ is \\\tilde{q}\_i \cdot \tilde{x}\\.

> **NOTE:**
>
> **Example 106 (Expanding a vector in an orthonormal basis)** With the orthonormal basis \\\tilde{q}\_1, \tilde{q}\_2, \tilde{q}\_3\\ of \\\mathbb{R}^3\\ from [Example 104](#exm-orthonormal-basis) and \\\tilde{x} = (1, 2, 3)\\: \\\tilde{q}\_1 \cdot \tilde{x} = 3\\, \\\tilde{q}\_2 \cdot \tilde{x} = \tfrac{1}{\sqrt{2}}\\(1 + 2) = \tfrac{3}{\sqrt{2}}\\ and \\\tilde{q}\_3 \cdot \tilde{x} = \tfrac{1}{\sqrt{2}}\\(1 - 2) = -\tfrac{1}{\sqrt{2}}\\. Then
>
> \\ \begin{aligned} \sum\_{i=1}^{3} (\tilde{q}\_i \cdot \tilde{x})\\\tilde{q}\_i &= 3\\(0, 0, 1) + \tfrac{3}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\\(1, 1, 0) - \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\\(1, -1, 0) && \text{(substitute)} \\ &= (0, 0, 3) + \mathopen{}\left(\tfrac{3}{2}, \tfrac{3}{2}, 0\right)\mathclose{} + \mathopen{}\left(-\tfrac{1}{2}, \tfrac{1}{2}, 0\right)\mathclose{} && \text{(multiply out each term)} \\ &= (1, 2, 3), && \text{(add entrywise)} \end{aligned} \\
>
> which is \\\tilde{x}\\, as [Theorem 58](#thm-orthonormal-expansion) says.

> **NOTE:**
>
> **Definition 63 (Gram-Schmidt process)** The **Gram-Schmidt process** takes vectors \\\tilde{a}\_1, \ldots, \tilde{a}\_k \in \mathbb{R}^p\\ and, for \\i = 1, 2, \ldots, k\\ in turn:
>
> 1.  **Orthogonalize:** \\\tilde{\tilde{q}}\_i \stackrel{\text{def}}{=}\tilde{a}\_i - \sum\_{j=1}^{i-1} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j\\ (for \\i = 1\\ the sum is empty, so \\\tilde{\tilde{q}}\_1 = \tilde{a}\_1\\);
> 2.  **Test:** if \\\tilde{\tilde{q}}\_i = \tilde{0}\\, stop;
> 3.  **Normalize:** \\\tilde{q}\_i \stackrel{\text{def}}{=}\tilde{\tilde{q}}\_i / \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\.
>
> The output is the list \\\tilde{q}\_1, \tilde{q}\_2, \ldots\\ produced before the process stops, or all \\k\\ of them if it never stops.

> **NOTE:**
>
> **Example 107 (Two steps of Gram-Schmidt in \\\mathbb{R}^3\\)** Let \\\tilde{a}\_1 = (1, 1, 0)\\ and \\\tilde{a}\_2 = (1, 0, 1)\\.
>
> - **Step 1.** \\\tilde{\tilde{q}}\_1 = (1, 1, 0)\\, with norm \\\sqrt{2}\\, so \\\tilde{q}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0)\\.
>
> - **Step 2.** \\\tilde{q}\_1 \cdot \tilde{a}\_2 = \tfrac{1}{\sqrt{2}}\\(1 + 0 + 0) = \tfrac{1}{\sqrt{2}}\\, so
>
>   \\ \begin{aligned} \tilde{\tilde{q}}\_2 &= (1, 0, 1) - \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\\(1, 1, 0) && \text{(orthogonalize)} \\ &= (1, 0, 1) - \mathopen{}\left(\tfrac{1}{2}, \tfrac{1}{2}, 0\right)\mathclose{} && \text{(multiply out)} \\ &= \mathopen{}\left(\tfrac{1}{2}, -\tfrac{1}{2}, 1\right)\mathclose{}, && \text{(subtract entrywise)} \end{aligned} \\
>
>   with norm \\\sqrt{\tfrac{1}{4} + \tfrac{1}{4} + 1} = \sqrt{\tfrac{3}{2}}\\, so \\\tilde{q}\_2 = \sqrt{\tfrac{2}{3}}\\\mathopen{}\left(\tfrac{1}{2}, -\tfrac{1}{2}, 1\right)\mathclose{} = \tfrac{1}{\sqrt{6}}\\(1, -1, 2)\\.
>
> As a check, \\\tilde{q}\_1 \cdot \tilde{q}\_2 = \tfrac{1}{\sqrt{12}}\\(1 - 1 + 0) = 0\\.

> **NOTE:**
>
> **Example 108 (Gram-Schmidt stops on dependent vectors)** Let \\\tilde{a}\_1 = (1, 2)\\ and \\\tilde{a}\_2 = (2, 4)\\. Step 1 gives \\\tilde{q}\_1 = \tfrac{1}{\sqrt{5}}\\(1, 2)\\. In step 2, \\\tilde{q}\_1 \cdot \tilde{a}\_2 = \tfrac{1}{\sqrt{5}}\\(2 + 8) = \tfrac{10}{\sqrt{5}}\\, and
>
> \\ \tilde{\tilde{q}}\_2 = (2, 4) - \tfrac{10}{\sqrt{5}} \cdot\tfrac{1}{\sqrt{5}}\\(1, 2) = (2, 4) - 2\\(1, 2) = \tilde{0}, \\
>
> so the process stops: \\\tilde{a}\_2\\ is a multiple of \\\tilde{a}\_1\\.

> **NOTE:**
>
> **Theorem 59 (What Gram-Schmidt produces)** Run the Gram-Schmidt process ([Definition 63](#def-gram-schmidt)) on \\\tilde{a}\_1, \ldots, \tilde{a}\_k \in \mathbb{R}^p\\.
>
> 1.  If it has produced \\\tilde{q}\_1, \ldots, \tilde{q}\_i\\ without stopping, then \\\tilde{q}\_1, \ldots, \tilde{q}\_i\\ are orthonormal and \\\operatorname{span}\mathopen{}\left\\\tilde{q}\_1, \ldots, \tilde{q}\_i\right\\\mathclose{} = \operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_i\right\\\mathclose{}\\.
> 2.  If it reaches step \\i\\ (that is, it did not stop at steps \\1, \ldots, i - 1\\), it stops there exactly when \\\tilde{a}\_i \in \operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_{i-1}\right\\\mathclose{}\\.
> 3.  It completes all \\k\\ steps exactly when \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ are linearly independent; then \\\tilde{q}\_1, \ldots, \tilde{q}\_k\\ is an orthonormal basis of \\\operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_k\right\\\mathclose{}\\ ([Definition 62](#def-orthonormal-basis)).

> **NOTE:**
>
> *Proof*. **Parts 1 and 2, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\i\\.** Before step \\1\\, the list of \\\tilde{q}\\’s is empty, which is orthonormal, and both spans are \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ ([Definition 41](#def-span)). Suppose part 1 holds after step \\i - 1\\, and write \\\mathcal{S}\_{i-1} = \operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_{i-1}\right\\\mathclose{} = \operatorname{span}\mathopen{}\left\\\tilde{q}\_1, \ldots, \tilde{q}\_{i-1}\right\\\mathclose{}\\. The orthonormal vectors \\\tilde{q}\_1, \ldots, \tilde{q}\_{i-1}\\ are linearly independent ([Theorem 57](#thm-orthonormal-independent)) and span \\\mathcal{S}\_{i-1}\\, so they are an orthonormal basis of it.
>
> *\\\tilde{\tilde{q}}\_i\\ is orthogonal to the earlier \\\tilde{q}\\’s.* For each \\l \< i\\,
>
> \\ \begin{aligned} \tilde{q}\_l \cdot \tilde{\tilde{q}}\_i &= \tilde{q}\_l \cdot \mathopen{}\left(1\\\tilde{a}\_i + \sum\_{j=1}^{i-1} \mathopen{}\left(-\tilde{q}\_j \cdot \tilde{a}\_i\right)\mathclose{}\\\tilde{q}\_j\right)\mathclose{} && \text{(}\href{#def-gram-schmidt}{\text{Definition~63}}\text{, as a linear combination)} \\ &= 1\\(\tilde{q}\_l \cdot \tilde{a}\_i) + \sum\_{j=1}^{i-1} \mathopen{}\left(-\tilde{q}\_j \cdot \tilde{a}\_i\right)\mathclose{}\\(\tilde{q}\_l \cdot \tilde{q}\_j) && \text{(}\href{#thm-dot-linear-sum}{\text{Theorem~56}}\text{)} \\ &= \tilde{q}\_l \cdot \tilde{a}\_i - \sum\_{j=1}^{i-1} (\tilde{q}\_j \cdot \tilde{a}\_i)\\(\tilde{q}\_l \cdot \tilde{q}\_j) && \text{(} 1\\z = z \text{, and pull the minus signs out of the sum)} \\ &= \tilde{q}\_l \cdot \tilde{a}\_i - \tilde{q}\_l \cdot \tilde{a}\_i && \text{(only the } j = l \text{ term survives, }\href{#def-orthonormal-vectors}{\text{Definition~17}}\text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\
>
> *Part 2 at step \\i\\.* If \\\tilde{\tilde{q}}\_i = \tilde{0}\\, then \\\tilde{a}\_i = \sum\_{j\<i} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j \in \mathcal{S}\_{i-1}\\. Conversely, if \\\tilde{a}\_i \in \mathcal{S}\_{i-1}\\, then \\\tilde{a}\_i = \sum\_{j\<i} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j\\ ([Theorem 58](#thm-orthonormal-expansion)), so \\\tilde{\tilde{q}}\_i = \tilde{0}\\.
>
> *Part 1 at step \\i\\, if the process does not stop.* Then \\\tilde{\tilde{q}}\_i \ne \tilde{0}\\, so \\\mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{} \> 0\\, and \\\tilde{q}\_i = \tilde{\tilde{q}}\_i / \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\ has norm \\\mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{} / \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{} = 1\\ ([Theorem 52](#thm-norm-properties)) and for \\l \< i\\
>
> \\ \begin{aligned} \tilde{q}\_l \cdot \tilde{q}\_i &= \frac{1}{\mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}}\\(\tilde{q}\_l \cdot \tilde{\tilde{q}}\_i) && \text{(}\href{#thm-dot-linear}{\text{Theorem~46}}\text{, special case } b = 0 \text{)} \\ &= 0, && \text{(} \tilde{\tilde{q}}\_i \text{ is orthogonal to } \tilde{q}\_l \text{)} \end{aligned} \\
>
> and \\\tilde{q}\_i \cdot \tilde{q}\_l = 0\\ too ([Theorem 1](#thm-lincom-symmetric)). So \\\tilde{q}\_1, \ldots, \tilde{q}\_i\\ are orthonormal. For the spans:
>
> - \\\tilde{a}\_i = \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\\tilde{q}\_i + \sum\_{j\<i} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j\\ is in \\\operatorname{span}\mathopen{}\left\\\tilde{q}\_1, \ldots, \tilde{q}\_i\right\\\mathclose{}\\, and so is each of \\\tilde{a}\_1, \ldots, \tilde{a}\_{i-1}\\, which lie in \\\mathcal{S}\_{i-1} = \operatorname{span}\mathopen{}\left\\\tilde{q}\_1, \ldots, \tilde{q}\_{i-1}\right\\\mathclose{} \subseteq \operatorname{span}\mathopen{}\left\\\tilde{q}\_1, \ldots, \tilde{q}\_i\right\\\mathclose{}\\.
> - \\\tilde{q}\_i = \mathopen{}\left(\tilde{a}\_i - \sum\_{j\<i} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j\right)\mathclose{} / \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\ is in \\\operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_i\right\\\mathclose{}\\, because each \\\tilde{q}\_j\\ with \\j \< i\\ lies in \\\mathcal{S}\_{i-1}\\; and so is each of \\\tilde{q}\_1, \ldots, \tilde{q}\_{i-1}\\.
>
> A span is a subspace ([Theorem 21](#thm-span-subspace)), so it contains every linear combination of vectors in it; each span therefore contains the other, and they are equal.
>
> **Part 3.** If the process completes, then \\\tilde{a}\_1 \notin \operatorname{span}\\ of the empty list, and for each \\i \ge 2\\, \\\tilde{a}\_i \notin \operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_{i-1}\right\\\mathclose{}\\ (part 2). Applying [Theorem 27](#thm-add-outside-span) \\k\\ times, starting from the empty list, shows that \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ are linearly independent. Conversely, if they are linearly independent, no \\\tilde{a}\_i\\ is a linear combination \\\sum\_{j\<i} c_j \tilde{a}\_j\\ of the earlier ones, because then \\\sum\_{j\<i} c_j \tilde{a}\_j - \tilde{a}\_i = \tilde{0}\\ would be a combination with a nonzero coefficient; so by part 2 the process never stops. When it completes, \\\tilde{q}\_1, \ldots, \tilde{q}\_k\\ are orthonormal, hence linearly independent ([Theorem 57](#thm-orthonormal-independent)), and span \\\operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_k\right\\\mathclose{}\\ (part 1), so they are an orthonormal basis of it.

> **NOTE:**
>
> **Example 109 (Finishing an orthonormal basis of \\\mathbb{R}^3\\)** Continue [Example 107](#exm-gram-schmidt) with \\\tilde{a}\_3 = (0, 1, 1)\\. \\\tilde{q}\_1 \cdot \tilde{a}\_3 = \tfrac{1}{\sqrt{2}}\\ and \\\tilde{q}\_2 \cdot \tilde{a}\_3 = \tfrac{1}{\sqrt{6}}\\(0 - 1 + 2) = \tfrac{1}{\sqrt{6}}\\, so
>
> \\ \begin{aligned} \tilde{\tilde{q}}\_3 &= (0, 1, 1) - \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\\(1, 1, 0) - \tfrac{1}{\sqrt{6}} \cdot\tfrac{1}{\sqrt{6}}\\(1, -1, 2) && \text{(orthogonalize)} \\ &= (0, 1, 1) - \tfrac{1}{2}\\(1, 1, 0) - \tfrac{1}{6}\\(1, -1, 2) && \text{(multiply the scalars)} \\ &= \mathopen{}\left(0 - \tfrac{1}{2} - \tfrac{1}{6},\\ 1 - \tfrac{1}{2} + \tfrac{1}{6},\\ 1 - 0 - \tfrac{2}{6}\right)\mathclose{} && \text{(subtract entrywise)} \\ &= \mathopen{}\left(-\tfrac{2}{3}, \tfrac{2}{3}, \tfrac{2}{3}\right)\mathclose{}, && \text{(arithmetic)} \end{aligned} \\
>
> with norm \\\sqrt{3 \cdot\tfrac{4}{9}} = \tfrac{2}{\sqrt{3}}\\, so \\\tilde{q}\_3 = \tfrac{1}{\sqrt{3}}\\(-1, 1, 1)\\. The process did not stop, so by [Theorem 59](#thm-gram-schmidt) \\\tilde{a}\_1, \tilde{a}\_2, \tilde{a}\_3\\ are linearly independent and \\\tilde{q}\_1, \tilde{q}\_2, \tilde{q}\_3\\ is an orthonormal basis of their span. That span therefore has dimension \\3\\ ([Definition 44](#def-dimension)), so it is \\\mathbb{R}^3\\ ([Theorem 30](#thm-subspace-equal-dim), [Example 47](#exm-dimension)). As a check, \\\tilde{q}\_1 \cdot \tilde{q}\_3 = \tfrac{1}{\sqrt{6}}\\(-1 + 1 + 0) = 0\\ and \\\tilde{q}\_2 \cdot \tilde{q}\_3 = \tfrac{1}{\sqrt{18}}\\(-1 - 1 + 2) = 0\\.

> **NOTE:**
>
> **Corollary 5 (Every subspace has an orthonormal basis)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\. Every orthonormal list of vectors in \\\mathcal{S}\\ extends to an orthonormal basis of \\\mathcal{S}\\ ([Definition 62](#def-orthonormal-basis)). Starting from the empty list shows that \\\mathcal{S}\\ has an orthonormal basis.

> **NOTE:**
>
> *Proof*. Let \\\tilde{u}\_1, \ldots, \tilde{u}\_r \in \mathcal{S}\\ be orthonormal. They are linearly independent ([Theorem 57](#thm-orthonormal-independent)), so they extend to a basis \\\tilde{u}\_1, \ldots, \tilde{u}\_r, \tilde{a}\_{r+1}, \ldots, \tilde{a}\_d\\ of \\\mathcal{S}\\ ([Theorem 28](#thm-extend-basis)). Run the Gram-Schmidt process on this basis. It is linearly independent, so the process completes, and the output is an orthonormal basis of its span, which is \\\mathcal{S}\\ ([Theorem 59](#thm-gram-schmidt), part 3).
>
> The first \\r\\ outputs are \\\tilde{u}\_1, \ldots, \tilde{u}\_r\\ themselves, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\i \le r\\. Suppose the outputs before step \\i\\ are \\\tilde{u}\_1, \ldots, \tilde{u}\_{i-1}\\ (for \\i = 1\\ there are none, and the sum below is empty). Then \\\tilde{\tilde{q}}\_i = \tilde{u}\_i - \sum\_{j\<i} (\tilde{u}\_j \cdot \tilde{u}\_i)\\\tilde{u}\_j = \tilde{u}\_i\\, because each \\\tilde{u}\_j \cdot \tilde{u}\_i = 0\\; \\\tilde{\tilde{q}}\_i = \tilde{u}\_i \ne \tilde{0}\\, because \\\mathopen{}\left\lVert\tilde{u}\_i\right\rVert\mathclose{} = 1\\, so the process does not stop; and \\\tilde{q}\_i = \tilde{u}\_i / \mathopen{}\left\lVert\tilde{u}\_i\right\rVert\mathclose{} = \tilde{u}\_i\\. So the orthonormal basis contains the starting list.

> **NOTE:**
>
> **Example 110 (Extending one unit vector to an orthonormal basis of \\\mathbb{R}^3\\)** Start from the unit vector \\\tilde{u}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0)\\. Extend it to a basis of \\\mathbb{R}^3\\ as in [Example 49](#exm-extend-basis), starting from the empty list: \\\tilde{u}\_1\\ is not in the span of the empty list, \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, because \\\mathopen{}\left\lVert\tilde{u}\_1\right\rVert\mathclose{} = 1\\; \\(1, 0, 0)\\ is not in \\\operatorname{span}\mathopen{}\left\\\tilde{u}\_1\right\\\mathclose{}\\, because every multiple of \\\tilde{u}\_1\\ has equal first and second entries, and \\(0, 0, 1)\\ is not in \\\operatorname{span}\mathopen{}\left\\\tilde{u}\_1, (1, 0, 0)\right\\\mathclose{}\\, because every combination of those two vectors has third entry \\0\\. So \\\tilde{u}\_1, (1, 0, 0), (0, 0, 1)\\ are linearly independent ([Theorem 27](#thm-add-outside-span)), and three linearly independent vectors in \\\mathbb{R}^3\\ are a basis of it (they are a basis of their span, which has dimension \\3\\ ([Definition 44](#def-dimension)) and so is \\\mathbb{R}^3\\ ([Theorem 30](#thm-subspace-equal-dim), [Example 47](#exm-dimension))). Gram-Schmidt on \\\tilde{u}\_1, (1, 0, 0), (0, 0, 1)\\:
>
> 1.  \\\tilde{q}\_1 = \tilde{u}\_1\\.
> 2.  \\\tilde{q}\_1 \cdot (1, 0, 0) = \tfrac{1}{\sqrt{2}}\\, so \\\tilde{\tilde{q}}\_2 = (1, 0, 0) - \tfrac{1}{2}\\(1, 1, 0) = \mathopen{}\left(\tfrac{1}{2}, -\tfrac{1}{2}, 0\right)\mathclose{}\\, with norm \\\tfrac{1}{\sqrt{2}}\\, and \\\tilde{q}\_2 = \tfrac{1}{\sqrt{2}}\\(1, -1, 0)\\.
> 3.  \\(0, 0, 1)\\ is orthogonal to \\\tilde{q}\_1\\ and \\\tilde{q}\_2\\, so \\\tilde{\tilde{q}}\_3 = (0, 0, 1)\\, which already has norm \\1\\, and \\\tilde{q}\_3 = (0, 0, 1)\\.
>
> The result is the orthonormal basis of [Example 104](#exm-orthonormal-basis), in a different order.

### 2.19 Outer product

> **NOTE:**
>
> **Definition 64 (Outer product)** The **outer product** of a vector \\\tilde{u}\\ of length \\m\\ and a vector \\\tilde{v}\\ of length \\n\\ is the \\m \times n\\ matrix product ([Definition 24](#def-matrix-mult)) \\\tilde{u}\\{\tilde{v}}^{\top}\\ of the column vector \\\tilde{u}\\ with the row vector \\{\tilde{v}}^{\top}\\. Its entries are
>
> \\ \mathopen{}\left(\underbrace{\tilde{u}}\_{m \times 1}\\\underbrace{{\tilde{v}}^{\top}}\_{1 \times n}\right)\mathclose{}\_{ij} = u_i v_j \qquad \text{(definition of matrix multiplication; the sum has one term)} \\

> **NOTE:**
>
> **Example 111 (An outer product)** For \\\tilde{u} = (1, 2, 3)\\ and \\\tilde{v} = (4, 5)\\:
>
> \\ \begin{aligned} \tilde{u}\\{\tilde{v}}^{\top} &= \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix} \begin{bmatrix} 4 & 5 \end{bmatrix} && \text{(definition of the outer product)} \\ &= \begin{bmatrix} 1 \cdot 4 & 1 \cdot 5 \\ 2 \cdot 4 & 2 \cdot 5 \\ 3 \cdot 4 & 3 \cdot 5 \end{bmatrix} && \text{(entry } (i, j) \text{ is } u_i v_j \text{)} \\ &= \begin{bmatrix} 4 & 5 \\ 8 & 10 \\ 12 & 15 \end{bmatrix} && \text{(multiply)} \end{aligned} \\

> **NOTE:**
>
> *Remark 18* (Outer product and dot product). The dot product \\{\tilde{u}}^{\top}\tilde{v}\\ ([Example 18](#exm-dot-product-matmul)) needs two vectors of the same length and gives a number. The outer product \\\tilde{u}\\{\tilde{v}}^{\top}\\ takes vectors of any two lengths and gives a matrix ([Banerjee and Roy 2014, chap. 1](#ref-banerjee2014linear), p. 11).
>
> For example, \\\tilde{u} = (1, 2, 3)\\ and \\\tilde{v} = (4, 5)\\ in [Example 111](#exm-outer-product) have different lengths, so they have no dot product, but their outer product is a \\3 \times 2\\ matrix. For \\\tilde{a} = (1, 2)\\ and \\\tilde{b} = (3, 4)\\, which have the same length, both products exist:
>
> \\ {\tilde{a}}^{\top}\tilde{b} = 1 \cdot 3 + 2 \cdot 4 = 11 \qquad \tilde{a}\\{\tilde{b}}^{\top} = \begin{bmatrix} 1 \cdot 3 & 1 \cdot 4 \\ 2 \cdot 3 & 2 \cdot 4 \end{bmatrix} = \begin{bmatrix} 3 & 4 \\ 6 & 8 \end{bmatrix} \\

> **NOTE:**
>
> **Theorem 60 (An outer product has rank one)** If \\\tilde{u}\\ is a nonzero vector of length \\m\\ and \\\tilde{v}\\ is a nonzero vector of length \\n\\, then \\\operatorname{rank}(\tilde{u}\\{\tilde{v}}^{\top}) = 1\\ ([Definition 38](#def-rank)).

> **NOTE:**
>
> *Proof*. Column \\j\\ of \\\tilde{u}\\{\tilde{v}}^{\top}\\ has entries \\u_1 v_j, \ldots, u_m v_j\\, so it is the vector \\v_j \tilde{u}\\.
>
> **The rank is at least one.** Because \\\tilde{v} \neq \tilde{0}\\, some entry \\v_j\\ is nonzero. Then column \\j\\, \\v_j \tilde{u}\\, is a nonzero vector, and a single nonzero vector is linearly independent ([Definition 37](#def-linearly-independent)): \\c\\(v_j \tilde{u}) = \tilde{0}\\ forces \\c = 0\\.
>
> **The rank is at most one.** Take any two columns \\j \neq k\\. If \\v_j = v_k = 0\\, both columns are \\\tilde{0}\\, and \\1 \cdot(v_j \tilde{u}) + 1 \cdot(v_k \tilde{u}) = \tilde{0}\\. Otherwise, use the coefficients \\c_j = v_k\\ and \\c_k = -v_j\\, which are not both zero:
>
> \\ \begin{aligned} v_k\\(v_j \tilde{u}) - v_j\\(v_k \tilde{u}) &= (v_k v_j - v_j v_k)\\\tilde{u} && \text{(collect the scalar multiples of } \tilde{u} \text{)} \\ &= 0 \cdot\tilde{u} && \text{(multiplication of numbers is commutative)} \\ &= \tilde{0} && \text{(a zero multiple of a vector is } \tilde{0}\text{)} \end{aligned} \\
>
> Either way, every pair of columns has a combination with coefficients that are not all zero and that equals \\\tilde{0}\\. Now take any set of two or more columns. It contains a pair \\j \neq k\\. Use that pair’s coefficients for columns \\j\\ and \\k\\, and the coefficient \\0\\ for every other column in the set. This combination equals \\\tilde{0}\\, and its coefficients are not all zero, so the set is not linearly independent ([Definition 37](#def-linearly-independent)). The largest linearly independent set of columns therefore has one column.

> **NOTE:**
>
> **Example 112 (The rank of an outer product)** In [Example 111](#exm-outer-product), the second column \\(5, 10, 15)\\ of \\\tilde{u}\\{\tilde{v}}^{\top}\\ is \\\frac{5}{4}\\ times the first column \\(4, 8, 12)\\, because the columns are \\v_1 \tilde{u} = 4\tilde{u}\\ and \\v_2 \tilde{u} = 5\tilde{u}\\. So the two columns are not linearly independent, and the \\3 \times 2\\ matrix has rank \\1\\.

## 3 Special Matrices

Some special matrices appeared earlier:

- the zero matrix ([Definition 21](#def-zero-matrix)), in the section on matrix addition
- square matrices ([Definition 25](#def-square-matrix)), in the section on square and identity matrices
- the identity matrix ([Definition 27](#def-identity-matrix)), in that same section

> **NOTE:**
>
> **Definition 65 (Order of a square matrix)** The **order** of a square matrix ([Definition 25](#def-square-matrix)) is its number of rows, which equals its number of columns.

> **NOTE:**
>
> **Example 113 (Orders of square matrices)** \\\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\ has order \\2\\, and \\\[5\]\\ has order \\1\\. A \\2 \times 3\\ matrix has no order, since it is not square ([Example 19](#exm-square-matrix)).

> **NOTE:**
>
> **Definition 66 (Matrix power)** For a square matrix \\\mathbf{A}\\ of order \\p\\ and a positive integer \\k\\, the \\k\\-th **power** of \\\mathbf{A}\\ is:
>
> \\\mathbf{A}^k = \underbrace{\mathbf{A}\\\mathbf{A}\cdots\mathbf{A}}\_{k \text{ copies}}\\
>
> In particular, \\\mathbf{A}^2 = \mathbf{A}\mathbf{A}\\.

> **NOTE:**
>
> **Example 114 (Powers of a \\2 \times 2\\ matrix)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}\\. Then
>
> \\ \begin{aligned} \mathbf{A}^2 &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 1 + 1 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 0 & 0 \cdot 1 + 1 \cdot 1 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix}, && \text{(multiply and add)} \\ \mathbf{A}^3 = \mathbf{A}^2 \mathbf{A} &= \begin{bmatrix} 1 \cdot 1 + 2 \cdot 0 & 1 \cdot 1 + 2 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 0 & 0 \cdot 1 + 1 \cdot 1 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 3 \\ 0 & 1 \end{bmatrix}. && \text{(multiply and add)} \end{aligned} \\
>
> A \\2 \times 3\\ matrix \\\mathbf{B}\\ is not square ([Definition 25](#def-square-matrix)), so \\\mathbf{B}^2\\ is not defined; indeed \\\mathbf{B} \mathbf{B}\\ would multiply a matrix with \\3\\ columns by one with \\2\\ rows, which [Definition 24](#def-matrix-mult) does not allow.

> **NOTE:**
>
> **Definition 67 (Symmetric matrix)** A square matrix \\\mathbf{A}\\ is **symmetric** if \\{\mathbf{A}}^{\top} = \mathbf{A}\\, i.e., \\a\_{ij} = a\_{ji}\\ for all \\i\\ and \\j\\.

> **NOTE:**
>
> *Remark 19* (Symmetric matrices in statistics). Covariance matrices are symmetric: entry \\(i, j)\\ of the covariance matrix of a random vector \\\tilde{Y}\\ is \\\operatorname{Cov}\mathopen{}\left(Y_i, Y_j\right)\mathclose{}\\, and \\\operatorname{Cov}\mathopen{}\left(Y_i, Y_j\right)\mathclose{} = \operatorname{Cov}\mathopen{}\left(Y_j, Y_i\right)\mathclose{}\\. For example, if \\\operatorname{Var}\mathopen{}\left(Y_1\right)\mathclose{} = 4\\, \\\operatorname{Var}\mathopen{}\left(Y_2\right)\mathclose{} = 9\\, and \\\operatorname{Cov}\mathopen{}\left(Y_1, Y_2\right)\mathclose{} = 1\\, the covariance matrix of \\(Y_1, Y_2)\\ is
>
> \\ \begin{bmatrix} 4 & 1 \\ 1 & 9 \end{bmatrix}. \\

> **NOTE:**
>
> **Example 115 (A matrix that is not symmetric)** \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\ is not symmetric: \\a\_{12} = 2 \ne 3 = a\_{21}\\.

> **NOTE:**
>
> **Definition 68 (Diagonal matrix)** A square matrix \\\mathbf{D}\\ is a **diagonal matrix** if all off-diagonal entries are zero: \\d\_{ij} = 0\\ whenever \\i \neq j\\:
>
> \\ \mathbf{D} = \begin{bmatrix} d_1 & 0 & \cdots & 0 \\ 0 & d_2 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & d_p \end{bmatrix} \\

> **NOTE:**
>
> *Remark 20* (\\\operatorname{diag}\\ notation). For numbers \\d_1, \ldots, d_p\\, \\\operatorname{diag}(d_1, \ldots, d_p)\\ is the \\p \times p\\ diagonal matrix with diagonal entries \\d_1, \ldots, d_p\\. For example,
>
> \\ \operatorname{diag}(2, 5) = \begin{bmatrix} 2 & 0 \\ 0 & 5 \end{bmatrix}, \\
>
> and the \\p \times p\\ identity matrix is \\\mathbf{I}\_p = \operatorname{diag}(1, \ldots, 1)\\.

> **NOTE:**
>
> **Example 116 (A matrix that is not diagonal)** \\\mathbf{D} = \begin{bmatrix} 2 & 1 \\ 0 & 5 \end{bmatrix}\\ is not diagonal: its off-diagonal entry \\d\_{12} = 1 \ne 0\\.

> **NOTE:**
>
> **Definition 69 (Matrix inverse)** For a square \\p \times p\\ matrix \\\mathbf{A}\\, the **inverse** \\\mathbf{A}^{-1}\\ (if it exists) is the unique matrix satisfying:
>
> \\\mathbf{A}\\\mathbf{A}^{-1} = \mathbf{A}^{-1}\\\mathbf{A} = \mathbf{I}\_p\\

> **NOTE:**
>
> **Definition 70 (Invertible matrix (non-singular matrix))** A \\p \times p\\ matrix \\\mathbf{A}\\ is **invertible** (or **non-singular**) if some \\p \times p\\ matrix \\\mathbf{B}\\ satisfies
>
> \\\mathbf{A}\mathbf{B} = \mathbf{B}\mathbf{A} = \mathbf{I}\_p,\\
>
> where \\\mathbf{I}\_p\\ is the identity matrix ([Definition 27](#def-identity-matrix)). A square matrix that is not invertible is **singular**.

> **NOTE:**
>
> **Example 117 (An invertible matrix and a singular one)** The matrix \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ is invertible, with \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\: multiplying out gives \\\mathbf{A}\mathbf{A}^{-1} = \mathbf{A}^{-1}\mathbf{A} = \mathbf{I}\_2\\.
>
> The matrix \\\mathbf{M} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ is singular: for any \\2 \times 2\\ matrix \\\mathbf{C}\\, the two rows of \\\mathbf{M}\mathbf{C}\\ are equal, so \\\mathbf{M}\mathbf{C}\\ can never be \\\mathbf{I}\_2\\, whose two rows differ.

> **NOTE:**
>
> *Remark 21* (Invertible matrices and inverses). Let \\\mathbf{A}\\ be a \\p \times p\\ matrix, and suppose that two \\p \times p\\ matrices \\\mathbf{B}\\ and \\\mathbf{C}\\ satisfy \\\mathbf{A}\mathbf{B} = \mathbf{B}\mathbf{A} = \mathbf{I}\_p\\ and \\\mathbf{A}\mathbf{C} = \mathbf{C}\mathbf{A} = \mathbf{I}\_p\\. Then
>
> \\ \begin{aligned} \mathbf{B} &= \mathbf{B}\\\mathbf{I}\_p && \text{(identity matrix)} \\ &= \mathbf{B}(\mathbf{A}\mathbf{C}) && \text{(} \mathbf{A}\mathbf{C} = \mathbf{I}\_p \text{)} \\ &= (\mathbf{B}\mathbf{A})\mathbf{C} && \text{(matrix multiplication is associative)} \\ &= \mathbf{I}\_p\\\mathbf{C} && \text{(} \mathbf{B}\mathbf{A} = \mathbf{I}\_p \text{)} \\ &= \mathbf{C} && \text{(identity matrix)} \end{aligned} \\
>
> The steps use [Theorem 8](#thm-matmul-assoc) and [Theorem 10](#thm-identity). Since \\\mathbf{B} = \mathbf{C}\\, at most one matrix satisfies these equations, which is the uniqueness that [Definition 69](#def-matrix-inverse) asserts. When \\\mathbf{A}\\ is invertible, the matrix \\\mathbf{B}\\ in [Definition 70](#def-invertible-matrix) is therefore the inverse \\\mathbf{A}^{-1}\\ of \\\mathbf{A}\\, and \\\mathbf{A}\\ is invertible exactly when it has an inverse. For example, for \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ in [Example 117](#exm-invertible-matrix), \\\begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\ is the only \\2 \times 2\\ matrix \\\mathbf{B}\\ with \\\mathbf{A}\mathbf{B} = \mathbf{B}\mathbf{A} = \mathbf{I}\_2\\, so it is \\\mathbf{A}^{-1}\\.

> **NOTE:**
>
> **Theorem 61 (Inverse of a product)** If \\\mathbf{A}\\ and \\\mathbf{B}\\ are invertible \\p \times p\\ matrices, then \\\mathbf{A}\mathbf{B}\\ is invertible, and
>
> \\(\mathbf{A}\mathbf{B})^{-1} = \mathbf{B}^{-1}\mathbf{A}^{-1}\\

> **NOTE:**
>
> *Proof*. Multiply \\\mathbf{A}\mathbf{B}\\ by the candidate inverse on the right:
>
> \\ \begin{aligned} (\mathbf{A}\mathbf{B})(\mathbf{B}^{-1}\mathbf{A}^{-1}) &= \mathbf{A}(\mathbf{B}\mathbf{B}^{-1})\mathbf{A}^{-1} && \text{(matrix multiplication is associative)} \\ &= \mathbf{A}\\\mathbf{I}\_p\\\mathbf{A}^{-1} && \text{(definition of } \mathbf{B}^{-1} \text{)} \\ &= \mathbf{A}\mathbf{A}^{-1} && \text{(identity matrix)} \\ &= \mathbf{I}\_p && \text{(definition of } \mathbf{A}^{-1} \text{)} \end{aligned} \\
>
> and on the left:
>
> \\ \begin{aligned} (\mathbf{B}^{-1}\mathbf{A}^{-1})(\mathbf{A}\mathbf{B}) &= \mathbf{B}^{-1}(\mathbf{A}^{-1}\mathbf{A})\mathbf{B} && \text{(matrix multiplication is associative)} \\ &= \mathbf{B}^{-1}\\\mathbf{I}\_p\\\mathbf{B} && \text{(definition of } \mathbf{A}^{-1} \text{)} \\ &= \mathbf{B}^{-1}\mathbf{B} && \text{(identity matrix)} \\ &= \mathbf{I}\_p && \text{(definition of } \mathbf{B}^{-1} \text{)} \end{aligned} \\
>
> So \\\mathbf{B}^{-1}\mathbf{A}^{-1}\\ satisfies [Definition 69](#def-matrix-inverse) for \\\mathbf{A}\mathbf{B}\\. The steps use [Theorem 8](#thm-matmul-assoc) and [Theorem 10](#thm-identity).

> **NOTE:**
>
> **Theorem 62 (Inverse of a transpose)** If \\\mathbf{A}\\ is an invertible \\p \times p\\ matrix, then \\{\mathbf{A}}^{\top}\\ is invertible, and
>
> \\\mathopen{}\left({\mathbf{A}}^{\top}\right)^{-1}\mathclose{} = {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}\\

> **NOTE:**
>
> *Proof*. Multiply \\{\mathbf{A}}^{\top}\\ by the candidate inverse on each side:
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\\{\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top} &= {\mathopen{}\left(\mathbf{A}^{-1}\mathbf{A}\right)\mathclose{}}^{\top} && \text{(transpose of a product)} \\ &= {\mathbf{I}\_p}^{\top} && \text{(definition of } \mathbf{A}^{-1} \text{)} \\ &= \mathbf{I}\_p && \text{(} \mathbf{I}\_p \text{ is symmetric)} \end{aligned} \\
>
> \\ \begin{aligned} {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}\\{\mathbf{A}}^{\top} &= {\mathopen{}\left(\mathbf{A}\mathbf{A}^{-1}\right)\mathclose{}}^{\top} && \text{(transpose of a product)} \\ &= {\mathbf{I}\_p}^{\top} && \text{(definition of } \mathbf{A}^{-1} \text{)} \\ &= \mathbf{I}\_p && \text{(} \mathbf{I}\_p \text{ is symmetric)} \end{aligned} \\
>
> So \\{\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}\\ satisfies [Definition 69](#def-matrix-inverse) for \\{\mathbf{A}}^{\top}\\. The first step of each display is [Theorem 19](#thm-transpose-product).

> **NOTE:**
>
> **Example 118 (Inverting a transpose)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\, [Example 117](#exm-invertible-matrix) gives \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\, so [Theorem 62](#thm-inverse-transpose) says
>
> \\ \mathopen{}\left({\mathbf{A}}^{\top}\right)^{-1}\mathclose{} = \mathopen{}\left(\begin{bmatrix} 2 & 0 \\ 1 & 1 \end{bmatrix}\right)^{-1}\mathclose{} = {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top} = \begin{bmatrix} 0.5 & 0 \\ -0.5 & 1 \end{bmatrix}, \\
>
> and multiplying \\\begin{bmatrix} 2 & 0 \\ 1 & 1 \end{bmatrix}\begin{bmatrix} 0.5 & 0 \\ -0.5 & 1 \end{bmatrix}\\ out does give \\\mathbf{I}\_2\\.

> **NOTE:**
>
> **Corollary 6 (The inverse of a symmetric matrix is symmetric)** If \\\mathbf{A}\\ is symmetric and invertible, then \\\mathbf{A}^{-1}\\ is symmetric.

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top} &= \mathopen{}\left({\mathbf{A}}^{\top}\right)^{-1}\mathclose{} && \text{(inverse of a transpose)} \\ &= \mathbf{A}^{-1} && \text{(} \mathbf{A} \text{ is symmetric)} \end{aligned} \\
>
> The first step is [Theorem 62](#thm-inverse-transpose).

> **NOTE:**
>
> **Example 119 (Inverting a symmetric matrix)** \\\mathbf{S} = \begin{bmatrix} 2 & 1 \\ 1 & 1 \end{bmatrix}\\ is symmetric, and \\\mathbf{S}^{-1} = \begin{bmatrix} 1 & -1 \\ -1 & 2 \end{bmatrix}\\ is symmetric too, as [Corollary 6](#cor-inverse-symmetric) says.

> **NOTE:**
>
> **Definition 71 (Idempotent matrix)** A square matrix \\\mathbf{A}\\ is **idempotent** if
>
> \\\mathbf{A}^2 = \mathbf{A}\\

> **NOTE:**
>
> **Example 120 (An idempotent matrix)** For \\\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\,
>
> \\ \begin{aligned} \mathbf{P}^2 &= \begin{bmatrix} 1 \cdot 1 + 0 \cdot 0 & 1 \cdot 0 + 0 \cdot 0 \\ 0 \cdot 1 + 0 \cdot 0 & 0 \cdot 0 + 0 \cdot 0 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix} = \mathbf{P}, && \text{(multiply and add)} \end{aligned} \\
>
> so \\\mathbf{P}\\ is idempotent.

> **NOTE:**
>
> **Example 121 (A matrix that is not idempotent)** For \\\mathbf{A} = \begin{bmatrix} 2 & 0 \\ 0 & 0 \end{bmatrix}\\,
>
> \\ \mathbf{A}^2 = \begin{bmatrix} 2 \cdot 2 + 0 \cdot 0 & 2 \cdot 0 + 0 \cdot 0 \\ 0 \cdot 2 + 0 \cdot 0 & 0 \cdot 0 + 0 \cdot 0 \end{bmatrix} = \begin{bmatrix} 4 & 0 \\ 0 & 0 \end{bmatrix} \ne \mathbf{A}, \\
>
> so \\\mathbf{A}\\ is not idempotent.

> **NOTE:**
>
> **Definition 72 (Orthogonal projection matrix)** A square matrix \\\mathbf{P}\\ is an **orthogonal projection matrix** if it is both symmetric ([Definition 67](#def-symmetric-matrix)) and idempotent ([Definition 71](#def-idempotent-matrix)):
>
> \\{\mathbf{P}}^{\top} = \mathbf{P} \qquad \text{and} \qquad \mathbf{P}^2 = \mathbf{P}\\

> **NOTE:**
>
> **Definition 73 (Oblique projection)** A square matrix is an **oblique projection** if it is idempotent ([Definition 71](#def-idempotent-matrix)) but not symmetric ([Definition 67](#def-symmetric-matrix)).

> **NOTE:**
>
> **Example 122 (An orthogonal projection and an oblique one)** \\\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ is symmetric, and \\\mathbf{P}^2 = \mathbf{P}\\, so \\\mathbf{P}\\ is an orthogonal projection matrix; it maps \\(v_1, v_2)\\ to \\(v_1, 0)\\.
>
> \\\mathbf{Q} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}\\ is idempotent:
>
> \\ \mathbf{Q}^2 = \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 1 + 1 \cdot 0 \\ 0 \cdot 1 + 0 \cdot 0 & 0 \cdot 1 + 0 \cdot 0 \end{bmatrix} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix} = \mathbf{Q}, \\
>
> but \\{\mathbf{Q}}^{\top} \neq \mathbf{Q}\\, so \\\mathbf{Q}\\ is an oblique projection, not an orthogonal projection matrix.

> **NOTE:**
>
> *Remark 22* (What “projection matrix” means in these notes). Some texts call any idempotent matrix a projection matrix, so that both \\\mathbf{P}\\ and \\\mathbf{Q}\\ in [Example 122](#exm-projection-matrix) would count as one. Regression texts often say “projection matrix” when they mean an orthogonal one. In these notes, “projection matrix” always means an orthogonal projection matrix in the sense of [Definition 72](#def-projection-matrix), such as \\\mathbf{P}\\ in [Example 122](#exm-projection-matrix), and never an oblique projection ([Definition 73](#def-oblique-projection)) such as \\\mathbf{Q}\\.

> **NOTE:**
>
> **Theorem 63 (Complement of a projection matrix)** If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 72](#def-projection-matrix)), then \\\mathbf{I}\_p - \mathbf{P}\\ is also an orthogonal projection matrix.

> **NOTE:**
>
> *Proof*. We verify symmetry and idempotency.
>
> **Symmetry:** \\{(\mathbf{I} - \mathbf{P})}^{\top} = {\mathbf{I}}^{\top} - {\mathbf{P}}^{\top} = \mathbf{I} - \mathbf{P}\\
>
> **Idempotency:** \\\begin{aligned} (\mathbf{I} - \mathbf{P})^2 &= (\mathbf{I} - \mathbf{P})(\mathbf{I} - \mathbf{P}) \\ &= \mathbf{I} - \mathbf{P} - \mathbf{P} + \mathbf{P}^2 \\ &= \mathbf{I} - \mathbf{P} - \mathbf{P} + \mathbf{P} \\ &= \mathbf{I} - \mathbf{P} \end{aligned}\\

> **NOTE:**
>
> **Theorem 64 (Projection matrices produce orthogonal decompositions)** If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 72](#def-projection-matrix)) and \\\tilde{v}\\ is any vector of length \\p\\, then the two components of the decomposition
>
> \\\tilde{v} = \underbrace{\mathbf{P}\tilde{v}}\_{\text{projected}} + \underbrace{(\mathbf{I}\_p - \mathbf{P})\tilde{v}}\_{\text{residual}}\\
>
> are orthogonal:
>
> \\\mathbf{P}\tilde{v} \\\perp\\ (\mathbf{I}\_p - \mathbf{P})\tilde{v}\\

> **NOTE:**
>
> *Proof*. \\\begin{aligned} {(\mathbf{P}\tilde{v})}^{\top}\\(\mathbf{I} - \mathbf{P})\tilde{v} &= {\tilde{v}}^{\top}\\{\mathbf{P}}^{\top}\\(\mathbf{I} - \mathbf{P})\tilde{v} \\ &= {\tilde{v}}^{\top}\\\mathbf{P}\\(\mathbf{I} - \mathbf{P})\tilde{v} \\ &= {\tilde{v}}^{\top}\\(\mathbf{P} - \mathbf{P}^2)\tilde{v} \\ &= {\tilde{v}}^{\top}\\(\mathbf{P} - \mathbf{P})\tilde{v} \\ &= {\tilde{v}}^{\top}\\\mathbf{0}\\\tilde{v} \\ &= 0 \end{aligned}\\
>
> where the second line uses symmetry (\\{\mathbf{P}}^{\top} = \mathbf{P}\\) and the fourth line uses idempotency (\\\mathbf{P}^2 = \mathbf{P}\\).

> **NOTE:**
>
> **Definition 74 (Orthogonal matrix)** A \\p \times p\\ matrix \\\mathbf{Q}\\ is **orthogonal** if
>
> \\ \underbrace{{\mathbf{Q}}^{\top}}\_{p \times p}\\\underbrace{\mathbf{Q}}\_{p \times p} = \mathbf{I}\_p \\

> **NOTE:**
>
> **Example 123 (A rotation matrix)** The matrix
>
> \\ \mathbf{Q} = \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix} \\
>
> rotates each vector in the plane counterclockwise by the angle \\\theta\\ with \\\cos\theta = 0.6\\ and \\\sin\theta = 0.8\\ (about \\53\\ degrees) ([Banerjee and Roy 2014, chap. 8](#ref-banerjee2014linear), Example 8.1, p. 207). It is orthogonal:
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top}\mathbf{Q} &= \begin{bmatrix} 0.6 & 0.8 \\ -0.8 & 0.6 \end{bmatrix} \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \begin{bmatrix} 0.36 + 0.64 & -0.48 + 0.48 \\ -0.48 + 0.48 & 0.64 + 0.36 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> **Example 124 (Orthogonal columns are not enough)** \\\mathbf{Q} = 2 \mathbf{I}\_2\\ has orthogonal columns \\(2, 0)\\ and \\(0, 2)\\, but
>
> \\ {\mathbf{Q}}^{\top} \mathbf{Q} = \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix} \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix} = \begin{bmatrix} 4 & 0 \\ 0 & 4 \end{bmatrix} \ne \mathbf{I}\_2, \\
>
> so \\\mathbf{Q}\\ is not an orthogonal matrix: its columns have norm \\2\\, not \\1\\.

> **NOTE:**
>
> *Remark 23* (The columns of an orthogonal matrix are orthonormal). Entry \\(i, j)\\ of \\{\mathbf{Q}}^{\top}\mathbf{Q}\\ is the dot product of column \\i\\ and column \\j\\ of \\\mathbf{Q}\\, so \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\ says that the columns of \\\mathbf{Q}\\ are orthonormal ([Definition 17](#def-orthonormal-vectors)). For a square matrix, \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\ also implies \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\, so \\\mathbf{Q}^{-1} = {\mathbf{Q}}^{\top}\\ ([Definition 69](#def-matrix-inverse)) ([Banerjee and Roy 2014, chap. 8](#ref-banerjee2014linear), Theorem 8.1 and Definition 8.1, p. 209).
>
> For example, the columns of \\\mathbf{Q}\\ in [Example 123](#exm-orthogonal-matrix) are \\(0.6, 0.8)\\ and \\(-0.8, 0.6)\\. The diagonal entries \\0.36 + 0.64 = 1\\ of \\{\mathbf{Q}}^{\top}\mathbf{Q}\\ are their squared norms, and the off-diagonal entries \\-0.48 + 0.48 = 0\\ are their dot product. Multiplying in the other order also gives \\\mathbf{I}\_2\\:
>
> \\ \begin{aligned} \mathbf{Q}{\mathbf{Q}}^{\top} &= \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix} \begin{bmatrix} 0.6 & 0.8 \\ -0.8 & 0.6 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \begin{bmatrix} 0.36 + 0.64 & 0.48 - 0.48 \\ 0.48 - 0.48 & 0.64 + 0.36 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> So \\\mathbf{Q}^{-1} = {\mathbf{Q}}^{\top}\\.

> **NOTE:**
>
> **Theorem 65 (Orthogonal matrices preserve length)** If \\\mathbf{Q}\\ is a \\p \times p\\ orthogonal matrix ([Definition 74](#def-orthogonal-matrix)) and \\\tilde{x}\\ is a vector of length \\p\\, then
>
> \\ \mathopen{}\left\lVert\mathbf{Q}\tilde{x}\right\rVert\mathclose{} = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{Q}\tilde{x}\right\rVert\mathclose{}^2 &= (\mathbf{Q}\tilde{x}) \cdot (\mathbf{Q}\tilde{x}) && \text{(definition of the Euclidean norm)} \\ &= {(\mathbf{Q}\tilde{x})}^{\top}\\(\mathbf{Q}\tilde{x}) && \text{(dot product as a matrix product)} \\ &= {\tilde{x}}^{\top}\\{\mathbf{Q}}^{\top}\\(\mathbf{Q}\tilde{x}) && \text{(transpose of a product)} \\ &= {\tilde{x}}^{\top}\\({\mathbf{Q}}^{\top}\mathbf{Q})\\\tilde{x} && \text{(regroup; matrix multiplication is associative)} \\ &= {\tilde{x}}^{\top}\\\mathbf{I}\_p\\\tilde{x} && \text{(definition of an orthogonal matrix)} \\ &= {\tilde{x}}^{\top}\\\tilde{x} && \text{(identity matrix)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 && \text{(definition of the Euclidean norm)} \end{aligned} \\
>
> Both norms are nonnegative square roots, so equal squares give \\\mathopen{}\left\lVert\mathbf{Q}\tilde{x}\right\rVert\mathclose{} = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\. The second step is [Example 18](#exm-dot-product-matmul), the third is [Theorem 19](#thm-transpose-product), and the fourth is [Theorem 8](#thm-matmul-assoc).

> **NOTE:**
>
> **Example 125 (Rotating a vector keeps its length)** With \\\mathbf{Q}\\ from [Example 123](#exm-orthogonal-matrix) and \\\tilde{x}= (3, 4)\\ from [Example 9](#exm-euclidean-norm):
>
> \\ \begin{aligned} \mathbf{Q}\tilde{x} &= \begin{bmatrix} 0.6 \cdot 3 - 0.8 \cdot 4 \\ 0.8 \cdot 3 + 0.6 \cdot 4 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 1.8 - 3.2 \\ 2.4 + 2.4 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} -1.4 \\ 4.8 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{Q}\tilde{x}\right\rVert\mathclose{} &= \sqrt{(-1.4)^2 + 4.8^2} && \text{(definition of the norm)} \\ &= \sqrt{1.96 + 23.04} && \text{(square)} \\ &= \sqrt{25} && \text{(add)} \\ &= 5 && \text{(take the square root)} \end{aligned} \\
>
> which is \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = 5\\.

## 4 Quadratic Forms

> **NOTE:**
>
> **Definition 75 (Quadratic form)** A **quadratic form** is a mathematical expression of the structure
>
> \\{\tilde{x}}^{\top}\\ \mathbf{S}\\ \tilde{x}\\
>
> where \\\tilde{x}\\ is a \\p \times 1\\ vector and \\\mathbf{S}\\ is a \\p \times p\\ matrix.

> **NOTE:**
>
> *Remark 24* (Quadratic forms in statistics). A quadratic form extends the scalar expression \\c x^2\\ to vectors: with \\p = 1\\ and \\\mathbf{S} = \[c\]\\, \\{\tilde{x}}^{\top}\\\mathbf{S}\\\tilde{x}= c x^2\\. With \\p = 2\\,
>
> \\ {\tilde{x}}^{\top} \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix} \tilde{x} = x_1^2 + 2 x_1 x_2 + 3 x_2^2, \\
>
> which is \\1 + 4 + 12 = 17\\ at \\\tilde{x}= (1, 2)\\.
>
> Quadratic forms occur often in statistics:
>
> - The residual sum of squares in linear regression (see [Vector Calculus](vector-calculus.llms.md)) is a quadratic form.
> - The variance of a linear combination of estimates (see [Inference about Gaussian Linear Regression Models](https://morrison-lab.github.io/rme/chapters/Linear-models-overview.html#sec-infer-LMs)) is a quadratic form: \\\operatorname{Var}\mathopen{}\left({\tilde{x}}^{\top}\hat{\tilde{\beta}}\right)\mathclose{} = {\tilde{x}}^{\top}\\\operatorname{Var}\mathopen{}\left(\hat{\tilde{\beta}}\right)\mathclose{}\\\tilde{x}\\.

> **NOTE:**
>
> **Definition 76 (Symmetric part of a square matrix)** The **symmetric part** of a \\p \times p\\ matrix \\\mathbf{S}\\ is
>
> \\\frac{1}{2}\mathopen{}\left(\mathbf{S} + {\mathbf{S}}^{\top}\right)\mathclose{}\\

> **NOTE:**
>
> **Example 126 (The symmetric part of a \\2 \times 2\\ matrix)** For \\\mathbf{S} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}\\, the symmetric part is
>
> \\ \frac{1}{2}\mathopen{}\left( \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix} + \begin{bmatrix} 1 & 0 \\ 2 & 3 \end{bmatrix} \right)\mathclose{} = \frac{1}{2}\begin{bmatrix} 2 & 2 \\ 2 & 6 \end{bmatrix} = \begin{bmatrix} 1 & 1 \\ 1 & 3 \end{bmatrix}, \\
>
> which is symmetric.

> **NOTE:**
>
> **Theorem 66 (A quadratic form depends only on the symmetric part)** If \\\mathbf{S}\\ is a \\p \times p\\ matrix and \\\tilde{x}\\ is a vector of length \\p\\, then
>
> \\ {\tilde{x}}^{\top}\mathbf{S}\tilde{x} = {\tilde{x}}^{\top}\left(\frac{1}{2}(\mathbf{S}+{\mathbf{S}}^{\top})\right)\tilde{x}. \\
>
> So the value of a quadratic form depends only on the symmetric part ([Definition 76](#def-symmetric-part)) of \\\mathbf{S}\\.

> **NOTE:**
>
> *Proof*. The quadratic form \\{\tilde{x}}^{\top}\mathbf{S}\tilde{x}\\ is a \\1 \times 1\\ matrix, so it equals its own transpose:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{S}\tilde{x} &= {\mathopen{}\left({\tilde{x}}^{\top}\mathbf{S}\tilde{x}\right)\mathclose{}}^{\top} && \text{(a } 1 \times 1 \text{ matrix is symmetric)} \\ &= {\tilde{x}}^{\top}\\{\mathbf{S}}^{\top}\\{\mathopen{}\left({\tilde{x}}^{\top}\right)\mathclose{}}^{\top} && \text{(transpose of a product, twice)} \\ &= {\tilde{x}}^{\top}\\{\mathbf{S}}^{\top}\\\tilde{x} && \text{(transposing twice changes nothing)} \end{aligned} \\
>
> Averaging the two expressions for \\{\tilde{x}}^{\top}\mathbf{S}\tilde{x}\\:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{S}\tilde{x} &= \frac{1}{2}\mathopen{}\left({\tilde{x}}^{\top}\mathbf{S}\tilde{x}+ {\tilde{x}}^{\top}\\{\mathbf{S}}^{\top}\\\tilde{x}\right)\mathclose{} && \text{(average of two equal numbers)} \\ &= \frac{1}{2}\\{\tilde{x}}^{\top}\mathopen{}\left(\mathbf{S} + {\mathbf{S}}^{\top}\right)\mathclose{}\tilde{x} && \text{(distributive law)} \\ &= {\tilde{x}}^{\top}\left(\frac{1}{2}(\mathbf{S}+{\mathbf{S}}^{\top})\right)\tilde{x} && \text{(move the scalar } \tfrac{1}{2} \text{ inside)} \end{aligned} \\
>
> The distributive step is [Theorem 9](#thm-matmul-distrib), and the transpose step is [Theorem 19](#thm-transpose-product).

> **NOTE:**
>
> **Example 127 (Replacing a matrix by its symmetric part)** With \\\mathbf{S} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}\\ from [Example 126](#exm-symmetric-part) and \\\tilde{x}= (1, 1)\\:
>
> \\ {\tilde{x}}^{\top}\mathbf{S}\tilde{x}= 1 + 2 + 0 + 3 = 6 \qquad {\tilde{x}}^{\top}\begin{bmatrix} 1 & 1 \\ 1 & 3 \end{bmatrix}\tilde{x}= 1 + 1 + 1 + 3 = 6 \\
>
> Both quadratic forms equal the sum of their matrix’s entries, because every entry of \\\tilde{x}\\ is \\1\\.

## 5 Trace and Matrix Inner Product

> **NOTE:**
>
> **Definition 77 (Trace)** The **trace** of a \\p \times p\\ matrix \\\mathbf{M}\\ is the sum of its diagonal entries:
>
> \\\operatorname{tr}(\mathbf{M}) \stackrel{\text{def}}{=}\sum\_{i=1}^p M\_{ii}\\

> **NOTE:**
>
> **Example 128 (The trace of a \\2 \times 2\\ matrix)** \\ \operatorname{tr}\mathopen{}\left(\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\right)\mathclose{} = 1 + 4 = 5 \\

> **NOTE:**
>
> **Theorem 67 (The trace of a product does not depend on the order)** For an \\m \times n\\ matrix \\\mathbf{A}\\ and an \\n \times m\\ matrix \\\mathbf{B}\\:
>
> \\ \operatorname{tr}\mathopen{}\left(\underbrace{\mathbf{A}\mathbf{B}}\_{m \times m}\right)\mathclose{} = \operatorname{tr}\mathopen{}\left(\underbrace{\mathbf{B}\mathbf{A}}\_{n \times n}\right)\mathclose{} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \operatorname{tr}(\mathbf{A}\mathbf{B}) &= \sum\_{i=1}^{m} (\mathbf{A}\mathbf{B})\_{ii} && \text{(definition of the trace)} \\ &= \sum\_{i=1}^{m} \sum\_{s=1}^{n} a\_{is}\\ b\_{si} && \text{(definition of matrix multiplication)} \\ &= \sum\_{s=1}^{n} \sum\_{i=1}^{m} a\_{is}\\ b\_{si} && \text{(swap the order of two finite sums)} \\ &= \sum\_{s=1}^{n} \sum\_{i=1}^{m} b\_{si}\\ a\_{is} && \text{(multiplication of numbers is commutative)} \\ &= \sum\_{s=1}^{n} (\mathbf{B}\mathbf{A})\_{ss} && \text{(definition of matrix multiplication)} \\ &= \operatorname{tr}(\mathbf{B}\mathbf{A}) && \text{(definition of the trace)} \end{aligned} \\

> **NOTE:**
>
> **Example 129 (Traces of the two products of a \\2 \times 3\\ and a \\3 \times 2\\ matrix)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 2 & 0 \\ 0 & 1 & 3 \end{bmatrix} \qquad \mathbf{B} = \begin{bmatrix} 1 & 0 \\ 2 & 1 \\ 0 & 1 \end{bmatrix} \\
>
> The products are
>
> \\ \mathbf{A}\mathbf{B} = \begin{bmatrix} 5 & 2 \\ 2 & 4 \end{bmatrix} \qquad \mathbf{B}\mathbf{A} = \begin{bmatrix} 1 & 2 & 0 \\ 2 & 5 & 3 \\ 0 & 1 & 3 \end{bmatrix} \\
>
> The trace needs only the diagonal entries. For \\\mathbf{A}\mathbf{B}\\, which is \\2 \times 2\\:
>
> \\ \begin{aligned} \operatorname{tr}(\mathbf{A}\mathbf{B}) &= (\mathbf{A}\mathbf{B})\_{11} + (\mathbf{A}\mathbf{B})\_{22} && \text{(definition of the trace)} \\ &= (1 \cdot 1 + 2 \cdot 2 + 0 \cdot 0) + (0 \cdot 0 + 1 \cdot 1 + 3 \cdot 1) && \text{(definition of matrix multiplication)} \\ &= (1 + 4 + 0) + (0 + 1 + 3) && \text{(multiply)} \\ &= 5 + 4 && \text{(add within each entry)} \\ &= 9 && \text{(add)} \end{aligned} \\
>
> For \\\mathbf{B}\mathbf{A}\\, which is \\3 \times 3\\:
>
> \\ \begin{aligned} \operatorname{tr}(\mathbf{B}\mathbf{A}) &= (\mathbf{B}\mathbf{A})\_{11} + (\mathbf{B}\mathbf{A})\_{22} + (\mathbf{B}\mathbf{A})\_{33} && \text{(definition of the trace)} \\ &= (1 \cdot 1 + 0 \cdot 0) + (2 \cdot 2 + 1 \cdot 1) + (0 \cdot 0 + 1 \cdot 3) && \text{(definition of matrix multiplication)} \\ &= (1 + 0) + (4 + 1) + (0 + 3) && \text{(multiply)} \\ &= 1 + 5 + 3 && \text{(add within each entry)} \\ &= 9 && \text{(add)} \end{aligned} \\
>
> The products have different sizes, but their traces agree.

> **NOTE:**
>
> *Remark 25* (Moving a factor of a triple product). Let \\\mathbf{A}\\ be \\m \times n\\, \\\mathbf{B}\\ be \\n \times k\\, and \\\mathbf{C}\\ be \\k \times m\\, so that \\\mathbf{A}\mathbf{B}\\ is \\m \times k\\ and \\\mathbf{A}\mathbf{B}\mathbf{C}\\ is square. Applying [Theorem 67](#thm-trace-cyclic) to the \\m \times k\\ matrix \\\mathbf{A}\mathbf{B}\\ and the \\k \times m\\ matrix \\\mathbf{C}\\ moves the last factor of the triple product to the front ([Banerjee and Roy 2014, chap. 1](#ref-banerjee2014linear), Theorem 1.5 and eq. 1.17, p. 19):
>
> \\ \begin{aligned} \operatorname{tr}(\mathbf{A}\mathbf{B}\mathbf{C}) &= \operatorname{tr}\mathopen{}\left((\mathbf{A}\mathbf{B})\\\mathbf{C}\right)\mathclose{} && \text{(matrix multiplication is associative)} \\ &= \operatorname{tr}\mathopen{}\left(\mathbf{C}\\(\mathbf{A}\mathbf{B})\right)\mathclose{} && \text{(the theorem, applied to the two factors } \mathbf{A}\mathbf{B} \text{ and } \mathbf{C} \text{)} \\ &= \operatorname{tr}(\mathbf{C}\mathbf{A}\mathbf{B}) && \text{(matrix multiplication is associative)} \end{aligned} \\
>
> For example, let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix} \qquad \mathbf{B} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \end{bmatrix} \qquad \mathbf{C} = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix} \\
>
> Then
>
> \\ \mathbf{A}\mathbf{B} = \begin{bmatrix} 1 \cdot 1 + 2 \cdot 1 & 1 \cdot 0 + 2 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 1 & 0 \cdot 0 + 1 \cdot 1 \end{bmatrix} = \begin{bmatrix} 3 & 2 \\ 1 & 1 \end{bmatrix} \qquad \mathbf{C}\mathbf{A} = \begin{bmatrix} 0 \cdot 1 + 1 \cdot 0 & 0 \cdot 2 + 1 \cdot 1 \\ 1 \cdot 1 + 0 \cdot 0 & 1 \cdot 2 + 0 \cdot 1 \end{bmatrix} = \begin{bmatrix} 0 & 1 \\ 1 & 2 \end{bmatrix} \\
>
> so
>
> \\ (\mathbf{A}\mathbf{B})\\\mathbf{C} = \begin{bmatrix} 3 \cdot 0 + 2 \cdot 1 & 3 \cdot 1 + 2 \cdot 0 \\ 1 \cdot 0 + 1 \cdot 1 & 1 \cdot 1 + 1 \cdot 0 \end{bmatrix} = \begin{bmatrix} 2 & 3 \\ 1 & 1 \end{bmatrix} \qquad (\mathbf{C}\mathbf{A})\\\mathbf{B} = \begin{bmatrix} 0 \cdot 1 + 1 \cdot 1 & 0 \cdot 0 + 1 \cdot 1 \\ 1 \cdot 1 + 2 \cdot 1 & 1 \cdot 0 + 2 \cdot 1 \end{bmatrix} = \begin{bmatrix} 1 & 1 \\ 3 & 2 \end{bmatrix} \\
>
> and both traces are the same: \\\operatorname{tr}(\mathbf{A}\mathbf{B}\mathbf{C}) = 2 + 1 = 3\\ and \\\operatorname{tr}(\mathbf{C}\mathbf{A}\mathbf{B}) = 1 + 2 = 3\\.

> **NOTE:**
>
> **Definition 78 (Matrix inner product)** The **inner product** of two \\n \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\ is
>
> \\ \left\langle \mathbf{A}, \mathbf{B} \right\rangle \stackrel{\text{def}}{=} \operatorname{tr}\mathopen{}\left(\underbrace{{\mathbf{A}}^{\top}\mathbf{B}}\_{p \times p}\right)\mathclose{} \\

Banerjee and Roy ([2014, chap. 15](#ref-banerjee2014linear), eq. 15.7, p. 491) defines the same inner product on \\n \times p\\ matrices with the trace.

> **NOTE:**
>
> **Theorem 68 (The matrix inner product multiplies matching entries)** For two \\n \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\:
>
> \\ \left\langle \mathbf{A}, \mathbf{B} \right\rangle = \sum\_{i=1}^{n} \sum\_{j=1}^{p} a\_{ij}\\ b\_{ij} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \left\langle \mathbf{A}, \mathbf{B} \right\rangle &= \operatorname{tr}({\mathbf{A}}^{\top}\mathbf{B}) && \text{(definition of the inner product)} \\ &= \sum\_{j=1}^{p} ({\mathbf{A}}^{\top}\mathbf{B})\_{jj} && \text{(definition of the trace)} \\ &= \sum\_{j=1}^{p} \sum\_{i=1}^{n} ({\mathbf{A}}^{\top})\_{ji}\\ b\_{ij} && \text{(definition of matrix multiplication)} \\ &= \sum\_{j=1}^{p} \sum\_{i=1}^{n} a\_{ij}\\ b\_{ij} && \text{(definition of the transpose)} \\ &= \sum\_{i=1}^{n} \sum\_{j=1}^{p} a\_{ij}\\ b\_{ij} && \text{(swap the order of two finite sums)} \end{aligned} \\

> **NOTE:**
>
> **Example 130 (The inner product of two \\2 \times 2\\ matrices)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \qquad \mathbf{B} = \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix} \\
>
> From [Definition 78](#def-matrix-inner-product):
>
> \\ \begin{aligned} \left\langle \mathbf{A}, \mathbf{B} \right\rangle &= \operatorname{tr}\mathopen{}\left({\mathbf{A}}^{\top}\mathbf{B}\right)\mathclose{} && \text{(definition of the inner product)} \\ &= \operatorname{tr}\mathopen{}\left( {\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}}^{\top} \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix} \right)\mathclose{} && \text{(substitute)} \\ &= \operatorname{tr}\mathopen{}\left( \begin{bmatrix} 1 & 3 \\ 2 & 4 \end{bmatrix} \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix} \right)\mathclose{} && \text{(definition of the transpose)} \\ &= \operatorname{tr}\mathopen{}\left(\begin{bmatrix} -3 & 7 \\ -4 & 10 \end{bmatrix}\right)\mathclose{} && \text{(multiply)} \\ &= -3 + 10 && \text{(definition of the trace)} \\ &= 7 && \text{(add)} \end{aligned} \\
>
> From [Theorem 68](#thm-matrix-inner-product-entries):
>
> \\ \begin{aligned} \left\langle \mathbf{A}, \mathbf{B} \right\rangle &= 1 \cdot 0 + 2 \cdot 1 + 3 \cdot(-1) + 4 \cdot 2 && \text{(multiply matching entries and add)} \\ &= 0 + 2 - 3 + 8 && \text{(multiply)} \\ &= 7 && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> *Remark 26* (The matrix inner product as a dot product). [Theorem 68](#thm-matrix-inner-product-entries) says that the matrix inner product is the dot product ([Definition 7](#def-dot-product)) of the two matrices’ entries, each listed as one vector of length \\np\\, with both matrices’ entries listed in the same order.
>
> For example, listing the entries of \\\mathbf{A}\\ and \\\mathbf{B}\\ in [Example 130](#exm-matrix-inner-product) row by row gives \\(1, 2, 3, 4)\\ and \\(0, 1, -1, 2)\\, and \\(1, 2, 3, 4) \cdot (0, 1, -1, 2) = 7 = \left\langle \mathbf{A}, \mathbf{B} \right\rangle\\.

> **NOTE:**
>
> **Definition 79 (Frobenius norm)** The **Frobenius norm** of an \\n \times p\\ matrix \\\mathbf{A}\\ is
>
> \\ \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F \stackrel{\text{def}}{=}\sqrt{\left\langle \mathbf{A}, \mathbf{A} \right\rangle} \\
>
> where \\\left\langle \cdot, \cdot \right\rangle\\ is the matrix inner product ([Definition 78](#def-matrix-inner-product)).

> **NOTE:**
>
> **Example 131 (The Frobenius norm of a \\2 \times 2\\ matrix)** For \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F &= \sqrt{\left\langle \mathbf{A}, \mathbf{A} \right\rangle} && \text{(definition of the Frobenius norm)} \\ &= \sqrt{1 \cdot 1 + 2 \cdot 2 + 3 \cdot 3 + 4 \cdot 4} && \text{(sum of products of matching entries)} \\ &= \sqrt{1 + 4 + 9 + 16} && \text{(multiply)} \\ &= \sqrt{30} && \text{(add)} \end{aligned} \\
>
> The second step is [Theorem 68](#thm-matrix-inner-product-entries).

> **NOTE:**
>
> *Remark 27* (The Frobenius norm is the Euclidean norm of the entries). By [Theorem 68](#thm-matrix-inner-product-entries), \\\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F^2 = \sum\_{i=1}^{n} \sum\_{j=1}^{p} a\_{ij}^2\\, a sum of squares, so the square root is always defined. \\\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F\\ is the Euclidean norm ([Definition 14](#def-euclidean-norm)) of the entries of \\\mathbf{A}\\, listed as one vector of length \\np\\ ([Banerjee and Roy 2014, chap. 15](#ref-banerjee2014linear), Definition 15.4, p. 492).
>
> For example, listing the entries of \\\mathbf{A}\\ in [Example 131](#exm-frobenius-norm) row by row gives the vector \\(1, 2, 3, 4)\\ of length \\2 \cdot 2 = 4\\, and \\\mathopen{}\left\lVert(1, 2, 3, 4)\right\rVert\mathclose{} = \sqrt{1 + 4 + 9 + 16} = \sqrt{30} = \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F\\.

## 6 Matrix Decompositions

> **NOTE:**
>
> **Definition 80 (Eigenvalue and eigenvector)** Let \\\mathbf{A}\\ be a \\p \times p\\ matrix. A real number \\\lambda\\ is an **eigenvalue** of \\\mathbf{A}\\ if some real vector \\\tilde{v} \neq \tilde{0}\\ of length \\p\\ satisfies
>
> \\ \underbrace{\mathbf{A}}\_{p \times p}\\\underbrace{\tilde{v}}\_{p \times 1} = \lambda\\\underbrace{\tilde{v}}\_{p \times 1} \\
>
> Any such \\\tilde{v}\\ is an **eigenvector** of \\\mathbf{A}\\ for \\\lambda\\.

> **NOTE:**
>
> **Example 132 (Eigenvectors of a \\2 \times 2\\ matrix)** Let \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\.
>
> \\(1, 1)\\ is an eigenvector for the eigenvalue \\3\\:
>
> \\ \begin{aligned} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 1 \\ 1 \end{bmatrix} &= \begin{bmatrix} 2 + 1 \\ 1 + 2 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= 3 \begin{bmatrix} 1 \\ 1 \end{bmatrix} && \text{(factor out } 3 \text{)} \end{aligned} \\
>
> \\(1, -1)\\ is an eigenvector for the eigenvalue \\1\\:
>
> \\ \begin{aligned} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix} &= \begin{bmatrix} 2 - 1 \\ 1 - 2 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= 1 \begin{bmatrix} 1 \\ -1 \end{bmatrix} && \text{(factor out } 1 \text{)} \end{aligned} \\

> **NOTE:**
>
> *Remark 28* (Multiples of an eigenvector). Multiplying by \\\mathbf{A}\\ rescales an eigenvector by \\\lambda\\ and does not change the line it lies on. Any nonzero multiple \\c\\\tilde{v}\\ of an eigenvector is also an eigenvector for the same \\\lambda\\:
>
> \\ \begin{aligned} \mathbf{A}(c\\\tilde{v}) &= c\\\mathbf{A}\tilde{v} && \text{(move the scalar } c \text{ to the front)} \\ &= c\\\lambda\tilde{v} && \text{(} \tilde{v} \text{ is an eigenvector for } \lambda \text{)} \\ &= \lambda\\(c\\\tilde{v}) && \text{(multiplication of numbers is commutative)} \end{aligned} \\
>
> For example, in [Example 132](#exm-eigenvalue), \\2\\(1, 1) = (2, 2)\\ is also an eigenvector for the eigenvalue \\3\\:
>
> \\ \begin{aligned} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 2 \\ 2 \end{bmatrix} &= \begin{bmatrix} 2 \cdot 2 + 1 \cdot 2 \\ 1 \cdot 2 + 2 \cdot 2 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 4 + 2 \\ 2 + 4 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 6 \\ 6 \end{bmatrix} && \text{(add)} \\ &= 3 \begin{bmatrix} 2 \\ 2 \end{bmatrix} && \text{(factor out } 3 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 133 (A vector that is not an eigenvector)** For the same \\\mathbf{A}\\, \\(1, 0)\\ is not an eigenvector:
>
> \\ \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 1 \\ 0 \end{bmatrix} = \begin{bmatrix} 2 \\ 1 \end{bmatrix}, \\
>
> and no number \\\lambda\\ gives \\(2, 1) = \lambda\\(1, 0)\\, because the second entries would need \\1 = \lambda \cdot 0\\.

> **NOTE:**
>
> *Remark 29* (Real and complex eigenvalues). These notes take \\\lambda\\ and \\\tilde{v}\\ to be real. Banerjee and Roy ([2014, chap. 11](#ref-banerjee2014linear), Definition 11.1, pp. 312-313) also allows [complex](algebra.llms.md#def-complex-number) eigenvalues and eigenvectors, because some real matrices, such as a rotation by \\90\\ degrees, have no real eigenvalues ([Banerjee and Roy 2014, chap. 11](#ref-banerjee2014linear), Example 11.2, p. 312).
>
> For example, \\\mathbf{R} = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}\\ rotates each vector in the plane counterclockwise by \\90\\ degrees: \\\mathbf{R}\\(v_1, v_2) = (-v_2, v_1)\\. Suppose \\\mathbf{R}\tilde{v} = \lambda\tilde{v}\\ for a real number \\\lambda\\. Matching entries gives \\-v_2 = \lambda v_1\\ and \\v_1 = \lambda v_2\\. Substituting the second equation into the first gives \\-v_2 = \lambda^2 v_2\\, so \\(1 + \lambda^2)\\ v_2 = 0\\. Since \\1 + \lambda^2 \> 0\\, \\v_2 = 0\\, and then \\v_1 = \lambda v_2 = 0\\. So the only solution is \\\tilde{v} = \tilde{0}\\, and \\\mathbf{R}\\ has no real eigenvalue.

> **TIP:**
>
> Chapter 14 of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown shows the geometric meaning of eigenvectors and eigenvalues:
>
> - [Eigenvectors and eigenvalues](https://www.youtube.com/watch?v=PFDu9oVAE-g) shows how certain vectors maintain their direction during a linear transformation and are merely stretched or squished by an eigenvalue factor ([Definition 80](#def-eigenvalue)).

> **NOTE:**
>
> **Theorem 69 (Spectral theorem for symmetric matrices)** If \\\mathbf{A}\\ is a \\p \times p\\ symmetric matrix ([Definition 67](#def-symmetric-matrix)) with real entries, then there are a \\p \times p\\ orthogonal matrix \\\mathbf{Q}\\ ([Definition 74](#def-orthogonal-matrix)) and a \\p \times p\\ diagonal matrix \\\mathbf{\Lambda}\\ ([Definition 68](#def-diagonal-matrix)) with real diagonal entries \\\lambda_1, \ldots, \lambda_p\\ such that
>
> \\ \underbrace{\mathbf{A}}\_{p \times p} = \underbrace{\mathbf{Q}}\_{p \times p}\\ \underbrace{\mathbf{\Lambda}}\_{p \times p}\\ \underbrace{{\mathbf{Q}}^{\top}}\_{p \times p} \\
>
> Each \\\lambda_i\\ is an eigenvalue of \\\mathbf{A}\\ ([Definition 80](#def-eigenvalue)), and column \\i\\ of \\\mathbf{Q}\\ is an eigenvector of \\\mathbf{A}\\ for \\\lambda_i\\.

> **NOTE:**
>
> *Remark 30* (An equivalent form of the spectral theorem). The proof, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\p\\, is outside the scope of these notes; see Banerjee and Roy ([2014, chap. 11](#ref-banerjee2014linear), Theorem 11.27, p. 349), which states the result in the equivalent form \\{\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q} = \mathbf{\Lambda}\\. The two forms are equivalent because \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\ ([Remark 23](#rem-orthogonal-matrix-columns)). Multiplying \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ by \\{\mathbf{Q}}^{\top}\\ on the left and by \\\mathbf{Q}\\ on the right gives
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q} &= {\mathbf{Q}}^{\top}\mathopen{}\left(\mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\right)\mathclose{}\mathbf{Q} && \text{(substitute)} \\ &= \mathopen{}\left({\mathbf{Q}}^{\top}\mathbf{Q}\right)\mathclose{}\mathbf{\Lambda}\mathopen{}\left({\mathbf{Q}}^{\top}\mathbf{Q}\right)\mathclose{} && \text{(regroup; matrix multiplication is associative)} \\ &= \mathbf{I}\_p\mathbf{\Lambda}\mathbf{I}\_p && \text{(} \mathbf{Q} \text{ is orthogonal)} \\ &= \mathbf{\Lambda} && \text{(multiplying by } \mathbf{I}\_p \text{ changes nothing)} \end{aligned} \\
>
> Multiplying \\{\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q} = \mathbf{\Lambda}\\ by \\\mathbf{Q}\\ on the left and by \\{\mathbf{Q}}^{\top}\\ on the right gives back the first form:
>
> \\ \begin{aligned} \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top} &= \mathbf{Q}\mathopen{}\left({\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q}\right)\mathclose{}{\mathbf{Q}}^{\top} && \text{(substitute)} \\ &= \mathopen{}\left(\mathbf{Q}{\mathbf{Q}}^{\top}\right)\mathclose{}\mathbf{A}\mathopen{}\left(\mathbf{Q}{\mathbf{Q}}^{\top}\right)\mathclose{} && \text{(regroup; matrix multiplication is associative)} \\ &= \mathbf{I}\_p\mathbf{A}\mathbf{I}\_p && \text{(} \mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p \text{)} \\ &= \mathbf{A} && \text{(multiplying by } \mathbf{I}\_p \text{ changes nothing)} \end{aligned} \\
>
> For example, let \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ and \\\mathbf{Q} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}\\, which is symmetric, so \\{\mathbf{Q}}^{\top} = \mathbf{Q}\\. Then
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q} &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(substitute)} \\ &= \frac{1}{\sqrt{2}} \cdot\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(move the scalars to the front)} \\ &= \frac{1}{2} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(multiply the scalars)} \\ &= \frac{1}{2} \begin{bmatrix} 1 \cdot 2 + 1 \cdot 1 & 1 \cdot 1 + 1 \cdot 2 \\ 1 \cdot 2 + (-1) \cdot 1 & 1 \cdot 1 + (-1) \cdot 2 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(definition of matrix multiplication, first two matrices)} \\ &= \frac{1}{2} \begin{bmatrix} 2 + 1 & 1 + 2 \\ 2 - 1 & 1 - 2 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{2} \begin{bmatrix} 3 & 3 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(add)} \\ &= \frac{1}{2} \begin{bmatrix} 3 \cdot 1 + 3 \cdot 1 & 3 \cdot 1 + 3 \cdot(-1) \\ 1 \cdot 1 + (-1) \cdot 1 & 1 \cdot 1 + (-1) \cdot(-1) \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \frac{1}{2} \begin{bmatrix} 3 + 3 & 3 - 3 \\ 1 - 1 & 1 + 1 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{2} \begin{bmatrix} 6 & 0 \\ 0 & 2 \end{bmatrix} && \text{(add)} \\ &= \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} && \text{(multiply by } \tfrac{1}{2} \text{)} \end{aligned} \\
>
> a diagonal matrix with the eigenvalues \\3\\ and \\1\\ of \\\mathbf{A}\\ from [Example 132](#exm-eigenvalue) on its diagonal.

> **NOTE:**
>
> **Definition 81 (Eigendecomposition (spectral decomposition))** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric matrix with real entries. An **eigendecomposition**, or **spectral decomposition**, of \\\mathbf{A}\\ is a factorization
>
> \\ \mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top} \\
>
> with \\\mathbf{Q}\\ a \\p \times p\\ orthogonal matrix ([Definition 74](#def-orthogonal-matrix)) and \\\mathbf{\Lambda}\\ a \\p \times p\\ diagonal matrix ([Definition 68](#def-diagonal-matrix)). [Theorem 69](#thm-spectral) says that every such \\\mathbf{A}\\ has one.

> **NOTE:**
>
> **Example 134 (An eigendecomposition of a \\2 \times 2\\ symmetric matrix)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, [Example 132](#exm-eigenvalue) found the eigenvectors \\(1, 1)\\ for \\3\\ and \\(1, -1)\\ for \\1\\. They are orthogonal ([Definition 13](#def-orthogonal-vectors)):
>
> \\ \begin{aligned} (1, 1) \cdot (1, -1) &= 1 \cdot 1 + 1 \cdot(-1) && \text{(definition of the dot product)} \\ &= 1 - 1 && \text{(multiply)} \\ &= 0 && \text{(add)} \end{aligned} \\
>
> Each has norm \\\sqrt{1^2 + 1^2} = \sqrt{2}\\ ([Definition 14](#def-euclidean-norm)), so dividing each by \\\sqrt{2}\\ gives two orthonormal eigenvectors ([Definition 17](#def-orthonormal-vectors)). Put them in the columns of \\\mathbf{Q}\\, and the matching eigenvalues on the diagonal of \\\mathbf{\Lambda}\\:
>
> \\ \mathbf{Q} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \qquad \mathbf{\Lambda} = \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} \\
>
> This \\\mathbf{Q}\\ is symmetric, so \\{\mathbf{Q}}^{\top} = \mathbf{Q}\\. Then
>
> \\ \begin{aligned} \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top} &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(substitute)} \\ &= \frac{1}{\sqrt{2}} \cdot\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(move the scalars to the front)} \\ &= \frac{1}{2} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(multiply the scalars)} \\ &= \frac{1}{2} \begin{bmatrix} 1 \cdot 3 + 1 \cdot 0 & 1 \cdot 0 + 1 \cdot 1 \\ 1 \cdot 3 + (-1) \cdot 0 & 1 \cdot 0 + (-1) \cdot 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(definition of matrix multiplication, first two matrices)} \\ &= \frac{1}{2} \begin{bmatrix} 3 + 0 & 0 + 1 \\ 3 + 0 & 0 - 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{2} \begin{bmatrix} 3 & 1 \\ 3 & -1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(add)} \\ &= \frac{1}{2} \begin{bmatrix} 3 \cdot 1 + 1 \cdot 1 & 3 \cdot 1 + 1 \cdot(-1) \\ 3 \cdot 1 + (-1) \cdot 1 & 3 \cdot 1 + (-1) \cdot(-1) \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \frac{1}{2} \begin{bmatrix} 3 + 1 & 3 - 1 \\ 3 - 1 & 3 + 1 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{2} \begin{bmatrix} 4 & 2 \\ 2 & 4 \end{bmatrix} && \text{(add)} \\ &= \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} && \text{(multiply by } \tfrac{1}{2} \text{)} \end{aligned} \\
>
> which is \\\mathbf{A}\\.

> **NOTE:**
>
> *Remark 31* (An eigendecomposition is not unique). A symmetric matrix can have more than one eigendecomposition. Reordering the eigenvalues on the diagonal of \\\mathbf{\Lambda}\\, and the columns of \\\mathbf{Q}\\ with them, gives another one, and so does multiplying a column of \\\mathbf{Q}\\ by \\-1\\.
>
> For example, take \\\mathbf{A}\\ from [Example 134](#exm-spectral). Swapping the two eigenvalues and the two columns gives
>
> \\ \mathbf{Q}\_1 = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} \qquad \mathbf{\Lambda}\_1 = \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix} \\
>
> and multiplying the second column of \\\mathbf{Q}\\ by \\-1\\ gives
>
> \\ \mathbf{Q}\_2 = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} \qquad \mathbf{\Lambda}\_2 = \mathbf{\Lambda} = \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} \\
>
> The columns of \\\mathbf{Q}\_1\\ and \\\mathbf{Q}\_2\\ are the columns of \\\mathbf{Q}\\, reordered or multiplied by \\-1\\, so they are still orthonormal, and \\\mathbf{Q}\_1\\ and \\\mathbf{Q}\_2\\ are orthogonal. Both products give back \\\mathbf{A}\\:
>
> \\ \begin{aligned} \mathbf{Q}\_1\mathbf{\Lambda}\_1{\mathbf{Q}\_1}^{\top} &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix} {\mathopen{}\left(\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}\right)\mathclose{}}^{\top} && \text{(substitute)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \frac{1}{\sqrt{2}} \cdot\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(move the scalars to the front)} \\ &= \frac{1}{2} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(multiply the scalars)} \\ &= \frac{1}{2} \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 0 + 1 \cdot 3 \\ -1 \cdot 1 + 1 \cdot 0 & -1 \cdot 0 + 1 \cdot 3 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(definition of matrix multiplication, first two matrices)} \\ &= \frac{1}{2} \begin{bmatrix} 1 + 0 & 0 + 3 \\ -1 + 0 & 0 + 3 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{2} \begin{bmatrix} 1 & 3 \\ -1 & 3 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(add)} \\ &= \frac{1}{2} \begin{bmatrix} 1 \cdot 1 + 3 \cdot 1 & 1 \cdot(-1) + 3 \cdot 1 \\ -1 \cdot 1 + 3 \cdot 1 & -1 \cdot(-1) + 3 \cdot 1 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \frac{1}{2} \begin{bmatrix} 1 + 3 & -1 + 3 \\ -1 + 3 & 1 + 3 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{2} \begin{bmatrix} 4 & 2 \\ 2 & 4 \end{bmatrix} && \text{(add)} \\ &= \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} && \text{(multiply by } \tfrac{1}{2} \text{)} \end{aligned} \\
>
> \\ \begin{aligned} \mathbf{Q}\_2\mathbf{\Lambda}\_2{\mathbf{Q}\_2}^{\top} &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} {\mathopen{}\left(\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}\right)\mathclose{}}^{\top} && \text{(substitute)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \frac{1}{\sqrt{2}} \cdot\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} && \text{(move the scalars to the front)} \\ &= \frac{1}{2} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} && \text{(multiply the scalars)} \\ &= \frac{1}{2} \begin{bmatrix} 1 \cdot 3 + (-1) \cdot 0 & 1 \cdot 0 + (-1) \cdot 1 \\ 1 \cdot 3 + 1 \cdot 0 & 1 \cdot 0 + 1 \cdot 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} && \text{(definition of matrix multiplication, first two matrices)} \\ &= \frac{1}{2} \begin{bmatrix} 3 + 0 & 0 - 1 \\ 3 + 0 & 0 + 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{2} \begin{bmatrix} 3 & -1 \\ 3 & 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} && \text{(add)} \\ &= \frac{1}{2} \begin{bmatrix} 3 \cdot 1 + (-1) \cdot(-1) & 3 \cdot 1 + (-1) \cdot 1 \\ 3 \cdot 1 + 1 \cdot(-1) & 3 \cdot 1 + 1 \cdot 1 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \frac{1}{2} \begin{bmatrix} 3 + 1 & 3 - 1 \\ 3 - 1 & 3 + 1 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{2} \begin{bmatrix} 4 & 2 \\ 2 & 4 \end{bmatrix} && \text{(add)} \\ &= \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} && \text{(multiply by } \tfrac{1}{2} \text{)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 70 (Singular value decomposition)** Let \\\mathbf{A}\\ be an \\n \times p\\ matrix with real entries and \\\operatorname{rank}(\mathbf{A}) = r\\ ([Definition 38](#def-rank)). Then there are an \\n \times n\\ orthogonal matrix \\\mathbf{U}\\, a \\p \times p\\ orthogonal matrix \\\mathbf{V}\\ ([Definition 74](#def-orthogonal-matrix)), and numbers \\\sigma_1 \ge \sigma_2 \ge \cdots \ge \sigma_r \> 0\\ such that
>
> \\ \underbrace{\mathbf{A}}\_{n \times p} = \underbrace{\mathbf{U}}\_{n \times n}\\ \underbrace{\mathbf{D}}\_{n \times p}\\ \underbrace{{\mathbf{V}}^{\top}}\_{p \times p} \\
>
> where \\\mathbf{D}\\ has entries \\d\_{ii} = \sigma_i\\ for \\i = 1, \ldots, r\\ and every other entry \\0\\.

> **NOTE:**
>
> *Remark 32* (The SVD applies to every real matrix). The proof is outside the scope of these notes; see Banerjee and Roy ([2014, chap. 12](#ref-banerjee2014linear), Theorem 12.1, p. 373). Unlike the spectral theorem ([Theorem 69](#thm-spectral)), [Theorem 70](#thm-svd) applies to every real matrix, including one that is not square or not symmetric.
>
> For example, the \\1 \times 2\\ matrix \\\mathbf{A} = \begin{bmatrix} 1 & 1 \end{bmatrix}\\ is not square, so [Theorem 69](#thm-spectral) does not apply to it. It has rank \\1\\, and [Theorem 70](#thm-svd) holds with \\\mathbf{U} = \begin{bmatrix} 1 \end{bmatrix}\\, \\\mathbf{D} = \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix}\\, and \\\mathbf{V}\\ the orthogonal matrix \\\mathbf{Q}\\ from [Example 134](#exm-spectral), which is symmetric, so \\{\mathbf{V}}^{\top} = \mathbf{V}\\:
>
> \\ \begin{aligned} \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top} &= \begin{bmatrix} 1 \end{bmatrix} \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(substitute)} \\ &= \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(multiplying by the } 1 \times 1 \text{ identity changes nothing)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(move the scalar to the front)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} \sqrt{2} \cdot 1 + 0 \cdot 1 & \sqrt{2} \cdot 1 + 0 \cdot(-1) \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} \sqrt{2} + 0 & \sqrt{2} + 0 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} \sqrt{2} & \sqrt{2} \end{bmatrix} && \text{(add)} \\ &= \begin{bmatrix} 1 & 1 \end{bmatrix} && \text{(divide by } \sqrt{2} \text{)} \end{aligned} \\
>
> \\\mathbf{U}\\ is orthogonal because \\{\mathbf{U}}^{\top}\mathbf{U} = \begin{bmatrix} 1 \end{bmatrix} = \mathbf{I}\_1\\, and the single singular value is \\\sigma_1 = \sqrt{2}\\.

> **NOTE:**
>
> **Definition 82 (Singular value decomposition and singular values)** Let \\\mathbf{A}\\ be an \\n \times p\\ matrix with real entries and \\\operatorname{rank}(\mathbf{A}) = r\\. A **singular value decomposition** (SVD) of \\\mathbf{A}\\ is a factorization \\\mathbf{A} = \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}\\ with \\\mathbf{U}\\, \\\mathbf{D}\\ and \\\mathbf{V}\\ as in [Theorem 70](#thm-svd). The numbers \\\sigma_1 \ge \cdots \ge \sigma_r \> 0\\ on the diagonal of \\\mathbf{D}\\ are the **singular values** of \\\mathbf{A}\\.

> **NOTE:**
>
> **Example 135 (An SVD of a \\3 \times 2\\ matrix)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix} \qquad \mathbf{U} = \begin{bmatrix} \frac{1}{\sqrt{2}} & 0 & \frac{1}{\sqrt{2}} \\ 0 & 1 & 0 \\ \frac{1}{\sqrt{2}} & 0 & -\frac{1}{\sqrt{2}} \end{bmatrix} \qquad \mathbf{D} = \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix} \qquad \mathbf{V} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \\
>
> \\\mathbf{V}\\ is the orthogonal matrix \\\mathbf{Q}\\ from [Example 134](#exm-spectral). \\\mathbf{U}\\ is orthogonal too. Entry \\(i, j)\\ of \\{\mathbf{U}}^{\top}\mathbf{U}\\ is the dot product of columns \\i\\ and \\j\\ of \\\mathbf{U}\\, and those columns are \\\tilde{u}\_1 = (\frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}})\\, \\\tilde{u}\_2 = (0, 1, 0)\\ and \\\tilde{u}\_3 = (\frac{1}{\sqrt{2}}, 0, -\frac{1}{\sqrt{2}})\\:
>
> \\ \begin{aligned} \tilde{u}\_1 \cdot \tilde{u}\_1 &= \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}} + 0 \cdot 0 + \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}} && \text{(definition of the dot product)} \\ &= \tfrac{1}{2} + 0 + \tfrac{1}{2} && \text{(multiply)} \\ &= 1 && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \tilde{u}\_2 \cdot \tilde{u}\_2 &= 0 \cdot 0 + 1 \cdot 1 + 0 \cdot 0 && \text{(definition of the dot product)} \\ &= 0 + 1 + 0 && \text{(multiply)} \\ &= 1 && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \tilde{u}\_3 \cdot \tilde{u}\_3 &= \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}} + 0 \cdot 0 + \mathopen{}\left(-\tfrac{1}{\sqrt{2}}\right)\mathclose{} \cdot\mathopen{}\left(-\tfrac{1}{\sqrt{2}}\right)\mathclose{} && \text{(definition of the dot product)} \\ &= \tfrac{1}{2} + 0 + \tfrac{1}{2} && \text{(multiply)} \\ &= 1 && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \tilde{u}\_1 \cdot \tilde{u}\_2 &= \tfrac{1}{\sqrt{2}} \cdot 0 + 0 \cdot 1 + \tfrac{1}{\sqrt{2}} \cdot 0 && \text{(definition of the dot product)} \\ &= 0 + 0 + 0 && \text{(multiply)} \\ &= 0 && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \tilde{u}\_1 \cdot \tilde{u}\_3 &= \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}} + 0 \cdot 0 + \tfrac{1}{\sqrt{2}} \cdot\mathopen{}\left(-\tfrac{1}{\sqrt{2}}\right)\mathclose{} && \text{(definition of the dot product)} \\ &= \tfrac{1}{2} + 0 - \tfrac{1}{2} && \text{(multiply)} \\ &= 0 && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \tilde{u}\_2 \cdot \tilde{u}\_3 &= 0 \cdot\tfrac{1}{\sqrt{2}} + 1 \cdot 0 + 0 \cdot\mathopen{}\left(-\tfrac{1}{\sqrt{2}}\right)\mathclose{} && \text{(definition of the dot product)} \\ &= 0 + 0 + 0 && \text{(multiply)} \\ &= 0 && \text{(add)} \end{aligned} \\
>
> The dot product is symmetric, so these six values fill in all nine entries, and \\{\mathbf{U}}^{\top}\mathbf{U} = \mathbf{I}\_3\\.
>
> \\\mathbf{V}\\ is symmetric, so \\{\mathbf{V}}^{\top} = \mathbf{V}\\. Then
>
> \\ \begin{aligned} \mathbf{D}{\mathbf{V}}^{\top} &= \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(substitute)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(move the scalar to the front)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} 2 \cdot 1 + 0 \cdot 1 & 2 \cdot 1 + 0 \cdot(-1) \\ 0 \cdot 1 + \sqrt{2} \cdot 1 & 0 \cdot 1 + \sqrt{2} \cdot(-1) \\ 0 \cdot 1 + 0 \cdot 1 & 0 \cdot 1 + 0 \cdot(-1) \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} 2 + 0 & 2 + 0 \\ 0 + \sqrt{2} & 0 - \sqrt{2} \\ 0 + 0 & 0 + 0 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} 2 & 2 \\ \sqrt{2} & -\sqrt{2} \\ 0 & 0 \end{bmatrix} && \text{(add)} \\ &= \begin{bmatrix} \sqrt{2} & \sqrt{2} \\ 1 & -1 \\ 0 & 0 \end{bmatrix} && \text{(divide by } \sqrt{2} \text{)} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top} &= \begin{bmatrix} \frac{1}{\sqrt{2}} & 0 & \frac{1}{\sqrt{2}} \\ 0 & 1 & 0 \\ \frac{1}{\sqrt{2}} & 0 & -\frac{1}{\sqrt{2}} \end{bmatrix} \begin{bmatrix} \sqrt{2} & \sqrt{2} \\ 1 & -1 \\ 0 & 0 \end{bmatrix} && \text{(substitute)} \\ &= \begin{bmatrix} \frac{1}{\sqrt{2}} \cdot\sqrt{2} + 0 \cdot 1 + \frac{1}{\sqrt{2}} \cdot 0 & \frac{1}{\sqrt{2}} \cdot\sqrt{2} + 0 \cdot(-1) + \frac{1}{\sqrt{2}} \cdot 0 \\ 0 \cdot\sqrt{2} + 1 \cdot 1 + 0 \cdot 0 & 0 \cdot\sqrt{2} + 1 \cdot(-1) + 0 \cdot 0 \\ \frac{1}{\sqrt{2}} \cdot\sqrt{2} + 0 \cdot 1 - \frac{1}{\sqrt{2}} \cdot 0 & \frac{1}{\sqrt{2}} \cdot\sqrt{2} + 0 \cdot(-1) - \frac{1}{\sqrt{2}} \cdot 0 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 + 0 + 0 & 1 + 0 + 0 \\ 0 + 1 + 0 & 0 - 1 + 0 \\ 1 + 0 - 0 & 1 + 0 - 0 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> which is \\\mathbf{A}\\. \\\mathbf{A}\\ has rank \\2\\, because its two columns are linearly independent, and its singular values are \\\sigma_1 = 2\\ and \\\sigma_2 = \sqrt{2}\\.

> **NOTE:**
>
> *Remark 33* (An SVD is not unique). An SVD is not unique ([Banerjee and Roy 2014, chap. 12](#ref-banerjee2014linear), Examples 12.2 and 12.3, p. 378). For any \\i \le r\\, multiplying column \\i\\ of both \\\mathbf{U}\\ and \\\mathbf{V}\\ by \\-1\\ gives another one. The singular values do not depend on which SVD is chosen ([Banerjee and Roy 2014, chap. 12](#ref-banerjee2014linear), pp. 371 and 378).
>
> For example, in [Example 135](#exm-svd), multiplying the first columns of \\\mathbf{U}\\ and \\\mathbf{V}\\ by \\-1\\ gives
>
> \\ \mathbf{U}\_1 = \begin{bmatrix} -\frac{1}{\sqrt{2}} & 0 & \frac{1}{\sqrt{2}} \\ 0 & 1 & 0 \\ -\frac{1}{\sqrt{2}} & 0 & -\frac{1}{\sqrt{2}} \end{bmatrix} \qquad \mathbf{V}\_1 = \frac{1}{\sqrt{2}} \begin{bmatrix} -1 & 1 \\ -1 & -1 \end{bmatrix} \\
>
> Their columns are the columns of \\\mathbf{U}\\ and \\\mathbf{V}\\, some multiplied by \\-1\\, so they are still orthonormal. With the same \\\mathbf{D}\\:
>
> \\ \begin{aligned} \mathbf{D}{\mathbf{V}\_1}^{\top} &= \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix} {\mathopen{}\left(\frac{1}{\sqrt{2}} \begin{bmatrix} -1 & 1 \\ -1 & -1 \end{bmatrix}\right)\mathclose{}}^{\top} && \text{(substitute)} \\ &= \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} -1 & -1 \\ 1 & -1 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix} \begin{bmatrix} -1 & -1 \\ 1 & -1 \end{bmatrix} && \text{(move the scalar to the front)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} 2 \cdot(-1) + 0 \cdot 1 & 2 \cdot(-1) + 0 \cdot(-1) \\ 0 \cdot(-1) + \sqrt{2} \cdot 1 & 0 \cdot(-1) + \sqrt{2} \cdot(-1) \\ 0 \cdot(-1) + 0 \cdot 1 & 0 \cdot(-1) + 0 \cdot(-1) \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} -2 + 0 & -2 + 0 \\ 0 + \sqrt{2} & 0 - \sqrt{2} \\ 0 + 0 & 0 + 0 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} -2 & -2 \\ \sqrt{2} & -\sqrt{2} \\ 0 & 0 \end{bmatrix} && \text{(add)} \\ &= \begin{bmatrix} -\sqrt{2} & -\sqrt{2} \\ 1 & -1 \\ 0 & 0 \end{bmatrix} && \text{(divide by } \sqrt{2} \text{)} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \mathbf{U}\_1\mathbf{D}{\mathbf{V}\_1}^{\top} &= \begin{bmatrix} -\frac{1}{\sqrt{2}} & 0 & \frac{1}{\sqrt{2}} \\ 0 & 1 & 0 \\ -\frac{1}{\sqrt{2}} & 0 & -\frac{1}{\sqrt{2}} \end{bmatrix} \begin{bmatrix} -\sqrt{2} & -\sqrt{2} \\ 1 & -1 \\ 0 & 0 \end{bmatrix} && \text{(substitute)} \\ &= \begin{bmatrix} -\frac{1}{\sqrt{2}} \cdot\mathopen{}\left(-\sqrt{2}\right)\mathclose{} + 0 \cdot 1 + \frac{1}{\sqrt{2}} \cdot 0 & -\frac{1}{\sqrt{2}} \cdot\mathopen{}\left(-\sqrt{2}\right)\mathclose{} + 0 \cdot(-1) + \frac{1}{\sqrt{2}} \cdot 0 \\ 0 \cdot\mathopen{}\left(-\sqrt{2}\right)\mathclose{} + 1 \cdot 1 + 0 \cdot 0 & 0 \cdot\mathopen{}\left(-\sqrt{2}\right)\mathclose{} + 1 \cdot(-1) + 0 \cdot 0 \\ -\frac{1}{\sqrt{2}} \cdot\mathopen{}\left(-\sqrt{2}\right)\mathclose{} + 0 \cdot 1 - \frac{1}{\sqrt{2}} \cdot 0 & -\frac{1}{\sqrt{2}} \cdot\mathopen{}\left(-\sqrt{2}\right)\mathclose{} + 0 \cdot(-1) - \frac{1}{\sqrt{2}} \cdot 0 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 + 0 + 0 & 1 + 0 + 0 \\ 0 + 1 + 0 & 0 - 1 + 0 \\ 1 + 0 - 0 & 1 + 0 - 0 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> which is \\\mathbf{A}\\ again. Both SVDs have the singular values \\\sigma_1 = 2\\ and \\\sigma_2 = \sqrt{2}\\.

> **NOTE:**
>
> *Remark 34* (Counting zero singular values). Some texts, and R’s [`svd()`](https://rdrr.io/r/base/svd.html), also count \\\min(n, p) - r\\ singular values equal to \\0\\, so that every \\n \times p\\ matrix has \\\min(n, p)\\ singular values.
>
> For example, \\\mathbf{B} = \begin{bmatrix} 3 & 0 \\ 0 & 0 \end{bmatrix}\\ has rank \\r = 1\\. Taking \\\mathbf{U} = \mathbf{V} = \mathbf{I}\_2\\ and \\\mathbf{D} = \mathbf{B}\\ gives an SVD \\\mathbf{B} = \mathbf{I}\_2 \mathbf{B} {\mathbf{I}\_2}^{\top}\\, so by [Definition 82](#def-svd), \\\mathbf{B}\\ has one singular value, \\\sigma_1 = 3\\. R’s [`svd()`](https://rdrr.io/r/base/svd.html) reports \\\min(2, 2) = 2\\ singular values for \\\mathbf{B}\\: \\3\\ and \\0\\.

> **NOTE:**
>
> **Theorem 71 (An SVD gives an eigendecomposition of \\{\mathbf{A}}^{\top}\mathbf{A}\\)** Let \\\mathbf{A} = \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}\\ be a singular value decomposition ([Definition 82](#def-svd)) of an \\n \times p\\ matrix \\\mathbf{A}\\ with singular values \\\sigma_1, \ldots, \sigma_r\\. Then \\{\mathbf{A}}^{\top}\mathbf{A}\\ is symmetric ([Definition 67](#def-symmetric-matrix)), and
>
> \\ \underbrace{{\mathbf{A}}^{\top}\mathbf{A}}\_{p \times p} = \underbrace{\mathbf{V}}\_{p \times p}\\ \underbrace{\mathbf{\Lambda}}\_{p \times p}\\ \underbrace{{\mathbf{V}}^{\top}}\_{p \times p} \\
>
> where \\\mathbf{\Lambda} \stackrel{\text{def}}{=}{\mathbf{D}}^{\top}\mathbf{D}\\ is the \\p \times p\\ diagonal matrix whose \\i\\-th diagonal entry \\\lambda_i\\ is \\\sigma_i^2\\ for \\i \le r\\ and \\0\\ for \\i \> r\\. So \\\mathbf{V}\mathbf{\Lambda}{\mathbf{V}}^{\top}\\ is an eigendecomposition ([Definition 81](#def-eigendecomposition)) of \\{\mathbf{A}}^{\top}\mathbf{A}\\: column \\i\\ of \\\mathbf{V}\\ is an eigenvector of \\{\mathbf{A}}^{\top}\mathbf{A}\\ for the eigenvalue \\\lambda_i\\.

> **NOTE:**
>
> *Proof*. **Symmetry.**
>
> \\ \begin{aligned} {\mathopen{}\left({\mathbf{A}}^{\top}\mathbf{A}\right)\mathclose{}}^{\top} &= {\mathbf{A}}^{\top}\\{\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}}^{\top} && \text{(transpose of a product)} \\ &= {\mathbf{A}}^{\top}\mathbf{A} && \text{(transposing twice changes nothing)} \end{aligned} \\
>
> The first step is [Theorem 19](#thm-transpose-product), and the second follows from [Definition 20](#def-matrix-transpose), which swaps rows and columns, so swapping them again restores \\\mathbf{A}\\.
>
> **The factorization.**
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\mathbf{A} &= {\mathopen{}\left(\mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}\right)\mathclose{}}^{\top}\\\mathbf{U}\mathbf{D}{\mathbf{V}}^{\top} && \text{(substitute the SVD)} \\ &= {\mathopen{}\left(\mathbf{D}{\mathbf{V}}^{\top}\right)\mathclose{}}^{\top}\\{\mathbf{U}}^{\top}\\\mathbf{U}\mathbf{D}{\mathbf{V}}^{\top} && \text{(transpose of the product of } \mathbf{U} \text{ and } \mathbf{D}{\mathbf{V}}^{\top} \text{)} \\ &= {\mathopen{}\left({\mathbf{V}}^{\top}\right)\mathclose{}}^{\top}\\{\mathbf{D}}^{\top}\\{\mathbf{U}}^{\top}\\\mathbf{U}\mathbf{D}{\mathbf{V}}^{\top} && \text{(transpose of the product of } \mathbf{D} \text{ and } {\mathbf{V}}^{\top} \text{)} \\ &= \mathbf{V}\\{\mathbf{D}}^{\top}\\{\mathbf{U}}^{\top}\\\mathbf{U}\mathbf{D}{\mathbf{V}}^{\top} && \text{(transposing twice changes nothing)} \\ &= \mathbf{V}\\{\mathbf{D}}^{\top}\\\mathopen{}\left({\mathbf{U}}^{\top}\mathbf{U}\right)\mathclose{}\\\mathbf{D}{\mathbf{V}}^{\top} && \text{(regroup; matrix multiplication is associative)} \\ &= \mathbf{V}\\{\mathbf{D}}^{\top}\\\mathbf{I}\_n\\\mathbf{D}{\mathbf{V}}^{\top} && \text{(} \mathbf{U} \text{ is orthogonal)} \\ &= \mathbf{V}\\\mathopen{}\left({\mathbf{D}}^{\top}\mathbf{D}\right)\mathclose{}\\{\mathbf{V}}^{\top} && \text{(identity matrix)} \\ &= \mathbf{V}\mathbf{\Lambda}{\mathbf{V}}^{\top} && \text{(definition of } \mathbf{\Lambda} \text{)} \end{aligned} \\
>
> **The entries of \\\mathbf{\Lambda}\\.** Write \\\lambda\_{ij}\\ for entry \\(i, j)\\ of \\\mathbf{\Lambda}\\, so \\\lambda_i = \lambda\_{ii}\\. Only the entries \\d\_{kk}\\ with \\k \le r\\ of \\\mathbf{D}\\ can be nonzero.
>
> \\ \begin{aligned} \lambda\_{ij} &= \sum\_{k=1}^{n} ({\mathbf{D}}^{\top})\_{ik}\\ d\_{kj} && \text{(definition of matrix multiplication)} \\ &= \sum\_{k=1}^{n} d\_{ki}\\ d\_{kj} && \text{(definition of the transpose)} \end{aligned} \\
>
> The term for \\k\\ is nonzero only if \\k = i \le r\\ and \\k = j\\. So \\\lambda\_{ij} = 0\\ when \\i \neq j\\. On the diagonal, only the term \\k = i\\ can be nonzero, and for \\i \le r\\
>
> \\ \begin{aligned} \lambda_i &= \lambda\_{ii} && \text{(notation)} \\ &= d\_{ii}\\ d\_{ii} && \text{(the only term that can be nonzero)} \\ &= \sigma_i \cdot\sigma_i && \text{(definition of } \mathbf{D} \text{)} \\ &= \sigma_i^2 && \text{(notation for a square)} \end{aligned} \\
>
> For \\i \> r\\, every term is \\0\\, so \\\lambda_i = 0\\.
>
> **The eigenvectors.** Write \\\tilde{v}\_i\\ for column \\i\\ of \\\mathbf{V}\\, and \\\tilde{e}\_i\\ for the indicator vector ([Definition 12](#def-indicator-vector)) of length \\p\\. Column \\i\\ of \\{\mathbf{V}}^{\top}\mathbf{V} = \mathbf{I}\_p\\ says \\{\mathbf{V}}^{\top}\tilde{v}\_i = \tilde{e}\_i\\. Then
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\mathbf{A}\\\tilde{v}\_i &= \mathbf{V}\mathbf{\Lambda}\\{\mathbf{V}}^{\top}\tilde{v}\_i && \text{(the factorization)} \\ &= \mathbf{V}\mathbf{\Lambda}\\\tilde{e}\_i && \text{(} {\mathbf{V}}^{\top}\tilde{v}\_i = \tilde{e}\_i \text{)} \\ &= \mathbf{V}\\(\lambda_i\\\tilde{e}\_i) && \text{(column } i \text{ of the diagonal matrix } \mathbf{\Lambda} \text{)} \\ &= \lambda_i\\\mathbf{V}\tilde{e}\_i && \text{(move the scalar } \lambda_i \text{ to the front)} \\ &= \lambda_i\\\tilde{v}\_i && \text{(} \mathbf{V}\tilde{e}\_i \text{ is column } i \text{ of } \mathbf{V} \text{)} \end{aligned} \\
>
> and \\\tilde{v}\_i \neq \tilde{0}\\ because it has norm \\1\\.

> **NOTE:**
>
> **Example 136 (\\{\mathbf{A}}^{\top}\mathbf{A}\\ for the matrix of the SVD example)** For \\\mathbf{A}\\ in [Example 135](#exm-svd):
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\mathbf{A} &= \begin{bmatrix} 1 & 1 & 1 \\ 1 & -1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \begin{bmatrix} 1 + 1 + 1 & 1 - 1 + 1 \\ 1 - 1 + 1 & 1 + 1 + 1 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> [Theorem 71](#thm-svd-evd) says its eigenvalues are \\\sigma_1^2 = 4\\ and \\\sigma_2^2 = 2\\, with the columns of \\\mathbf{V}\\ as eigenvectors. Checking the first column, up to its factor \\\frac{1}{\sqrt{2}}\\:
>
> \\ \begin{aligned} \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ 1 \end{bmatrix} &= \begin{bmatrix} 3 \cdot 1 + 1 \cdot 1 \\ 1 \cdot 1 + 3 \cdot 1 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 3 + 1 \\ 1 + 3 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 4 \\ 4 \end{bmatrix} && \text{(add)} \\ &= 4 \begin{bmatrix} 1 \\ 1 \end{bmatrix} && \text{(factor out } 4 \text{)} \end{aligned} \\
>
> and the second:
>
> \\ \begin{aligned} \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix} &= \begin{bmatrix} 3 \cdot 1 + 1 \cdot(-1) \\ 1 \cdot 1 + 3 \cdot(-1) \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 3 - 1 \\ 1 - 3 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 2 \\ -2 \end{bmatrix} && \text{(add)} \\ &= 2 \begin{bmatrix} 1 \\ -1 \end{bmatrix} && \text{(factor out } 2 \text{)} \end{aligned} \\

> **NOTE:**
>
> *Remark 35* (Building an SVD from an eigendecomposition). [Theorem 71](#thm-svd-evd) matches Banerjee and Roy ([2014, chap. 12](#ref-banerjee2014linear), pp. 372-373), which works in the other direction: it constructs an SVD from a spectral decomposition of \\{\mathbf{A}}^{\top}\mathbf{A}\\ and sets \\\sigma_i = \sqrt{\lambda_i}\\.
>
> For example, in [Example 136](#exm-svd-evd) the eigenvalues of \\{\mathbf{A}}^{\top}\mathbf{A}\\ are \\4\\ and \\2\\, and \\\sqrt{4} = 2\\ and \\\sqrt{2}\\ are the singular values \\\sigma_1\\ and \\\sigma_2\\ of \\\mathbf{A}\\ from [Example 135](#exm-svd).

## 7 Definite Matrices

> **NOTE:**
>
> **Definition 83 (Positive semidefinite matrix)** A \\p \times p\\ matrix \\\mathbf{A}\\ is **positive semidefinite** if it satisfies both conditions:
>
> - \\\mathbf{A}\\ is symmetric ([Definition 67](#def-symmetric-matrix)).
> - Every quadratic form ([Definition 75](#def-quadratic-form)) in \\\mathbf{A}\\ is non-negative: \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\ge 0\\ for every vector \\\tilde{x}\\ of length \\p\\.

> **NOTE:**
>
> **Example 137 (A positive semidefinite matrix)** Let \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\, which is symmetric. For any \\\tilde{x}= (x_1, x_2)\\:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{B}\tilde{x} &= x_1^2 + x_1 x_2 + x_2 x_1 + x_2^2 && \text{(multiply out the quadratic form)} \\ &= (x_1 + x_2)^2 && \text{(complete the square)} \\ &\ge 0 && \text{(a square is non-negative)} \end{aligned} \\
>
> So \\\mathbf{B}\\ is positive semidefinite.

> **NOTE:**
>
> **Definition 84 (Positive definite matrix)** A \\p \times p\\ matrix \\\mathbf{A}\\ is **positive definite** if it satisfies both conditions:
>
> - \\\mathbf{A}\\ is symmetric ([Definition 67](#def-symmetric-matrix)).
> - Every quadratic form ([Definition 75](#def-quadratic-form)) in \\\mathbf{A}\\ at a nonzero vector is positive: \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\> 0\\ for every vector \\\tilde{x}\neq \tilde{0}\\ of length \\p\\.

> **NOTE:**
>
> **Example 138 (Positive definite, semidefinite, and neither)**  
>
> - The identity matrix \\\mathbf{I}\_p\\ ([Definition 27](#def-identity-matrix)) is positive definite: \\{\tilde{x}}^{\top}\mathbf{I}\_p\tilde{x}= \sum\_{i=1}^p x_i^2\\, which is positive unless every \\x_i\\ is \\0\\.
> - \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ from [Example 137](#exm-positive-semidefinite) is positive semidefinite but not positive definite: at \\\tilde{x}= (1, -1) \neq \tilde{0}\\, \\{\tilde{x}}^{\top}\mathbf{B}\tilde{x}= (1 - 1)^2 = 0\\.
> - \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\ is symmetric but not positive semidefinite: at \\\tilde{x}= (1, -1)\\, \\{\tilde{x}}^{\top}\mathbf{D}\tilde{x}= 1 - 2 - 2 + 1 = -2 \< 0\\.

> **NOTE:**
>
> *Remark 36* (Why the definition requires symmetry). A positive definite matrix is positive semidefinite ([Definition 83](#def-positive-semidefinite)): \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\> 0\\ for every \\\tilde{x}\neq \tilde{0}\\, and \\{\tilde{0}}^{\top}\mathbf{A}\tilde{0}= 0\\. For example, \\\mathbf{I}\_p\\ in [Example 138](#exm-positive-definite) is both.
>
> Some sources drop the symmetry condition from both definitions. These notes keep it, because without it a matrix can pass the quadratic-form condition and still have no real eigenvalues ([Definition 80](#def-eigenvalue)). For example, \\\mathbf{C} = \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}\\ is not symmetric, and for any \\\tilde{x}= (x_1, x_2)\\:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{C}\tilde{x} &= x_1 (x_1 + x_2) + x_2 (-x_1 + x_2) && \text{(multiply out the quadratic form)} \\ &= x_1^2 + x_1 x_2 - x_2 x_1 + x_2^2 && \text{(distribute)} \\ &= x_1^2 + x_2^2 && \text{(the middle terms cancel)} \end{aligned} \\
>
> which is positive for every \\\tilde{x}\neq \tilde{0}\\. But suppose \\\mathbf{C}\tilde{v} = \lambda\tilde{v}\\ for a real number \\\lambda\\. Matching entries gives \\v_1 + v_2 = \lambda v_1\\ and \\-v_1 + v_2 = \lambda v_2\\, so \\v_2 = (\lambda - 1)\\ v_1\\ and \\-v_1 = (\lambda - 1)\\ v_2\\. Substituting the first into the second gives \\-v_1 = (\lambda - 1)^2 v_1\\, so \\\mathopen{}\left(1 + (\lambda - 1)^2\right)\mathclose{} v_1 = 0\\. Since \\1 + (\lambda - 1)^2 \> 0\\, \\v_1 = 0\\, and then \\v_2 = (\lambda - 1)\\ v_1 = 0\\. So no real \\\lambda\\ has an eigenvector \\\tilde{v} \neq \tilde{0}\\.

See also <https://en.wikipedia.org/wiki/Definite_matrix>.

> **NOTE:**
>
> **Theorem 72 (Definiteness and eigenvalues)** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric matrix with real entries, with eigendecomposition \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([Definition 81](#def-eigendecomposition)) and eigenvalues \\\lambda_1, \ldots, \lambda_p\\ on the diagonal of \\\mathbf{\Lambda}\\. Then:
>
> - \\\mathbf{A}\\ is positive semidefinite ([Definition 83](#def-positive-semidefinite)) if and only if every \\\lambda_i \ge 0\\.
> - \\\mathbf{A}\\ is positive definite ([Definition 84](#def-positive-definite)) if and only if every \\\lambda_i \> 0\\.

> **NOTE:**
>
> *Proof*. For any vector \\\tilde{x}\\ of length \\p\\, let \\\tilde{y} = {\mathbf{Q}}^{\top}\tilde{x}\\. Then:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{A}\tilde{x} &= {\tilde{x}}^{\top}\mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\tilde{x} && \text{(substitute the eigendecomposition)} \\ &= {\mathopen{}\left({\mathbf{Q}}^{\top}\tilde{x}\right)\mathclose{}}^{\top}\mathbf{\Lambda}\mathopen{}\left({\mathbf{Q}}^{\top}\tilde{x}\right)\mathclose{} && \text{(transpose of a product)} \\ &= {\tilde{y}}^{\top}\mathbf{\Lambda}\tilde{y} && \text{(definition of } \tilde{y} \text{)} \\ &= \sum\_{i=1}^p \lambda_i y_i^2 && \text{(} \mathbf{\Lambda} \text{ is diagonal)} \end{aligned} \\
>
> The second step is [Theorem 19](#thm-transpose-product). Also, \\\tilde{x}= \tilde{0}\\ exactly when \\\tilde{y} = \tilde{0}\\: \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\ for an orthogonal matrix ([Definition 74](#def-orthogonal-matrix)), so \\\tilde{x}= \mathbf{Q}\tilde{y}\\.
>
> *If every \\\lambda_i \ge 0\\*, then every term \\\lambda_i y_i^2 \ge 0\\, so \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\ge 0\\. *If every \\\lambda_i \> 0\\* and \\\tilde{x}\neq \tilde{0}\\, then some \\y_i \neq 0\\, so at least one term is positive and the rest are non-negative, and \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\> 0\\.
>
> *Conversely*, take \\\tilde{x}= \tilde{q}\_i\\, column \\i\\ of \\\mathbf{Q}\\, which is not \\\tilde{0}\\ because it has norm 1. Then \\\tilde{y} = {\mathbf{Q}}^{\top}\tilde{q}\_i\\ is column \\i\\ of \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\, so \\y_i = 1\\ and every other entry of \\\tilde{y}\\ is \\0\\, and the display gives \\{\tilde{q}\_i}^{\top}\mathbf{A}\tilde{q}\_i = \lambda_i\\. So if \\\mathbf{A}\\ is positive semidefinite, \\\lambda_i \ge 0\\, and if \\\mathbf{A}\\ is positive definite, \\\lambda_i \> 0\\.

> **NOTE:**
>
> **Example 139 (Reading definiteness off the eigenvalues)**  
>
> - \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ has eigenvalues \\3\\ and \\1\\ ([Example 132](#exm-eigenvalue)), both positive, so it is positive definite.
> - \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ has eigenvalues \\2\\, for the eigenvector \\(1, 1)\\, and \\0\\, for the eigenvector \\(1, -1)\\, so it is positive semidefinite but not positive definite, as [Example 138](#exm-positive-definite) found directly.

> **NOTE:**
>
> **Theorem 73 (A positive definite matrix has a positive definite inverse)** Let \\\mathbf{A}\\ be a \\p \times p\\ positive definite matrix ([Definition 84](#def-positive-definite)) with real entries, with eigendecomposition \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([Definition 81](#def-eigendecomposition)) and eigenvalues \\\lambda_1, \ldots, \lambda_p\\. Then \\\mathbf{A}\\ is invertible ([Definition 70](#def-invertible-matrix)),
>
> \\ \mathbf{A}^{-1} = \mathbf{Q}\\\mathbf{\Lambda}^{-1}\\{\mathbf{Q}}^{\top}, \qquad \mathbf{\Lambda}^{-1} = \begin{bmatrix} 1/\lambda_1 & \cdots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \cdots & 1/\lambda_p \end{bmatrix}, \\
>
> and \\\mathbf{A}^{-1}\\ is positive definite.

> **NOTE:**
>
> *Proof*. By [Theorem 72](#thm-definite-eigenvalues), every \\\lambda_i \> 0\\, so \\\mathbf{\Lambda}^{-1}\\ is well defined, and multiplying the two diagonal matrices entry by entry gives \\\mathbf{\Lambda}\mathbf{\Lambda}^{-1} = \mathbf{\Lambda}^{-1}\mathbf{\Lambda} = \mathbf{I}\_p\\. Write \\\mathbf{B} = \mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top}\\. Then:
>
> \\ \begin{aligned} \mathbf{A}\mathbf{B} &= \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} && \text{(substitute)} \\ &= \mathbf{Q}\mathbf{\Lambda}\mathbf{I}\_p\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} && \text{(} {\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p \text{)} \\ &= \mathbf{Q}\mathbf{\Lambda}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} && \text{(identity matrix)} \\ &= \mathbf{Q}{\mathbf{Q}}^{\top} && \text{(} \mathbf{\Lambda}\mathbf{\Lambda}^{-1} = \mathbf{I}\_p \text{)} \\ &= \mathbf{I}\_p && \text{(} \mathbf{Q} \text{ is orthogonal)} \end{aligned} \\
>
> The same steps, with \\\mathbf{\Lambda}^{-1}\\ and \\\mathbf{\Lambda}\\ swapped, give \\\mathbf{B}\mathbf{A} = \mathbf{I}\_p\\, so \\\mathbf{B} = \mathbf{A}^{-1}\\ ([Definition 69](#def-matrix-inverse)). The steps with \\\mathbf{Q}\\ use [Definition 74](#def-orthogonal-matrix), whose remark records that \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\ too, and the identity step uses [Theorem 10](#thm-identity).
>
> \\\mathbf{A}^{-1}\\ is symmetric by [Corollary 6](#cor-inverse-symmetric). For \\\tilde{x}\neq \tilde{0}\\, let \\\tilde{y} = {\mathbf{Q}}^{\top}\tilde{x}\\, which is not \\\tilde{0}\\ because \\\tilde{x}= \mathbf{Q}\tilde{y}\\. As in the proof of [Theorem 72](#thm-definite-eigenvalues):
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{A}^{-1}\tilde{x} &= {\tilde{y}}^{\top}\mathbf{\Lambda}^{-1}\tilde{y} && \text{(substitute } \mathbf{A}^{-1} = \mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} \text{)} \\ &= \sum\_{i=1}^p \frac{y_i^2}{\lambda_i} && \text{(} \mathbf{\Lambda}^{-1} \text{ is diagonal)} \\ &\> 0 && \text{(each } \lambda_i \> 0 \text{, and some } y_i \neq 0 \text{)} \end{aligned} \\
>
> So \\\mathbf{A}^{-1}\\ is positive definite.

> **NOTE:**
>
> **Example 140 (Inverting a positive definite matrix)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, [Example 134](#exm-spectral) gives \\\mathbf{Q} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}\\ and eigenvalues \\3\\ and \\1\\, so:
>
> \\ \begin{aligned} \mathbf{A}^{-1} &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 1/3 & 0 \\ 0 & 1 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(substitute; } \mathbf{Q} \text{ is symmetric)} \\ &= \frac{1}{2} \begin{bmatrix} 1/3 & 1 \\ 1/3 & -1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(multiply the first two matrices)} \\ &= \frac{1}{2} \begin{bmatrix} 4/3 & -2/3 \\ -2/3 & 4/3 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{3} \begin{bmatrix} 2 & -1 \\ -1 & 2 \end{bmatrix} && \text{(simplify)} \end{aligned} \\
>
> Multiplying out, \\\begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \cdot\frac{1}{3}\begin{bmatrix} 2 & -1 \\ -1 & 2 \end{bmatrix} = \frac{1}{3}\begin{bmatrix} 3 & 0 \\ 0 & 3 \end{bmatrix} = \mathbf{I}\_2\\.

> **NOTE:**
>
> **Definition 85 (Matrix-induced inner product (\\\mathbf{A}\\-inner product))** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric positive definite matrix ([Definition 84](#def-positive-definite)) (\\\mathbf{A} = {\mathbf{A}}^{\top}\\ and \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\> 0\\ for all nonzero \\\tilde{x}\in \mathbb{R}^p\\). The **matrix-induced inner product** (or **\\\mathbf{A}\\-inner product**) on \\\mathbb{R}^p\\ is defined for all \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\ by
>
> \\ \left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{A}} \stackrel{\text{def}}{=}{\tilde{x}}^{\top} \mathbf{A} \tilde{y}. \\
>
> The space \\\mathbb{R}^p\\ equipped with \\\left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}}\\ is an inner product space ([Definition 56](#def-inner-product-space)).

> **NOTE:**
>
> **Theorem 74 (Properties of the matrix-induced inner product)** For every \\p \times p\\ symmetric positive definite matrix \\\mathbf{A}\\, the function \\\left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{A}} = {\tilde{x}}^{\top} \mathbf{A} \tilde{y}\\ satisfies the four inner product axioms ([Definition 55](#def-inner-product)): positivity, definiteness, linearity in the first slot, and symmetry. Thus \\(\mathbb{R}^p, \left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}})\\ is an inner product space ([Definition 56](#def-inner-product-space)).
>
> Taking \\\mathbf{A} = \mathbf{I}\_p\\ recovers the standard dot product ([Example 89](#exm-dot-product-inner-product)), while taking \\\mathbf{A} = \operatorname{diag}(c_1, \ldots, c_p)\\ recovers the weighted inner product ([Example 91](#exm-weighted-inner-product)).
>
> Conversely, every inner product on \\\mathbb{R}^p\\ has this form for a unique symmetric positive definite matrix \\\mathbf{A}\\, whose \\(i, j)\\ entry is \\A\_{ij} = \left\langle \tilde{e}\_i, \tilde{e}\_j \right\rangle\\, where \\\tilde{e}\_1, \ldots, \tilde{e}\_p\\ are the standard basis vectors ([Definition 12](#def-indicator-vector)).

> **NOTE:**
>
> *Proof*.
>
> - **positivity**: \\\left\langle \tilde{x}, \tilde{x} \right\rangle\_{\mathbf{A}} = {\tilde{x}}^{\top}\mathbf{A}\tilde{x}\ge 0\\ for all \\\tilde{x}\in \mathbb{R}^p\\, because \\\mathbf{A}\\ is positive definite ([Definition 84](#def-positive-definite));
> - **definiteness**: \\\left\langle \tilde{x}, \tilde{x} \right\rangle\_{\mathbf{A}} = 0\\ if and only if \\\tilde{x}= \tilde{0}\_{p \times 1}\\, by definition of a positive definite matrix ([Definition 84](#def-positive-definite));
> - **linearity in the first slot**: for all \\\tilde{x}, \tilde{y}, \tilde{z} \in \mathbb{R}^p\\ and real numbers \\a, b\\, \\ \begin{aligned} \left\langle a\\\tilde{x}+ b\\\tilde{y}, \tilde{z} \right\rangle\_{\mathbf{A}} &= {(a\\\tilde{x}+ b\\\tilde{y})}^{\top}\\\mathbf{A}\tilde{z} && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}} \text{)} \\ &= (a\\{\tilde{x}}^{\top} + b\\{\tilde{y}}^{\top})\\\mathbf{A}\tilde{z} && \text{(}\href{#thm-transpose-sum}{\text{Theorem~18}}\text{, }\href{#def-scalar-mult}{\text{Definition~23}}\text{, }\href{#def-matrix-transpose}{\text{Definition~20}}\text{)} \\ &= a\\{\tilde{x}}^{\top}\mathbf{A}\tilde{z} + b\\{\tilde{y}}^{\top}\mathbf{A}\tilde{z} && \text{(}\href{#thm-matmul-distrib}{\text{Theorem~9}}\text{)} \\ &= a\\\left\langle \tilde{x}, \tilde{z} \right\rangle\_{\mathbf{A}} + b\\\left\langle \tilde{y}, \tilde{z} \right\rangle\_{\mathbf{A}} && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}} \text{)} \end{aligned} \\
> - **symmetry**: because \\{\tilde{y}}^{\top}\mathbf{A}\tilde{x}\\ is a \\1 \times 1\\ scalar and \\\mathbf{A}\\ is symmetric (\\{\mathbf{A}}^{\top} = \mathbf{A}\\), \\ \begin{aligned} \left\langle \tilde{y}, \tilde{x} \right\rangle\_{\mathbf{A}} &= {\tilde{y}}^{\top}\mathbf{A}\tilde{x} && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}} \text{)} \\ &= {\mathopen{}\left({\tilde{y}}^{\top}\mathbf{A}\tilde{x}\right)\mathclose{}}^{\top} && \text{(a scalar equals its transpose)} \\ &= {\tilde{x}}^{\top}{\mathbf{A}}^{\top}\tilde{y} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{, twice)} \\ &= {\tilde{x}}^{\top}\mathbf{A}\tilde{y} && \text{(\$\mathbf{A}\$ is symmetric)} \\ &= \left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{A}} && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}} \text{)} \end{aligned} \\
>
> For the converse, let \\\left\langle \cdot, \cdot \right\rangle\\ be any inner product on \\\mathbb{R}^p\\. Any vectors \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\ can be written in the standard basis as \\\tilde{x}= \sum\_{i=1}^p x_i\\\tilde{e}\_i\\ and \\\tilde{y}= \sum\_{j=1}^p y_j\\\tilde{e}\_j\\ ([Definition 42](#def-basis), [Definition 12](#def-indicator-vector)). By linearity in both slots ([Remark 15](#rem-inner-product-other-sources)):
>
> \\ \begin{aligned} \left\langle \tilde{x}, \tilde{y} \right\rangle &= \left\langle \sum\_{i=1}^p x_i\\\tilde{e}\_i, \sum\_{j=1}^p y_j\\\tilde{e}\_j \right\rangle && \text{(expand in the standard basis)} \\ &= \sum\_{i=1}^p \sum\_{j=1}^p x_i y_j\\\left\langle \tilde{e}\_i, \tilde{e}\_j \right\rangle && \text{(linearity in both slots)} \\ &= \sum\_{i=1}^p x_i \sum\_{j=1}^p A\_{ij} y_j && \text{(define } A\_{ij} \stackrel{\text{def}}{=}\left\langle \tilde{e}\_i, \tilde{e}\_j \right\rangle \text{)} \\ &= {\tilde{x}}^{\top} \mathbf{A} \tilde{y}. && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \end{aligned} \\
>
> Symmetry of \\\left\langle \cdot, \cdot \right\rangle\\ ensures \\A\_{ji} = \left\langle \tilde{e}\_j, \tilde{e}\_i \right\rangle = \left\langle \tilde{e}\_i, \tilde{e}\_j \right\rangle = A\_{ij}\\, so \\\mathbf{A}\\ is symmetric ([Definition 67](#def-symmetric-matrix)). For any \\\tilde{x}\neq \tilde{0}\\, \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}= \left\langle \tilde{x}, \tilde{x} \right\rangle \> 0\\ by positivity and definiteness of the inner product, so \\\mathbf{A}\\ is positive definite ([Definition 84](#def-positive-definite)).
>
> For uniqueness, if another matrix \\\mathbf{B}\\ satisfies \\\left\langle \tilde{x}, \tilde{y} \right\rangle = {\tilde{x}}^{\top}\mathbf{B}\tilde{y}\\ for all \\\tilde{x}, \tilde{y}\\, evaluating at \\\tilde{x}= \tilde{e}\_i\\ and \\\tilde{y}= \tilde{e}\_j\\ gives \\B\_{ij} = {\tilde{e}\_i}^{\top}\mathbf{B}\tilde{e}\_j = \left\langle \tilde{e}\_i, \tilde{e}\_j \right\rangle = A\_{ij}\\, so \\\mathbf{B} = \mathbf{A}\\.

> **NOTE:**
>
> **Example 141 (A matrix-induced inner product calculation)** Consider the symmetric matrix
>
> \\ \mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}. \\
>
> For any nonzero vector \\\tilde{x}= (x_1, x_2) \in \mathbb{R}^2\\:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{A}\tilde{x} &= 2 x_1^2 + 2 x_1 x_2 + 2 x_2^2 && \text{(expand the quadratic form)} \\ &= (x_1 + x_2)^2 + x_1^2 + x_2^2 && \text{(complete the square)} \end{aligned} \\
>
> which is strictly positive because \\x_1^2 + x_2^2 \> 0\\ when \\\tilde{x}\neq \tilde{0}\\. Thus \\\mathbf{A}\\ is positive definite ([Definition 84](#def-positive-definite)).
>
> For vectors \\\tilde{x}= (1, 2)\\ and \\\tilde{y}= (3, -1)\\, their inner product induced by \\\mathbf{A}\\ is:
>
> \\ \begin{aligned} \left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{A}} &= {\tilde{x}}^{\top} \mathbf{A} \tilde{y} && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}} \text{)} \\ &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 3 \\ -1 \end{bmatrix} && \text{(substitute vectors and matrix)} \\ &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 2 \cdot 3 + 1 \cdot(-1) \\ 1 \cdot 3 + 2 \cdot(-1) \end{bmatrix} && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\ &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 5 \\ 1 \end{bmatrix} && \text{(multiply and add)} \\ &= 1 \cdot 5 + 2 \cdot 1 && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\ &= 7. && \text{(multiply and add)} \end{aligned} \\
>
> In contrast, the standard dot product yields:
>
> \\ \tilde{x}\cdot \tilde{y}= 1 \cdot 3 + 2 \cdot(-1) = 1. \\
>
> The off-diagonal entries \\A\_{12} = A\_{21} = 1\\ couple the coordinate directions, altering lengths and angles from their Euclidean values. When \\\mathbf{A} = \mathbf{I}\_p\\, the matrix-induced inner product recovers the standard dot product \\\left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{I}\_p} = \tilde{x}\cdot \tilde{y}\\.

> **NOTE:**
>
> *Remark 37* (Inner product spaces in machine learning). In machine learning and statistics, choosing or learning an inner product space tailors geometric notions of distance, angle, and projection to the structure of the data:
>
> 1.  **Mahalanobis metric and whitening**: Standard Euclidean distance treats all coordinate axes identically, ignoring feature correlations and variance differences. If data features have a symmetric positive definite covariance matrix \\\mathbf{\Sigma}\\ ([Definition 84](#def-positive-definite)), the precision matrix \\\mathbf{A} = \mathbf{\Sigma}^{-1}\\ ([Theorem 73](#thm-pd-inverse)) defines the Mahalanobis inner product \\\left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{\Sigma}^{-1}} = {\tilde{x}}^{\top} \mathbf{\Sigma}^{-1} \tilde{y}\\. The induced distance \\d\_{\mathbf{\Sigma}^{-1}}(\tilde{x}, \tilde{y}) = \sqrt{{(\tilde{x}- \tilde{y})}^{\top}\mathbf{\Sigma}^{-1}(\tilde{x}- \tilde{y})}\\ measures statistical distance normalized by variance along each principal direction. Factoring \\\mathbf{\Sigma}^{-1} = {\mathbf{W}}^{\top}\mathbf{W}\\ (via Cholesky or spectral decomposition), this inner product corresponds to the Euclidean dot product of whitened coordinates \\\tilde{z} = \mathbf{W}\tilde{x}\\: \\\left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{\Sigma}^{-1}} = (\mathbf{W}\tilde{x}) \cdot (\mathbf{W}\tilde{y})\\.
>
> 2.  **The kernel trick and reproducing kernel Hilbert spaces (RKHS)**: Algorithms such as support vector machines (SVMs), kernel ridge regression, and Gaussian processes depend on training vectors solely through pairwise inner products \\\left\langle \tilde{x}\_i, \tilde{x}\_j \right\rangle\\. By mapping data into a higher- or infinite-dimensional inner product space via a feature map \\\phi: \mathbb{R}^p \to \mathcal{H}\\, the kernel trick replaces the computation of \\\phi(\tilde{x}\_i)\\ with an evaluation of a positive definite kernel function: \\ k(\tilde{x}\_i, \tilde{x}\_j) \stackrel{\text{def}}{=}\left\langle \phi(\tilde{x}\_i), \phi(\tilde{x}\_j) \right\rangle\_{\mathcal{H}}. \\ Mercer’s theorem guarantees that every symmetric positive definite kernel function implicitly defines a valid inner product space \\\mathcal{H}\\ (a reproducing kernel Hilbert space) without requiring explicit coordinate representations.
>
> 3.  **Embeddings and cosine similarity**: In natural language processing and recommendation systems, data items are embedded as vectors in high-dimensional representations. The angle between embeddings captures semantic similarity through cosine similarity ([Definition 61](#def-cosine-similarity)): \\ \operatorname{cossim}(\tilde{x}, \tilde{y}) = \frac{\left\langle \tilde{x}, \tilde{y} \right\rangle}{\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}}. \\ When embedding vectors are normalized to unit Euclidean norm (\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} = 1\\), cosine similarity equals the inner product \\\left\langle \tilde{x}, \tilde{y} \right\rangle\\. Similarly, the self-attention mechanism in Transformers computes query-key alignment scores through scaled inner products \\{\tilde{q}}^{\top}\tilde{k} / \sqrt{d_k}\\.
>
> 4.  **Weighted and generalized least squares**: In linear regression \\\tilde{y}\approx \mathbf{X}\tilde{\beta}\\, when observation errors have unequal variances or known correlations with positive definite covariance matrix \\\mathbf{\Omega}\\, ordinary least squares is inefficient. Generalized least squares minimizes the residual norm in the inner product space induced by \\\mathbf{W} = \mathbf{\Omega}^{-1}\\: \\ \min\_{\tilde{\beta}} \mathopen{}\left\lVert\tilde{y}- \mathbf{X}\tilde{\beta}\right\rVert\mathclose{}\_{\mathbf{W}}^2 = \min\_{\tilde{\beta}} \left\langle \tilde{y}- \mathbf{X}\tilde{\beta}, \tilde{y}- \mathbf{X}\tilde{\beta} \right\rangle\_{\mathbf{W}}. \\

## 8 Determinants

> **NOTE:**
>
> **Definition 86 (Determinant)** The **determinant** of a \\p \times p\\ matrix \\\mathbf{A}\\ with entries \\a\_{ij}\\, written \\\det(\mathbf{A})\\ or \\\mathopen{}\left\|\mathbf{A}\right\|\mathclose{}\\, is the number defined recursively in \\p\\:
>
> - For \\p = 1\\, \\\det(\mathbf{A}) = a\_{11}\\.
> - For \\p \ge 2\\, \\ \det(\mathbf{A}) = \sum\_{j=1}^p (-1)^{1+j}\\ a\_{1j} \det\mathopen{}\left(\mathbf{A}\_{(1j)}\right)\mathclose{}, \\ where \\\mathbf{A}\_{(1j)}\\ is the \\(p-1) \times (p-1)\\ matrix left after deleting row \\1\\ and column \\j\\ of \\\mathbf{A}\\.

> **NOTE:**
>
> **Example 142 (Determinant of a \\2 \times 2\\ matrix)** For \\\mathbf{A} = \begin{bmatrix} a & b \\ c & d \end{bmatrix}\\, deleting row 1 and column 1 leaves \\\begin{bmatrix} d \end{bmatrix}\\, and deleting row 1 and column 2 leaves \\\begin{bmatrix} c \end{bmatrix}\\. So:
>
> \\ \begin{aligned} \det(\mathbf{A}) &= (-1)^{1+1}\\ a \det\mathopen{}\left(\begin{bmatrix} d \end{bmatrix}\right)\mathclose{} + (-1)^{1+2}\\ b \det\mathopen{}\left(\begin{bmatrix} c \end{bmatrix}\right)\mathclose{} && \text{(definition, } p = 2 \text{)} \\ &= a d - b c && \text{(definition, } p = 1 \text{)} \end{aligned} \\
>
> For example, \\\det\mathopen{}\left(\begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\right)\mathclose{} = 2 \cdot 2 - 1 \cdot 1 = 3\\.

> **NOTE:**
>
> *Remark 38* (Cofactor expansion). The recursive formula in [Definition 86](#def-determinant) is the *cofactor expansion* along the first row. Other sources define the determinant as a sum over all orderings of the columns and derive this expansion from it; the two definitions agree ([Banerjee and Roy 2014](#ref-banerjee2014linear)).
>
> Each ordering picks one entry from each row, from the column that the ordering assigns to that row, and multiplies them. Its sign is \\+1\\ if the ordering takes an even number of swaps of two columns to reach from \\(1, 2, \ldots, p)\\, and \\-1\\ if it takes an odd number.
>
> For \\p = 2\\, the columns have two orderings. The ordering \\(1, 2)\\ keeps each column in place, picks the entries \\a\_{11}\\ and \\a\_{22}\\, and has sign \\+1\\. The ordering \\(2, 1)\\ swaps the two columns, picks the entries \\a\_{12}\\ and \\a\_{21}\\, and has sign \\-1\\. The sum \\a\_{11} a\_{22} - a\_{12} a\_{21}\\ is the value \\a d - b c\\ from [Example 142](#exm-determinant).

See also <https://en.wikipedia.org/wiki/Determinant>.

> **TIP:**
>
> Chapter 6 of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown shows the geometric meaning of the determinant:
>
> - [The determinant](https://www.youtube.com/watch?v=Ip3X9LOh2dk) shows how the determinant measures the factor by which a linear transformation scales areas and volumes, and why a zero determinant corresponds to compressing space into a lower dimension.

> **NOTE:**
>
> **Theorem 75 (Determinant of a diagonal matrix)** The determinant ([Definition 86](#def-determinant)) of a \\p \times p\\ diagonal matrix ([Definition 68](#def-diagonal-matrix)) is the product of its diagonal entries:
>
> \\ \det\mathopen{}\left( \begin{bmatrix} d_1 & \cdots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \cdots & d_p \end{bmatrix} \right)\mathclose{} = \prod\_{i=1}^p d_i \\

> **NOTE:**
>
> *Proof*. By [induction](proof-writing.llms.md#def-proof-by-induction) on \\p\\. For \\p = 1\\, the matrix is \\\begin{bmatrix} d_1 \end{bmatrix}\\, and its determinant is \\d_1\\ by definition.
>
> For \\p \ge 2\\, suppose the result holds for \\(p-1) \times (p-1)\\ diagonal matrices, and let \\\mathbf{D}\\ be \\p \times p\\ and diagonal. Row 1 of \\\mathbf{D}\\ is \\(d_1, 0, \ldots, 0)\\, so only the \\j = 1\\ term of the definition can be nonzero, and deleting row 1 and column 1 of \\\mathbf{D}\\ leaves the diagonal matrix with diagonal entries \\d_2, \ldots, d_p\\:
>
> \\ \begin{aligned} \det(\mathbf{D}) &= (-1)^{1+1}\\ d_1 \det\mathopen{}\left(\mathbf{D}\_{(11)}\right)\mathclose{} + \sum\_{j=2}^p (-1)^{1+j} \cdot 0 \cdot\det\mathopen{}\left(\mathbf{D}\_{(1j)}\right)\mathclose{} && \text{(definition)} \\ &= d_1 \det\mathopen{}\left(\mathbf{D}\_{(11)}\right)\mathclose{} && \text{(drop the zero terms)} \\ &= d_1 \prod\_{i=2}^p d_i && \text{(induction hypothesis)} \\ &= \prod\_{i=1}^p d_i && \text{(combine)} \end{aligned} \\

> **NOTE:**
>
> **Example 143 (Determinant of a scaled identity matrix)** For a number \\c\\, \\c\\\mathbf{I}\_p\\ is diagonal with every diagonal entry equal to \\c\\, so \\\det(c\\\mathbf{I}\_p) = c^p\\. In particular, \\\det(\mathbf{I}\_p) = 1\\.

> **NOTE:**
>
> **Theorem 76 (Determinant of a product)** For \\p \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\,
>
> \\ \det(\mathbf{A}\mathbf{B}) = \det(\mathbf{A}) \det(\mathbf{B}). \\

> **NOTE:**
>
> **Example 144 (Checking the product rule)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ and \\\mathbf{B} = \begin{bmatrix} 1 & 0 \\ 3 & 1 \end{bmatrix}\\, [Example 142](#exm-determinant) gives \\\det(\mathbf{A}) = 2 \cdot 1 - 1 \cdot 0 = 2\\ and \\\det(\mathbf{B}) = 1 \cdot 1 - 0 \cdot 3 = 1\\. The product is
>
> \\ \mathbf{A}\mathbf{B} = \begin{bmatrix} 2 \cdot 1 + 1 \cdot 3 & 2 \cdot 0 + 1 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 3 & 0 \cdot 0 + 1 \cdot 1 \end{bmatrix} = \begin{bmatrix} 5 & 1 \\ 3 & 1 \end{bmatrix}, \\
>
> with \\\det(\mathbf{A}\mathbf{B}) = 5 \cdot 1 - 1 \cdot 3 = 2 = \det(\mathbf{A})\det(\mathbf{B})\\.

> **NOTE:**
>
> *Remark 39* (An example is not a proof). [Example 144](#exm-det-product) checks [Theorem 76](#thm-det-product) for one pair of \\2 \times 2\\ matrices, which shows the theorem holds there but does not prove it for every pair. The proof needs properties of the determinant that these notes don’t develop; see Banerjee and Roy ([2014](#ref-banerjee2014linear)).

See also <https://en.wikipedia.org/wiki/Determinant>.

> **NOTE:**
>
> **Theorem 77 (The determinant of a symmetric matrix is the product of its eigenvalues)** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric matrix with real entries, with eigendecomposition \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([Definition 81](#def-eigendecomposition)) and eigenvalues \\\lambda_1, \ldots, \lambda_p\\ on the diagonal of \\\mathbf{\Lambda}\\. Then
>
> \\ \det(\mathbf{A}) = \prod\_{i=1}^p \lambda_i. \\

> **NOTE:**
>
> *Proof*. First, \\\det({\mathbf{Q}}^{\top})\det(\mathbf{Q}) = 1\\:
>
> \\ \begin{aligned} \det({\mathbf{Q}}^{\top})\det(\mathbf{Q}) &= \det({\mathbf{Q}}^{\top}\mathbf{Q}) && \text{(determinant of a product)} \\ &= \det(\mathbf{I}\_p) && \text{(} \mathbf{Q} \text{ is orthogonal)} \\ &= 1 && \text{(determinant of the identity)} \end{aligned} \\
>
> Then:
>
> \\ \begin{aligned} \det(\mathbf{A}) &= \det(\mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}) && \text{(substitute the eigendecomposition)} \\ &= \det(\mathbf{Q}) \det(\mathbf{\Lambda}) \det({\mathbf{Q}}^{\top}) && \text{(determinant of a product, twice)} \\ &= \det(\mathbf{\Lambda}) \cdot\det({\mathbf{Q}}^{\top})\det(\mathbf{Q}) && \text{(reorder the three numbers)} \\ &= \det(\mathbf{\Lambda}) && \text{(the first display)} \\ &= \prod\_{i=1}^p \lambda_i && \text{(determinant of a diagonal matrix)} \end{aligned} \\
>
> The product steps are [Theorem 76](#thm-det-product), the orthogonality step is [Definition 74](#def-orthogonal-matrix), and the identity and diagonal steps are [Theorem 75](#thm-det-diagonal) and [Example 143](#exm-det-diagonal).

> **NOTE:**
>
> **Corollary 7 (A positive definite matrix has a positive determinant)** If \\\mathbf{A}\\ is positive definite ([Definition 84](#def-positive-definite)), then \\\det(\mathbf{A}) \> 0\\.

> **NOTE:**
>
> *Proof*. By [Theorem 72](#thm-definite-eigenvalues), every eigenvalue of \\\mathbf{A}\\ is positive, so their product, which is \\\det(\mathbf{A})\\ by [Theorem 77](#thm-det-eigenvalues), is positive.

> **NOTE:**
>
> **Example 145 (Two ways to the same determinant)** \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ has eigenvalues \\3\\ and \\1\\ ([Example 132](#exm-eigenvalue)), so [Theorem 77](#thm-det-eigenvalues) gives \\\det(\mathbf{A}) = 3 \cdot 1 = 3\\, matching \\2 \cdot 2 - 1 \cdot 1 = 3\\ from [Example 142](#exm-determinant).

## 9 Design Matrix

> **NOTE:**
>
> **Definition 87 (Design matrix (model matrix))** In a regression model with \\n\\ observations and \\p\\ predictors, the **design matrix** (or **model matrix**) \\\mathbf{X}\\ is the \\n \times p\\ matrix whose \\i\\-th row is the covariate vector \\{\tilde{x}\_i}^{\top}\\ for observation \\i\\:
>
> \\ \mathbf{X}= \begin{bmatrix} {\tilde{x}\_1}^{\top} \\ {\tilde{x}\_2}^{\top} \\ \vdots \\ {\tilde{x}\_n}^{\top} \end{bmatrix} = \begin{bmatrix} x\_{11} & x\_{12} & \cdots & x\_{1p} \\ x\_{21} & x\_{22} & \cdots & x\_{2p} \\ \vdots & \vdots & \ddots & \vdots \\ x\_{n1} & x\_{n2} & \cdots & x\_{np} \end{bmatrix} \\

> **NOTE:**
>
> *Remark 40* (Products with the design matrix). The product \\\mathbf{X}\tilde{\beta}\\ collects the values \\{\tilde{x}\_i}^{\top}\tilde{\beta}\\ for all \\n\\ observations into a single \\n \times 1\\ vector:
>
> \\ \mathbf{X}\tilde{\beta}= \begin{bmatrix} {\tilde{x}\_1}^{\top}\tilde{\beta}\\ \vdots \\ {\tilde{x}\_n}^{\top}\tilde{\beta} \end{bmatrix} \\
>
> For example, take the rank-\\2\\ matrix from [Example 33](#exm-rank) as \\\mathbf{X}\\, with \\n = 3\\ observations and \\p = 2\\ columns: an intercept column and one covariate. With \\\tilde{\beta}= (1, 2)\\,
>
> \\ \mathbf{X}\tilde{\beta} = \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ 2 \end{bmatrix} = \begin{bmatrix} 3 \\ 5 \\ 7 \end{bmatrix}. \\
>
> The matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ is \\p \times p\\ and symmetric, since \\{({\mathbf{X}}^{\top}\mathbf{X})}^{\top} = {\mathbf{X}}^{\top}\\{({\mathbf{X}}^{\top})}^{\top} = {\mathbf{X}}^{\top}\mathbf{X}\\ ([Theorem 19](#thm-transpose-product)). When \\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible, it appears in the OLS estimator \\\hat{\tilde{\beta}} = ({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\tilde{y}\\.

> **NOTE:**
>
> **Theorem 78 (\\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible when \\\mathbf{X}\\ has full column rank)** If \\\mathbf{X}\\ is an \\n \times p\\ matrix with \\\operatorname{rank}(\mathbf{X}) = p\\ ([Definition 38](#def-rank)), then the \\p \times p\\ matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible.

> **NOTE:**
>
> *Proof*. Let \\\tilde{c}\\ be a vector of length \\p\\ with \\{\mathbf{X}}^{\top}\mathbf{X}\tilde{c} = \tilde{0}\\. Then
>
> \\ \begin{aligned} 0 &= {\tilde{c}}^{\top}\\{\mathbf{X}}^{\top}\mathbf{X}\tilde{c} && \text{(multiply } {\mathbf{X}}^{\top}\mathbf{X}\tilde{c} = \tilde{0}\text{ on the left by } {\tilde{c}}^{\top} \text{)} \\ &= {\mathopen{}\left(\mathbf{X}\tilde{c}\right)\mathclose{}}^{\top}\mathopen{}\left(\mathbf{X}\tilde{c}\right)\mathclose{} && \text{(transpose of a product)} \\ &= \mathopen{}\left\lVert\mathbf{X}\tilde{c}\right\rVert\mathclose{}^2 && \text{(definition of the Euclidean norm)} \end{aligned} \\
>
> so \\\mathbf{X}\tilde{c} = \tilde{0}\\. Because \\\mathbf{X}\tilde{c} = c_1 (\text{column } 1) + \cdots + c_p (\text{column } p)\\ and the columns of \\\mathbf{X}\\ are linearly independent, \\\tilde{c} = \tilde{0}\\. So the only solution of \\{\mathbf{X}}^{\top}\mathbf{X}\tilde{c} = \tilde{0}\\ is \\\tilde{c} = \tilde{0}\\, which says that the columns of the square matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ are linearly independent, and a square matrix with linearly independent columns is invertible ([Banerjee and Roy 2014](#ref-banerjee2014linear), Corollary 5.7, p. 143).

> **NOTE:**
>
> **Example 146 (Inverting \\{\mathbf{X}}^{\top}\mathbf{X}\\)** For the rank-\\2\\ matrix \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ from [Example 33](#exm-rank):
>
> \\ {\mathbf{X}}^{\top}\mathbf{X}= \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}, \qquad \mathopen{}\left({\mathbf{X}}^{\top}\mathbf{X}\right)^{-1}\mathclose{} = \frac{1}{6}\begin{bmatrix} 14 & -6 \\ -6 & 3 \end{bmatrix}, \\
>
> and multiplying the two out gives \\\mathbf{I}\_2\\.

> **NOTE:**
>
> **Definition 88 (Hat matrix)** For an \\n \times p\\ design matrix \\\mathbf{X}\\ ([Definition 87](#def-design-matrix)) with \\\operatorname{rank}(\mathbf{X}) = p\\, the **hat matrix** is the \\n \times n\\ matrix
>
> \\ \underbrace{\mathbf{H}}\_{n \times n} \stackrel{\text{def}}{=} \underbrace{\mathbf{X}}\_{n \times p} \underbrace{({\mathbf{X}}^{\top}\mathbf{X})^{-1}}\_{p \times p} \underbrace{{\mathbf{X}}^{\top}}\_{p \times n} \\
>
> The inverse exists by [Theorem 78](#thm-gram-invertible).

> **NOTE:**
>
> **Example 147 (The hat matrix of an intercept-only model)** With \\n = 2\\ observations and only an intercept, \\\mathbf{X}= \begin{bmatrix} 1 \\ 1 \end{bmatrix}\\ (\\2 \times 1\\, rank \\1\\), so \\{\mathbf{X}}^{\top}\mathbf{X}= 2\\ and
>
> \\ \mathbf{H} = \begin{bmatrix} 1 \\ 1 \end{bmatrix} \cdot\frac{1}{2} \cdot\begin{bmatrix} 1 & 1 \end{bmatrix} = \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}. \\
>
> Then \\\mathbf{H}\tilde{y}= (\bar{y}, \bar{y})\\, where \\\bar{y} = (y_1 + y_2)/2\\: the fitted values of an intercept-only model are the [sample mean](#def-mean).

> **NOTE:**
>
> **Theorem 79 (Hat matrix is a projection matrix)** If \\\mathbf{X}\\ is an \\n \times p\\ design matrix with \\\operatorname{rank}(\mathbf{X}) = p\\, then the hat matrix \\\mathbf{H}\\ ([Definition 88](#def-hat-matrix)) is an orthogonal projection matrix ([Definition 72](#def-projection-matrix)).

> **NOTE:**
>
> *Proof*. We verify symmetry and idempotency. Both use that \\{\mathbf{X}}^{\top}\mathbf{X}\\ is symmetric, \\{\mathopen{}\left({\mathbf{X}}^{\top}\mathbf{X}\right)\mathclose{}}^{\top} = {\mathbf{X}}^{\top}\\{\mathopen{}\left({\mathbf{X}}^{\top}\right)\mathclose{}}^{\top} = {\mathbf{X}}^{\top}\mathbf{X}\\ ([Theorem 19](#thm-transpose-product)), so its inverse is symmetric too ([Corollary 6](#cor-inverse-symmetric)).
>
> **Symmetry:** \\\begin{aligned} {\mathbf{H}}^{\top} &= {\left(\mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\right)}^{\top} && \text{(definition of } \mathbf{H} \text{)} \\ &= {({\mathbf{X}}^{\top})}^{\top} \cdot {\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1}\right)}^{\top} \cdot {\mathbf{X}}^{\top} && \text{(transpose of a product, twice)} \\ &= \mathbf{X}\cdot {\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1}\right)}^{\top} \cdot {\mathbf{X}}^{\top} && \text{(transposing twice changes nothing)} \\ &= \mathbf{X}\cdot ({\mathbf{X}}^{\top}\mathbf{X})^{-1} \cdot {\mathbf{X}}^{\top} && \text{(the inverse of a symmetric matrix is symmetric)} \\ &= \mathbf{H} && \text{(definition of } \mathbf{H} \text{)} \end{aligned}\\
>
> **Idempotency:** \\\begin{aligned} \mathbf{H}^2 &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} \cdot \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(definition of } \mathbf{H} \text{)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}({\mathbf{X}}^{\top}\mathbf{X})({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(regroup; matrix multiplication is associative)} \\ &= \mathbf{X}\\\mathbf{I}\_p\\({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(definition of the inverse)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(identity matrix)} \\ &= \mathbf{H} && \text{(definition of } \mathbf{H} \text{)} \end{aligned}\\

> **NOTE:**
>
> **Example 148 (The intercept-only hat matrix is a projection)** For \\\mathbf{H} = \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}\\ from [Example 147](#exm-hat-matrix), \\{\mathbf{H}}^{\top} = \mathbf{H}\\, and
>
> \\ \mathbf{H}^2 = \begin{bmatrix} 0.5 \cdot 0.5 + 0.5 \cdot 0.5 & 0.5 \cdot 0.5 + 0.5 \cdot 0.5 \\ 0.5 \cdot 0.5 + 0.5 \cdot 0.5 & 0.5 \cdot 0.5 + 0.5 \cdot 0.5 \end{bmatrix} = \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix} = \mathbf{H}, \\
>
> as [Theorem 79](#thm-hat-matrix) says.

> **NOTE:**
>
> *Remark 41* (Why it is called the hat matrix). The hat matrix gives the fitted values in linear regression: \\\hat{\tilde{y}} = \mathbf{X}\hat{\tilde{\beta}} = \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\tilde{y}= \mathbf{H}\tilde{y}\\. Multiplying by \\\mathbf{H}\\ “puts a hat” on \\\tilde{y}\\, which is where the name comes from. In [Example 147](#exm-hat-matrix), \\\mathbf{H}\\ puts a hat on \\\tilde{y}\\ by replacing each \\y_i\\ with the sample mean \\\bar{y}\\.

### 9.1 Orthogonal projection onto a subspace

> **NOTE:**
>
> This section is adapted from the second half of Zhou ([2024e](#ref-zhou2024orthproj)), used under the MIT License (see the license text in [Section 2.10](#sec-subspaces)). It connects the orthogonal projection matrices of [Definition 72](#def-projection-matrix), defined by an algebraic property, to the geometric decomposition of [Theorem 49](#thm-orthogonal-direct-sum).

> **NOTE:**
>
> **Definition 89 (Orthogonal projection onto a subspace)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\ and \\\tilde{y} \in \mathbb{R}^p\\. By [Theorem 49](#thm-orthogonal-direct-sum), \\\tilde{y} = \tilde{u} + \tilde{v}\\ for exactly one \\\tilde{u} \in \mathcal{S}\\ and \\\tilde{v} \in \mathcal{S}^\perp\\. The vector \\\tilde{u}\\ is the **orthogonal projection** of \\\tilde{y}\\ onto \\\mathcal{S}\\.

> **NOTE:**
>
> **Example 149 (Projecting onto a line in \\\mathbb{R}^3\\)** In [Example 85](#exm-orthogonal-direct-sum), \\\tilde{y} = (3, 1, 2)\\ splits as \\(2, 2, 0) + (1, -1, 2)\\, with \\(2, 2, 0) \in \mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ and \\(1, -1, 2) \in \mathcal{S}^\perp\\. So the orthogonal projection of \\(3, 1, 2)\\ onto \\\mathcal{S}\\ is \\(2, 2, 0)\\. A vector already in \\\mathcal{S}\\, such as \\(5, 5, 0)\\, is its own projection, since \\(5, 5, 0) = (5, 5, 0) + \tilde{0}\\ and \\\tilde{0}\in \mathcal{S}^\perp\\ ([Theorem 47](#thm-orthogonal-complement-subspace), [Theorem 20](#thm-subspace-zero)); a vector of \\\mathcal{S}^\perp\\, such as \\(1, -1, 2)\\, projects to \\\tilde{0}\\, since \\(1, -1, 2) = \tilde{0}+ (1, -1, 2)\\ and \\\tilde{0}\in \mathcal{S}\\ ([Theorem 20](#thm-subspace-zero)).

> **NOTE:**
>
> **Example 150 (A split that is not the orthogonal one)** \\(3, 1, 2) = (3, 3, 0) + (0, -2, 2)\\ also writes \\(3, 1, 2)\\ as a vector of \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ plus a remainder, but \\(1, 1, 0) \cdot (0, -2, 2) = -2 \ne 0\\, so the remainder is not in \\\mathcal{S}^\perp\\, and \\(3, 3, 0)\\ is not the orthogonal projection of \\(3, 1, 2)\\ onto \\\mathcal{S}\\.

> **NOTE:**
>
> **Theorem 80 (The orthogonal projection is the closest point)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\, let \\\tilde{y} \in \mathbb{R}^p\\, and let \\\tilde{u}\\ be the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{S}\\ ([Definition 89](#def-orthogonal-projection)). Then for every \\\tilde{w} \in \mathcal{S}\\,
>
> \\ \mathopen{}\left\lVert\tilde{y} - \tilde{u}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\tilde{y} - \tilde{w}\right\rVert\mathclose{}, \\
>
> with equality only when \\\tilde{w} = \tilde{u}\\.

> **NOTE:**
>
> *Proof*. By [Definition 89](#def-orthogonal-projection), \\\tilde{y} - \tilde{u} \in \mathcal{S}^\perp\\. Both \\\tilde{u}\\ and \\\tilde{w}\\ are in \\\mathcal{S}\\, so \\\tilde{u} - \tilde{w} = \tilde{u} + (-1)\\\tilde{w} \in \mathcal{S}\\ ([Definition 40](#def-subspace)), and therefore \\(\tilde{y} - \tilde{u}) \perp (\tilde{u} - \tilde{w})\\ ([Definition 54](#def-orthogonal-complement)). Then
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{y} - \tilde{w}\right\rVert\mathclose{}^2 &= \mathopen{}\left\lVert(\tilde{y} - \tilde{u}) + (\tilde{u} - \tilde{w})\right\rVert\mathclose{}^2 && \text{(add and subtract } \tilde{u} \text{)} \\ &= \mathopen{}\left\lVert\tilde{y} - \tilde{u}\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\tilde{u} - \tilde{w}\right\rVert\mathclose{}^2 && \text{(Pythagorean theorem, }\href{#thm-norm-sum-square}{\text{Theorem~53}}\text{)} \\ &\ge \mathopen{}\left\lVert\tilde{y} - \tilde{u}\right\rVert\mathclose{}^2, && \text{(} \mathopen{}\left\lVert\tilde{u} - \tilde{w}\right\rVert\mathclose{}^2 \ge 0 \text{, }\href{#thm-norm-properties}{\text{Theorem~52}}\text{)} \end{aligned} \\
>
> with equality exactly when \\\mathopen{}\left\lVert\tilde{u} - \tilde{w}\right\rVert\mathclose{} = 0\\, that is, when \\\tilde{w} = \tilde{u}\\ ([Theorem 52](#thm-norm-properties), part 1). Taking nonnegative square roots preserves the inequality.

> **NOTE:**
>
> **Example 151 (No point of the line is closer)** In [Example 149](#exm-orthogonal-projection), \\\tilde{y} = (3, 1, 2)\\ has projection \\\tilde{u} = (2, 2, 0)\\ onto \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\, at distance \\\mathopen{}\left\lVert(1, -1, 2)\right\rVert\mathclose{} = \sqrt{6}\\. Another point of \\\mathcal{S}\\, such as \\\tilde{w} = (3, 3, 0)\\, is farther: \\\mathopen{}\left\lVert\tilde{y} - \tilde{w}\right\rVert\mathclose{} = \mathopen{}\left\lVert(0, -2, 2)\right\rVert\mathclose{} = \sqrt{8} \> \sqrt{6}\\, and the difference of squares is \\\mathopen{}\left\lVert\tilde{u} - \tilde{w}\right\rVert\mathclose{}^2 = \mathopen{}\left\lVert(-1, -1, 0)\right\rVert\mathclose{}^2 = 2 = 8 - 6\\, by the Pythagorean theorem ([Theorem 53](#thm-norm-sum-square)), since \\\tilde{y} - \tilde{u} \in \mathcal{S}^\perp\\ and \\\tilde{u} - \tilde{w} \in \mathcal{S}\\.

> **NOTE:**
>
> **Theorem 81 (Projecting with an orthonormal basis)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\ with \\\dim(\mathcal{S}) = r \ge 1\\, and let \\\mathbf{Q}\\ be the \\p \times r\\ matrix whose columns \\\tilde{q}\_1, \ldots, \tilde{q}\_r\\ are an orthonormal basis of \\\mathcal{S}\\ ([Definition 62](#def-orthonormal-basis), [Corollary 5](#cor-orthonormal-basis-exists)). Then for every \\\tilde{y} \in \mathbb{R}^p\\, \\\mathbf{Q} {\mathbf{Q}}^{\top} \tilde{y}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{S}\\, and \\\mathbf{Q} {\mathbf{Q}}^{\top}\\ is an orthogonal projection matrix ([Definition 72](#def-projection-matrix)).

> **NOTE:**
>
> *Proof*. **\\{\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_r\\.** Write \\q\_{ki}\\ for entry \\k\\ of \\\tilde{q}\_i\\, which is entry \\(k, i)\\ of \\\mathbf{Q}\\. Then
>
> \\ \begin{aligned} ({\mathbf{Q}}^{\top} \mathbf{Q})\_{ij} &= \sum\_{k=1}^{p} ({\mathbf{Q}}^{\top})\_{ik}\\ q\_{kj} && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{)} \\ &= \sum\_{k=1}^{p} q\_{ki}\\ q\_{kj} && \text{(}\href{#def-matrix-transpose}{\text{Definition~20}}\text{)} \\ &= \tilde{q}\_i \cdot \tilde{q}\_j, && \text{(}\href{#def-dot-product}{\text{Definition~7}}\text{)} \end{aligned} \\
>
> which is \\1\\ if \\i = j\\ and \\0\\ otherwise ([Definition 17](#def-orthonormal-vectors)), so \\{\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_r\\ ([Definition 27](#def-identity-matrix)).
>
> **The split.** Let \\\tilde{u} = \mathbf{Q} {\mathbf{Q}}^{\top} \tilde{y}\\ and \\\tilde{v} = \tilde{y} - \tilde{u}\\, so \\\tilde{y} = \tilde{u} + \tilde{v}\\. \\\tilde{u} = \mathbf{Q}\\({\mathbf{Q}}^{\top} \tilde{y})\\ ([Theorem 8](#thm-matmul-assoc)) is in \\\mathcal{C}(\mathbf{Q})\\ ([Definition 45](#def-column-space)), which is \\\operatorname{span}\mathopen{}\left\\\tilde{q}\_1, \ldots, \tilde{q}\_r\right\\\mathclose{} = \mathcal{S}\\ ([Theorem 31](#thm-column-space-span)). For \\\tilde{v}\\,
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top} \tilde{v} &= {\mathbf{Q}}^{\top}\\(\tilde{y} - \mathbf{Q} {\mathbf{Q}}^{\top} \tilde{y}) && \text{(substitute)} \\ &= {\mathbf{Q}}^{\top} \tilde{y} - {\mathbf{Q}}^{\top}\\(\mathbf{Q} {\mathbf{Q}}^{\top} \tilde{y}) && \text{(}\href{#thm-matvec-linear}{\text{Theorem~23}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= {\mathbf{Q}}^{\top} \tilde{y} - ({\mathbf{Q}}^{\top} \mathbf{Q})\\{\mathbf{Q}}^{\top} \tilde{y} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {\mathbf{Q}}^{\top} \tilde{y} - \mathbf{I}\_r\\{\mathbf{Q}}^{\top} \tilde{y} && \text{(} {\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_r \text{, from the first part of the proof)} \\ &= {\mathbf{Q}}^{\top} \tilde{y} - {\mathbf{Q}}^{\top} \tilde{y} && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \\ &= \tilde{0}\_r, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\tilde{v} \in \mathcal{N}({\mathbf{Q}}^{\top}) = \mathcal{C}(\mathbf{Q})^\perp = \mathcal{S}^\perp\\ ([Theorem 48](#thm-complement-null-space)). By the uniqueness in [Theorem 49](#thm-orthogonal-direct-sum), \\\tilde{u}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{S}\\.
>
> **\\\mathbf{Q} {\mathbf{Q}}^{\top}\\ is symmetric and idempotent.**
>
> \\ \begin{aligned} {(\mathbf{Q} {\mathbf{Q}}^{\top})}^{\top} &= {({\mathbf{Q}}^{\top})}^{\top}\\{\mathbf{Q}}^{\top} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= \mathbf{Q} {\mathbf{Q}}^{\top}, && \text{(transposing twice, }\href{#def-matrix-transpose}{\text{Definition~20}}\text{)} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} (\mathbf{Q} {\mathbf{Q}}^{\top})(\mathbf{Q} {\mathbf{Q}}^{\top}) &= \mathbf{Q}\\({\mathbf{Q}}^{\top} \mathbf{Q})\\{\mathbf{Q}}^{\top} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{Q}\\\mathbf{I}\_r\\{\mathbf{Q}}^{\top} && \text{(} {\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_r \text{, from the first part of the proof)} \\ &= \mathbf{Q} {\mathbf{Q}}^{\top}. && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 152 (The projection matrix onto a line)** For \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\, the single vector \\\tilde{q}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0)\\ is an orthonormal basis: it spans \\\mathcal{S}\\, it is nonzero and so linearly independent, and \\\mathopen{}\left\lVert\tilde{q}\_1\right\rVert\mathclose{} = \sqrt{\tfrac{1}{2} + \tfrac{1}{2} + 0} = 1\\. With \\\mathbf{Q} = \[\tilde{q}\_1\]\\,
>
> \\ \mathbf{Q} {\mathbf{Q}}^{\top} = \tfrac{1}{2} \begin{bmatrix} 1 \\ 1 \\ 0 \end{bmatrix} \begin{bmatrix} 1 & 1 & 0 \end{bmatrix} = \begin{bmatrix} \tfrac{1}{2} & \tfrac{1}{2} & 0 \\ \tfrac{1}{2} & \tfrac{1}{2} & 0 \\ 0 & 0 & 0 \end{bmatrix}. \\
>
> Applied to \\\tilde{y} = (3, 1, 2)\\, it gives \\\mathopen{}\left(\tfrac{3 + 1}{2}, \tfrac{3 + 1}{2}, 0\right)\mathclose{} = (2, 2, 0)\\, the projection found in [Example 149](#exm-orthogonal-projection).

> **NOTE:**
>
> **Theorem 82 (A projection matrix projects onto its column space, and is the only one that does)**  
>
> 1.  If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 72](#def-projection-matrix)), then for every \\\tilde{y} \in \mathbb{R}^p\\, \\\mathbf{P} \tilde{y}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{P})\\ ([Definition 89](#def-orthogonal-projection)).
> 2.  If \\\mathbf{P}\_1\\ and \\\mathbf{P}\_2\\ are \\p \times p\\ matrices such that, for every \\\tilde{y}\\, both \\\mathbf{P}\_1 \tilde{y}\\ and \\\mathbf{P}\_2 \tilde{y}\\ are the orthogonal projection of \\\tilde{y}\\ onto the same subspace \\\mathcal{S}\\, then \\\mathbf{P}\_1 = \mathbf{P}\_2\\.

> **NOTE:**
>
> *Proof*. **Part 1.** Write \\\tilde{y} = \mathbf{P} \tilde{y} + (\tilde{y} - \mathbf{P} \tilde{y})\\. The first term is in \\\mathcal{C}(\mathbf{P})\\ ([Definition 45](#def-column-space)). For the second,
>
> \\ \begin{aligned} \mathbf{P}\\(\tilde{y} - \mathbf{P} \tilde{y}) &= \mathbf{P} \tilde{y} - \mathbf{P}\\(\mathbf{P} \tilde{y}) && \text{(}\href{#thm-matvec-linear}{\text{Theorem~23}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= \mathbf{P} \tilde{y} - (\mathbf{P} \mathbf{P})\\\tilde{y} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{P} \tilde{y} - \mathbf{P}^2 \tilde{y} && \text{(}\href{#def-matrix-power}{\text{Definition~66}}\text{)} \\ &= \mathbf{P} \tilde{y} - \mathbf{P} \tilde{y} && \text{(} \mathbf{P} \text{ is idempotent)} \\ &= \tilde{0}\_p, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\tilde{y} - \mathbf{P} \tilde{y} \in \mathcal{N}(\mathbf{P})\\. Since \\\mathbf{P} = {\mathbf{P}}^{\top}\\, \\\mathcal{N}(\mathbf{P}) = \mathcal{N}({\mathbf{P}}^{\top}) = \mathcal{C}(\mathbf{P})^\perp\\ ([Theorem 48](#thm-complement-null-space)). By the uniqueness in [Theorem 49](#thm-orthogonal-direct-sum), \\\mathbf{P} \tilde{y}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{P})\\.
>
> **Part 2.** The orthogonal projection of a vector onto \\\mathcal{S}\\ is unique ([Definition 89](#def-orthogonal-projection)), so \\\mathbf{P}\_1 \tilde{e}\_j = \mathbf{P}\_2 \tilde{e}\_j\\ for each indicator vector \\\tilde{e}\_j\\ ([Definition 12](#def-indicator-vector)). \\\mathbf{P}\_1 \tilde{e}\_j\\ is column \\j\\ of \\\mathbf{P}\_1\\: by [Theorem 22](#thm-matvec-columns) it is the combination of the columns of \\\mathbf{P}\_1\\ with coefficients the entries of \\\tilde{e}\_j\\, which are \\1\\ in place \\j\\ and \\0\\ elsewhere ([Definition 12](#def-indicator-vector)). Likewise for \\\mathbf{P}\_2\\, so the two matrices have the same columns.

> **NOTE:**
>
> **Example 153 (Two routes to the same projection matrix)** The matrix \\\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ of [Example 122](#exm-projection-matrix) is an orthogonal projection matrix, and its column space is \\\operatorname{span}\mathopen{}\left\\(1, 0)\right\\\mathclose{}\\, the horizontal axis. By part 1, \\\mathbf{P}(v_1, v_2) = (v_1, 0)\\ is the orthogonal projection onto that axis: the remainder \\(0, v_2)\\ is orthogonal to \\(1, 0)\\. The vector \\\tilde{q}\_1 = (1, 0)\\ has length \\1\\ and spans the axis, so it is an orthonormal basis of it, and with \\\mathbf{B} = \[\tilde{q}\_1\]\\, \\\mathbf{B} {\mathbf{B}}^{\top} = \begin{bmatrix} 1 \\ 0 \end{bmatrix} \begin{bmatrix} 1 & 0 \end{bmatrix} = \mathbf{P}\\, as part 2 and [Theorem 81](#thm-projector-onb) require.
>
> The oblique projection \\\mathbf{Q} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}\\ of [Example 122](#exm-projection-matrix) also maps every vector into the horizontal axis. It sends \\(0, 1)\\ to \\(1, 0)\\, but the remainder \\(0, 1) - (1, 0) = (-1, 1)\\ is not orthogonal to the axis, so \\(1, 0)\\ is not the orthogonal projection of \\(0, 1)\\ onto the axis, which is \\\mathbf{P}(0, 1) = (0, 0)\\.

> **NOTE:**
>
> **Theorem 83 (The hat matrix projects onto the column space of the design matrix)** If \\\mathbf{X}\\ is an \\n \times p\\ design matrix with \\\operatorname{rank}(\mathbf{X}) = p\\, then for every \\\tilde{y}\in \mathbb{R}^n\\, \\\mathbf{H} \tilde{y}\\ ([Definition 88](#def-hat-matrix)) is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{X})\\. So \\\mathbf{H} = \mathbf{Q} {\mathbf{Q}}^{\top}\\ for any \\n \times p\\ matrix \\\mathbf{Q}\\ whose columns are an orthonormal basis of \\\mathcal{C}(\mathbf{X})\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{H}\\ is an orthogonal projection matrix ([Theorem 79](#thm-hat-matrix)), so \\\mathbf{H} \tilde{y}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{H})\\ ([Theorem 82](#thm-projection-matrix-projects), part 1). It remains to show \\\mathcal{C}(\mathbf{H}) = \mathcal{C}(\mathbf{X})\\.
>
> **\\\mathcal{C}(\mathbf{H}) \subseteq \mathcal{C}(\mathbf{X})\\.** \\\mathbf{H} \tilde{z} = \mathbf{X}\\\mathopen{}\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1} {\mathbf{X}}^{\top} \tilde{z}\right)\mathclose{}\\ ([Theorem 8](#thm-matmul-assoc)), which is in \\\mathcal{C}(\mathbf{X})\\ ([Definition 45](#def-column-space)).
>
> **\\\mathcal{C}(\mathbf{X}) \subseteq \mathcal{C}(\mathbf{H})\\.** First,
>
> \\ \begin{aligned} \mathbf{H} \mathbf{X} &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1} {\mathbf{X}}^{\top} \mathbf{X} && \text{(}\href{#def-hat-matrix}{\text{Definition~88}}\text{)} \\ &= \mathbf{X}\\\mathopen{}\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1} ({\mathbf{X}}^{\top}\mathbf{X})\right)\mathclose{} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{X}\\\mathbf{I}\_p && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= \mathbf{X}. && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \end{aligned} \\
>
> So for every \\\tilde{b} \in \mathbb{R}^p\\, \\\mathbf{X}\tilde{b} = (\mathbf{H} \mathbf{X})\\\tilde{b}\\, since \\\mathbf{H} \mathbf{X}= \mathbf{X}\\, and \\(\mathbf{H} \mathbf{X})\\\tilde{b} = \mathbf{H}\\(\mathbf{X}\tilde{b})\\ ([Theorem 8](#thm-matmul-assoc)), which is in \\\mathcal{C}(\mathbf{H})\\.
>
> \\\mathcal{C}(\mathbf{X})\\ has dimension \\p \ge 1\\ ([Theorem 35](#thm-rank-dim)), so an orthonormal basis of it has \\p\\ vectors ([Definition 44](#def-dimension)), and \\\mathbf{Q} {\mathbf{Q}}^{\top}\\ also gives the orthogonal projection onto \\\mathcal{C}(\mathbf{X})\\ ([Theorem 81](#thm-projector-onb), with \\n\\ in place of \\p\\ and \\r = p\\). By [Theorem 82](#thm-projection-matrix-projects), part 2, \\\mathbf{H} = \mathbf{Q} {\mathbf{Q}}^{\top}\\.

> **NOTE:**
>
> **Example 154 (The intercept-only hat matrix, from an orthonormal basis)** For the intercept-only design \\\mathbf{X}= \begin{bmatrix} 1 \\ 1 \end{bmatrix}\\ of [Example 147](#exm-hat-matrix), \\\mathcal{C}(\mathbf{X}) = \operatorname{span}\mathopen{}\left\\(1, 1)\right\\\mathclose{}\\, with orthonormal basis \\\tilde{q}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1)\\, since \\\mathopen{}\left\lVert\tilde{q}\_1\right\rVert\mathclose{} = \sqrt{\tfrac{1}{2} + \tfrac{1}{2}} = 1\\. With \\\mathbf{Q} = \[\tilde{q}\_1\]\\,
>
> \\ \mathbf{Q} {\mathbf{Q}}^{\top} = \tfrac{1}{2} \begin{bmatrix} 1 \\ 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \end{bmatrix} = \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}, \\
>
> the hat matrix found in [Example 147](#exm-hat-matrix). The fitted values \\(\bar{y}, \bar{y})\\ are the closest point to \\\tilde{y}\\ on the line of constant vectors ([Theorem 80](#thm-closest-point)), and the residuals \\(y_1 - \bar{y}, y_2 - \bar{y})\\ are orthogonal to \\(1, 1)\\: \\(1, 1) \cdot (y_1 - \bar{y}, y_2 - \bar{y}) = y_1 + y_2 - 2\bar{y} = 0\\, since \\2\bar{y} = y_1 + y_2\\.

### 9.2 Generalized inverses and linear systems

> **NOTE:**
>
> This section is adapted from Zhou ([2024c](#ref-zhou2024matinv)), used under the MIT License (see the license text in [Section 2.10](#sec-subspaces)). The source defers the existence of the Moore-Penrose inverse to the singular value decomposition; the proof here builds it from a rank factorization ([Theorem 41](#thm-rank-factorization)) instead, and the section adds the projection \\\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top}\\ for any generalized inverse \\\mathbf{G}\\ of \\{\mathbf{X}}^{\top} \mathbf{X}\\, which the source does not cover.

> **NOTE:**
>
> **Theorem 84 (A scalar factor passes through a matrix product)** For an \\m \times k\\ matrix \\\mathbf{A}\\, a \\k \times n\\ matrix \\\mathbf{B}\\ and a number \\c\\,
>
> \\ \mathbf{A}\\(c\\\mathbf{B}) = c\\(\mathbf{A} \mathbf{B}) = (c\\\mathbf{A})\\\mathbf{B}. \\
>
> In particular, \\\mathbf{A}\\(\mathbf{B} - \mathbf{C}) = \mathbf{A} \mathbf{B} - \mathbf{A} \mathbf{C}\\ and \\(\mathbf{B} - \mathbf{C})\\\mathbf{D} = \mathbf{B} \mathbf{D} - \mathbf{C} \mathbf{D}\\ for matrices of compatible sizes, where \\\mathbf{B} - \mathbf{C} = \mathbf{B} + (-1)\\\mathbf{C}\\ ([Theorem 7](#thm-matadd-inverse), [Definition 23](#def-scalar-mult)).

> **NOTE:**
>
> *Proof*. **\\\mathbf{A}\\(c\\\mathbf{B}) = c\\(\mathbf{A} \mathbf{B})\\.** For each entry \\(i, j)\\,
>
> \\ \begin{aligned} \mathopen{}\left(\mathbf{A}\\(c\\\mathbf{B})\right)\mathclose{}\_{ij} &= \sum\_{l=1}^{k} a\_{il}\\(c\\\mathbf{B})\_{lj} && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{)} \\ &= \sum\_{l=1}^{k} a\_{il}\\(c\\b\_{lj}) && \text{(}\href{#def-scalar-mult}{\text{Definition~23}}\text{)} \\ &= \sum\_{l=1}^{k} c\\(a\_{il}\\b\_{lj}) && \text{(reorder the product of numbers)} \\ &= c \sum\_{l=1}^{k} a\_{il}\\b\_{lj} && \text{(factor } c \text{ out of the sum)} \\ &= c\\(\mathbf{A} \mathbf{B})\_{ij} && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{)} \\ &= \mathopen{}\left(c\\(\mathbf{A} \mathbf{B})\right)\mathclose{}\_{ij}. && \text{(}\href{#def-scalar-mult}{\text{Definition~23}}\text{)} \end{aligned} \\
>
> **\\(c\\\mathbf{A})\\\mathbf{B} = c\\(\mathbf{A} \mathbf{B})\\.** For each entry \\(i, j)\\,
>
> \\ \begin{aligned} \mathopen{}\left((c\\\mathbf{A})\\\mathbf{B}\right)\mathclose{}\_{ij} &= \sum\_{l=1}^{k} (c\\a\_{il})\\b\_{lj} && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{, }\href{#def-scalar-mult}{\text{Definition~23}}\text{)} \\ &= c \sum\_{l=1}^{k} a\_{il}\\b\_{lj} && \text{(factor } c \text{ out of the sum)} \\ &= \mathopen{}\left(c\\(\mathbf{A} \mathbf{B})\right)\mathclose{}\_{ij}. && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{, }\href{#def-scalar-mult}{\text{Definition~23}}\text{)} \end{aligned} \\
>
> **Differences.**
>
> \\ \begin{aligned} \mathbf{A}\\(\mathbf{B} - \mathbf{C}) &= \mathbf{A}\\(\mathbf{B} + (-1)\\\mathbf{C}) && \text{(the difference as a sum)} \\ &= \mathbf{A} \mathbf{B} + \mathbf{A}\\((-1)\\\mathbf{C}) && \text{(}\href{#thm-matmul-distrib}{\text{Theorem~9}}\text{)} \\ &= \mathbf{A} \mathbf{B} + (-1)\\(\mathbf{A} \mathbf{C}) && \text{(first part)} \\ &= \mathbf{A} \mathbf{B} - \mathbf{A} \mathbf{C}, && \text{(the difference as a sum)} \end{aligned} \\
>
> and \\(\mathbf{B} - \mathbf{C})\\\mathbf{D} = \mathbf{B} \mathbf{D} - \mathbf{C} \mathbf{D}\\ the same way, using the second law in [Theorem 9](#thm-matmul-distrib) and the second part. A column vector is a matrix with one column, so all of this applies with \\\mathbf{B}\\, \\\mathbf{C}\\ or \\\mathbf{D}\\ a vector.

> **NOTE:**
>
> **Example 155 (Pulling a scalar out of a product)** With \\\mathbf{A} = \begin{bmatrix} 1 & 2 \end{bmatrix}\\ and \\\mathbf{B} = \begin{bmatrix} 3 \\ 4 \end{bmatrix}\\: \\\mathbf{A}\\(2\\\mathbf{B}) = \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 6 \\ 8 \end{bmatrix} = 22\\, and \\2\\(\mathbf{A} \mathbf{B}) = 2\\(3 + 8) = 22\\.

> **NOTE:**
>
> **Definition 90 (Generalized inverse)** A **generalized inverse** of an \\m \times n\\ matrix \\\mathbf{A}\\ is an \\n \times m\\ matrix \\\mathbf{G}\\ such that
>
> \\ \underbrace{\mathbf{A}}\_{m \times n}\\ \underbrace{\mathbf{G}}\_{n \times m}\\ \underbrace{\mathbf{A}}\_{m \times n} = \mathbf{A}. \\

> **NOTE:**
>
> **Example 156 (A matrix with many generalized inverses)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ and \\\mathbf{G} = \begin{bmatrix} g\_{11} & g\_{12} \\ g\_{21} & g\_{22} \end{bmatrix}\\. Then
>
> \\ \begin{aligned} \mathbf{A} \mathbf{G} \mathbf{A} &= \begin{bmatrix} g\_{11} & g\_{12} \\ 0 & 0 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix} && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{, for } \mathbf{A} \mathbf{G} \text{)} \\ &= \begin{bmatrix} g\_{11} & 0 \\ 0 & 0 \end{bmatrix}, && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{)} \end{aligned} \\
>
> which equals \\\mathbf{A}\\ exactly when \\g\_{11} = 1\\. So every matrix \\\begin{bmatrix} 1 & g\_{12} \\ g\_{21} & g\_{22} \end{bmatrix}\\ is a generalized inverse of \\\mathbf{A}\\: a generalized inverse need not be unique. The zero matrix is not one, since its \\(1, 1)\\ entry is \\0\\.

> **NOTE:**
>
> **Theorem 85 (An invertible matrix has only one generalized inverse)** If \\\mathbf{A}\\ is an invertible \\p \times p\\ matrix ([Definition 70](#def-invertible-matrix)), its only generalized inverse is \\\mathbf{A}^{-1}\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{A} \mathbf{A}^{-1} \mathbf{A} = \mathbf{I}\_p \mathbf{A} = \mathbf{A}\\ ([Definition 69](#def-matrix-inverse), [Theorem 10](#thm-identity)), so \\\mathbf{A}^{-1}\\ is a generalized inverse. If \\\mathbf{G}\\ is any generalized inverse, then
>
> \\ \begin{aligned} \mathbf{G} &= \mathbf{I}\_p\\\mathbf{G}\\\mathbf{I}\_p && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \\ &= (\mathbf{A}^{-1} \mathbf{A})\\\mathbf{G}\\(\mathbf{A} \mathbf{A}^{-1}) && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= \mathbf{A}^{-1}\\(\mathbf{A} \mathbf{G} \mathbf{A})\\\mathbf{A}^{-1} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{A}^{-1} \mathbf{A} \mathbf{A}^{-1} && \text{(}\href{#def-generalized-inverse}{\text{Definition~90}}\text{)} \\ &= \mathbf{I}\_p\\\mathbf{A}^{-1} && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= \mathbf{A}^{-1}. && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 157 (The generalized inverse of an invertible matrix)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ of [Example 117](#exm-invertible-matrix), the only generalized inverse is \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\. The matrix of [Example 156](#exm-generalized-inverse), by contrast, has infinitely many, so by [Theorem 85](#thm-generalized-inverse-invertible) it is singular.

> **NOTE:**
>
> **Theorem 86 (A generalized inverse solves every solvable system)** Let \\\mathbf{A}\\ be \\m \times n\\, let \\\mathbf{G}\\ be a generalized inverse of \\\mathbf{A}\\ ([Definition 90](#def-generalized-inverse)), and let \\\tilde{b} \in \mathbb{R}^m\\. If \\\mathbf{A} \tilde{x} = \tilde{b}\\ has a solution, then \\\mathbf{G} \tilde{b}\\ is a solution.

> **NOTE:**
>
> *Proof*. Let \\\tilde{x}\_0\\ be a solution, so \\\mathbf{A} \tilde{x}\_0 = \tilde{b}\\. Then
>
> \\ \begin{aligned} \mathbf{A}\\(\mathbf{G} \tilde{b}) &= \mathbf{A} \mathbf{G}\\(\mathbf{A} \tilde{x}\_0) && \text{(substitute } \tilde{b} = \mathbf{A} \tilde{x}\_0 \text{)} \\ &= (\mathbf{A} \mathbf{G} \mathbf{A})\\\tilde{x}\_0 && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{A} \tilde{x}\_0 && \text{(}\href{#def-generalized-inverse}{\text{Definition~90}}\text{)} \\ &= \tilde{b}. && \text{(} \tilde{x}\_0 \text{ is a solution)} \end{aligned} \\

> **NOTE:**
>
> **Example 158 (Solving with a generalized inverse)** With \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ and its generalized inverse \\\mathbf{G} = \begin{bmatrix} 1 & 5 \\ 7 & 0 \end{bmatrix}\\ ([Example 156](#exm-generalized-inverse)), the system \\\mathbf{A} \tilde{x} = (2, 0)\\ has the solution \\(2, 0)\\, and \\\mathbf{G}\\(2, 0) = (2, 14)\\ is a solution too: \\\mathbf{A}\\(2, 14) = (2, 0)\\. The system \\\mathbf{A} \tilde{x} = (2, 1)\\ has no solution, since the second entry of \\\mathbf{A} \tilde{x}\\ is always \\0\\; there \\\mathbf{G}\\(2, 1) = (7, 14)\\ gives \\\mathbf{A}\\(7, 14) = (7, 0) \ne (2, 1)\\.

> **NOTE:**
>
> **Definition 91 (Moore-Penrose inverse)** A **Moore-Penrose inverse** of an \\m \times n\\ matrix \\\mathbf{A}\\ is an \\n \times m\\ matrix \\\mathbf{G}\\ satisfying all four conditions
>
> 1.  \\\mathbf{A} \mathbf{G} \mathbf{A} = \mathbf{A}\\;
> 2.  \\\mathbf{G} \mathbf{A} \mathbf{G} = \mathbf{G}\\;
> 3.  \\{(\mathbf{A} \mathbf{G})}^{\top} = \mathbf{A} \mathbf{G}\\;
> 4.  \\{(\mathbf{G} \mathbf{A})}^{\top} = \mathbf{G} \mathbf{A}\\.
>
> Condition 1 says \\\mathbf{G}\\ is a generalized inverse ([Definition 90](#def-generalized-inverse)).

> **NOTE:**
>
> **Example 159 (Checking the four conditions)** For \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\, the matrix \\\mathbf{G} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ satisfies all four: \\\mathbf{A} \mathbf{G} = \mathbf{G} \mathbf{A} = \mathbf{A}\\ and \\\mathbf{A}^2 = \mathbf{A}\\, so conditions 1 and 2 read \\\mathbf{A} = \mathbf{A}\\, and conditions 3 and 4 hold because \\\mathbf{A}\\ is symmetric.
>
> The generalized inverse \\\mathbf{G}' = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}\\ of \\\mathbf{A}\\ ([Example 156](#exm-generalized-inverse)) is not a Moore-Penrose inverse: \\\mathbf{A} \mathbf{G}' = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}\\, which is not symmetric, so condition 3 fails.

> **NOTE:**
>
> **Theorem 87 (A matrix has at most one Moore-Penrose inverse)** If \\\mathbf{G}\_1\\ and \\\mathbf{G}\_2\\ are both Moore-Penrose inverses of an \\m \times n\\ matrix \\\mathbf{A}\\ ([Definition 91](#def-moore-penrose)), then \\\mathbf{G}\_1 = \mathbf{G}\_2\\.

> **NOTE:**
>
> *Proof*. **\\\mathbf{A} \mathbf{G}\_1 = \mathbf{A} \mathbf{G}\_2\\.**
>
> \\ \begin{aligned} \mathbf{A} \mathbf{G}\_1 &= {(\mathbf{A} \mathbf{G}\_1)}^{\top} && \text{(condition 3 for } \mathbf{G}\_1 \text{)} \\ &= {\mathbf{G}\_1}^{\top}\\{\mathbf{A}}^{\top} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= {\mathbf{G}\_1}^{\top}\\{(\mathbf{A} \mathbf{G}\_2 \mathbf{A})}^{\top} && \text{(condition 1 for } \mathbf{G}\_2 \text{)} \\ &= {\mathbf{G}\_1}^{\top}\\{\mathbf{A}}^{\top}\\{\mathbf{G}\_2}^{\top}\\{\mathbf{A}}^{\top} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{, twice)} \\ &= ({\mathbf{G}\_1}^{\top}\\{\mathbf{A}}^{\top})\\({\mathbf{G}\_2}^{\top}\\{\mathbf{A}}^{\top}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {(\mathbf{A} \mathbf{G}\_1)}^{\top}\\{(\mathbf{A} \mathbf{G}\_2)}^{\top} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{, twice)} \\ &= (\mathbf{A} \mathbf{G}\_1)(\mathbf{A} \mathbf{G}\_2) && \text{(condition 3 for } \mathbf{G}\_1 \text{ and } \mathbf{G}\_2 \text{)} \\ &= (\mathbf{A} \mathbf{G}\_1 \mathbf{A})\\\mathbf{G}\_2 && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{A} \mathbf{G}\_2. && \text{(condition 1 for } \mathbf{G}\_1 \text{)} \end{aligned} \\
>
> **\\\mathbf{G}\_1 \mathbf{A} = \mathbf{G}\_2 \mathbf{A}\\.**
>
> \\ \begin{aligned} \mathbf{G}\_1 \mathbf{A} &= {(\mathbf{G}\_1 \mathbf{A})}^{\top} && \text{(condition 4 for } \mathbf{G}\_1 \text{)} \\ &= {\mathbf{A}}^{\top}\\{\mathbf{G}\_1}^{\top} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= {(\mathbf{A} \mathbf{G}\_2 \mathbf{A})}^{\top}\\{\mathbf{G}\_1}^{\top} && \text{(condition 1 for } \mathbf{G}\_2 \text{)} \\ &= {\mathbf{A}}^{\top}\\{\mathbf{G}\_2}^{\top}\\{\mathbf{A}}^{\top}\\{\mathbf{G}\_1}^{\top} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{, twice)} \\ &= ({\mathbf{A}}^{\top}\\{\mathbf{G}\_2}^{\top})\\({\mathbf{A}}^{\top}\\{\mathbf{G}\_1}^{\top}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {(\mathbf{G}\_2 \mathbf{A})}^{\top}\\{(\mathbf{G}\_1 \mathbf{A})}^{\top} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{, twice)} \\ &= (\mathbf{G}\_2 \mathbf{A})(\mathbf{G}\_1 \mathbf{A}) && \text{(condition 4 for } \mathbf{G}\_2 \text{ and } \mathbf{G}\_1 \text{)} \\ &= \mathbf{G}\_2\\(\mathbf{A} \mathbf{G}\_1 \mathbf{A}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{G}\_2 \mathbf{A}. && \text{(condition 1 for } \mathbf{G}\_1 \text{)} \end{aligned} \\
>
> **Conclusion.**
>
> \\ \begin{aligned} \mathbf{G}\_1 &= \mathbf{G}\_1 \mathbf{A} \mathbf{G}\_1 && \text{(condition 2 for } \mathbf{G}\_1 \text{)} \\ &= \mathbf{G}\_1\\(\mathbf{A} \mathbf{G}\_1) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{G}\_1\\(\mathbf{A} \mathbf{G}\_2) && \text{(the first step)} \\ &= (\mathbf{G}\_1 \mathbf{A})\\\mathbf{G}\_2 && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= (\mathbf{G}\_2 \mathbf{A})\\\mathbf{G}\_2 && \text{(the second step)} \\ &= \mathbf{G}\_2 \mathbf{A} \mathbf{G}\_2 && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{G}\_2. && \text{(condition 2 for } \mathbf{G}\_2 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 160 (Only one of the many generalized inverses qualifies)** The matrix \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ has infinitely many generalized inverses \\\begin{bmatrix} 1 & g\_{12} \\ g\_{21} & g\_{22} \end{bmatrix}\\ ([Example 156](#exm-generalized-inverse)), and \\\begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ is a Moore-Penrose inverse ([Example 159](#exm-moore-penrose)). By [Theorem 87](#thm-moore-penrose-unique) it is the only one, so every other choice of \\g\_{12}, g\_{21}, g\_{22}\\ breaks condition 2, 3 or 4. For instance, \\g\_{21} = 1\\ (the rest \\0\\) gives \\\mathbf{G} \mathbf{A} = \begin{bmatrix} 1 & 0 \\ 1 & 0 \end{bmatrix}\\, which is not symmetric.

> **NOTE:**
>
> **Theorem 88 (Every matrix has a Moore-Penrose inverse)** Every \\m \times n\\ matrix \\\mathbf{A}\\ has a Moore-Penrose inverse ([Definition 91](#def-moore-penrose)), written \\\mathbf{A}^+\\; it is unique by [Theorem 87](#thm-moore-penrose-unique).
>
> - If \\\mathbf{A} = \mathbf{0}\_{m \times n}\\, then \\\mathbf{A}^+ = \mathbf{0}\_{n \times m}\\.
> - If \\\operatorname{rank}(\mathbf{A}) = r \ge 1\\ and \\\mathbf{A} = \mathbf{C} \mathbf{R}\\ is a rank factorization ([Definition 51](#def-rank-factorization)), then
>
> \\ \underbrace{\mathbf{A}^+}\_{n \times m} = \underbrace{{\mathbf{R}}^{\top}}\_{n \times r} \underbrace{(\mathbf{R} {\mathbf{R}}^{\top})^{-1}}\_{r \times r} \underbrace{({\mathbf{C}}^{\top} \mathbf{C})^{-1}}\_{r \times r} \underbrace{{\mathbf{C}}^{\top}}\_{r \times m}. \\

> **NOTE:**
>
> *Proof*. **The two cases cover every matrix.** If \\\mathbf{A} \ne \mathbf{0}\_{m \times n}\\, it has a nonzero column, which is linearly independent on its own (\\c\\\tilde{v} = \tilde{0}\\ with \\\tilde{v} \ne \tilde{0}\\ forces \\c = 0\\), so \\\operatorname{rank}(\mathbf{A}) \ge 1\\ ([Definition 38](#def-rank)).
>
> **The zero matrix.** With \\\mathbf{A} = \mathbf{0}\_{m \times n}\\ and \\\mathbf{G} = \mathbf{0}\_{n \times m}\\, every product in conditions 1 to 4 is a zero matrix, and a zero matrix equals its own transpose, so all four conditions hold.
>
> **The two inverses exist.** Now suppose \\\operatorname{rank}(\mathbf{A}) = r \ge 1\\. A rank factorization exists ([Theorem 41](#thm-rank-factorization)). \\\mathbf{C}\\ is \\m \times r\\ and \\\mathbf{R}\\ is \\r \times n\\. Both have rank \\r\\:
>
> \\ \begin{aligned} r &= \operatorname{rank}(\mathbf{C} \mathbf{R}) && \text{(} \mathbf{A} = \mathbf{C} \mathbf{R} \text{)} \\ &\le \operatorname{rank}(\mathbf{C}) && \text{(}\href{#thm-rank-product}{\text{Theorem~37}}\text{)} \\ &\le r, && \text{(}\href{#cor-rank-bound}{\text{Corollary~3}}\text{, } \mathbf{C} \text{ has } r \text{ columns)} \end{aligned} \\
>
> and, using \\{(\mathbf{C} \mathbf{R})}^{\top} = {\mathbf{R}}^{\top} {\mathbf{C}}^{\top}\\ ([Theorem 19](#thm-transpose-product)),
>
> \\ \begin{aligned} r &= \operatorname{rank}\mathopen{}\left({\mathbf{R}}^{\top} {\mathbf{C}}^{\top}\right)\mathclose{} && \text{(}\href{#thm-rank-transpose}{\text{Theorem~38}}\text{)} \\ &\le \operatorname{rank}({\mathbf{R}}^{\top}) && \text{(}\href{#thm-rank-product}{\text{Theorem~37}}\text{)} \\ &\le r. && \text{(}\href{#cor-rank-bound}{\text{Corollary~3}}\text{, } {\mathbf{R}}^{\top} \text{ has } r \text{ columns)} \end{aligned} \\
>
> So \\\mathbf{C}\\ and \\{\mathbf{R}}^{\top}\\ have full column rank \\r\\, and \\{\mathbf{C}}^{\top} \mathbf{C}\\ and \\\mathbf{R} {\mathbf{R}}^{\top} = {({\mathbf{R}}^{\top})}^{\top}\\{\mathbf{R}}^{\top}\\ are invertible ([Theorem 78](#thm-gram-invertible)). They are symmetric: \\{({\mathbf{C}}^{\top} \mathbf{C})}^{\top} = {\mathbf{C}}^{\top}\\{({\mathbf{C}}^{\top})}^{\top} = {\mathbf{C}}^{\top} \mathbf{C}\\ ([Theorem 19](#thm-transpose-product), [Definition 20](#def-matrix-transpose)), and likewise for \\\mathbf{R} {\mathbf{R}}^{\top}\\. Write \\\mathbf{S} \stackrel{\text{def}}{=}(\mathbf{R} {\mathbf{R}}^{\top})^{-1}\\ and \\\mathbf{T} \stackrel{\text{def}}{=}({\mathbf{C}}^{\top} \mathbf{C})^{-1}\\, both symmetric ([Corollary 6](#cor-inverse-symmetric)), and \\\mathbf{G} \stackrel{\text{def}}{=}{\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top}\\.
>
> **Two products.**
>
> \\ \begin{aligned} \mathbf{A} \mathbf{G} &= \mathbf{C} \mathbf{R}\\{\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top} && \text{(substitute } \mathbf{A} \text{ and } \mathbf{G} \text{)} \\ &= \mathbf{C}\\(\mathbf{R} {\mathbf{R}}^{\top})\\\mathbf{S}\\\mathbf{T} {\mathbf{C}}^{\top} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{C}\\\mathbf{I}\_r\\\mathbf{T} {\mathbf{C}}^{\top} && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top}, && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \end{aligned} \\
>
> \\ \begin{aligned} \mathbf{G} \mathbf{A} &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top}\\\mathbf{C} \mathbf{R} && \text{(substitute } \mathbf{G} \text{ and } \mathbf{A} \text{)} \\ &= {\mathbf{R}}^{\top} \mathbf{S}\\\mathbf{T}\\({\mathbf{C}}^{\top} \mathbf{C})\\\mathbf{R} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {\mathbf{R}}^{\top} \mathbf{S}\\\mathbf{I}\_r\\\mathbf{R} && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{R}. && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \end{aligned} \\
>
> **Conditions 3 and 4.**
>
> \\ \begin{aligned} {(\mathbf{A} \mathbf{G})}^{\top} &= {(\mathbf{C} \mathbf{T} {\mathbf{C}}^{\top})}^{\top} && \text{(first product)} \\ &= {\mathopen{}\left(\mathbf{C}\\(\mathbf{T} {\mathbf{C}}^{\top})\right)\mathclose{}}^{\top} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {(\mathbf{T} {\mathbf{C}}^{\top})}^{\top}\\{\mathbf{C}}^{\top} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= {({\mathbf{C}}^{\top})}^{\top}\\{\mathbf{T}}^{\top}\\{\mathbf{C}}^{\top} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= \mathbf{C}\\{\mathbf{T}}^{\top}\\{\mathbf{C}}^{\top} && \text{(}\href{#def-matrix-transpose}{\text{Definition~20}}\text{)} \\ &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top}, && \text{(} \mathbf{T} \text{ is symmetric)} \end{aligned} \\
>
> \\ \begin{aligned} {(\mathbf{G} \mathbf{A})}^{\top} &= {({\mathbf{R}}^{\top} \mathbf{S} \mathbf{R})}^{\top} && \text{(second product)} \\ &= {\mathopen{}\left({\mathbf{R}}^{\top}\\(\mathbf{S} \mathbf{R})\right)\mathclose{}}^{\top} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {(\mathbf{S} \mathbf{R})}^{\top}\\{({\mathbf{R}}^{\top})}^{\top} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= {\mathbf{R}}^{\top}\\{\mathbf{S}}^{\top}\\{({\mathbf{R}}^{\top})}^{\top} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= {\mathbf{R}}^{\top}\\{\mathbf{S}}^{\top}\\\mathbf{R} && \text{(}\href{#def-matrix-transpose}{\text{Definition~20}}\text{)} \\ &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{R}. && \text{(} \mathbf{S} \text{ is symmetric)} \end{aligned} \\
>
> **Condition 1.**
>
> \\ \begin{aligned} \mathbf{A} \mathbf{G} \mathbf{A} &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top}\\\mathbf{C} \mathbf{R} && \text{(first product)} \\ &= \mathbf{C}\\\mathbf{T}\\({\mathbf{C}}^{\top} \mathbf{C})\\\mathbf{R} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{C}\\\mathbf{I}\_r\\\mathbf{R} && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= \mathbf{A}. && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \end{aligned} \\
>
> **Condition 2.**
>
> \\ \begin{aligned} \mathbf{G} \mathbf{A} \mathbf{G} &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{R}\\{\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top} && \text{(second product)} \\ &= {\mathbf{R}}^{\top}\\\mathbf{S}\\(\mathbf{R} {\mathbf{R}}^{\top})\\\mathbf{S}\\\mathbf{T} {\mathbf{C}}^{\top} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {\mathbf{R}}^{\top}\\\mathbf{I}\_r\\\mathbf{S}\\\mathbf{T} {\mathbf{C}}^{\top} && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= \mathbf{G}. && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 161 (The Moore-Penrose inverse of a rank-one matrix)** For \\\mathbf{A}\\ in [Example 53](#exm-column-space), the rank factorization \\\mathbf{C} = \begin{bmatrix} 1 \\ 3 \end{bmatrix}\\, \\\mathbf{R} = \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}\\ ([Example 70](#exm-rank-factorization)) gives \\{\mathbf{C}}^{\top} \mathbf{C} = 1 + 9 = 10\\ and \\\mathbf{R} {\mathbf{R}}^{\top} = 1 + 4 + 4 = 9\\, so
>
> \\ \mathbf{A}^+ = \frac{1}{9 \cdot 10} \begin{bmatrix} 1 \\ -2 \\ -2 \end{bmatrix} \begin{bmatrix} 1 & 3 \end{bmatrix} = \frac{1}{90} \begin{bmatrix} 1 & 3 \\ -2 & -6 \\ -2 & -6 \end{bmatrix}. \\
>
> As a check on condition 1, \\\mathbf{A} \mathbf{A}^+ = \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top} = \frac{1}{10} \begin{bmatrix} 1 & 3 \\ 3 & 9 \end{bmatrix}\\, and its first row times \\\mathbf{A}\\ is \\\frac{1}{10}\mathopen{}\left(1 \cdot(1, -2, -2) + 3 \cdot(3, -6, -6)\right)\mathclose{} = (1, -2, -2)\\, the first row of \\\mathbf{A}\\; the second row is \\3\\ times the first, like the second row of \\\mathbf{A}\\.

> **NOTE:**
>
> **Definition 92 (Consistent linear system)** A linear system ([Definition 29](#def-linear-system)) \\\mathbf{A} \tilde{x} = \tilde{b}\\, with \\\mathbf{A}\\ an \\m \times n\\ matrix and \\\tilde{b} \in \mathbb{R}^m\\, is **consistent** if it has at least one solution \\\tilde{x} \in \mathbb{R}^n\\, and **inconsistent** otherwise.

> **NOTE:**
>
> **Example 162 (A consistent system and an inconsistent one)** With \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\, \\\mathbf{A}\\(x_1, x_2) = (x_1, 0)\\ ([Definition 28](#def-matvec-mult)).
>
> - \\\mathbf{A} \tilde{x} = (2, 0)\\ is consistent: \\\tilde{x} = (2, 0)\\ is a solution.
> - \\\mathbf{A} \tilde{x} = (2, 1)\\ is inconsistent: the second entry of \\\mathbf{A} \tilde{x}\\ is always \\0\\, never \\1\\.

> **NOTE:**
>
> **Theorem 89 (When a linear system has a solution)** Let \\\mathbf{A}\\ be \\m \times n\\, let \\\tilde{b} \in \mathbb{R}^m\\, and let \\\mathbf{G}\\ be any generalized inverse of \\\mathbf{A}\\ ([Definition 90](#def-generalized-inverse)). The following statements are equivalent:
>
> 1.  \\\mathbf{A} \tilde{x} = \tilde{b}\\ is consistent ([Definition 92](#def-consistent-system));
> 2.  \\\tilde{b} \in \mathcal{C}(\mathbf{A})\\ ([Definition 45](#def-column-space));
> 3.  \\\mathbf{A} \mathbf{G} \tilde{b} = \tilde{b}\\.

> **NOTE:**
>
> *Proof*. **1 and 2 are equivalent.** Statement 1 says \\\tilde{b} = \mathbf{A} \tilde{x}\\ for some \\\tilde{x}\\ ([Definition 92](#def-consistent-system)), and \\\mathcal{C}(\mathbf{A})\\ is the set of vectors \\\mathbf{A} \tilde{x}\\ ([Definition 45](#def-column-space)), so \\\tilde{b}\\ is in it exactly when \\\tilde{b} = \mathbf{A} \tilde{x}\\ for some \\\tilde{x}\\.
>
> **1 implies 3.** By [Theorem 86](#thm-generalized-inverse-solves), \\\mathbf{G} \tilde{b}\\ is a solution, so \\\mathbf{A}\\(\mathbf{G} \tilde{b}) = \tilde{b}\\, which is statement 3 ([Theorem 8](#thm-matmul-assoc)).
>
> **3 implies 1.** If \\\mathbf{A} \mathbf{G} \tilde{b} = \tilde{b}\\, then \\\tilde{x} = \mathbf{G} \tilde{b}\\ is a solution, since \\\mathbf{A}\\(\mathbf{G} \tilde{b}) = (\mathbf{A} \mathbf{G})\\\tilde{b}\\ ([Theorem 8](#thm-matmul-assoc)).

> **NOTE:**
>
> **Example 163 (Testing consistency with a generalized inverse)** For \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ and the generalized inverse \\\mathbf{G} = \begin{bmatrix} 1 & 5 \\ 7 & 0 \end{bmatrix}\\, \\\mathbf{A} \mathbf{G} = \begin{bmatrix} 1 & 5 \\ 0 & 0 \end{bmatrix}\\.
>
> - \\\tilde{b} = (2, 0)\\: \\\mathbf{A} \mathbf{G} \tilde{b} = (2, 0) = \tilde{b}\\, so the system is consistent.
> - \\\tilde{b} = (2, 1)\\: \\\mathbf{A} \mathbf{G} \tilde{b} = (7, 0) \ne \tilde{b}\\, so it is not, as [Example 158](#exm-generalized-inverse-solves) found directly.

> **NOTE:**
>
> **Theorem 90 (All solutions of a linear system)** Let \\\mathbf{A}\\ be \\m \times n\\ with a generalized inverse \\\mathbf{G}\\ ([Definition 90](#def-generalized-inverse)).
>
> 1.  \\\mathcal{N}(\mathbf{A}) = \mathcal{C}(\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\: \\\tilde{x}\\ solves \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\ exactly when \\\tilde{x} = (\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\tilde{q}\\ for some \\\tilde{q} \in \mathbb{R}^n\\.
> 2.  If \\\mathbf{A} \tilde{x} = \tilde{b}\\ is consistent ([Definition 92](#def-consistent-system)), then \\\tilde{x}\\ is a solution exactly when \\ \tilde{x} = \mathbf{G} \tilde{b} + (\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\tilde{q} \quad \text{for some } \tilde{q} \in \mathbb{R}^n: \\ one particular solution plus a vector of \\\mathcal{N}(\mathbf{A})\\.

> **NOTE:**
>
> *Proof*. **Part 1.** First,
>
> \\ \begin{aligned} \mathbf{A}\\(\mathbf{I}\_n - \mathbf{G} \mathbf{A}) &= \mathbf{A} \mathbf{I}\_n - \mathbf{A}\\(\mathbf{G} \mathbf{A}) && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{)} \\ &= \mathbf{A} \mathbf{I}\_n - \mathbf{A} \mathbf{G} \mathbf{A} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{A} - \mathbf{A} \mathbf{G} \mathbf{A} && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \\ &= \mathbf{A} - \mathbf{A} && \text{(}\href{#def-generalized-inverse}{\text{Definition~90}}\text{)} \\ &= \mathbf{0}\_{m \times n}, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\mathbf{A}\\(\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\tilde{q} = \tilde{0}\_m\\ for every \\\tilde{q}\\ ([Theorem 8](#thm-matmul-assoc)), and \\\mathcal{C}(\mathbf{I}\_n - \mathbf{G} \mathbf{A}) \subseteq \mathcal{N}(\mathbf{A})\\. Conversely, if \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\, then
>
> \\ \begin{aligned} (\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\tilde{x} &= \mathbf{I}\_n \tilde{x} - (\mathbf{G} \mathbf{A})\\\tilde{x} && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{, with } \tilde{x} \text{ as the last factor)} \\ &= \tilde{x} - (\mathbf{G} \mathbf{A})\\\tilde{x} && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \\ &= \tilde{x} - \mathbf{G}\\(\mathbf{A} \tilde{x}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \tilde{x} - \mathbf{G}\\\tilde{0}\_m && \text{(} \mathbf{A} \tilde{x} = \tilde{0}\_m \text{)} \\ &= \tilde{x}, && \text{(} \mathbf{G}\\\tilde{0}\_m = \tilde{0}\_n \text{)} \end{aligned} \\
>
> so \\\tilde{x}\\ is in \\\mathcal{C}(\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\, with \\\tilde{q} = \tilde{x}\\.
>
> **Part 2.** \\\mathbf{G} \tilde{b}\\ is a solution ([Theorem 86](#thm-generalized-inverse-solves)). For any \\\tilde{x}\\,
>
> \\ \begin{aligned} \mathbf{A}\\(\tilde{x} - \mathbf{G} \tilde{b}) &= \mathbf{A} \tilde{x} - \mathbf{A}\\(\mathbf{G} \tilde{b}) && \text{(}\href{#thm-matvec-linear}{\text{Theorem~23}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= \mathbf{A} \tilde{x} - \mathbf{A} \mathbf{G} \tilde{b} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{A} \tilde{x} - \tilde{b}, && \text{(}\href{#thm-consistency}{\text{Theorem~89}}\text{, statement 3)} \end{aligned} \\
>
> so \\\tilde{x}\\ solves \\\mathbf{A} \tilde{x} = \tilde{b}\\ exactly when \\\tilde{x} - \mathbf{G} \tilde{b} \in \mathcal{N}(\mathbf{A})\\, that is, by part 1, exactly when \\\tilde{x} - \mathbf{G} \tilde{b} = (\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\tilde{q}\\ for some \\\tilde{q}\\.

> **NOTE:**
>
> **Example 164 (All solutions of a consistent system)** For \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\, \\\mathbf{G} = \begin{bmatrix} 1 & 5 \\ 7 & 0 \end{bmatrix}\\ and \\\tilde{b} = (2, 0)\\: \\\mathbf{G} \tilde{b} = (2, 14)\\, \\\mathbf{G} \mathbf{A} = \begin{bmatrix} 1 & 0 \\ 7 & 0 \end{bmatrix}\\, and \\\mathbf{I}\_2 - \mathbf{G} \mathbf{A} = \begin{bmatrix} 0 & 0 \\ -7 & 1 \end{bmatrix}\\, so
>
> \\ \tilde{x} = (2, 14) + (0, -7 q_1 + q_2), \qquad q_1, q_2 \in \mathbb{R}. \\
>
> Since \\-7 q_1 + q_2\\ can be any number, the solutions are exactly the vectors \\(2, t)\\, \\t \in \mathbb{R}\\, which is what \\\mathbf{A}\\(x_1, x_2) = (x_1, 0) = (2, 0)\\ says directly.

> **NOTE:**
>
> **Corollary 8 (Solvable for every right-hand side, and solvable uniquely)** Let \\\mathbf{A}\\ be \\m \times n\\.
>
> 1.  \\\mathbf{A} \tilde{x} = \tilde{b}\\ is consistent for every \\\tilde{b} \in \mathbb{R}^m\\ exactly when \\\operatorname{rank}(\mathbf{A}) = m\\.
> 2.  A consistent system \\\mathbf{A} \tilde{x} = \tilde{b}\\ has exactly one solution exactly when \\\operatorname{rank}(\mathbf{A}) = n\\.

> **NOTE:**
>
> *Proof*. **Part 1.** By [Theorem 89](#thm-consistency), the system is consistent for every \\\tilde{b}\\ exactly when \\\mathcal{C}(\mathbf{A}) = \mathbb{R}^m\\. \\\mathcal{C}(\mathbf{A})\\ is a subspace of \\\mathbb{R}^m\\ ([Theorem 31](#thm-column-space-span)) with dimension \\\operatorname{rank}(\mathbf{A})\\ ([Theorem 35](#thm-rank-dim)), and \\\dim(\mathbb{R}^m) = m\\ ([Example 47](#exm-dimension)). If the dimension is \\m\\, then \\\mathcal{C}(\mathbf{A}) = \mathbb{R}^m\\ ([Theorem 30](#thm-subspace-equal-dim)); if \\\mathcal{C}(\mathbf{A}) = \mathbb{R}^m\\, the dimension is \\m\\.
>
> **Part 2.** By [Theorem 90](#thm-solution-set), the solutions are a particular solution plus the vectors of \\\mathcal{N}(\mathbf{A})\\, so there is exactly one solution exactly when \\\mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}\\, that is, when \\\operatorname{nullity}(\mathbf{A}) = 0\\ (a subspace of dimension \\0\\ has the empty list as a basis, whose span is \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, by [Definition 44](#def-dimension) and [Definition 41](#def-span); and \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ has dimension \\0\\, by [Example 47](#exm-dimension)). By [Theorem 36](#thm-rank-nullity), that is when \\\operatorname{rank}(\mathbf{A}) = n\\.

> **NOTE:**
>
> **Example 165 (Three systems)**  
>
> - The \\2 \times 3\\ matrix \\\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}\\ of [Example 65](#exm-rank-bound) has rank \\2 = m\\, so every system with it is consistent, but \\2 \< 3 = n\\, so the solutions are never unique.
> - The \\3 \times 2\\ matrix \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ of [Example 146](#exm-gram-invertible) has rank \\2 = n\\, so a consistent system has one solution, but \\2 \< 3 = m\\, so some systems are inconsistent: \\(1, 0, 0) \notin \mathcal{C}(\mathbf{X})\\, because \\a\\(1, 1, 1) + b\\(1, 2, 3)\\ has equal differences between consecutive entries, and \\(1, 0, 0)\\ does not.
> - An invertible \\p \times p\\ matrix \\\mathbf{A}\\ has rank \\p\\: if \\\mathbf{A} \tilde{x} = \tilde{0}\\ then \\\tilde{x} = \mathbf{A}^{-1} \mathbf{A} \tilde{x} = \tilde{0}\\, so its nullity is \\0\\ and its rank is \\p\\ ([Theorem 36](#thm-rank-nullity)). So every system with it is consistent (part 1, with \\p = m\\) and has exactly one solution (part 2, with \\p = n\\), namely \\\mathbf{A}^{-1} \tilde{b}\\, since \\\mathbf{A}\\(\mathbf{A}^{-1} \tilde{b}) = \tilde{b}\\.

> **NOTE:**
>
> **Theorem 91 (The projection onto a column space, with any generalized inverse)** Let \\\mathbf{X}\\ be an \\n \times p\\ matrix of any rank, and let \\\mathbf{G}\\ be any generalized inverse of \\{\mathbf{X}}^{\top} \mathbf{X}\\ ([Definition 90](#def-generalized-inverse)). Then for every \\\tilde{y}\in \mathbb{R}^n\\, \\\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} \tilde{y}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{X})\\ ([Definition 89](#def-orthogonal-projection)). So the matrix \\\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top}\\ is the same for every choice of \\\mathbf{G}\\, and when \\\operatorname{rank}(\mathbf{X}) = p\\ it is the hat matrix \\\mathbf{H}\\ ([Definition 88](#def-hat-matrix)).

> **NOTE:**
>
> *Proof*. **\\{\mathbf{X}}^{\top} \tilde{y}\\ is in \\\mathcal{C}({\mathbf{X}}^{\top} \mathbf{X})\\.** \\\mathcal{C}({\mathbf{X}}^{\top} \mathbf{X}) \subseteq \mathcal{C}({\mathbf{X}}^{\top})\\, since \\({\mathbf{X}}^{\top} \mathbf{X})\\\tilde{z} = {\mathbf{X}}^{\top}\\(\mathbf{X}\tilde{z})\\ ([Theorem 8](#thm-matmul-assoc)). Both are subspaces of \\\mathbb{R}^p\\ ([Theorem 31](#thm-column-space-span)) with the same dimension: \\\operatorname{rank}({\mathbf{X}}^{\top} \mathbf{X}) = \operatorname{rank}({\mathbf{X}}^{\top})\\ ([Theorem 38](#thm-rank-transpose), [Theorem 35](#thm-rank-dim)). So \\\mathcal{C}({\mathbf{X}}^{\top} \mathbf{X}) = \mathcal{C}({\mathbf{X}}^{\top})\\ ([Theorem 30](#thm-subspace-equal-dim)), and since \\{\mathbf{X}}^{\top} \tilde{y}\in \mathcal{C}({\mathbf{X}}^{\top})\\ ([Definition 45](#def-column-space)), \\{\mathbf{X}}^{\top} \tilde{y}= {\mathbf{X}}^{\top} \mathbf{X}\tilde{z}\\ for some \\\tilde{z} \in \mathbb{R}^p\\.
>
> **The split.** Let \\\tilde{u} = \mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} \tilde{y}= \mathbf{X}\\(\mathbf{G} {\mathbf{X}}^{\top} \tilde{y})\\ ([Theorem 8](#thm-matmul-assoc)), which is in \\\mathcal{C}(\mathbf{X})\\ ([Definition 45](#def-column-space)). For \\\tilde{y}- \tilde{u}\\,
>
> \\ \begin{aligned} {\mathbf{X}}^{\top}\\(\tilde{y}- \tilde{u}) &= {\mathbf{X}}^{\top} \tilde{y}- {\mathbf{X}}^{\top}\\\tilde{u} && \text{(}\href{#thm-matvec-linear}{\text{Theorem~23}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= {\mathbf{X}}^{\top} \tilde{y}- {\mathbf{X}}^{\top}\\(\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} \tilde{y}) && \text{(substitute } \tilde{u} \text{)} \\ &= {\mathbf{X}}^{\top} \tilde{y}- ({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}\\({\mathbf{X}}^{\top} \tilde{y}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {\mathbf{X}}^{\top} \tilde{y}- ({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}\\({\mathbf{X}}^{\top} \mathbf{X})\\\tilde{z} && \text{(first step)} \\ &= {\mathbf{X}}^{\top} \tilde{y}- \mathopen{}\left(({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}\\({\mathbf{X}}^{\top} \mathbf{X})\right)\mathclose{}\\\tilde{z} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {\mathbf{X}}^{\top} \tilde{y}- ({\mathbf{X}}^{\top} \mathbf{X})\\\tilde{z} && \text{(}\href{#def-generalized-inverse}{\text{Definition~90}}\text{)} \\ &= {\mathbf{X}}^{\top} \tilde{y}- {\mathbf{X}}^{\top} \tilde{y} && \text{(first step)} \\ &= \tilde{0}\_p, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\tilde{y}- \tilde{u} \in \mathcal{N}({\mathbf{X}}^{\top}) = \mathcal{C}(\mathbf{X})^\perp\\ ([Theorem 48](#thm-complement-null-space)). By the uniqueness in [Theorem 49](#thm-orthogonal-direct-sum), \\\tilde{u}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{X})\\.
>
> **Same matrix.** Every choice of \\\mathbf{G}\\ gives a matrix that projects every \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{X})\\, so all choices give the same matrix ([Theorem 82](#thm-projection-matrix-projects), part 2). When \\\operatorname{rank}(\mathbf{X}) = p\\, \\({\mathbf{X}}^{\top} \mathbf{X})^{-1}\\ is one choice ([Theorem 78](#thm-gram-invertible), [Theorem 85](#thm-generalized-inverse-invertible)), and it gives \\\mathbf{H}\\.

> **NOTE:**
>
> **Example 166 (A design matrix with a repeated column)** Let \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\, an intercept column entered twice, so \\\operatorname{rank}(\mathbf{X}) = 1 \< 2\\ and \\{\mathbf{X}}^{\top} \mathbf{X}= \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}\\ is not invertible: its rank is \\\operatorname{rank}(\mathbf{X}) = 1 \< 2\\ ([Theorem 38](#thm-rank-transpose)), while an invertible \\2 \times 2\\ matrix has rank \\2\\ ([Example 165](#exm-solution-unique)). The matrix \\\mathbf{G} = \begin{bmatrix} \frac{1}{2} & 0 \\ 0 & 0 \end{bmatrix}\\ is a generalized inverse of it:
>
> \\ \begin{aligned} ({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}\\({\mathbf{X}}^{\top} \mathbf{X}) &= \begin{bmatrix} 1 & 0 \\ 1 & 0 \end{bmatrix} \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix} && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{, for the first product)} \\ &= \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}. && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{)} \end{aligned} \\
>
> Then
>
> \\ \begin{aligned} \mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} &= \begin{bmatrix} \frac{1}{2} & 0 \\ \frac{1}{2} & 0 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix} && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{, for } \mathbf{X}\mathbf{G} \text{)} \\ &= \begin{bmatrix} \frac{1}{2} & \frac{1}{2} \\ \frac{1}{2} & \frac{1}{2} \end{bmatrix}, && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{)} \end{aligned} \\
>
> the hat matrix of the intercept-only model ([Example 147](#exm-hat-matrix)). Another generalized inverse, \\\mathbf{G}' = \begin{bmatrix} 0 & 0 \\ 0 & \frac{1}{2} \end{bmatrix}\\, which is one because \\({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}' = \begin{bmatrix} 0 & 1 \\ 0 & 1 \end{bmatrix}\\ and that times \\{\mathbf{X}}^{\top} \mathbf{X}\\ is again \\\begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}\\, gives \\\mathbf{X}\mathbf{G}' = \begin{bmatrix} 0 & \frac{1}{2} \\ 0 & \frac{1}{2} \end{bmatrix}\\ and the same \\\mathbf{X}\mathbf{G}' {\mathbf{X}}^{\top} = \begin{bmatrix} \frac{1}{2} & \frac{1}{2} \\ \frac{1}{2} & \frac{1}{2} \end{bmatrix}\\, as [Theorem 91](#thm-projector-generalized-inverse) says it must. Both project onto \\\mathcal{C}(\mathbf{X}) = \operatorname{span}\mathopen{}\left\\(1, 1)\right\\\mathclose{}\\, the column space of the intercept-only design.

### 9.3 Solving linear systems and least squares

> **NOTE:**
>
> This section is adapted from Zhou ([2024c](#ref-zhou2024matinv)) and Zhou ([2024b](#ref-zhou2024ls)), used under the MIT License (see the license text in [Section 2.10](#sec-subspaces)). The first source states that every invertible matrix has an LU factorization; that is false without reordering rows (the \\2 \times 2\\ row swap \\\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ has none), so this section states only how an LU factorization, when one exists, solves a system. The least squares results are proved here from the closest-point theorem ([Theorem 80](#thm-closest-point)) rather than by differentiating, and the QR factorization is derived from Gram-Schmidt ([Theorem 59](#thm-gram-schmidt)).

> **NOTE:**
>
> **Definition 93 (Triangular matrix)** A square matrix \\\mathbf{U}\\ is **upper triangular** if every entry below the diagonal is \\0\\: \\u\_{ij} = 0\\ whenever \\i \> j\\. A square matrix \\\mathbf{L}\\ is **lower triangular** if every entry above the diagonal is \\0\\: \\\ell\_{ij} = 0\\ whenever \\i \< j\\. A lower triangular matrix whose diagonal entries are all \\1\\ is **unit lower triangular**.

> **NOTE:**
>
> **Example 167 (Triangular and not)**  
>
> - \\\begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix}\\ is upper triangular: its entries below the diagonal, in positions \\(2, 1)\\, \\(3, 1)\\ and \\(3, 2)\\, are \\0\\.
> - \\\begin{bmatrix} 1 & 0 \\ 4 & 1 \end{bmatrix}\\ is unit lower triangular.
> - A diagonal matrix ([Definition 68](#def-diagonal-matrix)) is both upper and lower triangular.
> - \\\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ is neither: its \\(2, 1)\\ entry is not \\0\\, and neither is its \\(1, 2)\\ entry.

> **NOTE:**
>
> **Theorem 92 (Solving a triangular system by substitution)** Let \\\mathbf{U}\\ be an \\n \times n\\ upper triangular matrix ([Definition 93](#def-triangular-matrix)) whose diagonal entries \\u\_{11}, \ldots, u\_{nn}\\ are all nonzero. For every \\\tilde{b} \in \mathbb{R}^n\\, the system \\\mathbf{U} \tilde{x} = \tilde{b}\\ has exactly one solution, given for \\i = n, n - 1, \ldots, 1\\ in turn by
>
> \\ x_i = \frac{1}{u\_{ii}} \mathopen{}\left(b_i - \sum\_{j=i+1}^{n} u\_{ij}\\x_j\right)\mathclose{} \\
>
> (**back substitution**). Likewise, if \\\mathbf{L}\\ is lower triangular with nonzero diagonal, \\\mathbf{L} \tilde{y} = \tilde{b}\\ has exactly one solution, given for \\i = 1, \ldots, n\\ by \\y_i = \frac{1}{\ell\_{ii}} \mathopen{}\left(b_i - \sum\_{j=1}^{i-1} \ell\_{ij}\\y_j\right)\mathclose{}\\ (**forward substitution**).

> **NOTE:**
>
> *Proof*. Row \\i\\ of \\\mathbf{U} \tilde{x} = \tilde{b}\\ reads
>
> \\ \begin{aligned} b_i &= \sum\_{j=1}^{n} u\_{ij}\\x_j && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\ &= \sum\_{j=i}^{n} u\_{ij}\\x_j && \text{(} u\_{ij} = 0 \text{ for } j \< i \text{)} \\ &= u\_{ii}\\x_i + \sum\_{j=i+1}^{n} u\_{ij}\\x_j. && \text{(split off the } j = i \text{ term)} \end{aligned} \\
>
> This equation is equivalent to each of
>
> \\ \begin{aligned} u\_{ii}\\x_i &= b_i - \sum\_{j=i+1}^{n} u\_{ij}\\x_j && \text{(subtract the sum from both sides)} \\ x_i &= \frac{1}{u\_{ii}} \mathopen{}\left(b_i - \sum\_{j=i+1}^{n} u\_{ij}\\x_j\right)\mathclose{}. && \text{(divide by } u\_{ii} \ne 0 \text{)} \end{aligned} \\
>
> Row \\n\\ involves only \\x_n\\, so it fixes \\x_n\\; once \\x\_{i+1}, \ldots, x_n\\ are fixed, row \\i\\ fixes \\x_i\\. So the rows, taken from the last to the first, hold exactly when \\\tilde{x}\\ is the vector the formula builds: there is one solution, and only one. For \\\mathbf{L}\\, row \\i\\ reads \\\sum\_{j=1}^{i-1} \ell\_{ij}\\y_j + \ell\_{ii}\\y_i = b_i\\, and the same argument runs from the first row to the last.

> **NOTE:**
>
> **Example 168 (Back substitution on a \\3 \times 3\\ system)** Solve \\\begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix} \tilde{x} = \begin{bmatrix} 8 \\ 1 \\ 1 \end{bmatrix}\\:
>
> 1.  \\x_3 = \frac{1}{-1} \cdot 1 = -1\\;
> 2.  \\x_2 = \frac{1}{1/2} \mathopen{}\left(1 - \tfrac{1}{2} \cdot(-1)\right)\mathclose{} = 2 \cdot\tfrac{3}{2} = 3\\;
> 3.  \\x_1 = \frac{1}{2} \mathopen{}\left(8 - 1 \cdot 3 - (-1)(-1)\right)\mathclose{} = \frac{1}{2} \cdot 4 = 2\\.
>
> So \\\tilde{x} = (2, 3, -1)\\. Without a nonzero diagonal the method fails: \\\begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix} \tilde{x} = (1, 1)\\ has no solution, since its second row reads \\0 = 1\\.

> **NOTE:**
>
> **Theorem 93 (QR factorization)** Let \\\mathbf{A}\\ be an \\m \times n\\ matrix with \\\operatorname{rank}(\mathbf{A}) = n\\. Then
>
> \\ \underbrace{\mathbf{A}}\_{m \times n} = \underbrace{\mathbf{Q}}\_{m \times n}\\\underbrace{\mathbf{R}}\_{n \times n}, \\
>
> where the columns of \\\mathbf{Q}\\ are orthonormal ([Definition 17](#def-orthonormal-vectors)) and \\\mathbf{R}\\ is upper triangular ([Definition 93](#def-triangular-matrix)) with positive diagonal entries.

> **NOTE:**
>
> *Proof*. The \\n\\ columns \\\tilde{a}\_1, \ldots, \tilde{a}\_n\\ of \\\mathbf{A}\\ are linearly independent ([Definition 39](#def-full-column-rank)), so the Gram-Schmidt process ([Definition 63](#def-gram-schmidt)) runs all \\n\\ steps and gives orthonormal \\\tilde{q}\_1, \ldots, \tilde{q}\_n\\ ([Theorem 59](#thm-gram-schmidt), parts 1 and 3); let \\\mathbf{Q}\\ have these columns. At step \\i\\, \\\tilde{\tilde{q}}\_i \ne \tilde{0}\\, and rearranging the orthogonalize step,
>
> \\ \begin{aligned} \tilde{a}\_i &= \tilde{\tilde{q}}\_i + \sum\_{j=1}^{i-1} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j && \text{(add the sum to both sides of the orthogonalize step)} \\ &= \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\\tilde{q}\_i + \sum\_{j=1}^{i-1} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j. && \text{(normalize step: } \tilde{\tilde{q}}\_i = \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\\tilde{q}\_i \text{)} \end{aligned} \\
>
> Let \\\mathbf{R}\\ be the \\n \times n\\ matrix with \\r\_{ji} = \tilde{q}\_j \cdot \tilde{a}\_i\\ for \\j \< i\\, \\r\_{ii} = \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{} \> 0\\, and \\r\_{ji} = 0\\ for \\j \> i\\; it is upper triangular with positive diagonal. Column \\i\\ of \\\mathbf{Q} \mathbf{R}\\ is \\\mathbf{Q}\\ times column \\i\\ of \\\mathbf{R}\\ ([Definition 24](#def-matrix-mult)), and
>
> \\ \begin{aligned} \mathbf{Q}\\(r\_{1i}, \ldots, r\_{ni}) &= \sum\_{j=1}^{n} r\_{ji}\\\tilde{q}\_j && \text{(}\href{#thm-matvec-columns}{\text{Theorem~22}}\text{)} \\ &= \sum\_{j=1}^{i} r\_{ji}\\\tilde{q}\_j && \text{(} r\_{ji} = 0 \text{ for } j \> i \text{)} \\ &= r\_{ii}\\\tilde{q}\_i + \sum\_{j=1}^{i-1} r\_{ji}\\\tilde{q}\_j && \text{(split off the } j = i \text{ term)} \\ &= \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\\tilde{q}\_i + \sum\_{j=1}^{i-1} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j && \text{(the entries of } \mathbf{R} \text{)} \\ &= \tilde{a}\_i. && \text{(the display)} \end{aligned} \\
>
> So \\\mathbf{Q} \mathbf{R} = \mathbf{A}\\.

> **NOTE:**
>
> **Example 169 (A QR factorization from Gram-Schmidt)** For \\\mathbf{A}\\ with columns \\\tilde{a}\_1 = (1, 1, 0)\\, \\\tilde{a}\_2 = (1, 0, 1)\\, \\\tilde{a}\_3 = (0, 1, 1)\\, [Example 107](#exm-gram-schmidt) and [Example 109](#exm-thm-gram-schmidt) found \\\tilde{q}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0)\\, \\\tilde{q}\_2 = \tfrac{1}{\sqrt{6}}\\(1, -1, 2)\\, \\\tilde{q}\_3 = \tfrac{1}{\sqrt{3}}\\(-1, 1, 1)\\, with \\\mathopen{}\left\lVert\tilde{\tilde{q}}\_1\right\rVert\mathclose{} = \sqrt{2}\\, \\\mathopen{}\left\lVert\tilde{\tilde{q}}\_2\right\rVert\mathclose{} = \sqrt{3/2}\\, \\\mathopen{}\left\lVert\tilde{\tilde{q}}\_3\right\rVert\mathclose{} = 2/\sqrt{3}\\, \\\tilde{q}\_1 \cdot \tilde{a}\_2 = \tilde{q}\_1 \cdot \tilde{a}\_3 = \tfrac{1}{\sqrt{2}}\\ and \\\tilde{q}\_2 \cdot \tilde{a}\_3 = \tfrac{1}{\sqrt{6}}\\. So
>
> \\ \mathbf{R} = \begin{bmatrix} \sqrt{2} & \tfrac{1}{\sqrt{2}} & \tfrac{1}{\sqrt{2}} \\ 0 & \sqrt{3/2} & \tfrac{1}{\sqrt{6}} \\ 0 & 0 & \tfrac{2}{\sqrt{3}} \end{bmatrix}. \\
>
> As a check on the second column, \\\tfrac{1}{\sqrt{2}}\\\tilde{q}\_1 + \sqrt{3/2}\\\tilde{q}\_2 = \tfrac{1}{2}\\(1, 1, 0) + \tfrac{1}{2}\\(1, -1, 2) = (1, 0, 1) = \tilde{a}\_2\\.

> **NOTE:**
>
> **Definition 94 (Least squares solution)** Let \\\mathbf{A}\\ be \\m \times n\\ and \\\tilde{b} \in \mathbb{R}^m\\. A **least squares solution** of \\\mathbf{A} \tilde{x} = \tilde{b}\\ is a vector \\\hat{\tilde{x}} \in \mathbb{R}^n\\ such that
>
> \\ \mathopen{}\left\lVert\tilde{b} - \mathbf{A} \hat{\tilde{x}}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\tilde{b} - \mathbf{A} \tilde{x}\right\rVert\mathclose{} \quad \text{for every } \tilde{x} \in \mathbb{R}^n. \\
>
> The equations \\{\mathbf{A}}^{\top} \mathbf{A} \tilde{x} = {\mathbf{A}}^{\top} \tilde{b}\\ are the **normal equations**.

> **NOTE:**
>
> **Example 170 (Fitting a constant)** Let \\\mathbf{A} = \begin{bmatrix} 1 \\ 1 \end{bmatrix}\\ and \\\tilde{b} = (1, 3)\\. The system \\x\\(1, 1) = (1, 3)\\ is inconsistent ([Definition 92](#def-consistent-system)): its first entry needs \\x = 1\\ and its second needs \\x = 3\\. For any number \\x\\, \\\mathopen{}\left\lVert\tilde{b} - \mathbf{A} x\right\rVert\mathclose{}^2 = (1 - x)^2 + (3 - x)^2 = 2\\(x - 2)^2 + 2\\, which is smallest at \\x = 2\\, so \\\hat{x} = 2\\ is the least squares solution. The value \\x = 1\\ is not one: it gives \\0 + 4 = 4 \> 2\\. The normal equations read \\2x = 4\\, and their solution is \\x = 2\\ too.

> **NOTE:**
>
> **Theorem 94 (Least squares solutions solve the normal equations)** Let \\\mathbf{A}\\ be \\m \times n\\ and \\\tilde{b} \in \mathbb{R}^m\\.
>
> 1.  \\\hat{\tilde{x}}\\ is a least squares solution ([Definition 94](#def-least-squares)) exactly when it solves the normal equations \\{\mathbf{A}}^{\top} \mathbf{A} \hat{\tilde{x}} = {\mathbf{A}}^{\top} \tilde{b}\\.
> 2.  The normal equations are consistent ([Definition 92](#def-consistent-system)).
> 3.  Every least squares solution gives the same fitted vector \\\mathbf{A} \hat{\tilde{x}}\\: the orthogonal projection of \\\tilde{b}\\ onto \\\mathcal{C}(\mathbf{A})\\ ([Definition 89](#def-orthogonal-projection)).
> 4.  The least squares solution is unique exactly when \\\operatorname{rank}(\mathbf{A}) = n\\, and then \\\hat{\tilde{x}} = ({\mathbf{A}}^{\top} \mathbf{A})^{-1} {\mathbf{A}}^{\top} \tilde{b}\\.

> **NOTE:**
>
> *Proof*. Let \\\tilde{u}\\ be the orthogonal projection of \\\tilde{b}\\ onto \\\mathcal{C}(\mathbf{A})\\. The vectors \\\mathbf{A} \tilde{x}\\, as \\\tilde{x}\\ ranges over \\\mathbb{R}^n\\, are exactly the points of \\\mathcal{C}(\mathbf{A})\\ ([Definition 45](#def-column-space)). **Least squares solutions are the solutions of \\\mathbf{A} \tilde{x} = \tilde{u}\\.** If \\\mathbf{A} \hat{\tilde{x}} = \tilde{u}\\, then for every \\\tilde{x}\\, \\\mathbf{A} \tilde{x} \in \mathcal{C}(\mathbf{A})\\, so \\\mathopen{}\left\lVert\tilde{b} - \mathbf{A} \hat{\tilde{x}}\right\rVert\mathclose{} = \mathopen{}\left\lVert\tilde{b} - \tilde{u}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\tilde{b} - \mathbf{A} \tilde{x}\right\rVert\mathclose{}\\ ([Theorem 80](#thm-closest-point)), and \\\hat{\tilde{x}}\\ is a least squares solution. Conversely, let \\\hat{\tilde{x}}\\ be a least squares solution. \\\tilde{u} \in \mathcal{C}(\mathbf{A})\\, so \\\tilde{u} = \mathbf{A} \tilde{x}\_0\\ for some \\\tilde{x}\_0\\ ([Definition 45](#def-column-space)), and
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{b} - \mathbf{A} \hat{\tilde{x}}\right\rVert\mathclose{} &\le \mathopen{}\left\lVert\tilde{b} - \mathbf{A} \tilde{x}\_0\right\rVert\mathclose{} && \text{(}\href{#def-least-squares}{\text{Definition~94}}\text{)} \\ &= \mathopen{}\left\lVert\tilde{b} - \tilde{u}\right\rVert\mathclose{} && \text{(} \tilde{u} = \mathbf{A} \tilde{x}\_0 \text{)} \\ &\le \mathopen{}\left\lVert\tilde{b} - \mathbf{A} \hat{\tilde{x}}\right\rVert\mathclose{}, && \text{(}\href{#thm-closest-point}{\text{Theorem~80}}\text{, with } \tilde{w} = \mathbf{A} \hat{\tilde{x}} \in \mathcal{C}(\mathbf{A}) \text{)} \end{aligned} \\
>
> so the last inequality is an equality, and the equality case of [Theorem 80](#thm-closest-point) gives \\\mathbf{A} \hat{\tilde{x}} = \tilde{u}\\.
>
> **Parts 1 and 3.** \\\mathbf{A} \hat{\tilde{x}} = \tilde{u}\\ holds exactly when \\\tilde{b} - \mathbf{A} \hat{\tilde{x}} \in \mathcal{C}(\mathbf{A})^\perp\\: if \\\mathbf{A} \hat{\tilde{x}} = \tilde{u}\\, then \\\tilde{b} - \tilde{u} \in \mathcal{C}(\mathbf{A})^\perp\\ ([Definition 89](#def-orthogonal-projection)); conversely, if \\\tilde{b} - \mathbf{A} \hat{\tilde{x}} \in \mathcal{C}(\mathbf{A})^\perp\\, then \\\tilde{b} = \mathbf{A} \hat{\tilde{x}} + (\tilde{b} - \mathbf{A} \hat{\tilde{x}})\\ is a split into \\\mathcal{C}(\mathbf{A})\\ and \\\mathcal{C}(\mathbf{A})^\perp\\, so \\\mathbf{A} \hat{\tilde{x}} = \tilde{u}\\ by the uniqueness in [Theorem 49](#thm-orthogonal-direct-sum). And \\\mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top})\\ ([Theorem 48](#thm-complement-null-space)), where
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\\(\tilde{b} - \mathbf{A} \hat{\tilde{x}}) &= {\mathbf{A}}^{\top} \tilde{b} - {\mathbf{A}}^{\top}\\(\mathbf{A} \hat{\tilde{x}}) && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{)} \\ &= {\mathbf{A}}^{\top} \tilde{b} - {\mathbf{A}}^{\top} \mathbf{A} \hat{\tilde{x}}, && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \end{aligned} \\
>
> which is \\\tilde{0}\_n\\ exactly when the normal equations hold.
>
> **Part 2.** The vector \\\tilde{x}\_0\\ above satisfies \\\mathbf{A} \tilde{x}\_0 = \tilde{u}\\, so it is a least squares solution, and it solves the normal equations by part 1.
>
> **Part 4.** The least squares solutions are exactly the solutions of \\\mathbf{A} \tilde{x} = \tilde{u}\\, a consistent system, so there is exactly one when \\\operatorname{rank}(\mathbf{A}) = n\\ and more than one otherwise ([Corollary 8](#cor-solution-unique)). When \\\operatorname{rank}(\mathbf{A}) = n\\, \\{\mathbf{A}}^{\top} \mathbf{A}\\ is invertible ([Theorem 78](#thm-gram-invertible)), and with \\\mathbf{M} \stackrel{\text{def}}{=}{\mathbf{A}}^{\top} \mathbf{A}\\,
>
> \\ \begin{aligned} \hat{\tilde{x}} &= \mathbf{I}\_n\\\hat{\tilde{x}} && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \\ &= (\mathbf{M}^{-1} \mathbf{M})\\\hat{\tilde{x}} && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= \mathbf{M}^{-1}\\(\mathbf{M} \hat{\tilde{x}}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{M}^{-1}\\{\mathbf{A}}^{\top} \tilde{b}. && \text{(the normal equations)} \end{aligned} \\

> **NOTE:**
>
> **Example 171 (A least squares line)** Fit \\y = x_1 + x_2\\t\\ to the points \\(t, y) = (1, 1), (2, 2), (3, 2)\\: \\\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ (the \\\mathbf{X}\\ of [Example 146](#exm-gram-invertible)) and \\\tilde{b} = (1, 2, 2)\\. \\\mathbf{A}\\ has rank \\2\\ ([Example 33](#exm-rank)), so the solution is unique (part 4). \\{\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}\\ has inverse \\\frac{1}{6}\begin{bmatrix} 14 & -6 \\ -6 & 3 \end{bmatrix}\\ ([Example 146](#exm-gram-invertible)), and \\{\mathbf{A}}^{\top} \tilde{b} = (1 + 2 + 2,\\ 1 + 4 + 6) = (5, 11)\\, so
>
> \\ \hat{\tilde{x}} = \frac{1}{6} \mathopen{}\left(14 \cdot 5 - 6 \cdot 11,\\ -6 \cdot 5 + 3 \cdot 11\right)\mathclose{} = \frac{1}{6}\\(4, 3) = \mathopen{}\left(\tfrac{2}{3}, \tfrac{1}{2}\right)\mathclose{}. \\
>
> The fitted values are \\\mathbf{A} \hat{\tilde{x}} = \mathopen{}\left(\tfrac{7}{6}, \tfrac{5}{3}, \tfrac{13}{6}\right)\mathclose{}\\, and the residuals \\\tilde{b} - \mathbf{A} \hat{\tilde{x}} = \mathopen{}\left(-\tfrac{1}{6}, \tfrac{1}{3}, -\tfrac{1}{6}\right)\mathclose{}\\ are orthogonal to both columns of \\\mathbf{A}\\: \\-\tfrac{1}{6} + \tfrac{1}{3} - \tfrac{1}{6} = 0\\ and \\-\tfrac{1}{6} + \tfrac{2}{3} - \tfrac{1}{2} = 0\\.

> **NOTE:**
>
> **Example 172 (Many least squares solutions, one fitted vector)** With the rank-\\1\\ matrix \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 1 & 2 \\ 1 & 2 \end{bmatrix}\\ ([Example 33](#exm-rank)) and \\\tilde{b} = (1, 2, 2)\\, \\{\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 3 & 6 \\ 6 & 12 \end{bmatrix}\\ and \\{\mathbf{A}}^{\top} \tilde{b} = (5, 10)\\, so both normal equations say \\3 x_1 + 6 x_2 = 5\\, that is, \\x_1 + 2 x_2 = \tfrac{5}{3}\\. There are infinitely many least squares solutions, such as \\(\tfrac{5}{3}, 0)\\ and \\(0, \tfrac{5}{6})\\, as part 4 predicts for \\\operatorname{rank}(\mathbf{A}) = 1 \< 2\\; but every one gives the same fitted vector \\\mathbf{A} \hat{\tilde{x}} = (x_1 + 2 x_2)\\(1, 1, 1) = \tfrac{5}{3}\\(1, 1, 1)\\, as part 3 says.

> **NOTE:**
>
> **Theorem 95 (Solving least squares by QR)** Let \\\mathbf{A}\\ be \\m \times n\\ with \\\operatorname{rank}(\mathbf{A}) = n\\, with QR factorization \\\mathbf{A} = \mathbf{Q} \mathbf{R}\\ ([Theorem 93](#thm-qr)), and let \\\tilde{b} \in \mathbb{R}^m\\. The least squares solution ([Definition 94](#def-least-squares)) is the unique solution of
>
> \\ \underbrace{\mathbf{R}}\_{n \times n}\\\hat{\tilde{x}} = \underbrace{{\mathbf{Q}}^{\top}}\_{n \times m}\\\tilde{b}, \\
>
> which back substitution computes ([Theorem 92](#thm-back-substitution)). When \\m = n\\, it is the unique solution of \\\mathbf{A} \tilde{x} = \tilde{b}\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{R}\\ is upper triangular with positive diagonal, so \\\mathbf{R} \tilde{x} = {\mathbf{Q}}^{\top} \tilde{b}\\ has exactly one solution \\\hat{\tilde{x}}\\ ([Theorem 92](#thm-back-substitution)). \\{\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_n\\, as in the proof of [Theorem 81](#thm-projector-onb). Then
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \mathbf{A} \hat{\tilde{x}} &= {(\mathbf{Q} \mathbf{R})}^{\top}\\(\mathbf{Q} \mathbf{R})\\\hat{\tilde{x}} && \text{(substitute } \mathbf{A} = \mathbf{Q} \mathbf{R} \text{)} \\ &= {\mathbf{R}}^{\top}\\{\mathbf{Q}}^{\top}\\(\mathbf{Q} \mathbf{R})\\\hat{\tilde{x}} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= {\mathbf{R}}^{\top}\\({\mathbf{Q}}^{\top} \mathbf{Q})\\(\mathbf{R} \hat{\tilde{x}}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {\mathbf{R}}^{\top}\\\mathbf{I}\_n\\(\mathbf{R} \hat{\tilde{x}}) && \text{(} {\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_n \text{)} \\ &= {\mathbf{R}}^{\top}\\(\mathbf{R} \hat{\tilde{x}}) && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \\ &= {\mathbf{R}}^{\top}\\({\mathbf{Q}}^{\top} \tilde{b}) && \text{(} \mathbf{R} \hat{\tilde{x}} = {\mathbf{Q}}^{\top} \tilde{b} \text{)} \\ &= ({\mathbf{R}}^{\top}\\{\mathbf{Q}}^{\top})\\\tilde{b} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= {(\mathbf{Q} \mathbf{R})}^{\top}\\\tilde{b} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= {\mathbf{A}}^{\top} \tilde{b}, && \text{(} \mathbf{A} = \mathbf{Q} \mathbf{R} \text{)} \end{aligned} \\
>
> so \\\hat{\tilde{x}}\\ solves the normal equations and is the least squares solution ([Theorem 94](#thm-normal-equations)), which is unique because \\\operatorname{rank}(\mathbf{A}) = n\\. When \\m = n\\, \\\operatorname{rank}(\mathbf{A}) = n = m\\, so \\\mathbf{A} \tilde{x} = \tilde{b}\\ is consistent for every \\\tilde{b}\\ ([Corollary 8](#cor-solution-unique), part 1), so its solution leaves residual \\\tilde{0}\\, is a least squares solution, and is therefore \\\hat{\tilde{x}}\\.

> **NOTE:**
>
> **Example 173 (The least squares line by QR)** For \\\mathbf{A}\\ and \\\tilde{b}\\ of [Example 171](#exm-normal-equations), Gram-Schmidt gives \\\tilde{q}\_1 = \tfrac{1}{\sqrt{3}}\\(1, 1, 1)\\; then \\\tilde{q}\_1 \cdot (1, 2, 3) = \tfrac{6}{\sqrt{3}} = 2\sqrt{3}\\, \\\tilde{\tilde{q}}\_2 = (1, 2, 3) - 2\\(1, 1, 1) = (-1, 0, 1)\\ with norm \\\sqrt{2}\\, and \\\tilde{q}\_2 = \tfrac{1}{\sqrt{2}}\\(-1, 0, 1)\\. So
>
> \\ \mathbf{R} = \begin{bmatrix} \sqrt{3} & 2\sqrt{3} \\ 0 & \sqrt{2} \end{bmatrix}, \qquad {\mathbf{Q}}^{\top} \tilde{b} = \mathopen{}\left(\tfrac{1 + 2 + 2}{\sqrt{3}},\\ \tfrac{-1 + 0 + 2}{\sqrt{2}}\right)\mathclose{} = \mathopen{}\left(\tfrac{5}{\sqrt{3}}, \tfrac{1}{\sqrt{2}}\right)\mathclose{}. \\
>
> Back substitution gives \\x_2 = \tfrac{1}{\sqrt{2}} \cdot \tfrac{1}{\sqrt{2}} = \tfrac{1}{2}\\ and \\x_1 = \tfrac{1}{\sqrt{3}} \mathopen{}\left(\tfrac{5}{\sqrt{3}} - 2\sqrt{3} \cdot \tfrac{1}{2}\right)\mathclose{} = \tfrac{5}{3} - 1 = \tfrac{2}{3}\\, the solution found in [Example 171](#exm-normal-equations).

> **NOTE:**
>
> **Definition 95 (LU factorization)** An **LU factorization** of an \\n \times n\\ matrix \\\mathbf{A}\\ is a product \\\mathbf{A} = \mathbf{L} \mathbf{U}\\ with \\\mathbf{L}\\ unit lower triangular and \\\mathbf{U}\\ upper triangular ([Definition 93](#def-triangular-matrix)).

> **NOTE:**
>
> **Example 174 (An LU factorization of a \\3 \times 3\\ matrix)** Let \\\mathbf{A} = \begin{bmatrix} 2 & 1 & -1 \\ -3 & -1 & 2 \\ -2 & 1 & 2 \end{bmatrix}\\, \\\mathbf{L} = \begin{bmatrix} 1 & 0 & 0 \\ -\frac{3}{2} & 1 & 0 \\ -1 & 4 & 1 \end{bmatrix}\\ (unit lower triangular) and \\\mathbf{U} = \begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix}\\ (upper triangular). By [Definition 24](#def-matrix-mult), entry \\(i, j)\\ of \\\mathbf{L} \mathbf{U}\\ is \\\sum_k \ell\_{ik}\\u\_{kj}\\, so row \\i\\ of \\\mathbf{L} \mathbf{U}\\ is \\\sum_k \ell\_{ik}\\ times row \\k\\ of \\\mathbf{U}\\. Row 1 is \\1 \cdot(2, 1, -1) = (2, 1, -1)\\; row 2 is \\-\tfrac{3}{2}\\(2, 1, -1) + (0, \tfrac{1}{2}, \tfrac{1}{2}) = (-3, -1, 2)\\, and row 3 is \\-(2, 1, -1) + 4\\(0, \tfrac{1}{2}, \tfrac{1}{2}) + (0, 0, -1) = (-2, 1, 2)\\. These are the rows of \\\mathbf{A}\\, so \\\mathbf{L} \mathbf{U} = \mathbf{A}\\ is an LU factorization. The below-diagonal entries of \\\mathbf{L}\\ are the negatives of the multiples of earlier rows that Gaussian elimination adds to reduce \\\mathbf{A}\\ to \\\mathbf{U}\\.

> **NOTE:**
>
> **Example 175 (An invertible matrix with no LU factorization)** \\\mathbf{P} = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ is invertible: \\\mathbf{P}^2 = \mathbf{I}\_2\\, so \\\mathbf{P}^{-1} = \mathbf{P}\\ ([Definition 69](#def-matrix-inverse)); but it has no LU factorization. If \\\mathbf{P} = \mathbf{L} \mathbf{U}\\, the \\(1, 1)\\ entry gives \\0 = 1 \cdot u\_{11}\\, so \\u\_{11} = 0\\, and then the \\(2, 1)\\ entry gives \\1 = \ell\_{21}\\u\_{11} = 0\\, which is impossible. Swapping the two rows first removes the obstacle: the swapped matrix is \\\mathbf{I}\_2 = \mathbf{I}\_2\\\mathbf{I}\_2\\.

> **NOTE:**
>
> **Theorem 96 (Solving a system with an LU factorization)** If \\\mathbf{A} = \mathbf{L} \mathbf{U}\\ is an LU factorization ([Definition 95](#def-lu)) and the diagonal entries of \\\mathbf{U}\\ are all nonzero, then for every \\\tilde{b} \in \mathbb{R}^n\\ the system \\\mathbf{A} \tilde{x} = \tilde{b}\\ has exactly one solution: solve \\\mathbf{L} \tilde{y} = \tilde{b}\\ by forward substitution, then \\\mathbf{U} \tilde{x} = \tilde{y}\\ by back substitution ([Theorem 92](#thm-back-substitution)).

> **NOTE:**
>
> *Proof*. \\\mathbf{L}\\ has diagonal entries \\1\\ and \\\mathbf{U}\\ has nonzero ones, so each of the two triangular systems has exactly one solution ([Theorem 92](#thm-back-substitution)). If \\\tilde{y}\\ and \\\tilde{x}\\ are those solutions, then \\\mathbf{A} \tilde{x} = \mathbf{L}\\(\mathbf{U} \tilde{x}) = \mathbf{L} \tilde{y} = \tilde{b}\\ ([Theorem 8](#thm-matmul-assoc)), so \\\tilde{x}\\ is a solution. Conversely, if \\\mathbf{A} \tilde{x} = \tilde{b}\\, then \\\tilde{y} \stackrel{\text{def}}{=}\mathbf{U} \tilde{x}\\ satisfies \\\mathbf{L} \tilde{y} = \mathbf{L}\\(\mathbf{U} \tilde{x}) = (\mathbf{L} \mathbf{U})\\\tilde{x} = \mathbf{A} \tilde{x} = \tilde{b}\\ ([Theorem 8](#thm-matmul-assoc)), so \\\tilde{y}\\ is the unique solution of that system, and \\\tilde{x}\\ is then the unique solution of \\\mathbf{U} \tilde{x} = \tilde{y}\\.

> **NOTE:**
>
> **Example 176 (Two triangular solves)** With \\\mathbf{L}\\ and \\\mathbf{U}\\ of [Example 174](#exm-lu), solve \\\mathbf{A} \tilde{x} = (8, -11, -3)\\. Forward substitution on \\\mathbf{L} \tilde{y} = (8, -11, -3)\\ gives \\y_1 = 8\\, \\y_2 = -11 + \tfrac{3}{2} \cdot 8 = 1\\, \\y_3 = -3 + 8 - 4 \cdot 1 = 1\\. Back substitution on \\\mathbf{U} \tilde{x} = (8, 1, 1)\\ is [Example 168](#exm-back-substitution), which gives \\\tilde{x} = (2, 3, -1)\\. As a check, \\\mathbf{A}\\(2, 3, -1) = (4 + 3 + 1,\\ -6 - 3 - 2,\\ -4 + 3 - 2) = (8, -11, -3)\\.

### 9.4 Similarity and diagonalization

> **NOTE:**
>
> This section is adapted from Zhou ([2024a](#ref-zhou2024eig)), used under the MIT License (see the license text in [Section 2.10](#sec-subspaces)). These notes take eigenvalues to be real numbers ([Definition 80](#def-eigenvalue)), so the source’s complex eigenvalues are left out, and eigenvalues are characterized through null spaces rather than through the characteristic polynomial. Only the source’s material on similarity, diagonalization and the basic eigenvalue properties is adapted; its characteristic polynomial and algebraic multiplicity, its trace and determinant identities, and its section on symmetric matrices (covered by [Theorem 69](#thm-spectral)) are left out, and its result that eigenvalues of orthogonal matrices have modulus \\1\\ appears here in the real form \\\pm 1\\. The source’s two-vector argument that eigenvectors for distinct eigenvalues are independent is extended here to any number of eigenvectors.

> **NOTE:**
>
> **Theorem 97 (A square matrix is invertible exactly when it has full column rank)** An \\n \times n\\ matrix \\\mathbf{A}\\ is invertible ([Definition 70](#def-invertible-matrix)) exactly when \\\operatorname{rank}(\mathbf{A}) = n\\ (full column rank, [Definition 39](#def-full-column-rank)), that is, exactly when \\\mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}\\.

> **NOTE:**
>
> *Proof*. **Invertible implies rank \\n\\.** If \\\mathbf{A} \tilde{x} = \tilde{0}\_n\\, then
>
> \\ \begin{aligned} \tilde{x} &= \mathbf{I}\_n \tilde{x} && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \\ &= (\mathbf{A}^{-1} \mathbf{A})\\\tilde{x} && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= \mathbf{A}^{-1}\\(\mathbf{A} \tilde{x}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{A}^{-1}\\\tilde{0}\_n && \text{(} \mathbf{A} \tilde{x} = \tilde{0}\_n \text{)} \\ &= \tilde{0}\_n, && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \end{aligned} \\
>
> so \\\mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}\\, the nullity is \\0\\, and \\\operatorname{rank}(\mathbf{A}) = n\\ ([Theorem 36](#thm-rank-nullity)).
>
> **Rank \\n\\ implies invertible.** Every system \\\mathbf{A} \tilde{y} = \tilde{b}\\ has exactly one solution ([Corollary 8](#cor-solution-unique), both parts, with \\m = n\\). Let \\\tilde{y}\_j\\ solve \\\mathbf{A} \tilde{y}\_j = \tilde{e}\_j\\ ([Definition 12](#def-indicator-vector)), and let \\\mathbf{B}\\ have columns \\\tilde{y}\_1, \ldots, \tilde{y}\_n\\. Column \\j\\ of \\\mathbf{A} \mathbf{B}\\ is \\\mathbf{A} \tilde{y}\_j = \tilde{e}\_j\\ ([Definition 24](#def-matrix-mult)), so \\\mathbf{A} \mathbf{B} = \mathbf{I}\_n\\. For the other order,
>
> \\ \begin{aligned} \mathbf{A}\\(\mathbf{B} \mathbf{A} - \mathbf{I}\_n) &= \mathbf{A} \mathbf{B} \mathbf{A} - \mathbf{A} \mathbf{I}\_n && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{, }\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{I}\_n \mathbf{A} - \mathbf{A} \mathbf{I}\_n && \text{(} \mathbf{A} \mathbf{B} = \mathbf{I}\_n \text{)} \\ &= \mathbf{A} - \mathbf{A} && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \\ &= \mathbf{0}\_{n \times n}, && \text{(arithmetic)} \end{aligned} \\
>
> so every column of \\\mathbf{B} \mathbf{A} - \mathbf{I}\_n\\ is in \\\mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}\\ ([Definition 24](#def-matrix-mult)), and \\\mathbf{B} \mathbf{A} = \mathbf{I}\_n\\. So \\\mathbf{B}\\ satisfies [Definition 70](#def-invertible-matrix). The two conditions in the statement are equivalent by [Theorem 36](#thm-rank-nullity): the nullity is \\0\\ exactly when \\\mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}\\, because a subspace of dimension \\0\\ has the empty list as a basis, whose span is \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ ([Definition 44](#def-dimension), [Definition 41](#def-span)), and \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ has dimension \\0\\ ([Example 47](#exm-dimension)).

> **NOTE:**
>
> **Example 177 (Rank decides invertibility)**  
>
> - \\\begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ of [Example 117](#exm-invertible-matrix) has rank \\2\\: \\c_1 (2, 0) + c_2 (1, 1) = (2c_1 + c_2, c_2)\\ is \\\tilde{0}\\ only if \\c_2 = 0\\ and then \\c_1 = 0\\. So it is invertible, as that example found by exhibiting the inverse.
> - \\\begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ has rank less than \\2\\: \\(1, -1)\\ is a nonzero vector in its null space. So it is singular, as [Example 117](#exm-invertible-matrix) found.

> **NOTE:**
>
> **Definition 96 (Eigenspace and geometric multiplicity)** Let \\\lambda\\ be an eigenvalue of a \\p \times p\\ matrix \\\mathbf{A}\\ ([Definition 80](#def-eigenvalue)). The **eigenspace** of \\\lambda\\ is \\\mathcal{E}\_\lambda \stackrel{\text{def}}{=}\mathcal{N}(\mathbf{A} - \lambda\\\mathbf{I}\_p)\\. It is a subspace of \\\mathbb{R}^p\\ ([Theorem 32](#thm-null-space-subspace)), and its dimension ([Definition 44](#def-dimension)) is the **geometric multiplicity** of \\\lambda\\.

> **NOTE:**
>
> **Example 178 (Eigenspaces of two matrices)**  
>
> - For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ of [Example 132](#exm-eigenvalue), \\\mathbf{A} - 3\\\mathbf{I}\_2 = \begin{bmatrix} -1 & 1 \\ 1 & -1 \end{bmatrix}\\ sends \\\tilde{v}\\ to \\(v_2 - v_1)\\(1, -1)\\, so \\\mathcal{E}\_3 = \operatorname{span}\mathopen{}\left\\(1, 1)\right\\\mathclose{}\\, with geometric multiplicity \\1\\.
> - For \\\mathbf{J} = \begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix}\\, \\\mathbf{J} \tilde{v} = (v_2, 0)\\. \\\mathbf{J}\\(1, 0) = (0, 0) = 0\\(1, 0)\\, so \\0\\ is an eigenvalue. If \\\mathbf{J} \tilde{v} = \lambda \tilde{v}\\ with \\\lambda \ne 0\\, the second entry gives \\\lambda v_2 = 0\\, so \\v_2 = 0\\, and then the first gives \\\lambda v_1 = 0\\, so \\\tilde{v} = \tilde{0}\\. So \\0\\ is the only eigenvalue, and \\\mathcal{E}\_0 = \mathcal{N}(\mathbf{J}) = \mathopen{}\left\\(t, 0) : t \in \mathbb{R}\right\\\mathclose{}\\, with geometric multiplicity \\1\\.

> **NOTE:**
>
> **Example 179 (A number that is not an eigenvalue has no eigenspace)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ and \\\lambda = 2\\, \\\mathbf{A} - 2\\\mathbf{I}\_2 = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ sends \\\tilde{v}\\ to \\(v_2, v_1)\\, which is \\\tilde{0}\\ only for \\\tilde{v} = \tilde{0}\\, so \\\mathcal{N}(\mathbf{A} - 2\\\mathbf{I}\_2) = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\. And \\2\\ is not an eigenvalue ([Definition 80](#def-eigenvalue)): \\\mathbf{A} \tilde{v} = 2\tilde{v}\\ reads \\(2v_1 + v_2, v_1 + 2v_2) = (2v_1, 2v_2)\\, so \\v_2 = 0\\ and \\v_1 = 0\\. So [Definition 96](#def-eigenspace) does not apply to \\2\\.

> **NOTE:**
>
> **Theorem 98 (Eigenvalues are where \\\mathbf{A} - \lambda \mathbf{I}\\ is singular)** Let \\\mathbf{A}\\ be a \\p \times p\\ matrix and \\\lambda\\ a real number. Then \\\lambda\\ is an eigenvalue of \\\mathbf{A}\\ ([Definition 80](#def-eigenvalue)) exactly when \\\mathbf{A} - \lambda\\\mathbf{I}\_p\\ is singular ([Definition 70](#def-invertible-matrix)). In particular, \\\mathbf{A}\\ is singular exactly when \\0\\ is one of its eigenvalues; and each eigenspace \\\mathcal{E}\_\lambda\\ ([Definition 96](#def-eigenspace)) is a subspace of \\\mathbb{R}^p\\ consisting of \\\tilde{0}\\ and the eigenvectors for \\\lambda\\.

> **NOTE:**
>
> *Proof*. For any \\\tilde{v} \in \mathbb{R}^p\\,
>
> \\ \begin{aligned} (\mathbf{A} - \lambda\\\mathbf{I}\_p)\\\tilde{v} &= \mathbf{A} \tilde{v} - (\lambda\\\mathbf{I}\_p)\\\tilde{v} && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{, the difference law)} \\ &= \mathbf{A} \tilde{v} - \lambda\\(\mathbf{I}\_p \tilde{v}) && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{, the scalar factor)} \\ &= \mathbf{A} \tilde{v} - \lambda \tilde{v}, && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \end{aligned} \\
>
> so \\\mathbf{A} \tilde{v} = \lambda \tilde{v}\\ exactly when \\\tilde{v} \in \mathcal{N}(\mathbf{A} - \lambda\\\mathbf{I}\_p)\\; the nonzero such \\\tilde{v}\\ are the eigenvectors for \\\lambda\\. So \\\lambda\\ is an eigenvalue exactly when that null space contains a nonzero vector, which by [Theorem 97](#thm-invertible-rank) is exactly when \\\mathbf{A} - \lambda\\\mathbf{I}\_p\\ is singular. With \\\lambda = 0\\, \\\mathbf{A} - 0\\\mathbf{I}\_p = \mathbf{A}\\. An eigenspace is a null space, so it is a subspace ([Theorem 32](#thm-null-space-subspace)).

> **NOTE:**
>
> **Example 180 (Eigenvalues and singular matrices)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, \\\mathbf{A} - 3\\\mathbf{I}\_2 = \begin{bmatrix} -1 & 1 \\ 1 & -1 \end{bmatrix}\\ is singular (its columns are negatives of each other, so its rank is \\1\\), matching the eigenvalue \\3\\ of [Example 132](#exm-eigenvalue). \\\mathbf{A}\\ itself has rank \\2\\, since \\c_1 (2, 1) + c_2 (1, 2) = (2c_1 + c_2, c_1 + 2c_2)\\ is \\\tilde{0}\\ only if \\c_1 = c_2 = 0\\ (subtract twice the second entry from the first: \\-3c_2 = 0\\, and then the second entry gives \\c_1 = 0\\); so it is invertible ([Theorem 97](#thm-invertible-rank)), and \\0\\ is not an eigenvalue. The singular matrix \\\begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ has eigenvalue \\0\\, with eigenvector \\(1, -1)\\.

> **NOTE:**
>
> **Theorem 99 (Eigenvalues of shifts and powers)** Let \\\tilde{v}\\ be an eigenvector of a \\p \times p\\ matrix \\\mathbf{A}\\ for the eigenvalue \\\lambda\\ ([Definition 80](#def-eigenvalue)). Then
>
> 1.  \\\tilde{v}\\ is an eigenvector of \\\mathbf{A} + s\\\mathbf{I}\_p\\ for \\\lambda + s\\, for every number \\s\\;
> 2.  \\\tilde{v}\\ is an eigenvector of \\\mathbf{A}^k\\ ([Definition 66](#def-matrix-power)) for \\\lambda^k\\, for every positive integer \\k\\.

> **NOTE:**
>
> *Proof*. **Part 1.**
>
> \\ \begin{aligned} (\mathbf{A} + s\\\mathbf{I}\_p)\\\tilde{v} &= \mathbf{A} \tilde{v} + (s\\\mathbf{I}\_p)\\\tilde{v} && \text{(}\href{#thm-matmul-distrib}{\text{Theorem~9}}\text{)} \\ &= \mathbf{A} \tilde{v} + s\\(\mathbf{I}\_p \tilde{v}) && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{)} \\ &= \lambda \tilde{v} + s\\(\mathbf{I}\_p \tilde{v}) && \text{(eigenvector)} \\ &= \lambda \tilde{v} + s \tilde{v} && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \\ &= (\lambda + s)\\\tilde{v}. && \text{(add entrywise)} \end{aligned} \\
>
> **Part 2, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\k\\.** For \\k = 1\\ it is the assumption. If \\\mathbf{A}^{k-1} \tilde{v} = \lambda^{k-1} \tilde{v}\\, then
>
> \\ \begin{aligned} \mathbf{A}^k \tilde{v} &= \mathbf{A}\\(\mathbf{A}^{k-1} \tilde{v}) && \text{(}\href{#def-matrix-power}{\text{Definition~66}}\text{, }\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{A}\\(\lambda^{k-1} \tilde{v}) && \text{(induction hypothesis)} \\ &= \lambda^{k-1}\\(\mathbf{A} \tilde{v}) && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{)} \\ &= \lambda^{k-1}\\(\lambda \tilde{v}) && \text{(eigenvector)} \\ &= \lambda^k \tilde{v}. && \text{(multiply the numbers)} \end{aligned} \\
>
> In both parts \\\tilde{v} \ne \tilde{0}\\, so \\\tilde{v}\\ is an eigenvector.

> **NOTE:**
>
> **Example 181 (Shifting and squaring)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ with eigenvector \\(1, 1)\\ for \\3\\ ([Example 132](#exm-eigenvalue)):
>
> - \\\mathbf{A} - 2\\\mathbf{I}\_2 = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ sends \\(1, 1)\\ to \\(1, 1) = (3 - 2)\\(1, 1)\\;
> - \\\mathbf{A}^2 = \begin{bmatrix} 2 \cdot 2 + 1 \cdot 1 & 2 \cdot 1 + 1 \cdot 2 \\ 1 \cdot 2 + 2 \cdot 1 & 1 \cdot 1 + 2 \cdot 2 \end{bmatrix} = \begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}\\ ([Definition 24](#def-matrix-mult)) sends \\(1, 1)\\ to \\(9, 9) = 3^2\\(1, 1)\\.

> **NOTE:**
>
> **Theorem 100 (The eigenvalues of an upper triangular matrix are its diagonal entries)** The eigenvalues ([Definition 80](#def-eigenvalue)) of an upper triangular \\p \times p\\ matrix \\\mathbf{U}\\ ([Definition 93](#def-triangular-matrix)) are exactly its diagonal entries \\u\_{11}, \ldots, u\_{pp}\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{U} - \lambda\\\mathbf{I}\_p\\ is upper triangular, with diagonal entries \\u\_{ii} - \lambda\\ ([Definition 27](#def-identity-matrix), [Definition 22](#def-matrix-addition)).
>
> **If \\\lambda\\ is not a diagonal entry,** every \\u\_{ii} - \lambda \ne 0\\, so \\(\mathbf{U} - \lambda\\\mathbf{I}\_p)\\\tilde{v} = \tilde{0}\\ has exactly one solution, \\\tilde{v} = \tilde{0}\\ ([Theorem 92](#thm-back-substitution)), and \\\lambda\\ is not an eigenvalue ([Theorem 98](#thm-eigenvalue-singular)).
>
> **If \\\lambda\\ is a diagonal entry,** let \\k\\ be the smallest index with \\u\_{kk} = \lambda\\, and write \\\mathbf{M} = \mathbf{U} - \lambda\\\mathbf{I}\_p\\, so \\m\_{kk} = 0\\ and \\m\_{ii} \ne 0\\ for \\i \< k\\. Look for \\\tilde{v}\\ with \\v_k = 1\\ and \\v_j = 0\\ for \\j \> k\\. Entry \\i\\ of \\\mathbf{M} \tilde{v}\\ is
>
> \\ \begin{aligned} \sum\_{j=1}^{p} m\_{ij}\\v_j &= \sum\_{j=i}^{p} m\_{ij}\\v_j && \text{(} m\_{ij} = 0 \text{ for } j \< i \text{)} \\ &= \sum\_{j=i}^{k} m\_{ij}\\v_j, && \text{(} v_j = 0 \text{ for } j \> k \text{)} \end{aligned} \\
>
> where the last sum is empty, and so \\0\\, when \\i \> k\\. So:
>
> - for \\i \> k\\ entry \\i\\ is \\0\\;
> - for \\i = k\\ it is \\m\_{kk}\\v_k = 0\\;
> - for \\i \< k\\ it is \\0\\ exactly when \\v_i = -\frac{1}{m\_{ii}} \sum\_{j=i+1}^{k} m\_{ij}\\v_j\\, and these equations fix \\v\_{k-1}, \ldots, v_1\\ in turn, as in [Theorem 92](#thm-back-substitution).
>
> So \\\mathbf{M} \tilde{v} = \tilde{0}\\ with \\v_k = 1\\, hence \\\tilde{v} \ne \tilde{0}\\, and \\\lambda\\ is an eigenvalue.

> **NOTE:**
>
> **Example 182 (Eigenvalues read off the diagonal)** \\\mathbf{U} = \begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix}\\ of [Example 167](#exm-triangular-matrix) has eigenvalues \\2\\, \\\tfrac{1}{2}\\ and \\-1\\. For \\\lambda = \tfrac{1}{2}\\ (so \\k = 2\\), take \\v_2 = 1\\, \\v_3 = 0\\; row 1 of \\(\mathbf{U} - \tfrac{1}{2}\\\mathbf{I}\_3)\\\tilde{v}\\ is \\\tfrac{3}{2}\\v_1 + 1 = 0\\, so \\v_1 = -\tfrac{2}{3}\\. Check: \\\mathbf{U}\\(-\tfrac{2}{3}, 1, 0) = (-\tfrac{4}{3} + 1, \tfrac{1}{2}, 0) = \tfrac{1}{2}\\(-\tfrac{2}{3}, 1, 0)\\. The matrix \\\mathbf{J}\\ of [Example 178](#exm-eigenspace) is upper triangular with both diagonal entries \\0\\, and \\0\\ is its only eigenvalue.

> **NOTE:**
>
> **Theorem 101 (Eigenvalues of idempotent and orthogonal matrices)**  
>
> 1.  Every eigenvalue of an idempotent matrix ([Definition 71](#def-idempotent-matrix)) is \\0\\ or \\1\\.
> 2.  Every eigenvalue of an orthogonal matrix ([Definition 74](#def-orthogonal-matrix)) is \\1\\ or \\-1\\.

> **NOTE:**
>
> *Proof*. Let \\\tilde{v} \ne \tilde{0}\\ with \\\mathbf{A} \tilde{v} = \lambda \tilde{v}\\.
>
> **Part 1.** If \\\mathbf{A}^2 = \mathbf{A}\\, then
>
> \\ \begin{aligned} \lambda \tilde{v} &= \mathbf{A} \tilde{v} && \text{(eigenvector)} \\ &= \mathbf{A}^2 \tilde{v} && \text{(idempotent)} \\ &= \lambda^2 \tilde{v}, && \text{(}\href{#thm-eigen-shift-power}{\text{Theorem~99}}\text{, part 2)} \end{aligned} \\
>
> and subtracting \\\lambda \tilde{v}\\ from both sides gives \\(\lambda^2 - \lambda)\\\tilde{v} = \tilde{0}\\. Some entry of \\\tilde{v}\\ is nonzero, so \\\lambda^2 - \lambda = \lambda\\(\lambda - 1) = 0\\, and a product of two numbers is \\0\\ only when one of them is: \\\lambda = 0\\ or \\\lambda = 1\\.
>
> **Part 2.** If \\\mathbf{A}\\ is orthogonal, then
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{v}\right\rVert\mathclose{} &= \mathopen{}\left\lVert\mathbf{A} \tilde{v}\right\rVert\mathclose{} && \text{(}\href{#thm-orthogonal-norm}{\text{Theorem~65}}\text{)} \\ &= \mathopen{}\left\lVert\lambda \tilde{v}\right\rVert\mathclose{} && \text{(eigenvector)} \\ &= \mathopen{}\left\|\lambda\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{v}\right\rVert\mathclose{}, && \text{(}\href{#thm-norm-properties}{\text{Theorem~52}}\text{, part 2)} \end{aligned} \\
>
> and \\\mathopen{}\left\lVert\tilde{v}\right\rVert\mathclose{} \> 0\\ ([Theorem 52](#thm-norm-properties), part 1), so dividing by \\\mathopen{}\left\lVert\tilde{v}\right\rVert\mathclose{}\\ gives \\\mathopen{}\left\|\lambda\right\|\mathclose{} = 1\\; since \\\lambda\\ is real ([Definition 80](#def-eigenvalue)), \\\lambda = 1\\ or \\\lambda = -1\\.

> **NOTE:**
>
> **Example 183 (Projections and reflections)**  
>
> - The idempotent matrix \\\begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}\\ of [Example 148](#exm-hat-matrix-projection) sends \\(1, 1)\\ to \\(1, 1)\\ and \\(1, -1)\\ to \\(0, 0)\\: eigenvalues \\1\\ and \\0\\.
> - The matrix \\\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\, which swaps the two entries, is orthogonal: its columns \\(0, 1)\\ and \\(1, 0)\\ are orthonormal ([Remark 23](#rem-orthogonal-matrix-columns)). It sends \\(1, 1)\\ to \\(1, 1)\\ and \\(1, -1)\\ to \\(-1, 1)\\: eigenvalues \\1\\ and \\-1\\.
> - The rotation \\\mathbf{Q}\\ of [Example 123](#exm-orthogonal-matrix) has no real eigenvalue. By part 2 the only candidates are \\\pm 1\\. \\\mathbf{Q} \tilde{v} = \tilde{v}\\ reads \\-0.4\\v_1 - 0.8\\v_2 = 0\\ and \\0.8\\v_1 - 0.4\\v_2 = 0\\, so \\v_1 = -2 v_2\\ and \\v_2 = 2 v_1 = -4 v_2\\, forcing \\\tilde{v} = \tilde{0}\\; \\\mathbf{Q} \tilde{v} = -\tilde{v}\\ reads \\1.6\\v_1 - 0.8\\v_2 = 0\\ and \\0.8\\v_1 + 1.6\\v_2 = 0\\, so \\v_2 = 2 v_1\\ and \\0.8\\v_1 + 3.2\\v_1 = 0\\, forcing \\\tilde{v} = \tilde{0}\\ again.

> **NOTE:**
>
> **Definition 97 (Similar matrices)** Two \\p \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\ are **similar** if \\\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}\\ for some invertible \\p \times p\\ matrix \\\mathbf{P}\\ ([Definition 70](#def-invertible-matrix)).

> **NOTE:**
>
> *Remark 42* (Similarity read both ways). If \\\mathbf{P}\\ is invertible, then \\\mathbf{P}^{-1}\\ is invertible with inverse \\\mathbf{P}\\: \\\mathbf{P}^{-1} \mathbf{P} = \mathbf{P} \mathbf{P}^{-1} = \mathbf{I}\_p\\ ([Definition 69](#def-matrix-inverse)) is the condition of [Definition 70](#def-invertible-matrix) for \\\mathbf{P}^{-1}\\ with \\\mathbf{P}\\ as the other factor, and that factor is unique ([Remark 21](#rem-invertible-inverse)). If \\\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}\\, then
>
> \\ \begin{aligned} \mathbf{P} \mathbf{B} \mathbf{P}^{-1} &= \mathbf{P}\\(\mathbf{P}^{-1} \mathbf{A} \mathbf{P})\\\mathbf{P}^{-1} && \text{(substitute } \mathbf{B} \text{)} \\ &= (\mathbf{P} \mathbf{P}^{-1})\\\mathbf{A}\\(\mathbf{P} \mathbf{P}^{-1}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{I}\_p\\\mathbf{A}\\\mathbf{I}\_p && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= \mathbf{A}, && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \end{aligned} \\
>
> and the same steps with \\\mathbf{P}\\ and \\\mathbf{P}^{-1}\\ exchanged turn \\\mathbf{A} = \mathbf{P} \mathbf{B} \mathbf{P}^{-1}\\ back into \\\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}\\. So \\\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}\\ exactly when \\\mathbf{A} = \mathbf{P} \mathbf{B} \mathbf{P}^{-1}\\, and similarity goes both ways: \\\mathbf{A}\\ is similar to \\\mathbf{B}\\ through \\\mathbf{P}^{-1}\\, whose inverse is \\\mathbf{P}\\.

> **NOTE:**
>
> **Example 184 (A matrix similar to a diagonal one)** Let \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ and \\\mathbf{P} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}\\. Then
>
> \\ \begin{aligned} \mathbf{P}^2 &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 1 & 1 \cdot 1 + 1 \cdot(-1) \\ 1 \cdot 1 + (-1) \cdot 1 & 1 \cdot 1 + (-1)(-1) \end{bmatrix} && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{)} \\ &= \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix} && \text{(arithmetic)} \\ &= 2\\\mathbf{I}\_2, && \text{(}\href{#def-scalar-mult}{\text{Definition~23}}\text{, }\href{#def-identity-matrix}{\text{Definition~27}}\text{)} \end{aligned} \\
>
> so \\\mathbf{P}\\(\tfrac{1}{2}\\\mathbf{P}) = \tfrac{1}{2}\\\mathbf{P}^2 = \mathbf{I}\_2\\ and likewise \\(\tfrac{1}{2}\\\mathbf{P})\\\mathbf{P} = \mathbf{I}\_2\\ ([Theorem 84](#thm-scalar-matmul)): \\\mathbf{P}^{-1} = \tfrac{1}{2}\\\mathbf{P}\\ ([Definition 69](#def-matrix-inverse)). Then
>
> \\ \begin{aligned} \mathbf{P}^{-1} \mathbf{A} \mathbf{P} &= (\tfrac{1}{2}\\\mathbf{P})\\\mathbf{A} \mathbf{P} && \text{(substitute } \mathbf{P}^{-1} \text{)} \\ &= \tfrac{1}{2}\\(\mathbf{P} \mathbf{A} \mathbf{P}) && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{)} \\ &= \tfrac{1}{2}\\\mathbf{P}\\(\mathbf{A} \mathbf{P}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \tfrac{1}{2} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 3 & 1 \\ 3 & -1 \end{bmatrix} && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{, for } \mathbf{A} \mathbf{P} \text{)} \\ &= \tfrac{1}{2} \begin{bmatrix} 6 & 0 \\ 0 & 2 \end{bmatrix} && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{)} \\ &= \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix}, && \text{(}\href{#def-scalar-mult}{\text{Definition~23}}\text{)} \end{aligned} \\
>
> so \\\mathbf{A}\\ is similar to \\\operatorname{diag}(3, 1)\\. At the other extreme, the identity matrix is similar only to itself: \\\mathbf{P}^{-1} \mathbf{I}\_p \mathbf{P} = \mathbf{P}^{-1} \mathbf{P} = \mathbf{I}\_p\\ for every invertible \\\mathbf{P}\\ ([Theorem 10](#thm-identity), [Definition 69](#def-matrix-inverse)).

> **NOTE:**
>
> **Theorem 102 (Similar matrices have the same eigenvalues)** If \\\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}\\ ([Definition 97](#def-similar)), then \\\tilde{v}\\ is an eigenvector of \\\mathbf{A}\\ for \\\lambda\\ exactly when \\\mathbf{P}^{-1} \tilde{v}\\ is an eigenvector of \\\mathbf{B}\\ for \\\lambda\\. So \\\mathbf{A}\\ and \\\mathbf{B}\\ have the same eigenvalues.

> **NOTE:**
>
> *Proof*. **From \\\mathbf{A}\\ to \\\mathbf{B}\\.** Let \\\mathbf{A} \tilde{v} = \lambda \tilde{v}\\ with \\\tilde{v} \ne \tilde{0}\\, and \\\tilde{w} = \mathbf{P}^{-1} \tilde{v}\\. Then
>
> \\ \begin{aligned} \mathbf{B} \tilde{w} &= (\mathbf{P}^{-1} \mathbf{A} \mathbf{P})\\(\mathbf{P}^{-1} \tilde{v}) && \text{(substitute } \mathbf{B} \text{ and } \tilde{w} \text{)} \\ &= \mathbf{P}^{-1} \mathbf{A}\\(\mathbf{P} \mathbf{P}^{-1})\\\tilde{v} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{P}^{-1} \mathbf{A}\\\mathbf{I}\_p\\\tilde{v} && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= \mathbf{P}^{-1} \mathbf{A} \tilde{v} && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \\ &= \mathbf{P}^{-1}\\(\mathbf{A} \tilde{v}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{P}^{-1}\\(\lambda \tilde{v}) && \text{(eigenvector)} \\ &= \lambda\\\tilde{w}. && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{)} \end{aligned} \\
>
> And \\\tilde{w} \ne \tilde{0}\\: if \\\tilde{w} = \tilde{0}\\, then \\\tilde{v} = \mathbf{I}\_p \tilde{v} = \mathbf{P}\\(\mathbf{P}^{-1} \tilde{v}) = \mathbf{P}\\\tilde{0}= \tilde{0}\\ ([Theorem 10](#thm-identity), [Definition 69](#def-matrix-inverse), [Theorem 8](#thm-matmul-assoc), [Definition 28](#def-matvec-mult)), which is false.
>
> **From \\\mathbf{B}\\ to \\\mathbf{A}\\.** By [Remark 42](#rem-similar-both-ways), \\\mathbf{A} = \mathbf{P} \mathbf{B} \mathbf{P}^{-1} = (\mathbf{P}^{-1})^{-1} \mathbf{B}\\\mathbf{P}^{-1}\\, so the first part, with \\\mathbf{P}^{-1}\\ in place of \\\mathbf{P}\\ and the roles of \\\mathbf{A}\\ and \\\mathbf{B}\\ exchanged, shows that if \\\tilde{w} = \mathbf{P}^{-1} \tilde{v}\\ is an eigenvector of \\\mathbf{B}\\ for \\\lambda\\, then \\\mathbf{P} \tilde{w}\\ is an eigenvector of \\\mathbf{A}\\ for \\\lambda\\; and \\\mathbf{P} \tilde{w} = \mathbf{P} \mathbf{P}^{-1} \tilde{v} = \tilde{v}\\ ([Theorem 8](#thm-matmul-assoc), [Definition 69](#def-matrix-inverse), [Theorem 10](#thm-identity)).

> **NOTE:**
>
> **Example 185 (Eigenvectors carried across a similarity)** In [Example 184](#exm-similar), \\\mathbf{B} = \operatorname{diag}(3, 1)\\ has eigenvectors \\(1, 0)\\ for \\3\\ and \\(0, 1)\\ for \\1\\: \\\operatorname{diag}(3, 1)\\(1, 0) = (3, 0)\\ and \\\operatorname{diag}(3, 1)\\(0, 1) = (0, 1)\\. \\\mathbf{P}\\(1, 0) = (1, 1)\\ and \\\mathbf{P}\\(0, 1) = (1, -1)\\ are the eigenvectors of \\\mathbf{A}\\ for \\3\\ and \\1\\ found in [Example 132](#exm-eigenvalue).

> **NOTE:**
>
> **Theorem 103 (Eigenvectors for distinct eigenvalues are linearly independent)** If \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ are eigenvectors of a \\p \times p\\ matrix \\\mathbf{A}\\ for eigenvalues \\\lambda_1, \ldots, \lambda_k\\ that are all different, then \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ are linearly independent ([Definition 37](#def-linearly-independent)).

> **NOTE:**
>
> *Proof*. By [induction](proof-writing.llms.md#def-proof-by-induction) on \\k\\. For \\k = 1\\, \\\tilde{v}\_1 \ne \tilde{0}\\ is linearly independent on its own. Suppose the result holds for \\k - 1\\ eigenvectors, and \\\sum\_{i=1}^{k} c_i \tilde{v}\_i = \tilde{0}\\. Then
>
> \\ \begin{aligned} \tilde{0} &= (\mathbf{A} - \lambda_k \mathbf{I}\_p) \sum\_{i=1}^{k} c_i \tilde{v}\_i && \text{(multiply the supposed equation by } \mathbf{A} - \lambda_k \mathbf{I}\_p \text{)} \\ &= \sum\_{i=1}^{k} c_i\\(\mathbf{A} - \lambda_k \mathbf{I}\_p)\\\tilde{v}\_i && \text{(}\href{#thm-matvec-linear}{\text{Theorem~23}}\text{)} \\ &= \sum\_{i=1}^{k} c_i\\(\lambda_i - \lambda_k)\\\tilde{v}\_i && \text{(}\href{#thm-eigen-shift-power}{\text{Theorem~99}}\text{, part 1, with } s = -\lambda_k \text{)} \\ &= \sum\_{i=1}^{k-1} c_i\\(\lambda_i - \lambda_k)\\\tilde{v}\_i. && \text{(the } i = k \text{ term is } \tilde{0}\text{)} \end{aligned} \\
>
> By the induction hypothesis \\\tilde{v}\_1, \ldots, \tilde{v}\_{k-1}\\ are linearly independent, so every \\c_i\\(\lambda_i - \lambda_k) = 0\\ for \\i \< k\\, and since \\\lambda_i \ne \lambda_k\\, every \\c_i = 0\\ for \\i \< k\\. The supposed equation then reads \\c_k \tilde{v}\_k = \tilde{0}\\ with \\\tilde{v}\_k \ne \tilde{0}\\, so \\c_k = 0\\ too.

> **NOTE:**
>
> **Example 186 (Independent eigenvectors)** The eigenvectors \\(1, 1)\\ for \\3\\ and \\(1, -1)\\ for \\1\\ of [Example 132](#exm-eigenvalue) are linearly independent, as [Theorem 103](#thm-eigenvectors-independent) says they must be: \\c_1 (1, 1) + c_2 (1, -1) = (c_1 + c_2, c_1 - c_2)\\ is \\\tilde{0}\\ only if \\c_1 = c_2 = 0\\. Two eigenvectors for the same eigenvalue need not be independent: \\(1, 1)\\ and \\(2, 2)\\ are both eigenvectors for \\3\\.

> **NOTE:**
>
> **Definition 98 (Diagonalizable matrix)** A \\p \times p\\ matrix \\\mathbf{A}\\ is **diagonalizable** if \\\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}\\ for some invertible \\p \times p\\ matrix \\\mathbf{X}\\ and diagonal \\p \times p\\ matrix \\\mathbf{\Lambda}\\ ([Definition 68](#def-diagonal-matrix)); by [Remark 42](#rem-similar-both-ways), that is the same as \\\mathbf{\Lambda} = \mathbf{X}^{-1} \mathbf{A} \mathbf{X}\\, so a diagonalizable matrix is one similar to a diagonal matrix ([Definition 97](#def-similar)).

> **NOTE:**
>
> **Example 187 (Diagonalizable and not)**  
>
> - \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ is diagonalizable: with \\\mathbf{P}\\ as in [Example 184](#exm-similar), \\\operatorname{diag}(3, 1) = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}\\.
> - \\\mathbf{J} = \begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix}\\ is not. Suppose \\\mathbf{J} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}\\, so \\\mathbf{\Lambda} = \mathbf{X}^{-1} \mathbf{J} \mathbf{X}\\ ([Remark 42](#rem-similar-both-ways)). The eigenvalues of \\\mathbf{\Lambda}\\ are its diagonal entries ([Theorem 100](#thm-eigen-triangular), since a diagonal matrix is upper triangular) and are the eigenvalues of \\\mathbf{J}\\ ([Theorem 102](#thm-similar-eigenvalues)), of which \\0\\ is the only one ([Example 178](#exm-eigenspace)). So \\\mathbf{\Lambda} = \mathbf{0}\_{2 \times 2}\\, and then \\\mathbf{J} = \mathbf{X}\\\mathbf{0}\_{2 \times 2}\\\mathbf{X}^{-1} = \mathbf{0}\_{2 \times 2}\\ ([Definition 24](#def-matrix-mult)), which it is not.

> **NOTE:**
>
> **Theorem 104 (Diagonalizable means a basis of eigenvectors)** A \\p \times p\\ matrix \\\mathbf{A}\\ is diagonalizable ([Definition 98](#def-diagonalizable)) exactly when it has \\p\\ linearly independent eigenvectors. Then \\\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}\\ with the eigenvectors as the columns of \\\mathbf{X}\\ and their eigenvalues, in the same order, on the diagonal of \\\mathbf{\Lambda}\\.

> **NOTE:**
>
> *Proof*. Let \\\mathbf{X}\\ have columns \\\tilde{x}\_1, \ldots, \tilde{x}\_p\\ and \\\mathbf{\Lambda} = \operatorname{diag}(\lambda_1, \ldots, \lambda_p)\\. Column \\j\\ of \\\mathbf{A} \mathbf{X}\\ is \\\mathbf{A} \tilde{x}\_j\\, and column \\j\\ of \\\mathbf{X} \mathbf{\Lambda}\\ is \\\mathbf{X}\\ times column \\j\\ of \\\mathbf{\Lambda}\\ ([Definition 24](#def-matrix-mult)), which is \\\mathbf{X}\\(\lambda_j \tilde{e}\_j) = \lambda_j\\(\mathbf{X} \tilde{e}\_j) = \lambda_j \tilde{x}\_j\\ ([Theorem 84](#thm-scalar-matmul), [Theorem 22](#thm-matvec-columns)), so
>
> \\ \mathbf{A} \mathbf{X} = \mathbf{X} \mathbf{\Lambda} \iff \mathbf{A} \tilde{x}\_j = \lambda_j \tilde{x}\_j \text{ for every } j. \tag{7}\\
>
> Also, \\\mathbf{X}\\ has rank \\p\\ exactly when its \\p\\ columns are linearly independent ([Definition 38](#def-rank)), which by [Theorem 97](#thm-invertible-rank) is exactly when \\\mathbf{X}\\ is invertible.
>
> **Eigenvectors give a diagonalization.** If \\\tilde{x}\_1, \ldots, \tilde{x}\_p\\ are linearly independent eigenvectors, then \\\mathbf{X}\\ is invertible and [Equation 7](#eq-ax-xlambda) gives \\\mathbf{A} \mathbf{X} = \mathbf{X} \mathbf{\Lambda}\\, so
>
> \\ \begin{aligned} \mathbf{A} &= \mathbf{A}\\\mathbf{I}\_p && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \\ &= \mathbf{A}\\(\mathbf{X} \mathbf{X}^{-1}) && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= (\mathbf{A} \mathbf{X})\\\mathbf{X}^{-1} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}. && \text{(} \mathbf{A} \mathbf{X} = \mathbf{X} \mathbf{\Lambda} \text{)} \end{aligned} \\
>
> **A diagonalization gives eigenvectors.** If \\\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}\\, then
>
> \\ \begin{aligned} \mathbf{A} \mathbf{X} &= (\mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1})\\\mathbf{X} && \text{(substitute } \mathbf{A} \text{)} \\ &= \mathbf{X} \mathbf{\Lambda}\\(\mathbf{X}^{-1} \mathbf{X}) && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda}\\\mathbf{I}\_p && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda}, && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \end{aligned} \\
>
> so each column satisfies \\\mathbf{A} \tilde{x}\_j = \lambda_j \tilde{x}\_j\\ ([Equation 7](#eq-ax-xlambda)). \\\mathbf{X}\\ is invertible, so its columns are linearly independent, and in particular nonzero; they are \\p\\ linearly independent eigenvectors.

> **NOTE:**
>
> **Example 188 (Building the diagonalization from eigenvectors)** The eigenvectors \\(1, 1)\\ and \\(1, -1)\\ of \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ are linearly independent ([Example 186](#exm-eigenvectors-independent)), so with \\\mathbf{X} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}\\ and \\\mathbf{\Lambda} = \operatorname{diag}(3, 1)\\, \\\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}\\; by [Remark 42](#rem-similar-both-ways) this is the similarity of [Example 184](#exm-similar), with \\\mathbf{X} = \mathbf{P}\\. Because \\\mathbf{A}\\ is symmetric, [Theorem 69](#thm-spectral) even gives such a factorization with orthonormal eigenvectors ([Definition 81](#def-eigendecomposition)): dividing each column of \\\mathbf{X}\\ by its length \\\sqrt{2}\\ gives one. By contrast, every eigenvector of \\\mathbf{J}\\ in [Example 178](#exm-eigenspace) has the form \\(t, 0)\\, so any two of them are multiples of each other, and \\\mathbf{J}\\ has no two linearly independent eigenvectors: another way to see that it is not diagonalizable.

> **NOTE:**
>
> **Corollary 9 (Distinct eigenvalues make a matrix diagonalizable)** A \\p \times p\\ matrix with \\p\\ different eigenvalues is diagonalizable.

> **NOTE:**
>
> *Proof*. Choose one eigenvector for each eigenvalue. These \\p\\ eigenvectors are linearly independent ([Theorem 103](#thm-eigenvectors-independent)), so the matrix is diagonalizable ([Theorem 104](#thm-diagonalizable)).

> **NOTE:**
>
> **Example 189 (A triangular matrix with distinct diagonal entries)** \\\mathbf{U}\\ of [Example 182](#exm-eigen-triangular) has the three different eigenvalues \\2\\, \\\tfrac{1}{2}\\ and \\-1\\ ([Theorem 100](#thm-eigen-triangular)), so it is diagonalizable, even though it is not symmetric, so [Theorem 69](#thm-spectral) does not apply to it. The converse fails: \\\mathbf{I}\_2\\ is diagonal, hence diagonalizable (\\\mathbf{I}\_2 = \mathbf{I}\_2\\\mathbf{I}\_2\\\mathbf{I}\_2^{-1}\\), but has only the eigenvalue \\1\\.

> **NOTE:**
>
> **Theorem 105 (Powers of a diagonalizable matrix)** If \\\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}\\ ([Definition 98](#def-diagonalizable)) with \\\mathbf{\Lambda} = \operatorname{diag}(\lambda_1, \ldots, \lambda_p)\\, then for every positive integer \\k\\, \\\mathbf{A}^k = \mathbf{X} \mathbf{\Lambda}^k \mathbf{X}^{-1}\\ and \\\mathbf{\Lambda}^k = \operatorname{diag}(\lambda_1^k, \ldots, \lambda_p^k)\\.

> **NOTE:**
>
> *Proof*. **Powers of \\\mathbf{\Lambda}\\.** If \\\mathbf{D} = \operatorname{diag}(d_1, \ldots, d_p)\\ and \\\mathbf{E} = \operatorname{diag}(e_1, \ldots, e_p)\\, with entries \\d\_{il}\\ and \\e\_{lj}\\ (so \\d\_{ii} = d_i\\ and \\e\_{jj} = e_j\\), entry \\(i, j)\\ of \\\mathbf{D} \mathbf{E}\\ is \\\sum_l d\_{il}\\e\_{lj}\\ ([Definition 24](#def-matrix-mult)), where \\d\_{il} = 0\\ unless \\l = i\\ and \\e\_{lj} = 0\\ unless \\l = j\\. For \\i \ne j\\ no term survives, so the entry is \\0\\; for \\i = j\\ only \\l = i\\ survives, giving \\d_i\\e_i\\. So \\\mathbf{D} \mathbf{E} = \operatorname{diag}(d_1 e_1, \ldots, d_p e_p)\\, and [induction](proof-writing.llms.md#def-proof-by-induction) on \\k\\ gives \\\mathbf{\Lambda}^k = \operatorname{diag}(\lambda_1^k, \ldots, \lambda_p^k)\\.
>
> **Powers of \\\mathbf{A}\\, by induction on \\k\\.** \\k = 1\\ is the assumption. If it holds for \\k - 1\\,
>
> \\ \begin{aligned} \mathbf{A}^k &= \mathbf{A}^{k-1} \mathbf{A} && \text{(}\href{#def-matrix-power}{\text{Definition~66}}\text{, }\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda}^{k-1} \mathbf{X}^{-1}\\\mathbf{A} && \text{(induction hypothesis)} \\ &= \mathbf{X} \mathbf{\Lambda}^{k-1} \mathbf{X}^{-1}\\\mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1} && \text{(the assumption)} \\ &= \mathbf{X} \mathbf{\Lambda}^{k-1}\\(\mathbf{X}^{-1} \mathbf{X})\\\mathbf{\Lambda} \mathbf{X}^{-1} && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda}^{k-1}\\\mathbf{I}\_p\\\mathbf{\Lambda} \mathbf{X}^{-1} && \text{(}\href{#def-matrix-inverse}{\text{Definition~69}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda}^{k-1} \mathbf{\Lambda} \mathbf{X}^{-1} && \text{(}\href{#thm-identity}{\text{Theorem~10}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda}^{k} \mathbf{X}^{-1}. && \text{(}\href{#def-matrix-power}{\text{Definition~66}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 190 (A closed form for the powers)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, with \\\mathbf{X}\\ as in [Example 188](#exm-thm-diagonalizable) and \\\mathbf{X}^{-1} = \tfrac{1}{2}\\\mathbf{X}\\ ([Example 184](#exm-similar)),
>
> \\ \begin{aligned} \mathbf{A}^k &= \mathbf{X}\\\operatorname{diag}(3^k, 1)\\\mathbf{X}^{-1} && \text{(}\href{#thm-diagonalizable-powers}{\text{Theorem~105}}\text{)} \\ &= \mathbf{X}\\\operatorname{diag}(3^k, 1)\\(\tfrac{1}{2}\\\mathbf{X}) && \text{(substitute } \mathbf{X}^{-1} \text{)} \\ &= \tfrac{1}{2}\\\mathbf{X}\\\operatorname{diag}(3^k, 1)\\\mathbf{X} && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{)} \\ &= \tfrac{1}{2} \begin{bmatrix} 3^k & 1 \\ 3^k & -1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{, for } \mathbf{X}\\\operatorname{diag}(3^k, 1) \text{)} \\ &= \tfrac{1}{2} \begin{bmatrix} 3^k + 1 & 3^k - 1 \\ 3^k - 1 & 3^k + 1 \end{bmatrix}. && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{)} \end{aligned} \\
>
> For \\k = 2\\ this gives \\\tfrac{1}{2} \begin{bmatrix} 10 & 8 \\ 8 & 10 \end{bmatrix} = \begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}\\, which matches \\\mathbf{A}^2\\ in [Example 181](#exm-eigen-shift-power).

### 9.5 Gram matrices, Schur complements and Cholesky

> **NOTE:**
>
> This section is adapted from Zhou ([2024g](#ref-zhou2024pd)), used under the MIT License (see the license text in [Section 2.10](#sec-subspaces)). The source’s eigenvalue and quadratic-form characterizations of definiteness are already on this page ([Theorem 72](#thm-definite-eigenvalues)). These parts of the source are left out:
>
> - its covariance test, which needs probability
> - its material on minimization
> - its positive semidefinite version of the Schur complement test
> - its pivot test
> - its Hadamard-product “Schur lemma”
> - its notes on the LU factorization and computational cost
>
> The source leaves the Schur complement test unproved; it is proved here from a block expansion of the quadratic form, and the Cholesky factorization is derived from it.

> **NOTE:**
>
> **Theorem 106 (Definite matrices are Gram matrices)** Let \\\mathbf{A}\\ be a \\p \times p\\ matrix.
>
> 1.  \\\mathbf{A}\\ is positive semidefinite ([Definition 83](#def-positive-semidefinite)) exactly when \\\mathbf{A} = {\mathbf{B}}^{\top} \mathbf{B}\\ for some matrix \\\mathbf{B}\\ with \\p\\ columns.
> 2.  \\\mathbf{A}\\ is positive definite ([Definition 84](#def-positive-definite)) exactly when \\\mathbf{A} = {\mathbf{B}}^{\top} \mathbf{B}\\ for some matrix \\\mathbf{B}\\ with \\p\\ linearly independent columns.

> **NOTE:**
>
> *Proof*. **If \\\mathbf{A} = {\mathbf{B}}^{\top} \mathbf{B}\\.** \\\mathbf{A}\\ is symmetric, since \\{({\mathbf{B}}^{\top} \mathbf{B})}^{\top} = {\mathbf{B}}^{\top}\\{({\mathbf{B}}^{\top})}^{\top} = {\mathbf{B}}^{\top} \mathbf{B}\\ ([Theorem 19](#thm-transpose-product), [Definition 20](#def-matrix-transpose)). For any \\\tilde{x}\\,
>
> \\ \begin{aligned} {\tilde{x}}^{\top} \mathbf{A} \tilde{x} &= {\tilde{x}}^{\top}\\{\mathbf{B}}^{\top}\\\mathbf{B} \tilde{x} && \text{(substitute } \mathbf{A} \text{)} \\ &= {(\mathbf{B} \tilde{x})}^{\top}\\(\mathbf{B} \tilde{x}) && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{, }\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &= \mathopen{}\left\lVert\mathbf{B} \tilde{x}\right\rVert\mathclose{}^2 && \text{(}\href{#eq-l2-norm}{\text{Equation~2}}\text{, squared)} \\ &\ge 0. && \text{(}\href{#thm-norm-properties}{\text{Theorem~52}}\text{)} \end{aligned} \\
>
> If the columns of \\\mathbf{B}\\ are linearly independent, then \\\mathcal{N}(\mathbf{B}) = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ (\\\mathbf{B} \tilde{x}\\ is the combination of the columns with coefficients \\x_j\\, [Theorem 22](#thm-matvec-columns), and only the zero combination is \\\tilde{0}\\, [Definition 37](#def-linearly-independent)), so for \\\tilde{x}\ne \tilde{0}\\, \\\mathbf{B} \tilde{x}\ne \tilde{0}\\ and \\\mathopen{}\left\lVert\mathbf{B} \tilde{x}\right\rVert\mathclose{}^2 \> 0\\ ([Theorem 52](#thm-norm-properties), part 1).
>
> **Only if.** Let \\\mathbf{A}\\ be positive semidefinite. It is symmetric, so \\\mathbf{A} = \mathbf{Q} \mathbf{\Lambda} {\mathbf{Q}}^{\top}\\ ([Theorem 69](#thm-spectral)), and every \\\lambda_i \ge 0\\ ([Theorem 72](#thm-definite-eigenvalues)). Let \\\mathbf{\Lambda}^{1/2} \stackrel{\text{def}}{=}\operatorname{diag}(\sqrt{\lambda_1}, \ldots, \sqrt{\lambda_p})\\, which is symmetric, with \\\mathbf{\Lambda}^{1/2} \mathbf{\Lambda}^{1/2} = \mathbf{\Lambda}\\ (the product of diagonal matrices multiplies their diagonals, as in the proof of [Theorem 105](#thm-diagonalizable-powers)), and let \\\mathbf{B} \stackrel{\text{def}}{=}\mathbf{\Lambda}^{1/2} {\mathbf{Q}}^{\top}\\. Then
>
> \\ \begin{aligned} {\mathbf{B}}^{\top} \mathbf{B} &= {({\mathbf{Q}}^{\top})}^{\top}\\{(\mathbf{\Lambda}^{1/2})}^{\top}\\\mathbf{\Lambda}^{1/2} {\mathbf{Q}}^{\top} && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= \mathbf{Q}\\\mathbf{\Lambda}^{1/2} \mathbf{\Lambda}^{1/2}\\{\mathbf{Q}}^{\top} && \text{(}\href{#def-matrix-transpose}{\text{Definition~20}}\text{; } \mathbf{\Lambda}^{1/2} \text{ is symmetric)} \\ &= \mathbf{Q} \mathbf{\Lambda} {\mathbf{Q}}^{\top} && \text{(} \mathbf{\Lambda}^{1/2} \mathbf{\Lambda}^{1/2} = \mathbf{\Lambda} \text{)} \\ &= \mathbf{A}. && \text{(}\href{#thm-spectral}{\text{Theorem~69}}\text{)} \end{aligned} \\
>
> If \\\mathbf{A}\\ is positive definite, it is positive semidefinite ([Remark 36](#rem-positive-definite-symmetry)), so the same \\\mathbf{B}\\ gives \\\mathbf{A} = {\mathbf{B}}^{\top} \mathbf{B}\\; and every \\\lambda_i \> 0\\ ([Theorem 72](#thm-definite-eigenvalues)), so \\\mathbf{\Lambda}^{1/2}\\ is diagonal with nonzero diagonal, and invertible (its inverse is \\\operatorname{diag}(1/\sqrt{\lambda_1}, \ldots, 1/\sqrt{\lambda_p})\\); \\{\mathbf{Q}}^{\top}\\ is invertible with inverse \\\mathbf{Q}\\ ([Remark 23](#rem-orthogonal-matrix-columns)). So \\\mathbf{B}\\ is invertible ([Theorem 61](#thm-inverse-product)), and its \\p\\ columns are linearly independent ([Theorem 97](#thm-invertible-rank), [Definition 38](#def-rank)).

> **NOTE:**
>
> **Example 191 (Gram factorizations)**  
>
> - With \\\mathbf{R} = \begin{bmatrix} 1 & 1 \end{bmatrix}\\ (\\1 \times 2\\), \\{\mathbf{R}}^{\top} \mathbf{R} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\, the positive semidefinite matrix of [Example 137](#exm-positive-semidefinite); the two columns of \\\mathbf{R}\\, \\1\\ and \\1\\, are dependent, so part 2 does not apply to \\\mathbf{R}\\; \\{\mathbf{R}}^{\top} \mathbf{R}\\ is in fact not positive definite ([Example 138](#exm-positive-definite)).
> - With \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\, whose columns are independent ([Example 33](#exm-rank)), \\{\mathbf{X}}^{\top} \mathbf{X}= \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}\\ ([Example 146](#exm-gram-invertible)) is positive definite.
> - \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\ of [Example 138](#exm-positive-definite) is symmetric but not positive semidefinite, so by part 1 it is not \\{\mathbf{B}}^{\top} \mathbf{B}\\ for any \\\mathbf{B}\\.

> **NOTE:**
>
> **Theorem 107 (Operations that preserve definiteness)**  
>
> 1.  If \\\mathbf{C}\\ is a \\p \times p\\ positive definite matrix ([Definition 84](#def-positive-definite)) and \\\mathbf{A}\\ is a \\p \times k\\ matrix with \\k\\ linearly independent columns, then the \\k \times k\\ matrix \\{\mathbf{A}}^{\top} \mathbf{C} \mathbf{A}\\ is positive definite.
> 2.  If \\\mathbf{A}\_1\\ and \\\mathbf{A}\_2\\ are positive definite \\p \times p\\ matrices and \\\alpha_1, \alpha_2 \> 0\\, then \\\alpha_1 \mathbf{A}\_1 + \alpha_2 \mathbf{A}\_2\\ is positive definite.

> **NOTE:**
>
> *Proof*. **Part 1.** \\{\mathbf{A}}^{\top} \mathbf{C} \mathbf{A}\\ is symmetric: \\{({\mathbf{A}}^{\top} \mathbf{C} \mathbf{A})}^{\top} = {\mathbf{A}}^{\top}\\{\mathbf{C}}^{\top}\\{({\mathbf{A}}^{\top})}^{\top} = {\mathbf{A}}^{\top} \mathbf{C} \mathbf{A}\\ ([Theorem 19](#thm-transpose-product), twice; \\\mathbf{C}\\ symmetric; [Definition 20](#def-matrix-transpose)). For \\\tilde{x}\ne \tilde{0}\_k\\, \\\mathbf{A} \tilde{x}\ne \tilde{0}\_p\\, since the columns of \\\mathbf{A}\\ are independent ([Theorem 22](#thm-matvec-columns), [Definition 37](#def-linearly-independent)), and
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\\({\mathbf{A}}^{\top} \mathbf{C} \mathbf{A})\\\tilde{x} &= {(\mathbf{A} \tilde{x})}^{\top}\\\mathbf{C}\\(\mathbf{A} \tilde{x}) && \text{(}\href{#thm-transpose-product}{\text{Theorem~19}}\text{, }\href{#thm-matmul-assoc}{\text{Theorem~8}}\text{)} \\ &\> 0. && \text{(} \mathbf{C} \text{ positive definite, } \mathbf{A} \tilde{x}\ne \tilde{0}\text{)} \end{aligned} \\
>
> **Part 2.** \\\alpha_1 \mathbf{A}\_1 + \alpha_2 \mathbf{A}\_2\\ is symmetric: its transpose is \\\alpha_1 {\mathbf{A}\_1}^{\top} + \alpha_2 {\mathbf{A}\_2}^{\top} = \alpha_1 \mathbf{A}\_1 + \alpha_2 \mathbf{A}\_2\\ ([Theorem 18](#thm-transpose-sum), [Definition 23](#def-scalar-mult), [Definition 20](#def-matrix-transpose)). For \\\tilde{x}\ne \tilde{0}\\,
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\\(\alpha_1 \mathbf{A}\_1 + \alpha_2 \mathbf{A}\_2)\\\tilde{x} &= {\tilde{x}}^{\top}\\(\alpha_1 \mathbf{A}\_1)\\\tilde{x}+ {\tilde{x}}^{\top}\\(\alpha_2 \mathbf{A}\_2)\\\tilde{x} && \text{(}\href{#thm-matmul-distrib}{\text{Theorem~9}}\text{, twice)} \\ &= \alpha_1\\{\tilde{x}}^{\top} \mathbf{A}\_1 \tilde{x}+ \alpha_2\\{\tilde{x}}^{\top} \mathbf{A}\_2 \tilde{x} && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{)} \\ &\> 0. && \text{(each term is positive)} \end{aligned} \\

> **NOTE:**
>
> **Example 192 (Building positive definite matrices)**  
>
> - With \\\mathbf{C} = \mathbf{I}\_3\\ and \\\mathbf{X}\\ of [Example 191](#exm-pd-gram), part 1 gives again that \\{\mathbf{X}}^{\top} \mathbf{X}\\ is positive definite.
> - With \\\alpha_1 = 2\\, \\\mathbf{A}\_1 = \mathbf{I}\_2\\ ([Example 138](#exm-positive-definite)), \\\alpha_2 = 1\\ and \\\mathbf{A}\_2 = {\mathbf{X}}^{\top} \mathbf{X}= \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}\\ ([Example 191](#exm-pd-gram)), part 2 gives that \\2 \mathbf{I}\_2 + {\mathbf{X}}^{\top} \mathbf{X}= \begin{bmatrix} 5 & 6 \\ 6 & 16 \end{bmatrix}\\ is positive definite.
> - An aside beyond part 2: \\\mathbf{I}\_2 + \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ is positive definite plus positive semidefinite; its quadratic form is \\x_1^2 + x_2^2 + (x_1 + x_2)^2 \> 0\\ for \\\tilde{x}\ne \tilde{0}\\, so it is positive definite, in line with its eigenvalues \\3\\ and \\1\\ ([Example 132](#exm-eigenvalue)).
> - Independence is needed in part 1: with \\\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\, whose columns are equal, \\{\mathbf{A}}^{\top}\\\mathbf{I}\_2\\\mathbf{A} = \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}\\, and \\(1, -1)\\ gives quadratic form \\0\\.

> **NOTE:**
>
> **Definition 99 (Block matrix)** Split the rows of an \\m \times n\\ matrix \\\mathbf{X}\\ into the first \\k\\ and the last \\m - k\\, and its columns into the first \\l\\ and the last \\n - l\\, with \\1 \le k \< m\\ and \\1 \le l \< n\\. This cuts \\\mathbf{X}\\ into four smaller matrices, its **blocks**:
>
> \\ \mathbf{X} = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ \mathbf{C} & \mathbf{D} \end{bmatrix}, \\
>
> where \\\mathbf{A}\\ (\\k \times l\\) holds the entries \\x\_{ij}\\ with \\i \le k\\ and \\j \le l\\, \\\mathbf{B}\\ (\\k \times (n - l)\\) those with \\i \le k\\ and \\j \> l\\, \\\mathbf{C}\\ (\\(m - k) \times l\\) those with \\i \> k\\ and \\j \le l\\, and \\\mathbf{D}\\ (\\(m - k) \times (n - l)\\) those with \\i \> k\\ and \\j \> l\\, each in its original order. A matrix written this way is a **block matrix**. When \\\mathbf{X}\\ is \\n \times n\\ and \\1 \le k \le n\\, the \\k \times k\\ matrix of the entries \\x\_{ij}\\ with \\i, j \le k\\ is the **leading** (or **top-left**) \\k \times k\\ **block** of \\\mathbf{X}\\; for \\k \< n\\ it is the block \\\mathbf{A}\\ above with \\l = k\\, and for \\k = n\\ it is \\\mathbf{X}\\ itself.

> **NOTE:**
>
> **Example 193 (Cutting a \\3 \times 3\\ matrix into blocks)** With \\k = l = 1\\,
>
> \\ \mathbf{X} = \begin{bmatrix} 4 & 2 & 1 \\ 2 & 5 & 3 \\ 1 & 3 & 6 \end{bmatrix} = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ \mathbf{C} & \mathbf{D} \end{bmatrix}, \qquad \mathbf{A} = \begin{bmatrix} 4 \end{bmatrix}, \quad \mathbf{B} = \begin{bmatrix} 2 & 1 \end{bmatrix}, \quad \mathbf{C} = \begin{bmatrix} 2 \\ 1 \end{bmatrix}, \quad \mathbf{D} = \begin{bmatrix} 5 & 3 \\ 3 & 6 \end{bmatrix}. \\
>
> For instance, entry \\(1, 2)\\ of \\\mathbf{D}\\ is \\x\_{1 + 1, 2 + 1} = x\_{23} = 3\\. With \\k = l = 2\\ instead, the leading \\2 \times 2\\ block is \\\begin{bmatrix} 4 & 2 \\ 2 & 5 \end{bmatrix}\\.

> **NOTE:**
>
> **Theorem 108 (Leading blocks of a positive definite matrix are positive definite)** Let \\\mathbf{X}\\ be a \\p \times p\\ positive definite matrix ([Definition 84](#def-positive-definite)), and for \\1 \le k \le p\\ let \\\mathbf{X}\_k\\ be its leading \\k \times k\\ block ([Definition 99](#def-block-matrix)), with entries \\x\_{ij}\\ for \\i, j \le k\\. Then \\\mathbf{X}\_k\\ is positive definite. Also, every diagonal entry of a positive definite matrix is positive.

> **NOTE:**
>
> *Proof*. \\\mathbf{X}\_k\\ is symmetric, because \\\mathbf{X}\\ is. For \\\tilde{u} \in \mathbb{R}^k\\ with \\\tilde{u} \ne \tilde{0}\\, let \\\tilde{y} = (u_1, \ldots, u_k, 0, \ldots, 0) \in \mathbb{R}^p\\, which is nonzero, with entries \\y_i = u_i\\ for \\i \le k\\ and \\y_i = 0\\ for \\i \> k\\. Then
>
> \\ \begin{aligned} {\tilde{u}}^{\top} \mathbf{X}\_k \tilde{u} &= \sum\_{i=1}^{k} \sum\_{j=1}^{k} u_i\\x\_{ij}\\u_j && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{, }\href{#def-dot-product}{\text{Definition~7}}\text{)} \\ &= \sum\_{i=1}^{k} \sum\_{j=1}^{k} y_i\\x\_{ij}\\y_j && \text{(} y_i = u_i \text{ for } i \le k \text{)} \\ &= \sum\_{i=1}^{p} \sum\_{j=1}^{p} y_i\\x\_{ij}\\y_j && \text{(each added term has a factor } y_i = 0 \text{ or } y_j = 0 \text{)} \\ &= {\tilde{y}}^{\top} \mathbf{X} \tilde{y} && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{, }\href{#def-dot-product}{\text{Definition~7}}\text{)} \\ &\> 0. && \text{(} \mathbf{X} \text{ positive definite, } \tilde{y} \ne \tilde{0}\text{)} \end{aligned} \\
>
> For the diagonal entry \\x\_{ii}\\, take \\\tilde{e}\_i\\ ([Definition 12](#def-indicator-vector)), which is nonzero:
>
> \\ \begin{aligned} {\tilde{e}\_i}^{\top} \mathbf{X} \tilde{e}\_i &= \sum\_{r=1}^{p} \sum\_{s=1}^{p} (\tilde{e}\_i)\_r\\x\_{rs}\\(\tilde{e}\_i)\_s && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{, }\href{#def-dot-product}{\text{Definition~7}}\text{)} \\ &= x\_{ii} && \text{(only the term } r = s = i \text{ is nonzero)} \\ &\> 0. && \text{(} \mathbf{X} \text{ positive definite)} \end{aligned} \\

> **NOTE:**
>
> **Example 194 (A quick necessary test)** \\\begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ is positive definite ([Example 192](#exm-pd-operations)), and its diagonal entries \\2, 2\\ and its \\1 \times 1\\ leading block \\\[2\]\\ are positive. The test can only rule matrices out: \\-\mathbf{I}\_2\\ has negative diagonal entries, so it is not positive definite, even though \\\det(-\mathbf{I}\_2) = (-1)(-1) - 0 = 1 \> 0\\ ([Definition 86](#def-determinant)); a positive determinant alone does not make a matrix positive definite. And positive diagonal entries are not enough: \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\ of [Example 138](#exm-positive-definite) has them but is not positive definite.

> **NOTE:**
>
> **Theorem 109 (The quadratic form of a block matrix)** Let \\k, m \ge 1\\, let \\\mathbf{A}\\ be a symmetric \\k \times k\\ matrix, \\\mathbf{B}\\ a \\k \times m\\ matrix and \\\mathbf{C}\\ a symmetric \\m \times m\\ matrix, and let \\\mathbf{X}\\ be the \\(k + m) \times (k + m)\\ block matrix ([Definition 99](#def-block-matrix))
>
> \\ \mathbf{X} = \begin{bmatrix} \underbrace{\mathbf{A}}\_{k \times k} & \underbrace{\mathbf{B}}\_{k \times m} \\ \underbrace{{\mathbf{B}}^{\top}}\_{m \times k} & \underbrace{\mathbf{C}}\_{m \times m} \end{bmatrix}, \\
>
> that is, \\x\_{ij} = a\_{ij}\\, \\x\_{i, k+j} = b\_{ij}\\, \\x\_{k+i, j} = b\_{ji}\\ and \\x\_{k+i, k+j} = c\_{ij}\\ for indices in range. \\\mathbf{X}\\ is symmetric ([Definition 67](#def-symmetric-matrix)): \\x\_{k+i, j} = b\_{ji} = x\_{j, k+i}\\, and \\\mathbf{A}\\ and \\\mathbf{C}\\ are symmetric. Split \\\tilde{v} \in \mathbb{R}^{k + m}\\ as \\\tilde{v} = (\tilde{u}, \tilde{w})\\, with \\\tilde{u} \in \mathbb{R}^k\\ its first \\k\\ entries and \\\tilde{w} \in \mathbb{R}^m\\ the rest. Then
>
> \\ {\tilde{v}}^{\top} \mathbf{X} \tilde{v} = {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + 2\\{\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{w}}^{\top} \mathbf{C} \tilde{w}, \tag{8}\\
>
> and if \\\mathbf{A}\\ is invertible, with \\\mathbf{S} \stackrel{\text{def}}{=}\mathbf{C} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B}\\ and \\\tilde{z} \stackrel{\text{def}}{=}\tilde{u} + \mathbf{A}^{-1} \mathbf{B} \tilde{w}\\,
>
> \\ {\tilde{v}}^{\top} \mathbf{X} \tilde{v} = {\tilde{z}}^{\top} \mathbf{A} \tilde{z} + {\tilde{w}}^{\top} \mathbf{S} \tilde{w}. \\

> **NOTE:**
>
> *Proof*. **\\\mathbf{X} \tilde{v}\\ in blocks.** For \\i \le k\\,
>
> \\ \begin{aligned} (\mathbf{X} \tilde{v})\_i &= \sum\_{j=1}^{k+m} x\_{ij}\\v_j && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \\ &= \sum\_{j=1}^{k} x\_{ij}\\v_j + \sum\_{j=1}^{m} x\_{i, k+j}\\v\_{k+j} && \text{(split the sum at } j = k \text{)} \\ &= \sum\_{j=1}^{k} a\_{ij}\\u_j + \sum\_{j=1}^{m} b\_{ij}\\w_j && \text{(the blocks of } \mathbf{X} \text{ and of } \tilde{v} \text{)} \\ &= (\mathbf{A} \tilde{u})\_i + (\mathbf{B} \tilde{w})\_i, && \text{(}\href{#def-matvec-mult}{\text{Definition~28}}\text{)} \end{aligned} \\
>
> and in the same way \\(\mathbf{X} \tilde{v})\_{k+i} = ({\mathbf{B}}^{\top} \tilde{u})\_i + (\mathbf{C} \tilde{w})\_i\\ for \\i \le m\\.
>
> **The expansion.**
>
> \\ \begin{aligned} {\tilde{v}}^{\top} \mathbf{X} \tilde{v} &= \sum\_{i=1}^{k} u_i\\(\mathbf{X} \tilde{v})\_i + \sum\_{i=1}^{m} w_i\\(\mathbf{X} \tilde{v})\_{k+i} && \text{(}\href{#def-dot-product}{\text{Definition~7}}\text{, split the sum at } k \text{)} \\ &= \tilde{u} \cdot (\mathbf{A} \tilde{u} + \mathbf{B} \tilde{w}) + \tilde{w} \cdot ({\mathbf{B}}^{\top} \tilde{u} + \mathbf{C} \tilde{w}) && \text{(the blocks of } \mathbf{X} \tilde{v} \text{)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + {\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{w}}^{\top} {\mathbf{B}}^{\top} \tilde{u} + {\tilde{w}}^{\top} \mathbf{C} \tilde{w} && \text{(}\href{#thm-dot-linear}{\text{Theorem~46}}\text{)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + {\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{w}}^{\top} \mathbf{C} \tilde{w} && \text{(} {\tilde{w}}^{\top} {\mathbf{B}}^{\top} \tilde{u} = {\mathopen{}\left({\tilde{w}}^{\top} {\mathbf{B}}^{\top} \tilde{u}\right)\mathclose{}}^{\top} = {\tilde{u}}^{\top} \mathbf{B} \tilde{w} \text{; } 1 \times 1 \text{, }\href{#def-matrix-transpose}{\text{Definition~20}}\text{, }\href{#thm-transpose-product}{\text{Theorem~19}}\text{)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + 2\\{\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{w}}^{\top} \mathbf{C} \tilde{w}. && \text{(combine like terms)} \end{aligned} \\
>
> **Completing the square.** Write \\\tilde{d} \stackrel{\text{def}}{=}\mathbf{A}^{-1} \mathbf{B} \tilde{w}\\, so \\\tilde{z} = \tilde{u} + \tilde{d}\\ and \\\mathbf{A} \tilde{d} = \mathbf{B} \tilde{w}\\ ([Theorem 8](#thm-matmul-assoc), [Definition 69](#def-matrix-inverse), [Theorem 10](#thm-identity)); \\\mathbf{A}^{-1}\\ is symmetric ([Corollary 6](#cor-inverse-symmetric)). Then
>
> \\ \begin{aligned} {\tilde{z}}^{\top} \mathbf{A} \tilde{z} &= (\tilde{u} + \tilde{d}) \cdot \mathbf{A}\\(\tilde{u} + \tilde{d}) && \text{(substitute } \tilde{z} = \tilde{u} + \tilde{d} \text{)} \\ &= (\tilde{u} + \tilde{d}) \cdot (\mathbf{A} \tilde{u} + \mathbf{A} \tilde{d}) && \text{(}\href{#thm-matmul-distrib}{\text{Theorem~9}}\text{)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + {\tilde{u}}^{\top} \mathbf{A} \tilde{d} + {\tilde{d}}^{\top} \mathbf{A} \tilde{u} + {\tilde{d}}^{\top} \mathbf{A} \tilde{d} && \text{(}\href{#thm-dot-linear}{\text{Theorem~46}}\text{, both slots)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + {\tilde{u}}^{\top} \mathbf{A} \tilde{d} + {\tilde{u}}^{\top} \mathbf{A} \tilde{d} + {\tilde{d}}^{\top} \mathbf{A} \tilde{d} && \text{(as in the expansion, with } {\mathbf{A}}^{\top} = \mathbf{A} \text{)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + 2\\{\tilde{u}}^{\top} \mathbf{A} \tilde{d} + {\tilde{d}}^{\top} \mathbf{A} \tilde{d} && \text{(combine like terms)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + 2\\{\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{d}}^{\top} \mathbf{B} \tilde{w} && \text{(} \mathbf{A} \tilde{d} = \mathbf{B} \tilde{w} \text{, twice)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + 2\\{\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{w}}^{\top}\\{\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \tilde{w}, && \text{(} {\tilde{d}}^{\top} = {\tilde{w}}^{\top} {\mathbf{B}}^{\top} \mathbf{A}^{-1} \text{, }\href{#thm-transpose-product}{\text{Theorem~19}}\text{, }\href{#cor-inverse-symmetric}{\text{Corollary~6}}\text{)} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} {\tilde{w}}^{\top} \mathbf{S} \tilde{w} &= {\tilde{w}}^{\top}\\(\mathbf{C} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B})\\\tilde{w} && \text{(substitute } \mathbf{S} \text{)} \\ &= {\tilde{w}}^{\top}\\(\mathbf{C} \tilde{w} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \tilde{w}) && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{, difference rule on the right)} \\ &= {\tilde{w}}^{\top} \mathbf{C} \tilde{w} - {\tilde{w}}^{\top}\\{\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \tilde{w}. && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{, difference rule on the left)} \end{aligned} \\
>
> Adding the two displays, the \\{\tilde{w}}^{\top}\\{\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \tilde{w}\\ terms cancel, leaving \\{\tilde{u}}^{\top} \mathbf{A} \tilde{u} + 2\\{\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{w}}^{\top} \mathbf{C} \tilde{w}\\, which is \\{\tilde{v}}^{\top} \mathbf{X} \tilde{v}\\ by [Equation 8](#eq-block-quadratic).

> **NOTE:**
>
> **Example 195 (The \\2 \times 2\\ case)** For \\\mathbf{X} = \begin{bmatrix} a & b \\ b & c \end{bmatrix}\\ (\\k = m = 1\\) and \\a \ne 0\\, the theorem reads
>
> \\ a u^2 + 2buw + cw^2 = a\\\mathopen{}\left(u + \tfrac{b}{a}\\w\right)\mathclose{}^2 + \mathopen{}\left(c - \tfrac{b^2}{a}\right)\mathclose{}\\w^2, \\
>
> with \\\tilde{v} = (u, w)\\: the familiar completing of the square. With \\a = c = 5\\ and \\b = 4\\: \\5\\(u + 0.8\\w)^2 + 1.8\\w^2 = 5\\(u^2 + 1.6\\uw + 0.64\\w^2) + 1.8\\w^2 = 5u^2 + 8uw + 3.2\\w^2 + 1.8\\w^2 = 5u^2 + 8uw + 5w^2\\.

> **NOTE:**
>
> **Definition 100 (Schur complement)** For a block matrix \\\mathbf{X} = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ {\mathbf{B}}^{\top} & \mathbf{C} \end{bmatrix}\\ as in [Theorem 109](#thm-block-quadratic) with \\\mathbf{A}\\ invertible, the **Schur complement** of \\\mathbf{A}\\ in \\\mathbf{X}\\ is the \\m \times m\\ matrix \\\mathbf{S} = \mathbf{C} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B}\\ defined in [Theorem 109](#thm-block-quadratic).

> **NOTE:**
>
> **Example 196 (Schur complements of \\2 \times 2\\ matrices)**  
>
> - For \\\begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}\\ with \\\mathbf{A} = \[5\]\\: \\\mathbf{S} = 5 - 4 \cdot\tfrac{1}{5} \cdot 4 = \tfrac{25}{5} - \tfrac{16}{5} = \tfrac{9}{5}\\, that is, \\\mathbf{S} = \[\tfrac{9}{5}\]\\.
> - For \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\ with \\\mathbf{A} = \[1\]\\: \\\mathbf{S} = \[1 - 2 \cdot 1 \cdot 2\] = \[-3\]\\.
> - For \\\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ the top-left block \\\[0\]\\ is not invertible, so there is no Schur complement of it.

> **NOTE:**
>
> **Theorem 110 (Schur complement test)** Let \\\mathbf{X} = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ {\mathbf{B}}^{\top} & \mathbf{C} \end{bmatrix}\\ be as in [Theorem 109](#thm-block-quadratic). Then \\\mathbf{X}\\ is positive definite ([Definition 84](#def-positive-definite)) exactly when \\\mathbf{A}\\ is positive definite and its Schur complement \\\mathbf{S}\\ ([Definition 100](#def-schur-complement)) is positive definite.

> **NOTE:**
>
> *Proof*. **If.** \\\mathbf{A}\\ is positive definite, so invertible ([Theorem 73](#thm-pd-inverse)), and \\\mathbf{S}\\ is defined. \\\mathbf{X}\\ is symmetric. Let \\\tilde{v} = (\tilde{u}, \tilde{w}) \ne \tilde{0}\\ and \\\tilde{z} = \tilde{u} + \mathbf{A}^{-1} \mathbf{B} \tilde{w}\\. By [Theorem 109](#thm-block-quadratic), \\{\tilde{v}}^{\top} \mathbf{X} \tilde{v} = {\tilde{z}}^{\top} \mathbf{A} \tilde{z} + {\tilde{w}}^{\top} \mathbf{S} \tilde{w}\\, and both terms are at least \\0\\. If \\\tilde{w} \ne \tilde{0}\\, the second term is positive. If \\\tilde{w} = \tilde{0}\\, then \\\tilde{u} \ne \tilde{0}\\ and \\\tilde{z} = \tilde{u}\\, so the first term is positive. Either way \\{\tilde{v}}^{\top} \mathbf{X} \tilde{v} \> 0\\.
>
> **Only if.** \\\mathbf{A}\\ is the top-left \\k \times k\\ block of \\\mathbf{X}\\, so it is positive definite ([Theorem 108](#thm-pd-submatrix)), and invertible ([Theorem 73](#thm-pd-inverse)). \\\mathbf{S}\\ is symmetric: \\{({\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B})}^{\top} = {\mathbf{B}}^{\top}\\{(\mathbf{A}^{-1})}^{\top}\\\mathbf{B} = {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B}\\ ([Theorem 19](#thm-transpose-product), [Definition 20](#def-matrix-transpose) for \\{({\mathbf{B}}^{\top})}^{\top} = \mathbf{B}\\, [Corollary 6](#cor-inverse-symmetric)), and \\\mathbf{C}\\ is symmetric, so \\\mathbf{S} = \mathbf{C} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B}\\ is symmetric (the transpose of a difference is the difference of the transposes, entry by entry, [Definition 20](#def-matrix-transpose)). For \\\tilde{w} \ne \tilde{0}\\, take \\\tilde{u} = -\mathbf{A}^{-1} \mathbf{B} \tilde{w}\\, so \\\tilde{z} = \tilde{0}\\ and \\\tilde{v} = (\tilde{u}, \tilde{w}) \ne \tilde{0}\\; then \\{\tilde{w}}^{\top} \mathbf{S} \tilde{w} = {\tilde{v}}^{\top} \mathbf{X} \tilde{v} \> 0\\ ([Theorem 109](#thm-block-quadratic)).

> **NOTE:**
>
> **Example 197 (Testing \\2 \times 2\\ matrices)** A symmetric \\\begin{bmatrix} a & b \\ b & c \end{bmatrix}\\ is positive definite exactly when \\a \> 0\\ and \\c - \tfrac{b^2}{a} \> 0\\, that is, \\a \> 0\\ and \\ac \> b^2\\ (a \\1 \times 1\\ matrix \\\[s\]\\ is positive definite exactly when \\s \> 0\\, since \\{x}^{\top} s x = s x^2\\).
>
> - \\\begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}\\: \\5 \> 0\\ and \\\tfrac{9}{5} \> 0\\ ([Example 196](#exm-schur-complement)), so it is positive definite.
> - \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\: \\1 \> 0\\ but \\\mathbf{S} = -3\\, so it is not, as [Example 138](#exm-positive-definite) found directly.

> **NOTE:**
>
> **Theorem 111 (Cholesky factorization)** A \\p \times p\\ matrix \\\mathbf{A}\\ is positive definite ([Definition 84](#def-positive-definite)) exactly when \\\mathbf{A} = \mathbf{L} {\mathbf{L}}^{\top}\\ for some lower triangular \\\mathbf{L}\\ ([Definition 93](#def-triangular-matrix)) with positive diagonal entries. For a positive definite \\\mathbf{A}\\ that \\\mathbf{L}\\ is unique; it is the **Cholesky factor** of \\\mathbf{A}\\.

> **NOTE:**
>
> *Proof*. **If.** \\{\mathbf{L}}^{\top}\\ is upper triangular with positive diagonal ([Definition 20](#def-matrix-transpose)), so \\{\mathbf{L}}^{\top} \tilde{x}= \tilde{0}\\ only for \\\tilde{x}= \tilde{0}\\ ([Theorem 92](#thm-back-substitution)), and the columns of \\{\mathbf{L}}^{\top}\\ are linearly independent ([Theorem 22](#thm-matvec-columns), [Definition 37](#def-linearly-independent)). So \\\mathbf{A} = {({\mathbf{L}}^{\top})}^{\top}\\{\mathbf{L}}^{\top}\\ ([Definition 20](#def-matrix-transpose)) is positive definite ([Theorem 106](#thm-pd-gram), part 2).
>
> **Only if, with uniqueness, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\p\\.** For \\p = 1\\, \\\mathbf{A} = \[a\]\\ with \\a \> 0\\ ([Theorem 108](#thm-pd-submatrix)), and \\\[\ell\]\\\[\ell\] = \[a\]\\ with \\\ell \> 0\\ holds exactly for \\\ell = \sqrt{a}\\. For \\p \> 1\\, assume every \\(p - 1) \times (p - 1)\\ positive definite matrix has exactly one such factor, and split off the first row and column. \\\mathbf{A}\\ is symmetric, so its first row is the transpose of its first column:
>
> \\ \mathbf{A} = \begin{bmatrix} a\_{11} & {\tilde{b}}^{\top} \\ \tilde{b} & \mathbf{A}\_{22} \end{bmatrix}, \qquad \mathbf{L} = \begin{bmatrix} \ell\_{11} & \tilde{0}\_{1 \times (p-1)} \\ \tilde{g} & \mathbf{L}\_{22} \end{bmatrix}, \qquad {\mathbf{L}}^{\top} = \begin{bmatrix} \ell\_{11} & {\tilde{g}}^{\top} \\ \tilde{0}\_{(p-1) \times 1} & {\mathbf{L}\_{22}}^{\top} \end{bmatrix}, \\
>
> with \\\tilde{b}, \tilde{g} \in \mathbb{R}^{p-1}\\, where \\b_i\\ and \\g_i\\ are entries \\(i + 1, 1)\\ of \\\mathbf{A}\\ and \\\mathbf{L}\\, and \\(\mathbf{A}\_{22})\_{ij}\\ and \\(\mathbf{L}\_{22})\_{ij}\\ are their entries \\(i + 1, j + 1)\\; \\{\mathbf{L}}^{\top}\\ has this form by [Definition 20](#def-matrix-transpose). A \\p \times p\\ matrix \\\mathbf{L}\\ is lower triangular with positive diagonal exactly when \\\ell\_{11} \> 0\\, its first row is otherwise zero, and \\\mathbf{L}\_{22}\\ is lower triangular with positive diagonal; \\\tilde{g}\\ can be anything. So choosing \\\mathbf{L}\\ means choosing \\\ell\_{11} \> 0\\, \\\tilde{g}\\ and such an \\\mathbf{L}\_{22}\\.
>
> Entry \\(i, j)\\ of \\\mathbf{L} {\mathbf{L}}^{\top}\\ is \\\sum\_{r=1}^{p} \ell\_{ir}\\\ell\_{jr}\\, with \\\ell\_{ir}\\ entry \\(i, r)\\ of \\\mathbf{L}\\ ([Definition 24](#def-matrix-mult), [Definition 20](#def-matrix-transpose)). Row \\1\\ of \\\mathbf{L}\\ is \\(\ell\_{11}, 0, \ldots, 0)\\, and row \\i + 1\\ is \\(g_i, (\mathbf{L}\_{22})\_{i1}, \ldots, (\mathbf{L}\_{22})\_{i,p-1})\\. So, for \\i, j = 1, \ldots, p - 1\\:
>
> \\ \begin{aligned} (\mathbf{L} {\mathbf{L}}^{\top})\_{11} &= \ell\_{11}\\\ell\_{11} + \sum\_{r=2}^{p} 0 \cdot 0 = \ell\_{11}^2, && \text{(rows 1 and 1)} \\ (\mathbf{L} {\mathbf{L}}^{\top})\_{i+1,1} &= g_i\\\ell\_{11} + \sum\_{r=2}^{p} (\mathbf{L}\_{22})\_{i,r-1} \cdot 0 = \ell\_{11}\\g_i, && \text{(rows } i + 1 \text{ and } 1 \text{)} \\ (\mathbf{L} {\mathbf{L}}^{\top})\_{i+1,j+1} &= g_i\\g_j + \sum\_{r=2}^{p} (\mathbf{L}\_{22})\_{i,r-1}\\(\mathbf{L}\_{22})\_{j,r-1} && \text{(rows } i + 1 \text{ and } j + 1 \text{)} \\ &= (\tilde{g} {\tilde{g}}^{\top})\_{ij} + (\mathbf{L}\_{22} {\mathbf{L}\_{22}}^{\top})\_{ij}. && \text{(}\href{#def-matrix-mult}{\text{Definition~24}}\text{, with } s = r - 1 \text{)} \end{aligned} \\
>
> Entry \\(1, j + 1)\\ is \\\ell\_{11}\\g_j\\ by the same computation with the roles swapped, the transpose of the \\(2, 1)\\ block; it matches \\{\tilde{b}}^{\top}\\ exactly when the \\(2, 1)\\ block matches \\\tilde{b}\\, which is where the symmetry of \\\mathbf{A}\\ is used. So \\\mathbf{L} {\mathbf{L}}^{\top} = \mathbf{A}\\ says exactly
>
> \\ \ell\_{11}^2 = a\_{11}, \qquad \ell\_{11}\\\tilde{g} = \tilde{b}, \qquad \tilde{g} {\tilde{g}}^{\top} + \mathbf{L}\_{22} {\mathbf{L}\_{22}}^{\top} = \mathbf{A}\_{22}. \\
>
> \\a\_{11} \> 0\\ ([Theorem 108](#thm-pd-submatrix)), so the first equation with \\\ell\_{11} \> 0\\ forces \\\ell\_{11} = \sqrt{a\_{11}}\\; the second then forces \\\tilde{g} = \tfrac{1}{\ell\_{11}}\\\tilde{b}\\; and the third becomes
>
> \\ \begin{aligned} \mathbf{L}\_{22} {\mathbf{L}\_{22}}^{\top} &= \mathbf{A}\_{22} - \tilde{g} {\tilde{g}}^{\top} && \text{(subtract } \tilde{g} {\tilde{g}}^{\top} \text{)} \\ &= \mathbf{A}\_{22} - \mathopen{}\left(\tfrac{1}{\ell\_{11}}\\\tilde{b}\right)\mathclose{} {\mathopen{}\left(\tfrac{1}{\ell\_{11}}\\\tilde{b}\right)\mathclose{}}^{\top} && \text{(substitute } \tilde{g} \text{)} \\ &= \mathbf{A}\_{22} - \tfrac{1}{\ell\_{11}^2}\\\tilde{b} {\tilde{b}}^{\top} && \text{(}\href{#def-matrix-transpose}{\text{Definition~20}}\text{, }\href{#thm-scalar-matmul}{\text{Theorem~84}}\text{)} \\ &= \mathbf{A}\_{22} - \tfrac{1}{a\_{11}}\\\tilde{b} {\tilde{b}}^{\top}. && \text{(} \ell\_{11}^2 = a\_{11} \text{)} \end{aligned} \\
>
> Here \\\[a\_{11}\]\\ is invertible with inverse \\\[1 / a\_{11}\]\\, so with \\\mathbf{B} = {\tilde{b}}^{\top}\\ in [Definition 100](#def-schur-complement), \\{\mathbf{B}}^{\top}\\\[a\_{11}\]^{-1} \mathbf{B} = \tilde{b}\\\tfrac{1}{a\_{11}}\\{\tilde{b}}^{\top} = \tfrac{1}{a\_{11}}\\\tilde{b} {\tilde{b}}^{\top}\\ ([Theorem 84](#thm-scalar-matmul)), and the right side is the Schur complement of \\\[a\_{11}\]\\ in \\\mathbf{A}\\. It is positive definite by [Theorem 110](#thm-schur-test) (with \\k = 1\\; \\\mathbf{A}\_{22}\\ is symmetric because \\\mathbf{A}\\ is). By the induction hypothesis it has exactly one factor \\\mathbf{L}\_{22}\\ of the required kind. So \\\mathbf{L}\\ exists and is unique.

> **NOTE:**
>
> **Example 198 (Two Cholesky factors)**  
>
> - \\\mathbf{A} = \begin{bmatrix} 4 & 2 \\ 2 & 5 \end{bmatrix}\\: \\\ell\_{11} = \sqrt{4} = 2\\, \\\ell\_{21} = 2/2 = 1\\, and \\\ell\_{22}^2 = 5 - 1^2 = 4\\, so \\\ell\_{22} = 2\\: \\\mathbf{L} = \begin{bmatrix} 2 & 0 \\ 1 & 2 \end{bmatrix}\\, and \\\mathbf{L} {\mathbf{L}}^{\top} = \begin{bmatrix} 2 \cdot 2 & 2 \cdot 1 \\ 1 \cdot 2 & 1 \cdot 1 + 2 \cdot 2 \end{bmatrix} = \mathbf{A}\\.
> - \\\begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}\\: \\\ell\_{11} = \sqrt{5}\\, \\\ell\_{21} = 4/\sqrt{5}\\, and \\\ell\_{22}^2 = 5 - \tfrac{16}{5} = \tfrac{9}{5}\\, the Schur complement of [Example 196](#exm-schur-complement), so \\\ell\_{22} = \tfrac{3}{\sqrt{5}}\\.
> - For \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\ the method breaks down: \\\ell\_{22}^2 = 1 - 4 = -3\\ has no real solution, matching the failure of the Schur complement test ([Example 197](#exm-schur-test)).

## 10 Complex vectors and matrices

> **NOTE:**
>
> **Definition 101 (Complex vectors and matrices)** A **complex vector** of length \\p\\ is a column vector whose entries are [complex numbers](algebra.llms.md#def-complex-number); the set of all of them is denoted \\\mathbb{C}^p\\. A **complex matrix** of size \\m \times n\\ is a matrix with complex entries; the set of all of them is denoted \\\mathbb{C}^{m \times n}\\.
>
> The **complex conjugate** of a complex vector or matrix takes the [complex conjugate](algebra.llms.md#def-complex-conjugate) of each entry: \\(\overline{\mathbf{A}})\_{jk} \stackrel{\text{def}}{=}\overline{a\_{jk}}\\.

> **NOTE:**
>
> **Example 199 (A complex vector and its conjugate)** \\ \underbrace{\tilde{z}}\_{3 \times 1} = \begin{bmatrix} 1 + i \\ 2 \\ -3\\i \end{bmatrix} \in \mathbb{C}^3, \qquad \underbrace{\overline{\tilde{z}}}\_{3 \times 1} = \begin{bmatrix} 1 - i \\ 2 \\ 3\\i \end{bmatrix}. \\
>
> The real entry \\2\\ is its own conjugate. Every real vector is also a complex vector, since each real number \\a\\ is the complex number \\a + 0\\i\\, so \\\mathbb{R}^p\\ is a subset of \\\mathbb{C}^p\\.

> **NOTE:**
>
> **Definition 102 (Conjugate transpose (Hermitian adjoint, Hermitian conjugate, transjugate))** The **conjugate transpose** (also called the **Hermitian adjoint**, **Hermitian conjugate**, or **transjugate**) of an \\m \times n\\ complex matrix \\\mathbf{A}\\ is the \\n \times m\\ matrix \\\mathbf{A}^{\mathsf{H}}\\ obtained by transposing \\\mathbf{A}\\ and then taking the complex conjugate of each entry:
>
> \\(\mathbf{A}^{\mathsf{H}})\_{jk} \stackrel{\text{def}}{=}\overline{a\_{kj}} \quad \text{for } j \in \\1, \ldots, n\\,\\ k \in \\1, \ldots, m\\.\\
>
> The conjugate transpose of a column vector \\\tilde{z} \in \mathbb{C}^p\\ is the \\1 \times p\\ row vector \\\tilde{z}^{\mathsf{H}} = \[\overline{z_1},\\ \ldots,\\ \overline{z_p}\]\\.

> **NOTE:**
>
> *Remark 43* (Notation for the conjugate transpose). The operation is denoted variously across mathematics and physics: \\\mathbf{A}^\*\\ in pure mathematics (Axler ([2024](#ref-axler2024linear), Definition 7.7, p. 231)), \\\mathbf{A}^{\dagger}\\ (“\\A\\-dagger”) in physics and quantum mechanics, and \\\mathbf{A}^{\mathsf{H}}\\ in engineering, numerical linear algebra, and statistics. These notes write \\\mathbf{A}^{\mathsf{H}}\\ because \\^\*\\ is reserved for optimal points (as in \\\tilde{x}^\*\\) and \\^{\dagger}\\ frequently denotes the Moore-Penrose pseudoinverse in the broader literature.
>
> The Hermitian adjoint matrix should not be confused with the classical *adjugate matrix* (the transpose of the matrix of cofactors), which older texts occasionally referred to as the “adjoint.”

> **NOTE:**
>
> **Example 200 (The conjugate transpose of a \\2 \times 3\\ matrix)** For
>
> \\ \underbrace{\mathbf{A}}\_{2 \times 3} = \begin{bmatrix} 1 + i & 2 & 0 \\ -i & 3 - 2\\i & 4 \end{bmatrix}, \\
>
> transposing gives a \\3 \times 2\\ matrix, and conjugating each of its entries gives
>
> \\ \underbrace{\mathbf{A}^{\mathsf{H}}}\_{3 \times 2} = \begin{bmatrix} 1 - i & i \\ 2 & 3 + 2\\i \\ 0 & 4 \end{bmatrix}. \\
>
> For instance, \\(\mathbf{A}^{\mathsf{H}})\_{12} = \overline{a\_{21}} = \overline{-i} = i\\. The transpose alone would have \\-i\\ in that position, so for a matrix with an entry that is not real, \\\mathbf{A}^{\mathsf{H}}\\ and \\{\mathbf{A}}^{\top}\\ differ. For a real matrix, conjugating changes nothing, so \\\mathbf{A}^{\mathsf{H}} = {\mathbf{A}}^{\top}\\.

> **NOTE:**
>
> **Theorem 112 (Properties of the Hermitian adjoint)** Let \\\mathbf{A}\\ and \\\mathbf{B}\\ be complex matrices of compatible dimensions, and let \\c \in \mathbb{C}\\ be a scalar. The Hermitian adjoint ([Definition 102](#def-conjugate-transpose)) satisfies:
>
> 1.  **Involution**: \\(\mathbf{A}^{\mathsf{H}})^{\mathsf{H}} = \mathbf{A}\\
> 2.  **Additivity**: \\(\mathbf{A} + \mathbf{B})^{\mathsf{H}} = \mathbf{A}^{\mathsf{H}} + \mathbf{B}^{\mathsf{H}}\\
> 3.  **Conjugate-homogeneity**: \\(c\\\mathbf{A})^{\mathsf{H}} = \overline{c}\\\mathbf{A}^{\mathsf{H}}\\
> 4.  **Reversal of products**: \\(\mathbf{A}\mathbf{B})^{\mathsf{H}} = \mathbf{B}^{\mathsf{H}}\mathbf{A}^{\mathsf{H}}\\
>
> If \\\mathbf{A}\\ is invertible, then \\\mathbf{A}^{\mathsf{H}}\\ is also invertible, and
>
> \\(\mathbf{A}^{\mathsf{H}})^{-1} = (\mathbf{A}^{-1})^{\mathsf{H}}.\\

> **NOTE:**
>
> *Proof*. Properties 1-3 follow directly from entrywise conjugation and transposition:
>
> - For involution: \\\[(\mathbf{A}^{\mathsf{H}})^{\mathsf{H}}\]\_{jk} = \overline{(\mathbf{A}^{\mathsf{H}})\_{kj}} = \overline{\overline{a\_{jk}}} = a\_{jk}\\.
> - For additivity: \\\[(\mathbf{A} + \mathbf{B})^{\mathsf{H}}\]\_{jk} = \overline{(\mathbf{A} + \mathbf{B})\_{kj}} = \overline{a\_{kj} + b\_{kj}} = \overline{a\_{kj}} + \overline{b\_{kj}} = (\mathbf{A}^{\mathsf{H}})\_{jk} + (\mathbf{B}^{\mathsf{H}})\_{jk}\\.
> - For conjugate-homogeneity: \\\[(c\\\mathbf{A})^{\mathsf{H}}\]\_{jk} = \overline{(c\\\mathbf{A})\_{kj}} = \overline{c\\a\_{kj}} = \overline{c}\\\overline{a\_{kj}} = \overline{c}\\(\mathbf{A}^{\mathsf{H}})\_{jk}\\. Unlike the real transpose where \\{(c\\\mathbf{A})}^{\top} = c\\{\mathbf{A}}^{\top}\\, scaling conjugates the scalar.
>
> For property 4 (reversal of products), let \\\mathbf{A}\\ be an \\m \times k\\ matrix and \\\mathbf{B}\\ a \\k \times n\\ matrix. Entry \\(i, j)\\ of the product’s Hermitian adjoint (for \\i \in \\1, \ldots, n\\\\ and \\j \in \\1, \ldots, m\\\\) is:
>
> \\ \begin{aligned} \[(\mathbf{A}\mathbf{B})^{\mathsf{H}}\]\_{ij} &= \overline{(\mathbf{A}\mathbf{B})\_{ji}} && \text{(}\href{#def-conjugate-transpose}{\text{Definition~102}}\text{)} \\ &= \overline{\sum\_{s=1}^k a\_{js}\\b\_{si}} && \text{(definition of matrix multiplication)} \\ &= \sum\_{s=1}^k \overline{a\_{js}}\\\overline{b\_{si}} && \text{(conjugate of sums and products)} \\ &= \sum\_{s=1}^k \overline{b\_{si}}\\\overline{a\_{js}} && \text{(complex multiplication is commutative)} \\ &= \sum\_{s=1}^k (\mathbf{B}^{\mathsf{H}})\_{is}\\(\mathbf{A}^{\mathsf{H}})\_{sj} && \text{(}\href{#def-conjugate-transpose}{\text{Definition~102}}\text{)} \\ &= (\mathbf{B}^{\mathsf{H}}\mathbf{A}^{\mathsf{H}})\_{ij} && \text{(definition of matrix multiplication)}. \end{aligned} \\
>
> For the inverse, applying property 4 to \\\mathbf{A}\mathbf{A}^{-1} = \mathbf{I}\\ gives:
>
> \\(\mathbf{A}^{-1})^{\mathsf{H}}\mathbf{A}^{\mathsf{H}} = (\mathbf{A}\mathbf{A}^{-1})^{\mathsf{H}} = \mathbf{I}^{\mathsf{H}} = \mathbf{I},\\
>
> so \\(\mathbf{A}^{\mathsf{H}})^{-1} = (\mathbf{A}^{-1})^{\mathsf{H}}\\.

> **NOTE:**
>
> **Theorem 113 (The adjoint property for inner products)** Let \\\mathbf{A}\\ be an \\m \times n\\ complex matrix. Under the standard inner product on complex Euclidean space, \\\left\langle \tilde{u}, \tilde{v} \right\rangle \stackrel{\text{def}}{=}\tilde{u}^{\mathsf{H}}\tilde{v}\\,
>
> \\\left\langle \mathbf{A}\tilde{u}, \tilde{v} \right\rangle = \left\langle \tilde{u}, \mathbf{A}^{\mathsf{H}}\tilde{v} \right\rangle \quad \text{for all } \tilde{u} \in \mathbb{C}^n \text{ and } \tilde{v} \in \mathbb{C}^m.\\

> **NOTE:**
>
> *Proof*. By the definition of the standard complex inner product and the product rule for the Hermitian adjoint ([Theorem 112](#thm-hermitian-adjoint-properties)):
>
> \\ \begin{aligned} \left\langle \mathbf{A}\tilde{u}, \tilde{v} \right\rangle &= (\mathbf{A}\tilde{u})^{\mathsf{H}}\tilde{v} && \text{(definition of standard inner product)} \\ &= (\tilde{u}^{\mathsf{H}}\mathbf{A}^{\mathsf{H}})\tilde{v} && \text{(}\href{#thm-hermitian-adjoint-properties}{\text{Theorem~112}}\text{, reversal of products)} \\ &= \tilde{u}^{\mathsf{H}}(\mathbf{A}^{\mathsf{H}}\tilde{v}) && \text{(associativity of matrix multiplication)} \\ &= \left\langle \tilde{u}, \mathbf{A}^{\mathsf{H}}\tilde{v} \right\rangle && \text{(definition of standard inner product)}. \end{aligned} \\

> **NOTE:**
>
> *Remark 44* (Where the name “adjoint” comes from). This identity is the origin of the name **adjoint**: in functional analysis and operator theory, the *adjoint* of a linear map \\T: V \to W\\ between inner product spaces is defined as the unique operator \\T^\*: W \to V\\ satisfying \\\left\langle T\tilde{u}, \tilde{v} \right\rangle = \left\langle \tilde{u}, T^\*\tilde{v} \right\rangle\\ (Axler ([2024](#ref-axler2024linear), Definition 7.1, p. 226)). When \\V\\ and \\W\\ are finite-dimensional spaces equipped with their standard orthonormal bases, the matrix representing the adjoint operator \\T^\*\\ is precisely the Hermitian adjoint matrix \\\mathbf{A}^{\mathsf{H}}\\ (Axler ([2024](#ref-axler2024linear), Proposition 7.9, p. 231)).

> **NOTE:**
>
> **Theorem 114 (\\\tilde{z}^{\mathsf{H}}\tilde{z}\\ is a sum of squared absolute values)** For every \\\tilde{z} \in \mathbb{C}^p\\,
>
> \\\underbrace{\tilde{z}^{\mathsf{H}}}\_{1 \times p}\\\underbrace{\tilde{z}}\_{p \times 1} = \sum\_{j=1}^{p} \mathopen{}\left\|z_j\right\|\mathclose{}^2,\\
>
> which is a nonnegative real number, and is \\0\\ only when \\\tilde{z} = \tilde{0}\_{p \times 1}\\.

> **NOTE:**
>
> *Proof*. The last step uses the [identity for a complex number times its conjugate](algebra.llms.md#thm-conj-product).
>
> \\ \begin{aligned} \tilde{z}^{\mathsf{H}}\tilde{z} &= \sum\_{j=1}^{p} \overline{z_j}\\z_j && \text{(}\href{#def-conjugate-transpose}{\text{Definition~102}}\text{, and the row-times-column product)} \\ &= \sum\_{j=1}^{p} z_j\\\overline{z_j} && \text{(complex multiplication is commutative)} \\ &= \sum\_{j=1}^{p} \mathopen{}\left\|z_j\right\|\mathclose{}^2 && \text{(a number times its conjugate)} \end{aligned} \\
>
> By the definition of the [absolute value](algebra.llms.md#def-complex-modulus), each \\\mathopen{}\left\|z_j\right\|\mathclose{}^2 = (\operatorname{Re} z_j)^2 + (\operatorname{Im} z_j)^2\\ is a nonnegative real number, so their sum is too. A sum of nonnegative numbers is \\0\\ only when every term is \\0\\, and \\\mathopen{}\left\|z_j\right\|\mathclose{}^2 = 0\\ only when \\\operatorname{Re} z_j = \operatorname{Im} z_j = 0\\, that is, when \\z_j = 0\\.

> **NOTE:**
>
> **Example 201 (Computing \\\tilde{z}^{\mathsf{H}}\tilde{z}\\)** Let \\\tilde{z} = {(1 + i, 2)}^{\top}\\. By [Theorem 114](#thm-zhz-sum-squares),
>
> \\ \begin{aligned} \underbrace{\tilde{z}^{\mathsf{H}}}\_{1 \times 2}\\\underbrace{\tilde{z}}\_{2 \times 1} &= \mathopen{}\left\|1 + i\right\|\mathclose{}^2 + \mathopen{}\left\|2\right\|\mathclose{}^2 && \text{(}\href{#thm-zhz-sum-squares}{\text{Theorem~114}}\text{)} \\ &= (1^2 + 1^2) + (2^2 + 0^2) && \text{(definition of the absolute value, squared)} \\ &= 2 + 4 && \text{(add inside each group)} \\ &= 6 && \text{(add)} \end{aligned} \\
>
> Multiplying out directly gives the same number: \\\overline{2} \cdot 2 = 4\\, and
>
> \\ \begin{aligned} \overline{(1 + i)}\\(1 + i) &= (1 - i)(1 + i) && \text{(conjugate)} \\ &= 1 + i - i - i^2 && \text{(distribute)} \\ &= 1 - i^2 && \text{(cancel } i \text{)} \\ &= 2 && \text{(} i^2 = -1 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 202 (Why complex vectors use the conjugate transpose)** For a real vector \\\tilde{x}\\, \\{\tilde{x}}^{\top}\tilde{x}= \sum\_{j=1}^{p} x_j^2\\ is \\0\\ only when \\\tilde{x}\\ is the zero vector. The same formula fails for complex vectors. Let \\\tilde{z} = {(1, i)}^{\top}\\. Then
>
> \\ \begin{aligned} \underbrace{{\tilde{z}}^{\top}}\_{1 \times 2}\\\underbrace{\tilde{z}}\_{2 \times 1} &= 1 \cdot 1 + i \cdot i && \text{(multiply entry by entry and add)} \\ &= 1 + i^2 && \text{(multiply)} \\ &= 0 && \text{(} i^2 = -1 \text{)} \end{aligned} \\
>
> although \\\tilde{z} \neq \tilde{0}\_{2 \times 1}\\. Using the conjugate transpose instead,
>
> \\ \begin{aligned} \underbrace{\tilde{z}^{\mathsf{H}}}\_{1 \times 2}\\\underbrace{\tilde{z}}\_{2 \times 1} &= \overline{1} \cdot 1 + \overline{i} \cdot i && \text{(}\href{#def-conjugate-transpose}{\text{Definition~102}}\text{)} \\ &= 1 + (-i) \cdot i && \text{(conjugate each entry)} \\ &= 1 - i^2 && \text{(multiply)} \\ &= 2 && \text{(} i^2 = -1 \text{)} \end{aligned} \\
>
> which is positive, as [Theorem 114](#thm-zhz-sum-squares) guarantees.

> **NOTE:**
>
> **Definition 103 (Hermitian matrix (self-adjoint matrix))** A square complex matrix \\\mathbf{A} \in \mathbb{C}^{n \times n}\\ is **Hermitian** (or **self-adjoint**) if it equals its conjugate transpose ([Definition 102](#def-conjugate-transpose)):
>
> \\\mathbf{A}^{\mathsf{H}} = \mathbf{A}.\\

> **NOTE:**
>
> *Remark 45* (Why “self-adjoint”). The term *self-adjoint* comes directly from [Theorem 113](#thm-adjoint-inner-product): when \\\mathbf{A}\\ is Hermitian, \\\left\langle \mathbf{A}\tilde{u}, \tilde{v} \right\rangle = \left\langle \tilde{u}, \mathbf{A}\tilde{v} \right\rangle\\ for all \\\tilde{u}, \tilde{v} \in \mathbb{C}^n\\. The linear operator moves across the inner product without change.

> **NOTE:**
>
> **Example 203 (A Hermitian matrix)** \\ \underbrace{\mathbf{A}}\_{2 \times 2} = \begin{bmatrix} 2 & 1 - i \\ 1 + i & 3 \end{bmatrix} \\
>
> is Hermitian: transposing swaps the off-diagonal entries, and conjugating turns \\1 + i\\ back into \\1 - i\\ and \\1 - i\\ back into \\1 + i\\, so \\\mathbf{A}^{\mathsf{H}} = \mathbf{A}\\. The diagonal entries of a Hermitian matrix must be real, because \\a\_{jj} = \overline{a\_{jj}}\\, and only a real number is its own conjugate: if \\a + b\\i = a - b\\i\\, then the imaginary parts give \\b = -b\\, so \\b = 0\\.
>
> Every real symmetric matrix is Hermitian, because for a real matrix \\\mathbf{A}^{\mathsf{H}} = {\mathbf{A}}^{\top}\\.

> **NOTE:**
>
> **Example 204 (A symmetric complex matrix that is not Hermitian)** \\ \underbrace{\mathbf{B}}\_{2 \times 2} = \begin{bmatrix} 0 & i \\ i & 0 \end{bmatrix} \\
>
> is symmetric, \\{\mathbf{B}}^{\top} = \mathbf{B}\\, but it is not Hermitian:
>
> \\ \underbrace{\mathbf{B}^{\mathsf{H}}}\_{2 \times 2} = \begin{bmatrix} 0 & -i \\ -i & 0 \end{bmatrix} \neq \mathbf{B}. \\

> **NOTE:**
>
> **Definition 104 (Skew-Hermitian matrix (anti-Hermitian matrix))** A square complex matrix \\\mathbf{A} \in \mathbb{C}^{n \times n}\\ is **skew-Hermitian** (or **anti-Hermitian**) if it equals the negative of its conjugate transpose ([Definition 102](#def-conjugate-transpose)):
>
> \\\mathbf{A}^{\mathsf{H}} = -\mathbf{A}.\\

> **NOTE:**
>
> *Remark 46* (The diagonal of a skew-Hermitian matrix). Every entry of a skew-Hermitian matrix satisfies \\a\_{jk} = -\overline{a\_{kj}}\\. In particular, its diagonal entries satisfy \\a\_{jj} = -\overline{a\_{jj}}\\, which means \\a\_{jj} + \overline{a\_{jj}} = 2\operatorname{Re}(a\_{jj}) = 0\\. Therefore, every diagonal entry of a skew-Hermitian matrix must be purely imaginary (or zero). For example, \\a\_{jj} = 3\\i\\ works, since \\-\overline{3\\i} = -(-3\\i) = 3\\i\\, but \\a\_{jj} = 3\\ does not, since \\-\overline{3} = -3\\.

> **NOTE:**
>
> **Example 205 (A skew-Hermitian matrix)** The matrix
>
> \\ \mathbf{A} = \begin{bmatrix} 2\\i & 1 + i \\ -1 + i & 0 \end{bmatrix} \\
>
> is skew-Hermitian: transposing and conjugating gives
>
> \\ \mathbf{A}^{\mathsf{H}} = \begin{bmatrix} \overline{2\\i} & \overline{-1 + i} \\ \overline{1 + i} & \overline{0} \end{bmatrix} = \begin{bmatrix} -2\\i & -1 - i \\ 1 - i & 0 \end{bmatrix} = -\mathbf{A}. \\
>
> Its diagonal entries \\2\\i\\ and \\0\\ are purely imaginary.

> **NOTE:**
>
> **Theorem 115 (Hermitian and skew-Hermitian decomposition)** Every square complex matrix \\\mathbf{A} \in \mathbb{C}^{n \times n}\\ can be uniquely expressed as the sum of a Hermitian matrix \\\mathbf{H}\\ ([Definition 103](#def-hermitian-matrix)) and a skew-Hermitian matrix \\\mathbf{S}\\ ([Definition 104](#def-skew-hermitian-matrix)):
>
> \\\mathbf{A} = \mathbf{H} + \mathbf{S},\\
>
> where
>
> \\\mathbf{H} = \frac{\mathbf{A} + \mathbf{A}^{\mathsf{H}}}{2} \quad \text{and} \quad \mathbf{S} = \frac{\mathbf{A} - \mathbf{A}^{\mathsf{H}}}{2}.\\

> **NOTE:**
>
> *Proof*. **Existence**: Define \\\mathbf{H} = \frac{1}{2}(\mathbf{A} + \mathbf{A}^{\mathsf{H}})\\ and \\\mathbf{S} = \frac{1}{2}(\mathbf{A} - \mathbf{A}^{\mathsf{H}})\\. Their sum is:
>
> \\\mathbf{H} + \mathbf{S} = \frac{\mathbf{A} + \mathbf{A}^{\mathsf{H}}}{2} + \frac{\mathbf{A} - \mathbf{A}^{\mathsf{H}}}{2} = \frac{2\mathbf{A}}{2} = \mathbf{A}.\\
>
> Applying the properties of the Hermitian adjoint ([Theorem 112](#thm-hermitian-adjoint-properties)):
>
> \\ \begin{aligned} \mathbf{H}^{\mathsf{H}} &= \mathopen{}\left(\frac{\mathbf{A} + \mathbf{A}^{\mathsf{H}}}{2}\right)\mathclose{}^{\mathsf{H}} = \frac{\mathbf{A}^{\mathsf{H}} + (\mathbf{A}^{\mathsf{H}})^{\mathsf{H}}}{2} = \frac{\mathbf{A}^{\mathsf{H}} + \mathbf{A}}{2} = \mathbf{H}, \\ \mathbf{S}^{\mathsf{H}} &= \mathopen{}\left(\frac{\mathbf{A} - \mathbf{A}^{\mathsf{H}}}{2}\right)\mathclose{}^{\mathsf{H}} = \frac{\mathbf{A}^{\mathsf{H}} - (\mathbf{A}^{\mathsf{H}})^{\mathsf{H}}}{2} = \frac{\mathbf{A}^{\mathsf{H}} - \mathbf{A}}{2} = -\mathbf{S}. \end{aligned} \\
>
> Thus \\\mathbf{H}\\ is Hermitian and \\\mathbf{S}\\ is skew-Hermitian.
>
> **Uniqueness**: Suppose \\\mathbf{A} = \mathbf{H}' + \mathbf{S}'\\ with \\(\mathbf{H}')^{\mathsf{H}} = \mathbf{H}'\\ and \\(\mathbf{S}')^{\mathsf{H}} = -\mathbf{S}'\\. Taking the Hermitian adjoint of both sides yields:
>
> \\\mathbf{A}^{\mathsf{H}} = (\mathbf{H}' + \mathbf{S}')^{\mathsf{H}} = (\mathbf{H}')^{\mathsf{H}} + (\mathbf{S}')^{\mathsf{H}} = \mathbf{H}' - \mathbf{S}'.\\
>
> Adding \\\mathbf{A} = \mathbf{H}' + \mathbf{S}'\\ and \\\mathbf{A}^{\mathsf{H}} = \mathbf{H}' - \mathbf{S}'\\ gives \\\mathbf{A} + \mathbf{A}^{\mathsf{H}} = 2\mathbf{H}'\\, so \\\mathbf{H}' = \frac{1}{2}(\mathbf{A} + \mathbf{A}^{\mathsf{H}}) = \mathbf{H}\\. Subtracting the two equations gives \\\mathbf{A} - \mathbf{A}^{\mathsf{H}} = 2\mathbf{S}'\\, so \\\mathbf{S}' = \frac{1}{2}(\mathbf{A} - \mathbf{A}^{\mathsf{H}}) = \mathbf{S}\\.

## 11 Further reading

- Strang ([2023](#ref-strang2023linear)) is a widely used first course in linear algebra. It covers vectors, elimination, vector spaces, orthogonality, determinants, eigenvalues, and the singular value decomposition.
- Axler ([2024](#ref-axler2024linear)) is a proof-based treatment centered on vector spaces and linear maps. A free electronic version is available from the publisher.
- Fieller ([2016](#ref-fieller2018basics))
- Banerjee and Roy ([2014](#ref-banerjee2014linear))
- Searle and Khuri ([2017](#ref-searle2017matrix))
- Petersen and Pedersen ([2012](#ref-petersen2012matrix)) is a free desk reference that collects matrix identities: it lists results on determinants, inverses, decompositions, and [derivatives](calculus.llms.md#def-derivative) of vectors and matrices, so it is a quick place to look up a formula this page proves.
- [Essence of Linear Algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) is a 16-video YouTube playlist by Grant Sanderson (3Blue1Brown) that develops visual and geometric intuition for vectors, linear combinations, spans, linear transformations, matrix multiplication, determinants, inverses, dot and cross products, change of basis, and eigenvectors and eigenvalues.

## References

Axler, Sheldon. 2024. *Linear Algebra Done Right*. 4th ed. Undergraduate Texts in Mathematics. Springer. <https://doi.org/10.1007/978-3-031-41026-0>.

Banerjee, Sudipto, and Anindya Roy. 2014. *Linear Algebra and Matrix Analysis for Statistics*. Vol. 181. Crc Press Boca Raton. <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>.

Boyd, Stephen, and Lieven Vandenberghe. 2018. *Introduction to Applied Linear Algebra: Vectors, Matrices, and Least Squares*. Cambridge University Press. <https://doi.org/10.1017/9781108583664>.

Dobson, Annette J, and Adrian G Barnett. 2018. *An Introduction to Generalized Linear Models*. 4th ed. CRC press. <https://doi.org/10.1201/9781315182780>.

Fieller, Nick. 2016. *Basics of Matrix Algebra for Statistics with R*. Chapman; Hall/CRC. <https://doi.org/10.1201/9781315370200>.

Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. 2016. *Deep Learning*. MIT Press. <https://www.deeplearningbook.org/>.

Hutchinson, Brian. n.d. *DATA 471/571 (Machine Learning) and CSCI 481/581 (Deep Learning) Video Lectures*. Western Washington University. Accessed September 28, 2026. <https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/>.

Kaplan, Daniel. 2022. *MOSAIC Calculus*. Www.mosaic-web.org. [www.mosaic-web.org](https://www.mosaic-web.org).

Petersen, Kaare Brandt, and Michael Syskind Pedersen. 2012. *The Matrix Cookbook*. Technical University of Denmark. <https://www2.imm.dtu.dk/pubdb/edoc/imm3274.pdf>.

Searle, Shayle R, and Andre I Khuri. 2017. *Matrix Algebra Useful for Statistics*. John Wiley & Sons.

Strang, Gilbert. 2023. *Introduction to Linear Algebra*. 6th ed. Wellesley-Cambridge Press. <https://math.mit.edu/~gs/linearalgebra/>.

Zhou, Hua. 2024a. *Eigen-Decomposition*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/10-eig/10-eig.html>.

Zhou, Hua. 2024b. *Least Squares*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/08-ls/08-ls.html>.

Zhou, Hua. 2024c. *Linear Equations and Matrix Inverses*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/07-matinv/07-matinv.html>.

Zhou, Hua. 2024d. *Matrices*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/03-matrix/03-matrix.html>.

Zhou, Hua. 2024e. *Orthogonal Projections*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/06-orthproj/06-orthproj.html>.

Zhou, Hua. 2024f. *Rank and Nullity*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/05-rank/05-rank.html>.

Zhou, Hua. 2024g. *Symmetric Positive Definite Matrices*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/11-pd/11-pd.html>.

Zhou, Hua. 2024h. *Vector Space*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/04-vecsp/04-vecsp.html>.

Zhou, Hua. 2024i. *Vectors*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/02-vector/02-vector.html>.

Back to top
