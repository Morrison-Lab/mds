# Matrices

Code

Published

Last modified: 2026-10-31 08:00:43 (PDT)

## 0.1 Matrices

> **NOTE:**
>
> **Definition 1 (Matrix)** A **matrix** [\[1\]](#ref-wikipedia_matrix_mathematics) of dimensions \\m \times n\\ is a rectangular array of \\m \cdot n\\ numbers, arranged in \\m\\ rows and \\n\\ columns:
>
> \\ \mathbf{A} = \begin{bmatrix} a\_{11} & a\_{12} & \cdots & a\_{1n} \\ a\_{21} & a\_{22} & \cdots & a\_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ a\_{m1} & a\_{m2} & \cdots & a\_{mn} \end{bmatrix} \\

> **NOTE:**
>
> *Remark 1* (Matrix entries, and vectors as matrices). The entry in row \\i\\ and column \\j\\ of \\\mathbf{A}\\ is written \\a\_{ij}\\ or \\(\mathbf{A})\_{ij}\\. For example, for the \\2 \times 3\\ matrix
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}, \\
>
> \\a\_{12} = 2\\ and \\a\_{23} = 6\\.
>
> A column vector of length \\p\\ is a \\p \times 1\\ matrix, and a row vector of length \\p\\ is a \\1 \times p\\ matrix. For example, the column vector \\(7, 8)\\ is a \\2 \times 1\\ matrix, and the row vector \\\[7,\\ 8\]\\ is a \\1 \times 2\\ matrix.

> **NOTE:**
>
> **Definition 2 (Tensor)** A **tensor** [\[2\]](#ref-wikipedia_tensor) of order \\k \ge 1\\ is an array of numbers with \\k\\ indices, \\ \mathcal{A} = \mathopen{}\left(a\_{i_1 i_2 \cdots i_k}\right)\mathclose{}, \quad i_1 = 1, \ldots, n_1, \\ \ldots, \\ i_k = 1, \ldots, n_k, \\ and its dimensions are \\n_1 \times n_2 \times \cdots \times n_k\\.

> **NOTE:**
>
> **Example 1 (Vectors, matrices and images as tensors)** A vector of length \\p\\ is a tensor of order \\1\\, and an \\m \times n\\ [matrix](#def-matrix) is a tensor of order \\2\\. A \\28 \times 28\\ grayscale image is a matrix: the entry \\a\_{ij}\\ is the brightness of the pixel in row \\i\\ and column \\j\\. A \\28 \times 28\\ color image stores three numbers per pixel (red, green, blue), so it is an order-3 tensor with dimensions \\28 \times 28 \times 3\\, and \\a\_{ijc}\\ is the value of color channel \\c\\ at the pixel in row \\i\\ and column \\j\\. It has \\28 \cdot 28 \cdot 3 = 2352\\ entries.

### 0.1.1 Matrix transpose

> **NOTE:**
>
> **Definition 3 (Matrix transpose)** The **transpose** [\[3\]](#ref-wikipedia_transpose) of an \\m \times n\\ matrix \\\mathbf{A}\\ is the \\n \times m\\ matrix \\{\mathbf{A}}^{\top}\\ obtained by swapping the rows and columns of \\\mathbf{A}\\:
>
> \\({\mathbf{A}}^{\top})\_{ij} = a\_{ji}\\

> **NOTE:**
>
> **Example 2 (Transposing a \\2 \times 3\\ matrix)** For \\\mathbf{A} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}\\,
>
> \\ {\mathbf{A}}^{\top} = \begin{bmatrix} 1 & 4 \\ 2 & 5 \\ 3 & 6 \end{bmatrix}, \\
>
> a \\3 \times 2\\ matrix. For instance, entry \\(1, 2)\\ of the transpose is \\a\_{21} = 4\\.

### 0.1.2 Matrix addition

> **NOTE:**
>
> **Definition 4 (Zero matrix)** The \\m \times n\\ **zero matrix** [\[4\]](#ref-wikipedia_zero_matrix) \\\mathbf{0}\_{m \times n}\\ (or \\\mathbf{0}\\ when dimensions are clear from context) has all entries equal to zero:
>
> \\ \mathbf{0}\_{m \times n} = \begin{bmatrix} 0 & 0 & \cdots & 0 \\ 0 & 0 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & 0 \end{bmatrix} \\

> **NOTE:**
>
> **Example 3 (Zero matrices of two shapes)** \\ \mathbf{0}\_{2 \times 3} = \begin{bmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \end{bmatrix}, \qquad \mathbf{0}\_{3 \times 2} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \\ 0 & 0 \end{bmatrix}. \\
>
> Both have all entries \\0\\, but one is \\2 \times 3\\ and the other \\3 \times 2\\, so they are different matrices.

> **NOTE:**
>
> **Definition 5 (Matrix addition)** Two matrices \\\mathbf{A}\\ and \\\mathbf{B}\\ of the same dimensions \\m \times n\\ can be added element-wise; their **matrix sum** [\[5\]](#ref-wikipedia_matrix_addition) is:
>
> \\(\mathbf{A} + \mathbf{B})\_{ij} = a\_{ij} + b\_{ij}\\

> **NOTE:**
>
> **Example 4 (Adding matrices, and a sum that is not defined)** \\ \begin{aligned} \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} + \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix} &= \begin{bmatrix} 1 + 0 & 2 + 1 \\ 3 + 1 & 4 + 0 \end{bmatrix} && \text{(add entry by entry)} \\ &= \begin{bmatrix} 1 & 3 \\ 4 & 4 \end{bmatrix}. && \text{(add)} \end{aligned} \\
>
> A \\2 \times 2\\ matrix and a \\2 \times 3\\ matrix cannot be added: they do not have the same dimensions, so entry \\(1, 3)\\ of the sum would have no first term.

> **NOTE:**
>
> **Theorem 1 (Matrix addition is commutative)** For \\m \times n\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\, matrix addition is [commutative](algebra-sums.llms.md#def-commutative):
>
> \\\mathbf{A} + \mathbf{B} = \mathbf{B} + \mathbf{A}\\

> **NOTE:**
>
> **Theorem 2 (Matrix addition is associative)** For \\m \times n\\ matrices \\\mathbf{A}\\, \\\mathbf{B}\\, and \\\mathbf{C}\\, matrix addition is [associative](algebra-sums.llms.md#def-associative):
>
> \\(\mathbf{A} + \mathbf{B}) + \mathbf{C} = \mathbf{A} + (\mathbf{B} + \mathbf{C})\\

> **NOTE:**
>
> **Theorem 3 (Zero matrix is the additive identity)** For an \\m \times n\\ matrix \\\mathbf{A}\\:
>
> \\\mathbf{A} + \mathbf{0}\_{m \times n} = \mathbf{A}\\

> **NOTE:**
>
> **Theorem 4 (Additive inverse)** For any \\m \times n\\ matrix \\\mathbf{A}\\, the \\m \times n\\ matrix \\-\mathbf{A}\\ (defined by \\(-\mathbf{A})\_{ij} = -a\_{ij}\\) satisfies:
>
> \\\mathbf{A} + (-\mathbf{A}) = \mathbf{0}\_{m \times n}\\

### 0.1.3 Scalar multiplication

> **NOTE:**
>
> **Definition 6 (Scalar multiplication)** The **scalar multiple** [\[6\]](#ref-wikipedia_scalar_multiplication) of a matrix \\\mathbf{A}\\ by a scalar \\c\\ is:
>
> \\(c\mathbf{A})\_{ij} = c \cdot a\_{ij}\\

> **NOTE:**
>
> **Example 5 (A scalar multiple)** \\ \begin{aligned} 3 \begin{bmatrix} 1 & -2 \\ 0 & 4 \end{bmatrix} &= \begin{bmatrix} 3 \cdot 1 & 3 \cdot(-2) \\ 3 \cdot 0 & 3 \cdot 4 \end{bmatrix} \\ &= \begin{bmatrix} 3 & -6 \\ 0 & 12 \end{bmatrix}. \end{aligned} \\

### 0.1.4 Matrix multiplication

> **NOTE:**
>
> **Definition 7 (Matrix multiplication)** The **product** [\[7\]](#ref-wikipedia_matrix_multiplication) of an \\m \times k\\ matrix \\\mathbf{A}\\ and a \\k \times n\\ matrix \\\mathbf{B}\\ is the \\m \times n\\ matrix \\\mathbf{C} = \mathbf{A}\mathbf{B}\\ with entries:
>
> \\c\_{ij} = \sum\_{s=1}^{k} a\_{is}\\ b\_{sj}\\

> **NOTE:**
>
> *Remark 2* (Matrix multiplication is not commutative). When \\\mathbf{A}\mathbf{B}\\ and \\\mathbf{B}\mathbf{A}\\ are both defined, they are usually different. For example, with
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix}, \qquad \mathbf{B} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \end{bmatrix}, \\
>
> \\ \begin{aligned} \mathbf{A}\mathbf{B} &= \begin{bmatrix} 3 & 2 \\ 1 & 1 \end{bmatrix} \\ \mathbf{B}\mathbf{A} &= \begin{bmatrix} 1 & 2 \\ 1 & 3 \end{bmatrix}, \end{aligned} \\
>
> so \\\mathbf{A}\mathbf{B} \neq \mathbf{B}\mathbf{A}\\.

> **NOTE:**
>
> **Example 6 (Dot product as matrix multiplication)** The dot product of two column vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}\\ can be written as a matrix product of the row vector \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\ with the column vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}\\:
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}} &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}} \\ &= \[x_1,\\ x_2,\\ \ldots,\\ x_p\] \begin{bmatrix} \beta\_{1} \\ \beta\_{2} \\ \vdots \\ \beta\_{p} \end{bmatrix} \\ &= x_1\beta\_{1} + x_2\beta\_{2} + \cdots + x_p \beta\_{p} \end{aligned} \\

> **NOTE:**
>
> **Theorem 5 (Matrix multiplication is associative)** For an \\m \times k\\ matrix \\\mathbf{A}\\, a \\k \times l\\ matrix \\\mathbf{B}\\, and an \\l \times n\\ matrix \\\mathbf{C}\\:
>
> \\ \underbrace{(\mathbf{A}\mathbf{B})\mathbf{C}}\_{m \times n} = \underbrace{\mathbf{A}(\mathbf{B}\mathbf{C})}\_{m \times n} \\

> **NOTE:**
>
> *Proof*. Entry \\(i, j)\\ of each side, from [Definition 7](#def-matrix-mult):
>
> \\ \begin{aligned} \mathopen{}\left\[(\mathbf{A}\mathbf{B})\mathbf{C}\right\]\mathclose{}\_{ij} &= \sum\_{t=1}^{l} (\mathbf{A}\mathbf{B})\_{it}\\ c\_{tj} && \text{(definition of } (\mathbf{A}\mathbf{B})\mathbf{C} \text{)} \\ &= \sum\_{t=1}^{l} \mathopen{}\left(\sum\_{s=1}^{k} a\_{is}\\ b\_{st}\right)\mathclose{} c\_{tj} && \text{(definition of } \mathbf{A}\mathbf{B} \text{)} \\ &= \sum\_{s=1}^{k} a\_{is} \mathopen{}\left(\sum\_{t=1}^{l} b\_{st}\\ c\_{tj}\right)\mathclose{} && \text{(distribute and swap the finite sums)} \\ &= \sum\_{s=1}^{k} a\_{is}\\ (\mathbf{B}\mathbf{C})\_{sj} && \text{(definition of } \mathbf{B}\mathbf{C} \text{)} \\ &= \mathopen{}\left\[\mathbf{A}(\mathbf{B}\mathbf{C})\right\]\mathclose{}\_{ij} && \text{(definition of } \mathbf{A}(\mathbf{B}\mathbf{C}) \text{)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 6 (Matrix multiplication is distributive over addition)** Matrix multiplication [distributes](algebra-sums.llms.md#def-distributes-over) over addition from the left and from the right. For an \\m \times k\\ matrix \\\mathbf{A}\\ and \\k \times n\\ matrices \\\mathbf{B}\\ and \\\mathbf{C}\\:
>
> \\\mathbf{A}(\mathbf{B} + \mathbf{C}) = \mathbf{A}\mathbf{B} + \mathbf{A}\mathbf{C}\\
>
> For \\m \times k\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\ and a \\k \times n\\ matrix \\\mathbf{C}\\:
>
> \\(\mathbf{A} + \mathbf{B})\mathbf{C} = \mathbf{A}\mathbf{C} + \mathbf{B}\mathbf{C}\\

> **NOTE:**
>
> **Theorem 7 (Product of two sums of matrices)** For \\m \times k\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\ and \\k \times n\\ matrices \\\mathbf{C}\\ and \\\mathbf{D}\\,
>
> \\ (\mathbf{A} + \mathbf{B})(\mathbf{C} + \mathbf{D}) = \mathbf{A}\mathbf{C} + \mathbf{A}\mathbf{D} + \mathbf{B}\mathbf{C} + \mathbf{B}\mathbf{D}. \\
>
> Each product keeps its factors in the order they appear on the left, because matrix multiplication is not commutative. So \\\mathbf{A}\mathbf{D}\\ and \\\mathbf{B}\mathbf{C}\\ are not collected into \\2\mathbf{A}\mathbf{D}\\.

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} (\mathbf{A} + \mathbf{B})(\mathbf{C} + \mathbf{D}) &= (\mathbf{A} + \mathbf{B})\mathbf{C} + (\mathbf{A} + \mathbf{B})\mathbf{D} && \text{(}\href{#thm-matmul-distrib}{\text{Theorem~6}}\text{, from the left)} \\ &= \mathbf{A}\mathbf{C} + \mathbf{B}\mathbf{C} + \mathbf{A}\mathbf{D} + \mathbf{B}\mathbf{D} && \text{(}\href{#thm-matmul-distrib}{\text{Theorem~6}}\text{, from the right, twice)} \\ &= \mathbf{A}\mathbf{C} + \mathbf{A}\mathbf{D} + \mathbf{B}\mathbf{C} + \mathbf{B}\mathbf{D} && \text{(matrix addition is commutative)} \end{aligned} \\

> **NOTE:**
>
> **Example 7 (Why the middle terms do not combine)** Take \\\mathbf{A} = \mathbf{C} = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}\\ and \\\mathbf{B} = \mathbf{D} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \end{bmatrix}\\. Then \\\mathbf{A} + \mathbf{B} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, so
>
> \\ \begin{aligned} (\mathbf{A} + \mathbf{B})^2 &= \begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}, \\ \mathbf{A}^2 + \mathbf{A}\mathbf{B} + \mathbf{B}\mathbf{A} + \mathbf{B}^2 &= \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix} + \begin{bmatrix} 2 & 1 \\ 1 & 1 \end{bmatrix} + \begin{bmatrix} 1 & 1 \\ 1 & 2 \end{bmatrix} + \begin{bmatrix} 1 & 0 \\ 2 & 1 \end{bmatrix} \\ &= \begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}. \end{aligned} \\
>
> Here \\\mathbf{A}\mathbf{B} \neq \mathbf{B}\mathbf{A}\\, so the middle terms do not combine into \\2\mathbf{A}\mathbf{B}\\. The squared norm of a sum of vectors, \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2\\, is a case where they do combine ([Theorem 2 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#thm-norm-sum-square)), because \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\. Matrices that commute, such as \\\mathbf{A}\\ and \\\mathbf{A}^2\\, combine the same way.

> **NOTE:**
>
> **Exercise 1 (Which of these products are defined?)** Let \\\mathbf{A}\\ be \\4 \times 3\\, let \\\mathbf{B}\\ be \\3 \times 2\\, and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^3\\. For each expression, say whether it is defined, and if so give the shape of the result:
>
> 1.  \\\mathbf{A}\mathbf{B}\\
> 2.  \\\mathbf{B}\mathbf{A}\\
> 3.  \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\
> 4.  \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\
> 5.  \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{\top}\\

> **NOTE:**
>
> *Solution 1*. A vector in \\\mathbb{R}^3\\ is a \\3 \times 1\\ matrix, so the same rule settles every case.
>
> 1.  \\\mathbf{A}\mathbf{B}\\: \\(4 \times 3)(3 \times 2)\\. The inner pair is \\3\\ and \\3\\, so it is defined, and the result is \\4 \times 2\\.
> 2.  \\\mathbf{B}\mathbf{A}\\: \\(3 \times 2)(4 \times 3)\\. The inner pair is \\2\\ and \\4\\, which do not match, so it is **not defined**. Matrix multiplication is not commutative, and this is the blunt form of that: swapping the order can leave an expression that means nothing.
> 3.  \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\: \\(4 \times 3)(3 \times 1)\\, defined, result \\4 \times 1\\ — a vector in \\\mathbb{R}^4\\.
> 4.  \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\: \\(1 \times 3)(3 \times 1)\\, defined, result \\1 \times 1\\ — a single number. The product is the inner product of [Equation 1 in Vectors](linear-algebra-vectors.llms.md#eq-inner-product).
> 5.  \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{\top}\\: \\(3 \times 1)(1 \times 3)\\, defined, result \\3 \times 3\\ — a matrix.
>
> The last two use the same two vectors and differ only in order, and they return objects of different kinds. Reading a transpose as decoration rather than as a shape change is the commonest way to lose track of an expression.

### 0.1.5 Square and identity matrices

> **NOTE:**
>
> **Definition 8 (Square matrix)** A matrix is **square** [\[8\]](#ref-wikipedia_square_matrix) if it has the same number of rows as columns.

> **NOTE:**
>
> **Example 8 (Square and not square)** \\\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\ is square (\\2\\ rows, \\2\\ columns); \\\begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}\\ is not (\\2\\ rows, \\3\\ columns).

> **NOTE:**
>
> **Definition 9 (Main diagonal)** The **main diagonal** [\[9\]](#ref-wikipedia_main_diagonal) of an \\m \times n\\ matrix \\\mathbf{A}\\ is the list of its entries \\a\_{11}, a\_{22}, \ldots, a\_{kk}\\, where \\k\\ is the smaller of \\m\\ and \\n\\.

> **NOTE:**
>
> **Definition 10 (Diagonal entry)** The entries on the main diagonal ([Definition 9](#def-main-diagonal)) of a matrix \\\mathbf{A}\\ are the **diagonal entries** of \\\mathbf{A}\\.

> **NOTE:**
>
> **Definition 11 (Off-diagonal entry)** In an \\m \times n\\ matrix \\\mathbf{A}\\ with main diagonal ([Definition 9](#def-main-diagonal)), every entry \\a\_{ij}\\ with \\i \ne j\\ is an **off-diagonal entry**.

> **NOTE:**
>
> **Example 9 (Diagonal entries of a square and a non-square matrix)**  
>
> - For \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\, the diagonal entries are \\a\_{11} = 1\\ and \\a\_{22} = 4\\, and the off-diagonal entries are \\a\_{12} = 2\\ and \\a\_{21} = 3\\.
> - For \\\mathbf{B} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}\\, \\m = 2\\ and \\n = 3\\, so \\k = 2\\, and the diagonal entries are \\b\_{11} = 1\\ and \\b\_{22} = 5\\; the other four entries, \\2\\, \\3\\, \\4\\ and \\6\\, are off-diagonal.

> **NOTE:**
>
> **Definition 12 (Identity matrix)** The \\p \times p\\ **identity matrix** [\[10\]](#ref-wikipedia_identity_matrix) \\\mathbf{I}\_p\\ (or \\\mathbf{I}\\ when the size is clear from context) has ones on the [main diagonal](#def-main-diagonal) and zeros elsewhere:
>
> \\ (\mathbf{I}\_p)\_{ij} = \begin{cases} 1 & \text{if } i = j \\ 0 & \text{if } i \neq j \end{cases} \qquad \mathbf{I}\_p = \begin{bmatrix} 1 & 0 & \cdots & 0 \\ 0 & 1 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & 1 \end{bmatrix} \\

> **NOTE:**
>
> **Example 10 (The \\3 \times 3\\ identity)** \\ \mathbf{I}\_3 = \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix}, \\
>
> so, for instance, \\(\mathbf{I}\_3)\_{22} = 1\\ and \\(\mathbf{I}\_3)\_{23} = 0\\.

> **NOTE:**
>
> *Remark 3* (The identity matrix and the Kronecker delta). The entries of the identity matrix are given by the [Kronecker delta](indicator-functions.llms.md#def-kronecker-delta): \\(\mathbf{I}\_p)\_{ij} = \delta\_{ij}\\.

> **NOTE:**
>
> **Theorem 8 (Identity matrix is a multiplicative identity)** For any \\m \times p\\ matrix \\\mathbf{A}\\:
>
> \\\mathbf{A}\\\mathbf{I}\_p = \mathbf{A}\\
>
> \\\mathbf{I}\_m\\\mathbf{A} = \mathbf{A}\\

### 0.1.6 Matrix-vector multiplication

> **NOTE:**
>
> **Definition 13 (Matrix-vector multiplication)** The **matrix-vector product** of an \\m \times p\\ matrix \\\mathbf{A}\\ and a \\p \times 1\\ column vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is the \\m \times 1\\ column vector \\\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ with entries:
>
> \\(\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\_i = \sum\_{j=1}^pa\_{ij}\\ x_j\\

> **NOTE:**
>
> *Remark 4* (Each entry is a dot product). Matrix-vector multiplication extends the dot product ([Definition 8 in Vectors](linear-algebra-vectors.llms.md#def-dot-product)): entry \\i\\ of \\\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is the dot product of row \\i\\ of \\\mathbf{A}\\ with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\. For example,
>
> \\ \begin{aligned} \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix} &= \begin{bmatrix} 1 \cdot 1 + 2 \cdot(-1) \\ 3 \cdot 1 + 4 \cdot(-1) \end{bmatrix} \\ &= \begin{bmatrix} -1 \\ -1 \end{bmatrix}. \end{aligned} \\

> **NOTE:**
>
> **Definition 14 (Linear system, system of linear equations)** A **linear system** [\[11\]](#ref-wikipedia_system_of_linear_equations) (or **system of linear equations**) with \\m\\ equations in \\n\\ unknowns is an equation \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ in which the \\m \times n\\ matrix \\\mathbf{A}\\ and the vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\ are given. A **solution** of the system is a vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^n\\ for which \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ holds.

> **NOTE:**
>
> **Example 11 (Two equations in two unknowns)** By [Definition 13](#def-matvec-mult), row \\i\\ of \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is the equation \\a\_{i1} x_1 + \cdots + a\_{in} x_n = b_i\\. So the two equations \\x_1 + 2 x_2 = 5\\ and \\3 x_1 + 4 x_2 = 6\\ form the linear system \\\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \begin{bmatrix} 5 \\ 6 \end{bmatrix}\\. The vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (-4, 4.5)\\ is a solution:
>
> \\ \begin{aligned} \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \begin{bmatrix} -4 \\ 4.5 \end{bmatrix} &= \begin{bmatrix} 1 \cdot(-4) + 2 \cdot 4.5 \\ 3 \cdot(-4) + 4 \cdot 4.5 \end{bmatrix} && \text{(}\href{#def-matvec-mult}{\text{Definition~13}}\text{)} \\ &= \begin{bmatrix} -4 + 9 \\ -12 + 18 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 5 \\ 6 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> The vector \\(1, 2)\\ is not a solution: its first equation holds, since \\1 + 2 \cdot 2 = 5\\, but its second gives \\3 \cdot 1 + 4 \cdot 2 = 11 \ne 6\\.

### 0.1.7 Linear and affine maps

> **NOTE:**
>
> **Definition 15 (Linear map, linear transformation, linear function)** A [function](functions.llms.md#def-function) \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is a **linear map** [\[12\]](#ref-wikipedia_linear_map) (also called a **linear transformation** or **linear function**) if it preserves vector addition and scalar multiplication: for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\ and \\c \in \mathbb{R}\\,
>
> 1.  \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\ (*additivity*)
> 2.  \\f(c\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = c f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ (*homogeneity*)

> **NOTE:**
>
> **Example 12 (A linear map, and two functions that are not)**  
>
> - \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = (2 x_1,\\ x_1 + x_2)\\ on \\\mathbb{R}^2\\ is linear. For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^2\\ and \\c \in \mathbb{R}\\:
>
>   \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) &= (2 (x_1 + y_1),\\ (x_1 + y_1) + (x_2 + y_2)) \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \end{aligned} \\
>
>   and
>
>   \\ \begin{aligned} f(c \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= (2 c x_1,\\ c x_1 + c x_2) \\ &= c f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}). \end{aligned} \\
>
> - \\g(x) = x + 1\\ on \\\mathbb{R}\\ is not linear: additivity fails, since \\g(0 + 0) = 1\\ but \\g(0) + g(0) = 2\\.
>
> - \\h(x) = x^2\\ on \\\mathbb{R}\\ is not linear: \\h(2 \cdot 1) = 4\\ but \\2\\h(1) = 2\\, so \\h(c x) \ne c\\h(x)\\ for \\c = 2\\, \\x = 1\\.

> **NOTE:**
>
> **Definition 16 (Linear operator)** A **linear operator** on \\\mathbb{R}^p\\ is a linear map ([Definition 15](#def-linear-map)) from \\\mathbb{R}^p\\ to itself, that is, a linear map \\f : \mathbb{R}^p \to \mathbb{R}^p\\ whose input and output have the same length. Some authors use “operator” more loosely, for any linear map.

> **NOTE:**
>
> **Example 13 (A linear operator, and a linear map that is not one)** The map \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = (2 x_1,\\ x_1 + x_2)\\ from [Example 12](#exm-linear-map) sends \\\mathbb{R}^2\\ to \\\mathbb{R}^2\\, so it is a linear operator on \\\mathbb{R}^2\\. The linear map \\g(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1 + x_2\\ sends \\\mathbb{R}^2\\ to \\\mathbb{R}\\, so it is linear but not an operator: its outputs have length \\1\\, not \\2\\.

> **NOTE:**
>
> **Theorem 9 (A linear map sends zero to zero)** If \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is a linear map ([Definition 15](#def-linear-map)), then \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.

> **NOTE:**
>
> *Proof*. On the left, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ is the zero vector of length \\p\\; on the right, it is the zero vector of length \\m\\.
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) &= f(0 \cdot\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) && \text{(every entry of } 0 \cdot\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\text{ is } 0 \cdot 0 = 0 \text{; }\href{#def-scalar-mult}{\text{Definition~6}}\text{)} \\&= 0 \cdot f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) && \text{(homogeneity, with } c = 0 \text{ and } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\text{)} \\&= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}} && \text{(every entry of } 0 \cdot f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) \text{ is } 0 \text{; }\href{#def-scalar-mult}{\text{Definition~6}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 14 (Ruling out linearity at zero)** In [Example 12](#exm-linear-map), \\g(x) = x + 1\\ has \\g(0) = 1 \neq 0\\, so by [Theorem 9](#thm-linear-map-zero) it is not linear, without checking additivity or homogeneity.
>
> Sending \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ is necessary but not sufficient: \\h(x) = x^2\\ in the same example has \\h(0) = 0\\ and is still not linear.

> **NOTE:**
>
> **Theorem 10 (Multiplying by a matrix is a linear map)** For any \\m \times p\\ matrix \\\mathbf{A}\\, the function \\f: \mathbb{R}^p \to \mathbb{R}^m\\ defined by \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is a linear map ([Definition 15](#def-linear-map)).

> **NOTE:**
>
> *Proof*. Both conditions are checked one entry at a time. For each \\i \in \\1, \ldots, m\\\\, additivity:
>
> \\ \begin{aligned} \mathopen{}\left(\mathbf{A}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right)\mathclose{}\_i &= \sum\_{j=1}^pa\_{ij} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\_j && \text{(}\href{#def-matvec-mult}{\text{Definition~13}}\text{)} \\&= \sum\_{j=1}^pa\_{ij} (x_j + y_j) && \text{(}\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~7 in Vectors}}\text{)} \\&= \sum\_{j=1}^p(a\_{ij} x_j + a\_{ij} y_j) && \text{(multiplication distributes over addition)} \\&= \sum\_{j=1}^pa\_{ij} x_j + \sum\_{j=1}^pa\_{ij} y_j && \text{(a sum of sums splits)} \\&= (\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\_i + (\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\_i && \text{(}\href{#def-matvec-mult}{\text{Definition~13}}\text{)} \\&= (\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\_i && \text{(}\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~7 in Vectors}}\text{)} \end{aligned} \\
>
> and homogeneity:
>
> \\ \begin{aligned} \mathopen{}\left(\mathbf{A}(c\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\right)\mathclose{}\_i &= \sum\_{j=1}^pa\_{ij} (c\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\_j && \text{(}\href{#def-matvec-mult}{\text{Definition~13}}\text{)} \\&= \sum\_{j=1}^pa\_{ij}\\ c\\ x_j && \text{(}\href{#def-scalar-mult}{\text{Definition~6}}\text{)} \\&= \sum\_{j=1}^pc\\ a\_{ij} x_j && \text{(products are symmetric)} \\&= c \sum\_{j=1}^pa\_{ij} x_j && \text{(a constant factor comes out of a sum)} \\&= c\\ (\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\_i && \text{(}\href{#def-matvec-mult}{\text{Definition~13}}\text{)} \\&= (c\\ \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\_i && \text{(}\href{#def-scalar-mult}{\text{Definition~6}}\text{)} \end{aligned} \\
>
> The four algebra rules cited here are on the [algebra page](algebra.llms.md): [distributivity](algebra-sums.llms.md#thm-mult-distr), [a sum of sums](algebra-sums.llms.md#thm-sum-of-sums), [symmetry of products](algebra-sums.llms.md#thm-prod-symmetric), and [a constant factor](algebra-sums.llms.md#thm-sum-constant-factor).

> **NOTE:**
>
> **Theorem 11 (A linear map preserves linear combinations)** If \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is a linear map ([Definition 15](#def-linear-map)), then for any vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_k \in \mathbb{R}^p\\ and any coefficients \\c_1, \ldots, c_k \in \mathbb{R}\\:
>
> \\f\mathopen{}\left(\sum\_{j=1}^{k} c_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_j\right)\mathclose{} = \sum\_{j=1}^{k} c_j f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_j)\\

> **NOTE:**
>
> *Proof*. By [induction](proof-writing.llms.md#def-proof-by-induction) on \\k\\. For \\k = 1\\, the claim \\f(c_1 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_1) = c_1 f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_1)\\ is homogeneity.
>
> Suppose the claim holds for \\k\\ vectors. Then for \\k + 1\\:
>
> \\ \begin{aligned} f\mathopen{}\left(\sum\_{j=1}^{k+1} c_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_j\right)\mathclose{} &= f\mathopen{}\left(\sum\_{j=1}^{k} c_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_j + c\_{k+1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_{k+1}\right)\mathclose{} && \text{(split off the last term)} \\&= f\mathopen{}\left(\sum\_{j=1}^{k} c_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_j\right)\mathclose{} + f(c\_{k+1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_{k+1}) && \text{(additivity)} \\&= \sum\_{j=1}^{k} c_j f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_j) + f(c\_{k+1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_{k+1}) && \text{(induction hypothesis)} \\&= \sum\_{j=1}^{k} c_j f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_j) + c\_{k+1} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_{k+1}) && \text{(homogeneity)} \\&= \sum\_{j=1}^{k+1} c_j f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_j) && \text{(join the last term back on)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 12 (Every linear map is multiplication by a matrix)** If \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is a linear map ([Definition 15](#def-linear-map)), then there is exactly one \\m \times p\\ matrix \\\mathbf{A}\\ such that
>
> \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\quad \text{for all } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\
>
> Column \\j\\ of \\\mathbf{A}\\ is \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\\, the value of \\f\\ at the \\j\\th indicator vector ([Definition 18 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)); that is, \\a\_{ij} = \mathopen{}\left(f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\right)\mathclose{}\_i\\.

> **NOTE:**
>
> *Proof*. **Existence.** Let \\\mathbf{A}\\ be the \\m \times p\\ matrix with \\a\_{ij} = \mathopen{}\left(f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\right)\mathclose{}\_i\\. For any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\,
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= f\mathopen{}\left(\sum\_{j=1}^px_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\right)\mathclose{} && \text{(}\href{linear-algebra-vectors.qmd#thm-standard-basis-expansion}{\text{Theorem~4 in Vectors}}\text{)} \\&= \sum\_{j=1}^px_j f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j) && \text{(}\href{#thm-linear-map-lincom}{\text{Theorem~11}}\text{)} \end{aligned} \\
>
> and entry \\i\\ of that sum is
>
> \\ \begin{aligned} \mathopen{}\left(\sum\_{j=1}^px_j f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\right)\mathclose{}\_i &= \sum\_{j=1}^px_j \mathopen{}\left(f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\right)\mathclose{}\_i && \text{(}\href{linear-algebra-vectors.qmd#def-linear-combination}{\text{Definition~9 in Vectors}}\text{, entry by entry)} \\&= \sum\_{j=1}^px_j a\_{ij} && \text{(definition of } \mathbf{A} \text{)} \\&= \sum\_{j=1}^pa\_{ij} x_j && \text{(products are symmetric)} \\&= (\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\_i && \text{(}\href{#def-matvec-mult}{\text{Definition~13}}\text{)} \end{aligned} \\
>
> **Uniqueness.** Suppose \\\mathbf{B}\\ is any \\m \times p\\ matrix with \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{B}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\. Taking \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\\, for each \\i\\:
>
> \\ \begin{aligned} \mathopen{}\left(f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\right)\mathclose{}\_i &= (\mathbf{B}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\_i && \text{(assumption on } \mathbf{B} \text{)} \\&= \sum\_{k=1}^{p} b\_{ik} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\_k && \text{(}\href{#def-matvec-mult}{\text{Definition~13}}\text{)} \\&= b\_{ij} \cdot 1 + \sum\_{k \neq j} b\_{ik} \cdot 0 && \text{(}\href{linear-algebra-vectors.qmd#def-indicator-vector}{\text{Definition~18 in Vectors}}\text{, splitting off the } k = j \text{ term)} \\&= b\_{ij} + 0 && \text{(times } 1 \text{ changes nothing; times } 0 \text{ gives } 0 \text{)} \\&= b\_{ij} && \text{(adding } 0 \text{ changes nothing)} \end{aligned} \\
>
> So
>
> \\ \begin{aligned} b\_{ij} &= \mathopen{}\left(f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\right)\mathclose{}\_i \\ &= a\_{ij} \end{aligned} \\
>
> for every \\i\\ and \\j\\, and \\\mathbf{B} = \mathbf{A}\\.

> **NOTE:**
>
> **Definition 17 (Matrix of a linear map)** The **matrix of** a linear map \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is the unique \\m \times p\\ matrix \\\mathbf{A}\\ with \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ ([Theorem 12](#thm-linear-map-matrix)). Its column \\j\\ is \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\\.

> **NOTE:**
>
> **Example 15 (Finding the matrix of a linear map)** For \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = (2 x_1,\\ x_1 + x_2)\\ from [Example 12](#exm-linear-map), the values of \\f\\ at the indicator vectors are
>
> \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1) = f\mathopen{}\left(\begin{bmatrix}1 \\ 0\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}2 \cdot 1 \\ 1 + 0\end{bmatrix} = \begin{bmatrix}2 \\ 1\end{bmatrix}, \qquad f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_2) = f\mathopen{}\left(\begin{bmatrix}0 \\ 1\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}2 \cdot 0 \\ 0 + 1\end{bmatrix} = \begin{bmatrix}0 \\ 1\end{bmatrix} \\
>
> and these are the columns of the matrix of \\f\\ ([Definition 17](#def-matrix-of-linear-map)): \\\mathbf{A} = \begin{bmatrix}2 & 0 \\ 1 & 1\end{bmatrix}\\.

> **NOTE:**
>
> **Corollary 1 (Linear functions from vectors to numbers)** A function \\f: \mathbb{R}^p \to \mathbb{R}\\ is linear ([Definition 15](#def-linear-map)) if and only if there is a vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \in \mathbb{R}^p\\ such that
>
> \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \quad \text{for all } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\
>
> and then \\w_j = f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\\ for each \\j\\.

> **NOTE:**
>
> *Proof*. **If \\f\\ is linear.** [Theorem 12](#thm-linear-map-matrix) with \\m = 1\\ gives a \\1 \times p\\ matrix \\\mathbf{A}\\ with \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\a\_{1j} = f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j)\\. Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\\ be the vector with \\w_j = a\_{1j}\\, so that \\\mathbf{A} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}^{\top}\\. Then
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(}\href{#thm-linear-map-matrix}{\text{Theorem~12}}\text{)} \\&= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && (\mathbf{A} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}^{\top}) \end{aligned} \\
>
> and
>
> \\ \begin{aligned} w_j &= a\_{1j} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j). \end{aligned} \\
>
> **If \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\.** Here \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}^{\top}\\ is a \\1 \times p\\ matrix, so \\f\\ is linear by [Theorem 10](#thm-matrix-map-linear).

> **NOTE:**
>
> **Example 16 (A linear function from \\\mathbb{R}^2\\ to \\\mathbb{R}\\)** \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = 3 x_1 + 5 x_2\\ is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} = {(3, 5)}^{\top}\\, so it is linear by [Corollary 1](#cor-linear-scalar). The entries of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\\ are the values at the indicator vectors:
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1) &= 3 \cdot 1 + 5 \cdot 0 \\ &= 3 \end{aligned} \\
>
> and
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_2) &= 3 \cdot 0 + 5 \cdot 1 \\ &= 5. \end{aligned} \\
>
> \\g(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = 3 x_1 + 5 x_2 + 1\\ is not linear, because \\g(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) = 1 \neq 0\\ ([Theorem 9](#thm-linear-map-zero)).

> **TIP:**
>
> Two chapters of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown show the results above geometrically:
>
> - [Linear transformations and matrices](https://www.youtube.com/watch?v=kYB8IZa5AuE) (Chapter 3) shows why a linear map is fixed by where it sends the indicator vectors, which become the columns of its matrix ([Definition 17](#def-matrix-of-linear-map)).
> - [Dot products and duality](https://www.youtube.com/watch?v=LyGKycYT2v0) (Chapter 9) shows why every linear map from \\\mathbb{R}^p\\ to \\\mathbb{R}\\ is a dot product with a fixed vector ([Corollary 1](#cor-linear-scalar)).

> **NOTE:**
>
> **Definition 18 (Translation)** For a fixed vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\, the **translation** [\[13\]](#ref-wikipedia_translation_geometry) by \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is the function \\t\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}} : \mathbb{R}^m \to \mathbb{R}^m\\ defined by
>
> \\t\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\

> **NOTE:**
>
> **Example 17 (Translating two points)** The translation by \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = {(1, -2)}^{\top}\\ sends
>
> \\ t\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}\mathopen{}\left(\begin{bmatrix}0 \\ 0\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}0 + 1 \\ 0 + (-2)\end{bmatrix} = \begin{bmatrix}1 \\ -2\end{bmatrix}, \qquad t\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}\mathopen{}\left(\begin{bmatrix}3 \\ 4\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}3 + 1 \\ 4 + (-2)\end{bmatrix} = \begin{bmatrix}4 \\ 2\end{bmatrix} \\
>
> Both points move one unit right and two units down.

> **NOTE:**
>
> *Remark 5* (A translation moves every point by the same vector). A translation by \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ moves every point by the same vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\.

> **NOTE:**
>
> **Definition 19 (Affine map, affine transformation, affine function)** A [function](functions.llms.md#def-function) \\f: \mathbb{R}^p \to \mathbb{R}^m\\ is an **affine map** (also called an **affine transformation** or **affine function**) if it is a matrix product followed by a translation ([Definition 18](#def-translation)) (a [composition](functions.llms.md#def-composition), with the matrix product as the inner function): there are an \\m \times p\\ matrix \\\mathbf{A}\\ and a vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\ such that
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= t\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}(\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \\ &= \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \quad \text{for all } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p \end{aligned} \\

> **NOTE:**
>
> **Definition 20 (Offset of an affine map, intercept, bias)** In [Definition 19](#def-affine-map), the vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is called the **offset** of \\f\\ (statistics also calls it the **intercept**, and machine learning the **bias**).

> **NOTE:**
>
> *Remark 6* (Real-valued affine maps). For a real-valued function ([Definition 4 in Vectors](linear-algebra-vectors.llms.md#def-real-vector-valued), \\m = 1\\), \\\mathbf{A}\\ is a single row, written \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}^{\top}\\, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is a single number \\b\\, so an affine function is a linear function \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ ([Corollary 1](#cor-linear-scalar)) plus an offset:
>
> \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + b, \qquad \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \in \mathbb{R}^p, \quad b \in \mathbb{R} \tag{1}\\

> **NOTE:**
>
> **Definition 21 (Augmented vector)** The **augmented vector** of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\ is the vector \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{aug}} \in \mathbb{R}^{p+1}\\ formed by placing a \\1\\ above the entries of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\:
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{aug}} &= \begin{bmatrix}1 \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\end{bmatrix} \\ &= {(1, x_1, \ldots, x_p)}^{\top} \end{aligned} \\

> **NOTE:**
>
> **Example 18 (An affine function as a dot product with an augmented vector)** For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= {(2, 5)}^{\top}\\, the augmented vector is \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{aug}} = {(1, 2, 5)}^{\top}\\. With \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} = {(3, -1)}^{\top}\\ and \\b = 4\\, the affine function \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + b\\ ([Equation 1](#eq-linear-scalar)) equals the dot product of \\{(b, w_1, w_2)}^{\top} = {(4, 3, -1)}^{\top}\\ with \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{aug}}\\:
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + b &= 3 \cdot 2 + (-1) \cdot 5 + 4 \\ &= 5, \\ {(4, 3, -1)}^{\top} \cdot {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{aug}} &= 4 \cdot 1 + 3 \cdot 2 + (-1) \cdot 5 \\ &= 5 \end{aligned} \\

> **NOTE:**
>
> **Theorem 13 (An affine map sends zero to its offset)** An affine map \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ ([Definition 19](#def-affine-map)) satisfies \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\.

> **NOTE:**
>
> *Proof*. First, \\\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\: for each \\i\\,
>
> \\ \begin{aligned} (\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}})\_i &= \sum\_{j=1}^pa\_{ij} \cdot 0 && \text{(}\href{#def-matvec-mult}{\text{Definition~13}}\text{)} \\&= \sum\_{j=1}^p0 && \text{(any number times } 0 \text{ is } 0 \text{)} \\&= 0 && \text{(a sum of zeros is } 0 \text{)} \end{aligned} \\
>
> Then
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) &= \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(}\href{#def-affine-map}{\text{Definition~19}}\text{)} \\&= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && (\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) \\&= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(adding } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\text{ changes no entry; }\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~7 in Vectors}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 14 (An affine map is linear exactly when its offset is zero)** An affine map \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ ([Definition 19](#def-affine-map)) is linear ([Definition 15](#def-linear-map)) if and only if \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.

> **NOTE:**
>
> *Proof*. If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, then
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ &= \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \end{aligned} \\
>
> which is linear by [Theorem 10](#thm-matrix-map-linear). Conversely, if \\f\\ is linear, then \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ by [Theorem 9](#thm-linear-map-zero), and \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ by [Theorem 13](#thm-affine-map-zero), so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.

> **NOTE:**
>
> **Example 19 (Two affine maps with the same matrix)** Let \\\mathbf{A} = \begin{bmatrix}2 & 0 \\ 1 & 1\end{bmatrix}\\, the matrix of the linear map in [Example 12](#exm-linear-map). \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ has offset \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, so it is linear. \\g(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \begin{bmatrix}1 \\ 0\end{bmatrix}\\ has offset \\\begin{bmatrix}1 \\ 0\end{bmatrix} \neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, so by [Theorem 14](#thm-affine-linear-iff) it is not linear: indeed \\g(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) = \begin{bmatrix}1 \\ 0\end{bmatrix}\\, not \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.

> **NOTE:**
>
> **Corollary 2 (Every linear map is affine)** Every linear map \\f : \mathbb{R}^p \to \mathbb{R}^m\\ ([Definition 15](#def-linear-map)) is an affine map ([Definition 19](#def-affine-map)) with offset \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.

> **NOTE:**
>
> *Proof*. If \\f\\ is linear, [Theorem 12](#thm-linear-map-matrix) gives a matrix \\\mathbf{A}\\ with
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ &= \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}, \end{aligned} \\
>
> which is [Definition 19](#def-affine-map) with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.

> **NOTE:**
>
> **Theorem 15 (An affine map determines its matrix and offset)** If \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ and \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{A}'\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}'\\ for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\ ([Definition 19](#def-affine-map)), then \\\mathbf{A}' = \mathbf{A}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}' = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\.

> **NOTE:**
>
> *Proof*. By [Theorem 13](#thm-affine-map-zero), applied to each formula,
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}'. \end{aligned} \\
>
> Then
>
> \\ \begin{aligned} \mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}&= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \\ &= \mathbf{A}'\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \end{aligned} \\
>
> for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, so \\\mathbf{A}\\ and \\\mathbf{A}'\\ are both matrices ([Definition 17](#def-matrix-of-linear-map)) of the linear map \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\mapsto f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ (linear by [Theorem 10](#thm-matrix-map-linear)), and the uniqueness in [Theorem 12](#thm-linear-map-matrix) gives \\\mathbf{A}' = \mathbf{A}\\.

> **NOTE:**
>
> *Remark 7* (“Linear” in this site, and in machine learning and statistics). This site uses “linear” only in the sense of [Definition 15](#def-linear-map), so by [Theorem 14](#thm-affine-linear-iff) a function with a nonzero offset is affine but not linear. For functions of one variable, this is the same split as [affine](algebra-exponentials.llms.md#def-affine-function) \\a x + b\\ versus [linear](algebra-exponentials.llms.md#def-linear-function) \\a x\\ on the algebra page. (The algebra page writes these as \\m x + b\\ and \\m x\\; here \\m\\ already names the number of outputs.)
>
> Machine learning and statistics often call any function of the form [Equation 1](#eq-linear-scalar) “linear”, as in a *linear model* in statistics or a *linear layer* in a neural network, and call the offset \\b\\ the bias (machine learning) or the intercept (statistics), as [Definition 19](#def-affine-map) notes. A model with an intercept is affine in \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ but linear in its coefficients \\(b, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}})\\, and that is the sense of “linear” in “linear model”: it stays linear in the coefficients even when the inputs are transformed: \\w_1 x + w_2 x^2 + b\\ is not affine in \\x\\, but it is linear in \\(b, w_1, w_2)\\. Separately, the affine function \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + b\\ is a linear function of the augmented vector \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{aug}}\\ ([Definition 21](#def-augmented-vector)), with \\b\\ as the coefficient on its first entry.

> **TIP:**
>
> - Zhou [\[14\]](#ref-zhou2024matrix), sections 6 (“Linear functions and operators”; see [Definition 16](#def-linear-operator)) and 7 (“Affine functions”), proves that every linear function is a matrix-vector product by the same route as [Theorem 12](#thm-linear-map-matrix), and that every affine function has the form \\\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\. It defines “affine” differently, by \\f(\alpha\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \beta\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = \alpha f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + \beta f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\ whenever \\\alpha+ \beta= 1\\, and shows that this condition holds exactly for the maps \\\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, so the two definitions agree.
> - Boyd and Vandenberghe [\[15\]](#ref-boyd2018vmls), chapter 2 (“Linear functions”), covers the vector-to-number case: linear functions as inner products, affine functions, the [first-order Taylor approximation](calculus-derivatives.llms.md#def-linear-approximation) as an affine function, and the regression model. Section 8.1 (“Linear and affine functions”) covers the vector-to-vector case. A free PDF is on the book’s website.

> **NOTE:**
>
> **Definition 22 (Hyperplane)** A **hyperplane** [\[16\]](#ref-wikipedia_hyperplane) in \\\mathbb{R}^p\\ is the set of points \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\ satisfying
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + b = 0\\
>
> for some vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \in \mathbb{R}^p \setminus \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\\\ and number \\b \in \mathbb{R}\\. The number \\b\\ is the offset of the hyperplane.

> **NOTE:**
>
> **Definition 23 (Normal vector of a hyperplane)** In [Definition 22](#def-hyperplane), the vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\\ is a **normal vector** [\[17\]](#ref-wikipedia_normal_geometry) of the hyperplane.

> **NOTE:**
>
> **Example 20 (A line in \\\mathbb{R}^2\\, and why the normal vector must be nonzero)**  
>
> - With \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} = (1, 1)\\ and \\b = -1\\, the hyperplane in \\\mathbb{R}^2\\ is the line \\x_1 + x_2 - 1 = 0\\. The point \\(1, 0)\\ is on it, since \\1 + 0 - 1 = 0\\; the point \\(1, 1)\\ is not, since \\1 + 1 - 1 = 1 \> 0\\, so it lies in the half-space where \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + b \> 0\\.
> - With \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, the equation reads \\b = 0\\: if \\b \ne 0\\ no point satisfies it, and if \\b = 0\\ every point does, so the set is empty or all of \\\mathbb{R}^2\\, not a line. That degenerate case is why the definition requires \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.

> **NOTE:**
>
> Show code
>
> ``` js
> viewof planeW1 = Inputs.range([-1.5, 1.5], {value: 1, step: 0.1, label: "w1"})
> viewof planeW2 = Inputs.range([-1.5, 1.5], {value: 0.5, step: 0.1, label: "w2"})
> viewof planeB = Inputs.range([-2, 2], {value: 0, step: 0.1, label: "b"})
> viewof planeTurn = Inputs.range([0, 360], {value: 30, step: 5, label: "turn the view"})
> ```
>
> Show code
>
> ``` js
> {
>   const sign = (v) => (v < 0 ? "\u2212" : "+");
>   const fmt = (v) => Math.abs(v).toFixed(1);
>   return md`f(x1, x2) = ${planeW1.toFixed(1)} x1 ${sign(planeW2)} ${fmt(planeW2)} x2 ${sign(planeB)} ${fmt(planeB)}.
> The orange slice, along x1 with x2 = 0, rises ${planeW1.toFixed(1)} for each unit of x1;
> the green slice, along x2, rises ${planeW2.toFixed(1)} for each unit of x2.
> Both slices cross the vertical axis at height b = ${planeB.toFixed(1)}.`;
> }
> ```
>
> Show code
>
> ``` js
> // The graph z = f(x1, x2) over the square [-2, 2] x [-2, 2], drawn in 3-D:
> // turn the square about the vertical axis, then look down on it from 30 degrees.
> planeView = {
>   const f = (x1, x2) => planeW1 * x1 + planeW2 * x2 + planeB;
>   const w = 340, h = 300, s = 38, sz = 16, elev = 30 * Math.PI / 180;
>   const turn = planeTurn * Math.PI / 180;
>   const at = (x1, x2, z) => {
>     const u = x1 * Math.cos(turn) - x2 * Math.sin(turn);
>     const v = x1 * Math.sin(turn) + x2 * Math.cos(turn);
>     return [w / 2 + s * u, h / 2 - s * Math.sin(elev) * v - sz * Math.cos(elev) * z];
>   };
>   const path = (pts) => d3.line()(pts.map(([a, b, z]) => at(a, b, z)));
>   const svg = d3.create("svg").attr("width", w).attr("height", h)
>     .attr("role", "img")
>     .attr("aria-label", "A tilted plane drawn in three dimensions over a square of inputs, " +
>       "with its two slices through the origin highlighted, " +
>       "and a vertical marker at the origin showing the height b.");
>   const ticks = d3.range(-2, 2.01, 0.5);
>   const corners = [[-2, -2], [2, -2], [2, 2], [-2, 2], [-2, -2]];
>   // the floor, z = 0, and the three axes
>   svg.append("path").attr("d", path(corners.map(([a, b]) => [a, b, 0])))
>     .attr("fill", "#eee").attr("stroke", "#bbb");
>   const axis = (p, q, name) => {
>     svg.append("path").attr("d", path([p, q])).attr("stroke", "#888");
>     const [tx, ty] = at(...q);
>     svg.append("text").attr("x", tx + 4).attr("y", ty).attr("font-size", 13).text(name);
>   };
>   axis([0, 0, 0], [2.6, 0, 0], "x1");
>   axis([0, 0, 0], [0, 2.6, 0], "x2");
>   axis([0, 0, -8], [0, 0, 8], "f");
>   // the plane itself, as a mesh of lines along each input
>   svg.append("path").attr("d", path(corners.map(([a, b]) => [a, b, f(a, b)])))
>     .attr("fill", "#1f77b4").attr("fill-opacity", 0.18).attr("stroke", "#1f77b4");
>   for (const t of ticks) {
>     svg.append("path").attr("d", path([[t, -2, f(t, -2)], [t, 2, f(t, 2)]]))
>       .attr("stroke", "#1f77b4").attr("stroke-opacity", 0.35).attr("fill", "none");
>     svg.append("path").attr("d", path([[-2, t, f(-2, t)], [2, t, f(2, t)]]))
>       .attr("stroke", "#1f77b4").attr("stroke-opacity", 0.35).attr("fill", "none");
>   }
>   // the slice along x1 (x2 = 0) has slope w1; the slice along x2 has slope w2
>   svg.append("path").attr("d", path([[-2, 0, f(-2, 0)], [2, 0, f(2, 0)]]))
>     .attr("stroke", "#ff7f0e").attr("stroke-width", 3);
>   svg.append("path").attr("d", path([[0, -2, f(0, -2)], [0, 2, f(0, 2)]]))
>     .attr("stroke", "#2ca02c").attr("stroke-width", 3);
>   const [ox, oy] = at(0, 0, planeB);
>   svg.append("circle").attr("cx", ox).attr("cy", oy).attr("r", 4).attr("fill", "#222");
>   svg.append("text").attr("x", ox + 6).attr("y", oy - 6).attr("font-size", 13).text("b");
>   return svg.node();
> }
> ```
>
> Show code
>
> ``` js
> Plot.plot({
>   ariaLabel: 'Contour map of the same plane seen from directly above, ' +
>     'with x1 across and x2 up, ' +
>     'shaded by the value of f, ' +
>     'with straight level lines one unit of f apart.',
>   width: 300, height: 300, marginLeft: 40,
>   x: {domain: [-2, 2], label: "x1"},
>   y: {domain: [-2, 2], label: "x2"},
>   color: {type: "diverging", scheme: "RdBu", domain: [-8, 8], legend: true, label: "f(x1, x2)"},
>   marks: [
>     Plot.contour({
>       x1: -2, y1: -2, x2: 2, y2: 2,
>       fill: (x1, x2) => planeW1 * x1 + planeW2 * x2 + planeB,
>       thresholds: d3.range(-8, 8.01, 1), stroke: "#333", strokeOpacity: 0.5
>     }),
>     Plot.ruleY([0], {stroke: "#ff7f0e", strokeWidth: 3}),
>     Plot.ruleX([0], {stroke: "#2ca02c", strokeWidth: 3})
>   ]
> })
> ```
>
> Figure 1: The [graph](functions.llms.md#def-graph) of \\f(x_1, x_2) = w_1 x_1 + w_2 x_2 + b\\, in three dimensions and from above.

> **NOTE:**
>
> **Exercise 2 (Write a rule in matrix form)** A clinic scores a patient’s risk from three measurements.
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
> Write this rule in the form of [Equation 1](#eq-linear-scalar), naming \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\\, \\b\\ and \\p\\ explicitly.

> **NOTE:**
>
> *Solution 2*. Read the [coefficients](linear-algebra-vectors.llms.md#def-lincom-coefficient) straight off the rule. There are three inputs, so \\p = 3\\:
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} = \begin{bmatrix} 0.4 \\ 0.2 \\ 1.5 \end{bmatrix}, \qquad b = -30\\
>
> and the rule is \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ b\\.

> **NOTE:**
>
> **Exercise 3 (Score a patient)** Give the score from the rule in [Exercise 2](#exr-write-in-matrix-form) for a patient aged \\50\\ with blood pressure \\130\\ and BMI \\28\\.

> **NOTE:**
>
> *Solution 3*. For the patient,
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \begin{bmatrix} 50 \\ 130 \\ 28 \end{bmatrix}\\
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= (0.4)(50) + (0.2)(130) + (1.5)(28) \\ &= 20 + 26 + 42 \\ &= 88 \end{aligned} \\
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= 88 - 30 \\ &= 58 \end{aligned} \\
>
> Two things are worth noticing. The [coefficients](linear-algebra-vectors.llms.md#def-lincom-coefficient) are not comparable as they stand. The [weight](linear-algebra-vectors.llms.md#def-weight) on BMI, \\1.5\\, is \\7.5\\ times the weight on blood pressure, \\0.2\\, but the contribution of BMI, \\42\\, is less than twice the contribution of blood pressure, \\26\\, because the BMI [value](functions.llms.md#def-value), \\28\\, is much smaller than the blood pressure value, \\130\\. So the weight on a feature says nothing on its own about how much that feature contributes to the score. And \\b = -30\\ changes the score: without it, the score would be \\88\\ instead of \\58\\.

> **NOTE:**
>
> **Exercise 4 (Which of these are affine in \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\\?)** Each of the five expressions is a function of the weights \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \in \mathbb{R}^p\\, with the data \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\y\\ held fixed. Say which ones are affine ([Definition 19](#def-affine-map)), that is, have the form [Equation 1](#eq-linear-scalar) — an inner product plus an offset — and which of those are also linear ([Definition 15](#def-linear-map)).
>
> 1.  \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\
> 2.  \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- y\\
> 3.  \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- y)^2\\
> 4.  \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\right\rVert\mathclose{}\_2^2\\
> 5.  \\w_1 x_1 + 3\\

> **NOTE:**
>
> *Solution 4*.
>
> 1.  **Affine, and linear.** It is [Equation 1](#eq-linear-scalar) with \\b = 0\\, which is a linear map by [Theorem 10](#thm-matrix-map-linear): the matrix \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\ times \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\\.
> 2.  **Affine.** Still an inner product plus an offset; here the offset is \\b = -y\\, which is a constant because \\y\\ is held fixed. It is linear only when \\y = 0\\: otherwise \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ gives \\-y \ne 0\\, and a linear map sends \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ to \\0\\ ([Theorem 9](#thm-linear-map-zero)).
> 3.  **Not affine.** Squaring is not an inner product plus an offset. This expression is the squared error of one observation, and its curvature in \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\\ is exactly why fitting a model is an optimization problem rather than a lookup.
> 4.  **Not affine.** By [Equation 2 in Vectors](linear-algebra-vectors.llms.md#eq-l2-norm) this is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\\, which has \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\\ in both slots at once. Hold either slot fixed and it is linear in the other; as a function of the single variable \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\\ it is quadratic.
> 5.  **Affine, not linear.** It is [Equation 1](#eq-linear-scalar) with coefficient vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}= (x_1, 0, \dots, 0)^{\top}\\ and \\b = 3\\; at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ it equals \\3 \ne 0\\, so it is not linear ([Theorem 9](#thm-linear-map-zero)). The data \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is untouched — \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\\ is a new vector built from its first entry.
>
> Items 1, 2 and 5 are affine and items 3 and 4 are not, which is the split that matters: a *model* can be affine in its weights while the *quantity we minimize* is not. Squared error and the norm penalty are both curved in \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\\, and that curvature is what makes fitting an optimization problem at all: there is always a downhill direction to follow. Curvature alone does not promise a *single* answer. The squared error of one observation is completely flat along a whole line of weight vectors, every one of which fits that observation exactly, and pinning down one of them is part of what the norm penalty is added for in week 3.

### 0.1.8 Transposes of sums and products

> **NOTE:**
>
> **Theorem 16 (Transpose of a sum)** For \\m \times n\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\:
>
> \\{(\mathbf{A} + \mathbf{B})}^{\top} = {\mathbf{A}}^{\top} + {\mathbf{B}}^{\top}\\
>
> In particular, for column vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ of the same length:
>
> \\{(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})}^{\top} = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\top}\\

> **NOTE:**
>
> *Proof*. Entry \\(i, j)\\ of each side:
>
> \\ \begin{aligned} \mathopen{}\left\[{(\mathbf{A} + \mathbf{B})}^{\top}\right\]\mathclose{}\_{ij} &= (\mathbf{A} + \mathbf{B})\_{ji} && \text{(definition of the transpose)} \\ &= a\_{ji} + b\_{ji} && \text{(definition of matrix addition)} \\ &= ({\mathbf{A}}^{\top})\_{ij} + ({\mathbf{B}}^{\top})\_{ij} && \text{(definition of the transpose)} \\ &= \mathopen{}\left\[{\mathbf{A}}^{\top} + {\mathbf{B}}^{\top}\right\]\mathclose{}\_{ij} && \text{(definition of matrix addition)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 17 (Transpose of a product)** For an \\m \times k\\ matrix \\\mathbf{A}\\ and a \\k \times n\\ matrix \\\mathbf{B}\\:
>
> \\ \underbrace{{(\mathbf{A}\mathbf{B})}^{\top}}\_{n \times m} = \underbrace{{\mathbf{B}}^{\top}}\_{n \times k}\\\underbrace{{\mathbf{A}}^{\top}}\_{k \times m} \\

> **NOTE:**
>
> *Proof*. Entry \\(i, j)\\ of each side:
>
> \\ \begin{aligned} \mathopen{}\left\[{(\mathbf{A}\mathbf{B})}^{\top}\right\]\mathclose{}\_{ij} &= (\mathbf{A}\mathbf{B})\_{ji} && \text{(definition of the transpose)} \\ &= \sum\_{s=1}^{k} a\_{js}\\ b\_{si} && \text{(definition of matrix multiplication)} \\ &= \sum\_{s=1}^{k} ({\mathbf{B}}^{\top})\_{is}\\ ({\mathbf{A}}^{\top})\_{sj} && \text{(definition of the transpose; reorder each product)} \\ &= \mathopen{}\left\[{\mathbf{B}}^{\top}\\{\mathbf{A}}^{\top}\right\]\mathclose{}\_{ij} && \text{(definition of matrix multiplication)} \end{aligned} \\

> **NOTE:**
>
> *Remark 8* (The order of the factors reverses). Transposing a product reverses the order of the factors. Keeping the original order usually gives an undefined product or a different matrix. For example, with \\\mathbf{A} = \[1,\\ 2\]\\ (\\1 \times 2\\) and \\\mathbf{B} = \begin{bmatrix} 3 \\ 4 \end{bmatrix}\\ (\\2 \times 1\\),
>
> \\ \begin{aligned} \mathbf{A}\mathbf{B} &= 1 \cdot 3 + 2 \cdot 4 \\ &= 11, \end{aligned} \\
>
> so \\{(\mathbf{A}\mathbf{B})}^{\top} = 11\\, and
>
> \\ {\mathbf{B}}^{\top}\\{\mathbf{A}}^{\top} = \[3,\\ 4\] \begin{bmatrix} 1 \\ 2 \end{bmatrix} = 11, \qquad {\mathbf{A}}^{\top}\\{\mathbf{B}}^{\top} = \begin{bmatrix} 1 \\ 2 \end{bmatrix} \[3,\\ 4\] = \begin{bmatrix} 3 & 4 \\ 6 & 8 \end{bmatrix}. \\
>
> If instead \\\mathbf{A}\\ is \\2 \times 3\\ and \\\mathbf{B}\\ is \\3 \times 1\\, then \\{\mathbf{B}}^{\top}\\{\mathbf{A}}^{\top}\\ is a \\(1 \times 3)(3 \times 2)\\ product, but \\{\mathbf{A}}^{\top}\\{\mathbf{B}}^{\top}\\ is a \\(3 \times 2)(1 \times 3)\\ product, which is undefined.

> **NOTE:**
>
> **Theorem 18 (A \\1 \times 1\\ product equals its own transpose)** If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ are vectors of length \\p\\ and \\\mathbf{M}\\ is a \\p \times p\\ matrix, then \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ is a number, and
>
> \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\{\mathbf{M}}^{\top}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}. \\
>
> In particular, \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\.

> **NOTE:**
>
> *Proof*. The product \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ is a \\(1 \times p)(p \times p)(p \times 1)\\ product, so it is a \\1 \times 1\\ matrix. The transpose of a \\1 \times 1\\ matrix is itself, so
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} &= {\mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\right)\mathclose{}}^{\top} && \text{(a } 1 \times 1 \text{ matrix equals its transpose)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\{\mathbf{M}}^{\top}\\{\mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\right)\mathclose{}}^{\top} && \text{(transpose of a product, twice)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\{\mathbf{M}}^{\top}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} && \text{(transposing twice changes nothing)} \end{aligned} \\
>
> The transpose step is [Theorem 17](#thm-transpose-product). Taking \\\mathbf{M} = \mathbf{I}\\ gives the last statement.

> **NOTE:**
>
> **Example 21 (Two ways to write the same number)** Take \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = (1, 2)\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = (3, -1)\\ and \\\mathbf{M} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}\\. Then \\\mathbf{M}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = (1, -3)\\, so
>
> \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = 1 \cdot 1 + 2 \cdot (-3) = -5. \\
>
> Also \\{\mathbf{M}}^{\top} = \begin{bmatrix} 1 & 0 \\ 2 & 3 \end{bmatrix}\\ and \\{\mathbf{M}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = (1, 8)\\, so
>
> \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\{\mathbf{M}}^{\top}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = 3 \cdot 1 + (-1) \cdot 8 = -5. \\
>
> The two products are equal, as the theorem says. In least squares, this is why the two cross terms of \\{(\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})}^{\top}(\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\ are equal and can be combined.

# Definitions on this page

- [Definition 1 (Matrix)](#def-matrix)
- [Definition 2 (Tensor)](#def-tensor)
- [Definition 3 (Matrix transpose)](#def-matrix-transpose)
- [Definition 4 (Zero matrix)](#def-zero-matrix)
- [Definition 5 (Matrix addition)](#def-matrix-addition)
- [Definition 6 (Scalar multiplication)](#def-scalar-mult)
- [Definition 7 (Matrix multiplication)](#def-matrix-mult)
- [Definition 8 (Square matrix)](#def-square-matrix)
- [Definition 9 (Main diagonal)](#def-main-diagonal)
- [Definition 10 (Diagonal entry)](#def-diagonal-entry)
- [Definition 11 (Off-diagonal entry)](#def-off-diagonal-entry)
- [Definition 12 (Identity matrix)](#def-identity-matrix)
- [Definition 13 (Matrix-vector multiplication)](#def-matvec-mult)
- [Definition 14 (Linear system, system of linear equations)](#def-linear-system)
- [Definition 15 (Linear map, linear transformation, linear function)](#def-linear-map)
- [Definition 16 (Linear operator)](#def-linear-operator)
- [Definition 17 (Matrix of a linear map)](#def-matrix-of-linear-map)
- [Definition 18 (Translation)](#def-translation)
- [Definition 19 (Affine map, affine transformation, affine function)](#def-affine-map)
- [Definition 20 (Offset of an affine map, intercept, bias)](#def-affine-offset)
- [Definition 21 (Augmented vector)](#def-augmented-vector)
- [Definition 22 (Hyperplane)](#def-hyperplane)
- [Definition 23 (Normal vector of a hyperplane)](#def-normal-vector)

Back to top

## References

\[1\]

Wikipedia contributors, “Matrix (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Matrix_(mathematics)>

\[2\]

Wikipedia contributors, “Tensor — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Tensor>

\[3\]

Wikipedia contributors, “Transpose — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Transpose>

\[4\]

Wikipedia contributors, “Zero matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Zero_matrix>

\[5\]

Wikipedia contributors, “Matrix addition — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Matrix_addition>

\[6\]

Wikipedia contributors, “Scalar multiplication — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Scalar_multiplication>

\[7\]

Wikipedia contributors, “Matrix multiplication — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Matrix_multiplication>

\[8\]

Wikipedia contributors, “Square matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Square_matrix>

\[9\]

Wikipedia contributors, “Main diagonal — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Main_diagonal>

\[10\]

Wikipedia contributors, “Identity matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Identity_matrix>

\[11\]

Wikipedia contributors, “System of linear equations — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/System_of_linear_equations>

\[12\]

Wikipedia contributors, “Linear map — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Linear_map>

\[13\]

Wikipedia contributors, “Translation (geometry) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Translation_(geometry)>

\[14\]

H. Zhou, “Matrices.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/03-matrix/03-matrix.html>

\[15\]

S. Boyd and L. Vandenberghe, *Introduction to applied linear algebra: Vectors, matrices, and least squares*. Cambridge University Press, 2018. doi: [10.1017/9781108583664](https://doi.org/10.1017/9781108583664).

\[16\]

Wikipedia contributors, “Hyperplane — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Hyperplane>

\[17\]

Wikipedia contributors, “Normal (geometry) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Normal_(geometry)>
