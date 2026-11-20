# Similarity and Diagonalization

Code

Published

Last modified: 2026-11-19 18:32:32 (PST)

# 1 Similarity and diagonalization

> **NOTE:**
>
> This section is adapted from Zhou [\[1\]](#ref-zhou2024eig), used under the MIT License (see the license text in [Section  in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). These notes take eigenvalues to be real numbers ([Definition 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigenvalue)), so the source’s complex eigenvalues are left out, and eigenvalues are characterized through null spaces rather than through the characteristic polynomial. Only the source’s material on similarity, diagonalization and the basic eigenvalue properties is adapted; its characteristic polynomial and algebraic multiplicity, its trace and determinant identities, and the part of its section on symmetric matrices that builds bases of the column space and null space from eigenvectors are left out. The rest of that section is covered by [Theorem 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#thm-spectral) and [Theorem 2 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#thm-symmetric-eigenvectors-orthogonal). Its result that eigenvalues of orthogonal matrices have modulus $1$ appears here in the real form $\pm 1$. Three other parts of the source are not part of this section:
>
> - its statement that the eigenvalues of a lower triangular matrix are also its diagonal entries ([Theorem 4](#thm-eigen-triangular) states the upper triangular case)
> - its three further examples of matrices with geometric multiplicity smaller than algebraic multiplicity ([Example 2](#exm-eigenspace) gives one nilpotent example)
> - its code cells The source’s two-vector argument that eigenvectors for distinct eigenvalues are independent is extended here to any number of eigenvectors.

> **NOTE:**
>
> **Theorem 1 (A square matrix is invertible exactly when it has full column rank)** An $n \times n$ matrix $\mathbf{A}$ is invertible ([Definition 6 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-invertible-matrix)) exactly when $\operatorname{rank}(\mathbf{A}) = n$ (full column rank, [Definition 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-full-column-rank)), that is, exactly when $\mathcal{N}(\mathbf{A}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n\right\}\mathclose{}$.

> **NOTE:**
>
> *Proof*. **Invertible implies rank** $n$. If $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n$, then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \mathbf{I}_n \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= (\mathbf{A}^{-1} \mathbf{A})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{A}^{-1}\,(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A}^{-1}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n
> && \text{(} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n \text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n,
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> so $\mathcal{N}(\mathbf{A}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n\right\}\mathclose{}$, the nullity is $0$, and $\operatorname{rank}(\mathbf{A}) = n$ ([Theorem 2 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-nullity)).
>
> **Rank** $n$ implies invertible. Every system $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has exactly one solution ([Corollary 2 in Generalized Inverses and Linear Systems](linear-algebra-generalized-inverses.llms.md#cor-solution-unique), both parts, with $m = n$). Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_j$ solve $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_j = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j$ ([Definition 21 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)), and let $\mathbf{B}$ have columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_n$. Column $j$ of $\mathbf{A} \mathbf{B}$ is $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_j = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j$ (1), so $\mathbf{A} \mathbf{B} = \mathbf{I}_n$. For the other order,
>
> $$\begin{aligned}
> \mathbf{A}\,(\mathbf{B} \mathbf{A} - \mathbf{I}_n)
> &= \mathbf{A} \mathbf{B} \mathbf{A} - \mathbf{A} \mathbf{I}_n
> && \text{(}\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{, }\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{I}_n \mathbf{A} - \mathbf{A} \mathbf{I}_n
> && \text{(} \mathbf{A} \mathbf{B} = \mathbf{I}_n \text{)}
> \\
> &= \mathbf{A} - \mathbf{A}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{0}_{n \times n},
> && \text{(arithmetic)}
> \end{aligned}$$
>
> so every column of $\mathbf{B} \mathbf{A} - \mathbf{I}_n$ is in $\mathcal{N}(\mathbf{A}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n\right\}\mathclose{}$ (1), and $\mathbf{B} \mathbf{A} = \mathbf{I}_n$. So $\mathbf{B}$ satisfies [Definition 6 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-invertible-matrix). The two conditions in the statement are equivalent by [Theorem 2 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-nullity): the nullity is $0$ exactly when $\mathcal{N}(\mathbf{A}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n\right\}\mathclose{}$, because a subspace of dimension $0$ has the empty list as a basis, whose span is $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension), [Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)), and $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ has dimension $0$ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)).

> **NOTE:**
>
> **Example 1 (Rank decides invertibility)**  
>
> - $\begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}$ of [Example 5 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#exm-invertible-matrix) has rank $2$: $c_1 (2, 0) + c_2 (1, 1) = (2c_1 + c_2, c_2)$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only if $c_2 = 0$ and then $c_1 = 0$. So it is invertible, as that example found by exhibiting the inverse.
> - $\begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$ has rank less than $2$: $(1, -1)$ is a nonzero vector in its null space. So it is singular, as [Example 5 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#exm-invertible-matrix) found.

> **NOTE:**
>
> **Definition 1 (Eigenspace)** Let $\lambda$ be an eigenvalue of a $p \times p$ matrix $\mathbf{A}$ ([Definition 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigenvalue)). The **eigenspace** [\[2\]](#ref-wikipedia_eigenvalues_and_eigenvectors) of $\lambda$ is $\mathcal{E}_\lambda\stackrel{\text{def}}{=}\mathcal{N}(\mathbf{A} - \lambda\,\mathbf{I}_p)$. It is a subspace of $\mathbb{R}^p$ ([Theorem 2 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-null-space-subspace)).

> **NOTE:**
>
> **Definition 2 (Geometric multiplicity)** The dimension ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)) of the eigenspace $\mathcal{E}_\lambda$ ([Definition 1](#def-eigenspace)) of an eigenvalue $\lambda$ is the **geometric multiplicity** of $\lambda$.

> **NOTE:**
>
> **Example 2 (Eigenspaces of two matrices)**  
>
> - For $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ of [Example 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#exm-eigenvalue), $\mathbf{A} - 3\,\mathbf{I}_2 = \begin{bmatrix} -1 & 1 \\ 1 & -1 \end{bmatrix}$ sends $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ to $(v_2 - v_1)\,(1, -1)$, so $\mathcal{E}_3 = \operatorname{span}\mathopen{}\left\{(1, 1)\right\}\mathclose{}$, with geometric multiplicity $1$.
>
> - For $\mathbf{J} = \begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix}$, $\mathbf{J} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (v_2, 0)$.
>
>   $$\begin{aligned}
>   \mathbf{J}\,(1, 0) &= (0, 0) \\
>   &= 0\,(1, 0),
>   \end{aligned}$$
>
>   so $0$ is an eigenvalue. If $\mathbf{J} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ with $\lambda\ne 0$, the second entry gives $\lambda v_2 = 0$, so $v_2 = 0$, and then the first gives $\lambda v_1 = 0$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. So $0$ is the only eigenvalue, and
>
>   $$\begin{aligned}
>   \mathcal{E}_0 &= \mathcal{N}(\mathbf{J}) \\
>   &= \mathopen{}\left\{(t, 0) : t \in \mathbb{R}\right\}\mathclose{},
>   \end{aligned}$$
>
>   with geometric multiplicity $1$.

> **NOTE:**
>
> **Example 3 (A number that is not an eigenvalue has no eigenspace)** For $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ and $\lambda= 2$, $\mathbf{A} - 2\,\mathbf{I}_2 = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$ sends $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ to $(v_2, v_1)$, which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so $\mathcal{N}(\mathbf{A} - 2\,\mathbf{I}_2) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$. And $2$ is not an eigenvalue ([Definition 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigenvalue)): $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = 2\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ reads $(2v_1 + v_2, v_1 + 2v_2) = (2v_1, 2v_2)$, so $v_2 = 0$ and $v_1 = 0$. So [Definition 1](#def-eigenspace) does not apply to $2$.

> **NOTE:**
>
> **Theorem 2 (Eigenvalues are where** $\mathbf{A} - \lambda\mathbf{I}$ is singular) Let $\mathbf{A}$ be a $p \times p$ matrix and $\lambda$ a real number. Then $\lambda$ is an eigenvalue of $\mathbf{A}$ ([Definition 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigenvalue)) exactly when $\mathbf{A} - \lambda\,\mathbf{I}_p$ is singular ([Definition 6 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-invertible-matrix)). In particular, $\mathbf{A}$ is singular exactly when $0$ is one of its eigenvalues; and each eigenspace $\mathcal{E}_\lambda$ ([Definition 1](#def-eigenspace)) is a subspace of $\mathbb{R}^p$ consisting of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and the eigenvectors for $\lambda$.

> **NOTE:**
>
> *Proof*. For any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathbb{R}^p$,
>
> $$\begin{aligned}
> (\mathbf{A} - \lambda\,\mathbf{I}_p)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} - (\lambda\,\mathbf{I}_p)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(}\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{, the difference law)}
> \\
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} - \lambda\,(\mathbf{I}_p \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> && \text{(}\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{, the scalar factor)}
> \\
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} - \lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}},
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> so $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{N}(\mathbf{A} - \lambda\,\mathbf{I}_p)$; the nonzero such $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ are the eigenvectors for $\lambda$. So $\lambda$ is an eigenvalue exactly when that null space contains a nonzero vector, which by [Theorem 1](#thm-invertible-rank) is exactly when $\mathbf{A} - \lambda\,\mathbf{I}_p$ is singular. With $\lambda= 0$, $\mathbf{A} - 0\,\mathbf{I}_p = \mathbf{A}$. An eigenspace is a null space, so it is a subspace ([Theorem 2 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-null-space-subspace)).

> **NOTE:**
>
> **Example 4 (Eigenvalues and singular matrices)** For $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$, $\mathbf{A} - 3\,\mathbf{I}_2 = \begin{bmatrix} -1 & 1 \\ 1 & -1 \end{bmatrix}$ is singular (its columns are negatives of each other, so its rank is $1$), matching the eigenvalue $3$ of [Example 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#exm-eigenvalue). $\mathbf{A}$ itself has rank $2$, since $c_1 (2, 1) + c_2 (1, 2) = (2c_1 + c_2, c_1 + 2c_2)$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only if
>
> $$\begin{aligned}
> c_1 &= c_2 \\
> &= 0
> \end{aligned}$$
>
> (subtract twice the second entry from the first: $-3c_2 = 0$, and then the second entry gives $c_1 = 0$); so it is invertible ([Theorem 1](#thm-invertible-rank)), and $0$ is not an eigenvalue. The singular matrix $\begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$ has eigenvalue $0$, with eigenvector $(1, -1)$.

> **NOTE:**
>
> **Theorem 3 (Eigenvalues of shifts and powers)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ be an eigenvector of a $p \times p$ matrix $\mathbf{A}$ for the eigenvalue $\lambda$ ([Definition 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigenvalue)). Then
>
> 1.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is an eigenvector of $\mathbf{A} + s\,\mathbf{I}_p$ for $\lambda+ s$, for every number $s$;
> 2.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is an eigenvector of $\mathbf{A}^k$ ([Definition 2 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-matrix-power)) for $\lambda^k$, for every positive integer $k$.

> **NOTE:**
>
> *Proof*. **Part 1.**
>
> $$\begin{aligned}
> (\mathbf{A} + s\,\mathbf{I}_p)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} + (s\,\mathbf{I}_p)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-distrib}{\text{Theorem~2 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} + s\,(\mathbf{I}_p \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> && \text{(}\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{)}
> \\
> &= \lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} + s\,(\mathbf{I}_p \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> && \text{(eigenvector)}
> \\
> &= \lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} + s \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= (\lambda+ s)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}.
> && \text{(add entrywise)}
> \end{aligned}$$
>
> **Part 2, by [induction](https://morrison-lab.github.io/mcs/proof-writing.html#def-proof-by-induction) on** $k$. For $k = 1$ it is the assumption. If $\mathbf{A}^{k-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \lambda^{k-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$, then
>
> $$\begin{aligned}
> \mathbf{A}^k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> &= \mathbf{A}\,(\mathbf{A}^{k-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-power}{\text{Definition~2 in Special Matrices, Quadratic Forms and Trace}}\text{, }\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A}\,(\lambda^{k-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> && \text{(induction hypothesis)}
> \\
> &= \lambda^{k-1}\,(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> && \text{(}\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{)}
> \\
> &= \lambda^{k-1}\,(\lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> && \text{(eigenvector)}
> \\
> &= \lambda^k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}.
> && \text{(multiply the numbers)}
> \end{aligned}$$
>
> In both parts $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is an eigenvector.

> **NOTE:**
>
> **Example 5 (Shifting and squaring)** For $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ with eigenvector $(1, 1)$ for $3$ ([Example 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#exm-eigenvalue)):
>
> - $\mathbf{A} - 2\,\mathbf{I}_2 = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$ sends $(1, 1)$ to $(1, 1) = (3 - 2)\,(1, 1)$;
>
> - $$\begin{aligned}
>   \mathbf{A}^2 &= \begin{bmatrix} 2 \cdot 2 + 1 \cdot 1 & 2 \cdot 1 + 1 \cdot 2 \\ 1 \cdot 2 + 2 \cdot 1 & 1 \cdot 1 + 2 \cdot 2 \end{bmatrix} \\
>   &= \begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}
>   \end{aligned}$$
>
>   1.  sends $(1, 1)$ to $(9, 9) = 3^2\,(1, 1)$.

> **NOTE:**
>
> **Theorem 4 (The eigenvalues of an upper triangular matrix are its diagonal entries)** The eigenvalues ([Definition 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigenvalue)) of an upper triangular $p \times p$ matrix $\mathbf{U}$ ([Definition 1 in Solving Linear Systems and Least Squares](linear-algebra-least-squares.llms.md#def-triangular-matrix)) are exactly its diagonal entries $u_{11}, \ldots, u_{pp}$.

> **NOTE:**
>
> *Proof*. $\mathbf{U} - \lambda\,\mathbf{I}_p$ is upper triangular, with diagonal entries $u_{ii} - \lambda$ ([Definition 7 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-identity-matrix), [Definition 8 in Matrices](linear-algebra-matrices.llms.md#def-matrix-addition)).
>
> **If** $\lambda$ is not a diagonal entry, every $u_{ii} - \lambda\ne 0$, so $(\mathbf{U} - \lambda\,\mathbf{I}_p)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ has exactly one solution, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ ([Theorem 1 in Solving Linear Systems and Least Squares](linear-algebra-least-squares.llms.md#thm-back-substitution)), and $\lambda$ is not an eigenvalue ([Theorem 2](#thm-eigenvalue-singular)).
>
> **If** $\lambda$ is a diagonal entry, let $k$ be the smallest index with $u_{kk} = \lambda$, and write $\mathbf{M} = \mathbf{U} - \lambda\,\mathbf{I}_p$, so $m_{kk} = 0$ and $m_{ii} \ne 0$ for $i < k$. Look for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ with $v_k = 1$ and $v_j = 0$ for $j > k$. Entry $i$ of $\mathbf{M} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is
>
> $$\begin{aligned}
> \sum_{j=1}^pm_{ij}\,v_j
> &= \sum_{j=i}^{p} m_{ij}\,v_j
> && \text{(} m_{ij} = 0 \text{ for } j < i \text{)}
> \\
> &= \sum_{j=i}^{k} m_{ij}\,v_j,
> && \text{(} v_j = 0 \text{ for } j > k \text{)}
> \end{aligned}$$
>
> where the last sum is empty, and so $0$, when $i > k$. So:
>
> - for $i > k$ entry $i$ is $0$;
> - for $i = k$ it is $m_{kk}\,v_k = 0$;
> - for $i < k$ it is $0$ exactly when $v_i = -\frac{1}{m_{ii}} \sum_{j=i+1}^{k} m_{ij}\,v_j$, and these equations fix $v_{k-1}, \ldots, v_1$ in turn, as in [Theorem 1 in Solving Linear Systems and Least Squares](linear-algebra-least-squares.llms.md#thm-back-substitution).
>
> So $\mathbf{M} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ with $v_k = 1$, hence $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and $\lambda$ is an eigenvalue.

> **NOTE:**
>
> **Example 6 (Eigenvalues read off the diagonal)** $\mathbf{U} = \begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix}$ of [Example 1 in Solving Linear Systems and Least Squares](linear-algebra-least-squares.llms.md#exm-triangular-matrix) has eigenvalues $2$, $\tfrac{1}{2}$ and $-1$. For $\lambda= \tfrac{1}{2}$ (so $k = 2$), take $v_2 = 1$, $v_3 = 0$; row 1 of $(\mathbf{U} - \tfrac{1}{2}\,\mathbf{I}_3)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is $\tfrac{3}{2}\,v_1 + 1 = 0$, so $v_1 = -\tfrac{2}{3}$. Check:
>
> $$\begin{aligned}
> \mathbf{U}\,(-\tfrac{2}{3}, 1, 0) &= (-\tfrac{4}{3} + 1, \tfrac{1}{2}, 0) \\
> &= \tfrac{1}{2}\,(-\tfrac{2}{3}, 1, 0).
> \end{aligned}$$
>
> The matrix $\mathbf{J}$ of [Example 2](#exm-eigenspace) is upper triangular with both diagonal entries $0$, and $0$ is its only eigenvalue.

> **NOTE:**
>
> **Theorem 5 (Eigenvalues of idempotent and orthogonal matrices)**  
>
> 1.  Every eigenvalue of an idempotent matrix ([Definition 7 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-idempotent-matrix)) is $0$ or $1$.
> 2.  Every eigenvalue of an orthogonal matrix ([Definition 10 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-orthogonal-matrix)) is $1$ or $-1$.

> **NOTE:**
>
> *Proof*. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ with $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$.
>
> **Part 1.** If $\mathbf{A}^2 = \mathbf{A}$, then
>
> $$\begin{aligned}
> \lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(eigenvector)}
> \\
> &= \mathbf{A}^2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(idempotent)}
> \\
> &= \lambda^2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}},
> && \text{(}\href{#thm-eigen-shift-power}{\text{Theorem~3}}\text{, part 2)}
> \end{aligned}$$
>
> and subtracting $\lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ from both sides gives $(\lambda^2 - \lambda)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Some entry of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is nonzero, so
>
> $$\begin{aligned}
> \lambda^2 - \lambda&= \lambda\,(\lambda- 1) \\
> &= 0,
> \end{aligned}$$
>
> and a product of two numbers is $0$ only when one of them is: $\lambda= 0$ or $\lambda= 1$.
>
> **Part 2.** If $\mathbf{A}$ is orthogonal, then
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right\rVert\mathclose{}
> &= \mathopen{}\left\lVert\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right\rVert\mathclose{}
> && \text{(}\href{linear-algebra-special-matrices.qmd#thm-orthogonal-norm}{\text{Theorem~7 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathopen{}\left\lVert\lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right\rVert\mathclose{}
> && \text{(eigenvector)}
> \\
> &= \mathopen{}\left|\lambda\right|\mathclose{}\,\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right\rVert\mathclose{},
> && \text{(}\href{linear-algebra-inner-products.qmd#thm-norm-properties}{\text{Theorem~1 in Inner Products and the Cauchy-Schwarz Inequality}}\text{, part 2)}
> \end{aligned}$$
>
> and $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right\rVert\mathclose{} > 0$ ([Theorem 1 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#thm-norm-properties), part 1), so dividing by $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right\rVert\mathclose{}$ gives $\mathopen{}\left|\lambda\right|\mathclose{} = 1$; since $\lambda$ is real ([Definition 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigenvalue)), $\lambda= 1$ or $\lambda= -1$.

> **NOTE:**
>
> **Example 7 (Projections and reflections)**  
>
> - The idempotent matrix $\begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}$ of [Example 3 in Design Matrices and Projections](linear-algebra-projections.llms.md#exm-hat-matrix-projection) sends $(1, 1)$ to $(1, 1)$ and $(1, -1)$ to $(0, 0)$: eigenvalues $1$ and $0$.
>
> - The matrix $\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$, which swaps the two entries, is orthogonal: its columns $(0, 1)$ and $(1, 0)$ are orthonormal ([Remark 6 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#rem-orthogonal-matrix-columns)). It sends $(1, 1)$ to $(1, 1)$ and $(1, -1)$ to $(-1, 1)$: eigenvalues $1$ and $-1$.
>
> - The rotation $\mathbf{Q}$ of [Example 14 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#exm-orthogonal-matrix) has no real eigenvalue. By part 2 the only candidates are $\pm 1$. $\mathbf{Q} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ reads $-0.4\,v_1 - 0.8\,v_2 = 0$ and $0.8\,v_1 - 0.4\,v_2 = 0$, so $v_1 = -2 v_2$ and
>
>   $$\begin{aligned}
>   v_2 &= 2 v_1 \\
>   &= -4 v_2,
>   \end{aligned}$$
>
>   forcing $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$; $\mathbf{Q} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = -\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ reads $1.6\,v_1 - 0.8\,v_2 = 0$ and $0.8\,v_1 + 1.6\,v_2 = 0$, so $v_2 = 2 v_1$ and $0.8\,v_1 + 3.2\,v_1 = 0$, forcing $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ again.

> **NOTE:**
>
> **Definition 3 (Similar matrices)** Two $p \times p$ matrices $\mathbf{A}$ and $\mathbf{B}$ are **similar** [\[3\]](#ref-wikipedia_matrix_similarity) if $\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}$ for some invertible $p \times p$ matrix $\mathbf{P}$ ([Definition 6 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-invertible-matrix)).

> **NOTE:**
>
> *Remark 1* (Similarity read both ways). If $\mathbf{P}$ is invertible, then $\mathbf{P}^{-1}$ is invertible with inverse $\mathbf{P}$:
>
> $$\begin{aligned}
> \mathbf{P}^{-1} \mathbf{P} &= \mathbf{P} \mathbf{P}^{-1} \\
> &= \mathbf{I}_p
> \end{aligned}$$
>
> 2.  is the condition of [Definition 6 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-invertible-matrix) for $\mathbf{P}^{-1}$ with $\mathbf{P}$ as the other factor, and that factor is unique ([Remark 3 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#rem-invertible-inverse)). If $\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}$, then
>
> $$\begin{aligned}
> \mathbf{P} \mathbf{B} \mathbf{P}^{-1}
> &= \mathbf{P}\,(\mathbf{P}^{-1} \mathbf{A} \mathbf{P})\,\mathbf{P}^{-1}
> && \text{(substitute } \mathbf{B} \text{)}
> \\
> &= (\mathbf{P} \mathbf{P}^{-1})\,\mathbf{A}\,(\mathbf{P} \mathbf{P}^{-1})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{I}_p\,\mathbf{A}\,\mathbf{I}_p
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{A},
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> and the same steps with $\mathbf{P}$ and $\mathbf{P}^{-1}$ exchanged turn $\mathbf{A} = \mathbf{P} \mathbf{B} \mathbf{P}^{-1}$ back into $\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}$. So $\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}$ exactly when $\mathbf{A} = \mathbf{P} \mathbf{B} \mathbf{P}^{-1}$, and similarity goes both ways: $\mathbf{A}$ is similar to $\mathbf{B}$ through $\mathbf{P}^{-1}$, whose inverse is $\mathbf{P}$.

> **NOTE:**
>
> **Example 8 (A matrix similar to a diagonal one)** Let $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ and $\mathbf{P} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}$. Then
>
> $$\begin{aligned}
> \mathbf{P}^2
> &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 1 & 1 \cdot 1 + 1 \cdot(-1) \\ 1 \cdot 1 + (-1) \cdot 1 & 1 \cdot 1 + (-1)(-1) \end{bmatrix}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{)}
> \\
> &= \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix}
> && \text{(arithmetic)}
> \\
> &= 2\,\mathbf{I}_2,
> && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{, }\href{linear-algebra-matrix-multiplication.qmd#def-identity-matrix}{\text{Definition~7 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> so
>
> $$\begin{aligned}
> \mathbf{P}\,(\tfrac{1}{2}\,\mathbf{P}) &= \tfrac{1}{2}\,\mathbf{P}^2 \\
> &= \mathbf{I}_2
> \end{aligned}$$
>
> and likewise $(\tfrac{1}{2}\,\mathbf{P})\,\mathbf{P} = \mathbf{I}_2$ ([Theorem 1 in Generalized Inverses and Linear Systems](linear-algebra-generalized-inverses.llms.md#thm-scalar-matmul)): $\mathbf{P}^{-1} = \tfrac{1}{2}\,\mathbf{P}$ (2). Then
>
> $$\begin{aligned}
> \mathbf{P}^{-1} \mathbf{A} \mathbf{P}
> &= (\tfrac{1}{2}\,\mathbf{P})\,\mathbf{A} \mathbf{P}
> && \text{(substitute } \mathbf{P}^{-1} \text{)}
> \\
> &= \tfrac{1}{2}\,(\mathbf{P} \mathbf{A} \mathbf{P})
> && \text{(}\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{)}
> \\
> &= \tfrac{1}{2}\,\mathbf{P}\,(\mathbf{A} \mathbf{P})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \tfrac{1}{2} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 3 & 1 \\ 3 & -1 \end{bmatrix}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{, for } \mathbf{A} \mathbf{P} \text{)}
> \\
> &= \tfrac{1}{2} \begin{bmatrix} 6 & 0 \\ 0 & 2 \end{bmatrix}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{)}
> \\
> &= \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix},
> && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{)}
> \end{aligned}$$
>
> so $\mathbf{A}$ is similar to $\operatorname{diag}(3, 1)$. At the other extreme, the identity matrix is similar only to itself:
>
> $$\begin{aligned}
> \mathbf{P}^{-1} \mathbf{I}_p \mathbf{P} &= \mathbf{P}^{-1} \mathbf{P} \\
> &= \mathbf{I}_p
> \end{aligned}$$
>
> for every invertible $\mathbf{P}$ ([Theorem 4 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-identity), 2).

> **NOTE:**
>
> **Theorem 6 (Similar matrices have the same eigenvalues)** If $\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}$ ([Definition 3](#def-similar)), then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is an eigenvector of $\mathbf{A}$ for $\lambda$ exactly when $\mathbf{P}^{-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is an eigenvector of $\mathbf{B}$ for $\lambda$. So $\mathbf{A}$ and $\mathbf{B}$ have the same eigenvalues.

> **NOTE:**
>
> *Proof*. **From** $\mathbf{A}$ to $\mathbf{B}$. Let $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathbf{P}^{-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$. Then
>
> $$\begin{aligned}
> \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> &= (\mathbf{P}^{-1} \mathbf{A} \mathbf{P})\,(\mathbf{P}^{-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> && \text{(substitute } \mathbf{B} \text{ and } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \text{)}
> \\
> &= \mathbf{P}^{-1} \mathbf{A}\,(\mathbf{P} \mathbf{P}^{-1})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{P}^{-1} \mathbf{A}\,\mathbf{I}_p\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{P}^{-1} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{P}^{-1}\,(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{P}^{-1}\,(\lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> && \text{(eigenvector)}
> \\
> &= \lambda\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}.
> && \text{(}\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{)}
> \end{aligned}$$
>
> And $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$: if $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} &= \mathbf{I}_p \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \\
> &= \mathbf{P}\,(\mathbf{P}^{-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}) \\
> &= \mathbf{P}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}
> \end{aligned}$$
>
> ([Theorem 4 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-identity), 2, [Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc), [Definition 8 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matvec-mult)), which is false.
>
> **From** $\mathbf{B}$ to $\mathbf{A}$. By [Remark 1](#rem-similar-both-ways),
>
> $$\begin{aligned}
> \mathbf{A} &= \mathbf{P} \mathbf{B} \mathbf{P}^{-1} \\
> &= (\mathbf{P}^{-1})^{-1} \mathbf{B}\,\mathbf{P}^{-1},
> \end{aligned}$$
>
> so the first part, with $\mathbf{P}^{-1}$ in place of $\mathbf{P}$ and the roles of $\mathbf{A}$ and $\mathbf{B}$ exchanged, shows that if $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathbf{P}^{-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is an eigenvector of $\mathbf{B}$ for $\lambda$, then $\mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is an eigenvector of $\mathbf{A}$ for $\lambda$; and
>
> $$\begin{aligned}
> \mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} &= \mathbf{P} \mathbf{P}^{-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> \end{aligned}$$
>
> ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc), 2, [Theorem 4 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-identity)).

> **NOTE:**
>
> **Example 9 (Eigenvectors carried across a similarity)** In [Example 8](#exm-similar), $\mathbf{B} = \operatorname{diag}(3, 1)$ has eigenvectors $(1, 0)$ for $3$ and $(0, 1)$ for $1$: $\operatorname{diag}(3, 1)\,(1, 0) = (3, 0)$ and $\operatorname{diag}(3, 1)\,(0, 1) = (0, 1)$. $\mathbf{P}\,(1, 0) = (1, 1)$ and $\mathbf{P}\,(0, 1) = (1, -1)$ are the eigenvectors of $\mathbf{A}$ for $3$ and $1$ found in [Example 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#exm-eigenvalue).

> **NOTE:**
>
> **Theorem 7 (Eigenvectors for distinct eigenvalues are linearly independent)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k$ are eigenvectors of a $p \times p$ matrix $\mathbf{A}$ for eigenvalues $\lambda_1, \ldots, \lambda_k$ that are all different, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k$ are linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)).

> **NOTE:**
>
> *Proof*. By [induction](https://morrison-lab.github.io/mcs/proof-writing.html#def-proof-by-induction) on $k$. For $k = 1$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ is linearly independent on its own. Suppose the result holds for $k - 1$ eigenvectors, and $\sum_{i=1}^{k} c_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}
> &= (\mathbf{A} - \lambda_k \mathbf{I}_p) \sum_{i=1}^{k} c_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i
> && \text{(multiply the supposed equation by } \mathbf{A} - \lambda_k \mathbf{I}_p \text{)}
> \\
> &= \sum_{i=1}^{k} c_i\,(\mathbf{A} - \lambda_k \mathbf{I}_p)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i
> && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{)}
> \\
> &= \sum_{i=1}^{k} c_i\,(\lambda_i - \lambda_k)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i
> && \text{(}\href{#thm-eigen-shift-power}{\text{Theorem~3}}\text{, part 1, with } s = -\lambda_k \text{)}
> \\
> &= \sum_{i=1}^{k-1} c_i\,(\lambda_i - \lambda_k)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i.
> && \text{(the } i = k \text{ term is } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{)}
> \end{aligned}$$
>
> By the induction hypothesis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_{k-1}$ are linearly independent, so every $c_i\,(\lambda_i - \lambda_k) = 0$ for $i < k$, and since $\lambda_i \ne \lambda_k$, every $c_i = 0$ for $i < k$. The supposed equation then reads $c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so $c_k = 0$ too.

> **NOTE:**
>
> **Example 10 (Independent eigenvectors)** The eigenvectors $(1, 1)$ for $3$ and $(1, -1)$ for $1$ of [Example 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#exm-eigenvalue) are linearly independent, as [Theorem 7](#thm-eigenvectors-independent) says they must be: $c_1 (1, 1) + c_2 (1, -1) = (c_1 + c_2, c_1 - c_2)$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only if
>
> $$\begin{aligned}
> c_1 &= c_2 \\
> &= 0.
> \end{aligned}$$
>
> Two eigenvectors for the same eigenvalue need not be independent: $(1, 1)$ and $(2, 2)$ are both eigenvectors for $3$.

> **NOTE:**
>
> **Definition 4 (Diagonalizable matrix)** A $p \times p$ matrix $\mathbf{A}$ is **diagonalizable** [\[4\]](#ref-wikipedia_diagonalizable_matrix) if $\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}$ for some invertible $p \times p$ matrix $\mathbf{X}$ and diagonal $p \times p$ matrix $\mathbf{\Lambda}$ ([Definition 4 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-diagonal-matrix)); by [Remark 1](#rem-similar-both-ways), that is the same as $\mathbf{\Lambda} = \mathbf{X}^{-1} \mathbf{A} \mathbf{X}$, so a diagonalizable matrix is one similar to a diagonal matrix ([Definition 3](#def-similar)).

> **NOTE:**
>
> **Example 11 (Diagonalizable and not)**  
>
> - $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ is diagonalizable: with $\mathbf{P}$ as in [Example 8](#exm-similar), $\operatorname{diag}(3, 1) = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}$.
>
> - $\mathbf{J} = \begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix}$ is not. Suppose $\mathbf{J} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}$, so $\mathbf{\Lambda} = \mathbf{X}^{-1} \mathbf{J} \mathbf{X}$ ([Remark 1](#rem-similar-both-ways)). The eigenvalues of $\mathbf{\Lambda}$ are its diagonal entries ([Theorem 4](#thm-eigen-triangular), since a diagonal matrix is upper triangular) and are the eigenvalues of $\mathbf{J}$ ([Theorem 6](#thm-similar-eigenvalues)), of which $0$ is the only one ([Example 2](#exm-eigenspace)). So $\mathbf{\Lambda} = \mathbf{0}_{2 \times 2}$, and then
>
>   $$\begin{aligned}
>   \mathbf{J} &= \mathbf{X}\,\mathbf{0}_{2 \times 2}\,\mathbf{X}^{-1} \\
>   &= \mathbf{0}_{2 \times 2}
>   \end{aligned}$$
>
>   (1), which it is not.

> **NOTE:**
>
> **Theorem 8 (Diagonalizable means a basis of eigenvectors)** A $p \times p$ matrix $\mathbf{A}$ is diagonalizable ([Definition 4](#def-diagonalizable)) exactly when it has $p$ linearly independent eigenvectors. Then $\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}$ with the eigenvectors as the columns of $\mathbf{X}$ and their eigenvalues, in the same order, on the diagonal of $\mathbf{\Lambda}$.

> **NOTE:**
>
> *Proof*. Let $\mathbf{X}$ have columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_p$ and $\mathbf{\Lambda} = \operatorname{diag}(\lambda_1, \ldots, \lambda_p)$. Column $j$ of $\mathbf{A} \mathbf{X}$ is $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j$, and column $j$ of $\mathbf{X} \mathbf{\Lambda}$ is $\mathbf{X}$ times column $j$ of $\mathbf{\Lambda}$ (1), which is
>
> $$\begin{aligned}
> \mathbf{X}\,(\lambda_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j) &= \lambda_j\,(\mathbf{X} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j) \\
> &= \lambda_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j
> \end{aligned}$$
>
> ([Theorem 1 in Generalized Inverses and Linear Systems](linear-algebra-generalized-inverses.llms.md#thm-scalar-matmul), [Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns)), so
>
> $$\mathbf{A} \mathbf{X} = \mathbf{X} \mathbf{\Lambda}
> \iff \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j = \lambda_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j \text{ for every } j.
> \tag{1}$$
>
> Also, $\mathbf{X}$ has rank $p$ exactly when its $p$ columns are linearly independent ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)), which by [Theorem 1](#thm-invertible-rank) is exactly when $\mathbf{X}$ is invertible.
>
> **Eigenvectors give a diagonalization.** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_p$ are linearly independent eigenvectors, then $\mathbf{X}$ is invertible and [Equation 1](#eq-ax-xlambda) gives $\mathbf{A} \mathbf{X} = \mathbf{X} \mathbf{\Lambda}$, so
>
> $$\begin{aligned}
> \mathbf{A}
> &= \mathbf{A}\,\mathbf{I}_p
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A}\,(\mathbf{X} \mathbf{X}^{-1})
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= (\mathbf{A} \mathbf{X})\,\mathbf{X}^{-1}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}.
> && \text{(} \mathbf{A} \mathbf{X} = \mathbf{X} \mathbf{\Lambda} \text{)}
> \end{aligned}$$
>
> **A diagonalization gives eigenvectors.** If $\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}$, then
>
> $$\begin{aligned}
> \mathbf{A} \mathbf{X}
> &= (\mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1})\,\mathbf{X}
> && \text{(substitute } \mathbf{A} \text{)}
> \\
> &= \mathbf{X} \mathbf{\Lambda}\,(\mathbf{X}^{-1} \mathbf{X})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{X} \mathbf{\Lambda}\,\mathbf{I}_p
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{X} \mathbf{\Lambda},
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> so each column satisfies $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j = \lambda_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j$ ([Equation 1](#eq-ax-xlambda)). $\mathbf{X}$ is invertible, so its columns are linearly independent, and in particular nonzero; they are $p$ linearly independent eigenvectors.

> **NOTE:**
>
> **Example 12 (Building the diagonalization from eigenvectors)** The eigenvectors $(1, 1)$ and $(1, -1)$ of $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ are linearly independent ([Example 10](#exm-eigenvectors-independent)), so with $\mathbf{X} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}$ and $\mathbf{\Lambda} = \operatorname{diag}(3, 1)$, $\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}$; by [Remark 1](#rem-similar-both-ways) this is the similarity of [Example 8](#exm-similar), with $\mathbf{X} = \mathbf{P}$. Because $\mathbf{A}$ is symmetric, [Theorem 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#thm-spectral) even gives such a factorization with orthonormal eigenvectors ([Definition 3 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigendecomposition)): dividing each column of $\mathbf{X}$ by its length $\sqrt{2}$ gives one. By contrast, every eigenvector of $\mathbf{J}$ in [Example 2](#exm-eigenspace) has the form $(t, 0)$, so any two of them are multiples of each other, and $\mathbf{J}$ has no two linearly independent eigenvectors: another way to see that it is not diagonalizable.

> **NOTE:**
>
> **Corollary 1 (Distinct eigenvalues make a matrix diagonalizable)** A $p \times p$ matrix with $p$ different eigenvalues is diagonalizable.

> **NOTE:**
>
> *Proof*. Choose one eigenvector for each eigenvalue. These $p$ eigenvectors are linearly independent ([Theorem 7](#thm-eigenvectors-independent)), so the matrix is diagonalizable ([Theorem 8](#thm-diagonalizable)).

> **NOTE:**
>
> **Example 13 (A triangular matrix with distinct diagonal entries)** $\mathbf{U}$ of [Example 6](#exm-eigen-triangular) has the three different eigenvalues $2$, $\tfrac{1}{2}$ and $-1$ ([Theorem 4](#thm-eigen-triangular)), so it is diagonalizable, even though it is not symmetric, so [Theorem 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#thm-spectral) does not apply to it. The converse fails: $\mathbf{I}_2$ is diagonal, hence diagonalizable ($\mathbf{I}_2 = \mathbf{I}_2\,\mathbf{I}_2\,\mathbf{I}_2^{-1}$), but has only the eigenvalue $1$.

> **NOTE:**
>
> **Theorem 9 (Powers of a diagonalizable matrix)** If $\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}$ ([Definition 4](#def-diagonalizable)) with $\mathbf{\Lambda} = \operatorname{diag}(\lambda_1, \ldots, \lambda_p)$, then for every positive integer $k$, $\mathbf{A}^k = \mathbf{X} \mathbf{\Lambda}^k \mathbf{X}^{-1}$ and $\mathbf{\Lambda}^k = \operatorname{diag}(\lambda_1^k, \ldots, \lambda_p^k)$.

> **NOTE:**
>
> *Proof*. **Powers of** $\mathbf{\Lambda}$. If $\mathbf{D} = \operatorname{diag}(d_1, \ldots, d_p)$ and $\mathbf{E} = \operatorname{diag}(e_1, \ldots, e_p)$, with entries $d_{il}$ and $e_{lj}$ (so $d_{ii} = d_i$ and $e_{jj} = e_j$), entry $(i, j)$ of $\mathbf{D} \mathbf{E}$ is $\sum_l d_{il}\,e_{lj}$ (1), where $d_{il} = 0$ unless $l = i$ and $e_{lj} = 0$ unless $l = j$. For $i \ne j$ no term survives, so the entry is $0$; for $i = j$ only $l = i$ survives, giving $d_i\,e_i$. So $\mathbf{D} \mathbf{E} = \operatorname{diag}(d_1 e_1, \ldots, d_p e_p)$, and [induction](https://morrison-lab.github.io/mcs/proof-writing.html#def-proof-by-induction) on $k$ gives $\mathbf{\Lambda}^k = \operatorname{diag}(\lambda_1^k, \ldots, \lambda_p^k)$.
>
> **Powers of** $\mathbf{A}$, by induction on $k$. $k = 1$ is the assumption. If it holds for $k - 1$,
>
> $$\begin{aligned}
> \mathbf{A}^k
> &= \mathbf{A}^{k-1} \mathbf{A}
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-power}{\text{Definition~2 in Special Matrices, Quadratic Forms and Trace}}\text{, }\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{X} \mathbf{\Lambda}^{k-1} \mathbf{X}^{-1}\,\mathbf{A}
> && \text{(induction hypothesis)}
> \\
> &= \mathbf{X} \mathbf{\Lambda}^{k-1} \mathbf{X}^{-1}\,\mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}
> && \text{(the assumption)}
> \\
> &= \mathbf{X} \mathbf{\Lambda}^{k-1}\,(\mathbf{X}^{-1} \mathbf{X})\,\mathbf{\Lambda} \mathbf{X}^{-1}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{X} \mathbf{\Lambda}^{k-1}\,\mathbf{I}_p\,\mathbf{\Lambda} \mathbf{X}^{-1}
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{X} \mathbf{\Lambda}^{k-1} \mathbf{\Lambda} \mathbf{X}^{-1}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{X} \mathbf{\Lambda}^{k} \mathbf{X}^{-1}.
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-power}{\text{Definition~2 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 14 (A closed form for the powers)** For $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$, with $\mathbf{X}$ as in [Example 12](#exm-thm-diagonalizable) and $\mathbf{X}^{-1} = \tfrac{1}{2}\,\mathbf{X}$ ([Example 8](#exm-similar)),
>
> $$\begin{aligned}
> \mathbf{A}^k
> &= \mathbf{X}\,\operatorname{diag}(3^k, 1)\,\mathbf{X}^{-1}
> && \text{(}\href{#thm-diagonalizable-powers}{\text{Theorem~9}}\text{)}
> \\
> &= \mathbf{X}\,\operatorname{diag}(3^k, 1)\,(\tfrac{1}{2}\,\mathbf{X})
> && \text{(substitute } \mathbf{X}^{-1} \text{)}
> \\
> &= \tfrac{1}{2}\,\mathbf{X}\,\operatorname{diag}(3^k, 1)\,\mathbf{X}
> && \text{(}\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{)}
> \\
> &= \tfrac{1}{2} \begin{bmatrix} 3^k & 1 \\ 3^k & -1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{, for } \mathbf{X}\,\operatorname{diag}(3^k, 1) \text{)}
> \\
> &= \tfrac{1}{2} \begin{bmatrix} 3^k + 1 & 3^k - 1 \\ 3^k - 1 & 3^k + 1 \end{bmatrix}.
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> For $k = 2$ this gives $\tfrac{1}{2} \begin{bmatrix} 10 & 8 \\ 8 & 10 \end{bmatrix} = \begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}$, which matches $\mathbf{A}^2$ in [Example 5](#exm-eigen-shift-power).

# Definitions on this page

- [Definition 1 (Eigenspace)](#def-eigenspace)
- [Definition 2 (Geometric multiplicity)](#def-geometric-multiplicity)
- [Definition 3 (Similar matrices)](#def-similar)
- [Definition 4 (Diagonalizable matrix)](#def-diagonalizable)

Back to top

## References

\[1\]

H. Zhou, “Eigen-decomposition.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/10-eig/10-eig.html>

\[2\]

Wikipedia contributors, “Eigenvalues and eigenvectors — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Eigenvalues_and_eigenvectors>

\[3\]

Wikipedia contributors, “Matrix similarity — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Matrix_similarity>

\[4\]

Wikipedia contributors, “Diagonalizable matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Diagonalizable_matrix>
