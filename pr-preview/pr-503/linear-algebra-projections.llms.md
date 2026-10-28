# Projections and Linear Systems

Code

Published

Last modified: 2026-10-28 15:23:48 (PDT)

## 1 Design Matrix

> **NOTE:**
>
> **Definition 1 (Design matrix, model matrix)** In a regression model with \\n\\ observations and \\p\\ predictors, the **design matrix** [\[1\]](#ref-wikipedia_design_matrix) (or **model matrix**) \\\mathbf{X}\\ is the \\n \times p\\ matrix whose \\i\\-th row is the covariate vector \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_i}^{\top}\\ for observation \\i\\:
>
> \\ \begin{aligned} \mathbf{X} &= \begin{bmatrix} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_1}^{\top} \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_2}^{\top} \\ \vdots \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_n}^{\top} \end{bmatrix} \\ &= \begin{bmatrix} x\_{11} & x\_{12} & \cdots & x\_{1p} \\ x\_{21} & x\_{22} & \cdots & x\_{2p} \\ \vdots & \vdots & \ddots & \vdots \\ x\_{n1} & x\_{n2} & \cdots & x\_{np} \end{bmatrix} \end{aligned} \\

> **NOTE:**
>
> *Remark 1* (Products with the design matrix). The product \\\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}\\ collects the values \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_i}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}\\ for all \\n\\ observations into a single \\n \times 1\\ vector:
>
> \\ \mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}= \begin{bmatrix} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_1}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}\\ \vdots \\ {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_n}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}} \end{bmatrix} \\
>
> For example, take the rank-\\2\\ matrix from [Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank) as \\\mathbf{X}\\, with \\n = 3\\ observations and \\p = 2\\ columns: an intercept column and one covariate. With \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}= (1, 2)\\,
>
> \\ \begin{aligned} \mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}} &= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ 2 \end{bmatrix} \\ &= \begin{bmatrix} 3 \\ 5 \\ 7 \end{bmatrix}. \end{aligned} \\
>
> The matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ is \\p \times p\\ and symmetric, since
>
> \\ \begin{aligned} {({\mathbf{X}}^{\top}\mathbf{X})}^{\top} &= {\mathbf{X}}^{\top}\\{({\mathbf{X}}^{\top})}^{\top} \\ &= {\mathbf{X}}^{\top}\mathbf{X} \end{aligned} \\
>
> ([Theorem 17 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product)). When \\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible, it appears in the least squares solution ([Definition 10](#def-least-squares), defined later in this chapter) \\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}}= ({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\.

> **NOTE:**
>
> **Theorem 1 (\\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible when \\\mathbf{X}\\ has full column rank)** If \\\mathbf{X}\\ is an \\n \times p\\ matrix with \\\operatorname{rank}(\mathbf{X}) = p\\ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)), then the \\p \times p\\ matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible.

> **NOTE:**
>
> *Proof*. Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}\\ be a vector of length \\p\\ with \\{\mathbf{X}}^{\top}\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\. Then
>
> \\ \begin{aligned} 0 &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}}^{\top}\\{\mathbf{X}}^{\top}\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} && \text{(multiply } {\mathbf{X}}^{\top}\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\text{ on the left by } {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}}^{\top} \text{)} \\ &= {\mathopen{}\left(\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}\right)\mathclose{}}^{\top}\mathopen{}\left(\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}\right)\mathclose{} && \text{(transpose of a product)} \\ &= \mathopen{}\left\lVert\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}\right\rVert\mathclose{}^2 && \text{(definition of the Euclidean norm)} \end{aligned} \\
>
> so \\\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\. Because \\\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = c_1 (\text{column } 1) + \cdots + c_p (\text{column } p)\\ and the columns of \\\mathbf{X}\\ are linearly independent, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\. So the only solution of \\{\mathbf{X}}^{\top}\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, which says that the columns of the square matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ are linearly independent, and a square matrix with linearly independent columns is invertible [\[2\]](#ref-banerjee2014linear), Corollary 5.7, p. 143.

> **NOTE:**
>
> **Example 1 (Inverting \\{\mathbf{X}}^{\top}\mathbf{X}\\)** For the rank-\\2\\ matrix \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ from [Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank):
>
> \\ {\mathbf{X}}^{\top}\mathbf{X}= \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}, \qquad {\mathopen{}\left({\mathbf{X}}^{\top}\mathbf{X}\right)\mathclose{}}^{-1} = \frac{1}{6}\begin{bmatrix} 14 & -6 \\ -6 & 3 \end{bmatrix}, \\
>
> and multiplying the two out gives \\\mathbf{I}\_2\\.

> **NOTE:**
>
> **Definition 2 (Hat matrix)** For an \\n \times p\\ design matrix \\\mathbf{X}\\ ([Definition 1](#def-design-matrix)) with \\\operatorname{rank}(\mathbf{X}) = p\\, the **hat matrix** [\[3\]](#ref-wikipedia_projection_matrix) is the \\n \times n\\ matrix
>
> \\ \underbrace{\mathbf{H}}\_{n \times n} \stackrel{\text{def}}{=} \underbrace{\mathbf{X}}\_{n \times p} \underbrace{({\mathbf{X}}^{\top}\mathbf{X})^{-1}}\_{p \times p} \underbrace{{\mathbf{X}}^{\top}}\_{p \times n} \\
>
> The inverse exists by [Theorem 1](#thm-gram-invertible).

> **NOTE:**
>
> **Example 2 (The hat matrix of an intercept-only model)** With \\n = 2\\ observations and only an intercept, \\\mathbf{X}= \begin{bmatrix} 1 \\ 1 \end{bmatrix}\\ (\\2 \times 1\\, rank \\1\\), so \\{\mathbf{X}}^{\top}\mathbf{X}= 2\\ and
>
> \\ \begin{aligned} \mathbf{H} &= \begin{bmatrix} 1 \\ 1 \end{bmatrix} \cdot\frac{1}{2} \cdot\begin{bmatrix} 1 & 1 \end{bmatrix} \\ &= \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}. \end{aligned} \\
>
> Then \\\mathbf{H}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (\bar{y}, \bar{y})\\, where \\\bar{y} = (y_1 + y_2)/2\\: the fitted values of an intercept-only model are the [sample mean](linear-algebra-vectors.llms.md#def-mean).

> **NOTE:**
>
> **Theorem 2 (Hat matrix is a projection matrix)** If \\\mathbf{X}\\ is an \\n \times p\\ design matrix with \\\operatorname{rank}(\mathbf{X}) = p\\, then the hat matrix \\\mathbf{H}\\ ([Definition 2](#def-hat-matrix)) is an orthogonal projection matrix ([Definition 8 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-projection-matrix)).

> **NOTE:**
>
> *Proof*. We verify symmetry and idempotency. Both use that \\{\mathbf{X}}^{\top}\mathbf{X}\\ is symmetric,
>
> \\ \begin{aligned} {\mathopen{}\left({\mathbf{X}}^{\top}\mathbf{X}\right)\mathclose{}}^{\top} &= {\mathbf{X}}^{\top}\\{\mathopen{}\left({\mathbf{X}}^{\top}\right)\mathclose{}}^{\top} \\ &= {\mathbf{X}}^{\top}\mathbf{X} \end{aligned} \\
>
> ([Theorem 17 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product)), so its inverse is symmetric too ([Corollary 1 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric)).
>
> **Symmetry:** \\\begin{aligned} {\mathbf{H}}^{\top} &= {\mathopen{}\left(\mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\right)\mathclose{}}^{\top} && \text{(definition of } \mathbf{H} \text{)} \\ &= {({\mathbf{X}}^{\top})}^{\top} \cdot {\mathopen{}\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1}\right)\mathclose{}}^{\top} \cdot {\mathbf{X}}^{\top} && \text{(transpose of a product, twice)} \\ &= \mathbf{X}\cdot {\mathopen{}\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1}\right)\mathclose{}}^{\top} \cdot {\mathbf{X}}^{\top} && \text{(transposing twice changes nothing)} \\ &= \mathbf{X}\cdot ({\mathbf{X}}^{\top}\mathbf{X})^{-1} \cdot {\mathbf{X}}^{\top} && \text{(the inverse of a symmetric matrix is symmetric)} \\ &= \mathbf{H} && \text{(definition of } \mathbf{H} \text{)} \end{aligned}\\
>
> **Idempotency:** \\\begin{aligned} \mathbf{H}^2 &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} \cdot \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(definition of } \mathbf{H} \text{)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}({\mathbf{X}}^{\top}\mathbf{X})({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(regroup; matrix multiplication is associative)} \\ &= \mathbf{X}\\\mathbf{I}\_p\\({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(definition of the inverse)} \\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top} && \text{(identity matrix)} \\ &= \mathbf{H} && \text{(definition of } \mathbf{H} \text{)} \end{aligned}\\

> **NOTE:**
>
> **Example 3 (The intercept-only hat matrix is a projection)** For \\\mathbf{H} = \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}\\ from [Example 2](#exm-hat-matrix), \\{\mathbf{H}}^{\top} = \mathbf{H}\\, and
>
> \\ \begin{aligned} \mathbf{H}^2 &= \begin{bmatrix} 0.5 \cdot 0.5 + 0.5 \cdot 0.5 & 0.5 \cdot 0.5 + 0.5 \cdot 0.5 \\ 0.5 \cdot 0.5 + 0.5 \cdot 0.5 & 0.5 \cdot 0.5 + 0.5 \cdot 0.5 \end{bmatrix} \\ &= \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix} \\ &= \mathbf{H}, \end{aligned} \\
>
> as [Theorem 2](#thm-hat-matrix) says.

> **NOTE:**
>
> *Remark 2* (Why it is called the hat matrix). The hat matrix gives the fitted values of the least squares solution ([Definition 10](#def-least-squares), defined later in this chapter):
>
> \\ \begin{aligned} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}} &= \mathbf{X}\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}}\\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ &= \mathbf{H}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}. \end{aligned} \\
>
> Multiplying by \\\mathbf{H}\\ “puts a hat” on \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, which is where the name comes from. In [Example 2](#exm-hat-matrix), \\\mathbf{H}\\ puts a hat on \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ by replacing each \\y_i\\ with the sample mean \\\bar{y}\\.

### 1.1 Orthogonal projection onto a subspace

> **NOTE:**
>
> This section is adapted from the second half of Zhou [\[4\]](#ref-zhou2024orthproj), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). It connects the orthogonal projection matrices of [Definition 8 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-projection-matrix), defined by an algebraic property, to the geometric decomposition of [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum).

> **NOTE:**
>
> **Definition 3 (Orthogonal projection onto a subspace)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \in \mathbb{R}^p\\. By [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ for exactly one \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \in \mathcal{S}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \in \mathcal{S}^\perp\\. The vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ is the **orthogonal projection** of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto \\\mathcal{S}\\. It is the projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto \\\mathcal{S}\\ along \\\mathcal{S}^\perp\\ ([Definition 4 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#def-projection)).

> **NOTE:**
>
> **Example 4 (Projecting onto a line in \\\mathbb{R}^3\\)** In [Example 15 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#exm-orthogonal-direct-sum), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = (3, 1, 2)\\ splits as \\(2, 2, 0) + (1, -1, 2)\\, with \\(2, 2, 0) \in \mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ and \\(1, -1, 2) \in \mathcal{S}^\perp\\. So the orthogonal projection of \\(3, 1, 2)\\ onto \\\mathcal{S}\\ is \\(2, 2, 0)\\. A vector already in \\\mathcal{S}\\, such as \\(5, 5, 0)\\, is its own projection, since \\(5, 5, 0) = (5, 5, 0) + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\in \mathcal{S}^\perp\\ ([Theorem 6 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-complement-subspace), [Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)); a vector of \\\mathcal{S}^\perp\\, such as \\(1, -1, 2)\\, projects to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, since \\(1, -1, 2) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}+ (1, -1, 2)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\in \mathcal{S}\\ ([Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)).

> **NOTE:**
>
> **Example 5 (A split that is not the orthogonal one)** \\(3, 1, 2) = (3, 3, 0) + (0, -2, 2)\\ also writes \\(3, 1, 2)\\ as a vector of \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ plus a remainder, but \\(1, 1, 0) \cdot (0, -2, 2) = -2 \ne 0\\, so the remainder is not in \\\mathcal{S}^\perp\\, and \\(3, 3, 0)\\ is not the orthogonal projection of \\(3, 1, 2)\\ onto \\\mathcal{S}\\.

> **NOTE:**
>
> **Theorem 3 (The orthogonal projection is the closest point)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\, let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \in \mathbb{R}^p\\, and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ be the orthogonal projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto \\\mathcal{S}\\ ([Definition 3](#def-orthogonal-projection)). Then for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \in \mathcal{S}\\,
>
> \\ \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\right\rVert\mathclose{}, \\
>
> with equality only when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\.

> **NOTE:**
>
> *Proof*. By [Definition 3](#def-orthogonal-projection), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \in \mathcal{S}^\perp\\. Both \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\\ are in \\\mathcal{S}\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} + (-1)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \in \mathcal{S}\\ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)), and therefore \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}) \perp (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}})\\ ([Definition 5 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#def-orthogonal-complement)). Then
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\right\rVert\mathclose{}^2 &= \mathopen{}\left\lVert(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}) + (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}})\right\rVert\mathclose{}^2 && \text{(add and subtract } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \text{)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\right\rVert\mathclose{}^2 && \text{(Pythagorean theorem, }\href{linear-algebra-inner-products.qmd#thm-norm-sum-square}{\text{Theorem~2 in Inner Products and Orthogonality}}\text{)} \\ &\ge \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\right\rVert\mathclose{}^2, && \text{(} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\right\rVert\mathclose{}^2 \ge 0 \text{, }\href{linear-algebra-inner-products.qmd#thm-norm-properties}{\text{Theorem~1 in Inner Products and Orthogonality}}\text{)} \end{aligned} \\
>
> with equality exactly when \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\right\rVert\mathclose{} = 0\\, that is, when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ ([Theorem 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#thm-norm-properties), part 1). Taking nonnegative square roots preserves the inequality.

> **NOTE:**
>
> **Example 6 (No point of the line is closer)** In [Example 4](#exm-orthogonal-projection), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = (3, 1, 2)\\ has projection \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = (2, 2, 0)\\ onto \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\, at distance \\\mathopen{}\left\lVert(1, -1, 2)\right\rVert\mathclose{} = \sqrt{6}\\. Another point of \\\mathcal{S}\\, such as \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} = (3, 3, 0)\\, is farther:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\right\rVert\mathclose{} &= \mathopen{}\left\lVert(0, -2, 2)\right\rVert\mathclose{} \\ &= \sqrt{8} \\ &\> \sqrt{6}, \end{aligned} \\
>
> and the difference of squares is
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}\right\rVert\mathclose{}^2 &= \mathopen{}\left\lVert(-1, -1, 0)\right\rVert\mathclose{}^2 \\ &= 2 \\ &= 8 - 6, \end{aligned} \\
>
> by the Pythagorean theorem ([Theorem 2 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#thm-norm-sum-square)), since \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \in \mathcal{S}^\perp\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \in \mathcal{S}\\.

> **NOTE:**
>
> **Theorem 4 (Projecting with an orthonormal basis)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\ with \\\dim(\mathcal{S}) = r \ge 1\\, and let \\\mathbf{Q}\\ be the \\p \times r\\ matrix whose columns \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_r\\ are an orthonormal basis of \\\mathcal{S}\\ ([Definition 10 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#def-orthonormal-basis), [Corollary 4 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#cor-orthonormal-basis-exists)). Then for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \in \mathbb{R}^p\\, \\\mathbf{Q} {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is the orthogonal projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto \\\mathcal{S}\\, and \\\mathbf{Q} {\mathbf{Q}}^{\top}\\ is an orthogonal projection matrix ([Definition 8 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-projection-matrix)).

> **NOTE:**
>
> *Proof*. **\\{\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_r\\.** Write \\q\_{ki}\\ for entry \\k\\ of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i\\, which is entry \\(k, i)\\ of \\\mathbf{Q}\\. Then
>
> \\ \begin{aligned} ({\mathbf{Q}}^{\top} \mathbf{Q})\_{ij} &= \sum\_{k=1}^{p} ({\mathbf{Q}}^{\top})\_{ik}\\ q\_{kj} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \\ &= \sum\_{k=1}^{p} q\_{ki}\\ q\_{kj} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j, && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)} \end{aligned} \\
>
> which is \\1\\ if \\i = j\\ and \\0\\ otherwise ([Definition 23 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)), so \\{\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_r\\ ([Definition 12 in Matrices](linear-algebra-matrices.llms.md#def-identity-matrix)).
>
> **The split.** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = \mathbf{Q} {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\. \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = \mathbf{Q}\\({\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)) is in \\\mathcal{C}(\mathbf{Q})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)), which is \\\operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_r\right\\\mathclose{} = \mathcal{S}\\ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)). For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\,
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} &= {\mathbf{Q}}^{\top}\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathbf{Q} {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(substitute)} \\ &= {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - {\mathbf{Q}}^{\top}\\(\mathbf{Q} {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - ({\mathbf{Q}}^{\top} \mathbf{Q})\\{\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathbf{I}\_r\\{\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(} {\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_r \text{, from the first part of the proof)} \\ &= {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_r, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \in \mathcal{N}({\mathbf{Q}}^{\top})\\, and
>
> \\ \begin{aligned} \mathcal{N}({\mathbf{Q}}^{\top}) &= \mathcal{C}(\mathbf{Q})^\perp \\ &= \mathcal{S}^\perp \end{aligned} \\
>
> ([Theorem 7 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-complement-null-space)). By the uniqueness in [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ is the orthogonal projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto \\\mathcal{S}\\.
>
> **\\\mathbf{Q} {\mathbf{Q}}^{\top}\\ is symmetric and idempotent.**
>
> \\ \begin{aligned} {(\mathbf{Q} {\mathbf{Q}}^{\top})}^{\top} &= {({\mathbf{Q}}^{\top})}^{\top}\\{\mathbf{Q}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{)} \\ &= \mathbf{Q} {\mathbf{Q}}^{\top}, && \text{(transposing twice, }\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} (\mathbf{Q} {\mathbf{Q}}^{\top})(\mathbf{Q} {\mathbf{Q}}^{\top}) &= \mathbf{Q}\\({\mathbf{Q}}^{\top} \mathbf{Q})\\{\mathbf{Q}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{Q}\\\mathbf{I}\_r\\{\mathbf{Q}}^{\top} && \text{(} {\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_r \text{, from the first part of the proof)} \\ &= \mathbf{Q} {\mathbf{Q}}^{\top}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 7 (The projection matrix onto a line)** For \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\, the single vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0)\\ is an orthonormal basis: it spans \\\mathcal{S}\\, it is nonzero and so linearly independent, and
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1\right\rVert\mathclose{} &= \sqrt{\tfrac{1}{2} + \tfrac{1}{2} + 0} \\ &= 1. \end{aligned} \\
>
> With \\\mathbf{Q} = \[\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1\]\\,
>
> \\ \begin{aligned} \mathbf{Q} {\mathbf{Q}}^{\top} &= \tfrac{1}{2} \begin{bmatrix} 1 \\ 1 \\ 0 \end{bmatrix} \begin{bmatrix} 1 & 1 & 0 \end{bmatrix} \\ &= \begin{bmatrix} \tfrac{1}{2} & \tfrac{1}{2} & 0 \\ \tfrac{1}{2} & \tfrac{1}{2} & 0 \\ 0 & 0 & 0 \end{bmatrix}. \end{aligned} \\
>
> Applied to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = (3, 1, 2)\\, it gives \\\mathopen{}\left(\tfrac{3 + 1}{2}, \tfrac{3 + 1}{2}, 0\right)\mathclose{} = (2, 2, 0)\\, the projection found in [Example 4](#exm-orthogonal-projection).

> **NOTE:**
>
> **Theorem 5 (A projection matrix projects onto its column space, and is the only one that does)**  
>
> 1.  If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 8 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-projection-matrix)), then for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \in \mathbb{R}^p\\, \\\mathbf{P} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is the orthogonal projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto \\\mathcal{C}(\mathbf{P})\\ ([Definition 3](#def-orthogonal-projection)).
> 2.  If \\\mathbf{P}\_1\\ and \\\mathbf{P}\_2\\ are \\p \times p\\ matrices such that, for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, both \\\mathbf{P}\_1 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ and \\\mathbf{P}\_2 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ are the orthogonal projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto the same subspace \\\mathcal{S}\\, then \\\mathbf{P}\_1 = \mathbf{P}\_2\\.

> **NOTE:**
>
> *Proof*. **Part 1.** Write \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathbf{P} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} + (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathbf{P} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\. The first term is in \\\mathcal{C}(\mathbf{P})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)). For the second,
>
> \\ \begin{aligned} \mathbf{P}\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathbf{P} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) &= \mathbf{P} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathbf{P}\\(\mathbf{P} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= \mathbf{P} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - (\mathbf{P} \mathbf{P})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{P} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathbf{P}^2 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-power}{\text{Definition~2 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{P} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathbf{P} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(} \mathbf{P} \text{ is idempotent)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_p, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} - \mathbf{P} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \in \mathcal{N}(\mathbf{P})\\. Since \\\mathbf{P} = {\mathbf{P}}^{\top}\\,
>
> \\ \begin{aligned} \mathcal{N}(\mathbf{P}) &= \mathcal{N}({\mathbf{P}}^{\top}) \\ &= \mathcal{C}(\mathbf{P})^\perp \end{aligned} \\
>
> ([Theorem 7 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-complement-null-space)). By the uniqueness in [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum), \\\mathbf{P} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is the orthogonal projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto \\\mathcal{C}(\mathbf{P})\\.
>
> **Part 2.** The orthogonal projection of a vector onto \\\mathcal{S}\\ is unique ([Definition 3](#def-orthogonal-projection)), so \\\mathbf{P}\_1 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j = \mathbf{P}\_2 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\\ for each indicator vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\\ ([Definition 18 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)). \\\mathbf{P}\_1 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\\ is column \\j\\ of \\\mathbf{P}\_1\\: by [Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns) it is the combination of the columns of \\\mathbf{P}\_1\\ with coefficients the entries of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_j\\, which are \\1\\ in place \\j\\ and \\0\\ elsewhere ([Definition 18 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)). Likewise for \\\mathbf{P}\_2\\, so the two matrices have the same columns.

> **NOTE:**
>
> **Example 8 (Two routes to the same projection matrix)** The matrix \\\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ of [Example 12 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-projection-matrix) is an orthogonal projection matrix, and its column space is \\\operatorname{span}\mathopen{}\left\\(1, 0)\right\\\mathclose{}\\, the horizontal axis. By part 1, \\\mathbf{P}(v_1, v_2) = (v_1, 0)\\ is the orthogonal projection onto that axis: the remainder \\(0, v_2)\\ is orthogonal to \\(1, 0)\\. The vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 = (1, 0)\\ has length \\1\\ and spans the axis, so it is an orthonormal basis of it, and with \\\mathbf{B} = \[\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1\]\\,
>
> \\ \begin{aligned} \mathbf{B} {\mathbf{B}}^{\top} &= \begin{bmatrix} 1 \\ 0 \end{bmatrix} \begin{bmatrix} 1 & 0 \end{bmatrix} \\ &= \mathbf{P}, \end{aligned} \\
>
> as part 2 and [Theorem 4](#thm-projector-onb) require.
>
> The oblique projection \\\mathbf{Q} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}\\ of [Example 12 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-projection-matrix) also maps every vector into the horizontal axis. It sends \\(0, 1)\\ to \\(1, 0)\\, but the remainder \\(0, 1) - (1, 0) = (-1, 1)\\ is not orthogonal to the axis, so \\(1, 0)\\ is not the orthogonal projection of \\(0, 1)\\ onto the axis, which is \\\mathbf{P}(0, 1) = (0, 0)\\.

> **NOTE:**
>
> **Theorem 6 (The hat matrix projects onto the column space of the design matrix)** If \\\mathbf{X}\\ is an \\n \times p\\ design matrix with \\\operatorname{rank}(\mathbf{X}) = p\\, then for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^n\\, \\\mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ ([Definition 2](#def-hat-matrix)) is the orthogonal projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto \\\mathcal{C}(\mathbf{X})\\. So \\\mathbf{H} = \mathbf{Q} {\mathbf{Q}}^{\top}\\ for any \\n \times p\\ matrix \\\mathbf{Q}\\ whose columns are an orthonormal basis of \\\mathcal{C}(\mathbf{X})\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{H}\\ is an orthogonal projection matrix ([Theorem 2](#thm-hat-matrix)), so \\\mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is the orthogonal projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto \\\mathcal{C}(\mathbf{H})\\ ([Theorem 5](#thm-projection-matrix-projects), part 1). It remains to show \\\mathcal{C}(\mathbf{H}) = \mathcal{C}(\mathbf{X})\\.
>
> **\\\mathcal{C}(\mathbf{H}) \subseteq \mathcal{C}(\mathbf{X})\\.** \\\mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} = \mathbf{X}\\\mathopen{}\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1} {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\right)\mathclose{}\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), which is in \\\mathcal{C}(\mathbf{X})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)).
>
> **\\\mathcal{C}(\mathbf{X}) \subseteq \mathcal{C}(\mathbf{H})\\.** First,
>
> \\ \begin{aligned} \mathbf{H} \mathbf{X} &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1} {\mathbf{X}}^{\top} \mathbf{X} && \text{(}\href{#def-hat-matrix}{\text{Definition~2}}\text{)} \\ &= \mathbf{X}\\\mathopen{}\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1} ({\mathbf{X}}^{\top}\mathbf{X})\right)\mathclose{} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{X}\\\mathbf{I}\_p && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{X}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \end{aligned} \\
>
> So for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^p\\, \\\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (\mathbf{H} \mathbf{X})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, since \\\mathbf{H} \mathbf{X}= \mathbf{X}\\, and \\(\mathbf{H} \mathbf{X})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \mathbf{H}\\(\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}})\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), which is in \\\mathcal{C}(\mathbf{H})\\.
>
> \\\mathcal{C}(\mathbf{X})\\ has dimension \\p \ge 1\\ ([Theorem 6 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-dim)), so an orthonormal basis of it has \\p\\ vectors ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)), and \\\mathbf{Q} {\mathbf{Q}}^{\top}\\ also gives the orthogonal projection onto \\\mathcal{C}(\mathbf{X})\\ ([Theorem 4](#thm-projector-onb), with \\n\\ in place of \\p\\ and \\r = p\\). By [Theorem 5](#thm-projection-matrix-projects), part 2, \\\mathbf{H} = \mathbf{Q} {\mathbf{Q}}^{\top}\\.

> **NOTE:**
>
> **Example 9 (The intercept-only hat matrix, from an orthonormal basis)** For the intercept-only design \\\mathbf{X}= \begin{bmatrix} 1 \\ 1 \end{bmatrix}\\ of [Example 2](#exm-hat-matrix), \\\mathcal{C}(\mathbf{X}) = \operatorname{span}\mathopen{}\left\\(1, 1)\right\\\mathclose{}\\, with orthonormal basis \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1)\\, since
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1\right\rVert\mathclose{} &= \sqrt{\tfrac{1}{2} + \tfrac{1}{2}} \\ &= 1. \end{aligned} \\
>
> With \\\mathbf{Q} = \[\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1\]\\,
>
> \\ \begin{aligned} \mathbf{Q} {\mathbf{Q}}^{\top} &= \tfrac{1}{2} \begin{bmatrix} 1 \\ 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \end{bmatrix} \\ &= \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}, \end{aligned} \\
>
> the hat matrix found in [Example 2](#exm-hat-matrix). The fitted values \\(\bar{y}, \bar{y})\\ are the closest point to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ on the line of constant vectors ([Theorem 3](#thm-closest-point)), and the residuals \\(y_1 - \bar{y}, y_2 - \bar{y})\\ are orthogonal to \\(1, 1)\\:
>
> \\ \begin{aligned} (1, 1) \cdot (y_1 - \bar{y}, y_2 - \bar{y}) &= y_1 + y_2 - 2\bar{y} \\ &= 0, \end{aligned} \\
>
> since \\2\bar{y} = y_1 + y_2\\.

### 1.2 Generalized inverses and linear systems

> **NOTE:**
>
> This section is adapted from Zhou [\[5\]](#ref-zhou2024matinv), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source defers the existence of the Moore-Penrose inverse to the singular value decomposition; the proof here builds it from a rank factorization ([Theorem 15 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-factorization)) instead, and the section adds the projection \\\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top}\\ for any generalized inverse \\\mathbf{G}\\ of \\{\mathbf{X}}^{\top} \mathbf{X}\\, which the source does not cover. [Theorem 13](#thm-moore-penrose-full-rank) restores the source’s formulas for the Moore-Penrose inverse of a matrix of full column rank or full row rank, and the fourth equivalent statement in [Theorem 14](#thm-consistency) restores the source’s rank test for consistency. These parts of the source are not part of this section:
>
> - the QR forms of the full-rank formulas
> - \\\operatorname{rank}(\mathbf{A}^-) \ge \operatorname{rank}(\mathbf{A})\\, \\\mathcal{C}(\mathbf{A}) = \mathcal{C}(\mathbf{A}\mathbf{A}^-)\\, \\\operatorname{rank}(\mathbf{A}) = \operatorname{rank}(\mathbf{A}\mathbf{A}^-) = \operatorname{rank}(\mathbf{A}^-\mathbf{A})\\, and \\\operatorname{rank}(\mathbf{A}^+) = \operatorname{rank}(\mathbf{A})\\
> - the remarks that \\\mathbf{A}\mathbf{A}^-\\ and \\\mathbf{A}^-\mathbf{A}\\ are projections, oblique in general and orthogonal for \\\mathbf{A}^+\\
> - the reflexive generalized inverse (conditions 1 and 2 alone), and the generalized inverses of \\{\mathbf{A}}^{\top}\\ and \\k\mathbf{A}\\
> - the operation counts for the triangular solves, LU and QR, and the comparison of the Cholesky factorization with LU

> **NOTE:**
>
> **Theorem 7 (A scalar factor passes through a matrix product)** For an \\m \times k\\ matrix \\\mathbf{A}\\, a \\k \times n\\ matrix \\\mathbf{B}\\ and a number \\c\\,
>
> \\ \begin{aligned} \mathbf{A}\\(c\\\mathbf{B}) &= c\\(\mathbf{A} \mathbf{B}) \\ &= (c\\\mathbf{A})\\\mathbf{B}. \end{aligned} \\
>
> In particular, \\\mathbf{A}\\(\mathbf{B} - \mathbf{C}) = \mathbf{A} \mathbf{B} - \mathbf{A} \mathbf{C}\\ and \\(\mathbf{B} - \mathbf{C})\\\mathbf{D} = \mathbf{B} \mathbf{D} - \mathbf{C} \mathbf{D}\\ for matrices of compatible sizes, where \\\mathbf{B} - \mathbf{C} = \mathbf{B} + (-1)\\\mathbf{C}\\ ([Theorem 4 in Matrices](linear-algebra-matrices.llms.md#thm-matadd-inverse), [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-scalar-mult)).

> **NOTE:**
>
> *Proof*. **\\\mathbf{A}\\(c\\\mathbf{B}) = c\\(\mathbf{A} \mathbf{B})\\.** For each entry \\(i, j)\\,
>
> \\ \begin{aligned} \mathopen{}\left(\mathbf{A}\\(c\\\mathbf{B})\right)\mathclose{}\_{ij} &= \sum\_{l=1}^{k} a\_{il}\\(c\\\mathbf{B})\_{lj} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \\ &= \sum\_{l=1}^{k} a\_{il}\\(c\\b\_{lj}) && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{)} \\ &= \sum\_{l=1}^{k} c\\(a\_{il}\\b\_{lj}) && \text{(reorder the product of numbers)} \\ &= c \sum\_{l=1}^{k} a\_{il}\\b\_{lj} && \text{(factor } c \text{ out of the sum)} \\ &= c\\(\mathbf{A} \mathbf{B})\_{ij} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \\ &= \mathopen{}\left(c\\(\mathbf{A} \mathbf{B})\right)\mathclose{}\_{ij}. && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{)} \end{aligned} \\
>
> **\\(c\\\mathbf{A})\\\mathbf{B} = c\\(\mathbf{A} \mathbf{B})\\.** For each entry \\(i, j)\\,
>
> \\ \begin{aligned} \mathopen{}\left((c\\\mathbf{A})\\\mathbf{B}\right)\mathclose{}\_{ij} &= \sum\_{l=1}^{k} (c\\a\_{il})\\b\_{lj} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{, }\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{)} \\ &= c \sum\_{l=1}^{k} a\_{il}\\b\_{lj} && \text{(factor } c \text{ out of the sum)} \\ &= \mathopen{}\left(c\\(\mathbf{A} \mathbf{B})\right)\mathclose{}\_{ij}. && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{, }\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{)} \end{aligned} \\
>
> **Differences.**
>
> \\ \begin{aligned} \mathbf{A}\\(\mathbf{B} - \mathbf{C}) &= \mathbf{A}\\(\mathbf{B} + (-1)\\\mathbf{C}) && \text{(the difference as a sum)} \\ &= \mathbf{A} \mathbf{B} + \mathbf{A}\\((-1)\\\mathbf{C}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-distrib}{\text{Theorem~6 in Matrices}}\text{)} \\ &= \mathbf{A} \mathbf{B} + (-1)\\(\mathbf{A} \mathbf{C}) && \text{(first part)} \\ &= \mathbf{A} \mathbf{B} - \mathbf{A} \mathbf{C}, && \text{(the difference as a sum)} \end{aligned} \\
>
> and \\(\mathbf{B} - \mathbf{C})\\\mathbf{D} = \mathbf{B} \mathbf{D} - \mathbf{C} \mathbf{D}\\ the same way, using the second law in [Theorem 6 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-distrib) and the second part. A column vector is a matrix with one column, so all of this applies with \\\mathbf{B}\\, \\\mathbf{C}\\ or \\\mathbf{D}\\ a vector.

> **NOTE:**
>
> **Example 10 (Pulling a scalar out of a product)** With \\\mathbf{A} = \begin{bmatrix} 1 & 2 \end{bmatrix}\\ and \\\mathbf{B} = \begin{bmatrix} 3 \\ 4 \end{bmatrix}\\:
>
> \\ \begin{aligned} \mathbf{A}\\(2\\\mathbf{B}) &= \begin{bmatrix} 1 & 2 \end{bmatrix} \begin{bmatrix} 6 \\ 8 \end{bmatrix} \\ &= 22, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} 2\\(\mathbf{A} \mathbf{B}) &= 2\\(3 + 8) \\ &= 22. \end{aligned} \\

> **NOTE:**
>
> **Definition 4 (Generalized inverse)** A **generalized inverse** [\[6\]](#ref-wikipedia_generalized_inverse) of an \\m \times n\\ matrix \\\mathbf{A}\\ is an \\n \times m\\ matrix \\\mathbf{G}\\ such that
>
> \\ \underbrace{\mathbf{A}}\_{m \times n}\\ \underbrace{\mathbf{G}}\_{n \times m}\\ \underbrace{\mathbf{A}}\_{m \times n} = \mathbf{A}. \\

> **NOTE:**
>
> **Example 11 (A matrix with many generalized inverses)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ and \\\mathbf{G} = \begin{bmatrix} g\_{11} & g\_{12} \\ g\_{21} & g\_{22} \end{bmatrix}\\. Then
>
> \\ \begin{aligned} \mathbf{A} \mathbf{G} \mathbf{A} &= \begin{bmatrix} g\_{11} & g\_{12} \\ 0 & 0 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{, for } \mathbf{A} \mathbf{G} \text{)} \\ &= \begin{bmatrix} g\_{11} & 0 \\ 0 & 0 \end{bmatrix}, && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \end{aligned} \\
>
> which equals \\\mathbf{A}\\ exactly when \\g\_{11} = 1\\. So every matrix \\\begin{bmatrix} 1 & g\_{12} \\ g\_{21} & g\_{22} \end{bmatrix}\\ is a generalized inverse of \\\mathbf{A}\\: a generalized inverse need not be unique. The zero matrix is not one, since its \\(1, 1)\\ entry is \\0\\.

> **NOTE:**
>
> **Theorem 8 (An invertible matrix has only one generalized inverse)** If \\\mathbf{A}\\ is an invertible \\p \times p\\ matrix ([Definition 6 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-invertible-matrix)), its only generalized inverse is \\\mathbf{A}^{-1}\\.

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathbf{A} \mathbf{A}^{-1} \mathbf{A} &= \mathbf{I}\_p \mathbf{A} \\ &= \mathbf{A} \end{aligned} \\
>
> ([Definition 5 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-matrix-inverse), [Theorem 8 in Matrices](linear-algebra-matrices.llms.md#thm-identity)), so \\\mathbf{A}^{-1}\\ is a generalized inverse. If \\\mathbf{G}\\ is any generalized inverse, then
>
> \\ \begin{aligned} \mathbf{G} &= \mathbf{I}\_p\\\mathbf{G}\\\mathbf{I}\_p && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \\ &= (\mathbf{A}^{-1} \mathbf{A})\\\mathbf{G}\\(\mathbf{A} \mathbf{A}^{-1}) && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{A}^{-1}\\(\mathbf{A} \mathbf{G} \mathbf{A})\\\mathbf{A}^{-1} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A}^{-1} \mathbf{A} \mathbf{A}^{-1} && \text{(}\href{#def-generalized-inverse}{\text{Definition~4}}\text{)} \\ &= \mathbf{I}\_p\\\mathbf{A}^{-1} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{A}^{-1}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 12 (The generalized inverse of an invertible matrix)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ of [Example 5 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-invertible-matrix), the only generalized inverse is \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\. The matrix of [Example 11](#exm-generalized-inverse), by contrast, has infinitely many, so by [Theorem 8](#thm-generalized-inverse-invertible) it is singular.

> **NOTE:**
>
> **Theorem 9 (A generalized inverse solves every solvable system)** Let \\\mathbf{A}\\ be \\m \times n\\, let \\\mathbf{G}\\ be a generalized inverse of \\\mathbf{A}\\ ([Definition 4](#def-generalized-inverse)), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\. If \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ has a solution, then \\\mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is a solution.

> **NOTE:**
>
> *Proof*. Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0\\ be a solution, so \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0 = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\. Then
>
> \\ \begin{aligned} \mathbf{A}\\(\mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) &= \mathbf{A} \mathbf{G}\\(\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0) && \text{(substitute } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0 \text{)} \\ &= (\mathbf{A} \mathbf{G} \mathbf{A})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0 && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0 && \text{(}\href{#def-generalized-inverse}{\text{Definition~4}}\text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}. && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0 \text{ is a solution)} \end{aligned} \\

> **NOTE:**
>
> **Example 13 (Solving with a generalized inverse)** With \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ and its generalized inverse \\\mathbf{G} = \begin{bmatrix} 1 & 5 \\ 7 & 0 \end{bmatrix}\\ ([Example 11](#exm-generalized-inverse)), the system \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (2, 0)\\ has the solution \\(2, 0)\\, and \\\mathbf{G}\\(2, 0) = (2, 14)\\ is a solution too: \\\mathbf{A}\\(2, 14) = (2, 0)\\. The system \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (2, 1)\\ has no solution, since the second entry of \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is always \\0\\; there \\\mathbf{G}\\(2, 1) = (7, 14)\\ gives \\\mathbf{A}\\(7, 14) = (7, 0) \ne (2, 1)\\.

> **NOTE:**
>
> **Definition 5 (Moore-Penrose inverse)** A **Moore-Penrose inverse** [\[7\]](#ref-wikipedia_moore_penrose_inverse) of an \\m \times n\\ matrix \\\mathbf{A}\\ is an \\n \times m\\ matrix \\\mathbf{G}\\ satisfying all four conditions
>
> 1.  \\\mathbf{A} \mathbf{G} \mathbf{A} = \mathbf{A}\\;
> 2.  \\\mathbf{G} \mathbf{A} \mathbf{G} = \mathbf{G}\\;
> 3.  \\{(\mathbf{A} \mathbf{G})}^{\top} = \mathbf{A} \mathbf{G}\\;
> 4.  \\{(\mathbf{G} \mathbf{A})}^{\top} = \mathbf{G} \mathbf{A}\\.

> **NOTE:**
>
> **Example 14 (Checking the four conditions)** For \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\, the matrix \\\mathbf{G} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ satisfies all four:
>
> \\ \begin{aligned} \mathbf{A} \mathbf{G} &= \mathbf{G} \mathbf{A} \\ &= \mathbf{A} \end{aligned} \\
>
> and \\\mathbf{A}^2 = \mathbf{A}\\, so conditions 1 and 2 read \\\mathbf{A} = \mathbf{A}\\, and conditions 3 and 4 hold because \\\mathbf{A}\\ is symmetric.
>
> The generalized inverse \\\mathbf{G}' = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}\\ of \\\mathbf{A}\\ ([Example 11](#exm-generalized-inverse)) is not a Moore-Penrose inverse: \\\mathbf{A} \mathbf{G}' = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}\\, which is not symmetric, so condition 3 fails.

> **NOTE:**
>
> **Theorem 10 (A Moore-Penrose inverse is a generalized inverse)** If \\\mathbf{G}\\ is a Moore-Penrose inverse of an \\m \times n\\ matrix \\\mathbf{A}\\ ([Definition 5](#def-moore-penrose)), then \\\mathbf{G}\\ is a generalized inverse of \\\mathbf{A}\\ ([Definition 4](#def-generalized-inverse)).

> **NOTE:**
>
> *Proof*. A generalized inverse of \\\mathbf{A}\\ is an \\n \times m\\ matrix \\\mathbf{G}\\ with \\\mathbf{A}\mathbf{G}\mathbf{A} = \mathbf{A}\\. A Moore-Penrose inverse is an \\n \times m\\ matrix, and condition 1 of [Definition 5](#def-moore-penrose) is \\\mathbf{A}\mathbf{G}\mathbf{A} = \mathbf{A}\\.

> **NOTE:**
>
> **Example 15 (The Moore-Penrose inverse of a rank-one matrix)** The \\3 \times 2\\ matrix \\\mathbf{A}\\ below has rank \\1\\, because its second column is twice its first, so it has no ordinary inverse. The function [`MASS::ginv()`](https://rdrr.io/pkg/MASS/man/ginv.html) computes its Moore-Penrose inverse \\\mathbf{G}\\. The code checks the four conditions of [Definition 5](#def-moore-penrose), of which the first is the equation that makes \\\mathbf{G}\\ a generalized inverse.
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
> All 4 of 4 conditions hold, so \\\mathbf{G}\\ is a Moore-Penrose inverse of \\\mathbf{A}\\. By [Theorem 10](#thm-moore-penrose-generalized-inverse) it is also a generalized inverse, which is condition 1: \\\mathbf{A}\mathbf{G}\mathbf{A} = \mathbf{A}\\ up to rounding error.

> **NOTE:**
>
> **Theorem 11 (A matrix has at most one Moore-Penrose inverse)** If \\\mathbf{G}\_1\\ and \\\mathbf{G}\_2\\ are both Moore-Penrose inverses of an \\m \times n\\ matrix \\\mathbf{A}\\ ([Definition 5](#def-moore-penrose)), then \\\mathbf{G}\_1 = \mathbf{G}\_2\\.

> **NOTE:**
>
> *Proof*. **\\\mathbf{A} \mathbf{G}\_1 = \mathbf{A} \mathbf{G}\_2\\.**
>
> \\ \begin{aligned} \mathbf{A} \mathbf{G}\_1 &= {(\mathbf{A} \mathbf{G}\_1)}^{\top} && \text{(condition 3 for } \mathbf{G}\_1 \text{)} \\ &= {\mathbf{G}\_1}^{\top}\\{\mathbf{A}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{)} \\ &= {\mathbf{G}\_1}^{\top}\\{(\mathbf{A} \mathbf{G}\_2 \mathbf{A})}^{\top} && \text{(condition 1 for } \mathbf{G}\_2 \text{)} \\ &= {\mathbf{G}\_1}^{\top}\\{\mathbf{A}}^{\top}\\{\mathbf{G}\_2}^{\top}\\{\mathbf{A}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{, twice)} \\ &= ({\mathbf{G}\_1}^{\top}\\{\mathbf{A}}^{\top})\\({\mathbf{G}\_2}^{\top}\\{\mathbf{A}}^{\top}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {(\mathbf{A} \mathbf{G}\_1)}^{\top}\\{(\mathbf{A} \mathbf{G}\_2)}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{, twice)} \\ &= (\mathbf{A} \mathbf{G}\_1)(\mathbf{A} \mathbf{G}\_2) && \text{(condition 3 for } \mathbf{G}\_1 \text{ and } \mathbf{G}\_2 \text{)} \\ &= (\mathbf{A} \mathbf{G}\_1 \mathbf{A})\\\mathbf{G}\_2 && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A} \mathbf{G}\_2. && \text{(condition 1 for } \mathbf{G}\_1 \text{)} \end{aligned} \\
>
> **\\\mathbf{G}\_1 \mathbf{A} = \mathbf{G}\_2 \mathbf{A}\\.**
>
> \\ \begin{aligned} \mathbf{G}\_1 \mathbf{A} &= {(\mathbf{G}\_1 \mathbf{A})}^{\top} && \text{(condition 4 for } \mathbf{G}\_1 \text{)} \\ &= {\mathbf{A}}^{\top}\\{\mathbf{G}\_1}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{)} \\ &= {(\mathbf{A} \mathbf{G}\_2 \mathbf{A})}^{\top}\\{\mathbf{G}\_1}^{\top} && \text{(condition 1 for } \mathbf{G}\_2 \text{)} \\ &= {\mathbf{A}}^{\top}\\{\mathbf{G}\_2}^{\top}\\{\mathbf{A}}^{\top}\\{\mathbf{G}\_1}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{, twice)} \\ &= ({\mathbf{A}}^{\top}\\{\mathbf{G}\_2}^{\top})\\({\mathbf{A}}^{\top}\\{\mathbf{G}\_1}^{\top}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {(\mathbf{G}\_2 \mathbf{A})}^{\top}\\{(\mathbf{G}\_1 \mathbf{A})}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{, twice)} \\ &= (\mathbf{G}\_2 \mathbf{A})(\mathbf{G}\_1 \mathbf{A}) && \text{(condition 4 for } \mathbf{G}\_2 \text{ and } \mathbf{G}\_1 \text{)} \\ &= \mathbf{G}\_2\\(\mathbf{A} \mathbf{G}\_1 \mathbf{A}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{G}\_2 \mathbf{A}. && \text{(condition 1 for } \mathbf{G}\_1 \text{)} \end{aligned} \\
>
> **Conclusion.**
>
> \\ \begin{aligned} \mathbf{G}\_1 &= \mathbf{G}\_1 \mathbf{A} \mathbf{G}\_1 && \text{(condition 2 for } \mathbf{G}\_1 \text{)} \\ &= \mathbf{G}\_1\\(\mathbf{A} \mathbf{G}\_1) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{G}\_1\\(\mathbf{A} \mathbf{G}\_2) && \text{(the first step)} \\ &= (\mathbf{G}\_1 \mathbf{A})\\\mathbf{G}\_2 && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= (\mathbf{G}\_2 \mathbf{A})\\\mathbf{G}\_2 && \text{(the second step)} \\ &= \mathbf{G}\_2 \mathbf{A} \mathbf{G}\_2 && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{G}\_2. && \text{(condition 2 for } \mathbf{G}\_2 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 16 (Only one of the many generalized inverses qualifies)** The matrix \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ has infinitely many generalized inverses \\\begin{bmatrix} 1 & g\_{12} \\ g\_{21} & g\_{22} \end{bmatrix}\\ ([Example 11](#exm-generalized-inverse)), and \\\begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ is a Moore-Penrose inverse ([Example 14](#exm-moore-penrose)). By [Theorem 11](#thm-moore-penrose-unique) it is the only one, so every other choice of \\g\_{12}, g\_{21}, g\_{22}\\ breaks condition 2, 3 or 4. For instance, \\g\_{21} = 1\\ (the rest \\0\\) gives \\\mathbf{G} \mathbf{A} = \begin{bmatrix} 1 & 0 \\ 1 & 0 \end{bmatrix}\\, which is not symmetric.

> **NOTE:**
>
> **Theorem 12 (Every matrix has a Moore-Penrose inverse)** Every \\m \times n\\ matrix \\\mathbf{A}\\ has a Moore-Penrose inverse ([Definition 5](#def-moore-penrose)), written \\\mathbf{A}^+\\; it is unique by [Theorem 11](#thm-moore-penrose-unique).
>
> - If \\\mathbf{A} = \mathbf{0}\_{m \times n}\\, then \\\mathbf{A}^+ = \mathbf{0}\_{n \times m}\\.
> - If \\\operatorname{rank}(\mathbf{A}) = r \ge 1\\ and \\\mathbf{A} = \mathbf{C} \mathbf{R}\\ is a rank factorization ([Definition 11 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-rank-factorization)), then
>
> \\ \underbrace{\mathbf{A}^+}\_{n \times m} = \underbrace{{\mathbf{R}}^{\top}}\_{n \times r} \underbrace{(\mathbf{R} {\mathbf{R}}^{\top})^{-1}}\_{r \times r} \underbrace{({\mathbf{C}}^{\top} \mathbf{C})^{-1}}\_{r \times r} \underbrace{{\mathbf{C}}^{\top}}\_{r \times m}. \\

> **NOTE:**
>
> *Proof*. **The two cases cover every matrix.** If \\\mathbf{A} \ne \mathbf{0}\_{m \times n}\\, it has a nonzero column, which is linearly independent on its own (\\c\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ forces \\c = 0\\), so \\\operatorname{rank}(\mathbf{A}) \ge 1\\ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)).
>
> **The zero matrix.** With \\\mathbf{A} = \mathbf{0}\_{m \times n}\\ and \\\mathbf{G} = \mathbf{0}\_{n \times m}\\, every product in conditions 1 to 4 is a zero matrix, and a zero matrix equals its own transpose, so all four conditions hold.
>
> **The two inverses exist.** Now suppose \\\operatorname{rank}(\mathbf{A}) = r \ge 1\\. A rank factorization exists ([Theorem 15 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-factorization)). \\\mathbf{C}\\ is \\m \times r\\ and \\\mathbf{R}\\ is \\r \times n\\. Both have rank \\r\\:
>
> \\ \begin{aligned} r &= \operatorname{rank}(\mathbf{C} \mathbf{R}) && \text{(} \mathbf{A} = \mathbf{C} \mathbf{R} \text{)} \\ &\le \operatorname{rank}(\mathbf{C}) && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-product}{\text{Theorem~8 in Column Space, Null Space and Rank-Nullity}}\text{)} \\ &\le r, && \text{(}\href{linear-algebra-rank-nullity.qmd#cor-rank-bound}{\text{Corollary~1 in Column Space, Null Space and Rank-Nullity}}\text{, } \mathbf{C} \text{ has } r \text{ columns)} \end{aligned} \\
>
> and, using \\{(\mathbf{C} \mathbf{R})}^{\top} = {\mathbf{R}}^{\top} {\mathbf{C}}^{\top}\\ ([Theorem 17 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product)),
>
> \\ \begin{aligned} r &= \operatorname{rank}\mathopen{}\left({\mathbf{R}}^{\top} {\mathbf{C}}^{\top}\right)\mathclose{} && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-transpose}{\text{Theorem~9 in Column Space, Null Space and Rank-Nullity}}\text{)} \\ &\le \operatorname{rank}({\mathbf{R}}^{\top}) && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-product}{\text{Theorem~8 in Column Space, Null Space and Rank-Nullity}}\text{)} \\ &\le r. && \text{(}\href{linear-algebra-rank-nullity.qmd#cor-rank-bound}{\text{Corollary~1 in Column Space, Null Space and Rank-Nullity}}\text{, } {\mathbf{R}}^{\top} \text{ has } r \text{ columns)} \end{aligned} \\
>
> So \\\mathbf{C}\\ and \\{\mathbf{R}}^{\top}\\ have full column rank \\r\\, and \\{\mathbf{C}}^{\top} \mathbf{C}\\ and \\\mathbf{R} {\mathbf{R}}^{\top} = {({\mathbf{R}}^{\top})}^{\top}\\{\mathbf{R}}^{\top}\\ are invertible ([Theorem 1](#thm-gram-invertible)). They are symmetric:
>
> \\ \begin{aligned} {({\mathbf{C}}^{\top} \mathbf{C})}^{\top} &= {\mathbf{C}}^{\top}\\{({\mathbf{C}}^{\top})}^{\top} \\ &= {\mathbf{C}}^{\top} \mathbf{C} \end{aligned} \\
>
> ([Theorem 17 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product), [Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)), and likewise for \\\mathbf{R} {\mathbf{R}}^{\top}\\. Write \\\mathbf{S} \stackrel{\text{def}}{=}(\mathbf{R} {\mathbf{R}}^{\top})^{-1}\\ and \\\mathbf{T} \stackrel{\text{def}}{=}({\mathbf{C}}^{\top} \mathbf{C})^{-1}\\, both symmetric ([Corollary 1 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric)), and \\\mathbf{G} \stackrel{\text{def}}{=}{\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top}\\.
>
> **Two products.**
>
> \\ \begin{aligned} \mathbf{A} \mathbf{G} &= \mathbf{C} \mathbf{R}\\{\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top} && \text{(substitute } \mathbf{A} \text{ and } \mathbf{G} \text{)} \\ &= \mathbf{C}\\(\mathbf{R} {\mathbf{R}}^{\top})\\\mathbf{S}\\\mathbf{T} {\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{C}\\\mathbf{I}\_r\\\mathbf{T} {\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top}, && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \end{aligned} \\
>
> \\ \begin{aligned} \mathbf{G} \mathbf{A} &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top}\\\mathbf{C} \mathbf{R} && \text{(substitute } \mathbf{G} \text{ and } \mathbf{A} \text{)} \\ &= {\mathbf{R}}^{\top} \mathbf{S}\\\mathbf{T}\\({\mathbf{C}}^{\top} \mathbf{C})\\\mathbf{R} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top} \mathbf{S}\\\mathbf{I}\_r\\\mathbf{R} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{R}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \end{aligned} \\
>
> **Conditions 3 and 4.**
>
> \\ \begin{aligned} {(\mathbf{A} \mathbf{G})}^{\top} &= {(\mathbf{C} \mathbf{T} {\mathbf{C}}^{\top})}^{\top} && \text{(first product)} \\ &= {\mathopen{}\left(\mathbf{C}\\(\mathbf{T} {\mathbf{C}}^{\top})\right)\mathclose{}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {(\mathbf{T} {\mathbf{C}}^{\top})}^{\top}\\{\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{)} \\ &= {({\mathbf{C}}^{\top})}^{\top}\\{\mathbf{T}}^{\top}\\{\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{)} \\ &= \mathbf{C}\\{\mathbf{T}}^{\top}\\{\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \\ &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top}, && \text{(} \mathbf{T} \text{ is symmetric)} \end{aligned} \\
>
> \\ \begin{aligned} {(\mathbf{G} \mathbf{A})}^{\top} &= {({\mathbf{R}}^{\top} \mathbf{S} \mathbf{R})}^{\top} && \text{(second product)} \\ &= {\mathopen{}\left({\mathbf{R}}^{\top}\\(\mathbf{S} \mathbf{R})\right)\mathclose{}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {(\mathbf{S} \mathbf{R})}^{\top}\\{({\mathbf{R}}^{\top})}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top}\\{\mathbf{S}}^{\top}\\{({\mathbf{R}}^{\top})}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top}\\{\mathbf{S}}^{\top}\\\mathbf{R} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{R}. && \text{(} \mathbf{S} \text{ is symmetric)} \end{aligned} \\
>
> **Condition 1.**
>
> \\ \begin{aligned} \mathbf{A} \mathbf{G} \mathbf{A} &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top}\\\mathbf{C} \mathbf{R} && \text{(first product)} \\ &= \mathbf{C}\\\mathbf{T}\\({\mathbf{C}}^{\top} \mathbf{C})\\\mathbf{R} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{C}\\\mathbf{I}\_r\\\mathbf{R} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{A}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \end{aligned} \\
>
> **Condition 2.**
>
> \\ \begin{aligned} \mathbf{G} \mathbf{A} \mathbf{G} &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{R}\\{\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top} && \text{(second product)} \\ &= {\mathbf{R}}^{\top}\\\mathbf{S}\\(\mathbf{R} {\mathbf{R}}^{\top})\\\mathbf{S}\\\mathbf{T} {\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top}\\\mathbf{I}\_r\\\mathbf{S}\\\mathbf{T} {\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{G}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 17 (The Moore-Penrose inverse of a rank-one matrix)** For \\\mathbf{A}\\ in [Example 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-column-space), the rank factorization \\\mathbf{C} = \begin{bmatrix} 1 \\ 3 \end{bmatrix}\\, \\\mathbf{R} = \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}\\ ([Example 25 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-rank-factorization)) gives
>
> \\ \begin{aligned} {\mathbf{C}}^{\top} \mathbf{C} &= 1 + 9 \\ &= 10 \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \mathbf{R} {\mathbf{R}}^{\top} &= 1 + 4 + 4 \\ &= 9, \end{aligned} \\
>
> so
>
> \\ \begin{aligned} \mathbf{A}^+ &= \frac{1}{9 \cdot 10} \begin{bmatrix} 1 \\ -2 \\ -2 \end{bmatrix} \begin{bmatrix} 1 & 3 \end{bmatrix} \\ &= \frac{1}{90} \begin{bmatrix} 1 & 3 \\ -2 & -6 \\ -2 & -6 \end{bmatrix}. \end{aligned} \\
>
> As a check on condition 1,
>
> \\ \begin{aligned} \mathbf{A} \mathbf{A}^+ &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top} \\ &= \frac{1}{10} \begin{bmatrix} 1 & 3 \\ 3 & 9 \end{bmatrix}, \end{aligned} \\
>
> and its first row times \\\mathbf{A}\\ is \\\frac{1}{10}\mathopen{}\left(1 \cdot(1, -2, -2) + 3 \cdot(3, -6, -6)\right)\mathclose{} = (1, -2, -2)\\, the first row of \\\mathbf{A}\\; the second row is \\3\\ times the first, like the second row of \\\mathbf{A}\\.

> **NOTE:**
>
> **Theorem 13 (The Moore-Penrose inverse of a matrix of full column rank or full row rank)** Let \\\mathbf{A}\\ be an \\m \times n\\ [matrix](linear-algebra-matrices.llms.md#def-matrix).
>
> 1.  If \\\mathbf{A}\\ has full column rank ([Definition 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-full-column-rank)), then \\{\mathbf{A}}^{\top} \mathbf{A}\\ is [invertible](linear-algebra-special-matrices.llms.md#def-matrix-inverse) and \\\mathbf{A}^+ = {\mathopen{}\left(({\mathbf{A}}^{\top} \mathbf{A})\right)\mathclose{}}^{-1}\\{\mathbf{A}}^{\top}\\.
> 2.  If \\\operatorname{rank}(\mathbf{A}) = m\\, then \\\mathbf{A} {\mathbf{A}}^{\top}\\ is invertible and \\\mathbf{A}^+ = {\mathbf{A}}^{\top}\\{\mathopen{}\left((\mathbf{A} {\mathbf{A}}^{\top})\right)\mathclose{}}^{-1}\\.

> **NOTE:**
>
> *Proof*. By [Theorem 11](#thm-moore-penrose-unique), it is enough to show that the [matrix](linear-algebra-matrices.llms.md#def-matrix) \\\mathbf{G}\\ named in each part satisfies the four conditions of [Definition 5](#def-moore-penrose).
>
> **Part 1.** \\{\mathbf{A}}^{\top} \mathbf{A}\\ is [invertible](linear-algebra-special-matrices.llms.md#def-matrix-inverse) by [Theorem 1](#thm-gram-invertible). Let \\\mathbf{G} = {\mathopen{}\left(({\mathbf{A}}^{\top} \mathbf{A})\right)\mathclose{}}^{-1}\\{\mathbf{A}}^{\top}\\. Then
>
> \\ \begin{aligned} \mathbf{G} \mathbf{A} &= {\mathopen{}\left(({\mathbf{A}}^{\top} \mathbf{A})\right)\mathclose{}}^{-1}\\{\mathbf{A}}^{\top} \mathbf{A} && \text{(definition of } \mathbf{G} \text{)} \\ &= \mathbf{I}\_n. && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \end{aligned} \\
>
> - Condition 4: \\{(\mathbf{G} \mathbf{A})}^{\top} = {\mathbf{I}\_n}^{\top} = \mathbf{I}\_n = \mathbf{G} \mathbf{A}\\.
> - Condition 1: \\\mathbf{A} \mathbf{G} \mathbf{A} = \mathbf{A} \mathbf{I}\_n = \mathbf{A}\\.
> - Condition 2: \\\mathbf{G} \mathbf{A} \mathbf{G} = \mathbf{I}\_n \mathbf{G} = \mathbf{G}\\.
> - Condition 3: \\{(\mathbf{A} \mathbf{G})}^{\top} = \mathbf{A}\\{\mathopen{}\left({\mathopen{}\left(({\mathbf{A}}^{\top} \mathbf{A})\right)\mathclose{}}^{-1}\right)\mathclose{}}^{\top}\\{\mathbf{A}}^{\top} = \mathbf{A}\\{\mathopen{}\left({({\mathbf{A}}^{\top} \mathbf{A})}^{\top}\right)\mathclose{}}^{-1}\\{\mathbf{A}}^{\top} = \mathbf{A}\\{\mathopen{}\left(({\mathbf{A}}^{\top} \mathbf{A})\right)\mathclose{}}^{-1}\\{\mathbf{A}}^{\top} = \mathbf{A} \mathbf{G}\\, by [Theorem 17 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product), [Theorem 2 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#thm-inverse-transpose), and because \\{\mathbf{A}}^{\top} \mathbf{A}\\ is [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix).
>
> **Part 2.** \\\operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}) = \operatorname{rank}(\mathbf{A}) = m\\ ([Theorem 9 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-transpose)), and \\\mathbf{A} {\mathbf{A}}^{\top}\\ is \\m \times m\\, so it is invertible ([Theorem 1 in Diagonalization and Cholesky](linear-algebra-diagonalization.llms.md#thm-invertible-rank)). Let \\\mathbf{G} = {\mathbf{A}}^{\top}\\{\mathopen{}\left((\mathbf{A} {\mathbf{A}}^{\top})\right)\mathclose{}}^{-1}\\. Then \\\mathbf{A} \mathbf{G} = \mathbf{A} {\mathbf{A}}^{\top}\\{\mathopen{}\left((\mathbf{A} {\mathbf{A}}^{\top})\right)\mathclose{}}^{-1} = \mathbf{I}\_m\\ ([Definition 5 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-matrix-inverse)).
>
> - Condition 3: \\{(\mathbf{A} \mathbf{G})}^{\top} = {\mathbf{I}\_m}^{\top} = \mathbf{I}\_m = \mathbf{A} \mathbf{G}\\.
> - Condition 1: \\\mathbf{A} \mathbf{G} \mathbf{A} = \mathbf{I}\_m \mathbf{A} = \mathbf{A}\\.
> - Condition 2: \\\mathbf{G} \mathbf{A} \mathbf{G} = \mathbf{G} \mathbf{I}\_m = \mathbf{G}\\.
> - Condition 4: \\{(\mathbf{G} \mathbf{A})}^{\top} = {\mathbf{A}}^{\top}\\{\mathopen{}\left({\mathopen{}\left((\mathbf{A} {\mathbf{A}}^{\top})\right)\mathclose{}}^{-1}\right)\mathclose{}}^{\top}\\\mathbf{A} = {\mathbf{A}}^{\top}\\{\mathopen{}\left((\mathbf{A} {\mathbf{A}}^{\top})\right)\mathclose{}}^{-1}\\\mathbf{A} = \mathbf{G} \mathbf{A}\\, by [Theorem 17 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product), [Theorem 2 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#thm-inverse-transpose), and because \\\mathbf{A} {\mathbf{A}}^{\top}\\ is symmetric.

> **NOTE:**
>
> **Example 18 (Moore-Penrose inverses of a column and a row)** The \\2 \times 1\\ [matrix](linear-algebra-matrices.llms.md#def-matrix) \\\mathbf{A} = \begin{bmatrix} 1 \\ 1 \end{bmatrix}\\ has [full column rank](linear-algebra-subspaces.llms.md#def-full-column-rank), and \\{\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 2 \end{bmatrix}\\, so
>
> \\ \begin{aligned} \mathbf{A}^+ &= \tfrac{1}{2} \begin{bmatrix} 1 & 1 \end{bmatrix} \\ &= \begin{bmatrix} \tfrac{1}{2} & \tfrac{1}{2} \end{bmatrix}. \end{aligned} \\
>
> Then \\\mathbf{A}^+ \mathbf{A} = \begin{bmatrix} 1 \end{bmatrix}\\, and \\\mathbf{A} \mathbf{A}^+ = \begin{bmatrix} \tfrac{1}{2} & \tfrac{1}{2} \\ \tfrac{1}{2} & \tfrac{1}{2} \end{bmatrix}\\ is [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix).
>
> The \\1 \times 2\\ matrix \\\mathbf{B} = \begin{bmatrix} 1 & 1 \end{bmatrix}\\ has [rank](linear-algebra-subspaces.llms.md#def-rank) \\1\\, which is its count of rows, and \\\mathbf{B} {\mathbf{B}}^{\top} = \begin{bmatrix} 2 \end{bmatrix}\\, so
>
> \\ \begin{aligned} \mathbf{B}^+ &= \begin{bmatrix} 1 \\ 1 \end{bmatrix} \tfrac{1}{2} \\ &= \begin{bmatrix} \tfrac{1}{2} \\ \tfrac{1}{2} \end{bmatrix}. \end{aligned} \\

> **NOTE:**
>
> **Definition 6 (Consistent linear system)** A linear system ([Definition 14 in Matrices](linear-algebra-matrices.llms.md#def-linear-system)) \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, with \\\mathbf{A}\\ an \\m \times n\\ matrix and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\, is **consistent** [\[8\]](#ref-wikipedia_consistent_and_inconsistent_equations) if it has at least one solution \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \in \mathbb{R}^n\\, and **inconsistent** otherwise.

> **NOTE:**
>
> **Example 19 (A consistent system and an inconsistent one)** With \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\, \\\mathbf{A}\\(x_1, x_2) = (x_1, 0)\\ ([Definition 13 in Matrices](linear-algebra-matrices.llms.md#def-matvec-mult)).
>
> - \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (2, 0)\\ is consistent: \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (2, 0)\\ is a solution.
> - \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (2, 1)\\ is inconsistent: the second entry of \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is always \\0\\, never \\1\\.

> **NOTE:**
>
> **Theorem 14 (When a linear system has a solution)** Let \\\mathbf{A}\\ be \\m \times n\\, let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\, and let \\\mathbf{G}\\ be any generalized inverse of \\\mathbf{A}\\ ([Definition 4](#def-generalized-inverse)). The following statements are equivalent:
>
> 1.  \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is consistent ([Definition 6](#def-consistent-system));
> 2.  \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathcal{C}(\mathbf{A})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space));
> 3.  \\\mathbf{A} \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\;
> 4.  \\\operatorname{rank}\mathopen{}\left(\begin{bmatrix} \mathbf{A} & \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \end{bmatrix}\right)\mathclose{} = \operatorname{rank}(\mathbf{A})\\, where \\\begin{bmatrix} \mathbf{A} & \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \end{bmatrix}\\ is the \\m \times (n + 1)\\ [matrix](linear-algebra-matrices.llms.md#def-matrix) whose last column is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\.

> **NOTE:**
>
> *Proof*. **1 and 2 are equivalent.** Statement 1 says \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ for some \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ ([Definition 6](#def-consistent-system)), and \\\mathcal{C}(\mathbf{A})\\ is the set of vectors \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)), so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is in it exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ for some \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\.
>
> **1 implies 3.** By [Theorem 9](#thm-generalized-inverse-solves), \\\mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is a solution, so \\\mathbf{A}\\(\mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, which is statement 3 ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)).
>
> **3 implies 1.** If \\\mathbf{A} \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is a solution, since \\\mathbf{A}\\(\mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) = (\mathbf{A} \mathbf{G})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)).
>
> **2 and 4 are equivalent.** Every column of \\\mathbf{A}\\ is a column of \\\begin{bmatrix} \mathbf{A} & \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \end{bmatrix}\\, so \\\mathcal{C}(\mathbf{A}) \subseteq \mathcal{C}\mathopen{}\left(\begin{bmatrix} \mathbf{A} & \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \end{bmatrix}\right)\mathclose{}\\.
>
> - If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathcal{C}(\mathbf{A})\\, every combination of the columns of \\\begin{bmatrix} \mathbf{A} & \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \end{bmatrix}\\ is a combination of the columns of \\\mathbf{A}\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)), so the two column spaces ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)) coincide and their [ranks](linear-algebra-subspaces.llms.md#def-rank) agree ([Theorem 6 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-dim)).
> - If the ranks agree, the two column spaces have the same [dimension](linear-algebra-subspaces.llms.md#def-dimension) ([Theorem 6 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-dim)), so they coincide ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim)), and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathcal{C}\mathopen{}\left(\begin{bmatrix} \mathbf{A} & \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \end{bmatrix}\right)\mathclose{} = \mathcal{C}(\mathbf{A})\\.

> **NOTE:**
>
> **Example 20 (Testing consistency with a generalized inverse)** For \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ and the generalized inverse \\\mathbf{G} = \begin{bmatrix} 1 & 5 \\ 7 & 0 \end{bmatrix}\\, \\\mathbf{A} \mathbf{G} = \begin{bmatrix} 1 & 5 \\ 0 & 0 \end{bmatrix}\\.
>
> - \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (2, 0)\\:
>
>   \\ \begin{aligned} \mathbf{A} \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} &= (2, 0) \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}, \end{aligned} \\
>
>   so the system is consistent.
>
> - \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (2, 1)\\: \\\mathbf{A} \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (7, 0) \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, so it is not, as [Example 13](#exm-generalized-inverse-solves) found directly.
>
> Item 4 agrees. \\\mathbf{A}\\ has [rank](linear-algebra-subspaces.llms.md#def-rank) \\1\\. For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (2, 0)\\, \\\begin{bmatrix} \mathbf{A} & \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \end{bmatrix} = \begin{bmatrix} 1 & 0 & 2 \\ 0 & 0 & 0 \end{bmatrix}\\ also has rank \\1\\. For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (2, 1)\\, \\\begin{bmatrix} \mathbf{A} & \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \end{bmatrix} = \begin{bmatrix} 1 & 0 & 2 \\ 0 & 0 & 1 \end{bmatrix}\\ has rank \\2\\, because \\(1, 0)\\ and \\(2, 1)\\ are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent).

> **NOTE:**
>
> **Theorem 15 (All solutions of a linear system)** Let \\\mathbf{A}\\ be \\m \times n\\ with a generalized inverse \\\mathbf{G}\\ ([Definition 4](#def-generalized-inverse)).
>
> 1.  \\\mathcal{N}(\mathbf{A}) = \mathcal{C}(\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\: \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ solves \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_m\\ exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\\ for some \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}} \in \mathbb{R}^n\\.
> 2.  If \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is consistent ([Definition 6](#def-consistent-system)), then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is a solution exactly when \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} + (\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}} \quad \text{for some } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}} \in \mathbb{R}^n: \\ one particular solution plus a vector of \\\mathcal{N}(\mathbf{A})\\.

> **NOTE:**
>
> *Proof*. **Part 1.** First,
>
> \\ \begin{aligned} \mathbf{A}\\(\mathbf{I}\_n - \mathbf{G} \mathbf{A}) &= \mathbf{A} \mathbf{I}\_n - \mathbf{A}\\(\mathbf{G} \mathbf{A}) && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~7}}\text{)} \\ &= \mathbf{A} \mathbf{I}\_n - \mathbf{A} \mathbf{G} \mathbf{A} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A} - \mathbf{A} \mathbf{G} \mathbf{A} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \\ &= \mathbf{A} - \mathbf{A} && \text{(}\href{#def-generalized-inverse}{\text{Definition~4}}\text{)} \\ &= \mathbf{0}\_{m \times n}, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\mathbf{A}\\(\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_m\\ for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), and \\\mathcal{C}(\mathbf{I}\_n - \mathbf{G} \mathbf{A}) \subseteq \mathcal{N}(\mathbf{A})\\. Conversely, if \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_m\\, then
>
> \\ \begin{aligned} (\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= \mathbf{I}\_n \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - (\mathbf{G} \mathbf{A})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~7}}\text{, with } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \text{ as the last factor)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - (\mathbf{G} \mathbf{A})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathbf{G}\\(\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathbf{G}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_m && \text{(} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_m \text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, && \text{(} \mathbf{G}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_m = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_n \text{)} \end{aligned} \\
>
> so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is in \\\mathcal{C}(\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\, with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\.
>
> **Part 2.** \\\mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is a solution ([Theorem 9](#thm-generalized-inverse-solves)). For any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\,
>
> \\ \begin{aligned} \mathbf{A}\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) &= \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathbf{A}\\(\mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathbf{A} \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}, && \text{(}\href{#thm-consistency}{\text{Theorem~14}}\text{, statement 3)} \end{aligned} \\
>
> so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ solves \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathcal{N}(\mathbf{A})\\, that is, by part 1, exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\\ for some \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\\.

> **NOTE:**
>
> **Example 21 (All solutions of a consistent system)** For \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\, \\\mathbf{G} = \begin{bmatrix} 1 & 5 \\ 7 & 0 \end{bmatrix}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (2, 0)\\: \\\mathbf{G} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (2, 14)\\, \\\mathbf{G} \mathbf{A} = \begin{bmatrix} 1 & 0 \\ 7 & 0 \end{bmatrix}\\, and \\\mathbf{I}\_2 - \mathbf{G} \mathbf{A} = \begin{bmatrix} 0 & 0 \\ -7 & 1 \end{bmatrix}\\, so
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (2, 14) + (0, -7 q_1 + q_2), \qquad q_1, q_2 \in \mathbb{R}. \\
>
> Since \\-7 q_1 + q_2\\ can be any number, the solutions are exactly the vectors \\(2, t)\\, \\t \in \mathbb{R}\\, which is what
>
> \\ \begin{aligned} \mathbf{A}\\(x_1, x_2) &= (x_1, 0) \\ &= (2, 0) \end{aligned} \\
>
> says directly.

> **NOTE:**
>
> **Corollary 1 (Solvable for every right-hand side, and solvable uniquely)** Let \\\mathbf{A}\\ be \\m \times n\\.
>
> 1.  \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is consistent for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\ exactly when \\\operatorname{rank}(\mathbf{A}) = m\\.
> 2.  A consistent system \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ has exactly one solution exactly when \\\operatorname{rank}(\mathbf{A}) = n\\.

> **NOTE:**
>
> *Proof*. **Part 1.** By [Theorem 14](#thm-consistency), the system is consistent for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ exactly when \\\mathcal{C}(\mathbf{A}) = \mathbb{R}^m\\. \\\mathcal{C}(\mathbf{A})\\ is a subspace of \\\mathbb{R}^m\\ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)) with dimension \\\operatorname{rank}(\mathbf{A})\\ ([Theorem 6 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-dim)), and \\\dim(\mathbb{R}^m) = m\\ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)). If the dimension is \\m\\, then \\\mathcal{C}(\mathbf{A}) = \mathbb{R}^m\\ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim)); if \\\mathcal{C}(\mathbf{A}) = \mathbb{R}^m\\, the dimension is \\m\\.
>
> **Part 2.** By [Theorem 15](#thm-solution-set), the solutions are a particular solution plus the vectors of \\\mathcal{N}(\mathbf{A})\\, so there is exactly one solution exactly when \\\mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_n\right\\\mathclose{}\\, that is, when \\\operatorname{nullity}(\mathbf{A}) = 0\\ (a subspace of dimension \\0\\ has the empty list as a basis, whose span is \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\right\\\mathclose{}\\, by [Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension) and [Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span); and \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\right\\\mathclose{}\\ has dimension \\0\\, by [Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)). By [Theorem 7 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-nullity), that is when \\\operatorname{rank}(\mathbf{A}) = n\\.

> **NOTE:**
>
> **Example 22 (Three systems)**  
>
> - The \\2 \times 3\\ matrix \\\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}\\ of [Example 15 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-rank-bound) has rank \\2 = m\\, so every system with it is consistent, but \\2 \< 3 = n\\, so the solutions are never unique.
>
> - The \\3 \times 2\\ matrix \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ of [Example 1](#exm-gram-invertible) has rank \\2 = n\\, so a consistent system has one solution, but \\2 \< 3 = m\\, so some systems are inconsistent: \\(1, 0, 0) \notin \mathcal{C}(\mathbf{X})\\, because \\a\\(1, 1, 1) + b\\(1, 2, 3)\\ has equal differences between consecutive entries, and \\(1, 0, 0)\\ does not.
>
> - An invertible \\p \times p\\ matrix \\\mathbf{A}\\ has rank \\p\\: if \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ then
>
>   \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= \mathbf{A}^{-1} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}, \end{aligned} \\
>
>   so its nullity is \\0\\ and its rank is \\p\\ ([Theorem 7 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-nullity)). So every system with it is consistent (part 1, with \\p = m\\) and has exactly one solution (part 2, with \\p = n\\), namely \\\mathbf{A}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, since \\\mathbf{A}\\(\mathbf{A}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\.

> **NOTE:**
>
> **Theorem 16 (The projection onto a column space, with any generalized inverse)** Let \\\mathbf{X}\\ be an \\n \times p\\ matrix of any rank, and let \\\mathbf{G}\\ be any generalized inverse of \\{\mathbf{X}}^{\top} \mathbf{X}\\ ([Definition 4](#def-generalized-inverse)). Then for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^n\\, \\\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is the orthogonal projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto \\\mathcal{C}(\mathbf{X})\\ ([Definition 3](#def-orthogonal-projection)). So the matrix \\\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top}\\ is the same for every choice of \\\mathbf{G}\\, and when \\\operatorname{rank}(\mathbf{X}) = p\\ it is the hat matrix \\\mathbf{H}\\ ([Definition 2](#def-hat-matrix)).

> **NOTE:**
>
> *Proof*. **\\{\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is in \\\mathcal{C}({\mathbf{X}}^{\top} \mathbf{X})\\.** \\\mathcal{C}({\mathbf{X}}^{\top} \mathbf{X}) \subseteq \mathcal{C}({\mathbf{X}}^{\top})\\, since \\({\mathbf{X}}^{\top} \mathbf{X})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} = {\mathbf{X}}^{\top}\\(\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}})\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)). Both are subspaces of \\\mathbb{R}^p\\ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)) with the same dimension: \\\operatorname{rank}({\mathbf{X}}^{\top} \mathbf{X}) = \operatorname{rank}({\mathbf{X}}^{\top})\\ ([Theorem 9 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-transpose), [Theorem 6 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-dim)). So \\\mathcal{C}({\mathbf{X}}^{\top} \mathbf{X}) = \mathcal{C}({\mathbf{X}}^{\top})\\ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim)), and since \\{\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathcal{C}({\mathbf{X}}^{\top})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)), \\{\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= {\mathbf{X}}^{\top} \mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\\ for some \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} \in \mathbb{R}^p\\.
>
> **The split.** Let
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} &= \mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ &= \mathbf{X}\\(\mathbf{G} {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \end{aligned} \\
>
> ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), which is in \\\mathcal{C}(\mathbf{X})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)). For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\,
>
> \\ \begin{aligned} {\mathbf{X}}^{\top}\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}) &= {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- {\mathbf{X}}^{\top}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- {\mathbf{X}}^{\top}\\(\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(substitute } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \text{)} \\ &= {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- ({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}\\({\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- ({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}\\({\mathbf{X}}^{\top} \mathbf{X})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} && \text{(first step)} \\ &= {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathopen{}\left(({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}\\({\mathbf{X}}^{\top} \mathbf{X})\right)\mathclose{}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- ({\mathbf{X}}^{\top} \mathbf{X})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} && \text{(}\href{#def-generalized-inverse}{\text{Definition~4}}\text{)} \\ &= {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- {\mathbf{X}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(first step)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_p, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \in \mathcal{N}({\mathbf{X}}^{\top}) = \mathcal{C}(\mathbf{X})^\perp\\ ([Theorem 7 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-complement-null-space)). By the uniqueness in [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ is the orthogonal projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto \\\mathcal{C}(\mathbf{X})\\.
>
> **Same matrix.** Every choice of \\\mathbf{G}\\ gives a matrix that projects every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ onto \\\mathcal{C}(\mathbf{X})\\, so all choices give the same matrix ([Theorem 5](#thm-projection-matrix-projects), part 2). When \\\operatorname{rank}(\mathbf{X}) = p\\, \\({\mathbf{X}}^{\top} \mathbf{X})^{-1}\\ is one choice ([Theorem 1](#thm-gram-invertible), [Theorem 8](#thm-generalized-inverse-invertible)), and it gives \\\mathbf{H}\\.

> **NOTE:**
>
> **Example 23 (A design matrix with a repeated column)** Let \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\, an intercept column entered twice, so \\\operatorname{rank}(\mathbf{X}) = 1 \< 2\\ and \\{\mathbf{X}}^{\top} \mathbf{X}= \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}\\ is not invertible: its rank is \\\operatorname{rank}(\mathbf{X}) = 1 \< 2\\ ([Theorem 9 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-transpose)), while an invertible \\2 \times 2\\ matrix has rank \\2\\ ([Example 22](#exm-solution-unique)). The matrix \\\mathbf{G} = \begin{bmatrix} \frac{1}{2} & 0 \\ 0 & 0 \end{bmatrix}\\ is a generalized inverse of it:
>
> \\ \begin{aligned} ({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}\\({\mathbf{X}}^{\top} \mathbf{X}) &= \begin{bmatrix} 1 & 0 \\ 1 & 0 \end{bmatrix} \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{, for the first product)} \\ &= \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}. && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \end{aligned} \\
>
> Then
>
> \\ \begin{aligned} \mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} &= \begin{bmatrix} \frac{1}{2} & 0 \\ \frac{1}{2} & 0 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{, for } \mathbf{X}\mathbf{G} \text{)} \\ &= \begin{bmatrix} \frac{1}{2} & \frac{1}{2} \\ \frac{1}{2} & \frac{1}{2} \end{bmatrix}, && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \end{aligned} \\
>
> the hat matrix of the intercept-only model ([Example 2](#exm-hat-matrix)). Another generalized inverse, \\\mathbf{G}' = \begin{bmatrix} 0 & 0 \\ 0 & \frac{1}{2} \end{bmatrix}\\, which is one because \\({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}' = \begin{bmatrix} 0 & 1 \\ 0 & 1 \end{bmatrix}\\ and that times \\{\mathbf{X}}^{\top} \mathbf{X}\\ is again \\\begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}\\, gives \\\mathbf{X}\mathbf{G}' = \begin{bmatrix} 0 & \frac{1}{2} \\ 0 & \frac{1}{2} \end{bmatrix}\\ and the same \\\mathbf{X}\mathbf{G}' {\mathbf{X}}^{\top} = \begin{bmatrix} \frac{1}{2} & \frac{1}{2} \\ \frac{1}{2} & \frac{1}{2} \end{bmatrix}\\, as [Theorem 16](#thm-projector-generalized-inverse) says it must. Both project onto \\\mathcal{C}(\mathbf{X}) = \operatorname{span}\mathopen{}\left\\(1, 1)\right\\\mathclose{}\\, the column space of the intercept-only design.

### 1.3 Solving linear systems and least squares

> **NOTE:**
>
> This section is adapted from Zhou [\[5\]](#ref-zhou2024matinv) and Zhou [\[9\]](#ref-zhou2024ls), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The first source states that every invertible matrix has an LU factorization; that is false without reordering rows (the \\2 \times 2\\ row swap \\\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ has none), so this section states only how an LU factorization, when one exists, solves a system. The least squares results are proved here from the closest-point theorem ([Theorem 3](#thm-closest-point)) rather than by differentiating, and the QR factorization is derived from Gram-Schmidt ([Theorem 10 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#thm-gram-schmidt)). These parts of the source are not part of this section:
>
> - the operation counts for the triangular solves, LU and QR
> - solving a system by inverting a matrix through its QR factorization, and the comparison of that with solving it directly
> - the pivoted factorization \\\mathbf{P}\mathbf{A} = \mathbf{L}\mathbf{U}\\, which [Example 32](#exm-not-lu) only touches

> **NOTE:**
>
> **Definition 7 (Upper triangular matrix)** A square matrix \\\mathbf{U}\\ is **upper triangular** [\[10\]](#ref-wikipedia_triangular_matrix) if every entry below the diagonal is \\0\\: \\u\_{ij} = 0\\ whenever \\i \> j\\.

> **NOTE:**
>
> **Definition 8 (Lower triangular matrix)** A square matrix \\\mathbf{L}\\ is **lower triangular** if every entry above the diagonal is \\0\\: \\\ell\_{ij} = 0\\ whenever \\i \< j\\.

> **NOTE:**
>
> **Definition 9 (Unit lower triangular matrix)** A lower triangular matrix ([Definition 8](#def-lower-triangular-matrix)) whose diagonal entries are all \\1\\ is **unit lower triangular**.

> **NOTE:**
>
> **Example 24 (Triangular and not)**  
>
> - \\\begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix}\\ is upper triangular: its entries below the diagonal, in positions \\(2, 1)\\, \\(3, 1)\\ and \\(3, 2)\\, are \\0\\.
> - \\\begin{bmatrix} 1 & 0 \\ 4 & 1 \end{bmatrix}\\ is unit lower triangular.
> - A diagonal matrix ([Definition 4 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-diagonal-matrix)) is both upper and lower triangular.
> - \\\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ is neither: its \\(2, 1)\\ entry is not \\0\\, and neither is its \\(1, 2)\\ entry.

> **NOTE:**
>
> **Theorem 17 (Solving a triangular system by substitution)** Let \\\mathbf{U}\\ be an \\n \times n\\ upper triangular matrix ([Definition 7](#def-triangular-matrix)) whose diagonal entries \\u\_{11}, \ldots, u\_{nn}\\ are all nonzero. For every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^n\\, the system \\\mathbf{U} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ has exactly one solution, given for \\i = n, n - 1, \ldots, 1\\ in turn by
>
> \\ x_i = \frac{1}{u\_{ii}} \mathopen{}\left(b_i - \sum\_{j=i+1}^{n} u\_{ij}\\x_j\right)\mathclose{} \\
>
> (**back substitution**). Likewise, if \\\mathbf{L}\\ is lower triangular with nonzero diagonal, \\\mathbf{L} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ has exactly one solution, given for \\i = 1, \ldots, n\\ by \\y_i = \frac{1}{\ell\_{ii}} \mathopen{}\left(b_i - \sum\_{j=1}^{i-1} \ell\_{ij}\\y_j\right)\mathclose{}\\ (**forward substitution**).

> **NOTE:**
>
> *Proof*. Row \\i\\ of \\\mathbf{U} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ reads
>
> \\ \begin{aligned} b_i &= \sum\_{j=1}^nu\_{ij}\\x_j && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~13 in Matrices}}\text{)} \\ &= \sum\_{j=i}^{n} u\_{ij}\\x_j && \text{(} u\_{ij} = 0 \text{ for } j \< i \text{)} \\ &= u\_{ii}\\x_i + \sum\_{j=i+1}^{n} u\_{ij}\\x_j. && \text{(split off the } j = i \text{ term)} \end{aligned} \\
>
> This equation is equivalent to each of
>
> \\ \begin{aligned} u\_{ii}\\x_i &= b_i - \sum\_{j=i+1}^{n} u\_{ij}\\x_j && \text{(subtract the sum from both sides)} \\ x_i &= \frac{1}{u\_{ii}} \mathopen{}\left(b_i - \sum\_{j=i+1}^{n} u\_{ij}\\x_j\right)\mathclose{}. && \text{(divide by } u\_{ii} \ne 0 \text{)} \end{aligned} \\
>
> Row \\n\\ involves only \\x_n\\, so it fixes \\x_n\\; once \\x\_{i+1}, \ldots, x_n\\ are fixed, row \\i\\ fixes \\x_i\\. So the rows, taken from the last to the first, hold exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is the vector the formula builds: there is one solution, and only one. For \\\mathbf{L}\\, row \\i\\ reads \\\sum\_{j=1}^{i-1} \ell\_{ij}\\y_j + \ell\_{ii}\\y_i = b_i\\, and the same argument runs from the first row to the last.

> **NOTE:**
>
> **Example 25 (Back substitution on a \\3 \times 3\\ system)** Solve \\\begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \begin{bmatrix} 8 \\ 1 \\ 1 \end{bmatrix}\\:
>
> 1.  \\ \begin{aligned} x_3 &= \frac{1}{-1} \cdot 1 \\ &= -1; \end{aligned} \\
>
> 2.  \\ \begin{aligned} x_2 &= \frac{1}{1/2} \mathopen{}\left(1 - \tfrac{1}{2} \cdot(-1)\right)\mathclose{} \\ &= 2 \cdot\tfrac{3}{2} \\ &= 3; \end{aligned} \\
>
> 3.  \\ \begin{aligned} x_1 &= \frac{1}{2} \mathopen{}\left(8 - 1 \cdot 3 - (-1)(-1)\right)\mathclose{} \\ &= \frac{1}{2} \cdot 4 \\ &= 2. \end{aligned} \\
>
> So \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (2, 3, -1)\\. Without a nonzero diagonal the method fails: \\\begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (1, 1)\\ has no solution, since its second row reads \\0 = 1\\.

> **NOTE:**
>
> **Theorem 18 (QR factorization)** Let \\\mathbf{A}\\ be an \\m \times n\\ matrix with \\\operatorname{rank}(\mathbf{A}) = n\\. Then
>
> \\ \underbrace{\mathbf{A}}\_{m \times n} = \underbrace{\mathbf{Q}}\_{m \times n}\\\underbrace{\mathbf{R}}\_{n \times n}, \\
>
> where the columns of \\\mathbf{Q}\\ are orthonormal ([Definition 23 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)) and \\\mathbf{R}\\ is upper triangular ([Definition 7](#def-triangular-matrix)) with positive diagonal entries.

> **NOTE:**
>
> *Proof*. The \\n\\ columns \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_n\\ of \\\mathbf{A}\\ are linearly independent ([Definition 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-full-column-rank)), so the Gram-Schmidt process ([Definition 11 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#def-gram-schmidt)) runs all \\n\\ steps and gives orthonormal \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_n\\ ([Theorem 10 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#thm-gram-schmidt), parts 1 and 3); let \\\mathbf{Q}\\ have these columns. At step \\i\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, and rearranging the orthogonalize step,
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i + \sum\_{j=1}^{i-1} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j && \text{(add the sum to both sides of the orthogonalize step)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\right\rVert\mathclose{}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i + \sum\_{j=1}^{i-1} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j. && \text{(normalize step: } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\right\rVert\mathclose{}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \text{)} \end{aligned} \\
>
> Let \\\mathbf{R}\\ be the \\n \times n\\ matrix with \\r\_{ji} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i\\ for \\j \< i\\, \\r\_{ii} = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\right\rVert\mathclose{} \> 0\\, and \\r\_{ji} = 0\\ for \\j \> i\\; it is upper triangular with positive diagonal. Column \\i\\ of \\\mathbf{Q} \mathbf{R}\\ is \\\mathbf{Q}\\ times column \\i\\ of \\\mathbf{R}\\ ([Definition 7 in Matrices](linear-algebra-matrices.llms.md#def-matrix-mult)), and
>
> \\ \begin{aligned} \mathbf{Q}\\(r\_{1i}, \ldots, r\_{ni}) &= \sum\_{j=1}^nr\_{ji}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-columns}{\text{Theorem~3 in Subspaces and Rank}}\text{)} \\ &= \sum\_{j=1}^{i} r\_{ji}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j && \text{(} r\_{ji} = 0 \text{ for } j \> i \text{)} \\ &= r\_{ii}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i + \sum\_{j=1}^{i-1} r\_{ji}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j && \text{(split off the } j = i \text{ term)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\right\rVert\mathclose{}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i + \sum\_{j=1}^{i-1} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j && \text{(the entries of } \mathbf{R} \text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i. && \text{(the display)} \end{aligned} \\
>
> So \\\mathbf{Q} \mathbf{R} = \mathbf{A}\\.

> **NOTE:**
>
> **Example 26 (A QR factorization from Gram-Schmidt)** For \\\mathbf{A}\\ with columns \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1 = (1, 1, 0)\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_2 = (1, 0, 1)\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_3 = (0, 1, 1)\\, [Example 22 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#exm-gram-schmidt) and [Example 24 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#exm-thm-gram-schmidt) found \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0)\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 = \tfrac{1}{\sqrt{6}}\\(1, -1, 2)\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3 = \tfrac{1}{\sqrt{3}}\\(-1, 1, 1)\\, with \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_1\right\rVert\mathclose{} = \sqrt{2}\\, \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_2\right\rVert\mathclose{} = \sqrt{3/2}\\, \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_3\right\rVert\mathclose{} = 2/\sqrt{3}\\,
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_2 &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_3 \\ &= \tfrac{1}{\sqrt{2}} \end{aligned} \\
>
> and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_3 = \tfrac{1}{\sqrt{6}}\\. So
>
> \\ \mathbf{R} = \begin{bmatrix} \sqrt{2} & \tfrac{1}{\sqrt{2}} & \tfrac{1}{\sqrt{2}} \\ 0 & \sqrt{3/2} & \tfrac{1}{\sqrt{6}} \\ 0 & 0 & \tfrac{2}{\sqrt{3}} \end{bmatrix}. \\
>
> As a check on the second column,
>
> \\ \begin{aligned} \tfrac{1}{\sqrt{2}}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 + \sqrt{3/2}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 &= \tfrac{1}{2}\\(1, 1, 0) + \tfrac{1}{2}\\(1, -1, 2) \\ &= (1, 0, 1) \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_2. \end{aligned} \\

> **NOTE:**
>
> **Definition 10 (Least squares solution)** Let \\\mathbf{A}\\ be \\m \times n\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\. A **least squares solution** [\[11\]](#ref-wikipedia_least_squares) of \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is a vector \\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} \in \mathbb{R}^n\\ such that
>
> \\ \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \quad \text{for every } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \in \mathbb{R}^n. \\

> **NOTE:**
>
> **Example 27 (Fitting a constant)** Let \\\mathbf{A} = \begin{bmatrix} 1 \\ 1 \end{bmatrix}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (1, 3)\\. The system \\x\\(1, 1) = (1, 3)\\ is inconsistent ([Definition 6](#def-consistent-system)): its first entry needs \\x = 1\\ and its second needs \\x = 3\\. For any number \\x\\,
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} x\right\rVert\mathclose{}^2 &= (1 - x)^2 + (3 - x)^2 \\ &= 2\\(x - 2)^2 + 2, \end{aligned} \\
>
> which is smallest at \\x = 2\\, so \\\hat{x} = 2\\ is the least squares solution. The value \\x = 1\\ is not one: it gives \\0 + 4 = 4 \> 2\\. The normal equations read \\2x = 4\\, and their solution is \\x = 2\\ too.

> **NOTE:**
>
> **Definition 11 (Normal equations)** For \\\mathbf{A}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ as in [Definition 10](#def-least-squares), the equations \\{\mathbf{A}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ are the **normal equations** [\[12\]](#ref-wikipedia_normal_equations).

> **NOTE:**
>
> **Theorem 19 (Least squares solutions solve the normal equations)** Let \\\mathbf{A}\\ be \\m \times n\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\.
>
> 1.  \\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}\\ is a least squares solution ([Definition 10](#def-least-squares)) exactly when it solves the normal equations \\{\mathbf{A}}^{\top} \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} = {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\.
> 2.  The normal equations are consistent ([Definition 6](#def-consistent-system)).
> 3.  Every least squares solution gives the same fitted vector \\\mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}\\: the orthogonal projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ onto \\\mathcal{C}(\mathbf{A})\\ ([Definition 3](#def-orthogonal-projection)).
> 4.  The least squares solution is unique exactly when \\\operatorname{rank}(\mathbf{A}) = n\\, and then \\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} = ({\mathbf{A}}^{\top} \mathbf{A})^{-1} {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\.

> **NOTE:**
>
> *Proof*. Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ be the orthogonal projection of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ onto \\\mathcal{C}(\mathbf{A})\\. The vectors \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, as \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ ranges over \\\mathbb{R}^n\\, are exactly the points of \\\mathcal{C}(\mathbf{A})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)). **Least squares solutions are the solutions of \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\.** If \\\mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\, then for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \in \mathcal{C}(\mathbf{A})\\, so \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}\right\rVert\mathclose{} = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\ ([Theorem 3](#thm-closest-point)), and \\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}\\ is a least squares solution. Conversely, let \\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}\\ be a least squares solution. \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \in \mathcal{C}(\mathbf{A})\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0\\ for some \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)), and
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}\right\rVert\mathclose{} &\le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0\right\rVert\mathclose{} && \text{(}\href{#def-least-squares}{\text{Definition~10}}\text{)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\right\rVert\mathclose{} && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0 \text{)} \\ &\le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}\right\rVert\mathclose{}, && \text{(}\href{#thm-closest-point}{\text{Theorem~3}}\text{, with } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} = \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} \in \mathcal{C}(\mathbf{A}) \text{)} \end{aligned} \\
>
> so the last inequality is an equality, and the equality case of [Theorem 3](#thm-closest-point) gives \\\mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\.
>
> **Parts 1 and 3.** \\\mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ holds exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} \in \mathcal{C}(\mathbf{A})^\perp\\: if \\\mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\, then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \in \mathcal{C}(\mathbf{A})^\perp\\ ([Definition 3](#def-orthogonal-projection)); conversely, if \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} \in \mathcal{C}(\mathbf{A})^\perp\\, then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} + (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}})\\ is a split into \\\mathcal{C}(\mathbf{A})\\ and \\\mathcal{C}(\mathbf{A})^\perp\\, so \\\mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ by the uniqueness in [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum). And \\\mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top})\\ ([Theorem 7 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-complement-null-space)), where
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}) &= {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - {\mathbf{A}}^{\top}\\(\mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}) && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~7}}\text{)} \\ &= {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - {\mathbf{A}}^{\top} \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}, && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \end{aligned} \\
>
> which is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_n\\ exactly when the normal equations hold.
>
> **Part 2.** The vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0\\ above satisfies \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\_0 = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\, so it is a least squares solution, and it solves the normal equations by part 1.
>
> **Part 4.** The least squares solutions are exactly the solutions of \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\, a consistent system, so there is exactly one when \\\operatorname{rank}(\mathbf{A}) = n\\ and more than one otherwise ([Corollary 1](#cor-solution-unique)). When \\\operatorname{rank}(\mathbf{A}) = n\\, \\{\mathbf{A}}^{\top} \mathbf{A}\\ is invertible ([Theorem 1](#thm-gram-invertible)), and with \\\mathbf{M} \stackrel{\text{def}}{=}{\mathbf{A}}^{\top} \mathbf{A}\\,
>
> \\ \begin{aligned} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} &= \mathbf{I}\_n\\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \\ &= (\mathbf{M}^{-1} \mathbf{M})\\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{M}^{-1}\\(\mathbf{M} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{M}^{-1}\\{\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}. && \text{(the normal equations)} \end{aligned} \\

> **NOTE:**
>
> **Example 28 (A least squares line)** Fit \\y = x_1 + x_2\\t\\ to the points \\(t, y) = (1, 1), (2, 2), (3, 2)\\: \\\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ (the \\\mathbf{X}\\ of [Example 1](#exm-gram-invertible)) and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (1, 2, 2)\\. \\\mathbf{A}\\ has rank \\2\\ ([Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank)), so the solution is unique (part 4). \\{\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}\\ has inverse \\\frac{1}{6}\begin{bmatrix} 14 & -6 \\ -6 & 3 \end{bmatrix}\\ ([Example 1](#exm-gram-invertible)), and
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} &= (1 + 2 + 2,\\ 1 + 4 + 6) \\ &= (5, 11), \end{aligned} \\
>
> so
>
> \\ \begin{aligned} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} &= \frac{1}{6} \mathopen{}\left(14 \cdot 5 - 6 \cdot 11,\\ -6 \cdot 5 + 3 \cdot 11\right)\mathclose{} \\ &= \frac{1}{6}\\(4, 3) \\ &= \mathopen{}\left(\tfrac{2}{3}, \tfrac{1}{2}\right)\mathclose{}. \end{aligned} \\
>
> The fitted values are \\\mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} = \mathopen{}\left(\tfrac{7}{6}, \tfrac{5}{3}, \tfrac{13}{6}\right)\mathclose{}\\, and the residuals \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} = \mathopen{}\left(-\tfrac{1}{6}, \tfrac{1}{3}, -\tfrac{1}{6}\right)\mathclose{}\\ are orthogonal to both columns of \\\mathbf{A}\\: \\-\tfrac{1}{6} + \tfrac{1}{3} - \tfrac{1}{6} = 0\\ and \\-\tfrac{1}{6} + \tfrac{2}{3} - \tfrac{1}{2} = 0\\.

> **NOTE:**
>
> **Example 29 (Many least squares solutions, one fitted vector)** With the rank-\\1\\ matrix \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 1 & 2 \\ 1 & 2 \end{bmatrix}\\ ([Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank)) and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (1, 2, 2)\\, \\{\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 3 & 6 \\ 6 & 12 \end{bmatrix}\\ and \\{\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (5, 10)\\, so both normal equations say \\3 x_1 + 6 x_2 = 5\\, that is, \\x_1 + 2 x_2 = \tfrac{5}{3}\\. There are infinitely many least squares solutions, such as \\(\tfrac{5}{3}, 0)\\ and \\(0, \tfrac{5}{6})\\, as part 4 predicts for \\\operatorname{rank}(\mathbf{A}) = 1 \< 2\\; but every one gives the same fitted vector
>
> \\ \begin{aligned} \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} &= (x_1 + 2 x_2)\\(1, 1, 1) \\ &= \tfrac{5}{3}\\(1, 1, 1), \end{aligned} \\
>
> as part 3 says.

> **NOTE:**
>
> **Theorem 20 (Solving least squares by QR)** Let \\\mathbf{A}\\ be \\m \times n\\ with \\\operatorname{rank}(\mathbf{A}) = n\\, with QR factorization \\\mathbf{A} = \mathbf{Q} \mathbf{R}\\ ([Theorem 18](#thm-qr)), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\. The least squares solution ([Definition 10](#def-least-squares)) is the unique solution of
>
> \\ \underbrace{\mathbf{R}}\_{n \times n}\\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} = \underbrace{{\mathbf{Q}}^{\top}}\_{n \times m}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}, \\
>
> which back substitution computes ([Theorem 17](#thm-back-substitution)). When \\m = n\\, it is the unique solution of \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{R}\\ is upper triangular with positive diagonal, so \\\mathbf{R} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ has exactly one solution \\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}\\ ([Theorem 17](#thm-back-substitution)). \\{\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_n\\, as in the proof of [Theorem 4](#thm-projector-onb). Then
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \mathbf{A} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} &= {(\mathbf{Q} \mathbf{R})}^{\top}\\(\mathbf{Q} \mathbf{R})\\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} && \text{(substitute } \mathbf{A} = \mathbf{Q} \mathbf{R} \text{)} \\ &= {\mathbf{R}}^{\top}\\{\mathbf{Q}}^{\top}\\(\mathbf{Q} \mathbf{R})\\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top}\\({\mathbf{Q}}^{\top} \mathbf{Q})\\(\mathbf{R} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top}\\\mathbf{I}\_n\\(\mathbf{R} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}) && \text{(} {\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_n \text{)} \\ &= {\mathbf{R}}^{\top}\\(\mathbf{R} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}) && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~8 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top}\\({\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) && \text{(} \mathbf{R} \hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} = {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \text{)} \\ &= ({\mathbf{R}}^{\top}\\{\mathbf{Q}}^{\top})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {(\mathbf{Q} \mathbf{R})}^{\top}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~17 in Matrices}}\text{)} \\ &= {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}, && \text{(} \mathbf{A} = \mathbf{Q} \mathbf{R} \text{)} \end{aligned} \\
>
> so \\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}\\ solves the normal equations and is the least squares solution ([Theorem 19](#thm-normal-equations)), which is unique because \\\operatorname{rank}(\mathbf{A}) = n\\. When \\m = n\\,
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A}) &= n \\ &= m, \end{aligned} \\
>
> so \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ is consistent for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ ([Corollary 1](#cor-solution-unique), part 1), so its solution leaves residual \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, is a least squares solution, and is therefore \\\hat{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}\\.

> **NOTE:**
>
> **Example 30 (The least squares line by QR)** For \\\mathbf{A}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ of [Example 28](#exm-normal-equations), Gram-Schmidt gives \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 = \tfrac{1}{\sqrt{3}}\\(1, 1, 1)\\; then
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 \cdot (1, 2, 3) &= \tfrac{6}{\sqrt{3}} \\ &= 2\sqrt{3}, \end{aligned} \\
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_2 &= (1, 2, 3) - 2\\(1, 1, 1) \\ &= (-1, 0, 1) \end{aligned} \\
>
> with norm \\\sqrt{2}\\, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 = \tfrac{1}{\sqrt{2}}\\(-1, 0, 1)\\. So
>
> \\ \begin{aligned} \mathbf{R} &= \begin{bmatrix} \sqrt{3} & 2\sqrt{3} \\ 0 & \sqrt{2} \end{bmatrix}, \\ {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} &= \mathopen{}\left(\tfrac{1 + 2 + 2}{\sqrt{3}},\\ \tfrac{-1 + 0 + 2}{\sqrt{2}}\right)\mathclose{} \\ &= \mathopen{}\left(\tfrac{5}{\sqrt{3}}, \tfrac{1}{\sqrt{2}}\right)\mathclose{}. \end{aligned} \\
>
> Back substitution gives
>
> \\ \begin{aligned} x_2 &= \tfrac{1}{\sqrt{2}} \cdot \tfrac{1}{\sqrt{2}} \\ &= \tfrac{1}{2} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} x_1 &= \tfrac{1}{\sqrt{3}} \mathopen{}\left(\tfrac{5}{\sqrt{3}} - 2\sqrt{3} \cdot \tfrac{1}{2}\right)\mathclose{} \\ &= \tfrac{5}{3} - 1 \\ &= \tfrac{2}{3}, \end{aligned} \\
>
> the solution found in [Example 28](#exm-normal-equations).

> **NOTE:**
>
> **Definition 12 (LU factorization)** An **LU factorization** [\[13\]](#ref-wikipedia_lu_decomposition) of an \\n \times n\\ matrix \\\mathbf{A}\\ is a product \\\mathbf{A} = \mathbf{L} \mathbf{U}\\ with \\\mathbf{L}\\ unit lower triangular ([Definition 9](#def-unit-lower-triangular-matrix)) and \\\mathbf{U}\\ upper triangular ([Definition 7](#def-triangular-matrix)).

> **NOTE:**
>
> **Example 31 (An LU factorization of a \\3 \times 3\\ matrix)** Let \\\mathbf{A} = \begin{bmatrix} 2 & 1 & -1 \\ -3 & -1 & 2 \\ -2 & 1 & 2 \end{bmatrix}\\, \\\mathbf{L} = \begin{bmatrix} 1 & 0 & 0 \\ -\frac{3}{2} & 1 & 0 \\ -1 & 4 & 1 \end{bmatrix}\\ (unit lower triangular) and \\\mathbf{U} = \begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix}\\ (upper triangular). By [Definition 7 in Matrices](linear-algebra-matrices.llms.md#def-matrix-mult), entry \\(i, j)\\ of \\\mathbf{L} \mathbf{U}\\ is \\\sum_k \ell\_{ik}\\u\_{kj}\\, so row \\i\\ of \\\mathbf{L} \mathbf{U}\\ is \\\sum_k \ell\_{ik}\\ times row \\k\\ of \\\mathbf{U}\\. Row 1 is \\1 \cdot(2, 1, -1) = (2, 1, -1)\\; row 2 is \\-\tfrac{3}{2}\\(2, 1, -1) + (0, \tfrac{1}{2}, \tfrac{1}{2}) = (-3, -1, 2)\\, and row 3 is \\-(2, 1, -1) + 4\\(0, \tfrac{1}{2}, \tfrac{1}{2}) + (0, 0, -1) = (-2, 1, 2)\\. These are the rows of \\\mathbf{A}\\, so \\\mathbf{L} \mathbf{U} = \mathbf{A}\\ is an LU factorization. The below-diagonal entries of \\\mathbf{L}\\ are the negatives of the multiples of earlier rows that Gaussian elimination adds to reduce \\\mathbf{A}\\ to \\\mathbf{U}\\.

> **NOTE:**
>
> **Example 32 (An invertible matrix with no LU factorization)** \\\mathbf{P} = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ is invertible: \\\mathbf{P}^2 = \mathbf{I}\_2\\, so \\\mathbf{P}^{-1} = \mathbf{P}\\ ([Definition 5 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-matrix-inverse)); but it has no LU factorization. If \\\mathbf{P} = \mathbf{L} \mathbf{U}\\, the \\(1, 1)\\ entry gives \\0 = 1 \cdot u\_{11}\\, so \\u\_{11} = 0\\, and then the \\(2, 1)\\ entry gives
>
> \\ \begin{aligned} 1 &= \ell\_{21}\\u\_{11} \\ &= 0, \end{aligned} \\
>
> which is impossible. Swapping the two rows first removes the obstacle: the swapped matrix is \\\mathbf{I}\_2 = \mathbf{I}\_2\\\mathbf{I}\_2\\.

> **NOTE:**
>
> **Theorem 21 (Solving a system with an LU factorization)** If \\\mathbf{A} = \mathbf{L} \mathbf{U}\\ is an LU factorization ([Definition 12](#def-lu)) and the diagonal entries of \\\mathbf{U}\\ are all nonzero, then for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^n\\ the system \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ has exactly one solution: solve \\\mathbf{L} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ by forward substitution, then \\\mathbf{U} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ by back substitution ([Theorem 17](#thm-back-substitution)).

> **NOTE:**
>
> *Proof*. \\\mathbf{L}\\ has diagonal entries \\1\\ and \\\mathbf{U}\\ has nonzero ones, so each of the two triangular systems has exactly one solution ([Theorem 17](#thm-back-substitution)). If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ are those solutions, then
>
> \\ \begin{aligned} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= \mathbf{L}\\(\mathbf{U} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \\ &= \mathbf{L} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \end{aligned} \\
>
> ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is a solution. Conversely, if \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \stackrel{\text{def}}{=}\mathbf{U} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ satisfies
>
> \\ \begin{aligned} \mathbf{L} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} &= \mathbf{L}\\(\mathbf{U} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \\ &= (\mathbf{L} \mathbf{U})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \\ &= \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \end{aligned} \\
>
> ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is the unique solution of that system, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is then the unique solution of \\\mathbf{U} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\.

> **NOTE:**
>
> **Example 33 (Two triangular solves)** With \\\mathbf{L}\\ and \\\mathbf{U}\\ of [Example 31](#exm-lu), solve \\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (8, -11, -3)\\. Forward substitution on \\\mathbf{L} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = (8, -11, -3)\\ gives \\y_1 = 8\\,
>
> \\ \begin{aligned} y_2 &= -11 + \tfrac{3}{2} \cdot 8 \\ &= 1, \end{aligned} \\
>
> \\ \begin{aligned} y_3 &= -3 + 8 - 4 \cdot 1 \\ &= 1. \end{aligned} \\
>
> Back substitution on \\\mathbf{U} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (8, 1, 1)\\ is [Example 25](#exm-back-substitution), which gives \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (2, 3, -1)\\. As a check,
>
> \\ \begin{aligned} \mathbf{A}\\(2, 3, -1) &= (4 + 3 + 1,\\ -6 - 3 - 2,\\ -4 + 3 - 2) \\ &= (8, -11, -3). \end{aligned} \\

Back to top

## References

\[1\]

Wikipedia contributors, “Design matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Design_matrix>

\[2\]

S. Banerjee and A. Roy, *Linear algebra and matrix analysis for statistics*, vol. 181. Crc Press Boca Raton, 2014. Available: <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>

\[3\]

Wikipedia contributors, “Projection matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Projection_matrix>

\[4\]

H. Zhou, “Orthogonal projections.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/06-orthproj/06-orthproj.html>

\[5\]

H. Zhou, “Linear equations and matrix inverses.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/07-matinv/07-matinv.html>

\[6\]

Wikipedia contributors, “Generalized inverse — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Generalized_inverse>

\[7\]

Wikipedia contributors, “Moore–penrose inverse — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse>

\[8\]

Wikipedia contributors, “Consistent and inconsistent equations — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Consistent_and_inconsistent_equations>

\[9\]

H. Zhou, “Least squares.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/08-ls/08-ls.html>

\[10\]

Wikipedia contributors, “Triangular matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Triangular_matrix>

\[11\]

Wikipedia contributors, “Least squares — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Least_squares>

\[12\]

Wikipedia contributors, “Normal equations — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Normal_equations>

\[13\]

Wikipedia contributors, “LU decomposition — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/LU_decomposition>
