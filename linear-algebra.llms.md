# Linear Algebra

Code

Published

Last modified: 2026-10-04 21:55:44 (PDT)

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
> **Definition 2 (The set \\\mathbb{R}^p\\)** For a positive integer \\p\\, \\\mathbb{R}^p\\ is the set of all [column vectors](#def-column-vector) of length \\p\\ whose entries are real numbers.

> **NOTE:**
>
> *Remark 2* (Reading \\\tilde{x}\in \mathbb{R}^p\\). Writing \\\tilde{x}\in \mathbb{R}^p\\ says, in one symbol, that \\\tilde{x}\\ is a column vector with \\p\\ real entries. For example, \\(1, -2, 0.5) \in \mathbb{R}^3\\. The vector \\(1, 2)\\ is not in \\\mathbb{R}^3\\, because it has only \\2\\ entries; it is in \\\mathbb{R}^2\\. In [Exercise 1](#exr-list-as-vector), \\\tilde{x}\in \mathbb{R}^3\\.

> **NOTE:**
>
> **Definition 3 (Transpose)** The **transpose** of a column vector \\\tilde{x}\\ is the row vector with the same sequence of entries, written horizontally:
>
> \\ {\tilde{x}}^{\top} \equiv \tilde{x}' \equiv \[x_1,\\ x_2,\\ \ldots,\\ x_p\] \\

> **NOTE:**
>
> **Example 1 (Transposing a column vector)** The transpose of the column vector with entries \\2\\, \\-1\\, \\5\\ is the row vector with the same entries:
>
> \\ {\begin{bmatrix} 2 \\ -1 \\ 5 \end{bmatrix}}^{\top} = \[2,\\ -1,\\ 5\]. \\

> **NOTE:**
>
> **Definition 4 (Vector addition)** The **sum** of two column vectors \\\tilde{x}\\ and \\\tilde{y}\\ of the same length \\p\\ is the column vector \\\tilde{x}+ \tilde{y}\\ of length \\p\\ obtained by adding entry by entry:
>
> \\(\tilde{x}+ \tilde{y})\_i \stackrel{\text{def}}{=}x_i + y_i, \quad i = 1, \ldots, p\\

> **NOTE:**
>
> **Example 2 (Adding two vectors)** \\ \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix} + \begin{bmatrix} 4 \\ 5 \\ 6 \end{bmatrix} = \begin{bmatrix} 1 + 4 \\ 2 + 5 \\ 3 + 6 \end{bmatrix} = \begin{bmatrix} 5 \\ 7 \\ 9 \end{bmatrix} \\

> **NOTE:**
>
> **Definition 5 (Dot product)** For any two real-valued vectors \\\tilde{x}= (x_1, \ldots, x_p)\\ and \\\tilde{y}= (y_1, \ldots, y_p)\\ of the same length \\p\\, the **dot product** of \\\tilde{x}\\ and \\\tilde{y}\\ is:
>
> \\\tilde{x}\cdot \tilde{y}= \tilde{x}^\top \tilde{y}\stackrel{\text{def}}{=}\sum\_{i=1}^px_i y_i \tag{1}\\

See also the definitions in:

- Dobson and Barnett ([2018](#ref-dobson4e)), Section 1.3 (equation 1.1, page 7)

- Kaplan ([2022](#ref-mosaiccalc)), chapter on vectors

- [wikipedia](https://en.wikipedia.org/wiki/Linear_combination)

The dot product has a different generalization for two matrices; see [wikipedia](https://en.wikipedia.org/wiki/Dot_product#Dyadics_and_matrices) for more.

> **NOTE:**
>
> **Example 3 (A dot product)** For \\\tilde{x}= (1, 2, 3)\\ and \\\tilde{y}= (4, 5, 6)\\:
>
> \\ \begin{aligned} \tilde{x}\cdot \tilde{y} &= 1 \cdot 4 + 2 \cdot 5 + 3 \cdot 6 && \text{(definition of the dot product)} \\ &= 4 + 10 + 18 && \text{(multiply)} \\ &= 32 && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> **Definition 6 (Linear combination)** A **linear combination** of the numbers \\a_1, \ldots, a_k\\ with **coefficients** \\c_1, \ldots, c_k\\ is the weighted sum
>
> \\c_1 a_1 + \cdots + c_k a_k = \sum\_{i=1}^k c_i a_i\\
>
> A linear combination of vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ of the same length is defined entry by entry: entry \\j\\ of \\\sum\_{i=1}^k c_i \tilde{v}\_i\\ is the linear combination of the \\j\\th entries of \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ with the same coefficients. For example, the linear combination of \\{(1, 0)}^{\top}\\ and \\{(0, 1)}^{\top}\\ with coefficients \\2\\ and \\3\\ is \\{(2 \cdot 1 + 3 \cdot 0,\\ 2 \cdot 0 + 3 \cdot 1)}^{\top} = {(2, 3)}^{\top}\\.

> **NOTE:**
>
> *Remark 3* (The dot product is a linear combination). The dot product \\\tilde{x}\cdot \tilde{y}\\ is a linear combination ([Definition 6](#def-linear-combination)) of the entries of \\\tilde{y}\\, with coefficients \\x_1, \ldots, x_p\\. In [Example 3](#exm-dot-product), \\\tilde{x}\cdot \tilde{y}= 1 \cdot 4 + 2 \cdot 5 + 3 \cdot 6\\ is the linear combination of \\4\\, \\5\\, and \\6\\ with coefficients \\1\\, \\2\\, and \\3\\.
>
> The dot product is also the standard *inner product* on \\\mathbb{R}^p\\; “inner product” is the general notion, of which the dot product is one example.

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
> **Definition 7 (Zero vector)** The **zero vector** \\\tilde{0}\\ of length \\p\\ has all entries equal to zero:
>
> \\ \tilde{0}= \begin{bmatrix} 0 \\ 0 \\ \vdots \\ 0 \end{bmatrix} \\

> **NOTE:**
>
> *Remark 4* (The zero vector is the additive identity). Adding the zero vector to a vector leaves it unchanged ([Definition 4](#def-vector-addition)): \\\tilde{x}+ \tilde{0}= \tilde{x}\\ for any vector \\\tilde{x}\\ of the same length. For example, \\(2, -1) + (0, 0) = (2 + 0, -1 + 0) = (2, -1)\\.

> **NOTE:**
>
> **Definition 8 (Ones vector)** The **ones vector** \\\tilde{1}\\ of length \\p\\ has all entries equal to one:
>
> \\ \tilde{1} = \begin{bmatrix} 1 \\ 1 \\ \vdots \\ 1 \end{bmatrix} \\

> **NOTE:**
>
> *Remark 5* (The ones vector sums the entries). The dot product ([Definition 5](#def-dot-product)) of \\\tilde{1}\\ with \\\tilde{x}\\ is the sum of the entries of \\\tilde{x}\\: \\\tilde{1} \cdot \tilde{x}= \sum\_{i=1}^p1 \cdot x_i = \sum\_{i=1}^px_i\\. For example, for \\\tilde{x}= (2, -1, 5)\\, \\\tilde{1} \cdot \tilde{x}= 2 + (-1) + 5 = 6\\, and dividing by the length \\p = 3\\ gives the mean of the entries, \\6 / 3 = 2\\.

> **NOTE:**
>
> **Definition 9 (Indicator vector / standard basis vector)** The \\j\\-th **indicator vector** (or *standard basis vector*) \\\tilde{e}\_j\\ of length \\p\\ has a \\1\\ in position \\j\\ and \\0\\s elsewhere:
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

### 1.2 Orthogonality

> **NOTE:**
>
> **Definition 10 (Orthogonal vectors)** Two vectors \\\tilde{x}\\ and \\\tilde{y}\\ of the same length are **orthogonal** (written \\\tilde{x}\perp \tilde{y}\\) if their dot product ([Definition 5](#def-dot-product)) is zero:
>
> \\\tilde{x}\perp \tilde{y}\iff \tilde{x}\cdot \tilde{y}= 0\\

> **NOTE:**
>
> *Remark 7* (Orthogonal means perpendicular). Orthogonality extends the geometric idea of perpendicular lines to vectors with any number of entries. In the plane, \\(1, 2)\\ and \\(-2, 1)\\ are perpendicular, and their dot product is \\1 \cdot(-2) + 2 \cdot 1 = 0\\. The same test works in three dimensions, where pictures are harder to draw: \\(1, 1, 0) \cdot (1, -1, 5) = 1 - 1 + 0 = 0\\, so \\(1, 1, 0) \perp (1, -1, 5)\\.

> **NOTE:**
>
> **Definition 11 (Euclidean norm)** The **Euclidean norm** (or *length*, also called the \\L_2\\ norm and written \\\lVert \tilde{x}\rVert_2\\) of a vector \\\tilde{x}\\ of length \\p\\ is
>
> \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \stackrel{\text{def}}{=}\sqrt{\tilde{x}\cdot \tilde{x}} = \sqrt{\sum\_{i=1}^px_i^2} \tag{2}\\

> **NOTE:**
>
> **Example 4 (The length of a vector)** For \\\tilde{x}= (3, 4)\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} &= \sqrt{3^2 + 4^2} && \text{(definition of the norm)} \\ &= \sqrt{25} && \text{(square and add)} \\ &= 5 \end{aligned} \\
>
> The vector \\(0.6, 0.8)\\ has norm \\\sqrt{0.36 + 0.64} = 1\\.

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
> **Definition 12 (Euclidean distance)** The **Euclidean distance** between two vectors \\\tilde{x}\\ and \\\tilde{y}\\ of length \\p\\ is the [Euclidean norm](#def-euclidean-norm) of their difference:
>
> \\d(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}\mathopen{}\left\lVert\tilde{x}- \tilde{y}\right\rVert\mathclose{} = \sqrt{\sum\_{i=1}^p(x_i - y_i)^2} \tag{3}\\

> **NOTE:**
>
> *Remark 8* (Distance from the origin). The distance from the origin \\\tilde{0}\\ to a vector \\\tilde{x}\\ is the norm of \\\tilde{x}\\: \\d(\tilde{x}, \tilde{0}) = \mathopen{}\left\lVert\tilde{x}- \tilde{0}\right\rVert\mathclose{} = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\ ([Goodfellow et al. 2016, 39](#ref-goodfellow2016deep)).
>
> For example, the distance from \\\tilde{0}\\ to \\(3, 4)\\ is \\\mathopen{}\left\lVert(3, 4)\right\rVert\mathclose{} = 5\\, as in [Example 4](#exm-euclidean-norm).

> **NOTE:**
>
> **Definition 13 (Orthonormal vectors)** A set of vectors \\\\\tilde{x}\_1, \tilde{x}\_2, \ldots, \tilde{x}\_k\\\\ is **orthonormal** if the vectors are mutually orthogonal ([Definition 10](#def-orthogonal-vectors)) and each has norm \\1\\ ([Definition 11](#def-euclidean-norm)), that is, unit length:
>
> \\\tilde{x}\_i \cdot \tilde{x}\_j = \begin{cases} 1 & \text{if } i = j \\ 0 & \text{if } i \neq j \end{cases}\\

> **NOTE:**
>
> **Example 5 (Indicator vectors are orthonormal)** The indicator vectors \\\tilde{e}\_1, \tilde{e}\_2, \ldots, \tilde{e}\_p\\ ([Definition 9](#def-indicator-vector)) form an orthonormal set. By [Theorem 2](#thm-indicator-selection), \\\tilde{e}\_i \cdot \tilde{e}\_j\\ is entry \\i\\ of \\\tilde{e}\_j\\, which is \\1\\ if \\i = j\\ and \\0\\ if \\i \neq j\\. For \\p = 2\\: \\\tilde{e}\_1 \cdot \tilde{e}\_1 = 1 \cdot 1 + 0 \cdot 0 = 1\\, \\\tilde{e}\_2 \cdot \tilde{e}\_2 = 0 \cdot 0 + 1 \cdot 1 = 1\\, and \\\tilde{e}\_1 \cdot \tilde{e}\_2 = 1 \cdot 0 + 0 \cdot 1 = 0\\.

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
> ``` python
> import numpy as np
>
> a = np.array([3.0, -1.0, 2.0])
> b = np.array([0.0, 4.0, -2.0])
>
> print(a @ b, round(float(np.linalg.norm(a)), 3))
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
> Both print \\-8\\ and \\3.742\\.

> **TIP:**
>
> Hutchinson’s [Linear Function Basics](https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/#linear_function_basics) (24 min) covers dot products and the Euclidean norm, and goes on to hyperplanes and level sets ([Hutchinson, n.d.](#ref-hutchinson_wwu_ml_videos)). The login for the video site is posted [on Canvas](https://wwu.instructure.com/courses/1906010/modules#module_3922392).

## 2 Matrices

> **NOTE:**
>
> **Definition 14 (Matrix)** A **matrix** of dimensions \\m \times n\\ is a rectangular array of \\m \cdot n\\ numbers, arranged in \\m\\ rows and \\n\\ columns:
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
> **Definition 15 (Tensor)** A **tensor** of order \\k \ge 1\\ is an array of numbers with \\k\\ indices, \\ \mathcal{A} = \mathopen{}\left(a\_{i_1 i_2 \cdots i_k}\right)\mathclose{}, \quad i_1 = 1, \ldots, n_1, \\ \ldots, \\ i_k = 1, \ldots, n_k, \\ and its dimensions are \\n_1 \times n_2 \times \cdots \times n_k\\.

> **NOTE:**
>
> **Example 6 (Vectors, matrices and images as tensors)** A vector of length \\p\\ is a tensor of order \\1\\, and an \\m \times n\\ [matrix](#def-matrix) is a tensor of order \\2\\. A \\28 \times 28\\ grayscale image is a matrix: the entry \\a\_{ij}\\ is the brightness of the pixel in row \\i\\ and column \\j\\. A \\28 \times 28\\ color image stores three numbers per pixel (red, green, blue), so it is an order-3 tensor with dimensions \\28 \times 28 \times 3\\, and \\a\_{ijc}\\ is the value of color channel \\c\\ at the pixel in row \\i\\ and column \\j\\. It has \\28 \cdot 28 \cdot 3 = 2352\\ entries.

### 2.1 Matrix transpose

> **NOTE:**
>
> **Definition 16 (Matrix transpose)** The **transpose** of an \\m \times n\\ matrix \\\mathbf{A}\\ is the \\n \times m\\ matrix \\{\mathbf{A}}^{\top}\\ obtained by swapping the rows and columns of \\\mathbf{A}\\:
>
> \\({\mathbf{A}}^{\top})\_{ij} = a\_{ji}\\

### 2.2 Matrix addition

> **NOTE:**
>
> **Definition 17 (Zero matrix)** The \\m \times n\\ **zero matrix** \\\mathbf{0}\_{m \times n}\\ (or \\\mathbf{0}\\ when dimensions are clear from context) has all entries equal to zero:
>
> \\ \mathbf{0}\_{m \times n} = \begin{bmatrix} 0 & 0 & \cdots & 0 \\ 0 & 0 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & 0 \end{bmatrix} \\

> **NOTE:**
>
> **Definition 18 (Matrix addition)** Two matrices \\\mathbf{A}\\ and \\\mathbf{B}\\ of the same dimensions \\m \times n\\ can be added element-wise; their **matrix sum** is:
>
> \\(\mathbf{A} + \mathbf{B})\_{ij} = a\_{ij} + b\_{ij}\\

> **NOTE:**
>
> **Theorem 3 (Matrix addition is commutative)** For \\m \times n\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\:
>
> \\\mathbf{A} + \mathbf{B} = \mathbf{B} + \mathbf{A}\\

> **NOTE:**
>
> **Theorem 4 (Matrix addition is associative)** For \\m \times n\\ matrices \\\mathbf{A}\\, \\\mathbf{B}\\, and \\\mathbf{C}\\:
>
> \\(\mathbf{A} + \mathbf{B}) + \mathbf{C} = \mathbf{A} + (\mathbf{B} + \mathbf{C})\\

> **NOTE:**
>
> **Theorem 5 (Zero matrix is the additive identity)** For an \\m \times n\\ matrix \\\mathbf{A}\\:
>
> \\\mathbf{A} + \mathbf{0}\_{m \times n} = \mathbf{A}\\

> **NOTE:**
>
> **Theorem 6 (Additive inverse)** For any \\m \times n\\ matrix \\\mathbf{A}\\, the \\m \times n\\ matrix \\-\mathbf{A}\\ (defined by \\(-\mathbf{A})\_{ij} = -a\_{ij}\\) satisfies:
>
> \\\mathbf{A} + (-\mathbf{A}) = \mathbf{0}\_{m \times n}\\

### 2.3 Scalar multiplication

> **NOTE:**
>
> **Definition 19 (Scalar multiplication)** The **scalar multiple** of a matrix \\\mathbf{A}\\ by a scalar \\c\\ is:
>
> \\(c\mathbf{A})\_{ij} = c \cdot a\_{ij}\\

### 2.4 Matrix multiplication

> **NOTE:**
>
> **Definition 20 (Matrix multiplication)** The **product** of an \\m \times k\\ matrix \\\mathbf{A}\\ and a \\k \times n\\ matrix \\\mathbf{B}\\ is the \\m \times n\\ matrix \\\mathbf{C} = \mathbf{A}\mathbf{B}\\ with entries:
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
> **Example 7 (Dot product as matrix multiplication)** The dot product of two column vectors \\\tilde{x}\\ and \\\tilde{\beta}\\ can be written as a matrix product of the row vector \\{\tilde{x}}^{\top}\\ with the column vector \\\tilde{\beta}\\:
>
> \\ \begin{aligned} \tilde{x}\cdot \tilde{\beta} &= {\tilde{x}}^{\top}\\ \tilde{\beta} \\ &= \[x_1,\\ x_2,\\ \ldots,\\ x_p\] \begin{bmatrix} \beta\_{1} \\ \beta\_{2} \\ \vdots \\ \beta\_{p} \end{bmatrix} \\ &= x_1\beta_1 + x_2\beta_2 + \cdots + x_p \beta_p \end{aligned} \\

> **NOTE:**
>
> **Theorem 7 (Matrix multiplication is associative)** For an \\m \times k\\ matrix \\\mathbf{A}\\, a \\k \times l\\ matrix \\\mathbf{B}\\, and an \\l \times n\\ matrix \\\mathbf{C}\\:
>
> \\ \underbrace{(\mathbf{A}\mathbf{B})\mathbf{C}}\_{m \times n} = \underbrace{\mathbf{A}(\mathbf{B}\mathbf{C})}\_{m \times n} \\

> **NOTE:**
>
> *Proof*. Entry \\(i, j)\\ of each side, from [Definition 20](#def-matrix-mult):
>
> \\ \begin{aligned} \mathopen{}\left\[(\mathbf{A}\mathbf{B})\mathbf{C}\right\]\mathclose{}\_{ij} &= \sum\_{t=1}^{l} (\mathbf{A}\mathbf{B})\_{it}\\ c\_{tj} && \text{(definition of } (\mathbf{A}\mathbf{B})\mathbf{C} \text{)} \\ &= \sum\_{t=1}^{l} \mathopen{}\left(\sum\_{s=1}^{k} a\_{is}\\ b\_{st}\right)\mathclose{} c\_{tj} && \text{(definition of } \mathbf{A}\mathbf{B} \text{)} \\ &= \sum\_{s=1}^{k} a\_{is} \mathopen{}\left(\sum\_{t=1}^{l} b\_{st}\\ c\_{tj}\right)\mathclose{} && \text{(distribute and swap the finite sums)} \\ &= \sum\_{s=1}^{k} a\_{is}\\ (\mathbf{B}\mathbf{C})\_{sj} && \text{(definition of } \mathbf{B}\mathbf{C} \text{)} \\ &= \mathopen{}\left\[\mathbf{A}(\mathbf{B}\mathbf{C})\right\]\mathclose{}\_{ij} && \text{(definition of } \mathbf{A}(\mathbf{B}\mathbf{C}) \text{)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 8 (Matrix multiplication is distributive over addition)** For an \\m \times k\\ matrix \\\mathbf{A}\\ and \\k \times n\\ matrices \\\mathbf{B}\\ and \\\mathbf{C}\\:
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

### 2.5 Matrix-vector multiplication

> **NOTE:**
>
> **Definition 21 (Matrix-vector multiplication)** The **matrix-vector product** of an \\m \times p\\ matrix \\\mathbf{A}\\ and a \\p \times 1\\ column vector \\\tilde{x}\\ is the \\m \times 1\\ column vector \\\mathbf{A}\tilde{x}\\ with entries:
>
> \\(\mathbf{A}\tilde{x})\_i = \sum\_{j=1}^{p} a\_{ij}\\ x_j\\

> **NOTE:**
>
> *Remark 11* (Each entry is a dot product). Matrix-vector multiplication extends the dot product ([Definition 5](#def-dot-product)): entry \\i\\ of \\\mathbf{A}\tilde{x}\\ is the dot product of row \\i\\ of \\\mathbf{A}\\ with \\\tilde{x}\\. For example,
>
> \\ \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix} = \begin{bmatrix} 1 \cdot 1 + 2 \cdot(-1) \\ 3 \cdot 1 + 4 \cdot(-1) \end{bmatrix} = \begin{bmatrix} -1 \\ -1 \end{bmatrix}. \\

### 2.6 Linear and affine maps

> **NOTE:**
>
> **Definition 22 (Linear map)** A function \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is a **linear map** (or linear transformation) if it preserves vector addition and scalar multiplication: for all \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\ and \\c \in \mathbb{R}\\,
>
> 1.  \\f(\tilde{x}+ \tilde{y}) = f(\tilde{x}) + f(\tilde{y})\\
> 2.  \\f(c\tilde{x}) = c f(\tilde{x})\\
>
> Every such function can be represented as multiplication by an \\m \times p\\ matrix \\\mathbf{A}\\:
>
> \\f(\tilde{x}) = \mathbf{A} \tilde{x}\\
>
> A linear map always maps the zero vector to the zero vector: \\f(\tilde{0}) = \tilde{0}\\.

> **NOTE:**
>
> **Definition 23 (Affine transformation)** An **affine transformation** is a function \\f: \mathbb{R}^p \to \mathbb{R}^m\\ composed of a linear map followed by a translation:
>
> \\f(\tilde{x}) = \mathbf{A} \tilde{x}+ \tilde{b}, \qquad \mathbf{A} \in \mathbb{R}^{m \times p}, \quad \tilde{b} \in \mathbb{R}^m\\
>
> For a scalar-valued function (\\m = 1\\), this is an inner product plus an offset:
>
> \\f(\tilde{x}) = \tilde{w}^\top \tilde{x}+ b, \qquad \tilde{w} \in \mathbb{R}^p, \quad b \in \mathbb{R} \tag{4}\\
>
> When \\\tilde{b} \neq \tilde{0}\\ (or \\b \neq 0\\), an affine transformation does not send \\\tilde{0}\\ to \\\tilde{0}\\, so it is not strictly linear. In machine learning and statistics, functions of this form are commonly referred to as **linear models** or linear functions, with \\\tilde{b}\\ (or \\b\\) called the **bias** or **intercept**.

> **NOTE:**
>
> **Definition 24 (Hyperplane)** A **hyperplane** in \\\mathbb{R}^p\\ is an affine subspace of dimension \\p - 1\\. It is defined as the set of points \\\tilde{x}\in \mathbb{R}^p\\ satisfying:
>
> \\\tilde{w}^\top \tilde{x}+ b = 0\\
>
> where \\\tilde{w} \in \mathbb{R}^p \setminus \\\tilde{0}\\\\ is the normal vector orthogonal to the hyperplane and \\b \in \mathbb{R}\\ is the offset. When \\b = 0\\, the hyperplane passes through the origin and forms a \\(p-1)\\-dimensional linear subspace.
>
> Geometrically:
>
> - In \\\mathbb{R}^2\\ (\\p = 2\\), a hyperplane is a 1-dimensional line: \\w_1 x_1 + w_2 x_2 + b = 0\\.
> - In \\\mathbb{R}^3\\ (\\p = 3\\), a hyperplane is a 2-dimensional plane.
> - A hyperplane divides the space \\\mathbb{R}^p\\ into two open **half-spaces**: \\\\\tilde{x}: \tilde{w}^\top \tilde{x}+ b \> 0\\\\ and \\\\\tilde{x}: \tilde{w}^\top \tilde{x}+ b \< 0\\\\.

Show R code

``` js
viewof planeW1 = Inputs.range([-1.5, 1.5], {value: 1, step: 0.1, label: "w1"})
viewof planeW2 = Inputs.range([-1.5, 1.5], {value: 0.5, step: 0.1, label: "w2"})
viewof planeB = Inputs.range([-2, 2], {value: 0, step: 0.1, label: "b"})
viewof planeTurn = Inputs.range([0, 360], {value: 30, step: 5, label: "turn the view"})
```

Show R code

``` js
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

``` js
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

``` js
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

Figure 1: The graph of \\f(x_1, x_2) = w_1 x_1 + w_2 x_2 + b\\, in three dimensions and from above.

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
> **Exercise 6 (Which of these are linear in \\\tilde{w}\\?)** Each of the five expressions is a function of the weights \\\tilde{w} \in \mathbb{R}^p\\, with the data \\\tilde{x}\\ and \\y\\ held fixed. Say which ones have the form [Equation 4](#eq-linear-scalar) — an inner product plus an offset — and which do not.
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
> 1.  **Linear.** It is [Equation 4](#eq-linear-scalar) with \\b = 0\\.
> 2.  **Linear.** Still an inner product plus an offset; here the offset is \\b = -y\\, which is a constant because \\y\\ is held fixed.
> 3.  **Not linear.** Squaring is not an inner product plus an offset. This expression is the squared error of one observation, and its curvature in \\\tilde{w}\\ is exactly why fitting a model is an optimization problem rather than a lookup.
> 4.  **Not linear.** By [Equation 2](#eq-l2-norm) this is \\\tilde{w}^\top \tilde{w}\\, which has \\\tilde{w}\\ in both slots at once. Hold either slot fixed and it is linear in the other; as a function of the single variable \\\tilde{w}\\ it is quadratic.
> 5.  **Linear.** It is [Equation 4](#eq-linear-scalar) with coefficient vector \\\tilde{a} = (x_1, 0, \dots, 0)^\top\\ and \\b = 3\\. The data \\\tilde{x}\\ is untouched — \\\tilde{a}\\ is a new vector built from its first entry.
>
> Items 1, 2 and 5 are linear and items 3 and 4 are not, which is the split that matters: a *model* can be linear in its weights while the *quantity we minimize* is not. Squared error and the norm penalty are both curved in \\\tilde{w}\\, and that curvature is what makes fitting an optimization problem at all: there is always a downhill direction to follow. Curvature alone does not promise a *single* answer. The squared error of one observation is completely flat along a whole line of weight vectors, every one of which fits that observation exactly, and pinning down one of them is part of what the norm penalty is added for in week 3.

### 2.7 Transposes of sums and products

> **NOTE:**
>
> **Theorem 9 (Transpose of a sum)** For \\m \times n\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\:
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
> **Theorem 10 (Transpose of a product)** For an \\m \times k\\ matrix \\\mathbf{A}\\ and a \\k \times n\\ matrix \\\mathbf{B}\\:
>
> \\ \underbrace{{(\mathbf{A}\mathbf{B})}^{\top}}\_{n \times m} = \underbrace{{\mathbf{B}}^{\top}}\_{n \times k}\\\underbrace{{\mathbf{A}}^{\top}}\_{k \times m} \\

> **NOTE:**
>
> *Proof*. Entry \\(i, j)\\ of each side:
>
> \\ \begin{aligned} \mathopen{}\left\[{(\mathbf{A}\mathbf{B})}^{\top}\right\]\mathclose{}\_{ij} &= (\mathbf{A}\mathbf{B})\_{ji} && \text{(definition of the transpose)} \\ &= \sum\_{s=1}^{k} a\_{js}\\ b\_{si} && \text{(definition of matrix multiplication)} \\ &= \sum\_{s=1}^{k} ({\mathbf{B}}^{\top})\_{is}\\ ({\mathbf{A}}^{\top})\_{sj} && \text{(definition of the transpose; reorder each product)} \\ &= \mathopen{}\left\[{\mathbf{B}}^{\top}\\{\mathbf{A}}^{\top}\right\]\mathclose{}\_{ij} && \text{(definition of matrix multiplication)} \end{aligned} \\

> **NOTE:**
>
> *Remark 12* (The order of the factors reverses). Transposing a product reverses the order of the factors. Keeping the original order usually gives an undefined product or a different matrix. For example, with \\\mathbf{A} = \[1,\\ 2\]\\ (\\1 \times 2\\) and \\\mathbf{B} = \begin{bmatrix} 3 \\ 4 \end{bmatrix}\\ (\\2 \times 1\\), \\\mathbf{A}\mathbf{B} = 1 \cdot 3 + 2 \cdot 4 = 11\\, so \\{(\mathbf{A}\mathbf{B})}^{\top} = 11\\, and
>
> \\ {\mathbf{B}}^{\top}\\{\mathbf{A}}^{\top} = \[3,\\ 4\] \begin{bmatrix} 1 \\ 2 \end{bmatrix} = 11, \qquad {\mathbf{A}}^{\top}\\{\mathbf{B}}^{\top} = \begin{bmatrix} 1 \\ 2 \end{bmatrix} \[3,\\ 4\] = \begin{bmatrix} 3 & 4 \\ 6 & 8 \end{bmatrix}. \\
>
> If instead \\\mathbf{A}\\ is \\2 \times 3\\ and \\\mathbf{B}\\ is \\3 \times 1\\, then \\{\mathbf{B}}^{\top}\\{\mathbf{A}}^{\top}\\ is a \\(1 \times 3)(3 \times 2)\\ product, but \\{\mathbf{A}}^{\top}\\{\mathbf{B}}^{\top}\\ is a \\(3 \times 2)(1 \times 3)\\ product, which is undefined.

### 2.8 Rank

> **NOTE:**
>
> **Definition 25 (Linearly independent vectors)** Vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ of the same length \\p\\ are **linearly independent** if the only numbers \\c_1, \ldots, c_k\\ with
>
> \\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k = \tilde{0}\\
>
> are \\c_1 = \cdots = c_k = 0\\.

> **NOTE:**
>
> **Example 8 (Independent and dependent pairs of vectors)**  
>
> - \\\tilde{v}\_1 = (1, 0)\\ and \\\tilde{v}\_2 = (1, 1)\\ are linearly independent: \\c_1 \tilde{v}\_1 + c_2 \tilde{v}\_2 = (c_1 + c_2, c_2)\\, which is \\\tilde{0}\\ only if \\c_2 = 0\\ and then \\c_1 = 0\\.
> - \\\tilde{v}\_1 = (1, 2)\\ and \\\tilde{v}\_2 = (2, 4)\\ are not: \\2 \tilde{v}\_1 - \tilde{v}\_2 = \tilde{0}\\.

> **NOTE:**
>
> **Definition 26 (Rank)** The **rank** of a matrix \\\mathbf{A}\\, written \\\operatorname{rank}(\mathbf{A})\\, is the largest number of columns of \\\mathbf{A}\\ that are linearly independent ([Definition 25](#def-linearly-independent)).

> **NOTE:**
>
> **Example 9 (The rank of two \\3 \times 2\\ matrices)** The matrix \\\begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ has rank \\2\\: if \\c_1 (1, 1, 1) + c_2 (1, 2, 3) = \tilde{0}\\, then subtracting the first entry from the second gives \\c_2 = 0\\, and then \\c_1 = 0\\.
>
> The matrix \\\begin{bmatrix} 1 & 2 \\ 1 & 2 \\ 1 & 2 \end{bmatrix}\\ has rank \\1\\: its second column is twice its first, so the two columns are not linearly independent, but the first column on its own is.

> **NOTE:**
>
> **Definition 27 (Full column rank)** An \\n \times p\\ matrix has **full column rank** if its rank ([Definition 26](#def-rank)) is \\p\\, so that all of its columns are linearly independent.

> **NOTE:**
>
> *Remark 13* (Full column rank needs at least as many rows as columns). In [Example 9](#exm-rank), the first matrix has full column rank: its rank is \\2\\, and it has \\2\\ columns. The second does not, because its rank is \\1\\.
>
> An \\n \times p\\ matrix can have full column rank only when \\p \le n\\, because more than \\n\\ vectors of length \\n\\ are never linearly independent. For example, the \\2 \times 3\\ matrix \\\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}\\ has \\3\\ columns of length \\2\\, and \\1 \cdot(1, 0) + 1 \cdot(0, 1) - 1 \cdot(1, 1) = \tilde{0}\\, with coefficients that are not all zero. So its \\3\\ columns are not linearly independent, and its rank is less than \\3\\.

### 2.9 Subspaces

This section is adapted from Zhou ([2024](#ref-zhou2024vecsp)), used under the MIT License.

> **NOTE:**
>
> Copyright (c) 2024 ucla-biostat-216
>
> Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
>
> The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

> **NOTE:**
>
> **Definition 28 (Subspace)** A set \\\mathcal{S}\\ of vectors in \\\mathbb{R}^p\\ is a **subspace** of \\\mathbb{R}^p\\ if it is not empty and it is closed under vector addition and scalar multiplication:
>
> 1.  if \\\tilde{u} \in \mathcal{S}\\ and \\\tilde{v} \in \mathcal{S}\\, then \\\tilde{u} + \tilde{v} \in \mathcal{S}\\;
> 2.  if \\\tilde{u} \in \mathcal{S}\\ and \\c \in \mathbb{R}\\, then \\c \tilde{u} \in \mathcal{S}\\.
>
> A subspace is also called a **linear subspace**, a **vector space**, or a **linear space**.

> **NOTE:**
>
> **Example 10 (A line through the origin is a subspace)** Let \\\mathcal{S} = \mathopen{}\left\\c\\(1, 2) : c \in \mathbb{R}\right\\\mathclose{}\\, the line in \\\mathbb{R}^2\\ through \\(0, 0)\\ and \\(1, 2)\\.
>
> - **Addition:** \\a\\(1, 2) + b\\(1, 2) = (a + b)\\(1, 2)\\, which is in \\\mathcal{S}\\.
> - **Scalar multiplication:** \\c\\\mathopen{}\left(a\\(1, 2)\right)\mathclose{} = (ca)\\(1, 2)\\, which is in \\\mathcal{S}\\.
>
> So \\\mathcal{S}\\ is a subspace of \\\mathbb{R}^2\\. Two other subspaces of \\\mathbb{R}^p\\ are the set \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ that holds only the zero vector, and \\\mathbb{R}^p\\ itself.

> **NOTE:**
>
> **Example 11 (A line that misses the origin is not a subspace)** Let \\\mathcal{T} = \mathopen{}\left\\(x, 1) : x \in \mathbb{R}\right\\\mathclose{}\\, the horizontal line in \\\mathbb{R}^2\\ at height \\1\\. The vectors \\(0, 1)\\ and \\(2, 1)\\ are in \\\mathcal{T}\\, but their sum \\(2, 2)\\ is not, because its second entry is \\2\\, not \\1\\. So \\\mathcal{T}\\ is not closed under addition, and it is not a subspace.

> **NOTE:**
>
> **Theorem 11 (Every subspace contains the zero vector)** If \\\mathcal{S}\\ is a subspace of \\\mathbb{R}^p\\ ([Definition 28](#def-subspace)), then \\\tilde{0}\in \mathcal{S}\\.

> **NOTE:**
>
> *Proof*. A subspace is not empty, so it contains some vector \\\tilde{u}\\. Closure under scalar multiplication with \\c = 0\\ puts \\0 \cdot\tilde{u}\\ in \\\mathcal{S}\\, and \\0 \cdot\tilde{u} = \tilde{0}\\.

> **NOTE:**
>
> **Example 12 (Using the zero vector to rule out a subspace)** The plane \\\mathopen{}\left\\(x, y, z) : x + y + z = 1\right\\\mathclose{}\\ in \\\mathbb{R}^3\\ does not contain \\\tilde{0}= (0, 0, 0)\\, because \\0 + 0 + 0 = 0 \neq 1\\. So, by [Theorem 11](#thm-subspace-zero), it is not a subspace. The line \\\mathcal{T}\\ in [Example 11](#exm-not-subspace) fails the same test: \\(0, 0)\\ is not in \\\mathcal{T}\\, because its second entry is not \\1\\.
>
> Containing \\\tilde{0}\\ is necessary but not sufficient. The union of the two coordinate axes in \\\mathbb{R}^2\\, \\\mathopen{}\left\\(x, 0) : x \in \mathbb{R}\right\\\mathclose{} \cup \mathopen{}\left\\(0, y) : y \in \mathbb{R}\right\\\mathclose{}\\, contains \\\tilde{0}\\, but \\(1, 0) + (0, 1) = (1, 1)\\ lies on neither axis, so the union is not closed under addition and is not a subspace.

> **NOTE:**
>
> **Definition 29 (Span)** The **span** of vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k \in \mathbb{R}^p\\ is the set of all their linear combinations:
>
> \\ \operatorname{span}\mathopen{}\left\\\tilde{v}\_1, \ldots, \tilde{v}\_k\right\\\mathclose{} \stackrel{\text{def}}{=} \mathopen{}\left\\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k : c_1, \ldots, c_k \in \mathbb{R}\right\\\mathclose{}. \\
>
> The vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ **span** a set \\\mathcal{S}\\ if their span equals \\\mathcal{S}\\.

> **NOTE:**
>
> **Example 13 (Two spans in \\\mathbb{R}^3\\)**  
>
> - \\\operatorname{span}\mathopen{}\left\\(1, 0, 0), (0, 1, 0)\right\\\mathclose{}\\ is the set of vectors \\(c_1, c_2, 0)\\, the plane \\z = 0\\ in \\\mathbb{R}^3\\.
> - \\\operatorname{span}\mathopen{}\left\\(1, 2, 3), (2, 4, 6)\right\\\mathclose{}\\ is only the line \\\mathopen{}\left\\c\\(1, 2, 3) : c \in \mathbb{R}\right\\\mathclose{}\\, because \\(2, 4, 6) = 2\\(1, 2, 3)\\, so \\c_1 (1, 2, 3) + c_2 (2, 4, 6) = (c_1 + 2 c_2)\\(1, 2, 3)\\. Adding a vector to a list does not always enlarge its span.

> **NOTE:**
>
> **Theorem 12 (A span is a subspace)** For any vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k \in \mathbb{R}^p\\, \\\operatorname{span}\mathopen{}\left\\\tilde{v}\_1, \ldots, \tilde{v}\_k\right\\\mathclose{}\\ ([Definition 29](#def-span)) is a subspace of \\\mathbb{R}^p\\ ([Definition 28](#def-subspace)).

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
> **Example 14 (The line in [Example 10](#exm-subspace) is a span)** The line \\\mathcal{S} = \mathopen{}\left\\c\\(1, 2) : c \in \mathbb{R}\right\\\mathclose{}\\ in [Example 10](#exm-subspace) is \\\operatorname{span}\mathopen{}\left\\(1, 2)\right\\\mathclose{}\\, so [Theorem 12](#thm-span-subspace) gives a second proof that it is a subspace. Likewise, the plane \\z = 0\\ in [Example 13](#exm-span) is a subspace of \\\mathbb{R}^3\\, because it is \\\operatorname{span}\mathopen{}\left\\(1, 0, 0), (0, 1, 0)\right\\\mathclose{}\\.

> **NOTE:**
>
> **Theorem 13 (A matrix-vector product combines the columns)** If \\\mathbf{A}\\ is an \\m \times n\\ matrix with columns \\\tilde{a}\_1, \ldots, \tilde{a}\_n\\ and \\\tilde{x} \in \mathbb{R}^n\\, then
>
> \\ \mathbf{A} \tilde{x} = x_1 \tilde{a}\_1 + \cdots + x_n \tilde{a}\_n. \\

> **NOTE:**
>
> *Proof*. Compare entry \\i\\ of the two sides, for each \\i = 1, \ldots, m\\. Entry \\i\\ of \\\tilde{a}\_j\\ is \\a\_{ij}\\, so
>
> \\ \begin{aligned} (\mathbf{A} \tilde{x})\_i &= a\_{i1} x_1 + \cdots + a\_{in} x_n && \text{(@def-matvec-mult)} \\ &= x_1 a\_{i1} + \cdots + x_n a\_{in} && \text{(multiplication of numbers is commutative)} \\ &= (x_1 \tilde{a}\_1 + \cdots + x_n \tilde{a}\_n)\_i && \text{(entry } i \text{ of each } x_j \tilde{a}\_j \text{ is } x_j a\_{ij} \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 15 (A product as a combination of columns)** \\ \begin{aligned} \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix} &= 1 \cdot\begin{bmatrix} 1 \\ 3 \end{bmatrix} + (-1) \cdot\begin{bmatrix} 2 \\ 4 \end{bmatrix} && \text{(@thm-matvec-columns)} \\ &= \begin{bmatrix} -1 \\ -1 \end{bmatrix}, && \text{(arithmetic)} \end{aligned} \\
>
> the same answer as computing each entry as a row-times-vector dot product ([Remark 11](#rem-matvec-row-dot-products)).

> **NOTE:**
>
> **Theorem 14 (More than \\p\\ vectors in \\\mathbb{R}^p\\ are linearly dependent)** If \\k \> p\\, then any \\k\\ vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k \in \mathbb{R}^p\\ are not linearly independent ([Definition 25](#def-linearly-independent)): some numbers \\c_1, \ldots, c_k\\, not all zero, satisfy \\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k = \tilde{0}\_p\\.

> **NOTE:**
>
> *Proof*. Induction on \\p\\.
>
> **Base case, \\p = 1\\.** Each \\\tilde{v}\_i\\ is a single number \\v_i\\, and \\k \ge 2\\. If \\v_1 = 0\\, take \\c_1 = 1\\ and every other \\c_i = 0\\. Otherwise take \\c_1 = v_2\\, \\c_2 = -v_1\\ and every other \\c_i = 0\\; then \\c_2 \neq 0\\, and \\v_2 v_1 - v_1 v_2 = 0\\.
>
> **Inductive step.** Let \\p \ge 2\\, assume the theorem holds for vectors in \\\mathbb{R}^{p-1}\\, and take \\k \> p\\ vectors in \\\mathbb{R}^p\\. Write \\v\_{i,p}\\ for the last entry of \\\tilde{v}\_i\\.
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
> **Example 16 (Three vectors in \\\mathbb{R}^2\\)** [Theorem 14](#thm-many-vectors-dependent) says the three vectors \\(1, 0)\\, \\(0, 1)\\ and \\(1, 1)\\ in \\\mathbb{R}^2\\ are linearly dependent, and indeed \\1 \cdot(1, 0) + 1 \cdot(0, 1) - 1 \cdot(1, 1) = (0, 0)\\. The theorem says nothing about \\k \le p\\ vectors: \\(1, 0)\\ and \\(0, 1)\\ are linearly independent, while \\(1, 2)\\ and \\(2, 4)\\ are not ([Example 8](#exm-linearly-independent)).

> **NOTE:**
>
> **Definition 30 (Basis)** A **basis** of a subspace \\\mathcal{S}\\ ([Definition 28](#def-subspace)) is a list of vectors that are linearly independent ([Definition 25](#def-linearly-independent)) and span \\\mathcal{S}\\ ([Definition 29](#def-span)).

> **NOTE:**
>
> **Example 17 (Two bases of \\\mathbb{R}^2\\)**  
>
> - \\(1, 0)\\ and \\(0, 1)\\ form a basis of \\\mathbb{R}^2\\: they are linearly independent, and any \\(x, y) \in \mathbb{R}^2\\ equals \\x\\(1, 0) + y\\(0, 1)\\.
> - \\(1, 0)\\ and \\(1, 1)\\ also form a basis of \\\mathbb{R}^2\\: [Example 8](#exm-linearly-independent) shows they are linearly independent, and any \\(x, y)\\ equals \\(x - y)\\(1, 0) + y\\(1, 1)\\, because \\(x - y) + y = x\\ in the first entry and \\0 + y = y\\ in the second.

> **NOTE:**
>
> **Example 18 (Lists that are not bases of \\\mathbb{R}^2\\)**  
>
> - \\(1, 0)\\ and \\(2, 0)\\ are not a basis of \\\mathbb{R}^2\\. They are not linearly independent, since \\2\\(1, 0) - (2, 0) = \tilde{0}\\, and they do not span \\\mathbb{R}^2\\: every combination \\c_1 (1, 0) + c_2 (2, 0)\\ has second entry \\0\\, so \\(0, 1)\\ is not in their span.
> - \\(1, 0)\\, \\(0, 1)\\ and \\(1, 1)\\ span \\\mathbb{R}^2\\, but they are not a basis: \\(1, 0) + (0, 1) - (1, 1) = \tilde{0}\\, so they are not linearly independent.

> **NOTE:**
>
> **Theorem 15 (Coordinates in a basis are unique)** If \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ is a basis of a subspace \\\mathcal{S}\\ ([Definition 30](#def-basis)), then every \\\tilde{x} \in \mathcal{S}\\ is a linear combination \\\tilde{x} = c_1 \tilde{a}\_1 + \cdots + c_k \tilde{a}\_k\\ for exactly one list of numbers \\c_1, \ldots, c_k\\.

> **NOTE:**
>
> *Proof*. At least one such list exists, because the basis spans \\\mathcal{S}\\ ([Definition 29](#def-span)).
>
> Suppose two lists both work:
>
> \\ c_1 \tilde{a}\_1 + \cdots + c_k \tilde{a}\_k = \tilde{x} = d_1 \tilde{a}\_1 + \cdots + d_k \tilde{a}\_k. \\
>
> Subtracting the right side from the left side gives
>
> \\ \begin{aligned} \tilde{0} &= (c_1 \tilde{a}\_1 + \cdots + c_k \tilde{a}\_k) - (d_1 \tilde{a}\_1 + \cdots + d_k \tilde{a}\_k) && \text{(both combinations equal } \tilde{x} \text{)} \\ &= (c_1 - d_1)\\\tilde{a}\_1 + \cdots + (c_k - d_k)\\\tilde{a}\_k && \text{(regroup, and distribute each } \tilde{a}\_i \text{)} \end{aligned} \\
>
> Because \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ are linearly independent ([Definition 25](#def-linearly-independent)), every coefficient \\c_i - d_i\\ is \\0\\, so \\c_i = d_i\\ for each \\i\\.

> **NOTE:**
>
> **Example 19 (Coordinates of \\(3, 5)\\ in two bases)** In the basis \\(1, 0), (0, 1)\\ of [Example 17](#exm-basis), \\(3, 5) = 3\\(1, 0) + 5\\(0, 1)\\, and no other coefficients work. In the basis \\(1, 0), (1, 1)\\, the formula in [Example 17](#exm-basis) gives \\(3, 5) = (3 - 5)\\(1, 0) + 5\\(1, 1) = -2\\(1, 0) + 5\\(1, 1)\\. The same vector has different coordinates in different bases, but within one basis its coordinates are unique.
>
> The list \\(1, 0), (0, 1), (1, 1)\\ in [Example 18](#exm-not-basis) spans \\\mathbb{R}^2\\ but is not linearly independent, and its coordinates are not unique: \\(3, 5) = 3\\(1, 0) + 5\\(0, 1) + 0\\(1, 1) = 0\\(1, 0) + 2\\(0, 1) + 3\\(1, 1)\\.

> **NOTE:**
>
> **Theorem 16 (All bases of a subspace have the same number of vectors)** If \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ and \\\tilde{b}\_1, \ldots, \tilde{b}\_l\\ are both bases of a subspace \\\mathcal{S}\\ of \\\mathbb{R}^p\\ ([Definition 30](#def-basis)), then \\k = l\\.

> **NOTE:**
>
> *Proof*. Let \\\mathbf{A}\\ be the \\p \times k\\ matrix with columns \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\, and \\\mathbf{B}\\ the \\p \times l\\ matrix with columns \\\tilde{b}\_1, \ldots, \tilde{b}\_l\\.
>
> **Write \\\mathbf{A}\\ in terms of \\\mathbf{B}\\.** Each \\\tilde{a}\_j\\ is in \\\mathcal{S}\\, and the \\\tilde{b}\\’s span \\\mathcal{S}\\ ([Definition 29](#def-span)), so \\\tilde{a}\_j = \mathbf{B} \tilde{c}\_j\\ for some \\\tilde{c}\_j \in \mathbb{R}^l\\ ([Definition 21](#def-matvec-mult)). Let \\\mathbf{C}\\ be the \\l \times k\\ matrix with columns \\\tilde{c}\_1, \ldots, \tilde{c}\_k\\. Then \\\underbrace{\mathbf{A}}\_{p \times k} = \underbrace{\mathbf{B}}\_{p \times l}\\\underbrace{\mathbf{C}}\_{l \times k}\\, because column \\j\\ of \\\mathbf{B} \mathbf{C}\\ is \\\mathbf{B} \tilde{c}\_j\\.
>
> **The columns of \\\mathbf{C}\\ are linearly independent.** Suppose \\\mathbf{C} \tilde{x} = \tilde{0}\\ for some \\\tilde{x} \in \mathbb{R}^k\\. Then
>
> \\ \begin{aligned} \mathbf{A} \tilde{x} &= (\mathbf{B} \mathbf{C})\\\tilde{x} && \text{(substitute } \mathbf{A} = \mathbf{B} \mathbf{C} \text{)} \\ &= \mathbf{B}\\(\mathbf{C} \tilde{x}) && \text{(@thm-matmul-assoc)} \\ &= \mathbf{B}\\\tilde{0} && \text{(substitute } \mathbf{C} \tilde{x} = \tilde{0}\text{)} \\ &= \tilde{0} && \text{(a matrix times the zero vector is } \tilde{0}\text{)} \end{aligned} \\
>
> \\\mathbf{A} \tilde{x}\\ is the combination \\x_1 \tilde{a}\_1 + \cdots + x_k \tilde{a}\_k\\ ([Theorem 13](#thm-matvec-columns)), and the \\\tilde{a}\\’s are linearly independent ([Definition 25](#def-linearly-independent)), so \\\tilde{x} = \tilde{0}\\. So the only combination of the columns of \\\mathbf{C}\\ that equals \\\tilde{0}\\ has all coefficients \\0\\.
>
> **Count.** \\\mathbf{C}\\ has \\k\\ linearly independent columns of length \\l\\. More than \\l\\ vectors in \\\mathbb{R}^l\\ are never linearly independent ([Theorem 14](#thm-many-vectors-dependent)), so \\k \le l\\. Exchanging the roles of the two bases gives \\l \le k\\, so \\k = l\\.

> **NOTE:**
>
> **Example 20 (Both bases of \\\mathbb{R}^2\\ in [Example 17](#exm-basis) have two vectors)** The bases \\(1, 0), (0, 1)\\ and \\(1, 0), (1, 1)\\ of \\\mathbb{R}^2\\ in [Example 17](#exm-basis) both have \\2\\ vectors, as [Theorem 16](#thm-basis-size) requires. So no list of \\3\\ vectors is a basis of \\\mathbb{R}^2\\, which agrees with [Example 18](#exm-not-basis): the list \\(1, 0), (0, 1), (1, 1)\\ spans \\\mathbb{R}^2\\ but is not linearly independent.

> **NOTE:**
>
> **Definition 31 (Dimension)** The **dimension** of a subspace \\\mathcal{S}\\, written \\\dim(\mathcal{S})\\, is the number of vectors in any basis of \\\mathcal{S}\\ ([Definition 30](#def-basis)). [Theorem 16](#thm-basis-size) makes this number well defined. By convention, the empty list is the basis of \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, so \\\dim(\mathopen{}\left\\\tilde{0}\right\\\mathclose{}) = 0\\.

> **NOTE:**
>
> **Example 21 (The dimensions of some subspaces)**  
>
> - \\\dim(\mathopen{}\left\\\tilde{0}\right\\\mathclose{}) = 0\\, by the convention in [Definition 31](#def-dimension).
> - \\\dim(\mathbb{R}^2) = 2\\, by [Example 17](#exm-basis).
> - The line in [Example 10](#exm-subspace) has dimension \\1\\: the single vector \\(1, 2)\\ is linearly independent and spans the line.
> - The plane \\z = 0\\ in [Example 13](#exm-span) has dimension \\2\\, with basis \\(1, 0, 0), (0, 1, 0)\\.

### 2.10 Column space and null space

> **NOTE:**
>
> **Definition 32 (Column space)** The **column space** of an \\m \times n\\ matrix \\\mathbf{A}\\ is
>
> \\ \mathcal{C}(\mathbf{A}) \stackrel{\text{def}}{=} \mathopen{}\left\\\mathbf{A} \tilde{x} : \tilde{x} \in \mathbb{R}^n\right\\\mathclose{}, \\
>
> the set of all vectors \\\mathbf{A} \tilde{x}\\ in \\\mathbb{R}^m\\. It is also called the **range** or **image** of \\\mathbf{A}\\. The **row space** of \\\mathbf{A}\\ is \\\mathcal{C}({\mathbf{A}}^{\top})\\, a set of vectors in \\\mathbb{R}^n\\.

> **NOTE:**
>
> **Example 22 (The column space of a rank-one matrix)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix}. \\
>
> For any \\\tilde{x} \in \mathbb{R}^3\\, \\\mathbf{A} \tilde{x} = (x_1 - 2x_2 - 2x_3,\\ 3\\(x_1 - 2x_2 - 2x_3)) = (x_1 - 2x_2 - 2x_3)\\(1, 3)\\ ([Definition 21](#def-matvec-mult)). The number \\x_1 - 2x_2 - 2x_3\\ can be any real number (take \\x_2 = x_3 = 0\\), so \\\mathcal{C}(\mathbf{A}) = \mathopen{}\left\\c\\(1, 3) : c \in \mathbb{R}\right\\\mathclose{}\\, a line in \\\mathbb{R}^2\\. The vector \\(1, 0)\\ is not in \\\mathcal{C}(\mathbf{A})\\: \\c\\(1, 3)\\ has second entry \\3c\\, which is \\0\\ only if \\c = 0\\, and then the first entry is \\0\\, not \\1\\.

> **NOTE:**
>
> **Theorem 17 (The column space is the span of the columns)** If \\\mathbf{A}\\ is an \\m \times n\\ matrix with columns \\\tilde{a}\_1, \ldots, \tilde{a}\_n\\, then
>
> \\ \mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_n\right\\\mathclose{}, \\
>
> so \\\mathcal{C}(\mathbf{A})\\ is a subspace of \\\mathbb{R}^m\\, and the row space \\\mathcal{C}({\mathbf{A}}^{\top})\\ is a subspace of \\\mathbb{R}^n\\.

> **NOTE:**
>
> *Proof*. By [Theorem 13](#thm-matvec-columns), \\\mathbf{A} \tilde{x} = x_1 \tilde{a}\_1 + \cdots + x_n \tilde{a}\_n\\, and as \\\tilde{x}\\ ranges over \\\mathbb{R}^n\\, the coefficients \\x_1, \ldots, x_n\\ range over all lists of \\n\\ numbers. So the set of all \\\mathbf{A} \tilde{x}\\ ([Definition 32](#def-column-space)) is the set of all linear combinations of the columns, which is their span ([Definition 29](#def-span)). A span is a subspace ([Theorem 12](#thm-span-subspace)). Applying the same argument to \\{\mathbf{A}}^{\top}\\, whose columns are the rows of \\\mathbf{A}\\, shows the row space is a subspace of \\\mathbb{R}^n\\.

> **NOTE:**
>
> **Example 23 (Reading off the column space and row space from the columns and rows)** For \\\mathbf{A}\\ in [Example 22](#exm-column-space), the columns are \\(1, 3)\\, \\(-2, -6) = -2\\(1, 3)\\ and \\(-2, -6) = -2\\(1, 3)\\, so by [Theorem 17](#thm-column-space-span) \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\, the same line found in [Example 22](#exm-column-space). The rows are \\(1, -2, -2)\\ and \\(3, -6, -6) = 3\\(1, -2, -2)\\, so the row space is \\\operatorname{span}\mathopen{}\left\\(1, -2, -2)\right\\\mathclose{}\\, a line in \\\mathbb{R}^3\\.

> **NOTE:**
>
> **Definition 33 (Null space)** The **null space** of an \\m \times n\\ matrix \\\mathbf{A}\\ is
>
> \\ \mathcal{N}(\mathbf{A}) \stackrel{\text{def}}{=} \mathopen{}\left\\\tilde{x} \in \mathbb{R}^n : \mathbf{A} \tilde{x} = \tilde{0}\_m\right\\\mathclose{}, \\
>
> the set of solutions of \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\. It is also called the **kernel** of \\\mathbf{A}\\. The **left null space** of \\\mathbf{A}\\ is \\\mathcal{N}({\mathbf{A}}^{\top})\\, a set of vectors in \\\mathbb{R}^m\\.

> **NOTE:**
>
> **Example 24 (The null space and left null space of a rank-one matrix)** For \\\mathbf{A}\\ in [Example 22](#exm-column-space), \\\mathbf{A} \tilde{x} = (x_1 - 2x_2 - 2x_3,\\ 3\\(x_1 - 2x_2 - 2x_3))\\, so \\\mathbf{A} \tilde{x} = \tilde{0}\_2\\ exactly when \\x_1 = 2x_2 + 2x_3\\. Writing \\\tilde{x} = (2x_2 + 2x_3, x_2, x_3) = x_2\\(2, 1, 0) + x_3\\(2, 0, 1)\\ shows \\\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\, a plane in \\\mathbb{R}^3\\.
>
> For the left null space, \\{\mathbf{A}}^{\top} \tilde{y} = (y_1 + 3y_2,\\ -2\\(y_1 + 3y_2),\\ -2\\(y_1 + 3y_2))\\, which is \\\tilde{0}\_3\\ exactly when \\y_1 = -3y_2\\, so \\\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(-3, 1)\right\\\mathclose{}\\, a line in \\\mathbb{R}^2\\.

> **NOTE:**
>
> **Theorem 18 (A null space is a subspace)** For any \\m \times n\\ matrix \\\mathbf{A}\\, \\\mathcal{N}(\mathbf{A})\\ ([Definition 33](#def-null-space)) is a subspace of \\\mathbb{R}^n\\ ([Definition 28](#def-subspace)).

> **NOTE:**
>
> *Proof*. \\\mathbf{A} \tilde{0}\_n = \tilde{0}\_m\\, so \\\tilde{0}\_n \in \mathcal{N}(\mathbf{A})\\, and the null space is not empty. If \\\tilde{u}, \tilde{w} \in \mathcal{N}(\mathbf{A})\\ and \\c \in \mathbb{R}\\, then
>
> \\ \begin{aligned} \mathbf{A}\\(\tilde{u} + \tilde{w}) &= \mathbf{A} \tilde{u} + \mathbf{A} \tilde{w} && \text{(@thm-matmul-distrib)} \\ &= \tilde{0}\_m + \tilde{0}\_m && \text{(} \tilde{u} \text{ and } \tilde{w} \text{ are in the null space)} \\ &= \tilde{0}\_m && \text{(adding } \tilde{0}\_m \text{ changes nothing)} \end{aligned} \\
>
> and, for each entry \\i = 1, \ldots, m\\,
>
> \\ \begin{aligned} \mathopen{}\left(\mathbf{A}\\(c \tilde{u})\right)\mathclose{}\_i &= a\_{i1} (c u_1) + \cdots + a\_{in} (c u_n) && \text{(@def-matvec-mult)} \\ &= c\\(a\_{i1} u_1 + \cdots + a\_{in} u_n) && \text{(factor } c \text{ out of each term)} \\ &= c\\(\mathbf{A} \tilde{u})\_i && \text{(@def-matvec-mult)} \\ &= c \cdot 0 && \text{(} \tilde{u} \text{ is in the null space)} \\ &= 0, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\mathbf{A}\\(c \tilde{u}) = \tilde{0}\_m\\. Therefore \\\tilde{u} + \tilde{w}\\ and \\c \tilde{u}\\ are in \\\mathcal{N}(\mathbf{A})\\.

> **NOTE:**
>
> **Example 25 (The solutions of \\\mathbf{A} \tilde{x} = \tilde{b}\\ with \\\tilde{b} \neq \tilde{0}\\ are not a subspace)** In [Example 24](#exm-null-space), \\(2, 1, 0)\\ and \\(2, 0, 1)\\ are in \\\mathcal{N}(\mathbf{A})\\, and so is their sum \\(4, 1, 1)\\, since \\4 - 2 \cdot 1 - 2 \cdot 1 = 0\\. By contrast, the solutions of \\\mathbf{A} \tilde{x} = (1, 3)\\ for the same \\\mathbf{A}\\ are the vectors with \\x_1 - 2x_2 - 2x_3 = 1\\. That set does not contain \\\tilde{0}\_3\\, so by [Theorem 11](#thm-subspace-zero) it is not a subspace.

> **NOTE:**
>
> **Theorem 19 (The row space and null space share only the zero vector)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \mathcal{C}({\mathbf{A}}^{\top}) \cap \mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}. \\

> **NOTE:**
>
> *Proof*. Both sets are subspaces, by [Theorem 17](#thm-column-space-span) and [Theorem 18](#thm-null-space-subspace), so both contain \\\tilde{0}\_n\\ ([Theorem 11](#thm-subspace-zero)).
>
> Now take any \\\tilde{x}\\ in both sets. Being in the row space means \\\tilde{x} = {\mathbf{A}}^{\top} \tilde{u}\\ for some \\\tilde{u} \in \mathbb{R}^m\\ ([Definition 32](#def-column-space)), and being in the null space means \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\ ([Definition 33](#def-null-space)). Then
>
> \\ \begin{aligned} {\tilde{x}}^{\top} \tilde{x} &= {({\mathbf{A}}^{\top} \tilde{u})}^{\top}\\\tilde{x} && \text{(substitute } \tilde{x} = {\mathbf{A}}^{\top} \tilde{u} \text{ in the first factor)} \\ &= \mathopen{}\left({\tilde{u}}^{\top}\\{({\mathbf{A}}^{\top})}^{\top}\right)\mathclose{}\\\tilde{x} && \text{(@thm-transpose-product)} \\ &= \mathopen{}\left({\tilde{u}}^{\top} \mathbf{A}\right)\mathclose{}\\\tilde{x} && \text{(transposing twice returns the original matrix)} \\ &= {\tilde{u}}^{\top}\\(\mathbf{A} \tilde{x}) && \text{(@thm-matmul-assoc)} \\ &= {\tilde{u}}^{\top}\\\tilde{0}\_m && \text{(substitute } \mathbf{A} \tilde{x} = \tilde{0}\_m \text{)} \\ &= 0. && \text{(every term of the inner product is } 0 \text{)} \end{aligned} \\
>
> But \\{\tilde{x}}^{\top} \tilde{x} = x_1^2 + \cdots + x_n^2\\, which is \\0\\ only when every \\x_i = 0\\. So \\\tilde{x} = \tilde{0}\_n\\.

> **NOTE:**
>
> **Example 26 (The row space and null space in [Example 24](#exm-null-space))** For \\\mathbf{A}\\ in [Example 22](#exm-column-space), the row space is \\\operatorname{span}\mathopen{}\left\\(1, -2, -2)\right\\\mathclose{}\\ and the null space is \\\operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\ ([Example 24](#exm-null-space)). A vector \\c\\(1, -2, -2)\\ of the row space is in the null space only if
>
> \\ \begin{aligned} \mathbf{A}\\\mathopen{}\left(c\\(1, -2, -2)\right)\mathclose{} &= c\\\mathopen{}\left(1 - 2 \cdot(-2) - 2 \cdot(-2),\\ 3\\(1 - 2 \cdot(-2) - 2 \cdot(-2))\right)\mathclose{} && \text{(@exm-null-space's formula for } \mathbf{A} \tilde{x} \text{)} \\ &= c\\(9, 27) && \text{(arithmetic)} \end{aligned} \\
>
> is \\\tilde{0}\_2\\, that is, only if \\c = 0\\. So the two subspaces share only \\\tilde{0}\_3\\.

> **NOTE:**
>
> **Theorem 20 (\\{\mathbf{A}}^{\top} \mathbf{A}\\ has the same null space as \\\mathbf{A}\\)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \mathcal{N}({\mathbf{A}}^{\top} \mathbf{A}) = \mathcal{N}(\mathbf{A}). \\

> **NOTE:**
>
> *Proof*. **\\\mathcal{N}(\mathbf{A}) \subseteq \mathcal{N}({\mathbf{A}}^{\top} \mathbf{A})\\.** If \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\, then \\{\mathbf{A}}^{\top} \mathbf{A} \tilde{x} = {\mathbf{A}}^{\top}\\\tilde{0}\_m = \tilde{0}\_n\\.
>
> **\\\mathcal{N}({\mathbf{A}}^{\top} \mathbf{A}) \subseteq \mathcal{N}(\mathbf{A})\\.** If \\{\mathbf{A}}^{\top} \mathbf{A} \tilde{x} = \tilde{0}\_n\\, then
>
> \\ \begin{aligned} 0 &= {\tilde{x}}^{\top}\\\tilde{0}\_n && \text{(every term of the inner product is } 0 \text{)} \\ &= {\tilde{x}}^{\top}\\\mathopen{}\left({\mathbf{A}}^{\top} \mathbf{A} \tilde{x}\right)\mathclose{} && \text{(substitute } \tilde{0}\_n = {\mathbf{A}}^{\top} \mathbf{A} \tilde{x} \text{)} \\ &= \mathopen{}\left({\tilde{x}}^{\top} {\mathbf{A}}^{\top}\right)\mathclose{}\\(\mathbf{A} \tilde{x}) && \text{(@thm-matmul-assoc)} \\ &= {(\mathbf{A} \tilde{x})}^{\top}\\(\mathbf{A} \tilde{x}) && \text{(@thm-transpose-product)} \\ &= (\mathbf{A} \tilde{x}) \cdot (\mathbf{A} \tilde{x}) && \text{(@exm-dot-product-matmul)} \\ &= \mathopen{}\left\lVert\mathbf{A} \tilde{x}\right\rVert\mathclose{}^2. && \text{(square both sides of @eq-l2-norm)} \end{aligned} \\
>
> A vector whose Euclidean norm is \\0\\ has every entry \\0\\, so \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\.

> **NOTE:**
>
> **Example 27 (The null space of a Gram matrix)** For \\\mathbf{A}\\ in [Example 22](#exm-column-space),
>
> \\ {\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 1 & 3 \\ -2 & -6 \\ -2 & -6 \end{bmatrix} \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix} = \begin{bmatrix} 10 & -20 & -20 \\ -20 & 40 & 40 \\ -20 & 40 & 40 \end{bmatrix}. \\
>
> Every row is a multiple of \\(1, -2, -2)\\, so \\{\mathbf{A}}^{\top} \mathbf{A} \tilde{x} = \tilde{0}\_3\\ exactly when \\x_1 - 2x_2 - 2x_3 = 0\\, the same condition as for \\\mathcal{N}(\mathbf{A})\\ in [Example 24](#exm-null-space).

### 2.11 Outer product

> **NOTE:**
>
> **Definition 34 (Outer product)** The **outer product** of a vector \\\tilde{u}\\ of length \\m\\ and a vector \\\tilde{v}\\ of length \\n\\ is the \\m \times n\\ matrix product ([Definition 20](#def-matrix-mult)) \\\tilde{u}\\{\tilde{v}}^{\top}\\ of the column vector \\\tilde{u}\\ with the row vector \\{\tilde{v}}^{\top}\\. Its entries are
>
> \\ \mathopen{}\left(\underbrace{\tilde{u}}\_{m \times 1}\\\underbrace{{\tilde{v}}^{\top}}\_{1 \times n}\right)\mathclose{}\_{ij} = u_i v_j \qquad \text{(definition of matrix multiplication; the sum has one term)} \\

> **NOTE:**
>
> **Example 28 (An outer product)** For \\\tilde{u} = (1, 2, 3)\\ and \\\tilde{v} = (4, 5)\\:
>
> \\ \begin{aligned} \tilde{u}\\{\tilde{v}}^{\top} &= \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix} \begin{bmatrix} 4 & 5 \end{bmatrix} && \text{(definition of the outer product)} \\ &= \begin{bmatrix} 1 \cdot 4 & 1 \cdot 5 \\ 2 \cdot 4 & 2 \cdot 5 \\ 3 \cdot 4 & 3 \cdot 5 \end{bmatrix} && \text{(entry } (i, j) \text{ is } u_i v_j \text{)} \\ &= \begin{bmatrix} 4 & 5 \\ 8 & 10 \\ 12 & 15 \end{bmatrix} && \text{(multiply)} \end{aligned} \\

> **NOTE:**
>
> *Remark 14* (Outer product and dot product). The dot product \\{\tilde{u}}^{\top}\tilde{v}\\ ([Example 7](#exm-dot-product-matmul)) needs two vectors of the same length and gives a number. The outer product \\\tilde{u}\\{\tilde{v}}^{\top}\\ takes vectors of any two lengths and gives a matrix ([Banerjee and Roy 2014, chap. 1](#ref-banerjee2014linear), p. 11).
>
> For example, \\\tilde{u} = (1, 2, 3)\\ and \\\tilde{v} = (4, 5)\\ in [Example 28](#exm-outer-product) have different lengths, so they have no dot product, but their outer product is a \\3 \times 2\\ matrix. For \\\tilde{a} = (1, 2)\\ and \\\tilde{b} = (3, 4)\\, which have the same length, both products exist:
>
> \\ {\tilde{a}}^{\top}\tilde{b} = 1 \cdot 3 + 2 \cdot 4 = 11 \qquad \tilde{a}\\{\tilde{b}}^{\top} = \begin{bmatrix} 1 \cdot 3 & 1 \cdot 4 \\ 2 \cdot 3 & 2 \cdot 4 \end{bmatrix} = \begin{bmatrix} 3 & 4 \\ 6 & 8 \end{bmatrix} \\

> **NOTE:**
>
> **Theorem 21 (An outer product has rank one)** If \\\tilde{u}\\ is a nonzero vector of length \\m\\ and \\\tilde{v}\\ is a nonzero vector of length \\n\\, then \\\operatorname{rank}(\tilde{u}\\{\tilde{v}}^{\top}) = 1\\ ([Definition 26](#def-rank)).

> **NOTE:**
>
> *Proof*. Column \\j\\ of \\\tilde{u}\\{\tilde{v}}^{\top}\\ has entries \\u_1 v_j, \ldots, u_m v_j\\, so it is the vector \\v_j \tilde{u}\\.
>
> **The rank is at least one.** Because \\\tilde{v} \neq \tilde{0}\\, some entry \\v_j\\ is nonzero. Then column \\j\\, \\v_j \tilde{u}\\, is a nonzero vector, and a single nonzero vector is linearly independent ([Definition 25](#def-linearly-independent)): \\c\\(v_j \tilde{u}) = \tilde{0}\\ forces \\c = 0\\.
>
> **The rank is at most one.** Take any two columns \\j \neq k\\. If \\v_j = v_k = 0\\, both columns are \\\tilde{0}\\, and \\1 \cdot(v_j \tilde{u}) + 1 \cdot(v_k \tilde{u}) = \tilde{0}\\. Otherwise, use the coefficients \\c_j = v_k\\ and \\c_k = -v_j\\, which are not both zero:
>
> \\ \begin{aligned} v_k\\(v_j \tilde{u}) - v_j\\(v_k \tilde{u}) &= (v_k v_j - v_j v_k)\\\tilde{u} && \text{(collect the scalar multiples of } \tilde{u} \text{)} \\ &= 0 \cdot\tilde{u} && \text{(multiplication of numbers is commutative)} \\ &= \tilde{0} && \text{(a zero multiple of a vector is } \tilde{0}\text{)} \end{aligned} \\
>
> Either way, every pair of columns has a combination with coefficients that are not all zero and that equals \\\tilde{0}\\. Now take any set of two or more columns. It contains a pair \\j \neq k\\. Use that pair’s coefficients for columns \\j\\ and \\k\\, and the coefficient \\0\\ for every other column in the set. This combination equals \\\tilde{0}\\, and its coefficients are not all zero, so the set is not linearly independent ([Definition 25](#def-linearly-independent)). The largest linearly independent set of columns therefore has one column.

> **NOTE:**
>
> **Example 29 (The rank of an outer product)** In [Example 28](#exm-outer-product), the second column \\(5, 10, 15)\\ of \\\tilde{u}\\{\tilde{v}}^{\top}\\ is \\\frac{5}{4}\\ times the first column \\(4, 8, 12)\\, because the columns are \\v_1 \tilde{u} = 4\tilde{u}\\ and \\v_2 \tilde{u} = 5\tilde{u}\\. So the two columns are not linearly independent, and the \\3 \times 2\\ matrix has rank \\1\\.

## 3 Special Matrices

One special matrix, the zero matrix ([Definition 17](#def-zero-matrix)), appeared earlier, in the section on matrix addition.

> **NOTE:**
>
> **Definition 35 (Square matrix)** A matrix is **square** if it has the same number of rows as columns.

> **NOTE:**
>
> **Definition 36 (Order of a square matrix)** The **order** of a square matrix ([Definition 35](#def-square-matrix)) is its number of rows, which equals its number of columns.

> **NOTE:**
>
> **Definition 37 (Matrix power)** For a square matrix \\\mathbf{A}\\ of order \\p\\ and a positive integer \\k\\, the \\k\\-th **power** of \\\mathbf{A}\\ is:
>
> \\\mathbf{A}^k = \underbrace{\mathbf{A}\\\mathbf{A}\cdots\mathbf{A}}\_{k \text{ copies}}\\
>
> In particular, \\\mathbf{A}^2 = \mathbf{A}\mathbf{A}\\.

> **NOTE:**
>
> **Definition 38 (Identity matrix)** The \\p \times p\\ **identity matrix** \\\mathbf{I}\_p\\ (or \\\mathbf{I}\\ when the size is clear from context) has ones on the main diagonal and zeros elsewhere:
>
> \\ (\mathbf{I}\_p)\_{ij} = \begin{cases} 1 & \text{if } i = j \\ 0 & \text{if } i \neq j \end{cases} \qquad \mathbf{I}\_p = \begin{bmatrix} 1 & 0 & \cdots & 0 \\ 0 & 1 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & 1 \end{bmatrix} \\
>
> Equivalently, the entries of the identity matrix are given by the [Kronecker delta](notation.llms.md#def-kronecker-delta): \\(\mathbf{I}\_p)\_{ij} = \delta\_{ij}\\.

> **NOTE:**
>
> **Theorem 22 (Identity matrix is a multiplicative identity)** For any \\m \times p\\ matrix \\\mathbf{A}\\:
>
> \\\mathbf{A}\\\mathbf{I}\_p = \mathbf{A}\\
>
> \\\mathbf{I}\_m\\\mathbf{A} = \mathbf{A}\\

> **NOTE:**
>
> **Definition 39 (Symmetric matrix)** A square matrix \\\mathbf{A}\\ is **symmetric** if \\{\mathbf{A}}^{\top} = \mathbf{A}\\, i.e., \\a\_{ij} = a\_{ji}\\ for all \\i\\ and \\j\\.

> **NOTE:**
>
> *Remark 15* (Symmetric matrices in statistics). Covariance matrices are symmetric: entry \\(i, j)\\ of the covariance matrix of a random vector \\\tilde{Y}\\ is \\\operatorname{Cov}\mathopen{}\left(Y_i, Y_j\right)\mathclose{}\\, and \\\operatorname{Cov}\mathopen{}\left(Y_i, Y_j\right)\mathclose{} = \operatorname{Cov}\mathopen{}\left(Y_j, Y_i\right)\mathclose{}\\. For example, if \\\operatorname{Var}\mathopen{}\left(Y_1\right)\mathclose{} = 4\\, \\\operatorname{Var}\mathopen{}\left(Y_2\right)\mathclose{} = 9\\, and \\\operatorname{Cov}\mathopen{}\left(Y_1, Y_2\right)\mathclose{} = 1\\, the covariance matrix of \\(Y_1, Y_2)\\ is
>
> \\ \begin{bmatrix} 4 & 1 \\ 1 & 9 \end{bmatrix}. \\

> **NOTE:**
>
> **Definition 40 (Diagonal matrix)** A square matrix \\\mathbf{D}\\ is a **diagonal matrix** if all off-diagonal entries are zero: \\d\_{ij} = 0\\ whenever \\i \neq j\\:
>
> \\ \mathbf{D} = \begin{bmatrix} d_1 & 0 & \cdots & 0 \\ 0 & d_2 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & d_p \end{bmatrix} \\

> **NOTE:**
>
> *Remark 16* (\\\operatorname{diag}\\ notation). For numbers \\d_1, \ldots, d_p\\, \\\operatorname{diag}(d_1, \ldots, d_p)\\ is the \\p \times p\\ diagonal matrix with diagonal entries \\d_1, \ldots, d_p\\. For example,
>
> \\ \operatorname{diag}(2, 5) = \begin{bmatrix} 2 & 0 \\ 0 & 5 \end{bmatrix}, \\
>
> and the \\p \times p\\ identity matrix is \\\mathbf{I}\_p = \operatorname{diag}(1, \ldots, 1)\\.

> **NOTE:**
>
> **Definition 41 (Matrix inverse)** For a square \\p \times p\\ matrix \\\mathbf{A}\\, the **inverse** \\\mathbf{A}^{-1}\\ (if it exists) is the unique matrix satisfying:
>
> \\\mathbf{A}\\\mathbf{A}^{-1} = \mathbf{A}^{-1}\\\mathbf{A} = \mathbf{I}\_p\\

> **NOTE:**
>
> **Definition 42 (Invertible matrix)** A \\p \times p\\ matrix \\\mathbf{A}\\ is **invertible** (or *non-singular*) if some \\p \times p\\ matrix \\\mathbf{B}\\ satisfies
>
> \\\mathbf{A}\mathbf{B} = \mathbf{B}\mathbf{A} = \mathbf{I}\_p,\\
>
> where \\\mathbf{I}\_p\\ is the identity matrix ([Definition 38](#def-identity-matrix)). A square matrix that is not invertible is *singular*.

> **NOTE:**
>
> **Example 30 (An invertible matrix and a singular one)** The matrix \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ is invertible, with \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\: multiplying out gives \\\mathbf{A}\mathbf{A}^{-1} = \mathbf{A}^{-1}\mathbf{A} = \mathbf{I}\_2\\.
>
> The matrix \\\mathbf{M} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ is singular: for any \\2 \times 2\\ matrix \\\mathbf{C}\\, the two rows of \\\mathbf{M}\mathbf{C}\\ are equal, so \\\mathbf{M}\mathbf{C}\\ can never be \\\mathbf{I}\_2\\, whose two rows differ.

> **NOTE:**
>
> *Remark 17* (Invertible matrices and inverses). Let \\\mathbf{A}\\ be a \\p \times p\\ matrix, and suppose that two \\p \times p\\ matrices \\\mathbf{B}\\ and \\\mathbf{C}\\ satisfy \\\mathbf{A}\mathbf{B} = \mathbf{B}\mathbf{A} = \mathbf{I}\_p\\ and \\\mathbf{A}\mathbf{C} = \mathbf{C}\mathbf{A} = \mathbf{I}\_p\\. Then
>
> \\ \begin{aligned} \mathbf{B} &= \mathbf{B}\\\mathbf{I}\_p && \text{(identity matrix)} \\ &= \mathbf{B}(\mathbf{A}\mathbf{C}) && \text{(} \mathbf{A}\mathbf{C} = \mathbf{I}\_p \text{)} \\ &= (\mathbf{B}\mathbf{A})\mathbf{C} && \text{(matrix multiplication is associative)} \\ &= \mathbf{I}\_p\\\mathbf{C} && \text{(} \mathbf{B}\mathbf{A} = \mathbf{I}\_p \text{)} \\ &= \mathbf{C} && \text{(identity matrix)} \end{aligned} \\
>
> The steps use [Theorem 7](#thm-matmul-assoc) and [Theorem 22](#thm-identity). Since \\\mathbf{B} = \mathbf{C}\\, at most one matrix satisfies these equations, which is the uniqueness that [Definition 41](#def-matrix-inverse) asserts. When \\\mathbf{A}\\ is invertible, the matrix \\\mathbf{B}\\ in [Definition 42](#def-invertible-matrix) is therefore the inverse \\\mathbf{A}^{-1}\\ of \\\mathbf{A}\\, and \\\mathbf{A}\\ is invertible exactly when it has an inverse. For example, for \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ in [Example 30](#exm-invertible-matrix), \\\begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\ is the only \\2 \times 2\\ matrix \\\mathbf{B}\\ with \\\mathbf{A}\mathbf{B} = \mathbf{B}\mathbf{A} = \mathbf{I}\_2\\, so it is \\\mathbf{A}^{-1}\\.

> **NOTE:**
>
> **Theorem 23 (Inverse of a product)** If \\\mathbf{A}\\ and \\\mathbf{B}\\ are invertible \\p \times p\\ matrices, then \\\mathbf{A}\mathbf{B}\\ is invertible, and
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
> So \\\mathbf{B}^{-1}\mathbf{A}^{-1}\\ satisfies [Definition 41](#def-matrix-inverse) for \\\mathbf{A}\mathbf{B}\\. The steps use [Theorem 7](#thm-matmul-assoc) and [Theorem 22](#thm-identity).

> **NOTE:**
>
> **Theorem 24 (Inverse of a transpose)** If \\\mathbf{A}\\ is an invertible \\p \times p\\ matrix, then \\{\mathbf{A}}^{\top}\\ is invertible, and
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
> So \\{\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}\\ satisfies [Definition 41](#def-matrix-inverse) for \\{\mathbf{A}}^{\top}\\. The first step of each display is [Theorem 10](#thm-transpose-product).

> **NOTE:**
>
> **Example 31 (Inverting a transpose)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\, [Example 30](#exm-invertible-matrix) gives \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\, so [Theorem 24](#thm-inverse-transpose) says
>
> \\ \mathopen{}\left({\mathbf{A}}^{\top}\right)^{-1}\mathclose{} = \mathopen{}\left(\begin{bmatrix} 2 & 0 \\ 1 & 1 \end{bmatrix}\right)^{-1}\mathclose{} = {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top} = \begin{bmatrix} 0.5 & 0 \\ -0.5 & 1 \end{bmatrix}, \\
>
> and multiplying \\\begin{bmatrix} 2 & 0 \\ 1 & 1 \end{bmatrix}\begin{bmatrix} 0.5 & 0 \\ -0.5 & 1 \end{bmatrix}\\ out does give \\\mathbf{I}\_2\\.

> **NOTE:**
>
> **Corollary 1 (The inverse of a symmetric matrix is symmetric)** If \\\mathbf{A}\\ is symmetric and invertible, then \\\mathbf{A}^{-1}\\ is symmetric.

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top} &= \mathopen{}\left({\mathbf{A}}^{\top}\right)^{-1}\mathclose{} && \text{(inverse of a transpose)} \\ &= \mathbf{A}^{-1} && \text{(} \mathbf{A} \text{ is symmetric)} \end{aligned} \\
>
> The first step is [Theorem 24](#thm-inverse-transpose).

> **NOTE:**
>
> **Example 32 (Inverting a symmetric matrix)** \\\mathbf{S} = \begin{bmatrix} 2 & 1 \\ 1 & 1 \end{bmatrix}\\ is symmetric, and \\\mathbf{S}^{-1} = \begin{bmatrix} 1 & -1 \\ -1 & 2 \end{bmatrix}\\ is symmetric too, as [Corollary 1](#cor-inverse-symmetric) says.

> **NOTE:**
>
> **Definition 43 (Idempotent matrix)** A square matrix \\\mathbf{A}\\ is **idempotent** if
>
> \\\mathbf{A}^2 = \mathbf{A}\\

> **NOTE:**
>
> **Definition 44 (Orthogonal projection matrix)** A square matrix \\\mathbf{P}\\ is an **orthogonal projection matrix** if it is both symmetric ([Definition 39](#def-symmetric-matrix)) and idempotent ([Definition 43](#def-idempotent-matrix)):
>
> \\{\mathbf{P}}^{\top} = \mathbf{P} \qquad \text{and} \qquad \mathbf{P}^2 = \mathbf{P}\\

> **NOTE:**
>
> **Definition 45 (Oblique projection)** A square matrix is an **oblique projection** if it is idempotent ([Definition 43](#def-idempotent-matrix)) but not symmetric ([Definition 39](#def-symmetric-matrix)).

> **NOTE:**
>
> **Example 33 (An orthogonal projection and an oblique one)** \\\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ is symmetric, and \\\mathbf{P}^2 = \mathbf{P}\\, so \\\mathbf{P}\\ is an orthogonal projection matrix; it maps \\(v_1, v_2)\\ to \\(v_1, 0)\\.
>
> \\\mathbf{Q} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}\\ is idempotent:
>
> \\ \mathbf{Q}^2 = \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 1 + 1 \cdot 0 \\ 0 \cdot 1 + 0 \cdot 0 & 0 \cdot 1 + 0 \cdot 0 \end{bmatrix} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix} = \mathbf{Q}, \\
>
> but \\{\mathbf{Q}}^{\top} \neq \mathbf{Q}\\, so \\\mathbf{Q}\\ is an oblique projection, not an orthogonal projection matrix.

> **NOTE:**
>
> *Remark 18* (What “projection matrix” means in these notes). Some texts call any idempotent matrix a projection matrix, so that both \\\mathbf{P}\\ and \\\mathbf{Q}\\ in [Example 33](#exm-projection-matrix) would count as one. Regression texts often say “projection matrix” when they mean an orthogonal one. In these notes, “projection matrix” always means an orthogonal projection matrix in the sense of [Definition 44](#def-projection-matrix), such as \\\mathbf{P}\\ in [Example 33](#exm-projection-matrix), and never an oblique projection ([Definition 45](#def-oblique-projection)) such as \\\mathbf{Q}\\.

> **NOTE:**
>
> **Theorem 25 (Complement of a projection matrix)** If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 44](#def-projection-matrix)), then \\\mathbf{I}\_p - \mathbf{P}\\ is also an orthogonal projection matrix.

> **NOTE:**
>
> *Proof*. We verify symmetry and idempotency.
>
> **Symmetry:** \\{(\mathbf{I} - \mathbf{P})}^{\top} = {\mathbf{I}}^{\top} - {\mathbf{P}}^{\top} = \mathbf{I} - \mathbf{P}\\
>
> **Idempotency:** \\\begin{aligned} (\mathbf{I} - \mathbf{P})^2 &= (\mathbf{I} - \mathbf{P})(\mathbf{I} - \mathbf{P}) \\ &= \mathbf{I} - \mathbf{P} - \mathbf{P} + \mathbf{P}^2 \\ &= \mathbf{I} - \mathbf{P} - \mathbf{P} + \mathbf{P} \\ &= \mathbf{I} - \mathbf{P} \end{aligned}\\

> **NOTE:**
>
> **Theorem 26 (Projection matrices produce orthogonal decompositions)** If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 44](#def-projection-matrix)) and \\\tilde{v}\\ is any vector of length \\p\\, then the two components of the decomposition
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
> **Definition 46 (Orthogonal matrix)** A \\p \times p\\ matrix \\\mathbf{Q}\\ is **orthogonal** if
>
> \\ \underbrace{{\mathbf{Q}}^{\top}}\_{p \times p}\\\underbrace{\mathbf{Q}}\_{p \times p} = \mathbf{I}\_p \\

> **NOTE:**
>
> **Example 34 (A rotation matrix)** The matrix
>
> \\ \mathbf{Q} = \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix} \\
>
> rotates each vector in the plane counterclockwise by the angle \\\theta\\ with \\\cos\theta = 0.6\\ and \\\sin\theta = 0.8\\ (about \\53\\ degrees) ([Banerjee and Roy 2014, chap. 8](#ref-banerjee2014linear), Example 8.1, p. 207). It is orthogonal:
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top}\mathbf{Q} &= \begin{bmatrix} 0.6 & 0.8 \\ -0.8 & 0.6 \end{bmatrix} \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \begin{bmatrix} 0.36 + 0.64 & -0.48 + 0.48 \\ -0.48 + 0.48 & 0.64 + 0.36 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> *Remark 19* (The columns of an orthogonal matrix are orthonormal). Entry \\(i, j)\\ of \\{\mathbf{Q}}^{\top}\mathbf{Q}\\ is the dot product of column \\i\\ and column \\j\\ of \\\mathbf{Q}\\, so \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\ says that the columns of \\\mathbf{Q}\\ are orthonormal ([Definition 13](#def-orthonormal-vectors)). For a square matrix, \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\ also implies \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\, so \\\mathbf{Q}^{-1} = {\mathbf{Q}}^{\top}\\ ([Definition 41](#def-matrix-inverse)) ([Banerjee and Roy 2014, chap. 8](#ref-banerjee2014linear), Theorem 8.1 and Definition 8.1, p. 209).
>
> For example, the columns of \\\mathbf{Q}\\ in [Example 34](#exm-orthogonal-matrix) are \\(0.6, 0.8)\\ and \\(-0.8, 0.6)\\. The diagonal entries \\0.36 + 0.64 = 1\\ of \\{\mathbf{Q}}^{\top}\mathbf{Q}\\ are their squared norms, and the off-diagonal entries \\-0.48 + 0.48 = 0\\ are their dot product. Multiplying in the other order also gives \\\mathbf{I}\_2\\:
>
> \\ \begin{aligned} \mathbf{Q}{\mathbf{Q}}^{\top} &= \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix} \begin{bmatrix} 0.6 & 0.8 \\ -0.8 & 0.6 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \begin{bmatrix} 0.36 + 0.64 & 0.48 - 0.48 \\ 0.48 - 0.48 & 0.64 + 0.36 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> So \\\mathbf{Q}^{-1} = {\mathbf{Q}}^{\top}\\.

> **NOTE:**
>
> **Theorem 27 (Orthogonal matrices preserve length)** If \\\mathbf{Q}\\ is a \\p \times p\\ orthogonal matrix ([Definition 46](#def-orthogonal-matrix)) and \\\tilde{x}\\ is a vector of length \\p\\, then
>
> \\ \mathopen{}\left\lVert\mathbf{Q}\tilde{x}\right\rVert\mathclose{} = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{Q}\tilde{x}\right\rVert\mathclose{}^2 &= (\mathbf{Q}\tilde{x}) \cdot (\mathbf{Q}\tilde{x}) && \text{(definition of the Euclidean norm)} \\ &= {(\mathbf{Q}\tilde{x})}^{\top}\\(\mathbf{Q}\tilde{x}) && \text{(dot product as a matrix product)} \\ &= {\tilde{x}}^{\top}\\{\mathbf{Q}}^{\top}\\(\mathbf{Q}\tilde{x}) && \text{(transpose of a product)} \\ &= {\tilde{x}}^{\top}\\({\mathbf{Q}}^{\top}\mathbf{Q})\\\tilde{x} && \text{(regroup; matrix multiplication is associative)} \\ &= {\tilde{x}}^{\top}\\\mathbf{I}\_p\\\tilde{x} && \text{(definition of an orthogonal matrix)} \\ &= {\tilde{x}}^{\top}\\\tilde{x} && \text{(identity matrix)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 && \text{(definition of the Euclidean norm)} \end{aligned} \\
>
> Both norms are nonnegative square roots, so equal squares give \\\mathopen{}\left\lVert\mathbf{Q}\tilde{x}\right\rVert\mathclose{} = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\. The second step is [Example 7](#exm-dot-product-matmul), the third is [Theorem 10](#thm-transpose-product), and the fourth is [Theorem 7](#thm-matmul-assoc).

> **NOTE:**
>
> **Example 35 (Rotating a vector keeps its length)** With \\\mathbf{Q}\\ from [Example 34](#exm-orthogonal-matrix) and \\\tilde{x}= (3, 4)\\ from [Example 4](#exm-euclidean-norm):
>
> \\ \begin{aligned} \mathbf{Q}\tilde{x} &= \begin{bmatrix} 0.6 \cdot 3 - 0.8 \cdot 4 \\ 0.8 \cdot 3 + 0.6 \cdot 4 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 1.8 - 3.2 \\ 2.4 + 2.4 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} -1.4 \\ 4.8 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{Q}\tilde{x}\right\rVert\mathclose{} &= \sqrt{(-1.4)^2 + 4.8^2} && \text{(definition of the norm)} \\ &= \sqrt{1.96 + 23.04} && \text{(square)} \\ &= \sqrt{25} && \text{(add)} \\ &= 5 && \text{(take the square root)} \end{aligned} \\
>
> which is \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = 5\\.

## 4 Quadratic Forms

> **NOTE:**
>
> **Definition 47 (Quadratic form)** A **quadratic form** is a mathematical expression of the structure
>
> \\{\tilde{x}}^{\top}\\ \mathbf{S}\\ \tilde{x}\\
>
> where \\\tilde{x}\\ is a \\p \times 1\\ vector and \\\mathbf{S}\\ is a \\p \times p\\ matrix.

> **NOTE:**
>
> *Remark 20* (Quadratic forms in statistics). A quadratic form extends the scalar expression \\c x^2\\ to vectors: with \\p = 1\\ and \\\mathbf{S} = \[c\]\\, \\{\tilde{x}}^{\top}\\\mathbf{S}\\\tilde{x}= c x^2\\. With \\p = 2\\,
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
> **Definition 48 (Symmetric part of a square matrix)** The **symmetric part** of a \\p \times p\\ matrix \\\mathbf{S}\\ is
>
> \\\frac{1}{2}\mathopen{}\left(\mathbf{S} + {\mathbf{S}}^{\top}\right)\mathclose{}\\

> **NOTE:**
>
> **Example 36 (The symmetric part of a \\2 \times 2\\ matrix)** For \\\mathbf{S} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}\\, the symmetric part is
>
> \\ \frac{1}{2}\mathopen{}\left( \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix} + \begin{bmatrix} 1 & 0 \\ 2 & 3 \end{bmatrix} \right)\mathclose{} = \frac{1}{2}\begin{bmatrix} 2 & 2 \\ 2 & 6 \end{bmatrix} = \begin{bmatrix} 1 & 1 \\ 1 & 3 \end{bmatrix}, \\
>
> which is symmetric.

> **NOTE:**
>
> **Theorem 28 (A quadratic form depends only on the symmetric part)** If \\\mathbf{S}\\ is a \\p \times p\\ matrix and \\\tilde{x}\\ is a vector of length \\p\\, then
>
> \\ {\tilde{x}}^{\top}\mathbf{S}\tilde{x} = {\tilde{x}}^{\top}\left(\frac{1}{2}(\mathbf{S}+{\mathbf{S}}^{\top})\right)\tilde{x}. \\
>
> So the value of a quadratic form depends only on the symmetric part ([Definition 48](#def-symmetric-part)) of \\\mathbf{S}\\.

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
> The distributive step is [Theorem 8](#thm-matmul-distrib), and the transpose step is [Theorem 10](#thm-transpose-product).

> **NOTE:**
>
> **Example 37 (Replacing a matrix by its symmetric part)** With \\\mathbf{S} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}\\ from [Example 36](#exm-symmetric-part) and \\\tilde{x}= (1, 1)\\:
>
> \\ {\tilde{x}}^{\top}\mathbf{S}\tilde{x}= 1 + 2 + 0 + 3 = 6 \qquad {\tilde{x}}^{\top}\begin{bmatrix} 1 & 1 \\ 1 & 3 \end{bmatrix}\tilde{x}= 1 + 1 + 1 + 3 = 6 \\
>
> Both quadratic forms equal the sum of their matrix’s entries, because every entry of \\\tilde{x}\\ is \\1\\.

## 5 Trace and Matrix Inner Product

> **NOTE:**
>
> **Definition 49 (Trace)** The **trace** of a \\p \times p\\ matrix \\\mathbf{M}\\ is the sum of its diagonal entries:
>
> \\\operatorname{tr}(\mathbf{M}) \stackrel{\text{def}}{=}\sum\_{i=1}^p M\_{ii}\\

> **NOTE:**
>
> **Example 38 (The trace of a \\2 \times 2\\ matrix)** \\ \operatorname{tr}\mathopen{}\left(\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\right)\mathclose{} = 1 + 4 = 5 \\

> **NOTE:**
>
> **Theorem 29 (The trace of a product does not depend on the order)** For an \\m \times n\\ matrix \\\mathbf{A}\\ and an \\n \times m\\ matrix \\\mathbf{B}\\:
>
> \\ \operatorname{tr}\mathopen{}\left(\underbrace{\mathbf{A}\mathbf{B}}\_{m \times m}\right)\mathclose{} = \operatorname{tr}\mathopen{}\left(\underbrace{\mathbf{B}\mathbf{A}}\_{n \times n}\right)\mathclose{} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \operatorname{tr}(\mathbf{A}\mathbf{B}) &= \sum\_{i=1}^{m} (\mathbf{A}\mathbf{B})\_{ii} && \text{(definition of the trace)} \\ &= \sum\_{i=1}^{m} \sum\_{s=1}^{n} a\_{is}\\ b\_{si} && \text{(definition of matrix multiplication)} \\ &= \sum\_{s=1}^{n} \sum\_{i=1}^{m} a\_{is}\\ b\_{si} && \text{(swap the order of two finite sums)} \\ &= \sum\_{s=1}^{n} \sum\_{i=1}^{m} b\_{si}\\ a\_{is} && \text{(multiplication of numbers is commutative)} \\ &= \sum\_{s=1}^{n} (\mathbf{B}\mathbf{A})\_{ss} && \text{(definition of matrix multiplication)} \\ &= \operatorname{tr}(\mathbf{B}\mathbf{A}) && \text{(definition of the trace)} \end{aligned} \\

> **NOTE:**
>
> **Example 39 (Traces of the two products of a \\2 \times 3\\ and a \\3 \times 2\\ matrix)** Let
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
> *Remark 21* (Moving a factor of a triple product). Let \\\mathbf{A}\\ be \\m \times n\\, \\\mathbf{B}\\ be \\n \times k\\, and \\\mathbf{C}\\ be \\k \times m\\, so that \\\mathbf{A}\mathbf{B}\\ is \\m \times k\\ and \\\mathbf{A}\mathbf{B}\mathbf{C}\\ is square. Applying [Theorem 29](#thm-trace-cyclic) to the \\m \times k\\ matrix \\\mathbf{A}\mathbf{B}\\ and the \\k \times m\\ matrix \\\mathbf{C}\\ moves the last factor of the triple product to the front ([Banerjee and Roy 2014, chap. 1](#ref-banerjee2014linear), Theorem 1.5 and eq. 1.17, p. 19):
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
> **Definition 50 (Matrix inner product)** The **inner product** of two \\n \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\ is
>
> \\ \left\langle \mathbf{A}, \mathbf{B} \right\rangle \stackrel{\text{def}}{=} \operatorname{tr}\mathopen{}\left(\underbrace{{\mathbf{A}}^{\top}\mathbf{B}}\_{p \times p}\right)\mathclose{} \\

Banerjee and Roy ([2014, chap. 15](#ref-banerjee2014linear), eq. 15.7, p. 491) defines the same inner product on \\n \times p\\ matrices with the trace.

> **NOTE:**
>
> **Theorem 30 (The matrix inner product multiplies matching entries)** For two \\n \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\:
>
> \\ \left\langle \mathbf{A}, \mathbf{B} \right\rangle = \sum\_{i=1}^{n} \sum\_{j=1}^{p} a\_{ij}\\ b\_{ij} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \left\langle \mathbf{A}, \mathbf{B} \right\rangle &= \operatorname{tr}({\mathbf{A}}^{\top}\mathbf{B}) && \text{(definition of the inner product)} \\ &= \sum\_{j=1}^{p} ({\mathbf{A}}^{\top}\mathbf{B})\_{jj} && \text{(definition of the trace)} \\ &= \sum\_{j=1}^{p} \sum\_{i=1}^{n} ({\mathbf{A}}^{\top})\_{ji}\\ b\_{ij} && \text{(definition of matrix multiplication)} \\ &= \sum\_{j=1}^{p} \sum\_{i=1}^{n} a\_{ij}\\ b\_{ij} && \text{(definition of the transpose)} \\ &= \sum\_{i=1}^{n} \sum\_{j=1}^{p} a\_{ij}\\ b\_{ij} && \text{(swap the order of two finite sums)} \end{aligned} \\

> **NOTE:**
>
> **Example 40 (The inner product of two \\2 \times 2\\ matrices)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \qquad \mathbf{B} = \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix} \\
>
> From [Definition 50](#def-matrix-inner-product):
>
> \\ \begin{aligned} \left\langle \mathbf{A}, \mathbf{B} \right\rangle &= \operatorname{tr}\mathopen{}\left({\mathbf{A}}^{\top}\mathbf{B}\right)\mathclose{} && \text{(definition of the inner product)} \\ &= \operatorname{tr}\mathopen{}\left( {\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}}^{\top} \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix} \right)\mathclose{} && \text{(substitute)} \\ &= \operatorname{tr}\mathopen{}\left( \begin{bmatrix} 1 & 3 \\ 2 & 4 \end{bmatrix} \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix} \right)\mathclose{} && \text{(definition of the transpose)} \\ &= \operatorname{tr}\mathopen{}\left(\begin{bmatrix} -3 & 7 \\ -4 & 10 \end{bmatrix}\right)\mathclose{} && \text{(multiply)} \\ &= -3 + 10 && \text{(definition of the trace)} \\ &= 7 && \text{(add)} \end{aligned} \\
>
> From [Theorem 30](#thm-matrix-inner-product-entries):
>
> \\ \begin{aligned} \left\langle \mathbf{A}, \mathbf{B} \right\rangle &= 1 \cdot 0 + 2 \cdot 1 + 3 \cdot(-1) + 4 \cdot 2 && \text{(multiply matching entries and add)} \\ &= 0 + 2 - 3 + 8 && \text{(multiply)} \\ &= 7 && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> *Remark 22* (The matrix inner product as a dot product). [Theorem 30](#thm-matrix-inner-product-entries) says that the matrix inner product is the dot product ([Definition 5](#def-dot-product)) of the two matrices’ entries, each listed as one vector of length \\np\\, with both matrices’ entries listed in the same order.
>
> For example, listing the entries of \\\mathbf{A}\\ and \\\mathbf{B}\\ in [Example 40](#exm-matrix-inner-product) row by row gives \\(1, 2, 3, 4)\\ and \\(0, 1, -1, 2)\\, and \\(1, 2, 3, 4) \cdot (0, 1, -1, 2) = 7 = \left\langle \mathbf{A}, \mathbf{B} \right\rangle\\.

> **NOTE:**
>
> **Definition 51 (Frobenius norm)** The **Frobenius norm** of an \\n \times p\\ matrix \\\mathbf{A}\\ is
>
> \\ \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F \stackrel{\text{def}}{=}\sqrt{\left\langle \mathbf{A}, \mathbf{A} \right\rangle} \\
>
> where \\\left\langle \cdot, \cdot \right\rangle\\ is the matrix inner product ([Definition 50](#def-matrix-inner-product)).

> **NOTE:**
>
> **Example 41 (The Frobenius norm of a \\2 \times 2\\ matrix)** For \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F &= \sqrt{\left\langle \mathbf{A}, \mathbf{A} \right\rangle} && \text{(definition of the Frobenius norm)} \\ &= \sqrt{1 \cdot 1 + 2 \cdot 2 + 3 \cdot 3 + 4 \cdot 4} && \text{(sum of products of matching entries)} \\ &= \sqrt{1 + 4 + 9 + 16} && \text{(multiply)} \\ &= \sqrt{30} && \text{(add)} \end{aligned} \\
>
> The second step is [Theorem 30](#thm-matrix-inner-product-entries).

> **NOTE:**
>
> *Remark 23* (The Frobenius norm is the Euclidean norm of the entries). By [Theorem 30](#thm-matrix-inner-product-entries), \\\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F^2 = \sum\_{i=1}^{n} \sum\_{j=1}^{p} a\_{ij}^2\\, a sum of squares, so the square root is always defined. \\\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F\\ is the Euclidean norm ([Definition 11](#def-euclidean-norm)) of the entries of \\\mathbf{A}\\, listed as one vector of length \\np\\ ([Banerjee and Roy 2014, chap. 15](#ref-banerjee2014linear), Definition 15.4, p. 492).
>
> For example, listing the entries of \\\mathbf{A}\\ in [Example 41](#exm-frobenius-norm) row by row gives the vector \\(1, 2, 3, 4)\\ of length \\2 \cdot 2 = 4\\, and \\\mathopen{}\left\lVert(1, 2, 3, 4)\right\rVert\mathclose{} = \sqrt{1 + 4 + 9 + 16} = \sqrt{30} = \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F\\.

## 6 Matrix Decompositions

> **NOTE:**
>
> **Definition 52 (Eigenvalue and eigenvector)** Let \\\mathbf{A}\\ be a \\p \times p\\ matrix. A real number \\\lambda\\ is an **eigenvalue** of \\\mathbf{A}\\ if some real vector \\\tilde{v} \neq \tilde{0}\\ of length \\p\\ satisfies
>
> \\ \underbrace{\mathbf{A}}\_{p \times p}\\\underbrace{\tilde{v}}\_{p \times 1} = \lambda\\\underbrace{\tilde{v}}\_{p \times 1} \\
>
> Any such \\\tilde{v}\\ is an **eigenvector** of \\\mathbf{A}\\ for \\\lambda\\.

> **NOTE:**
>
> **Example 42 (Eigenvectors of a \\2 \times 2\\ matrix)** Let \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\.
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
> *Remark 24* (Multiples of an eigenvector). Multiplying by \\\mathbf{A}\\ rescales an eigenvector by \\\lambda\\ and does not change the line it lies on. Any nonzero multiple \\c\\\tilde{v}\\ of an eigenvector is also an eigenvector for the same \\\lambda\\:
>
> \\ \begin{aligned} \mathbf{A}(c\\\tilde{v}) &= c\\\mathbf{A}\tilde{v} && \text{(move the scalar } c \text{ to the front)} \\ &= c\\\lambda\tilde{v} && \text{(} \tilde{v} \text{ is an eigenvector for } \lambda \text{)} \\ &= \lambda\\(c\\\tilde{v}) && \text{(multiplication of numbers is commutative)} \end{aligned} \\
>
> For example, in [Example 42](#exm-eigenvalue), \\2\\(1, 1) = (2, 2)\\ is also an eigenvector for the eigenvalue \\3\\:
>
> \\ \begin{aligned} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 2 \\ 2 \end{bmatrix} &= \begin{bmatrix} 2 \cdot 2 + 1 \cdot 2 \\ 1 \cdot 2 + 2 \cdot 2 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 4 + 2 \\ 2 + 4 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 6 \\ 6 \end{bmatrix} && \text{(add)} \\ &= 3 \begin{bmatrix} 2 \\ 2 \end{bmatrix} && \text{(factor out } 3 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 43 (A vector that is not an eigenvector)** For the same \\\mathbf{A}\\, \\(1, 0)\\ is not an eigenvector:
>
> \\ \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 1 \\ 0 \end{bmatrix} = \begin{bmatrix} 2 \\ 1 \end{bmatrix}, \\
>
> and no number \\\lambda\\ gives \\(2, 1) = \lambda\\(1, 0)\\, because the second entries would need \\1 = \lambda \cdot 0\\.

> **NOTE:**
>
> *Remark 25* (Real and complex eigenvalues). These notes take \\\lambda\\ and \\\tilde{v}\\ to be real. Banerjee and Roy ([2014, chap. 11](#ref-banerjee2014linear), Definition 11.1, pp. 312-313) also allows complex eigenvalues and eigenvectors, because some real matrices, such as a rotation by \\90\\ degrees, have no real eigenvalues ([Banerjee and Roy 2014, chap. 11](#ref-banerjee2014linear), Example 11.2, p. 312).
>
> For example, \\\mathbf{R} = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}\\ rotates each vector in the plane counterclockwise by \\90\\ degrees: \\\mathbf{R}\\(v_1, v_2) = (-v_2, v_1)\\. Suppose \\\mathbf{R}\tilde{v} = \lambda\tilde{v}\\ for a real number \\\lambda\\. Matching entries gives \\-v_2 = \lambda v_1\\ and \\v_1 = \lambda v_2\\. Substituting the second equation into the first gives \\-v_2 = \lambda^2 v_2\\, so \\(1 + \lambda^2)\\ v_2 = 0\\. Since \\1 + \lambda^2 \> 0\\, \\v_2 = 0\\, and then \\v_1 = \lambda v_2 = 0\\. So the only solution is \\\tilde{v} = \tilde{0}\\, and \\\mathbf{R}\\ has no real eigenvalue.

> **NOTE:**
>
> **Theorem 31 (Spectral theorem for symmetric matrices)** If \\\mathbf{A}\\ is a \\p \times p\\ symmetric matrix ([Definition 39](#def-symmetric-matrix)) with real entries, then there are a \\p \times p\\ orthogonal matrix \\\mathbf{Q}\\ ([Definition 46](#def-orthogonal-matrix)) and a \\p \times p\\ diagonal matrix \\\mathbf{\Lambda}\\ ([Definition 40](#def-diagonal-matrix)) with real diagonal entries \\\lambda_1, \ldots, \lambda_p\\ such that
>
> \\ \underbrace{\mathbf{A}}\_{p \times p} = \underbrace{\mathbf{Q}}\_{p \times p}\\ \underbrace{\mathbf{\Lambda}}\_{p \times p}\\ \underbrace{{\mathbf{Q}}^{\top}}\_{p \times p} \\
>
> Each \\\lambda_i\\ is an eigenvalue of \\\mathbf{A}\\ ([Definition 52](#def-eigenvalue)), and column \\i\\ of \\\mathbf{Q}\\ is an eigenvector of \\\mathbf{A}\\ for \\\lambda_i\\.

> **NOTE:**
>
> *Remark 26* (An equivalent form of the spectral theorem). The proof, by induction on \\p\\, is outside the scope of these notes; see Banerjee and Roy ([2014, chap. 11](#ref-banerjee2014linear), Theorem 11.27, p. 349), which states the result in the equivalent form \\{\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q} = \mathbf{\Lambda}\\. The two forms are equivalent because \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\ ([Remark 19](#rem-orthogonal-matrix-columns)). Multiplying \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ by \\{\mathbf{Q}}^{\top}\\ on the left and by \\\mathbf{Q}\\ on the right gives
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
> a diagonal matrix with the eigenvalues \\3\\ and \\1\\ of \\\mathbf{A}\\ from [Example 42](#exm-eigenvalue) on its diagonal.

> **NOTE:**
>
> **Definition 53 (Eigendecomposition)** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric matrix with real entries. An **eigendecomposition**, or **spectral decomposition**, of \\\mathbf{A}\\ is a factorization
>
> \\ \mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top} \\
>
> with \\\mathbf{Q}\\ a \\p \times p\\ orthogonal matrix ([Definition 46](#def-orthogonal-matrix)) and \\\mathbf{\Lambda}\\ a \\p \times p\\ diagonal matrix ([Definition 40](#def-diagonal-matrix)). [Theorem 31](#thm-spectral) says that every such \\\mathbf{A}\\ has one.

> **NOTE:**
>
> **Example 44 (An eigendecomposition of a \\2 \times 2\\ symmetric matrix)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, [Example 42](#exm-eigenvalue) found the eigenvectors \\(1, 1)\\ for \\3\\ and \\(1, -1)\\ for \\1\\. They are orthogonal ([Definition 10](#def-orthogonal-vectors)):
>
> \\ \begin{aligned} (1, 1) \cdot (1, -1) &= 1 \cdot 1 + 1 \cdot(-1) && \text{(definition of the dot product)} \\ &= 1 - 1 && \text{(multiply)} \\ &= 0 && \text{(add)} \end{aligned} \\
>
> Each has norm \\\sqrt{1^2 + 1^2} = \sqrt{2}\\ ([Definition 11](#def-euclidean-norm)), so dividing each by \\\sqrt{2}\\ gives two orthonormal eigenvectors ([Definition 13](#def-orthonormal-vectors)). Put them in the columns of \\\mathbf{Q}\\, and the matching eigenvalues on the diagonal of \\\mathbf{\Lambda}\\:
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
> *Remark 27* (An eigendecomposition is not unique). A symmetric matrix can have more than one eigendecomposition. Reordering the eigenvalues on the diagonal of \\\mathbf{\Lambda}\\, and the columns of \\\mathbf{Q}\\ with them, gives another one, and so does multiplying a column of \\\mathbf{Q}\\ by \\-1\\.
>
> For example, take \\\mathbf{A}\\ from [Example 44](#exm-spectral). Swapping the two eigenvalues and the two columns gives
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
> **Theorem 32 (Singular value decomposition)** Let \\\mathbf{A}\\ be an \\n \times p\\ matrix with real entries and \\\operatorname{rank}(\mathbf{A}) = r\\ ([Definition 26](#def-rank)). Then there are an \\n \times n\\ orthogonal matrix \\\mathbf{U}\\, a \\p \times p\\ orthogonal matrix \\\mathbf{V}\\ ([Definition 46](#def-orthogonal-matrix)), and numbers \\\sigma_1 \ge \sigma_2 \ge \cdots \ge \sigma_r \> 0\\ such that
>
> \\ \underbrace{\mathbf{A}}\_{n \times p} = \underbrace{\mathbf{U}}\_{n \times n}\\ \underbrace{\mathbf{D}}\_{n \times p}\\ \underbrace{{\mathbf{V}}^{\top}}\_{p \times p} \\
>
> where \\\mathbf{D}\\ has entries \\d\_{ii} = \sigma_i\\ for \\i = 1, \ldots, r\\ and every other entry \\0\\.

> **NOTE:**
>
> *Remark 28* (The SVD applies to every real matrix). The proof is outside the scope of these notes; see Banerjee and Roy ([2014, chap. 12](#ref-banerjee2014linear), Theorem 12.1, p. 373). Unlike the spectral theorem ([Theorem 31](#thm-spectral)), [Theorem 32](#thm-svd) applies to every real matrix, including one that is not square or not symmetric.
>
> For example, the \\1 \times 2\\ matrix \\\mathbf{A} = \begin{bmatrix} 1 & 1 \end{bmatrix}\\ is not square, so [Theorem 31](#thm-spectral) does not apply to it. It has rank \\1\\, and [Theorem 32](#thm-svd) holds with \\\mathbf{U} = \begin{bmatrix} 1 \end{bmatrix}\\, \\\mathbf{D} = \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix}\\, and \\\mathbf{V}\\ the orthogonal matrix \\\mathbf{Q}\\ from [Example 44](#exm-spectral), which is symmetric, so \\{\mathbf{V}}^{\top} = \mathbf{V}\\:
>
> \\ \begin{aligned} \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top} &= \begin{bmatrix} 1 \end{bmatrix} \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(substitute)} \\ &= \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(multiplying by the } 1 \times 1 \text{ identity changes nothing)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(move the scalar to the front)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} \sqrt{2} \cdot 1 + 0 \cdot 1 & \sqrt{2} \cdot 1 + 0 \cdot(-1) \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} \sqrt{2} + 0 & \sqrt{2} + 0 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} \sqrt{2} & \sqrt{2} \end{bmatrix} && \text{(add)} \\ &= \begin{bmatrix} 1 & 1 \end{bmatrix} && \text{(divide by } \sqrt{2} \text{)} \end{aligned} \\
>
> \\\mathbf{U}\\ is orthogonal because \\{\mathbf{U}}^{\top}\mathbf{U} = \begin{bmatrix} 1 \end{bmatrix} = \mathbf{I}\_1\\, and the single singular value is \\\sigma_1 = \sqrt{2}\\.

> **NOTE:**
>
> **Definition 54 (Singular value decomposition and singular values)** Let \\\mathbf{A}\\ be an \\n \times p\\ matrix with real entries and \\\operatorname{rank}(\mathbf{A}) = r\\. A **singular value decomposition** (SVD) of \\\mathbf{A}\\ is a factorization \\\mathbf{A} = \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}\\ with \\\mathbf{U}\\, \\\mathbf{D}\\ and \\\mathbf{V}\\ as in [Theorem 32](#thm-svd). The numbers \\\sigma_1 \ge \cdots \ge \sigma_r \> 0\\ on the diagonal of \\\mathbf{D}\\ are the **singular values** of \\\mathbf{A}\\.

> **NOTE:**
>
> **Example 45 (An SVD of a \\3 \times 2\\ matrix)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix} \qquad \mathbf{U} = \begin{bmatrix} \frac{1}{\sqrt{2}} & 0 & \frac{1}{\sqrt{2}} \\ 0 & 1 & 0 \\ \frac{1}{\sqrt{2}} & 0 & -\frac{1}{\sqrt{2}} \end{bmatrix} \qquad \mathbf{D} = \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix} \qquad \mathbf{V} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \\
>
> \\\mathbf{V}\\ is the orthogonal matrix \\\mathbf{Q}\\ from [Example 44](#exm-spectral). \\\mathbf{U}\\ is orthogonal too. Entry \\(i, j)\\ of \\{\mathbf{U}}^{\top}\mathbf{U}\\ is the dot product of columns \\i\\ and \\j\\ of \\\mathbf{U}\\, and those columns are \\\tilde{u}\_1 = (\frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}})\\, \\\tilde{u}\_2 = (0, 1, 0)\\ and \\\tilde{u}\_3 = (\frac{1}{\sqrt{2}}, 0, -\frac{1}{\sqrt{2}})\\:
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
> *Remark 29* (An SVD is not unique). An SVD is not unique ([Banerjee and Roy 2014, chap. 12](#ref-banerjee2014linear), Examples 12.2 and 12.3, p. 378). For any \\i \le r\\, multiplying column \\i\\ of both \\\mathbf{U}\\ and \\\mathbf{V}\\ by \\-1\\ gives another one. The singular values do not depend on which SVD is chosen ([Banerjee and Roy 2014, chap. 12](#ref-banerjee2014linear), pp. 371 and 378).
>
> For example, in [Example 45](#exm-svd), multiplying the first columns of \\\mathbf{U}\\ and \\\mathbf{V}\\ by \\-1\\ gives
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
> *Remark 30* (Counting zero singular values). Some texts, and R’s [`svd()`](https://rdrr.io/r/base/svd.html), also count \\\min(n, p) - r\\ singular values equal to \\0\\, so that every \\n \times p\\ matrix has \\\min(n, p)\\ singular values.
>
> For example, \\\mathbf{B} = \begin{bmatrix} 3 & 0 \\ 0 & 0 \end{bmatrix}\\ has rank \\r = 1\\. Taking \\\mathbf{U} = \mathbf{V} = \mathbf{I}\_2\\ and \\\mathbf{D} = \mathbf{B}\\ gives an SVD \\\mathbf{B} = \mathbf{I}\_2 \mathbf{B} {\mathbf{I}\_2}^{\top}\\, so by [Definition 54](#def-svd), \\\mathbf{B}\\ has one singular value, \\\sigma_1 = 3\\. R’s [`svd()`](https://rdrr.io/r/base/svd.html) reports \\\min(2, 2) = 2\\ singular values for \\\mathbf{B}\\: \\3\\ and \\0\\.

> **NOTE:**
>
> **Theorem 33 (An SVD gives an eigendecomposition of \\{\mathbf{A}}^{\top}\mathbf{A}\\)** Let \\\mathbf{A} = \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}\\ be a singular value decomposition ([Definition 54](#def-svd)) of an \\n \times p\\ matrix \\\mathbf{A}\\ with singular values \\\sigma_1, \ldots, \sigma_r\\. Then \\{\mathbf{A}}^{\top}\mathbf{A}\\ is symmetric ([Definition 39](#def-symmetric-matrix)), and
>
> \\ \underbrace{{\mathbf{A}}^{\top}\mathbf{A}}\_{p \times p} = \underbrace{\mathbf{V}}\_{p \times p}\\ \underbrace{\mathbf{\Lambda}}\_{p \times p}\\ \underbrace{{\mathbf{V}}^{\top}}\_{p \times p} \\
>
> where \\\mathbf{\Lambda} \stackrel{\text{def}}{=}{\mathbf{D}}^{\top}\mathbf{D}\\ is the \\p \times p\\ diagonal matrix whose \\i\\-th diagonal entry \\\lambda_i\\ is \\\sigma_i^2\\ for \\i \le r\\ and \\0\\ for \\i \> r\\. So \\\mathbf{V}\mathbf{\Lambda}{\mathbf{V}}^{\top}\\ is an eigendecomposition ([Definition 53](#def-eigendecomposition)) of \\{\mathbf{A}}^{\top}\mathbf{A}\\: column \\i\\ of \\\mathbf{V}\\ is an eigenvector of \\{\mathbf{A}}^{\top}\mathbf{A}\\ for the eigenvalue \\\lambda_i\\.

> **NOTE:**
>
> *Proof*. **Symmetry.**
>
> \\ \begin{aligned} {\mathopen{}\left({\mathbf{A}}^{\top}\mathbf{A}\right)\mathclose{}}^{\top} &= {\mathbf{A}}^{\top}\\{\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}}^{\top} && \text{(transpose of a product)} \\ &= {\mathbf{A}}^{\top}\mathbf{A} && \text{(transposing twice changes nothing)} \end{aligned} \\
>
> The first step is [Theorem 10](#thm-transpose-product), and the second follows from [Definition 16](#def-matrix-transpose), which swaps rows and columns, so swapping them again restores \\\mathbf{A}\\.
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
> **The eigenvectors.** Write \\\tilde{v}\_i\\ for column \\i\\ of \\\mathbf{V}\\, and \\\tilde{e}\_i\\ for the indicator vector ([Definition 9](#def-indicator-vector)) of length \\p\\. Column \\i\\ of \\{\mathbf{V}}^{\top}\mathbf{V} = \mathbf{I}\_p\\ says \\{\mathbf{V}}^{\top}\tilde{v}\_i = \tilde{e}\_i\\. Then
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\mathbf{A}\\\tilde{v}\_i &= \mathbf{V}\mathbf{\Lambda}\\{\mathbf{V}}^{\top}\tilde{v}\_i && \text{(the factorization)} \\ &= \mathbf{V}\mathbf{\Lambda}\\\tilde{e}\_i && \text{(} {\mathbf{V}}^{\top}\tilde{v}\_i = \tilde{e}\_i \text{)} \\ &= \mathbf{V}\\(\lambda_i\\\tilde{e}\_i) && \text{(column } i \text{ of the diagonal matrix } \mathbf{\Lambda} \text{)} \\ &= \lambda_i\\\mathbf{V}\tilde{e}\_i && \text{(move the scalar } \lambda_i \text{ to the front)} \\ &= \lambda_i\\\tilde{v}\_i && \text{(} \mathbf{V}\tilde{e}\_i \text{ is column } i \text{ of } \mathbf{V} \text{)} \end{aligned} \\
>
> and \\\tilde{v}\_i \neq \tilde{0}\\ because it has norm \\1\\.

> **NOTE:**
>
> **Example 46 (\\{\mathbf{A}}^{\top}\mathbf{A}\\ for the matrix of the SVD example)** For \\\mathbf{A}\\ in [Example 45](#exm-svd):
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\mathbf{A} &= \begin{bmatrix} 1 & 1 & 1 \\ 1 & -1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \begin{bmatrix} 1 + 1 + 1 & 1 - 1 + 1 \\ 1 - 1 + 1 & 1 + 1 + 1 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> [Theorem 33](#thm-svd-evd) says its eigenvalues are \\\sigma_1^2 = 4\\ and \\\sigma_2^2 = 2\\, with the columns of \\\mathbf{V}\\ as eigenvectors. Checking the first column, up to its factor \\\frac{1}{\sqrt{2}}\\:
>
> \\ \begin{aligned} \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ 1 \end{bmatrix} &= \begin{bmatrix} 3 \cdot 1 + 1 \cdot 1 \\ 1 \cdot 1 + 3 \cdot 1 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 3 + 1 \\ 1 + 3 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 4 \\ 4 \end{bmatrix} && \text{(add)} \\ &= 4 \begin{bmatrix} 1 \\ 1 \end{bmatrix} && \text{(factor out } 4 \text{)} \end{aligned} \\
>
> and the second:
>
> \\ \begin{aligned} \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix} &= \begin{bmatrix} 3 \cdot 1 + 1 \cdot(-1) \\ 1 \cdot 1 + 3 \cdot(-1) \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 3 - 1 \\ 1 - 3 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 2 \\ -2 \end{bmatrix} && \text{(add)} \\ &= 2 \begin{bmatrix} 1 \\ -1 \end{bmatrix} && \text{(factor out } 2 \text{)} \end{aligned} \\

> **NOTE:**
>
> *Remark 31* (Building an SVD from an eigendecomposition). [Theorem 33](#thm-svd-evd) matches Banerjee and Roy ([2014, chap. 12](#ref-banerjee2014linear), pp. 372-373), which works in the other direction: it constructs an SVD from a spectral decomposition of \\{\mathbf{A}}^{\top}\mathbf{A}\\ and sets \\\sigma_i = \sqrt{\lambda_i}\\.
>
> For example, in [Example 46](#exm-svd-evd) the eigenvalues of \\{\mathbf{A}}^{\top}\mathbf{A}\\ are \\4\\ and \\2\\, and \\\sqrt{4} = 2\\ and \\\sqrt{2}\\ are the singular values \\\sigma_1\\ and \\\sigma_2\\ of \\\mathbf{A}\\ from [Example 45](#exm-svd).

## 7 Definite Matrices

> **NOTE:**
>
> **Definition 55 (Positive semidefinite matrix)** A \\p \times p\\ matrix \\\mathbf{A}\\ is **positive semidefinite** if it satisfies both conditions:
>
> - \\\mathbf{A}\\ is symmetric ([Definition 39](#def-symmetric-matrix)).
> - Every quadratic form ([Definition 47](#def-quadratic-form)) in \\\mathbf{A}\\ is non-negative: \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\ge 0\\ for every vector \\\tilde{x}\\ of length \\p\\.

> **NOTE:**
>
> **Example 47 (A positive semidefinite matrix)** Let \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\, which is symmetric. For any \\\tilde{x}= (x_1, x_2)\\:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{B}\tilde{x} &= x_1^2 + x_1 x_2 + x_2 x_1 + x_2^2 && \text{(multiply out the quadratic form)} \\ &= (x_1 + x_2)^2 && \text{(complete the square)} \\ &\ge 0 && \text{(a square is non-negative)} \end{aligned} \\
>
> So \\\mathbf{B}\\ is positive semidefinite.

> **NOTE:**
>
> **Definition 56 (Positive definite matrix)** A \\p \times p\\ matrix \\\mathbf{A}\\ is **positive definite** if it satisfies both conditions:
>
> - \\\mathbf{A}\\ is symmetric ([Definition 39](#def-symmetric-matrix)).
> - Every quadratic form ([Definition 47](#def-quadratic-form)) in \\\mathbf{A}\\ at a nonzero vector is positive: \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\> 0\\ for every vector \\\tilde{x}\neq \tilde{0}\\ of length \\p\\.

> **NOTE:**
>
> **Example 48 (Positive definite, semidefinite, and neither)**  
>
> - The identity matrix \\\mathbf{I}\_p\\ ([Definition 38](#def-identity-matrix)) is positive definite: \\{\tilde{x}}^{\top}\mathbf{I}\_p\tilde{x}= \sum\_{i=1}^p x_i^2\\, which is positive unless every \\x_i\\ is \\0\\.
> - \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ from [Example 47](#exm-positive-semidefinite) is positive semidefinite but not positive definite: at \\\tilde{x}= (1, -1) \neq \tilde{0}\\, \\{\tilde{x}}^{\top}\mathbf{B}\tilde{x}= (1 - 1)^2 = 0\\.
> - \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\ is symmetric but not positive semidefinite: at \\\tilde{x}= (1, -1)\\, \\{\tilde{x}}^{\top}\mathbf{D}\tilde{x}= 1 - 2 - 2 + 1 = -2 \< 0\\.

> **NOTE:**
>
> *Remark 32* (Why the definition requires symmetry). A positive definite matrix is positive semidefinite ([Definition 55](#def-positive-semidefinite)): \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\> 0\\ for every \\\tilde{x}\neq \tilde{0}\\, and \\{\tilde{0}}^{\top}\mathbf{A}\tilde{0}= 0\\. For example, \\\mathbf{I}\_p\\ in [Example 48](#exm-positive-definite) is both.
>
> Some sources drop the symmetry condition from both definitions. These notes keep it, because without it a matrix can pass the quadratic-form condition and still have no real eigenvalues ([Definition 52](#def-eigenvalue)). For example, \\\mathbf{C} = \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}\\ is not symmetric, and for any \\\tilde{x}= (x_1, x_2)\\:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{C}\tilde{x} &= x_1 (x_1 + x_2) + x_2 (-x_1 + x_2) && \text{(multiply out the quadratic form)} \\ &= x_1^2 + x_1 x_2 - x_2 x_1 + x_2^2 && \text{(distribute)} \\ &= x_1^2 + x_2^2 && \text{(the middle terms cancel)} \end{aligned} \\
>
> which is positive for every \\\tilde{x}\neq \tilde{0}\\. But suppose \\\mathbf{C}\tilde{v} = \lambda\tilde{v}\\ for a real number \\\lambda\\. Matching entries gives \\v_1 + v_2 = \lambda v_1\\ and \\-v_1 + v_2 = \lambda v_2\\, so \\v_2 = (\lambda - 1)\\ v_1\\ and \\-v_1 = (\lambda - 1)\\ v_2\\. Substituting the first into the second gives \\-v_1 = (\lambda - 1)^2 v_1\\, so \\\mathopen{}\left(1 + (\lambda - 1)^2\right)\mathclose{} v_1 = 0\\. Since \\1 + (\lambda - 1)^2 \> 0\\, \\v_1 = 0\\, and then \\v_2 = (\lambda - 1)\\ v_1 = 0\\. So no real \\\lambda\\ has an eigenvector \\\tilde{v} \neq \tilde{0}\\.

See also <https://en.wikipedia.org/wiki/Definite_matrix>.

> **NOTE:**
>
> **Theorem 34 (Definiteness and eigenvalues)** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric matrix with real entries, with eigendecomposition \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([Definition 53](#def-eigendecomposition)) and eigenvalues \\\lambda_1, \ldots, \lambda_p\\ on the diagonal of \\\mathbf{\Lambda}\\. Then:
>
> - \\\mathbf{A}\\ is positive semidefinite ([Definition 55](#def-positive-semidefinite)) if and only if every \\\lambda_i \ge 0\\.
> - \\\mathbf{A}\\ is positive definite ([Definition 56](#def-positive-definite)) if and only if every \\\lambda_i \> 0\\.

> **NOTE:**
>
> *Proof*. For any vector \\\tilde{x}\\ of length \\p\\, let \\\tilde{y} = {\mathbf{Q}}^{\top}\tilde{x}\\. Then:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{A}\tilde{x} &= {\tilde{x}}^{\top}\mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\tilde{x} && \text{(substitute the eigendecomposition)} \\ &= {\mathopen{}\left({\mathbf{Q}}^{\top}\tilde{x}\right)\mathclose{}}^{\top}\mathbf{\Lambda}\mathopen{}\left({\mathbf{Q}}^{\top}\tilde{x}\right)\mathclose{} && \text{(transpose of a product)} \\ &= {\tilde{y}}^{\top}\mathbf{\Lambda}\tilde{y} && \text{(definition of } \tilde{y} \text{)} \\ &= \sum\_{i=1}^p \lambda_i y_i^2 && \text{(} \mathbf{\Lambda} \text{ is diagonal)} \end{aligned} \\
>
> The second step is [Theorem 10](#thm-transpose-product). Also, \\\tilde{x}= \tilde{0}\\ exactly when \\\tilde{y} = \tilde{0}\\: \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\ for an orthogonal matrix ([Definition 46](#def-orthogonal-matrix)), so \\\tilde{x}= \mathbf{Q}\tilde{y}\\.
>
> *If every \\\lambda_i \ge 0\\*, then every term \\\lambda_i y_i^2 \ge 0\\, so \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\ge 0\\. *If every \\\lambda_i \> 0\\* and \\\tilde{x}\neq \tilde{0}\\, then some \\y_i \neq 0\\, so at least one term is positive and the rest are non-negative, and \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\> 0\\.
>
> *Conversely*, take \\\tilde{x}= \tilde{q}\_i\\, column \\i\\ of \\\mathbf{Q}\\, which is not \\\tilde{0}\\ because it has norm 1. Then \\\tilde{y} = {\mathbf{Q}}^{\top}\tilde{q}\_i\\ is column \\i\\ of \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\, so \\y_i = 1\\ and every other entry of \\\tilde{y}\\ is \\0\\, and the display gives \\{\tilde{q}\_i}^{\top}\mathbf{A}\tilde{q}\_i = \lambda_i\\. So if \\\mathbf{A}\\ is positive semidefinite, \\\lambda_i \ge 0\\, and if \\\mathbf{A}\\ is positive definite, \\\lambda_i \> 0\\.

> **NOTE:**
>
> **Example 49 (Reading definiteness off the eigenvalues)**  
>
> - \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ has eigenvalues \\3\\ and \\1\\ ([Example 42](#exm-eigenvalue)), both positive, so it is positive definite.
> - \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ has eigenvalues \\2\\, for the eigenvector \\(1, 1)\\, and \\0\\, for the eigenvector \\(1, -1)\\, so it is positive semidefinite but not positive definite, as [Example 48](#exm-positive-definite) found directly.

> **NOTE:**
>
> **Theorem 35 (A positive definite matrix has a positive definite inverse)** Let \\\mathbf{A}\\ be a \\p \times p\\ positive definite matrix ([Definition 56](#def-positive-definite)) with real entries, with eigendecomposition \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([Definition 53](#def-eigendecomposition)) and eigenvalues \\\lambda_1, \ldots, \lambda_p\\. Then \\\mathbf{A}\\ is invertible ([Definition 42](#def-invertible-matrix)),
>
> \\ \mathbf{A}^{-1} = \mathbf{Q}\\\mathbf{\Lambda}^{-1}\\{\mathbf{Q}}^{\top}, \qquad \mathbf{\Lambda}^{-1} = \begin{bmatrix} 1/\lambda_1 & \cdots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \cdots & 1/\lambda_p \end{bmatrix}, \\
>
> and \\\mathbf{A}^{-1}\\ is positive definite.

> **NOTE:**
>
> *Proof*. By [Theorem 34](#thm-definite-eigenvalues), every \\\lambda_i \> 0\\, so \\\mathbf{\Lambda}^{-1}\\ is well defined, and multiplying the two diagonal matrices entry by entry gives \\\mathbf{\Lambda}\mathbf{\Lambda}^{-1} = \mathbf{\Lambda}^{-1}\mathbf{\Lambda} = \mathbf{I}\_p\\. Write \\\mathbf{B} = \mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top}\\. Then:
>
> \\ \begin{aligned} \mathbf{A}\mathbf{B} &= \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} && \text{(substitute)} \\ &= \mathbf{Q}\mathbf{\Lambda}\mathbf{I}\_p\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} && \text{(} {\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p \text{)} \\ &= \mathbf{Q}\mathbf{\Lambda}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} && \text{(identity matrix)} \\ &= \mathbf{Q}{\mathbf{Q}}^{\top} && \text{(} \mathbf{\Lambda}\mathbf{\Lambda}^{-1} = \mathbf{I}\_p \text{)} \\ &= \mathbf{I}\_p && \text{(} \mathbf{Q} \text{ is orthogonal)} \end{aligned} \\
>
> The same steps, with \\\mathbf{\Lambda}^{-1}\\ and \\\mathbf{\Lambda}\\ swapped, give \\\mathbf{B}\mathbf{A} = \mathbf{I}\_p\\, so \\\mathbf{B} = \mathbf{A}^{-1}\\ ([Definition 41](#def-matrix-inverse)). The steps with \\\mathbf{Q}\\ use [Definition 46](#def-orthogonal-matrix), whose remark records that \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\ too, and the identity step uses [Theorem 22](#thm-identity).
>
> \\\mathbf{A}^{-1}\\ is symmetric by [Corollary 1](#cor-inverse-symmetric). For \\\tilde{x}\neq \tilde{0}\\, let \\\tilde{y} = {\mathbf{Q}}^{\top}\tilde{x}\\, which is not \\\tilde{0}\\ because \\\tilde{x}= \mathbf{Q}\tilde{y}\\. As in the proof of [Theorem 34](#thm-definite-eigenvalues):
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{A}^{-1}\tilde{x} &= {\tilde{y}}^{\top}\mathbf{\Lambda}^{-1}\tilde{y} && \text{(substitute } \mathbf{A}^{-1} = \mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} \text{)} \\ &= \sum\_{i=1}^p \frac{y_i^2}{\lambda_i} && \text{(} \mathbf{\Lambda}^{-1} \text{ is diagonal)} \\ &\> 0 && \text{(each } \lambda_i \> 0 \text{, and some } y_i \neq 0 \text{)} \end{aligned} \\
>
> So \\\mathbf{A}^{-1}\\ is positive definite.

> **NOTE:**
>
> **Example 50 (Inverting a positive definite matrix)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, [Example 44](#exm-spectral) gives \\\mathbf{Q} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}\\ and eigenvalues \\3\\ and \\1\\, so:
>
> \\ \begin{aligned} \mathbf{A}^{-1} &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 1/3 & 0 \\ 0 & 1 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(substitute; } \mathbf{Q} \text{ is symmetric)} \\ &= \frac{1}{2} \begin{bmatrix} 1/3 & 1 \\ 1/3 & -1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(multiply the first two matrices)} \\ &= \frac{1}{2} \begin{bmatrix} 4/3 & -2/3 \\ -2/3 & 4/3 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{3} \begin{bmatrix} 2 & -1 \\ -1 & 2 \end{bmatrix} && \text{(simplify)} \end{aligned} \\
>
> Multiplying out, \\\begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \cdot\frac{1}{3}\begin{bmatrix} 2 & -1 \\ -1 & 2 \end{bmatrix} = \frac{1}{3}\begin{bmatrix} 3 & 0 \\ 0 & 3 \end{bmatrix} = \mathbf{I}\_2\\.

## 8 Determinants

> **NOTE:**
>
> **Definition 57 (Determinant)** The **determinant** of a \\p \times p\\ matrix \\\mathbf{A}\\ with entries \\a\_{ij}\\, written \\\det(\mathbf{A})\\ or \\\mathopen{}\left\|\mathbf{A}\right\|\mathclose{}\\, is the number defined recursively in \\p\\:
>
> - For \\p = 1\\, \\\det(\mathbf{A}) = a\_{11}\\.
> - For \\p \ge 2\\, \\ \det(\mathbf{A}) = \sum\_{j=1}^p (-1)^{1+j}\\ a\_{1j} \det\mathopen{}\left(\mathbf{A}\_{(1j)}\right)\mathclose{}, \\ where \\\mathbf{A}\_{(1j)}\\ is the \\(p-1) \times (p-1)\\ matrix left after deleting row \\1\\ and column \\j\\ of \\\mathbf{A}\\.

> **NOTE:**
>
> **Example 51 (Determinant of a \\2 \times 2\\ matrix)** For \\\mathbf{A} = \begin{bmatrix} a & b \\ c & d \end{bmatrix}\\, deleting row 1 and column 1 leaves \\\begin{bmatrix} d \end{bmatrix}\\, and deleting row 1 and column 2 leaves \\\begin{bmatrix} c \end{bmatrix}\\. So:
>
> \\ \begin{aligned} \det(\mathbf{A}) &= (-1)^{1+1}\\ a \det\mathopen{}\left(\begin{bmatrix} d \end{bmatrix}\right)\mathclose{} + (-1)^{1+2}\\ b \det\mathopen{}\left(\begin{bmatrix} c \end{bmatrix}\right)\mathclose{} && \text{(definition, } p = 2 \text{)} \\ &= a d - b c && \text{(definition, } p = 1 \text{)} \end{aligned} \\
>
> For example, \\\det\mathopen{}\left(\begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\right)\mathclose{} = 2 \cdot 2 - 1 \cdot 1 = 3\\.

> **NOTE:**
>
> *Remark 33* (Cofactor expansion). The recursive formula in [Definition 57](#def-determinant) is the *cofactor expansion* along the first row. Other sources define the determinant as a sum over all orderings of the columns and derive this expansion from it; the two definitions agree ([Banerjee and Roy 2014](#ref-banerjee2014linear)).
>
> Each ordering picks one entry from each row, from the column that the ordering assigns to that row, and multiplies them. Its sign is \\+1\\ if the ordering takes an even number of swaps of two columns to reach from \\(1, 2, \ldots, p)\\, and \\-1\\ if it takes an odd number.
>
> For \\p = 2\\, the columns have two orderings. The ordering \\(1, 2)\\ keeps each column in place, picks the entries \\a\_{11}\\ and \\a\_{22}\\, and has sign \\+1\\. The ordering \\(2, 1)\\ swaps the two columns, picks the entries \\a\_{12}\\ and \\a\_{21}\\, and has sign \\-1\\. The sum \\a\_{11} a\_{22} - a\_{12} a\_{21}\\ is the value \\a d - b c\\ from [Example 51](#exm-determinant).

See also <https://en.wikipedia.org/wiki/Determinant>.

> **NOTE:**
>
> **Theorem 36 (Determinant of a diagonal matrix)** The determinant ([Definition 57](#def-determinant)) of a \\p \times p\\ diagonal matrix ([Definition 40](#def-diagonal-matrix)) is the product of its diagonal entries:
>
> \\ \det\mathopen{}\left( \begin{bmatrix} d_1 & \cdots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \cdots & d_p \end{bmatrix} \right)\mathclose{} = \prod\_{i=1}^p d_i \\

> **NOTE:**
>
> *Proof*. By induction on \\p\\. For \\p = 1\\, the matrix is \\\begin{bmatrix} d_1 \end{bmatrix}\\, and its determinant is \\d_1\\ by definition.
>
> For \\p \ge 2\\, suppose the result holds for \\(p-1) \times (p-1)\\ diagonal matrices, and let \\\mathbf{D}\\ be \\p \times p\\ and diagonal. Row 1 of \\\mathbf{D}\\ is \\(d_1, 0, \ldots, 0)\\, so only the \\j = 1\\ term of the definition can be nonzero, and deleting row 1 and column 1 of \\\mathbf{D}\\ leaves the diagonal matrix with diagonal entries \\d_2, \ldots, d_p\\:
>
> \\ \begin{aligned} \det(\mathbf{D}) &= (-1)^{1+1}\\ d_1 \det\mathopen{}\left(\mathbf{D}\_{(11)}\right)\mathclose{} + \sum\_{j=2}^p (-1)^{1+j} \cdot 0 \cdot\det\mathopen{}\left(\mathbf{D}\_{(1j)}\right)\mathclose{} && \text{(definition)} \\ &= d_1 \det\mathopen{}\left(\mathbf{D}\_{(11)}\right)\mathclose{} && \text{(drop the zero terms)} \\ &= d_1 \prod\_{i=2}^p d_i && \text{(induction hypothesis)} \\ &= \prod\_{i=1}^p d_i && \text{(combine)} \end{aligned} \\

> **NOTE:**
>
> **Example 52 (Determinant of a scaled identity matrix)** For a number \\c\\, \\c\\\mathbf{I}\_p\\ is diagonal with every diagonal entry equal to \\c\\, so \\\det(c\\\mathbf{I}\_p) = c^p\\. In particular, \\\det(\mathbf{I}\_p) = 1\\.

> **NOTE:**
>
> **Theorem 37 (Determinant of a product)** For \\p \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\,
>
> \\ \det(\mathbf{A}\mathbf{B}) = \det(\mathbf{A}) \det(\mathbf{B}). \\

> **NOTE:**
>
> **Example 53 (Checking the product rule)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ and \\\mathbf{B} = \begin{bmatrix} 1 & 0 \\ 3 & 1 \end{bmatrix}\\, [Example 51](#exm-determinant) gives \\\det(\mathbf{A}) = 2 \cdot 1 - 1 \cdot 0 = 2\\ and \\\det(\mathbf{B}) = 1 \cdot 1 - 0 \cdot 3 = 1\\. The product is
>
> \\ \mathbf{A}\mathbf{B} = \begin{bmatrix} 2 \cdot 1 + 1 \cdot 3 & 2 \cdot 0 + 1 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 3 & 0 \cdot 0 + 1 \cdot 1 \end{bmatrix} = \begin{bmatrix} 5 & 1 \\ 3 & 1 \end{bmatrix}, \\
>
> with \\\det(\mathbf{A}\mathbf{B}) = 5 \cdot 1 - 1 \cdot 3 = 2 = \det(\mathbf{A})\det(\mathbf{B})\\.

> **NOTE:**
>
> *Remark 34* (An example is not a proof). [Example 53](#exm-det-product) checks [Theorem 37](#thm-det-product) for one pair of \\2 \times 2\\ matrices, which shows the theorem holds there but does not prove it for every pair. The proof needs properties of the determinant that these notes don’t develop; see Banerjee and Roy ([2014](#ref-banerjee2014linear)).

See also <https://en.wikipedia.org/wiki/Determinant>.

> **NOTE:**
>
> **Theorem 38 (The determinant of a symmetric matrix is the product of its eigenvalues)** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric matrix with real entries, with eigendecomposition \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([Definition 53](#def-eigendecomposition)) and eigenvalues \\\lambda_1, \ldots, \lambda_p\\ on the diagonal of \\\mathbf{\Lambda}\\. Then
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
> The product steps are [Theorem 37](#thm-det-product), the orthogonality step is [Definition 46](#def-orthogonal-matrix), and the identity and diagonal steps are [Theorem 36](#thm-det-diagonal) and [Example 52](#exm-det-diagonal).

> **NOTE:**
>
> **Corollary 2 (A positive definite matrix has a positive determinant)** If \\\mathbf{A}\\ is positive definite ([Definition 56](#def-positive-definite)), then \\\det(\mathbf{A}) \> 0\\.

> **NOTE:**
>
> *Proof*. By [Theorem 34](#thm-definite-eigenvalues), every eigenvalue of \\\mathbf{A}\\ is positive, so their product, which is \\\det(\mathbf{A})\\ by [Theorem 38](#thm-det-eigenvalues), is positive.

> **NOTE:**
>
> **Example 54 (Two ways to the same determinant)** \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ has eigenvalues \\3\\ and \\1\\ ([Example 42](#exm-eigenvalue)), so [Theorem 38](#thm-det-eigenvalues) gives \\\det(\mathbf{A}) = 3 \cdot 1 = 3\\, matching \\2 \cdot 2 - 1 \cdot 1 = 3\\ from [Example 51](#exm-determinant).

## 9 Design Matrix

> **NOTE:**
>
> **Definition 58 (Design matrix)** In a regression model with \\n\\ observations and \\p\\ predictors, the **design matrix** (or *model matrix*) \\\mathbf{X}\\ is the \\n \times p\\ matrix whose \\i\\-th row is the covariate vector \\{\tilde{x}\_i}^{\top}\\ for observation \\i\\:
>
> \\ \mathbf{X}= \begin{bmatrix} {\tilde{x}\_1}^{\top} \\ {\tilde{x}\_2}^{\top} \\ \vdots \\ {\tilde{x}\_n}^{\top} \end{bmatrix} = \begin{bmatrix} x\_{11} & x\_{12} & \cdots & x\_{1p} \\ x\_{21} & x\_{22} & \cdots & x\_{2p} \\ \vdots & \vdots & \ddots & \vdots \\ x\_{n1} & x\_{n2} & \cdots & x\_{np} \end{bmatrix} \\

> **NOTE:**
>
> *Remark 35* (Products with the design matrix). The product \\\mathbf{X}\tilde{\beta}\\ collects the values \\{\tilde{x}\_i}^{\top}\tilde{\beta}\\ for all \\n\\ observations into a single \\n \times 1\\ vector:
>
> \\ \mathbf{X}\tilde{\beta}= \begin{bmatrix} {\tilde{x}\_1}^{\top}\tilde{\beta}\\ \vdots \\ {\tilde{x}\_n}^{\top}\tilde{\beta} \end{bmatrix} \\
>
> For example, take the rank-\\2\\ matrix from [Example 9](#exm-rank) as \\\mathbf{X}\\, with \\n = 3\\ observations and \\p = 2\\ columns: an intercept column and one covariate. With \\\tilde{\beta}= (1, 2)\\,
>
> \\ \mathbf{X}\tilde{\beta} = \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ 2 \end{bmatrix} = \begin{bmatrix} 3 \\ 5 \\ 7 \end{bmatrix}. \\
>
> The matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ is \\p \times p\\ and symmetric, since \\{({\mathbf{X}}^{\top}\mathbf{X})}^{\top} = {\mathbf{X}}^{\top}\\{({\mathbf{X}}^{\top})}^{\top} = {\mathbf{X}}^{\top}\mathbf{X}\\ ([Theorem 10](#thm-transpose-product)). When \\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible, it appears in the OLS estimator \\\hat{\tilde{\beta}} = ({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\tilde{y}\\.

> **NOTE:**
>
> **Theorem 39 (\\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible when \\\mathbf{X}\\ has full column rank)** If \\\mathbf{X}\\ is an \\n \times p\\ matrix with \\\operatorname{rank}(\mathbf{X}) = p\\ ([Definition 26](#def-rank)), then the \\p \times p\\ matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible.

> **NOTE:**
>
> *Proof*. Let \\\tilde{c}\\ be a vector of length \\p\\ with \\{\mathbf{X}}^{\top}\mathbf{X}\tilde{c} = \tilde{0}\\. Then
>
> \\ \begin{aligned} 0 &= {\tilde{c}}^{\top}\\{\mathbf{X}}^{\top}\mathbf{X}\tilde{c} && \text{(multiply } {\mathbf{X}}^{\top}\mathbf{X}\tilde{c} = \tilde{0}\text{ on the left by } {\tilde{c}}^{\top} \text{)} \\ &= {\mathopen{}\left(\mathbf{X}\tilde{c}\right)\mathclose{}}^{\top}\mathopen{}\left(\mathbf{X}\tilde{c}\right)\mathclose{} && \text{(transpose of a product)} \\ &= \mathopen{}\left\lVert\mathbf{X}\tilde{c}\right\rVert\mathclose{}^2 && \text{(definition of the Euclidean norm)} \end{aligned} \\
>
> so \\\mathbf{X}\tilde{c} = \tilde{0}\\. Because \\\mathbf{X}\tilde{c} = c_1 (\text{column } 1) + \cdots + c_p (\text{column } p)\\ and the columns of \\\mathbf{X}\\ are linearly independent, \\\tilde{c} = \tilde{0}\\. So the only solution of \\{\mathbf{X}}^{\top}\mathbf{X}\tilde{c} = \tilde{0}\\ is \\\tilde{c} = \tilde{0}\\, which says that the columns of the square matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ are linearly independent, and a square matrix with linearly independent columns is invertible ([Banerjee and Roy 2014](#ref-banerjee2014linear), Corollary 5.7, p. 143).

> **NOTE:**
>
> **Example 55 (Inverting \\{\mathbf{X}}^{\top}\mathbf{X}\\)** For the rank-\\2\\ matrix \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ from [Example 9](#exm-rank):
>
> \\ {\mathbf{X}}^{\top}\mathbf{X}= \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}, \qquad \mathopen{}\left({\mathbf{X}}^{\top}\mathbf{X}\right)^{-1}\mathclose{} = \frac{1}{6}\begin{bmatrix} 14 & -6 \\ -6 & 3 \end{bmatrix}, \\
>
> and multiplying the two out gives \\\mathbf{I}\_2\\.

> **NOTE:**
>
> **Definition 59 (Hat matrix)** For an \\n \times p\\ design matrix \\\mathbf{X}\\ ([Definition 58](#def-design-matrix)) with \\\operatorname{rank}(\mathbf{X}) = p\\, the **hat matrix** is the \\n \times n\\ matrix
>
> \\ \underbrace{\mathbf{H}}\_{n \times n} \stackrel{\text{def}}{=} \underbrace{\mathbf{X}}\_{n \times p} \underbrace{({\mathbf{X}}^{\top}\mathbf{X})^{-1}}\_{p \times p} \underbrace{{\mathbf{X}}^{\top}}\_{p \times n} \\
>
> The inverse exists by [Theorem 39](#thm-gram-invertible).

> **NOTE:**
>
> **Example 56 (The hat matrix of an intercept-only model)** With \\n = 2\\ observations and only an intercept, \\\mathbf{X}= \begin{bmatrix} 1 \\ 1 \end{bmatrix}\\ (\\2 \times 1\\, rank \\1\\), so \\{\mathbf{X}}^{\top}\mathbf{X}= 2\\ and
>
> \\ \mathbf{H} = \begin{bmatrix} 1 \\ 1 \end{bmatrix} \cdot\frac{1}{2} \cdot\begin{bmatrix} 1 & 1 \end{bmatrix} = \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}. \\
>
> Then \\\mathbf{H}\tilde{y}= (\bar{y}, \bar{y})\\, where \\\bar{y} = (y_1 + y_2)/2\\: the fitted values of an intercept-only model are the sample mean.

> **NOTE:**
>
> **Theorem 40 (Hat matrix is a projection matrix)** If \\\mathbf{X}\\ is an \\n \times p\\ design matrix with \\\operatorname{rank}(\mathbf{X}) = p\\, then the hat matrix \\\mathbf{H}\\ ([Definition 59](#def-hat-matrix)) is an orthogonal projection matrix ([Definition 44](#def-projection-matrix)).

> **NOTE:**
>
> *Proof*. We verify symmetry and idempotency. Both use that \\{\mathbf{X}}^{\top}\mathbf{X}\\ is symmetric, \\{\mathopen{}\left({\mathbf{X}}^{\top}\mathbf{X}\right)\mathclose{}}^{\top} = {\mathbf{X}}^{\top}\\{\mathopen{}\left({\mathbf{X}}^{\top}\right)\mathclose{}}^{\top} = {\mathbf{X}}^{\top}\mathbf{X}\\ ([Theorem 10](#thm-transpose-product)), so its inverse is symmetric too ([Corollary 1](#cor-inverse-symmetric)).
>
> **Symmetry:** \\\begin{aligned} {\mathbf{H}}^{\top} &= {\left(\mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\right)}^{\top} && \text{(definition of } \mathbf{H} \text{)} \\ &= {({\mathbf{X}}^{\top})}^{\top} \cdot {\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1}\right)}^{\top} \cdot {\mathbf{X}}^{\top} && \text{(transpose of a product, twice)} \\ &= \mathbf{X}\cdot {\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1}\right)}^{\top} \cdot {\mathbf{X}}^{\top} && \text{(transposing twice changes nothing)} \\ &= \mathbf{X}\cdot ({\mathbf{X}}^{\top}\mathbf{X})^{-1} \cdot {\mathbf{X}}^{\top} && \text{(the inverse of a symmetric matrix is symmetric)} \\ &= \mathbf{H} && \text{(definition of } \mathbf{H} \text{)} \end{aligned}\\
>
> **Idempotency:** \\\begin{aligned} \mathbf{H}^2 &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} \cdot \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(definition of } \mathbf{H} \text{)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}({\mathbf{X}}^{\top}\mathbf{X})({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(regroup; matrix multiplication is associative)} \\ &= \mathbf{X}\\\mathbf{I}\_p\\({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(definition of the inverse)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(identity matrix)} \\ &= \mathbf{H} && \text{(definition of } \mathbf{H} \text{)} \end{aligned}\\

> **NOTE:**
>
> **Example 57 (The intercept-only hat matrix is a projection)** For \\\mathbf{H} = \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}\\ from [Example 56](#exm-hat-matrix), \\{\mathbf{H}}^{\top} = \mathbf{H}\\, and
>
> \\ \mathbf{H}^2 = \begin{bmatrix} 0.5 \cdot 0.5 + 0.5 \cdot 0.5 & 0.5 \cdot 0.5 + 0.5 \cdot 0.5 \\ 0.5 \cdot 0.5 + 0.5 \cdot 0.5 & 0.5 \cdot 0.5 + 0.5 \cdot 0.5 \end{bmatrix} = \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix} = \mathbf{H}, \\
>
> as [Theorem 40](#thm-hat-matrix) says.

> **NOTE:**
>
> *Remark 36* (Why it is called the hat matrix). The hat matrix gives the fitted values in linear regression: \\\hat{\tilde{y}} = \mathbf{X}\hat{\tilde{\beta}} = \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\tilde{y}= \mathbf{H}\tilde{y}\\. Multiplying by \\\mathbf{H}\\ “puts a hat” on \\\tilde{y}\\, which is where the name comes from. In [Example 56](#exm-hat-matrix), \\\mathbf{H}\\ puts a hat on \\\tilde{y}\\ by replacing each \\y_i\\ with the sample mean \\\bar{y}\\.

## 10 Further reading

- Strang ([2023](#ref-strang2023linear)) is a widely used first course in linear algebra. It covers vectors, elimination, vector spaces, orthogonality, determinants, eigenvalues, and the singular value decomposition.
- Axler ([2024](#ref-axler2024linear)) is a proof-based treatment centered on vector spaces and linear maps. A free electronic version is available from the publisher.
- Fieller ([2016](#ref-fieller2018basics))
- Banerjee and Roy ([2014](#ref-banerjee2014linear))
- Searle and Khuri ([2017](#ref-searle2017matrix))

## References

Axler, Sheldon. 2024. *Linear Algebra Done Right*. 4th ed. Undergraduate Texts in Mathematics. Springer. <https://doi.org/10.1007/978-3-031-41026-0>.

Banerjee, Sudipto, and Anindya Roy. 2014. *Linear Algebra and Matrix Analysis for Statistics*. Vol. 181. Crc Press Boca Raton. <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>.

Dobson, Annette J, and Adrian G Barnett. 2018. *An Introduction to Generalized Linear Models*. 4th ed. CRC press. <https://doi.org/10.1201/9781315182780>.

Fieller, Nick. 2016. *Basics of Matrix Algebra for Statistics with R*. Chapman; Hall/CRC. <https://doi.org/10.1201/9781315370200>.

Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. 2016. *Deep Learning*. MIT Press. <https://www.deeplearningbook.org/>.

Hutchinson, Brian. n.d. *DATA 471/571 (Machine Learning) and CSCI 481/581 (Deep Learning) Video Lectures*. Western Washington University. Accessed September 28, 2026. <https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/>.

Kaplan, Daniel. 2022. *MOSAIC Calculus*. Www.mosaic-web.org. [www.mosaic-web.org](https://www.mosaic-web.org).

Searle, Shayle R, and Andre I Khuri. 2017. *Matrix Algebra Useful for Statistics*. John Wiley & Sons.

Strang, Gilbert. 2023. *Introduction to Linear Algebra*. 6th ed. Wellesley-Cambridge Press. <https://math.mit.edu/~gs/linearalgebra/>.

Zhou, Hua. 2024. *Vector Space*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/04-vecsp/04-vecsp.html>.

Back to top
