# Vectors

Code

Published

Last modified: 2026-10-10 10:39:03 (PDT)

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
> **Example 4 (Adding two vectors)** \\ \begin{aligned} \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix} + \begin{bmatrix} 4 \\ 5 \\ 6 \end{bmatrix} &= \begin{bmatrix} 1 + 4 \\ 2 + 5 \\ 3 + 6 \end{bmatrix} \\ &= \begin{bmatrix} 5 \\ 7 \\ 9 \end{bmatrix} \end{aligned} \\

> **NOTE:**
>
> **Definition 7 (Dot product)** For any two real-valued vectors \\\tilde{x}= (x_1, \ldots, x_p)\\ and \\\tilde{y}= (y_1, \ldots, y_p)\\ of the same length \\p\\, the **dot product** of \\\tilde{x}\\ and \\\tilde{y}\\ is:
>
> \\\tilde{x}\cdot \tilde{y}= \tilde{x}^{\top} \tilde{y}\stackrel{\text{def}}{=}\sum\_{i=1}^px_i y_i \tag{1}\\

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
> \\c_1 a_1 + \cdots + c_k a_k = \sum\_{i=1}^{k} c_i a_i\\
>
> A linear combination of vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ of the same length is defined entry by entry: entry \\j\\ of \\\sum\_{i=1}^{k} c_i \tilde{v}\_i\\ is the linear combination of the \\j\\th entries of \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ with the same coefficients. For example, the linear combination of \\{(1, 0)}^{\top}\\ and \\{(0, 1)}^{\top}\\ with coefficients \\2\\ and \\3\\ is \\{(2 \cdot 1 + 3 \cdot 0,\\ 2 \cdot 0 + 3 \cdot 1)}^{\top} = {(2, 3)}^{\top}\\.

> **NOTE:**
>
> *Remark 3* (The dot product is a linear combination). The dot product \\\tilde{x}\cdot \tilde{y}\\ is a linear combination ([Definition 8](#def-linear-combination)) of the entries of \\\tilde{y}\\, with coefficients \\x_1, \ldots, x_p\\. In [Example 5](#exm-dot-product), \\\tilde{x}\cdot \tilde{y}= 1 \cdot 4 + 2 \cdot 5 + 3 \cdot 6\\ is the linear combination of \\4\\, \\5\\, and \\6\\ with coefficients \\1\\, \\2\\, and \\3\\.
>
> The dot product is also the standard *inner product* on \\\mathbb{R}^p\\; “inner product” is the general notion ([Definition 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#def-inner-product), later in these notes), of which the dot product is one example.

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
> *Remark 4* (The zero vector is the additive identity). Adding the zero vector to a vector leaves it unchanged ([Definition 6](#def-vector-addition)): \\\tilde{x}+ \tilde{0}= \tilde{x}\\ for any vector \\\tilde{x}\\ of the same length, so \\\tilde{0}\\ is the [identity element](algebra.llms.md#def-identity-element) for vector addition. For example,
>
> \\ \begin{aligned} (2, -1) + (0, 0) &= (2 + 0, -1 + 0) \\ &= (2, -1). \end{aligned} \\

> **NOTE:**
>
> **Definition 10 (Mean (average, sample mean))** The **mean** (or **average**) of \\n\\ numbers \\y_1, \ldots, y_n\\ is their [sum](algebra.llms.md#def-summation) divided by how many there are:
>
> \\\bar{y} \stackrel{\text{def}}{=}\frac{1}{n}\sum\_{i=1}^ny_i\\
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
> *Remark 5* (The ones vector sums the entries). The dot product ([Definition 7](#def-dot-product)) of \\\tilde{1}\\ with \\\tilde{x}\\ is the sum of the entries of \\\tilde{x}\\:
>
> \\ \begin{aligned} \tilde{1} \cdot \tilde{x}&= \sum\_{i=1}^p1 \cdot x_i \\ &= \sum\_{i=1}^px_i. \end{aligned} \\
>
> For example, for \\\tilde{x}= (2, -1, 5)\\,
>
> \\ \begin{aligned} \tilde{1} \cdot \tilde{x}&= 2 + (-1) + 5 \\ &= 6, \end{aligned} \\
>
> and dividing by the length \\p = 3\\ gives the [mean](#def-mean) of the entries, \\6 / 3 = 2\\.

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
> \\ \begin{aligned} \tilde{e}\_j \cdot \tilde{x} &= \sum\_{i=1}^p(\tilde{e}\_j)\_i\\ x_i && \text{(definition of the dot product)} \\&= \sum\_{i=1}^p \begin{cases} 1 \cdot x_i & \text{if } i = j \\ 0 \cdot x_i & \text{if } i \neq j \end{cases} && \text{(definition of } \tilde{e}\_j \text{)} \\&= x_j && \text{(only the } i = j \text{ term is nonzero)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 3 (A vector is a linear combination of indicator vectors)** Every vector \\\tilde{x}\in \mathbb{R}^p\\ is the linear combination ([Definition 8](#def-linear-combination)) of the indicator vectors \\\tilde{e}\_1, \ldots, \tilde{e}\_p\\ ([Definition 12](#def-indicator-vector)) with coefficients \\x_1, \ldots, x_p\\:
>
> \\\tilde{x}= \sum\_{j=1}^px_j \tilde{e}\_j\\

> **NOTE:**
>
> *Proof*. Compare the two sides entry by entry. For each \\i \in \\1, \ldots, p\\\\:
>
> \\ \begin{aligned} \mathopen{}\left(\sum\_{j=1}^px_j \tilde{e}\_j\right)\mathclose{}\_i &= \sum\_{j=1}^px_j (\tilde{e}\_j)\_i && \text{(}\href{#def-linear-combination}{\text{Definition~8}}\text{, entry by entry)} \\&= \sum\_{j=1}^p \begin{cases} x_j \cdot 1 & \text{if } j = i \\ x_j \cdot 0 & \text{if } j \neq i \end{cases} && \text{(}\href{#def-indicator-vector}{\text{Definition~12}}\text{)} \\&= x_i \cdot 1 + \sum\_{j \neq i} x_j \cdot 0 && \text{(split off the } j = i \text{ term)} \\&= x_i + 0 && \text{(times } 1 \text{ changes nothing; times } 0 \text{ gives } 0 \text{)} \\&= x_i && \text{(adding } 0 \text{ changes nothing)} \end{aligned} \\

> **NOTE:**
>
> **Example 7 (Expanding a vector in indicator vectors)** \\ \begin{aligned} \begin{bmatrix}4 \\ -1 \\ 2\end{bmatrix} &= 4 \begin{bmatrix}1 \\ 0 \\ 0\end{bmatrix} + (-1) \begin{bmatrix}0 \\ 1 \\ 0\end{bmatrix} + 2 \begin{bmatrix}0 \\ 0 \\ 1\end{bmatrix} \\ &= 4 \tilde{e}\_1 - \tilde{e}\_2 + 2 \tilde{e}\_3 \end{aligned} \\

### 1.2 Orthogonality

> **NOTE:**
>
> **Definition 13 (Orthogonal vectors)** Two vectors \\\tilde{x}\\ and \\\tilde{y}\\ of the same length are **orthogonal** (written \\\tilde{x}\perp \tilde{y}\\) if their dot product ([Definition 7](#def-dot-product)) is zero:
>
> \\\tilde{x}\perp \tilde{y}\iff \tilde{x}\cdot \tilde{y}= 0\\

> **NOTE:**
>
> *Remark 7* (Orthogonal means perpendicular). Orthogonality extends the geometric idea of perpendicular lines to vectors with any number of entries. In the plane, \\(1, 2)\\ and \\(-2, 1)\\ are perpendicular, and their dot product is \\1 \cdot(-2) + 2 \cdot 1 = 0\\. The same test works in \\\mathbb{R}^3\\, where pictures are harder to draw:
>
> \\ \begin{aligned} (1, 1, 0) \cdot (1, -1, 5) &= 1 - 1 + 0 \\ &= 0, \end{aligned} \\
>
> so \\(1, 1, 0) \perp (1, -1, 5)\\.

> **NOTE:**
>
> **Example 8 (Vectors that are not orthogonal)** \\ \begin{aligned} (1, 2) \cdot (1, 1) &= 1 \cdot 1 + 2 \cdot 1 \\ &= 3 \\ &\ne 0, \end{aligned} \\
>
> so \\(1, 2)\\ and \\(1, 1)\\ are not orthogonal.

> **NOTE:**
>
> **Definition 14 (Euclidean norm (length, \\L_2\\ norm))** The **Euclidean norm** (or **length**, also called the **\\L_2\\ norm** and written \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_2\\) of a vector \\\tilde{x}\\ of length \\p\\ is
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
> so \\(0.6, 0.8)\\ is a unit vector. The vector \\(1, 1)\\ is not:
>
> \\ \begin{aligned} \mathopen{}\left\lVert(1, 1)\right\rVert\mathclose{} &= \sqrt{1^2 + 1^2} \\ &= \sqrt{2} \\ &\ne 1. \end{aligned} \\

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
> 1.  \\ \begin{aligned} \tilde{x}- \tilde{y}&= (1 - 4, 2 - 6) \\ &= (-3, -4). \end{aligned} \\
>
> 2.  \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x}- \tilde{y}\right\rVert\mathclose{} &= \sqrt{(-3)^2 + (-4)^2} \\ &= \sqrt{25} \\ &= 5. \end{aligned} \\
>
> 3.  \\\tilde{y}- \tilde{x}= (3, 4)\\, and
>
>     \\ \begin{aligned} \mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{} &= \sqrt{3^2 + 4^2} \\ &= 5. \end{aligned} \\
>
>     Yes, the result is the same.

> **NOTE:**
>
> **Definition 16 (Euclidean distance)** The **Euclidean distance** between two vectors \\\tilde{x}\\ and \\\tilde{y}\\ of length \\p\\ is the [Euclidean norm](#def-euclidean-norm) of their difference:
>
> \\d(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}\mathopen{}\left\lVert\tilde{x}- \tilde{y}\right\rVert\mathclose{} = \sqrt{\sum\_{i=1}^p(x_i - y_i)^2} \tag{3}\\

> **NOTE:**
>
> *Remark 8* (Distance from the origin). The distance from the origin \\\tilde{0}\\ to a vector \\\tilde{x}\\ is the norm of \\\tilde{x}\\:
>
> \\ \begin{aligned} d(\tilde{x}, \tilde{0}) &= \mathopen{}\left\lVert\tilde{x}- \tilde{0}\right\rVert\mathclose{} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \end{aligned} \\
>
> ([Goodfellow et al. 2016, 39](#ref-goodfellow2016deep)).
>
> For example, the distance from \\\tilde{0}\\ to \\(3, 4)\\ is \\\mathopen{}\left\lVert(3, 4)\right\rVert\mathclose{} = 5\\, as in [Example 9](#exm-euclidean-norm).

> **NOTE:**
>
> **Definition 17 (Orthonormal vectors)** A set of vectors \\\\\tilde{x}\_1, \tilde{x}\_2, \ldots, \tilde{x}\_k\\\\ is **orthonormal** if the vectors are mutually orthogonal ([Definition 13](#def-orthogonal-vectors)) and each has norm \\1\\ ([Definition 14](#def-euclidean-norm)), that is, [unit length](#def-unit-vector):
>
> \\\tilde{x}\_i \cdot \tilde{x}\_j = \begin{cases} 1 & \text{if } i = j \\ 0 & \text{if } i \neq j \end{cases}\\

> **NOTE:**
>
> **Example 11 (Indicator vectors are orthonormal)** The indicator vectors \\\tilde{e}\_1, \tilde{e}\_2, \ldots, \tilde{e}\_p\\ ([Definition 12](#def-indicator-vector)) form an orthonormal set. By [Theorem 2](#thm-indicator-selection), \\\tilde{e}\_i \cdot \tilde{e}\_j\\ is entry \\i\\ of \\\tilde{e}\_j\\, which is \\1\\ if \\i = j\\ and \\0\\ if \\i \neq j\\. For \\p = 2\\:
>
> \\ \begin{aligned} \tilde{e}\_1 \cdot \tilde{e}\_1 &= 1 \cdot 1 + 0 \cdot 0 \\ &= 1, \end{aligned} \\
>
> \\ \begin{aligned} \tilde{e}\_2 \cdot \tilde{e}\_2 &= 0 \cdot 0 + 1 \cdot 1 \\ &= 1, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \tilde{e}\_1 \cdot \tilde{e}\_2 &= 1 \cdot 0 + 0 \cdot 1 \\ &= 0. \end{aligned} \\

> **NOTE:**
>
> **Example 12 (Two ways to fail to be orthonormal)**  
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
> \\\tilde{a}= \begin{bmatrix} 3 \\ -1 \\ 2 \end{bmatrix}, \qquad \tilde{b} = \begin{bmatrix} 0 \\ 4 \\ -2 \end{bmatrix}\\
>
> Compute \\\tilde{a}^{\top} \tilde{b}\\ and \\\mathopen{}\left\lVert\tilde{a}\right\rVert\mathclose{}\_2\\.

> **NOTE:**
>
> *Solution 3*. Multiply entry by entry and add:
>
> \\ \begin{aligned} \tilde{a} \cdot \tilde{b} &=(3)(0) + (-1)(4) + (2)(-2) \\ &= 0 - 4 - 4 \\ &= -8 \end{aligned} \\
>
> For the norm, take the inner product of \\\tilde{a}\\ with itself first:
>
> \\ \begin{aligned} \tilde{a} \cdot \tilde{a} &= 3^2 + (-1)^2 + 2^2 \\ &= 9 + 1 + 4 \\ &= 14 \end{aligned} \\
>
> so
>
> \\\mathopen{}\left\lVert\tilde{a}\right\rVert\mathclose{}\_2 = \sqrt{14} \approx 3.742\\
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
> Hutchinson’s [Linear Function Basics](https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/#linear_function_basics) (24 min) covers dot products and the Euclidean norm, and goes on to hyperplanes ([Definition 19 in Matrices](linear-algebra-matrices.llms.md#def-hyperplane)) and [level sets](vector-calculus.llms.md#def-level-set) ([Hutchinson, n.d.](#ref-hutchinson_wwu_ml_videos)). The login for the video site is posted [on Canvas](https://wwu.instructure.com/courses/1906010/modules#module_3922392).

Back to top

## References

Dobson, Annette J, and Adrian G Barnett. 2018. *An Introduction to Generalized Linear Models*. 4th ed. CRC press. <https://doi.org/10.1201/9781315182780>.

Goodfellow, Ian, Yoshua Bengio, and Aaron Courville. 2016. *Deep Learning*. MIT Press. <https://www.deeplearningbook.org/>.

Hutchinson, Brian. n.d. *DATA 471/571 (Machine Learning) and CSCI 481/581 (Deep Learning) Video Lectures*. Western Washington University. Accessed September 28, 2026. <https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/>.

Kaplan, Daniel. 2022. *MOSAIC Calculus*. Www.mosaic-web.org. [www.mosaic-web.org](https://www.mosaic-web.org).
