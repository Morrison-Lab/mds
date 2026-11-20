# Definite Matrices and Determinants

Code

Published

Last modified: 2026-11-20 12:51:43 (PST)

# 1 Definite Matrices

> **NOTE:**
>
> **Definition 1 (Positive semidefinite matrix)** A $p \times p$ matrix $\mathbf{A}$ is **positive semidefinite** [\[1\]](#ref-wikipedia_definite_matrix) if it satisfies both conditions:
>
> - $\mathbf{A}$ is symmetric ([Definition 3 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-symmetric-matrix)).
> - Every quadratic form ([Definition 13 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-quadratic-form)) in $\mathbf{A}$ is non-negative: ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \ge 0$ for every vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ of length $p$.

> **NOTE:**
>
> **Example 1 (A positive semidefinite matrix)** Let $\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$, which is symmetric. For any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (x_1, x_2)$:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= x_1^2 + x_1 x_2 + x_2 x_1 + x_2^2
> && \text{(multiply out the quadratic form)}
> \\
> &= (x_1 + x_2)^2
> && \text{(complete the square)}
> \\
> &\ge 0
> && \text{(a square is non-negative)}
> \end{aligned}$$
>
> So $\mathbf{B}$ is positive semidefinite.

> **NOTE:**
>
> **Theorem 1 (Entries and symmetry of a Gram matrix)** Let $\mathbf{A}$ be an $m \times n$ matrix with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n$, and let $\mathbf{G} = {\mathbf{A}}^{\top} \mathbf{A}$ ([Definition 6 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-gram-matrix)).
>
> 1.  Entry $(i, j)$ of $\mathbf{G}$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$.
> 2.  $\mathbf{G}$ is symmetric ([Definition 3 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-symmetric-matrix)).
> 3.  ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathopen{}\left\lVert\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 \ge 0$ for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^n$, so $\mathbf{G}$ is positive semidefinite ([Definition 1](#def-positive-semidefinite)).

> **NOTE:**
>
> *Proof*. **Entries.** Row $i$ of ${\mathbf{A}}^{\top}$ is ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i}^{\top}$, so entry $(i, j)$ of ${\mathbf{A}}^{\top} \mathbf{A}$ is the dot product of that row with column $j$ of $\mathbf{A}$, namely ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$.
>
> **Symmetry.** The dot product is commutative, so
>
> $$\begin{aligned}
> g_{ij} &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i \\
> &= g_{ji}.
> \end{aligned}$$
>
> **Positive semidefiniteness.** For any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$,
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,{\mathbf{A}}^{\top}\,\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(substitute } \mathbf{G} \text{)}
> \\
> &= {(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}^{\top}\,(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= \mathopen{}\left\lVert\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2
> && \text{(}\href{linear-algebra-vectors.qmd#eq-norm-dot-product}{\text{Equation~5 in Vectors}}\text{, squared)}
> \\
> &\ge 0.
> && \text{(a squared norm is nonnegative)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 2 (Checking the properties on a small Gram matrix)** For $\mathbf{A}$ in [Example 8 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-gram-matrix), $\mathbf{G} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$. It is symmetric: $g_{12} = g_{21} = 1$. Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, -1)$. Then
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \begin{bmatrix} 1 & -1 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix}
> && \text{(} \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, -1) \text{)}
> \\
> &= 2,
> && \text{(multiply and add)}
> \end{aligned}$$
>
> and $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 0, -1)$ has $\mathopen{}\left\lVert\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 = 1 + 0 + 1 = 2$, as the theorem says. The converse (every positive semidefinite matrix is a Gram matrix) is [this theorem](linear-algebra-cholesky.llms.md#thm-pd-gram).

> **NOTE:**
>
> **Corollary 1 (A self outer product is positive semidefinite)** For a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, the [self outer product](linear-algebra-orthonormal-bases.llms.md#def-self-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ is [positive semidefinite](#def-positive-semidefinite).

> **NOTE:**
>
> *Proof*. Let $\mathbf{A} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$, the $1 \times n$ [matrix](linear-algebra-matrices.llms.md#def-matrix) whose one [row](linear-algebra-matrices.llms.md#def-matrix-row) is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. Then
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top} \mathbf{A}
> &= {\mathbf{A}}^{\top} \mathbf{A}
> && \text{(definition of the Gram matrix)}
> \\
> &= {\mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\right)\mathclose{}}^{\top} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}
> && \text{(substitute } \mathbf{A} \text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}
> && \text{(the transpose of a transpose is the original matrix)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}
> && \text{(definition of the self outer product)}
> \end{aligned}$$
>
> So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ is the [Gram matrix](linear-algebra-column-null-space.llms.md#def-gram-matrix) of $\mathbf{A}$, and [Theorem 1](#thm-gram-properties) says that a Gram matrix is [positive semidefinite](#def-positive-semidefinite).

> **NOTE:**
>
> **Example 3 (A quadratic form in a self outer product)** For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 2)$, [the example of a self outer product](linear-algebra-orthonormal-bases.llms.md#exm-self-outer-product) found $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} = \begin{bmatrix} 1 & 2 \\ 2 & 4 \end{bmatrix}$, which is [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix). Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = (2, -1)$. The [quadratic form](linear-algebra-special-matrices.llms.md#def-quadratic-form) in $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> &= \begin{bmatrix} 2 & -1 \end{bmatrix}
> \begin{bmatrix} 1 & 2 \\ 2 & 4 \end{bmatrix}
> \begin{bmatrix} 2 \\ -1 \end{bmatrix}
> && \text{(definition of the quadratic form)}
> \\
> &= \begin{bmatrix} 2 & -1 \end{bmatrix}
> \begin{bmatrix} 0 \\ 0 \end{bmatrix}
> && \text{(} 1 \cdot 2 + 2 \cdot(-1) = 0 \text{ and } 2 \cdot 2 + 4 \cdot(-1) = 0 \text{)}
> \\
> &= 0
> && \text{(multiply and add)}
> \end{aligned}$$
>
> The quadratic form is $0$ here, which is not negative, as [Corollary 1](#cor-self-outer-product-psd) says. It is not positive either, because $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is [orthogonal](linear-algebra-vectors.llms.md#def-orthogonal-vectors) to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.

> **NOTE:**
>
> **Definition 2 (Positive definite matrix)** A $p \times p$ matrix $\mathbf{A}$ is **positive definite** [\[1\]](#ref-wikipedia_definite_matrix) if it satisfies both conditions:
>
> - $\mathbf{A}$ is symmetric ([Definition 3 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-symmetric-matrix)).
> - Every quadratic form ([Definition 13 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-quadratic-form)) in $\mathbf{A}$ at a nonzero vector is positive: ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} > 0$ for every vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ of length $p$.

> **NOTE:**
>
> **Example 4 (Positive definite, semidefinite, and neither)**  
>
> - The identity matrix $\mathbf{I}_p$ ([Definition 7 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-identity-matrix)) is positive definite: ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{I}_p \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \sum_{i=1}^px_i^2$, which is positive unless every $x_i$ is $0$.
>
> - $\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$ from [Example 1](#exm-positive-semidefinite) is positive semidefinite but not positive definite: at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, -1) \neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$,
>
>   $$\begin{aligned}
>   {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= (1 - 1)^2 \\
>   &= 0.
>   \end{aligned}$$
>
> - $\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}$ is symmetric but not positive semidefinite: at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, -1)$,
>
>   $$\begin{aligned}
>   {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{D} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= 1 - 2 - 2 + 1 \\
>   &= -2 \\
>   &< 0.
>   \end{aligned}$$

> **NOTE:**
>
> *Remark 1* (Why the definition requires symmetry). A positive definite matrix is positive semidefinite ([Definition 1](#def-positive-semidefinite)): ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} > 0$ for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}}^{\top}\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}= 0$. For example, $\mathbf{I}_p$ in [Example 4](#exm-positive-definite) is both.
>
> Some sources drop the symmetry condition from both definitions. These notes keep it, because without it a matrix can pass the quadratic-form condition and still have no real eigenvalues ([Definition 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigenvalue)). For example, $\mathbf{C} = \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}$ is not symmetric, and for any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (x_1, x_2)$:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= x_1 (x_1 + x_2) + x_2 (-x_1 + x_2)
> && \text{(multiply out the quadratic form)}
> \\
> &= x_1^2 + x_1 x_2 - x_2 x_1 + x_2^2
> && \text{(distribute)}
> \\
> &= x_1^2 + x_2^2
> && \text{(the middle terms cancel)}
> \end{aligned}$$
>
> which is positive for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. But suppose $\mathbf{C}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ for a real number $\lambda$. Matching entries gives $v_1 + v_2 = \lambda v_1$ and $-v_1 + v_2 = \lambda v_2$, so $v_2 = (\lambda- 1)\, v_1$ and $-v_1 = (\lambda- 1)\, v_2$. Substituting the first into the second gives $-v_1 = (\lambda- 1)^2 v_1$, so $\mathopen{}\left(1 + (\lambda- 1)^2\right)\mathclose{} v_1 = 0$. Since $1 + (\lambda- 1)^2 > 0$, $v_1 = 0$, and then
>
> $$\begin{aligned}
> v_2 &= (\lambda- 1)\, v_1 \\
> &= 0.
> \end{aligned}$$
>
> So no real $\lambda$ has an eigenvector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

See also [\[1\]](#ref-wikipedia_definite_matrix).

> **NOTE:**
>
> **Theorem 2 (Definiteness and eigenvalues)** Let $\mathbf{A}$ be a $p \times p$ symmetric matrix with real entries, with eigendecomposition $\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}$ ([Definition 3 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigendecomposition)) and eigenvalues $\lambda_1, \ldots, \lambda_p$ on the diagonal of $\mathbf{\Lambda}$. Then:
>
> - $\mathbf{A}$ is positive semidefinite ([Definition 1](#def-positive-semidefinite)) if and only if every $\lambda_i \ge 0$.
> - $\mathbf{A}$ is positive definite ([Definition 2](#def-positive-definite)) if and only if every $\lambda_i > 0$.

> **NOTE:**
>
> *Proof*. For any vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ of length $p$, let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = {\mathbf{Q}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. Then:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(substitute the eigendecomposition)}
> \\
> &= {\mathopen{}\left({\mathbf{Q}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}}^{\top}\mathbf{\Lambda}\mathopen{}\left({\mathbf{Q}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}
> && \text{(transpose of a product)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}\mathbf{\Lambda}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> && \text{(definition of } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \text{)}
> \\
> &= \sum_{i=1}^p\lambda_i y_i^2
> && \text{(} \mathbf{\Lambda} \text{ is diagonal)}
> \end{aligned}$$
>
> The second step is [Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product). Also, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$: $\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}_p$ for an orthogonal matrix ([Definition 10 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-orthogonal-matrix)), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathbf{Q}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$.
>
> *If every* $\lambda_i \ge 0$, then every term $\lambda_i y_i^2 \ge 0$, so ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \ge 0$. *If every* $\lambda_i > 0$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, then some $y_i \neq 0$, so at least one term is positive and the rest are non-negative, and ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} > 0$.
>
> *Conversely*, take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i$, column $i$ of $\mathbf{Q}$, which is not $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ because it has norm 1. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = {\mathbf{Q}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i$ is column $i$ of ${\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}_p$, so $y_i = 1$ and every other entry of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is $0$, and the display gives ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i}^{\top}\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i = \lambda_i$. So if $\mathbf{A}$ is positive semidefinite, $\lambda_i \ge 0$, and if $\mathbf{A}$ is positive definite, $\lambda_i > 0$.

> **NOTE:**
>
> **Example 5 (Reading definiteness off the eigenvalues)**  
>
> - $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ has eigenvalues $3$ and $1$ ([Example 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#exm-eigenvalue)), both positive, so it is positive definite.
> - $\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$ has eigenvalues $2$, for the eigenvector $(1, 1)$, and $0$, for the eigenvector $(1, -1)$, so it is positive semidefinite but not positive definite, as [Example 4](#exm-positive-definite) found directly.

> **NOTE:**
>
> **Definition 3 (Condition number of a positive definite matrix)** Let $\mathbf{S}$ be a $p \times p$ [positive definite matrix](#def-positive-definite) with [eigenvalues](linear-algebra-decompositions.llms.md#def-eigenvalue) $\lambda_{\min} \le \cdots \le \lambda_{\max}$, all positive by [definiteness and eigenvalues](#thm-definite-eigenvalues). The **condition number** of $\mathbf{S}$ is
>
> $$\kappa(\mathbf{S}) \stackrel{\text{def}}{=}\frac{\lambda_{\max}}{\lambda_{\min}}.$$
>
> The condition number is at least $1$, that is, $\kappa(\mathbf{S}) \ge 1$, because $\lambda_{\max} \ge \lambda_{\min} > 0$, and $\kappa(\mathbf{S}) = 1$ exactly when all eigenvalues coincide.

> **NOTE:**
>
> **Example 6 (A condition number of 3)** $\mathbf{S} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ has [eigenvalues](linear-algebra-decompositions.llms.md#def-eigenvalue) $3$ and $1$ ([eigenvalue example](linear-algebra-decompositions.llms.md#exm-eigenvalue)), so $\kappa(\mathbf{S}) = 3 / 1 = 3$. The [identity matrix](linear-algebra-matrix-multiplication.llms.md#def-identity-matrix) $\mathbf{I}_2$ has eigenvalues $1$ and $1$, so $\kappa(\mathbf{I}_2) = 1$.

> **NOTE:**
>
> **Definition 4 (Condition number of a matrix)** The **condition number** of an $n \times p$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ is the [ratio](algebra-sums.llms.md#def-ratio) of its largest to its smallest [singular value](linear-algebra-decompositions.llms.md#def-singular-values), counting all $\min(n, p)$ [singular values](linear-algebra-decompositions.llms.md#def-singular-values) of $\mathbf{A}$, zeros included ([Remark 7 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#rem-svd-zero-singular-values)) [\[2\]](#ref-wikipedia_condition_number):
>
> $$\kappa(\mathbf{A}) \stackrel{\text{def}}{=}\frac{\sigma_1}{\sigma_{\min(n,p)}}.$$
>
> This generalizes [Definition 3](#def-condition-number), which covers [positive definite matrices](linear-algebra-definite-matrices.llms.md#def-positive-definite). For a nonzero matrix, $\kappa(\mathbf{A}) \ge 1$. When the columns of a tall matrix $\mathbf{A}$ ($n \ge p$) are [linearly dependent](linear-algebra-subspaces.llms.md#def-linearly-independent), its smallest singular value is $0$, and $\kappa(\mathbf{A}) = \infty$.

> **NOTE:**
>
> **Example 7 (The condition number of a matrix with nearly parallel columns)** Let $\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & 1.01 \end{bmatrix}$. Its columns, $(1, 1)$ and $(1, 1.01)$, are nearly parallel. We find its [singular values](linear-algebra-decompositions.llms.md#def-singular-values) and their [ratio](algebra-sums.llms.md#def-ratio), then repeat after multiplying every entry by $1000$:
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
> The [singular values](linear-algebra-decompositions.llms.md#def-singular-values) are 2.005 and 0.005, so $\kappa(\mathbf{A}) =$ 402. Multiplying every entry by $1000$ multiplies both singular values by $1000$, so the [condition number](#def-matrix-condition-number) is still 402.

> **NOTE:**
>
> *Remark 2* (Other condition numbers). Other [norms](linear-algebra-inner-products.llms.md#def-norm) give other [condition numbers](#def-matrix-condition-number). This definition uses the 2-norm, which is the one built from the [singular values](linear-algebra-decompositions.llms.md#def-singular-values). For a [positive definite matrix](linear-algebra-definite-matrices.llms.md#def-positive-definite), the singular values are the [eigenvalues](linear-algebra-decompositions.llms.md#def-eigenvalue), and this definition agrees with the [ratio](algebra-sums.llms.md#def-ratio) of its largest to its smallest [eigenvalue](linear-algebra-decompositions.llms.md#def-eigenvalue) in [Definition 3](#def-condition-number).

> **NOTE:**
>
> **Theorem 3 (Forming** ${\mathbf{A}}^{\top}\mathbf{A}$ squares the condition number) Let $\mathbf{A}$ be a nonzero $n \times p$ [matrix](linear-algebra-matrices.llms.md#def-matrix) with $n \ge p$. Then
>
> $$\kappa({\mathbf{A}}^{\top}\mathbf{A}) = \kappa(\mathbf{A})^2.$$

> **NOTE:**
>
> *Proof*. By [Theorem 4 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#thm-svd-evd), the [eigenvalues](linear-algebra-decompositions.llms.md#def-eigenvalue) of the [symmetric matrix](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) ${\mathbf{A}}^{\top}\mathbf{A}$ are $\sigma_1^2 \ge \cdots \ge \sigma_p^2$, where $\sigma_1 \ge \cdots \ge \sigma_p$ are the [singular values](linear-algebra-decompositions.llms.md#def-singular-values) of $\mathbf{A}$, with zeros counted ([Remark 7 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#rem-svd-zero-singular-values)). These eigenvalues are non-negative, so for the symmetric matrix ${\mathbf{A}}^{\top}\mathbf{A}$ they are also its singular values. Therefore
>
> $$\kappa({\mathbf{A}}^{\top}\mathbf{A}) = \frac{\sigma_1^2}{\sigma_p^2} = \mathopen{}\left(\frac{\sigma_1}{\sigma_p}\right)\mathclose{}^2 = \kappa(\mathbf{A})^2.$$
>
> If $\sigma_p = 0$, both sides are $\infty$.

> **NOTE:**
>
> **Example 8 (Squaring the condition number)** For the [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ from [Example 7](#exm-matrix-condition-number), compare $\kappa(\mathbf{A})$ with $\kappa({\mathbf{A}}^{\top}\mathbf{A})$:
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
> The [condition number](#def-matrix-condition-number) of ${\mathbf{A}}^{\top}\mathbf{A}$ is 161610, and $\kappa(\mathbf{A})^2 =$ 161610, as [Theorem 3](#thm-condition-number-gram) says.

> **NOTE:**
>
> **Definition 5 (Ill-conditioned matrix)** A [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ is **ill-conditioned** when its [condition number](#def-matrix-condition-number) is so large that small relative changes in its entries, such as those from rounding, can change the [solution](linear-algebra-matrix-multiplication.llms.md#def-linear-system) to a [linear system](linear-algebra-matrix-multiplication.llms.md#def-linear-system) by a much larger relative amount. The relative change in the solution can be up to $\kappa(\mathbf{A})$ times the relative change in the entries. A solution computed with $\kappa(\mathbf{A}) \approx 10^k$ therefore loses about $k$ of the digits that the floating-point arithmetic carries [\[3\]](#ref-trefethen1997numerical), Lecture 12.
>
> There is no sharp threshold: how large is too large depends on how many accurate digits the answer needs.

> **NOTE:**
>
> **Definition 6 (Well-conditioned matrix)** A [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ is **well-conditioned** when its [condition number](#def-matrix-condition-number) is close to $1$, so it is not [ill-conditioned](#def-ill-conditioned).

> **NOTE:**
>
> **Example 9 (A small change in the right-hand side moves the solution a long way)** Let $\mathbf{A}$ be the [matrix](linear-algebra-matrices.llms.md#def-matrix) from [Example 7](#exm-matrix-condition-number), and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (2, 2.01)$. The system $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has solution $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 1)$. Change the second entry of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ from $2.01$ to $2.011$, and solve again:
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
> The right-hand side changes by a relative amount of 0.00035, and the solution changes by a relative amount of 0.100, about 284 times as much. That amplification is what [Definition 5](#def-ill-conditioned) describes, and it cannot exceed $\kappa(\mathbf{A}) =$ 402.0.

> **NOTE:**
>
> **Theorem 4 (A positive definite matrix has a positive definite inverse)** Let $\mathbf{A}$ be a $p \times p$ positive definite matrix ([Definition 2](#def-positive-definite)) with real entries, with eigendecomposition $\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}$ ([Definition 3 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigendecomposition)) and eigenvalues $\lambda_1, \ldots, \lambda_p$. Then $\mathbf{A}$ is invertible ([Definition 6 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-invertible-matrix)),
>
> $$\mathbf{A}^{-1} = \mathbf{Q}\,\mathbf{\Lambda}^{-1}\,{\mathbf{Q}}^{\top},
> \qquad
> \mathbf{\Lambda}^{-1} =
> \begin{bmatrix}
> 1/\lambda_1 & \cdots & 0           \\
> \vdots      & \ddots & \vdots      \\
> 0           & \cdots & 1/\lambda_p
> \end{bmatrix},$$
>
> and $\mathbf{A}^{-1}$ is positive definite.

> **NOTE:**
>
> *Proof*. By [Theorem 2](#thm-definite-eigenvalues), every $\lambda_i > 0$, so $\mathbf{\Lambda}^{-1}$ is well defined, and multiplying the two diagonal matrices entry by entry gives
>
> $$\begin{aligned}
> \mathbf{\Lambda}\mathbf{\Lambda}^{-1} &= \mathbf{\Lambda}^{-1}\mathbf{\Lambda} \\
> &= \mathbf{I}_p.
> \end{aligned}$$
>
> Write $\mathbf{B} = \mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top}$. Then:
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B}
> &= \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top}
> && \text{(substitute)}
> \\
> &= \mathbf{Q}\mathbf{\Lambda}\mathbf{I}_p\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top}
> && \text{(} {\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}_p \text{)}
> \\
> &= \mathbf{Q}\mathbf{\Lambda}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top}
> && \text{(identity matrix)}
> \\
> &= \mathbf{Q}{\mathbf{Q}}^{\top}
> && \text{(} \mathbf{\Lambda}\mathbf{\Lambda}^{-1} = \mathbf{I}_p \text{)}
> \\
> &= \mathbf{I}_p
> && \text{(} \mathbf{Q} \text{ is orthogonal)}
> \end{aligned}$$
>
> The same steps, with $\mathbf{\Lambda}^{-1}$ and $\mathbf{\Lambda}$ swapped, give $\mathbf{B}\mathbf{A} = \mathbf{I}_p$, so $\mathbf{B} = \mathbf{A}^{-1}$ ([Definition 5 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-matrix-inverse)). The steps with $\mathbf{Q}$ use [Definition 10 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-orthogonal-matrix), whose remark records that $\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}_p$ too, and the identity step uses [Theorem 4 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-identity).
>
> $\mathbf{A}^{-1}$ is symmetric by [Corollary 1 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric). For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = {\mathbf{Q}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, which is not $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ because $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathbf{Q}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$. As in the proof of [Theorem 2](#thm-definite-eigenvalues):
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathbf{A}^{-1}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}\mathbf{\Lambda}^{-1}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> && \text{(substitute } \mathbf{A}^{-1} = \mathbf{Q}\mathbf{\Lambda}^{-1}{\mathbf{Q}}^{\top} \text{)}
> \\
> &= \sum_{i=1}^p\frac{y_i^2}{\lambda_i}
> && \text{(} \mathbf{\Lambda}^{-1} \text{ is diagonal)}
> \\
> &> 0
> && \text{(each } \lambda_i > 0 \text{, and some } y_i \neq 0 \text{)}
> \end{aligned}$$
>
> So $\mathbf{A}^{-1}$ is positive definite.

> **NOTE:**
>
> **Example 10 (Inverting a positive definite matrix)** For $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$, [Example 4 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#exm-spectral) gives $\mathbf{Q} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}$ and eigenvalues $3$ and $1$, so:
>
> $$\begin{aligned}
> \mathbf{A}^{-1}
> &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> \begin{bmatrix} 1/3 & 0 \\ 0 & 1 \end{bmatrix}
> \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(substitute; } \mathbf{Q} \text{ is symmetric)}
> \\
> &= \frac{1}{2} \begin{bmatrix} 1/3 & 1 \\ 1/3 & -1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(multiply the first two matrices)}
> \\
> &= \frac{1}{2} \begin{bmatrix} 4/3 & -2/3 \\ -2/3 & 4/3 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \frac{1}{3} \begin{bmatrix} 2 & -1 \\ -1 & 2 \end{bmatrix}
> && \text{(simplify)}
> \end{aligned}$$
>
> Multiplying out,
>
> $$\begin{aligned}
> \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \cdot\frac{1}{3}\begin{bmatrix} 2 & -1 \\ -1 & 2 \end{bmatrix} &= \frac{1}{3}\begin{bmatrix} 3 & 0 \\ 0 & 3 \end{bmatrix} \\
> &= \mathbf{I}_2.
> \end{aligned}$$

> **NOTE:**
>
> **Definition 7 (Paraboloid)** A **paraboloid** [\[4\]](#ref-wikipedia_paraboloid) in $\mathbb{R}^{p+1}$ is the graph ${\mathopen{}\left\{(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})) \mid \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p\right\}\mathclose{}}$ of a function
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + c,$$
>
> where $\mathbf{S}$ is a nonzero symmetric $p \times p$ matrix ([Definition 3 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-symmetric-matrix)), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^p$, and $c \in \mathbb{R}$. The first term is a quadratic form ([Definition 13 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-quadratic-form)).

> **NOTE:**
>
> **Definition 8 (Elliptic paraboloid)** The paraboloid of [Definition 7](#def-paraboloid) is **elliptic** if $\mathbf{S}$ is positive definite ([Definition 2](#def-positive-definite)); it is then a bowl that opens upward.

> **NOTE:**
>
> **Example 11 (A bowl with its lowest point at the origin)** Take $p = 2$, $\mathbf{S} = \mathbf{I}_2$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_{2 \times 1}$ and $c = 0$. Then $\mathbf{S}$ is positive definite ([Example 4](#exm-positive-definite)), so the graph of
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{I}_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \\
> &= x_1^2 + x_2^2
> \end{aligned}$$
>
> is an elliptic paraboloid. At $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 0$; at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 1)$, $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 2$; and $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) > 0$ at every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so the origin is the only lowest point of the bowl. [Figure 1](#fig-paraboloid) shows the surface.
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
> > Figure 1: The surface $z = x_1^2 + x_2^2$ over $[-2, 2]^2$: a bowl that opens upward, with its lowest point above the origin. Horizontal slices of the bowl are circles around the origin.

> **NOTE:**
>
> **Definition 9 (Matrix-induced inner product (**$\mathbf{A}$-inner product)) Let $\mathbf{A}$ be a $p \times p$ [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) [positive definite matrix](#def-positive-definite). The **matrix-induced inner product** (or $\mathbf{A}$-inner product) on $\mathbb{R}^p$ is the [symmetric bilinear form](linear-algebra-special-matrices.llms.md#def-symmetric-bilinear-form) of $\mathbf{A}$, used as an [inner product](linear-algebra-inner-products.llms.md#def-inner-product): [for all](https://morrison-lab.github.io/mcs/proof-writing.html#def-universal-quantifier) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^p$,
>
> $${\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}_{\mathbf{A}} \stackrel{\text{def}}{=}{{B_{\mathbf{A}}}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right)\mathclose{}}.$$

> **NOTE:**
>
> **Example 12 (A matrix-induced inner product calculation)** Consider the symmetric matrix
>
> $$\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}.$$
>
> For any nonzero vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (x_1, x_2) \in \mathbb{R}^2$:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= 2 x_1^2 + 2 x_1 x_2 + 2 x_2^2
> && \text{(expand the quadratic form)}
> \\
> &= (x_1 + x_2)^2 + x_1^2 + x_2^2
> && \text{(complete the square)}
> \end{aligned}$$
>
> which is strictly positive because $x_1^2 + x_2^2 > 0$ when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Thus $\mathbf{A}$ is positive definite ([Definition 2](#def-positive-definite)).
>
> For vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 2)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (3, -1)$, their inner product induced by $\mathbf{A}$ is:
>
> $$\begin{aligned}
> {\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}_{\mathbf{A}}
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}_{\mathbf{A}} \text{)}
> \\
> &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 3 \\ -1 \end{bmatrix}
> && \text{(substitute vectors and matrix)}
> \\
> &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 2 \cdot 3 + 1 \cdot(-1) \\ 1 \cdot 3 + 2 \cdot(-1) \end{bmatrix}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\
> &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 5 \\ 1 \end{bmatrix}
> && \text{(multiply and add)}
> \\
> &= 1 \cdot 5 + 2 \cdot 1
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\
> &= 7.
> && \text{(multiply and add)}
> \end{aligned}$$
>
> In contrast, the standard dot product yields:
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> &= 1 \cdot 3 + 2 \cdot(-1) \\
> &= 1.
> \end{aligned}$$
>
> The off-diagonal entries
>
> $$\begin{aligned}
> A_{12} &= A_{21} \\
> &= 1
> \end{aligned}$$
>
> couple the coordinate directions, altering lengths and angles from their Euclidean values. When $\mathbf{A} = \mathbf{I}_p$, the matrix-induced inner product recovers the standard dot product ${\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}_{\mathbf{I}_p} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$.

> **NOTE:**
>
> *Remark 3* (A symmetric bilinear form needs a positive definite matrix to be an inner product). [Definition 9](#def-matrix-induced-inner-product) uses the [symmetric bilinear form](linear-algebra-special-matrices.llms.md#def-symmetric-bilinear-form) of $\mathbf{A}$ as an [inner product](linear-algebra-inner-products.llms.md#def-inner-product) only when $\mathbf{A}$ is also [positive definite](#def-positive-definite). A [symmetric matrix](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) $\mathbf{A}$ that is not positive definite has a nonzero vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with ${{B_{\mathbf{A}}}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}} \le 0$. If ${{B_{\mathbf{A}}}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}} < 0$, the form breaks [positivity](linear-algebra-inner-products.llms.md#def-inner-product-positivity); if ${{B_{\mathbf{A}}}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}} = 0$, it breaks [definiteness](linear-algebra-inner-products.llms.md#def-inner-product-definiteness). Either way, that form is not an inner product. For example, take $\mathbf{S}$ from [Example 18 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#exm-symmetric-bilinear-form) and the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} = {(1, -1)}^{\top}$:
>
> $$\begin{aligned}
> {{B_{\mathbf{S}}}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}\right)\mathclose{}}
> &= \begin{bmatrix} 1 & -1 \end{bmatrix}
> \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}
> \begin{bmatrix} 1 \\ -1 \end{bmatrix}
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-bilinear-form}{\text{Definition~11 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \begin{bmatrix} 1 & -1 \end{bmatrix}
> \begin{bmatrix} 1 \cdot 1 + 2 \cdot(-1) \\ 2 \cdot 1 + 1 \cdot(-1) \end{bmatrix}
> && \text{(multiply the matrix by } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} \text{)}
> \\
> &= \begin{bmatrix} 1 & -1 \end{bmatrix}
> \begin{bmatrix} -1 \\ 1 \end{bmatrix}
> && \text{(multiply and add)}
> \\
> &= 1 \cdot(-1) + (-1) \cdot 1
> && \text{(multiply the row by the column)}
> \\
> &= -2.
> && \text{(multiply and add)}
> \end{aligned}$$
>
> The [quadratic form](linear-algebra-special-matrices.llms.md#def-quadratic-form) of $\mathbf{S}$ is negative at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}$, so $\mathbf{S}$ is not positive definite.

> **NOTE:**
>
> **Theorem 5 (Properties of the matrix-induced inner product)** For every $p \times p$ symmetric positive definite matrix $\mathbf{A}$, the function ${\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}_{\mathbf{A}} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ satisfies the four inner product axioms ([Definition 5 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#def-inner-product)): positivity, definiteness, linearity in the first slot, and symmetry. Thus $(\mathbb{R}^p, {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}_{\mathbf{A}})$ is an inner product space ([Definition 6 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#def-inner-product-space)).
>
> Taking $\mathbf{A} = \mathbf{I}_p$ recovers the standard dot product ([Example 1 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#exm-dot-product-inner-product)), while taking $\mathbf{A} = \operatorname{diag}(c_1, \ldots, c_p)$ recovers the weighted inner product ([Example 3 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#exm-weighted-inner-product)).
>
> Conversely, every inner product on $\mathbb{R}^p$ has this form for a unique symmetric positive definite matrix $\mathbf{A}$, whose $(i, j)$ entry is $A_{ij} = {\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j\right\rangle\mathclose{}}$, where $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_p$ are the standard basis vectors ([Definition 21 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)).

> **NOTE:**
>
> *Proof*.
>
> - **positivity**: ${\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}_{\mathbf{A}} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \ge 0$ for all $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$, because $\mathbf{A}$ is positive definite ([Definition 2](#def-positive-definite));
> - **definiteness**: ${\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}_{\mathbf{A}} = 0$ if and only if $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_{p \times 1}$, by definition of a positive definite matrix ([Definition 2](#def-positive-definite));
> - **linearity in the first slot**: for all $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} \in \mathbb{R}^p$ and real numbers $a, b$, $$\begin{aligned}
>   {\mathopen{}\left\langle a\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ b\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}\right\rangle\mathclose{}}_{\mathbf{A}}
>   &= {(a\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ b\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})}^{\top}\,\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}
>   && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}_{\mathbf{A}} \text{)}
>   \\
>   &= (a\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} + b\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top})\,\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}
>   && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-sum}{\text{Theorem~5 in Matrix Multiplication}}\text{, }\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{, }\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~6 in Matrices}}\text{)}
>   \\
>   &= a\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} + b\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}
>   && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-distrib}{\text{Theorem~2 in Matrix Multiplication}}\text{)}
>   \\
>   &= a\,{\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}\right\rangle\mathclose{}}_{\mathbf{A}} + b\,{\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}\right\rangle\mathclose{}}_{\mathbf{A}}
>   && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}_{\mathbf{A}} \text{)}
>   \end{aligned}$$
> - **symmetry**: because ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a $1 \times 1$ scalar and $\mathbf{A}$ is symmetric (${\mathbf{A}}^{\top} = \mathbf{A}$), $$\begin{aligned}
>   {\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}_{\mathbf{A}}
>   &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
>   && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}_{\mathbf{A}} \text{)}
>   \\
>   &= {\mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}}^{\top}
>   && \text{(a scalar equals its transpose)}
>   \\
>   &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}{\mathbf{A}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
>   && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{, twice)}
>   \\
>   &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
>   && \text{($\mathbf{A}$ is symmetric)}
>   \\
>   &= {\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}_{\mathbf{A}}
>   && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}_{\mathbf{A}} \text{)}
>   \end{aligned}$$
>
> For the converse, let ${\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}$ be any inner product on $\mathbb{R}^p$. Any vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^p$ can be written in the standard basis as $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \sum_{i=1}^px_i\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= \sum_{j=1}^py_j\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j$ ([Definition 1 in Bases and Dimension](linear-algebra-bases.llms.md#def-basis), [Definition 21 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)). By linearity in both slots ([Remark 1 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#rem-inner-product-other-sources)):
>
> $$\begin{aligned}
> {\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}
> &= {\mathopen{}\left\langle \sum_{i=1}^px_i\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i, \sum_{j=1}^py_j\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j\right\rangle\mathclose{}}
> && \text{(expand in the standard basis)}
> \\
> &= \sum_{i=1}^p\sum_{j=1}^px_i y_j\,{\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j\right\rangle\mathclose{}}
> && \text{(linearity in both slots)}
> \\
> &= \sum_{i=1}^px_i \sum_{j=1}^pA_{ij} y_j
> && \text{(define } A_{ij} \stackrel{\text{def}}{=}{\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j\right\rangle\mathclose{}} \text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}.
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> Symmetry of ${\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}$ ensures
>
> $$\begin{aligned}
> A_{ji} &= {\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i\right\rangle\mathclose{}} \\
> &= {\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j\right\rangle\mathclose{}} \\
> &= A_{ij},
> \end{aligned}$$
>
> so $\mathbf{A}$ is symmetric ([Definition 3 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-symmetric-matrix)). For any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = {\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rangle\mathclose{}} > 0$ by positivity and definiteness of the inner product, so $\mathbf{A}$ is positive definite ([Definition 2](#def-positive-definite)).
>
> For uniqueness, if another matrix $\mathbf{B}$ satisfies ${\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rangle\mathclose{}} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ for all $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$, evaluating at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j$ gives
>
> $$\begin{aligned}
> B_{ij} &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i}^{\top}\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j \\
> &= {\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j\right\rangle\mathclose{}} \\
> &= A_{ij},
> \end{aligned}$$
>
> so $\mathbf{B} = \mathbf{A}$.

> **NOTE:**
>
> **Example 13 (Checking the inner product axioms, and recovering the matrix from the inner product)** Take $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ from [Example 12](#exm-matrix-induced-inner-product), the vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 2)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (3, -1)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} = (0, 4)$, and the numbers $a = 2$ and $b = -3$. The code computes both sides of each axiom in [Theorem 5](#thm-matrix-induced-inner-product), and then the numbers ${\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j\right\rangle\mathclose{}}_{\mathbf{A}}$ for the standard basis vectors.
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
> The inner product of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with itself is 14, which is positive. The two orders give the same number, 7 and 7. Both sides of the linearity axiom equal 28. The matrix of numbers ${\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j\right\rangle\mathclose{}}_{\mathbf{A}}$ is equal to $\mathbf{A}$, as the converse in [Theorem 5](#thm-matrix-induced-inner-product) says.

> **NOTE:**
>
> **Definition 10 (Matrix-induced norm,** $\mathbf{A}$-norm) Let $\mathbf{A}$ be a $p \times p$ [positive definite matrix](#def-positive-definite). The **matrix-induced norm**, or $\mathbf{A}$-norm, on $\mathbb{R}^p$ is the [induced norm](linear-algebra-inner-products.llms.md#def-induced-norm) of the [matrix-induced inner product](#def-matrix-induced-inner-product) ${\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}_{\mathbf{A}}$: for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$,
>
> $$\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}_{\mathbf{A}} \stackrel{\text{def}}{=}\sqrt{{\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}_{\mathbf{A}}}.$$

> **NOTE:**
>
> **Example 14 (A matrix-induced norm calculation)** Take the [positive definite matrix](#def-positive-definite) $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ of [Example 12](#exm-matrix-induced-inner-product) and the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 2)$. Then
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}_{\mathbf{A}}
> &= \sqrt{{\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}_{\mathbf{A}}}
> && \text{(}\href{#def-matrix-induced-norm}{\text{Definition~10}}\text{)}
> \\
> &= \sqrt{{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}
> && \text{(}\href{#def-matrix-induced-inner-product}{\text{Definition~9}}\text{)}
> \\
> &= \sqrt{\begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 1 \\ 2 \end{bmatrix}}
> && \text{(substitute the vector and the matrix)}
> \\
> &= \sqrt{\begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 2 \cdot 1 + 1 \cdot 2 \\ 1 \cdot 1 + 2 \cdot 2 \end{bmatrix}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\
> &= \sqrt{\begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 4 \\ 5 \end{bmatrix}}
> && \text{(multiply and add)}
> \\
> &= \sqrt{1 \cdot 4 + 2 \cdot 5}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\
> &= \sqrt{14}.
> && \text{(multiply and add)}
> \end{aligned}$$
>
> The [Euclidean norm](linear-algebra-vectors.llms.md#def-euclidean-norm) of the same vector is $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = \sqrt{1^2 + 2^2} = \sqrt{5}$, so the $\mathbf{A}$-norm of this vector is larger than its Euclidean norm.

> **NOTE:**
>
> **Example 15 (A symmetric matrix that induces no norm)** The [symmetric matrix](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) $\mathbf{B} = \operatorname{diag}(1, -1)$ is not [positive definite](#def-positive-definite), so it has no [matrix-induced norm](#def-matrix-induced-norm). The [square root](algebra-basics.llms.md#def-square-root) $\sqrt{{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$ is undefined at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (0, 1)$:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= 1 \cdot 0^2 + (-1) \cdot 1^2
> && \text{(expand the quadratic form)}
> \\
> &= -1,
> && \text{(multiply and add)}
> \end{aligned}$$
>
> and $-1$ has no square root in $\mathbb{R}$.

> **NOTE:**
>
> **Corollary 2 (A positive definite matrix is a transpose product)** Let $\mathbf{A}$ be a $p \times p$ symmetric positive definite matrix ([Definition 2](#def-positive-definite)). Then $\mathbf{A} = {\mathbf{W}}^{\top}\mathbf{W}$ for some invertible $p \times p$ matrix $\mathbf{W}$.

> **NOTE:**
>
> *Proof*. By the spectral theorem ([Theorem 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#thm-spectral)), $\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}$ with $\mathbf{Q}$ orthogonal and $\mathbf{\Lambda}$ diagonal with the eigenvalues $\lambda_i$ of $\mathbf{A}$ on its diagonal. These are positive ([Theorem 2](#thm-definite-eigenvalues)), so $\mathbf{\Lambda}^{1/2}$, the diagonal matrix with entries $\sqrt{\lambda_i}$, is defined. Take $\mathbf{W} = \mathbf{\Lambda}^{1/2}{\mathbf{Q}}^{\top}$. Since $\mathbf{\Lambda}^{1/2}$ is diagonal, ${(\mathbf{\Lambda}^{1/2})}^{\top} = \mathbf{\Lambda}^{1/2}$, and
>
> $$\begin{aligned}
> {\mathbf{W}}^{\top}\mathbf{W} &= \mathbf{Q}\mathbf{\Lambda}^{1/2}\mathbf{\Lambda}^{1/2}{\mathbf{Q}}^{\top} \\
> &= \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top} \\
> &= \mathbf{A}.
> \end{aligned}$$
>
> $\mathbf{W}$ is invertible, because ${\mathbf{Q}}^{\top}$ has inverse $\mathbf{Q}$ and $\mathbf{\Lambda}^{1/2}$ is diagonal with positive entries, so it has the diagonal inverse with entries $1/\sqrt{\lambda_i}$, and a product of invertible matrices is invertible ([Theorem 1 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#thm-inverse-product)).

> **NOTE:**
>
> **Theorem 6 (A matrix-induced inner product is a dot product of transformed vectors)** Let $\mathbf{A}$ be a $p \times p$ symmetric positive definite matrix, and let $\mathbf{W}$ be any $p \times p$ matrix with $\mathbf{A} = {\mathbf{W}}^{\top}\mathbf{W}$. Then for all $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^p$, the $\mathbf{A}$-inner product ([Definition 9](#def-matrix-induced-inner-product)) satisfies
>
> $${\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}_{\mathbf{A}} = (\mathbf{W}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \cdot (\mathbf{W}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}).$$

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> {\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}_{\mathbf{A}} &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} {\mathbf{W}}^{\top}\mathbf{W} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\\
> &= {(\mathbf{W}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}^{\top} (\mathbf{W}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) \\
> &= (\mathbf{W}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \cdot (\mathbf{W}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}).
> \end{aligned}$$

> **NOTE:**
>
> *Remark 4* (Inner product spaces in machine learning). In machine learning and statistics, choosing or learning an inner product space tailors geometric notions of distance, angle, and projection to the structure of the data:
>
> 1.  **Mahalanobis metric and whitening**: Standard Euclidean distance treats all coordinate axes identically, ignoring feature correlations and variance differences. If data features have a symmetric positive definite covariance matrix $\mathbf{\Sigma}$ ([Definition 2](#def-positive-definite)), the precision matrix $\mathbf{A} = \mathbf{\Sigma}^{-1}$ ([Theorem 4](#thm-pd-inverse)) defines the Mahalanobis inner product ${\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}_{\mathbf{\Sigma}^{-1}} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{\Sigma}^{-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$. The induced distance $d_{\mathbf{\Sigma}^{-1}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) = \sqrt{{(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})}^{\top}\mathbf{\Sigma}^{-1}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})}$ measures statistical distance normalized by variance along each principal direction. Factoring $\mathbf{\Sigma}^{-1} = {\mathbf{W}}^{\top}\mathbf{W}$ (via Cholesky or spectral decomposition, [Corollary 2](#cor-pd-transpose-product)), this inner product is the Euclidean dot product of the whitened vectors $\mathbf{W}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $\mathbf{W}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ ([Theorem 6](#thm-whitening-inner-product)).
>
> 2.  **The kernel trick and reproducing kernel Hilbert spaces (RKHS)**: Algorithms such as support vector machines (SVMs), kernel ridge regression, and Gaussian processes depend on training vectors solely through pairwise inner products ${\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_i, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j\right\rangle\mathclose{}}$. By mapping data into a higher- or infinite-dimensional inner product space via a feature map $D: \mathbb{R}^p \to \mathcal{H}$, the kernel trick replaces the computation of $D(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_i)$ with an evaluation of a positive definite kernel function: $$k(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_i, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j) \stackrel{\text{def}}{=}{\mathopen{}\left\langle D(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_i), D(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j)\right\rangle\mathclose{}}_{\mathcal{H}}.$$ Mercer’s theorem guarantees that every symmetric positive definite kernel function implicitly defines a valid inner product space $\mathcal{H}$ (a reproducing kernel Hilbert space) without requiring explicit coordinate representations.
>
> 3.  **Embeddings and cosine similarity**: In natural language processing and recommendation systems, data items are embedded as vectors in high-dimensional representations. The angle between embeddings captures semantic similarity through cosine similarity ([Definition 14 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#def-cosine-similarity-inner-product-space)): $$\operatorname{cossim}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) = \frac{{\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}}{\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\,\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rVert\mathclose{}}.$$ When embedding vectors are normalized to unit Euclidean norm ($\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = 1$ and $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rVert\mathclose{} = 1$), cosine similarity equals the inner product ${\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}$ ([Corollary 2 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#cor-cosine-similarity-unit-vectors)). Similarly, the self-attention mechanism in Transformers computes query-key alignment scores through scaled inner products $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{k}}\vphantom{k}} / \sqrt{d_k}$.
>
> 4.  **Weighted and generalized least squares**: In linear regression $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\approx \mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, when observation errors have unequal variances or known correlations with positive definite covariance matrix $\mathbf{\Omega}$, ordinary least squares is inefficient. Generalized least squares minimizes the [matrix-induced norm](#def-matrix-induced-norm) of the residual, with $\mathbf{W} = \mathbf{\Omega}^{-1}$: $$\min_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{}_{\mathbf{W}}^2 = \min_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} {\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rangle\mathclose{}}_{\mathbf{W}}.$$

# 2 Determinants

> **NOTE:**
>
> **Definition 11 (Determinant)** The **determinant** [\[5\]](#ref-wikipedia_determinant) of a $p \times p$ matrix $\mathbf{A}$ with entries $a_{ij}$, written $\det(\mathbf{A})$ or $\mathopen{}\left|\mathbf{A}\right|\mathclose{}$, is the number defined recursively in $p$:
>
> - For $p = 1$, $\det(\mathbf{A}) = a_{11}$.
> - For $p \ge 2$, $$\det(\mathbf{A}) = \sum_{j=1}^p(-1)^{1+j}\, a_{1j} {\det\mathopen{}\left(\mathbf{A}_{(1j)}\right)\mathclose{}},$$ where $\mathbf{A}_{(1j)}$ is the $(p-1) \times (p-1)$ matrix left after deleting row $1$ and column $j$ of $\mathbf{A}$.

> **NOTE:**
>
> **Example 16 (Determinant of a** $2 \times 2$ matrix) For $\mathbf{A} = \begin{bmatrix} a & b \\ c & d \end{bmatrix}$, deleting row 1 and column 1 leaves $\begin{bmatrix} d \end{bmatrix}$, and deleting row 1 and column 2 leaves $\begin{bmatrix} c \end{bmatrix}$. So:
>
> $$\begin{aligned}
> \det(\mathbf{A})
> &= (-1)^{1+1}\, a {\det\mathopen{}\left(\begin{bmatrix} d \end{bmatrix}\right)\mathclose{}}
> + (-1)^{1+2}\, b {\det\mathopen{}\left(\begin{bmatrix} c \end{bmatrix}\right)\mathclose{}}
> && \text{(definition, } p = 2 \text{)}
> \\
> &= a d - b c
> && \text{(definition, } p = 1 \text{)}
> \end{aligned}$$
>
> For example,
>
> $$\begin{aligned}
> {\det\mathopen{}\left(\begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\right)\mathclose{}} &= 2 \cdot 2 - 1 \cdot 1 \\
> &= 3.
> \end{aligned}$$

> **NOTE:**
>
> *Remark 5* (Cofactor expansion). The recursive formula in [Definition 11](#def-determinant) is the *cofactor expansion* along the first row. Other sources define the determinant as a sum over all orderings of the columns and derive this expansion from it; the two definitions agree [\[6\]](#ref-banerjee2014linear).
>
> Each ordering picks one entry from each row, from the column that the ordering assigns to that row, and multiplies them. Its sign is $+1$ if the ordering takes an even number of swaps of two columns to reach from $(1, 2, \ldots, p)$, and $-1$ if it takes an odd number.
>
> For $p = 2$, the columns have two orderings. The ordering $(1, 2)$ keeps each column in place, picks the entries $a_{11}$ and $a_{22}$, and has sign $+1$. The ordering $(2, 1)$ swaps the two columns, picks the entries $a_{12}$ and $a_{21}$, and has sign $-1$. The sum $a_{11} a_{22} - a_{12} a_{21}$ is the value $a d - b c$ from [Example 16](#exm-determinant).

See also [\[5\]](#ref-wikipedia_determinant).

> **TIP:**
>
> Chapter 6 of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown shows the geometric meaning of the determinant:
>
> - [The determinant](https://www.youtube.com/watch?v=Ip3X9LOh2dk) shows how the determinant measures the factor by which a linear transformation scales areas and volumes, and why a zero determinant corresponds to compressing space into a lower dimension.

> **NOTE:**
>
> **Theorem 7 (Determinant of a diagonal matrix)** The determinant ([Definition 11](#def-determinant)) of a $p \times p$ diagonal matrix ([Definition 4 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-diagonal-matrix)) is the product of its diagonal entries:
>
> $${\det\mathopen{}\left(
> \begin{bmatrix}
> d_1    & \cdots & 0      \\
> \vdots & \ddots & \vdots \\
> 0      & \cdots & d_p
> \end{bmatrix}
> \right)\mathclose{}} = \prod_{i=1}^p d_i$$

> **NOTE:**
>
> *Proof*. By [induction](https://morrison-lab.github.io/mcs/proof-writing.html#def-proof-by-induction) on $p$. For $p = 1$, the matrix is $\begin{bmatrix} d_1 \end{bmatrix}$, and its determinant is $d_1$ by definition.
>
> For $p \ge 2$, suppose the result holds for $(p-1) \times (p-1)$ diagonal matrices, and let $\mathbf{D}$ be $p \times p$ and diagonal. Row 1 of $\mathbf{D}$ is $(d_1, 0, \ldots, 0)$, so only the $j = 1$ term of the definition can be nonzero, and deleting row 1 and column 1 of $\mathbf{D}$ leaves the diagonal matrix with diagonal entries $d_2, \ldots, d_p$:
>
> $$\begin{aligned}
> \det(\mathbf{D})
> &= (-1)^{1+1}\, d_1 {\det\mathopen{}\left(\mathbf{D}_{(11)}\right)\mathclose{}}
> + \sum_{j=2}^p (-1)^{1+j} \cdot 0 \cdot{\det\mathopen{}\left(\mathbf{D}_{(1j)}\right)\mathclose{}}
> && \text{(definition)}
> \\
> &= d_1 {\det\mathopen{}\left(\mathbf{D}_{(11)}\right)\mathclose{}}
> && \text{(drop the zero terms)}
> \\
> &= d_1 \prod_{i=2}^p d_i
> && \text{(induction hypothesis)}
> \\
> &= \prod_{i=1}^p d_i
> && \text{(combine)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 17 (Determinant of a scaled identity matrix)** For a number $c$, $c\,\mathbf{I}_p$ is diagonal with every diagonal entry equal to $c$, so $\det(c\,\mathbf{I}_p) = c^p$. In particular, $\det(\mathbf{I}_p) = 1$.

> **NOTE:**
>
> **Theorem 8 (Determinant of a product)** For $p \times p$ matrices $\mathbf{A}$ and $\mathbf{B}$,
>
> $$\det(\mathbf{A}\mathbf{B}) = \det(\mathbf{A}) \det(\mathbf{B}).$$

> **NOTE:**
>
> **Example 18 (Checking the product rule)** For $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}$ and $\mathbf{B} = \begin{bmatrix} 1 & 0 \\ 3 & 1 \end{bmatrix}$, [Example 16](#exm-determinant) gives
>
> $$\begin{aligned}
> \det(\mathbf{A}) &= 2 \cdot 1 - 1 \cdot 0 \\
> &= 2
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> \det(\mathbf{B}) &= 1 \cdot 1 - 0 \cdot 3 \\
> &= 1.
> \end{aligned}$$
>
> The product is
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B}
> &= \begin{bmatrix} 2 \cdot 1 + 1 \cdot 3 & 2 \cdot 0 + 1 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 3 & 0 \cdot 0 + 1 \cdot 1 \end{bmatrix} \\
> &= \begin{bmatrix} 5 & 1 \\ 3 & 1 \end{bmatrix},
> \end{aligned}$$
>
> with
>
> $$\begin{aligned}
> \det(\mathbf{A}\mathbf{B}) &= 5 \cdot 1 - 1 \cdot 3 \\
> &= 2 \\
> &= \det(\mathbf{A})\det(\mathbf{B}).
> \end{aligned}$$

> **NOTE:**
>
> *Remark 6* (An example is not a proof). [Example 18](#exm-det-product) checks [Theorem 8](#thm-det-product) for one pair of $2 \times 2$ matrices, which shows the theorem holds there but does not prove it for every pair. The proof needs properties of the determinant that these notes don’t develop; see Banerjee and Roy [\[6\]](#ref-banerjee2014linear).

See also [\[5\]](#ref-wikipedia_determinant).

> **NOTE:**
>
> **Theorem 9 (The determinant of a symmetric matrix is the product of its eigenvalues)** Let $\mathbf{A}$ be a $p \times p$ symmetric matrix with real entries, with eigendecomposition $\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}$ ([Definition 3 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigendecomposition)) and eigenvalues $\lambda_1, \ldots, \lambda_p$ on the diagonal of $\mathbf{\Lambda}$. Then
>
> $$\det(\mathbf{A}) = \prod_{i=1}^p \lambda_i.$$

> **NOTE:**
>
> *Proof*. First, $\det({\mathbf{Q}}^{\top})\det(\mathbf{Q}) = 1$:
>
> $$\begin{aligned}
> \det({\mathbf{Q}}^{\top})\det(\mathbf{Q})
> &= \det({\mathbf{Q}}^{\top}\mathbf{Q})
> && \text{(determinant of a product)}
> \\
> &= \det(\mathbf{I}_p)
> && \text{(} \mathbf{Q} \text{ is orthogonal)}
> \\
> &= 1
> && \text{(determinant of the identity)}
> \end{aligned}$$
>
> Then:
>
> $$\begin{aligned}
> \det(\mathbf{A})
> &= \det(\mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top})
> && \text{(substitute the eigendecomposition)}
> \\
> &= \det(\mathbf{Q}) \det(\mathbf{\Lambda}) \det({\mathbf{Q}}^{\top})
> && \text{(determinant of a product, twice)}
> \\
> &= \det(\mathbf{\Lambda}) \cdot\det({\mathbf{Q}}^{\top})\det(\mathbf{Q})
> && \text{(reorder the three numbers)}
> \\
> &= \det(\mathbf{\Lambda})
> && \text{(the first display)}
> \\
> &= \prod_{i=1}^p \lambda_i
> && \text{(determinant of a diagonal matrix)}
> \end{aligned}$$
>
> The product steps are [Theorem 8](#thm-det-product), the orthogonality step is [Definition 10 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-orthogonal-matrix), and the identity and diagonal steps are [Theorem 7](#thm-det-diagonal) and [Example 17](#exm-det-diagonal).

> **NOTE:**
>
> **Corollary 3 (A positive definite matrix has a positive determinant)** If $\mathbf{A}$ is positive definite ([Definition 2](#def-positive-definite)), then $\det(\mathbf{A}) > 0$.

> **NOTE:**
>
> *Proof*. By [Theorem 2](#thm-definite-eigenvalues), every eigenvalue of $\mathbf{A}$ is positive, so their product, which is $\det(\mathbf{A})$ by [Theorem 9](#thm-det-eigenvalues), is positive.

> **NOTE:**
>
> **Example 19 (Two ways to the same determinant)** $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ has eigenvalues $3$ and $1$ ([Example 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#exm-eigenvalue)), so [Theorem 9](#thm-det-eigenvalues) gives
>
> $$\begin{aligned}
> \det(\mathbf{A}) &= 3 \cdot 1 \\
> &= 3,
> \end{aligned}$$
>
> matching $2 \cdot 2 - 1 \cdot 1 = 3$ from [Example 16](#exm-determinant).

# Definitions on this page

- [Definition 1 (Positive semidefinite matrix)](#def-positive-semidefinite)
- [Definition 2 (Positive definite matrix)](#def-positive-definite)
- [Definition 3 (Condition number of a positive definite matrix)](#def-condition-number)
- [Definition 4 (Condition number of a matrix)](#def-matrix-condition-number)
- [Definition 5 (Ill-conditioned matrix)](#def-ill-conditioned)
- [Definition 6 (Well-conditioned matrix)](#def-well-conditioned)
- [Definition 7 (Paraboloid)](#def-paraboloid)
- [Definition 8 (Elliptic paraboloid)](#def-elliptic-paraboloid)
- [Definition 9 (Matrix-induced inner product (](#def-matrix-induced-inner-product)$\mathbf{A}$-inner product))
- [Definition 10 (Matrix-induced norm,](#def-matrix-induced-norm) $\mathbf{A}$-norm)
- [Definition 11 (Determinant)](#def-determinant)

Back to top

## References

\[1\]

Wikipedia contributors, “Definite matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Definite_matrix>

\[2\]

Wikipedia contributors, “Condition number — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Condition_number>

\[3\]

L. N. Trefethen and D. Bau III, *Numerical linear algebra*. SIAM, 1997. doi: [10.1137/1.9780898719574](https://doi.org/10.1137/1.9780898719574).

\[4\]

Wikipedia contributors, “Paraboloid — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Paraboloid>

\[5\]

Wikipedia contributors, “Determinant — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Determinant>

\[6\]

S. Banerjee and A. Roy, *Linear algebra and matrix analysis for statistics*, vol. 181. Crc Press Boca Raton, 2014. Available: <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>
