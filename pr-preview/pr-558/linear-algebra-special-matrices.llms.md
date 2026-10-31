# Special Matrices and Decompositions

Code

Published

Last modified: 2026-10-30 18:35:00 (PDT)

## 0.1 Special Matrices

Some special matrices appeared earlier:

- the zero matrix ([Definition 4 in Matrices](linear-algebra-matrices.llms.md#def-zero-matrix)), in the section on matrix addition
- square matrices ([Definition 8 in Matrices](linear-algebra-matrices.llms.md#def-square-matrix)), in the section on square and identity matrices
- the identity matrix ([Definition 12 in Matrices](linear-algebra-matrices.llms.md#def-identity-matrix)), in that same section

> **NOTE:**
>
> **Definition 1 (Order of a square matrix)** The **order** of a square matrix ([Definition 8 in Matrices](linear-algebra-matrices.llms.md#def-square-matrix)) is its number of rows, which equals its number of columns.

> **NOTE:**
>
> **Example 1 (Orders of square matrices)** \\\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\ has order \\2\\, and \\\[5\]\\ has order \\1\\. A \\2 \times 3\\ matrix has no order, since it is not square ([Example 8 in Matrices](linear-algebra-matrices.llms.md#exm-square-matrix)).

> **NOTE:**
>
> **Definition 2 (Matrix power)** For a square matrix \\\mathbf{A}\\ of order \\p\\ and a positive integer \\k\\, the \\k\\-th **power** of \\\mathbf{A}\\ is:
>
> \\\mathbf{A}^k = \underbrace{\mathbf{A}\\\mathbf{A}\cdots\mathbf{A}}\_{k \text{ copies}}\\
>
> In particular, \\\mathbf{A}^2 = \mathbf{A}\mathbf{A}\\.

> **NOTE:**
>
> **Example 2 (Powers of a \\2 \times 2\\ matrix)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}\\. Then
>
> \\ \begin{aligned} \mathbf{A}^2 &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 1 + 1 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 0 & 0 \cdot 1 + 1 \cdot 1 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix}, && \text{(multiply and add)} \\ \mathbf{A}^3 = \mathbf{A}^2 \mathbf{A} &= \begin{bmatrix} 1 \cdot 1 + 2 \cdot 0 & 1 \cdot 1 + 2 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 0 & 0 \cdot 1 + 1 \cdot 1 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 3 \\ 0 & 1 \end{bmatrix}. && \text{(multiply and add)} \end{aligned} \\
>
> A \\2 \times 3\\ matrix \\\mathbf{B}\\ is not square ([Definition 8 in Matrices](linear-algebra-matrices.llms.md#def-square-matrix)), so \\\mathbf{B}^2\\ is not defined; indeed \\\mathbf{B} \mathbf{B}\\ would multiply a matrix with \\3\\ columns by one with \\2\\ rows, which [Definition 7 in Matrices](linear-algebra-matrices.llms.md#def-matrix-mult) does not allow.

> **NOTE:**
>
> **Definition 3 (Symmetric matrix)** A square matrix \\\mathbf{A}\\ is **symmetric** [\[1\]](#ref-wikipedia_symmetric_matrix) if \\{\mathbf{A}}^{\top} = \mathbf{A}\\, i.e., \\a\_{ij} = a\_{ji}\\ for all \\i\\ and \\j\\.

> **NOTE:**
>
> *Remark 1* (Symmetric matrices in statistics). Covariance matrices are symmetric: entry \\(i, j)\\ of the covariance matrix of a random vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{Y}}\vphantom{Y}}\\ is \\{\operatorname{Cov}\mathopen{}\left(Y_i, Y_j\right)\mathclose{}}\\, and \\{\operatorname{Cov}\mathopen{}\left(Y_i, Y_j\right)\mathclose{}} = {\operatorname{Cov}\mathopen{}\left(Y_j, Y_i\right)\mathclose{}}\\. For example, if \\{\operatorname{Var}\mathopen{}\left(Y_1\right)\mathclose{}} = 4\\, \\{\operatorname{Var}\mathopen{}\left(Y_2\right)\mathclose{}} = 9\\, and \\{\operatorname{Cov}\mathopen{}\left(Y_1, Y_2\right)\mathclose{}} = 1\\, the covariance matrix of \\(Y_1, Y_2)\\ is
>
> \\ \begin{bmatrix} 4 & 1 \\ 1 & 9 \end{bmatrix}. \\

> **NOTE:**
>
> **Example 3 (A matrix that is not symmetric)** \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\ is not symmetric:
>
> \\ \begin{aligned} a\_{12} &= 2 \\ &\ne 3 \\ &= a\_{21}. \end{aligned} \\

> **NOTE:**
>
> **Definition 4 (Diagonal matrix)** A square matrix \\\mathbf{D}\\ is a **diagonal matrix** [\[2\]](#ref-wikipedia_diagonal_matrix) if all off-diagonal entries are zero: \\d\_{ij} = 0\\ whenever \\i \neq j\\:
>
> \\ \mathbf{D} = \begin{bmatrix} d_1 & 0 & \cdots & 0 \\ 0 & d_2 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & d_p \end{bmatrix} \\

> **NOTE:**
>
> *Remark 2* (\\\operatorname{diag}\\ notation). For numbers \\d_1, \ldots, d_p\\, \\\operatorname{diag}(d_1, \ldots, d_p)\\ is the \\p \times p\\ diagonal matrix with diagonal entries \\d_1, \ldots, d_p\\. For example,
>
> \\ \operatorname{diag}(2, 5) = \begin{bmatrix} 2 & 0 \\ 0 & 5 \end{bmatrix}, \\
>
> and the \\p \times p\\ identity matrix is \\\mathbf{I}\_p = \operatorname{diag}(1, \ldots, 1)\\.

> **NOTE:**
>
> **Example 4 (A matrix that is not diagonal)** \\\mathbf{D} = \begin{bmatrix} 2 & 1 \\ 0 & 5 \end{bmatrix}\\ is not diagonal: its off-diagonal entry \\d\_{12} = 1 \ne 0\\.

> **NOTE:**
>
> **Definition 5 (Matrix inverse)** For a square \\p \times p\\ matrix \\\mathbf{A}\\, the **inverse** \\\mathbf{A}^{-1}\\ (if it exists) is the unique matrix satisfying:
>
> \\ \begin{aligned} \mathbf{A}\\\mathbf{A}^{-1} &= \mathbf{A}^{-1}\\\mathbf{A} \\ &= \mathbf{I}\_p \end{aligned} \\

> **NOTE:**
>
> **Definition 6 (Invertible matrix, non-singular matrix)** A \\p \times p\\ matrix \\\mathbf{A}\\ is **invertible** [\[3\]](#ref-wikipedia_invertible_matrix) (or **non-singular**) if some \\p \times p\\ matrix \\\mathbf{B}\\ satisfies
>
> \\ \begin{aligned} \mathbf{A}\mathbf{B} &= \mathbf{B}\mathbf{A} \\ &= \mathbf{I}\_p, \end{aligned} \\
>
> where \\\mathbf{I}\_p\\ is the identity matrix ([Definition 12 in Matrices](linear-algebra-matrices.llms.md#def-identity-matrix)). A square matrix that is not invertible is **singular**.

> **NOTE:**
>
> **Example 5 (An invertible matrix and a singular one)** The matrix \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ is invertible, with \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\: multiplying out gives
>
> \\ \begin{aligned} \mathbf{A}\mathbf{A}^{-1} &= \mathbf{A}^{-1}\mathbf{A} \\ &= \mathbf{I}\_2. \end{aligned} \\
>
> The matrix \\\mathbf{M} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ is singular: for any \\2 \times 2\\ matrix \\\mathbf{C}\\, the two rows of \\\mathbf{M}\mathbf{C}\\ are equal, so \\\mathbf{M}\mathbf{C}\\ can never be \\\mathbf{I}\_2\\, whose two rows differ.

> **NOTE:**
>
> *Remark 3* (Invertible matrices and inverses). Let \\\mathbf{A}\\ be a \\p \times p\\ matrix, and suppose that two \\p \times p\\ matrices \\\mathbf{B}\\ and \\\mathbf{C}\\ satisfy
>
> \\ \begin{aligned} \mathbf{A}\mathbf{B} &= \mathbf{B}\mathbf{A} \\ &= \mathbf{I}\_p \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \mathbf{A}\mathbf{C} &= \mathbf{C}\mathbf{A} \\ &= \mathbf{I}\_p. \end{aligned} \\
>
> Then
>
> \\ \begin{aligned} \mathbf{B} &= \mathbf{B}\\\mathbf{I}\_p && \text{(identity matrix)} \\ &= \mathbf{B}(\mathbf{A}\mathbf{C}) && \text{(} \mathbf{A}\mathbf{C} = \mathbf{I}\_p \text{)} \\ &= (\mathbf{B}\mathbf{A})\mathbf{C} && \text{(matrix multiplication is associative)} \\ &= \mathbf{I}\_p\\\mathbf{C} && \text{(} \mathbf{B}\mathbf{A} = \mathbf{I}\_p \text{)} \\ &= \mathbf{C} && \text{(identity matrix)} \end{aligned} \\
>
> The steps use [Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc) and [Theorem 8 in Matrices](linear-algebra-matrices.llms.md#thm-identity). Since \\\mathbf{B} = \mathbf{C}\\, at most one matrix satisfies these equations, which is the uniqueness that [Definition 5](#def-matrix-inverse) asserts. When \\\mathbf{A}\\ is invertible, the matrix \\\mathbf{B}\\ in [Definition 6](#def-invertible-matrix) is therefore the inverse \\\mathbf{A}^{-1}\\ of \\\mathbf{A}\\, and \\\mathbf{A}\\ is invertible exactly when it has an inverse. For example, for \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ in [Example 5](#exm-invertible-matrix), \\\begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\ is the only \\2 \times 2\\ matrix \\\mathbf{B}\\ with
>
> \\ \begin{aligned} \mathbf{A}\mathbf{B} &= \mathbf{B}\mathbf{A} \\ &= \mathbf{I}\_2, \end{aligned} \\
>
> so it is \\\mathbf{A}^{-1}\\.

> **NOTE:**
>
> **Theorem 1 (Inverse of a product)** If \\\mathbf{A}\\ and \\\mathbf{B}\\ are invertible \\p \times p\\ matrices, then \\\mathbf{A}\mathbf{B}\\ is invertible, and
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
> So \\\mathbf{B}^{-1}\mathbf{A}^{-1}\\ satisfies [Definition 5](#def-matrix-inverse) for \\\mathbf{A}\mathbf{B}\\. The steps use [Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc) and [Theorem 8 in Matrices](linear-algebra-matrices.llms.md#thm-identity).

> **NOTE:**
>
> **Theorem 2 (Inverse of a transpose)** If \\\mathbf{A}\\ is an invertible \\p \times p\\ matrix, then \\{\mathbf{A}}^{\top}\\ is invertible, and
>
> \\{\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}}^{-1} = {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}\\

> **NOTE:**
>
> *Proof*. Multiply \\{\mathbf{A}}^{\top}\\ by the candidate inverse on each side:
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\\{\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top} &= {\mathopen{}\left(\mathbf{A}^{-1}\mathbf{A}\right)\mathclose{}}^{\top} && \text{(transpose of a product)} \\ &= {\mathbf{I}\_p}^{\top} && \text{(definition of } \mathbf{A}^{-1} \text{)} \\ &= \mathbf{I}\_p && \text{(} \mathbf{I}\_p \text{ is symmetric)} \end{aligned} \\
>
> \\ \begin{aligned} {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}\\{\mathbf{A}}^{\top} &= {\mathopen{}\left(\mathbf{A}\mathbf{A}^{-1}\right)\mathclose{}}^{\top} && \text{(transpose of a product)} \\ &= {\mathbf{I}\_p}^{\top} && \text{(definition of } \mathbf{A}^{-1} \text{)} \\ &= \mathbf{I}\_p && \text{(} \mathbf{I}\_p \text{ is symmetric)} \end{aligned} \\
>
> So \\{\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}\\ satisfies [Definition 5](#def-matrix-inverse) for \\{\mathbf{A}}^{\top}\\. The first step of each display is [Theorem 17 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product).

> **NOTE:**
>
> **Example 6 (Inverting a transpose)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\, [Example 5](#exm-invertible-matrix) gives \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\, so [Theorem 2](#thm-inverse-transpose) says
>
> \\ \begin{aligned} {\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}}^{-1} &= {\mathopen{}\left(\begin{bmatrix} 2 & 0 \\ 1 & 1 \end{bmatrix}\right)\mathclose{}}^{-1} \\ &= {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top} \\ &= \begin{bmatrix} 0.5 & 0 \\ -0.5 & 1 \end{bmatrix}, \end{aligned} \\
>
> and multiplying \\\begin{bmatrix} 2 & 0 \\ 1 & 1 \end{bmatrix}\begin{bmatrix} 0.5 & 0 \\ -0.5 & 1 \end{bmatrix}\\ out does give \\\mathbf{I}\_2\\.

> **NOTE:**
>
> **Corollary 1 (The inverse of a symmetric matrix is symmetric)** If \\\mathbf{A}\\ is symmetric and invertible, then \\\mathbf{A}^{-1}\\ is symmetric.

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top} &= {\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}}^{-1} && \text{(inverse of a transpose)} \\ &= \mathbf{A}^{-1} && \text{(} \mathbf{A} \text{ is symmetric)} \end{aligned} \\
>
> The first step is [Theorem 2](#thm-inverse-transpose).

> **NOTE:**
>
> **Example 7 (Inverting a symmetric matrix)** \\\mathbf{S} = \begin{bmatrix} 2 & 1 \\ 1 & 1 \end{bmatrix}\\ is symmetric, and \\\mathbf{S}^{-1} = \begin{bmatrix} 1 & -1 \\ -1 & 2 \end{bmatrix}\\ is symmetric too, as [Corollary 1](#cor-inverse-symmetric) says.

> **NOTE:**
>
> **Theorem 3 (An invertible factor can be cancelled)** Let \\\mathbf{A}\\ be an invertible \\p \times p\\ matrix ([Definition 6](#def-invertible-matrix)), and let \\\mathbf{B}\\ and \\\mathbf{C}\\ be \\p \times n\\ matrices. If \\\mathbf{A}\mathbf{B} = \mathbf{A}\mathbf{C}\\, then \\\mathbf{B} = \mathbf{C}\\.

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathbf{B} &= \mathbf{I}\_p\\\mathbf{B} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \\ &= (\mathbf{A}^{-1}\mathbf{A})\\\mathbf{B} && \text{(}\href{#def-matrix-inverse}{\text{Definition~5}}\text{)} \\ &= \mathbf{A}^{-1}(\mathbf{A}\mathbf{B}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A}^{-1}(\mathbf{A}\mathbf{C}) && \text{(} \mathbf{A}\mathbf{B} = \mathbf{A}\mathbf{C} \text{)} \\ &= (\mathbf{A}^{-1}\mathbf{A})\\\mathbf{C} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{I}\_p\\\mathbf{C} && \text{(}\href{#def-matrix-inverse}{\text{Definition~5}}\text{)} \\ &= \mathbf{C}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \end{aligned} \\
>
> \\\square\\

> **NOTE:**
>
> **Corollary 2 (An invertible factor can be cancelled on the right)** Let \\\mathbf{A}\\ be an invertible \\p \times p\\ matrix, and let \\\mathbf{B}\\ and \\\mathbf{C}\\ be \\n \times p\\ matrices. If \\\mathbf{B}\mathbf{A} = \mathbf{C}\mathbf{A}\\, then \\\mathbf{B} = \mathbf{C}\\.
>
> The proof of [Theorem 3](#thm-invertible-cancel) works with every product reversed: multiply both sides on the right by \\\mathbf{A}^{-1}\\.

> **NOTE:**
>
> **Example 8 (Solving for a matrix by cancelling an invertible factor)** Let \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\, which is invertible with \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\ ([Example 5](#exm-invertible-matrix)). If \\\mathbf{A}\mathbf{B} = \begin{bmatrix} 3 \\ 1 \end{bmatrix}\\ for a \\2 \times 1\\ matrix \\\mathbf{B}\\, then multiplying both sides on the left by \\\mathbf{A}^{-1}\\, as in the proof of [Theorem 3](#thm-invertible-cancel),
>
> \\ \begin{aligned} \mathbf{B} &= \mathbf{A}^{-1} \begin{bmatrix} 3 \\ 1 \end{bmatrix} \\ &= \begin{bmatrix} 1 \\ 1 \end{bmatrix}. \end{aligned} \\
>
> Check: \\\mathbf{A} \begin{bmatrix} 1 \\ 1 \end{bmatrix} = \begin{bmatrix} 2 + 1 \\ 0 + 1 \end{bmatrix} = \begin{bmatrix} 3 \\ 1 \end{bmatrix}\\.

> **NOTE:**
>
> **Example 9 (A product of two nonzero matrices can be the zero matrix)** With
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}, \qquad \mathbf{B} = \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix}, \\
>
> neither matrix is the zero matrix ([Definition 4 in Matrices](linear-algebra-matrices.llms.md#def-zero-matrix)), but
>
> \\ \begin{aligned} \mathbf{A}\mathbf{B} &= \begin{bmatrix} 1 \cdot 0 + 0 \cdot 0 & 1 \cdot 0 + 0 \cdot 1 \\ 0 \cdot 0 + 0 \cdot 0 & 0 \cdot 0 + 0 \cdot 1 \end{bmatrix} \\ &= \mathbf{0}\_{2 \times 2}. \end{aligned} \\
>
> For numbers, \\ab = 0\\ forces \\a = 0\\ or \\b = 0\\. For matrices it does not.
>
> Because \\\mathbf{A}\mathbf{0}\_{2 \times 2} = \mathbf{0}\_{2 \times 2} = \mathbf{A}\mathbf{B}\\ while \\\mathbf{B} \neq \mathbf{0}\_{2 \times 2}\\, the factor \\\mathbf{A}\\ cannot be cancelled from \\\mathbf{A}\mathbf{B} = \mathbf{A}\mathbf{0}\_{2 \times 2}\\. This does not contradict [Theorem 3](#thm-invertible-cancel), because \\\mathbf{A}\\ is singular: its second row is zero, so \\\mathbf{A}\mathbf{C}\\ has a zero second row for every \\2 \times 2\\ matrix \\\mathbf{C}\\, and \\\mathbf{A}\mathbf{C}\\ can never be \\\mathbf{I}\_2\\.

> **NOTE:**
>
> *Remark 4* (Matrix arithmetic compared with scalar arithmetic). **Sums and differences.** Matrix addition has every property that addition of numbers has: it is commutative ([Theorem 1 in Matrices](linear-algebra-matrices.llms.md#thm-matadd-commutative)), associative ([Theorem 2 in Matrices](linear-algebra-matrices.llms.md#thm-matadd-assoc)), has the zero matrix as its identity ([Theorem 3 in Matrices](linear-algebra-matrices.llms.md#thm-matadd-identity)), and gives each matrix a negative ([Theorem 4 in Matrices](linear-algebra-matrices.llms.md#thm-matadd-inverse)). The only new condition is that \\\mathbf{A} + \mathbf{B}\\ is defined only when \\\mathbf{A}\\ and \\\mathbf{B}\\ have the same dimensions.
>
> **Products.** Matrix multiplication keeps three properties of multiplication of numbers: it is associative ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), it is distributive over addition ([Theorem 6 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-distrib)), and it has an identity, \\\mathbf{I}\_p\\ ([Theorem 8 in Matrices](linear-algebra-matrices.llms.md#thm-identity)). It differs from multiplication of numbers in four ways:
>
> - \\\mathbf{A}\mathbf{B}\\ is defined only when the number of columns of \\\mathbf{A}\\ equals the number of rows of \\\mathbf{B}\\ ([Definition 7 in Matrices](linear-algebra-matrices.llms.md#def-matrix-mult)).
> - It is not commutative: \\\mathbf{A}\mathbf{B} \neq \mathbf{B}\mathbf{A}\\ in general ([Remark 2 in Matrices](linear-algebra-matrices.llms.md#rem-matmul-not-commutative)).
> - A nonzero square matrix need not have an inverse ([Example 5](#exm-invertible-matrix)).
> - \\\mathbf{A}\mathbf{B} = \mathbf{0}\\ can hold with \\\mathbf{A} \neq \mathbf{0}\\ and \\\mathbf{B} \neq \mathbf{0}\\ ([Example 9](#exm-matmul-zero-divisors)), so a factor cannot be cancelled from \\\mathbf{A}\mathbf{B} = \mathbf{A}\mathbf{C}\\ unless it is invertible ([Theorem 3](#thm-invertible-cancel)).

> **NOTE:**
>
> **Definition 7 (Idempotent matrix)** A square matrix \\\mathbf{A}\\ is **idempotent** [\[4\]](#ref-wikipedia_idempotent_matrix) if
>
> \\\mathbf{A}^2 = \mathbf{A}\\

> **NOTE:**
>
> **Example 10 (An idempotent matrix)** For \\\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\,
>
> \\ \begin{aligned} \mathbf{P}^2 &= \begin{bmatrix} 1 \cdot 1 + 0 \cdot 0 & 1 \cdot 0 + 0 \cdot 0 \\ 0 \cdot 1 + 0 \cdot 0 & 0 \cdot 0 + 0 \cdot 0 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix} \\ &= \mathbf{P}, && \text{(multiply and add)} \end{aligned} \\
>
> so \\\mathbf{P}\\ is idempotent.

> **NOTE:**
>
> **Example 11 (A matrix that is not idempotent)** For \\\mathbf{A} = \begin{bmatrix} 2 & 0 \\ 0 & 0 \end{bmatrix}\\,
>
> \\ \begin{aligned} \mathbf{A}^2 &= \begin{bmatrix} 2 \cdot 2 + 0 \cdot 0 & 2 \cdot 0 + 0 \cdot 0 \\ 0 \cdot 2 + 0 \cdot 0 & 0 \cdot 0 + 0 \cdot 0 \end{bmatrix} \\ &= \begin{bmatrix} 4 & 0 \\ 0 & 0 \end{bmatrix} \\ &\ne \mathbf{A}, \end{aligned} \\
>
> so \\\mathbf{A}\\ is not idempotent.

> **NOTE:**
>
> **Definition 8 (Orthogonal projection matrix)** A square matrix \\\mathbf{P}\\ is an **orthogonal projection matrix** (also called an **orthogonal projector**) if it is both symmetric ([Definition 3](#def-symmetric-matrix)) and idempotent ([Definition 7](#def-idempotent-matrix)):
>
> \\{\mathbf{P}}^{\top} = \mathbf{P} \qquad \text{and} \qquad \mathbf{P}^2 = \mathbf{P}\\

> **NOTE:**
>
> **Definition 9 (Oblique projection)** A square matrix is an **oblique projection** if it is idempotent ([Definition 7](#def-idempotent-matrix)) but not symmetric ([Definition 3](#def-symmetric-matrix)).

> **NOTE:**
>
> **Example 12 (An orthogonal projection and an oblique one)** \\\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ is symmetric, and \\\mathbf{P}^2 = \mathbf{P}\\, so \\\mathbf{P}\\ is an orthogonal projection matrix; it maps \\(v_1, v_2)\\ to \\(v_1, 0)\\.
>
> \\\mathbf{Q} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}\\ is idempotent:
>
> \\ \begin{aligned} \mathbf{Q}^2 &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 1 + 1 \cdot 0 \\ 0 \cdot 1 + 0 \cdot 0 & 0 \cdot 1 + 0 \cdot 0 \end{bmatrix} \\ &= \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix} \\ &= \mathbf{Q}, \end{aligned} \\
>
> but \\{\mathbf{Q}}^{\top} \neq \mathbf{Q}\\, so \\\mathbf{Q}\\ is an oblique projection, not an orthogonal projection matrix.

> **NOTE:**
>
> *Remark 5* (What “projection matrix” means in these notes). Some texts call any idempotent matrix a projection matrix, so that both \\\mathbf{P}\\ and \\\mathbf{Q}\\ in [Example 12](#exm-projection-matrix) would count as one. Regression texts often say “projection matrix” when they mean an orthogonal one. In these notes, “projection matrix” always means an orthogonal projection matrix in the sense of [Definition 8](#def-projection-matrix), such as \\\mathbf{P}\\ in [Example 12](#exm-projection-matrix), and never an oblique projection ([Definition 9](#def-oblique-projection)) such as \\\mathbf{Q}\\.

> **NOTE:**
>
> **Theorem 4 (Complement of a projection matrix)** If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 8](#def-projection-matrix)), then \\\mathbf{I}\_p - \mathbf{P}\\ is also an orthogonal projection matrix.

> **NOTE:**
>
> *Proof*. We verify symmetry and idempotency.
>
> **Symmetry:** \\ \begin{aligned} {(\mathbf{I} - \mathbf{P})}^{\top} &= {\mathbf{I}}^{\top} - {\mathbf{P}}^{\top} \\ &= \mathbf{I} - \mathbf{P} \end{aligned} \\
>
> **Idempotency:** \\\begin{aligned} (\mathbf{I} - \mathbf{P})^2 &= (\mathbf{I} - \mathbf{P})(\mathbf{I} - \mathbf{P}) \\ &= \mathbf{I} - \mathbf{P} - \mathbf{P} + \mathbf{P}^2 \\ &= \mathbf{I} - \mathbf{P} - \mathbf{P} + \mathbf{P} \\ &= \mathbf{I} - \mathbf{P} \end{aligned}\\

> **NOTE:**
>
> **Theorem 5 (Projection matrices produce orthogonal decompositions)** If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 8](#def-projection-matrix)) and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ is any vector of length \\p\\, then the two components of the decomposition
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = \underbrace{\mathbf{P}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}\_{\text{projected}} + \underbrace{(\mathbf{I}\_p - \mathbf{P})\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}\_{\text{residual}}\\
>
> are orthogonal:
>
> \\\mathbf{P}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \\\perp\\ (\mathbf{I}\_p - \mathbf{P})\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\

> **NOTE:**
>
> *Proof*. \\\begin{aligned} {(\mathbf{P}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}})}^{\top}\\(\mathbf{I} - \mathbf{P})\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\{\mathbf{P}}^{\top}\\(\mathbf{I} - \mathbf{P})\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\\mathbf{P}\\(\mathbf{I} - \mathbf{P})\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\(\mathbf{P} - \mathbf{P}^2)\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\(\mathbf{P} - \mathbf{P})\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\\mathbf{0}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \\ &= 0 \end{aligned}\\
>
> where the second line uses symmetry (\\{\mathbf{P}}^{\top} = \mathbf{P}\\) and the fourth line uses idempotency (\\\mathbf{P}^2 = \mathbf{P}\\).

> **NOTE:**
>
> **Theorem 6 (The diagonal of an orthogonal projection matrix lies between 0 and 1)** Let \\\mathbf{P}\\ be an \\n \times n\\ [orthogonal projection matrix](#def-projection-matrix) with entries \\p\_{ij}\\. Then
>
> \\ 0 \le p\_{ii} \le 1 \qquad \text{for every } i = 1, \dots, n. \\

> **NOTE:**
>
> *Proof*. Since \\\mathbf{P}\\ is [idempotent](#def-idempotent-matrix) and [symmetric](#def-symmetric-matrix), \\p\_{ij} = p\_{ji}\\ and \\\mathbf{P}^2 = \mathbf{P}\\. Compare the \\(i, i)\\ entries of \\\mathbf{P}^2\\ and \\\mathbf{P}\\:
>
> \\ \begin{aligned} p\_{ii} &= (\mathbf{P}^2)\_{ii} && \text{(idempotent)} \\ &= \sum\_{j=1}^{n} p\_{ij}\\ p\_{ji} && \text{(definition of matrix multiplication)} \\ &= \sum\_{j=1}^{n} p\_{ij}^2 && \text{(symmetric)} \\ &= p\_{ii}^2 + \sum\_{j \ne i} p\_{ij}^2. && \text{(separate the term } j = i \text{)} \end{aligned} \\
>
> Each \\p\_{ij}^2\\ is non-negative, so \\p\_{ii} \ge 0\\. The same equation also gives \\p\_{ii} \ge p\_{ii}^2\\, so \\p\_{ii}(1 - p\_{ii}) \ge 0\\. Since \\p\_{ii} \ge 0\\, this requires \\p\_{ii} \le 1\\.

> **NOTE:**
>
> **Example 13 (Diagonal of a projection onto a line)** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = (1, 1, 0)\\. The [matrix](linear-algebra-matrices.llms.md#def-matrix) \\\mathbf{P} = \frac{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}}{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}\\ is the [orthogonal projection](linear-algebra-projections.llms.md#def-orthogonal-projection) onto the line through \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\. To see this, take the [unit vector](linear-algebra-vectors.llms.md#def-unit-vector) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}/\sqrt{2}\\, for which \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}}^{\top} = \mathbf{P}\\, and apply [projecting with an orthonormal basis](linear-algebra-projections.llms.md#thm-projector-onb):
>
> \\ \mathbf{P} = \frac{1}{2} \begin{bmatrix} 1 & 1 & 0 \\ 1 & 1 & 0 \\ 0 & 0 & 0 \end{bmatrix}. \\
>
> Its diagonal is \\(\frac{1}{2}, \frac{1}{2}, 0)\\. Each entry is between \\0\\ and \\1\\, as [Theorem 6](#thm-projection-diagonal-bounds) says. The entry \\0\\ belongs to a coordinate that \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ does not involve. For \\\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ from [Example 12](#exm-projection-matrix) the diagonal is \\(1, 0)\\, so \\p\_{ii}\\ can be \\0\\ and can be \\1\\.

> **NOTE:**
>
> **Definition 10 (Orthogonal matrix)** A \\p \times p\\ matrix \\\mathbf{Q}\\ is **orthogonal** [\[5\]](#ref-wikipedia_orthogonal_matrix) if
>
> \\ \underbrace{{\mathbf{Q}}^{\top}}\_{p \times p}\\\underbrace{\mathbf{Q}}\_{p \times p} = \mathbf{I}\_p \\

> **NOTE:**
>
> **Example 14 (A rotation matrix)** The matrix
>
> \\ \mathbf{Q} = \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix} \\
>
> rotates each vector in the plane counterclockwise by the angle \\\theta\\ with \\\cos\theta= 0.6\\ and \\\sin\theta= 0.8\\ (about \\53\\ degrees) [\[6, Ch. 8\]](#ref-banerjee2014linear), Example 8.1, p. 207. It is orthogonal:
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top}\mathbf{Q} &= \begin{bmatrix} 0.6 & 0.8 \\ -0.8 & 0.6 \end{bmatrix} \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \begin{bmatrix} 0.36 + 0.64 & -0.48 + 0.48 \\ -0.48 + 0.48 & 0.64 + 0.36 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> **Example 15 (Orthogonal columns are not enough)** \\\mathbf{Q} = 2 \mathbf{I}\_2\\ has orthogonal columns \\(2, 0)\\ and \\(0, 2)\\, but
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top} \mathbf{Q} &= \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix} \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix} \\ &= \begin{bmatrix} 4 & 0 \\ 0 & 4 \end{bmatrix} \\ &\ne \mathbf{I}\_2, \end{aligned} \\
>
> so \\\mathbf{Q}\\ is not an orthogonal matrix: its columns have norm \\2\\, not \\1\\.

> **NOTE:**
>
> *Remark 6* (The columns of an orthogonal matrix are orthonormal). Entry \\(i, j)\\ of \\{\mathbf{Q}}^{\top}\mathbf{Q}\\ is the dot product of column \\i\\ and column \\j\\ of \\\mathbf{Q}\\, so \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\ says that the columns of \\\mathbf{Q}\\ are orthonormal ([Definition 23 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)). For a square matrix, \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\ also implies \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\, so \\\mathbf{Q}^{-1} = {\mathbf{Q}}^{\top}\\ ([Definition 5](#def-matrix-inverse)) [\[6, Ch. 8\]](#ref-banerjee2014linear), Theorem 8.1 and Definition 8.1, p. 209.
>
> For example, the columns of \\\mathbf{Q}\\ in [Example 14](#exm-orthogonal-matrix) are \\(0.6, 0.8)\\ and \\(-0.8, 0.6)\\. The diagonal entries \\0.36 + 0.64 = 1\\ of \\{\mathbf{Q}}^{\top}\mathbf{Q}\\ are their squared norms, and the off-diagonal entries \\-0.48 + 0.48 = 0\\ are their dot product. Multiplying in the other order also gives \\\mathbf{I}\_2\\:
>
> \\ \begin{aligned} \mathbf{Q}{\mathbf{Q}}^{\top} &= \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix} \begin{bmatrix} 0.6 & 0.8 \\ -0.8 & 0.6 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \begin{bmatrix} 0.36 + 0.64 & 0.48 - 0.48 \\ 0.48 - 0.48 & 0.64 + 0.36 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> So \\\mathbf{Q}^{-1} = {\mathbf{Q}}^{\top}\\.

> **NOTE:**
>
> **Theorem 7 (Orthogonal matrices preserve length)** If \\\mathbf{Q}\\ is a \\p \times p\\ orthogonal matrix ([Definition 10](#def-orthogonal-matrix)) and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is a vector of length \\p\\, then
>
> \\ \mathopen{}\left\lVert\mathbf{Q}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{Q}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 &= (\mathbf{Q}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \cdot (\mathbf{Q}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) && \text{(definition of the Euclidean norm)} \\ &= {(\mathbf{Q}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})}^{\top}\\(\mathbf{Q}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) && \text{(dot product as a matrix product)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\{\mathbf{Q}}^{\top}\\(\mathbf{Q}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) && \text{(transpose of a product)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\({\mathbf{Q}}^{\top}\mathbf{Q})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(regroup; matrix multiplication is associative)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\\mathbf{I}\_p\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(definition of an orthogonal matrix)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(identity matrix)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 && \text{(definition of the Euclidean norm)} \end{aligned} \\
>
> Both norms are nonnegative square roots, so equal squares give \\\mathopen{}\left\lVert\mathbf{Q}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\. The second step is [Example 6 in Matrices](linear-algebra-matrices.llms.md#exm-dot-product-matmul), the third is [Theorem 17 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product), and the fourth is [Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc).

> **NOTE:**
>
> **Example 16 (Rotating a vector keeps its length)** With \\\mathbf{Q}\\ from [Example 14](#exm-orthogonal-matrix) and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (3, 4)\\ from [Example 15 in Vectors](linear-algebra-vectors.llms.md#exm-euclidean-norm):
>
> \\ \begin{aligned} \mathbf{Q}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= \begin{bmatrix} 0.6 \cdot 3 - 0.8 \cdot 4 \\ 0.8 \cdot 3 + 0.6 \cdot 4 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 1.8 - 3.2 \\ 2.4 + 2.4 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} -1.4 \\ 4.8 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{Q}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} &= \sqrt{(-1.4)^2 + 4.8^2} && \text{(definition of the norm)} \\ &= \sqrt{1.96 + 23.04} && \text{(square)} \\ &= \sqrt{25} && \text{(add)} \\ &= 5 && \text{(take the square root)} \end{aligned} \\
>
> which is \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = 5\\.

## 0.2 Quadratic Forms

> **NOTE:**
>
> **Definition 11 (Quadratic form)** A **quadratic form** [\[7\]](#ref-wikipedia_quadratic_form) is a mathematical expression of the structure
>
> \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\ \mathbf{S}\\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\
>
> where \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is a \\p \times 1\\ vector and \\\mathbf{S}\\ is a \\p \times p\\ matrix.

> **NOTE:**
>
> *Remark 7* (Quadratic forms in statistics). A quadratic form extends the scalar expression \\c x^2\\ to vectors: with \\p = 1\\ and \\\mathbf{S} = \[c\]\\, \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\\mathbf{S}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= c x^2\\. With \\p = 2\\,
>
> \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = x_1^2 + 2 x_1 x_2 + 3 x_2^2, \\
>
> which is \\1 + 4 + 12 = 17\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 2)\\.
>
> Quadratic forms occur often in statistics:
>
> - The residual sum of squares in linear regression (see [Vector Calculus](vector-calculus.llms.md)) is a quadratic form.
> - The variance of a linear combination of estimates (see [Inference about Gaussian Linear Regression Models](https://morrison-lab.github.io/rme/chapters/Linear-models-overview.html#sec-infer-LMs)) is a quadratic form: \\{\operatorname{Var}\mathopen{}\left(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}}\right)\mathclose{}} = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\{\operatorname{Var}\mathopen{}\left(\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}}\right)\mathclose{}}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\.

> **NOTE:**
>
> **Theorem 8 (A quadratic form is additive in its matrix)** If \\\mathbf{A}\\ and \\\mathbf{B}\\ are \\p \times p\\ matrices, \\c\\ is a number and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is a vector of length \\p\\, then
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}(\mathbf{A} + \mathbf{B})\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}&= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{B} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}(c\\\mathbf{A})\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}&= c\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}. \end{aligned} \\
>
> So for a fixed \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, the map \\\mathbf{S} \mapsto {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is linear in \\\mathbf{S}\\.

> **NOTE:**
>
> *Proof*. By the distributive law ([Theorem 6 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-distrib)), applied on the left and then on the right,
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}(\mathbf{A} + \mathbf{B})\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= \mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\mathbf{A} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\mathbf{B}\right)\mathclose{}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(distribute } {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \text{ over the sum)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{B} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(distribute } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\text{ over the sum)} \end{aligned} \\
>
> For the scalar, a number can be moved out of any product, so \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}(c\\\mathbf{A})\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= c\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\.

> **NOTE:**
>
> **Example 17 (Combining two quadratic forms into one)** Take \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}\\, \\\mathbf{B} = \mathbf{I}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 2)\\. Then
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= 1 + 4 + 12 = 17, \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{I} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= 1 + 4 = 5, \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}(\mathbf{A} + \mathbf{I})\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\begin{bmatrix} 2 & 2 \\ 0 & 4 \end{bmatrix}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ &= 2 + 4 + 16 \\ &= 22, \end{aligned} \\
>
> which equals \\17 + 5\\. In particular, \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}(\mathbf{A} + c\\\mathbf{I})\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + c\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2\\ for every number \\c\\, because \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{I} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2\\. This is how two quadratic terms in the same vector combine into a single quadratic form.

> **NOTE:**
>
> **Definition 12 (Symmetric part of a square matrix)** The **symmetric part** of a \\p \times p\\ matrix \\\mathbf{S}\\ is
>
> \\\frac{1}{2}\mathopen{}\left(\mathbf{S} + {\mathbf{S}}^{\top}\right)\mathclose{}\\

> **NOTE:**
>
> **Example 18 (The symmetric part of a \\2 \times 2\\ matrix)** For \\\mathbf{S} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}\\, the symmetric part is
>
> \\ \begin{aligned} \frac{1}{2}\mathopen{}\left( \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix} + \begin{bmatrix} 1 & 0 \\ 2 & 3 \end{bmatrix} \right)\mathclose{} &= \frac{1}{2}\begin{bmatrix} 2 & 2 \\ 2 & 6 \end{bmatrix} \\ &= \begin{bmatrix} 1 & 1 \\ 1 & 3 \end{bmatrix}, \end{aligned} \\
>
> which is symmetric.

> **NOTE:**
>
> **Theorem 9 (A quadratic form depends only on the symmetric part)** If \\\mathbf{S}\\ is a \\p \times p\\ matrix and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is a vector of length \\p\\, then
>
> \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\mathopen{}\left(\frac{1}{2}(\mathbf{S}+{\mathbf{S}}^{\top})\right)\mathclose{}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}. \\
>
> So the value of a quadratic form depends only on the symmetric part ([Definition 12](#def-symmetric-part)) of \\\mathbf{S}\\.

> **NOTE:**
>
> *Proof*. The quadratic form \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is a \\1 \times 1\\ matrix, so it equals its own transpose:
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= {\mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right)\mathclose{}}^{\top} && \text{(a } 1 \times 1 \text{ matrix is symmetric)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\{\mathbf{S}}^{\top}\\{\mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\right)\mathclose{}}^{\top} && \text{(transpose of a product, twice)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\{\mathbf{S}}^{\top}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(transposing twice changes nothing)} \end{aligned} \\
>
> Averaging the two expressions for \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\:
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= \frac{1}{2}\mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\{\mathbf{S}}^{\top}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right)\mathclose{} && \text{(average of two equal numbers)} \\ &= \frac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\mathopen{}\left(\mathbf{S} + {\mathbf{S}}^{\top}\right)\mathclose{}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(distributive law)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\mathopen{}\left(\frac{1}{2}(\mathbf{S}+{\mathbf{S}}^{\top})\right)\mathclose{}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(move the scalar } \tfrac{1}{2} \text{ inside)} \end{aligned} \\
>
> The distributive step is [Theorem 6 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-distrib), and the transpose step is [Theorem 17 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product).

> **NOTE:**
>
> **Example 19 (Replacing a matrix by its symmetric part)** With \\\mathbf{S} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}\\ from [Example 18](#exm-symmetric-part) and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 1)\\:
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= 1 + 2 + 0 + 3 \\ &= 6 \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\begin{bmatrix} 1 & 1 \\ 1 & 3 \end{bmatrix}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= 1 + 1 + 1 + 3 \\ &= 6 \end{aligned} \\
>
> Both quadratic forms equal the sum of their matrix’s entries, because every entry of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is \\1\\.

## 0.3 Trace and Matrix Inner Product

> **NOTE:**
>
> **Definition 13 (Trace)** The **trace** [\[8\]](#ref-wikipedia_trace_linear_algebra) of a \\p \times p\\ matrix \\\mathbf{M}\\ is the sum of its diagonal entries:
>
> \\\operatorname{tr}(\mathbf{M}) \stackrel{\text{def}}{=}\sum\_{i=1}^pM\_{ii}\\

> **NOTE:**
>
> **Example 20 (The trace of a \\2 \times 2\\ matrix)** \\ \begin{aligned} {\operatorname{tr}\mathopen{}\left(\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\right)\mathclose{}} &= 1 + 4 \\ &= 5 \end{aligned} \\

> **NOTE:**
>
> **Theorem 10 (The trace of a product does not depend on the order)** For an \\m \times n\\ matrix \\\mathbf{A}\\ and an \\n \times m\\ matrix \\\mathbf{B}\\:
>
> \\ {\operatorname{tr}\mathopen{}\left(\underbrace{\mathbf{A}\mathbf{B}}\_{m \times m}\right)\mathclose{}} = {\operatorname{tr}\mathopen{}\left(\underbrace{\mathbf{B}\mathbf{A}}\_{n \times n}\right)\mathclose{}} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \operatorname{tr}(\mathbf{A}\mathbf{B}) &= \sum\_{i=1}^{m} (\mathbf{A}\mathbf{B})\_{ii} && \text{(definition of the trace)} \\ &= \sum\_{i=1}^{m} \sum\_{s=1}^{n} a\_{is}\\ b\_{si} && \text{(definition of matrix multiplication)} \\ &= \sum\_{s=1}^{n} \sum\_{i=1}^{m} a\_{is}\\ b\_{si} && \text{(swap the order of two finite sums)} \\ &= \sum\_{s=1}^{n} \sum\_{i=1}^{m} b\_{si}\\ a\_{is} && \text{(multiplication of numbers is commutative)} \\ &= \sum\_{s=1}^{n} (\mathbf{B}\mathbf{A})\_{ss} && \text{(definition of matrix multiplication)} \\ &= \operatorname{tr}(\mathbf{B}\mathbf{A}) && \text{(definition of the trace)} \end{aligned} \\

> **NOTE:**
>
> **Example 21 (Traces of the two products of a \\2 \times 3\\ and a \\3 \times 2\\ matrix)** Let
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
> *Remark 8* (Moving a factor of a triple product). Let \\\mathbf{A}\\ be \\m \times n\\, \\\mathbf{B}\\ be \\n \times k\\, and \\\mathbf{C}\\ be \\k \times m\\, so that \\\mathbf{A}\mathbf{B}\\ is \\m \times k\\ and \\\mathbf{A}\mathbf{B}\mathbf{C}\\ is square. Applying [Theorem 10](#thm-trace-cyclic) to the \\m \times k\\ matrix \\\mathbf{A}\mathbf{B}\\ and the \\k \times m\\ matrix \\\mathbf{C}\\ moves the last factor of the triple product to the front [\[6, Ch. 1\]](#ref-banerjee2014linear), Theorem 1.5 and eq. 1.17, p. 19:
>
> \\ \begin{aligned} \operatorname{tr}(\mathbf{A}\mathbf{B}\mathbf{C}) &= {\operatorname{tr}\mathopen{}\left((\mathbf{A}\mathbf{B})\\\mathbf{C}\right)\mathclose{}} && \text{(matrix multiplication is associative)} \\ &= {\operatorname{tr}\mathopen{}\left(\mathbf{C}\\(\mathbf{A}\mathbf{B})\right)\mathclose{}} && \text{(the theorem, applied to the two factors } \mathbf{A}\mathbf{B} \text{ and } \mathbf{C} \text{)} \\ &= \operatorname{tr}(\mathbf{C}\mathbf{A}\mathbf{B}) && \text{(matrix multiplication is associative)} \end{aligned} \\
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
> and both traces are the same:
>
> \\ \begin{aligned} \operatorname{tr}(\mathbf{A}\mathbf{B}\mathbf{C}) &= 2 + 1 \\ &= 3 \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \operatorname{tr}(\mathbf{C}\mathbf{A}\mathbf{B}) &= 1 + 2 \\ &= 3. \end{aligned} \\

> **NOTE:**
>
> **Definition 14 (Matrix inner product)** The **inner product** of two \\n \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\ is
>
> \\ {\mathopen{}\left\langle \mathbf{A}, \mathbf{B}\right\rangle\mathclose{}} \stackrel{\text{def}}{=} {\operatorname{tr}\mathopen{}\left(\underbrace{{\mathbf{A}}^{\top}\mathbf{B}}\_{p \times p}\right)\mathclose{}} \\

Banerjee and Roy [\[6, Ch. 15\]](#ref-banerjee2014linear), eq. 15.7, p. 491 defines the same inner product on \\n \times p\\ matrices with the trace.

> **NOTE:**
>
> **Theorem 11 (The matrix inner product multiplies matching entries)** For two \\n \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\:
>
> \\ {\mathopen{}\left\langle \mathbf{A}, \mathbf{B}\right\rangle\mathclose{}} = \sum\_{i=1}^n\sum\_{j=1}^pa\_{ij}\\ b\_{ij} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} {\mathopen{}\left\langle \mathbf{A}, \mathbf{B}\right\rangle\mathclose{}} &= \operatorname{tr}({\mathbf{A}}^{\top}\mathbf{B}) && \text{(definition of the inner product)} \\ &= \sum\_{j=1}^p({\mathbf{A}}^{\top}\mathbf{B})\_{jj} && \text{(definition of the trace)} \\ &= \sum\_{j=1}^p\sum\_{i=1}^n({\mathbf{A}}^{\top})\_{ji}\\ b\_{ij} && \text{(definition of matrix multiplication)} \\ &= \sum\_{j=1}^p\sum\_{i=1}^na\_{ij}\\ b\_{ij} && \text{(definition of the transpose)} \\ &= \sum\_{i=1}^n\sum\_{j=1}^pa\_{ij}\\ b\_{ij} && \text{(swap the order of two finite sums)} \end{aligned} \\

> **NOTE:**
>
> **Example 22 (The inner product of two \\2 \times 2\\ matrices)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \qquad \mathbf{B} = \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix} \\
>
> From [Definition 14](#def-matrix-inner-product):
>
> \\ \begin{aligned} {\mathopen{}\left\langle \mathbf{A}, \mathbf{B}\right\rangle\mathclose{}} &= {\operatorname{tr}\mathopen{}\left({\mathbf{A}}^{\top}\mathbf{B}\right)\mathclose{}} && \text{(definition of the inner product)} \\ &= {\operatorname{tr}\mathopen{}\left( {\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}}^{\top} \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix} \right)\mathclose{}} && \text{(substitute)} \\ &= {\operatorname{tr}\mathopen{}\left( \begin{bmatrix} 1 & 3 \\ 2 & 4 \end{bmatrix} \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix} \right)\mathclose{}} && \text{(definition of the transpose)} \\ &= {\operatorname{tr}\mathopen{}\left(\begin{bmatrix} -3 & 7 \\ -4 & 10 \end{bmatrix}\right)\mathclose{}} && \text{(multiply)} \\ &= -3 + 10 && \text{(definition of the trace)} \\ &= 7 && \text{(add)} \end{aligned} \\
>
> From [Theorem 11](#thm-matrix-inner-product-entries):
>
> \\ \begin{aligned} {\mathopen{}\left\langle \mathbf{A}, \mathbf{B}\right\rangle\mathclose{}} &= 1 \cdot 0 + 2 \cdot 1 + 3 \cdot(-1) + 4 \cdot 2 && \text{(multiply matching entries and add)} \\ &= 0 + 2 - 3 + 8 && \text{(multiply)} \\ &= 7 && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> *Remark 9* (The matrix inner product as a dot product). [Theorem 11](#thm-matrix-inner-product-entries) says that the matrix inner product is the dot product ([Definition 8 in Vectors](linear-algebra-vectors.llms.md#def-dot-product)) of the two matrices’ entries, each listed as one vector of length \\np\\, with both matrices’ entries listed in the same order.
>
> For example, listing the entries of \\\mathbf{A}\\ and \\\mathbf{B}\\ in [Example 22](#exm-matrix-inner-product) row by row gives \\(1, 2, 3, 4)\\ and \\(0, 1, -1, 2)\\, and
>
> \\ \begin{aligned} (1, 2, 3, 4) \cdot (0, 1, -1, 2) &= 7 \\ &= {\mathopen{}\left\langle \mathbf{A}, \mathbf{B}\right\rangle\mathclose{}}. \end{aligned} \\

> **NOTE:**
>
> **Definition 15 (Frobenius norm)** The **Frobenius norm** [\[9\]](#ref-wikipedia_frobenius_norm) of an \\n \times p\\ matrix \\\mathbf{A}\\ is
>
> \\ \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F \stackrel{\text{def}}{=}\sqrt{{\mathopen{}\left\langle \mathbf{A}, \mathbf{A}\right\rangle\mathclose{}}} \\
>
> where \\{\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\\ is the matrix inner product ([Definition 14](#def-matrix-inner-product)).

> **NOTE:**
>
> **Example 23 (The Frobenius norm of a \\2 \times 2\\ matrix)** For \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F &= \sqrt{{\mathopen{}\left\langle \mathbf{A}, \mathbf{A}\right\rangle\mathclose{}}} && \text{(definition of the Frobenius norm)} \\ &= \sqrt{1 \cdot 1 + 2 \cdot 2 + 3 \cdot 3 + 4 \cdot 4} && \text{(sum of products of matching entries)} \\ &= \sqrt{1 + 4 + 9 + 16} && \text{(multiply)} \\ &= \sqrt{30} && \text{(add)} \end{aligned} \\
>
> The second step is [Theorem 11](#thm-matrix-inner-product-entries).

> **NOTE:**
>
> *Remark 10* (The Frobenius norm is the Euclidean norm of the entries). By [Theorem 11](#thm-matrix-inner-product-entries), \\\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F^2 = \sum\_{i=1}^n\sum\_{j=1}^pa\_{ij}^2\\, a sum of squares, so the square root is always defined. \\\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F\\ is the Euclidean norm ([Definition 20 in Vectors](linear-algebra-vectors.llms.md#def-euclidean-norm)) of the entries of \\\mathbf{A}\\, listed as one vector of length \\np\\ [\[6, Ch. 15\]](#ref-banerjee2014linear), Definition 15.4, p. 492.
>
> For example, listing the entries of \\\mathbf{A}\\ in [Example 23](#exm-frobenius-norm) row by row gives the vector \\(1, 2, 3, 4)\\ of length \\2 \cdot 2 = 4\\, and
>
> \\ \begin{aligned} \mathopen{}\left\lVert(1, 2, 3, 4)\right\rVert\mathclose{} &= \sqrt{1 + 4 + 9 + 16} \\ &= \sqrt{30} \\ &= \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F. \end{aligned} \\

> **NOTE:**
>
> **Theorem 12 (The squared Frobenius norm adds up the squared column norms)** If \\\mathbf{A}\\ is an \\n \times p\\ matrix with columns \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_p\\, then
>
> \\ \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F^2 = \sum\_{j=1}^p\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_j\right\rVert\mathclose{}^2. \\

> **NOTE:**
>
> *Proof*. Entry \\i\\ of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_j\\ is \\a\_{ij}\\, so
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F^2 &= \sum\_{i=1}^n\sum\_{j=1}^pa\_{ij}^2 && \text{(}\href{#rem-frobenius-norm-entries}{\text{Remark~10}}\text{)} \\ &= \sum\_{j=1}^p\sum\_{i=1}^na\_{ij}^2 && \text{(swap the order of two finite sums)} \\ &= \sum\_{j=1}^p\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_j\right\rVert\mathclose{}^2 && \text{(}\href{linear-algebra-vectors.qmd#def-euclidean-norm}{\text{Definition~20 in Vectors}}\text{, applied to each column)} \end{aligned} \\

> **NOTE:**
>
> **Example 24 (The Frobenius norm of a \\2 \times 2\\ matrix, column by column)** The matrix \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\ in [Example 23](#exm-frobenius-norm) has columns \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1 = (1, 3)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_2 = (2, 4)\\, so
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F^2 &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_2\right\rVert\mathclose{}^2 && \text{(}\href{#thm-frobenius-norm-columns}{\text{Theorem~12}}\text{)} \\ &= (1^2 + 3^2) + (2^2 + 4^2) && \text{(definition of the norm)} \\ &= 10 + 20 && \text{(square and add)} \\ &= 30 && \text{(add)} \end{aligned} \\
>
> which matches \\\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F = \sqrt{30}\\ from [Example 23](#exm-frobenius-norm).

## 0.4 Matrix Decompositions

> **NOTE:**
>
> **Definition 16 (Eigenvalue)** Let \\\mathbf{A}\\ be a \\p \times p\\ matrix. A real number \\\lambda\\ is an **eigenvalue** of \\\mathbf{A}\\ if some real vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ of length \\p\\ satisfies
>
> \\ \underbrace{\mathbf{A}}\_{p \times p}\\\underbrace{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}\_{p \times 1} = \lambda\\\underbrace{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}\_{p \times 1} \\

> **NOTE:**
>
> **Definition 17 (Eigenvector)** In [Definition 16](#def-eigenvalue), any such \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ is an **eigenvector** of \\\mathbf{A}\\ for \\\lambda\\.

> **NOTE:**
>
> **Example 25 (Eigenvectors of a \\2 \times 2\\ matrix)** Let \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\.
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
> *Remark 11* (Multiples of an eigenvector). Multiplying by \\\mathbf{A}\\ rescales an eigenvector by \\\lambda\\ and does not change the line it lies on. Any nonzero multiple \\c\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ of an eigenvector is also an eigenvector for the same \\\lambda\\:
>
> \\ \begin{aligned} \mathbf{A}(c\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}) &= c\\\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} && \text{(move the scalar } c \text{ to the front)} \\ &= c\\\lambda\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \text{ is an eigenvector for } \lambda\text{)} \\ &= \lambda\\(c\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}) && \text{(multiplication of numbers is commutative)} \end{aligned} \\
>
> For example, in [Example 25](#exm-eigenvalue), \\2\\(1, 1) = (2, 2)\\ is also an eigenvector for the eigenvalue \\3\\:
>
> \\ \begin{aligned} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 2 \\ 2 \end{bmatrix} &= \begin{bmatrix} 2 \cdot 2 + 1 \cdot 2 \\ 1 \cdot 2 + 2 \cdot 2 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 4 + 2 \\ 2 + 4 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 6 \\ 6 \end{bmatrix} && \text{(add)} \\ &= 3 \begin{bmatrix} 2 \\ 2 \end{bmatrix} && \text{(factor out } 3 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 26 (A vector that is not an eigenvector)** For the same \\\mathbf{A}\\, \\(1, 0)\\ is not an eigenvector:
>
> \\ \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 1 \\ 0 \end{bmatrix} = \begin{bmatrix} 2 \\ 1 \end{bmatrix}, \\
>
> and no number \\\lambda\\ gives \\(2, 1) = \lambda\\(1, 0)\\, because the second entries would need \\1 = \lambda\cdot 0\\.

> **NOTE:**
>
> *Remark 12* (Real and complex eigenvalues). These notes take \\\lambda\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ to be real. Banerjee and Roy [\[6, Ch. 11\]](#ref-banerjee2014linear), Definition 11.1, pp. 312-313 also allows [complex](algebra-complex.llms.md#def-complex-number) eigenvalues and eigenvectors, because some real matrices, such as a rotation by \\90\\ degrees, have no real eigenvalues [\[6, Ch. 11\]](#ref-banerjee2014linear), Example 11.2, p. 312.
>
> For example, \\\mathbf{R} = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}\\ rotates each vector in the plane counterclockwise by \\90\\ degrees: \\\mathbf{R}\\(v_1, v_2) = (-v_2, v_1)\\. Suppose \\\mathbf{R}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = \lambda\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ for a real number \\\lambda\\. Matching entries gives \\-v_2 = \lambda v_1\\ and \\v_1 = \lambda v_2\\. Substituting the second equation into the first gives \\-v_2 = \lambda^2 v_2\\, so \\(1 + \lambda^2)\\ v_2 = 0\\. Since \\1 + \lambda^2 \> 0\\, \\v_2 = 0\\, and then
>
> \\ \begin{aligned} v_1 &= \lambda v_2 \\ &= 0. \end{aligned} \\
>
> So the only solution is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, and \\\mathbf{R}\\ has no real eigenvalue.

> **TIP:**
>
> Chapter 14 of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown shows the geometric meaning of eigenvectors and eigenvalues:
>
> - [Eigenvectors and eigenvalues](https://www.youtube.com/watch?v=PFDu9oVAE-g) shows how certain vectors maintain their direction during a linear transformation and are merely stretched or squished by an eigenvalue factor ([Definition 16](#def-eigenvalue)).

> **NOTE:**
>
> **Theorem 13 (Spectral theorem for symmetric matrices)** If \\\mathbf{A}\\ is a \\p \times p\\ symmetric matrix ([Definition 3](#def-symmetric-matrix)) with real entries, then there are a \\p \times p\\ orthogonal matrix \\\mathbf{Q}\\ ([Definition 10](#def-orthogonal-matrix)) and a \\p \times p\\ diagonal matrix \\\mathbf{\Lambda}\\ ([Definition 4](#def-diagonal-matrix)) with real diagonal entries \\\lambda_1, \ldots, \lambda_p\\ such that
>
> \\ \underbrace{\mathbf{A}}\_{p \times p} = \underbrace{\mathbf{Q}}\_{p \times p}\\ \underbrace{\mathbf{\Lambda}}\_{p \times p}\\ \underbrace{{\mathbf{Q}}^{\top}}\_{p \times p} \\
>
> Each \\\lambda_i\\ is an eigenvalue of \\\mathbf{A}\\ ([Definition 16](#def-eigenvalue)), and column \\i\\ of \\\mathbf{Q}\\ is an eigenvector of \\\mathbf{A}\\ for \\\lambda_i\\.

> **NOTE:**
>
> *Remark 13* (An equivalent form of the spectral theorem). The proof, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\p\\, is outside the scope of these notes; see Banerjee and Roy [\[6, Ch. 11\]](#ref-banerjee2014linear), Theorem 11.27, p. 349, which states the result in the equivalent form \\{\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q} = \mathbf{\Lambda}\\. The two forms are equivalent because
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top}\mathbf{Q} &= \mathbf{Q}{\mathbf{Q}}^{\top} \\ &= \mathbf{I}\_p \end{aligned} \\
>
> ([Remark 6](#rem-orthogonal-matrix-columns)). Multiplying \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ by \\{\mathbf{Q}}^{\top}\\ on the left and by \\\mathbf{Q}\\ on the right gives
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
> a diagonal matrix with the eigenvalues \\3\\ and \\1\\ of \\\mathbf{A}\\ from [Example 25](#exm-eigenvalue) on its diagonal.

> **NOTE:**
>
> **Theorem 14 (Eigenvectors of a symmetric matrix for distinct eigenvalues are orthogonal)** Let \\\mathbf{A}\\ be a symmetric \\p \times p\\ matrix ([Definition 3](#def-symmetric-matrix)), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ be [eigenvectors](linear-algebra-special-matrices.llms.md#def-eigenvector) of \\\mathbf{A}\\ ([Definition 17](#def-eigenvector)) for [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) \\\lambda_1 \ne \lambda_2\\. Then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \perp \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ ([Definition 19 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)).

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \lambda_1\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}) &= (\lambda_1 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}) \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)} \\ &= (\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}) \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \text{ is an eigenvector for } \lambda_1 \text{)} \\ &= {(\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}})}^{\top}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\\{\mathbf{A}}^{\top}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\\\mathbf{A}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} && \text{(} \mathbf{A} \text{ is symmetric)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\\(\lambda_2 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}) && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \text{ is an eigenvector for } \lambda_2 \text{)} \\ &= \lambda_2\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}). && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)} \end{aligned} \\
>
> So \\(\lambda_1 - \lambda_2)\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}) = 0\\, and \\\lambda_1 - \lambda_2 \ne 0\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = 0\\.

> **NOTE:**
>
> **Example 27 (Eigenvectors of a symmetric \\2 \times 2\\ matrix)** \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ is [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix). Its [eigenvectors](linear-algebra-special-matrices.llms.md#def-eigenvector) \\(1, 1)\\ for \\\lambda_1 = 3\\ and \\(1, -1)\\ for \\\lambda_2 = 1\\ ([Example 25](#exm-eigenvalue)) satisfy
>
> \\ \begin{aligned} (1, 1) \cdot (1, -1) &= 1 \cdot 1 + 1 \cdot(-1) \\ &= 0. \end{aligned} \\

> **NOTE:**
>
> **Definition 18 (Eigendecomposition, spectral decomposition)** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric matrix with real entries. An **eigendecomposition** [\[10\]](#ref-wikipedia_eigendecomposition_of_a_matrix), or **spectral decomposition**, of \\\mathbf{A}\\ is a factorization
>
> \\ \mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top} \\
>
> with \\\mathbf{Q}\\ a \\p \times p\\ orthogonal matrix ([Definition 10](#def-orthogonal-matrix)) and \\\mathbf{\Lambda}\\ a \\p \times p\\ diagonal matrix ([Definition 4](#def-diagonal-matrix)).

> **NOTE:**
>
> **Example 28 (An eigendecomposition of a \\2 \times 2\\ symmetric matrix)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, [Example 25](#exm-eigenvalue) found the eigenvectors \\(1, 1)\\ for \\3\\ and \\(1, -1)\\ for \\1\\. They are orthogonal ([Definition 19 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)):
>
> \\ \begin{aligned} (1, 1) \cdot (1, -1) &= 1 \cdot 1 + 1 \cdot(-1) && \text{(definition of the dot product)} \\ &= 1 - 1 && \text{(multiply)} \\ &= 0 && \text{(add)} \end{aligned} \\
>
> Each has norm \\\sqrt{1^2 + 1^2} = \sqrt{2}\\ ([Definition 20 in Vectors](linear-algebra-vectors.llms.md#def-euclidean-norm)), so dividing each by \\\sqrt{2}\\ gives two orthonormal eigenvectors ([Definition 23 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)). Put them in the columns of \\\mathbf{Q}\\, and the matching eigenvalues on the diagonal of \\\mathbf{\Lambda}\\:
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
> *Remark 14* (An eigendecomposition is not unique). A symmetric matrix can have more than one eigendecomposition. Reordering the eigenvalues on the diagonal of \\\mathbf{\Lambda}\\, and the columns of \\\mathbf{Q}\\ with them, gives another one, and so does multiplying a column of \\\mathbf{Q}\\ by \\-1\\.
>
> For example, take \\\mathbf{A}\\ from [Example 28](#exm-spectral). Swapping the two eigenvalues and the two columns gives
>
> \\ \mathbf{Q}\_1 = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} \qquad \mathbf{\Lambda}\_1 = \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix} \\
>
> and multiplying the second column of \\\mathbf{Q}\\ by \\-1\\ gives
>
> \\ \begin{aligned} \mathbf{Q}\_2 &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} \\ \mathbf{\Lambda}\_2 &= \mathbf{\Lambda} \\ &= \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} \end{aligned} \\
>
> The columns of \\\mathbf{Q}\_1\\ and \\\mathbf{Q}\_2\\ are the columns of \\\mathbf{Q}\\, reordered or multiplied by \\-1\\, so they are still orthonormal, and \\\mathbf{Q}\_1\\ and \\\mathbf{Q}\_2\\ are orthogonal. Both products give back \\\mathbf{A}\\:
>
> \\ \begin{aligned} \mathbf{Q}\_1\mathbf{\Lambda}\_1{\mathbf{Q}\_1}^{\top} &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix} {\mathopen{}\left(\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}\right)\mathclose{}}^{\top} && \text{(substitute)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \frac{1}{\sqrt{2}} \cdot\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(move the scalars to the front)} \\ &= \frac{1}{2} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(multiply the scalars)} \\ &= \frac{1}{2} \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 0 + 1 \cdot 3 \\ -1 \cdot 1 + 1 \cdot 0 & -1 \cdot 0 + 1 \cdot 3 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(definition of matrix multiplication, first two matrices)} \\ &= \frac{1}{2} \begin{bmatrix} 1 + 0 & 0 + 3 \\ -1 + 0 & 0 + 3 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{2} \begin{bmatrix} 1 & 3 \\ -1 & 3 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(add)} \\ &= \frac{1}{2} \begin{bmatrix} 1 \cdot 1 + 3 \cdot 1 & 1 \cdot(-1) + 3 \cdot 1 \\ -1 \cdot 1 + 3 \cdot 1 & -1 \cdot(-1) + 3 \cdot 1 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \frac{1}{2} \begin{bmatrix} 1 + 3 & -1 + 3 \\ -1 + 3 & 1 + 3 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{2} \begin{bmatrix} 4 & 2 \\ 2 & 4 \end{bmatrix} && \text{(add)} \\ &= \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} && \text{(multiply by } \tfrac{1}{2} \text{)} \end{aligned} \\
>
> \\ \begin{aligned} \mathbf{Q}\_2\mathbf{\Lambda}\_2{\mathbf{Q}\_2}^{\top} &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} {\mathopen{}\left(\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}\right)\mathclose{}}^{\top} && \text{(substitute)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \frac{1}{\sqrt{2}} \cdot\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} && \text{(move the scalars to the front)} \\ &= \frac{1}{2} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} && \text{(multiply the scalars)} \\ &= \frac{1}{2} \begin{bmatrix} 1 \cdot 3 + (-1) \cdot 0 & 1 \cdot 0 + (-1) \cdot 1 \\ 1 \cdot 3 + 1 \cdot 0 & 1 \cdot 0 + 1 \cdot 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} && \text{(definition of matrix multiplication, first two matrices)} \\ &= \frac{1}{2} \begin{bmatrix} 3 + 0 & 0 - 1 \\ 3 + 0 & 0 + 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{2} \begin{bmatrix} 3 & -1 \\ 3 & 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix} && \text{(add)} \\ &= \frac{1}{2} \begin{bmatrix} 3 \cdot 1 + (-1) \cdot(-1) & 3 \cdot 1 + (-1) \cdot 1 \\ 3 \cdot 1 + 1 \cdot(-1) & 3 \cdot 1 + 1 \cdot 1 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \frac{1}{2} \begin{bmatrix} 3 + 1 & 3 - 1 \\ 3 - 1 & 3 + 1 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{2} \begin{bmatrix} 4 & 2 \\ 2 & 4 \end{bmatrix} && \text{(add)} \\ &= \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} && \text{(multiply by } \tfrac{1}{2} \text{)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 15 (Singular value decomposition)** Let \\\mathbf{A}\\ be an \\n \times p\\ matrix with real entries and \\\operatorname{rank}(\mathbf{A}) = r\\ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)). Then there are an \\n \times n\\ orthogonal matrix \\\mathbf{U}\\, a \\p \times p\\ orthogonal matrix \\\mathbf{V}\\ ([Definition 10](#def-orthogonal-matrix)), and numbers \\\sigma_1 \ge \sigma_2 \ge \cdots \ge \sigma_r \> 0\\ such that
>
> \\ \underbrace{\mathbf{A}}\_{n \times p} = \underbrace{\mathbf{U}}\_{n \times n}\\ \underbrace{\mathbf{D}}\_{n \times p}\\ \underbrace{{\mathbf{V}}^{\top}}\_{p \times p} \\
>
> where \\\mathbf{D}\\ has entries \\d\_{ii} = \sigma_i\\ for \\i = 1, \ldots, r\\ and every other entry \\0\\.

> **NOTE:**
>
> *Remark 15* (The SVD applies to every real matrix). The proof is outside the scope of these notes; see Banerjee and Roy [\[6, Ch. 12\]](#ref-banerjee2014linear), Theorem 12.1, p. 373. Unlike the spectral theorem ([Theorem 13](#thm-spectral)), [Theorem 15](#thm-svd) applies to every real matrix, including one that is not square or not symmetric.
>
> For example, the \\1 \times 2\\ matrix \\\mathbf{A} = \begin{bmatrix} 1 & 1 \end{bmatrix}\\ is not square, so [Theorem 13](#thm-spectral) does not apply to it. It has rank \\1\\, and [Theorem 15](#thm-svd) holds with \\\mathbf{U} = \begin{bmatrix} 1 \end{bmatrix}\\, \\\mathbf{D} = \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix}\\, and \\\mathbf{V}\\ the orthogonal matrix \\\mathbf{Q}\\ from [Example 28](#exm-spectral), which is symmetric, so \\{\mathbf{V}}^{\top} = \mathbf{V}\\:
>
> \\ \begin{aligned} \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top} &= \begin{bmatrix} 1 \end{bmatrix} \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(substitute)} \\ &= \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(multiplying by the } 1 \times 1 \text{ identity changes nothing)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(move the scalar to the front)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} \sqrt{2} \cdot 1 + 0 \cdot 1 & \sqrt{2} \cdot 1 + 0 \cdot(-1) \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} \sqrt{2} + 0 & \sqrt{2} + 0 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{\sqrt{2}} \begin{bmatrix} \sqrt{2} & \sqrt{2} \end{bmatrix} && \text{(add)} \\ &= \begin{bmatrix} 1 & 1 \end{bmatrix} && \text{(divide by } \sqrt{2} \text{)} \end{aligned} \\
>
> \\\mathbf{U}\\ is orthogonal because
>
> \\ \begin{aligned} {\mathbf{U}}^{\top}\mathbf{U} &= \begin{bmatrix} 1 \end{bmatrix} \\ &= \mathbf{I}\_1, \end{aligned} \\
>
> and the single singular value is \\\sigma_1 = \sqrt{2}\\.

> **NOTE:**
>
> **Definition 19 (Singular value decomposition)** Let \\\mathbf{A}\\ be an \\n \times p\\ matrix with real entries and \\\operatorname{rank}(\mathbf{A}) = r\\. A **singular value decomposition** [\[11\]](#ref-wikipedia_singular_value_decomposition) (SVD) of \\\mathbf{A}\\ is a factorization \\\mathbf{A} = \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}\\ with \\\mathbf{U}\\, \\\mathbf{D}\\ and \\\mathbf{V}\\ as in [Theorem 15](#thm-svd).

> **NOTE:**
>
> **Definition 20 (Singular values)** The numbers \\\sigma_1 \ge \cdots \ge \sigma_r \> 0\\ on the diagonal of \\\mathbf{D}\\ in a singular value decomposition of \\\mathbf{A}\\ ([Definition 19](#def-svd)) are the **singular values** of \\\mathbf{A}\\.

> **NOTE:**
>
> **Example 29 (An SVD of a \\3 \times 2\\ matrix)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix} \qquad \mathbf{U} = \begin{bmatrix} \frac{1}{\sqrt{2}} & 0 & \frac{1}{\sqrt{2}} \\ 0 & 1 & 0 \\ \frac{1}{\sqrt{2}} & 0 & -\frac{1}{\sqrt{2}} \end{bmatrix} \qquad \mathbf{D} = \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix} \qquad \mathbf{V} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \\
>
> \\\mathbf{V}\\ is the orthogonal matrix \\\mathbf{Q}\\ from [Example 28](#exm-spectral). \\\mathbf{U}\\ is orthogonal too. Entry \\(i, j)\\ of \\{\mathbf{U}}^{\top}\mathbf{U}\\ is the dot product of columns \\i\\ and \\j\\ of \\\mathbf{U}\\, and those columns are \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1 = (\frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}})\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_2 = (0, 1, 0)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_3 = (\frac{1}{\sqrt{2}}, 0, -\frac{1}{\sqrt{2}})\\:
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1 &= \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}} + 0 \cdot 0 + \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}} && \text{(definition of the dot product)} \\ &= \tfrac{1}{2} + 0 + \tfrac{1}{2} && \text{(multiply)} \\ &= 1 && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_2 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_2 &= 0 \cdot 0 + 1 \cdot 1 + 0 \cdot 0 && \text{(definition of the dot product)} \\ &= 0 + 1 + 0 && \text{(multiply)} \\ &= 1 && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_3 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_3 &= \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}} + 0 \cdot 0 + \mathopen{}\left(-\tfrac{1}{\sqrt{2}}\right)\mathclose{} \cdot\mathopen{}\left(-\tfrac{1}{\sqrt{2}}\right)\mathclose{} && \text{(definition of the dot product)} \\ &= \tfrac{1}{2} + 0 + \tfrac{1}{2} && \text{(multiply)} \\ &= 1 && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_2 &= \tfrac{1}{\sqrt{2}} \cdot 0 + 0 \cdot 1 + \tfrac{1}{\sqrt{2}} \cdot 0 && \text{(definition of the dot product)} \\ &= 0 + 0 + 0 && \text{(multiply)} \\ &= 0 && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_3 &= \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}} + 0 \cdot 0 + \tfrac{1}{\sqrt{2}} \cdot\mathopen{}\left(-\tfrac{1}{\sqrt{2}}\right)\mathclose{} && \text{(definition of the dot product)} \\ &= \tfrac{1}{2} + 0 - \tfrac{1}{2} && \text{(multiply)} \\ &= 0 && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_2 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_3 &= 0 \cdot\tfrac{1}{\sqrt{2}} + 1 \cdot 0 + 0 \cdot\mathopen{}\left(-\tfrac{1}{\sqrt{2}}\right)\mathclose{} && \text{(definition of the dot product)} \\ &= 0 + 0 + 0 && \text{(multiply)} \\ &= 0 && \text{(add)} \end{aligned} \\
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
> *Remark 16* (An SVD is not unique). An SVD is not unique [\[6, Ch. 12\]](#ref-banerjee2014linear), Examples 12.2 and 12.3, p. 378. For any \\i \le r\\, multiplying column \\i\\ of both \\\mathbf{U}\\ and \\\mathbf{V}\\ by \\-1\\ gives another one. The singular values do not depend on which SVD is chosen [\[6, Ch. 12\]](#ref-banerjee2014linear), pp. 371 and 378.
>
> For example, in [Example 29](#exm-svd), multiplying the first columns of \\\mathbf{U}\\ and \\\mathbf{V}\\ by \\-1\\ gives
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
> *Remark 17* (Counting zero singular values). Some texts, and R’s [`svd()`](https://rdrr.io/r/base/svd.html), also count \\\min(n, p) - r\\ singular values equal to \\0\\, so that every \\n \times p\\ matrix has \\\min(n, p)\\ singular values.
>
> For example, \\\mathbf{B} = \begin{bmatrix} 3 & 0 \\ 0 & 0 \end{bmatrix}\\ has rank \\r = 1\\. Taking
>
> \\ \begin{aligned} \mathbf{U} &= \mathbf{V} \\ &= \mathbf{I}\_2 \end{aligned} \\
>
> and \\\mathbf{D} = \mathbf{B}\\ gives an SVD \\\mathbf{B} = \mathbf{I}\_2 \mathbf{B} {\mathbf{I}\_2}^{\top}\\, so by [Definition 20](#def-singular-values), \\\mathbf{B}\\ has one singular value, \\\sigma_1 = 3\\. R’s [`svd()`](https://rdrr.io/r/base/svd.html) reports \\\min(2, 2) = 2\\ singular values for \\\mathbf{B}\\: \\3\\ and \\0\\.

> **NOTE:**
>
> **Theorem 16 (An SVD gives an eigendecomposition of \\{\mathbf{A}}^{\top}\mathbf{A}\\)** Let \\\mathbf{A} = \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}\\ be a singular value decomposition ([Definition 19](#def-svd)) of an \\n \times p\\ matrix \\\mathbf{A}\\ with singular values \\\sigma_1, \ldots, \sigma_r\\. Then \\{\mathbf{A}}^{\top}\mathbf{A}\\ is symmetric ([Definition 3](#def-symmetric-matrix)), and
>
> \\ \underbrace{{\mathbf{A}}^{\top}\mathbf{A}}\_{p \times p} = \underbrace{\mathbf{V}}\_{p \times p}\\ \underbrace{\mathbf{\Lambda}}\_{p \times p}\\ \underbrace{{\mathbf{V}}^{\top}}\_{p \times p} \\
>
> where \\\mathbf{\Lambda} \stackrel{\text{def}}{=}{\mathbf{D}}^{\top}\mathbf{D}\\ is the \\p \times p\\ diagonal matrix whose \\i\\-th diagonal entry \\\lambda_i\\ is \\\sigma_i^2\\ for \\i \le r\\ and \\0\\ for \\i \> r\\. So \\\mathbf{V}\mathbf{\Lambda}{\mathbf{V}}^{\top}\\ is an eigendecomposition ([Definition 18](#def-eigendecomposition)) of \\{\mathbf{A}}^{\top}\mathbf{A}\\: column \\i\\ of \\\mathbf{V}\\ is an eigenvector of \\{\mathbf{A}}^{\top}\mathbf{A}\\ for the eigenvalue \\\lambda_i\\.

> **NOTE:**
>
> *Proof*. **Symmetry.**
>
> \\ \begin{aligned} {\mathopen{}\left({\mathbf{A}}^{\top}\mathbf{A}\right)\mathclose{}}^{\top} &= {\mathbf{A}}^{\top}\\{\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}}^{\top} && \text{(transpose of a product)} \\ &= {\mathbf{A}}^{\top}\mathbf{A} && \text{(transposing twice changes nothing)} \end{aligned} \\
>
> The first step is [Theorem 17 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product), and the second follows from [Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose), which swaps rows and columns, so swapping them again restores \\\mathbf{A}\\.
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
> **The eigenvectors.** Write \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_i\\ for column \\i\\ of \\\mathbf{V}\\, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i\\ for the indicator vector ([Definition 18 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)) of length \\p\\. Column \\i\\ of \\{\mathbf{V}}^{\top}\mathbf{V} = \mathbf{I}\_p\\ says \\{\mathbf{V}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_i = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i\\. Then
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\mathbf{A}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_i &= \mathbf{V}\mathbf{\Lambda}\\{\mathbf{V}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_i && \text{(the factorization)} \\ &= \mathbf{V}\mathbf{\Lambda}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i && \text{(} {\mathbf{V}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_i = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i \text{)} \\ &= \mathbf{V}\\(\lambda_i\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i) && \text{(column } i \text{ of the diagonal matrix } \mathbf{\Lambda} \text{)} \\ &= \lambda_i\\\mathbf{V}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i && \text{(move the scalar } \lambda_i \text{ to the front)} \\ &= \lambda_i\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_i && \text{(} \mathbf{V}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i \text{ is column } i \text{ of } \mathbf{V} \text{)} \end{aligned} \\
>
> and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\_i \neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ because it has norm \\1\\.

> **NOTE:**
>
> **Example 30 (\\{\mathbf{A}}^{\top}\mathbf{A}\\ for the matrix of the SVD example)** For \\\mathbf{A}\\ in [Example 29](#exm-svd):
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\mathbf{A} &= \begin{bmatrix} 1 & 1 & 1 \\ 1 & -1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \begin{bmatrix} 1 + 1 + 1 & 1 - 1 + 1 \\ 1 - 1 + 1 & 1 + 1 + 1 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> [Theorem 16](#thm-svd-evd) says its eigenvalues are \\\sigma_1^2 = 4\\ and \\\sigma_2^2 = 2\\, with the columns of \\\mathbf{V}\\ as eigenvectors. Checking the first column, up to its factor \\\frac{1}{\sqrt{2}}\\:
>
> \\ \begin{aligned} \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ 1 \end{bmatrix} &= \begin{bmatrix} 3 \cdot 1 + 1 \cdot 1 \\ 1 \cdot 1 + 3 \cdot 1 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 3 + 1 \\ 1 + 3 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 4 \\ 4 \end{bmatrix} && \text{(add)} \\ &= 4 \begin{bmatrix} 1 \\ 1 \end{bmatrix} && \text{(factor out } 4 \text{)} \end{aligned} \\
>
> and the second:
>
> \\ \begin{aligned} \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix} &= \begin{bmatrix} 3 \cdot 1 + 1 \cdot(-1) \\ 1 \cdot 1 + 3 \cdot(-1) \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 3 - 1 \\ 1 - 3 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 2 \\ -2 \end{bmatrix} && \text{(add)} \\ &= 2 \begin{bmatrix} 1 \\ -1 \end{bmatrix} && \text{(factor out } 2 \text{)} \end{aligned} \\

> **NOTE:**
>
> *Remark 18* (Building an SVD from an eigendecomposition). [Theorem 16](#thm-svd-evd) matches Banerjee and Roy [\[6, Ch. 12\]](#ref-banerjee2014linear), pp. 372-373, which works in the other direction: it constructs an SVD from a spectral decomposition of \\{\mathbf{A}}^{\top}\mathbf{A}\\ and sets \\\sigma_i = \sqrt{\lambda_i}\\.
>
> For example, in [Example 30](#exm-svd-evd) the eigenvalues of \\{\mathbf{A}}^{\top}\mathbf{A}\\ are \\4\\ and \\2\\, and \\\sqrt{4} = 2\\ and \\\sqrt{2}\\ are the singular values \\\sigma_1\\ and \\\sigma_2\\ of \\\mathbf{A}\\ from [Example 29](#exm-svd).

## 0.5 Definite Matrices

> **NOTE:**
>
> **Definition 21 (Positive semidefinite matrix)** A \\p \times p\\ matrix \\\mathbf{A}\\ is **positive semidefinite** [\[12\]](#ref-wikipedia_definite_matrix) if it satisfies both conditions:
>
> - \\\mathbf{A}\\ is symmetric ([Definition 3](#def-symmetric-matrix)).
> - Every quadratic form ([Definition 11](#def-quadratic-form)) in \\\mathbf{A}\\ is non-negative: \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \ge 0\\ for every vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ of length \\p\\.

> **NOTE:**
>
> **Example 31 (A positive semidefinite matrix)** Let \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\, which is symmetric. For any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (x_1, x_2)\\:
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{B} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= x_1^2 + x_1 x_2 + x_2 x_1 + x_2^2 && \text{(multiply out the quadratic form)} \\ &= (x_1 + x_2)^2 && \text{(complete the square)} \\ &\ge 0 && \text{(a square is non-negative)} \end{aligned} \\
>
> So \\\mathbf{B}\\ is positive semidefinite.

> **NOTE:**
>
> **Theorem 17 (Entries and symmetry of a Gram matrix)** Let \\\mathbf{A}\\ be an \\m \times n\\ matrix with columns \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_n\\, and let \\\mathbf{G} = {\mathbf{A}}^{\top} \mathbf{A}\\ ([Definition 6 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-gram-matrix)).
>
> 1.  Entry \\(i, j)\\ of \\\mathbf{G}\\ is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_j\\.
> 2.  \\\mathbf{G}\\ is symmetric ([Definition 3](#def-symmetric-matrix)).
> 3.  \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathopen{}\left\lVert\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 \ge 0\\ for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^n\\, so \\\mathbf{G}\\ is positive semidefinite ([Definition 21](#def-positive-semidefinite)).

> **NOTE:**
>
> *Proof*. **Entries.** Row \\i\\ of \\{\mathbf{A}}^{\top}\\ is \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i}^{\top}\\, so entry \\(i, j)\\ of \\{\mathbf{A}}^{\top} \mathbf{A}\\ is the dot product of that row with column \\j\\ of \\\mathbf{A}\\, namely \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_j = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_j\\.
>
> **Symmetry.** The dot product is commutative, so
>
> \\ \begin{aligned} g\_{ij} &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_j \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i \\ &= g\_{ji}. \end{aligned} \\
>
> **Positive semidefiniteness.** For any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\,
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\\{\mathbf{A}}^{\top}\\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(substitute } \mathbf{G} \text{)} \\ &= {(\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})}^{\top}\\(\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{)} \\ &= \mathopen{}\left\lVert\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 && \text{(}\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{, squared)} \\ &\ge 0. && \text{(a squared norm is nonnegative)} \end{aligned} \\

> **NOTE:**
>
> **Example 32 (Checking the properties on a small Gram matrix)** For \\\mathbf{A}\\ in [Example 8 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-gram-matrix), \\\mathbf{G} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\. It is symmetric: \\g\_{12} = g\_{21} = 1\\. Take \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, -1)\\. Then
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= \begin{bmatrix} 1 & -1 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix} && \text{(} \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, -1) \text{)} \\ &= 2, && \text{(multiply and add)} \end{aligned} \\
>
> and \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 0, -1)\\ has \\\mathopen{}\left\lVert\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 = 1 + 0 + 1 = 2\\, as the theorem says. The converse (every positive semidefinite matrix is a Gram matrix) is [this theorem](linear-algebra-diagonalization.llms.md#thm-pd-gram).

> **NOTE:**
>
> **Definition 22 (Positive definite matrix)** A \\p \times p\\ matrix \\\mathbf{A}\\ is **positive definite** [\[12\]](#ref-wikipedia_definite_matrix) if it satisfies both conditions:
>
> - \\\mathbf{A}\\ is symmetric ([Definition 3](#def-symmetric-matrix)).
> - Every quadratic form ([Definition 11](#def-quadratic-form)) in \\\mathbf{A}\\ at a nonzero vector is positive: \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \> 0\\ for every vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ of length \\p\\.

> **NOTE:**
>
> **Example 33 (Positive definite, semidefinite, and neither)**  
>
> - The identity matrix \\\mathbf{I}\_p\\ ([Definition 12 in Matrices](linear-algebra-matrices.llms.md#def-identity-matrix)) is positive definite: \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{I}\_p \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \sum\_{i=1}^px_i^2\\, which is positive unless every \\x_i\\ is \\0\\.
>
> - \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ from [Example 31](#exm-positive-semidefinite) is positive semidefinite but not positive definite: at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, -1) \neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\,
>
>   \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{B} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= (1 - 1)^2 \\ &= 0. \end{aligned} \\
>
> - \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\ is symmetric but not positive semidefinite: at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, -1)\\,
>
>   \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{D} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= 1 - 2 - 2 + 1 \\ &= -2 \\ &\< 0. \end{aligned} \\

> **NOTE:**
>
> *Remark 19* (Why the definition requires symmetry). A positive definite matrix is positive semidefinite ([Definition 21](#def-positive-semidefinite)): \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \> 0\\ for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, and \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}}^{\top}\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}= 0\\. For example, \\\mathbf{I}\_p\\ in [Example 33](#exm-positive-definite) is both.
>
> Some sources drop the symmetry condition from both definitions. These notes keep it, because without it a matrix can pass the quadratic-form condition and still have no real eigenvalues ([Definition 16](#def-eigenvalue)). For example, \\\mathbf{C} = \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}\\ is not symmetric, and for any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (x_1, x_2)\\:
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{C} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= x_1 (x_1 + x_2) + x_2 (-x_1 + x_2) && \text{(multiply out the quadratic form)} \\ &= x_1^2 + x_1 x_2 - x_2 x_1 + x_2^2 && \text{(distribute)} \\ &= x_1^2 + x_2^2 && \text{(the middle terms cancel)} \end{aligned} \\
>
> which is positive for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\. But suppose \\\mathbf{C}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = \lambda\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ for a real number \\\lambda\\. Matching entries gives \\v_1 + v_2 = \lambda v_1\\ and \\-v_1 + v_2 = \lambda v_2\\, so \\v_2 = (\lambda- 1)\\ v_1\\ and \\-v_1 = (\lambda- 1)\\ v_2\\. Substituting the first into the second gives \\-v_1 = (\lambda- 1)^2 v_1\\, so \\\mathopen{}\left(1 + (\lambda- 1)^2\right)\mathclose{} v_1 = 0\\. Since \\1 + (\lambda- 1)^2 \> 0\\, \\v_1 = 0\\, and then
>
> \\ \begin{aligned} v_2 &= (\lambda- 1)\\ v_1 \\ &= 0. \end{aligned} \\
>
> So no real \\\lambda\\ has an eigenvector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.

See also [\[12\]](#ref-wikipedia_definite_matrix).

> **NOTE:**
>
> **Theorem 18 (Definiteness and eigenvalues)** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric matrix with real entries, with eigendecomposition \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([Definition 18](#def-eigendecomposition)) and eigenvalues \\\lambda_1, \ldots, \lambda_p\\ on the diagonal of \\\mathbf{\Lambda}\\. Then:
>
> - \\\mathbf{A}\\ is positive semidefinite ([Definition 21](#def-positive-semidefinite)) if and only if every \\\lambda_i \ge 0\\.
> - \\\mathbf{A}\\ is positive definite ([Definition 22](#def-positive-definite)) if and only if every \\\lambda_i \> 0\\.

> **NOTE:**
>
> *Proof*. For any vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ of length \\p\\, let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = {\mathbf{Q}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\. Then:
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(substitute the eigendecomposition)} \\ &= {\mathopen{}\left({\mathbf{Q}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right)\mathclose{}}^{\top}\mathbf{\Lambda}\mathopen{}\left({\mathbf{Q}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right)\mathclose{} && \text{(transpose of a product)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\top}\mathbf{\Lambda}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(definition of } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \text{)} \\ &= \sum\_{i=1}^p\lambda_i y_i^2 && \text{(} \mathbf{\Lambda} \text{ is diagonal)} \end{aligned} \\
>
> The second step is [Theorem 17 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product). Also, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\: \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\ for an orthogonal matrix ([Definition 10](#def-orthogonal-matrix)), so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathbf{Q}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\.
>
> *If every \\\lambda_i \ge 0\\*, then every term \\\lambda_i y_i^2 \ge 0\\, so \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \ge 0\\. *If every \\\lambda_i \> 0\\* and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, then some \\y_i \neq 0\\, so at least one term is positive and the rest are non-negative, and \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \> 0\\.
>
> *Conversely*, take \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i\\, column \\i\\ of \\\mathbf{Q}\\, which is not \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ because it has norm 1. Then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = {\mathbf{Q}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i\\ is column \\i\\ of \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\, so \\y_i = 1\\ and every other entry of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is \\0\\, and the display gives \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i}^{\top}\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i = \lambda_i\\. So if \\\mathbf{A}\\ is positive semidefinite, \\\lambda_i \ge 0\\, and if \\\mathbf{A}\\ is positive definite, \\\lambda_i \> 0\\.

> **NOTE:**
>
> **Example 34 (Reading definiteness off the eigenvalues)**  
>
> - \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ has eigenvalues \\3\\ and \\1\\ ([Example 25](#exm-eigenvalue)), both positive, so it is positive definite.
> - \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ has eigenvalues \\2\\, for the eigenvector \\(1, 1)\\, and \\0\\, for the eigenvector \\(1, -1)\\, so it is positive semidefinite but not positive definite, as [Example 33](#exm-positive-definite) found directly.

> **NOTE:**
>
> **Definition 23 (Condition number of a positive definite matrix)** Let \\\mathbf{S}\\ be a \\p \times p\\ [positive definite matrix](#def-positive-definite) with [eigenvalues](#def-eigenvalue) \\\lambda\_{\min} \le \cdots \le \lambda\_{\max}\\, all positive by [definiteness and eigenvalues](#thm-definite-eigenvalues). The **condition number** of \\\mathbf{S}\\ is
>
> \\ \kappa(\mathbf{S}) \stackrel{\text{def}}{=}\frac{\lambda\_{\max}}{\lambda\_{\min}}. \\
>
> The condition number is at least \\1\\, that is, \\\kappa(\mathbf{S}) \ge 1\\, because \\\lambda\_{\max} \ge \lambda\_{\min} \> 0\\, and \\\kappa(\mathbf{S}) = 1\\ exactly when all eigenvalues coincide.

> **NOTE:**
>
> **Example 35 (A condition number of 3)** \\\mathbf{S} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ has [eigenvalues](#def-eigenvalue) \\3\\ and \\1\\ ([eigenvalue example](#exm-eigenvalue)), so \\\kappa(\mathbf{S}) = 3 / 1 = 3\\. The [identity matrix](linear-algebra-matrices.llms.md#def-identity-matrix) \\\mathbf{I}\_2\\ has eigenvalues \\1\\ and \\1\\, so \\\kappa(\mathbf{I}\_2) = 1\\.

> **NOTE:**
>
> **Definition 24 (Condition number of a matrix)** The **condition number** of an \\n \times p\\ [matrix](linear-algebra-matrices.llms.md#def-matrix) \\\mathbf{A}\\ is the [ratio](algebra-sums.llms.md#def-ratio) of its largest to its smallest [singular value](#def-singular-values), counting all \\\min(n, p)\\ [singular values](#def-singular-values) of \\\mathbf{A}\\, zeros included ([Remark 17](#rem-svd-zero-singular-values)) [\[13\]](#ref-wikipedia_condition_number):
>
> \\ \kappa(\mathbf{A}) \stackrel{\text{def}}{=}\frac{\sigma\_{\max}}{\sigma\_{\min}} = \frac{\sigma_1}{\sigma\_{\min(n,p)}}. \\
>
> This generalizes [Definition 23](#def-condition-number), which covers [positive definite matrices](linear-algebra-special-matrices.llms.md#def-positive-definite). For a nonzero matrix, \\\kappa(\mathbf{A}) \ge 1\\. When the columns of a tall matrix \\\mathbf{A}\\ (\\n \ge p\\) are [linearly dependent](linear-algebra-subspaces.llms.md#def-linearly-independent), its smallest singular value is \\0\\, and \\\kappa(\mathbf{A}) = \infty\\.

> **NOTE:**
>
> **Example 36 (The condition number of a matrix with nearly parallel columns)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & 1.01 \end{bmatrix}\\. Its columns, \\(1, 1)\\ and \\(1, 1.01)\\, are nearly parallel. We find its [singular values](#def-singular-values) and their [ratio](algebra-sums.llms.md#def-ratio), then repeat after multiplying every entry by \\1000\\:
>
> ## R
>
> ``` downlit
> entries_mcn <- c(1, 1, 1, 1.01)
> a_mcn <- matrix(entries_mcn, nrow = 2)
> svd_mcn <- svd(a_mcn)
> sv_mcn <- svd_mcn$d
> a_mcn_scaled <- 1000 * a_mcn
> svd_mcn_scaled <- svd(a_mcn_scaled)
> sv_mcn_scaled <- svd_mcn_scaled$d
> sv_mcn
> #> [1] 2.0050125 0.0049875
> sv_mcn[1] / sv_mcn[2]
> #> [1] 402.0075
> sv_mcn_scaled[1] / sv_mcn_scaled[2]
> #> [1] 402.0075
> ```
>
> ## Python
>
> ``` python
> import numpy as np
>
> a_mcn = np.array([[1.0, 1.0], [1.0, 1.01]])
> sv_mcn = np.linalg.svd(a_mcn, compute_uv=False)
> sv_mcn_scaled = np.linalg.svd(1000 * a_mcn, compute_uv=False)
> print(sv_mcn)
> #> [2.0050125 0.0049875]
> print(sv_mcn[0] / sv_mcn[1])
> #> 402.0075124842948
> print(sv_mcn_scaled[0] / sv_mcn_scaled[1])
> #> 402.00751248429236
> ```
>
> The [singular values](#def-singular-values) are 2.005 and 0.005, so \\\kappa(\mathbf{A}) =\\ 402. Multiplying every entry by \\1000\\ multiplies both singular values by \\1000\\, so the [condition number](#def-matrix-condition-number) is still 402.

> **NOTE:**
>
> *Remark 20* (Other condition numbers). Other [norms](linear-algebra-inner-products.llms.md#def-norm) give other [condition numbers](#def-matrix-condition-number). This definition uses the 2-norm, which is the one built from the [singular values](#def-singular-values). For a [positive definite matrix](linear-algebra-special-matrices.llms.md#def-positive-definite), the singular values are the [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue), and this definition agrees with the [ratio](algebra-sums.llms.md#def-ratio) of its largest to its smallest [eigenvalue](linear-algebra-special-matrices.llms.md#def-eigenvalue) in [Definition 23](#def-condition-number).

> **NOTE:**
>
> **Theorem 19 (Forming \\{\mathbf{A}}^{\top}\mathbf{A}\\ squares the condition number)** Let \\\mathbf{A}\\ be a nonzero \\n \times p\\ [matrix](linear-algebra-matrices.llms.md#def-matrix) with \\n \ge p\\. Then
>
> \\ \kappa({\mathbf{A}}^{\top}\mathbf{A}) = \kappa(\mathbf{A})^2. \\

> **NOTE:**
>
> *Proof*. By [Theorem 16](#thm-svd-evd), the [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) of the [symmetric matrix](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) \\{\mathbf{A}}^{\top}\mathbf{A}\\ are \\\sigma_1^2 \ge \cdots \ge \sigma_p^2\\, where \\\sigma_1 \ge \cdots \ge \sigma_p\\ are the [singular values](#def-singular-values) of \\\mathbf{A}\\, with zeros counted ([Remark 17](#rem-svd-zero-singular-values)). These eigenvalues are non-negative, so for the symmetric matrix \\{\mathbf{A}}^{\top}\mathbf{A}\\ they are also its singular values. Therefore
>
> \\ \kappa({\mathbf{A}}^{\top}\mathbf{A}) = \frac{\sigma_1^2}{\sigma_p^2} = \mathopen{}\left(\frac{\sigma_1}{\sigma_p}\right)\mathclose{}^2 = \kappa(\mathbf{A})^2. \\
>
> If \\\sigma_p = 0\\, both sides are \\\infty\\.

> **NOTE:**
>
> **Example 37 (Squaring the condition number)** For the [matrix](linear-algebra-matrices.llms.md#def-matrix) \\\mathbf{A}\\ from [Example 36](#exm-matrix-condition-number), compare \\\kappa(\mathbf{A})\\ with \\\kappa({\mathbf{A}}^{\top}\mathbf{A})\\:
>
> ## R
>
> ``` downlit
> # Uses a_mcn and sv_mcn from the earlier example
> gram_cng <- crossprod(a_mcn)
> kappa_a_cng <- sv_mcn[1] / sv_mcn[2]
> svd_gram_cng <- svd(gram_cng)
> sv_gram_cng <- svd_gram_cng$d
> sv_gram_cng[1] / sv_gram_cng[2]
> #> [1] 161610
> kappa_a_cng^2
> #> [1] 161610
> ```
>
> ## Python
>
> ``` python
> # Uses a_mcn and sv_mcn from the earlier example
> gram_cng = a_mcn.T @ a_mcn
> kappa_a_cng = sv_mcn[0] / sv_mcn[1]
> sv_gram_cng = np.linalg.svd(gram_cng, compute_uv=False)
> print(sv_gram_cng[0] / sv_gram_cng[1])
> #> 161610.0400912735
> print(kappa_a_cng ** 2)
> #> 161610.04009381044
> ```
>
> The [condition number](#def-matrix-condition-number) of \\{\mathbf{A}}^{\top}\mathbf{A}\\ is 161610, and \\\kappa(\mathbf{A})^2 =\\ 161610, as [Theorem 19](#thm-condition-number-gram) says.

> **NOTE:**
>
> **Definition 25 (Ill-conditioned matrix)** A [matrix](linear-algebra-matrices.llms.md#def-matrix) \\\mathbf{A}\\ is **ill-conditioned** when its [condition number](#def-matrix-condition-number) is so large that small relative changes in its entries, such as those from rounding, can change the solution of a [linear system](linear-algebra-matrices.llms.md#def-linear-system) by a much larger relative amount. The relative change in the solution can be up to \\\kappa(\mathbf{A})\\ times the relative change in the entries. A solution computed with \\\kappa(\mathbf{A}) \approx 10^k\\ therefore loses about \\k\\ of the digits that the floating-point arithmetic carries [\[14\]](#ref-trefethen1997numerical), Lecture 12.
>
> There is no sharp threshold: how large is too large depends on how many accurate digits the answer needs.

> **NOTE:**
>
> **Definition 26 (Well-conditioned matrix)** A [matrix](linear-algebra-matrices.llms.md#def-matrix) \\\mathbf{A}\\ is **well-conditioned** when its [condition number](#def-matrix-condition-number) is close to \\1\\, so it is not [ill-conditioned](#def-ill-conditioned).

> **NOTE:**
>
> **Example 38 (A small change in the right-hand side moves the solution a long way)** Let \\\mathbf{A}\\ be the [matrix](linear-algebra-matrices.llms.md#def-matrix) from [Example 36](#exm-matrix-condition-number), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (2, 2.01)\\. The system \\\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ has solution \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 1)\\. Change the second entry of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ from \\2.01\\ to \\2.011\\, and solve again:
>
> ## R
>
> ``` downlit
> # Uses a_mcn and sv_mcn from the previous example
> b_ic <- c(2, 2.01)
> b_new_ic <- c(2, 2.011)
> x_ic <- solve(a_mcn, b_ic)
> x_new_ic <- solve(a_mcn, b_new_ic)
> x_ic
> #> [1] 1 1
> x_new_ic
> #> [1] 0.9 1.1
>
> # Relative changes, measured with the Euclidean length
> db_ic <- (b_new_ic - b_ic)^2 |> sum() |> sqrt()
> nb_ic <- b_ic^2 |> sum() |> sqrt()
> dx_ic <- (x_new_ic - x_ic)^2 |> sum() |> sqrt()
> nx_ic <- x_ic^2 |> sum() |> sqrt()
> rel_b_ic <- db_ic / nb_ic
> rel_x_ic <- dx_ic / nx_ic
> c(rel_b_ic, rel_x_ic, rel_x_ic / rel_b_ic)
> #> [1] 3.526706e-04 1.000000e-01 2.835507e+02
> ```
>
> ## Python
>
> ``` python
> # Uses a_mcn and sv_mcn from the previous example
> b_ic = np.array([2.0, 2.01])
> b_new_ic = np.array([2.0, 2.011])
> x_ic = np.linalg.solve(a_mcn, b_ic)
> x_new_ic = np.linalg.solve(a_mcn, b_new_ic)
> print(x_ic)
> #> [1. 1.]
> print(x_new_ic)
> #> [0.9 1.1]
>
> # Relative changes, measured with the Euclidean length
> rel_b_ic = np.linalg.norm(b_new_ic - b_ic) / np.linalg.norm(b_ic)
> rel_x_ic = np.linalg.norm(x_new_ic - x_ic) / np.linalg.norm(x_ic)
> print(rel_b_ic, rel_x_ic, rel_x_ic / rel_b_ic)
> #> 0.0003526706147110207 0.1000000000000334 283.55070093371313
> ```
>
> The right-hand side changes by a relative amount of 0.00035, and the solution changes by a relative amount of 0.100, about 284 times as much. That amplification is what [Definition 25](#def-ill-conditioned) describes, and it cannot exceed \\\kappa(\mathbf{A}) =\\ 402.0.

> **NOTE:**
>
> **Theorem 20 (A positive definite matrix has a positive definite inverse)** Let \\\mathbf{A}\\ be a \\p \times p\\ positive definite matrix ([Definition 22](#def-positive-definite)) with real entries, with eigendecomposition \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([Definition 18](#def-eigendecomposition)) and eigenvalues \\\lambda_1, \ldots, \lambda_p\\. Then \\\mathbf{A}\\ is invertible ([Definition 6](#def-invertible-matrix)),
>
> \\ \mathbf{A}^{-1} = \mathbf{Q}\\\mathbf{\Lambda}^{-1}\\{\mathbf{Q}}^{\top}, \qquad \mathbf{\Lambda}^{-1} = \begin{bmatrix} 1/\lambda_1 & \cdots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \cdots & 1/\lambda_p \end{bmatrix}, \\
>
> and \\\mathbf{A}^{-1}\\ is positive definite.

> **NOTE:**
>
> *Proof*. By [Theorem 18](#thm-definite-eigenvalues), every \\\lambda_i \> 0\\, so \\\mathbf{\Lambda}^{-1}\\ is well defined, and multiplying the two diagonal matrices entry by entry gives
>
> \\ \begin{aligned} \mathbf{\Lambda}\mathbf{\Lambda}^{-1} &= \mathbf{\Lambda}^{-1}\mathbf{\Lambda} \\ &= \mathbf{I}\_p. \end{aligned} \\
>
> Write \\\mathbf{B} = \mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top}\\. Then:
>
> \\ \begin{aligned} \mathbf{A}\mathbf{B} &= \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} && \text{(substitute)} \\ &= \mathbf{Q}\mathbf{\Lambda}\mathbf{I}\_p\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} && \text{(} {\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p \text{)} \\ &= \mathbf{Q}\mathbf{\Lambda}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} && \text{(identity matrix)} \\ &= \mathbf{Q}{\mathbf{Q}}^{\top} && \text{(} \mathbf{\Lambda}\mathbf{\Lambda}^{-1} = \mathbf{I}\_p \text{)} \\ &= \mathbf{I}\_p && \text{(} \mathbf{Q} \text{ is orthogonal)} \end{aligned} \\
>
> The same steps, with \\\mathbf{\Lambda}^{-1}\\ and \\\mathbf{\Lambda}\\ swapped, give \\\mathbf{B}\mathbf{A} = \mathbf{I}\_p\\, so \\\mathbf{B} = \mathbf{A}^{-1}\\ ([Definition 5](#def-matrix-inverse)). The steps with \\\mathbf{Q}\\ use [Definition 10](#def-orthogonal-matrix), whose remark records that \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\ too, and the identity step uses [Theorem 8 in Matrices](linear-algebra-matrices.llms.md#thm-identity).
>
> \\\mathbf{A}^{-1}\\ is symmetric by [Corollary 1](#cor-inverse-symmetric). For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = {\mathbf{Q}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, which is not \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ because \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathbf{Q}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\. As in the proof of [Theorem 18](#thm-definite-eigenvalues):
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\mathbf{A}^{-1}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\top}\mathbf{\Lambda}^{-1}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(substitute } \mathbf{A}^{-1} = \mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} \text{)} \\ &= \sum\_{i=1}^p\frac{y_i^2}{\lambda_i} && \text{(} \mathbf{\Lambda}^{-1} \text{ is diagonal)} \\ &\> 0 && \text{(each } \lambda_i \> 0 \text{, and some } y_i \neq 0 \text{)} \end{aligned} \\
>
> So \\\mathbf{A}^{-1}\\ is positive definite.

> **NOTE:**
>
> **Example 39 (Inverting a positive definite matrix)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, [Example 28](#exm-spectral) gives \\\mathbf{Q} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}\\ and eigenvalues \\3\\ and \\1\\, so:
>
> \\ \begin{aligned} \mathbf{A}^{-1} &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 1/3 & 0 \\ 0 & 1 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(substitute; } \mathbf{Q} \text{ is symmetric)} \\ &= \frac{1}{2} \begin{bmatrix} 1/3 & 1 \\ 1/3 & -1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(multiply the first two matrices)} \\ &= \frac{1}{2} \begin{bmatrix} 4/3 & -2/3 \\ -2/3 & 4/3 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{3} \begin{bmatrix} 2 & -1 \\ -1 & 2 \end{bmatrix} && \text{(simplify)} \end{aligned} \\
>
> Multiplying out,
>
> \\ \begin{aligned} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \cdot\frac{1}{3}\begin{bmatrix} 2 & -1 \\ -1 & 2 \end{bmatrix} &= \frac{1}{3}\begin{bmatrix} 3 & 0 \\ 0 & 3 \end{bmatrix} \\ &= \mathbf{I}\_2. \end{aligned} \\

> **NOTE:**
>
> **Definition 27 (Paraboloid)** A **paraboloid** [\[15\]](#ref-wikipedia_paraboloid) in \\\mathbb{R}^{p+1}\\ is the graph \\{\mathopen{}\left\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})) \mid \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\right\\\mathclose{}}\\ of a function
>
> \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + c, \\
>
> where \\\mathbf{S}\\ is a nonzero symmetric \\p \times p\\ matrix ([Definition 3](#def-symmetric-matrix)), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^p\\, and \\c \in \mathbb{R}\\. The first term is a quadratic form ([Definition 11](#def-quadratic-form)).

> **NOTE:**
>
> **Definition 28 (Elliptic paraboloid)** The paraboloid of [Definition 27](#def-paraboloid) is **elliptic** if \\\mathbf{S}\\ is positive definite ([Definition 22](#def-positive-definite)); it is then a bowl that opens upward.

> **NOTE:**
>
> **Example 40 (A bowl with its lowest point at the origin)** Take \\p = 2\\, \\\mathbf{S} = \mathbf{I}\_2\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\ and \\c = 0\\. Then \\\mathbf{S}\\ is positive definite ([Example 33](#exm-positive-definite)), so the graph of
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{I}\_2 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \\ &= x_1^2 + x_2^2 \end{aligned} \\
>
> is an elliptic paraboloid. At \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = 0\\; at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 1)\\, \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = 2\\; and \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \> 0\\ at every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, so the origin is the only lowest point of the bowl. [Figure 1](#fig-paraboloid) shows the surface.
>
> > **NOTE:**
> >
> > Show code
> >
> > ``` downlit
> > axis_values <- seq(-2, 2, length.out = 41)
> > height <- outer(axis_values, axis_values, function(x1, x2) x1^2 + x2^2)
> >
> > plotly::plot_ly(x = ~axis_values, y = ~axis_values, z = ~t(height)) |>
> >   plotly::add_surface(showscale = FALSE) |>
> >   plotly::layout(scene = list(
> >     xaxis = list(title = "First coordinate, x1"),
> >     yaxis = list(title = "Second coordinate, x2"),
> >     zaxis = list(title = "Height, f(x)")
> >   ))
> > ```
> >
> > Figure 1: The surface \\z = x_1^2 + x_2^2\\ over \\\[-2, 2\]^2\\: a bowl that opens upward, with its lowest point above the origin. Horizontal slices of the bowl are circles around the origin.

> **NOTE:**
>
> **Definition 29 (Matrix-induced inner product (\\\mathbf{A}\\-inner product))** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric positive definite matrix ([Definition 22](#def-positive-definite)) (\\\mathbf{A} = {\mathbf{A}}^{\top}\\ and \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \> 0\\ for all nonzero \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\). The **matrix-induced inner product** (or **\\\mathbf{A}\\-inner product**) on \\\mathbb{R}^p\\ is defined for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\ by
>
> \\ {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\_{\mathbf{A}} \stackrel{\text{def}}{=}{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}. \\

> **NOTE:**
>
> **Example 41 (A matrix-induced inner product calculation)** Consider the symmetric matrix
>
> \\ \mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}. \\
>
> For any nonzero vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (x_1, x_2) \in \mathbb{R}^2\\:
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= 2 x_1^2 + 2 x_1 x_2 + 2 x_2^2 && \text{(expand the quadratic form)} \\ &= (x_1 + x_2)^2 + x_1^2 + x_2^2 && \text{(complete the square)} \end{aligned} \\
>
> which is strictly positive because \\x_1^2 + x_2^2 \> 0\\ when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\. Thus \\\mathbf{A}\\ is positive definite ([Definition 22](#def-positive-definite)).
>
> For vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 2)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (3, -1)\\, their inner product induced by \\\mathbf{A}\\ is:
>
> \\ \begin{aligned} {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\_{\mathbf{A}} &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\_{\mathbf{A}} \text{)} \\ &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 3 \\ -1 \end{bmatrix} && \text{(substitute vectors and matrix)} \\ &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 2 \cdot 3 + 1 \cdot(-1) \\ 1 \cdot 3 + 2 \cdot(-1) \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~13 in Matrices}}\text{)} \\ &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 5 \\ 1 \end{bmatrix} && \text{(multiply and add)} \\ &= 1 \cdot 5 + 2 \cdot 1 && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~13 in Matrices}}\text{)} \\ &= 7. && \text{(multiply and add)} \end{aligned} \\
>
> In contrast, the standard dot product yields:
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} &= 1 \cdot 3 + 2 \cdot(-1) \\ &= 1. \end{aligned} \\
>
> The off-diagonal entries
>
> \\ \begin{aligned} A\_{12} &= A\_{21} \\ &= 1 \end{aligned} \\
>
> couple the coordinate directions, altering lengths and angles from their Euclidean values. When \\\mathbf{A} = \mathbf{I}\_p\\, the matrix-induced inner product recovers the standard dot product \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\_{\mathbf{I}\_p} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\.

> **NOTE:**
>
> **Theorem 21 (Properties of the matrix-induced inner product)** For every \\p \times p\\ symmetric positive definite matrix \\\mathbf{A}\\, the function \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\_{\mathbf{A}} = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ satisfies the four inner product axioms ([Definition 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#def-inner-product)): positivity, definiteness, linearity in the first slot, and symmetry. Thus \\(\mathbb{R}^p, {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\_{\mathbf{A}})\\ is an inner product space ([Definition 2 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#def-inner-product-space)).
>
> Taking \\\mathbf{A} = \mathbf{I}\_p\\ recovers the standard dot product ([Example 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#exm-dot-product-inner-product)), while taking \\\mathbf{A} = \operatorname{diag}(c_1, \ldots, c_p)\\ recovers the weighted inner product ([Example 3 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#exm-weighted-inner-product)).
>
> Conversely, every inner product on \\\mathbb{R}^p\\ has this form for a unique symmetric positive definite matrix \\\mathbf{A}\\, whose \\(i, j)\\ entry is \\A\_{ij} = {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\right\rangle\mathclose{}}\\, where \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_p\\ are the standard basis vectors ([Definition 18 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)).

> **NOTE:**
>
> *Proof*.
>
> - **positivity**: \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}\_{\mathbf{A}} = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \ge 0\\ for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\, because \\\mathbf{A}\\ is positive definite ([Definition 22](#def-positive-definite));
> - **definiteness**: \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}\_{\mathbf{A}} = 0\\ if and only if \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\, by definition of a positive definite matrix ([Definition 22](#def-positive-definite));
> - **linearity in the first slot**: for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} \in \mathbb{R}^p\\ and real numbers \\a, b\\, \\ \begin{aligned} {\mathopen{}\left\langle a\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ b\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\right\rangle\mathclose{}}\_{\mathbf{A}} &= {(a\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ b\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})}^{\top}\\\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\_{\mathbf{A}} \text{)} \\ &= (a\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} + b\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\top})\\\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-sum}{\text{Theorem~16 in Matrices}}\text{, }\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{, }\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \\ &= a\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + b\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\top}\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-distrib}{\text{Theorem~6 in Matrices}}\text{)} \\ &= a\\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\right\rangle\mathclose{}}\_{\mathbf{A}} + b\\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\right\rangle\mathclose{}}\_{\mathbf{A}} && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\_{\mathbf{A}} \text{)} \end{aligned} \\
> - **symmetry**: because \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\top}\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is a \\1 \times 1\\ scalar and \\\mathbf{A}\\ is symmetric (\\{\mathbf{A}}^{\top} = \mathbf{A}\\), \\ \begin{aligned} {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}\_{\mathbf{A}} &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\top}\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\_{\mathbf{A}} \text{)} \\ &= {\mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\top}\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right)\mathclose{}}^{\top} && \text{(a scalar equals its transpose)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}{\mathbf{A}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{, twice)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\mathbf{A}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(\$\mathbf{A}\$ is symmetric)} \\ &= {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\_{\mathbf{A}} && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\_{\mathbf{A}} \text{)} \end{aligned} \\
>
> For the converse, let \\{\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\\ be any inner product on \\\mathbb{R}^p\\. Any vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\ can be written in the standard basis as \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \sum\_{i=1}^px_i\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= \sum\_{j=1}^py_j\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\\ ([Definition 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-basis), [Definition 18 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)). By linearity in both slots ([Remark 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#rem-inner-product-other-sources)):
>
> \\ \begin{aligned} {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}} &= {\mathopen{}\left\langle \sum\_{i=1}^px_i\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i, \sum\_{j=1}^py_j\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\right\rangle\mathclose{}} && \text{(expand in the standard basis)} \\ &= \sum\_{i=1}^p\sum\_{j=1}^px_i y_j\\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\right\rangle\mathclose{}} && \text{(linearity in both slots)} \\ &= \sum\_{i=1}^px_i \sum\_{j=1}^pA\_{ij} y_j && \text{(define } A\_{ij} \stackrel{\text{def}}{=}{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\right\rangle\mathclose{}} \text{)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}. && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~13 in Matrices}}\text{)} \end{aligned} \\
>
> Symmetry of \\{\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\\ ensures
>
> \\ \begin{aligned} A\_{ji} &= {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i\right\rangle\mathclose{}} \\ &= {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\right\rangle\mathclose{}} \\ &= A\_{ij}, \end{aligned} \\
>
> so \\\mathbf{A}\\ is symmetric ([Definition 3](#def-symmetric-matrix)). For any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rangle\mathclose{}} \> 0\\ by positivity and definiteness of the inner product, so \\\mathbf{A}\\ is positive definite ([Definition 22](#def-positive-definite)).
>
> For uniqueness, if another matrix \\\mathbf{B}\\ satisfies \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}} = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top}\mathbf{B}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, evaluating at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\\ gives
>
> \\ \begin{aligned} B\_{ij} &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i}^{\top}\mathbf{B}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j \\ &= {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\right\rangle\mathclose{}} \\ &= A\_{ij}, \end{aligned} \\
>
> so \\\mathbf{B} = \mathbf{A}\\.

> **NOTE:**
>
> **Example 42 (Checking the inner product axioms, and recovering the matrix from the inner product)** Take \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ from [Example 41](#exm-matrix-induced-inner-product), the vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 2)\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (3, -1)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} = (0, 4)\\, and the numbers \\a = 2\\ and \\b = -3\\. The code computes both sides of each axiom in [Theorem 21](#thm-matrix-induced-inner-product), and then the numbers \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\right\rangle\mathclose{}}\_{\mathbf{A}}\\ for the standard basis vectors.
>
> ``` downlit
> A <- matrix(c(2, 1, 1, 2), nrow = 2)
> ip <- function(x, y) drop(t(x) %*% A %*% y)
>
> x <- c(1, 2)
> y <- c(3, -1)
> z <- c(0, 4)
> a <- 2
> b <- -3
>
> c(
>   positivity = ip(x, x),
>   symmetry_xy = ip(x, y),
>   symmetry_yx = ip(y, x),
>   linearity_left = ip(a * x + b * y, z),
>   linearity_right = a * ip(x, z) + b * ip(y, z)
> )
> #>      positivity     symmetry_xy     symmetry_yx  linearity_left linearity_right 
> #>              14               7               7              28              28
>
> e <- diag(2)
> recovered <- outer(1:2, 1:2, Vectorize(function(i, j) ip(e[, i], e[, j])))
> recovered
> #>      [,1] [,2]
> #> [1,]    2    1
> #> [2,]    1    2
> ```
>
> The inner product of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ with itself is 14, which is positive. The two orders give the same number, 7 and 7. Both sides of the linearity axiom equal 28. The matrix of numbers \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\right\rangle\mathclose{}}\_{\mathbf{A}}\\ is equal to \\\mathbf{A}\\, as the converse in [Theorem 21](#thm-matrix-induced-inner-product) says.

> **NOTE:**
>
> **Corollary 3 (A positive definite matrix is a transpose product)** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric positive definite matrix ([Definition 22](#def-positive-definite)). Then \\\mathbf{A} = {\mathbf{W}}^{\top}\mathbf{W}\\ for some invertible \\p \times p\\ matrix \\\mathbf{W}\\.

> **NOTE:**
>
> *Proof*. By the spectral theorem ([Theorem 13](#thm-spectral)), \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ with \\\mathbf{Q}\\ orthogonal and \\\mathbf{\Lambda}\\ diagonal with the eigenvalues \\\lambda_i\\ of \\\mathbf{A}\\ on its diagonal. These are positive ([Theorem 18](#thm-definite-eigenvalues)), so \\\mathbf{\Lambda}^{1/2}\\, the diagonal matrix with entries \\\sqrt{\lambda_i}\\, is defined. Take \\\mathbf{W} = \mathbf{\Lambda}^{1/2}{\mathbf{Q}}^{\top}\\. Since \\\mathbf{\Lambda}^{1/2}\\ is diagonal, \\{(\mathbf{\Lambda}^{1/2})}^{\top} = \mathbf{\Lambda}^{1/2}\\, and
>
> \\ \begin{aligned} {\mathbf{W}}^{\top}\mathbf{W} &= \mathbf{Q}\mathbf{\Lambda}^{1/2}\mathbf{\Lambda}^{1/2}{\mathbf{Q}}^{\top} \\ &= \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top} \\ &= \mathbf{A}. \end{aligned} \\
>
> \\\mathbf{W}\\ is invertible, because \\{\mathbf{Q}}^{\top}\\ has inverse \\\mathbf{Q}\\ and \\\mathbf{\Lambda}^{1/2}\\ is diagonal with positive entries, so it has the diagonal inverse with entries \\1/\sqrt{\lambda_i}\\, and a product of invertible matrices is invertible ([Theorem 1](#thm-inverse-product)).

> **NOTE:**
>
> **Theorem 22 (A matrix-induced inner product is a dot product of transformed vectors)** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric positive definite matrix, and let \\\mathbf{W}\\ be any \\p \times p\\ matrix with \\\mathbf{A} = {\mathbf{W}}^{\top}\mathbf{W}\\. Then for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\, the \\\mathbf{A}\\-inner product ([Definition 29](#def-matrix-induced-inner-product)) satisfies
>
> \\ {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\_{\mathbf{A}} = (\mathbf{W}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \cdot (\mathbf{W}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}). \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\_{\mathbf{A}} &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} {\mathbf{W}}^{\top}\mathbf{W} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ &= {(\mathbf{W}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})}^{\top} (\mathbf{W}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \\ &= (\mathbf{W}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \cdot (\mathbf{W}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}). \end{aligned} \\

> **NOTE:**
>
> *Remark 21* (Inner product spaces in machine learning). In machine learning and statistics, choosing or learning an inner product space tailors geometric notions of distance, angle, and projection to the structure of the data:
>
> 1.  **Mahalanobis metric and whitening**: Standard Euclidean distance treats all coordinate axes identically, ignoring feature correlations and variance differences. If data features have a symmetric positive definite covariance matrix \\\mathbf{\Sigma}\\ ([Definition 22](#def-positive-definite)), the precision matrix \\\mathbf{A} = \mathbf{\Sigma}^{-1}\\ ([Theorem 20](#thm-pd-inverse)) defines the Mahalanobis inner product \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\_{\mathbf{\Sigma}^{-1}} = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{\Sigma}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\. The induced distance \\d\_{\mathbf{\Sigma}^{-1}}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = \sqrt{{(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})}^{\top}\mathbf{\Sigma}^{-1}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})}\\ measures statistical distance normalized by variance along each principal direction. Factoring \\\mathbf{\Sigma}^{-1} = {\mathbf{W}}^{\top}\mathbf{W}\\ (via Cholesky or spectral decomposition, [Corollary 3](#cor-pd-transpose-product)), this inner product is the Euclidean dot product of the whitened vectors \\\mathbf{W}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathbf{W}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ ([Theorem 22](#thm-whitening-inner-product)).
>
> 2.  **The kernel trick and reproducing kernel Hilbert spaces (RKHS)**: Algorithms such as support vector machines (SVMs), kernel ridge regression, and Gaussian processes depend on training vectors solely through pairwise inner products \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_i, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_j\right\rangle\mathclose{}}\\. By mapping data into a higher- or infinite-dimensional inner product space via a feature map \\D: \mathbb{R}^p \to \mathcal{H}\\, the kernel trick replaces the computation of \\D(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_i)\\ with an evaluation of a positive definite kernel function: \\ k(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_i, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_j) \stackrel{\text{def}}{=}{\mathopen{}\left\langle D(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_i), D(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_j)\right\rangle\mathclose{}}\_{\mathcal{H}}. \\ Mercer’s theorem guarantees that every symmetric positive definite kernel function implicitly defines a valid inner product space \\\mathcal{H}\\ (a reproducing kernel Hilbert space) without requiring explicit coordinate representations.
>
> 3.  **Embeddings and cosine similarity**: In natural language processing and recommendation systems, data items are embedded as vectors in high-dimensional representations. The angle between embeddings captures semantic similarity through cosine similarity ([Definition 9 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#def-cosine-similarity-inner-product-space)): \\ \operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = \frac{{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}}{\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}}. \\ When embedding vectors are normalized to unit Euclidean norm (\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = 1\\ and \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} = 1\\), cosine similarity equals the inner product \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\\ ([Corollary 2 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#cor-cosine-similarity-unit-vectors)). Similarly, the self-attention mechanism in Transformers computes query-key alignment scores through scaled inner products \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{k}}\vphantom{k}} / \sqrt{d_k}\\.
>
> 4.  **Weighted and generalized least squares**: In linear regression \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\approx \mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}\\, when observation errors have unequal variances or known correlations with positive definite covariance matrix \\\mathbf{\Omega}\\, ordinary least squares is inefficient. Generalized least squares minimizes the residual norm in the inner product space induced by \\\mathbf{W} = \mathbf{\Omega}^{-1}\\: \\ \min\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{}\_{\mathbf{W}}^2 = \min\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}} {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}\right\rangle\mathclose{}}\_{\mathbf{W}}. \\

## 0.6 Determinants

> **NOTE:**
>
> **Definition 30 (Determinant)** The **determinant** [\[16\]](#ref-wikipedia_determinant) of a \\p \times p\\ matrix \\\mathbf{A}\\ with entries \\a\_{ij}\\, written \\\det(\mathbf{A})\\ or \\\mathopen{}\left\|\mathbf{A}\right\|\mathclose{}\\, is the number defined recursively in \\p\\:
>
> - For \\p = 1\\, \\\det(\mathbf{A}) = a\_{11}\\.
> - For \\p \ge 2\\, \\ \det(\mathbf{A}) = \sum\_{j=1}^p(-1)^{1+j}\\ a\_{1j} {\det\mathopen{}\left(\mathbf{A}\_{(1j)}\right)\mathclose{}}, \\ where \\\mathbf{A}\_{(1j)}\\ is the \\(p-1) \times (p-1)\\ matrix left after deleting row \\1\\ and column \\j\\ of \\\mathbf{A}\\.

> **NOTE:**
>
> **Example 43 (Determinant of a \\2 \times 2\\ matrix)** For \\\mathbf{A} = \begin{bmatrix} a & b \\ c & d \end{bmatrix}\\, deleting row 1 and column 1 leaves \\\begin{bmatrix} d \end{bmatrix}\\, and deleting row 1 and column 2 leaves \\\begin{bmatrix} c \end{bmatrix}\\. So:
>
> \\ \begin{aligned} \det(\mathbf{A}) &= (-1)^{1+1}\\ a {\det\mathopen{}\left(\begin{bmatrix} d \end{bmatrix}\right)\mathclose{}} + (-1)^{1+2}\\ b {\det\mathopen{}\left(\begin{bmatrix} c \end{bmatrix}\right)\mathclose{}} && \text{(definition, } p = 2 \text{)} \\ &= a d - b c && \text{(definition, } p = 1 \text{)} \end{aligned} \\
>
> For example,
>
> \\ \begin{aligned} {\det\mathopen{}\left(\begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\right)\mathclose{}} &= 2 \cdot 2 - 1 \cdot 1 \\ &= 3. \end{aligned} \\

> **NOTE:**
>
> *Remark 22* (Cofactor expansion). The recursive formula in [Definition 30](#def-determinant) is the *cofactor expansion* along the first row. Other sources define the determinant as a sum over all orderings of the columns and derive this expansion from it; the two definitions agree [\[6\]](#ref-banerjee2014linear).
>
> Each ordering picks one entry from each row, from the column that the ordering assigns to that row, and multiplies them. Its sign is \\+1\\ if the ordering takes an even number of swaps of two columns to reach from \\(1, 2, \ldots, p)\\, and \\-1\\ if it takes an odd number.
>
> For \\p = 2\\, the columns have two orderings. The ordering \\(1, 2)\\ keeps each column in place, picks the entries \\a\_{11}\\ and \\a\_{22}\\, and has sign \\+1\\. The ordering \\(2, 1)\\ swaps the two columns, picks the entries \\a\_{12}\\ and \\a\_{21}\\, and has sign \\-1\\. The sum \\a\_{11} a\_{22} - a\_{12} a\_{21}\\ is the value \\a d - b c\\ from [Example 43](#exm-determinant).

See also [\[16\]](#ref-wikipedia_determinant).

> **TIP:**
>
> Chapter 6 of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown shows the geometric meaning of the determinant:
>
> - [The determinant](https://www.youtube.com/watch?v=Ip3X9LOh2dk) shows how the determinant measures the factor by which a linear transformation scales areas and volumes, and why a zero determinant corresponds to compressing space into a lower dimension.

> **NOTE:**
>
> **Theorem 23 (Determinant of a diagonal matrix)** The determinant ([Definition 30](#def-determinant)) of a \\p \times p\\ diagonal matrix ([Definition 4](#def-diagonal-matrix)) is the product of its diagonal entries:
>
> \\ {\det\mathopen{}\left( \begin{bmatrix} d_1 & \cdots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \cdots & d_p \end{bmatrix} \right)\mathclose{}} = \prod\_{i=1}^p d_i \\

> **NOTE:**
>
> *Proof*. By [induction](proof-writing.llms.md#def-proof-by-induction) on \\p\\. For \\p = 1\\, the matrix is \\\begin{bmatrix} d_1 \end{bmatrix}\\, and its determinant is \\d_1\\ by definition.
>
> For \\p \ge 2\\, suppose the result holds for \\(p-1) \times (p-1)\\ diagonal matrices, and let \\\mathbf{D}\\ be \\p \times p\\ and diagonal. Row 1 of \\\mathbf{D}\\ is \\(d_1, 0, \ldots, 0)\\, so only the \\j = 1\\ term of the definition can be nonzero, and deleting row 1 and column 1 of \\\mathbf{D}\\ leaves the diagonal matrix with diagonal entries \\d_2, \ldots, d_p\\:
>
> \\ \begin{aligned} \det(\mathbf{D}) &= (-1)^{1+1}\\ d_1 {\det\mathopen{}\left(\mathbf{D}\_{(11)}\right)\mathclose{}} + \sum\_{j=2}^p (-1)^{1+j} \cdot 0 \cdot{\det\mathopen{}\left(\mathbf{D}\_{(1j)}\right)\mathclose{}} && \text{(definition)} \\ &= d_1 {\det\mathopen{}\left(\mathbf{D}\_{(11)}\right)\mathclose{}} && \text{(drop the zero terms)} \\ &= d_1 \prod\_{i=2}^p d_i && \text{(induction hypothesis)} \\ &= \prod\_{i=1}^p d_i && \text{(combine)} \end{aligned} \\

> **NOTE:**
>
> **Example 44 (Determinant of a scaled identity matrix)** For a number \\c\\, \\c\\\mathbf{I}\_p\\ is diagonal with every diagonal entry equal to \\c\\, so \\\det(c\\\mathbf{I}\_p) = c^p\\. In particular, \\\det(\mathbf{I}\_p) = 1\\.

> **NOTE:**
>
> **Theorem 24 (Determinant of a product)** For \\p \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\,
>
> \\ \det(\mathbf{A}\mathbf{B}) = \det(\mathbf{A}) \det(\mathbf{B}). \\

> **NOTE:**
>
> **Example 45 (Checking the product rule)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ and \\\mathbf{B} = \begin{bmatrix} 1 & 0 \\ 3 & 1 \end{bmatrix}\\, [Example 43](#exm-determinant) gives
>
> \\ \begin{aligned} \det(\mathbf{A}) &= 2 \cdot 1 - 1 \cdot 0 \\ &= 2 \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \det(\mathbf{B}) &= 1 \cdot 1 - 0 \cdot 3 \\ &= 1. \end{aligned} \\
>
> The product is
>
> \\ \begin{aligned} \mathbf{A}\mathbf{B} &= \begin{bmatrix} 2 \cdot 1 + 1 \cdot 3 & 2 \cdot 0 + 1 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 3 & 0 \cdot 0 + 1 \cdot 1 \end{bmatrix} \\ &= \begin{bmatrix} 5 & 1 \\ 3 & 1 \end{bmatrix}, \end{aligned} \\
>
> with
>
> \\ \begin{aligned} \det(\mathbf{A}\mathbf{B}) &= 5 \cdot 1 - 1 \cdot 3 \\ &= 2 \\ &= \det(\mathbf{A})\det(\mathbf{B}). \end{aligned} \\

> **NOTE:**
>
> *Remark 23* (An example is not a proof). [Example 45](#exm-det-product) checks [Theorem 24](#thm-det-product) for one pair of \\2 \times 2\\ matrices, which shows the theorem holds there but does not prove it for every pair. The proof needs properties of the determinant that these notes don’t develop; see Banerjee and Roy [\[6\]](#ref-banerjee2014linear).

See also [\[16\]](#ref-wikipedia_determinant).

> **NOTE:**
>
> **Theorem 25 (The determinant of a symmetric matrix is the product of its eigenvalues)** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric matrix with real entries, with eigendecomposition \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([Definition 18](#def-eigendecomposition)) and eigenvalues \\\lambda_1, \ldots, \lambda_p\\ on the diagonal of \\\mathbf{\Lambda}\\. Then
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
> The product steps are [Theorem 24](#thm-det-product), the orthogonality step is [Definition 10](#def-orthogonal-matrix), and the identity and diagonal steps are [Theorem 23](#thm-det-diagonal) and [Example 44](#exm-det-diagonal).

> **NOTE:**
>
> **Corollary 4 (A positive definite matrix has a positive determinant)** If \\\mathbf{A}\\ is positive definite ([Definition 22](#def-positive-definite)), then \\\det(\mathbf{A}) \> 0\\.

> **NOTE:**
>
> *Proof*. By [Theorem 18](#thm-definite-eigenvalues), every eigenvalue of \\\mathbf{A}\\ is positive, so their product, which is \\\det(\mathbf{A})\\ by [Theorem 25](#thm-det-eigenvalues), is positive.

> **NOTE:**
>
> **Example 46 (Two ways to the same determinant)** \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ has eigenvalues \\3\\ and \\1\\ ([Example 25](#exm-eigenvalue)), so [Theorem 25](#thm-det-eigenvalues) gives
>
> \\ \begin{aligned} \det(\mathbf{A}) &= 3 \cdot 1 \\ &= 3, \end{aligned} \\
>
> matching \\2 \cdot 2 - 1 \cdot 1 = 3\\ from [Example 43](#exm-determinant).

# Definitions on this page

- [Definition 1 (Order of a square matrix)](#def-matrix-order)
- [Definition 2 (Matrix power)](#def-matrix-power)
- [Definition 3 (Symmetric matrix)](#def-symmetric-matrix)
- [Definition 4 (Diagonal matrix)](#def-diagonal-matrix)
- [Definition 5 (Matrix inverse)](#def-matrix-inverse)
- [Definition 6 (Invertible matrix, non-singular matrix)](#def-invertible-matrix)
- [Definition 7 (Idempotent matrix)](#def-idempotent-matrix)
- [Definition 8 (Orthogonal projection matrix)](#def-projection-matrix)
- [Definition 9 (Oblique projection)](#def-oblique-projection)
- [Definition 10 (Orthogonal matrix)](#def-orthogonal-matrix)
- [Definition 11 (Quadratic form)](#def-quadratic-form)
- [Definition 12 (Symmetric part of a square matrix)](#def-symmetric-part)
- [Definition 13 (Trace)](#def-trace)
- [Definition 14 (Matrix inner product)](#def-matrix-inner-product)
- [Definition 15 (Frobenius norm)](#def-frobenius-norm)
- [Definition 16 (Eigenvalue)](#def-eigenvalue)
- [Definition 17 (Eigenvector)](#def-eigenvector)
- [Definition 18 (Eigendecomposition, spectral decomposition)](#def-eigendecomposition)
- [Definition 19 (Singular value decomposition)](#def-svd)
- [Definition 20 (Singular values)](#def-singular-values)
- [Definition 21 (Positive semidefinite matrix)](#def-positive-semidefinite)
- [Definition 22 (Positive definite matrix)](#def-positive-definite)
- [Definition 23 (Condition number of a positive definite matrix)](#def-condition-number)
- [Definition 24 (Condition number of a matrix)](#def-matrix-condition-number)
- [Definition 25 (Ill-conditioned matrix)](#def-ill-conditioned)
- [Definition 26 (Well-conditioned matrix)](#def-well-conditioned)
- [Definition 27 (Paraboloid)](#def-paraboloid)
- [Definition 28 (Elliptic paraboloid)](#def-elliptic-paraboloid)
- [Definition 29 (Matrix-induced inner product (\\\mathbf{A}\\-inner product))](#def-matrix-induced-inner-product)
- [Definition 30 (Determinant)](#def-determinant)

Back to top

## References

\[1\]

Wikipedia contributors, “Symmetric matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Symmetric_matrix>

\[2\]

Wikipedia contributors, “Diagonal matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Diagonal_matrix>

\[3\]

Wikipedia contributors, “Invertible matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Invertible_matrix>

\[4\]

Wikipedia contributors, “Idempotent matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Idempotent_matrix>

\[5\]

Wikipedia contributors, “Orthogonal matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Orthogonal_matrix>

\[6\]

S. Banerjee and A. Roy, *Linear algebra and matrix analysis for statistics*, vol. 181. Crc Press Boca Raton, 2014. Available: <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>

\[7\]

Wikipedia contributors, “Quadratic form — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Quadratic_form>

\[8\]

Wikipedia contributors, “Trace (linear algebra) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Trace_(linear_algebra)>

\[9\]

Wikipedia contributors, “Frobenius norm — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Frobenius_norm>

\[10\]

Wikipedia contributors, “Eigendecomposition of a matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Eigendecomposition_of_a_matrix>

\[11\]

Wikipedia contributors, “Singular value decomposition — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Singular_value_decomposition>

\[12\]

Wikipedia contributors, “Definite matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Definite_matrix>

\[13\]

Wikipedia contributors, “Condition number — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Condition_number>

\[14\]

L. N. Trefethen and D. Bau III, *Numerical linear algebra*. SIAM, 1997. doi: [10.1137/1.9780898719574](https://doi.org/10.1137/1.9780898719574).

\[15\]

Wikipedia contributors, “Paraboloid — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Paraboloid>

\[16\]

Wikipedia contributors, “Determinant — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Determinant>
