# Design Matrices and Projections

Code

Published

Last modified: 2026-11-27 10:54:20 (PST)

# 1 Design Matrix

> **NOTE:**
>
> **Definition 1**  
>
> #### Design matrix, model matrix
>
> In a regression model with $n$ observations and $p$ predictors, the **design matrix** [\[1\]](#ref-wikipedia_design_matrix) (or **model matrix**) $\mathbf{X}$ is the $n \times p$ [matrix](linear-algebra-matrices.llms.md#def-matrix) whose $i$-th row ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_i}^{\top}$ holds, for observation $i$, the $p$ entries the model uses. These can be covariates, a $1$ for the [intercept](algebra-polynomials.llms.md#def-intercept), $0/1$ columns for categories, or [functions](https://morrison-lab.github.io/mcs/functions.html#def-function) of covariates, such as $x^2$. For a straight-line fit, for example, the design matrix has a first column of 1s, which allows the intercept to be estimated [\[1\]](#ref-wikipedia_design_matrix), [\[2, Sec. 2.4\]](#ref-dobson4e). In symbols,
>
> $$\begin{aligned}
> \mathbf{X}
> &=
> \begin{bmatrix}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1}^{\top} \\
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_2}^{\top} \\
> \vdots \\
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_n}^{\top}
> \end{bmatrix} \\
> &=
> \begin{bmatrix}
> x_{11} & x_{12} & \cdots & x_{1p} \\
> x_{21} & x_{22} & \cdots & x_{2p} \\
> \vdots & \vdots & \ddots & \vdots \\
> x_{n1} & x_{n2} & \cdots & x_{np}
> \end{bmatrix}
> \end{aligned}$$

> **NOTE:**
>
> *Remark 1* (Products with the design matrix). The product $\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ collects the values ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_i}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ for all $n$ observations into a single $n \times 1$ vector:
>
> $$\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}=
> \begin{bmatrix}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\\
> \vdots \\
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_n}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}
> \end{bmatrix}$$
>
> For example, take the rank-$2$ matrix from [Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank) as $\mathbf{X}$, with $n = 3$ observations and $p = 2$ columns: an intercept column and one covariate. With $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= (1, 2)$,
>
> $$\begin{aligned}
> \mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}
> &= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}
> \begin{bmatrix} 1 \\ 2 \end{bmatrix} \\
> &= \begin{bmatrix} 3 \\ 5 \\ 7 \end{bmatrix}.
> \end{aligned}$$
>
> The matrix ${\mathbf{X}}^{\top}\mathbf{X}$ is $p \times p$ and symmetric, since
>
> $$\begin{aligned}
> {({\mathbf{X}}^{\top}\mathbf{X})}^{\top} &= {\mathbf{X}}^{\top}\,{({\mathbf{X}}^{\top})}^{\top} \\
> &= {\mathbf{X}}^{\top}\mathbf{X}
> \end{aligned}$$
>
> ([Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product)). When ${\mathbf{X}}^{\top}\mathbf{X}$ is invertible, it appears in the least squares solution ([Definition 4 in Solving Linear Systems and Least Squares](linear-algebra-least-squares.llms.md#def-least-squares), defined later in this chapter) $\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}= ({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$.

> **NOTE:**
>
> **Theorem 1 (**${\mathbf{X}}^{\top}\mathbf{X}$ is invertible when $\mathbf{X}$ has full column rank) If $\mathbf{X}$ is an $n \times p$ matrix with $\operatorname{rank}(\mathbf{X}) = p$ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)), then the $p \times p$ matrix ${\mathbf{X}}^{\top}\mathbf{X}$ is invertible.

> **NOTE:**
>
> *Proof*. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}$ be a vector of length $p$ with ${\mathbf{X}}^{\top}\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Then
>
> $$\begin{aligned}
> 0
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}}^{\top}\,{\mathbf{X}}^{\top}\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}
> && \text{(multiply } {\mathbf{X}}^{\top}\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{ on the left by } {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}}^{\top} \text{)}
> \\
> &= {\mathopen{}\left(\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}\right)\mathclose{}}^{\top}\mathopen{}\left(\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}\right)\mathclose{}
> && \text{(transpose of a product)}
> \\
> &= \mathopen{}\left\lVert\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}\right\rVert\mathclose{}^2
> && \text{(definition of the Euclidean norm)}
> \end{aligned}$$
>
> so $\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Because $\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}} = c_1 (\text{column } 1) + \cdots + c_p (\text{column } p)$ and the columns of $\mathbf{X}$ are linearly independent, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. So the only solution of ${\mathbf{X}}^{\top}\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, which says that the columns of the square matrix ${\mathbf{X}}^{\top}\mathbf{X}$ are linearly independent, and a square matrix with linearly independent columns is invertible [\[3\]](#ref-banerjee2014linear), Corollary 5.7, p. 143.

> **NOTE:**
>
> **Example 1 (Inverting** ${\mathbf{X}}^{\top}\mathbf{X}$) For the rank-$2$ matrix $\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}$ from [Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank):
>
> $${\mathbf{X}}^{\top}\mathbf{X}= \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix},
> \qquad
> {\mathopen{}\left({\mathbf{X}}^{\top}\mathbf{X}\right)\mathclose{}}^{-1} = \frac{1}{6}\begin{bmatrix} 14 & -6 \\ -6 & 3 \end{bmatrix},$$
>
> and multiplying the two out gives $\mathbf{I}_2$.

> **NOTE:**
>
> **Definition 2 (Hat matrix)** For an $n \times p$ design matrix $\mathbf{X}$ ([Definition 1](#def-design-matrix)) with $\operatorname{rank}(\mathbf{X}) = p$, the **hat matrix** [\[4\]](#ref-wikipedia_projection_matrix) is the $n \times n$ matrix
>
> $$\underbrace{\mathbf{H}}_{n \times n}
> \stackrel{\text{def}}{=}
> \underbrace{\mathbf{X}}_{n \times p}
> \underbrace{({\mathbf{X}}^{\top}\mathbf{X})^{-1}}_{p \times p}
> \underbrace{{\mathbf{X}}^{\top}}_{p \times n}$$
>
> The inverse exists by [Theorem 1](#thm-gram-invertible).

> **NOTE:**
>
> **Example 2 (The hat matrix of an intercept-only model)** With $n = 2$ observations and only an intercept, $\mathbf{X}= \begin{bmatrix} 1 \\ 1 \end{bmatrix}$ ($2 \times 1$, rank $1$), so ${\mathbf{X}}^{\top}\mathbf{X}= 2$ and
>
> $$\begin{aligned}
> \mathbf{H}
> &= \begin{bmatrix} 1 \\ 1 \end{bmatrix} \cdot\frac{1}{2} \cdot\begin{bmatrix} 1 & 1 \end{bmatrix} \\
> &= \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}.
> \end{aligned}$$
>
> Then $\mathbf{H}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (\bar{y}, \bar{y})$, where $\bar{y} = (y_1 + y_2)/2$: the fitted values of an intercept-only model are the [sample mean](linear-algebra-vectors.llms.md#def-mean).

> **NOTE:**
>
> **Theorem 2 (Hat matrix is a projection matrix)** If $\mathbf{X}$ is an $n \times p$ design matrix with $\operatorname{rank}(\mathbf{X}) = p$, then the hat matrix $\mathbf{H}$ ([Definition 2](#def-hat-matrix)) is an orthogonal projection matrix ([Definition 8 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-projection-matrix)).

> **NOTE:**
>
> *Proof*. We verify symmetry and idempotency. Both use that ${\mathbf{X}}^{\top}\mathbf{X}$ is symmetric,
>
> $$\begin{aligned}
> {\mathopen{}\left({\mathbf{X}}^{\top}\mathbf{X}\right)\mathclose{}}^{\top} &= {\mathbf{X}}^{\top}\,{\mathopen{}\left({\mathbf{X}}^{\top}\right)\mathclose{}}^{\top} \\
> &= {\mathbf{X}}^{\top}\mathbf{X}
> \end{aligned}$$
>
> ([Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product)), so its inverse is symmetric too ([Corollary 1 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric)).
>
> **Symmetry:** $$\begin{aligned}
> {\mathbf{H}}^{\top}
> &= {\mathopen{}\left(\mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\right)\mathclose{}}^{\top}
> && \text{(definition of } \mathbf{H} \text{)}
> \\
> &= {({\mathbf{X}}^{\top})}^{\top} \cdot {\mathopen{}\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1}\right)\mathclose{}}^{\top} \cdot {\mathbf{X}}^{\top}
> && \text{(transpose of a product, twice)}
> \\
> &= \mathbf{X}\cdot {\mathopen{}\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1}\right)\mathclose{}}^{\top} \cdot {\mathbf{X}}^{\top}
> && \text{(transposing twice changes nothing)}
> \\
> &= \mathbf{X}\cdot ({\mathbf{X}}^{\top}\mathbf{X})^{-1} \cdot {\mathbf{X}}^{\top}
> && \text{(the inverse of a symmetric matrix is symmetric)}
> \\
> &= \mathbf{H}
> && \text{(definition of } \mathbf{H} \text{)}
> \end{aligned}$$
>
> **Idempotency:** $$\begin{aligned}
> \mathbf{H}^2
> &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} \cdot \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}
> && \text{(definition of } \mathbf{H} \text{)}
> \\
> &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}({\mathbf{X}}^{\top}\mathbf{X})({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}
> && \text{(regroup; matrix multiplication is associative)}
> \\
> &= \mathbf{X}\,\mathbf{I}_p\,({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}
> && \text{(definition of the inverse)}
> \\
> &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}
> && \text{(identity matrix)}
> \\
> &= \mathbf{H}
> && \text{(definition of } \mathbf{H} \text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 3 (The intercept-only hat matrix is a projection)** For $\mathbf{H} = \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}$ from [Example 2](#exm-hat-matrix), ${\mathbf{H}}^{\top} = \mathbf{H}$, and
>
> $$\begin{aligned}
> \mathbf{H}^2
> &= \begin{bmatrix} 0.5 \cdot 0.5 + 0.5 \cdot 0.5 & 0.5 \cdot 0.5 + 0.5 \cdot 0.5 \\ 0.5 \cdot 0.5 + 0.5 \cdot 0.5 & 0.5 \cdot 0.5 + 0.5 \cdot 0.5 \end{bmatrix} \\
> &= \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix} \\
> &= \mathbf{H},
> \end{aligned}$$
>
> as [Theorem 2](#thm-hat-matrix) says.

> **NOTE:**
>
> *Remark 2* (Why it is called the hat matrix). The hat matrix gives the fitted values of the least squares solution ([Definition 4 in Solving Linear Systems and Least Squares](linear-algebra-least-squares.llms.md#def-least-squares), defined later in this chapter):
>
> $$\begin{aligned}
> \hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}} &= \mathbf{X}\hat{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\\
> &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\\
> &= \mathbf{H}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}.
> \end{aligned}$$
>
> Multiplying by $\mathbf{H}$ “puts a hat” on $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$, which is where the name comes from. In [Example 2](#exm-hat-matrix), $\mathbf{H}$ puts a hat on $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ by replacing each $y_i$ with the sample mean $\bar{y}$.

## 1.1 Orthogonal projection onto a subspace

> **NOTE:**
>
> This section is adapted from the second half of Zhou [\[5\]](#ref-zhou2024orthproj), used under the MIT License (see the license text in [Section  in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). It connects the orthogonal projection matrices of [Definition 8 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-projection-matrix), defined by an algebraic property, to the geometric decomposition of [Theorem 4 in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#thm-orthogonal-direct-sum).

> **NOTE:**
>
> **Definition 3 (Orthogonal projection onto a subspace)** Let $\mathcal{S}$ be a subspace of $\mathbb{R}^p$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \in \mathbb{R}^p$. By [Theorem 4 in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#thm-orthogonal-direct-sum), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ for exactly one $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{S}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{S}^\perp$. The vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is the **orthogonal projection** of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{S}$. It is the projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{S}$ along $\mathcal{S}^\perp$ ([Definition 4 in Sums and Direct Sums](linear-algebra-direct-sums.llms.md#def-projection)).

> **NOTE:**
>
> **Example 4 (Projecting onto a line in** $\mathbb{R}^3$) In [Example 5 in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#exm-orthogonal-direct-sum), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (3, 1, 2)$ splits as $(2, 2, 0) + (1, -1, 2)$, with $(2, 2, 0) \in \mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$ and $(1, -1, 2) \in \mathcal{S}^\perp$. So the orthogonal projection of $(3, 1, 2)$ onto $\mathcal{S}$ is $(2, 2, 0)$. A vector already in $\mathcal{S}$, such as $(5, 5, 0)$, is its own projection, since $(5, 5, 0) = (5, 5, 0) + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\in \mathcal{S}^\perp$ ([Theorem 2 in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#thm-orthogonal-complement-subspace), [Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)); a vector of $\mathcal{S}^\perp$, such as $(1, -1, 2)$, projects to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, since $(1, -1, 2) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}+ (1, -1, 2)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\in \mathcal{S}$ ([Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)).

> **NOTE:**
>
> **Example 5 (A split that is not the orthogonal one)** $(3, 1, 2) = (3, 3, 0) + (0, -2, 2)$ also writes $(3, 1, 2)$ as a vector of $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$ plus a remainder, but $(1, 1, 0) \cdot (0, -2, 2) = -2 \ne 0$, so the remainder is not in $\mathcal{S}^\perp$, and $(3, 3, 0)$ is not the orthogonal projection of $(3, 1, 2)$ onto $\mathcal{S}$.

> **NOTE:**
>
> **Theorem 3 (The orthogonal projection is the closest point)** Let $\mathcal{S}$ be a subspace of $\mathbb{R}^p$, let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \in \mathbb{R}^p$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ be the orthogonal projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{S}$ ([Definition 3](#def-orthogonal-projection)). Then for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathcal{S}$,
>
> $$\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right\rVert\mathclose{},$$
>
> with equality only when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$.

> **NOTE:**
>
> *Proof*. By [Definition 3](#def-orthogonal-projection), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{S}^\perp$. Both $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ are in $\mathcal{S}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + (-1)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathcal{S}$ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)), and therefore $(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) \perp (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})$ ([Definition 1 in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#def-orthogonal-complement)). Then
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right\rVert\mathclose{}^2
> &= \mathopen{}\left\lVert(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) + (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})\right\rVert\mathclose{}^2
> && \text{(add and subtract } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \text{)}
> \\
> &= \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right\rVert\mathclose{}^2
> && \text{(Pythagorean theorem, }\href{linear-algebra-inner-products.qmd#thm-norm-sum-square}{\text{Theorem~2 in Inner Products and the Cauchy-Schwarz Inequality}}\text{)}
> \\
> &\ge \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right\rVert\mathclose{}^2,
> && \text{(} \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right\rVert\mathclose{}^2 \ge 0 \text{, }\href{linear-algebra-inner-products.qmd#thm-norm-properties}{\text{Theorem~1 in Inner Products and the Cauchy-Schwarz Inequality}}\text{)}
> \end{aligned}$$
>
> with equality exactly when $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right\rVert\mathclose{} = 0$, that is, when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ ([Theorem 1 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#thm-norm-properties), part 1). Taking nonnegative square roots preserves the inequality.

> **NOTE:**
>
> **Example 6 (No point of the line is closer)** In [Example 4](#exm-orthogonal-projection), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (3, 1, 2)$ has projection $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (2, 2, 0)$ onto $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$, at distance $\mathopen{}\left\lVert(1, -1, 2)\right\rVert\mathclose{} = \sqrt{6}$. Another point of $\mathcal{S}$, such as $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = (3, 3, 0)$, is farther:
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right\rVert\mathclose{} &= \mathopen{}\left\lVert(0, -2, 2)\right\rVert\mathclose{} \\
> &= \sqrt{8} \\
> &> \sqrt{6},
> \end{aligned}$$
>
> and the difference of squares is
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right\rVert\mathclose{}^2 &= \mathopen{}\left\lVert(-1, -1, 0)\right\rVert\mathclose{}^2 \\
> &= 2 \\
> &= 8 - 6,
> \end{aligned}$$
>
> by the Pythagorean theorem ([Theorem 2 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#thm-norm-sum-square)), since $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{S}^\perp$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathcal{S}$.

> **NOTE:**
>
> **Theorem 4 (Projecting with an orthonormal basis)** Let $\mathcal{S}$ be a subspace of $\mathbb{R}^p$ with $\dim(\mathcal{S}) = r \ge 1$, and let $\mathbf{Q}$ be the $p \times r$ matrix whose columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_r$ are an orthonormal basis of $\mathcal{S}$ ([Definition 1 in Orthonormal Bases, Outer Products and Hilbert Spaces](linear-algebra-orthonormal-bases.llms.md#def-orthonormal-basis), [Corollary 1 in Orthonormal Bases, Outer Products and Hilbert Spaces](linear-algebra-orthonormal-bases.llms.md#cor-orthonormal-basis-exists)). Then for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \in \mathbb{R}^p$, $\mathbf{Q} {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is the orthogonal projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{S}$, and $\mathbf{Q} {\mathbf{Q}}^{\top}$ is an orthogonal projection matrix ([Definition 8 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-projection-matrix)).

> **NOTE:**
>
> *Proof*. ${\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}_r$. Write $q_{ki}$ for entry $k$ of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i$, which is entry $(k, i)$ of $\mathbf{Q}$. Then
>
> $$\begin{aligned}
> ({\mathbf{Q}}^{\top} \mathbf{Q})_{ij}
> &= \sum_{k=1}^{p} ({\mathbf{Q}}^{\top})_{ik}\, q_{kj}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{)}
> \\
> &= \sum_{k=1}^{p} q_{ki}\, q_{kj}
> && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~6 in Matrices}}\text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j,
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \end{aligned}$$
>
> which is $1$ if $i = j$ and $0$ otherwise ([Definition 28 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)), so ${\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}_r$ ([Definition 7 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-identity-matrix)).
>
> **The split.** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = \mathbf{Q} {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$. $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = \mathbf{Q}\,({\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})$ ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc)) is in $\mathcal{C}(\mathbf{Q})$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)), which is $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_r\right\}\mathclose{} = \mathcal{S}$ ([Theorem 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-column-space-span)). For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$,
>
> $$\begin{aligned}
> {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> &= {\mathbf{Q}}^{\top}\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathbf{Q} {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})
> && \text{(substitute)}
> \\
> &= {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - {\mathbf{Q}}^{\top}\,(\mathbf{Q} {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})
> && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)}
> \\
> &= {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - ({\mathbf{Q}}^{\top} \mathbf{Q})\,{\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathbf{I}_r\,{\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> && \text{(} {\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}_r \text{, from the first part of the proof)}
> \\
> &= {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - {\mathbf{Q}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_r,
> && \text{(arithmetic)}
> \end{aligned}$$
>
> so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{N}({\mathbf{Q}}^{\top})$, and
>
> $$\begin{aligned}
> \mathcal{N}({\mathbf{Q}}^{\top}) &= \mathcal{C}(\mathbf{Q})^\perp \\
> &= \mathcal{S}^\perp
> \end{aligned}$$
>
> ([Theorem 3 in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#thm-complement-null-space)). By the uniqueness in [Theorem 4 in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#thm-orthogonal-direct-sum), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is the orthogonal projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{S}$.
>
> $\mathbf{Q} {\mathbf{Q}}^{\top}$ is symmetric and idempotent.
>
> $$\begin{aligned}
> {(\mathbf{Q} {\mathbf{Q}}^{\top})}^{\top}
> &= {({\mathbf{Q}}^{\top})}^{\top}\,{\mathbf{Q}}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{Q} {\mathbf{Q}}^{\top},
> && \text{(transposing twice, }\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~6 in Matrices}}\text{)}
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> (\mathbf{Q} {\mathbf{Q}}^{\top})(\mathbf{Q} {\mathbf{Q}}^{\top})
> &= \mathbf{Q}\,({\mathbf{Q}}^{\top} \mathbf{Q})\,{\mathbf{Q}}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{Q}\,\mathbf{I}_r\,{\mathbf{Q}}^{\top}
> && \text{(} {\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}_r \text{, from the first part of the proof)}
> \\
> &= \mathbf{Q} {\mathbf{Q}}^{\top}.
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 7 (The projection matrix onto a line)** For $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$, the single vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 = \tfrac{1}{\sqrt{2}}\,(1, 1, 0)$ is an orthonormal basis: it spans $\mathcal{S}$, it is nonzero and so linearly independent, and
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1\right\rVert\mathclose{} &= \sqrt{\tfrac{1}{2} + \tfrac{1}{2} + 0} \\
> &= 1.
> \end{aligned}$$
>
> With $\mathbf{Q} = [\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1]$,
>
> $$\begin{aligned}
> \mathbf{Q} {\mathbf{Q}}^{\top}
> &= \tfrac{1}{2} \begin{bmatrix} 1 \\ 1 \\ 0 \end{bmatrix} \begin{bmatrix} 1 & 1 & 0 \end{bmatrix} \\
> &= \begin{bmatrix} \tfrac{1}{2} & \tfrac{1}{2} & 0 \\ \tfrac{1}{2} & \tfrac{1}{2} & 0 \\ 0 & 0 & 0 \end{bmatrix}.
> \end{aligned}$$
>
> Applied to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (3, 1, 2)$, it gives $\mathopen{}\left(\tfrac{3 + 1}{2}, \tfrac{3 + 1}{2}, 0\right)\mathclose{} = (2, 2, 0)$, the projection found in [Example 4](#exm-orthogonal-projection).

> **NOTE:**
>
> **Theorem 5 (A projection matrix projects onto its column space, and is the only one that does)**  
>
> 1.  If $\mathbf{P}$ is a $p \times p$ orthogonal projection matrix ([Definition 8 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-projection-matrix)), then for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \in \mathbb{R}^p$, $\mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is the orthogonal projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{C}(\mathbf{P})$ ([Definition 3](#def-orthogonal-projection)).
> 2.  If $\mathbf{P}_1$ and $\mathbf{P}_2$ are $p \times p$ matrices such that, for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$, both $\mathbf{P}_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ and $\mathbf{P}_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ are the orthogonal projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto the same subspace $\mathcal{S}$, then $\mathbf{P}_1 = \mathbf{P}_2$.

> **NOTE:**
>
> *Proof*. **Part 1.** Write $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} + (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})$. The first term is in $\mathcal{C}(\mathbf{P})$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)). For the second,
>
> $$\begin{aligned}
> \mathbf{P}\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})
> &= \mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathbf{P}\,(\mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})
> && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)}
> \\
> &= \mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - (\mathbf{P} \mathbf{P})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathbf{P}^2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-power}{\text{Definition~2 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> && \text{(} \mathbf{P} \text{ is idempotent)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p,
> && \text{(arithmetic)}
> \end{aligned}$$
>
> so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \in \mathcal{N}(\mathbf{P})$. Since $\mathbf{P} = {\mathbf{P}}^{\top}$,
>
> $$\begin{aligned}
> \mathcal{N}(\mathbf{P}) &= \mathcal{N}({\mathbf{P}}^{\top}) \\
> &= \mathcal{C}(\mathbf{P})^\perp
> \end{aligned}$$
>
> ([Theorem 3 in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#thm-complement-null-space)). By the uniqueness in [Theorem 4 in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#thm-orthogonal-direct-sum), $\mathbf{P} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is the orthogonal projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{C}(\mathbf{P})$.
>
> **Part 2.** The orthogonal projection of a vector onto $\mathcal{S}$ is unique ([Definition 3](#def-orthogonal-projection)), so $\mathbf{P}_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j = \mathbf{P}_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j$ for each indicator vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j$ ([Definition 21 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)). $\mathbf{P}_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j$ is column $j$ of $\mathbf{P}_1$: by [Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns) it is the combination of the columns of $\mathbf{P}_1$ with coefficients the entries of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j$, which are $1$ in place $j$ and $0$ elsewhere ([Definition 21 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)). Likewise for $\mathbf{P}_2$, so the two matrices have the same columns.

> **NOTE:**
>
> **Example 8 (Two routes to the same projection matrix)** The matrix $\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ of [Example 12 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#exm-projection-matrix) is an orthogonal projection matrix, and its column space is $\operatorname{span}\mathopen{}\left\{(1, 0)\right\}\mathclose{}$, the horizontal axis. By part 1, $\mathbf{P}(v_1, v_2) = (v_1, 0)$ is the orthogonal projection onto that axis: the remainder $(0, v_2)$ is orthogonal to $(1, 0)$. The vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 = (1, 0)$ has length $1$ and spans the axis, so it is an orthonormal basis of it, and with $\mathbf{B} = [\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1]$,
>
> $$\begin{aligned}
> \mathbf{B} {\mathbf{B}}^{\top} &= \begin{bmatrix} 1 \\ 0 \end{bmatrix} \begin{bmatrix} 1 & 0 \end{bmatrix} \\
> &= \mathbf{P},
> \end{aligned}$$
>
> as part 2 and [Theorem 4](#thm-projector-onb) require.
>
> The oblique projection $\mathbf{Q} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}$ of [Example 12 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#exm-projection-matrix) also maps every vector into the horizontal axis. It sends $(0, 1)$ to $(1, 0)$, but the remainder $(0, 1) - (1, 0) = (-1, 1)$ is not orthogonal to the axis, so $(1, 0)$ is not the orthogonal projection of $(0, 1)$ onto the axis, which is $\mathbf{P}(0, 1) = (0, 0)$.

> **NOTE:**
>
> **Theorem 6 (The hat matrix projects onto the column space of the design matrix)** If $\mathbf{X}$ is an $n \times p$ design matrix with $\operatorname{rank}(\mathbf{X}) = p$, then for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^n$, $\mathbf{H} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ ([Definition 2](#def-hat-matrix)) is the orthogonal projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{C}(\mathbf{X})$. So $\mathbf{H} = \mathbf{Q} {\mathbf{Q}}^{\top}$ for any $n \times p$ matrix $\mathbf{Q}$ whose columns are an orthonormal basis of $\mathcal{C}(\mathbf{X})$.

> **NOTE:**
>
> *Proof*. $\mathbf{H}$ is an orthogonal projection matrix ([Theorem 2](#thm-hat-matrix)), so $\mathbf{H} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is the orthogonal projection of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{C}(\mathbf{H})$ ([Theorem 5](#thm-projection-matrix-projects), part 1). It remains to show $\mathcal{C}(\mathbf{H}) = \mathcal{C}(\mathbf{X})$.
>
> $\mathcal{C}(\mathbf{H}) \subseteq \mathcal{C}(\mathbf{X})$. $\mathbf{H} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} = \mathbf{X}\,\mathopen{}\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1} {\mathbf{X}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}\right)\mathclose{}$ ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc)), which is in $\mathcal{C}(\mathbf{X})$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)).
>
> $\mathcal{C}(\mathbf{X}) \subseteq \mathcal{C}(\mathbf{H})$. First,
>
> $$\begin{aligned}
> \mathbf{H} \mathbf{X}
> &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1} {\mathbf{X}}^{\top} \mathbf{X}
> && \text{(}\href{#def-hat-matrix}{\text{Definition~2}}\text{)}
> \\
> &= \mathbf{X}\,\mathopen{}\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1} ({\mathbf{X}}^{\top}\mathbf{X})\right)\mathclose{}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{X}\,\mathbf{I}_p
> && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices, Quadratic Forms and Trace}}\text{)}
> \\
> &= \mathbf{X}.
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-identity}{\text{Theorem~4 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> So for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^p$, $\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (\mathbf{H} \mathbf{X})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, since $\mathbf{H} \mathbf{X}= \mathbf{X}$, and $(\mathbf{H} \mathbf{X})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathbf{H}\,(\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}})$ ([Theorem 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-assoc)), which is in $\mathcal{C}(\mathbf{H})$.
>
> $\mathcal{C}(\mathbf{X})$ has dimension $p \ge 1$ ([Theorem 1 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-dim)), so an orthonormal basis of it has $p$ vectors ([Definition 4 in Bases and Dimension](linear-algebra-bases.llms.md#def-dimension)), and $\mathbf{Q} {\mathbf{Q}}^{\top}$ also gives the orthogonal projection onto $\mathcal{C}(\mathbf{X})$ ([Theorem 4](#thm-projector-onb), with $n$ in place of $p$ and $r = p$). By [Theorem 5](#thm-projection-matrix-projects), part 2, $\mathbf{H} = \mathbf{Q} {\mathbf{Q}}^{\top}$.

> **NOTE:**
>
> **Example 9 (The intercept-only hat matrix, from an orthonormal basis)** For the intercept-only design $\mathbf{X}= \begin{bmatrix} 1 \\ 1 \end{bmatrix}$ of [Example 2](#exm-hat-matrix), $\mathcal{C}(\mathbf{X}) = \operatorname{span}\mathopen{}\left\{(1, 1)\right\}\mathclose{}$, with orthonormal basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 = \tfrac{1}{\sqrt{2}}\,(1, 1)$, since
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1\right\rVert\mathclose{} &= \sqrt{\tfrac{1}{2} + \tfrac{1}{2}} \\
> &= 1.
> \end{aligned}$$
>
> With $\mathbf{Q} = [\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1]$,
>
> $$\begin{aligned}
> \mathbf{Q} {\mathbf{Q}}^{\top}
> &= \tfrac{1}{2} \begin{bmatrix} 1 \\ 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \end{bmatrix} \\
> &= \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix},
> \end{aligned}$$
>
> the hat matrix found in [Example 2](#exm-hat-matrix). The fitted values $(\bar{y}, \bar{y})$ are the closest point to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ on the line of constant vectors ([Theorem 3](#thm-closest-point)), and the residuals $(y_1 - \bar{y}, y_2 - \bar{y})$ are orthogonal to $(1, 1)$:
>
> $$\begin{aligned}
> (1, 1) \cdot (y_1 - \bar{y}, y_2 - \bar{y}) &= y_1 + y_2 - 2\bar{y} \\
> &= 0,
> \end{aligned}$$
>
> since $2\bar{y} = y_1 + y_2$.

# Definitions on this page

- [Definition 1](#def-design-matrix)
- [Definition 2 (Hat matrix)](#def-hat-matrix)
- [Definition 3 (Orthogonal projection onto a subspace)](#def-orthogonal-projection)

Back to top

## References

\[1\]

Wikipedia contributors, “Design matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Design_matrix>

\[2\]

A. J. Dobson and A. G. Barnett, *An introduction to generalized linear models*, 4th ed. CRC press, 2018. doi: [10.1201/9781315182780](https://doi.org/10.1201/9781315182780).

\[3\]

S. Banerjee and A. Roy, *Linear algebra and matrix analysis for statistics*, vol. 181. Crc Press Boca Raton, 2014. Available: <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>

\[4\]

Wikipedia contributors, “Projection matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Projection_matrix>

\[5\]

H. Zhou, “Orthogonal projections.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/06-orthproj/06-orthproj.html>
