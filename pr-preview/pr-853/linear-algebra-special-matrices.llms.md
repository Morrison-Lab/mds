# Special Matrices, Quadratic Forms and Trace

Code

Published

Last modified: 2026-11-19 17:40:22 (PST)

# 1 Special Matrices

Some special matrices appeared earlier:

- the zero matrix ([Definition 7 in Matrices](linear-algebra-matrices.llms.md#def-zero-matrix)), in the section on matrix addition
- square matrices ([Definition 3 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-square-matrix)), in the section on square and identity matrices
- the identity matrix ([Definition 7 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-identity-matrix)), in that same section

> **NOTE:**
>
> **Definition 1 (Order of a square matrix)** The **order** of a square matrix ([Definition 3 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-square-matrix)) is its number of rows, which equals its number of columns.

> **NOTE:**
>
> **Example 1 (Orders of square matrices)** $\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$ has order $2$, and $[5]$ has order $1$. A $2 \times 3$ matrix has no order, since it is not square ([Example 5 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#exm-square-matrix)).

> **NOTE:**
>
> **Definition 2 (Matrix power)** For a square matrix $\mathbf{A}$ of order $p$ and a positive integer $k$, the $k$-th **power** of $\mathbf{A}$ is:
>
> $$\mathbf{A}^k = \underbrace{\mathbf{A}\,\mathbf{A}\cdots\mathbf{A}}_{k \text{ copies}}$$
>
> In particular, $\mathbf{A}^2 = \mathbf{A}\mathbf{A}$.

> **NOTE:**
>
> **Example 2 (Powers of a** $2 \times 2$ matrix) Let $\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}$. Then
>
> $$\begin{aligned}
> \mathbf{A}^2
> &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 1 + 1 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 0 & 0 \cdot 1 + 1 \cdot 1 \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix},
> && \text{(multiply and add)}
> \\
> \mathbf{A}^3 = \mathbf{A}^2 \mathbf{A}
> &= \begin{bmatrix} 1 \cdot 1 + 2 \cdot 0 & 1 \cdot 1 + 2 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 0 & 0 \cdot 1 + 1 \cdot 1 \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \begin{bmatrix} 1 & 3 \\ 0 & 1 \end{bmatrix}.
> && \text{(multiply and add)}
> \end{aligned}$$
>
> A $2 \times 3$ matrix $\mathbf{B}$ is not square ([Definition 3 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-square-matrix)), so $\mathbf{B}^2$ is not defined; indeed $\mathbf{B} \mathbf{B}$ would multiply a matrix with $3$ columns by one with $2$ rows, which [Definition 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult) does not allow.

> **NOTE:**
>
> **Definition 3 (Symmetric matrix)** A square matrix $\mathbf{A}$ is **symmetric** [\[1\]](#ref-wikipedia_symmetric_matrix) if ${\mathbf{A}}^{\top} = \mathbf{A}$, i.e., $a_{ij} = a_{ji}$ for all $i$ and $j$.

> **NOTE:**
>
> *Remark 1* (Symmetric matrices in statistics). Covariance matrices are symmetric: entry $(i, j)$ of the covariance matrix of a random vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{Y}}\vphantom{Y}}$ is ${\operatorname{Cov}\mathopen{}\left(Y_i, Y_j\right)\mathclose{}}$, and ${\operatorname{Cov}\mathopen{}\left(Y_i, Y_j\right)\mathclose{}} = {\operatorname{Cov}\mathopen{}\left(Y_j, Y_i\right)\mathclose{}}$. For example, if ${\operatorname{Var}\mathopen{}\left(Y_1\right)\mathclose{}} = 4$, ${\operatorname{Var}\mathopen{}\left(Y_2\right)\mathclose{}} = 9$, and ${\operatorname{Cov}\mathopen{}\left(Y_1, Y_2\right)\mathclose{}} = 1$, the covariance matrix of $(Y_1, Y_2)$ is
>
> $$\begin{bmatrix} 4 & 1 \\ 1 & 9 \end{bmatrix}.$$

> **NOTE:**
>
> **Example 3 (A matrix that is not symmetric)** $\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$ is not symmetric:
>
> $$\begin{aligned}
> a_{12} &= 2 \\
> &\ne 3 \\
> &= a_{21}.
> \end{aligned}$$

> **NOTE:**
>
> **Definition 4 (Diagonal matrix)** A square matrix $\mathbf{D}$ is a **diagonal matrix** [\[2\]](#ref-wikipedia_diagonal_matrix) if all off-diagonal entries are zero: $d_{ij} = 0$ whenever $i \neq j$:
>
> $$\mathbf{D} =
> \begin{bmatrix}
> d_1    & 0      & \cdots & 0      \\
> 0      & d_2    & \cdots & 0      \\
> \vdots & \vdots & \ddots & \vdots \\
> 0      & 0      & \cdots & d_p
> \end{bmatrix}$$

> **NOTE:**
>
> *Remark 2* ($\operatorname{diag}$ notation). For numbers $d_1, \ldots, d_p$, $\operatorname{diag}(d_1, \ldots, d_p)$ is the $p \times p$ diagonal matrix with diagonal entries $d_1, \ldots, d_p$. For example,
>
> $$\operatorname{diag}(2, 5) = \begin{bmatrix} 2 & 0 \\ 0 & 5 \end{bmatrix},$$
>
> and the $p \times p$ identity matrix is $\mathbf{I}_p = \operatorname{diag}(1, \ldots, 1)$.

> **NOTE:**
>
> **Example 4 (A matrix that is not diagonal)** $\mathbf{D} = \begin{bmatrix} 2 & 1 \\ 0 & 5 \end{bmatrix}$ is not diagonal: its off-diagonal entry $d_{12} = 1 \ne 0$.

> **NOTE:**
>
> **Definition 5 (Matrix inverse)** For a square $p \times p$ matrix $\mathbf{A}$, the **inverse** $\mathbf{A}^{-1}$ (if it exists) is the unique matrix satisfying:
>
> $$\begin{aligned}
> \mathbf{A}\,\mathbf{A}^{-1}
> &= \mathbf{A}^{-1}\,\mathbf{A} \\
> &= \mathbf{I}_p
> \end{aligned}$$

> **NOTE:**
>
> **Definition 6 (Invertible matrix, non-singular matrix)** A $p \times p$ matrix $\mathbf{A}$ is **invertible** [\[3\]](#ref-wikipedia_invertible_matrix) (or **non-singular**) if some $p \times p$ matrix $\mathbf{B}$ satisfies
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B}
> &= \mathbf{B}\mathbf{A} \\
> &= \mathbf{I}_p,
> \end{aligned}$$
>
> where $\mathbf{I}_p$ is the identity matrix ([Definition 7 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-identity-matrix)). A square matrix that is not invertible is **singular**.

> **NOTE:**
>
> **Example 5 (An invertible matrix and a singular one)** The matrix $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}$ is invertible, with $\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}$: multiplying out gives
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{A}^{-1} &= \mathbf{A}^{-1}\mathbf{A} \\
> &= \mathbf{I}_2.
> \end{aligned}$$
>
> The matrix $\mathbf{M} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$ is singular: for any $2 \times 2$ matrix $\mathbf{C}$, the two rows of $\mathbf{M}\mathbf{C}$ are equal, so $\mathbf{M}\mathbf{C}$ can never be $\mathbf{I}_2$, whose two rows differ.

> **NOTE:**
>
> *Remark 3* (Invertible matrices and inverses). Let $\mathbf{A}$ be a $p \times p$ matrix, and suppose that two $p \times p$ matrices $\mathbf{B}$ and $\mathbf{C}$ satisfy
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B} &= \mathbf{B}\mathbf{A} \\
> &= \mathbf{I}_p
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{C} &= \mathbf{C}\mathbf{A} \\
> &= \mathbf{I}_p.
> \end{aligned}$$
>
> Then
>
> $$\begin{aligned}
> \mathbf{B}
> &= \mathbf{B}\,\mathbf{I}_p
> && \text{(identity matrix)}
> \\
> &= \mathbf{B}(\mathbf{A}\mathbf{C})
> && \text{(} \mathbf{A}\mathbf{C} = \mathbf{I}_p \text{)}
> \\
> &= (\mathbf{B}\mathbf{A})\mathbf{C}
> && \text{(matrix multiplication is associative)}
> \\
> &= \mathbf{I}_p\,\mathbf{C}
> && \text{(} \mathbf{B}\mathbf{A} = \mathbf{I}_p \text{)}
> \\
> &= \mathbf{C}
> && \text{(identity matrix)}
> \end{aligned}$$
>
> The steps use [Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc) and [Theorem 4 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-identity). Since $\mathbf{B} = \mathbf{C}$, at most one matrix satisfies these equations, which is the uniqueness that [Definition 5](#def-matrix-inverse) asserts. When $\mathbf{A}$ is invertible, the matrix $\mathbf{B}$ in [Definition 6](#def-invertible-matrix) is therefore the inverse $\mathbf{A}^{-1}$ of $\mathbf{A}$, and $\mathbf{A}$ is invertible exactly when it has an inverse. For example, for $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}$ in [Example 5](#exm-invertible-matrix), $\begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}$ is the only $2 \times 2$ matrix $\mathbf{B}$ with
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B} &= \mathbf{B}\mathbf{A} \\
> &= \mathbf{I}_2,
> \end{aligned}$$
>
> so it is $\mathbf{A}^{-1}$.

> **NOTE:**
>
> **Theorem 1 (Inverse of a product)** If $\mathbf{A}$ and $\mathbf{B}$ are invertible $p \times p$ matrices, then $\mathbf{A}\mathbf{B}$ is invertible, and
>
> $$(\mathbf{A}\mathbf{B})^{-1} = \mathbf{B}^{-1}\mathbf{A}^{-1}$$

> **NOTE:**
>
> *Proof*. Multiply $\mathbf{A}\mathbf{B}$ by the candidate inverse on the right:
>
> $$\begin{aligned}
> (\mathbf{A}\mathbf{B})(\mathbf{B}^{-1}\mathbf{A}^{-1})
> &= \mathbf{A}(\mathbf{B}\mathbf{B}^{-1})\mathbf{A}^{-1}
> && \text{(matrix multiplication is associative)}
> \\
> &= \mathbf{A}\,\mathbf{I}_p\,\mathbf{A}^{-1}
> && \text{(definition of } \mathbf{B}^{-1} \text{)}
> \\
> &= \mathbf{A}\mathbf{A}^{-1}
> && \text{(identity matrix)}
> \\
> &= \mathbf{I}_p
> && \text{(definition of } \mathbf{A}^{-1} \text{)}
> \end{aligned}$$
>
> and on the left:
>
> $$\begin{aligned}
> (\mathbf{B}^{-1}\mathbf{A}^{-1})(\mathbf{A}\mathbf{B})
> &= \mathbf{B}^{-1}(\mathbf{A}^{-1}\mathbf{A})\mathbf{B}
> && \text{(matrix multiplication is associative)}
> \\
> &= \mathbf{B}^{-1}\,\mathbf{I}_p\,\mathbf{B}
> && \text{(definition of } \mathbf{A}^{-1} \text{)}
> \\
> &= \mathbf{B}^{-1}\mathbf{B}
> && \text{(identity matrix)}
> \\
> &= \mathbf{I}_p
> && \text{(definition of } \mathbf{B}^{-1} \text{)}
> \end{aligned}$$
>
> So $\mathbf{B}^{-1}\mathbf{A}^{-1}$ satisfies [Definition 5](#def-matrix-inverse) for $\mathbf{A}\mathbf{B}$. The steps use [Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc) and [Theorem 4 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-identity).

> **NOTE:**
>
> **Theorem 2 (Inverse of a transpose)** If $\mathbf{A}$ is an invertible $p \times p$ matrix, then ${\mathbf{A}}^{\top}$ is invertible, and
>
> $${\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}}^{-1} = {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}$$

> **NOTE:**
>
> *Proof*. Multiply ${\mathbf{A}}^{\top}$ by the candidate inverse on each side:
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top}\,{\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}
> &= {\mathopen{}\left(\mathbf{A}^{-1}\mathbf{A}\right)\mathclose{}}^{\top}
> && \text{(transpose of a product)}
> \\
> &= {\mathbf{I}_p}^{\top}
> && \text{(definition of } \mathbf{A}^{-1} \text{)}
> \\
> &= \mathbf{I}_p
> && \text{(} \mathbf{I}_p \text{ is symmetric)}
> \end{aligned}$$
>
> $$\begin{aligned}
> {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}\,{\mathbf{A}}^{\top}
> &= {\mathopen{}\left(\mathbf{A}\mathbf{A}^{-1}\right)\mathclose{}}^{\top}
> && \text{(transpose of a product)}
> \\
> &= {\mathbf{I}_p}^{\top}
> && \text{(definition of } \mathbf{A}^{-1} \text{)}
> \\
> &= \mathbf{I}_p
> && \text{(} \mathbf{I}_p \text{ is symmetric)}
> \end{aligned}$$
>
> So ${\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}$ satisfies [Definition 5](#def-matrix-inverse) for ${\mathbf{A}}^{\top}$. The first step of each display is [Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product).

> **NOTE:**
>
> **Example 6 (Inverting a transpose)** For $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}$, [Example 5](#exm-invertible-matrix) gives $\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}$, so [Theorem 2](#thm-inverse-transpose) says
>
> $$\begin{aligned}
> {\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}}^{-1}
> &= {\mathopen{}\left(\begin{bmatrix} 2 & 0 \\ 1 & 1 \end{bmatrix}\right)\mathclose{}}^{-1} \\
> &= {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top} \\
> &= \begin{bmatrix} 0.5 & 0 \\ -0.5 & 1 \end{bmatrix},
> \end{aligned}$$
>
> and multiplying $\begin{bmatrix} 2 & 0 \\ 1 & 1 \end{bmatrix}\begin{bmatrix} 0.5 & 0 \\ -0.5 & 1 \end{bmatrix}$ out does give $\mathbf{I}_2$.

> **NOTE:**
>
> **Corollary 1 (The inverse of a symmetric matrix is symmetric)** If $\mathbf{A}$ is symmetric and invertible, then $\mathbf{A}^{-1}$ is symmetric.

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> {\mathopen{}\left(\mathbf{A}^{-1}\right)\mathclose{}}^{\top}
> &= {\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}}^{-1}
> && \text{(inverse of a transpose)}
> \\
> &= \mathbf{A}^{-1}
> && \text{(} \mathbf{A} \text{ is symmetric)}
> \end{aligned}$$
>
> The first step is [Theorem 2](#thm-inverse-transpose).

> **NOTE:**
>
> **Example 7 (Inverting a symmetric matrix)** $\mathbf{S} = \begin{bmatrix} 2 & 1 \\ 1 & 1 \end{bmatrix}$ is symmetric, and $\mathbf{S}^{-1} = \begin{bmatrix} 1 & -1 \\ -1 & 2 \end{bmatrix}$ is symmetric too, as [Corollary 1](#cor-inverse-symmetric) says.

> **NOTE:**
>
> **Theorem 3 (An invertible factor can be canceled)** Let $\mathbf{A}$ be an invertible $p \times p$ matrix ([Definition 6](#def-invertible-matrix)), and let $\mathbf{B}$ and $\mathbf{C}$ be $p \times n$ matrices. If $\mathbf{A}\mathbf{B} = \mathbf{A}\mathbf{C}$, then $\mathbf{B} = \mathbf{C}$.

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> \mathbf{B}
> &= \mathbf{I}_p\,\mathbf{B}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= (\mathbf{A}^{-1}\mathbf{A})\,\mathbf{B}
> && \text{(}\href{#def-matrix-inverse}{\text{Definition~5}}\text{)}
> \\
> &= \mathbf{A}^{-1}(\mathbf{A}\mathbf{B})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A}^{-1}(\mathbf{A}\mathbf{C})
> && \text{(} \mathbf{A}\mathbf{B} = \mathbf{A}\mathbf{C} \text{)}
> \\
> &= (\mathbf{A}^{-1}\mathbf{A})\,\mathbf{C}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{I}_p\,\mathbf{C}
> && \text{(}\href{#def-matrix-inverse}{\text{Definition~5}}\text{)}
> \\
> &= \mathbf{C}.
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> $\square$

> **NOTE:**
>
> **Corollary 2 (An invertible factor can be canceled on the right)** Let $\mathbf{A}$ be an invertible $p \times p$ matrix, and let $\mathbf{B}$ and $\mathbf{C}$ be $n \times p$ matrices. If $\mathbf{B}\mathbf{A} = \mathbf{C}\mathbf{A}$, then $\mathbf{B} = \mathbf{C}$.
>
> The proof of [Theorem 3](#thm-invertible-cancel) works with every product reversed: multiply both sides on the right by $\mathbf{A}^{-1}$.

> **NOTE:**
>
> **Example 8 (Solving for a matrix by canceling an invertible factor)** Let $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}$, which is invertible with $\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}$ ([Example 5](#exm-invertible-matrix)). If $\mathbf{A}\mathbf{B} = \begin{bmatrix} 3 \\ 1 \end{bmatrix}$ for a $2 \times 1$ matrix $\mathbf{B}$, then multiplying both sides on the left by $\mathbf{A}^{-1}$, as in the proof of [Theorem 3](#thm-invertible-cancel),
>
> $$\begin{aligned}
> \mathbf{B}
> &= \mathbf{A}^{-1} \begin{bmatrix} 3 \\ 1 \end{bmatrix} \\
> &= \begin{bmatrix} 1 \\ 1 \end{bmatrix}.
> \end{aligned}$$
>
> Check: $\mathbf{A} \begin{bmatrix} 1 \\ 1 \end{bmatrix} = \begin{bmatrix} 2 + 1 \\ 0 + 1 \end{bmatrix} = \begin{bmatrix} 3 \\ 1 \end{bmatrix}$.

> **NOTE:**
>
> **Example 9 (A product of two nonzero matrices can be the zero matrix)** With
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix},$$
>
> neither matrix is the zero matrix ([Definition 7 in Matrices](linear-algebra-matrices.llms.md#def-zero-matrix)), but
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B}
> &= \begin{bmatrix} 1 \cdot 0 + 0 \cdot 0 & 1 \cdot 0 + 0 \cdot 1 \\ 0 \cdot 0 + 0 \cdot 0 & 0 \cdot 0 + 0 \cdot 1 \end{bmatrix} \\
> &= \mathbf{0}_{2 \times 2}.
> \end{aligned}$$
>
> For numbers, $ab = 0$ forces $a = 0$ or $b = 0$. For matrices it does not.
>
> Because $\mathbf{A}\mathbf{0}_{2 \times 2} = \mathbf{0}_{2 \times 2} = \mathbf{A}\mathbf{B}$ while $\mathbf{B} \neq \mathbf{0}_{2 \times 2}$, the factor $\mathbf{A}$ cannot be canceled from $\mathbf{A}\mathbf{B} = \mathbf{A}\mathbf{0}_{2 \times 2}$. This does not contradict [Theorem 3](#thm-invertible-cancel), because $\mathbf{A}$ is singular: its second row is zero, so $\mathbf{A}\mathbf{C}$ has a zero second row for every $2 \times 2$ matrix $\mathbf{C}$, and $\mathbf{A}\mathbf{C}$ can never be $\mathbf{I}_2$.

> **NOTE:**
>
> *Remark 4* (Matrix arithmetic compared with scalar arithmetic). **Sums and differences.** Matrix addition has every property that addition of numbers has: it is commutative ([Theorem 3 in Matrices](linear-algebra-matrices.llms.md#thm-matadd-commutative)), associative ([Theorem 4 in Matrices](linear-algebra-matrices.llms.md#thm-matadd-assoc)), has the zero matrix as its identity ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matadd-identity)), and gives each matrix a negative ([Theorem 6 in Matrices](linear-algebra-matrices.llms.md#thm-matadd-inverse)). The only new condition is that $\mathbf{A} + \mathbf{B}$ is defined only when $\mathbf{A}$ and $\mathbf{B}$ have the same dimensions.
>
> **Products.** Matrix multiplication keeps three properties of multiplication of numbers: it is associative ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc)), it is distributive over addition ([Theorem 2 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-distrib)), and it has an identity, $\mathbf{I}_p$ ([Theorem 4 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-identity)). It differs from multiplication of numbers in four ways:
>
> - $\mathbf{A}\mathbf{B}$ is defined only when the number of columns of $\mathbf{A}$ equals the number of rows of $\mathbf{B}$ ([Definition 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult)).
> - It is not commutative: $\mathbf{A}\mathbf{B} \neq \mathbf{B}\mathbf{A}$ in general ([Remark 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#rem-matmul-not-commutative)).
> - A nonzero square matrix need not have an inverse ([Example 5](#exm-invertible-matrix)).
> - $\mathbf{A}\mathbf{B} = \mathbf{0}$ can hold with $\mathbf{A} \neq \mathbf{0}$ and $\mathbf{B} \neq \mathbf{0}$ ([Example 9](#exm-matmul-zero-divisors)), so a factor cannot be canceled from $\mathbf{A}\mathbf{B} = \mathbf{A}\mathbf{C}$ unless it is invertible ([Theorem 3](#thm-invertible-cancel)).

> **NOTE:**
>
> **Definition 7 (Idempotent matrix)** A square matrix $\mathbf{A}$ is **idempotent** [\[4\]](#ref-wikipedia_idempotent_matrix) if
>
> $$\mathbf{A}^2 = \mathbf{A}$$

> **NOTE:**
>
> **Example 10 (An idempotent matrix)** For $\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$,
>
> $$\begin{aligned}
> \mathbf{P}^2
> &= \begin{bmatrix} 1 \cdot 1 + 0 \cdot 0 & 1 \cdot 0 + 0 \cdot 0 \\ 0 \cdot 1 + 0 \cdot 0 & 0 \cdot 0 + 0 \cdot 0 \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix} \\
> &= \mathbf{P},
> && \text{(multiply and add)}
> \end{aligned}$$
>
> so $\mathbf{P}$ is idempotent.

> **NOTE:**
>
> **Example 11 (A matrix that is not idempotent)** For $\mathbf{A} = \begin{bmatrix} 2 & 0 \\ 0 & 0 \end{bmatrix}$,
>
> $$\begin{aligned}
> \mathbf{A}^2
> &= \begin{bmatrix} 2 \cdot 2 + 0 \cdot 0 & 2 \cdot 0 + 0 \cdot 0 \\ 0 \cdot 2 + 0 \cdot 0 & 0 \cdot 0 + 0 \cdot 0 \end{bmatrix} \\
> &= \begin{bmatrix} 4 & 0 \\ 0 & 0 \end{bmatrix} \\
> &\ne \mathbf{A},
> \end{aligned}$$
>
> so $\mathbf{A}$ is not idempotent.

> **NOTE:**
>
> **Definition 8 (Orthogonal projection matrix)** A square matrix $\mathbf{P}$ is an **orthogonal projection matrix** (also called an **orthogonal projector**) if it is both symmetric ([Definition 3](#def-symmetric-matrix)) and idempotent ([Definition 7](#def-idempotent-matrix)):
>
> $${\mathbf{P}}^{\top} = \mathbf{P}
> \qquad \text{and} \qquad
> \mathbf{P}^2 = \mathbf{P}$$

> **NOTE:**
>
> **Definition 9 (Oblique projection)** A square matrix is an **oblique projection** if it is idempotent ([Definition 7](#def-idempotent-matrix)) but not symmetric ([Definition 3](#def-symmetric-matrix)).

> **NOTE:**
>
> **Example 12 (An orthogonal projection and an oblique one)** $\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ is symmetric, and $\mathbf{P}^2 = \mathbf{P}$, so $\mathbf{P}$ is an orthogonal projection matrix; it maps $(v_1, v_2)$ to $(v_1, 0)$.
>
> $\mathbf{Q} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}$ is idempotent:
>
> $$\begin{aligned}
> \mathbf{Q}^2
> &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 1 + 1 \cdot 0 \\ 0 \cdot 1 + 0 \cdot 0 & 0 \cdot 1 + 0 \cdot 0 \end{bmatrix} \\
> &= \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix} \\
> &= \mathbf{Q},
> \end{aligned}$$
>
> but ${\mathbf{Q}}^{\top} \neq \mathbf{Q}$, so $\mathbf{Q}$ is an oblique projection, not an orthogonal projection matrix.

> **NOTE:**
>
> *Remark 5* (What “projection matrix” means in these notes). Some texts call any idempotent matrix a projection matrix, so that both $\mathbf{P}$ and $\mathbf{Q}$ in [Example 12](#exm-projection-matrix) would count as one. Regression texts often say “projection matrix” when they mean an orthogonal one. In these notes, “projection matrix” always means an orthogonal projection matrix in the sense of [Definition 8](#def-projection-matrix), such as $\mathbf{P}$ in [Example 12](#exm-projection-matrix), and never an oblique projection ([Definition 9](#def-oblique-projection)) such as $\mathbf{Q}$.

> **NOTE:**
>
> **Theorem 4 (Complement of a projection matrix)** If $\mathbf{P}$ is a $p \times p$ orthogonal projection matrix ([Definition 8](#def-projection-matrix)), then $\mathbf{I}_p - \mathbf{P}$ is also an orthogonal projection matrix.

> **NOTE:**
>
> *Proof*. We verify symmetry and idempotency.
>
> **Symmetry:** $$\begin{aligned}
> {(\mathbf{I} - \mathbf{P})}^{\top}
> &= {\mathbf{I}}^{\top} - {\mathbf{P}}^{\top} \\
> &= \mathbf{I} - \mathbf{P}
> \end{aligned}$$
>
> **Idempotency:** $$\begin{aligned}
> (\mathbf{I} - \mathbf{P})^2
> &= (\mathbf{I} - \mathbf{P})(\mathbf{I} - \mathbf{P}) \\
> &= \mathbf{I} - \mathbf{P} - \mathbf{P} + \mathbf{P}^2 \\
> &= \mathbf{I} - \mathbf{P} - \mathbf{P} + \mathbf{P} \\
> &= \mathbf{I} - \mathbf{P}
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 5 (Projection matrices produce orthogonal decompositions)** If $\mathbf{P}$ is a $p \times p$ orthogonal projection matrix ([Definition 8](#def-projection-matrix)) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is any vector of length $p$, then the two components of the decomposition
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \underbrace{\mathbf{P}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}_{\text{projected}} + \underbrace{(\mathbf{I}_p - \mathbf{P})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}_{\text{residual}}$$
>
> are orthogonal:
>
> $$\mathbf{P}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \;\perp\; (\mathbf{I}_p - \mathbf{P})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$$

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> {(\mathbf{P}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})}^{\top}\,(\mathbf{I} - \mathbf{P})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,{\mathbf{P}}^{\top}\,(\mathbf{I} - \mathbf{P})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,\mathbf{P}\,(\mathbf{I} - \mathbf{P})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,(\mathbf{P} - \mathbf{P}^2)\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,(\mathbf{P} - \mathbf{P})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,\mathbf{0}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \\
> &= 0
> \end{aligned}$$
>
> where the second line uses symmetry (${\mathbf{P}}^{\top} = \mathbf{P}$) and the fourth line uses idempotency ($\mathbf{P}^2 = \mathbf{P}$).

> **NOTE:**
>
> **Theorem 6 (The diagonal of an orthogonal projection matrix lies between 0 and 1)** Let $\mathbf{P}$ be an $n \times n$ [orthogonal projection matrix](#def-projection-matrix) with entries $p_{ij}$. Then
>
> $$0 \le p_{ii} \le 1
> \qquad \text{for every } i = 1, \dots, n.$$

> **NOTE:**
>
> *Proof*. Since $\mathbf{P}$ is [idempotent](#def-idempotent-matrix) and [symmetric](#def-symmetric-matrix), $p_{ij} = p_{ji}$ and $\mathbf{P}^2 = \mathbf{P}$. Compare the $(i, i)$ entries of $\mathbf{P}^2$ and $\mathbf{P}$:
>
> $$\begin{aligned}
> p_{ii}
> &= (\mathbf{P}^2)_{ii}
> && \text{(idempotent)}
> \\
> &= \sum_{j=1}^{n} p_{ij}\, p_{ji}
> && \text{(definition of matrix multiplication)}
> \\
> &= \sum_{j=1}^{n} p_{ij}^2
> && \text{(symmetric)}
> \\
> &= p_{ii}^2 + \sum_{j \ne i} p_{ij}^2.
> && \text{(separate the term } j = i \text{)}
> \end{aligned}$$
>
> Each $p_{ij}^2$ is non-negative, so $p_{ii} \ge 0$. The same equation also gives $p_{ii} \ge p_{ii}^2$, so $p_{ii}(1 - p_{ii}) \ge 0$. Since $p_{ii} \ge 0$, this requires $p_{ii} \le 1$.

> **NOTE:**
>
> **Example 13 (Diagonal of a projection onto a line)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 1, 0)$. The [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{P} = \frac{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}}{{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}$ is the [orthogonal projection](linear-algebra-projections.llms.md#def-orthogonal-projection) onto the line through $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$. To see this, take the [unit vector](linear-algebra-vectors.llms.md#def-unit-vector) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}/\sqrt{2}$, for which $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}}^{\top} = \mathbf{P}$, and apply [projecting with an orthonormal basis](linear-algebra-projections.llms.md#thm-projector-onb):
>
> $$\mathbf{P} = \frac{1}{2}
> \begin{bmatrix} 1 & 1 & 0 \\ 1 & 1 & 0 \\ 0 & 0 & 0 \end{bmatrix}.$$
>
> Its diagonal is $(\frac{1}{2}, \frac{1}{2}, 0)$. Each entry is between $0$ and $1$, as [Theorem 6](#thm-projection-diagonal-bounds) says. The entry $0$ belongs to a coordinate that $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ does not involve. For $\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ from [Example 12](#exm-projection-matrix) the diagonal is $(1, 0)$, so $p_{ii}$ can be $0$ and can be $1$.

> **NOTE:**
>
> **Definition 10 (Orthogonal matrix)** A $p \times p$ matrix $\mathbf{Q}$ is **orthogonal** [\[5\]](#ref-wikipedia_orthogonal_matrix) if
>
> $$\underbrace{{\mathbf{Q}}^{\top}}_{p \times p}\,\underbrace{\mathbf{Q}}_{p \times p} = \mathbf{I}_p$$

> **NOTE:**
>
> **Example 14 (A rotation matrix)** The matrix
>
> $$\mathbf{Q} = \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix}$$
>
> rotates each vector in the plane counterclockwise by the angle $\theta$ with $\cos\theta= 0.6$ and $\sin\theta= 0.8$ (about $53$ degrees) [\[6, Ch. 8\]](#ref-banerjee2014linear), Example 8.1, p. 207. It is orthogonal:
>
> $$\begin{aligned}
> {\mathbf{Q}}^{\top}\mathbf{Q}
> &= \begin{bmatrix} 0.6 & 0.8 \\ -0.8 & 0.6 \end{bmatrix}
> \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix}
> && \text{(definition of the transpose)}
> \\
> &= \begin{bmatrix}
> 0.36 + 0.64 & -0.48 + 0.48 \\
> -0.48 + 0.48 & 0.64 + 0.36
> \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}
> && \text{(add)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 15 (Orthogonal columns are not enough)** $\mathbf{Q} = 2 \mathbf{I}_2$ has orthogonal columns $(2, 0)$ and $(0, 2)$, but
>
> $$\begin{aligned}
> {\mathbf{Q}}^{\top} \mathbf{Q}
> &= \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix} \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix} \\
> &= \begin{bmatrix} 4 & 0 \\ 0 & 4 \end{bmatrix} \\
> &\ne \mathbf{I}_2,
> \end{aligned}$$
>
> so $\mathbf{Q}$ is not an orthogonal matrix: its columns have norm $2$, not $1$.

> **NOTE:**
>
> *Remark 6* (The columns of an orthogonal matrix are orthonormal). Entry $(i, j)$ of ${\mathbf{Q}}^{\top}\mathbf{Q}$ is the dot product of column $i$ and column $j$ of $\mathbf{Q}$, so ${\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}_p$ says that the columns of $\mathbf{Q}$ are orthonormal ([Definition 28 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)). For a square matrix, ${\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}_p$ also implies $\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}_p$, so $\mathbf{Q}^{-1} = {\mathbf{Q}}^{\top}$ ([Definition 5](#def-matrix-inverse)) [\[6, Ch. 8\]](#ref-banerjee2014linear), Theorem 8.1 and Definition 8.1, p. 209.
>
> For example, the columns of $\mathbf{Q}$ in [Example 14](#exm-orthogonal-matrix) are $(0.6, 0.8)$ and $(-0.8, 0.6)$. The diagonal entries $0.36 + 0.64 = 1$ of ${\mathbf{Q}}^{\top}\mathbf{Q}$ are their squared norms, and the off-diagonal entries $-0.48 + 0.48 = 0$ are their dot product. Multiplying in the other order also gives $\mathbf{I}_2$:
>
> $$\begin{aligned}
> \mathbf{Q}{\mathbf{Q}}^{\top}
> &= \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix}
> \begin{bmatrix} 0.6 & 0.8 \\ -0.8 & 0.6 \end{bmatrix}
> && \text{(definition of the transpose)}
> \\
> &= \begin{bmatrix}
> 0.36 + 0.64 & 0.48 - 0.48 \\
> 0.48 - 0.48 & 0.64 + 0.36
> \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}
> && \text{(add)}
> \end{aligned}$$
>
> So $\mathbf{Q}^{-1} = {\mathbf{Q}}^{\top}$.

> **NOTE:**
>
> **Theorem 7 (Orthogonal matrices preserve length)** If $\mathbf{Q}$ is a $p \times p$ orthogonal matrix ([Definition 10](#def-orthogonal-matrix)) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a vector of length $p$, then
>
> $$\mathopen{}\left\lVert\mathbf{Q}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}$$

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> \mathopen{}\left\lVert\mathbf{Q}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2
> &= (\mathbf{Q}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \cdot (\mathbf{Q}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(definition of the Euclidean norm)}
> \\
> &= {(\mathbf{Q}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}^{\top}\,(\mathbf{Q}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(dot product as a matrix product)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,{\mathbf{Q}}^{\top}\,(\mathbf{Q}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(transpose of a product)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,({\mathbf{Q}}^{\top}\mathbf{Q})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(regroup; matrix multiplication is associative)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,\mathbf{I}_p\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(definition of an orthogonal matrix)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(identity matrix)}
> \\
> &= \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2
> && \text{(definition of the Euclidean norm)}
> \end{aligned}$$
>
> Both norms are nonnegative square roots, so equal squares give $\mathopen{}\left\lVert\mathbf{Q}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}$. The second step is [Example 3 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#exm-dot-product-matmul), the third is [Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product), and the fourth is [Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc).

> **NOTE:**
>
> **Example 16 (Rotating a vector keeps its length)** With $\mathbf{Q}$ from [Example 14](#exm-orthogonal-matrix) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (3, 4)$ from [Example 18 in Vectors](linear-algebra-vectors.llms.md#exm-euclidean-norm):
>
> $$\begin{aligned}
> \mathbf{Q}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \begin{bmatrix} 0.6 \cdot 3 - 0.8 \cdot 4 \\ 0.8 \cdot 3 + 0.6 \cdot 4 \end{bmatrix}
> && \text{(definition of matrix-vector multiplication)}
> \\
> &= \begin{bmatrix} 1.8 - 3.2 \\ 2.4 + 2.4 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \begin{bmatrix} -1.4 \\ 4.8 \end{bmatrix}
> && \text{(add)}
> \end{aligned}$$
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathbf{Q}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}
> &= \sqrt{(-1.4)^2 + 4.8^2}
> && \text{(definition of the norm)}
> \\
> &= \sqrt{1.96 + 23.04}
> && \text{(square)}
> \\
> &= \sqrt{25}
> && \text{(add)}
> \\
> &= 5
> && \text{(take the square root)}
> \end{aligned}$$
>
> which is $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = 5$.

# 2 Quadratic Forms

> **NOTE:**
>
> **Definition 11 (Quadratic form)** A **quadratic form** [\[7\]](#ref-wikipedia_quadratic_form) is a mathematical expression of the structure
>
> $${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\, \mathbf{S}\, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$$
>
> where $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a $p \times 1$ vector and $\mathbf{S}$ is a $p \times p$ matrix.

> **NOTE:**
>
> *Remark 7* (Quadratic forms in statistics). A quadratic form extends the scalar expression $c x^2$ to vectors: with $p = 1$ and $\mathbf{S} = [c]$, ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,\mathbf{S}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= c x^2$. With $p = 2$,
>
> $${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}
> \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> = x_1^2 + 2 x_1 x_2 + 3 x_2^2,$$
>
> which is $1 + 4 + 12 = 17$ at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 2)$.
>
> Quadratic forms occur often in statistics:
>
> - The residual sum of squares in linear regression (see [Vector Calculus](vector-calculus.llms.md)) is a quadratic form.
> - The variance of a linear combination of estimates (see [Inference about Gaussian Linear Regression Models](https://morrison-lab.github.io/rme/chapters/Linear-models-overview.html#sec-infer-LMs)) is a quadratic form: ${\operatorname{Var}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\right)\mathclose{}} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,{\operatorname{Var}\mathopen{}\left(\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\right)\mathclose{}}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.

> **NOTE:**
>
> **Theorem 8 (A quadratic form is additive in its matrix)** If $\mathbf{A}$ and $\mathbf{B}$ are $p \times p$ matrices, $c$ is a number and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a vector of length $p$, then
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}(\mathbf{A} + \mathbf{B})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}&= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \\
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}(c\,\mathbf{A})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}&= c\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}.
> \end{aligned}$$
>
> So for a fixed $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, the map $\mathbf{S} \mapsto {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is linear in $\mathbf{S}$.

> **NOTE:**
>
> *Proof*. By the distributive law ([Theorem 2 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-distrib)), applied on the left and then on the right,
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}(\mathbf{A} + \mathbf{B})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathbf{A} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathbf{B}\right)\mathclose{}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(distribute } {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \text{ over the sum)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(distribute } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\text{ over the sum)}
> \end{aligned}$$
>
> For the scalar, a number can be moved out of any product, so ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}(c\,\mathbf{A})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= c\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.

> **NOTE:**
>
> **Example 17 (Combining two quadratic forms into one)** Take $\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}$, $\mathbf{B} = \mathbf{I}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 2)$. Then
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= 1 + 4 + 12 = 17, \\
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{I} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= 1 + 4 = 5, \\
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}(\mathbf{A} + \mathbf{I})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\begin{bmatrix} 2 & 2 \\ 0 & 4 \end{bmatrix}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\\
> &= 2 + 4 + 16 \\
> &= 22,
> \end{aligned}$$
>
> which equals $17 + 5$. In particular, ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}(\mathbf{A} + c\,\mathbf{I})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + c\,\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2$ for every number $c$, because ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{I} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2$. This is how two quadratic terms in the same vector combine into a single quadratic form.

> **NOTE:**
>
> **Definition 12 (Symmetric part of a square matrix)** The **symmetric part** of a $p \times p$ matrix $\mathbf{S}$ is
>
> $$\frac{1}{2}\mathopen{}\left(\mathbf{S} + {\mathbf{S}}^{\top}\right)\mathclose{}$$

> **NOTE:**
>
> **Example 18 (The symmetric part of a** $2 \times 2$ matrix) For $\mathbf{S} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}$, the symmetric part is
>
> $$\begin{aligned}
> \frac{1}{2}\mathopen{}\left(
> \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}
> + \begin{bmatrix} 1 & 0 \\ 2 & 3 \end{bmatrix}
> \right)\mathclose{}
> &= \frac{1}{2}\begin{bmatrix} 2 & 2 \\ 2 & 6 \end{bmatrix} \\
> &= \begin{bmatrix} 1 & 1 \\ 1 & 3 \end{bmatrix},
> \end{aligned}$$
>
> which is symmetric.

> **NOTE:**
>
> **Theorem 9 (A quadratic form depends only on the symmetric part)** If $\mathbf{S}$ is a $p \times p$ matrix and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a vector of length $p$, then
>
> $${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> =
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathopen{}\left(\frac{1}{2}(\mathbf{S}+{\mathbf{S}}^{\top})\right)\mathclose{}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}.$$
>
> So the value of a quadratic form depends only on the symmetric part ([Definition 12](#def-symmetric-part)) of $\mathbf{S}$.

> **NOTE:**
>
> *Proof*. The quadratic form ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a $1 \times 1$ matrix, so it equals its own transpose:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= {\mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}}^{\top}
> && \text{(a } 1 \times 1 \text{ matrix is symmetric)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,{\mathbf{S}}^{\top}\,{\mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\right)\mathclose{}}^{\top}
> && \text{(transpose of a product, twice)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,{\mathbf{S}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(transposing twice changes nothing)}
> \end{aligned}$$
>
> Averaging the two expressions for ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \frac{1}{2}\mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,{\mathbf{S}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}
> && \text{(average of two equal numbers)}
> \\
> &= \frac{1}{2}\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathopen{}\left(\mathbf{S} + {\mathbf{S}}^{\top}\right)\mathclose{}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(distributive law)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathopen{}\left(\frac{1}{2}(\mathbf{S}+{\mathbf{S}}^{\top})\right)\mathclose{}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(move the scalar } \tfrac{1}{2} \text{ inside)}
> \end{aligned}$$
>
> The distributive step is [Theorem 2 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-distrib), and the transpose step is [Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product).

> **NOTE:**
>
> **Example 19 (Replacing a matrix by its symmetric part)** With $\mathbf{S} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}$ from [Example 18](#exm-symmetric-part) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 1)$:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= 1 + 2 + 0 + 3 \\
> &= 6 \\
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\begin{bmatrix} 1 & 1 \\ 1 & 3 \end{bmatrix}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= 1 + 1 + 1 + 3 \\
> &= 6
> \end{aligned}$$
>
> Both quadratic forms equal the sum of their matrix’s entries, because every entry of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is $1$.

# 3 Trace and Matrix Inner Product

> **NOTE:**
>
> **Definition 13 (Trace)** The **trace** [\[8\]](#ref-wikipedia_trace_linear_algebra) of a $p \times p$ matrix $\mathbf{M}$ is the sum of its diagonal entries:
>
> $$\operatorname{tr}(\mathbf{M}) \stackrel{\text{def}}{=}\sum_{i=1}^pM_{ii}$$

> **NOTE:**
>
> **Example 20 (The trace of a** $2 \times 2$ matrix) $$\begin{aligned}
> {\operatorname{tr}\mathopen{}\left(\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\right)\mathclose{}}
> &= 1 + 4 \\
> &= 5
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 10 (The trace of a product does not depend on the order)** For an $m \times n$ matrix $\mathbf{A}$ and an $n \times m$ matrix $\mathbf{B}$:
>
> $${\operatorname{tr}\mathopen{}\left(\underbrace{\mathbf{A}\mathbf{B}}_{m \times m}\right)\mathclose{}}
> = {\operatorname{tr}\mathopen{}\left(\underbrace{\mathbf{B}\mathbf{A}}_{n \times n}\right)\mathclose{}}$$

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> \operatorname{tr}(\mathbf{A}\mathbf{B})
> &= \sum_{i=1}^{m} (\mathbf{A}\mathbf{B})_{ii}
> && \text{(definition of the trace)}
> \\
> &= \sum_{i=1}^{m} \sum_{s=1}^{n} a_{is}\, b_{si}
> && \text{(definition of matrix multiplication)}
> \\
> &= \sum_{s=1}^{n} \sum_{i=1}^{m} a_{is}\, b_{si}
> && \text{(swap the order of two finite sums)}
> \\
> &= \sum_{s=1}^{n} \sum_{i=1}^{m} b_{si}\, a_{is}
> && \text{(multiplication of numbers is commutative)}
> \\
> &= \sum_{s=1}^{n} (\mathbf{B}\mathbf{A})_{ss}
> && \text{(definition of matrix multiplication)}
> \\
> &= \operatorname{tr}(\mathbf{B}\mathbf{A})
> && \text{(definition of the trace)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 21 (Traces of the two products of a** $2 \times 3$ and a $3 \times 2$ matrix) Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 2 & 0 \\ 0 & 1 & 3 \end{bmatrix}
> \qquad
> \mathbf{B} = \begin{bmatrix} 1 & 0 \\ 2 & 1 \\ 0 & 1 \end{bmatrix}$$
>
> The products are
>
> $$\mathbf{A}\mathbf{B} = \begin{bmatrix} 5 & 2 \\ 2 & 4 \end{bmatrix}
> \qquad
> \mathbf{B}\mathbf{A} = \begin{bmatrix} 1 & 2 & 0 \\ 2 & 5 & 3 \\ 0 & 1 & 3 \end{bmatrix}$$
>
> The trace needs only the diagonal entries. For $\mathbf{A}\mathbf{B}$, which is $2 \times 2$:
>
> $$\begin{aligned}
> \operatorname{tr}(\mathbf{A}\mathbf{B})
> &= (\mathbf{A}\mathbf{B})_{11} + (\mathbf{A}\mathbf{B})_{22}
> && \text{(definition of the trace)}
> \\
> &= (1 \cdot 1 + 2 \cdot 2 + 0 \cdot 0) + (0 \cdot 0 + 1 \cdot 1 + 3 \cdot 1)
> && \text{(definition of matrix multiplication)}
> \\
> &= (1 + 4 + 0) + (0 + 1 + 3)
> && \text{(multiply)}
> \\
> &= 5 + 4
> && \text{(add within each entry)}
> \\
> &= 9
> && \text{(add)}
> \end{aligned}$$
>
> For $\mathbf{B}\mathbf{A}$, which is $3 \times 3$:
>
> $$\begin{aligned}
> \operatorname{tr}(\mathbf{B}\mathbf{A})
> &= (\mathbf{B}\mathbf{A})_{11} + (\mathbf{B}\mathbf{A})_{22} + (\mathbf{B}\mathbf{A})_{33}
> && \text{(definition of the trace)}
> \\
> &= (1 \cdot 1 + 0 \cdot 0) + (2 \cdot 2 + 1 \cdot 1) + (0 \cdot 0 + 1 \cdot 3)
> && \text{(definition of matrix multiplication)}
> \\
> &= (1 + 0) + (4 + 1) + (0 + 3)
> && \text{(multiply)}
> \\
> &= 1 + 5 + 3
> && \text{(add within each entry)}
> \\
> &= 9
> && \text{(add)}
> \end{aligned}$$
>
> The products have different sizes, but their traces agree.

> **NOTE:**
>
> *Remark 8* (Moving a factor of a triple product). Let $\mathbf{A}$ be $m \times n$, $\mathbf{B}$ be $n \times k$, and $\mathbf{C}$ be $k \times m$, so that $\mathbf{A}\mathbf{B}$ is $m \times k$ and $\mathbf{A}\mathbf{B}\mathbf{C}$ is square. Applying [Theorem 10](#thm-trace-cyclic) to the $m \times k$ matrix $\mathbf{A}\mathbf{B}$ and the $k \times m$ matrix $\mathbf{C}$ moves the last factor of the triple product to the front [\[6, Ch. 1\]](#ref-banerjee2014linear), Theorem 1.5 and eq. 1.17, p. 19:
>
> $$\begin{aligned}
> \operatorname{tr}(\mathbf{A}\mathbf{B}\mathbf{C})
> &= {\operatorname{tr}\mathopen{}\left((\mathbf{A}\mathbf{B})\,\mathbf{C}\right)\mathclose{}}
> && \text{(matrix multiplication is associative)}
> \\
> &= {\operatorname{tr}\mathopen{}\left(\mathbf{C}\,(\mathbf{A}\mathbf{B})\right)\mathclose{}}
> && \text{(the theorem, applied to the two factors } \mathbf{A}\mathbf{B} \text{ and } \mathbf{C} \text{)}
> \\
> &= \operatorname{tr}(\mathbf{C}\mathbf{A}\mathbf{B})
> && \text{(matrix multiplication is associative)}
> \end{aligned}$$
>
> For example, let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix}
> \qquad
> \mathbf{B} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \end{bmatrix}
> \qquad
> \mathbf{C} = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$$
>
> Then
>
> $$\mathbf{A}\mathbf{B}
> = \begin{bmatrix} 1 \cdot 1 + 2 \cdot 1 & 1 \cdot 0 + 2 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 1 & 0 \cdot 0 + 1 \cdot 1 \end{bmatrix}
> = \begin{bmatrix} 3 & 2 \\ 1 & 1 \end{bmatrix}
> \qquad
> \mathbf{C}\mathbf{A}
> = \begin{bmatrix} 0 \cdot 1 + 1 \cdot 0 & 0 \cdot 2 + 1 \cdot 1 \\ 1 \cdot 1 + 0 \cdot 0 & 1 \cdot 2 + 0 \cdot 1 \end{bmatrix}
> = \begin{bmatrix} 0 & 1 \\ 1 & 2 \end{bmatrix}$$
>
> so
>
> $$(\mathbf{A}\mathbf{B})\,\mathbf{C}
> = \begin{bmatrix} 3 \cdot 0 + 2 \cdot 1 & 3 \cdot 1 + 2 \cdot 0 \\ 1 \cdot 0 + 1 \cdot 1 & 1 \cdot 1 + 1 \cdot 0 \end{bmatrix}
> = \begin{bmatrix} 2 & 3 \\ 1 & 1 \end{bmatrix}
> \qquad
> (\mathbf{C}\mathbf{A})\,\mathbf{B}
> = \begin{bmatrix} 0 \cdot 1 + 1 \cdot 1 & 0 \cdot 0 + 1 \cdot 1 \\ 1 \cdot 1 + 2 \cdot 1 & 1 \cdot 0 + 2 \cdot 1 \end{bmatrix}
> = \begin{bmatrix} 1 & 1 \\ 3 & 2 \end{bmatrix}$$
>
> and both traces are the same:
>
> $$\begin{aligned}
> \operatorname{tr}(\mathbf{A}\mathbf{B}\mathbf{C}) &= 2 + 1 \\
> &= 3
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> \operatorname{tr}(\mathbf{C}\mathbf{A}\mathbf{B}) &= 1 + 2 \\
> &= 3.
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 11 (The trace of an outer product is a dot product)** For two vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ with the same number $n$ of entries, the [trace](#def-trace) of the [outer product](linear-algebra-orthonormal-bases.llms.md#def-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ and the [dot product](linear-algebra-vectors.llms.md#def-dot-product) ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ are the same number:
>
> $${\operatorname{tr}\mathopen{}\left(\underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}}_{n \times n}\right)\mathclose{}}
> = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$$

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> {\operatorname{tr}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{}}
> &= \sum_{i=1}^{n} \mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{}_{ii}
> && \text{(definition of the trace)}
> \\
> &= \sum_{i=1}^{n} u_i v_i
> && \text{(entries of an outer product)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(definition of the dot product)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 22 (The trace of an outer product)** For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}} = (1, 2)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (3, 4)$, [the remark on outer and dot products](linear-algebra-orthonormal-bases.llms.md#rem-outer-vs-dot-product) found the [outer product](linear-algebra-orthonormal-bases.llms.md#def-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top}$ and the [dot product](linear-algebra-vectors.llms.md#def-dot-product) ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = 11$. The [trace](#def-trace) of the outer product is
>
> $$\begin{aligned}
> {\operatorname{tr}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top}\right)\mathclose{}}
> &= {\operatorname{tr}\mathopen{}\left(\begin{bmatrix} 3 & 4 \\ 6 & 8 \end{bmatrix}\right)\mathclose{}}
> && \text{(the outer product found in the remark)}
> \\
> &= 3 + 8
> && \text{(definition of the trace)}
> \\
> &= 11
> && \text{(add)}
> \end{aligned}$$
>
> The trace and the dot product are the same number, as [Theorem 11](#thm-outer-product-trace) says.

> **NOTE:**
>
> **Corollary 3 (The trace of a self outer product is a squared norm)** For a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, the [trace](#def-trace) of the [self outer product](linear-algebra-orthonormal-bases.llms.md#def-self-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ and the [square](algebra-basics.llms.md#def-square) of the [Euclidean norm](linear-algebra-vectors.llms.md#def-euclidean-norm) $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}$ are the same number:
>
> $${\operatorname{tr}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\right)\mathclose{}} = \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2$$

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> {\operatorname{tr}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\right)\mathclose{}}
> &= {\operatorname{tr}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\right)\mathclose{}}
> && \text{(definition of the self outer product)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(the trace of an outer product is a dot product)}
> \\
> &= \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2
> && \text{(the Euclidean norm from the dot product, squared)}
> \end{aligned}$$
>
> The second step is [Theorem 11](#thm-outer-product-trace), with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ in place of both $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$. The third step takes the [square](algebra-basics.llms.md#def-square) of both sides of [the formula for the Euclidean norm from the dot product](linear-algebra-vectors.llms.md#thm-norm-dot-product).

> **NOTE:**
>
> **Example 23 (The trace of a self outer product)** For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 2)$, [the example of a self outer product](linear-algebra-orthonormal-bases.llms.md#exm-self-outer-product) found $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} = \begin{bmatrix} 1 & 2 \\ 2 & 4 \end{bmatrix}$. Its [trace](#def-trace) and the squared [Euclidean norm](linear-algebra-vectors.llms.md#def-euclidean-norm) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ are
>
> $$\begin{aligned}
> {\operatorname{tr}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\right)\mathclose{}}
> &= 1 + 4
> && \text{(definition of the trace)}
> \\
> &= 5
> && \text{(add)}
> \\
> &= 1^2 + 2^2
> && \text{(write each diagonal entry as a square)}
> \\
> &= \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2
> && \text{(definition of the Euclidean norm, squared)}
> \end{aligned}$$
>
> as [Corollary 3](#cor-self-outer-product-trace) says.

> **NOTE:**
>
> **Definition 14 (Matrix inner product)** The **inner product** of two $n \times p$ matrices $\mathbf{A}$ and $\mathbf{B}$ is
>
> $${\mathopen{}\left\langle \mathbf{A}, \mathbf{B}\right\rangle\mathclose{}}
> \stackrel{\text{def}}{=}
> {\operatorname{tr}\mathopen{}\left(\underbrace{{\mathbf{A}}^{\top}\mathbf{B}}_{p \times p}\right)\mathclose{}}$$

Banerjee and Roy [\[6, Ch. 15\]](#ref-banerjee2014linear), eq. 15.7, p. 491 defines the same inner product on $n \times p$ matrices with the trace.

> **NOTE:**
>
> **Theorem 12 (The matrix inner product multiplies matching entries)** For two $n \times p$ matrices $\mathbf{A}$ and $\mathbf{B}$:
>
> $${\mathopen{}\left\langle \mathbf{A}, \mathbf{B}\right\rangle\mathclose{}} = \sum_{i=1}^n\sum_{j=1}^pa_{ij}\, b_{ij}$$

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> {\mathopen{}\left\langle \mathbf{A}, \mathbf{B}\right\rangle\mathclose{}}
> &= \operatorname{tr}({\mathbf{A}}^{\top}\mathbf{B})
> && \text{(definition of the inner product)}
> \\
> &= \sum_{j=1}^p({\mathbf{A}}^{\top}\mathbf{B})_{jj}
> && \text{(definition of the trace)}
> \\
> &= \sum_{j=1}^p\sum_{i=1}^n({\mathbf{A}}^{\top})_{ji}\, b_{ij}
> && \text{(definition of matrix multiplication)}
> \\
> &= \sum_{j=1}^p\sum_{i=1}^na_{ij}\, b_{ij}
> && \text{(definition of the transpose)}
> \\
> &= \sum_{i=1}^n\sum_{j=1}^pa_{ij}\, b_{ij}
> && \text{(swap the order of two finite sums)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 24 (The inner product of two** $2 \times 2$ matrices) Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}
> \qquad
> \mathbf{B} = \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix}$$
>
> From [Definition 14](#def-matrix-inner-product):
>
> $$\begin{aligned}
> {\mathopen{}\left\langle \mathbf{A}, \mathbf{B}\right\rangle\mathclose{}}
> &= {\operatorname{tr}\mathopen{}\left({\mathbf{A}}^{\top}\mathbf{B}\right)\mathclose{}}
> && \text{(definition of the inner product)}
> \\
> &= {\operatorname{tr}\mathopen{}\left(
> {\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}}^{\top}
> \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix}
> \right)\mathclose{}}
> && \text{(substitute)}
> \\
> &= {\operatorname{tr}\mathopen{}\left(
> \begin{bmatrix} 1 & 3 \\ 2 & 4 \end{bmatrix}
> \begin{bmatrix} 0 & 1 \\ -1 & 2 \end{bmatrix}
> \right)\mathclose{}}
> && \text{(definition of the transpose)}
> \\
> &= {\operatorname{tr}\mathopen{}\left(\begin{bmatrix} -3 & 7 \\ -4 & 10 \end{bmatrix}\right)\mathclose{}}
> && \text{(multiply)}
> \\
> &= -3 + 10
> && \text{(definition of the trace)}
> \\
> &= 7
> && \text{(add)}
> \end{aligned}$$
>
> From [Theorem 12](#thm-matrix-inner-product-entries):
>
> $$\begin{aligned}
> {\mathopen{}\left\langle \mathbf{A}, \mathbf{B}\right\rangle\mathclose{}}
> &= 1 \cdot 0 + 2 \cdot 1 + 3 \cdot(-1) + 4 \cdot 2
> && \text{(multiply matching entries and add)}
> \\
> &= 0 + 2 - 3 + 8
> && \text{(multiply)}
> \\
> &= 7
> && \text{(add)}
> \end{aligned}$$

> **NOTE:**
>
> *Remark 9* (The matrix inner product as a dot product). [Theorem 12](#thm-matrix-inner-product-entries) says that the matrix inner product is the dot product ([Definition 10 in Vectors](linear-algebra-vectors.llms.md#def-dot-product)) of the two matrices’ entries, each listed as one vector of length $np$, with both matrices’ entries listed in the same order.
>
> For example, listing the entries of $\mathbf{A}$ and $\mathbf{B}$ in [Example 24](#exm-matrix-inner-product) row by row gives $(1, 2, 3, 4)$ and $(0, 1, -1, 2)$, and
>
> $$\begin{aligned}
> (1, 2, 3, 4) \cdot (0, 1, -1, 2) &= 7 \\
> &= {\mathopen{}\left\langle \mathbf{A}, \mathbf{B}\right\rangle\mathclose{}}.
> \end{aligned}$$

> **NOTE:**
>
> **Definition 15 (Frobenius norm)** The **Frobenius norm** [\[9\]](#ref-wikipedia_frobenius_norm) of an $n \times p$ matrix $\mathbf{A}$ is
>
> $$\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}_F \stackrel{\text{def}}{=}\sqrt{{\mathopen{}\left\langle \mathbf{A}, \mathbf{A}\right\rangle\mathclose{}}}$$
>
> where ${\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}$ is the matrix inner product ([Definition 14](#def-matrix-inner-product)).

> **NOTE:**
>
> **Example 25 (The Frobenius norm of a** $2 \times 2$ matrix) For $\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$:
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}_F
> &= \sqrt{{\mathopen{}\left\langle \mathbf{A}, \mathbf{A}\right\rangle\mathclose{}}}
> && \text{(definition of the Frobenius norm)}
> \\
> &= \sqrt{1 \cdot 1 + 2 \cdot 2 + 3 \cdot 3 + 4 \cdot 4}
> && \text{(sum of products of matching entries)}
> \\
> &= \sqrt{1 + 4 + 9 + 16}
> && \text{(multiply)}
> \\
> &= \sqrt{30}
> && \text{(add)}
> \end{aligned}$$
>
> The second step is [Theorem 12](#thm-matrix-inner-product-entries).

> **NOTE:**
>
> *Remark 10* (The Frobenius norm is the Euclidean norm of the entries). By [Theorem 12](#thm-matrix-inner-product-entries), $\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}_F^2 = \sum_{i=1}^n\sum_{j=1}^pa_{ij}^2$, a sum of squares, so the square root is always defined. $\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}_F$ is the Euclidean norm ([Definition 23 in Vectors](linear-algebra-vectors.llms.md#def-euclidean-norm)) of the entries of $\mathbf{A}$, listed as one vector of length $np$ [\[6, Ch. 15\]](#ref-banerjee2014linear), Definition 15.4, p. 492.
>
> For example, listing the entries of $\mathbf{A}$ in [Example 25](#exm-frobenius-norm) row by row gives the vector $(1, 2, 3, 4)$ of length $2 \cdot 2 = 4$, and
>
> $$\begin{aligned}
> \mathopen{}\left\lVert(1, 2, 3, 4)\right\rVert\mathclose{} &= \sqrt{1 + 4 + 9 + 16} \\
> &= \sqrt{30} \\
> &= \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}_F.
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 13 (The squared Frobenius norm adds up the squared column norms)** If $\mathbf{A}$ is an $n \times p$ matrix with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_p$, then
>
> $$\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}_F^2 = \sum_{j=1}^p\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j\right\rVert\mathclose{}^2.$$

> **NOTE:**
>
> *Proof*. Entry $i$ of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$ is $a_{ij}$, so
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}_F^2
> &= \sum_{i=1}^n\sum_{j=1}^pa_{ij}^2
> && \text{(}\href{#rem-frobenius-norm-entries}{\text{Remark~10}}\text{)}
> \\
> &= \sum_{j=1}^p\sum_{i=1}^na_{ij}^2
> && \text{(swap the order of two finite sums)}
> \\
> &= \sum_{j=1}^p\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j\right\rVert\mathclose{}^2
> && \text{(}\href{linear-algebra-vectors.qmd#def-euclidean-norm}{\text{Definition~23 in Vectors}}\text{, applied to each column)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 26 (The Frobenius norm of a** $2 \times 2$ matrix, column by column) The matrix $\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$ in [Example 25](#exm-frobenius-norm) has columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = (1, 3)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = (2, 4)$, so
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}_F^2
> &= \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2\right\rVert\mathclose{}^2
> && \text{(}\href{#thm-frobenius-norm-columns}{\text{Theorem~13}}\text{)}
> \\
> &= (1^2 + 3^2) + (2^2 + 4^2)
> && \text{(definition of the norm)}
> \\
> &= 10 + 20
> && \text{(square and add)}
> \\
> &= 30
> && \text{(add)}
> \end{aligned}$$
>
> which matches $\mathopen{}\left\lVert\mathbf{A}\right\rVert\mathclose{}_F = \sqrt{30}$ from [Example 25](#exm-frobenius-norm).

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
