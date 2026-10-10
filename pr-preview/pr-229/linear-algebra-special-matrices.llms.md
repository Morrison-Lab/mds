# Special Matrices and Decompositions

Code

Published

Last modified: 2026-10-10 10:39:03 (PDT)

## 1 Special Matrices

Some special matrices appeared earlier:

- the zero matrix ([Definition 4 in Matrices](linear-algebra-matrices.llms.md#def-zero-matrix)), in the section on matrix addition
- square matrices ([Definition 8 in Matrices](linear-algebra-matrices.llms.md#def-square-matrix)), in the section on square and identity matrices
- the identity matrix ([Definition 10 in Matrices](linear-algebra-matrices.llms.md#def-identity-matrix)), in that same section

> **NOTE:**
>
> **Definition 1 (Order of a square matrix)** The **order** of a square matrix ([Definition 8 in Matrices](linear-algebra-matrices.llms.md#def-square-matrix)) is its number of rows, which equals its number of columns.

> **NOTE:**
>
> **Example 1 (Orders of square matrices)** \\\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\ has order \\2\\, and \\\[5\]\\ has order \\1\\. A \\2 \times 3\\ matrix has no order, since it is not square ([Example 7 in Matrices](linear-algebra-matrices.llms.md#exm-square-matrix)).

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
> **Definition 3 (Symmetric matrix)** A square matrix \\\mathbf{A}\\ is **symmetric** if \\{\mathbf{A}}^{\top} = \mathbf{A}\\, i.e., \\a\_{ij} = a\_{ji}\\ for all \\i\\ and \\j\\.

> **NOTE:**
>
> *Remark 1* (Symmetric matrices in statistics). Covariance matrices are symmetric: entry \\(i, j)\\ of the covariance matrix of a random vector \\\tilde{Y}\\ is \\\operatorname{Cov}\mathopen{}\left(Y_i, Y_j\right)\mathclose{}\\, and \\\operatorname{Cov}\mathopen{}\left(Y_i, Y_j\right)\mathclose{} = \operatorname{Cov}\mathopen{}\left(Y_j, Y_i\right)\mathclose{}\\. For example, if \\\operatorname{Var}\mathopen{}\left(Y_1\right)\mathclose{} = 4\\, \\\operatorname{Var}\mathopen{}\left(Y_2\right)\mathclose{} = 9\\, and \\\operatorname{Cov}\mathopen{}\left(Y_1, Y_2\right)\mathclose{} = 1\\, the covariance matrix of \\(Y_1, Y_2)\\ is
>
> \\ \begin{bmatrix} 4 & 1 \\ 1 & 9 \end{bmatrix}. \\

> **NOTE:**
>
> **Example 3 (A matrix that is not symmetric)** \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\ is not symmetric:
>
> \\ \begin{aligned} a\_{12} &= 2 \\ &\ne 3 \\ &= a\_{21}. \end{aligned} \\

> **NOTE:**
>
> **Definition 4 (Diagonal matrix)** A square matrix \\\mathbf{D}\\ is a **diagonal matrix** if all off-diagonal entries are zero: \\d\_{ij} = 0\\ whenever \\i \neq j\\:
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
> **Definition 6 (Invertible matrix (non-singular matrix))** A \\p \times p\\ matrix \\\mathbf{A}\\ is **invertible** (or **non-singular**) if some \\p \times p\\ matrix \\\mathbf{B}\\ satisfies
>
> \\ \begin{aligned} \mathbf{A}\mathbf{B} &= \mathbf{B}\mathbf{A} \\ &= \mathbf{I}\_p, \end{aligned} \\
>
> where \\\mathbf{I}\_p\\ is the identity matrix ([Definition 10 in Matrices](linear-algebra-matrices.llms.md#def-identity-matrix)). A square matrix that is not invertible is **singular**.

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
> The steps use [Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc) and [Theorem 7 in Matrices](linear-algebra-matrices.llms.md#thm-identity). Since \\\mathbf{B} = \mathbf{C}\\, at most one matrix satisfies these equations, which is the uniqueness that [Definition 5](#def-matrix-inverse) asserts. When \\\mathbf{A}\\ is invertible, the matrix \\\mathbf{B}\\ in [Definition 6](#def-invertible-matrix) is therefore the inverse \\\mathbf{A}^{-1}\\ of \\\mathbf{A}\\, and \\\mathbf{A}\\ is invertible exactly when it has an inverse. For example, for \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ in [Example 5](#exm-invertible-matrix), \\\begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\ is the only \\2 \times 2\\ matrix \\\mathbf{B}\\ with
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
> So \\\mathbf{B}^{-1}\mathbf{A}^{-1}\\ satisfies [Definition 5](#def-matrix-inverse) for \\\mathbf{A}\mathbf{B}\\. The steps use [Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc) and [Theorem 7 in Matrices](linear-algebra-matrices.llms.md#thm-identity).

> **NOTE:**
>
> **Theorem 2 (Inverse of a transpose)** If \\\mathbf{A}\\ is an invertible \\p \times p\\ matrix, then \\{\mathbf{A}}^{\top}\\ is invertible, and
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
> So \\{\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}\\ satisfies [Definition 5](#def-matrix-inverse) for \\{\mathbf{A}}^{\top}\\. The first step of each display is [Theorem 16 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product).

> **NOTE:**
>
> **Example 6 (Inverting a transpose)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\, [Example 5](#exm-invertible-matrix) gives \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\, so [Theorem 2](#thm-inverse-transpose) says
>
> \\ \begin{aligned} \mathopen{}\left({\mathbf{A}}^{\top}\right)^{-1}\mathclose{} &= \mathopen{}\left(\begin{bmatrix} 2 & 0 \\ 1 & 1 \end{bmatrix}\right)^{-1}\mathclose{} \\ &= {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top} \\ &= \begin{bmatrix} 0.5 & 0 \\ -0.5 & 1 \end{bmatrix}, \end{aligned} \\
>
> and multiplying \\\begin{bmatrix} 2 & 0 \\ 1 & 1 \end{bmatrix}\begin{bmatrix} 0.5 & 0 \\ -0.5 & 1 \end{bmatrix}\\ out does give \\\mathbf{I}\_2\\.

> **NOTE:**
>
> **Corollary 1 (The inverse of a symmetric matrix is symmetric)** If \\\mathbf{A}\\ is symmetric and invertible, then \\\mathbf{A}^{-1}\\ is symmetric.

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top} &= \mathopen{}\left({\mathbf{A}}^{\top}\right)^{-1}\mathclose{} && \text{(inverse of a transpose)} \\ &= \mathbf{A}^{-1} && \text{(} \mathbf{A} \text{ is symmetric)} \end{aligned} \\
>
> The first step is [Theorem 2](#thm-inverse-transpose).

> **NOTE:**
>
> **Example 7 (Inverting a symmetric matrix)** \\\mathbf{S} = \begin{bmatrix} 2 & 1 \\ 1 & 1 \end{bmatrix}\\ is symmetric, and \\\mathbf{S}^{-1} = \begin{bmatrix} 1 & -1 \\ -1 & 2 \end{bmatrix}\\ is symmetric too, as [Corollary 1](#cor-inverse-symmetric) says.

> **NOTE:**
>
> **Definition 7 (Idempotent matrix)** A square matrix \\\mathbf{A}\\ is **idempotent** if
>
> \\\mathbf{A}^2 = \mathbf{A}\\

> **NOTE:**
>
> **Example 8 (An idempotent matrix)** For \\\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\,
>
> \\ \begin{aligned} \mathbf{P}^2 &= \begin{bmatrix} 1 \cdot 1 + 0 \cdot 0 & 1 \cdot 0 + 0 \cdot 0 \\ 0 \cdot 1 + 0 \cdot 0 & 0 \cdot 0 + 0 \cdot 0 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix} \\ &= \mathbf{P}, && \text{(multiply and add)} \end{aligned} \\
>
> so \\\mathbf{P}\\ is idempotent.

> **NOTE:**
>
> **Example 9 (A matrix that is not idempotent)** For \\\mathbf{A} = \begin{bmatrix} 2 & 0 \\ 0 & 0 \end{bmatrix}\\,
>
> \\ \begin{aligned} \mathbf{A}^2 &= \begin{bmatrix} 2 \cdot 2 + 0 \cdot 0 & 2 \cdot 0 + 0 \cdot 0 \\ 0 \cdot 2 + 0 \cdot 0 & 0 \cdot 0 + 0 \cdot 0 \end{bmatrix} \\ &= \begin{bmatrix} 4 & 0 \\ 0 & 0 \end{bmatrix} \\ &\ne \mathbf{A}, \end{aligned} \\
>
> so \\\mathbf{A}\\ is not idempotent.

> **NOTE:**
>
> **Definition 8 (Orthogonal projection matrix)** A square matrix \\\mathbf{P}\\ is an **orthogonal projection matrix** if it is both symmetric ([Definition 3](#def-symmetric-matrix)) and idempotent ([Definition 7](#def-idempotent-matrix)):
>
> \\{\mathbf{P}}^{\top} = \mathbf{P} \qquad \text{and} \qquad \mathbf{P}^2 = \mathbf{P}\\

> **NOTE:**
>
> **Definition 9 (Oblique projection)** A square matrix is an **oblique projection** if it is idempotent ([Definition 7](#def-idempotent-matrix)) but not symmetric ([Definition 3](#def-symmetric-matrix)).

> **NOTE:**
>
> **Example 10 (An orthogonal projection and an oblique one)** \\\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ is symmetric, and \\\mathbf{P}^2 = \mathbf{P}\\, so \\\mathbf{P}\\ is an orthogonal projection matrix; it maps \\(v_1, v_2)\\ to \\(v_1, 0)\\.
>
> \\\mathbf{Q} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}\\ is idempotent:
>
> \\ \begin{aligned} \mathbf{Q}^2 &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 1 + 1 \cdot 0 \\ 0 \cdot 1 + 0 \cdot 0 & 0 \cdot 1 + 0 \cdot 0 \end{bmatrix} \\ &= \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix} \\ &= \mathbf{Q}, \end{aligned} \\
>
> but \\{\mathbf{Q}}^{\top} \neq \mathbf{Q}\\, so \\\mathbf{Q}\\ is an oblique projection, not an orthogonal projection matrix.

> **NOTE:**
>
> *Remark 4* (What “projection matrix” means in these notes). Some texts call any idempotent matrix a projection matrix, so that both \\\mathbf{P}\\ and \\\mathbf{Q}\\ in [Example 10](#exm-projection-matrix) would count as one. Regression texts often say “projection matrix” when they mean an orthogonal one. In these notes, “projection matrix” always means an orthogonal projection matrix in the sense of [Definition 8](#def-projection-matrix), such as \\\mathbf{P}\\ in [Example 10](#exm-projection-matrix), and never an oblique projection ([Definition 9](#def-oblique-projection)) such as \\\mathbf{Q}\\.

> **NOTE:**
>
> **Theorem 3 (Complement of a projection matrix)** If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 8](#def-projection-matrix)), then \\\mathbf{I}\_p - \mathbf{P}\\ is also an orthogonal projection matrix.

> **NOTE:**
>
> *Proof*. We verify symmetry and idempotency.
>
> **Symmetry:** \\ \begin{aligned} {(\mathbf{I} - \mathbf{P})}^{\top} &= {\mathbf{I}}^{\top} - {\mathbf{P}}^{\top} \\ &= \mathbf{I} - \mathbf{P} \end{aligned} \\
>
> **Idempotency:** \\\begin{aligned} (\mathbf{I} - \mathbf{P})^2 &= (\mathbf{I} - \mathbf{P})(\mathbf{I} - \mathbf{P}) \\ &= \mathbf{I} - \mathbf{P} - \mathbf{P} + \mathbf{P}^2 \\ &= \mathbf{I} - \mathbf{P} - \mathbf{P} + \mathbf{P} \\ &= \mathbf{I} - \mathbf{P} \end{aligned}\\

> **NOTE:**
>
> **Theorem 4 (Projection matrices produce orthogonal decompositions)** If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 8](#def-projection-matrix)) and \\\tilde{v}\\ is any vector of length \\p\\, then the two components of the decomposition
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
> **Definition 10 (Orthogonal matrix)** A \\p \times p\\ matrix \\\mathbf{Q}\\ is **orthogonal** if
>
> \\ \underbrace{{\mathbf{Q}}^{\top}}\_{p \times p}\\\underbrace{\mathbf{Q}}\_{p \times p} = \mathbf{I}\_p \\

> **NOTE:**
>
> **Example 11 (A rotation matrix)** The matrix
>
> \\ \mathbf{Q} = \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix} \\
>
> rotates each vector in the plane counterclockwise by the angle \\\theta\\ with \\\cos\theta= 0.6\\ and \\\sin\theta= 0.8\\ (about \\53\\ degrees) ([Banerjee and Roy 2014, chap. 8](#ref-banerjee2014linear), Example 8.1, p. 207). It is orthogonal:
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top}\mathbf{Q} &= \begin{bmatrix} 0.6 & 0.8 \\ -0.8 & 0.6 \end{bmatrix} \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \begin{bmatrix} 0.36 + 0.64 & -0.48 + 0.48 \\ -0.48 + 0.48 & 0.64 + 0.36 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> **Example 12 (Orthogonal columns are not enough)** \\\mathbf{Q} = 2 \mathbf{I}\_2\\ has orthogonal columns \\(2, 0)\\ and \\(0, 2)\\, but
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top} \mathbf{Q} &= \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix} \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix} \\ &= \begin{bmatrix} 4 & 0 \\ 0 & 4 \end{bmatrix} \\ &\ne \mathbf{I}\_2, \end{aligned} \\
>
> so \\\mathbf{Q}\\ is not an orthogonal matrix: its columns have norm \\2\\, not \\1\\.

> **NOTE:**
>
> *Remark 5* (The columns of an orthogonal matrix are orthonormal). Entry \\(i, j)\\ of \\{\mathbf{Q}}^{\top}\mathbf{Q}\\ is the dot product of column \\i\\ and column \\j\\ of \\\mathbf{Q}\\, so \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\ says that the columns of \\\mathbf{Q}\\ are orthonormal ([Definition 17 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)). For a square matrix, \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\ also implies \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\, so \\\mathbf{Q}^{-1} = {\mathbf{Q}}^{\top}\\ ([Definition 5](#def-matrix-inverse)) ([Banerjee and Roy 2014, chap. 8](#ref-banerjee2014linear), Theorem 8.1 and Definition 8.1, p. 209).
>
> For example, the columns of \\\mathbf{Q}\\ in [Example 11](#exm-orthogonal-matrix) are \\(0.6, 0.8)\\ and \\(-0.8, 0.6)\\. The diagonal entries \\0.36 + 0.64 = 1\\ of \\{\mathbf{Q}}^{\top}\mathbf{Q}\\ are their squared norms, and the off-diagonal entries \\-0.48 + 0.48 = 0\\ are their dot product. Multiplying in the other order also gives \\\mathbf{I}\_2\\:
>
> \\ \begin{aligned} \mathbf{Q}{\mathbf{Q}}^{\top} &= \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix} \begin{bmatrix} 0.6 & 0.8 \\ -0.8 & 0.6 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \begin{bmatrix} 0.36 + 0.64 & 0.48 - 0.48 \\ 0.48 - 0.48 & 0.64 + 0.36 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> So \\\mathbf{Q}^{-1} = {\mathbf{Q}}^{\top}\\.

> **NOTE:**
>
> **Theorem 5 (Orthogonal matrices preserve length)** If \\\mathbf{Q}\\ is a \\p \times p\\ orthogonal matrix ([Definition 10](#def-orthogonal-matrix)) and \\\tilde{x}\\ is a vector of length \\p\\, then
>
> \\ \mathopen{}\left\lVert\mathbf{Q}\tilde{x}\right\rVert\mathclose{} = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{Q}\tilde{x}\right\rVert\mathclose{}^2 &= (\mathbf{Q}\tilde{x}) \cdot (\mathbf{Q}\tilde{x}) && \text{(definition of the Euclidean norm)} \\ &= {(\mathbf{Q}\tilde{x})}^{\top}\\(\mathbf{Q}\tilde{x}) && \text{(dot product as a matrix product)} \\ &= {\tilde{x}}^{\top}\\{\mathbf{Q}}^{\top}\\(\mathbf{Q}\tilde{x}) && \text{(transpose of a product)} \\ &= {\tilde{x}}^{\top}\\({\mathbf{Q}}^{\top}\mathbf{Q})\\\tilde{x} && \text{(regroup; matrix multiplication is associative)} \\ &= {\tilde{x}}^{\top}\\\mathbf{I}\_p\\\tilde{x} && \text{(definition of an orthogonal matrix)} \\ &= {\tilde{x}}^{\top}\\\tilde{x} && \text{(identity matrix)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 && \text{(definition of the Euclidean norm)} \end{aligned} \\
>
> Both norms are nonnegative square roots, so equal squares give \\\mathopen{}\left\lVert\mathbf{Q}\tilde{x}\right\rVert\mathclose{} = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\. The second step is [Example 6 in Matrices](linear-algebra-matrices.llms.md#exm-dot-product-matmul), the third is [Theorem 16 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product), and the fourth is [Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc).

> **NOTE:**
>
> **Example 13 (Rotating a vector keeps its length)** With \\\mathbf{Q}\\ from [Example 11](#exm-orthogonal-matrix) and \\\tilde{x}= (3, 4)\\ from [Example 9 in Vectors](linear-algebra-vectors.llms.md#exm-euclidean-norm):
>
> \\ \begin{aligned} \mathbf{Q}\tilde{x} &= \begin{bmatrix} 0.6 \cdot 3 - 0.8 \cdot 4 \\ 0.8 \cdot 3 + 0.6 \cdot 4 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 1.8 - 3.2 \\ 2.4 + 2.4 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} -1.4 \\ 4.8 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{Q}\tilde{x}\right\rVert\mathclose{} &= \sqrt{(-1.4)^2 + 4.8^2} && \text{(definition of the norm)} \\ &= \sqrt{1.96 + 23.04} && \text{(square)} \\ &= \sqrt{25} && \text{(add)} \\ &= 5 && \text{(take the square root)} \end{aligned} \\
>
> which is \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = 5\\.

## 2 Quadratic Forms

> **NOTE:**
>
> **Definition 11 (Quadratic form)** A **quadratic form** is a mathematical expression of the structure
>
> \\{\tilde{x}}^{\top}\\ \mathbf{S}\\ \tilde{x}\\
>
> where \\\tilde{x}\\ is a \\p \times 1\\ vector and \\\mathbf{S}\\ is a \\p \times p\\ matrix.

> **NOTE:**
>
> *Remark 6* (Quadratic forms in statistics). A quadratic form extends the scalar expression \\c x^2\\ to vectors: with \\p = 1\\ and \\\mathbf{S} = \[c\]\\, \\{\tilde{x}}^{\top}\\\mathbf{S}\\\tilde{x}= c x^2\\. With \\p = 2\\,
>
> \\ {\tilde{x}}^{\top} \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix} \tilde{x} = x_1^2 + 2 x_1 x_2 + 3 x_2^2, \\
>
> which is \\1 + 4 + 12 = 17\\ at \\\tilde{x}= (1, 2)\\.
>
> Quadratic forms occur often in statistics:
>
> - The residual sum of squares in linear regression (see [Vector Calculus](vector-calculus.llms.md)) is a quadratic form.
> - The variance of a linear combination of estimates (see [Inference about Gaussian Linear Regression Models](https://morrison-lab.github.io/rme/chapters/Linear-models-overview.html#sec-infer-LMs)) is a quadratic form: \\\operatorname{Var}\mathopen{}\left(\tilde{x} \cdot \hat{\tilde{\beta}}\right)\mathclose{} = {\tilde{x}}^{\top}\\\operatorname{Var}\mathopen{}\left(\hat{\tilde{\beta}}\right)\mathclose{}\\\tilde{x}\\.

> **NOTE:**
>
> **Definition 12 (Symmetric part of a square matrix)** The **symmetric part** of a \\p \times p\\ matrix \\\mathbf{S}\\ is
>
> \\\frac{1}{2}\mathopen{}\left(\mathbf{S} + {\mathbf{S}}^{\top}\right)\mathclose{}\\

> **NOTE:**
>
> **Example 14 (The symmetric part of a \\2 \times 2\\ matrix)** For \\\mathbf{S} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}\\, the symmetric part is
>
> \\ \begin{aligned} \frac{1}{2}\mathopen{}\left( \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix} + \begin{bmatrix} 1 & 0 \\ 2 & 3 \end{bmatrix} \right)\mathclose{} &= \frac{1}{2}\begin{bmatrix} 2 & 2 \\ 2 & 6 \end{bmatrix} \\ &= \begin{bmatrix} 1 & 1 \\ 1 & 3 \end{bmatrix}, \end{aligned} \\
>
> which is symmetric.

> **NOTE:**
>
> **Theorem 6 (A quadratic form depends only on the symmetric part)** If \\\mathbf{S}\\ is a \\p \times p\\ matrix and \\\tilde{x}\\ is a vector of length \\p\\, then
>
> \\ {\tilde{x}}^{\top}\mathbf{S}\tilde{x} = {\tilde{x}}^{\top}\mathopen{}\left(\frac{1}{2}(\mathbf{S}+{\mathbf{S}}^{\top})\right)\mathclose{}\tilde{x}. \\
>
> So the value of a quadratic form depends only on the symmetric part ([Definition 12](#def-symmetric-part)) of \\\mathbf{S}\\.

> **NOTE:**
>
> *Proof*. The quadratic form \\{\tilde{x}}^{\top}\mathbf{S}\tilde{x}\\ is a \\1 \times 1\\ matrix, so it equals its own transpose:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{S}\tilde{x} &= {\mathopen{}\left({\tilde{x}}^{\top}\mathbf{S}\tilde{x}\right)\mathclose{}}^{\top} && \text{(a } 1 \times 1 \text{ matrix is symmetric)} \\ &= {\tilde{x}}^{\top}\\{\mathbf{S}}^{\top}\\{\mathopen{}\left({\tilde{x}}^{\top}\right)\mathclose{}}^{\top} && \text{(transpose of a product, twice)} \\ &= {\tilde{x}}^{\top}\\{\mathbf{S}}^{\top}\\\tilde{x} && \text{(transposing twice changes nothing)} \end{aligned} \\
>
> Averaging the two expressions for \\{\tilde{x}}^{\top}\mathbf{S}\tilde{x}\\:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{S}\tilde{x} &= \frac{1}{2}\mathopen{}\left({\tilde{x}}^{\top}\mathbf{S}\tilde{x}+ {\tilde{x}}^{\top}\\{\mathbf{S}}^{\top}\\\tilde{x}\right)\mathclose{} && \text{(average of two equal numbers)} \\ &= \frac{1}{2}\\{\tilde{x}}^{\top}\mathopen{}\left(\mathbf{S} + {\mathbf{S}}^{\top}\right)\mathclose{}\tilde{x} && \text{(distributive law)} \\ &= {\tilde{x}}^{\top}\mathopen{}\left(\frac{1}{2}(\mathbf{S}+{\mathbf{S}}^{\top})\right)\mathclose{}\tilde{x} && \text{(move the scalar } \tfrac{1}{2} \text{ inside)} \end{aligned} \\
>
> The distributive step is [Theorem 6 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-distrib), and the transpose step is [Theorem 16 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product).

> **NOTE:**
>
> **Example 15 (Replacing a matrix by its symmetric part)** With \\\mathbf{S} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}\\ from [Example 14](#exm-symmetric-part) and \\\tilde{x}= (1, 1)\\:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{S}\tilde{x} &= 1 + 2 + 0 + 3 \\ &= 6 \\ {\tilde{x}}^{\top}\begin{bmatrix} 1 & 1 \\ 1 & 3 \end{bmatrix}\tilde{x} &= 1 + 1 + 1 + 3 \\ &= 6 \end{aligned} \\
>
> Both quadratic forms equal the sum of their matrix’s entries, because every entry of \\\tilde{x}\\ is \\1\\.

## 3 Trace and Matrix Inner Product

> **NOTE:**
>
> **Definition 13 (Trace)** The **trace** of a \\p \times p\\ matrix \\\mathbf{M}\\ is the sum of its diagonal entries:
>
> \\\operatorname{tr}(\mathbf{M}) \stackrel{\text{def}}{=}\sum\_{i=1}^pM\_{ii}\\

> **NOTE:**
>
> **Example 16 (The trace of a \\2 \times 2\\ matrix)** \\ \begin{aligned} \operatorname{tr}\mathopen{}\left(\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\right)\mathclose{} &= 1 + 4 \\ &= 5 \end{aligned} \\

> **NOTE:**
>
> **Theorem 7 (The trace of a product does not depend on the order)** For an \\m \times n\\ matrix \\\mathbf{A}\\ and an \\n \times m\\ matrix \\\mathbf{B}\\:
>
> \\ \operatorname{tr}\mathopen{}\left(\underbrace{\mathbf{A}\mathbf{B}}\_{m \times m}\right)\mathclose{} = \operatorname{tr}\mathopen{}\left(\underbrace{\mathbf{B}\mathbf{A}}\_{n \times n}\right)\mathclose{} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \operatorname{tr}(\mathbf{A}\mathbf{B}) &= \sum\_{i=1}^{m} (\mathbf{A}\mathbf{B})\_{ii} && \text{(definition of the trace)} \\ &= \sum\_{i=1}^{m} \sum\_{s=1}^{n} a\_{is}\\ b\_{si} && \text{(definition of matrix multiplication)} \\ &= \sum\_{s=1}^{n} \sum\_{i=1}^{m} a\_{is}\\ b\_{si} && \text{(swap the order of two finite sums)} \\ &= \sum\_{s=1}^{n} \sum\_{i=1}^{m} b\_{si}\\ a\_{is} && \text{(multiplication of numbers is commutative)} \\ &= \sum\_{s=1}^{n} (\mathbf{B}\mathbf{A})\_{ss} && \text{(definition of matrix multiplication)} \\ &= \operatorname{tr}(\mathbf{B}\mathbf{A}) && \text{(definition of the trace)} \end{aligned} \\

> **NOTE:**
>
> **Example 17 (Traces of the two products of a \\2 \times 3\\ and a \\3 \times 2\\ matrix)** Let
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
> *Remark 7* (Moving a factor of a triple product). Let \\\mathbf{A}\\ be \\m \times n\\, \\\mathbf{B}\\ be \\n \times k\\, and \\\mathbf{C}\\ be \\k \times m\\, so that \\\mathbf{A}\mathbf{B}\\ is \\m \times k\\ and \\\mathbf{A}\mathbf{B}\mathbf{C}\\ is square. Applying [Theorem 7](#thm-trace-cyclic) to the \\m \times k\\ matrix \\\mathbf{A}\mathbf{B}\\ and the \\k \times m\\ matrix \\\mathbf{C}\\ moves the last factor of the triple product to the front ([Banerjee and Roy 2014, chap. 1](#ref-banerjee2014linear), Theorem 1.5 and eq. 1.17, p. 19):
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
> \\ \left\langle \mathbf{A}, \mathbf{B} \right\rangle \stackrel{\text{def}}{=} \operatorname{tr}\mathopen{}\left(\underbrace{{\mathbf{A}}^{\top}\mathbf{B}}\_{p \times p}\right)\mathclose{} \\

Banerjee and Roy ([2014, chap. 15](#ref-banerjee2014linear), eq. 15.7, p. 491) defines the same inner product on \\n \times p\\ matrices with the trace.

> **NOTE:**
>
> **Theorem 8 (The matrix inner product multiplies matching entries)** For two \\n \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\:
>
> \\ \left\langle \mathbf{A}, \mathbf{B} \right\rangle = \sum\_{i=1}^n\sum\_{j=1}^pa\_{ij}\\ b\_{ij} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \left\langle \mathbf{A}, \mathbf{B} \right\rangle &= \operatorname{tr}({\mathbf{A}}^{\top}\mathbf{B}) && \text{(definition of the inner product)} \\ &= \sum\_{j=1}^p({\mathbf{A}}^{\top}\mathbf{B})\_{jj} && \text{(definition of the trace)} \\ &= \sum\_{j=1}^p\sum\_{i=1}^n({\mathbf{A}}^{\top})\_{ji}\\ b\_{ij} && \text{(definition of matrix multiplication)} \\ &= \sum\_{j=1}^p\sum\_{i=1}^na\_{ij}\\ b\_{ij} && \text{(definition of the transpose)} \\ &= \sum\_{i=1}^n\sum\_{j=1}^pa\_{ij}\\ b\_{ij} && \text{(swap the order of two finite sums)} \end{aligned} \\

> **NOTE:**
>
> **Example 18 (The inner product of two \\2 \times 2\\ matrices)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \qquad \mathbf{B} = \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix} \\
>
> From [Definition 14](#def-matrix-inner-product):
>
> \\ \begin{aligned} \left\langle \mathbf{A}, \mathbf{B} \right\rangle &= \operatorname{tr}\mathopen{}\left({\mathbf{A}}^{\top}\mathbf{B}\right)\mathclose{} && \text{(definition of the inner product)} \\ &= \operatorname{tr}\mathopen{}\left( {\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}}^{\top} \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix} \right)\mathclose{} && \text{(substitute)} \\ &= \operatorname{tr}\mathopen{}\left( \begin{bmatrix} 1 & 3 \\ 2 & 4 \end{bmatrix} \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix} \right)\mathclose{} && \text{(definition of the transpose)} \\ &= \operatorname{tr}\mathopen{}\left(\begin{bmatrix} -3 & 7 \\ -4 & 10 \end{bmatrix}\right)\mathclose{} && \text{(multiply)} \\ &= -3 + 10 && \text{(definition of the trace)} \\ &= 7 && \text{(add)} \end{aligned} \\
>
> From [Theorem 8](#thm-matrix-inner-product-entries):
>
> \\ \begin{aligned} \left\langle \mathbf{A}, \mathbf{B} \right\rangle &= 1 \cdot 0 + 2 \cdot 1 + 3 \cdot(-1) + 4 \cdot 2 && \text{(multiply matching entries and add)} \\ &= 0 + 2 - 3 + 8 && \text{(multiply)} \\ &= 7 && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> *Remark 8* (The matrix inner product as a dot product). [Theorem 8](#thm-matrix-inner-product-entries) says that the matrix inner product is the dot product ([Definition 7 in Vectors](linear-algebra-vectors.llms.md#def-dot-product)) of the two matrices’ entries, each listed as one vector of length \\np\\, with both matrices’ entries listed in the same order.
>
> For example, listing the entries of \\\mathbf{A}\\ and \\\mathbf{B}\\ in [Example 18](#exm-matrix-inner-product) row by row gives \\(1, 2, 3, 4)\\ and \\(0, 1, -1, 2)\\, and
>
> \\ \begin{aligned} (1, 2, 3, 4) \cdot (0, 1, -1, 2) &= 7 \\ &= \left\langle \mathbf{A}, \mathbf{B} \right\rangle. \end{aligned} \\

> **NOTE:**
>
> **Definition 15 (Frobenius norm)** The **Frobenius norm** of an \\n \times p\\ matrix \\\mathbf{A}\\ is
>
> \\ \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F \stackrel{\text{def}}{=}\sqrt{\left\langle \mathbf{A}, \mathbf{A} \right\rangle} \\
>
> where \\\left\langle \cdot, \cdot \right\rangle\\ is the matrix inner product ([Definition 14](#def-matrix-inner-product)).

> **NOTE:**
>
> **Example 19 (The Frobenius norm of a \\2 \times 2\\ matrix)** For \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F &= \sqrt{\left\langle \mathbf{A}, \mathbf{A} \right\rangle} && \text{(definition of the Frobenius norm)} \\ &= \sqrt{1 \cdot 1 + 2 \cdot 2 + 3 \cdot 3 + 4 \cdot 4} && \text{(sum of products of matching entries)} \\ &= \sqrt{1 + 4 + 9 + 16} && \text{(multiply)} \\ &= \sqrt{30} && \text{(add)} \end{aligned} \\
>
> The second step is [Theorem 8](#thm-matrix-inner-product-entries).

> **NOTE:**
>
> *Remark 9* (The Frobenius norm is the Euclidean norm of the entries). By [Theorem 8](#thm-matrix-inner-product-entries), \\\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F^2 = \sum\_{i=1}^n\sum\_{j=1}^pa\_{ij}^2\\, a sum of squares, so the square root is always defined. \\\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F\\ is the Euclidean norm ([Definition 14 in Vectors](linear-algebra-vectors.llms.md#def-euclidean-norm)) of the entries of \\\mathbf{A}\\, listed as one vector of length \\np\\ ([Banerjee and Roy 2014, chap. 15](#ref-banerjee2014linear), Definition 15.4, p. 492).
>
> For example, listing the entries of \\\mathbf{A}\\ in [Example 19](#exm-frobenius-norm) row by row gives the vector \\(1, 2, 3, 4)\\ of length \\2 \cdot 2 = 4\\, and
>
> \\ \begin{aligned} \mathopen{}\left\lVert(1, 2, 3, 4)\right\rVert\mathclose{} &= \sqrt{1 + 4 + 9 + 16} \\ &= \sqrt{30} \\ &= \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F. \end{aligned} \\

> **NOTE:**
>
> **Theorem 9 (The squared Frobenius norm adds up the squared column norms)** If \\\mathbf{A}\\ is an \\n \times p\\ matrix with columns \\\tilde{a}\_1, \ldots, \tilde{a}\_p\\, then
>
> \\ \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F^2 = \sum\_{j=1}^p\mathopen{}\left\lVert\tilde{a}\_j\right\rVert\mathclose{}^2. \\

> **NOTE:**
>
> *Proof*. Entry \\i\\ of \\\tilde{a}\_j\\ is \\a\_{ij}\\, so
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F^2 &= \sum\_{i=1}^n\sum\_{j=1}^pa\_{ij}^2 && \text{(}\href{#rem-frobenius-norm-entries}{\text{Remark~9}}\text{)} \\ &= \sum\_{j=1}^p\sum\_{i=1}^na\_{ij}^2 && \text{(swap the order of two finite sums)} \\ &= \sum\_{j=1}^p\mathopen{}\left\lVert\tilde{a}\_j\right\rVert\mathclose{}^2 && \text{(}\href{linear-algebra-vectors.qmd#def-euclidean-norm}{\text{Definition~14 in Vectors}}\text{, applied to each column)} \end{aligned} \\

> **NOTE:**
>
> **Example 20 (The Frobenius norm of a \\2 \times 2\\ matrix, column by column)** The matrix \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\ in [Example 19](#exm-frobenius-norm) has columns \\\tilde{a}\_1 = (1, 3)\\ and \\\tilde{a}\_2 = (2, 4)\\, so
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F^2 &= \mathopen{}\left\lVert\tilde{a}\_1\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\tilde{a}\_2\right\rVert\mathclose{}^2 && \text{(}\href{#thm-frobenius-norm-columns}{\text{Theorem~9}}\text{)} \\ &= (1^2 + 3^2) + (2^2 + 4^2) && \text{(definition of the norm)} \\ &= 10 + 20 && \text{(square and add)} \\ &= 30 && \text{(add)} \end{aligned} \\
>
> which matches \\\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}\_F = \sqrt{30}\\ from [Example 19](#exm-frobenius-norm).

## 4 Matrix Decompositions

> **NOTE:**
>
> **Definition 16 (Eigenvalue and eigenvector)** Let \\\mathbf{A}\\ be a \\p \times p\\ matrix. A real number \\\lambda\\ is an **eigenvalue** of \\\mathbf{A}\\ if some real vector \\\tilde{v} \neq \tilde{0}\\ of length \\p\\ satisfies
>
> \\ \underbrace{\mathbf{A}}\_{p \times p}\\\underbrace{\tilde{v}}\_{p \times 1} = \lambda\\\underbrace{\tilde{v}}\_{p \times 1} \\
>
> Any such \\\tilde{v}\\ is an **eigenvector** of \\\mathbf{A}\\ for \\\lambda\\.

> **NOTE:**
>
> **Example 21 (Eigenvectors of a \\2 \times 2\\ matrix)** Let \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\.
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
> *Remark 10* (Multiples of an eigenvector). Multiplying by \\\mathbf{A}\\ rescales an eigenvector by \\\lambda\\ and does not change the line it lies on. Any nonzero multiple \\c\\\tilde{v}\\ of an eigenvector is also an eigenvector for the same \\\lambda\\:
>
> \\ \begin{aligned} \mathbf{A}(c\\\tilde{v}) &= c\\\mathbf{A}\tilde{v} && \text{(move the scalar } c \text{ to the front)} \\ &= c\\\lambda\tilde{v} && \text{(} \tilde{v} \text{ is an eigenvector for } \lambda\text{)} \\ &= \lambda\\(c\\\tilde{v}) && \text{(multiplication of numbers is commutative)} \end{aligned} \\
>
> For example, in [Example 21](#exm-eigenvalue), \\2\\(1, 1) = (2, 2)\\ is also an eigenvector for the eigenvalue \\3\\:
>
> \\ \begin{aligned} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 2 \\ 2 \end{bmatrix} &= \begin{bmatrix} 2 \cdot 2 + 1 \cdot 2 \\ 1 \cdot 2 + 2 \cdot 2 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 4 + 2 \\ 2 + 4 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 6 \\ 6 \end{bmatrix} && \text{(add)} \\ &= 3 \begin{bmatrix} 2 \\ 2 \end{bmatrix} && \text{(factor out } 3 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 22 (A vector that is not an eigenvector)** For the same \\\mathbf{A}\\, \\(1, 0)\\ is not an eigenvector:
>
> \\ \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 1 \\ 0 \end{bmatrix} = \begin{bmatrix} 2 \\ 1 \end{bmatrix}, \\
>
> and no number \\\lambda\\ gives \\(2, 1) = \lambda\\(1, 0)\\, because the second entries would need \\1 = \lambda\cdot 0\\.

> **NOTE:**
>
> *Remark 11* (Real and complex eigenvalues). These notes take \\\lambda\\ and \\\tilde{v}\\ to be real. Banerjee and Roy ([2014, chap. 11](#ref-banerjee2014linear), Definition 11.1, pp. 312-313) also allows [complex](algebra.llms.md#def-complex-number) eigenvalues and eigenvectors, because some real matrices, such as a rotation by \\90\\ degrees, have no real eigenvalues ([Banerjee and Roy 2014, chap. 11](#ref-banerjee2014linear), Example 11.2, p. 312).
>
> For example, \\\mathbf{R} = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}\\ rotates each vector in the plane counterclockwise by \\90\\ degrees: \\\mathbf{R}\\(v_1, v_2) = (-v_2, v_1)\\. Suppose \\\mathbf{R}\tilde{v} = \lambda\tilde{v}\\ for a real number \\\lambda\\. Matching entries gives \\-v_2 = \lambda v_1\\ and \\v_1 = \lambda v_2\\. Substituting the second equation into the first gives \\-v_2 = \lambda^2 v_2\\, so \\(1 + \lambda^2)\\ v_2 = 0\\. Since \\1 + \lambda^2 \> 0\\, \\v_2 = 0\\, and then
>
> \\ \begin{aligned} v_1 &= \lambda v_2 \\ &= 0. \end{aligned} \\
>
> So the only solution is \\\tilde{v} = \tilde{0}\\, and \\\mathbf{R}\\ has no real eigenvalue.

> **TIP:**
>
> Chapter 14 of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown shows the geometric meaning of eigenvectors and eigenvalues:
>
> - [Eigenvectors and eigenvalues](https://www.youtube.com/watch?v=PFDu9oVAE-g) shows how certain vectors maintain their direction during a linear transformation and are merely stretched or squished by an eigenvalue factor ([Definition 16](#def-eigenvalue)).

> **NOTE:**
>
> **Theorem 10 (Spectral theorem for symmetric matrices)** If \\\mathbf{A}\\ is a \\p \times p\\ symmetric matrix ([Definition 3](#def-symmetric-matrix)) with real entries, then there are a \\p \times p\\ orthogonal matrix \\\mathbf{Q}\\ ([Definition 10](#def-orthogonal-matrix)) and a \\p \times p\\ diagonal matrix \\\mathbf{\Lambda}\\ ([Definition 4](#def-diagonal-matrix)) with real diagonal entries \\\lambda_1, \ldots, \lambda_p\\ such that
>
> \\ \underbrace{\mathbf{A}}\_{p \times p} = \underbrace{\mathbf{Q}}\_{p \times p}\\ \underbrace{\mathbf{\Lambda}}\_{p \times p}\\ \underbrace{{\mathbf{Q}}^{\top}}\_{p \times p} \\
>
> Each \\\lambda_i\\ is an eigenvalue of \\\mathbf{A}\\ ([Definition 16](#def-eigenvalue)), and column \\i\\ of \\\mathbf{Q}\\ is an eigenvector of \\\mathbf{A}\\ for \\\lambda_i\\.

> **NOTE:**
>
> *Remark 12* (An equivalent form of the spectral theorem). The proof, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\p\\, is outside the scope of these notes; see Banerjee and Roy ([2014, chap. 11](#ref-banerjee2014linear), Theorem 11.27, p. 349), which states the result in the equivalent form \\{\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q} = \mathbf{\Lambda}\\. The two forms are equivalent because
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top}\mathbf{Q} &= \mathbf{Q}{\mathbf{Q}}^{\top} \\ &= \mathbf{I}\_p \end{aligned} \\
>
> ([Remark 5](#rem-orthogonal-matrix-columns)). Multiplying \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ by \\{\mathbf{Q}}^{\top}\\ on the left and by \\\mathbf{Q}\\ on the right gives
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
> a diagonal matrix with the eigenvalues \\3\\ and \\1\\ of \\\mathbf{A}\\ from [Example 21](#exm-eigenvalue) on its diagonal.

> **NOTE:**
>
> **Definition 17 (Eigendecomposition (spectral decomposition))** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric matrix with real entries. An **eigendecomposition**, or **spectral decomposition**, of \\\mathbf{A}\\ is a factorization
>
> \\ \mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top} \\
>
> with \\\mathbf{Q}\\ a \\p \times p\\ orthogonal matrix ([Definition 10](#def-orthogonal-matrix)) and \\\mathbf{\Lambda}\\ a \\p \times p\\ diagonal matrix ([Definition 4](#def-diagonal-matrix)).

> **NOTE:**
>
> **Example 23 (An eigendecomposition of a \\2 \times 2\\ symmetric matrix)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, [Example 21](#exm-eigenvalue) found the eigenvectors \\(1, 1)\\ for \\3\\ and \\(1, -1)\\ for \\1\\. They are orthogonal ([Definition 13 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)):
>
> \\ \begin{aligned} (1, 1) \cdot (1, -1) &= 1 \cdot 1 + 1 \cdot(-1) && \text{(definition of the dot product)} \\ &= 1 - 1 && \text{(multiply)} \\ &= 0 && \text{(add)} \end{aligned} \\
>
> Each has norm \\\sqrt{1^2 + 1^2} = \sqrt{2}\\ ([Definition 14 in Vectors](linear-algebra-vectors.llms.md#def-euclidean-norm)), so dividing each by \\\sqrt{2}\\ gives two orthonormal eigenvectors ([Definition 17 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)). Put them in the columns of \\\mathbf{Q}\\, and the matching eigenvalues on the diagonal of \\\mathbf{\Lambda}\\:
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
> *Remark 13* (An eigendecomposition is not unique). A symmetric matrix can have more than one eigendecomposition. Reordering the eigenvalues on the diagonal of \\\mathbf{\Lambda}\\, and the columns of \\\mathbf{Q}\\ with them, gives another one, and so does multiplying a column of \\\mathbf{Q}\\ by \\-1\\.
>
> For example, take \\\mathbf{A}\\ from [Example 23](#exm-spectral). Swapping the two eigenvalues and the two columns gives
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
> **Theorem 11 (Singular value decomposition)** Let \\\mathbf{A}\\ be an \\n \times p\\ matrix with real entries and \\\operatorname{rank}(\mathbf{A}) = r\\ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)). Then there are an \\n \times n\\ orthogonal matrix \\\mathbf{U}\\, a \\p \times p\\ orthogonal matrix \\\mathbf{V}\\ ([Definition 10](#def-orthogonal-matrix)), and numbers \\\sigma_1 \ge \sigma_2 \ge \cdots \ge \sigma_r \> 0\\ such that
>
> \\ \underbrace{\mathbf{A}}\_{n \times p} = \underbrace{\mathbf{U}}\_{n \times n}\\ \underbrace{\mathbf{D}}\_{n \times p}\\ \underbrace{{\mathbf{V}}^{\top}}\_{p \times p} \\
>
> where \\\mathbf{D}\\ has entries \\d\_{ii} = \sigma_i\\ for \\i = 1, \ldots, r\\ and every other entry \\0\\.

> **NOTE:**
>
> *Remark 14* (The SVD applies to every real matrix). The proof is outside the scope of these notes; see Banerjee and Roy ([2014, chap. 12](#ref-banerjee2014linear), Theorem 12.1, p. 373). Unlike the spectral theorem ([Theorem 10](#thm-spectral)), [Theorem 11](#thm-svd) applies to every real matrix, including one that is not square or not symmetric.
>
> For example, the \\1 \times 2\\ matrix \\\mathbf{A} = \begin{bmatrix} 1 & 1 \end{bmatrix}\\ is not square, so [Theorem 10](#thm-spectral) does not apply to it. It has rank \\1\\, and [Theorem 11](#thm-svd) holds with \\\mathbf{U} = \begin{bmatrix} 1 \end{bmatrix}\\, \\\mathbf{D} = \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix}\\, and \\\mathbf{V}\\ the orthogonal matrix \\\mathbf{Q}\\ from [Example 23](#exm-spectral), which is symmetric, so \\{\mathbf{V}}^{\top} = \mathbf{V}\\:
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
> **Definition 18 (Singular value decomposition and singular values)** Let \\\mathbf{A}\\ be an \\n \times p\\ matrix with real entries and \\\operatorname{rank}(\mathbf{A}) = r\\. A **singular value decomposition** (SVD) of \\\mathbf{A}\\ is a factorization \\\mathbf{A} = \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}\\ with \\\mathbf{U}\\, \\\mathbf{D}\\ and \\\mathbf{V}\\ as in [Theorem 11](#thm-svd). The numbers \\\sigma_1 \ge \cdots \ge \sigma_r \> 0\\ on the diagonal of \\\mathbf{D}\\ are the **singular values** of \\\mathbf{A}\\.

> **NOTE:**
>
> **Example 24 (An SVD of a \\3 \times 2\\ matrix)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix} \qquad \mathbf{U} = \begin{bmatrix} \frac{1}{\sqrt{2}} & 0 & \frac{1}{\sqrt{2}} \\ 0 & 1 & 0 \\ \frac{1}{\sqrt{2}} & 0 & -\frac{1}{\sqrt{2}} \end{bmatrix} \qquad \mathbf{D} = \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix} \qquad \mathbf{V} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \\
>
> \\\mathbf{V}\\ is the orthogonal matrix \\\mathbf{Q}\\ from [Example 23](#exm-spectral). \\\mathbf{U}\\ is orthogonal too. Entry \\(i, j)\\ of \\{\mathbf{U}}^{\top}\mathbf{U}\\ is the dot product of columns \\i\\ and \\j\\ of \\\mathbf{U}\\, and those columns are \\\tilde{u}\_1 = (\frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}})\\, \\\tilde{u}\_2 = (0, 1, 0)\\ and \\\tilde{u}\_3 = (\frac{1}{\sqrt{2}}, 0, -\frac{1}{\sqrt{2}})\\:
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
> *Remark 15* (An SVD is not unique). An SVD is not unique ([Banerjee and Roy 2014, chap. 12](#ref-banerjee2014linear), Examples 12.2 and 12.3, p. 378). For any \\i \le r\\, multiplying column \\i\\ of both \\\mathbf{U}\\ and \\\mathbf{V}\\ by \\-1\\ gives another one. The singular values do not depend on which SVD is chosen ([Banerjee and Roy 2014, chap. 12](#ref-banerjee2014linear), pp. 371 and 378).
>
> For example, in [Example 24](#exm-svd), multiplying the first columns of \\\mathbf{U}\\ and \\\mathbf{V}\\ by \\-1\\ gives
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
> *Remark 16* (Counting zero singular values). Some texts, and R’s [`svd()`](https://rdrr.io/r/base/svd.html), also count \\\min(n, p) - r\\ singular values equal to \\0\\, so that every \\n \times p\\ matrix has \\\min(n, p)\\ singular values.
>
> For example, \\\mathbf{B} = \begin{bmatrix} 3 & 0 \\ 0 & 0 \end{bmatrix}\\ has rank \\r = 1\\. Taking
>
> \\ \begin{aligned} \mathbf{U} &= \mathbf{V} \\ &= \mathbf{I}\_2 \end{aligned} \\
>
> and \\\mathbf{D} = \mathbf{B}\\ gives an SVD \\\mathbf{B} = \mathbf{I}\_2 \mathbf{B} {\mathbf{I}\_2}^{\top}\\, so by [Definition 18](#def-svd), \\\mathbf{B}\\ has one singular value, \\\sigma_1 = 3\\. R’s [`svd()`](https://rdrr.io/r/base/svd.html) reports \\\min(2, 2) = 2\\ singular values for \\\mathbf{B}\\: \\3\\ and \\0\\.

> **NOTE:**
>
> **Theorem 12 (An SVD gives an eigendecomposition of \\{\mathbf{A}}^{\top}\mathbf{A}\\)** Let \\\mathbf{A} = \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}\\ be a singular value decomposition ([Definition 18](#def-svd)) of an \\n \times p\\ matrix \\\mathbf{A}\\ with singular values \\\sigma_1, \ldots, \sigma_r\\. Then \\{\mathbf{A}}^{\top}\mathbf{A}\\ is symmetric ([Definition 3](#def-symmetric-matrix)), and
>
> \\ \underbrace{{\mathbf{A}}^{\top}\mathbf{A}}\_{p \times p} = \underbrace{\mathbf{V}}\_{p \times p}\\ \underbrace{\mathbf{\Lambda}}\_{p \times p}\\ \underbrace{{\mathbf{V}}^{\top}}\_{p \times p} \\
>
> where \\\mathbf{\Lambda} \stackrel{\text{def}}{=}{\mathbf{D}}^{\top}\mathbf{D}\\ is the \\p \times p\\ diagonal matrix whose \\i\\-th diagonal entry \\\lambda_i\\ is \\\sigma_i^2\\ for \\i \le r\\ and \\0\\ for \\i \> r\\. So \\\mathbf{V}\mathbf{\Lambda}{\mathbf{V}}^{\top}\\ is an eigendecomposition ([Definition 17](#def-eigendecomposition)) of \\{\mathbf{A}}^{\top}\mathbf{A}\\: column \\i\\ of \\\mathbf{V}\\ is an eigenvector of \\{\mathbf{A}}^{\top}\mathbf{A}\\ for the eigenvalue \\\lambda_i\\.

> **NOTE:**
>
> *Proof*. **Symmetry.**
>
> \\ \begin{aligned} {\mathopen{}\left({\mathbf{A}}^{\top}\mathbf{A}\right)\mathclose{}}^{\top} &= {\mathbf{A}}^{\top}\\{\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}}^{\top} && \text{(transpose of a product)} \\ &= {\mathbf{A}}^{\top}\mathbf{A} && \text{(transposing twice changes nothing)} \end{aligned} \\
>
> The first step is [Theorem 16 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product), and the second follows from [Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose), which swaps rows and columns, so swapping them again restores \\\mathbf{A}\\.
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
> **The eigenvectors.** Write \\\tilde{v}\_i\\ for column \\i\\ of \\\mathbf{V}\\, and \\\tilde{e}\_i\\ for the indicator vector ([Definition 12 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)) of length \\p\\. Column \\i\\ of \\{\mathbf{V}}^{\top}\mathbf{V} = \mathbf{I}\_p\\ says \\{\mathbf{V}}^{\top}\tilde{v}\_i = \tilde{e}\_i\\. Then
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\mathbf{A}\\\tilde{v}\_i &= \mathbf{V}\mathbf{\Lambda}\\{\mathbf{V}}^{\top}\tilde{v}\_i && \text{(the factorization)} \\ &= \mathbf{V}\mathbf{\Lambda}\\\tilde{e}\_i && \text{(} {\mathbf{V}}^{\top}\tilde{v}\_i = \tilde{e}\_i \text{)} \\ &= \mathbf{V}\\(\lambda_i\\\tilde{e}\_i) && \text{(column } i \text{ of the diagonal matrix } \mathbf{\Lambda} \text{)} \\ &= \lambda_i\\\mathbf{V}\tilde{e}\_i && \text{(move the scalar } \lambda_i \text{ to the front)} \\ &= \lambda_i\\\tilde{v}\_i && \text{(} \mathbf{V}\tilde{e}\_i \text{ is column } i \text{ of } \mathbf{V} \text{)} \end{aligned} \\
>
> and \\\tilde{v}\_i \neq \tilde{0}\\ because it has norm \\1\\.

> **NOTE:**
>
> **Example 25 (\\{\mathbf{A}}^{\top}\mathbf{A}\\ for the matrix of the SVD example)** For \\\mathbf{A}\\ in [Example 24](#exm-svd):
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\mathbf{A} &= \begin{bmatrix} 1 & 1 & 1 \\ 1 & -1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix} && \text{(definition of the transpose)} \\ &= \begin{bmatrix} 1 + 1 + 1 & 1 - 1 + 1 \\ 1 - 1 + 1 & 1 + 1 + 1 \end{bmatrix} && \text{(definition of matrix multiplication)} \\ &= \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix} && \text{(add)} \end{aligned} \\
>
> [Theorem 12](#thm-svd-evd) says its eigenvalues are \\\sigma_1^2 = 4\\ and \\\sigma_2^2 = 2\\, with the columns of \\\mathbf{V}\\ as eigenvectors. Checking the first column, up to its factor \\\frac{1}{\sqrt{2}}\\:
>
> \\ \begin{aligned} \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ 1 \end{bmatrix} &= \begin{bmatrix} 3 \cdot 1 + 1 \cdot 1 \\ 1 \cdot 1 + 3 \cdot 1 \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 3 + 1 \\ 1 + 3 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 4 \\ 4 \end{bmatrix} && \text{(add)} \\ &= 4 \begin{bmatrix} 1 \\ 1 \end{bmatrix} && \text{(factor out } 4 \text{)} \end{aligned} \\
>
> and the second:
>
> \\ \begin{aligned} \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix} &= \begin{bmatrix} 3 \cdot 1 + 1 \cdot(-1) \\ 1 \cdot 1 + 3 \cdot(-1) \end{bmatrix} && \text{(definition of matrix-vector multiplication)} \\ &= \begin{bmatrix} 3 - 1 \\ 1 - 3 \end{bmatrix} && \text{(multiply)} \\ &= \begin{bmatrix} 2 \\ -2 \end{bmatrix} && \text{(add)} \\ &= 2 \begin{bmatrix} 1 \\ -1 \end{bmatrix} && \text{(factor out } 2 \text{)} \end{aligned} \\

> **NOTE:**
>
> *Remark 17* (Building an SVD from an eigendecomposition). [Theorem 12](#thm-svd-evd) matches Banerjee and Roy ([2014, chap. 12](#ref-banerjee2014linear), pp. 372-373), which works in the other direction: it constructs an SVD from a spectral decomposition of \\{\mathbf{A}}^{\top}\mathbf{A}\\ and sets \\\sigma_i = \sqrt{\lambda_i}\\.
>
> For example, in [Example 25](#exm-svd-evd) the eigenvalues of \\{\mathbf{A}}^{\top}\mathbf{A}\\ are \\4\\ and \\2\\, and \\\sqrt{4} = 2\\ and \\\sqrt{2}\\ are the singular values \\\sigma_1\\ and \\\sigma_2\\ of \\\mathbf{A}\\ from [Example 24](#exm-svd).

## 5 Definite Matrices

> **NOTE:**
>
> **Definition 19 (Positive semidefinite matrix)** A \\p \times p\\ matrix \\\mathbf{A}\\ is **positive semidefinite** if it satisfies both conditions:
>
> - \\\mathbf{A}\\ is symmetric ([Definition 3](#def-symmetric-matrix)).
> - Every quadratic form ([Definition 11](#def-quadratic-form)) in \\\mathbf{A}\\ is non-negative: \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\ge 0\\ for every vector \\\tilde{x}\\ of length \\p\\.

> **NOTE:**
>
> **Example 26 (A positive semidefinite matrix)** Let \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\, which is symmetric. For any \\\tilde{x}= (x_1, x_2)\\:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{B}\tilde{x} &= x_1^2 + x_1 x_2 + x_2 x_1 + x_2^2 && \text{(multiply out the quadratic form)} \\ &= (x_1 + x_2)^2 && \text{(complete the square)} \\ &\ge 0 && \text{(a square is non-negative)} \end{aligned} \\
>
> So \\\mathbf{B}\\ is positive semidefinite.

> **NOTE:**
>
> **Definition 20 (Positive definite matrix)** A \\p \times p\\ matrix \\\mathbf{A}\\ is **positive definite** if it satisfies both conditions:
>
> - \\\mathbf{A}\\ is symmetric ([Definition 3](#def-symmetric-matrix)).
> - Every quadratic form ([Definition 11](#def-quadratic-form)) in \\\mathbf{A}\\ at a nonzero vector is positive: \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\> 0\\ for every vector \\\tilde{x}\neq \tilde{0}\\ of length \\p\\.

> **NOTE:**
>
> **Example 27 (Positive definite, semidefinite, and neither)**  
>
> - The identity matrix \\\mathbf{I}\_p\\ ([Definition 10 in Matrices](linear-algebra-matrices.llms.md#def-identity-matrix)) is positive definite: \\{\tilde{x}}^{\top}\mathbf{I}\_p\tilde{x}= \sum\_{i=1}^px_i^2\\, which is positive unless every \\x_i\\ is \\0\\.
>
> - \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ from [Example 26](#exm-positive-semidefinite) is positive semidefinite but not positive definite: at \\\tilde{x}= (1, -1) \neq \tilde{0}\\,
>
>   \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{B}\tilde{x}&= (1 - 1)^2 \\ &= 0. \end{aligned} \\
>
> - \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\ is symmetric but not positive semidefinite: at \\\tilde{x}= (1, -1)\\,
>
>   \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{D}\tilde{x}&= 1 - 2 - 2 + 1 \\ &= -2 \\ &\< 0. \end{aligned} \\

> **NOTE:**
>
> *Remark 18* (Why the definition requires symmetry). A positive definite matrix is positive semidefinite ([Definition 19](#def-positive-semidefinite)): \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\> 0\\ for every \\\tilde{x}\neq \tilde{0}\\, and \\{\tilde{0}}^{\top}\mathbf{A}\tilde{0}= 0\\. For example, \\\mathbf{I}\_p\\ in [Example 27](#exm-positive-definite) is both.
>
> Some sources drop the symmetry condition from both definitions. These notes keep it, because without it a matrix can pass the quadratic-form condition and still have no real eigenvalues ([Definition 16](#def-eigenvalue)). For example, \\\mathbf{C} = \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}\\ is not symmetric, and for any \\\tilde{x}= (x_1, x_2)\\:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{C}\tilde{x} &= x_1 (x_1 + x_2) + x_2 (-x_1 + x_2) && \text{(multiply out the quadratic form)} \\ &= x_1^2 + x_1 x_2 - x_2 x_1 + x_2^2 && \text{(distribute)} \\ &= x_1^2 + x_2^2 && \text{(the middle terms cancel)} \end{aligned} \\
>
> which is positive for every \\\tilde{x}\neq \tilde{0}\\. But suppose \\\mathbf{C}\tilde{v} = \lambda\tilde{v}\\ for a real number \\\lambda\\. Matching entries gives \\v_1 + v_2 = \lambda v_1\\ and \\-v_1 + v_2 = \lambda v_2\\, so \\v_2 = (\lambda- 1)\\ v_1\\ and \\-v_1 = (\lambda- 1)\\ v_2\\. Substituting the first into the second gives \\-v_1 = (\lambda- 1)^2 v_1\\, so \\\mathopen{}\left(1 + (\lambda- 1)^2\right)\mathclose{} v_1 = 0\\. Since \\1 + (\lambda- 1)^2 \> 0\\, \\v_1 = 0\\, and then
>
> \\ \begin{aligned} v_2 &= (\lambda- 1)\\ v_1 \\ &= 0. \end{aligned} \\
>
> So no real \\\lambda\\ has an eigenvector \\\tilde{v} \neq \tilde{0}\\.

See also <https://en.wikipedia.org/wiki/Definite_matrix>.

> **NOTE:**
>
> **Theorem 13 (Definiteness and eigenvalues)** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric matrix with real entries, with eigendecomposition \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([Definition 17](#def-eigendecomposition)) and eigenvalues \\\lambda_1, \ldots, \lambda_p\\ on the diagonal of \\\mathbf{\Lambda}\\. Then:
>
> - \\\mathbf{A}\\ is positive semidefinite ([Definition 19](#def-positive-semidefinite)) if and only if every \\\lambda_i \ge 0\\.
> - \\\mathbf{A}\\ is positive definite ([Definition 20](#def-positive-definite)) if and only if every \\\lambda_i \> 0\\.

> **NOTE:**
>
> *Proof*. For any vector \\\tilde{x}\\ of length \\p\\, let \\\tilde{y} = {\mathbf{Q}}^{\top}\tilde{x}\\. Then:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{A}\tilde{x} &= {\tilde{x}}^{\top}\mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\tilde{x} && \text{(substitute the eigendecomposition)} \\ &= {\mathopen{}\left({\mathbf{Q}}^{\top}\tilde{x}\right)\mathclose{}}^{\top}\mathbf{\Lambda}\mathopen{}\left({\mathbf{Q}}^{\top}\tilde{x}\right)\mathclose{} && \text{(transpose of a product)} \\ &= {\tilde{y}}^{\top}\mathbf{\Lambda}\tilde{y} && \text{(definition of } \tilde{y} \text{)} \\ &= \sum\_{i=1}^p\lambda_i y_i^2 && \text{(} \mathbf{\Lambda} \text{ is diagonal)} \end{aligned} \\
>
> The second step is [Theorem 16 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product). Also, \\\tilde{x}= \tilde{0}\\ exactly when \\\tilde{y} = \tilde{0}\\: \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\ for an orthogonal matrix ([Definition 10](#def-orthogonal-matrix)), so \\\tilde{x}= \mathbf{Q}\tilde{y}\\.
>
> *If every \\\lambda_i \ge 0\\*, then every term \\\lambda_i y_i^2 \ge 0\\, so \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\ge 0\\. *If every \\\lambda_i \> 0\\* and \\\tilde{x}\neq \tilde{0}\\, then some \\y_i \neq 0\\, so at least one term is positive and the rest are non-negative, and \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\> 0\\.
>
> *Conversely*, take \\\tilde{x}= \tilde{q}\_i\\, column \\i\\ of \\\mathbf{Q}\\, which is not \\\tilde{0}\\ because it has norm 1. Then \\\tilde{y} = {\mathbf{Q}}^{\top}\tilde{q}\_i\\ is column \\i\\ of \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\, so \\y_i = 1\\ and every other entry of \\\tilde{y}\\ is \\0\\, and the display gives \\{\tilde{q}\_i}^{\top}\mathbf{A}\tilde{q}\_i = \lambda_i\\. So if \\\mathbf{A}\\ is positive semidefinite, \\\lambda_i \ge 0\\, and if \\\mathbf{A}\\ is positive definite, \\\lambda_i \> 0\\.

> **NOTE:**
>
> **Example 28 (Reading definiteness off the eigenvalues)**  
>
> - \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ has eigenvalues \\3\\ and \\1\\ ([Example 21](#exm-eigenvalue)), both positive, so it is positive definite.
> - \\\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ has eigenvalues \\2\\, for the eigenvector \\(1, 1)\\, and \\0\\, for the eigenvector \\(1, -1)\\, so it is positive semidefinite but not positive definite, as [Example 27](#exm-positive-definite) found directly.

> **NOTE:**
>
> **Theorem 14 (A positive definite matrix has a positive definite inverse)** Let \\\mathbf{A}\\ be a \\p \times p\\ positive definite matrix ([Definition 20](#def-positive-definite)) with real entries, with eigendecomposition \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([Definition 17](#def-eigendecomposition)) and eigenvalues \\\lambda_1, \ldots, \lambda_p\\. Then \\\mathbf{A}\\ is invertible ([Definition 6](#def-invertible-matrix)),
>
> \\ \mathbf{A}^{-1} = \mathbf{Q}\\\mathbf{\Lambda}^{-1}\\{\mathbf{Q}}^{\top}, \qquad \mathbf{\Lambda}^{-1} = \begin{bmatrix} 1/\lambda_1 & \cdots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \cdots & 1/\lambda_p \end{bmatrix}, \\
>
> and \\\mathbf{A}^{-1}\\ is positive definite.

> **NOTE:**
>
> *Proof*. By [Theorem 13](#thm-definite-eigenvalues), every \\\lambda_i \> 0\\, so \\\mathbf{\Lambda}^{-1}\\ is well defined, and multiplying the two diagonal matrices entry by entry gives
>
> \\ \begin{aligned} \mathbf{\Lambda}\mathbf{\Lambda}^{-1} &= \mathbf{\Lambda}^{-1}\mathbf{\Lambda} \\ &= \mathbf{I}\_p. \end{aligned} \\
>
> Write \\\mathbf{B} = \mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top}\\. Then:
>
> \\ \begin{aligned} \mathbf{A}\mathbf{B} &= \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} && \text{(substitute)} \\ &= \mathbf{Q}\mathbf{\Lambda}\mathbf{I}\_p\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} && \text{(} {\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p \text{)} \\ &= \mathbf{Q}\mathbf{\Lambda}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} && \text{(identity matrix)} \\ &= \mathbf{Q}{\mathbf{Q}}^{\top} && \text{(} \mathbf{\Lambda}\mathbf{\Lambda}^{-1} = \mathbf{I}\_p \text{)} \\ &= \mathbf{I}\_p && \text{(} \mathbf{Q} \text{ is orthogonal)} \end{aligned} \\
>
> The same steps, with \\\mathbf{\Lambda}^{-1}\\ and \\\mathbf{\Lambda}\\ swapped, give \\\mathbf{B}\mathbf{A} = \mathbf{I}\_p\\, so \\\mathbf{B} = \mathbf{A}^{-1}\\ ([Definition 5](#def-matrix-inverse)). The steps with \\\mathbf{Q}\\ use [Definition 10](#def-orthogonal-matrix), whose remark records that \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\ too, and the identity step uses [Theorem 7 in Matrices](linear-algebra-matrices.llms.md#thm-identity).
>
> \\\mathbf{A}^{-1}\\ is symmetric by [Corollary 1](#cor-inverse-symmetric). For \\\tilde{x}\neq \tilde{0}\\, let \\\tilde{y} = {\mathbf{Q}}^{\top}\tilde{x}\\, which is not \\\tilde{0}\\ because \\\tilde{x}= \mathbf{Q}\tilde{y}\\. As in the proof of [Theorem 13](#thm-definite-eigenvalues):
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{A}^{-1}\tilde{x} &= {\tilde{y}}^{\top}\mathbf{\Lambda}^{-1}\tilde{y} && \text{(substitute } \mathbf{A}^{-1} = \mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} \text{)} \\ &= \sum\_{i=1}^p\frac{y_i^2}{\lambda_i} && \text{(} \mathbf{\Lambda}^{-1} \text{ is diagonal)} \\ &\> 0 && \text{(each } \lambda_i \> 0 \text{, and some } y_i \neq 0 \text{)} \end{aligned} \\
>
> So \\\mathbf{A}^{-1}\\ is positive definite.

> **NOTE:**
>
> **Example 29 (Inverting a positive definite matrix)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, [Example 23](#exm-spectral) gives \\\mathbf{Q} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}\\ and eigenvalues \\3\\ and \\1\\, so:
>
> \\ \begin{aligned} \mathbf{A}^{-1} &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 1/3 & 0 \\ 0 & 1 \end{bmatrix} \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(substitute; } \mathbf{Q} \text{ is symmetric)} \\ &= \frac{1}{2} \begin{bmatrix} 1/3 & 1 \\ 1/3 & -1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(multiply the first two matrices)} \\ &= \frac{1}{2} \begin{bmatrix} 4/3 & -2/3 \\ -2/3 & 4/3 \end{bmatrix} && \text{(multiply)} \\ &= \frac{1}{3} \begin{bmatrix} 2 & -1 \\ -1 & 2 \end{bmatrix} && \text{(simplify)} \end{aligned} \\
>
> Multiplying out,
>
> \\ \begin{aligned} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \cdot\frac{1}{3}\begin{bmatrix} 2 & -1 \\ -1 & 2 \end{bmatrix} &= \frac{1}{3}\begin{bmatrix} 3 & 0 \\ 0 & 3 \end{bmatrix} \\ &= \mathbf{I}\_2. \end{aligned} \\

> **NOTE:**
>
> **Definition 21 (Matrix-induced inner product (\\\mathbf{A}\\-inner product))** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric positive definite matrix ([Definition 20](#def-positive-definite)) (\\\mathbf{A} = {\mathbf{A}}^{\top}\\ and \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}\> 0\\ for all nonzero \\\tilde{x}\in \mathbb{R}^p\\). The **matrix-induced inner product** (or **\\\mathbf{A}\\-inner product**) on \\\mathbb{R}^p\\ is defined for all \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\ by
>
> \\ \left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{A}} \stackrel{\text{def}}{=}{\tilde{x}}^{\top} \mathbf{A} \tilde{y}. \\

> **NOTE:**
>
> **Example 30 (A matrix-induced inner product calculation)** Consider the symmetric matrix
>
> \\ \mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}. \\
>
> For any nonzero vector \\\tilde{x}= (x_1, x_2) \in \mathbb{R}^2\\:
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\mathbf{A}\tilde{x} &= 2 x_1^2 + 2 x_1 x_2 + 2 x_2^2 && \text{(expand the quadratic form)} \\ &= (x_1 + x_2)^2 + x_1^2 + x_2^2 && \text{(complete the square)} \end{aligned} \\
>
> which is strictly positive because \\x_1^2 + x_2^2 \> 0\\ when \\\tilde{x}\neq \tilde{0}\\. Thus \\\mathbf{A}\\ is positive definite ([Definition 20](#def-positive-definite)).
>
> For vectors \\\tilde{x}= (1, 2)\\ and \\\tilde{y}= (3, -1)\\, their inner product induced by \\\mathbf{A}\\ is:
>
> \\ \begin{aligned} \left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{A}} &= {\tilde{x}}^{\top} \mathbf{A} \tilde{y} && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}} \text{)} \\ &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 3 \\ -1 \end{bmatrix} && \text{(substitute vectors and matrix)} \\ &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 2 \cdot 3 + 1 \cdot(-1) \\ 1 \cdot 3 + 2 \cdot(-1) \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \\ &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 5 \\ 1 \end{bmatrix} && \text{(multiply and add)} \\ &= 1 \cdot 5 + 2 \cdot 1 && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \\ &= 7. && \text{(multiply and add)} \end{aligned} \\
>
> In contrast, the standard dot product yields:
>
> \\ \begin{aligned} \tilde{x}\cdot \tilde{y} &= 1 \cdot 3 + 2 \cdot(-1) \\ &= 1. \end{aligned} \\
>
> The off-diagonal entries
>
> \\ \begin{aligned} A\_{12} &= A\_{21} \\ &= 1 \end{aligned} \\
>
> couple the coordinate directions, altering lengths and angles from their Euclidean values. When \\\mathbf{A} = \mathbf{I}\_p\\, the matrix-induced inner product recovers the standard dot product \\\left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{I}\_p} = \tilde{x}\cdot \tilde{y}\\.

> **NOTE:**
>
> **Theorem 15 (Properties of the matrix-induced inner product)** For every \\p \times p\\ symmetric positive definite matrix \\\mathbf{A}\\, the function \\\left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{A}} = {\tilde{x}}^{\top} \mathbf{A} \tilde{y}\\ satisfies the four inner product axioms ([Definition 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#def-inner-product)): positivity, definiteness, linearity in the first slot, and symmetry. Thus \\(\mathbb{R}^p, \left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}})\\ is an inner product space ([Definition 2 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#def-inner-product-space)).
>
> Taking \\\mathbf{A} = \mathbf{I}\_p\\ recovers the standard dot product ([Example 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#exm-dot-product-inner-product)), while taking \\\mathbf{A} = \operatorname{diag}(c_1, \ldots, c_p)\\ recovers the weighted inner product ([Example 3 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#exm-weighted-inner-product)).
>
> Conversely, every inner product on \\\mathbb{R}^p\\ has this form for a unique symmetric positive definite matrix \\\mathbf{A}\\, whose \\(i, j)\\ entry is \\A\_{ij} = \left\langle \tilde{e}\_i, \tilde{e}\_j \right\rangle\\, where \\\tilde{e}\_1, \ldots, \tilde{e}\_p\\ are the standard basis vectors ([Definition 12 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)).

> **NOTE:**
>
> *Proof*.
>
> - **positivity**: \\\left\langle \tilde{x}, \tilde{x} \right\rangle\_{\mathbf{A}} = {\tilde{x}}^{\top}\mathbf{A}\tilde{x}\ge 0\\ for all \\\tilde{x}\in \mathbb{R}^p\\, because \\\mathbf{A}\\ is positive definite ([Definition 20](#def-positive-definite));
> - **definiteness**: \\\left\langle \tilde{x}, \tilde{x} \right\rangle\_{\mathbf{A}} = 0\\ if and only if \\\tilde{x}= \tilde{0}\_{p \times 1}\\, by definition of a positive definite matrix ([Definition 20](#def-positive-definite));
> - **linearity in the first slot**: for all \\\tilde{x}, \tilde{y}, \tilde{z} \in \mathbb{R}^p\\ and real numbers \\a, b\\, \\ \begin{aligned} \left\langle a\\\tilde{x}+ b\\\tilde{y}, \tilde{z} \right\rangle\_{\mathbf{A}} &= {(a\\\tilde{x}+ b\\\tilde{y})}^{\top}\\\mathbf{A}\tilde{z} && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}} \text{)} \\ &= (a\\{\tilde{x}}^{\top} + b\\{\tilde{y}}^{\top})\\\mathbf{A}\tilde{z} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-sum}{\text{Theorem~15 in Matrices}}\text{, }\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{, }\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \\ &= a\\{\tilde{x}}^{\top}\mathbf{A}\tilde{z} + b\\{\tilde{y}}^{\top}\mathbf{A}\tilde{z} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-distrib}{\text{Theorem~6 in Matrices}}\text{)} \\ &= a\\\left\langle \tilde{x}, \tilde{z} \right\rangle\_{\mathbf{A}} + b\\\left\langle \tilde{y}, \tilde{z} \right\rangle\_{\mathbf{A}} && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}} \text{)} \end{aligned} \\
> - **symmetry**: because \\{\tilde{y}}^{\top}\mathbf{A}\tilde{x}\\ is a \\1 \times 1\\ scalar and \\\mathbf{A}\\ is symmetric (\\{\mathbf{A}}^{\top} = \mathbf{A}\\), \\ \begin{aligned} \left\langle \tilde{y}, \tilde{x} \right\rangle\_{\mathbf{A}} &= {\tilde{y}}^{\top}\mathbf{A}\tilde{x} && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}} \text{)} \\ &= {\mathopen{}\left({\tilde{y}}^{\top}\mathbf{A}\tilde{x}\right)\mathclose{}}^{\top} && \text{(a scalar equals its transpose)} \\ &= {\tilde{x}}^{\top}{\mathbf{A}}^{\top}\tilde{y} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{, twice)} \\ &= {\tilde{x}}^{\top}\mathbf{A}\tilde{y} && \text{(\$\mathbf{A}\$ is symmetric)} \\ &= \left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{A}} && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\mathbf{A}} \text{)} \end{aligned} \\
>
> For the converse, let \\\left\langle \cdot, \cdot \right\rangle\\ be any inner product on \\\mathbb{R}^p\\. Any vectors \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\ can be written in the standard basis as \\\tilde{x}= \sum\_{i=1}^px_i\\\tilde{e}\_i\\ and \\\tilde{y}= \sum\_{j=1}^py_j\\\tilde{e}\_j\\ ([Definition 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-basis), [Definition 12 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)). By linearity in both slots ([Remark 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#rem-inner-product-other-sources)):
>
> \\ \begin{aligned} \left\langle \tilde{x}, \tilde{y} \right\rangle &= \left\langle \sum\_{i=1}^px_i\\\tilde{e}\_i, \sum\_{j=1}^py_j\\\tilde{e}\_j \right\rangle && \text{(expand in the standard basis)} \\ &= \sum\_{i=1}^p\sum\_{j=1}^px_i y_j\\\left\langle \tilde{e}\_i, \tilde{e}\_j \right\rangle && \text{(linearity in both slots)} \\ &= \sum\_{i=1}^px_i \sum\_{j=1}^pA\_{ij} y_j && \text{(define } A\_{ij} \stackrel{\text{def}}{=}\left\langle \tilde{e}\_i, \tilde{e}\_j \right\rangle \text{)} \\ &= {\tilde{x}}^{\top} \mathbf{A} \tilde{y}. && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \end{aligned} \\
>
> Symmetry of \\\left\langle \cdot, \cdot \right\rangle\\ ensures
>
> \\ \begin{aligned} A\_{ji} &= \left\langle \tilde{e}\_j, \tilde{e}\_i \right\rangle \\ &= \left\langle \tilde{e}\_i, \tilde{e}\_j \right\rangle \\ &= A\_{ij}, \end{aligned} \\
>
> so \\\mathbf{A}\\ is symmetric ([Definition 3](#def-symmetric-matrix)). For any \\\tilde{x}\neq \tilde{0}\\, \\{\tilde{x}}^{\top}\mathbf{A}\tilde{x}= \left\langle \tilde{x}, \tilde{x} \right\rangle \> 0\\ by positivity and definiteness of the inner product, so \\\mathbf{A}\\ is positive definite ([Definition 20](#def-positive-definite)).
>
> For uniqueness, if another matrix \\\mathbf{B}\\ satisfies \\\left\langle \tilde{x}, \tilde{y} \right\rangle = {\tilde{x}}^{\top}\mathbf{B}\tilde{y}\\ for all \\\tilde{x}, \tilde{y}\\, evaluating at \\\tilde{x}= \tilde{e}\_i\\ and \\\tilde{y}= \tilde{e}\_j\\ gives
>
> \\ \begin{aligned} B\_{ij} &= {\tilde{e}\_i}^{\top}\mathbf{B}\tilde{e}\_j \\ &= \left\langle \tilde{e}\_i, \tilde{e}\_j \right\rangle \\ &= A\_{ij}, \end{aligned} \\
>
> so \\\mathbf{B} = \mathbf{A}\\.

> **NOTE:**
>
> **Example 31 (Checking the inner product axioms, and recovering the matrix from the inner product)** Take \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ from [Example 30](#exm-matrix-induced-inner-product), the vectors \\\tilde{x}= (1, 2)\\, \\\tilde{y}= (3, -1)\\ and \\\tilde{z} = (0, 4)\\, and the numbers \\a = 2\\ and \\b = -3\\. The code computes both sides of each axiom in [Theorem 15](#thm-matrix-induced-inner-product), and then the numbers \\\left\langle \tilde{e}\_i, \tilde{e}\_j \right\rangle\_{\mathbf{A}}\\ for the standard basis vectors.
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
> The inner product of \\\tilde{x}\\ with itself is 14, which is positive. The two orders give the same number, 7 and 7. Both sides of the linearity axiom equal 28. The matrix of numbers \\\left\langle \tilde{e}\_i, \tilde{e}\_j \right\rangle\_{\mathbf{A}}\\ is equal to \\\mathbf{A}\\, as the converse in [Theorem 15](#thm-matrix-induced-inner-product) says.

> **NOTE:**
>
> *Remark 19* (Inner product spaces in machine learning). In machine learning and statistics, choosing or learning an inner product space tailors geometric notions of distance, angle, and projection to the structure of the data:
>
> 1.  **Mahalanobis metric and whitening**: Standard Euclidean distance treats all coordinate axes identically, ignoring feature correlations and variance differences. If data features have a symmetric positive definite covariance matrix \\\mathbf{\Sigma}\\ ([Definition 20](#def-positive-definite)), the precision matrix \\\mathbf{A} = \mathbf{\Sigma}^{-1}\\ ([Theorem 14](#thm-pd-inverse)) defines the Mahalanobis inner product \\\left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{\Sigma}^{-1}} = {\tilde{x}}^{\top} \mathbf{\Sigma}^{-1} \tilde{y}\\. The induced distance \\d\_{\mathbf{\Sigma}^{-1}}(\tilde{x}, \tilde{y}) = \sqrt{{(\tilde{x}- \tilde{y})}^{\top}\mathbf{\Sigma}^{-1}(\tilde{x}- \tilde{y})}\\ measures statistical distance normalized by variance along each principal direction. Factoring \\\mathbf{\Sigma}^{-1} = {\mathbf{W}}^{\top}\mathbf{W}\\ (via Cholesky or spectral decomposition), this inner product corresponds to the Euclidean dot product of whitened coordinates \\\tilde{z} = \mathbf{W}\tilde{x}\\: \\\left\langle \tilde{x}, \tilde{y} \right\rangle\_{\mathbf{\Sigma}^{-1}} = (\mathbf{W}\tilde{x}) \cdot (\mathbf{W}\tilde{y})\\.
>
> 2.  **The kernel trick and reproducing kernel Hilbert spaces (RKHS)**: Algorithms such as support vector machines (SVMs), kernel ridge regression, and Gaussian processes depend on training vectors solely through pairwise inner products \\\left\langle \tilde{x}\_i, \tilde{x}\_j \right\rangle\\. By mapping data into a higher- or infinite-dimensional inner product space via a feature map \\\phi: \mathbb{R}^p \to \mathcal{H}\\, the kernel trick replaces the computation of \\\phi(\tilde{x}\_i)\\ with an evaluation of a positive definite kernel function: \\ k(\tilde{x}\_i, \tilde{x}\_j) \stackrel{\text{def}}{=}\left\langle \phi(\tilde{x}\_i), \phi(\tilde{x}\_j) \right\rangle\_{\mathcal{H}}. \\ Mercer’s theorem guarantees that every symmetric positive definite kernel function implicitly defines a valid inner product space \\\mathcal{H}\\ (a reproducing kernel Hilbert space) without requiring explicit coordinate representations.
>
> 3.  **Embeddings and cosine similarity**: In natural language processing and recommendation systems, data items are embedded as vectors in high-dimensional representations. The angle between embeddings captures semantic similarity through cosine similarity ([Definition 8 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#def-cosine-similarity)): \\ \operatorname{cossim}(\tilde{x}, \tilde{y}) = \frac{\left\langle \tilde{x}, \tilde{y} \right\rangle}{\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}}. \\ When embedding vectors are normalized to unit Euclidean norm (\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = 1\\ and \\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} = 1\\), cosine similarity equals the inner product \\\left\langle \tilde{x}, \tilde{y} \right\rangle\\. Similarly, the self-attention mechanism in Transformers computes query-key alignment scores through scaled inner products \\\tilde{q} \cdot \tilde{k} / \sqrt{d_k}\\.
>
> 4.  **Weighted and generalized least squares**: In linear regression \\\tilde{y}\approx \mathbf{X}\tilde{\beta}\\, when observation errors have unequal variances or known correlations with positive definite covariance matrix \\\mathbf{\Omega}\\, ordinary least squares is inefficient. Generalized least squares minimizes the residual norm in the inner product space induced by \\\mathbf{W} = \mathbf{\Omega}^{-1}\\: \\ \min\_{\tilde{\beta}} \mathopen{}\left\lVert\tilde{y}- \mathbf{X}\tilde{\beta}\right\rVert\mathclose{}\_{\mathbf{W}}^2 = \min\_{\tilde{\beta}} \left\langle \tilde{y}- \mathbf{X}\tilde{\beta}, \tilde{y}- \mathbf{X}\tilde{\beta} \right\rangle\_{\mathbf{W}}. \\

## 6 Determinants

> **NOTE:**
>
> **Definition 22 (Determinant)** The **determinant** of a \\p \times p\\ matrix \\\mathbf{A}\\ with entries \\a\_{ij}\\, written \\\det(\mathbf{A})\\ or \\\mathopen{}\left\|\mathbf{A}\right\|\mathclose{}\\, is the number defined recursively in \\p\\:
>
> - For \\p = 1\\, \\\det(\mathbf{A}) = a\_{11}\\.
> - For \\p \ge 2\\, \\ \det(\mathbf{A}) = \sum\_{j=1}^p(-1)^{1+j}\\ a\_{1j} \det\mathopen{}\left(\mathbf{A}\_{(1j)}\right)\mathclose{}, \\ where \\\mathbf{A}\_{(1j)}\\ is the \\(p-1) \times (p-1)\\ matrix left after deleting row \\1\\ and column \\j\\ of \\\mathbf{A}\\.

> **NOTE:**
>
> **Example 32 (Determinant of a \\2 \times 2\\ matrix)** For \\\mathbf{A} = \begin{bmatrix} a & b \\ c & d \end{bmatrix}\\, deleting row 1 and column 1 leaves \\\begin{bmatrix} d \end{bmatrix}\\, and deleting row 1 and column 2 leaves \\\begin{bmatrix} c \end{bmatrix}\\. So:
>
> \\ \begin{aligned} \det(\mathbf{A}) &= (-1)^{1+1}\\ a \det\mathopen{}\left(\begin{bmatrix} d \end{bmatrix}\right)\mathclose{} + (-1)^{1+2}\\ b \det\mathopen{}\left(\begin{bmatrix} c \end{bmatrix}\right)\mathclose{} && \text{(definition, } p = 2 \text{)} \\ &= a d - b c && \text{(definition, } p = 1 \text{)} \end{aligned} \\
>
> For example,
>
> \\ \begin{aligned} \det\mathopen{}\left(\begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\right)\mathclose{} &= 2 \cdot 2 - 1 \cdot 1 \\ &= 3. \end{aligned} \\

> **NOTE:**
>
> *Remark 20* (Cofactor expansion). The recursive formula in [Definition 22](#def-determinant) is the *cofactor expansion* along the first row. Other sources define the determinant as a sum over all orderings of the columns and derive this expansion from it; the two definitions agree ([Banerjee and Roy 2014](#ref-banerjee2014linear)).
>
> Each ordering picks one entry from each row, from the column that the ordering assigns to that row, and multiplies them. Its sign is \\+1\\ if the ordering takes an even number of swaps of two columns to reach from \\(1, 2, \ldots, p)\\, and \\-1\\ if it takes an odd number.
>
> For \\p = 2\\, the columns have two orderings. The ordering \\(1, 2)\\ keeps each column in place, picks the entries \\a\_{11}\\ and \\a\_{22}\\, and has sign \\+1\\. The ordering \\(2, 1)\\ swaps the two columns, picks the entries \\a\_{12}\\ and \\a\_{21}\\, and has sign \\-1\\. The sum \\a\_{11} a\_{22} - a\_{12} a\_{21}\\ is the value \\a d - b c\\ from [Example 32](#exm-determinant).

See also <https://en.wikipedia.org/wiki/Determinant>.

> **TIP:**
>
> Chapter 6 of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown shows the geometric meaning of the determinant:
>
> - [The determinant](https://www.youtube.com/watch?v=Ip3X9LOh2dk) shows how the determinant measures the factor by which a linear transformation scales areas and volumes, and why a zero determinant corresponds to compressing space into a lower dimension.

> **NOTE:**
>
> **Theorem 16 (Determinant of a diagonal matrix)** The determinant ([Definition 22](#def-determinant)) of a \\p \times p\\ diagonal matrix ([Definition 4](#def-diagonal-matrix)) is the product of its diagonal entries:
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
> **Example 33 (Determinant of a scaled identity matrix)** For a number \\c\\, \\c\\\mathbf{I}\_p\\ is diagonal with every diagonal entry equal to \\c\\, so \\\det(c\\\mathbf{I}\_p) = c^p\\. In particular, \\\det(\mathbf{I}\_p) = 1\\.

> **NOTE:**
>
> **Theorem 17 (Determinant of a product)** For \\p \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\,
>
> \\ \det(\mathbf{A}\mathbf{B}) = \det(\mathbf{A}) \det(\mathbf{B}). \\

> **NOTE:**
>
> **Example 34 (Checking the product rule)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ and \\\mathbf{B} = \begin{bmatrix} 1 & 0 \\ 3 & 1 \end{bmatrix}\\, [Example 32](#exm-determinant) gives
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
> *Remark 21* (An example is not a proof). [Example 34](#exm-det-product) checks [Theorem 17](#thm-det-product) for one pair of \\2 \times 2\\ matrices, which shows the theorem holds there but does not prove it for every pair. The proof needs properties of the determinant that these notes don’t develop; see Banerjee and Roy ([2014](#ref-banerjee2014linear)).

See also <https://en.wikipedia.org/wiki/Determinant>.

> **NOTE:**
>
> **Theorem 18 (The determinant of a symmetric matrix is the product of its eigenvalues)** Let \\\mathbf{A}\\ be a \\p \times p\\ symmetric matrix with real entries, with eigendecomposition \\\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([Definition 17](#def-eigendecomposition)) and eigenvalues \\\lambda_1, \ldots, \lambda_p\\ on the diagonal of \\\mathbf{\Lambda}\\. Then
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
> The product steps are [Theorem 17](#thm-det-product), the orthogonality step is [Definition 10](#def-orthogonal-matrix), and the identity and diagonal steps are [Theorem 16](#thm-det-diagonal) and [Example 33](#exm-det-diagonal).

> **NOTE:**
>
> **Corollary 2 (A positive definite matrix has a positive determinant)** If \\\mathbf{A}\\ is positive definite ([Definition 20](#def-positive-definite)), then \\\det(\mathbf{A}) \> 0\\.

> **NOTE:**
>
> *Proof*. By [Theorem 13](#thm-definite-eigenvalues), every eigenvalue of \\\mathbf{A}\\ is positive, so their product, which is \\\det(\mathbf{A})\\ by [Theorem 18](#thm-det-eigenvalues), is positive.

> **NOTE:**
>
> **Example 35 (Two ways to the same determinant)** \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ has eigenvalues \\3\\ and \\1\\ ([Example 21](#exm-eigenvalue)), so [Theorem 18](#thm-det-eigenvalues) gives
>
> \\ \begin{aligned} \det(\mathbf{A}) &= 3 \cdot 1 \\ &= 3, \end{aligned} \\
>
> matching \\2 \cdot 2 - 1 \cdot 1 = 3\\ from [Example 32](#exm-determinant).

Back to top

## References

Banerjee, Sudipto, and Anindya Roy. 2014. *Linear Algebra and Matrix Analysis for Statistics*. Vol. 181. Crc Press Boca Raton. <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>.
