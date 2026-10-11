# Column Space, Null Space and Rank-Nullity

Code

- [Show All Code](javascript:void(0))

- [Hide All Code](javascript:void(0))

- 

  ------------------------------------------------------------------------

- [View Source](javascript:void(0))

Published

Last modified: 2026-10-10 18:58:14 (PDT)

## 1 Column space and null space

> **NOTE:**
>
> **Definition 1 (Column space (range, image))** The **column space** of an \\m \times n\\ matrix \\\mathbf{A}\\ is
>
> \\ \mathcal{C}(\mathbf{A}) \stackrel{\text{def}}{=} \mathopen{}\left\\\mathbf{A} \tilde{x} : \tilde{x} \in \mathbb{R}^n\right\\\mathclose{}, \\
>
> the set of all vectors \\\mathbf{A} \tilde{x}\\ in \\\mathbb{R}^m\\. It is also called the **range** or **image** of \\\mathbf{A}\\. The **row space** of \\\mathbf{A}\\ is \\\mathcal{C}({\mathbf{A}}^{\top})\\, a set of vectors in \\\mathbb{R}^n\\.

> **NOTE:**
>
> **Example 1 (The column space of a rank-one matrix)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix}. \\
>
> For any \\\tilde{x} \in \mathbb{R}^3\\,
>
> \\ \begin{aligned} \mathbf{A} \tilde{x} &= (x_1 - 2x_2 - 2x_3,\\ 3\\(x_1 - 2x_2 - 2x_3)) \\ &= (x_1 - 2x_2 - 2x_3)\\(1, 3) \end{aligned} \\
>
> ([Definition 11 in Matrices](linear-algebra-matrices.llms.md#def-matvec-mult)). The number \\x_1 - 2x_2 - 2x_3\\ can be any real number (take \\x_2 = 0\\ and \\x_3 = 0\\), so \\\mathcal{C}(\mathbf{A}) = \mathopen{}\left\\c\\(1, 3) : c \in \mathbb{R}\right\\\mathclose{}\\, a line in \\\mathbb{R}^2\\. The vector \\(1, 0)\\ is not in \\\mathcal{C}(\mathbf{A})\\: \\c\\(1, 3)\\ has second entry \\3c\\, which is \\0\\ only if \\c = 0\\, and then the first entry is \\0\\, not \\1\\.

> **NOTE:**
>
> **Theorem 1 (The column space is the span of the columns)** If \\\mathbf{A}\\ is an \\m \times n\\ matrix with columns \\\tilde{a}\_1, \ldots, \tilde{a}\_n\\, then
>
> \\ \mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_n\right\\\mathclose{}, \\
>
> so \\\mathcal{C}(\mathbf{A})\\ is a subspace of \\\mathbb{R}^m\\, and the row space \\\mathcal{C}({\mathbf{A}}^{\top})\\ is a subspace of \\\mathbb{R}^n\\.

> **NOTE:**
>
> *Proof*. By [Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns), \\\mathbf{A} \tilde{x} = x_1 \tilde{a}\_1 + \cdots + x_n \tilde{a}\_n\\, and as \\\tilde{x}\\ ranges over \\\mathbb{R}^n\\, the coefficients \\x_1, \ldots, x_n\\ range over all lists of \\n\\ numbers. So the set of all \\\mathbf{A} \tilde{x}\\ ([Definition 1](#def-column-space)) is the set of all linear combinations of the columns, which is their span ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)). A span is a subspace ([Theorem 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-span-subspace)). Applying the same argument to \\{\mathbf{A}}^{\top}\\, whose columns are the rows of \\\mathbf{A}\\, shows the row space is a subspace of \\\mathbb{R}^n\\.

> **NOTE:**
>
> **Example 2 (Reading off the column space and row space from the columns and rows)** For \\\mathbf{A}\\ in [Example 1](#exm-column-space), the columns are \\(1, 3)\\, \\(-2, -6) = -2\\(1, 3)\\ and \\(-2, -6) = -2\\(1, 3)\\, so by [Theorem 1](#thm-column-space-span) \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\, the same line found in [Example 1](#exm-column-space). The rows are \\(1, -2, -2)\\ and \\(3, -6, -6) = 3\\(1, -2, -2)\\, so the row space is \\\operatorname{span}\mathopen{}\left\\(1, -2, -2)\right\\\mathclose{}\\, a line in \\\mathbb{R}^3\\.

> **NOTE:**
>
> **Definition 2 (Null space (kernel))** The **null space** of an \\m \times n\\ matrix \\\mathbf{A}\\ is
>
> \\ \mathcal{N}(\mathbf{A}) \stackrel{\text{def}}{=} \mathopen{}\left\\\tilde{x} \in \mathbb{R}^n : \mathbf{A} \tilde{x} = \tilde{0}\_m\right\\\mathclose{}, \\
>
> the set of [solutions](linear-algebra-matrices.llms.md#def-linear-system) of the linear system \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\. It is also called the **kernel** of \\\mathbf{A}\\. The **left null space** of \\\mathbf{A}\\ is \\\mathcal{N}({\mathbf{A}}^{\top})\\, a set of vectors in \\\mathbb{R}^m\\.

> **NOTE:**
>
> **Example 3 (The null space and left null space of a rank-one matrix)** For \\\mathbf{A}\\ in [Example 1](#exm-column-space), \\\mathbf{A} \tilde{x} = (x_1 - 2x_2 - 2x_3,\\ 3\\(x_1 - 2x_2 - 2x_3))\\, so \\\mathbf{A} \tilde{x} = \tilde{0}\_2\\ exactly when \\x_1 = 2x_2 + 2x_3\\. Writing
>
> \\ \begin{aligned} \tilde{x} &= (2x_2 + 2x_3, x_2, x_3) \\ &= x_2\\(2, 1, 0) + x_3\\(2, 0, 1) \end{aligned} \\
>
> shows \\\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\, a plane in \\\mathbb{R}^3\\.
>
> For the left null space, \\{\mathbf{A}}^{\top} \tilde{y} = (y_1 + 3y_2,\\ -2\\(y_1 + 3y_2),\\ -2\\(y_1 + 3y_2))\\, which is \\\tilde{0}\_3\\ exactly when \\y_1 = -3y_2\\, so \\\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(-3, 1)\right\\\mathclose{}\\, a line in \\\mathbb{R}^2\\.

> **NOTE:**
>
> **Theorem 2 (A null space is a subspace)** For any \\m \times n\\ matrix \\\mathbf{A}\\, \\\mathcal{N}(\mathbf{A})\\ ([Definition 2](#def-null-space)) is a subspace of \\\mathbb{R}^n\\ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)).

> **NOTE:**
>
> *Proof*. \\\mathbf{A} \tilde{0}\_n = \tilde{0}\_m\\, so \\\tilde{0}\_n \in \mathcal{N}(\mathbf{A})\\, and the null space is not empty. If \\\tilde{u}, \tilde{w} \in \mathcal{N}(\mathbf{A})\\ and \\c \in \mathbb{R}\\, then
>
> \\ \begin{aligned} \mathbf{A}\\(\tilde{u} + \tilde{w}) &= \mathbf{A} \tilde{u} + \mathbf{A} \tilde{w} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-distrib}{\text{Theorem~6 in Matrices}}\text{)} \\ &= \tilde{0}\_m + \tilde{0}\_m && \text{(} \tilde{u} \text{ and } \tilde{w} \text{ are in the null space)} \\ &= \tilde{0}\_m && \text{(adding } \tilde{0}\_m \text{ changes nothing)} \end{aligned} \\
>
> and, for each entry \\i = 1, \ldots, m\\,
>
> \\ \begin{aligned} \mathopen{}\left(\mathbf{A}\\(c \tilde{u})\right)\mathclose{}\_i &= a\_{i1} (c u_1) + \cdots + a\_{in} (c u_n) && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \\ &= c\\(a\_{i1} u_1 + \cdots + a\_{in} u_n) && \text{(factor } c \text{ out of each term)} \\ &= c\\(\mathbf{A} \tilde{u})\_i && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \\ &= c \cdot 0 && \text{(} \tilde{u} \text{ is in the null space)} \\ &= 0, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\mathbf{A}\\(c \tilde{u}) = \tilde{0}\_m\\. Therefore \\\tilde{u} + \tilde{w}\\ and \\c \tilde{u}\\ are in \\\mathcal{N}(\mathbf{A})\\.

> **NOTE:**
>
> **Example 4 (The solutions of \\\mathbf{A} \tilde{x} = \tilde{b}\\ with \\\tilde{b} \neq \tilde{0}\\ are not a subspace)** In [Example 3](#exm-null-space), \\(2, 1, 0)\\ and \\(2, 0, 1)\\ are in \\\mathcal{N}(\mathbf{A})\\, and so is their sum \\(4, 1, 1)\\, since \\4 - 2 \cdot 1 - 2 \cdot 1 = 0\\. By contrast, the solutions of \\\mathbf{A} \tilde{x} = (1, 3)\\ for the same \\\mathbf{A}\\ are the vectors with \\x_1 - 2x_2 - 2x_3 = 1\\. That set does not contain \\\tilde{0}\_3\\, so by [Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero) it is not a subspace.

> **NOTE:**
>
> **Theorem 3 (The row space and null space share only the zero vector)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \mathcal{C}({\mathbf{A}}^{\top}) \cap \mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}. \\

> **NOTE:**
>
> *Proof*. Both sets are subspaces, by [Theorem 1](#thm-column-space-span) and [Theorem 2](#thm-null-space-subspace), so both contain \\\tilde{0}\_n\\ ([Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)).
>
> Now take any \\\tilde{x}\\ in both sets. Being in the row space means \\\tilde{x} = {\mathbf{A}}^{\top} \tilde{u}\\ for some \\\tilde{u} \in \mathbb{R}^m\\ ([Definition 1](#def-column-space)), and being in the null space means \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\ ([Definition 2](#def-null-space)). Then
>
> \\ \begin{aligned} {\tilde{x}}^{\top} \tilde{x} &= {({\mathbf{A}}^{\top} \tilde{u})}^{\top}\\\tilde{x} && \text{(substitute } \tilde{x} = {\mathbf{A}}^{\top} \tilde{u} \text{ in the first factor)} \\ &= \mathopen{}\left({\tilde{u}}^{\top}\\{({\mathbf{A}}^{\top})}^{\top}\right)\mathclose{}\\\tilde{x} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= \mathopen{}\left({\tilde{u}}^{\top} \mathbf{A}\right)\mathclose{}\\\tilde{x} && \text{(transposing twice returns the original matrix)} \\ &= {\tilde{u}}^{\top}\\(\mathbf{A} \tilde{x}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\tilde{u}}^{\top}\\\tilde{0}\_m && \text{(substitute } \mathbf{A} \tilde{x} = \tilde{0}\_m \text{)} \\ &= 0. && \text{(every term of the inner product is } 0 \text{)} \end{aligned} \\
>
> But \\{\tilde{x}}^{\top} \tilde{x} = x_1^2 + \cdots + x_n^2\\, which is \\0\\ only when every \\x_i = 0\\. So \\\tilde{x} = \tilde{0}\_n\\.

> **NOTE:**
>
> **Example 5 (The row space and null space in [Example 3](#exm-null-space))** For \\\mathbf{A}\\ in [Example 1](#exm-column-space), the row space is \\\operatorname{span}\mathopen{}\left\\(1, -2, -2)\right\\\mathclose{}\\ and the null space is \\\operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\ ([Example 3](#exm-null-space)). A vector \\c\\(1, -2, -2)\\ of the row space is in the null space only if
>
> \\ \begin{aligned} \mathbf{A}\\\mathopen{}\left(c\\(1, -2, -2)\right)\mathclose{} &= c\\\mathopen{}\left(1 - 2 \cdot(-2) - 2 \cdot(-2),\\ 3\\(1 - 2 \cdot(-2) - 2 \cdot(-2))\right)\mathclose{} && \text{(}\href{#exm-null-space}{\text{Example~3}}\text{'s formula for } \mathbf{A} \tilde{x} \text{)} \\ &= c\\(9, 27) && \text{(arithmetic)} \end{aligned} \\
>
> is \\\tilde{0}\_2\\, that is, only if \\c = 0\\. So the two subspaces share only \\\tilde{0}\_3\\.

> **NOTE:**
>
> **Definition 3 (Gram matrix)** The **Gram matrix** of an \\m \times n\\ matrix \\\mathbf{A}\\ is the \\n \times n\\ matrix \\{\mathbf{A}}^{\top} \mathbf{A}\\.

> **NOTE:**
>
> **Example 6 (A Gram matrix and its entries)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \\ 0 & 1 \end{bmatrix}\\, with columns \\\tilde{a}\_1 = (1, 1, 0)\\ and \\\tilde{a}\_2 = (0, 1, 1)\\. Then
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \mathbf{A} &= \begin{bmatrix} 1 & 1 & 0 \\ 0 & 1 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 1 & 1 \\ 0 & 1 \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \\ &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 1 + 0 \cdot 0 & 1 \cdot 0 + 1 \cdot 1 + 0 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 1 + 1 \cdot 0 & 0 \cdot 0 + 1 \cdot 1 + 1 \cdot 1 \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \\ &= \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}. && \text{(multiply and add)} \end{aligned} \\
>
> Row \\i\\ of \\{\mathbf{A}}^{\top}\\ is column \\i\\ of \\\mathbf{A}\\, so entry \\(i, j)\\ of the Gram matrix is the dot product \\\tilde{a}\_i \cdot \tilde{a}\_j\\: for instance,
>
> \\ \begin{aligned} \tilde{a}\_1 \cdot \tilde{a}\_2 &= 0 + 1 + 0 \\ &= 1 \end{aligned} \\
>
> is entry \\(1, 2)\\.

> **NOTE:**
>
> **Theorem 4 (\\{\mathbf{A}}^{\top} \mathbf{A}\\ has the same null space as \\\mathbf{A}\\)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \mathcal{N}({\mathbf{A}}^{\top} \mathbf{A}) = \mathcal{N}(\mathbf{A}). \\

> **NOTE:**
>
> *Proof*. **\\\mathcal{N}(\mathbf{A}) \subseteq \mathcal{N}({\mathbf{A}}^{\top} \mathbf{A})\\.** If \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\, then
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \mathbf{A} \tilde{x} &= {\mathbf{A}}^{\top}\\\tilde{0}\_m \\ &= \tilde{0}\_n. \end{aligned} \\
>
> **\\\mathcal{N}({\mathbf{A}}^{\top} \mathbf{A}) \subseteq \mathcal{N}(\mathbf{A})\\.** If \\{\mathbf{A}}^{\top} \mathbf{A} \tilde{x} = \tilde{0}\_n\\, then
>
> \\ \begin{aligned} 0 &= {\tilde{x}}^{\top}\\\tilde{0}\_n && \text{(every term of the inner product is } 0 \text{)} \\ &= {\tilde{x}}^{\top}\\\mathopen{}\left({\mathbf{A}}^{\top} \mathbf{A} \tilde{x}\right)\mathclose{} && \text{(substitute } \tilde{0}\_n = {\mathbf{A}}^{\top} \mathbf{A} \tilde{x} \text{)} \\ &= \mathopen{}\left({\tilde{x}}^{\top} {\mathbf{A}}^{\top}\right)\mathclose{}\\(\mathbf{A} \tilde{x}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {(\mathbf{A} \tilde{x})}^{\top}\\(\mathbf{A} \tilde{x}) && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= (\mathbf{A} \tilde{x}) \cdot (\mathbf{A} \tilde{x}) && \text{(}\href{linear-algebra-matrices.qmd#exm-dot-product-matmul}{\text{Example~6 in Matrices}}\text{)} \\ &= \mathopen{}\left\lVert\mathbf{A} \tilde{x}\right\rVert\mathclose{}^2. && \text{(square both sides of }\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{)} \end{aligned} \\
>
> A vector whose Euclidean norm is \\0\\ has every entry \\0\\, so \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\.

> **NOTE:**
>
> **Example 7 (The null space of a Gram matrix)** For \\\mathbf{A}\\ in [Example 1](#exm-column-space),
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \mathbf{A} &= \begin{bmatrix} 1 & 3 \\ -2 & -6 \\ -2 & -6 \end{bmatrix} \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix} \\ &= \begin{bmatrix} 10 & -20 & -20 \\ -20 & 40 & 40 \\ -20 & 40 & 40 \end{bmatrix}. \end{aligned} \\
>
> Every row is a multiple of \\(1, -2, -2)\\, so \\{\mathbf{A}}^{\top} \mathbf{A} \tilde{x} = \tilde{0}\_3\\ exactly when \\x_1 - 2x_2 - 2x_3 = 0\\, the same condition as for \\\mathcal{N}(\mathbf{A})\\ in [Example 3](#exm-null-space).

## 2 Rank-nullity and rank factorization

> **NOTE:**
>
> This section is adapted from Zhou ([2024](#ref-zhou2024rank)), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)).

> **NOTE:**
>
> **Theorem 5 (The rank is the dimension of the column space)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \operatorname{rank}(\mathbf{A}) = \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{}. \\

> **NOTE:**
>
> *Proof*. Let \\r = \operatorname{rank}(\mathbf{A})\\ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)), and choose \\r\\ linearly independent columns of \\\mathbf{A}\\; by [Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank), no larger set of columns is linearly independent. We show the chosen columns are a basis of \\\mathcal{C}(\mathbf{A})\\ ([Definition 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-basis)).
>
> **Every column is in the span of the chosen columns.** A chosen column is in that span trivially. If some unchosen column \\\tilde{a}\_j\\ were not in the span, then adding it to the chosen columns would give \\r + 1\\ linearly independent columns ([Theorem 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-add-outside-span)), more than \\r\\. So every column of \\\mathbf{A}\\ is in the span of the chosen columns.
>
> **The chosen columns span \\\mathcal{C}(\mathbf{A})\\.** The span of the chosen columns is a subspace ([Theorem 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-span-subspace)), so it is closed under addition and scalar multiplication, and it contains every linear combination of the columns of \\\mathbf{A}\\. By [Theorem 1](#thm-column-space-span), those combinations make up \\\mathcal{C}(\mathbf{A})\\, so \\\mathcal{C}(\mathbf{A})\\ is contained in the span of the chosen columns. The chosen columns are themselves columns of \\\mathbf{A}\\, so their span is contained in \\\mathcal{C}(\mathbf{A})\\, and the two sets are equal.
>
> The chosen columns are linearly independent and span \\\mathcal{C}(\mathbf{A})\\, so they are a basis of it, and \\\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = r\\ ([Definition 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)). If \\r = 0\\, every column is \\\tilde{0}\_m\\, \\\mathcal{C}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_m\right\\\mathclose{}\\, and both sides are \\0\\.

> **NOTE:**
>
> **Example 8 (The rank of the matrix in [Example 1](#exm-column-space))** For \\\mathbf{A}\\ in [Example 1](#exm-column-space), \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\ ([Example 2](#exm-column-space-span)), and \\(1, 3)\\ is linearly independent because it is nonzero, so it is a basis and \\\mathcal{C}(\mathbf{A})\\ has dimension \\1\\. So \\\operatorname{rank}(\mathbf{A}) = 1\\, by [Theorem 5](#thm-rank-dim). Directly: the first column \\(1, 3)\\ is linearly independent on its own, and any two columns are dependent, because each column is a multiple of \\(1, 3)\\.

> **NOTE:**
>
> **Definition 4 (Nullity)** The **nullity** of a matrix \\\mathbf{A}\\ is the dimension of its null space ([Definition 2](#def-null-space)):
>
> \\ \operatorname{nullity}(\mathbf{A}) \stackrel{\text{def}}{=}\dim\mathopen{}\left(\mathcal{N}(\mathbf{A})\right)\mathclose{}. \\

> **NOTE:**
>
> **Example 9 (The nullity of the matrix in [Example 1](#exm-column-space))** For \\\mathbf{A}\\ in [Example 1](#exm-column-space), \\\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\ ([Example 3](#exm-null-space)). Those two vectors are linearly independent: \\c_1 (2, 1, 0) + c_2 (2, 0, 1) = (2c_1 + 2c_2, c_1, c_2)\\, which is \\\tilde{0}\_3\\ only if
>
> \\ \begin{aligned} c_1 &= c_2 \\ &= 0. \end{aligned} \\
>
> So they are a basis of \\\mathcal{N}(\mathbf{A})\\, and \\\operatorname{nullity}(\mathbf{A}) = 2\\. The \\2 \times 2\\ identity matrix has nullity \\0\\, because \\\mathbf{I} \tilde{x} = \tilde{x}\\ is \\\tilde{0}\_2\\ only when \\\tilde{x} = \tilde{0}\_2\\.

> **NOTE:**
>
> **Theorem 6 (Rank-nullity theorem)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \operatorname{rank}(\mathbf{A}) + \operatorname{nullity}(\mathbf{A}) = n. \\

> **NOTE:**
>
> *Proof*. Let \\\nu= \operatorname{nullity}(\mathbf{A})\\. Choose a basis \\\tilde{x}\_1, \ldots, \tilde{x}\_\nu\\ of \\\mathcal{N}(\mathbf{A})\\, and extend it to a basis \\\tilde{x}\_1, \ldots, \tilde{x}\_\nu, \tilde{y}\_1, \ldots, \tilde{y}\_{n - \nu}\\ of \\\mathbb{R}^n\\ ([Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis)); it has \\n\\ vectors, because every basis of \\\mathbb{R}^n\\ has \\\dim(\mathbb{R}^n) = n\\ vectors ([Theorem 7 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-basis-size), [Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)). We show that \\\mathbf{A} \tilde{y}\_1, \ldots, \mathbf{A} \tilde{y}\_{n - \nu}\\ are a basis of \\\mathcal{C}(\mathbf{A})\\, using [Theorem 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-linear) to apply \\\mathbf{A}\\ to linear combinations.
>
> **They are linearly independent.** Suppose \\\sum\_{i=1}^{n-\nu} v_i\\\mathbf{A} \tilde{y}\_i = \tilde{0}\_m\\. Then \\\mathbf{A}\\\mathopen{}\left(\sum_i v_i \tilde{y}\_i\right)\mathclose{} = \tilde{0}\_m\\ ([Theorem 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-linear)), so \\\sum_i v_i \tilde{y}\_i \in \mathcal{N}(\mathbf{A})\\, and it equals \\\sum\_{j=1}^{\nu} u_j \tilde{x}\_j\\ for some numbers \\u_j\\, since the \\\tilde{x}\_j\\ span \\\mathcal{N}(\mathbf{A})\\. Moving everything to one side,
>
> \\ \sum\_{j=1}^{\nu} (-u_j)\\\tilde{x}\_j + \sum\_{i=1}^{n-\nu} v_i \tilde{y}\_i = \tilde{0}\_n, \\
>
> and because the \\\tilde{x}\\’s and \\\tilde{y}\\’s together form a basis of \\\mathbb{R}^n\\, which is linearly independent, every coefficient is \\0\\; in particular every \\v_i = 0\\.
>
> **They span \\\mathcal{C}(\mathbf{A})\\.** Take any \\\tilde{w} \in \mathcal{C}(\mathbf{A})\\, so \\\tilde{w} = \mathbf{A} \tilde{z}\\ for some \\\tilde{z} \in \mathbb{R}^n\\ ([Definition 1](#def-column-space)). Write \\\tilde{z} = \sum_j a_j \tilde{x}\_j + \sum_i b_i \tilde{y}\_i\\ in the basis of \\\mathbb{R}^n\\. Then
>
> \\ \begin{aligned} \tilde{w} &= \mathbf{A}\\\mathopen{}\left(\sum\_{j=1}^{\nu} a_j \tilde{x}\_j + \sum\_{i=1}^{n-\nu} b_i \tilde{y}\_i\right)\mathclose{} && \text{(substitute } \tilde{z} \text{)} \\ &= \sum\_{j=1}^{\nu} a_j\\\mathbf{A} \tilde{x}\_j + \sum\_{i=1}^{n-\nu} b_i\\\mathbf{A} \tilde{y}\_i && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{)} \\ &= \sum\_{j=1}^{\nu} a_j\\\tilde{0}\_m + \sum\_{i=1}^{n-\nu} b_i\\\mathbf{A} \tilde{y}\_i && \text{(each } \tilde{x}\_j \in \mathcal{N}(\mathbf{A}) \text{)} \\ &= \sum\_{i=1}^{n-\nu} b_i\\\mathbf{A} \tilde{y}\_i, && \text{(drop the zero terms)} \end{aligned} \\
>
> a linear combination of \\\mathbf{A} \tilde{y}\_1, \ldots, \mathbf{A} \tilde{y}\_{n-\nu}\\. These vectors are in \\\mathcal{C}(\mathbf{A})\\, so their span is exactly \\\mathcal{C}(\mathbf{A})\\.
>
> So \\\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = n - \nu\\, and \\\operatorname{rank}(\mathbf{A}) = n - \nu\\ by [Theorem 5](#thm-rank-dim).

> **NOTE:**
>
> **Example 10 (Checking rank-nullity on the matrix in [Example 1](#exm-column-space))** The matrix \\\mathbf{A}\\ in [Example 1](#exm-column-space) has \\n = 3\\ columns, rank \\1\\ ([Example 8](#exm-rank-dim)) and nullity \\2\\ ([Example 9](#exm-nullity)), and \\1 + 2 = 3\\. The \\2 \times 2\\ identity matrix has rank \\2\\ and nullity \\0\\ ([Example 9](#exm-nullity)), and \\2 + 0 = 2\\.

> **NOTE:**
>
> **Theorem 7 (Multiplying on the right cannot increase the rank)** If \\\mathbf{A}\\ is \\m \times n\\ and \\\mathbf{B}\\ is \\n \times k\\, then
>
> \\ \operatorname{rank}(\mathbf{A} \mathbf{B}) \le \operatorname{rank}(\mathbf{A}). \\

> **NOTE:**
>
> *Proof*. **\\\mathcal{C}(\mathbf{A} \mathbf{B}) \subseteq \mathcal{C}(\mathbf{A})\\.** Any vector in \\\mathcal{C}(\mathbf{A} \mathbf{B})\\ is \\(\mathbf{A} \mathbf{B})\\\tilde{x}\\ for some \\\tilde{x} \in \mathbb{R}^k\\ ([Definition 1](#def-column-space)), and
>
> \\ \begin{aligned} (\mathbf{A} \mathbf{B})\\\tilde{x} &= \mathbf{A}\\(\mathbf{B} \tilde{x}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \end{aligned} \\
>
> is \\\mathbf{A}\\ times the vector \\\mathbf{B} \tilde{x} \in \mathbb{R}^n\\, so it is in \\\mathcal{C}(\mathbf{A})\\.
>
> **Compare dimensions.** Both column spaces are subspaces ([Theorem 1](#thm-column-space-span)), so
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A} \mathbf{B}) &= \dim\mathopen{}\left(\mathcal{C}(\mathbf{A} \mathbf{B})\right)\mathclose{} && \text{(}\href{#thm-rank-dim}{\text{Theorem~5}}\text{)} \\ &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} && \text{(}\href{linear-algebra-subspaces.qmd#thm-dim-bound}{\text{Theorem~10 in Subspaces and Rank}}\text{, part 2)} \\ &= \operatorname{rank}(\mathbf{A}). && \text{(}\href{#thm-rank-dim}{\text{Theorem~5}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 11 (A product can lose rank)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}, \qquad \mathbf{B} = \begin{bmatrix} 0 & 0 \\ 1 & 0 \end{bmatrix}, \qquad \mathbf{A} \mathbf{B} = \begin{bmatrix} 1 \cdot 0 + 0 \cdot 1 & 1 \cdot 0 + 0 \cdot 0 \\ 0 \cdot 0 + 0 \cdot 1 & 0 \cdot 0 + 0 \cdot 0 \end{bmatrix} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix}. \\
>
> \\\mathbf{A}\\ has rank \\1\\, but \\\mathbf{A} \mathbf{B}\\ has rank \\0\\, so the inequality in [Theorem 7](#thm-rank-product) can be strict. With the \\2 \times 2\\ identity in place of \\\mathbf{B}\\, \\\mathbf{A} \mathbf{I} = \mathbf{A}\\ keeps rank \\1\\, and the inequality is an equality.

> **NOTE:**
>
> **Theorem 8 (Fundamental theorem of ranks)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A}) &= \operatorname{rank}({\mathbf{A}}^{\top}) \\ &= \operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) \\ &= \operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}). \end{aligned} \\
>
> In particular, the largest number of linearly independent rows of \\\mathbf{A}\\ equals the largest number of linearly independent columns.

> **NOTE:**
>
> *Proof*. **\\\operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) = \operatorname{rank}(\mathbf{A})\\.** Both matrices have \\n\\ columns, and \\\mathcal{N}({\mathbf{A}}^{\top} \mathbf{A}) = \mathcal{N}(\mathbf{A})\\ ([Theorem 4](#thm-null-gram)), so they have the same nullity ([Definition 4](#def-nullity)). Then
>
> \\ \begin{aligned} \operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) &= n - \operatorname{nullity}({\mathbf{A}}^{\top} \mathbf{A}) && \text{(}\href{#thm-rank-nullity}{\text{Theorem~6}}\text{)} \\ &= n - \operatorname{nullity}(\mathbf{A}) && \text{(equal null spaces)} \\ &= \operatorname{rank}(\mathbf{A}). && \text{(}\href{#thm-rank-nullity}{\text{Theorem~6}}\text{)} \end{aligned} \\
>
> **\\\operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}) = \operatorname{rank}({\mathbf{A}}^{\top})\\.** Apply the previous step to the \\n \times m\\ matrix \\{\mathbf{A}}^{\top}\\, using \\{({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}\\.
>
> **Chain the inequalities.**
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A}) &= \operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) && \text{(first step)} \\ &\le \operatorname{rank}({\mathbf{A}}^{\top}) && \text{(}\href{#thm-rank-product}{\text{Theorem~7}}\text{, with } {\mathbf{A}}^{\top} \text{ on the left)} \\ &= \operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}) && \text{(second step)} \\ &\le \operatorname{rank}(\mathbf{A}). && \text{(}\href{#thm-rank-product}{\text{Theorem~7}}\text{, with } \mathbf{A} \text{ on the left)} \end{aligned} \\
>
> The chain starts and ends at \\\operatorname{rank}(\mathbf{A})\\, so every quantity in it equals \\\operatorname{rank}(\mathbf{A})\\. The columns of \\{\mathbf{A}}^{\top}\\ are the rows of \\\mathbf{A}\\, which gives the statement about rows.

> **NOTE:**
>
> **Example 12 (Four equal ranks)** For \\\mathbf{A}\\ in [Example 1](#exm-column-space), \\\operatorname{rank}(\mathbf{A}) = 1\\ ([Example 8](#exm-rank-dim)). Its transpose \\{\mathbf{A}}^{\top} = \begin{bmatrix} 1 & 3 \\ -2 & -6 \\ -2 & -6 \end{bmatrix}\\ has second column \\3\\ times its first, so its rank is \\1\\. \\{\mathbf{A}}^{\top} \mathbf{A}\\ in [Example 7](#exm-null-gram) has every row a multiple of \\(1, -2, -2)\\, so its rank is \\1\\ too, and
>
> \\ \begin{aligned} \mathbf{A} {\mathbf{A}}^{\top} &= \begin{bmatrix} 1 \cdot 1 + (-2)(-2) + (-2)(-2) & 1 \cdot 3 + (-2)(-6) + (-2)(-6) \\ 3 \cdot 1 + (-6)(-2) + (-6)(-2) & 3 \cdot 3 + (-6)(-6) + (-6)(-6) \end{bmatrix} \\ &= \begin{bmatrix} 9 & 27 \\ 27 & 81 \end{bmatrix}, \end{aligned} \\
>
> whose second column is \\3\\ times its first, so its rank is \\1\\.

> **NOTE:**
>
> **Corollary 1 (The rank is at most the smaller dimension)** For any \\m \times n\\ matrix \\\mathbf{A}\\, \\\operatorname{rank}(\mathbf{A}) \le \min\mathopen{}\left\\m, n\right\\\mathclose{}\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{A}\\ has \\n\\ columns, so at most \\n\\ of them are linearly independent, and \\\operatorname{rank}(\mathbf{A}) \le n\\ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)). Likewise \\{\mathbf{A}}^{\top}\\ has \\m\\ columns, so \\\operatorname{rank}(\mathbf{A}) = \operatorname{rank}({\mathbf{A}}^{\top}) \le m\\ ([Theorem 8](#thm-rank-transpose)).

> **NOTE:**
>
> **Example 13 (A \\2 \times 3\\ matrix has rank at most \\2\\)** By [Corollary 1](#cor-rank-bound), every \\2 \times 3\\ matrix has rank at most \\\min\mathopen{}\left\\2, 3\right\\\mathclose{} = 2\\, even though it has \\3\\ columns. The matrix \\\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}\\ of [Remark 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#rem-full-column-rank-shape) reaches that bound: its first two columns \\(1, 0)\\ and \\(0, 1)\\ are linearly independent, so its rank is \\2\\.

> **NOTE:**
>
> **Definition 5 (Affine subspace)** An **affine subspace** of \\\mathbb{R}^p\\ is a set of the form
>
> \\ \mathopen{}\left\\\tilde{x}\_0 + \tilde{s} : \tilde{s} \in \mathcal{S}\right\\\mathclose{} \\
>
> for some vector \\\tilde{x}\_0 \in \mathbb{R}^p\\ and some subspace \\\mathcal{S}\\ of \\\mathbb{R}^p\\ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)): the [image](sets-functions.llms.md#def-image) of \\\mathcal{S}\\ under the translation by \\\tilde{x}\_0\\ ([Definition 16 in Matrices](linear-algebra-matrices.llms.md#def-translation)).

> **NOTE:**
>
> **Example 14 (A line that misses the origin is an affine subspace)** The line \\\mathcal{T} = \mathopen{}\left\\(x, 1) : x \in \mathbb{R}\right\\\mathclose{}\\ of [Example 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-not-subspace) is not a subspace, but it is an affine subspace, with \\\tilde{x}\_0 = (0, 1)\\ and \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 0)\right\\\mathclose{}\\ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)):
>
> \\ \begin{aligned} (0, 1) + c\\(1, 0) &= (0 + c,\\ 1 + 0) && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{, }\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~6 in Vectors}}\text{)} \\ &= (c, 1), && \text{(add)} \end{aligned} \\
>
> and as \\c\\ ranges over \\\mathbb{R}\\, \\(c, 1)\\ ranges over all of \\\mathcal{T}\\. Every subspace \\\mathcal{S}\\ is also an affine subspace, with \\\tilde{x}\_0 = \tilde{0}\\.

> **NOTE:**
>
> **Theorem 9 (A hyperplane is a translated subspace of dimension \\p - 1\\)** Let \\\tilde{w} \in \mathbb{R}^p\\ be nonzero, let \\b \in \mathbb{R}\\, let \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w}^{\top} \tilde{x}+ b = 0\right\\\mathclose{}\\ be the hyperplane with normal vector \\\tilde{w}\\ and offset \\b\\ ([Definition 19 in Matrices](linear-algebra-matrices.llms.md#def-hyperplane)), and let \\\mathcal{H}\_0 = \mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w}^{\top} \tilde{x}= 0\right\\\mathclose{}\\ be the hyperplane with the same normal vector and offset \\0\\.
>
> 1.  \\\mathcal{H}\_0\\ is a subspace of \\\mathbb{R}^p\\ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)) of dimension \\p - 1\\ ([Definition 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)).
> 2.  \\\mathcal{H}\\ is not empty, and for any \\\tilde{x}\_0 \in \mathcal{H}\\, \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\_0 + \tilde{s} : \tilde{s} \in \mathcal{H}\_0\right\\\mathclose{}\\, so \\\mathcal{H}\\ is an affine subspace ([Definition 5](#def-affine-subspace)).
> 3.  For any \\\tilde{x}, \tilde{y}\in \mathcal{H}\\, the normal vector is orthogonal to their difference: \\\tilde{w} \perp (\tilde{x}- \tilde{y})\\ ([Definition 13 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)).

> **NOTE:**
>
> *Proof*. Here \\\tilde{w}^{\top}\\ is a \\1 \times p\\ matrix, and \\\tilde{w}^{\top} \tilde{x}= \tilde{w} \cdot \tilde{x}\\ ([Example 6 in Matrices](linear-algebra-matrices.llms.md#exm-dot-product-matmul)).
>
> **Part 1.** \\\mathcal{H}\_0\\ is the null space \\\mathcal{N}(\tilde{w}^{\top})\\ ([Definition 2](#def-null-space)), so it is a subspace ([Theorem 2](#thm-null-space-subspace)). The \\p\\ columns of \\\tilde{w}^{\top}\\ are the numbers \\w_1, \ldots, w_p\\. Some \\w_j \ne 0\\, because \\\tilde{w} \ne \tilde{0}\\, and that column on its own is linearly independent (\\c\\w_j = 0\\ forces \\c = 0\\), so \\\operatorname{rank}(\tilde{w}^{\top}) \ge 1\\ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)); and \\\operatorname{rank}(\tilde{w}^{\top}) \le \min\mathopen{}\left\\1, p\right\\\mathclose{} = 1\\ ([Corollary 1](#cor-rank-bound)). So
>
> \\ \begin{aligned} \dim(\mathcal{H}\_0) &= \operatorname{nullity}(\tilde{w}^{\top}) && \text{(}\href{#def-nullity}{\text{Definition~4}}\text{)} \\ &= p - \operatorname{rank}(\tilde{w}^{\top}) && \text{(}\href{#thm-rank-nullity}{\text{Theorem~6}}\text{, for the } p \text{ columns of } \tilde{w}^{\top} \text{)} \\ &= p - 1. && \text{(the rank is } 1 \text{)} \end{aligned} \\
>
> **Part 2.** \\\tilde{w} \cdot \tilde{w} = w_1^2 + \cdots + w_p^2 \> 0\\, because some \\w_j \ne 0\\. So \\\tilde{x}^\* \stackrel{\text{def}}{=}-\frac{b}{\tilde{w} \cdot \tilde{w}}\\\tilde{w}\\ is defined, and
>
> \\ \begin{aligned} \tilde{w}^{\top} \tilde{x}^\* + b &= -\frac{b}{\tilde{w} \cdot \tilde{w}}\\(\tilde{w}^{\top} \tilde{w}) + b && \text{(homogeneity of } \tilde{x}\mapsto \tilde{w}^{\top} \tilde{x}\text{, }\href{linear-algebra-matrices.qmd#thm-matrix-map-linear}{\text{Theorem~9 in Matrices}}\text{)} \\ &= -b + b && \text{(} \tilde{w}^{\top} \tilde{w} = \tilde{w} \cdot \tilde{w} \text{)} \\ &= 0, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\tilde{x}^\* \in \mathcal{H}\\, and \\\mathcal{H}\\ is not empty. Now take any \\\tilde{x}\_0 \in \mathcal{H}\\, so \\\tilde{w}^{\top} \tilde{x}\_0 = -b\\. For any \\\tilde{x}\in \mathbb{R}^p\\,
>
> \\ \begin{aligned} \tilde{w}^{\top} (\tilde{x}- \tilde{x}\_0) &= \tilde{w}^{\top} \tilde{x}- \tilde{w}^{\top} \tilde{x}\_0 && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= \tilde{w}^{\top} \tilde{x}- (-b) && \text{(} \tilde{x}\_0 \in \mathcal{H} \text{)} \\ &= \tilde{w}^{\top} \tilde{x}+ b, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\tilde{x}\in \mathcal{H}\\ exactly when \\\tilde{x}- \tilde{x}\_0 \in \mathcal{H}\_0\\, that is, exactly when \\\tilde{x}= \tilde{x}\_0 + \tilde{s}\\ with \\\tilde{s} = \tilde{x}- \tilde{x}\_0 \in \mathcal{H}\_0\\. \\\mathcal{H}\_0\\ is a subspace (part 1), so \\\mathcal{H}\\ has the form in [Definition 5](#def-affine-subspace).
>
> **Part 3.** For \\\tilde{x}, \tilde{y}\in \mathcal{H}\\, both \\\tilde{w}^{\top} \tilde{x}\\ and \\\tilde{w}^{\top} \tilde{y}\\ equal \\-b\\, so
>
> \\ \begin{aligned} \tilde{w} \cdot (\tilde{x}- \tilde{y}) &= \tilde{w}^{\top} \tilde{x}- \tilde{w}^{\top} \tilde{y} && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= (-b) - (-b) && \text{(} \tilde{x}, \tilde{y}\in \mathcal{H} \text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\

> **NOTE:**
>
> **Example 15 (The plane \\x_1 + x_2 + x_3 = 1\\ in \\\mathbb{R}^3\\)** Take \\\tilde{w} = (1, 1, 1)\\ and \\b = -1\\, so \\\mathcal{H} = \mathopen{}\left\\\tilde{x}: x_1 + x_2 + x_3 - 1 = 0\right\\\mathclose{}\\, the plane that [Example 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-subspace-zero) showed is not a subspace. By part 1, \\\mathcal{H}\_0 = \mathopen{}\left\\\tilde{x}: x_1 + x_2 + x_3 = 0\right\\\mathclose{}\\ is a subspace of dimension \\3 - 1 = 2\\.
>
> - \\\tilde{x}\_0 = (1, 0, 0)\\ is in \\\mathcal{H}\\, since \\1 + 0 + 0 - 1 = 0\\, and so is \\\tilde{y}= (0, 1, 0)\\.
>
> - Their difference \\\tilde{y}- \tilde{x}\_0 = (-1, 1, 0)\\ has entries summing to \\-1 + 1 + 0 = 0\\, so it is in \\\mathcal{H}\_0\\, and \\\tilde{y}= \tilde{x}\_0 + (-1, 1, 0)\\, as part 2 says.
>
> - \\ \begin{aligned} \tilde{w} \cdot (-1, 1, 0) &= -1 + 1 + 0 \\ &= 0, \end{aligned} \\
>
>   as part 3 says.
>
> - The point built in the proof is
>
>   \\ \begin{aligned} \tilde{x}^\* &= -\frac{-1}{3}\\(1, 1, 1) \\ &= \mathopen{}\left(\tfrac{1}{3}, \tfrac{1}{3}, \tfrac{1}{3}\right)\mathclose{}, \end{aligned} \\
>
>   and \\\tfrac{1}{3} + \tfrac{1}{3} + \tfrac{1}{3} - 1 = 0\\.

> **NOTE:**
>
> **Theorem 10 (Where a hyperplane passes, and its shape in \\\mathbb{R}^2\\ and \\\mathbb{R}^3\\)** Let \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w} \cdot \tilde{x} + b = 0\right\\\mathclose{}\\ be a hyperplane ([Definition 19 in Matrices](linear-algebra-matrices.llms.md#def-hyperplane)).
>
> 1.  \\\mathcal{H}\\ contains the origin \\\tilde{0}\\ exactly when \\b = 0\\.
> 2.  If \\p = 2\\, then \\\mathcal{H}\\ is a line: \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\_0 + t\\\tilde{v} : t \in \mathbb{R}\right\\\mathclose{}\\ for some \\\tilde{x}\_0 \in \mathbb{R}^2\\ and some nonzero \\\tilde{v} \in \mathbb{R}^2\\.
> 3.  If \\p = 3\\, then \\\mathcal{H}\\ is a plane: \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\_0 + s\\\tilde{v}\_1 + t\\\tilde{v}\_2 : s, t \in \mathbb{R}\right\\\mathclose{}\\ for some \\\tilde{x}\_0 \in \mathbb{R}^3\\ and some linearly independent \\\tilde{v}\_1, \tilde{v}\_2 \in \mathbb{R}^3\\.

> **NOTE:**
>
> *Proof*. **Part 1.** Since \\\tilde{w} \cdot \tilde{0} = 0\\,
>
> \\ \begin{aligned} \tilde{w} \cdot \tilde{0} + b &= 0 + b && \text{(the dot product with } \tilde{0}\text{ is } 0 \text{)} \\ &= b, && \text{(}\href{algebra-sums.qmd#thm-add-ident}{\text{Theorem~4 in Convexity, Infimum and Sums}}\text{)} \end{aligned} \\
>
> so \\\tilde{0}\in \mathcal{H}\\ exactly when \\b = 0\\.
>
> **Parts 2 and 3.** By [Theorem 9](#thm-hyperplane-subspace), \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\_0 + \tilde{s} : \tilde{s} \in \mathcal{H}\_0\right\\\mathclose{}\\ for any \\\tilde{x}\_0 \in \mathcal{H}\\, where \\\mathcal{H}\_0\\ is a subspace of \\\mathbb{R}^p\\ of dimension \\p - 1\\.
>
> For \\p = 2\\, \\\mathcal{H}\_0\\ has dimension \\1\\, so it has a basis ([Definition 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-basis)) with one vector \\\tilde{v}\\. That vector is nonzero, and \\\mathcal{H}\_0 = \mathopen{}\left\\t\\\tilde{v} : t \in \mathbb{R}\right\\\mathclose{}\\.
>
> For \\p = 3\\, \\\mathcal{H}\_0\\ has dimension \\2\\, so it has a basis with two vectors \\\tilde{v}\_1\\ and \\\tilde{v}\_2\\. They are linearly independent, and \\\mathcal{H}\_0 = \mathopen{}\left\\s\\\tilde{v}\_1 + t\\\tilde{v}\_2 : s, t \in \mathbb{R}\right\\\mathclose{}\\.

> **NOTE:**
>
> **Example 16 (A line in \\\mathbb{R}^2\\ and a plane in \\\mathbb{R}^3\\, checked on a grid of points)** In \\\mathbb{R}^2\\, take \\\tilde{w} = (1, 1)\\ and \\b = -1\\, the line of [Example 19 in Matrices](linear-algebra-matrices.llms.md#exm-hyperplane). The point \\\tilde{x}\_0 = -\frac{b}{\tilde{w} \cdot \tilde{w}}\\\tilde{w}\\ is on it, and the vector \\\tilde{v} = (-w_2, w_1)\\ is nonzero with \\\tilde{w} \cdot \tilde{v} = 0\\, so it spans the subspace \\\mathcal{H}\_0\\ of [Theorem 9](#thm-hyperplane-subspace). In \\\mathbb{R}^3\\, take \\\tilde{w} = (1, 1, 1)\\ and \\b = -1\\, the plane of [Example 15](#exm-hyperplane-subspace), with the independent vectors \\\tilde{v}\_1 = (1, -1, 0)\\ and \\\tilde{v}\_2 = (0, 1, -1)\\ in \\\mathcal{H}\_0\\. The code evaluates \\\tilde{w} \cdot \tilde{x} + b\\ at the origin and at points \\\tilde{x}\_0 + t\\\tilde{v}\\ and \\\tilde{x}\_0 + s\\\tilde{v}\_1 + t\\\tilde{v}\_2\\.
>
> ``` downlit
> level <- function(w, b, x) sum(w * x) + b
>
> w2 <- c(1, 1)
> b2 <- -1
> point_line <- -b2 / sum(w2 * w2) * w2
> v <- c(-w2[2], w2[1])
> line_levels <- sapply(-2:2, function(t) level(w2, b2, point_line + t * v))
>
> w3 <- c(1, 1, 1)
> b3 <- -1
> point_plane <- -b3 / sum(w3 * w3) * w3
> v1 <- c(1, -1, 0)
> v2 <- c(0, 1, -1)
> grid <- expand.grid(s = -2:2, t = -2:2)
> plane_levels <- mapply(
>   function(s, t) level(w3, b3, point_plane + s * v1 + t * v2),
>   grid$s, grid$t
> )
>
> c(
>   origin_in_R2 = level(w2, b2, c(0, 0)),
>   origin_in_R3 = level(w3, b3, c(0, 0, 0)),
>   origin_with_b0 = level(w3, 0, c(0, 0, 0))
> )
> #>   origin_in_R2   origin_in_R3 origin_with_b0 
> #>             -1             -1              0
> ```
>
> At the origin the left side equals the offset, so the origin is on the line only if \\b\\ is \\0\\: it gives -1 for the line and -1 for the plane, and 0 once the offset is changed to \\0\\. All 5 points \\\tilde{x}\_0 + t\\\tilde{v}\\ on the line and all 25 points \\\tilde{x}\_0 + s\\\tilde{v}\_1 + t\\\tilde{v}\_2\\ on the plane satisfy the equation up to rounding error: 30 of the 30 points have \\\mathopen{}\left\|\tilde{w} \cdot \tilde{x} + b\right\|\mathclose{} \< 10^{-10}\\.

> **NOTE:**
>
> **Definition 6 (Half-space)** Let \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w} \cdot \tilde{x} + b = 0\right\\\mathclose{}\\ be a hyperplane ([Definition 19 in Matrices](linear-algebra-matrices.llms.md#def-hyperplane)). The two **open half-spaces** of \\\mathcal{H}\\ are
>
> \\ \mathcal{H}^+ \stackrel{\text{def}}{=}\mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w} \cdot \tilde{x} + b \> 0\right\\\mathclose{} \quad \text{and} \quad \mathcal{H}^- \stackrel{\text{def}}{=}\mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w} \cdot \tilde{x} + b \< 0\right\\\mathclose{}. \tag{1}\\
>
> The **closed half-spaces** also include \\\mathcal{H}\\ itself: \\\mathcal{H}^+ \cup \mathcal{H}\\ and \\\mathcal{H}^- \cup \mathcal{H}\\. Every point of \\\mathbb{R}^p\\ is in exactly one of \\\mathcal{H}^+\\, \\\mathcal{H}\\ and \\\mathcal{H}^-\\, because the number \\\tilde{w} \cdot \tilde{x} + b\\ is positive, zero or negative. The vector \\\tilde{w}\\ points into \\\mathcal{H}^+\\: the number \\\tilde{w} \cdot \tilde{x} + b\\ goes up when \\\tilde{x}\\ moves in the direction \\\tilde{w}\\.

> **NOTE:**
>
> *Remark*. Replacing \\(\tilde{w}, b)\\ by \\(-\tilde{w}, -b)\\ describes the same hyperplane but swaps the names \\\mathcal{H}^+\\ and \\\mathcal{H}^-\\. The sign of \\\tilde{w} \cdot \tilde{x} + b\\ tells you which side of the hyperplane \\\tilde{x}\\ is on. A linear classifier uses this sign to assign one of two labels.

> **NOTE:**
>
> **Example 17 (Half-spaces of a line in the plane)** Let \\\mathcal{H}\\ be the line in \\\mathbb{R}^2\\ with \\\tilde{w} = (1, 2)\\ and \\b = -2\\ ([Definition 19 in Matrices](linear-algebra-matrices.llms.md#def-hyperplane)), so \\\mathcal{H} = \mathopen{}\left\\\tilde{x}: x_1 + 2 x_2 - 2 = 0\right\\\mathclose{}\\. Evaluate \\\tilde{w} \cdot \tilde{x} + b\\ at three points ([Definition 6](#def-half-space)):
>
> - At \\(0, 0)\\ it equals \\0 + 0 - 2 = -2 \< 0\\, so \\(0, 0) \in \mathcal{H}^-\\.
> - At \\(2, 0)\\ it equals \\2 + 0 - 2 = 0\\, so \\(2, 0) \in \mathcal{H}\\.
> - At \\(2, 1)\\ it equals \\2 + 2 - 2 = 2 \> 0\\, so \\(2, 1) \in \mathcal{H}^+\\.
>
> Moving from \\(2, 0)\\ in the direction \\\tilde{w} = (1, 2)\\ gives \\(3, 2)\\, where the value is \\3 + 4 - 2 = 5 \> 0\\. So the direction \\\tilde{w}\\ leads into \\\mathcal{H}^+\\.

> **NOTE:**
>
> **Theorem 11 (Differences of points in a hyperplane and in a half-space)** Let \\\tilde{w} \in \mathbb{R}^p\\ be nonzero, let \\b \in \mathbb{R}\\, and let \\\mathcal{H}\\, \\\mathcal{H}^+\\ be the hyperplane and open half-space of [Definition 6](#def-half-space). For a set \\S \subseteq \mathbb{R}^p\\, let \\D(S) \stackrel{\text{def}}{=}\mathopen{}\left\\\tilde{y}- \tilde{x}: \tilde{x}, \tilde{y}\in S\right\\\mathclose{}\\ be the set of differences of its points.
>
> 1.  \\D(\mathcal{H}) = \mathopen{}\left\\\tilde{s} : \tilde{w} \cdot \tilde{s} = 0\right\\\mathclose{}\\, a subspace of dimension \\p - 1\\.
> 2.  \\D(\mathcal{H}^+) = \mathbb{R}^p\\, a subspace of dimension \\p\\.
>
> The same holds for \\\mathcal{H}^-\\.

> **NOTE:**
>
> *Proof*. **Part 1.** Let \\\tilde{x}, \tilde{y}\in \mathcal{H}\\. By [Theorem 9](#thm-hyperplane-subspace) part 3, \\\tilde{w} \cdot (\tilde{y}- \tilde{x}) = 0\\, so \\\tilde{y}- \tilde{x}\in \mathcal{H}\_0 = \mathopen{}\left\\\tilde{s} : \tilde{w} \cdot \tilde{s} = 0\right\\\mathclose{}\\. Conversely, fix any \\\tilde{x}\_0 \in \mathcal{H}\\ (it exists by [Theorem 9](#thm-hyperplane-subspace) part 2). For any \\\tilde{s} \in \mathcal{H}\_0\\, the point \\\tilde{x}\_0 + \tilde{s}\\ is in \\\mathcal{H}\\ by the same part, and \\(\tilde{x}\_0 + \tilde{s}) - \tilde{x}\_0 = \tilde{s}\\. So \\D(\mathcal{H}) = \mathcal{H}\_0\\, which has dimension \\p - 1\\ by [Theorem 9](#thm-hyperplane-subspace) part 1.
>
> **Part 2.** Every difference is in \\\mathbb{R}^p\\, so \\D(\mathcal{H}^+) \subseteq \mathbb{R}^p\\. For the other direction, fix any \\\tilde{x}\_0 \in \mathcal{H}\\ and any \\\tilde{v} \in \mathbb{R}^p\\. For a number \\t \> 0\\ to be chosen, let \\\tilde{x}\_t \stackrel{\text{def}}{=}\tilde{x}\_0 + t\\\tilde{w}\\. Then
>
> \\ \begin{aligned} \tilde{w} \cdot \tilde{x}\_t + b &= \mathopen{}\left(\tilde{w} \cdot \tilde{x}\_0 + b\right)\mathclose{} + t\\\tilde{w} \cdot \tilde{w} && \text{(linearity of } \tilde{x}\mapsto \tilde{w} \cdot \tilde{x} \text{)} \\ &= t\\\tilde{w} \cdot \tilde{w}, && \text{(} \tilde{x}\_0 \in \mathcal{H} \text{)} \end{aligned} \\
>
> which is positive, so \\\tilde{x}\_t \in \mathcal{H}^+\\. Next,
>
> \\ \begin{aligned} \tilde{w} \cdot (\tilde{x}\_t + \tilde{v}) + b &= \mathopen{}\left(\tilde{w} \cdot \tilde{x}\_t + b\right)\mathclose{} + \tilde{w} \cdot \tilde{v} && \text{(linearity of } \tilde{x}\mapsto \tilde{w} \cdot \tilde{x} \text{)} \\ &= t\\\tilde{w} \cdot \tilde{w} + \tilde{w} \cdot \tilde{v}. && \text{(the display above)} \end{aligned} \\
>
> Because \\\tilde{w} \cdot \tilde{w} \> 0\\, this is positive once \\t \> -\tilde{w} \cdot \tilde{v} / \tilde{w} \cdot \tilde{w}\\. Choose such a \\t \> 0\\. Then \\\tilde{x}\_t\\ and \\\tilde{x}\_t + \tilde{v}\\ are both in \\\mathcal{H}^+\\, and their difference is \\\tilde{v}\\. So \\\tilde{v} \in D(\mathcal{H}^+)\\. The whole space \\\mathbb{R}^p\\ is a subspace of dimension \\p\\ ([Definition 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)).
>
> The proof for \\\mathcal{H}^-\\ is the same with \\-\tilde{w}\\ and \\-b\\ in place of \\\tilde{w}\\ and \\b\\.

> **NOTE:**
>
> **Example 18 (Two iris species on either side of a line)** The `iris` data set in R has the petal length and petal width, in centimeters, of 150 irises. Take the 100 flowers of the species versicolor and virginica, and let \\\tilde{x}= (x_1, x_2)\\ be the petal length and petal width of one flower. A logistic regression of the species on \\\tilde{x}\\ gives a coefficient vector \\\tilde{w}\\ and an intercept \\b\\. The line \\\tilde{w} \cdot \tilde{x} + b = 0\\ is a hyperplane in \\\mathbb{R}^2\\ ([Definition 19 in Matrices](linear-algebra-matrices.llms.md#def-hyperplane)), and the two species mostly fall in its two open half-spaces ([Definition 6](#def-half-space)). [Figure 1](#fig-half-space-iris) shows the line and the flowers.
>
> Show R code
>
> ``` downlit
> two_species <- dplyr::filter(iris, Species != "setosa") |> droplevels()
> fit <- glm(
>   Species ~ Petal.Length + Petal.Width,
>   family = binomial,
>   data = two_species
> )
> w <- coef(fit)[c("Petal.Length", "Petal.Width")]
> b <- coef(fit)[["(Intercept)"]]
> two_species$score <- as.vector(
>   as.matrix(two_species[c("Petal.Length", "Petal.Width")]) %*% w + b
> )
> two_species$side <- ifelse(two_species$score > 0, "positive", "negative")
> ggplot2::ggplot(two_species) +
>   ggplot2::aes(x = Petal.Length, y = Petal.Width, colour = Species) +
>   ggplot2::geom_point() +
>   ggplot2::geom_abline(intercept = -b / w[[2]], slope = -w[[1]] / w[[2]]) +
>   ggplot2::labs(x = "Petal length (cm)", y = "Petal width (cm)")
> ```
>
> [![Scatter plot of petal width against petal length for 100 irises. Versicolor points, in one color, are mostly to the lower left. Virginica points, in another color, are mostly to the upper right. A straight line runs between the two groups and separates most of them.](linear-algebra-rank-nullity_files/figure-html/fig-half-space-iris-1.png)](linear-algebra-rank-nullity_files/figure-html/fig-half-space-iris-1.png "Figure 1: Petal length and width of versicolor and virginica irises, with the line where a logistic regression is indifferent between the two species")
>
> Figure 1: Petal length and width of versicolor and virginica irises, with the line where a logistic regression is indifferent between the two species
>
> ``` downlit
> table(two_species$Species, two_species$side)
> #>             
> #>              negative positive
> #>   versicolor       47        3
> #>   virginica         3       47
> ```
>
> The vector \\\tilde{w}\\ points toward the virginica side, so the positive half-space \\\mathcal{H}^+\\ holds 50 of the 100 flowers, and 47 of them are virginica. The line is a set of dimension \\p - 1 = 1\\, and each side is a region of the plane of dimension \\p = 2\\ ([Theorem 11](#thm-half-space-dimension)).

> **NOTE:**
>
> **Exercise 1 (Which side of the plane?)** Let \\\mathcal{H}\\ be the plane in \\\mathbb{R}^3\\ with \\\tilde{w} = (1, 1, 1)\\ and \\b = -1\\ ([Example 15](#exm-hyperplane-subspace)).
>
> 1.  For each point, say whether it is in \\\mathcal{H}^+\\, \\\mathcal{H}\\ or \\\mathcal{H}^-\\ ([Definition 6](#def-half-space)): \\(0, 0, 0)\\, \\(1, 0, 0)\\ and \\(1, 1, 1)\\.
> 2.  Write the plane and its half-spaces using \\-\tilde{w}\\ and \\-b\\. Which points from part 1 change sides?
> 3.  State the dimension of \\D(\mathcal{H})\\ and of \\D(\mathcal{H}^+)\\ ([Theorem 11](#thm-half-space-dimension)).

> **NOTE:**
>
> *Solution 1*.
>
> 1.  Compute \\\tilde{w} \cdot \tilde{x} + b = x_1 + x_2 + x_3 - 1\\ at each point.
>
>     - At \\(0, 0, 0)\\ it equals \\0 + 0 + 0 - 1 = -1 \< 0\\, so the point is in \\\mathcal{H}^-\\.
>     - At \\(1, 0, 0)\\ it equals \\1 + 0 + 0 - 1 = 0\\, so the point is in \\\mathcal{H}\\.
>     - At \\(1, 1, 1)\\ it equals \\1 + 1 + 1 - 1 = 2 \> 0\\, so the point is in \\\mathcal{H}^+\\.
>
> 2.  With \\-\tilde{w} = (-1, -1, -1)\\ and \\-b = 1\\, the equation is \\-x_1 - x_2 - x_3 + 1 = 0\\. Multiplying both sides by \\-1\\ gives the original equation, so it is the same plane. The new expression is the negative of the old one at every point, so the new positive half-space is the old \\\mathcal{H}^-\\ and the new negative half-space is the old \\\mathcal{H}^+\\. The origin \\(0, 0, 0)\\ is now in the positive half-space, and \\(1, 1, 1)\\ is now in the negative half-space. The point \\(1, 0, 0)\\ stays on the plane. So the origin and \\(1, 1, 1)\\ both change names, and the point on the plane does not.
>
> 3.  Here \\p = 3\\. \\D(\mathcal{H})\\ is the subspace \\\mathopen{}\left\\\tilde{s} : s_1 + s_2 + s_3 = 0\right\\\mathclose{}\\, which has dimension \\p - 1 = 2\\. \\D(\mathcal{H}^+) = \mathbb{R}^3\\ has dimension \\p = 3\\.

> **NOTE:**
>
> **Definition 7 (Rank factorization)** Let \\\mathbf{A}\\ be an \\m \times n\\ matrix with \\\operatorname{rank}(\mathbf{A}) = r \ge 1\\. A **rank factorization** of \\\mathbf{A}\\ is a product
>
> \\ \underbrace{\mathbf{A}}\_{m \times n} = \underbrace{\mathbf{C}}\_{m \times r}\\\underbrace{\mathbf{R}}\_{r \times n}. \\

> **NOTE:**
>
> **Example 19 (A rank factorization of a rank-one matrix)** The matrix \\\mathbf{A}\\ in [Example 1](#exm-column-space) has rank \\1\\ ([Example 8](#exm-rank-dim)), and
>
> \\ \begin{aligned} \begin{bmatrix} 1 \\ 3 \end{bmatrix} \begin{bmatrix} 1 & -2 & -2 \end{bmatrix} &= \begin{bmatrix} 1 \cdot 1 & 1 \cdot(-2) & 1 \cdot(-2) \\ 3 \cdot 1 & 3 \cdot(-2) & 3 \cdot(-2) \end{bmatrix} \\ &= \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix}, \end{aligned} \\
>
> so \\\mathbf{C} = \begin{bmatrix} 1 \\ 3 \end{bmatrix}\\ (\\2 \times 1\\) and \\\mathbf{R} = \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}\\ (\\1 \times 3\\) are a rank factorization. It is not unique: \\\mathbf{C} = \begin{bmatrix} 2 \\ 6 \end{bmatrix}\\ and \\\mathbf{R} = \begin{bmatrix} \frac{1}{2} & -1 & -1 \end{bmatrix}\\ give the same product. A product \\\mathbf{C} \mathbf{R}\\ with \\\mathbf{C}\\ of size \\2 \times 2\\ is not a rank factorization of this \\\mathbf{A}\\, because the inner dimension must equal \\\operatorname{rank}(\mathbf{A}) = 1\\.

> **NOTE:**
>
> **Theorem 12 (Every nonzero matrix has a rank factorization)** Every \\m \times n\\ matrix \\\mathbf{A}\\ with \\\operatorname{rank}(\mathbf{A}) = r \ge 1\\ has a rank factorization ([Definition 7](#def-rank-factorization)). One is given by taking the columns of \\\mathbf{C}\\ to be any basis of \\\mathcal{C}(\mathbf{A})\\.

> **NOTE:**
>
> *Proof*. \\\mathcal{C}(\mathbf{A})\\ has dimension \\r\\ ([Theorem 5](#thm-rank-dim)), so it has a basis \\\tilde{c}\_1, \ldots, \tilde{c}\_r\\ ([Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis)); let \\\mathbf{C}\\ be the \\m \times r\\ matrix with these columns. Each column \\\tilde{a}\_j\\ of \\\mathbf{A}\\ is in \\\mathcal{C}(\mathbf{A})\\, so \\\tilde{a}\_j = r\_{1j} \tilde{c}\_1 + \cdots + r\_{rj} \tilde{c}\_r\\ for some numbers \\r\_{ij}\\, because the basis spans \\\mathcal{C}(\mathbf{A})\\. Let \\\mathbf{R}\\ be the \\r \times n\\ matrix with entries \\r\_{ij}\\, whose column \\j\\ is \\\tilde{r}\_j = (r\_{1j}, \ldots, r\_{rj})\\. Then column \\j\\ of \\\mathbf{C} \mathbf{R}\\ is
>
> \\ \begin{aligned} \mathbf{C} \tilde{r}\_j &= r\_{1j} \tilde{c}\_1 + \cdots + r\_{rj} \tilde{c}\_r && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-columns}{\text{Theorem~3 in Subspaces and Rank}}\text{)} \\ &= \tilde{a}\_j, && \text{(choice of the } r\_{ij} \text{)} \end{aligned} \\
>
> so \\\mathbf{C} \mathbf{R} = \mathbf{A}\\.

> **NOTE:**
>
> **Example 20 (Building a rank factorization from a basis)** For \\\mathbf{A}\\ in [Example 1](#exm-column-space), \\(1, 3)\\ spans \\\mathcal{C}(\mathbf{A})\\ ([Example 2](#exm-column-space-span)), and it is linearly independent because it is nonzero (\\c\\(1, 3) = \tilde{0}\_2\\ forces \\c = 0\\), so it is a basis of \\\mathcal{C}(\mathbf{A})\\. The columns of \\\mathbf{A}\\ are \\(1, 3) = 1 \cdot(1, 3)\\, \\(-2, -6) = -2 \cdot(1, 3)\\ and \\(-2, -6) = -2 \cdot(1, 3)\\, so the construction in [Theorem 12](#thm-rank-factorization) gives \\\mathbf{C} = \begin{bmatrix} 1 \\ 3 \end{bmatrix}\\ and \\\mathbf{R} = \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}\\, the factorization in [Example 19](#exm-rank-factorization).

Back to top

## References

Zhou, Hua. 2024. *Rank and Nullity*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/05-rank/05-rank.html>.
