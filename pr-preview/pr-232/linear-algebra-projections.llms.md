# Projections and Linear Systems

Code

Published

Last modified: 2026-10-10 19:10:49 (PDT)

## 1 Design Matrix

> **NOTE:**
>
> **Definition 1 (Design matrix (model matrix))** In a regression model with \\n\\ observations and \\p\\ predictors, the **design matrix** (or **model matrix**) \\\mathbf{X}\\ is the \\n \times p\\ matrix whose \\i\\-th row is the covariate vector \\{\tilde{x}\_i}^{\top}\\ for observation \\i\\:
>
> \\ \begin{aligned} \mathbf{X} &= \begin{bmatrix} {\tilde{x}\_1}^{\top} \\ {\tilde{x}\_2}^{\top} \\ \vdots \\ {\tilde{x}\_n}^{\top} \end{bmatrix} \\ &= \begin{bmatrix} x\_{11} & x\_{12} & \cdots & x\_{1p} \\ x\_{21} & x\_{22} & \cdots & x\_{2p} \\ \vdots & \vdots & \ddots & \vdots \\ x\_{n1} & x\_{n2} & \cdots & x\_{np} \end{bmatrix} \end{aligned} \\

> **NOTE:**
>
> *Remark 1* (Products with the design matrix). The product \\\mathbf{X}\tilde{\beta}\\ collects the values \\{\tilde{x}\_i}^{\top}\tilde{\beta}\\ for all \\n\\ observations into a single \\n \times 1\\ vector:
>
> \\ \mathbf{X}\tilde{\beta}= \begin{bmatrix} {\tilde{x}\_1}^{\top}\tilde{\beta}\\ \vdots \\ {\tilde{x}\_n}^{\top}\tilde{\beta} \end{bmatrix} \\
>
> For example, take the rank-\\2\\ matrix from [Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank) as \\\mathbf{X}\\, with \\n = 3\\ observations and \\p = 2\\ columns: an intercept column and one covariate. With \\\tilde{\beta}= (1, 2)\\,
>
> \\ \begin{aligned} \mathbf{X}\tilde{\beta} &= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ 2 \end{bmatrix} \\ &= \begin{bmatrix} 3 \\ 5 \\ 7 \end{bmatrix}. \end{aligned} \\
>
> The matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ is \\p \times p\\ and symmetric, since
>
> \\ \begin{aligned} {({\mathbf{X}}^{\top}\mathbf{X})}^{\top} &= {\mathbf{X}}^{\top}\\{({\mathbf{X}}^{\top})}^{\top} \\ &= {\mathbf{X}}^{\top}\mathbf{X} \end{aligned} \\
>
> ([Theorem 16 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product)). When \\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible, it appears in the OLS estimator \\\hat{\tilde{\beta}}= ({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\tilde{y}\\.

> **NOTE:**
>
> **Theorem 1 (\\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible when \\\mathbf{X}\\ has full column rank)** If \\\mathbf{X}\\ is an \\n \times p\\ matrix with \\\operatorname{rank}(\mathbf{X}) = p\\ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)), then the \\p \times p\\ matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ is invertible.

> **NOTE:**
>
> *Proof*. Let \\\tilde{c}\\ be a vector of length \\p\\ with \\{\mathbf{X}}^{\top}\mathbf{X}\tilde{c} = \tilde{0}\\. Then
>
> \\ \begin{aligned} 0 &= {\tilde{c}}^{\top}\\{\mathbf{X}}^{\top}\mathbf{X}\tilde{c} && \text{(multiply } {\mathbf{X}}^{\top}\mathbf{X}\tilde{c} = \tilde{0}\text{ on the left by } {\tilde{c}}^{\top} \text{)} \\ &= {\mathopen{}\left(\mathbf{X}\tilde{c}\right)\mathclose{}}^{\top}\mathopen{}\left(\mathbf{X}\tilde{c}\right)\mathclose{} && \text{(transpose of a product)} \\ &= \mathopen{}\left\lVert\mathbf{X}\tilde{c}\right\rVert\mathclose{}^2 && \text{(definition of the Euclidean norm)} \end{aligned} \\
>
> so \\\mathbf{X}\tilde{c} = \tilde{0}\\. Because \\\mathbf{X}\tilde{c} = c_1 (\text{column } 1) + \cdots + c_p (\text{column } p)\\ and the columns of \\\mathbf{X}\\ are linearly independent, \\\tilde{c} = \tilde{0}\\. So the only solution of \\{\mathbf{X}}^{\top}\mathbf{X}\tilde{c} = \tilde{0}\\ is \\\tilde{c} = \tilde{0}\\, which says that the columns of the square matrix \\{\mathbf{X}}^{\top}\mathbf{X}\\ are linearly independent, and a square matrix with linearly independent columns is invertible ([Banerjee and Roy 2014](#ref-banerjee2014linear), Corollary 5.7, p. 143).

> **NOTE:**
>
> **Example 1 (Inverting \\{\mathbf{X}}^{\top}\mathbf{X}\\)** For the rank-\\2\\ matrix \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ from [Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank):
>
> \\ {\mathbf{X}}^{\top}\mathbf{X}= \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}, \qquad \mathopen{}\left({\mathbf{X}}^{\top}\mathbf{X}\right)^{-1}\mathclose{} = \frac{1}{6}\begin{bmatrix} 14 & -6 \\ -6 & 3 \end{bmatrix}, \\
>
> and multiplying the two out gives \\\mathbf{I}\_2\\.

> **NOTE:**
>
> **Definition 2 (Hat matrix)** For an \\n \times p\\ design matrix \\\mathbf{X}\\ ([Definition 1](#def-design-matrix)) with \\\operatorname{rank}(\mathbf{X}) = p\\, the **hat matrix** is the \\n \times n\\ matrix
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
> Then \\\mathbf{H}\tilde{y}= (\bar{y}, \bar{y})\\, where \\\bar{y} = (y_1 + y_2)/2\\: the fitted values of an intercept-only model are the [sample mean](linear-algebra-vectors.llms.md#def-mean).

> **NOTE:**
>
> **Theorem 2 (Hat matrix is a projection matrix)** If \\\mathbf{X}\\ is an \\n \times p\\ design matrix with \\\operatorname{rank}(\mathbf{X}) = p\\, then the hat matrix \\\mathbf{H}\\ ([Definition 2](#def-hat-matrix)) is an orthogonal projection matrix ([Definition 8 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-projection-matrix)).

> **NOTE:**
>
> *Proof*. We verify symmetry and idempotency. Both use that \\{\mathbf{X}}^{\top}\mathbf{X}\\ is symmetric,
>
> \\ \begin{aligned} {\mathopen{}\left({\mathbf{X}}^{\top}\mathbf{X}\right)\mathclose{}}^{\top} &= {\mathbf{X}}^{\top}\\{\mathopen{}\left({\mathbf{X}}^{\top}\right)\mathclose{}}^{\top} \\ &= {\mathbf{X}}^{\top}\mathbf{X} \end{aligned} \\
>
> ([Theorem 16 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product)), so its inverse is symmetric too ([Corollary 1 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric)).
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
> *Remark 2* (Why it is called the hat matrix). The hat matrix gives the fitted values in linear regression:
>
> \\ \begin{aligned} \hat{\tilde{y}} &= \mathbf{X}\hat{\tilde{\beta}}\\ &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1}{\mathbf{X}}^{\top}\tilde{y}\\ &= \mathbf{H}\tilde{y}. \end{aligned} \\
>
> Multiplying by \\\mathbf{H}\\ “puts a hat” on \\\tilde{y}\\, which is where the name comes from. In [Example 2](#exm-hat-matrix), \\\mathbf{H}\\ puts a hat on \\\tilde{y}\\ by replacing each \\y_i\\ with the sample mean \\\bar{y}\\.

### 1.1 Orthogonal projection onto a subspace

> **NOTE:**
>
> This section is adapted from the second half of Zhou ([2024c](#ref-zhou2024orthproj)), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). It connects the orthogonal projection matrices of [Definition 8 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-projection-matrix), defined by an algebraic property, to the geometric decomposition of [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum).

> **NOTE:**
>
> **Definition 3 (Orthogonal projection onto a subspace)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\ and \\\tilde{y} \in \mathbb{R}^p\\. By [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum), \\\tilde{y} = \tilde{u} + \tilde{v}\\ for exactly one \\\tilde{u} \in \mathcal{S}\\ and \\\tilde{v} \in \mathcal{S}^\perp\\. The vector \\\tilde{u}\\ is the **orthogonal projection** of \\\tilde{y}\\ onto \\\mathcal{S}\\. It is the projection of \\\tilde{y}\\ onto \\\mathcal{S}\\ along \\\mathcal{S}^\perp\\ ([Definition 3 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#def-projection)).

> **NOTE:**
>
> **Example 4 (Projecting onto a line in \\\mathbb{R}^3\\)** In [Example 15 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#exm-orthogonal-direct-sum), \\\tilde{y} = (3, 1, 2)\\ splits as \\(2, 2, 0) + (1, -1, 2)\\, with \\(2, 2, 0) \in \mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ and \\(1, -1, 2) \in \mathcal{S}^\perp\\. So the orthogonal projection of \\(3, 1, 2)\\ onto \\\mathcal{S}\\ is \\(2, 2, 0)\\. A vector already in \\\mathcal{S}\\, such as \\(5, 5, 0)\\, is its own projection, since \\(5, 5, 0) = (5, 5, 0) + \tilde{0}\\ and \\\tilde{0}\in \mathcal{S}^\perp\\ ([Theorem 6 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-complement-subspace), [Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)); a vector of \\\mathcal{S}^\perp\\, such as \\(1, -1, 2)\\, projects to \\\tilde{0}\\, since \\(1, -1, 2) = \tilde{0}+ (1, -1, 2)\\ and \\\tilde{0}\in \mathcal{S}\\ ([Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)).

> **NOTE:**
>
> **Example 5 (A split that is not the orthogonal one)** \\(3, 1, 2) = (3, 3, 0) + (0, -2, 2)\\ also writes \\(3, 1, 2)\\ as a vector of \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ plus a remainder, but \\(1, 1, 0) \cdot (0, -2, 2) = -2 \ne 0\\, so the remainder is not in \\\mathcal{S}^\perp\\, and \\(3, 3, 0)\\ is not the orthogonal projection of \\(3, 1, 2)\\ onto \\\mathcal{S}\\.

> **NOTE:**
>
> **Theorem 3 (The orthogonal projection is the closest point)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\, let \\\tilde{y} \in \mathbb{R}^p\\, and let \\\tilde{u}\\ be the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{S}\\ ([Definition 3](#def-orthogonal-projection)). Then for every \\\tilde{w} \in \mathcal{S}\\,
>
> \\ \mathopen{}\left\lVert\tilde{y} - \tilde{u}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\tilde{y} - \tilde{w}\right\rVert\mathclose{}, \\
>
> with equality only when \\\tilde{w} = \tilde{u}\\.

> **NOTE:**
>
> *Proof*. By [Definition 3](#def-orthogonal-projection), \\\tilde{y} - \tilde{u} \in \mathcal{S}^\perp\\. Both \\\tilde{u}\\ and \\\tilde{w}\\ are in \\\mathcal{S}\\, so \\\tilde{u} - \tilde{w} = \tilde{u} + (-1)\\\tilde{w} \in \mathcal{S}\\ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)), and therefore \\(\tilde{y} - \tilde{u}) \perp (\tilde{u} - \tilde{w})\\ ([Definition 4 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#def-orthogonal-complement)). Then
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{y} - \tilde{w}\right\rVert\mathclose{}^2 &= \mathopen{}\left\lVert(\tilde{y} - \tilde{u}) + (\tilde{u} - \tilde{w})\right\rVert\mathclose{}^2 && \text{(add and subtract } \tilde{u} \text{)} \\ &= \mathopen{}\left\lVert\tilde{y} - \tilde{u}\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\tilde{u} - \tilde{w}\right\rVert\mathclose{}^2 && \text{(Pythagorean theorem, }\href{linear-algebra-inner-products.qmd#thm-norm-sum-square}{\text{Theorem~2 in Inner Products and Orthogonality}}\text{)} \\ &\ge \mathopen{}\left\lVert\tilde{y} - \tilde{u}\right\rVert\mathclose{}^2, && \text{(} \mathopen{}\left\lVert\tilde{u} - \tilde{w}\right\rVert\mathclose{}^2 \ge 0 \text{, }\href{linear-algebra-inner-products.qmd#thm-norm-properties}{\text{Theorem~1 in Inner Products and Orthogonality}}\text{)} \end{aligned} \\
>
> with equality exactly when \\\mathopen{}\left\lVert\tilde{u} - \tilde{w}\right\rVert\mathclose{} = 0\\, that is, when \\\tilde{w} = \tilde{u}\\ ([Theorem 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#thm-norm-properties), part 1). Taking nonnegative square roots preserves the inequality.

> **NOTE:**
>
> **Example 6 (No point of the line is closer)** In [Example 4](#exm-orthogonal-projection), \\\tilde{y} = (3, 1, 2)\\ has projection \\\tilde{u} = (2, 2, 0)\\ onto \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\, at distance \\\mathopen{}\left\lVert(1, -1, 2)\right\rVert\mathclose{} = \sqrt{6}\\. Another point of \\\mathcal{S}\\, such as \\\tilde{w} = (3, 3, 0)\\, is farther:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{y} - \tilde{w}\right\rVert\mathclose{} &= \mathopen{}\left\lVert(0, -2, 2)\right\rVert\mathclose{} \\ &= \sqrt{8} \\ &\> \sqrt{6}, \end{aligned} \\
>
> and the difference of squares is
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{u} - \tilde{w}\right\rVert\mathclose{}^2 &= \mathopen{}\left\lVert(-1, -1, 0)\right\rVert\mathclose{}^2 \\ &= 2 \\ &= 8 - 6, \end{aligned} \\
>
> by the Pythagorean theorem ([Theorem 2 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#thm-norm-sum-square)), since \\\tilde{y} - \tilde{u} \in \mathcal{S}^\perp\\ and \\\tilde{u} - \tilde{w} \in \mathcal{S}\\.

> **NOTE:**
>
> **Theorem 4 (Projecting with an orthonormal basis)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\ with \\\dim(\mathcal{S}) = r \ge 1\\, and let \\\mathbf{Q}\\ be the \\p \times r\\ matrix whose columns \\\tilde{q}\_1, \ldots, \tilde{q}\_r\\ are an orthonormal basis of \\\mathcal{S}\\ ([Definition 9 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#def-orthonormal-basis), [Corollary 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#cor-orthonormal-basis-exists)). Then for every \\\tilde{y} \in \mathbb{R}^p\\, \\\mathbf{Q} {\mathbf{Q}}^{\top} \tilde{y}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{S}\\, and \\\mathbf{Q} {\mathbf{Q}}^{\top}\\ is an orthogonal projection matrix ([Definition 8 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-projection-matrix)).

> **NOTE:**
>
> *Proof*. **\\{\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_r\\.** Write \\q\_{ki}\\ for entry \\k\\ of \\\tilde{q}\_i\\, which is entry \\(k, i)\\ of \\\mathbf{Q}\\. Then
>
> \\ \begin{aligned} ({\mathbf{Q}}^{\top} \mathbf{Q})\_{ij} &= \sum\_{k=1}^{p} ({\mathbf{Q}}^{\top})\_{ik}\\ q\_{kj} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \\ &= \sum\_{k=1}^{p} q\_{ki}\\ q\_{kj} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \\ &= \tilde{q}\_i \cdot \tilde{q}\_j, && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{)} \end{aligned} \\
>
> which is \\1\\ if \\i = j\\ and \\0\\ otherwise ([Definition 17 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)), so \\{\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_r\\ ([Definition 10 in Matrices](linear-algebra-matrices.llms.md#def-identity-matrix)).
>
> **The split.** Let \\\tilde{u} = \mathbf{Q} {\mathbf{Q}}^{\top} \tilde{y}\\ and \\\tilde{v} = \tilde{y} - \tilde{u}\\, so \\\tilde{y} = \tilde{u} + \tilde{v}\\. \\\tilde{u} = \mathbf{Q}\\({\mathbf{Q}}^{\top} \tilde{y})\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)) is in \\\mathcal{C}(\mathbf{Q})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)), which is \\\operatorname{span}\mathopen{}\left\\\tilde{q}\_1, \ldots, \tilde{q}\_r\right\\\mathclose{} = \mathcal{S}\\ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)). For \\\tilde{v}\\,
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top} \tilde{v} &= {\mathbf{Q}}^{\top}\\(\tilde{y} - \mathbf{Q} {\mathbf{Q}}^{\top} \tilde{y}) && \text{(substitute)} \\ &= {\mathbf{Q}}^{\top} \tilde{y} - {\mathbf{Q}}^{\top}\\(\mathbf{Q} {\mathbf{Q}}^{\top} \tilde{y}) && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= {\mathbf{Q}}^{\top} \tilde{y} - ({\mathbf{Q}}^{\top} \mathbf{Q})\\{\mathbf{Q}}^{\top} \tilde{y} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\mathbf{Q}}^{\top} \tilde{y} - \mathbf{I}\_r\\{\mathbf{Q}}^{\top} \tilde{y} && \text{(} {\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_r \text{, from the first part of the proof)} \\ &= {\mathbf{Q}}^{\top} \tilde{y} - {\mathbf{Q}}^{\top} \tilde{y} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \\ &= \tilde{0}\_r, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\tilde{v} \in \mathcal{N}({\mathbf{Q}}^{\top})\\, and
>
> \\ \begin{aligned} \mathcal{N}({\mathbf{Q}}^{\top}) &= \mathcal{C}(\mathbf{Q})^\perp \\ &= \mathcal{S}^\perp \end{aligned} \\
>
> ([Theorem 7 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-complement-null-space)). By the uniqueness in [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum), \\\tilde{u}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{S}\\.
>
> **\\\mathbf{Q} {\mathbf{Q}}^{\top}\\ is symmetric and idempotent.**
>
> \\ \begin{aligned} {(\mathbf{Q} {\mathbf{Q}}^{\top})}^{\top} &= {({\mathbf{Q}}^{\top})}^{\top}\\{\mathbf{Q}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= \mathbf{Q} {\mathbf{Q}}^{\top}, && \text{(transposing twice, }\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} (\mathbf{Q} {\mathbf{Q}}^{\top})(\mathbf{Q} {\mathbf{Q}}^{\top}) &= \mathbf{Q}\\({\mathbf{Q}}^{\top} \mathbf{Q})\\{\mathbf{Q}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{Q}\\\mathbf{I}\_r\\{\mathbf{Q}}^{\top} && \text{(} {\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_r \text{, from the first part of the proof)} \\ &= \mathbf{Q} {\mathbf{Q}}^{\top}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 7 (The projection matrix onto a line)** For \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\, the single vector \\\tilde{q}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0)\\ is an orthonormal basis: it spans \\\mathcal{S}\\, it is nonzero and so linearly independent, and
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{q}\_1\right\rVert\mathclose{} &= \sqrt{\tfrac{1}{2} + \tfrac{1}{2} + 0} \\ &= 1. \end{aligned} \\
>
> With \\\mathbf{Q} = \[\tilde{q}\_1\]\\,
>
> \\ \begin{aligned} \mathbf{Q} {\mathbf{Q}}^{\top} &= \tfrac{1}{2} \begin{bmatrix} 1 \\ 1 \\ 0 \end{bmatrix} \begin{bmatrix} 1 & 1 & 0 \end{bmatrix} \\ &= \begin{bmatrix} \tfrac{1}{2} & \tfrac{1}{2} & 0 \\ \tfrac{1}{2} & \tfrac{1}{2} & 0 \\ 0 & 0 & 0 \end{bmatrix}. \end{aligned} \\
>
> Applied to \\\tilde{y} = (3, 1, 2)\\, it gives \\\mathopen{}\left(\tfrac{3 + 1}{2}, \tfrac{3 + 1}{2}, 0\right)\mathclose{} = (2, 2, 0)\\, the projection found in [Example 4](#exm-orthogonal-projection).

> **NOTE:**
>
> **Theorem 5 (A projection matrix projects onto its column space, and is the only one that does)**  
>
> 1.  If \\\mathbf{P}\\ is a \\p \times p\\ orthogonal projection matrix ([Definition 8 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-projection-matrix)), then for every \\\tilde{y} \in \mathbb{R}^p\\, \\\mathbf{P} \tilde{y}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{P})\\ ([Definition 3](#def-orthogonal-projection)).
> 2.  If \\\mathbf{P}\_1\\ and \\\mathbf{P}\_2\\ are \\p \times p\\ matrices such that, for every \\\tilde{y}\\, both \\\mathbf{P}\_1 \tilde{y}\\ and \\\mathbf{P}\_2 \tilde{y}\\ are the orthogonal projection of \\\tilde{y}\\ onto the same subspace \\\mathcal{S}\\, then \\\mathbf{P}\_1 = \mathbf{P}\_2\\.

> **NOTE:**
>
> *Proof*. **Part 1.** Write \\\tilde{y} = \mathbf{P} \tilde{y} + (\tilde{y} - \mathbf{P} \tilde{y})\\. The first term is in \\\mathcal{C}(\mathbf{P})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)). For the second,
>
> \\ \begin{aligned} \mathbf{P}\\(\tilde{y} - \mathbf{P} \tilde{y}) &= \mathbf{P} \tilde{y} - \mathbf{P}\\(\mathbf{P} \tilde{y}) && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= \mathbf{P} \tilde{y} - (\mathbf{P} \mathbf{P})\\\tilde{y} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{P} \tilde{y} - \mathbf{P}^2 \tilde{y} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-power}{\text{Definition~2 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{P} \tilde{y} - \mathbf{P} \tilde{y} && \text{(} \mathbf{P} \text{ is idempotent)} \\ &= \tilde{0}\_p, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\tilde{y} - \mathbf{P} \tilde{y} \in \mathcal{N}(\mathbf{P})\\. Since \\\mathbf{P} = {\mathbf{P}}^{\top}\\,
>
> \\ \begin{aligned} \mathcal{N}(\mathbf{P}) &= \mathcal{N}({\mathbf{P}}^{\top}) \\ &= \mathcal{C}(\mathbf{P})^\perp \end{aligned} \\
>
> ([Theorem 7 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-complement-null-space)). By the uniqueness in [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum), \\\mathbf{P} \tilde{y}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{P})\\.
>
> **Part 2.** The orthogonal projection of a vector onto \\\mathcal{S}\\ is unique ([Definition 3](#def-orthogonal-projection)), so \\\mathbf{P}\_1 \tilde{e}\_j = \mathbf{P}\_2 \tilde{e}\_j\\ for each indicator vector \\\tilde{e}\_j\\ ([Definition 12 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)). \\\mathbf{P}\_1 \tilde{e}\_j\\ is column \\j\\ of \\\mathbf{P}\_1\\: by [Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns) it is the combination of the columns of \\\mathbf{P}\_1\\ with coefficients the entries of \\\tilde{e}\_j\\, which are \\1\\ in place \\j\\ and \\0\\ elsewhere ([Definition 12 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)). Likewise for \\\mathbf{P}\_2\\, so the two matrices have the same columns.

> **NOTE:**
>
> **Example 8 (Two routes to the same projection matrix)** The matrix \\\mathbf{P} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ of [Example 10 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-projection-matrix) is an orthogonal projection matrix, and its column space is \\\operatorname{span}\mathopen{}\left\\(1, 0)\right\\\mathclose{}\\, the horizontal axis. By part 1, \\\mathbf{P}(v_1, v_2) = (v_1, 0)\\ is the orthogonal projection onto that axis: the remainder \\(0, v_2)\\ is orthogonal to \\(1, 0)\\. The vector \\\tilde{q}\_1 = (1, 0)\\ has length \\1\\ and spans the axis, so it is an orthonormal basis of it, and with \\\mathbf{B} = \[\tilde{q}\_1\]\\,
>
> \\ \begin{aligned} \mathbf{B} {\mathbf{B}}^{\top} &= \begin{bmatrix} 1 \\ 0 \end{bmatrix} \begin{bmatrix} 1 & 0 \end{bmatrix} \\ &= \mathbf{P}, \end{aligned} \\
>
> as part 2 and [Theorem 4](#thm-projector-onb) require.
>
> The oblique projection \\\mathbf{Q} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}\\ of [Example 10 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-projection-matrix) also maps every vector into the horizontal axis. It sends \\(0, 1)\\ to \\(1, 0)\\, but the remainder \\(0, 1) - (1, 0) = (-1, 1)\\ is not orthogonal to the axis, so \\(1, 0)\\ is not the orthogonal projection of \\(0, 1)\\ onto the axis, which is \\\mathbf{P}(0, 1) = (0, 0)\\.

> **NOTE:**
>
> **Theorem 6 (The hat matrix projects onto the column space of the design matrix)** If \\\mathbf{X}\\ is an \\n \times p\\ design matrix with \\\operatorname{rank}(\mathbf{X}) = p\\, then for every \\\tilde{y}\in \mathbb{R}^n\\, \\\mathbf{H} \tilde{y}\\ ([Definition 2](#def-hat-matrix)) is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{X})\\. So \\\mathbf{H} = \mathbf{Q} {\mathbf{Q}}^{\top}\\ for any \\n \times p\\ matrix \\\mathbf{Q}\\ whose columns are an orthonormal basis of \\\mathcal{C}(\mathbf{X})\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{H}\\ is an orthogonal projection matrix ([Theorem 2](#thm-hat-matrix)), so \\\mathbf{H} \tilde{y}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{H})\\ ([Theorem 5](#thm-projection-matrix-projects), part 1). It remains to show \\\mathcal{C}(\mathbf{H}) = \mathcal{C}(\mathbf{X})\\.
>
> **\\\mathcal{C}(\mathbf{H}) \subseteq \mathcal{C}(\mathbf{X})\\.** \\\mathbf{H} \tilde{z} = \mathbf{X}\\\mathopen{}\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1} {\mathbf{X}}^{\top} \tilde{z}\right)\mathclose{}\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), which is in \\\mathcal{C}(\mathbf{X})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)).
>
> **\\\mathcal{C}(\mathbf{X}) \subseteq \mathcal{C}(\mathbf{H})\\.** First,
>
> \\ \begin{aligned} \mathbf{H} \mathbf{X} &= \mathbf{X}({\mathbf{X}}^{\top}\mathbf{X})^{-1} {\mathbf{X}}^{\top} \mathbf{X} && \text{(}\href{#def-hat-matrix}{\text{Definition~2}}\text{)} \\ &= \mathbf{X}\\\mathopen{}\left(({\mathbf{X}}^{\top}\mathbf{X})^{-1} ({\mathbf{X}}^{\top}\mathbf{X})\right)\mathclose{} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{X}\\\mathbf{I}\_p && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{X}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \end{aligned} \\
>
> So for every \\\tilde{b} \in \mathbb{R}^p\\, \\\mathbf{X}\tilde{b} = (\mathbf{H} \mathbf{X})\\\tilde{b}\\, since \\\mathbf{H} \mathbf{X}= \mathbf{X}\\, and \\(\mathbf{H} \mathbf{X})\\\tilde{b} = \mathbf{H}\\(\mathbf{X}\tilde{b})\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), which is in \\\mathcal{C}(\mathbf{H})\\.
>
> \\\mathcal{C}(\mathbf{X})\\ has dimension \\p \ge 1\\ ([Theorem 5 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-dim)), so an orthonormal basis of it has \\p\\ vectors ([Definition 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)), and \\\mathbf{Q} {\mathbf{Q}}^{\top}\\ also gives the orthogonal projection onto \\\mathcal{C}(\mathbf{X})\\ ([Theorem 4](#thm-projector-onb), with \\n\\ in place of \\p\\ and \\r = p\\). By [Theorem 5](#thm-projection-matrix-projects), part 2, \\\mathbf{H} = \mathbf{Q} {\mathbf{Q}}^{\top}\\.

> **NOTE:**
>
> **Example 9 (The intercept-only hat matrix, from an orthonormal basis)** For the intercept-only design \\\mathbf{X}= \begin{bmatrix} 1 \\ 1 \end{bmatrix}\\ of [Example 2](#exm-hat-matrix), \\\mathcal{C}(\mathbf{X}) = \operatorname{span}\mathopen{}\left\\(1, 1)\right\\\mathclose{}\\, with orthonormal basis \\\tilde{q}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1)\\, since
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{q}\_1\right\rVert\mathclose{} &= \sqrt{\tfrac{1}{2} + \tfrac{1}{2}} \\ &= 1. \end{aligned} \\
>
> With \\\mathbf{Q} = \[\tilde{q}\_1\]\\,
>
> \\ \begin{aligned} \mathbf{Q} {\mathbf{Q}}^{\top} &= \tfrac{1}{2} \begin{bmatrix} 1 \\ 1 \end{bmatrix} \begin{bmatrix} 1 & 1 \end{bmatrix} \\ &= \begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}, \end{aligned} \\
>
> the hat matrix found in [Example 2](#exm-hat-matrix). The fitted values \\(\bar{y}, \bar{y})\\ are the closest point to \\\tilde{y}\\ on the line of constant vectors ([Theorem 3](#thm-closest-point)), and the residuals \\(y_1 - \bar{y}, y_2 - \bar{y})\\ are orthogonal to \\(1, 1)\\:
>
> \\ \begin{aligned} (1, 1) \cdot (y_1 - \bar{y}, y_2 - \bar{y}) &= y_1 + y_2 - 2\bar{y} \\ &= 0, \end{aligned} \\
>
> since \\2\bar{y} = y_1 + y_2\\.

### 1.2 Generalized inverses and linear systems

> **NOTE:**
>
> This section is adapted from Zhou ([2024b](#ref-zhou2024matinv)), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source defers the existence of the Moore-Penrose inverse to the singular value decomposition; the proof here builds it from a rank factorization ([Theorem 12 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-factorization)) instead, and the section adds the projection \\\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top}\\ for any generalized inverse \\\mathbf{G}\\ of \\{\mathbf{X}}^{\top} \mathbf{X}\\, which the source does not cover.

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
> **Definition 4 (Generalized inverse)** A **generalized inverse** of an \\m \times n\\ matrix \\\mathbf{A}\\ is an \\n \times m\\ matrix \\\mathbf{G}\\ such that
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
> ([Definition 5 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-matrix-inverse), [Theorem 7 in Matrices](linear-algebra-matrices.llms.md#thm-identity)), so \\\mathbf{A}^{-1}\\ is a generalized inverse. If \\\mathbf{G}\\ is any generalized inverse, then
>
> \\ \begin{aligned} \mathbf{G} &= \mathbf{I}\_p\\\mathbf{G}\\\mathbf{I}\_p && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \\ &= (\mathbf{A}^{-1} \mathbf{A})\\\mathbf{G}\\(\mathbf{A} \mathbf{A}^{-1}) && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{A}^{-1}\\(\mathbf{A} \mathbf{G} \mathbf{A})\\\mathbf{A}^{-1} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A}^{-1} \mathbf{A} \mathbf{A}^{-1} && \text{(}\href{#def-generalized-inverse}{\text{Definition~4}}\text{)} \\ &= \mathbf{I}\_p\\\mathbf{A}^{-1} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{A}^{-1}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 12 (The generalized inverse of an invertible matrix)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ of [Example 5 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-invertible-matrix), the only generalized inverse is \\\mathbf{A}^{-1} = \begin{bmatrix} 0.5 & -0.5 \\ 0 & 1 \end{bmatrix}\\. The matrix of [Example 11](#exm-generalized-inverse), by contrast, has infinitely many, so by [Theorem 8](#thm-generalized-inverse-invertible) it is singular.

> **NOTE:**
>
> **Theorem 9 (A generalized inverse solves every solvable system)** Let \\\mathbf{A}\\ be \\m \times n\\, let \\\mathbf{G}\\ be a generalized inverse of \\\mathbf{A}\\ ([Definition 4](#def-generalized-inverse)), and let \\\tilde{b} \in \mathbb{R}^m\\. If \\\mathbf{A} \tilde{x} = \tilde{b}\\ has a solution, then \\\mathbf{G} \tilde{b}\\ is a solution.

> **NOTE:**
>
> *Proof*. Let \\\tilde{x}\_0\\ be a solution, so \\\mathbf{A} \tilde{x}\_0 = \tilde{b}\\. Then
>
> \\ \begin{aligned} \mathbf{A}\\(\mathbf{G} \tilde{b}) &= \mathbf{A} \mathbf{G}\\(\mathbf{A} \tilde{x}\_0) && \text{(substitute } \tilde{b} = \mathbf{A} \tilde{x}\_0 \text{)} \\ &= (\mathbf{A} \mathbf{G} \mathbf{A})\\\tilde{x}\_0 && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A} \tilde{x}\_0 && \text{(}\href{#def-generalized-inverse}{\text{Definition~4}}\text{)} \\ &= \tilde{b}. && \text{(} \tilde{x}\_0 \text{ is a solution)} \end{aligned} \\

> **NOTE:**
>
> **Example 13 (Solving with a generalized inverse)** With \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ and its generalized inverse \\\mathbf{G} = \begin{bmatrix} 1 & 5 \\ 7 & 0 \end{bmatrix}\\ ([Example 11](#exm-generalized-inverse)), the system \\\mathbf{A} \tilde{x} = (2, 0)\\ has the solution \\(2, 0)\\, and \\\mathbf{G}\\(2, 0) = (2, 14)\\ is a solution too: \\\mathbf{A}\\(2, 14) = (2, 0)\\. The system \\\mathbf{A} \tilde{x} = (2, 1)\\ has no solution, since the second entry of \\\mathbf{A} \tilde{x}\\ is always \\0\\; there \\\mathbf{G}\\(2, 1) = (7, 14)\\ gives \\\mathbf{A}\\(7, 14) = (7, 0) \ne (2, 1)\\.

> **NOTE:**
>
> **Definition 5 (Moore-Penrose inverse)** A **Moore-Penrose inverse** of an \\m \times n\\ matrix \\\mathbf{A}\\ is an \\n \times m\\ matrix \\\mathbf{G}\\ satisfying all four conditions
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
> \\ \begin{aligned} \mathbf{A} \mathbf{G}\_1 &= {(\mathbf{A} \mathbf{G}\_1)}^{\top} && \text{(condition 3 for } \mathbf{G}\_1 \text{)} \\ &= {\mathbf{G}\_1}^{\top}\\{\mathbf{A}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= {\mathbf{G}\_1}^{\top}\\{(\mathbf{A} \mathbf{G}\_2 \mathbf{A})}^{\top} && \text{(condition 1 for } \mathbf{G}\_2 \text{)} \\ &= {\mathbf{G}\_1}^{\top}\\{\mathbf{A}}^{\top}\\{\mathbf{G}\_2}^{\top}\\{\mathbf{A}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{, twice)} \\ &= ({\mathbf{G}\_1}^{\top}\\{\mathbf{A}}^{\top})\\({\mathbf{G}\_2}^{\top}\\{\mathbf{A}}^{\top}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {(\mathbf{A} \mathbf{G}\_1)}^{\top}\\{(\mathbf{A} \mathbf{G}\_2)}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{, twice)} \\ &= (\mathbf{A} \mathbf{G}\_1)(\mathbf{A} \mathbf{G}\_2) && \text{(condition 3 for } \mathbf{G}\_1 \text{ and } \mathbf{G}\_2 \text{)} \\ &= (\mathbf{A} \mathbf{G}\_1 \mathbf{A})\\\mathbf{G}\_2 && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A} \mathbf{G}\_2. && \text{(condition 1 for } \mathbf{G}\_1 \text{)} \end{aligned} \\
>
> **\\\mathbf{G}\_1 \mathbf{A} = \mathbf{G}\_2 \mathbf{A}\\.**
>
> \\ \begin{aligned} \mathbf{G}\_1 \mathbf{A} &= {(\mathbf{G}\_1 \mathbf{A})}^{\top} && \text{(condition 4 for } \mathbf{G}\_1 \text{)} \\ &= {\mathbf{A}}^{\top}\\{\mathbf{G}\_1}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= {(\mathbf{A} \mathbf{G}\_2 \mathbf{A})}^{\top}\\{\mathbf{G}\_1}^{\top} && \text{(condition 1 for } \mathbf{G}\_2 \text{)} \\ &= {\mathbf{A}}^{\top}\\{\mathbf{G}\_2}^{\top}\\{\mathbf{A}}^{\top}\\{\mathbf{G}\_1}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{, twice)} \\ &= ({\mathbf{A}}^{\top}\\{\mathbf{G}\_2}^{\top})\\({\mathbf{A}}^{\top}\\{\mathbf{G}\_1}^{\top}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {(\mathbf{G}\_2 \mathbf{A})}^{\top}\\{(\mathbf{G}\_1 \mathbf{A})}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{, twice)} \\ &= (\mathbf{G}\_2 \mathbf{A})(\mathbf{G}\_1 \mathbf{A}) && \text{(condition 4 for } \mathbf{G}\_2 \text{ and } \mathbf{G}\_1 \text{)} \\ &= \mathbf{G}\_2\\(\mathbf{A} \mathbf{G}\_1 \mathbf{A}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{G}\_2 \mathbf{A}. && \text{(condition 1 for } \mathbf{G}\_1 \text{)} \end{aligned} \\
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
> - If \\\operatorname{rank}(\mathbf{A}) = r \ge 1\\ and \\\mathbf{A} = \mathbf{C} \mathbf{R}\\ is a rank factorization ([Definition 7 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-rank-factorization)), then
>
> \\ \underbrace{\mathbf{A}^+}\_{n \times m} = \underbrace{{\mathbf{R}}^{\top}}\_{n \times r} \underbrace{(\mathbf{R} {\mathbf{R}}^{\top})^{-1}}\_{r \times r} \underbrace{({\mathbf{C}}^{\top} \mathbf{C})^{-1}}\_{r \times r} \underbrace{{\mathbf{C}}^{\top}}\_{r \times m}. \\

> **NOTE:**
>
> *Proof*. **The two cases cover every matrix.** If \\\mathbf{A} \ne \mathbf{0}\_{m \times n}\\, it has a nonzero column, which is linearly independent on its own (\\c\\\tilde{v} = \tilde{0}\\ with \\\tilde{v} \ne \tilde{0}\\ forces \\c = 0\\), so \\\operatorname{rank}(\mathbf{A}) \ge 1\\ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)).
>
> **The zero matrix.** With \\\mathbf{A} = \mathbf{0}\_{m \times n}\\ and \\\mathbf{G} = \mathbf{0}\_{n \times m}\\, every product in conditions 1 to 4 is a zero matrix, and a zero matrix equals its own transpose, so all four conditions hold.
>
> **The two inverses exist.** Now suppose \\\operatorname{rank}(\mathbf{A}) = r \ge 1\\. A rank factorization exists ([Theorem 12 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-factorization)). \\\mathbf{C}\\ is \\m \times r\\ and \\\mathbf{R}\\ is \\r \times n\\. Both have rank \\r\\:
>
> \\ \begin{aligned} r &= \operatorname{rank}(\mathbf{C} \mathbf{R}) && \text{(} \mathbf{A} = \mathbf{C} \mathbf{R} \text{)} \\ &\le \operatorname{rank}(\mathbf{C}) && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-product}{\text{Theorem~7 in Column Space, Null Space and Rank-Nullity}}\text{)} \\ &\le r, && \text{(}\href{linear-algebra-rank-nullity.qmd#cor-rank-bound}{\text{Corollary~1 in Column Space, Null Space and Rank-Nullity}}\text{, } \mathbf{C} \text{ has } r \text{ columns)} \end{aligned} \\
>
> and, using \\{(\mathbf{C} \mathbf{R})}^{\top} = {\mathbf{R}}^{\top} {\mathbf{C}}^{\top}\\ ([Theorem 16 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product)),
>
> \\ \begin{aligned} r &= \operatorname{rank}\mathopen{}\left({\mathbf{R}}^{\top} {\mathbf{C}}^{\top}\right)\mathclose{} && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-transpose}{\text{Theorem~8 in Column Space, Null Space and Rank-Nullity}}\text{)} \\ &\le \operatorname{rank}({\mathbf{R}}^{\top}) && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-product}{\text{Theorem~7 in Column Space, Null Space and Rank-Nullity}}\text{)} \\ &\le r. && \text{(}\href{linear-algebra-rank-nullity.qmd#cor-rank-bound}{\text{Corollary~1 in Column Space, Null Space and Rank-Nullity}}\text{, } {\mathbf{R}}^{\top} \text{ has } r \text{ columns)} \end{aligned} \\
>
> So \\\mathbf{C}\\ and \\{\mathbf{R}}^{\top}\\ have full column rank \\r\\, and \\{\mathbf{C}}^{\top} \mathbf{C}\\ and \\\mathbf{R} {\mathbf{R}}^{\top} = {({\mathbf{R}}^{\top})}^{\top}\\{\mathbf{R}}^{\top}\\ are invertible ([Theorem 1](#thm-gram-invertible)). They are symmetric:
>
> \\ \begin{aligned} {({\mathbf{C}}^{\top} \mathbf{C})}^{\top} &= {\mathbf{C}}^{\top}\\{({\mathbf{C}}^{\top})}^{\top} \\ &= {\mathbf{C}}^{\top} \mathbf{C} \end{aligned} \\
>
> ([Theorem 16 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product), [Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)), and likewise for \\\mathbf{R} {\mathbf{R}}^{\top}\\. Write \\\mathbf{S} \stackrel{\text{def}}{=}(\mathbf{R} {\mathbf{R}}^{\top})^{-1}\\ and \\\mathbf{T} \stackrel{\text{def}}{=}({\mathbf{C}}^{\top} \mathbf{C})^{-1}\\, both symmetric ([Corollary 1 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric)), and \\\mathbf{G} \stackrel{\text{def}}{=}{\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top}\\.
>
> **Two products.**
>
> \\ \begin{aligned} \mathbf{A} \mathbf{G} &= \mathbf{C} \mathbf{R}\\{\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top} && \text{(substitute } \mathbf{A} \text{ and } \mathbf{G} \text{)} \\ &= \mathbf{C}\\(\mathbf{R} {\mathbf{R}}^{\top})\\\mathbf{S}\\\mathbf{T} {\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{C}\\\mathbf{I}\_r\\\mathbf{T} {\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top}, && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \end{aligned} \\
>
> \\ \begin{aligned} \mathbf{G} \mathbf{A} &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top}\\\mathbf{C} \mathbf{R} && \text{(substitute } \mathbf{G} \text{ and } \mathbf{A} \text{)} \\ &= {\mathbf{R}}^{\top} \mathbf{S}\\\mathbf{T}\\({\mathbf{C}}^{\top} \mathbf{C})\\\mathbf{R} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top} \mathbf{S}\\\mathbf{I}\_r\\\mathbf{R} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{R}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \end{aligned} \\
>
> **Conditions 3 and 4.**
>
> \\ \begin{aligned} {(\mathbf{A} \mathbf{G})}^{\top} &= {(\mathbf{C} \mathbf{T} {\mathbf{C}}^{\top})}^{\top} && \text{(first product)} \\ &= {\mathopen{}\left(\mathbf{C}\\(\mathbf{T} {\mathbf{C}}^{\top})\right)\mathclose{}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {(\mathbf{T} {\mathbf{C}}^{\top})}^{\top}\\{\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= {({\mathbf{C}}^{\top})}^{\top}\\{\mathbf{T}}^{\top}\\{\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= \mathbf{C}\\{\mathbf{T}}^{\top}\\{\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \\ &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top}, && \text{(} \mathbf{T} \text{ is symmetric)} \end{aligned} \\
>
> \\ \begin{aligned} {(\mathbf{G} \mathbf{A})}^{\top} &= {({\mathbf{R}}^{\top} \mathbf{S} \mathbf{R})}^{\top} && \text{(second product)} \\ &= {\mathopen{}\left({\mathbf{R}}^{\top}\\(\mathbf{S} \mathbf{R})\right)\mathclose{}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {(\mathbf{S} \mathbf{R})}^{\top}\\{({\mathbf{R}}^{\top})}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top}\\{\mathbf{S}}^{\top}\\{({\mathbf{R}}^{\top})}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top}\\{\mathbf{S}}^{\top}\\\mathbf{R} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{R}. && \text{(} \mathbf{S} \text{ is symmetric)} \end{aligned} \\
>
> **Condition 1.**
>
> \\ \begin{aligned} \mathbf{A} \mathbf{G} \mathbf{A} &= \mathbf{C} \mathbf{T} {\mathbf{C}}^{\top}\\\mathbf{C} \mathbf{R} && \text{(first product)} \\ &= \mathbf{C}\\\mathbf{T}\\({\mathbf{C}}^{\top} \mathbf{C})\\\mathbf{R} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{C}\\\mathbf{I}\_r\\\mathbf{R} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{A}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \end{aligned} \\
>
> **Condition 2.**
>
> \\ \begin{aligned} \mathbf{G} \mathbf{A} \mathbf{G} &= {\mathbf{R}}^{\top} \mathbf{S} \mathbf{R}\\{\mathbf{R}}^{\top} \mathbf{S} \mathbf{T} {\mathbf{C}}^{\top} && \text{(second product)} \\ &= {\mathbf{R}}^{\top}\\\mathbf{S}\\(\mathbf{R} {\mathbf{R}}^{\top})\\\mathbf{S}\\\mathbf{T} {\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top}\\\mathbf{I}\_r\\\mathbf{S}\\\mathbf{T} {\mathbf{C}}^{\top} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{G}. && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 17 (The Moore-Penrose inverse of a rank-one matrix)** For \\\mathbf{A}\\ in [Example 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-column-space), the rank factorization \\\mathbf{C} = \begin{bmatrix} 1 \\ 3 \end{bmatrix}\\, \\\mathbf{R} = \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}\\ ([Example 19 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-rank-factorization)) gives
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
> **Definition 6 (Consistent linear system)** A linear system ([Definition 12 in Matrices](linear-algebra-matrices.llms.md#def-linear-system)) \\\mathbf{A} \tilde{x} = \tilde{b}\\, with \\\mathbf{A}\\ an \\m \times n\\ matrix and \\\tilde{b} \in \mathbb{R}^m\\, is **consistent** if it has at least one solution \\\tilde{x} \in \mathbb{R}^n\\, and **inconsistent** otherwise.

> **NOTE:**
>
> **Example 18 (A consistent system and an inconsistent one)** With \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\, \\\mathbf{A}\\(x_1, x_2) = (x_1, 0)\\ ([Definition 11 in Matrices](linear-algebra-matrices.llms.md#def-matvec-mult)).
>
> - \\\mathbf{A} \tilde{x} = (2, 0)\\ is consistent: \\\tilde{x} = (2, 0)\\ is a solution.
> - \\\mathbf{A} \tilde{x} = (2, 1)\\ is inconsistent: the second entry of \\\mathbf{A} \tilde{x}\\ is always \\0\\, never \\1\\.

> **NOTE:**
>
> **Theorem 13 (When a linear system has a solution)** Let \\\mathbf{A}\\ be \\m \times n\\, let \\\tilde{b} \in \mathbb{R}^m\\, and let \\\mathbf{G}\\ be any generalized inverse of \\\mathbf{A}\\ ([Definition 4](#def-generalized-inverse)). The following statements are equivalent:
>
> 1.  \\\mathbf{A} \tilde{x} = \tilde{b}\\ is consistent ([Definition 6](#def-consistent-system));
> 2.  \\\tilde{b} \in \mathcal{C}(\mathbf{A})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space));
> 3.  \\\mathbf{A} \mathbf{G} \tilde{b} = \tilde{b}\\.

> **NOTE:**
>
> *Proof*. **1 and 2 are equivalent.** Statement 1 says \\\tilde{b} = \mathbf{A} \tilde{x}\\ for some \\\tilde{x}\\ ([Definition 6](#def-consistent-system)), and \\\mathcal{C}(\mathbf{A})\\ is the set of vectors \\\mathbf{A} \tilde{x}\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)), so \\\tilde{b}\\ is in it exactly when \\\tilde{b} = \mathbf{A} \tilde{x}\\ for some \\\tilde{x}\\.
>
> **1 implies 3.** By [Theorem 9](#thm-generalized-inverse-solves), \\\mathbf{G} \tilde{b}\\ is a solution, so \\\mathbf{A}\\(\mathbf{G} \tilde{b}) = \tilde{b}\\, which is statement 3 ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)).
>
> **3 implies 1.** If \\\mathbf{A} \mathbf{G} \tilde{b} = \tilde{b}\\, then \\\tilde{x} = \mathbf{G} \tilde{b}\\ is a solution, since \\\mathbf{A}\\(\mathbf{G} \tilde{b}) = (\mathbf{A} \mathbf{G})\\\tilde{b}\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)).

> **NOTE:**
>
> **Example 19 (Testing consistency with a generalized inverse)** For \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ and the generalized inverse \\\mathbf{G} = \begin{bmatrix} 1 & 5 \\ 7 & 0 \end{bmatrix}\\, \\\mathbf{A} \mathbf{G} = \begin{bmatrix} 1 & 5 \\ 0 & 0 \end{bmatrix}\\.
>
> - \\\tilde{b} = (2, 0)\\:
>
>   \\ \begin{aligned} \mathbf{A} \mathbf{G} \tilde{b} &= (2, 0) \\ &= \tilde{b}, \end{aligned} \\
>
>   so the system is consistent.
>
> - \\\tilde{b} = (2, 1)\\: \\\mathbf{A} \mathbf{G} \tilde{b} = (7, 0) \ne \tilde{b}\\, so it is not, as [Example 13](#exm-generalized-inverse-solves) found directly.

> **NOTE:**
>
> **Theorem 14 (All solutions of a linear system)** Let \\\mathbf{A}\\ be \\m \times n\\ with a generalized inverse \\\mathbf{G}\\ ([Definition 4](#def-generalized-inverse)).
>
> 1.  \\\mathcal{N}(\mathbf{A}) = \mathcal{C}(\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\: \\\tilde{x}\\ solves \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\ exactly when \\\tilde{x} = (\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\tilde{q}\\ for some \\\tilde{q} \in \mathbb{R}^n\\.
> 2.  If \\\mathbf{A} \tilde{x} = \tilde{b}\\ is consistent ([Definition 6](#def-consistent-system)), then \\\tilde{x}\\ is a solution exactly when \\ \tilde{x} = \mathbf{G} \tilde{b} + (\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\tilde{q} \quad \text{for some } \tilde{q} \in \mathbb{R}^n: \\ one particular solution plus a vector of \\\mathcal{N}(\mathbf{A})\\.

> **NOTE:**
>
> *Proof*. **Part 1.** First,
>
> \\ \begin{aligned} \mathbf{A}\\(\mathbf{I}\_n - \mathbf{G} \mathbf{A}) &= \mathbf{A} \mathbf{I}\_n - \mathbf{A}\\(\mathbf{G} \mathbf{A}) && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~7}}\text{)} \\ &= \mathbf{A} \mathbf{I}\_n - \mathbf{A} \mathbf{G} \mathbf{A} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A} - \mathbf{A} \mathbf{G} \mathbf{A} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \\ &= \mathbf{A} - \mathbf{A} && \text{(}\href{#def-generalized-inverse}{\text{Definition~4}}\text{)} \\ &= \mathbf{0}\_{m \times n}, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\mathbf{A}\\(\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\tilde{q} = \tilde{0}\_m\\ for every \\\tilde{q}\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), and \\\mathcal{C}(\mathbf{I}\_n - \mathbf{G} \mathbf{A}) \subseteq \mathcal{N}(\mathbf{A})\\. Conversely, if \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\, then
>
> \\ \begin{aligned} (\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\tilde{x} &= \mathbf{I}\_n \tilde{x} - (\mathbf{G} \mathbf{A})\\\tilde{x} && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~7}}\text{, with } \tilde{x} \text{ as the last factor)} \\ &= \tilde{x} - (\mathbf{G} \mathbf{A})\\\tilde{x} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \\ &= \tilde{x} - \mathbf{G}\\(\mathbf{A} \tilde{x}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \tilde{x} - \mathbf{G}\\\tilde{0}\_m && \text{(} \mathbf{A} \tilde{x} = \tilde{0}\_m \text{)} \\ &= \tilde{x}, && \text{(} \mathbf{G}\\\tilde{0}\_m = \tilde{0}\_n \text{)} \end{aligned} \\
>
> so \\\tilde{x}\\ is in \\\mathcal{C}(\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\, with \\\tilde{q} = \tilde{x}\\.
>
> **Part 2.** \\\mathbf{G} \tilde{b}\\ is a solution ([Theorem 9](#thm-generalized-inverse-solves)). For any \\\tilde{x}\\,
>
> \\ \begin{aligned} \mathbf{A}\\(\tilde{x} - \mathbf{G} \tilde{b}) &= \mathbf{A} \tilde{x} - \mathbf{A}\\(\mathbf{G} \tilde{b}) && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= \mathbf{A} \tilde{x} - \mathbf{A} \mathbf{G} \tilde{b} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A} \tilde{x} - \tilde{b}, && \text{(}\href{#thm-consistency}{\text{Theorem~13}}\text{, statement 3)} \end{aligned} \\
>
> so \\\tilde{x}\\ solves \\\mathbf{A} \tilde{x} = \tilde{b}\\ exactly when \\\tilde{x} - \mathbf{G} \tilde{b} \in \mathcal{N}(\mathbf{A})\\, that is, by part 1, exactly when \\\tilde{x} - \mathbf{G} \tilde{b} = (\mathbf{I}\_n - \mathbf{G} \mathbf{A})\\\tilde{q}\\ for some \\\tilde{q}\\.

> **NOTE:**
>
> **Example 20 (All solutions of a consistent system)** For \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\, \\\mathbf{G} = \begin{bmatrix} 1 & 5 \\ 7 & 0 \end{bmatrix}\\ and \\\tilde{b} = (2, 0)\\: \\\mathbf{G} \tilde{b} = (2, 14)\\, \\\mathbf{G} \mathbf{A} = \begin{bmatrix} 1 & 0 \\ 7 & 0 \end{bmatrix}\\, and \\\mathbf{I}\_2 - \mathbf{G} \mathbf{A} = \begin{bmatrix} 0 & 0 \\ -7 & 1 \end{bmatrix}\\, so
>
> \\ \tilde{x} = (2, 14) + (0, -7 q_1 + q_2), \qquad q_1, q_2 \in \mathbb{R}. \\
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
> 1.  \\\mathbf{A} \tilde{x} = \tilde{b}\\ is consistent for every \\\tilde{b} \in \mathbb{R}^m\\ exactly when \\\operatorname{rank}(\mathbf{A}) = m\\.
> 2.  A consistent system \\\mathbf{A} \tilde{x} = \tilde{b}\\ has exactly one solution exactly when \\\operatorname{rank}(\mathbf{A}) = n\\.

> **NOTE:**
>
> *Proof*. **Part 1.** By [Theorem 13](#thm-consistency), the system is consistent for every \\\tilde{b}\\ exactly when \\\mathcal{C}(\mathbf{A}) = \mathbb{R}^m\\. \\\mathcal{C}(\mathbf{A})\\ is a subspace of \\\mathbb{R}^m\\ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)) with dimension \\\operatorname{rank}(\mathbf{A})\\ ([Theorem 5 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-dim)), and \\\dim(\mathbb{R}^m) = m\\ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)). If the dimension is \\m\\, then \\\mathcal{C}(\mathbf{A}) = \mathbb{R}^m\\ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim)); if \\\mathcal{C}(\mathbf{A}) = \mathbb{R}^m\\, the dimension is \\m\\.
>
> **Part 2.** By [Theorem 14](#thm-solution-set), the solutions are a particular solution plus the vectors of \\\mathcal{N}(\mathbf{A})\\, so there is exactly one solution exactly when \\\mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}\\, that is, when \\\operatorname{nullity}(\mathbf{A}) = 0\\ (a subspace of dimension \\0\\ has the empty list as a basis, whose span is \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, by [Definition 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension) and [Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span); and \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ has dimension \\0\\, by [Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)). By [Theorem 6 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-nullity), that is when \\\operatorname{rank}(\mathbf{A}) = n\\.

> **NOTE:**
>
> **Example 21 (Three systems)**  
>
> - The \\2 \times 3\\ matrix \\\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}\\ of [Example 13 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-rank-bound) has rank \\2 = m\\, so every system with it is consistent, but \\2 \< 3 = n\\, so the solutions are never unique.
>
> - The \\3 \times 2\\ matrix \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ of [Example 1](#exm-gram-invertible) has rank \\2 = n\\, so a consistent system has one solution, but \\2 \< 3 = m\\, so some systems are inconsistent: \\(1, 0, 0) \notin \mathcal{C}(\mathbf{X})\\, because \\a\\(1, 1, 1) + b\\(1, 2, 3)\\ has equal differences between consecutive entries, and \\(1, 0, 0)\\ does not.
>
> - An invertible \\p \times p\\ matrix \\\mathbf{A}\\ has rank \\p\\: if \\\mathbf{A} \tilde{x} = \tilde{0}\\ then
>
>   \\ \begin{aligned} \tilde{x} &= \mathbf{A}^{-1} \mathbf{A} \tilde{x} \\ &= \tilde{0}, \end{aligned} \\
>
>   so its nullity is \\0\\ and its rank is \\p\\ ([Theorem 6 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-nullity)). So every system with it is consistent (part 1, with \\p = m\\) and has exactly one solution (part 2, with \\p = n\\), namely \\\mathbf{A}^{-1} \tilde{b}\\, since \\\mathbf{A}\\(\mathbf{A}^{-1} \tilde{b}) = \tilde{b}\\.

> **NOTE:**
>
> **Theorem 15 (The projection onto a column space, with any generalized inverse)** Let \\\mathbf{X}\\ be an \\n \times p\\ matrix of any rank, and let \\\mathbf{G}\\ be any generalized inverse of \\{\mathbf{X}}^{\top} \mathbf{X}\\ ([Definition 4](#def-generalized-inverse)). Then for every \\\tilde{y}\in \mathbb{R}^n\\, \\\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} \tilde{y}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{X})\\ ([Definition 3](#def-orthogonal-projection)). So the matrix \\\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top}\\ is the same for every choice of \\\mathbf{G}\\, and when \\\operatorname{rank}(\mathbf{X}) = p\\ it is the hat matrix \\\mathbf{H}\\ ([Definition 2](#def-hat-matrix)).

> **NOTE:**
>
> *Proof*. **\\{\mathbf{X}}^{\top} \tilde{y}\\ is in \\\mathcal{C}({\mathbf{X}}^{\top} \mathbf{X})\\.** \\\mathcal{C}({\mathbf{X}}^{\top} \mathbf{X}) \subseteq \mathcal{C}({\mathbf{X}}^{\top})\\, since \\({\mathbf{X}}^{\top} \mathbf{X})\\\tilde{z} = {\mathbf{X}}^{\top}\\(\mathbf{X}\tilde{z})\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)). Both are subspaces of \\\mathbb{R}^p\\ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)) with the same dimension: \\\operatorname{rank}({\mathbf{X}}^{\top} \mathbf{X}) = \operatorname{rank}({\mathbf{X}}^{\top})\\ ([Theorem 8 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-transpose), [Theorem 5 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-dim)). So \\\mathcal{C}({\mathbf{X}}^{\top} \mathbf{X}) = \mathcal{C}({\mathbf{X}}^{\top})\\ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim)), and since \\{\mathbf{X}}^{\top} \tilde{y}\in \mathcal{C}({\mathbf{X}}^{\top})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)), \\{\mathbf{X}}^{\top} \tilde{y}= {\mathbf{X}}^{\top} \mathbf{X}\tilde{z}\\ for some \\\tilde{z} \in \mathbb{R}^p\\.
>
> **The split.** Let
>
> \\ \begin{aligned} \tilde{u} &= \mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} \tilde{y}\\ &= \mathbf{X}\\(\mathbf{G} {\mathbf{X}}^{\top} \tilde{y}) \end{aligned} \\
>
> ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), which is in \\\mathcal{C}(\mathbf{X})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)). For \\\tilde{y}- \tilde{u}\\,
>
> \\ \begin{aligned} {\mathbf{X}}^{\top}\\(\tilde{y}- \tilde{u}) &= {\mathbf{X}}^{\top} \tilde{y}- {\mathbf{X}}^{\top}\\\tilde{u} && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= {\mathbf{X}}^{\top} \tilde{y}- {\mathbf{X}}^{\top}\\(\mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} \tilde{y}) && \text{(substitute } \tilde{u} \text{)} \\ &= {\mathbf{X}}^{\top} \tilde{y}- ({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}\\({\mathbf{X}}^{\top} \tilde{y}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\mathbf{X}}^{\top} \tilde{y}- ({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}\\({\mathbf{X}}^{\top} \mathbf{X})\\\tilde{z} && \text{(first step)} \\ &= {\mathbf{X}}^{\top} \tilde{y}- \mathopen{}\left(({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}\\({\mathbf{X}}^{\top} \mathbf{X})\right)\mathclose{}\\\tilde{z} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\mathbf{X}}^{\top} \tilde{y}- ({\mathbf{X}}^{\top} \mathbf{X})\\\tilde{z} && \text{(}\href{#def-generalized-inverse}{\text{Definition~4}}\text{)} \\ &= {\mathbf{X}}^{\top} \tilde{y}- {\mathbf{X}}^{\top} \tilde{y} && \text{(first step)} \\ &= \tilde{0}\_p, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\tilde{y}- \tilde{u} \in \mathcal{N}({\mathbf{X}}^{\top}) = \mathcal{C}(\mathbf{X})^\perp\\ ([Theorem 7 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-complement-null-space)). By the uniqueness in [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum), \\\tilde{u}\\ is the orthogonal projection of \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{X})\\.
>
> **Same matrix.** Every choice of \\\mathbf{G}\\ gives a matrix that projects every \\\tilde{y}\\ onto \\\mathcal{C}(\mathbf{X})\\, so all choices give the same matrix ([Theorem 5](#thm-projection-matrix-projects), part 2). When \\\operatorname{rank}(\mathbf{X}) = p\\, \\({\mathbf{X}}^{\top} \mathbf{X})^{-1}\\ is one choice ([Theorem 1](#thm-gram-invertible), [Theorem 8](#thm-generalized-inverse-invertible)), and it gives \\\mathbf{H}\\.

> **NOTE:**
>
> **Example 22 (A design matrix with a repeated column)** Let \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\, an intercept column entered twice, so \\\operatorname{rank}(\mathbf{X}) = 1 \< 2\\ and \\{\mathbf{X}}^{\top} \mathbf{X}= \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}\\ is not invertible: its rank is \\\operatorname{rank}(\mathbf{X}) = 1 \< 2\\ ([Theorem 8 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-transpose)), while an invertible \\2 \times 2\\ matrix has rank \\2\\ ([Example 21](#exm-solution-unique)). The matrix \\\mathbf{G} = \begin{bmatrix} \frac{1}{2} & 0 \\ 0 & 0 \end{bmatrix}\\ is a generalized inverse of it:
>
> \\ \begin{aligned} ({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}\\({\mathbf{X}}^{\top} \mathbf{X}) &= \begin{bmatrix} 1 & 0 \\ 1 & 0 \end{bmatrix} \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{, for the first product)} \\ &= \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}. && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \end{aligned} \\
>
> Then
>
> \\ \begin{aligned} \mathbf{X}\mathbf{G} {\mathbf{X}}^{\top} &= \begin{bmatrix} \frac{1}{2} & 0 \\ \frac{1}{2} & 0 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{, for } \mathbf{X}\mathbf{G} \text{)} \\ &= \begin{bmatrix} \frac{1}{2} & \frac{1}{2} \\ \frac{1}{2} & \frac{1}{2} \end{bmatrix}, && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \end{aligned} \\
>
> the hat matrix of the intercept-only model ([Example 2](#exm-hat-matrix)). Another generalized inverse, \\\mathbf{G}' = \begin{bmatrix} 0 & 0 \\ 0 & \frac{1}{2} \end{bmatrix}\\, which is one because \\({\mathbf{X}}^{\top} \mathbf{X})\\\mathbf{G}' = \begin{bmatrix} 0 & 1 \\ 0 & 1 \end{bmatrix}\\ and that times \\{\mathbf{X}}^{\top} \mathbf{X}\\ is again \\\begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}\\, gives \\\mathbf{X}\mathbf{G}' = \begin{bmatrix} 0 & \frac{1}{2} \\ 0 & \frac{1}{2} \end{bmatrix}\\ and the same \\\mathbf{X}\mathbf{G}' {\mathbf{X}}^{\top} = \begin{bmatrix} \frac{1}{2} & \frac{1}{2} \\ \frac{1}{2} & \frac{1}{2} \end{bmatrix}\\, as [Theorem 15](#thm-projector-generalized-inverse) says it must. Both project onto \\\mathcal{C}(\mathbf{X}) = \operatorname{span}\mathopen{}\left\\(1, 1)\right\\\mathclose{}\\, the column space of the intercept-only design.

### 1.3 Solving linear systems and least squares

> **NOTE:**
>
> This section is adapted from Zhou ([2024b](#ref-zhou2024matinv)) and Zhou ([2024a](#ref-zhou2024ls)), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The first source states that every invertible matrix has an LU factorization; that is false without reordering rows (the \\2 \times 2\\ row swap \\\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ has none), so this section states only how an LU factorization, when one exists, solves a system. The least squares results are proved here from the closest-point theorem ([Theorem 3](#thm-closest-point)) rather than by differentiating, and the QR factorization is derived from Gram-Schmidt ([Theorem 9 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#thm-gram-schmidt)).

> **NOTE:**
>
> **Definition 7 (Triangular matrix)** A square matrix \\\mathbf{U}\\ is **upper triangular** if every entry below the diagonal is \\0\\: \\u\_{ij} = 0\\ whenever \\i \> j\\. A square matrix \\\mathbf{L}\\ is **lower triangular** if every entry above the diagonal is \\0\\: \\\ell\_{ij} = 0\\ whenever \\i \< j\\. A lower triangular matrix whose diagonal entries are all \\1\\ is **unit lower triangular**.

> **NOTE:**
>
> **Example 23 (Triangular and not)**  
>
> - \\\begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix}\\ is upper triangular: its entries below the diagonal, in positions \\(2, 1)\\, \\(3, 1)\\ and \\(3, 2)\\, are \\0\\.
> - \\\begin{bmatrix} 1 & 0 \\ 4 & 1 \end{bmatrix}\\ is unit lower triangular.
> - A diagonal matrix ([Definition 4 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-diagonal-matrix)) is both upper and lower triangular.
> - \\\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ is neither: its \\(2, 1)\\ entry is not \\0\\, and neither is its \\(1, 2)\\ entry.

> **NOTE:**
>
> **Theorem 16 (Solving a triangular system by substitution)** Let \\\mathbf{U}\\ be an \\n \times n\\ upper triangular matrix ([Definition 7](#def-triangular-matrix)) whose diagonal entries \\u\_{11}, \ldots, u\_{nn}\\ are all nonzero. For every \\\tilde{b} \in \mathbb{R}^n\\, the system \\\mathbf{U} \tilde{x} = \tilde{b}\\ has exactly one solution, given for \\i = n, n - 1, \ldots, 1\\ in turn by
>
> \\ x_i = \frac{1}{u\_{ii}} \mathopen{}\left(b_i - \sum\_{j=i+1}^{n} u\_{ij}\\x_j\right)\mathclose{} \\
>
> (**back substitution**). Likewise, if \\\mathbf{L}\\ is lower triangular with nonzero diagonal, \\\mathbf{L} \tilde{y} = \tilde{b}\\ has exactly one solution, given for \\i = 1, \ldots, n\\ by \\y_i = \frac{1}{\ell\_{ii}} \mathopen{}\left(b_i - \sum\_{j=1}^{i-1} \ell\_{ij}\\y_j\right)\mathclose{}\\ (**forward substitution**).

> **NOTE:**
>
> *Proof*. Row \\i\\ of \\\mathbf{U} \tilde{x} = \tilde{b}\\ reads
>
> \\ \begin{aligned} b_i &= \sum\_{j=1}^nu\_{ij}\\x_j && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \\ &= \sum\_{j=i}^{n} u\_{ij}\\x_j && \text{(} u\_{ij} = 0 \text{ for } j \< i \text{)} \\ &= u\_{ii}\\x_i + \sum\_{j=i+1}^{n} u\_{ij}\\x_j. && \text{(split off the } j = i \text{ term)} \end{aligned} \\
>
> This equation is equivalent to each of
>
> \\ \begin{aligned} u\_{ii}\\x_i &= b_i - \sum\_{j=i+1}^{n} u\_{ij}\\x_j && \text{(subtract the sum from both sides)} \\ x_i &= \frac{1}{u\_{ii}} \mathopen{}\left(b_i - \sum\_{j=i+1}^{n} u\_{ij}\\x_j\right)\mathclose{}. && \text{(divide by } u\_{ii} \ne 0 \text{)} \end{aligned} \\
>
> Row \\n\\ involves only \\x_n\\, so it fixes \\x_n\\; once \\x\_{i+1}, \ldots, x_n\\ are fixed, row \\i\\ fixes \\x_i\\. So the rows, taken from the last to the first, hold exactly when \\\tilde{x}\\ is the vector the formula builds: there is one solution, and only one. For \\\mathbf{L}\\, row \\i\\ reads \\\sum\_{j=1}^{i-1} \ell\_{ij}\\y_j + \ell\_{ii}\\y_i = b_i\\, and the same argument runs from the first row to the last.

> **NOTE:**
>
> **Example 24 (Back substitution on a \\3 \times 3\\ system)** Solve \\\begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix} \tilde{x} = \begin{bmatrix} 8 \\ 1 \\ 1 \end{bmatrix}\\:
>
> 1.  \\ \begin{aligned} x_3 &= \frac{1}{-1} \cdot 1 \\ &= -1; \end{aligned} \\
>
> 2.  \\ \begin{aligned} x_2 &= \frac{1}{1/2} \mathopen{}\left(1 - \tfrac{1}{2} \cdot(-1)\right)\mathclose{} \\ &= 2 \cdot\tfrac{3}{2} \\ &= 3; \end{aligned} \\
>
> 3.  \\ \begin{aligned} x_1 &= \frac{1}{2} \mathopen{}\left(8 - 1 \cdot 3 - (-1)(-1)\right)\mathclose{} \\ &= \frac{1}{2} \cdot 4 \\ &= 2. \end{aligned} \\
>
> So \\\tilde{x} = (2, 3, -1)\\. Without a nonzero diagonal the method fails: \\\begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix} \tilde{x} = (1, 1)\\ has no solution, since its second row reads \\0 = 1\\.

> **NOTE:**
>
> **Theorem 17 (QR factorization)** Let \\\mathbf{A}\\ be an \\m \times n\\ matrix with \\\operatorname{rank}(\mathbf{A}) = n\\. Then
>
> \\ \underbrace{\mathbf{A}}\_{m \times n} = \underbrace{\mathbf{Q}}\_{m \times n}\\\underbrace{\mathbf{R}}\_{n \times n}, \\
>
> where the columns of \\\mathbf{Q}\\ are orthonormal ([Definition 17 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)) and \\\mathbf{R}\\ is upper triangular ([Definition 7](#def-triangular-matrix)) with positive diagonal entries.

> **NOTE:**
>
> *Proof*. The \\n\\ columns \\\tilde{a}\_1, \ldots, \tilde{a}\_n\\ of \\\mathbf{A}\\ are linearly independent ([Definition 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-full-column-rank)), so the Gram-Schmidt process ([Definition 10 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#def-gram-schmidt)) runs all \\n\\ steps and gives orthonormal \\\tilde{q}\_1, \ldots, \tilde{q}\_n\\ ([Theorem 9 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#thm-gram-schmidt), parts 1 and 3); let \\\mathbf{Q}\\ have these columns. At step \\i\\, \\\tilde{\tilde{q}}\_i \ne \tilde{0}\\, and rearranging the orthogonalize step,
>
> \\ \begin{aligned} \tilde{a}\_i &= \tilde{\tilde{q}}\_i + \sum\_{j=1}^{i-1} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j && \text{(add the sum to both sides of the orthogonalize step)} \\ &= \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\\tilde{q}\_i + \sum\_{j=1}^{i-1} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j. && \text{(normalize step: } \tilde{\tilde{q}}\_i = \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\\tilde{q}\_i \text{)} \end{aligned} \\
>
> Let \\\mathbf{R}\\ be the \\n \times n\\ matrix with \\r\_{ji} = \tilde{q}\_j \cdot \tilde{a}\_i\\ for \\j \< i\\, \\r\_{ii} = \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{} \> 0\\, and \\r\_{ji} = 0\\ for \\j \> i\\; it is upper triangular with positive diagonal. Column \\i\\ of \\\mathbf{Q} \mathbf{R}\\ is \\\mathbf{Q}\\ times column \\i\\ of \\\mathbf{R}\\ ([Definition 7 in Matrices](linear-algebra-matrices.llms.md#def-matrix-mult)), and
>
> \\ \begin{aligned} \mathbf{Q}\\(r\_{1i}, \ldots, r\_{ni}) &= \sum\_{j=1}^nr\_{ji}\\\tilde{q}\_j && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-columns}{\text{Theorem~3 in Subspaces and Rank}}\text{)} \\ &= \sum\_{j=1}^{i} r\_{ji}\\\tilde{q}\_j && \text{(} r\_{ji} = 0 \text{ for } j \> i \text{)} \\ &= r\_{ii}\\\tilde{q}\_i + \sum\_{j=1}^{i-1} r\_{ji}\\\tilde{q}\_j && \text{(split off the } j = i \text{ term)} \\ &= \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\\tilde{q}\_i + \sum\_{j=1}^{i-1} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j && \text{(the entries of } \mathbf{R} \text{)} \\ &= \tilde{a}\_i. && \text{(the display)} \end{aligned} \\
>
> So \\\mathbf{Q} \mathbf{R} = \mathbf{A}\\.

> **NOTE:**
>
> **Example 25 (A QR factorization from Gram-Schmidt)** For \\\mathbf{A}\\ with columns \\\tilde{a}\_1 = (1, 1, 0)\\, \\\tilde{a}\_2 = (1, 0, 1)\\, \\\tilde{a}\_3 = (0, 1, 1)\\, [Example 21 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#exm-gram-schmidt) and [Example 23 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#exm-thm-gram-schmidt) found \\\tilde{q}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0)\\, \\\tilde{q}\_2 = \tfrac{1}{\sqrt{6}}\\(1, -1, 2)\\, \\\tilde{q}\_3 = \tfrac{1}{\sqrt{3}}\\(-1, 1, 1)\\, with \\\mathopen{}\left\lVert\tilde{\tilde{q}}\_1\right\rVert\mathclose{} = \sqrt{2}\\, \\\mathopen{}\left\lVert\tilde{\tilde{q}}\_2\right\rVert\mathclose{} = \sqrt{3/2}\\, \\\mathopen{}\left\lVert\tilde{\tilde{q}}\_3\right\rVert\mathclose{} = 2/\sqrt{3}\\,
>
> \\ \begin{aligned} \tilde{q}\_1 \cdot \tilde{a}\_2 &= \tilde{q}\_1 \cdot \tilde{a}\_3 \\ &= \tfrac{1}{\sqrt{2}} \end{aligned} \\
>
> and \\\tilde{q}\_2 \cdot \tilde{a}\_3 = \tfrac{1}{\sqrt{6}}\\. So
>
> \\ \mathbf{R} = \begin{bmatrix} \sqrt{2} & \tfrac{1}{\sqrt{2}} & \tfrac{1}{\sqrt{2}} \\ 0 & \sqrt{3/2} & \tfrac{1}{\sqrt{6}} \\ 0 & 0 & \tfrac{2}{\sqrt{3}} \end{bmatrix}. \\
>
> As a check on the second column,
>
> \\ \begin{aligned} \tfrac{1}{\sqrt{2}}\\\tilde{q}\_1 + \sqrt{3/2}\\\tilde{q}\_2 &= \tfrac{1}{2}\\(1, 1, 0) + \tfrac{1}{2}\\(1, -1, 2) \\ &= (1, 0, 1) \\ &= \tilde{a}\_2. \end{aligned} \\

> **NOTE:**
>
> **Definition 8 (Least squares solution)** Let \\\mathbf{A}\\ be \\m \times n\\ and \\\tilde{b} \in \mathbb{R}^m\\. A **least squares solution** of \\\mathbf{A} \tilde{x} = \tilde{b}\\ is a vector \\\hat{\tilde{x}} \in \mathbb{R}^n\\ such that
>
> \\ \mathopen{}\left\lVert\tilde{b} - \mathbf{A} \hat{\tilde{x}}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\tilde{b} - \mathbf{A} \tilde{x}\right\rVert\mathclose{} \quad \text{for every } \tilde{x} \in \mathbb{R}^n. \\
>
> The equations \\{\mathbf{A}}^{\top} \mathbf{A} \tilde{x} = {\mathbf{A}}^{\top} \tilde{b}\\ are the **normal equations**.

> **NOTE:**
>
> **Example 26 (Fitting a constant)** Let \\\mathbf{A} = \begin{bmatrix} 1 \\ 1 \end{bmatrix}\\ and \\\tilde{b} = (1, 3)\\. The system \\x\\(1, 1) = (1, 3)\\ is inconsistent ([Definition 6](#def-consistent-system)): its first entry needs \\x = 1\\ and its second needs \\x = 3\\. For any number \\x\\,
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{b} - \mathbf{A} x\right\rVert\mathclose{}^2 &= (1 - x)^2 + (3 - x)^2 \\ &= 2\\(x - 2)^2 + 2, \end{aligned} \\
>
> which is smallest at \\x = 2\\, so \\\hat{x} = 2\\ is the least squares solution. The value \\x = 1\\ is not one: it gives \\0 + 4 = 4 \> 2\\. The normal equations read \\2x = 4\\, and their solution is \\x = 2\\ too.

> **NOTE:**
>
> **Theorem 18 (Least squares solutions solve the normal equations)** Let \\\mathbf{A}\\ be \\m \times n\\ and \\\tilde{b} \in \mathbb{R}^m\\.
>
> 1.  \\\hat{\tilde{x}}\\ is a least squares solution ([Definition 8](#def-least-squares)) exactly when it solves the normal equations \\{\mathbf{A}}^{\top} \mathbf{A} \hat{\tilde{x}} = {\mathbf{A}}^{\top} \tilde{b}\\.
> 2.  The normal equations are consistent ([Definition 6](#def-consistent-system)).
> 3.  Every least squares solution gives the same fitted vector \\\mathbf{A} \hat{\tilde{x}}\\: the orthogonal projection of \\\tilde{b}\\ onto \\\mathcal{C}(\mathbf{A})\\ ([Definition 3](#def-orthogonal-projection)).
> 4.  The least squares solution is unique exactly when \\\operatorname{rank}(\mathbf{A}) = n\\, and then \\\hat{\tilde{x}} = ({\mathbf{A}}^{\top} \mathbf{A})^{-1} {\mathbf{A}}^{\top} \tilde{b}\\.

> **NOTE:**
>
> *Proof*. Let \\\tilde{u}\\ be the orthogonal projection of \\\tilde{b}\\ onto \\\mathcal{C}(\mathbf{A})\\. The vectors \\\mathbf{A} \tilde{x}\\, as \\\tilde{x}\\ ranges over \\\mathbb{R}^n\\, are exactly the points of \\\mathcal{C}(\mathbf{A})\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)). **Least squares solutions are the solutions of \\\mathbf{A} \tilde{x} = \tilde{u}\\.** If \\\mathbf{A} \hat{\tilde{x}} = \tilde{u}\\, then for every \\\tilde{x}\\, \\\mathbf{A} \tilde{x} \in \mathcal{C}(\mathbf{A})\\, so \\\mathopen{}\left\lVert\tilde{b} - \mathbf{A} \hat{\tilde{x}}\right\rVert\mathclose{} = \mathopen{}\left\lVert\tilde{b} - \tilde{u}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\tilde{b} - \mathbf{A} \tilde{x}\right\rVert\mathclose{}\\ ([Theorem 3](#thm-closest-point)), and \\\hat{\tilde{x}}\\ is a least squares solution. Conversely, let \\\hat{\tilde{x}}\\ be a least squares solution. \\\tilde{u} \in \mathcal{C}(\mathbf{A})\\, so \\\tilde{u} = \mathbf{A} \tilde{x}\_0\\ for some \\\tilde{x}\_0\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)), and
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{b} - \mathbf{A} \hat{\tilde{x}}\right\rVert\mathclose{} &\le \mathopen{}\left\lVert\tilde{b} - \mathbf{A} \tilde{x}\_0\right\rVert\mathclose{} && \text{(}\href{#def-least-squares}{\text{Definition~8}}\text{)} \\ &= \mathopen{}\left\lVert\tilde{b} - \tilde{u}\right\rVert\mathclose{} && \text{(} \tilde{u} = \mathbf{A} \tilde{x}\_0 \text{)} \\ &\le \mathopen{}\left\lVert\tilde{b} - \mathbf{A} \hat{\tilde{x}}\right\rVert\mathclose{}, && \text{(}\href{#thm-closest-point}{\text{Theorem~3}}\text{, with } \tilde{w} = \mathbf{A} \hat{\tilde{x}} \in \mathcal{C}(\mathbf{A}) \text{)} \end{aligned} \\
>
> so the last inequality is an equality, and the equality case of [Theorem 3](#thm-closest-point) gives \\\mathbf{A} \hat{\tilde{x}} = \tilde{u}\\.
>
> **Parts 1 and 3.** \\\mathbf{A} \hat{\tilde{x}} = \tilde{u}\\ holds exactly when \\\tilde{b} - \mathbf{A} \hat{\tilde{x}} \in \mathcal{C}(\mathbf{A})^\perp\\: if \\\mathbf{A} \hat{\tilde{x}} = \tilde{u}\\, then \\\tilde{b} - \tilde{u} \in \mathcal{C}(\mathbf{A})^\perp\\ ([Definition 3](#def-orthogonal-projection)); conversely, if \\\tilde{b} - \mathbf{A} \hat{\tilde{x}} \in \mathcal{C}(\mathbf{A})^\perp\\, then \\\tilde{b} = \mathbf{A} \hat{\tilde{x}} + (\tilde{b} - \mathbf{A} \hat{\tilde{x}})\\ is a split into \\\mathcal{C}(\mathbf{A})\\ and \\\mathcal{C}(\mathbf{A})^\perp\\, so \\\mathbf{A} \hat{\tilde{x}} = \tilde{u}\\ by the uniqueness in [Theorem 8 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-orthogonal-direct-sum). And \\\mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top})\\ ([Theorem 7 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-complement-null-space)), where
>
> \\ \begin{aligned} {\mathbf{A}}^{\top}\\(\tilde{b} - \mathbf{A} \hat{\tilde{x}}) &= {\mathbf{A}}^{\top} \tilde{b} - {\mathbf{A}}^{\top}\\(\mathbf{A} \hat{\tilde{x}}) && \text{(}\href{#thm-scalar-matmul}{\text{Theorem~7}}\text{)} \\ &= {\mathbf{A}}^{\top} \tilde{b} - {\mathbf{A}}^{\top} \mathbf{A} \hat{\tilde{x}}, && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \end{aligned} \\
>
> which is \\\tilde{0}\_n\\ exactly when the normal equations hold.
>
> **Part 2.** The vector \\\tilde{x}\_0\\ above satisfies \\\mathbf{A} \tilde{x}\_0 = \tilde{u}\\, so it is a least squares solution, and it solves the normal equations by part 1.
>
> **Part 4.** The least squares solutions are exactly the solutions of \\\mathbf{A} \tilde{x} = \tilde{u}\\, a consistent system, so there is exactly one when \\\operatorname{rank}(\mathbf{A}) = n\\ and more than one otherwise ([Corollary 1](#cor-solution-unique)). When \\\operatorname{rank}(\mathbf{A}) = n\\, \\{\mathbf{A}}^{\top} \mathbf{A}\\ is invertible ([Theorem 1](#thm-gram-invertible)), and with \\\mathbf{M} \stackrel{\text{def}}{=}{\mathbf{A}}^{\top} \mathbf{A}\\,
>
> \\ \begin{aligned} \hat{\tilde{x}} &= \mathbf{I}\_n\\\hat{\tilde{x}} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \\ &= (\mathbf{M}^{-1} \mathbf{M})\\\hat{\tilde{x}} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{M}^{-1}\\(\mathbf{M} \hat{\tilde{x}}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{M}^{-1}\\{\mathbf{A}}^{\top} \tilde{b}. && \text{(the normal equations)} \end{aligned} \\

> **NOTE:**
>
> **Example 27 (A least squares line)** Fit \\y = x_1 + x_2\\t\\ to the points \\(t, y) = (1, 1), (2, 2), (3, 2)\\: \\\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ (the \\\mathbf{X}\\ of [Example 1](#exm-gram-invertible)) and \\\tilde{b} = (1, 2, 2)\\. \\\mathbf{A}\\ has rank \\2\\ ([Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank)), so the solution is unique (part 4). \\{\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}\\ has inverse \\\frac{1}{6}\begin{bmatrix} 14 & -6 \\ -6 & 3 \end{bmatrix}\\ ([Example 1](#exm-gram-invertible)), and
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \tilde{b} &= (1 + 2 + 2,\\ 1 + 4 + 6) \\ &= (5, 11), \end{aligned} \\
>
> so
>
> \\ \begin{aligned} \hat{\tilde{x}} &= \frac{1}{6} \mathopen{}\left(14 \cdot 5 - 6 \cdot 11,\\ -6 \cdot 5 + 3 \cdot 11\right)\mathclose{} \\ &= \frac{1}{6}\\(4, 3) \\ &= \mathopen{}\left(\tfrac{2}{3}, \tfrac{1}{2}\right)\mathclose{}. \end{aligned} \\
>
> The fitted values are \\\mathbf{A} \hat{\tilde{x}} = \mathopen{}\left(\tfrac{7}{6}, \tfrac{5}{3}, \tfrac{13}{6}\right)\mathclose{}\\, and the residuals \\\tilde{b} - \mathbf{A} \hat{\tilde{x}} = \mathopen{}\left(-\tfrac{1}{6}, \tfrac{1}{3}, -\tfrac{1}{6}\right)\mathclose{}\\ are orthogonal to both columns of \\\mathbf{A}\\: \\-\tfrac{1}{6} + \tfrac{1}{3} - \tfrac{1}{6} = 0\\ and \\-\tfrac{1}{6} + \tfrac{2}{3} - \tfrac{1}{2} = 0\\.

> **NOTE:**
>
> **Example 28 (Many least squares solutions, one fitted vector)** With the rank-\\1\\ matrix \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 1 & 2 \\ 1 & 2 \end{bmatrix}\\ ([Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank)) and \\\tilde{b} = (1, 2, 2)\\, \\{\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 3 & 6 \\ 6 & 12 \end{bmatrix}\\ and \\{\mathbf{A}}^{\top} \tilde{b} = (5, 10)\\, so both normal equations say \\3 x_1 + 6 x_2 = 5\\, that is, \\x_1 + 2 x_2 = \tfrac{5}{3}\\. There are infinitely many least squares solutions, such as \\(\tfrac{5}{3}, 0)\\ and \\(0, \tfrac{5}{6})\\, as part 4 predicts for \\\operatorname{rank}(\mathbf{A}) = 1 \< 2\\; but every one gives the same fitted vector
>
> \\ \begin{aligned} \mathbf{A} \hat{\tilde{x}} &= (x_1 + 2 x_2)\\(1, 1, 1) \\ &= \tfrac{5}{3}\\(1, 1, 1), \end{aligned} \\
>
> as part 3 says.

> **NOTE:**
>
> **Theorem 19 (Solving least squares by QR)** Let \\\mathbf{A}\\ be \\m \times n\\ with \\\operatorname{rank}(\mathbf{A}) = n\\, with QR factorization \\\mathbf{A} = \mathbf{Q} \mathbf{R}\\ ([Theorem 17](#thm-qr)), and let \\\tilde{b} \in \mathbb{R}^m\\. The least squares solution ([Definition 8](#def-least-squares)) is the unique solution of
>
> \\ \underbrace{\mathbf{R}}\_{n \times n}\\\hat{\tilde{x}} = \underbrace{{\mathbf{Q}}^{\top}}\_{n \times m}\\\tilde{b}, \\
>
> which back substitution computes ([Theorem 16](#thm-back-substitution)). When \\m = n\\, it is the unique solution of \\\mathbf{A} \tilde{x} = \tilde{b}\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{R}\\ is upper triangular with positive diagonal, so \\\mathbf{R} \tilde{x} = {\mathbf{Q}}^{\top} \tilde{b}\\ has exactly one solution \\\hat{\tilde{x}}\\ ([Theorem 16](#thm-back-substitution)). \\{\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_n\\, as in the proof of [Theorem 4](#thm-projector-onb). Then
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \mathbf{A} \hat{\tilde{x}} &= {(\mathbf{Q} \mathbf{R})}^{\top}\\(\mathbf{Q} \mathbf{R})\\\hat{\tilde{x}} && \text{(substitute } \mathbf{A} = \mathbf{Q} \mathbf{R} \text{)} \\ &= {\mathbf{R}}^{\top}\\{\mathbf{Q}}^{\top}\\(\mathbf{Q} \mathbf{R})\\\hat{\tilde{x}} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top}\\({\mathbf{Q}}^{\top} \mathbf{Q})\\(\mathbf{R} \hat{\tilde{x}}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top}\\\mathbf{I}\_n\\(\mathbf{R} \hat{\tilde{x}}) && \text{(} {\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{I}\_n \text{)} \\ &= {\mathbf{R}}^{\top}\\(\mathbf{R} \hat{\tilde{x}}) && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \\ &= {\mathbf{R}}^{\top}\\({\mathbf{Q}}^{\top} \tilde{b}) && \text{(} \mathbf{R} \hat{\tilde{x}} = {\mathbf{Q}}^{\top} \tilde{b} \text{)} \\ &= ({\mathbf{R}}^{\top}\\{\mathbf{Q}}^{\top})\\\tilde{b} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {(\mathbf{Q} \mathbf{R})}^{\top}\\\tilde{b} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= {\mathbf{A}}^{\top} \tilde{b}, && \text{(} \mathbf{A} = \mathbf{Q} \mathbf{R} \text{)} \end{aligned} \\
>
> so \\\hat{\tilde{x}}\\ solves the normal equations and is the least squares solution ([Theorem 18](#thm-normal-equations)), which is unique because \\\operatorname{rank}(\mathbf{A}) = n\\. When \\m = n\\,
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A}) &= n \\ &= m, \end{aligned} \\
>
> so \\\mathbf{A} \tilde{x} = \tilde{b}\\ is consistent for every \\\tilde{b}\\ ([Corollary 1](#cor-solution-unique), part 1), so its solution leaves residual \\\tilde{0}\\, is a least squares solution, and is therefore \\\hat{\tilde{x}}\\.

> **NOTE:**
>
> **Example 29 (The least squares line by QR)** For \\\mathbf{A}\\ and \\\tilde{b}\\ of [Example 27](#exm-normal-equations), Gram-Schmidt gives \\\tilde{q}\_1 = \tfrac{1}{\sqrt{3}}\\(1, 1, 1)\\; then
>
> \\ \begin{aligned} \tilde{q}\_1 \cdot (1, 2, 3) &= \tfrac{6}{\sqrt{3}} \\ &= 2\sqrt{3}, \end{aligned} \\
>
> \\ \begin{aligned} \tilde{\tilde{q}}\_2 &= (1, 2, 3) - 2\\(1, 1, 1) \\ &= (-1, 0, 1) \end{aligned} \\
>
> with norm \\\sqrt{2}\\, and \\\tilde{q}\_2 = \tfrac{1}{\sqrt{2}}\\(-1, 0, 1)\\. So
>
> \\ \begin{aligned} \mathbf{R} &= \begin{bmatrix} \sqrt{3} & 2\sqrt{3} \\ 0 & \sqrt{2} \end{bmatrix}, \\ {\mathbf{Q}}^{\top} \tilde{b} &= \mathopen{}\left(\tfrac{1 + 2 + 2}{\sqrt{3}},\\ \tfrac{-1 + 0 + 2}{\sqrt{2}}\right)\mathclose{} \\ &= \mathopen{}\left(\tfrac{5}{\sqrt{3}}, \tfrac{1}{\sqrt{2}}\right)\mathclose{}. \end{aligned} \\
>
> Back substitution gives
>
> \\ \begin{aligned} x_2 &= \tfrac{1}{\sqrt{2}} \cdot \tfrac{1}{\sqrt{2}} \\ &= \tfrac{1}{2} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} x_1 &= \tfrac{1}{\sqrt{3}} \mathopen{}\left(\tfrac{5}{\sqrt{3}} - 2\sqrt{3} \cdot \tfrac{1}{2}\right)\mathclose{} \\ &= \tfrac{5}{3} - 1 \\ &= \tfrac{2}{3}, \end{aligned} \\
>
> the solution found in [Example 27](#exm-normal-equations).

> **NOTE:**
>
> **Definition 9 (LU factorization)** An **LU factorization** of an \\n \times n\\ matrix \\\mathbf{A}\\ is a product \\\mathbf{A} = \mathbf{L} \mathbf{U}\\ with \\\mathbf{L}\\ unit lower triangular and \\\mathbf{U}\\ upper triangular ([Definition 7](#def-triangular-matrix)).

> **NOTE:**
>
> **Example 30 (An LU factorization of a \\3 \times 3\\ matrix)** Let \\\mathbf{A} = \begin{bmatrix} 2 & 1 & -1 \\ -3 & -1 & 2 \\ -2 & 1 & 2 \end{bmatrix}\\, \\\mathbf{L} = \begin{bmatrix} 1 & 0 & 0 \\ -\frac{3}{2} & 1 & 0 \\ -1 & 4 & 1 \end{bmatrix}\\ (unit lower triangular) and \\\mathbf{U} = \begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix}\\ (upper triangular). By [Definition 7 in Matrices](linear-algebra-matrices.llms.md#def-matrix-mult), entry \\(i, j)\\ of \\\mathbf{L} \mathbf{U}\\ is \\\sum_k \ell\_{ik}\\u\_{kj}\\, so row \\i\\ of \\\mathbf{L} \mathbf{U}\\ is \\\sum_k \ell\_{ik}\\ times row \\k\\ of \\\mathbf{U}\\. Row 1 is \\1 \cdot(2, 1, -1) = (2, 1, -1)\\; row 2 is \\-\tfrac{3}{2}\\(2, 1, -1) + (0, \tfrac{1}{2}, \tfrac{1}{2}) = (-3, -1, 2)\\, and row 3 is \\-(2, 1, -1) + 4\\(0, \tfrac{1}{2}, \tfrac{1}{2}) + (0, 0, -1) = (-2, 1, 2)\\. These are the rows of \\\mathbf{A}\\, so \\\mathbf{L} \mathbf{U} = \mathbf{A}\\ is an LU factorization. The below-diagonal entries of \\\mathbf{L}\\ are the negatives of the multiples of earlier rows that Gaussian elimination adds to reduce \\\mathbf{A}\\ to \\\mathbf{U}\\.

> **NOTE:**
>
> **Example 31 (An invertible matrix with no LU factorization)** \\\mathbf{P} = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ is invertible: \\\mathbf{P}^2 = \mathbf{I}\_2\\, so \\\mathbf{P}^{-1} = \mathbf{P}\\ ([Definition 5 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-matrix-inverse)); but it has no LU factorization. If \\\mathbf{P} = \mathbf{L} \mathbf{U}\\, the \\(1, 1)\\ entry gives \\0 = 1 \cdot u\_{11}\\, so \\u\_{11} = 0\\, and then the \\(2, 1)\\ entry gives
>
> \\ \begin{aligned} 1 &= \ell\_{21}\\u\_{11} \\ &= 0, \end{aligned} \\
>
> which is impossible. Swapping the two rows first removes the obstacle: the swapped matrix is \\\mathbf{I}\_2 = \mathbf{I}\_2\\\mathbf{I}\_2\\.

> **NOTE:**
>
> **Theorem 20 (Solving a system with an LU factorization)** If \\\mathbf{A} = \mathbf{L} \mathbf{U}\\ is an LU factorization ([Definition 9](#def-lu)) and the diagonal entries of \\\mathbf{U}\\ are all nonzero, then for every \\\tilde{b} \in \mathbb{R}^n\\ the system \\\mathbf{A} \tilde{x} = \tilde{b}\\ has exactly one solution: solve \\\mathbf{L} \tilde{y} = \tilde{b}\\ by forward substitution, then \\\mathbf{U} \tilde{x} = \tilde{y}\\ by back substitution ([Theorem 16](#thm-back-substitution)).

> **NOTE:**
>
> *Proof*. \\\mathbf{L}\\ has diagonal entries \\1\\ and \\\mathbf{U}\\ has nonzero ones, so each of the two triangular systems has exactly one solution ([Theorem 16](#thm-back-substitution)). If \\\tilde{y}\\ and \\\tilde{x}\\ are those solutions, then
>
> \\ \begin{aligned} \mathbf{A} \tilde{x} &= \mathbf{L}\\(\mathbf{U} \tilde{x}) \\ &= \mathbf{L} \tilde{y} \\ &= \tilde{b} \end{aligned} \\
>
> ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), so \\\tilde{x}\\ is a solution. Conversely, if \\\mathbf{A} \tilde{x} = \tilde{b}\\, then \\\tilde{y} \stackrel{\text{def}}{=}\mathbf{U} \tilde{x}\\ satisfies
>
> \\ \begin{aligned} \mathbf{L} \tilde{y} &= \mathbf{L}\\(\mathbf{U} \tilde{x}) \\ &= (\mathbf{L} \mathbf{U})\\\tilde{x} \\ &= \mathbf{A} \tilde{x} \\ &= \tilde{b} \end{aligned} \\
>
> ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc)), so \\\tilde{y}\\ is the unique solution of that system, and \\\tilde{x}\\ is then the unique solution of \\\mathbf{U} \tilde{x} = \tilde{y}\\.

> **NOTE:**
>
> **Example 32 (Two triangular solves)** With \\\mathbf{L}\\ and \\\mathbf{U}\\ of [Example 30](#exm-lu), solve \\\mathbf{A} \tilde{x} = (8, -11, -3)\\. Forward substitution on \\\mathbf{L} \tilde{y} = (8, -11, -3)\\ gives \\y_1 = 8\\,
>
> \\ \begin{aligned} y_2 &= -11 + \tfrac{3}{2} \cdot 8 \\ &= 1, \end{aligned} \\
>
> \\ \begin{aligned} y_3 &= -3 + 8 - 4 \cdot 1 \\ &= 1. \end{aligned} \\
>
> Back substitution on \\\mathbf{U} \tilde{x} = (8, 1, 1)\\ is [Example 24](#exm-back-substitution), which gives \\\tilde{x} = (2, 3, -1)\\. As a check,
>
> \\ \begin{aligned} \mathbf{A}\\(2, 3, -1) &= (4 + 3 + 1,\\ -6 - 3 - 2,\\ -4 + 3 - 2) \\ &= (8, -11, -3). \end{aligned} \\

Back to top

## References

Banerjee, Sudipto, and Anindya Roy. 2014. *Linear Algebra and Matrix Analysis for Statistics*. Vol. 181. Crc Press Boca Raton. <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>.

Zhou, Hua. 2024a. *Least Squares*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/08-ls/08-ls.html>.

Zhou, Hua. 2024b. *Linear Equations and Matrix Inverses*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/07-matinv/07-matinv.html>.

Zhou, Hua. 2024c. *Orthogonal Projections*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/06-orthproj/06-orthproj.html>.
