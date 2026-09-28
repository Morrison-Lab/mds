# Linear Algebra

Code

Published

Last modified: 2026-09-28 03:16:14 (PDT)

## 1 Vectors

> **NOTE:**
>
> **Definition 1 (Column vector)** A **column vector** of length \\p\\ is an ordered list of \\p\\ numbers, written vertically:
>
> \\ \tilde{x}= \begin{bmatrix} x\_{1} \\ x\_{2} \\ \vdots \\ x\_{p} \end{bmatrix} \\

Column vectors are the default convention in these notes and in most statistics textbooks. They are also called *\\p \times 1\\ matrices*.

> **NOTE:**
>
> **Definition 2 (Transpose)** The **transpose** of a column vector \\\tilde{x}\\ is the row vector with the same sequence of entries, written horizontally:
>
> \\ {\tilde{x}}^{\top} \equiv \tilde{x}' \equiv \[x_1,\\ x_2,\\ \ldots,\\ x_p\] \\

The transpose operation converts a column vector to a row vector, or more generally, swaps the rows and columns of a matrix ([Definition 12](#def-matrix-transpose)).

> **NOTE:**
>
> **Definition 3 (Vector addition)** The **sum** of two column vectors \\\tilde{x}\\ and \\\tilde{y}\\ of the same length \\p\\ is the column vector \\\tilde{x}+ \tilde{y}\\ of length \\p\\ obtained by adding entry by entry:
>
> \\(\tilde{x}+ \tilde{y})\_i \stackrel{\text{def}}{=}x_i + y_i, \quad i = 1, \ldots, p\\

> **NOTE:**
>
> **Example 1 (Adding two vectors)** \\ \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix} + \begin{bmatrix} 4 \\ 5 \\ 6 \end{bmatrix} = \begin{bmatrix} 1 + 4 \\ 2 + 5 \\ 3 + 6 \end{bmatrix} = \begin{bmatrix} 5 \\ 7 \\ 9 \end{bmatrix} \\

> **NOTE:**
>
> **Definition 4 (Dot product)** For any two real-valued vectors \\\tilde{x}= (x_1, \ldots, x_p)\\ and \\\tilde{y}= (y_1, \ldots, y_p)\\ of the same length \\p\\, the **dot product** of \\\tilde{x}\\ and \\\tilde{y}\\ is:
>
> \\\tilde{x}\cdot \tilde{y}\stackrel{\text{def}}{=}\sum\_{i=1}^px_i y_i\\

> **NOTE:**
>
> The dot product \\\tilde{x}\cdot \tilde{y}\\ is a *linear combination* of the entries of \\\tilde{y}\\, with coefficients \\x_1, \ldots, x_p\\. It is also the standard *inner product* on \\\mathbb{R}^p\\; “inner product” is the general notion, of which the dot product is one example.
>
> See also the definitions in
>
> - Dobson and Barnett ([2018](#ref-dobson4e)), Section 1.3 (equation 1.1, page 7)
>
> - Kaplan ([2022](#ref-mosaiccalc)), chapter on vectors
>
> - [wikipedia](https://en.wikipedia.org/wiki/Linear_combination)
>
> “Linear combination” can also refer to weighted sums of vectors, or in other words matrix-vector multiplication.
>
> The dot-product has a different generalization for two matrices; see [wikipedia](https://en.wikipedia.org/wiki/Dot_product#Dyadics_and_matrices) for more.

> **NOTE:**
>
> **Example 2 (A dot product)** For \\\tilde{x}= (1, 2, 3)\\ and \\\tilde{y}= (4, 5, 6)\\:
>
> \\ \begin{aligned} \tilde{x}\cdot \tilde{y} &= 1 \cdot 4 + 2 \cdot 5 + 3 \cdot 6 && \text{(definition of the dot product)} \\ &= 4 + 10 + 18 && \text{(multiply)} \\ &= 32 && \text{(add)} \end{aligned} \\

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
> **Definition 5 (Zero vector)** The **zero vector** \\\tilde{0}\\ of length \\p\\ has all entries equal to zero:
>
> \\ \tilde{0}= \begin{bmatrix} 0 \\ 0 \\ \vdots \\ 0 \end{bmatrix} \\

The zero vector is the additive identity for vector addition: \\\tilde{x}+ \tilde{0}= \tilde{x}\\ for any vector \\\tilde{x}\\ of the same length.

> **NOTE:**
>
> **Definition 6 (Ones vector)** The **ones vector** \\\tilde{1}\\ of length \\p\\ has all entries equal to one:
>
> \\ \tilde{1} = \begin{bmatrix} 1 \\ 1 \\ \vdots \\ 1 \end{bmatrix} \\

The dot product \\\tilde{1} \cdot \tilde{x}= \sum\_{i=1}^p x_i\\ is the sum of all entries of \\\tilde{x}\\.

> **NOTE:**
>
> **Definition 7 (Indicator vector / standard basis vector)** The \\j\\-th **indicator vector** (or *standard basis vector*) \\\tilde{e}\_j\\ of length \\p\\ has a \\1\\ in position \\j\\ and \\0\\s elsewhere:
>
> \\ (\tilde{e}\_j)\_i = \begin{cases} 1 & \text{if } i = j \\ 0 & \text{if } i \neq j \end{cases} \qquad \tilde{e}\_j = \begin{bmatrix} 0 \\ \vdots \\ 0 \\ 1 \\ 0 \\ \vdots \\ 0 \end{bmatrix} \leftarrow \text{position } j \\

They are also called *unit vectors* or *standard basis vectors*.

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
> **Definition 8 (Orthogonal vectors)** Two vectors \\\tilde{x}\\ and \\\tilde{y}\\ of the same length are **orthogonal** (written \\\tilde{x}\perp \tilde{y}\\) if their dot product ([Definition 4](#def-dot-product)) is zero:
>
> \\\tilde{x}\perp \tilde{y}\iff \tilde{x}\cdot \tilde{y}= 0\\

Orthogonality generalizes the geometric notion of perpendicularity to arbitrary dimensions.

> **NOTE:**
>
> **Definition 9 (Euclidean norm)** The **Euclidean norm** (or *length*) of a vector \\\tilde{x}\\ of length \\p\\ is
>
> \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \stackrel{\text{def}}{=}\sqrt{\tilde{x}\cdot \tilde{x}} = \sqrt{\sum\_{i=1}^px_i^2}\\

> **NOTE:**
>
> **Example 3 (The length of a vector)** For \\\tilde{x}= (3, 4)\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} &= \sqrt{3^2 + 4^2} && \text{(definition of the norm)} \\ &= \sqrt{25} && \text{(square and add)} \\ &= 5 \end{aligned} \\
>
> The vector \\(0.6, 0.8)\\ has norm \\\sqrt{0.36 + 0.64} = 1\\.

> **NOTE:**
>
> **Definition 10 (Orthonormal vectors)** A set of vectors \\\\\tilde{x}\_1, \tilde{x}\_2, \ldots, \tilde{x}\_k\\\\ is **orthonormal** if the vectors are mutually orthogonal ([Definition 8](#def-orthogonal-vectors)) and each has norm \\1\\ ([Definition 9](#def-euclidean-norm)), that is, unit length:
>
> \\\tilde{x}\_i \cdot \tilde{x}\_j = \begin{cases} 1 & \text{if } i = j \\ 0 & \text{if } i \neq j \end{cases}\\

The indicator vectors \\\tilde{e}\_1, \tilde{e}\_2, \ldots, \tilde{e}\_p\\ ([Definition 7](#def-indicator-vector)) form an orthonormal set.

## 2 Matrices

> **NOTE:**
>
> **Definition 11 (Matrix)** A **matrix** of dimensions \\m \times n\\ is a rectangular array of \\m \cdot n\\ numbers, arranged in \\m\\ rows and \\n\\ columns:
>
> \\ \mathbf{A} = \begin{bmatrix} a\_{11} & a\_{12} & \cdots & a\_{1n} \\ a\_{21} & a\_{22} & \cdots & a\_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ a\_{m1} & a\_{m2} & \cdots & a\_{mn} \end{bmatrix} \\

The entry in row \\i\\ and column \\j\\ is denoted \\a\_{ij}\\ or \\(\mathbf{A})\_{ij}\\. A column vector of length \\p\\ is a special case: a \\p \times 1\\ matrix. A row vector of length \\p\\ is a \\1 \times p\\ matrix.

### 2.1 Matrix transpose

> **NOTE:**
>
> **Definition 12 (Matrix transpose)** The **transpose** of an \\m \times n\\ matrix \\\mathbf{A}\\ is the \\n \times m\\ matrix \\{\mathbf{A}}^{\top}\\ obtained by swapping the rows and columns of \\\mathbf{A}\\:
>
> \\({\mathbf{A}}^{\top})\_{ij} = a\_{ji}\\

### 2.2 Matrix addition

> **NOTE:**
>
> **Definition 13 (Zero matrix)** The \\m \times n\\ **zero matrix** \\\mathbf{0}\_{m \times n}\\ (or \\\mathbf{0}\\ when dimensions are clear from context) has all entries equal to zero:
>
> \\ \mathbf{0}\_{m \times n} = \begin{bmatrix} 0 & 0 & \cdots & 0 \\ 0 & 0 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & 0 \end{bmatrix} \\

> **NOTE:**
>
> **Definition 14 (Matrix addition)** Two matrices \\\mathbf{A}\\ and \\\mathbf{B}\\ of the same dimensions \\m \times n\\ can be added element-wise; their **matrix sum** is:
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
> **Definition 15 (Scalar multiplication)** The **scalar multiple** of a matrix \\\mathbf{A}\\ by a scalar \\c\\ is:
>
> \\(c\mathbf{A})\_{ij} = c \cdot a\_{ij}\\

### 2.4 Matrix multiplication

> **NOTE:**
>
> **Definition 16 (Matrix multiplication)** The **product** of an \\m \times k\\ matrix \\\mathbf{A}\\ and a \\k \times n\\ matrix \\\mathbf{B}\\ is the \\m \times n\\ matrix \\\mathbf{C} = \mathbf{A}\mathbf{B}\\ with entries:
>
> \\c\_{ij} = \sum\_{s=1}^{k} a\_{is}\\ b\_{sj}\\

Matrix multiplication is only defined when the number of columns in \\\mathbf{A}\\ equals the number of rows in \\\mathbf{B}\\.

Matrix multiplication is **not** commutative in general: \\\mathbf{A}\mathbf{B} \neq \mathbf{B}\mathbf{A}\\.

> **NOTE:**
>
> **Example 4 (Dot product as matrix multiplication)** The dot product of two column vectors \\\tilde{x}\\ and \\\tilde{\beta}\\ can be written as a matrix product of the row vector \\{\tilde{x}}^{\top}\\ with the column vector \\\tilde{\beta}\\:
>
> \\ \begin{aligned} \tilde{x}\cdot \tilde{\beta} &= {\tilde{x}}^{\top}\\ \tilde{\beta} \\ &= \[x_1,\\ x_2,\\ \ldots,\\ x_p\] \begin{bmatrix} \beta\_{1} \\ \beta\_{2} \\ \vdots \\ \beta\_{p} \end{bmatrix} \\ &= x_1\beta_1 + x_2\beta_2 + \cdots + x_p \beta_p \end{aligned} \\

> **NOTE:**
>
> **Theorem 7 (Matrix multiplication is associative)** For an \\m \times k\\ matrix \\\mathbf{A}\\, a \\k \times l\\ matrix \\\mathbf{B}\\, and an \\l \times n\\ matrix \\\mathbf{C}\\:
>
> \\ \underbrace{(\mathbf{A}\mathbf{B})\mathbf{C}}\_{m \times n} = \underbrace{\mathbf{A}(\mathbf{B}\mathbf{C})}\_{m \times n} \\

> **NOTE:**
>
> *Proof*. Entry \\(i, j)\\ of each side, from [Definition 16](#def-matrix-mult):
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

### 2.5 Matrix-vector multiplication

> **NOTE:**
>
> **Definition 17 (Matrix-vector multiplication)** The **matrix-vector product** of an \\m \times p\\ matrix \\\mathbf{A}\\ and a \\p \times 1\\ column vector \\\tilde{x}\\ is the \\m \times 1\\ column vector \\\mathbf{A}\tilde{x}\\ with entries:
>
> \\(\mathbf{A}\tilde{x})\_i = \sum\_{j=1}^{p} a\_{ij}\\ x_j\\

Matrix-vector multiplication is a generalization of the dot product. Each entry of the result is a dot product of a row of \\\mathbf{A}\\ with the vector \\\tilde{x}\\.

### 2.6 Transposes of sums and products

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

The order of the factors reverses when transposing a product.

### 2.7 Rank

> **NOTE:**
>
> **Definition 18 (Linearly independent vectors)** Vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ of the same length \\p\\ are **linearly independent** if the only numbers \\c_1, \ldots, c_k\\ with
>
> \\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k = \tilde{0}\\
>
> are \\c_1 = \cdots = c_k = 0\\.

> **NOTE:**
>
> **Example 5 (Independent and dependent pairs of vectors)**  
>
> - \\\tilde{v}\_1 = (1, 0)\\ and \\\tilde{v}\_2 = (1, 1)\\ are linearly independent: \\c_1 \tilde{v}\_1 + c_2 \tilde{v}\_2 = (c_1 + c_2, c_2)\\, which is \\\tilde{0}\\ only if \\c_2 = 0\\ and then \\c_1 = 0\\.
> - \\\tilde{v}\_1 = (1, 2)\\ and \\\tilde{v}\_2 = (2, 4)\\ are not: \\2 \tilde{v}\_1 - \tilde{v}\_2 = \tilde{0}\\.

> **NOTE:**
>
> **Definition 19 (Rank)** The **rank** of a matrix \\\mathbf{A}\\, written \\\operatorname{rank}(\mathbf{A})\\, is the largest number of columns of \\\mathbf{A}\\ that are linearly independent ([Definition 18](#def-linearly-independent)).

An \\n \times p\\ matrix whose rank is \\p\\, so that all of its columns are linearly independent, is said to have *full column rank*; that can only happen when \\p \le n\\, because more than \\n\\ vectors of length \\n\\ are never linearly independent.

> **NOTE:**
>
> **Example 6 (The rank of two \\3 \times 2\\ matrices)** The matrix \\\begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ has rank \\2\\: if \\c_1 (1, 1, 1) + c_2 (1, 2, 3) = \tilde{0}\\, then subtracting the first entry from the second gives \\c_2 = 0\\, and then \\c_1 = 0\\.
>
> The matrix \\\begin{bmatrix} 1 & 2 \\ 1 & 2 \\ 1 & 2 \end{bmatrix}\\ has rank \\1\\: its second column is twice its first, so the two columns are not linearly independent, but the first column on its own is.

## 3 Special Matrices

See also [Definition 13](#def-zero-matrix) for the zero matrix.

> **NOTE:**
>
> **Definition 20 (Square matrix)** A matrix is **square** if it has the same number of rows as columns.

> **NOTE:**
>
> **Definition 21 (Order of a square matrix)** The **order** of a square matrix ([Definition 20](#def-square-matrix)) is its number of rows, which equals its number of columns.

> **NOTE:**
>
> **Definition 22 (Matrix power)** For a square matrix \\\mathbf{A}\\ of order \\p\\ and a positive integer \\k\\, the \\k\\-th **power** of \\\mathbf{A}\\ is:
>
> \\\mathbf{A}^k = \underbrace{\mathbf{A}\\\mathbf{A}\cdots\mathbf{A}}\_{k \text{ copies}}\\
>
> In particular, \\\mathbf{A}^2 = \mathbf{A}\mathbf{A}\\.

> **NOTE:**
>
> **Definition 23 (Identity matrix)** The \\p \times p\\ **identity matrix** \\\mathbf{I}\_p\\ (or \\\mathbf{I}\\ when the size is clear from context) has ones on the main diagonal and zeros elsewhere:
>
> \\ (\mathbf{I}\_p)\_{ij} = \begin{cases} 1 & \text{if } i = j \\ 0 & \text{if } i \neq j \end{cases} \qquad \mathbf{I}\_p = \begin{bmatrix} 1 & 0 & \cdots & 0 \\ 0 & 1 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & 1 \end{bmatrix} \\

> **NOTE:**
>
> **Theorem 11 (Identity matrix is a multiplicative identity)** For any \\m \times p\\ matrix \\\mathbf{A}\\:
>
> \\\mathbf{A}\\\mathbf{I}\_p = \mathbf{A}\\
>
> \\\mathbf{I}\_m\\\mathbf{A} = \mathbf{A}\\

> **NOTE:**
>
> **Definition 24 (Symmetric matrix)** A square matrix \\\mathbf{A}\\ is **symmetric** if \\{\mathbf{A}}^{\top} = \mathbf{A}\\, i.e., \\a\_{ij} = a\_{ji}\\ for all \\i\\ and \\j\\.

Covariance matrices and information matrices are symmetric.

> **NOTE:**
>
> **Definition 25 (Diagonal matrix)** A square matrix \\\mathbf{D}\\ is a **diagonal matrix** if all off-diagonal entries are zero: \\d\_{ij} = 0\\ whenever \\i \neq j\\:
>
> \\ \mathbf{D} = \begin{bmatrix} d_1 & 0 & \cdots & 0 \\ 0 & d_2 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & d_p \end{bmatrix} \\

Diagonal matrices are denoted \\\mathbf{D} = \text{diag}(d_1, d_2, \ldots, d_p)\\, where \\d_1, \ldots, d_p\\ are the diagonal entries.

> **NOTE:**
>
> **Definition 26 (Matrix inverse)** For a square \\p \times p\\ matrix \\\mathbf{A}\\, the **inverse** \\\mathbf{A}^{-1}\\ (if it exists) is the unique matrix satisfying:
>
> \\\mathbf{A}\\\mathbf{A}^{-1} = \mathbf{A}^{-1}\\\mathbf{A} = \mathbf{I}\_p\\

> **NOTE:**
>
> **Definition 27 (Invertible matrix)** A square matrix \\\mathbf{A}\\ is **invertible** (or *non-singular*) if it has an inverse \\\mathbf{A}^{-1}\\ ([Definition 26](#def-matrix-inverse)). A square matrix with no inverse is *singular*.

> **NOTE:**
>
> **Example 7 (An invertible matrix and a singular one)** The matrix \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ is invertible, with \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\: multiplying out gives \\\mathbf{A}\mathbf{A}^{-1} = \mathbf{A}^{-1}\mathbf{A} = \mathbf{I}\_2\\.
>
> The matrix \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ is singular: for any \\2 \times 2\\ matrix \\\mathbf{C}\\, the two rows of \\\mathbf{B}\mathbf{C}\\ are equal, so \\\mathbf{B}\mathbf{C}\\ can never be \\\mathbf{I}\_2\\, whose two rows differ.

> **NOTE:**
>
> **Theorem 12 (Inverse of a product)** If \\\mathbf{A}\\ and \\\mathbf{B}\\ are invertible \\p \times p\\ matrices, then \\\mathbf{A}\mathbf{B}\\ is invertible, and
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
> So \\\mathbf{B}^{-1}\mathbf{A}^{-1}\\ satisfies [Definition 26](#def-matrix-inverse) for \\\mathbf{A}\mathbf{B}\\. The steps use [Theorem 7](#thm-matmul-assoc) and [Theorem 11](#thm-identity).

> **NOTE:**
>
> **Theorem 13 (Inverse of a transpose)** If \\\mathbf{A}\\ is an invertible \\p \times p\\ matrix, then \\{\mathbf{A}}^{\top}\\ is invertible, and
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
> So \\{\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}\\ satisfies [Definition 26](#def-matrix-inverse) for \\{\mathbf{A}}^{\top}\\. The first step of each display is [Theorem 10](#thm-transpose-product).

> **NOTE:**
>
> **Example 8 (Inverting a transpose)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\, [Example 7](#exm-invertible-matrix) gives \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\, so [Theorem 13](#thm-inverse-transpose) says
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
> The first step is [Theorem 13](#thm-inverse-transpose).

> **NOTE:**
>
> **Example 9 (Inverting a symmetric matrix)** \\\mathbf{S} = \begin{bmatrix} 2 & 1 \\ 1 & 1 \end{bmatrix}\\ is symmetric, and \\\mathbf{S}^{-1} = \begin{bmatrix} 1 & -1 \\ -1 & 2 \end{bmatrix}\\ is symmetric too, as [Corollary 1](#cor-inverse-symmetric) says.

> **NOTE:**
>
> **Definition 28 (Idempotent matrix)** A square matrix \\\mathbf{A}\\ is **idempotent** if
>
> \\\mathbf{A}^2 = \mathbf{A}\\

> **NOTE:**
>
> **Definition 29 (Orthogonal projection matrix)** A square matrix \\\mathbf{P}\\ is an **orthogonal projection matrix** if it is both symmetric ([Definition 24](#def-symmetric-matrix)) and idempotent ([Definition 28](#def-idempotent-matrix)):
>
> \\{\mathbf{P}}^{\top} = \mathbf{P} \qquad \text{and} \qquad \mathbf{P}^2 = \mathbf{P}\\

Any idempotent matrix is called a *projection matrix*; an idempotent matrix that is not symmetric is an *oblique* projection. Regression texts often say “projection matrix” when they mean an orthogonal one. In these notes, “projection matrix” always means an orthogonal projection matrix in the sense of [Definition 29](#def-projection-matrix).

> **NOTE:**
>
> **Example 10 (An orthogonal projection and an oblique one)** \\\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ is symmetric, and \\\mathbf{P}^2 = \mathbf{P}\\, so \\\mathbf{P}\\ is an orthogonal projection matrix; it maps \\(v_1, v_2)\\ to \\(v_1, 0)\\.
>
> \\\mathbf{Q} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}\\ is idempotent:
>
> \\ \mathbf{Q}^2 = \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 1 + 1 \cdot 0 \\ 0 \cdot 1 + 0 \cdot 0 & 0 \cdot 1 + 0 \cdot 0 \end{bmatrix} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix} = \mathbf{Q}, \\
>
> but \\{\mathbf{Q}}^{\top} \neq \mathbf{Q}\\, so \\\mathbf{Q}\\ is an oblique projection, not an orthogonal projection matrix.

> **NOTE:**
>
> **Theorem 14 (Complement of a projection matrix)** If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 29](#def-projection-matrix)), then \\\mathbf{I}\_p - \mathbf{P}\\ is also an orthogonal projection matrix.

> **NOTE:**
>
> *Proof*. We verify symmetry and idempotency.
>
> **Symmetry:** \\{(\mathbf{I} - \mathbf{P})}^{\top} = {\mathbf{I}}^{\top} - {\mathbf{P}}^{\top} = \mathbf{I} - \mathbf{P}\\
>
> **Idempotency:** \\\begin{aligned} (\mathbf{I} - \mathbf{P})^2 &= (\mathbf{I} - \mathbf{P})(\mathbf{I} - \mathbf{P}) \\ &= \mathbf{I} - \mathbf{P} - \mathbf{P} + \mathbf{P}^2 \\ &= \mathbf{I} - \mathbf{P} - \mathbf{P} + \mathbf{P} \\ &= \mathbf{I} - \mathbf{P} \end{aligned}\\

> **NOTE:**
>
> **Theorem 15 (Projection matrices produce orthogonal decompositions)** If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 29](#def-projection-matrix)) and \\\tilde{v}\\ is any vector of length \\p\\, then the two components of the decomposition
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

## 4 Quadratic Forms

> **NOTE:**
>
> **Definition 30 (Quadratic form)** A **quadratic form** is a mathematical expression of the structure
>
> \\{\tilde{x}}^{\top}\\ \mathbf{S}\\ \tilde{x}\\
>
> where \\\tilde{x}\\ is a \\p \times 1\\ vector and \\\mathbf{S}\\ is a \\p \times p\\ matrix.

Quadratic forms are the matrix generalizations of the scalar expression \\c x^2\\. They occur frequently in statistics:

- The residual sum of squares in linear regression (see [Vector Calculus](vector-calculus.llms.md)) is a quadratic form.
- The variance of a linear combination of estimates (see [Inference about Gaussian Linear Regression Models](https://morrison-lab.github.io/rme/chapters/Linear-models-overview.html#sec-infer-LMs)) is a quadratic form: \\\operatorname{Var}\mathopen{}\left({\tilde{x}}^{\top}\hat{\tilde{\beta}}\right)\mathclose{} = {\tilde{x}}^{\top}\\\operatorname{Var}\mathopen{}\left(\hat{\tilde{\beta}}\right)\mathclose{}\\\tilde{x}\\.

> **NOTE:**
>
> **Definition 31 (Symmetric part of a square matrix)** The **symmetric part** of a \\p \times p\\ matrix \\\mathbf{S}\\ is
>
> \\\frac{1}{2}\mathopen{}\left(\mathbf{S} + {\mathbf{S}}^{\top}\right)\mathclose{}\\

> **NOTE:**
>
> **Example 11 (The symmetric part of a \\2 \times 2\\ matrix)** For \\\mathbf{S} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}\\, the symmetric part is
>
> \\ \frac{1}{2}\mathopen{}\left( \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix} + \begin{bmatrix} 1 & 0 \\ 2 & 3 \end{bmatrix} \right)\mathclose{} = \frac{1}{2}\begin{bmatrix} 2 & 2 \\ 2 & 6 \end{bmatrix} = \begin{bmatrix} 1 & 1 \\ 1 & 3 \end{bmatrix}, \\
>
> which is symmetric.

> **NOTE:**
>
> **Theorem 16 (A quadratic form depends only on the symmetric part)** If \\\mathbf{S}\\ is a \\p \times p\\ matrix and \\\tilde{x}\\ is a vector of length \\p\\, then
>
> \\ {\tilde{x}}^{\top}\mathbf{S}\tilde{x} = {\tilde{x}}^{\top}\left(\frac{1}{2}(\mathbf{S}+{\mathbf{S}}^{\top})\right)\tilde{x}. \\
>
> So the value of a quadratic form depends only on the symmetric part ([Definition 31](#def-symmetric-part)) of \\\mathbf{S}\\.

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
> **Example 12 (Replacing a matrix by its symmetric part)** With \\\mathbf{S} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}\\ from [Example 11](#exm-symmetric-part) and \\\tilde{x}= (1, 1)\\:
>
> \\ {\tilde{x}}^{\top}\mathbf{S}\tilde{x}= 1 + 2 + 0 + 3 = 6 \qquad {\tilde{x}}^{\top}\begin{bmatrix} 1 & 1 \\ 1 & 3 \end{bmatrix}\tilde{x}= 1 + 1 + 1 + 3 = 6 \\
>
> Both quadratic forms equal the sum of their matrix’s entries, because every entry of \\\tilde{x}\\ is \\1\\.

## 5 Design Matrix

> **NOTE:**
>
> **Definition 32 (Design matrix)** In a regression model with \\n\\ observations and \\p\\ predictors, the **design matrix** (or *model matrix*) \\\mathbf{X}\\ is the \\n \times p\\ matrix whose \\i\\-th row is the covariate vector \\{\tilde{x}\_i}^{\top}\\ for observation \\i\\:
>
> \\ \mathbf{X}= \begin{bmatrix} {\tilde{x}\_1}^{\top} \\ {\tilde{x}\_2}^{\top} \\ \vdots \\ {\tilde{x}\_n}^{\top} \end{bmatrix} = \begin{bmatrix} x\_{11} & x\_{12} & \cdots & x\_{1p} \\ x\_{21} & x\_{22} & \cdots & x\_{2p} \\ \vdots & \vdots & \ddots & \vdots \\ x\_{n1} & x\_{n2} & \cdots & x\_{np} \end{bmatrix} \\

The product \\\mathbf{X}\tilde{\beta}\\ collects all the linear predictors \\{\tilde{x}\_i}^{\top}\tilde{\beta}\\ into a single \\n \times 1\\ vector:

\\ \mathbf{X}\tilde{\beta}= \begin{bmatrix} {\tilde{x}\_1}^{\top}\tilde{\beta}\\ \vdots \\ {\tilde{x}\_n}^{\top}\tilde{\beta} \end{bmatrix} \\

The matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ is a \\p \times p\\ symmetric matrix that appears in the OLS estimator \\\hat{\tilde{\beta}} = ({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\tilde{y}\\.

> **NOTE:**
>
> **Theorem 17 (\\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible when \\\mathbf{X}\\ has full column rank)** If \\\mathbf{X}\\ is an \\n \times p\\ matrix with \\\operatorname{rank}(\mathbf{X}) = p\\ ([Definition 19](#def-rank)), then the \\p \times p\\ matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible.

> **NOTE:**
>
> *Proof*. Let \\\tilde{c}\\ be a vector of length \\p\\ with \\{\mathbf{X}}^{\top}\mathbf{X}\tilde{c} = \tilde{0}\\. Then
>
> \\ \begin{aligned} 0 &= {\tilde{c}}^{\top}\\{\mathbf{X}}^{\top}\mathbf{X}\tilde{c} && \text{(multiply } {\mathbf{X}}^{\top}\mathbf{X}\tilde{c} = \tilde{0}\text{ on the left by } {\tilde{c}}^{\top} \text{)} \\ &= {\mathopen{}\left(\mathbf{X}\tilde{c}\right)\mathclose{}}^{\top}\mathopen{}\left(\mathbf{X}\tilde{c}\right)\mathclose{} && \text{(transpose of a product)} \\ &= \mathopen{}\left\lVert\mathbf{X}\tilde{c}\right\rVert\mathclose{}^2 && \text{(definition of the Euclidean norm)} \end{aligned} \\
>
> so \\\mathbf{X}\tilde{c} = \tilde{0}\\. Because \\\mathbf{X}\tilde{c} = c_1 (\text{column } 1) + \cdots + c_p (\text{column } p)\\ and the columns of \\\mathbf{X}\\ are linearly independent, \\\tilde{c} = \tilde{0}\\. So the only solution of \\{\mathbf{X}}^{\top}\mathbf{X}\tilde{c} = \tilde{0}\\ is \\\tilde{c} = \tilde{0}\\, which says that the columns of the square matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ are linearly independent, and a square matrix with linearly independent columns is invertible ([Banerjee and Roy 2014](#ref-banerjee2014linear)).

> **NOTE:**
>
> **Example 13 (Inverting \\{\mathbf{X}}^{\top}\mathbf{X}\\)** For the rank-\\2\\ matrix \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ from [Example 6](#exm-rank):
>
> \\ {\mathbf{X}}^{\top}\mathbf{X}= \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}, \qquad \mathopen{}\left({\mathbf{X}}^{\top}\mathbf{X}\right)^{-1}\mathclose{} = \frac{1}{6}\begin{bmatrix} 14 & -6 \\ -6 & 3 \end{bmatrix}, \\
>
> and multiplying the two out gives \\\mathbf{I}\_2\\.

> **NOTE:**
>
> **Definition 33 (Hat matrix)** For an \\n \times p\\ design matrix \\\mathbf{X}\\ ([Definition 32](#def-design-matrix)) with \\\operatorname{rank}(\mathbf{X}) = p\\, the **hat matrix** is the \\n \times n\\ matrix
>
> \\ \underbrace{\mathbf{H}}\_{n \times n} \stackrel{\text{def}}{=} \underbrace{\mathbf{X}}\_{n \times p} \underbrace{({\mathbf{X}}^{\top}\mathbf{X})^{-1}}\_{p \times p} \underbrace{{\mathbf{X}}^{\top}}\_{p \times n} \\
>
> The inverse exists by [Theorem 17](#thm-gram-invertible).

> **NOTE:**
>
> **Example 14 (The hat matrix of an intercept-only model)** With \\n = 2\\ observations and only an intercept, \\\mathbf{X}= \begin{bmatrix} 1 \\ 1 \end{bmatrix}\\ (\\2 \times 1\\, rank \\1\\), so \\{\mathbf{X}}^{\top}\mathbf{X}= 2\\ and
>
> \\ \mathbf{H} = \begin{bmatrix} 1 \\ 1 \end{bmatrix} \cdot\frac{1}{2} \cdot\begin{bmatrix} 1 & 1 \end{bmatrix} = \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}. \\
>
> Then \\\mathbf{H}\tilde{y}= (\bar{y}, \bar{y})\\, where \\\bar{y} = (y_1 + y_2)/2\\: the fitted values of an intercept-only model are the sample mean.

> **NOTE:**
>
> **Theorem 18 (Hat matrix is a projection matrix)** If \\\mathbf{X}\\ is an \\n \times p\\ design matrix with \\\operatorname{rank}(\mathbf{X}) = p\\, then the hat matrix \\\mathbf{H}\\ ([Definition 33](#def-hat-matrix)) is an orthogonal projection matrix ([Definition 29](#def-projection-matrix)).

> **NOTE:**
>
> *Proof*. We verify symmetry and idempotency. Both use that \\{\mathbf{X}}^{\top}\mathbf{X}\\ is symmetric, \\{\mathopen{}\left({\mathbf{X}}^{\top}\mathbf{X}\right)\mathclose{}}^{\top} = {\mathbf{X}}^{\top}\\{\mathopen{}\left({\mathbf{X}}^{\top}\right)\mathclose{}}^{\top} = {\mathbf{X}}^{\top}\mathbf{X}\\ ([Theorem 10](#thm-transpose-product)), so its inverse is symmetric too ([Corollary 1](#cor-inverse-symmetric)).
>
> **Symmetry:** \\\begin{aligned} {\mathbf{H}}^{\top} &= {\left(\mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\right)}^{\top} && \text{(definition of } \mathbf{H} \text{)} \\ &= {({\mathbf{X}}^{\top})}^{\top} \cdot {\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1}\right)}^{\top} \cdot {\mathbf{X}}^{\top} && \text{(transpose of a product, twice)} \\ &= \mathbf{X}\cdot {\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1}\right)}^{\top} \cdot {\mathbf{X}}^{\top} && \text{(transposing twice changes nothing)} \\ &= \mathbf{X}\cdot ({\mathbf{X}}^{\top}\mathbf{X})^{-1} \cdot {\mathbf{X}}^{\top} && \text{(the inverse of a symmetric matrix is symmetric)} \\ &= \mathbf{H} && \text{(definition of } \mathbf{H} \text{)} \end{aligned}\\
>
> **Idempotency:** \\\begin{aligned} \mathbf{H}^2 &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} \cdot \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(definition of } \mathbf{H} \text{)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}({\mathbf{X}}^{\top}\mathbf{X})({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(regroup; matrix multiplication is associative)} \\ &= \mathbf{X}\\\mathbf{I}\_p\\({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(definition of the inverse)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(identity matrix)} \\ &= \mathbf{H} && \text{(definition of } \mathbf{H} \text{)} \end{aligned}\\

> **NOTE:**
>
> **Example 15 (The intercept-only hat matrix is a projection)** For \\\mathbf{H} = \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}\\ from [Example 14](#exm-hat-matrix), \\{\mathbf{H}}^{\top} = \mathbf{H}\\, and
>
> \\ \mathbf{H}^2 = \begin{bmatrix} 0.5 \cdot 0.5 + 0.5 \cdot 0.5 & 0.5 \cdot 0.5 + 0.5 \cdot 0.5 \\ 0.5 \cdot 0.5 + 0.5 \cdot 0.5 & 0.5 \cdot 0.5 + 0.5 \cdot 0.5 \end{bmatrix} = \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix} = \mathbf{H}, \\
>
> as [Theorem 18](#thm-hat-matrix) says.

The hat matrix appears in the formula for fitted values in linear regression: \\\hat{\tilde{y}} = \mathbf{X}\hat{\tilde{\beta}} = \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\tilde{y}= \mathbf{H}\tilde{y}\\. It “puts a hat” on \\\tilde{y}\\ — hence the name.

## 6 Additional resources

- Fieller ([2016](#ref-fieller2018basics))
- Banerjee and Roy ([2014](#ref-banerjee2014linear))
- Searle and Khuri ([2017](#ref-searle2017matrix))

## References

Banerjee, Sudipto, and Anindya Roy. 2014. *Linear Algebra and Matrix Analysis for Statistics*. Vol. 181. Crc Press Boca Raton. <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>.

Dobson, Annette J, and Adrian G Barnett. 2018. *An Introduction to Generalized Linear Models*. 4th ed. CRC press. <https://doi.org/10.1201/9781315182780>.

Fieller, Nick. 2016. *Basics of Matrix Algebra for Statistics with R*. Chapman; Hall/CRC. <https://doi.org/10.1201/9781315370200>.

Kaplan, Daniel. 2022. *MOSAIC Calculus*. Www.mosaic-web.org. [www.mosaic-web.org](https://www.mosaic-web.org).

Searle, Shayle R, and Andre I Khuri. 2017. *Matrix Algebra Useful for Statistics*. John Wiley & Sons.

Back to top
