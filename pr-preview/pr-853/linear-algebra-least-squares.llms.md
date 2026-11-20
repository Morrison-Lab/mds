# Solving Linear Systems and Least Squares

Code

Published

Last modified: 2026-11-19 23:44:22 (PST)

# 1 Solving linear systems and least squares

> **NOTE:**
>
> This section is adapted from Zhou [\[1\]](#ref-zhou2024matinv) and Zhou [\[2\]](#ref-zhou2024ls), used under the MIT License (see the license text in [Section  in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The first source states that every invertible matrix has an LU factorization; that is false without reordering rows (the $2 \times 2$ row swap $\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$ has none), so this section states only how an LU factorization, when one exists, solves a system. The least squares results are proved here from the closest-point theorem ([Theorem 3 in Design Matrices and Projections](linear-algebra-projections.llms.md#thm-closest-point)) rather than by differentiating, and the QR factorization is derived from Gram-Schmidt ([Theorem 4 in Orthonormal Bases, Outer Products and Hilbert Spaces](linear-algebra-orthonormal-bases.llms.md#thm-gram-schmidt)). These parts of the source are not part of this section:
>
> - the operation counts for the triangular solves, LU and QR
> - solving a system by inverting a matrix through its QR factorization, and the comparison of that with solving it directly
> - the pivoted factorization $\mathbf{P}\mathbf{A} = \mathbf{L}\mathbf{U}$, which [Example 10](#exm-not-lu) only touches

> **NOTE:**
>
> **Definition 1 (Upper triangular matrix)** A square matrix $\mathbf{U}$ is **upper triangular** [\[3\]](#ref-wikipedia_triangular_matrix) if every entry below the diagonal is $0$: $u_{ij} = 0$ whenever $i > j$.

> **NOTE:**
>
> **Definition 2 (Lower triangular matrix)** A square matrix $\mathbf{L}$ is **lower triangular** if every entry above the diagonal is $0$: $\ell_{ij} = 0$ whenever $i < j$.

> **NOTE:**
>
> **Definition 3 (Unit lower triangular matrix)** A lower triangular matrix ([Definition 2](#def-lower-triangular-matrix)) whose diagonal entries are all $1$ is **unit lower triangular**.

> **NOTE:**
>
> **Example 1 (Triangular and not)**  
>
> - $\begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix}$ is upper triangular: its entries below the diagonal, in positions $(2, 1)$, $(3, 1)$ and $(3, 2)$, are $0$.
> - $\begin{bmatrix} 1 & 0 \\ 4 & 1 \end{bmatrix}$ is unit lower triangular.
> - A diagonal matrix ([Definition 4 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-diagonal-matrix)) is both upper and lower triangular.
> - $\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$ is neither: its $(2, 1)$ entry is not $0$, and neither is its $(1, 2)$ entry.

> **NOTE:**
>
> **Theorem 1 (Solving a triangular system by substitution)** Let $\mathbf{U}$ be an $n \times n$ upper triangular matrix ([Definition 1](#def-triangular-matrix)) whose diagonal entries $u_{11}, \ldots, u_{nn}$ are all nonzero. For every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^n$, the system $\mathbf{U} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has exactly one solution, given for $i = n, n - 1, \ldots, 1$ in turn by
>
> $$x_i = \frac{1}{u_{ii}} \mathopen{}\left(b_i - \sum_{j=i+1}^{n} u_{ij}\,x_j\right)\mathclose{}$$
>
> (**back substitution**). Likewise, if $\mathbf{L}$ is lower triangular with nonzero diagonal, $\mathbf{L} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has exactly one solution, given for $i = 1, \ldots, n$ by $y_i = \frac{1}{\ell_{ii}} \mathopen{}\left(b_i - \sum_{j=1}^{i-1} \ell_{ij}\,y_j\right)\mathclose{}$ (**forward substitution**).

> **NOTE:**
>
> *Proof*. Row $i$ of $\mathbf{U} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ reads
>
> $$\begin{aligned}
> b_i
> &= \sum_{j=1}^nu_{ij}\,x_j
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\
> &= \sum_{j=i}^{n} u_{ij}\,x_j
> && \text{(} u_{ij} = 0 \text{ for } j < i \text{)}
> \\
> &= u_{ii}\,x_i + \sum_{j=i+1}^{n} u_{ij}\,x_j.
> && \text{(split off the } j = i \text{ term)}
> \end{aligned}$$
>
> This equation is equivalent to each of
>
> $$\begin{aligned}
> u_{ii}\,x_i &= b_i - \sum_{j=i+1}^{n} u_{ij}\,x_j
> && \text{(subtract the sum from both sides)}
> \\
> x_i &= \frac{1}{u_{ii}} \mathopen{}\left(b_i - \sum_{j=i+1}^{n} u_{ij}\,x_j\right)\mathclose{}.
> && \text{(divide by } u_{ii} \ne 0 \text{)}
> \end{aligned}$$
>
> Row $n$ involves only $x_n$, so it fixes $x_n$; once $x_{i+1}, \ldots, x_n$ are fixed, row $i$ fixes $x_i$. So the rows, taken from the last to the first, hold exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is the vector the formula builds: there is one solution, and only one. For $\mathbf{L}$, row $i$ reads $\sum_{j=1}^{i-1} \ell_{ij}\,y_j + \ell_{ii}\,y_i = b_i$, and the same argument runs from the first row to the last.

> **NOTE:**
>
> **Example 2 (Back substitution on a** $3 \times 3$ system) Solve $\begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> = \begin{bmatrix} 8 \\ 1 \\ 1 \end{bmatrix}$:
>
> 1.  $$\begin{aligned}
>     x_3 &= \frac{1}{-1} \cdot 1 \\
>     &= -1;
>     \end{aligned}$$
>
> 2.  $$\begin{aligned}
>     x_2 &= \frac{1}{1/2} \mathopen{}\left(1 - \tfrac{1}{2} \cdot(-1)\right)\mathclose{} \\
>     &= 2 \cdot\tfrac{3}{2} \\
>     &= 3;
>     \end{aligned}$$
>
> 3.  $$\begin{aligned}
>     x_1 &= \frac{1}{2} \mathopen{}\left(8 - 1 \cdot 3 - (-1)(-1)\right)\mathclose{} \\
>     &= \frac{1}{2} \cdot 4 \\
>     &= 2.
>     \end{aligned}$$
>
> So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (2, 3, -1)$. Without a nonzero diagonal the method fails: $\begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (1, 1)$ has no solution, since its second row reads $0 = 1$.

> **NOTE:**
>
> **Theorem 2 (QR factorization)** Let $\mathbf{A}$ be an $m \times n$ matrix with $\operatorname{rank}(\mathbf{A}) = n$. Then
>
> $$\underbrace{\mathbf{A}}_{m \times n} = \underbrace{\mathbf{Q}}_{m \times n}\,\underbrace{\mathbf{R}}_{n \times n},$$
>
> where the columns of $\mathbf{Q}$ are orthonormal ([Definition 28 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)) and $\mathbf{R}$ is upper triangular ([Definition 1](#def-triangular-matrix)) with positive diagonal entries.

> **NOTE:**
>
> *Proof*. The $n$ columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n$ of $\mathbf{A}$ are linearly independent ([Definition 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-full-column-rank)), so the Gram-Schmidt process ([Definition 2 in Orthonormal Bases, Outer Products and Hilbert Spaces](linear-algebra-orthonormal-bases.llms.md#def-gram-schmidt)) runs all $n$ steps and gives orthonormal $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_n$ ([Theorem 4 in Orthonormal Bases, Outer Products and Hilbert Spaces](linear-algebra-orthonormal-bases.llms.md#thm-gram-schmidt), parts 1 and 3); let $\mathbf{Q}$ have these columns. At step $i$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and rearranging the orthogonalize step,
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i + \sum_{j=1}^{i-1} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j
> && \text{(add the sum to both sides of the orthogonalize step)}
> \\
> &= \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i\right\rVert\mathclose{}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i + \sum_{j=1}^{i-1} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j.
> && \text{(normalize step: } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i = \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i\right\rVert\mathclose{}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \text{)}
> \end{aligned}$$
>
> Let $\mathbf{R}$ be the $n \times n$ matrix with $r_{ji} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i$ for $j < i$, $r_{ii} = \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i\right\rVert\mathclose{} > 0$, and $r_{ji} = 0$ for $j > i$; it is upper triangular with positive diagonal. Column $i$ of $\mathbf{Q} \mathbf{R}$ is $\mathbf{Q}$ times column $i$ of $\mathbf{R}$ ([Definition 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult)), and
>
> $$\begin{aligned}
> \mathbf{Q}\,(r_{1i}, \ldots, r_{ni})
> &= \sum_{j=1}^nr_{ji}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j
> && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-columns}{\text{Theorem~3 in Subspaces and Rank}}\text{)}
> \\
> &= \sum_{j=1}^{i} r_{ji}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j
> && \text{(} r_{ji} = 0 \text{ for } j > i \text{)}
> \\
> &= r_{ii}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i + \sum_{j=1}^{i-1} r_{ji}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j
> && \text{(split off the } j = i \text{ term)}
> \\
> &= \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i\right\rVert\mathclose{}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i + \sum_{j=1}^{i-1} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j
> && \text{(the entries of } \mathbf{R} \text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i.
> && \text{(the display)}
> \end{aligned}$$
>
> So $\mathbf{Q} \mathbf{R} = \mathbf{A}$.

> **NOTE:**
>
> **Example 3 (A QR factorization from Gram-Schmidt)** For $\mathbf{A}$ with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = (1, 1, 0)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = (1, 0, 1)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_3 = (0, 1, 1)$, [Example 6 in Orthonormal Bases, Outer Products and Hilbert Spaces](linear-algebra-orthonormal-bases.llms.md#exm-gram-schmidt) and [Example 8 in Orthonormal Bases, Outer Products and Hilbert Spaces](linear-algebra-orthonormal-bases.llms.md#exm-thm-gram-schmidt) found $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 = \tfrac{1}{\sqrt{2}}\,(1, 1, 0)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 = \tfrac{1}{\sqrt{6}}\,(1, -1, 2)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3 = \tfrac{1}{\sqrt{3}}\,(-1, 1, 1)$, with $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_1\right\rVert\mathclose{} = \sqrt{2}$, $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_2\right\rVert\mathclose{} = \sqrt{3/2}$, $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_3\right\rVert\mathclose{} = 2/\sqrt{3}$,
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_3 \\
> &= \tfrac{1}{\sqrt{2}}
> \end{aligned}$$
>
> and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_3 = \tfrac{1}{\sqrt{6}}$. So
>
> $$\mathbf{R} = \begin{bmatrix}
> \sqrt{2} & \tfrac{1}{\sqrt{2}} & \tfrac{1}{\sqrt{2}} \\
> 0 & \sqrt{3/2} & \tfrac{1}{\sqrt{6}} \\
> 0 & 0 & \tfrac{2}{\sqrt{3}}
> \end{bmatrix}.$$
>
> As a check on the second column,
>
> $$\begin{aligned}
> \tfrac{1}{\sqrt{2}}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 + \sqrt{3/2}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 &= \tfrac{1}{2}\,(1, 1, 0) + \tfrac{1}{2}\,(1, -1, 2) \\
> &= (1, 0, 1) \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2.
> \end{aligned}$$

> **NOTE:**
>
> **Definition 4 (Least squares solution)** Let $\mathbf{A}$ be $m \times n$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$. A **least squares solution** [\[4\]](#ref-wikipedia_least_squares) of $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is a vector $\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} \in \mathbb{R}^n$ such that
>
> $$\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}
> \quad \text{for every } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^n.$$

> **NOTE:**
>
> **Example 4 (Fitting a constant)** Let $\mathbf{A} = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (1, 3)$. The system $x\,(1, 1) = (1, 3)$ is inconsistent ([Definition 3 in Generalized Inverses and Linear Systems](linear-algebra-generalized-inverses.llms.md#def-consistent-system)): its first entry needs $x = 1$ and its second needs $x = 3$. For any number $x$,
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} x\right\rVert\mathclose{}^2 &= (1 - x)^2 + (3 - x)^2 \\
> &= 2\,(x - 2)^2 + 2,
> \end{aligned}$$
>
> which is smallest at $x = 2$, so $\hat{x} = 2$ is the least squares solution. The value $x = 1$ is not one: it gives $0 + 4 = 4 > 2$. The normal equations read $2x = 4$, and their solution is $x = 2$ too.

> **NOTE:**
>
> **Definition 5 (Normal equations)** For $\mathbf{A}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ as in [Definition 4](#def-least-squares), the equations ${\mathbf{A}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = {\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ are the **normal equations** [\[5\]](#ref-wikipedia_normal_equations).

> **NOTE:**
>
> **Theorem 3 (Least squares solutions solve the normal equations)** Let $\mathbf{A}$ be $m \times n$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$.
>
> 1.  $\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$ is a least squares solution ([Definition 4](#def-least-squares)) exactly when it solves the normal equations ${\mathbf{A}}^{\top} \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = {\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.
> 2.  The normal equations are consistent ([Definition 3 in Generalized Inverses and Linear Systems](linear-algebra-generalized-inverses.llms.md#def-consistent-system)).
> 3.  Every least squares solution gives the same fitted vector $\mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$: the orthogonal projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ onto $\mathcal{C}(\mathbf{A})$ ([Definition 3 in Design Matrices and Projections](linear-algebra-projections.llms.md#def-orthogonal-projection)).
> 4.  The least squares solution is unique exactly when $\operatorname{rank}(\mathbf{A}) = n$, and then $\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = ({\mathbf{A}}^{\top} \mathbf{A})^{-1} {\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> *Proof*. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ be the orthogonal projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ onto $\mathcal{C}(\mathbf{A})$. The vectors $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, as $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ranges over $\mathbb{R}^n$, are exactly the points of $\mathcal{C}(\mathbf{A})$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)). **Least squares solutions are the solutions of** $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$. If $\mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$, then for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{C}(\mathbf{A})$, so $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}\right\rVert\mathclose{} = \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}$ ([Theorem 3 in Design Matrices and Projections](linear-algebra-projections.llms.md#thm-closest-point)), and $\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$ is a least squares solution. Conversely, let $\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$ be a least squares solution. $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{C}(\mathbf{A})$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)), and
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}\right\rVert\mathclose{}
> &\le \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0\right\rVert\mathclose{}
> && \text{(}\href{#def-least-squares}{\text{Definition~4}}\text{)}
> \\
> &= \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right\rVert\mathclose{}
> && \text{(} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0 \text{)}
> \\
> &\le \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}\right\rVert\mathclose{},
> && \text{(}\href{linear-algebra-projections.qmd#thm-closest-point}{\text{Theorem~3 in Design Matrices and Projections}}\text{, with } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} \in \mathcal{C}(\mathbf{A}) \text{)}
> \end{aligned}$$
>
> so the last inequality is an equality, and the equality case of [Theorem 3 in Design Matrices and Projections](linear-algebra-projections.llms.md#thm-closest-point) gives $\mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$.
>
> **Parts 1 and 3.** $\mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ holds exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} \in \mathcal{C}(\mathbf{A})^\perp$: if $\mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{C}(\mathbf{A})^\perp$ ([Definition 3 in Design Matrices and Projections](linear-algebra-projections.llms.md#def-orthogonal-projection)); conversely, if $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} \in \mathcal{C}(\mathbf{A})^\perp$, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} + (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}})$ is a split into $\mathcal{C}(\mathbf{A})$ and $\mathcal{C}(\mathbf{A})^\perp$, so $\mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ by the uniqueness in [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum). And $\mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top})$ ([Theorem 7 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-complement-null-space)), where
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top}\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}})
> &= {\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - {\mathbf{A}}^{\top}\,(\mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}})
> && \text{(}\href{linear-algebra-generalized-inverses.qmd#thm-scalar-matmul}{\text{Theorem~1 in Generalized Inverses and Linear Systems}}\text{)}
> \\
> &= {\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - {\mathbf{A}}^{\top} \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}},
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n$ exactly when the normal equations hold.
>
> **Part 2.** The vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0$ above satisfies $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_0 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$, so it is a least squares solution, and it solves the normal equations by part 1.
>
> **Part 4.** The least squares solutions are exactly the solutions of $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$, a consistent system, so there is exactly one when $\operatorname{rank}(\mathbf{A}) = n$ and more than one otherwise ([Corollary 2 in Generalized Inverses and Linear Systems](linear-algebra-generalized-inverses.llms.md#cor-solution-unique)). When $\operatorname{rank}(\mathbf{A}) = n$, ${\mathbf{A}}^{\top} \mathbf{A}$ is invertible ([Theorem 1 in Design Matrices and Projections](linear-algebra-projections.llms.md#thm-gram-invertible)), and with $\mathbf{M} \stackrel{\text{def}}{=}{\mathbf{A}}^{\top} \mathbf{A}$,
>
> $$\begin{aligned}
> \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}
> &= \mathbf{I}_n\,\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= (\mathbf{M}^{-1} \mathbf{M})\,\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{M}^{-1}\,(\mathbf{M} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{M}^{-1}\,{\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}.
> && \text{(the normal equations)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 5 (A least squares line)** Fit $y = x_1 + x_2\,t$ to the points $(t, y) = (1, 1), (2, 2), (3, 2)$: $\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}$ (the $\mathbf{X}$ of [Example 1 in Design Matrices and Projections](linear-algebra-projections.llms.md#exm-gram-invertible)) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (1, 2, 2)$. $\mathbf{A}$ has rank $2$ ([Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank)), so the solution is unique (part 4). ${\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}$ has inverse $\frac{1}{6}\begin{bmatrix} 14 & -6 \\ -6 & 3 \end{bmatrix}$ ([Example 1 in Design Matrices and Projections](linear-algebra-projections.llms.md#exm-gram-invertible)), and
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} &= (1 + 2 + 2,\; 1 + 4 + 6) \\
> &= (5, 11),
> \end{aligned}$$
>
> so
>
> $$\begin{aligned}
> \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}
> &= \frac{1}{6} \mathopen{}\left(14 \cdot 5 - 6 \cdot 11,\; -6 \cdot 5 + 3 \cdot 11\right)\mathclose{} \\
> &= \frac{1}{6}\,(4, 3) \\
> &= \mathopen{}\left(\tfrac{2}{3}, \tfrac{1}{2}\right)\mathclose{}.
> \end{aligned}$$
>
> The fitted values are $\mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = \mathopen{}\left(\tfrac{7}{6}, \tfrac{5}{3}, \tfrac{13}{6}\right)\mathclose{}$, and the residuals $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = \mathopen{}\left(-\tfrac{1}{6}, \tfrac{1}{3}, -\tfrac{1}{6}\right)\mathclose{}$ are orthogonal to both columns of $\mathbf{A}$: $-\tfrac{1}{6} + \tfrac{1}{3} - \tfrac{1}{6} = 0$ and $-\tfrac{1}{6} + \tfrac{2}{3} - \tfrac{1}{2} = 0$.

> **NOTE:**
>
> **Example 6 (Many least squares solutions, one fitted vector)** With the rank-$1$ matrix $\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 1 & 2 \\ 1 & 2 \end{bmatrix}$ ([Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank)) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (1, 2, 2)$, ${\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 3 & 6 \\ 6 & 12 \end{bmatrix}$ and ${\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (5, 10)$, so both normal equations say $3 x_1 + 6 x_2 = 5$, that is, $x_1 + 2 x_2 = \tfrac{5}{3}$. There are infinitely many least squares solutions, such as $(\tfrac{5}{3}, 0)$ and $(0, \tfrac{5}{6})$, as part 4 predicts for $\operatorname{rank}(\mathbf{A}) = 1 < 2$; but every one gives the same fitted vector
>
> $$\begin{aligned}
> \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} &= (x_1 + 2 x_2)\,(1, 1, 1) \\
> &= \tfrac{5}{3}\,(1, 1, 1),
> \end{aligned}$$
>
> as part 3 says.

> **NOTE:**
>
> **Theorem 4 (Solving least squares by QR)** Let $\mathbf{A}$ be $m \times n$ with $\operatorname{rank}(\mathbf{A}) = n$, with QR factorization $\mathbf{A} = \mathbf{Q} \mathbf{R}$ ([Theorem 2](#thm-qr)), and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$. The least squares solution ([Definition 4](#def-least-squares)) is the unique solution of
>
> $$\underbrace{\mathbf{R}}_{n \times n}\,\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = \underbrace{{\mathbf{Q}}^{\top}}_{n \times m}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}},$$
>
> which back substitution computes ([Theorem 1](#thm-back-substitution)). When $m = n$, it is the unique solution of $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> *Proof*. $\mathbf{R}$ is upper triangular with positive diagonal, so $\mathbf{R} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has exactly one solution $\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$ ([Theorem 1](#thm-back-substitution)). ${\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}_n$, as in the proof of [Theorem 4 in Design Matrices and Projections](linear-algebra-projections.llms.md#thm-projector-onb). Then
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top} \mathbf{A} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}
> &= {(\mathbf{Q} \mathbf{R})}^{\top}\,(\mathbf{Q} \mathbf{R})\,\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}
> && \text{(substitute } \mathbf{A} = \mathbf{Q} \mathbf{R} \text{)}
> \\
> &= {\mathbf{R}}^{\top}\,{\mathbf{Q}}^{\top}\,(\mathbf{Q} \mathbf{R})\,\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{R}}^{\top}\,({\mathbf{Q}}^{\top} \mathbf{Q})\,(\mathbf{R} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{R}}^{\top}\,\mathbf{I}_n\,(\mathbf{R} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}})
> && \text{(} {\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}_n \text{)}
> \\
> &= {\mathbf{R}}^{\top}\,(\mathbf{R} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{R}}^{\top}\,({\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}})
> && \text{(} \mathbf{R} \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \text{)}
> \\
> &= ({\mathbf{R}}^{\top}\,{\mathbf{Q}}^{\top})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {(\mathbf{Q} \mathbf{R})}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}},
> && \text{(} \mathbf{A} = \mathbf{Q} \mathbf{R} \text{)}
> \end{aligned}$$
>
> so $\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$ solves the normal equations and is the least squares solution ([Theorem 3](#thm-normal-equations)), which is unique because $\operatorname{rank}(\mathbf{A}) = n$. When $m = n$,
>
> $$\begin{aligned}
> \operatorname{rank}(\mathbf{A}) &= n \\
> &= m,
> \end{aligned}$$
>
> so $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is consistent for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ ([Corollary 2 in Generalized Inverses and Linear Systems](linear-algebra-generalized-inverses.llms.md#cor-solution-unique), part 1), so its solution leaves residual $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, is a least squares solution, and is therefore $\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$.

> **NOTE:**
>
> **Example 7 (The least squares line by QR)** For $\mathbf{A}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ of [Example 5](#exm-normal-equations), Gram-Schmidt gives $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 = \tfrac{1}{\sqrt{3}}\,(1, 1, 1)$; then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 \cdot (1, 2, 3) &= \tfrac{6}{\sqrt{3}} \\
> &= 2\sqrt{3},
> \end{aligned}$$
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_2 &= (1, 2, 3) - 2\,(1, 1, 1) \\
> &= (-1, 0, 1)
> \end{aligned}$$
>
> with norm $\sqrt{2}$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 = \tfrac{1}{\sqrt{2}}\,(-1, 0, 1)$. So
>
> $$\begin{aligned}
> \mathbf{R}
> &= \begin{bmatrix} \sqrt{3} & 2\sqrt{3} \\ 0 & \sqrt{2} \end{bmatrix}, \\
> {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> &= \mathopen{}\left(\tfrac{1 + 2 + 2}{\sqrt{3}},\; \tfrac{-1 + 0 + 2}{\sqrt{2}}\right)\mathclose{} \\
> &= \mathopen{}\left(\tfrac{5}{\sqrt{3}}, \tfrac{1}{\sqrt{2}}\right)\mathclose{}.
> \end{aligned}$$
>
> Back substitution gives
>
> $$\begin{aligned}
> x_2 &= \tfrac{1}{\sqrt{2}} \cdot \tfrac{1}{\sqrt{2}} \\
> &= \tfrac{1}{2}
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> x_1 &= \tfrac{1}{\sqrt{3}} \mathopen{}\left(\tfrac{5}{\sqrt{3}} - 2\sqrt{3} \cdot \tfrac{1}{2}\right)\mathclose{} \\
> &= \tfrac{5}{3} - 1 \\
> &= \tfrac{2}{3},
> \end{aligned}$$
>
> the solution found in [Example 5](#exm-normal-equations).

> **NOTE:**
>
> **Theorem 5 (The Moore-Penrose inverse gives a least squares solution)** Let $\mathbf{A}$ be $m \times n$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$. Then $\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is a [least squares solution](#def-least-squares) of $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, and a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^n$ is a least squares solution [if and only if](https://morrison-lab.github.io/mcs/proof-writing.html#def-iff)
>
> $$\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathbf{A}\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}.$$

> **NOTE:**
>
> *Proof*. Let $\mathbf{P} = \mathbf{A}\mathbf{A}^+$. By conditions 3 and 1 of [Definition 2 in Generalized Inverses and Linear Systems](linear-algebra-generalized-inverses.llms.md#def-moore-penrose), ${\mathbf{P}}^{\top} = \mathbf{P}$ and $\mathbf{P}\mathbf{A} = \mathbf{A}$. Hence
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top}(\mathbf{I} - \mathbf{P})
> &= {\mathbf{A}}^{\top} - {\mathbf{A}}^{\top}\mathbf{P}
> && \text{(distributing)}
> \\
> &= {\mathbf{A}}^{\top} - {\mathbf{A}}^{\top}\,{\mathbf{P}}^{\top}
> && ({\mathbf{P}}^{\top} = \mathbf{P})
> \\
> &= {\mathbf{A}}^{\top} - {(\mathbf{P}\mathbf{A})}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{A}}^{\top} - {\mathbf{A}}^{\top}
> && (\mathbf{P}\mathbf{A} = \mathbf{A})
> \\
> &= \mathbf{0}.
> \end{aligned}$$
>
> For every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^n$, write $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ with
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{P}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> \qquad \text{and} \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathbf{P}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathbf{A}(\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}).$$
>
> Their [inner product](linear-algebra-inner-products.llms.md#def-inner-product) is
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}
> &= {(\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}^{\top}\,{\mathbf{A}}^{\top}(\mathbf{I} - \mathbf{P})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= 0,
> && ({\mathbf{A}}^{\top}(\mathbf{I} - \mathbf{P}) = \mathbf{0})
> \end{aligned}$$
>
> so $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 = \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right\rVert\mathclose{}^2$. That is,
>
> $$\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2
> = \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{P}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\mathbf{A}(\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right\rVert\mathclose{}^2.$$
>
> The first summand does not involve $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, and the second is nonnegative, with a zero at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$. So $\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ minimizes $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}$, and the smallest [norm](linear-algebra-inner-products.llms.md#def-norm) is $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{P}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right\rVert\mathclose{}$. A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ attains that norm [if and only if](https://morrison-lab.github.io/mcs/proof-writing.html#def-iff) $\mathbf{A}(\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, which is $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathbf{A}\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> **Theorem 6 (The Moore-Penrose inverse gives the least squares solution of smallest norm)** Let $\mathbf{A}$ be $m \times n$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$. If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a least squares solution ([Definition 4](#def-least-squares)) of $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, then
>
> $$\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 = \mathopen{}\left\lVert\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right\rVert\mathclose{}^2.$$
>
> So $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \ge \mathopen{}\left\lVert\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right\rVert\mathclose{}$, with equality only if $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> *Proof*. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$. By [Theorem 5](#thm-moore-penrose-least-squares), $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathbf{A}\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, so $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.
>
> Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = {(\mathbf{A}^+)}^{\top}\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$. Then
>
> $$\begin{aligned}
> \mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> &= \mathbf{A}^+\mathbf{A}\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && \text{(condition 2 of }\href{linear-algebra-generalized-inverses.qmd#def-moore-penrose}{\text{Definition~2 in Generalized Inverses and Linear Systems}}\text{)}
> \\
> &= {(\mathbf{A}^+\mathbf{A})}^{\top}\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && \text{(condition 4 of }\href{linear-algebra-generalized-inverses.qmd#def-moore-penrose}{\text{Definition~2 in Generalized Inverses and Linear Systems}}\text{)}
> \\
> &= {\mathbf{A}}^{\top}\,{(\mathbf{A}^+)}^{\top}\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{A}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}.
> && \text{(definition of } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \text{)}
> \end{aligned}$$
>
> Therefore
>
> $$\begin{aligned}
> \mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}
> &= {\mathbf{A}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}
> && (\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = {\mathbf{A}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= 0.
> && (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})
> \end{aligned}$$
>
> Expanding $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 = \mathopen{}\left\lVert\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}\right\rVert\mathclose{}^2$ then gives
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2
> &= \mathopen{}\left\lVert\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right\rVert\mathclose{}^2 + 2\,\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} + \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}\right\rVert\mathclose{}^2
> && \text{(expanding)}
> \\
> &= \mathopen{}\left\lVert\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}\right\rVert\mathclose{}^2.
> && (\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} = 0)
> \end{aligned}$$
>
> Equality in $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \ge \mathopen{}\left\lVert\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right\rVert\mathclose{}$ holds only if $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}\right\rVert\mathclose{} = 0$, that is, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> **Example 8 (A rank-deficient least squares problem)** Let $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (2, 3)$. By [Example 5 in Generalized Inverses and Linear Systems](linear-algebra-generalized-inverses.llms.md#exm-moore-penrose), $\mathbf{A}^+ = \mathbf{A}$, so $\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (2, 0)$ and $\mathbf{A}\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (2, 0)$.
>
> By [Theorem 5](#thm-moore-penrose-least-squares), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (x_1, x_2)$ is a [least squares solution](#def-least-squares) [if and only if](https://morrison-lab.github.io/mcs/proof-writing.html#def-iff) $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (x_1, 0) = (2, 0)$, that is, $x_1 = 2$ with $x_2$ arbitrary. Each of them leaves the same residual $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} - \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (0, 3)$, of [norm](linear-algebra-inner-products.llms.md#def-norm) $3$.
>
> For each such $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$,
>
> $$\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 = 4 + x_2^2
> = \mathopen{}\left\lVert\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right\rVert\mathclose{}^2,$$
>
> as [Theorem 6](#thm-moore-penrose-minimum-norm) states. The smallest is $4$, at $x_2 = 0$, which is $\mathbf{A}^+\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (2, 0)$.

> **NOTE:**
>
> **Definition 6 (LU factorization)** An **LU factorization** [\[6\]](#ref-wikipedia_lu_decomposition) of an $n \times n$ matrix $\mathbf{A}$ is a product $\mathbf{A} = \mathbf{L} \mathbf{U}$ with $\mathbf{L}$ unit lower triangular ([Definition 3](#def-unit-lower-triangular-matrix)) and $\mathbf{U}$ upper triangular ([Definition 1](#def-triangular-matrix)).

> **NOTE:**
>
> **Example 9 (An LU factorization of a** $3 \times 3$ matrix) Let $\mathbf{A} = \begin{bmatrix} 2 & 1 & -1 \\ -3 & -1 & 2 \\ -2 & 1 & 2 \end{bmatrix}$, $\mathbf{L} = \begin{bmatrix} 1 & 0 & 0 \\ -\frac{3}{2} & 1 & 0 \\ -1 & 4 & 1 \end{bmatrix}$ (unit lower triangular) and $\mathbf{U} = \begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix}$ (upper triangular). By [Definition 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult), entry $(i, j)$ of $\mathbf{L} \mathbf{U}$ is $\sum_k \ell_{ik}\,u_{kj}$, so row $i$ of $\mathbf{L} \mathbf{U}$ is $\sum_k \ell_{ik}$ times row $k$ of $\mathbf{U}$. Row 1 is $1 \cdot(2, 1, -1) = (2, 1, -1)$; row 2 is $-\tfrac{3}{2}\,(2, 1, -1) + (0, \tfrac{1}{2}, \tfrac{1}{2}) = (-3, -1, 2)$, and row 3 is $-(2, 1, -1) + 4\,(0, \tfrac{1}{2}, \tfrac{1}{2}) + (0, 0, -1) = (-2, 1, 2)$. These are the rows of $\mathbf{A}$, so $\mathbf{L} \mathbf{U} = \mathbf{A}$ is an LU factorization. The below-diagonal entries of $\mathbf{L}$ are the negatives of the multiples of earlier rows that Gaussian elimination adds to reduce $\mathbf{A}$ to $\mathbf{U}$.

> **NOTE:**
>
> **Example 10 (An invertible matrix with no LU factorization)** $\mathbf{P} = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$ is invertible: $\mathbf{P}^2 = \mathbf{I}_2$, so $\mathbf{P}^{-1} = \mathbf{P}$ ([Definition 5 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-matrix-inverse)); but it has no LU factorization. If $\mathbf{P} = \mathbf{L} \mathbf{U}$, the $(1, 1)$ entry gives $0 = 1 \cdot u_{11}$, so $u_{11} = 0$, and then the $(2, 1)$ entry gives
>
> $$\begin{aligned}
> 1 &= \ell_{21}\,u_{11} \\
> &= 0,
> \end{aligned}$$
>
> which is impossible. Swapping the two rows first removes the obstacle: the swapped matrix is $\mathbf{I}_2 = \mathbf{I}_2\,\mathbf{I}_2$.

> **NOTE:**
>
> **Theorem 7 (Solving a system with an LU factorization)** If $\mathbf{A} = \mathbf{L} \mathbf{U}$ is an LU factorization ([Definition 6](#def-lu)) and the diagonal entries of $\mathbf{U}$ are all nonzero, then for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^n$ the system $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has exactly one solution: solve $\mathbf{L} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ by forward substitution, then $\mathbf{U} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ by back substitution ([Theorem 1](#thm-back-substitution)).

> **NOTE:**
>
> *Proof*. $\mathbf{L}$ has diagonal entries $1$ and $\mathbf{U}$ has nonzero ones, so each of the two triangular systems has exactly one solution ([Theorem 1](#thm-back-substitution)). If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ are those solutions, then
>
> $$\begin{aligned}
> \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= \mathbf{L}\,(\mathbf{U} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \\
> &= \mathbf{L} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> \end{aligned}$$
>
> ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc)), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a solution. Conversely, if $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \stackrel{\text{def}}{=}\mathbf{U} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ satisfies
>
> $$\begin{aligned}
> \mathbf{L} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} &= \mathbf{L}\,(\mathbf{U} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \\
> &= (\mathbf{L} \mathbf{U})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \\
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> \end{aligned}$$
>
> ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc)), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is the unique solution of that system, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is then the unique solution of $\mathbf{U} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$.

> **NOTE:**
>
> **Example 11 (Two triangular solves)** With $\mathbf{L}$ and $\mathbf{U}$ of [Example 9](#exm-lu), solve $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (8, -11, -3)$. Forward substitution on $\mathbf{L} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (8, -11, -3)$ gives $y_1 = 8$,
>
> $$\begin{aligned}
> y_2 &= -11 + \tfrac{3}{2} \cdot 8 \\
> &= 1,
> \end{aligned}$$
>
> $$\begin{aligned}
> y_3 &= -3 + 8 - 4 \cdot 1 \\
> &= 1.
> \end{aligned}$$
>
> Back substitution on $\mathbf{U} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (8, 1, 1)$ is [Example 2](#exm-back-substitution), which gives $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (2, 3, -1)$. As a check,
>
> $$\begin{aligned}
> \mathbf{A}\,(2, 3, -1) &= (4 + 3 + 1,\; -6 - 3 - 2,\; -4 + 3 - 2) \\
> &= (8, -11, -3).
> \end{aligned}$$

# Definitions on this page

- [Definition 1 (Upper triangular matrix)](#def-triangular-matrix)
- [Definition 2 (Lower triangular matrix)](#def-lower-triangular-matrix)
- [Definition 3 (Unit lower triangular matrix)](#def-unit-lower-triangular-matrix)
- [Definition 4 (Least squares solution)](#def-least-squares)
- [Definition 5 (Normal equations)](#def-normal-equations)
- [Definition 6 (LU factorization)](#def-lu)

Back to top

## References

\[1\]

H. Zhou, “Linear equations and matrix inverses.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/07-matinv/07-matinv.html>

\[2\]

H. Zhou, “Least squares.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/08-ls/08-ls.html>

\[3\]

Wikipedia contributors, “Triangular matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Triangular_matrix>

\[4\]

Wikipedia contributors, “Least squares — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Least_squares>

\[5\]

Wikipedia contributors, “Normal equations — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Normal_equations>

\[6\]

Wikipedia contributors, “LU decomposition — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/LU_decomposition>
