# Generalized Inverses and Linear Systems

Code

Published

Last modified: 2026-11-20 15:35:14 (PST)

# 1 Generalized inverses and linear systems

> **NOTE:**
>
> This section is adapted from Zhou [\[1\]](#ref-zhou2024matinv), used under the MIT License (see the license text in [Section  in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source defers the existence of the Moore-Penrose inverse to the singular value decomposition; the proof here builds it from a rank factorization ([Theorem 7 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-factorization)) instead, and the section adds the projection $\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top}$ for any generalized inverse $\mathbf{G}$ of ${\mathbf{X}}^{\top} \mathbf{X}$, which the source does not cover. [Theorem 7](#thm-moore-penrose-full-rank) restores the source’s formulas for the Moore-Penrose inverse of a matrix of full column rank or full row rank, and the fourth equivalent statement in [Theorem 10](#thm-consistency) restores the source’s rank test for consistency. These parts of the source are not part of this section:
>
> - the QR forms of the full-rank formulas
> - $\operatorname{rank}(\mathbf{A}^-) \ge \operatorname{rank}(\mathbf{A})$, $\mathcal{C}(\mathbf{A}) = \mathcal{C}(\mathbf{A}\mathbf{A}^-)$, $\operatorname{rank}(\mathbf{A}) = \operatorname{rank}(\mathbf{A}\mathbf{A}^-) = \operatorname{rank}(\mathbf{A}^-\mathbf{A})$, and $\operatorname{rank}(\mathbf{A}^+) = \operatorname{rank}(\mathbf{A})$
> - the remarks that $\mathbf{A}\mathbf{A}^-$ and $\mathbf{A}^-\mathbf{A}$ are projections, oblique in general and orthogonal for $\mathbf{A}^+$
> - the reflexive generalized inverse (conditions 1 and 2 alone), and the generalized inverses of ${\mathbf{A}}^{\top}$ and $k\mathbf{A}$
> - the operation counts for the triangular solves, LU and QR, and the comparison of the Cholesky factorization with LU

> **NOTE:**
>
> **Theorem 1 (A scalar factor passes through a matrix product)** For an $m \times k$ matrix $\mathbf{A}$, a $k \times n$ matrix $\mathbf{B}$ and a number $c$,
>
> $$\begin{aligned}
> \mathbf{A}\,(c\,\mathbf{B})
> &= c\,(\mathbf{A} \mathbf{B}) \\
> &= (c\,\mathbf{A})\,\mathbf{B}.
> \end{aligned}$$
>
> In particular, $\mathbf{A}\,(\mathbf{B} - \mathbf{C}) = \mathbf{A} \mathbf{B} - \mathbf{A} \mathbf{C}$ and $(\mathbf{B} - \mathbf{C})\,\mathbf{D} = \mathbf{B} \mathbf{D} - \mathbf{C} \mathbf{D}$ for matrices of compatible sizes, where $\mathbf{B} - \mathbf{C} = \mathbf{B} + (-1)\,\mathbf{C}$ ([Theorem 6 in Matrices](linear-algebra-matrices.llms.md#thm-matadd-inverse), [Definition 9 in Matrices](linear-algebra-matrices.llms.md#def-scalar-mult)).

> **NOTE:**
>
> *Proof*. $\mathbf{A}\,(c\,\mathbf{B}) = c\,(\mathbf{A} \mathbf{B})$. For each entry $(i, j)$,
>
> $$\begin{aligned}
> \mathopen{}\left(\mathbf{A}\,(c\,\mathbf{B})\right)\mathclose{}_{ij}
> &= \sum_{l=1}^{k} a_{il}\,(c\,\mathbf{B})_{lj}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{)}
> \\
> &= \sum_{l=1}^{k} a_{il}\,(c\,b_{lj})
> && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{)}
> \\
> &= \sum_{l=1}^{k} c\,(a_{il}\,b_{lj})
> && \text{(reorder the product of numbers)}
> \\
> &= c \sum_{l=1}^{k} a_{il}\,b_{lj}
> && \text{(factor } c \text{ out of the sum)}
> \\
> &= c\,(\mathbf{A} \mathbf{B})_{ij}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathopen{}\left(c\,(\mathbf{A} \mathbf{B})\right)\mathclose{}_{ij}.
> && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{)}
> \end{aligned}$$
>
> $(c\,\mathbf{A})\,\mathbf{B} = c\,(\mathbf{A} \mathbf{B})$. For each entry $(i, j)$,
>
> $$\begin{aligned}
> \mathopen{}\left((c\,\mathbf{A})\,\mathbf{B}\right)\mathclose{}_{ij}
> &= \sum_{l=1}^{k} (c\,a_{il})\,b_{lj}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{, }\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{)}
> \\
> &= c \sum_{l=1}^{k} a_{il}\,b_{lj}
> && \text{(factor } c \text{ out of the sum)}
> \\
> &= \mathopen{}\left(c\,(\mathbf{A} \mathbf{B})\right)\mathclose{}_{ij}.
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{, }\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{)}
> \end{aligned}$$
>
> **Differences.**
>
> $$\begin{aligned}
> \mathbf{A}\,(\mathbf{B} - \mathbf{C})
> &= \mathbf{A}\,(\mathbf{B} + (-1)\,\mathbf{C})
> && \text{(the difference as a sum)}
> \\
> &= \mathbf{A} \mathbf{B} + \mathbf{A}\,((-1)\,\mathbf{C})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-distrib}{\text{Theorem~2 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A} \mathbf{B} + (-1)\,(\mathbf{A} \mathbf{C})
> && \text{(first part)}
> \\
> &= \mathbf{A} \mathbf{B} - \mathbf{A} \mathbf{C},
> && \text{(the difference as a sum)}
> \end{aligned}$$
>
> and $(\mathbf{B} - \mathbf{C})\,\mathbf{D} = \mathbf{B} \mathbf{D} - \mathbf{C} \mathbf{D}$ the same way, using the second law in [Theorem 2 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-distrib) and the second part. A column vector is a matrix with one column, so all of this applies with $\mathbf{B}$, $\mathbf{C}$ or $\mathbf{D}$ a vector.

> **NOTE:**
>
> **Example 1 (Pulling a scalar out of a product)** With $\mathbf{A} = \begin{bmatrix} 1 & 2 \end{bmatrix}$ and $\mathbf{B} = \begin{bmatrix} 3 \\ 4 \end{bmatrix}$:
>
> $$\begin{aligned}
> \mathbf{A}\,(2\,\mathbf{B}) &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 6 \\ 8 \end{bmatrix} \\
> &= 22,
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> 2\,(\mathbf{A} \mathbf{B}) &= 2\,(3 + 8) \\
> &= 22.
> \end{aligned}$$

> **NOTE:**
>
> **Definition 1 (Generalized inverse)** A **generalized inverse** [\[2\]](#ref-wikipedia_generalized_inverse) of an $m \times n$ matrix $\mathbf{A}$ is an $n \times m$ matrix $\mathbf{G}$ such that
>
> $$\underbrace{\mathbf{A}}_{m \times n}\,
> \underbrace{\mathbf{G}}_{n \times m}\,
> \underbrace{\mathbf{A}}_{m \times n}
> = \mathbf{A}.$$

> **NOTE:**
>
> **Example 2 (A matrix with many generalized inverses)** Let $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ and $\mathbf{G} = \begin{bmatrix} g_{11} & g_{12} \\ g_{21} & g_{22} \end{bmatrix}$. Then
>
> $$\begin{aligned}
> \mathbf{A} \mathbf{G} \mathbf{A}
> &= \begin{bmatrix} g_{11} & g_{12} \\ 0 & 0 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{, for } \mathbf{A} \mathbf{G} \text{)}
> \\
> &= \begin{bmatrix} g_{11} & 0 \\ 0 & 0 \end{bmatrix},
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> which equals $\mathbf{A}$ exactly when $g_{11} = 1$. So every matrix $\begin{bmatrix} 1 & g_{12} \\ g_{21} & g_{22} \end{bmatrix}$ is a generalized inverse of $\mathbf{A}$: a generalized inverse need not be unique. The zero matrix is not one, since its $(1, 1)$ entry is $0$.

> **NOTE:**
>
> **Theorem 2 (An invertible matrix has only one generalized inverse)** If $\mathbf{A}$ is an invertible $p \times p$ matrix ([Definition 6 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-invertible-matrix)), its only generalized inverse is $\mathbf{A}^{-1}$.

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> \mathbf{A} \mathbf{A}^{-1} \mathbf{A} &= \mathbf{I}_p \mathbf{A} \\
> &= \mathbf{A}
> \end{aligned}$$
>
> ([Definition 5 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-matrix-inverse), [Theorem 4 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-identity)), so $\mathbf{A}^{-1}$ is a generalized inverse. If $\mathbf{G}$ is any generalized inverse, then
>
> $$\begin{aligned}
> \mathbf{G}
> &= \mathbf{I}_p\,\mathbf{G}\,\mathbf{I}_p
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= (\mathbf{A}^{-1} \mathbf{A})\,\mathbf{G}\,(\mathbf{A} \mathbf{A}^{-1})
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{A}^{-1}\,(\mathbf{A} \mathbf{G} \mathbf{A})\,\mathbf{A}^{-1}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A}^{-1} \mathbf{A} \mathbf{A}^{-1}
> && \text{(}\href{#def-generalized-inverse}{\text{Definition~1}}\text{)}
> \\
> &= \mathbf{I}_p\,\mathbf{A}^{-1}
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{A}^{-1}.
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 3 (The generalized inverse of an invertible matrix)** For $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}$ of [Example 5 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#exm-invertible-matrix), the only generalized inverse is $\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}$. The matrix of [Example 2](#exm-generalized-inverse), by contrast, has infinitely many, so by [Theorem 2](#thm-generalized-inverse-invertible) it is singular.

> **NOTE:**
>
> **Theorem 3 (A generalized inverse solves every solvable system)** Let $\mathbf{A}$ be $m \times n$, let $\mathbf{G}$ be a generalized inverse of $\mathbf{A}$ ([Definition 1](#def-generalized-inverse)), and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$. If $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has a solution, then $\mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is a solution.

> **NOTE:**
>
> *Proof*. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0$ be a solution, so $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$. Then
>
> $$\begin{aligned}
> \mathbf{A}\,(\mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}})
> &= \mathbf{A} \mathbf{G}\,(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0)
> && \text{(substitute } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0 \text{)}
> \\
> &= (\mathbf{A} \mathbf{G} \mathbf{A})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0
> && \text{(}\href{#def-generalized-inverse}{\text{Definition~1}}\text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}.
> && \text{(} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0 \text{ is a solution)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 4 (Solving with a generalized inverse)** With $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ and its generalized inverse $\mathbf{G} = \begin{bmatrix} 1 & 5 \\ 7 & 0 \end{bmatrix}$ ([Example 2](#exm-generalized-inverse)), the system $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (2, 0)$ has the solution $(2, 0)$, and $\mathbf{G}\,(2, 0) = (2, 14)$ is a solution too: $\mathbf{A}\,(2, 14) = (2, 0)$. The system $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (2, 1)$ has no solution, since the second entry of $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is always $0$; there $\mathbf{G}\,(2, 1) = (7, 14)$ gives $\mathbf{A}\,(7, 14) = (7, 0) \ne (2, 1)$.

> **NOTE:**
>
> **Definition 2 (Moore-Penrose inverse)** A **Moore-Penrose inverse** [\[3\]](#ref-wikipedia_moore_penrose_inverse) of an $m \times n$ matrix $\mathbf{A}$ is an $n \times m$ matrix $\mathbf{G}$ satisfying all four conditions
>
> 1.  $\mathbf{A} \mathbf{G} \mathbf{A} = \mathbf{A}$;
> 2.  $\mathbf{G} \mathbf{A} \mathbf{G} = \mathbf{G}$;
> 3.  ${(\mathbf{A} \mathbf{G})}^{\top} = \mathbf{A} \mathbf{G}$;
> 4.  ${(\mathbf{G} \mathbf{A})}^{\top} = \mathbf{G} \mathbf{A}$.

> **NOTE:**
>
> **Example 5 (Checking the four conditions)** For $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$, the matrix $\mathbf{G} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ satisfies all four:
>
> $$\begin{aligned}
> \mathbf{A} \mathbf{G} &= \mathbf{G} \mathbf{A} \\
> &= \mathbf{A}
> \end{aligned}$$
>
> and $\mathbf{A}^2 = \mathbf{A}$, so conditions 1 and 2 read $\mathbf{A} = \mathbf{A}$, and conditions 3 and 4 hold because $\mathbf{A}$ is symmetric.
>
> The generalized inverse $\mathbf{G}' = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}$ of $\mathbf{A}$ ([Example 2](#exm-generalized-inverse)) is not a Moore-Penrose inverse: $\mathbf{A} \mathbf{G}' = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}$, which is not symmetric, so condition 3 fails.

> **NOTE:**
>
> **Theorem 4 (A Moore-Penrose inverse is a generalized inverse)** If $\mathbf{G}$ is a Moore-Penrose inverse of an $m \times n$ matrix $\mathbf{A}$ ([Definition 2](#def-moore-penrose)), then $\mathbf{G}$ is a generalized inverse of $\mathbf{A}$ ([Definition 1](#def-generalized-inverse)).

> **NOTE:**
>
> *Proof*. A generalized inverse of $\mathbf{A}$ is an $n \times m$ matrix $\mathbf{G}$ with $\mathbf{A}\mathbf{G}\mathbf{A} = \mathbf{A}$. A Moore-Penrose inverse is an $n \times m$ matrix, and condition 1 of [Definition 2](#def-moore-penrose) is $\mathbf{A}\mathbf{G}\mathbf{A} = \mathbf{A}$.

> **NOTE:**
>
> **Example 6 (The Moore-Penrose inverse of a rank-one matrix)** The $3 \times 2$ matrix $\mathbf{A}$ below has rank $1$, because its second column is twice its first, so it has no ordinary inverse. The function [`MASS::ginv()`](https://rdrr.io/pkg/MASS/man/ginv.html) computes its Moore-Penrose inverse $\mathbf{G}$. The code checks the four conditions of [Definition 2](#def-moore-penrose), of which the first is the equation that makes $\mathbf{G}$ a generalized inverse.
>
> ``` downlit
> A <- cbind(c(1, 2, 3), c(2, 4, 6))
> G <- MASS::ginv(A)
> conditions <- c(
>   "1: AGA = A" = isTRUE(all.equal(A %*% G %*% A, A)),
>   "2: GAG = G" = isTRUE(all.equal(G %*% A %*% G, G)),
>   "3: AG symmetric" = isTRUE(all.equal(A %*% G, t(A %*% G))),
>   "4: GA symmetric" = isTRUE(all.equal(G %*% A, t(G %*% A)))
> )
> conditions
> #>      1: AGA = A      2: GAG = G 3: AG symmetric 4: GA symmetric 
> #>            TRUE            TRUE            TRUE            TRUE
> round(G, 4)
> #>        [,1]   [,2]   [,3]
> #> [1,] 0.0143 0.0286 0.0429
> #> [2,] 0.0286 0.0571 0.0857
> ```
>
> All 4 of 4 conditions hold, so $\mathbf{G}$ is a Moore-Penrose inverse of $\mathbf{A}$. By [Theorem 4](#thm-moore-penrose-generalized-inverse) it is also a generalized inverse, which is condition 1: $\mathbf{A}\mathbf{G}\mathbf{A} = \mathbf{A}$ up to rounding error.

> **NOTE:**
>
> **Theorem 5 (A matrix has at most one Moore-Penrose inverse)** If $\mathbf{G}_1$ and $\mathbf{G}_2$ are both Moore-Penrose inverses of an $m \times n$ matrix $\mathbf{A}$ ([Definition 2](#def-moore-penrose)), then $\mathbf{G}_1 = \mathbf{G}_2$.

> **NOTE:**
>
> *Proof*. $\mathbf{A} \mathbf{G}_1 = \mathbf{A} \mathbf{G}_2$.
>
> $$\begin{aligned}
> \mathbf{A} \mathbf{G}_1
> &= {(\mathbf{A} \mathbf{G}_1)}^{\top}
> && \text{(condition 3 for } \mathbf{G}_1 \text{)}
> \\
> &= {\mathbf{G}_1}^{\top}\,{\mathbf{A}}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{G}_1}^{\top}\,{(\mathbf{A} \mathbf{G}_2 \mathbf{A})}^{\top}
> && \text{(condition 1 for } \mathbf{G}_2 \text{)}
> \\
> &= {\mathbf{G}_1}^{\top}\,{\mathbf{A}}^{\top}\,{\mathbf{G}_2}^{\top}\,{\mathbf{A}}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{, twice)}
> \\
> &= ({\mathbf{G}_1}^{\top}\,{\mathbf{A}}^{\top})\,({\mathbf{G}_2}^{\top}\,{\mathbf{A}}^{\top})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {(\mathbf{A} \mathbf{G}_1)}^{\top}\,{(\mathbf{A} \mathbf{G}_2)}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{, twice)}
> \\
> &= (\mathbf{A} \mathbf{G}_1)(\mathbf{A} \mathbf{G}_2)
> && \text{(condition 3 for } \mathbf{G}_1 \text{ and } \mathbf{G}_2 \text{)}
> \\
> &= (\mathbf{A} \mathbf{G}_1 \mathbf{A})\,\mathbf{G}_2
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A} \mathbf{G}_2.
> && \text{(condition 1 for } \mathbf{G}_1 \text{)}
> \end{aligned}$$
>
> $\mathbf{G}_1 \mathbf{A} = \mathbf{G}_2 \mathbf{A}$.
>
> $$\begin{aligned}
> \mathbf{G}_1 \mathbf{A}
> &= {(\mathbf{G}_1 \mathbf{A})}^{\top}
> && \text{(condition 4 for } \mathbf{G}_1 \text{)}
> \\
> &= {\mathbf{A}}^{\top}\,{\mathbf{G}_1}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {(\mathbf{A} \mathbf{G}_2 \mathbf{A})}^{\top}\,{\mathbf{G}_1}^{\top}
> && \text{(condition 1 for } \mathbf{G}_2 \text{)}
> \\
> &= {\mathbf{A}}^{\top}\,{\mathbf{G}_2}^{\top}\,{\mathbf{A}}^{\top}\,{\mathbf{G}_1}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{, twice)}
> \\
> &= ({\mathbf{A}}^{\top}\,{\mathbf{G}_2}^{\top})\,({\mathbf{A}}^{\top}\,{\mathbf{G}_1}^{\top})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {(\mathbf{G}_2 \mathbf{A})}^{\top}\,{(\mathbf{G}_1 \mathbf{A})}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{, twice)}
> \\
> &= (\mathbf{G}_2 \mathbf{A})(\mathbf{G}_1 \mathbf{A})
> && \text{(condition 4 for } \mathbf{G}_2 \text{ and } \mathbf{G}_1 \text{)}
> \\
> &= \mathbf{G}_2\,(\mathbf{A} \mathbf{G}_1 \mathbf{A})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{G}_2 \mathbf{A}.
> && \text{(condition 1 for } \mathbf{G}_1 \text{)}
> \end{aligned}$$
>
> **Conclusion.**
>
> $$\begin{aligned}
> \mathbf{G}_1
> &= \mathbf{G}_1 \mathbf{A} \mathbf{G}_1
> && \text{(condition 2 for } \mathbf{G}_1 \text{)}
> \\
> &= \mathbf{G}_1\,(\mathbf{A} \mathbf{G}_1)
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{G}_1\,(\mathbf{A} \mathbf{G}_2)
> && \text{(the first step)}
> \\
> &= (\mathbf{G}_1 \mathbf{A})\,\mathbf{G}_2
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= (\mathbf{G}_2 \mathbf{A})\,\mathbf{G}_2
> && \text{(the second step)}
> \\
> &= \mathbf{G}_2 \mathbf{A} \mathbf{G}_2
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{G}_2.
> && \text{(condition 2 for } \mathbf{G}_2 \text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 7 (Only one of the many generalized inverses qualifies)** The matrix $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ has infinitely many generalized inverses $\begin{bmatrix} 1 & g_{12} \\ g_{21} & g_{22} \end{bmatrix}$ ([Example 2](#exm-generalized-inverse)), and $\begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ is a Moore-Penrose inverse ([Example 5](#exm-moore-penrose)). By [Theorem 5](#thm-moore-penrose-unique) it is the only one, so every other choice of $g_{12}, g_{21}, g_{22}$ breaks condition 2, 3 or 4. For instance, $g_{21} = 1$ (the rest $0$) gives $\mathbf{G} \mathbf{A} = \begin{bmatrix} 1 & 0 \\ 1 & 0 \end{bmatrix}$, which is not symmetric.

> **NOTE:**
>
> **Theorem 6 (Every matrix has a Moore-Penrose inverse)** Every $m \times n$ matrix $\mathbf{A}$ has a Moore-Penrose inverse ([Definition 2](#def-moore-penrose)), written $\mathbf{A}^+$; it is unique by [Theorem 5](#thm-moore-penrose-unique).
>
> - If $\mathbf{A} = \mathbf{0}_{m \times n}$, then $\mathbf{A}^+ = \mathbf{0}_{n \times m}$.
> - If $\operatorname{rank}(\mathbf{A}) = r \ge 1$ and $\mathbf{A} = \mathbf{C} \mathbf{R}$ is a rank factorization ([Definition 2 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#def-rank-factorization)), then
>
> $$\underbrace{\mathbf{A}^+}_{n \times m}
> = \underbrace{{\mathbf{R}}^{\top}}_{n \times r}
>   \underbrace{(\mathbf{R} {\mathbf{R}}^{\top})^{-1}}_{r \times r}
>   \underbrace{({\mathbf{C}}^{\top} \mathbf{C})^{-1}}_{r \times r}
>   \underbrace{{\mathbf{C}}^{\top}}_{r \times m}.$$

> **NOTE:**
>
> *Proof*. **The two cases cover every matrix.** If $\mathbf{A} \ne \mathbf{0}_{m \times n}$, it has a nonzero column, which is linearly independent on its own ($c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ forces $c = 0$), so $\operatorname{rank}(\mathbf{A}) \ge 1$ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)).
>
> **The zero matrix.** With $\mathbf{A} = \mathbf{0}_{m \times n}$ and $\mathbf{G} = \mathbf{0}_{n \times m}$, every product in conditions 1 to 4 is a zero matrix, and a zero matrix equals its own transpose, so all four conditions hold.
>
> **The two inverses exist.** Now suppose $\operatorname{rank}(\mathbf{A}) = r \ge 1$. A rank factorization exists ([Theorem 7 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-factorization)). $\mathbf{C}$ is $m \times r$ and $\mathbf{R}$ is $r \times n$. Both have rank $r$:
>
> $$\begin{aligned}
> r
> &= \operatorname{rank}(\mathbf{C} \mathbf{R})
> && \text{(} \mathbf{A} = \mathbf{C} \mathbf{R} \text{)}
> \\
> &\le \operatorname{rank}(\mathbf{C})
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-product}{\text{Theorem~3 in Rank-Nullity and Rank Factorization}}\text{)}
> \\
> &\le r,
> && \text{(}\href{linear-algebra-rank-nullity.qmd#cor-rank-bound}{\text{Corollary~1 in Rank-Nullity and Rank Factorization}}\text{, } \mathbf{C} \text{ has } r \text{ columns)}
> \end{aligned}$$
>
> and, using ${(\mathbf{C} \mathbf{R})}^{\top} = {\mathbf{R}}^{\top} {\mathbf{C}}^{\top}$ ([Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product)),
>
> $$\begin{aligned}
> r
> &= \operatorname{rank}\mathopen{}\left({\mathbf{R}}^{\top} {\mathbf{C}}^{\top}\right)\mathclose{}
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-transpose}{\text{Theorem~4 in Rank-Nullity and Rank Factorization}}\text{)}
> \\
> &\le \operatorname{rank}({\mathbf{R}}^{\top})
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-product}{\text{Theorem~3 in Rank-Nullity and Rank Factorization}}\text{)}
> \\
> &\le r.
> && \text{(}\href{linear-algebra-rank-nullity.qmd#cor-rank-bound}{\text{Corollary~1 in Rank-Nullity and Rank Factorization}}\text{, } {\mathbf{R}}^{\top} \text{ has } r \text{ columns)}
> \end{aligned}$$
>
> So $\mathbf{C}$ and ${\mathbf{R}}^{\top}$ have full column rank $r$, and ${\mathbf{C}}^{\top} \mathbf{C}$ and $\mathbf{R} {\mathbf{R}}^{\top} = {({\mathbf{R}}^{\top})}^{\top}\,{\mathbf{R}}^{\top}$ are invertible ([Theorem 1 in Design Matrices and Projections](linear-algebra-projections.llms.md#thm-gram-invertible)). They are symmetric:
>
> $$\begin{aligned}
> {({\mathbf{C}}^{\top} \mathbf{C})}^{\top} &= {\mathbf{C}}^{\top}\,{({\mathbf{C}}^{\top})}^{\top} \\
> &= {\mathbf{C}}^{\top} \mathbf{C}
> \end{aligned}$$
>
> ([Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product), [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)), and likewise for $\mathbf{R} {\mathbf{R}}^{\top}$. Write $\mathbf{S} \stackrel{\text{def}}{=}(\mathbf{R} {\mathbf{R}}^{\top})^{-1}$ and $\mathbf{T} \stackrel{\text{def}}{=}({\mathbf{C}}^{\top} \mathbf{C})^{-1}$, both symmetric ([Corollary 1 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric)), and $\mathbf{G} \stackrel{\text{def}}{=}{\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top}$.
>
> **Two products.**
>
> $$\begin{aligned}
> \mathbf{A} \mathbf{G}
> &= \mathbf{C} \mathbf{R}\,{\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top}
> && \text{(substitute } \mathbf{A} \text{ and } \mathbf{G} \text{)}
> \\
> &= \mathbf{C}\,(\mathbf{R} {\mathbf{R}}^{\top})\,\mathbf{S}\,\mathbf{T} {\mathbf{C}}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{C}\,\mathbf{I}_r\,\mathbf{T} {\mathbf{C}}^{\top}
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top},
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> $$\begin{aligned}
> \mathbf{G} \mathbf{A}
> &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top}\,\mathbf{C} \mathbf{R}
> && \text{(substitute } \mathbf{G} \text{ and } \mathbf{A} \text{)}
> \\
> &= {\mathbf{R}}^{\top} \mathbf{S}\,\mathbf{T}\,({\mathbf{C}}^{\top} \mathbf{C})\,\mathbf{R}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{R}}^{\top} \mathbf{S}\,\mathbf{I}_r\,\mathbf{R}
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{R}.
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> **Conditions 3 and 4.**
>
> $$\begin{aligned}
> {(\mathbf{A} \mathbf{G})}^{\top}
> &= {(\mathbf{C} \mathbf{T} {\mathbf{C}}^{\top})}^{\top}
> && \text{(first product)}
> \\
> &= {\mathopen{}\left(\mathbf{C}\,(\mathbf{T} {\mathbf{C}}^{\top})\right)\mathclose{}}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {(\mathbf{T} {\mathbf{C}}^{\top})}^{\top}\,{\mathbf{C}}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {({\mathbf{C}}^{\top})}^{\top}\,{\mathbf{T}}^{\top}\,{\mathbf{C}}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{C}\,{\mathbf{T}}^{\top}\,{\mathbf{C}}^{\top}
> && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~6 in Matrices}}\text{)}
> \\
> &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top},
> && \text{(} \mathbf{T} \text{ is symmetric)}
> \end{aligned}$$
>
> $$\begin{aligned}
> {(\mathbf{G} \mathbf{A})}^{\top}
> &= {({\mathbf{R}}^{\top} \mathbf{S} \mathbf{R})}^{\top}
> && \text{(second product)}
> \\
> &= {\mathopen{}\left({\mathbf{R}}^{\top}\,(\mathbf{S} \mathbf{R})\right)\mathclose{}}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {(\mathbf{S} \mathbf{R})}^{\top}\,{({\mathbf{R}}^{\top})}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{R}}^{\top}\,{\mathbf{S}}^{\top}\,{({\mathbf{R}}^{\top})}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{R}}^{\top}\,{\mathbf{S}}^{\top}\,\mathbf{R}
> && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~6 in Matrices}}\text{)}
> \\
> &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{R}.
> && \text{(} \mathbf{S} \text{ is symmetric)}
> \end{aligned}$$
>
> **Condition 1.**
>
> $$\begin{aligned}
> \mathbf{A} \mathbf{G} \mathbf{A}
> &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top}\,\mathbf{C} \mathbf{R}
> && \text{(first product)}
> \\
> &= \mathbf{C}\,\mathbf{T}\,({\mathbf{C}}^{\top} \mathbf{C})\,\mathbf{R}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{C}\,\mathbf{I}_r\,\mathbf{R}
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{A}.
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> **Condition 2.**
>
> $$\begin{aligned}
> \mathbf{G} \mathbf{A} \mathbf{G}
> &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{R}\,{\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top}
> && \text{(second product)}
> \\
> &= {\mathbf{R}}^{\top}\,\mathbf{S}\,(\mathbf{R} {\mathbf{R}}^{\top})\,\mathbf{S}\,\mathbf{T} {\mathbf{C}}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{R}}^{\top}\,\mathbf{I}_r\,\mathbf{S}\,\mathbf{T} {\mathbf{C}}^{\top}
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{G}.
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 8 (The Moore-Penrose inverse of a rank-one matrix)** For $\mathbf{A}$ in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space), the rank factorization $\mathbf{C} = \begin{bmatrix} 1 \\ 3 \end{bmatrix}$, $\mathbf{R} = \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}$ ([Example 11 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#exm-rank-factorization)) gives
>
> $$\begin{aligned}
> {\mathbf{C}}^{\top} \mathbf{C} &= 1 + 9 \\
> &= 10
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> \mathbf{R} {\mathbf{R}}^{\top} &= 1 + 4 + 4 \\
> &= 9,
> \end{aligned}$$
>
> so
>
> $$\begin{aligned}
> \mathbf{A}^+
> &= \frac{1}{9 \cdot 10} \begin{bmatrix} 1 \\ -2 \\ -2 \end{bmatrix} \begin{bmatrix} 1 & 3 \end{bmatrix} \\
> &= \frac{1}{90} \begin{bmatrix} 1 & 3 \\ -2 & -6 \\ -2 & -6 \end{bmatrix}.
> \end{aligned}$$
>
> As a check on condition 1,
>
> $$\begin{aligned}
> \mathbf{A} \mathbf{A}^+ &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top} \\
> &= \frac{1}{10} \begin{bmatrix} 1 & 3 \\ 3 & 9 \end{bmatrix},
> \end{aligned}$$
>
> and its first row times $\mathbf{A}$ is $\frac{1}{10}\mathopen{}\left(1 \cdot(1, -2, -2) + 3 \cdot(3, -6, -6)\right)\mathclose{} = (1, -2, -2)$, the first row of $\mathbf{A}$; the second row is $3$ times the first, like the second row of $\mathbf{A}$.

> **NOTE:**
>
> **Theorem 7 (The Moore-Penrose inverse of a matrix of full column rank or full row rank)** Let $\mathbf{A}$ be an $m \times n$ [matrix](linear-algebra-matrices.llms.md#def-matrix).
>
> 1.  If $\mathbf{A}$ has full column rank ([Definition 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-full-column-rank)), then ${\mathbf{A}}^{\top} \mathbf{A}$ is [invertible](linear-algebra-special-matrices.llms.md#def-matrix-inverse) and $\mathbf{A}^+ = {\mathopen{}\left(({\mathbf{A}}^{\top} \mathbf{A})\right)\mathclose{}}^{-1}\,{\mathbf{A}}^{\top}$.
> 2.  If $\operatorname{rank}(\mathbf{A}) = m$, then $\mathbf{A} {\mathbf{A}}^{\top}$ is invertible and $\mathbf{A}^+ = {\mathbf{A}}^{\top}\,{\mathopen{}\left((\mathbf{A} {\mathbf{A}}^{\top})\right)\mathclose{}}^{-1}$.

> **NOTE:**
>
> *Proof*. By [Theorem 5](#thm-moore-penrose-unique), it is enough to show that the [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{G}$ named in each part satisfies the four conditions of [Definition 2](#def-moore-penrose).
>
> **Part 1.** ${\mathbf{A}}^{\top} \mathbf{A}$ is [invertible](linear-algebra-special-matrices.llms.md#def-matrix-inverse) by [Theorem 1 in Design Matrices and Projections](linear-algebra-projections.llms.md#thm-gram-invertible). Let $\mathbf{G} = {\mathopen{}\left(({\mathbf{A}}^{\top} \mathbf{A})\right)\mathclose{}}^{-1}\,{\mathbf{A}}^{\top}$. Then
>
> $$\begin{aligned}
> \mathbf{G} \mathbf{A}
> &= {\mathopen{}\left(({\mathbf{A}}^{\top} \mathbf{A})\right)\mathclose{}}^{-1}\,{\mathbf{A}}^{\top} \mathbf{A}
> && \text{(definition of } \mathbf{G} \text{)}
> \\
> &= \mathbf{I}_n.
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \end{aligned}$$
>
> - Condition 4: ${(\mathbf{G} \mathbf{A})}^{\top} = {\mathbf{I}_n}^{\top} = \mathbf{I}_n = \mathbf{G} \mathbf{A}$.
> - Condition 1: $\mathbf{A} \mathbf{G} \mathbf{A} = \mathbf{A} \mathbf{I}_n = \mathbf{A}$.
> - Condition 2: $\mathbf{G} \mathbf{A} \mathbf{G} = \mathbf{I}_n \mathbf{G} = \mathbf{G}$.
> - Condition 3: ${(\mathbf{A} \mathbf{G})}^{\top}
>   = \mathbf{A}\,{\mathopen{}\left({\mathopen{}\left(({\mathbf{A}}^{\top} \mathbf{A})\right)\mathclose{}}^{-1}\right)\mathclose{}}^{\top}\,{\mathbf{A}}^{\top}
>   = \mathbf{A}\,{\mathopen{}\left({({\mathbf{A}}^{\top} \mathbf{A})}^{\top}\right)\mathclose{}}^{-1}\,{\mathbf{A}}^{\top}
>   = \mathbf{A}\,{\mathopen{}\left(({\mathbf{A}}^{\top} \mathbf{A})\right)\mathclose{}}^{-1}\,{\mathbf{A}}^{\top}
>   = \mathbf{A} \mathbf{G}$, by [Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product), [Theorem 2 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#thm-inverse-transpose), and because ${\mathbf{A}}^{\top} \mathbf{A}$ is [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix).
>
> **Part 2.** $\operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}) = \operatorname{rank}(\mathbf{A}) = m$ ([Theorem 4 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-transpose)), and $\mathbf{A} {\mathbf{A}}^{\top}$ is $m \times m$, so it is invertible ([Theorem 1 in Similarity and Diagonalization](linear-algebra-diagonalization.llms.md#thm-invertible-rank)). Let $\mathbf{G} = {\mathbf{A}}^{\top}\,{\mathopen{}\left((\mathbf{A} {\mathbf{A}}^{\top})\right)\mathclose{}}^{-1}$. Then $\mathbf{A} \mathbf{G} = \mathbf{A} {\mathbf{A}}^{\top}\,{\mathopen{}\left((\mathbf{A} {\mathbf{A}}^{\top})\right)\mathclose{}}^{-1} = \mathbf{I}_m$ ([Definition 5 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-matrix-inverse)).
>
> - Condition 3: ${(\mathbf{A} \mathbf{G})}^{\top} = {\mathbf{I}_m}^{\top} = \mathbf{I}_m = \mathbf{A} \mathbf{G}$.
> - Condition 1: $\mathbf{A} \mathbf{G} \mathbf{A} = \mathbf{I}_m \mathbf{A} = \mathbf{A}$.
> - Condition 2: $\mathbf{G} \mathbf{A} \mathbf{G} = \mathbf{G} \mathbf{I}_m = \mathbf{G}$.
> - Condition 4: ${(\mathbf{G} \mathbf{A})}^{\top}
>   = {\mathbf{A}}^{\top}\,{\mathopen{}\left({\mathopen{}\left((\mathbf{A} {\mathbf{A}}^{\top})\right)\mathclose{}}^{-1}\right)\mathclose{}}^{\top}\,\mathbf{A}
>   = {\mathbf{A}}^{\top}\,{\mathopen{}\left((\mathbf{A} {\mathbf{A}}^{\top})\right)\mathclose{}}^{-1}\,\mathbf{A}
>   = \mathbf{G} \mathbf{A}$, by [Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product), [Theorem 2 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#thm-inverse-transpose), and because $\mathbf{A} {\mathbf{A}}^{\top}$ is symmetric.

> **NOTE:**
>
> **Example 9 (Moore-Penrose inverses of a column and a row)** The $2 \times 1$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A} = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$ has [full column rank](linear-algebra-subspaces.llms.md#def-full-column-rank), and ${\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 2 \end{bmatrix}$, so
>
> $$\begin{aligned}
> \mathbf{A}^+ &= \tfrac{1}{2} \begin{bmatrix} 1 & 1 \end{bmatrix} \\
> &= \begin{bmatrix} \tfrac{1}{2} & \tfrac{1}{2} \end{bmatrix}.
> \end{aligned}$$
>
> Then $\mathbf{A}^+ \mathbf{A} = \begin{bmatrix} 1 \end{bmatrix}$, and $\mathbf{A} \mathbf{A}^+ = \begin{bmatrix} \tfrac{1}{2} & \tfrac{1}{2} \\ \tfrac{1}{2} & \tfrac{1}{2} \end{bmatrix}$ is [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix).
>
> The $1 \times 2$ matrix $\mathbf{B} = \begin{bmatrix} 1 & 1 \end{bmatrix}$ has [rank](linear-algebra-subspaces.llms.md#def-rank) $1$, which is its count of rows, and $\mathbf{B} {\mathbf{B}}^{\top} = \begin{bmatrix} 2 \end{bmatrix}$, so
>
> $$\begin{aligned}
> \mathbf{B}^+ &= \begin{bmatrix} 1 \\ 1 \end{bmatrix} \tfrac{1}{2} \\
> &= \begin{bmatrix} \tfrac{1}{2} \\ \tfrac{1}{2} \end{bmatrix}.
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 8 (The Moore-Penrose inverse of a symmetric matrix from its eigendecomposition)** Let $\mathbf{S} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}$ be an eigendecomposition ([Definition 3 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigendecomposition)) of a [symmetric matrix](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) $\mathbf{S}$, with [diagonal entries](linear-algebra-matrix-multiplication.llms.md#def-diagonal-entry) $\lambda_1, \ldots, \lambda_p$ in the [diagonal matrix](linear-algebra-special-matrices.llms.md#def-diagonal-matrix) $\mathbf{\Lambda}$. Let $\mathbf{\Lambda}^+$ be the diagonal matrix with $j$th [diagonal entry](linear-algebra-matrix-multiplication.llms.md#def-diagonal-entry) $1/\lambda_j$ if $\lambda_j \ne 0$ and $0$ if $\lambda_j = 0$. Then
>
> $$\mathbf{S}^+ = \mathbf{Q}\mathbf{\Lambda}^+{\mathbf{Q}}^{\top}.$$

> **NOTE:**
>
> *Proof*. Let $\mathbf{G} = \mathbf{Q}\mathbf{\Lambda}^+{\mathbf{Q}}^{\top}$. By [Theorem 5](#thm-moore-penrose-unique), it is enough to show that $\mathbf{G}$ satisfies the four conditions of [Definition 2](#def-moore-penrose) for $\mathbf{S}$.
>
> **Two facts about the diagonal matrices.** The $j$th [diagonal entry](linear-algebra-matrix-multiplication.llms.md#def-diagonal-entry) of $\mathbf{\Lambda}\mathbf{\Lambda}^+\mathbf{\Lambda}$ is $\lambda_j \cdot (1/\lambda_j) \cdot \lambda_j = \lambda_j$ if $\lambda_j \ne 0$, and $0 = \lambda_j$ if $\lambda_j = 0$. So $\mathbf{\Lambda}\mathbf{\Lambda}^+\mathbf{\Lambda} = \mathbf{\Lambda}$. In the same way, $\mathbf{\Lambda}^+\mathbf{\Lambda}\mathbf{\Lambda}^+ = \mathbf{\Lambda}^+$. Both $\mathbf{\Lambda}\mathbf{\Lambda}^+$ and $\mathbf{\Lambda}^+\mathbf{\Lambda}$ are diagonal, so each is [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix).
>
> **Conditions 1 and 2.**
>
> $$\begin{aligned}
> \mathbf{S}\mathbf{G}\mathbf{S}
> &= \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\,\mathbf{Q}\mathbf{\Lambda}^+{\mathbf{Q}}^{\top}\,\mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}
> && \text{(definitions of } \mathbf{S} \text{ and } \mathbf{G} \text{)}
> \\
> &= \mathbf{Q}\mathbf{\Lambda}\mathbf{\Lambda}^+\mathbf{\Lambda}{\mathbf{Q}}^{\top}
> && ({\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}, \text{ twice})
> \\
> &= \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}
> && (\mathbf{\Lambda}\mathbf{\Lambda}^+\mathbf{\Lambda} = \mathbf{\Lambda})
> \\
> &= \mathbf{S},
> && \text{(definition of } \mathbf{S} \text{)}
> \end{aligned}$$
>
> and likewise
>
> $$\begin{aligned}
> \mathbf{G}\mathbf{S}\mathbf{G}
> &= \mathbf{Q}\mathbf{\Lambda}^+\mathbf{\Lambda}\mathbf{\Lambda}^+{\mathbf{Q}}^{\top}
> && ({\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}, \text{ twice})
> \\
> &= \mathbf{Q}\mathbf{\Lambda}^+{\mathbf{Q}}^{\top}
> && (\mathbf{\Lambda}^+\mathbf{\Lambda}\mathbf{\Lambda}^+ = \mathbf{\Lambda}^+)
> \\
> &= \mathbf{G}.
> && \text{(definition of } \mathbf{G} \text{)}
> \end{aligned}$$
>
> **Conditions 3 and 4.**
>
> $$\begin{aligned}
> \mathbf{S}\mathbf{G}
> &= \mathbf{Q}\mathbf{\Lambda}\mathbf{\Lambda}^+{\mathbf{Q}}^{\top}
> && ({\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I})
> \\
> &= {\mathopen{}\left(\mathbf{Q}\mathbf{\Lambda}\mathbf{\Lambda}^+{\mathbf{Q}}^{\top}\right)\mathclose{}}^{\top}
> && (\mathbf{\Lambda}\mathbf{\Lambda}^+ \text{ is diagonal, so equals its transpose})
> \\
> &= {(\mathbf{S}\mathbf{G})}^{\top},
> && \text{(just shown, in the other order)}
> \end{aligned}$$
>
> and the same steps with $\mathbf{\Lambda}^+\mathbf{\Lambda}$ in place of $\mathbf{\Lambda}\mathbf{\Lambda}^+$ give $\mathbf{G}\mathbf{S} = {(\mathbf{G}\mathbf{S})}^{\top}$.

> **NOTE:**
>
> **Example 10 (The Moore-Penrose inverse of a rank-one symmetric matrix)** For the [symmetric matrix](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) $\mathbf{S} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$, an [eigendecomposition](linear-algebra-decompositions.llms.md#def-eigendecomposition) is
>
> $$\mathbf{S}
> = \underbrace{\frac{1}{\sqrt{2}}\begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}}_{\mathbf{Q}}
>   \underbrace{\begin{bmatrix} 2 & 0 \\ 0 & 0 \end{bmatrix}}_{\mathbf{\Lambda}}
>   {\mathbf{Q}}^{\top}.$$
>
> Inverting only the nonzero [eigenvalue](linear-algebra-decompositions.llms.md#def-eigenvalue) gives $\mathbf{\Lambda}^+ = \begin{bmatrix} 1/2 & 0 \\ 0 & 0 \end{bmatrix}$, so
>
> $$\begin{aligned}
> \mathbf{S}^+
> &= \mathbf{Q}\mathbf{\Lambda}^+{\mathbf{Q}}^{\top}
> && \text{(}\href{#thm-moore-penrose-eigendecomposition}{\text{Theorem~8}}\text{)}
> \\
> &= \frac{1}{2}\cdot\frac{1}{2}\begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}
> && \text{(only the first column of } \mathbf{Q} \text{ contributes)}
> \\
> &= \frac{1}{4}\begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}.
> \end{aligned}$$
>
> Condition 1 of [Definition 2](#def-moore-penrose) holds: $\mathbf{S}\mathbf{S}^+ = \frac{1}{2}\begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$, and multiplying by $\mathbf{S}$ again gives $\mathbf{S}$. An [inverse](linear-algebra-special-matrices.llms.md#def-matrix-inverse) of $\mathbf{S}$ itself does not exist, because $\mathbf{S}$ has a zero eigenvalue.

> **NOTE:**
>
> **Theorem 9 (The Moore-Penrose inverse of a Gram matrix)** For every $m \times n$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$,
>
> $$({\mathbf{A}}^{\top}\mathbf{A})^+ = \mathbf{A}^+\,{(\mathbf{A}^+)}^{\top}.$$

> **NOTE:**
>
> *Proof*. Let $\mathbf{M} = {\mathbf{A}}^{\top}\mathbf{A}$ and $\mathbf{G} = \mathbf{A}^+\,{(\mathbf{A}^+)}^{\top}$. By [Theorem 5](#thm-moore-penrose-unique), it is enough to show that $\mathbf{G}$ satisfies the four conditions of [Definition 2](#def-moore-penrose) for $\mathbf{M}$.
>
> **Two identities.** Conditions 3 and 4 for $\mathbf{A}^+$ say that $\mathbf{A}\mathbf{A}^+$ and $\mathbf{A}^+\mathbf{A}$ are [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix). Using condition 1 for $\mathbf{A}^+$,
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top}\,\mathbf{A}\mathbf{A}^+
> &= {\mathbf{A}}^{\top}\,{(\mathbf{A}\mathbf{A}^+)}^{\top}
> && \text{(condition 3 for } \mathbf{A}^+ \text{)}
> \\
> &= {(\mathbf{A}\mathbf{A}^+\mathbf{A})}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{A}}^{\top}.
> && \text{(condition 1 for } \mathbf{A}^+ \text{)}
> \end{aligned}$$
>
> So
>
> $$\begin{aligned}
> \mathbf{M}\mathbf{G}
> &= {\mathbf{A}}^{\top}\,\mathbf{A}\mathbf{A}^+\,{(\mathbf{A}^+)}^{\top}
> && \text{(definitions of } \mathbf{M} \text{ and } \mathbf{G} \text{)}
> \\
> &= {\mathbf{A}}^{\top}\,{(\mathbf{A}^+)}^{\top}
> && ({\mathbf{A}}^{\top}\,\mathbf{A}\mathbf{A}^+ = {\mathbf{A}}^{\top})
> \\
> &= {(\mathbf{A}^+\mathbf{A})}^{\top},
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> which is $\mathbf{A}^+\mathbf{A}$ by condition 4 for $\mathbf{A}^+$. Hence $\mathbf{M}\mathbf{G} = \mathbf{A}^+\mathbf{A}$, and it is symmetric, which is condition 3 for $\mathbf{G}$.
>
> For the other order,
>
> $$\begin{aligned}
> \mathbf{G}\mathbf{M}
> &= \mathbf{A}^+\,{(\mathbf{A}^+)}^{\top}\,{\mathbf{A}}^{\top}\,\mathbf{A}
> && \text{(definitions of } \mathbf{G} \text{ and } \mathbf{M} \text{)}
> \\
> &= \mathbf{A}^+\,{(\mathbf{A}\mathbf{A}^+)}^{\top}\,\mathbf{A}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A}^+\mathbf{A}\mathbf{A}^+\mathbf{A}
> && \text{(condition 3 for } \mathbf{A}^+ \text{)}
> \\
> &= \mathbf{A}^+\mathbf{A},
> && \text{(condition 1 for } \mathbf{A}^+ \text{)}
> \end{aligned}$$
>
> so $\mathbf{G}\mathbf{M} = \mathbf{A}^+\mathbf{A}$ is symmetric, which is condition 4 for $\mathbf{G}$.
>
> **Conditions 1 and 2.**
>
> $$\begin{aligned}
> \mathbf{M}\mathbf{G}\mathbf{M}
> &= \mathbf{A}^+\mathbf{A}\,{\mathbf{A}}^{\top}\mathbf{A}
> && (\mathbf{M}\mathbf{G} = \mathbf{A}^+\mathbf{A})
> \\
> &= {(\mathbf{A}^+\mathbf{A})}^{\top}\,{\mathbf{A}}^{\top}\mathbf{A}
> && \text{(condition 4 for } \mathbf{A}^+ \text{)}
> \\
> &= {(\mathbf{A}\mathbf{A}^+\mathbf{A})}^{\top}\,\mathbf{A}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{A}}^{\top}\mathbf{A}
> && \text{(condition 1 for } \mathbf{A}^+ \text{)}
> \\
> &= \mathbf{M},
> && \text{(definition of } \mathbf{M} \text{)}
> \\
> \mathbf{G}\mathbf{M}\mathbf{G}
> &= \mathbf{A}^+\mathbf{A}\,\mathbf{A}^+\,{(\mathbf{A}^+)}^{\top}
> && (\mathbf{G}\mathbf{M} = \mathbf{A}^+\mathbf{A})
> \\
> &= \mathbf{A}^+\,{(\mathbf{A}^+)}^{\top}
> && \text{(condition 2 for } \mathbf{A}^+ \text{)}
> \\
> &= \mathbf{G}.
> && \text{(definition of } \mathbf{G} \text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 11 (The Moore-Penrose inverse of the Gram matrix of a column of ones)** For $\mathbf{A} = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$, the [Gram matrix](linear-algebra-column-null-space.llms.md#def-gram-matrix) is ${\mathbf{A}}^{\top}\mathbf{A} = \begin{bmatrix} 2 \end{bmatrix}$, so $({\mathbf{A}}^{\top}\mathbf{A})^+ = \begin{bmatrix} 1/2 \end{bmatrix}$. By [Theorem 7](#thm-moore-penrose-full-rank), $\mathbf{A}^+ = {\mathopen{}\left(({\mathbf{A}}^{\top}\mathbf{A})\right)\mathclose{}}^{-1}\,{\mathbf{A}}^{\top} = \begin{bmatrix} 1/2 & 1/2 \end{bmatrix}$. Then
>
> $$\begin{aligned}
> \mathbf{A}^+\,{(\mathbf{A}^+)}^{\top}
> &= \begin{bmatrix} 1/2 & 1/2 \end{bmatrix}\begin{bmatrix} 1/2 \\ 1/2 \end{bmatrix}
> \\
> &= \frac{1}{4} + \frac{1}{4}
> \\
> &= \frac{1}{2},
> \end{aligned}$$
>
> which is $({\mathbf{A}}^{\top}\mathbf{A})^+$, as [Theorem 9](#thm-moore-penrose-gram) states.

> **NOTE:**
>
> **Corollary 1 (The Moore-Penrose inverse from the Gram matrix)** For every $m \times n$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$,
>
> $$\mathbf{A}^+ = ({\mathbf{A}}^{\top}\mathbf{A})^+\,{\mathbf{A}}^{\top}.$$

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> ({\mathbf{A}}^{\top}\mathbf{A})^+\,{\mathbf{A}}^{\top}
> &= \mathbf{A}^+\,{(\mathbf{A}^+)}^{\top}\,{\mathbf{A}}^{\top}
> && \text{(}\href{#thm-moore-penrose-gram}{\text{Theorem~9}}\text{)}
> \\
> &= \mathbf{A}^+\,{(\mathbf{A}\mathbf{A}^+)}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A}^+\mathbf{A}\mathbf{A}^+
> && \text{(condition 3 of }\href{#def-moore-penrose}{\text{Definition~2}}\text{)}
> \\
> &= \mathbf{A}^+.
> && \text{(condition 2 of }\href{#def-moore-penrose}{\text{Definition~2}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 12 (Recovering the Moore-Penrose inverse of a column of ones)** For $\mathbf{A} = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$, [Example 11](#exm-moore-penrose-gram) found $({\mathbf{A}}^{\top}\mathbf{A})^+ = \begin{bmatrix} 1/2 \end{bmatrix}$. Then
>
> $$\begin{aligned}
> ({\mathbf{A}}^{\top}\mathbf{A})^+\,{\mathbf{A}}^{\top}
> &= \begin{bmatrix} 1/2 \end{bmatrix}\begin{bmatrix} 1 & 1 \end{bmatrix}
> \\
> &= \begin{bmatrix} 1/2 & 1/2 \end{bmatrix},
> \end{aligned}$$
>
> which is $\mathbf{A}^+$, as [Corollary 1](#cor-moore-penrose-gram) states.

> **NOTE:**
>
> **Definition 3 (Consistent linear system)** A linear system ([Definition 9 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-linear-system)) $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, with $\mathbf{A}$ an $m \times n$ matrix and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$, is **consistent** [\[4\]](#ref-wikipedia_consistent_and_inconsistent_equations) if it has at least one solution $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^n$, and **inconsistent** otherwise.

> **NOTE:**
>
> **Example 13 (A consistent system and an inconsistent one)** With $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$, $\mathbf{A}\,(x_1, x_2) = (x_1, 0)$ ([Definition 8 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matvec-mult)).
>
> - $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (2, 0)$ is consistent: $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (2, 0)$ is a solution.
> - $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (2, 1)$ is inconsistent: the second entry of $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is always $0$, never $1$.

> **NOTE:**
>
> **Theorem 10 (When a linear system has a solution)** Let $\mathbf{A}$ be $m \times n$, let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$, and let $\mathbf{G}$ be any generalized inverse of $\mathbf{A}$ ([Definition 1](#def-generalized-inverse)). The following statements are equivalent:
>
> 1.  $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is consistent ([Definition 3](#def-consistent-system));
> 2.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathcal{C}(\mathbf{A})$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space));
> 3.  $\mathbf{A} \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$;
> 4.  $\operatorname{rank}\mathopen{}\left(\begin{bmatrix} \mathbf{A} & \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \end{bmatrix}\right)\mathclose{} = \operatorname{rank}(\mathbf{A})$, where $\begin{bmatrix} \mathbf{A} & \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \end{bmatrix}$ is the $m \times (n + 1)$ [matrix](linear-algebra-matrices.llms.md#def-matrix) whose last column is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> *Proof*. **1 and 2 are equivalent.** Statement 1 says $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Definition 3](#def-consistent-system)), and $\mathcal{C}(\mathbf{A})$ is the set of vectors $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is in it exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.
>
> **1 implies 3.** By [Theorem 3](#thm-generalized-inverse-solves), $\mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is a solution, so $\mathbf{A}\,(\mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, which is statement 3 ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc)).
>
> **3 implies 1.** If $\mathbf{A} \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is a solution, since $\mathbf{A}\,(\mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}) = (\mathbf{A} \mathbf{G})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc)).
>
> **2 and 4 are equivalent.** Every column of $\mathbf{A}$ is a column of $\begin{bmatrix} \mathbf{A} & \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \end{bmatrix}$, so $\mathcal{C}(\mathbf{A}) \subseteq \mathcal{C}\mathopen{}\left(\begin{bmatrix} \mathbf{A} & \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \end{bmatrix}\right)\mathclose{}$.
>
> - If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathcal{C}(\mathbf{A})$, every combination of the columns of $\begin{bmatrix} \mathbf{A} & \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \end{bmatrix}$ is a combination of the columns of $\mathbf{A}$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)), so the two column spaces ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)) coincide and their [ranks](linear-algebra-subspaces.llms.md#def-rank) agree ([Theorem 1 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-dim)).
> - If the ranks agree, the two column spaces have the same [dimension](linear-algebra-bases.llms.md#def-dimension) ([Theorem 1 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-dim)), so they coincide ([Theorem 6 in Bases and Dimension](linear-algebra-bases.llms.md#thm-subspace-equal-dim)), and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathcal{C}\mathopen{}\left(\begin{bmatrix} \mathbf{A} & \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \end{bmatrix}\right)\mathclose{} = \mathcal{C}(\mathbf{A})$.

> **NOTE:**
>
> **Example 14 (Testing consistency with a generalized inverse)** For $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ and the generalized inverse $\mathbf{G} = \begin{bmatrix} 1 & 5 \\ 7 & 0 \end{bmatrix}$, $\mathbf{A} \mathbf{G} = \begin{bmatrix} 1 & 5 \\ 0 & 0 \end{bmatrix}$.
>
> - $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (2, 0)$:
>
>   $$\begin{aligned}
>   \mathbf{A} \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} &= (2, 0) \\
>   &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}},
>   \end{aligned}$$
>
>   so the system is consistent.
>
> - $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (2, 1)$: $\mathbf{A} \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (7, 0) \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, so it is not, as [Example 4](#exm-generalized-inverse-solves) found directly.
>
> Item 4 agrees. $\mathbf{A}$ has [rank](linear-algebra-subspaces.llms.md#def-rank) $1$. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (2, 0)$, $\begin{bmatrix} \mathbf{A} & \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \end{bmatrix} = \begin{bmatrix} 1 & 0 & 2 \\ 0 & 0 & 0 \end{bmatrix}$ also has rank $1$. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (2, 1)$, $\begin{bmatrix} \mathbf{A} & \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \end{bmatrix} = \begin{bmatrix} 1 & 0 & 2 \\ 0 & 0 & 1 \end{bmatrix}$ has rank $2$, because $(1, 0)$ and $(2, 1)$ are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent).

> **NOTE:**
>
> **Theorem 11 (All solutions of a linear system)** Let $\mathbf{A}$ be $m \times n$ with a generalized inverse $\mathbf{G}$ ([Definition 1](#def-generalized-inverse)).
>
> 1.  $\mathcal{N}(\mathbf{A}) = \mathcal{C}(\mathbf{I}_n - \mathbf{G} \mathbf{A})$: $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ solves $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$ exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (\mathbf{I}_n - \mathbf{G} \mathbf{A})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}} \in \mathbb{R}^n$.
> 2.  If $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is consistent ([Definition 3](#def-consistent-system)), then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a solution exactly when $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} + (\mathbf{I}_n - \mathbf{G} \mathbf{A})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}
>     \quad \text{for some } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}} \in \mathbb{R}^n:$$ one particular solution plus a vector of $\mathcal{N}(\mathbf{A})$.

> **NOTE:**
>
> *Proof*. **Part 1.** First,
>
> $$\begin{aligned}
> \mathbf{A}\,(\mathbf{I}_n - \mathbf{G} \mathbf{A})
> &= \mathbf{A} \mathbf{I}_n - \mathbf{A}\,(\mathbf{G} \mathbf{A})
> && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~1}}\text{)}
> \\
> &= \mathbf{A} \mathbf{I}_n - \mathbf{A} \mathbf{G} \mathbf{A}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A} - \mathbf{A} \mathbf{G} \mathbf{A}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A} - \mathbf{A}
> && \text{(}\href{#def-generalized-inverse}{\text{Definition~1}}\text{)}
> \\
> &= \mathbf{0}_{m \times n},
> && \text{(arithmetic)}
> \end{aligned}$$
>
> so $\mathbf{A}\,(\mathbf{I}_n - \mathbf{G} \mathbf{A})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$ for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}$ ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc)), and $\mathcal{C}(\mathbf{I}_n - \mathbf{G} \mathbf{A}) \subseteq \mathcal{N}(\mathbf{A})$. Conversely, if $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$, then
>
> $$\begin{aligned}
> (\mathbf{I}_n - \mathbf{G} \mathbf{A})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \mathbf{I}_n \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - (\mathbf{G} \mathbf{A})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~1}}\text{, with } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \text{ as the last factor)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - (\mathbf{G} \mathbf{A})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathbf{G}\,(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathbf{G}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m
> && \text{(} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m \text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}},
> && \text{(} \mathbf{G}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n \text{)}
> \end{aligned}$$
>
> so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is in $\mathcal{C}(\mathbf{I}_n - \mathbf{G} \mathbf{A})$, with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.
>
> **Part 2.** $\mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is a solution ([Theorem 3](#thm-generalized-inverse-solves)). For any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$,
>
> $$\begin{aligned}
> \mathbf{A}\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}})
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathbf{A}\,(\mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}})
> && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)}
> \\
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathbf{A} \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}},
> && \text{(}\href{#thm-consistency}{\text{Theorem~10}}\text{, statement 3)}
> \end{aligned}$$
>
> so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ solves $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathcal{N}(\mathbf{A})$, that is, by part 1, exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (\mathbf{I}_n - \mathbf{G} \mathbf{A})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}$.

> **NOTE:**
>
> **Example 15 (All solutions of a consistent system)** For $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$, $\mathbf{G} = \begin{bmatrix} 1 & 5 \\ 7 & 0 \end{bmatrix}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (2, 0)$: $\mathbf{G} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (2, 14)$, $\mathbf{G} \mathbf{A} = \begin{bmatrix} 1 & 0 \\ 7 & 0 \end{bmatrix}$, and $\mathbf{I}_2 - \mathbf{G} \mathbf{A} = \begin{bmatrix} 0 & 0 \\ -7 & 1 \end{bmatrix}$, so
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (2, 14) + (0, -7 q_1 + q_2), \qquad q_1, q_2 \in \mathbb{R}.$$
>
> Since $-7 q_1 + q_2$ can be any number, the solutions are exactly the vectors $(2, t)$, $t \in \mathbb{R}$, which is what
>
> $$\begin{aligned}
> \mathbf{A}\,(x_1, x_2) &= (x_1, 0) \\
> &= (2, 0)
> \end{aligned}$$
>
> says directly.

> **NOTE:**
>
> **Corollary 2 (Solvable for every right-hand side, and solvable uniquely)** Let $\mathbf{A}$ be $m \times n$.
>
> 1.  $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is consistent for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$ exactly when $\operatorname{rank}(\mathbf{A}) = m$.
> 2.  A consistent system $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has exactly one solution exactly when $\operatorname{rank}(\mathbf{A}) = n$.

> **NOTE:**
>
> *Proof*. **Part 1.** By [Theorem 10](#thm-consistency), the system is consistent for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ exactly when $\mathcal{C}(\mathbf{A}) = \mathbb{R}^m$. $\mathcal{C}(\mathbf{A})$ is a subspace of $\mathbb{R}^m$ ([Theorem 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-column-space-span)) with dimension $\operatorname{rank}(\mathbf{A})$ ([Theorem 1 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-dim)), and $\dim(\mathbb{R}^m) = m$ ([Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension)). If the dimension is $m$, then $\mathcal{C}(\mathbf{A}) = \mathbb{R}^m$ ([Theorem 6 in Bases and Dimension](linear-algebra-bases.llms.md#thm-subspace-equal-dim)); if $\mathcal{C}(\mathbf{A}) = \mathbb{R}^m$, the dimension is $m$.
>
> **Part 2.** By [Theorem 11](#thm-solution-set), the solutions are a particular solution plus the vectors of $\mathcal{N}(\mathbf{A})$, so there is exactly one solution exactly when $\mathcal{N}(\mathbf{A}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n\right\}\mathclose{}$, that is, when $\operatorname{nullity}(\mathbf{A}) = 0$ (a subspace of dimension $0$ has the empty list as a basis, whose span is $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, by [Definition 4 in Bases and Dimension](linear-algebra-bases.llms.md#def-dimension) and [Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span); and $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ has dimension $0$, by [Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension)). By [Theorem 2 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-nullity), that is when $\operatorname{rank}(\mathbf{A}) = n$.

> **NOTE:**
>
> **Example 16 (Three systems)**  
>
> - The $2 \times 3$ matrix $\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}$ of [Example 6 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#exm-rank-bound) has rank $2 = m$, so every system with it is consistent, but $2 < 3 = n$, so the solutions are never unique.
>
> - The $3 \times 2$ matrix $\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}$ of [Example 1 in Design Matrices and Projections](linear-algebra-projections.llms.md#exm-gram-invertible) has rank $2 = n$, so a consistent system has one solution, but $2 < 3 = m$, so some systems are inconsistent: $(1, 0, 0) \notin \mathcal{C}(\mathbf{X})$, because $a\,(1, 1, 1) + b\,(1, 2, 3)$ has equal differences between consecutive entries, and $(1, 0, 0)$ does not.
>
> - An invertible $p \times p$ matrix $\mathbf{A}$ has rank $p$: if $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ then
>
>   $$\begin{aligned}
>   \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= \mathbf{A}^{-1} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \\
>   &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}},
>   \end{aligned}$$
>
>   so its nullity is $0$ and its rank is $p$ ([Theorem 2 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-nullity)). So every system with it is consistent (part 1, with $p = m$) and has exactly one solution (part 2, with $p = n$), namely $\mathbf{A}^{-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, since $\mathbf{A}\,(\mathbf{A}^{-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> **Theorem 12 (The projection onto a column space, with any generalized inverse)** Let $\mathbf{X}$ be an $n \times p$ matrix of any rank, and let $\mathbf{G}$ be any generalized inverse of ${\mathbf{X}}^{\top} \mathbf{X}$ ([Definition 1](#def-generalized-inverse)). Then for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^n$, $\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is the orthogonal projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{C}(\mathbf{X})$ ([Definition 3 in Design Matrices and Projections](linear-algebra-projections.llms.md#def-orthogonal-projection)). So the matrix $\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top}$ is the same for every choice of $\mathbf{G}$, and when $\operatorname{rank}(\mathbf{X}) = p$ it is the hat matrix $\mathbf{H}$ ([Definition 2 in Design Matrices and Projections](linear-algebra-projections.llms.md#def-hat-matrix)).

> **NOTE:**
>
> *Proof*. ${\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is in $\mathcal{C}({\mathbf{X}}^{\top} \mathbf{X})$. $\mathcal{C}({\mathbf{X}}^{\top} \mathbf{X}) \subseteq \mathcal{C}({\mathbf{X}}^{\top})$, since $({\mathbf{X}}^{\top} \mathbf{X})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} = {\mathbf{X}}^{\top}\,(\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}})$ ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc)). Both are subspaces of $\mathbb{R}^p$ ([Theorem 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-column-space-span)) with the same dimension: $\operatorname{rank}({\mathbf{X}}^{\top} \mathbf{X}) = \operatorname{rank}({\mathbf{X}}^{\top})$ ([Theorem 4 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-transpose), [Theorem 1 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-dim)). So $\mathcal{C}({\mathbf{X}}^{\top} \mathbf{X}) = \mathcal{C}({\mathbf{X}}^{\top})$ ([Theorem 6 in Bases and Dimension](linear-algebra-bases.llms.md#thm-subspace-equal-dim)), and since ${\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathcal{C}({\mathbf{X}}^{\top})$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)), ${\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= {\mathbf{X}}^{\top} \mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} \in \mathbb{R}^p$.
>
> **The split.** Let
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} &= \mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\\
> &= \mathbf{X}\,(\mathbf{G} {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})
> \end{aligned}$$
>
> ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc)), which is in $\mathcal{C}(\mathbf{X})$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)). For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$,
>
> $$\begin{aligned}
> {\mathbf{X}}^{\top}\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}})
> &= {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- {\mathbf{X}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}
> && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)}
> \\
> &= {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- {\mathbf{X}}^{\top}\,(\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})
> && \text{(substitute } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \text{)}
> \\
> &= {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- ({\mathbf{X}}^{\top} \mathbf{X})\,\mathbf{G}\,({\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- ({\mathbf{X}}^{\top} \mathbf{X})\,\mathbf{G}\,({\mathbf{X}}^{\top} \mathbf{X})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}
> && \text{(first step)}
> \\
> &= {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathopen{}\left(({\mathbf{X}}^{\top} \mathbf{X})\,\mathbf{G}\,({\mathbf{X}}^{\top} \mathbf{X})\right)\mathclose{}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- ({\mathbf{X}}^{\top} \mathbf{X})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}
> && \text{(}\href{#def-generalized-inverse}{\text{Definition~1}}\text{)}
> \\
> &= {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> && \text{(first step)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p,
> && \text{(arithmetic)}
> \end{aligned}$$
>
> so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{N}({\mathbf{X}}^{\top}) = \mathcal{C}(\mathbf{X})^\perp$ ([Theorem 3 in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#thm-complement-null-space)). By the uniqueness in [Theorem 4 in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#thm-orthogonal-direct-sum), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is the orthogonal projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{C}(\mathbf{X})$.
>
> **Same matrix.** Every choice of $\mathbf{G}$ gives a matrix that projects every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{C}(\mathbf{X})$, so all choices give the same matrix ([Theorem 5 in Design Matrices and Projections](linear-algebra-projections.llms.md#thm-projection-matrix-projects), part 2). When $\operatorname{rank}(\mathbf{X}) = p$, $({\mathbf{X}}^{\top} \mathbf{X})^{-1}$ is one choice ([Theorem 1 in Design Matrices and Projections](linear-algebra-projections.llms.md#thm-gram-invertible), [Theorem 2](#thm-generalized-inverse-invertible)), and it gives $\mathbf{H}$.

> **NOTE:**
>
> **Example 17 (A design matrix with a repeated column)** Let $\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$, an intercept column entered twice, so $\operatorname{rank}(\mathbf{X}) = 1 < 2$ and ${\mathbf{X}}^{\top} \mathbf{X}= \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}$ is not invertible: its rank is $\operatorname{rank}(\mathbf{X}) = 1 < 2$ ([Theorem 4 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-transpose)), while an invertible $2 \times 2$ matrix has rank $2$ ([Example 16](#exm-solution-unique)). The matrix $\mathbf{G} = \begin{bmatrix} \frac{1}{2} & 0 \\ 0 & 0 \end{bmatrix}$ is a generalized inverse of it:
>
> $$\begin{aligned}
> ({\mathbf{X}}^{\top} \mathbf{X})\,\mathbf{G}\,({\mathbf{X}}^{\top} \mathbf{X})
> &= \begin{bmatrix} 1 & 0 \\ 1 & 0 \end{bmatrix} \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{, for the first product)}
> \\
> &= \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}.
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> Then
>
> $$\begin{aligned}
> \mathbf{X}\mathbf{G} {\mathbf{X}}^{\top}
> &= \begin{bmatrix} \frac{1}{2} & 0 \\ \frac{1}{2} & 0 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{, for } \mathbf{X}\mathbf{G} \text{)}
> \\
> &= \begin{bmatrix} \frac{1}{2} & \frac{1}{2} \\ \frac{1}{2} & \frac{1}{2} \end{bmatrix},
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> the hat matrix of the intercept-only model ([Example 2 in Design Matrices and Projections](linear-algebra-projections.llms.md#exm-hat-matrix)). Another generalized inverse, $\mathbf{G}' = \begin{bmatrix} 0 & 0 \\ 0 & \frac{1}{2} \end{bmatrix}$, which is one because $({\mathbf{X}}^{\top} \mathbf{X})\,\mathbf{G}' = \begin{bmatrix} 0 & 1 \\ 0 & 1 \end{bmatrix}$ and that times ${\mathbf{X}}^{\top} \mathbf{X}$ is again $\begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}$, gives $\mathbf{X}\mathbf{G}' = \begin{bmatrix} 0 & \frac{1}{2} \\ 0 & \frac{1}{2} \end{bmatrix}$ and the same $\mathbf{X}\mathbf{G}' {\mathbf{X}}^{\top} = \begin{bmatrix} \frac{1}{2} & \frac{1}{2} \\ \frac{1}{2} & \frac{1}{2} \end{bmatrix}$, as [Theorem 12](#thm-projector-generalized-inverse) says it must. Both project onto $\mathcal{C}(\mathbf{X}) = \operatorname{span}\mathopen{}\left\{(1, 1)\right\}\mathclose{}$, the column space of the intercept-only design.

# Definitions on this page

- [Definition 1 (Generalized inverse)](#def-generalized-inverse)
- [Definition 2 (Moore-Penrose inverse)](#def-moore-penrose)
- [Definition 3 (Consistent linear system)](#def-consistent-system)

Back to top

## References

\[1\]

H. Zhou, “Linear equations and matrix inverses.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/07-matinv/07-matinv.html>

\[2\]

Wikipedia contributors, “Generalized inverse — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Generalized_inverse>

\[3\]

Wikipedia contributors, “Moore–penrose inverse — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse>

\[4\]

Wikipedia contributors, “Consistent and inconsistent equations — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Consistent_and_inconsistent_equations>
