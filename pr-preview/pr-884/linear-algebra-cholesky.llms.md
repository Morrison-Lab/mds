# Schur Complements and the Cholesky Factorization

Code

Published

Last modified: 2026-11-27 10:54:20 (PST)

# 1 Gram matrices, Schur complements and Cholesky

> **NOTE:**
>
> This section is adapted from Zhou [\[1\]](#ref-zhou2024pd), used under the MIT License (see the license text in [Section  in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source’s eigenvalue and quadratic-form characterizations of definiteness are covered in these notes already ([Theorem 2 in Definite Matrices](linear-algebra-definite-matrices.llms.md#thm-definite-eigenvalues)). These parts of the source are left out:
>
> - its covariance test, which needs probability
> - its material on minimization
> - its positive semidefinite version of the Schur complement test
> - its pivot test
> - its Hadamard-product “Schur lemma”
> - its notes on the LU factorization and computational cost
> - its statement that a nonnegative combination of positive semidefinite matrices is positive semidefinite ([Theorem 2](#thm-pd-operations) states the positive definite version)
> - its section on the ellipse $a x^2 + 2 b x y + c y^2 = 1$, with its worked example of a positive definite and an indefinite matrix
> - its numerical example of the Cholesky factorization
>
> The source leaves the Schur complement test unproved; it is proved here from a block expansion of the quadratic form, and the Cholesky factorization is derived from it.

> **NOTE:**
>
> **Theorem 1 (Definite matrices are Gram matrices)** Let $\mathbf{A}$ be a $p \times p$ matrix.
>
> 1.  $\mathbf{A}$ is positive semidefinite ([Definition 1 in Definite Matrices](linear-algebra-definite-matrices.llms.md#def-positive-semidefinite)) exactly when $\mathbf{A} = {\mathbf{B}}^{\top} \mathbf{B}$ for some matrix $\mathbf{B}$ with $p$ columns.
> 2.  $\mathbf{A}$ is positive definite ([Definition 2 in Definite Matrices](linear-algebra-definite-matrices.llms.md#def-positive-definite)) exactly when $\mathbf{A} = {\mathbf{B}}^{\top} \mathbf{B}$ for some matrix $\mathbf{B}$ with $p$ linearly independent columns.

> **NOTE:**
>
> *Proof*. **If** $\mathbf{A} = {\mathbf{B}}^{\top} \mathbf{B}$. $\mathbf{A}$ is symmetric, since
>
> $$\begin{aligned}
> {({\mathbf{B}}^{\top} \mathbf{B})}^{\top} &= {\mathbf{B}}^{\top}\,{({\mathbf{B}}^{\top})}^{\top} \\
> &= {\mathbf{B}}^{\top} \mathbf{B}
> \end{aligned}$$
>
> ([Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product), [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)). For any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$,
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,{\mathbf{B}}^{\top}\,\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(substitute } \mathbf{A} \text{)}
> \\
> &= {(\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}^{\top}\,(\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{, }\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathopen{}\left\lVert\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2
> && \text{(}\href{linear-algebra-vectors.qmd#eq-norm-dot-product}{\text{Equation~5 in Vectors}}\text{, squared)}
> \\
> &\ge 0.
> && \text{(}\href{linear-algebra-inner-products.qmd#thm-norm-properties}{\text{Theorem~1 in Inner Products and the Cauchy-Schwarz Inequality}}\text{)}
> \end{aligned}$$
>
> If the columns of $\mathbf{B}$ are linearly independent, then $\mathcal{N}(\mathbf{B}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ ($\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is the combination of the columns with coefficients $x_j$, [Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns), and only the zero combination is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, [Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)), so for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, $\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and $\mathopen{}\left\lVert\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 > 0$ ([Theorem 1 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#thm-norm-properties), part 1).
>
> **Only if.** Let $\mathbf{A}$ be positive semidefinite. It is symmetric, so $\mathbf{A} = \mathbf{Q} \mathbf{\Lambda} {\mathbf{Q}}^{\top}$ ([Theorem 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#thm-spectral)), and every $\lambda_i \ge 0$ ([Theorem 2 in Definite Matrices](linear-algebra-definite-matrices.llms.md#thm-definite-eigenvalues)). Let $\mathbf{\Lambda}^{1/2} \stackrel{\text{def}}{=}\operatorname{diag}(\sqrt{\lambda_1}, \ldots, \sqrt{\lambda_p})$, which is symmetric, with $\mathbf{\Lambda}^{1/2} \mathbf{\Lambda}^{1/2} = \mathbf{\Lambda}$ (the product of diagonal matrices multiplies their diagonals, as in the proof of [Theorem 9 in Similarity and Diagonalization](linear-algebra-diagonalization.llms.md#thm-diagonalizable-powers)), and let $\mathbf{B} \stackrel{\text{def}}{=}\mathbf{\Lambda}^{1/2} {\mathbf{Q}}^{\top}$. Then
>
> $$\begin{aligned}
> {\mathbf{B}}^{\top} \mathbf{B}
> &= {({\mathbf{Q}}^{\top})}^{\top}\,{(\mathbf{\Lambda}^{1/2})}^{\top}\,\mathbf{\Lambda}^{1/2} {\mathbf{Q}}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{Q}\,\mathbf{\Lambda}^{1/2} \mathbf{\Lambda}^{1/2}\,{\mathbf{Q}}^{\top}
> && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~6 in Matrices}}\text{; } \mathbf{\Lambda}^{1/2} \text{ is symmetric)}
> \\
> &= \mathbf{Q} \mathbf{\Lambda} {\mathbf{Q}}^{\top}
> && \text{(} \mathbf{\Lambda}^{1/2} \mathbf{\Lambda}^{1/2} = \mathbf{\Lambda} \text{)}
> \\
> &= \mathbf{A}.
> && \text{(}\href{linear-algebra-decompositions.qmd#thm-spectral}{\text{Theorem~1 in Eigenvalues and Matrix Decompositions}}\text{)}
> \end{aligned}$$
>
> If $\mathbf{A}$ is positive definite, it is positive semidefinite ([Remark 1 in Definite Matrices](linear-algebra-definite-matrices.llms.md#rem-positive-definite-symmetry)), so the same $\mathbf{B}$ gives $\mathbf{A} = {\mathbf{B}}^{\top} \mathbf{B}$; and every $\lambda_i > 0$ ([Theorem 2 in Definite Matrices](linear-algebra-definite-matrices.llms.md#thm-definite-eigenvalues)), so $\mathbf{\Lambda}^{1/2}$ is diagonal with nonzero diagonal, and invertible (its inverse is $\operatorname{diag}(1/\sqrt{\lambda_1}, \ldots, 1/\sqrt{\lambda_p})$); ${\mathbf{Q}}^{\top}$ is invertible with inverse $\mathbf{Q}$ ([Remark 6 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#rem-orthogonal-matrix-columns)). So $\mathbf{B}$ is invertible ([Theorem 1 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#thm-inverse-product)), and its $p$ columns are linearly independent ([Theorem 1 in Similarity and Diagonalization](linear-algebra-diagonalization.llms.md#thm-invertible-rank), [Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)).

> **NOTE:**
>
> **Example 1 (Gram factorizations)**  
>
> - With $\mathbf{R} = \begin{bmatrix} 1 & 1 \end{bmatrix}$ ($1 \times 2$), ${\mathbf{R}}^{\top} \mathbf{R} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$, the positive semidefinite matrix of [Example 1 in Definite Matrices](linear-algebra-definite-matrices.llms.md#exm-positive-semidefinite); the two columns of $\mathbf{R}$, $1$ and $1$, are dependent, so part 2 does not apply to $\mathbf{R}$; ${\mathbf{R}}^{\top} \mathbf{R}$ is in fact not positive definite ([Example 4 in Definite Matrices](linear-algebra-definite-matrices.llms.md#exm-positive-definite)).
> - With $\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}$, whose columns are independent ([Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank)), ${\mathbf{X}}^{\top} \mathbf{X}= \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}$ ([Example 1 in Design Matrices and Projections](linear-algebra-projections.llms.md#exm-gram-invertible)) is positive definite.
> - $\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}$ of [Example 4 in Definite Matrices](linear-algebra-definite-matrices.llms.md#exm-positive-definite) is symmetric but not positive semidefinite, so by part 1 it is not ${\mathbf{B}}^{\top} \mathbf{B}$ for any $\mathbf{B}$.

> **NOTE:**
>
> **Theorem 2 (Operations that preserve definiteness)**  
>
> 1.  If $\mathbf{C}$ is a $p \times p$ positive definite matrix ([Definition 2 in Definite Matrices](linear-algebra-definite-matrices.llms.md#def-positive-definite)) and $\mathbf{A}$ is a $p \times k$ matrix with $k$ linearly independent columns, then the $k \times k$ matrix ${\mathbf{A}}^{\top} \mathbf{C} \mathbf{A}$ is positive definite.
> 2.  If $\mathbf{A}_1$ and $\mathbf{A}_2$ are positive definite $p \times p$ matrices and $\alpha_1, \alpha_2 > 0$, then $\alpha_1 \mathbf{A}_1 + \alpha_2 \mathbf{A}_2$ is positive definite.

> **NOTE:**
>
> *Proof*. **Part 1.** ${\mathbf{A}}^{\top} \mathbf{C} \mathbf{A}$ is symmetric:
>
> $$\begin{aligned}
> {({\mathbf{A}}^{\top} \mathbf{C} \mathbf{A})}^{\top} &= {\mathbf{A}}^{\top}\,{\mathbf{C}}^{\top}\,{({\mathbf{A}}^{\top})}^{\top} \\
> &= {\mathbf{A}}^{\top} \mathbf{C} \mathbf{A}
> \end{aligned}$$
>
> ([Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product), twice; $\mathbf{C}$ symmetric; [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)). For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_k$, $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$, since the columns of $\mathbf{A}$ are independent ([Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns), [Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)), and
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,({\mathbf{A}}^{\top} \mathbf{C} \mathbf{A})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= {(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}^{\top}\,\mathbf{C}\,(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{, }\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &> 0.
> && \text{(} \mathbf{C} \text{ positive definite, } \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{)}
> \end{aligned}$$
>
> **Part 2.** $\alpha_1 \mathbf{A}_1 + \alpha_2 \mathbf{A}_2$ is symmetric: its transpose is $\alpha_1 {\mathbf{A}_1}^{\top} + \alpha_2 {\mathbf{A}_2}^{\top} = \alpha_1 \mathbf{A}_1 + \alpha_2 \mathbf{A}_2$ ([Theorem 5 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-sum), [Definition 9 in Matrices](linear-algebra-matrices.llms.md#def-scalar-mult), [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)). For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$,
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,(\alpha_1 \mathbf{A}_1 + \alpha_2 \mathbf{A}_2)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,(\alpha_1 \mathbf{A}_1)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,(\alpha_2 \mathbf{A}_2)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-distrib}{\text{Theorem~2 in Matrix Multiplication}}\text{, twice)}
> \\
> &= \alpha_1\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A}_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + \alpha_2\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A}_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(}\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{)}
> \\
> &> 0.
> && \text{(each term is positive)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 2 (Building positive definite matrices)**  
>
> - With $\mathbf{C} = \mathbf{I}_3$ and $\mathbf{X}$ of [Example 1](#exm-pd-gram), part 1 gives again that ${\mathbf{X}}^{\top} \mathbf{X}$ is positive definite.
>
> - With $\alpha_1 = 2$, $\mathbf{A}_1 = \mathbf{I}_2$ ([Example 4 in Definite Matrices](linear-algebra-definite-matrices.llms.md#exm-positive-definite)), $\alpha_2 = 1$ and
>
>   $$\begin{aligned}
>   \mathbf{A}_2 &= {\mathbf{X}}^{\top} \mathbf{X}\\
>   &= \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}
>   \end{aligned}$$
>
>   ([Example 1](#exm-pd-gram)), part 2 gives that $2 \mathbf{I}_2 + {\mathbf{X}}^{\top} \mathbf{X}= \begin{bmatrix} 5 & 6 \\ 6 & 16 \end{bmatrix}$ is positive definite.
>
> - An aside beyond part 2: $\mathbf{I}_2 + \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ is positive definite plus positive semidefinite; its quadratic form is $x_1^2 + x_2^2 + (x_1 + x_2)^2 > 0$ for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so it is positive definite, in line with its eigenvalues $3$ and $1$ ([Example 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#exm-eigenvalue)).
>
> - Independence is needed in part 1: with $\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$, whose columns are equal, ${\mathbf{A}}^{\top}\,\mathbf{I}_2\,\mathbf{A} = \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}$, and $(1, -1)$ gives quadratic form $0$.

> **NOTE:**
>
> **Theorem 3 (A positive definite matrix is invertible)** Every positive definite matrix ([Definition 2 in Definite Matrices](linear-algebra-definite-matrices.llms.md#def-positive-definite)) is invertible ([Definition 6 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-invertible-matrix)).

> **NOTE:**
>
> *Proof*. Let $\mathbf{A}$ be a $p \times p$ positive definite matrix, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ be a vector of length $p$ with $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$. Then
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-quadratic-form}{\text{Definition~13 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p
> && \text{(} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p \text{)}
> \\
> &= 0.
> && \text{(every term of the inner product is } 0 \text{)}
> \end{aligned}$$
>
> If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$, then ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} > 0$ because $\mathbf{A}$ is positive definite, which contradicts ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = 0$. So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$, the null space $\mathcal{N}(\mathbf{A})$ is $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p\right\}\mathclose{}$, and $\mathbf{A}$ is invertible by [Theorem 1 in Similarity and Diagonalization](linear-algebra-diagonalization.llms.md#thm-invertible-rank).

> **NOTE:**
>
> **Example 3 (Positive definite matrices are invertible; the converse fails)** $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ is positive definite, since
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= 2 x_1^2 + 2 x_1 x_2 + 2 x_2^2
> && \text{(multiply out)}
> \\
> &= x_1^2 + x_2^2 + (x_1 + x_2)^2,
> && \text{(expand the square)}
> \end{aligned}$$
>
> which is $0$ only when $x_1 = x_2 = 0$. It is invertible, with ${\mathopen{}\left(\mathbf{A}\right)\mathclose{}}^{-1} = \frac{1}{3}\begin{bmatrix} 2 & -1 \\ -1 & 2 \end{bmatrix}$.
>
> The converse fails. $\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}$ of [Example 4 in Definite Matrices](linear-algebra-definite-matrices.llms.md#exm-positive-definite) is not positive definite, yet it is invertible: ${\mathopen{}\left(\mathbf{D}\right)\mathclose{}}^{-1} = \frac{1}{3}\begin{bmatrix} -1 & 2 \\ 2 & -1 \end{bmatrix}$.

> **NOTE:**
>
> **Theorem 4 (Adding a positive multiple of the identity makes a matrix positive definite)** Let $\mathbf{A}$ be a $p \times p$ positive semidefinite matrix ([Definition 1 in Definite Matrices](linear-algebra-definite-matrices.llms.md#def-positive-semidefinite)) and let $\alpha> 0$. Then $\mathbf{A} + \alpha\mathbf{I}_p$ is positive definite ([Definition 2 in Definite Matrices](linear-algebra-definite-matrices.llms.md#def-positive-definite)), so it is invertible ([Theorem 3](#thm-pd-invertible)).

> **NOTE:**
>
> *Proof*. $\mathbf{A} + \alpha\mathbf{I}_p$ is symmetric: its transpose is ${\mathbf{A}}^{\top} + \alpha\mathbf{I}_p = \mathbf{A} + \alpha\mathbf{I}_p$ ([Theorem 5 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-sum), [Definition 9 in Matrices](linear-algebra-matrices.llms.md#def-scalar-mult), [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)). For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$,
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,(\mathbf{A} + \alpha\mathbf{I}_p)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + \alpha\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,\mathbf{I}_p\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-distrib}{\text{Theorem~2 in Matrix Multiplication}}\text{, }\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + \alpha\,\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{, }\href{linear-algebra-vectors.qmd#eq-norm-dot-product}{\text{Equation~5 in Vectors}}\text{, squared)}
> \\
> &> 0.
> && \text{(} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \ge 0, \; \alpha> 0, \; \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p \text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 4 (Repairing a singular matrix)** $\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$ of [Example 1 in Definite Matrices](linear-algebra-definite-matrices.llms.md#exm-positive-semidefinite) is positive semidefinite and singular: $\mathbf{B} (1, -1) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$. With $\alpha= 1$,
>
> $$\mathbf{B} + \mathbf{I}_2 = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix},$$
>
> which is positive definite and invertible by [Example 3](#exm-pd-invertible).

> **NOTE:**
>
> **Corollary 1 (**${\mathbf{X}}^{\top}\mathbf{X}$ is invertible exactly when $\mathbf{X}$ has full column rank) For an $n \times p$ matrix $\mathbf{X}$, the $p \times p$ matrix ${\mathbf{X}}^{\top}\mathbf{X}$ is invertible ([Definition 6 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-invertible-matrix)) exactly when $\operatorname{rank}(\mathbf{X}) = p$ ([Definition 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-full-column-rank)).

> **NOTE:**
>
> *Proof*. The following statements are equivalent:
>
> $$\begin{aligned}
> {\mathbf{X}}^{\top}\mathbf{X}\text{ is invertible}
> &\iff \mathcal{N}({\mathbf{X}}^{\top}\mathbf{X}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p\right\}\mathclose{}
> && \text{(}\href{linear-algebra-diagonalization.qmd#thm-invertible-rank}{\text{Theorem~1 in Similarity and Diagonalization}}\text{)}
> \\
> &\iff \mathcal{N}(\mathbf{X}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p\right\}\mathclose{}
> && \text{(}\href{linear-algebra-column-null-space.qmd#thm-null-gram}{\text{Theorem~6 in Column Space and Null Space}}\text{)}
> \\
> &\iff \mathbf{X}\text{ has full column rank.}
> && \text{(}\href{linear-algebra-column-null-space.qmd#thm-independent-null-space}{\text{Theorem~3 in Column Space and Null Space}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 5 (A design matrix with a repeated column)** $\mathbf{X}= \begin{bmatrix} 1 & 2 \\ 1 & 2 \\ 1 & 2 \end{bmatrix}$ of [Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank) has rank $1 < 2$. Its cross-product matrix is
>
> $${\mathbf{X}}^{\top}\mathbf{X}= \begin{bmatrix} 3 & 6 \\ 6 & 12 \end{bmatrix},$$
>
> which is singular: $(2, -1)$ is in its null space, because $\mathbf{X}(2, -1) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$ ([Example 5 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-independent-null-space)). For the full-column-rank matrix of [Example 1 in Design Matrices and Projections](linear-algebra-projections.llms.md#exm-gram-invertible), ${\mathbf{X}}^{\top}\mathbf{X}$ is invertible.

> **NOTE:**
>
> **Definition 1 (Block matrix)** Split the rows of an $m \times n$ matrix $\mathbf{X}$ into the first $k$ and the last $m - k$, and its columns into the first $l$ and the last $n - l$, with $1 \le k < m$ and $1 \le l < n$. This cuts $\mathbf{X}$ into four smaller matrices, its **blocks**:
>
> $$\mathbf{X} = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ \mathbf{C} & \mathbf{D} \end{bmatrix},$$
>
> where $\mathbf{A}$ ($k \times l$) holds the entries $x_{ij}$ with $i \le k$ and $j \le l$, $\mathbf{B}$ ($k \times (n - l)$) those with $i \le k$ and $j > l$, $\mathbf{C}$ ($(m - k) \times l$) those with $i > k$ and $j \le l$, and $\mathbf{D}$ ($(m - k) \times (n - l)$) those with $i > k$ and $j > l$, each in its original order. A matrix written this way is a **block matrix** [\[2\]](#ref-wikipedia_block_matrix).

> **NOTE:**
>
> **Example 6 (Cutting a** $3 \times 3$ matrix into blocks) With
>
> $$\begin{aligned}
> k &= l \\
> &= 1,
> \end{aligned}$$
>
> $$\mathbf{X} = \begin{bmatrix} 4 & 2 & 1 \\ 2 & 5 & 3 \\ 1 & 3 & 6 \end{bmatrix}
> = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ \mathbf{C} & \mathbf{D} \end{bmatrix},
> \qquad
> \mathbf{A} = \begin{bmatrix} 4 \end{bmatrix},
> \quad
> \mathbf{B} = \begin{bmatrix} 2 & 1 \end{bmatrix},
> \quad
> \mathbf{C} = \begin{bmatrix} 2 \\ 1 \end{bmatrix},
> \quad
> \mathbf{D} = \begin{bmatrix} 5 & 3 \\ 3 & 6 \end{bmatrix}.$$
>
> For instance, entry $(1, 2)$ of $\mathbf{D}$ is
>
> $$\begin{aligned}
> x_{1 + 1, 2 + 1} &= x_{23} \\
> &= 3.
> \end{aligned}$$
>
> With
>
> $$\begin{aligned}
> k &= l \\
> &= 2
> \end{aligned}$$
>
> instead, the leading $2 \times 2$ block is $\begin{bmatrix} 4 & 2 \\ 2 & 5 \end{bmatrix}$.

> **NOTE:**
>
> **Definition 2 (Leading block of a square matrix, top-left block)** When $\mathbf{X}$ is $n \times n$ and $1 \le k \le n$, the $k \times k$ matrix of the entries $x_{ij}$ with $i, j \le k$ is the **leading** (or **top-left**) $k \times k$ **block** of $\mathbf{X}$; for $k < n$ it is the block $\mathbf{A}$ of [Definition 1](#def-block-matrix) with $l = k$, and for $k = n$ it is $\mathbf{X}$ itself.

> **NOTE:**
>
> **Theorem 5 (Leading blocks of a positive definite matrix are positive definite)** Let $\mathbf{X}$ be a $p \times p$ positive definite matrix ([Definition 2 in Definite Matrices](linear-algebra-definite-matrices.llms.md#def-positive-definite)), and for $1 \le k \le p$ let $\mathbf{X}_k$ be its leading $k \times k$ block ([Definition 1](#def-block-matrix)), with entries $x_{ij}$ for $i, j \le k$. Then $\mathbf{X}_k$ is positive definite. Also, every diagonal entry of a positive definite matrix is positive.

> **NOTE:**
>
> *Proof*. $\mathbf{X}_k$ is symmetric, because $\mathbf{X}$ is. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathbb{R}^k$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (u_1, \ldots, u_k, 0, \ldots, 0) \in \mathbb{R}^p$, which is nonzero, with entries $y_i = u_i$ for $i \le k$ and $y_i = 0$ for $i > k$. Then
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{X}_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}
> &= \sum_{i=1}^{k} \sum_{j=1}^{k} u_i\,x_{ij}\,u_j
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{, }\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \\
> &= \sum_{i=1}^{k} \sum_{j=1}^{k} y_i\,x_{ij}\,y_j
> && \text{(} y_i = u_i \text{ for } i \le k \text{)}
> \\
> &= \sum_{i=1}^p\sum_{j=1}^py_i\,x_{ij}\,y_j
> && \text{(each added term has a factor } y_i = 0 \text{ or } y_j = 0 \text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top} \mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{, }\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \\
> &> 0.
> && \text{(} \mathbf{X} \text{ positive definite, } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{)}
> \end{aligned}$$
>
> For the diagonal entry $x_{ii}$, take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i$ ([Definition 21 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)), which is nonzero:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i}^{\top} \mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i
> &= \sum_{r=1}^{p} \sum_{s=1}^{p} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i)_r\,x_{rs}\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i)_s
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{, }\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \\
> &= x_{ii}
> && \text{(only the term with } r \text{ and } s \text{ both equal to } i \text{ is nonzero)}
> \\
> &> 0.
> && \text{(} \mathbf{X} \text{ positive definite)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 7 (A quick necessary test)** $\begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ is positive definite ([Example 2](#exm-pd-operations)), and its diagonal entries $2, 2$ and its $1 \times 1$ leading block $[2]$ are positive. The test can only rule matrices out: $-\mathbf{I}_2$ has negative diagonal entries, so it is not positive definite, even though
>
> $$\begin{aligned}
> \det(-\mathbf{I}_2) &= (-1)(-1) - 0 \\
> &= 1 \\
> &> 0
> \end{aligned}$$
>
> ([Definition 1 in Determinants](linear-algebra-determinants.llms.md#def-determinant)); a positive determinant alone does not make a matrix positive definite. And positive diagonal entries are not enough: $\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}$ of [Example 4 in Definite Matrices](linear-algebra-definite-matrices.llms.md#exm-positive-definite) has them but is not positive definite.

> **NOTE:**
>
> **Theorem 6 (The quadratic form of a block matrix)** Let $k, m \ge 1$, let $\mathbf{A}$ be a symmetric $k \times k$ matrix, $\mathbf{B}$ a $k \times m$ matrix and $\mathbf{C}$ a symmetric $m \times m$ matrix, and let $\mathbf{X}$ be the $(k + m) \times (k + m)$ block matrix ([Definition 1](#def-block-matrix))
>
> $$\mathbf{X} = \begin{bmatrix} \underbrace{\mathbf{A}}_{k \times k} & \underbrace{\mathbf{B}}_{k \times m} \\ \underbrace{{\mathbf{B}}^{\top}}_{m \times k} & \underbrace{\mathbf{C}}_{m \times m} \end{bmatrix},$$
>
> that is, $x_{ij} = a_{ij}$, $x_{i, k+j} = b_{ij}$, $x_{k+i, j} = b_{ji}$ and $x_{k+i, k+j} = c_{ij}$ for indices in range. $\mathbf{X}$ is symmetric ([Definition 3 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-symmetric-matrix)):
>
> $$\begin{aligned}
> x_{k+i, j} &= b_{ji} \\
> &= x_{j, k+i},
> \end{aligned}$$
>
> and $\mathbf{A}$ and $\mathbf{C}$ are symmetric. Split $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathbb{R}^{k + m}$ as $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})$, with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathbb{R}^k$ its first $k$ entries and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathbb{R}^m$ the rest. Then
>
> $${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + 2\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} \mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}},
> \tag{1}$$
>
> and if $\mathbf{A}$ is invertible, with $\mathbf{S} \stackrel{\text{def}}{=}\mathbf{C} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} \stackrel{\text{def}}{=}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathbf{A}^{-1} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$,
>
> $${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}.$$

> **NOTE:**
>
> *Proof*. $\mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ in blocks. For $i \le k$,
>
> $$\begin{aligned}
> (\mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})_i
> &= \sum_{j=1}^{k+m} x_{ij}\,v_j
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\
> &= \sum_{j=1}^{k} x_{ij}\,v_j + \sum_{j=1}^{m} x_{i, k+j}\,v_{k+j}
> && \text{(split the sum at } j = k \text{)}
> \\
> &= \sum_{j=1}^{k} a_{ij}\,u_j + \sum_{j=1}^{m} b_{ij}\,w_j
> && \text{(the blocks of } \mathbf{X} \text{ and of } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \text{)}
> \\
> &= (\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}})_i + (\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})_i,
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> and in the same way $(\mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})_{k+i} = ({\mathbf{B}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}})_i + (\mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})_i$ for $i \le m$.
>
> **The expansion.**
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> &= \sum_{i=1}^{k} u_i\,(\mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})_i + \sum_{i=1}^{m} w_i\,(\mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})_{k+i}
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{, split the sum at } k \text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \cdot (\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}) + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot ({\mathbf{B}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> && \text{(the blocks of } \mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} {\mathbf{B}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} \mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> && \text{(}\href{linear-algebra-orthogonal-complements.qmd#thm-dot-linear}{\text{Theorem~1 in Orthogonal Complements and the Fundamental Theorem}}\text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} \mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> && \text{(} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} {\mathbf{B}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = {\mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} {\mathbf{B}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right)\mathclose{}}^{\top} \text{, which equals } {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \text{; } 1 \times 1 \text{, }\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~6 in Matrices}}\text{, }\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + 2\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} \mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}.
> && \text{(combine like terms)}
> \end{aligned}$$
>
> **Completing the square.** Write $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} \stackrel{\text{def}}{=}\mathbf{A}^{-1} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}$ and $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} = \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc), [Definition 5 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-matrix-inverse), [Theorem 4 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-identity)); $\mathbf{A}^{-1}$ is symmetric ([Corollary 1 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric)). Then
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}
> &= (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}) \cdot \mathbf{A}\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}})
> && \text{(substitute } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} \text{)}
> \\
> &= (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}) \cdot (\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-distrib}{\text{Theorem~2 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}
> && \text{(}\href{linear-algebra-orthogonal-complements.qmd#thm-dot-linear}{\text{Theorem~1 in Orthogonal Complements and the Fundamental Theorem}}\text{, both slots)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}
> && \text{(as in the expansion, with } {\mathbf{A}}^{\top} = \mathbf{A} \text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + 2\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}
> && \text{(combine like terms)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + 2\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> && \text{(} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} = \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \text{, twice)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + 2\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top}\,{\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}},
> && \text{(} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}}^{\top} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} {\mathbf{B}}^{\top} \mathbf{A}^{-1} \text{, }\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{, }\href{linear-algebra-special-matrices.qmd#cor-inverse-symmetric}{\text{Corollary~1 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top}\,(\mathbf{C} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> && \text{(substitute } \mathbf{S} \text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top}\,(\mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> && \text{(}\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{, difference rule on the right)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} \mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} - {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top}\,{\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}.
> && \text{(}\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{, difference rule on the left)}
> \end{aligned}$$
>
> Adding the two displays, the ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top}\,{\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ terms cancel, leaving ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + 2\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} \mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$, which is ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ by [Equation 1](#eq-block-quadratic).

> **NOTE:**
>
> **Example 8 (The** $2 \times 2$ case) For $\mathbf{X} = \begin{bmatrix} a & b \\ b & c \end{bmatrix}$ ($k = 1$ and $m = 1$) and $a \ne 0$, the theorem reads
>
> $$a u^2 + 2buw + cw^2 = a\,\mathopen{}\left(u + \tfrac{b}{a}\,w\right)\mathclose{}^2 + \mathopen{}\left(c - \tfrac{b^2}{a}\right)\mathclose{}\,w^2,$$
>
> with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (u, w)$: the familiar completing of the square. With
>
> $$\begin{aligned}
> a &= c \\
> &= 5
> \end{aligned}$$
>
> and $b = 4$:
>
> $$\begin{aligned}
> 5\,(u + 0.8\,w)^2 + 1.8\,w^2 &= 5\,(u^2 + 1.6\,uw + 0.64\,w^2) + 1.8\,w^2 \\
> &= 5u^2 + 8uw + 3.2\,w^2 + 1.8\,w^2 \\
> &= 5u^2 + 8uw + 5w^2.
> \end{aligned}$$

> **NOTE:**
>
> **Definition 3 (Schur complement)** For a block matrix $\mathbf{X} = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ {\mathbf{B}}^{\top} & \mathbf{C} \end{bmatrix}$ as in [Theorem 6](#thm-block-quadratic) with $\mathbf{A}$ invertible, the **Schur complement** [\[3\]](#ref-wikipedia_schur_complement) of $\mathbf{A}$ in $\mathbf{X}$ is the $m \times m$ matrix $\mathbf{S} = \mathbf{C} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B}$ defined in [Theorem 6](#thm-block-quadratic).

> **NOTE:**
>
> **Example 9 (Schur complements of** $2 \times 2$ matrices)  
>
> - For $\begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}$ with $\mathbf{A} = [5]$:
>
>   $$\begin{aligned}
>   \mathbf{S} &= 5 - 4 \cdot\tfrac{1}{5} \cdot 4 \\
>   &= \tfrac{25}{5} - \tfrac{16}{5} \\
>   &= \tfrac{9}{5},
>   \end{aligned}$$
>
>   that is, $\mathbf{S} = [\tfrac{9}{5}]$.
>
> - For $\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}$ with $\mathbf{A} = [1]$:
>
>   $$\begin{aligned}
>   \mathbf{S} &= [1 - 2 \cdot 1 \cdot 2] \\
>   &= [-3].
>   \end{aligned}$$
>
> - For $\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$ the top-left block $[0]$ is not invertible, so there is no Schur complement of it.

> **NOTE:**
>
> **Theorem 7 (Schur complement test)** Let $\mathbf{X} = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ {\mathbf{B}}^{\top} & \mathbf{C} \end{bmatrix}$ be as in [Theorem 6](#thm-block-quadratic). Then $\mathbf{X}$ is positive definite ([Definition 2 in Definite Matrices](linear-algebra-definite-matrices.llms.md#def-positive-definite)) exactly when $\mathbf{A}$ is positive definite and its Schur complement $\mathbf{S}$ ([Definition 3](#def-schur-complement)) is positive definite.

> **NOTE:**
>
> *Proof*. **If.** $\mathbf{A}$ is positive definite, so invertible ([Theorem 4 in Definite Matrices](linear-algebra-definite-matrices.llms.md#thm-pd-inverse)), and $\mathbf{S}$ is defined. $\mathbf{X}$ is symmetric. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}) \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathbf{A}^{-1} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$. By [Theorem 6](#thm-block-quadratic), ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$, and both terms are at least $0$. If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, the second term is positive. If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$, so the first term is positive. Either way ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} > 0$.
>
> **Only if.** $\mathbf{A}$ is the top-left $k \times k$ block of $\mathbf{X}$, so it is positive definite ([Theorem 5](#thm-pd-submatrix)), and invertible ([Theorem 4 in Definite Matrices](linear-algebra-definite-matrices.llms.md#thm-pd-inverse)). $\mathbf{S}$ is symmetric:
>
> $$\begin{aligned}
> {({\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B})}^{\top} &= {\mathbf{B}}^{\top}\,{(\mathbf{A}^{-1})}^{\top}\,\mathbf{B} \\
> &= {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B}
> \end{aligned}$$
>
> ([Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product), [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose) for ${({\mathbf{B}}^{\top})}^{\top} = \mathbf{B}$, [Corollary 1 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric)), and $\mathbf{C}$ is symmetric, so $\mathbf{S} = \mathbf{C} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B}$ is symmetric (the transpose of a difference is the difference of the transposes, entry by entry, [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)). For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = -\mathbf{A}^{-1} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}) \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$; then ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} > 0$ ([Theorem 6](#thm-block-quadratic)).

> **NOTE:**
>
> **Example 10 (Testing** $2 \times 2$ matrices) A symmetric $\begin{bmatrix} a & b \\ b & c \end{bmatrix}$ is positive definite exactly when $a > 0$ and $c - \tfrac{b^2}{a} > 0$, that is, $a > 0$ and $ac > b^2$ (a $1 \times 1$ matrix $[s]$ is positive definite exactly when $s > 0$, since ${x}^{\top} s x = s x^2$).
>
> - $\begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}$: $5 > 0$ and $\tfrac{9}{5} > 0$ ([Example 9](#exm-schur-complement)), so it is positive definite.
> - $\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}$: $1 > 0$ but $\mathbf{S} = -3$, so it is not, as [Example 4 in Definite Matrices](linear-algebra-definite-matrices.llms.md#exm-positive-definite) found directly.

> **NOTE:**
>
> **Theorem 8 (The inverse of a positive definite block matrix)** Let $\mathbf{X} = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ {\mathbf{B}}^{\top} & \mathbf{C} \end{bmatrix}$ be as in [Theorem 6](#thm-block-quadratic), with $\mathbf{X}$ [positive definite](linear-algebra-definite-matrices.llms.md#def-positive-definite). Then $\mathbf{X}$ is [invertible](linear-algebra-special-matrices.llms.md#def-invertible-matrix), and with the [Schur complement](#def-schur-complement) $\mathbf{S}$ of $\mathbf{A}$, its [inverse](linear-algebra-special-matrices.llms.md#def-matrix-inverse) is the following, where $\mathbf{P}$ is the block of the first $k$ rows and columns of $\mathbf{X}^{-1}$:
>
> $$\mathbf{X}^{-1}
> = \begin{bmatrix}
> \mathbf{P} & -\mathbf{A}^{-1} \mathbf{B} \mathbf{S}^{-1} \\
> -\mathbf{S}^{-1} {\mathbf{B}}^{\top} \mathbf{A}^{-1} & \mathbf{S}^{-1}
> \end{bmatrix},$$

> **NOTE:**
>
> *Proof*. $\mathbf{X}$ is invertible, because it is [positive definite](linear-algebra-definite-matrices.llms.md#def-positive-definite). By the [Schur complement test](#thm-schur-test), $\mathbf{A}$ and $\mathbf{S}$ are positive definite as well, and [so both are invertible](linear-algebra-definite-matrices.llms.md#thm-pd-inverse). Let $\mathbf{W} = \begin{bmatrix} -\mathbf{A}^{-1}\mathbf{B} \\ \mathbf{I}_m \end{bmatrix}$. Each entry of $\mathbf{X}\mathbf{W}$ adds one group of $k$ summands to one group of $m$ summands, so $\mathbf{X}\mathbf{W}$ can be computed one block row at a time:
>
> $$\begin{aligned}
> \mathbf{X}\mathbf{W}
> &= \begin{bmatrix}
> -\mathbf{A}\mathbf{A}^{-1}\mathbf{B} + \mathbf{B} \\
> -{\mathbf{B}}^{\top}\mathbf{A}^{-1}\mathbf{B} + \mathbf{C}
> \end{bmatrix}
> && \text{(one block row at a time)} \\
> &= \begin{bmatrix} -\mathbf{I}_k\mathbf{B} + \mathbf{B} \\ \mathbf{S} \end{bmatrix}
> && \text{(} \mathbf{A}\mathbf{A}^{-1} = \mathbf{I}_k \text{, and definition of } \mathbf{S} \text{)} \\
> &= \begin{bmatrix} \mathbf{0} \\ \mathbf{S} \end{bmatrix}
> && \text{(} \mathbf{I}_k\mathbf{B} = \mathbf{B} \text{)}
> \end{aligned}$$
>
> Multiplying both sides on the left by $\mathbf{X}^{-1}$ gives $\mathbf{W}$ on the left, since $\mathbf{X}^{-1}\mathbf{X} = \mathbf{I}_{k+m}$. Cut $\mathbf{X}^{-1}$ into the four pieces $\mathbf{P}$, $\mathbf{Q}$, $\mathbf{R}$ and $\mathbf{T}$, with $\mathbf{Q}$ and $\mathbf{T}$ in the last $m$ columns. Then the right side is $\mathbf{X}^{-1}\begin{bmatrix} \mathbf{0} \\ \mathbf{S} \end{bmatrix}$, and the last $m$ columns of $\mathbf{X}^{-1}$ multiply $\mathbf{S}$:
>
> $$\begin{bmatrix} -\mathbf{A}^{-1}\mathbf{B} \\ \mathbf{I}_m \end{bmatrix}
> = \begin{bmatrix} \mathbf{Q}\mathbf{S} \\ \mathbf{T}\mathbf{S} \end{bmatrix}.$$
>
> So $\mathbf{T}\mathbf{S} = \mathbf{I}_m$, and $\mathbf{Q}\mathbf{S} = -\mathbf{A}^{-1}\mathbf{B}$. Multiplying both equations on the right by $\mathbf{S}^{-1}$ gives $\mathbf{T} = \mathbf{S}^{-1}$, and $\mathbf{Q} = -\mathbf{A}^{-1}\mathbf{B}\mathbf{S}^{-1}$. $\mathbf{X}^{-1}$ is [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix), by [the inverse of a symmetric matrix is symmetric](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric), so $\mathbf{R} = {\mathbf{Q}}^{\top} = -\mathbf{S}^{-1}{\mathbf{B}}^{\top}\mathbf{A}^{-1}$, using ${(\mathbf{S}^{-1})}^{\top} = \mathbf{S}^{-1}$ and ${(\mathbf{A}^{-1})}^{\top} = \mathbf{A}^{-1}$.

> **NOTE:**
>
> **Example 11 (The bottom-right entry of the inverse of a** $2 \times 2$ matrix)  
>
> Let $\mathbf{X} = \begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}$ with $\mathbf{A} = [5]$, whose [Schur complement](#def-schur-complement) is $\mathbf{S} = [\tfrac{9}{5}]$ ([Example 9](#exm-schur-complement)). It is [positive definite](linear-algebra-definite-matrices.llms.md#def-positive-definite) ([Example 10](#exm-schur-test)), so by [Theorem 8](#thm-block-inverse):
>
> $$\begin{aligned}
> \mathbf{T}
> &= \mathbf{S}^{-1} \\
> &= [\tfrac{5}{9}].
> \end{aligned}$$
>
> Directly, $\mathbf{X}^{-1} = \tfrac{1}{9}\begin{bmatrix} 5 & -4 \\ -4 & 5 \end{bmatrix}$, because
>
> $$\begin{aligned}
> \begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix} \cdot \tfrac{1}{9}\begin{bmatrix} 5 & -4 \\ -4 & 5 \end{bmatrix}
> &= \tfrac{1}{9}\begin{bmatrix} 25 - 16 & -20 + 20 \\ 20 - 20 & -16 + 25 \end{bmatrix} \\
> &= \mathbf{I}_2,
> \end{aligned}$$
>
> and its bottom-right entry is $\tfrac{5}{9}$. The top-right entry is $-\mathbf{A}^{-1}\mathbf{B}\mathbf{S}^{-1}$:
>
> $$\begin{aligned}
> -\tfrac{1}{5} \cdot 4 \cdot \tfrac{5}{9}
> &= -\tfrac{4}{9}.
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 9 (Cholesky factorization)** A $p \times p$ matrix $\mathbf{A}$ is positive definite ([Definition 2 in Definite Matrices](linear-algebra-definite-matrices.llms.md#def-positive-definite)) exactly when $\mathbf{A} = \mathbf{L} {\mathbf{L}}^{\top}$ for some lower triangular $\mathbf{L}$ ([Definition 2 in Solving Linear Systems and Least Squares](linear-algebra-least-squares.llms.md#def-lower-triangular-matrix)) with positive diagonal entries. For a positive definite $\mathbf{A}$ that $\mathbf{L}$ is unique; it is the **Cholesky factor** [\[4\]](#ref-wikipedia_cholesky_decomposition) of $\mathbf{A}$.

> **NOTE:**
>
> *Proof*. **If.** ${\mathbf{L}}^{\top}$ is upper triangular with positive diagonal ([Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)), so ${\mathbf{L}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ ([Theorem 1 in Solving Linear Systems and Least Squares](linear-algebra-least-squares.llms.md#thm-back-substitution)), and the columns of ${\mathbf{L}}^{\top}$ are linearly independent ([Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns), [Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)). So $\mathbf{A} = {({\mathbf{L}}^{\top})}^{\top}\,{\mathbf{L}}^{\top}$ ([Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)) is positive definite ([Theorem 1](#thm-pd-gram), part 2).
>
> **Only if, with uniqueness, by [induction](https://morrison-lab.github.io/mcs/proof-writing.html#def-proof-by-induction) on** $p$. For $p = 1$, $\mathbf{A} = [a]$ with $a > 0$ ([Theorem 5](#thm-pd-submatrix)), and $[c]\,[c] = [a]$ with $c > 0$ holds exactly for $c = \sqrt{a}$. For $p > 1$, assume every $(p - 1) \times (p - 1)$ positive definite matrix has exactly one such factor, and split off the first row and column. $\mathbf{A}$ is symmetric, so its first row is the transpose of its first column:
>
> $$\mathbf{A} = \begin{bmatrix} a_{11} & {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top} \\ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} & \mathbf{A}_{22} \end{bmatrix},
> \qquad
> \mathbf{L} = \begin{bmatrix} \ell_{11} & \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_{1 \times (p-1)} \\ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}} & \mathbf{L}_{22} \end{bmatrix},
> \qquad
> {\mathbf{L}}^{\top} = \begin{bmatrix} \ell_{11} & {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}}}^{\top} \\ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_{(p-1) \times 1} & {\mathbf{L}_{22}}^{\top} \end{bmatrix},$$
>
> with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}} \in \mathbb{R}^{p-1}$, where $b_i$ and $g_i$ are entries $(i + 1, 1)$ of $\mathbf{A}$ and $\mathbf{L}$, and $(\mathbf{A}_{22})_{ij}$ and $(\mathbf{L}_{22})_{ij}$ are their entries $(i + 1, j + 1)$; ${\mathbf{L}}^{\top}$ has this form by [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose). A $p \times p$ matrix $\mathbf{L}$ is lower triangular with positive diagonal exactly when $\ell_{11} > 0$, its first row is otherwise zero, and $\mathbf{L}_{22}$ is lower triangular with positive diagonal; $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}}$ can be anything. So choosing $\mathbf{L}$ means choosing $\ell_{11} > 0$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}}$ and such an $\mathbf{L}_{22}$.
>
> Entry $(i, j)$ of $\mathbf{L} {\mathbf{L}}^{\top}$ is $\sum_{r=1}^{p} \ell_{ir}\,\ell_{jr}$, with $\ell_{ir}$ entry $(i, r)$ of $\mathbf{L}$ ([Definition 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult), [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)). Row $1$ of $\mathbf{L}$ is $(\ell_{11}, 0, \ldots, 0)$, and row $i + 1$ is $(g_i, (\mathbf{L}_{22})_{i1}, \ldots, (\mathbf{L}_{22})_{i,p-1})$. So, for $i, j = 1, \ldots, p - 1$:
>
> $$\begin{aligned}
> (\mathbf{L} {\mathbf{L}}^{\top})_{11}
> &= \ell_{11}\,\ell_{11} + \sum_{r=2}^{p} 0 \cdot 0 \\
> &= \ell_{11}^2,
> && \text{(rows 1 and 1)}
> \\
> (\mathbf{L} {\mathbf{L}}^{\top})_{i+1,1}
> &= g_i\,\ell_{11} + \sum_{r=2}^{p} (\mathbf{L}_{22})_{i,r-1} \cdot 0 \\
> &= \ell_{11}\,g_i,
> && \text{(rows } i + 1 \text{ and } 1 \text{)}
> \\
> (\mathbf{L} {\mathbf{L}}^{\top})_{i+1,j+1}
> &= g_i\,g_j + \sum_{r=2}^{p} (\mathbf{L}_{22})_{i,r-1}\,(\mathbf{L}_{22})_{j,r-1}
> && \text{(rows } i + 1 \text{ and } j + 1 \text{)}
> \\
> &= (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}}}^{\top})_{ij} + (\mathbf{L}_{22} {\mathbf{L}_{22}}^{\top})_{ij}.
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{, with } s = r - 1 \text{)}
> \end{aligned}$$
>
> Entry $(1, j + 1)$ is $\ell_{11}\,g_j$ by the same computation with the roles swapped, the transpose of the $(2, 1)$ block; it matches ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top}$ exactly when the $(2, 1)$ block matches $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, which is where the symmetry of $\mathbf{A}$ is used. So $\mathbf{L} {\mathbf{L}}^{\top} = \mathbf{A}$ says exactly
>
> $$\ell_{11}^2 = a_{11}, \qquad
> \ell_{11}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}, \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}}}^{\top} + \mathbf{L}_{22} {\mathbf{L}_{22}}^{\top} = \mathbf{A}_{22}.$$
>
> $a_{11} > 0$ ([Theorem 5](#thm-pd-submatrix)), so the first equation with $\ell_{11} > 0$ forces $\ell_{11} = \sqrt{a_{11}}$; the second then forces $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}} = \tfrac{1}{\ell_{11}}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$; and the third becomes
>
> $$\begin{aligned}
> \mathbf{L}_{22} {\mathbf{L}_{22}}^{\top}
> &= \mathbf{A}_{22} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}}}^{\top}
> && \text{(subtract } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}}}^{\top} \text{)}
> \\
> &= \mathbf{A}_{22} - \mathopen{}\left(\tfrac{1}{\ell_{11}}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right)\mathclose{} {\mathopen{}\left(\tfrac{1}{\ell_{11}}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right)\mathclose{}}^{\top}
> && \text{(substitute } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}} \text{)}
> \\
> &= \mathbf{A}_{22} - \tfrac{1}{\ell_{11}^2}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top}
> && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~6 in Matrices}}\text{, }\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{)}
> \\
> &= \mathbf{A}_{22} - \tfrac{1}{a_{11}}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top}.
> && \text{(} \ell_{11}^2 = a_{11} \text{)}
> \end{aligned}$$
>
> Here $[a_{11}]$ is invertible with inverse $[1 / a_{11}]$, so with $\mathbf{B} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top}$ in [Definition 3](#def-schur-complement),
>
> $$\begin{aligned}
> {\mathbf{B}}^{\top}\,[a_{11}]^{-1} \mathbf{B} &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\,\tfrac{1}{a_{11}}\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top} \\
> &= \tfrac{1}{a_{11}}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top}
> \end{aligned}$$
>
> ([Theorem 1 in Generalized Inverses and Linear Systems](linear-algebra-generalized-inverses.llms.md#thm-scalar-matmul)), and the right side is the Schur complement of $[a_{11}]$ in $\mathbf{A}$. It is positive definite by [Theorem 7](#thm-schur-test) (with $k = 1$; $\mathbf{A}_{22}$ is symmetric because $\mathbf{A}$ is). By the induction hypothesis it has exactly one factor $\mathbf{L}_{22}$ of the required kind. So $\mathbf{L}$ exists and is unique.

> **NOTE:**
>
> **Example 12 (Two Cholesky factors)**  
>
> - $\mathbf{A} = \begin{bmatrix} 4 & 2 \\ 2 & 5 \end{bmatrix}$:
>
>   $$\begin{aligned}
>   \ell_{11} &= \sqrt{4} \\
>   &= 2,
>   \end{aligned}$$
>
>   $$\begin{aligned}
>   \ell_{21} &= 2/2 \\
>   &= 1,
>   \end{aligned}$$
>
>   and
>
>   $$\begin{aligned}
>   \ell_{22}^2 &= 5 - 1^2 \\
>   &= 4,
>   \end{aligned}$$
>
>   so $\ell_{22} = 2$: $\mathbf{L} = \begin{bmatrix} 2 & 0 \\ 1 & 2 \end{bmatrix}$, and
>
>   $$\begin{aligned}
>   \mathbf{L} {\mathbf{L}}^{\top} &= \begin{bmatrix} 2 \cdot 2 & 2 \cdot 1 \\ 1 \cdot 2 & 1 \cdot 1 + 2 \cdot 2 \end{bmatrix} \\
>   &= \mathbf{A}.
>   \end{aligned}$$
>
> - $\begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}$: $\ell_{11} = \sqrt{5}$, $\ell_{21} = 4/\sqrt{5}$, and
>
>   $$\begin{aligned}
>   \ell_{22}^2 &= 5 - \tfrac{16}{5} \\
>   &= \tfrac{9}{5},
>   \end{aligned}$$
>
>   the Schur complement of [Example 9](#exm-schur-complement), so $\ell_{22} = \tfrac{3}{\sqrt{5}}$.
>
> - For $\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}$ the method breaks down:
>
>   $$\begin{aligned}
>   \ell_{22}^2 &= 1 - 4 \\
>   &= -3
>   \end{aligned}$$
>
>   has no real solution, matching the failure of the Schur complement test ([Example 10](#exm-schur-test)).

# Definitions on this page

- [Definition 1 (Block matrix)](#def-block-matrix)
- [Definition 2 (Leading block of a square matrix, top-left block)](#def-leading-block)
- [Definition 3 (Schur complement)](#def-schur-complement)

Back to top

## References

\[1\]

H. Zhou, “Symmetric positive definite matrices.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/11-pd/11-pd.html>

\[2\]

Wikipedia contributors, “Block matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Block_matrix>

\[3\]

Wikipedia contributors, “Schur complement — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Schur_complement>

\[4\]

Wikipedia contributors, “Cholesky decomposition — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Cholesky_decomposition>
