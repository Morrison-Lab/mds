# Rank-Nullity and Rank Factorization

Code

Published

Last modified: 2026-11-20 12:57:53 (PST)

# 1 Rank-nullity and rank factorization

> **NOTE:**
>
> This section is adapted from Zhou [\[1\]](#ref-zhou2024rank), used under the MIT License (see the license text in [Section  in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). [Theorem 5](#thm-rank-product-right) and [Corollary 2](#cor-rank-product-full-rank) restore the source’s statements that a product has rank at most the rank of either factor, and that multiplying by a matrix of full column rank or by a matrix whose rank is its number of rows does not change the rank. These parts of the source are not part of this section:
>
> - the names “full row rank”, “full rank” and “singular”
> - the statement that $\mathcal{C}(\mathbf{C}) \subseteq \mathcal{C}(\mathbf{A})$ exactly when $\mathbf{C} = \mathbf{A}\mathbf{B}$ for some $\mathbf{B}$, and its row space version, and the containment $\mathcal{N}(\mathbf{B}) \subseteq \mathcal{N}(\mathbf{A}\mathbf{B})$
> - the dimension of a subspace as the largest number of linearly independent vectors in it, or the smallest number of vectors that span it
> - the properties of a rank factorization $\mathbf{A} = \mathbf{C}\mathbf{R}$ ($\operatorname{rank}(\mathbf{C}) = \operatorname{rank}(\mathbf{R}) = r$, $\mathcal{C}(\mathbf{A}) = \mathcal{C}(\mathbf{C})$, $\mathcal{N}(\mathbf{A}) = \mathcal{N}(\mathbf{R})$), the fact that it is not unique, and the second proof of $\operatorname{rank}(\mathbf{A}) = \operatorname{rank}({\mathbf{A}}^{\top})$ that it gives
> - calling $\mathbf{A}{\mathbf{A}}^{\top}$ a Gram matrix, and the equation $\mathcal{N}(\mathbf{A}{\mathbf{A}}^{\top}) = \mathcal{N}({\mathbf{A}}^{\top})$ ([Theorem 6 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-null-gram) applied to ${\mathbf{A}}^{\top}$ gives it)
> - the statement that $\mathcal{C}(\mathbf{A})$ and $\mathcal{N}({\mathbf{A}}^{\top})$ share only the zero vector (it follows from [Theorem 10 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-fundamental-subspaces))

> **NOTE:**
>
> **Theorem 1 (The rank is the dimension of the column space)** For any $m \times n$ matrix $\mathbf{A}$,
>
> $$\operatorname{rank}(\mathbf{A}) = \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{}.$$

> **NOTE:**
>
> *Proof*. Let $r = \operatorname{rank}(\mathbf{A})$ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)), and choose $r$ linearly independent columns of $\mathbf{A}$; by [Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank), no larger set of columns is linearly independent. We show the chosen columns are a basis of $\mathcal{C}(\mathbf{A})$ ([Definition 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-basis)).
>
> **Every column is in the span of the chosen columns.** A chosen column is in that span trivially. If some unchosen column $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$ were not in the span, then adding it to the chosen columns would give $r + 1$ linearly independent columns ([Theorem 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-add-outside-span)), more than $r$. So every column of $\mathbf{A}$ is in the span of the chosen columns.
>
> **The chosen columns span** $\mathcal{C}(\mathbf{A})$. The span of the chosen columns is a subspace ([Theorem 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-span-subspace)), so it is closed under addition and scalar multiplication, and it contains every linear combination of the columns of $\mathbf{A}$. By [Theorem 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-column-space-span), those combinations make up $\mathcal{C}(\mathbf{A})$, so $\mathcal{C}(\mathbf{A})$ is contained in the span of the chosen columns. The chosen columns are themselves columns of $\mathbf{A}$, so their span is contained in $\mathcal{C}(\mathbf{A})$, and the two sets are equal.
>
> The chosen columns are linearly independent and span $\mathcal{C}(\mathbf{A})$, so they are a basis of it, and $\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = r$ ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)). If $r = 0$, every column is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$, $\mathcal{C}(\mathbf{A}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m\right\}\mathclose{}$, and both sides are $0$.

> **NOTE:**
>
> **Example 1 (The rank of the matrix in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space))** For $\mathbf{A}$ in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space), $\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(1, 3)\right\}\mathclose{}$ ([Example 2 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space-span)), and $(1, 3)$ is linearly independent because it is nonzero, so it is a basis and $\mathcal{C}(\mathbf{A})$ has dimension $1$. So $\operatorname{rank}(\mathbf{A}) = 1$, by [Theorem 1](#thm-rank-dim). Directly: the first column $(1, 3)$ is linearly independent on its own, and any two columns are dependent, because each column is a multiple of $(1, 3)$.

> **NOTE:**
>
> **Exercise 1 (Finding a rank from the column space)** [Theorem 1](#thm-rank-dim) reads the [rank](linear-algebra-subspaces.llms.md#def-rank) of a [matrix](linear-algebra-matrices.llms.md#def-matrix) off the [dimension](linear-algebra-subspaces.llms.md#def-dimension) of its [column space](linear-algebra-column-null-space.llms.md#def-column-space). Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 2 \\ 2 & 4 \\ 3 & 6\end{bmatrix}.$$
>
> Find ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}}$ by finding $\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{}$.
>
> > **TIP:**
> >
> > In $\mathbf{A}$, the second [column](linear-algebra-matrices.llms.md#def-matrix-column) is a multiple of the first.

> **NOTE:**
>
> *Solution 1*. In $\mathbf{A}$, the second [column](linear-algebra-matrices.llms.md#def-matrix-column) is $(2, 4, 6) = 2\,(1, 2, 3)$, so by [Theorem 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-column-space-span)
>
> $$\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(1, 2, 3), (2, 4, 6)\right\}\mathclose{} = \operatorname{span}\mathopen{}\left\{(1, 2, 3)\right\}\mathclose{}.$$
>
> The single nonzero vector $(1, 2, 3)$ is a [basis](linear-algebra-subspaces.llms.md#def-basis) of that [span](linear-algebra-subspaces.llms.md#def-span), so $\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = 1$, and by [Theorem 1](#thm-rank-dim), ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}} = 1$.

> **NOTE:**
>
> **Definition 1 (Nullity)** The **nullity** [\[2\]](#ref-wikipedia_rank_nullity_theorem) of a matrix $\mathbf{A}$ is the dimension of its null space ([Definition 3 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-null-space)):
>
> $$\operatorname{nullity}(\mathbf{A}) \stackrel{\text{def}}{=}\dim\mathopen{}\left(\mathcal{N}(\mathbf{A})\right)\mathclose{}.$$

> **NOTE:**
>
> **Example 2 (The nullity of the matrix in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space))** For $\mathbf{A}$ in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space), $\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(2, 1, 0), (2, 0, 1)\right\}\mathclose{}$ ([Example 3 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-null-space)). Those two vectors are linearly independent: $c_1 (2, 1, 0) + c_2 (2, 0, 1) = (2c_1 + 2c_2, c_1, c_2)$, which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$ only if
>
> $$\begin{aligned}
> c_1 &= c_2 \\
> &= 0.
> \end{aligned}$$
>
> So they are a basis of $\mathcal{N}(\mathbf{A})$, and $\operatorname{nullity}(\mathbf{A}) = 2$. The $2 \times 2$ identity matrix has nullity $0$, because $\mathbf{I} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ only when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$.

> **NOTE:**
>
> **Theorem 2 (Rank-nullity theorem)** For any $m \times n$ matrix $\mathbf{A}$,
>
> $$\operatorname{rank}(\mathbf{A}) + \operatorname{nullity}(\mathbf{A}) = n.$$

> **NOTE:**
>
> *Proof*. Let $\nu= \operatorname{nullity}(\mathbf{A})$. Choose a basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_\nu$ of $\mathcal{N}(\mathbf{A})$, and extend it to a basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_\nu, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_{n - \nu}$ of $\mathbb{R}^n$ ([Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis)); it has $n$ vectors, because every basis of $\mathbb{R}^n$ has $\dim(\mathbb{R}^n) = n$ vectors ([Theorem 7 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-basis-size), [Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)). We show that $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_1, \ldots, \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_{n - \nu}$ are a basis of $\mathcal{C}(\mathbf{A})$, using [Theorem 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-linear) to apply $\mathbf{A}$ to linear combinations.
>
> **They are linearly independent.** Suppose $\sum_{i=1}^{n-\nu} v_i\,\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_i = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$. Then $\mathbf{A}\,\mathopen{}\left(\sum_i v_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_i\right)\mathclose{} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$ ([Theorem 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-linear)), so $\sum_i v_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_i \in \mathcal{N}(\mathbf{A})$, and it equals $\sum_{j=1}^{\nu} u_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j$ for some numbers $u_j$, since the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j$ span $\mathcal{N}(\mathbf{A})$. Moving everything to one side,
>
> $$\sum_{j=1}^{\nu} (-u_j)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j + \sum_{i=1}^{n-\nu} v_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_i = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n,$$
>
> and because the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$’s and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$’s together form a basis of $\mathbb{R}^n$, which is linearly independent, every coefficient is $0$; in particular every $v_i = 0$.
>
> **They span** $\mathcal{C}(\mathbf{A})$. Take any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathcal{C}(\mathbf{A})$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} \in \mathbb{R}^n$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)). Write $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} = \sum_j a_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j + \sum_i b_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_i$ in the basis of $\mathbb{R}^n$. Then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> &= \mathbf{A}\,\mathopen{}\left(\sum_{j=1}^{\nu} a_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j + \sum_{i=1}^{n-\nu} b_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_i\right)\mathclose{}
> && \text{(substitute } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} \text{)}
> \\
> &= \sum_{j=1}^{\nu} a_j\,\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j + \sum_{i=1}^{n-\nu} b_i\,\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_i
> && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{)}
> \\
> &= \sum_{j=1}^{\nu} a_j\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m + \sum_{i=1}^{n-\nu} b_i\,\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_i
> && \text{(each } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j \in \mathcal{N}(\mathbf{A}) \text{)}
> \\
> &= \sum_{i=1}^{n-\nu} b_i\,\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_i,
> && \text{(drop the zero terms)}
> \end{aligned}$$
>
> a linear combination of $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_1, \ldots, \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_{n-\nu}$. These vectors are in $\mathcal{C}(\mathbf{A})$, so their span is exactly $\mathcal{C}(\mathbf{A})$.
>
> So $\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = n - \nu$, and $\operatorname{rank}(\mathbf{A}) = n - \nu$ by [Theorem 1](#thm-rank-dim).

> **NOTE:**
>
> **Example 3 (Checking rank-nullity on the matrix in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space))** The matrix $\mathbf{A}$ in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space) has $n = 3$ columns, rank $1$ ([Example 1](#exm-rank-dim)) and nullity $2$ ([Example 2](#exm-nullity)), and $1 + 2 = 3$. The $2 \times 2$ identity matrix has rank $2$ and nullity $0$ ([Example 2](#exm-nullity)), and $2 + 0 = 2$.

> **NOTE:**
>
> **Exercise 2 (Finding the nullity of a** $3 \times 3$ matrix) The [nullity](#def-nullity) of a [matrix](linear-algebra-matrices.llms.md#def-matrix) is the [dimension](linear-algebra-subspaces.llms.md#def-dimension) of its [null space](linear-algebra-column-null-space.llms.md#def-null-space). Let
>
> $$\mathbf{A} = \begin{bmatrix}2 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 5\end{bmatrix}.$$
>
> Find $\operatorname{nullity}(\mathbf{A})$.
>
> > **TIP:**
> >
> > Write out $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, find the [null space](linear-algebra-column-null-space.llms.md#def-null-space), and then find a [basis](linear-algebra-subspaces.llms.md#def-basis) of it.

> **NOTE:**
>
> *Solution 2*. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (x_1, x_2, x_3)$, $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (2 x_1, 0, 5 x_3)$, which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$ exactly when $x_1 = 0$ and $x_3 = 0$. So $\mathcal{N}(\mathbf{A}) = \mathopen{}\left\{(0, x_2, 0) : x_2 \in \mathbb{R}\right\}\mathclose{} = \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2\right\}\mathclose{}$. The single nonzero vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2$ is a [basis](linear-algebra-subspaces.llms.md#def-basis) of it, so $\operatorname{nullity}(\mathbf{A}) = 1$.

> **NOTE:**
>
> **Exercise 3 (Finding a nullity from a rank)** Suppose that a $5 \times 8$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ has [rank](linear-algebra-subspaces.llms.md#def-rank) $3$.
>
> Find $\operatorname{nullity}(\mathbf{A})$.
>
> > **TIP:**
> >
> > Use [Theorem 2](#thm-rank-nullity) with $n = 8$.

> **NOTE:**
>
> *Solution 3*. By [Theorem 2](#thm-rank-nullity), ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}} + \operatorname{nullity}(\mathbf{A}) = 8$, so
>
> $$\operatorname{nullity}(\mathbf{A}) = 8 - 3 = 5.$$

> **NOTE:**
>
> **Theorem 3 (Multiplying on the right cannot increase the rank)** If $\mathbf{A}$ is $m \times n$ and $\mathbf{B}$ is $n \times k$, then
>
> $$\operatorname{rank}(\mathbf{A} \mathbf{B}) \le \operatorname{rank}(\mathbf{A}).$$

> **NOTE:**
>
> *Proof*. $\mathcal{C}(\mathbf{A} \mathbf{B}) \subseteq \mathcal{C}(\mathbf{A})$. Any vector in $\mathcal{C}(\mathbf{A} \mathbf{B})$ is $(\mathbf{A} \mathbf{B})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^k$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)), and
>
> $$\begin{aligned}
> (\mathbf{A} \mathbf{B})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \mathbf{A}\,(\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> is $\mathbf{A}$ times the vector $\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^n$, so it is in $\mathcal{C}(\mathbf{A})$.
>
> **Compare dimensions.** Both column spaces are subspaces ([Theorem 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-column-space-span)), so
>
> $$\begin{aligned}
> \operatorname{rank}(\mathbf{A} \mathbf{B})
> &= \dim\mathopen{}\left(\mathcal{C}(\mathbf{A} \mathbf{B})\right)\mathclose{}
> && \text{(}\href{#thm-rank-dim}{\text{Theorem~1}}\text{)}
> \\
> &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{}
> && \text{(}\href{linear-algebra-subspaces.qmd#thm-dim-bound}{\text{Theorem~10 in Subspaces and Rank}}\text{, part 2)}
> \\
> &= \operatorname{rank}(\mathbf{A}).
> && \text{(}\href{#thm-rank-dim}{\text{Theorem~1}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 4 (A product can lose rank)** Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix} 0 & 0 \\ 1 & 0 \end{bmatrix},
> \qquad
> \mathbf{A} \mathbf{B}
> = \begin{bmatrix} 1 \cdot 0 + 0 \cdot 1 & 1 \cdot 0 + 0 \cdot 0 \\ 0 \cdot 0 + 0 \cdot 1 & 0 \cdot 0 + 0 \cdot 0 \end{bmatrix}
> = \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix}.$$
>
> $\mathbf{A}$ has rank $1$, but $\mathbf{A} \mathbf{B}$ has rank $0$, so the inequality in [Theorem 3](#thm-rank-product) can be strict. With the $2 \times 2$ identity in place of $\mathbf{B}$, $\mathbf{A} \mathbf{I} = \mathbf{A}$ keeps rank $1$, and the inequality is an equality.

> **NOTE:**
>
> **Exercise 4 (Finding how large the rank of a matrix product can be)** [Theorem 3](#thm-rank-product) shows how large the [rank](linear-algebra-subspaces.llms.md#def-rank) of a [matrix product](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult) can be. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 0 \\ 0 & 0\end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix}2 & 3 \\ 4 & 5\end{bmatrix}.$$
>
> Find the number that, by [Theorem 3](#thm-rank-product), ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\mathbf{B}\right)\mathclose{}}$ cannot exceed.
>
> > **TIP:**
> >
> > Find ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}}$ first.

> **NOTE:**
>
> *Solution 4*. [Columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$ are $(1, 0)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$, so its [column space](linear-algebra-column-null-space.llms.md#def-column-space) is $\operatorname{span}\mathopen{}\left\{(1, 0)\right\}\mathclose{}$, and [Theorem 1](#thm-rank-dim) gives ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}} = 1$. By [Theorem 3](#thm-rank-product), ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\mathbf{B}\right)\mathclose{}} \le 1$. Indeed, $\mathbf{A}\mathbf{B} = \begin{bmatrix}2 & 3 \\ 0 & 0\end{bmatrix}$, which has [rank](linear-algebra-subspaces.llms.md#def-rank) $1$.

> **NOTE:**
>
> **Theorem 4 (Fundamental theorem of ranks)** For any $m \times n$ matrix $\mathbf{A}$,
>
> $$\begin{aligned}
> \operatorname{rank}(\mathbf{A})
> &= \operatorname{rank}({\mathbf{A}}^{\top}) \\
> &= \operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) \\
> &= \operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}).
> \end{aligned}$$
>
> In particular, the largest number of linearly independent rows of $\mathbf{A}$ equals the largest number of linearly independent columns.

> **NOTE:**
>
> *Proof*. $\operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) = \operatorname{rank}(\mathbf{A})$. Both matrices have $n$ columns, and $\mathcal{N}({\mathbf{A}}^{\top} \mathbf{A}) = \mathcal{N}(\mathbf{A})$ ([Theorem 6 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-null-gram)), so they have the same nullity ([Definition 1](#def-nullity)). Then
>
> $$\begin{aligned}
> \operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A})
> &= n - \operatorname{nullity}({\mathbf{A}}^{\top} \mathbf{A})
> && \text{(}\href{#thm-rank-nullity}{\text{Theorem~2}}\text{)}
> \\
> &= n - \operatorname{nullity}(\mathbf{A})
> && \text{(equal null spaces)}
> \\
> &= \operatorname{rank}(\mathbf{A}).
> && \text{(}\href{#thm-rank-nullity}{\text{Theorem~2}}\text{)}
> \end{aligned}$$
>
> $\operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}) = \operatorname{rank}({\mathbf{A}}^{\top})$. Apply the previous step to the $n \times m$ matrix ${\mathbf{A}}^{\top}$, using ${({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}$.
>
> **Chain the inequalities.**
>
> $$\begin{aligned}
> \operatorname{rank}(\mathbf{A})
> &= \operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A})
> && \text{(first step)}
> \\
> &\le \operatorname{rank}({\mathbf{A}}^{\top})
> && \text{(}\href{#thm-rank-product}{\text{Theorem~3}}\text{, with } {\mathbf{A}}^{\top} \text{ on the left)}
> \\
> &= \operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top})
> && \text{(second step)}
> \\
> &\le \operatorname{rank}(\mathbf{A}).
> && \text{(}\href{#thm-rank-product}{\text{Theorem~3}}\text{, with } \mathbf{A} \text{ on the left)}
> \end{aligned}$$
>
> The chain starts and ends at $\operatorname{rank}(\mathbf{A})$, so every quantity in it equals $\operatorname{rank}(\mathbf{A})$. The columns of ${\mathbf{A}}^{\top}$ are the rows of $\mathbf{A}$, which gives the statement about rows.

> **NOTE:**
>
> **Example 5 (Four equal ranks)** For $\mathbf{A}$ in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space), $\operatorname{rank}(\mathbf{A}) = 1$ ([Example 1](#exm-rank-dim)). Its transpose ${\mathbf{A}}^{\top} = \begin{bmatrix} 1 & 3 \\ -2 & -6 \\ -2 & -6 \end{bmatrix}$ has second column $3$ times its first, so its rank is $1$. ${\mathbf{A}}^{\top} \mathbf{A}$ in [Example 10 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-null-gram) has every row a multiple of $(1, -2, -2)$, so its rank is $1$ too, and
>
> $$\begin{aligned}
> \mathbf{A} {\mathbf{A}}^{\top}
> &= \begin{bmatrix} 1 \cdot 1 + (-2)(-2) + (-2)(-2) & 1 \cdot 3 + (-2)(-6) + (-2)(-6) \\
> 3 \cdot 1 + (-6)(-2) + (-6)(-2) & 3 \cdot 3 + (-6)(-6) + (-6)(-6) \end{bmatrix} \\
> &= \begin{bmatrix} 9 & 27 \\ 27 & 81 \end{bmatrix},
> \end{aligned}$$
>
> whose second column is $3$ times its first, so its rank is $1$.

> **NOTE:**
>
> **Corollary 1 (The rank is at most the smaller dimension)** For any $m \times n$ matrix $\mathbf{A}$, $\operatorname{rank}(\mathbf{A}) \le \min\mathopen{}\left\{m, n\right\}\mathclose{}$.

> **NOTE:**
>
> *Proof*. $\mathbf{A}$ has $n$ columns, so at most $n$ of them are linearly independent, and $\operatorname{rank}(\mathbf{A}) \le n$ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)). Likewise ${\mathbf{A}}^{\top}$ has $m$ columns, so $\operatorname{rank}(\mathbf{A}) = \operatorname{rank}({\mathbf{A}}^{\top}) \le m$ ([Theorem 4](#thm-rank-transpose)).

> **NOTE:**
>
> **Example 6 (A** $2 \times 3$ matrix has rank at most $2$) By [Corollary 1](#cor-rank-bound), every $2 \times 3$ matrix has rank at most $\min\mathopen{}\left\{2, 3\right\}\mathclose{} = 2$, even though it has $3$ columns. The matrix $\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}$ of [Remark 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#rem-full-column-rank-shape) reaches that bound: its first two columns $(1, 0)$ and $(0, 1)$ are linearly independent, so its rank is $2$.

> **NOTE:**
>
> **Exercise 5 (Finding the rank of a Gram matrix without computing it)** A [Gram matrix](linear-algebra-column-null-space.llms.md#def-gram-matrix) can be larger than the [matrix](linear-algebra-matrices.llms.md#def-matrix) it comes from, but [Theorem 4](#thm-rank-transpose) says it has the same [rank](linear-algebra-subspaces.llms.md#def-rank). Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 0 & 2 \\ 0 & 1 & 1\end{bmatrix}.$$
>
> Find ${\operatorname{rank}\mathopen{}\left({\mathbf{A}}^{\top}\mathbf{A}\right)\mathclose{}}$ without computing ${\mathbf{A}}^{\top}\mathbf{A}$.
>
> > **TIP:**
> >
> > Find ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}}$ from its two [rows](linear-algebra-matrices.llms.md#def-matrix-row), using [Theorem 4](#thm-rank-transpose) once more.

> **NOTE:**
>
> *Solution 5*. Both [rows of](linear-algebra-matrices.llms.md#def-matrix-row) $\mathbf{A}$, $(1, 0, 2)$ and $(0, 1, 1)$, are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent): $c_1\,(1, 0, 2) + c_2\,(0, 1, 1) = (c_1, c_2, 2 c_1 + c_2)$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$ only if $c_1 = c_2 = 0$. So ${\operatorname{rank}\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}} = 2$, and by [Theorem 4](#thm-rank-transpose)
>
> $${\operatorname{rank}\mathopen{}\left({\mathbf{A}}^{\top}\mathbf{A}\right)\mathclose{}} = {\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}} = {\operatorname{rank}\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}} = 2,$$
>
> even though ${\mathbf{A}}^{\top}\mathbf{A}$ is $3 \times 3$.

> **NOTE:**
>
> **Exercise 6 (Finding how large the rank of a tall matrix can be)** A table of $5$ observations of $3$ features is a tall $5 \times 3$ [matrix](linear-algebra-matrices.llms.md#def-matrix). [Corollary 1](#cor-rank-bound) says how large its [rank](linear-algebra-subspaces.llms.md#def-rank) can be.
>
> Find the largest rank that a $5 \times 3$ matrix can have.
>
> > **TIP:**
> >
> > Use [Corollary 1](#cor-rank-bound) with $m = 5$ and $n = 3$.

> **NOTE:**
>
> *Solution 6*. By [Corollary 1](#cor-rank-bound), the [rank](linear-algebra-subspaces.llms.md#def-rank) is at most $\min\mathopen{}\left\{5, 3\right\}\mathclose{} = 3$. A rank of $3$ is reached, for example by the $5 \times 3$ [matrix](linear-algebra-matrices.llms.md#def-matrix) with [rows](linear-algebra-matrices.llms.md#def-matrix-row) ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1}^{\top}, {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2}^{\top}, {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3}^{\top}, {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3}^{\top}, {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3}^{\top}$, whose three [columns](linear-algebra-matrices.llms.md#def-matrix-column) are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent).

> **NOTE:**
>
> **Theorem 5 (Multiplying on the left cannot increase the rank)** If $\mathbf{A}$ is $m \times n$ and $\mathbf{B}$ is $n \times k$, then
>
> $$\operatorname{rank}(\mathbf{A} \mathbf{B}) \le \operatorname{rank}(\mathbf{B}).$$

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> \operatorname{rank}(\mathbf{A} \mathbf{B})
> &= \operatorname{rank}({(\mathbf{A} \mathbf{B})}^{\top})
> && \text{(}\href{#thm-rank-transpose}{\text{Theorem~4}}\text{)}
> \\
> &= \operatorname{rank}({\mathbf{B}}^{\top}\,{\mathbf{A}}^{\top})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &\le \operatorname{rank}({\mathbf{B}}^{\top})
> && \text{(}\href{#thm-rank-product}{\text{Theorem~3}}\text{, with } {\mathbf{B}}^{\top} \text{ on the left)}
> \\
> &= \operatorname{rank}(\mathbf{B}).
> && \text{(}\href{#thm-rank-transpose}{\text{Theorem~4}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 7 (A product of rank 1 with a factor of rank 2)** Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix} 1 & 0 \\ 1 & 0 \end{bmatrix},
> \qquad
> \mathbf{A} \mathbf{B}
> = \begin{bmatrix} 1 \cdot 1 + 1 \cdot 1 & 1 \cdot 0 + 1 \cdot 0 \\ 0 \cdot 1 + 1 \cdot 1 & 0 \cdot 0 + 1 \cdot 0 \end{bmatrix}
> = \begin{bmatrix} 2 & 0 \\ 1 & 0 \end{bmatrix}.$$
>
> $\mathbf{A}$ has [rank](linear-algebra-subspaces.llms.md#def-rank) $2$, because its columns $(1, 0)$ and $(1, 1)$ are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent). $\mathbf{B}$ has rank $1$, because its second column is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ and its first is not, and $\mathbf{A} \mathbf{B}$ has rank $1$ for the same reason. So $\operatorname{rank}(\mathbf{A} \mathbf{B}) = 1 \le \operatorname{rank}(\mathbf{B}) = 1$ ([Theorem 5](#thm-rank-product-right)), and the bound of [Theorem 3](#thm-rank-product), $2$, is not the tighter one.

> **NOTE:**
>
> **Exercise 7 (Finding how large the rank of a product can be from its right factor)** [Theorem 5](#thm-rank-product-right) shows how large the [rank](linear-algebra-subspaces.llms.md#def-rank) of a [matrix product](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult) can be, given the rank of its right factor. Let $\mathbf{A}$ be any $3 \times 2$ [matrix](linear-algebra-matrices.llms.md#def-matrix), and let
>
> $$\mathbf{B} = \begin{bmatrix}1 & 1 \\ 1 & 1\end{bmatrix}.$$
>
> Find the number that, by [Theorem 5](#thm-rank-product-right), ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\mathbf{B}\right)\mathclose{}}$ cannot exceed, whatever $\mathbf{A}$ is.
>
> > **TIP:**
> >
> > Find ${\operatorname{rank}\mathopen{}\left(\mathbf{B}\right)\mathclose{}}$ first.

> **NOTE:**
>
> *Solution 7*. Each of the two [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{B}$ is $(1, 1)$, so its [column space](linear-algebra-column-null-space.llms.md#def-column-space) is $\operatorname{span}\mathopen{}\left\{(1, 1)\right\}\mathclose{}$, and [Theorem 1](#thm-rank-dim) gives ${\operatorname{rank}\mathopen{}\left(\mathbf{B}\right)\mathclose{}} = 1$. By [Theorem 5](#thm-rank-product-right), ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\mathbf{B}\right)\mathclose{}} \le 1$ for every $3 \times 2$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$.

> **NOTE:**
>
> **Corollary 2 (Multiplying by a matrix of full rank does not change the rank)** Let $\mathbf{A}$ be $m \times n$ and $\mathbf{B}$ be $n \times k$.
>
> 1.  If $\mathbf{A}$ has full column rank ([Definition 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-full-column-rank)), then $\operatorname{rank}(\mathbf{A} \mathbf{B}) = \operatorname{rank}(\mathbf{B})$.
> 2.  If $\operatorname{rank}(\mathbf{B}) = n$, then $\operatorname{rank}(\mathbf{A} \mathbf{B}) = \operatorname{rank}(\mathbf{A})$.

> **NOTE:**
>
> *Proof*. **Part 1.** Because $\mathbf{A}$ has [full column rank](linear-algebra-subspaces.llms.md#def-full-column-rank), $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$ only for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n$ ([Theorem 3 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-independent-null-space)). So for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^k$,
>
> $$\begin{aligned}
> \mathbf{A} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m
> &\iff \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n
> && \text{(}\href{linear-algebra-column-null-space.qmd#thm-independent-null-space}{\text{Theorem~3 in Column Space and Null Space}}\text{, with } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \text{)}
> \end{aligned}$$
>
> so $\mathcal{N}(\mathbf{A} \mathbf{B}) = \mathcal{N}(\mathbf{B})$ ([Definition 3 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-null-space)), and the two matrices have the same nullity ([Definition 1](#def-nullity)). Both have $k$ columns, so by [Theorem 2](#thm-rank-nullity) they have the same [rank](linear-algebra-subspaces.llms.md#def-rank).
>
> **Part 2.** $\mathcal{C}(\mathbf{B})$ is a [subspace](linear-algebra-subspaces.llms.md#def-subspace) of $\mathbb{R}^n$ ([Theorem 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-column-space-span)) of [dimension](linear-algebra-subspaces.llms.md#def-dimension) $n$ ([Theorem 1](#thm-rank-dim)), so $\mathcal{C}(\mathbf{B}) = \mathbb{R}^n$ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim)). Every vector of $\mathcal{C}(\mathbf{A} \mathbf{B})$ is $\mathbf{A}\,(\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)), and $\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ takes every vector of $\mathbb{R}^n$, so $\mathcal{C}(\mathbf{A} \mathbf{B}) = \mathcal{C}(\mathbf{A})$ and the two matrices have the same rank ([Theorem 1](#thm-rank-dim)).

> **NOTE:**
>
> **Example 8 (Ranks of products with a full-rank factor)** Let $\mathbf{B} = \begin{bmatrix} 1 & 0 \\ 1 & 0 \end{bmatrix}$, which has [rank](linear-algebra-subspaces.llms.md#def-rank) $1$.
>
> - Part 1: $\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 0 & 1 \\ 0 & 0 \end{bmatrix}$ has two [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent) columns, so it has [full column rank](linear-algebra-subspaces.llms.md#def-full-column-rank), and $\mathbf{A} \mathbf{B} = \begin{bmatrix} 2 & 0 \\ 1 & 0 \\ 0 & 0 \end{bmatrix}$ has rank $1 = \operatorname{rank}(\mathbf{B})$.
> - Part 2: let $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$, which has rank $1$, and let $\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}$, which has rank $2$. Then $\mathbf{A} \mathbf{B} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}$ has rank $1 = \operatorname{rank}(\mathbf{A})$.

> **NOTE:**
>
> **Exercise 8 (Finding the rank of a product with a full-column-rank factor)** [Corollary 2](#cor-rank-product-full-rank) says that a left factor with [full column rank](linear-algebra-subspaces.llms.md#def-full-column-rank) keeps the [rank](linear-algebra-subspaces.llms.md#def-rank) of the right factor. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 0 \\ 0 & 1 \\ 1 & 1\end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix}1 & 2 \\ 2 & 4\end{bmatrix}.$$
>
> Find ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\mathbf{B}\right)\mathclose{}}$ without multiplying.
>
> > **TIP:**
> >
> > Check that $\mathbf{A}$ has [full column rank](linear-algebra-subspaces.llms.md#def-full-column-rank), and find ${\operatorname{rank}\mathopen{}\left(\mathbf{B}\right)\mathclose{}}$.

> **NOTE:**
>
> *Solution 8*. [Columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$, $(1, 0, 1)$ and $(0, 1, 1)$, are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent): the first two entries of $c_1\,(1, 0, 1) + c_2\,(0, 1, 1)$ are $c_1$ and $c_2$. So $\mathbf{A}$ has [full column rank](linear-algebra-subspaces.llms.md#def-full-column-rank). The second [column of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{B}$ is twice the first, so ${\operatorname{rank}\mathopen{}\left(\mathbf{B}\right)\mathclose{}} = 1$. By part 1 of [Corollary 2](#cor-rank-product-full-rank),
>
> $${\operatorname{rank}\mathopen{}\left(\mathbf{A}\mathbf{B}\right)\mathclose{}} = {\operatorname{rank}\mathopen{}\left(\mathbf{B}\right)\mathclose{}} = 1.$$

> **NOTE:**
>
> **Theorem 6 (A centered data matrix has rank at most** $n - 1$) Let $\mathbf{X}$ be an $n \times p$ matrix with rows ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1}^{\top}, \ldots, {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_n}^{\top}$, let $\bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = \frac{1}{n}\sum_{i=1}^n \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_i$ be the mean of the rows, and let $\mathbf{X}_c = \mathbf{X}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}}\,{\bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}}^{\top}$ be the matrix whose row $i$ is ${(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_i - \bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}})}^{\top}$, where $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}}$ is the ones vector of length $n$ ([Definition 19 in Vectors](linear-algebra-vectors.llms.md#def-ones-vector)). Then $\operatorname{rank}(\mathbf{X}_c) \le n - 1$.

> **NOTE:**
>
> *Proof*. The entries of each column of $\mathbf{X}_c$ sum to zero:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}}}^{\top}\mathbf{X}_c
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}}}^{\top}\mathbf{X}- \mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}}\right)\mathclose{}{\bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}}^{\top}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-distrib}{\text{Theorem~2 in Matrix Multiplication}}\text{)}
> \\
> &= \sum_{i=1}^n {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_i}^{\top} - n\,{\bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}}^{\top}
> && \text{(} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}} = n \text{)}
> \\
> &= n\,{\bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}}^{\top} - n\,{\bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}}^{\top}
> && \text{(definition of } \bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} \text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p}^{\top}.
> \end{aligned}$$
>
> Transposing, ${\mathbf{X}_c}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$. The ones vector is nonzero, so it is in the null space of the $p \times n$ matrix ${\mathbf{X}_c}^{\top}$, and $\operatorname{nullity}({\mathbf{X}_c}^{\top}) \ge 1$. By [Theorem 2](#thm-rank-nullity), applied to the $n$ columns of ${\mathbf{X}_c}^{\top}$,
>
> $$\begin{aligned}
> \operatorname{rank}(\mathbf{X}_c)
> &= \operatorname{rank}({\mathbf{X}_c}^{\top})
> && \text{(}\href{#thm-rank-transpose}{\text{Theorem~4}}\text{)}
> \\
> &= n - \operatorname{nullity}({\mathbf{X}_c}^{\top})
> && \text{(}\href{#thm-rank-nullity}{\text{Theorem~2}}\text{)}
> \\
> &\le n - 1.
> && \text{(} \operatorname{nullity}({\mathbf{X}_c}^{\top}) \ge 1 \text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 9 (Two points in three dimensions)** $\mathbf{X}= \begin{bmatrix} 1 & 2 & 3 \\ 3 & 2 & 1 \end{bmatrix}$ has $\bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = (2, 2, 2)$, so
>
> $$\mathbf{X}_c = \begin{bmatrix} -1 & 0 & 1 \\ 1 & 0 & -1 \end{bmatrix}.$$
>
> The second row is $-1$ times the first, so $\operatorname{rank}(\mathbf{X}_c) = 1 = n - 1$, and the column sums are zero: ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}}}^{\top}\mathbf{X}_c = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3}^{\top}$.

> **NOTE:**
>
> **Corollary 3 (A sample covariance matrix from** $n \le p$ points is singular) With $\mathbf{X}_c$ as in [Theorem 6](#thm-centered-data-rank), the sample covariance matrix
>
> $$\mathbf{S} = \frac{1}{n - 1}\,{\mathbf{X}_c}^{\top}\mathbf{X}_c$$
>
> is $p \times p$ with $\operatorname{rank}(\mathbf{S}) \le n - 1$. So if $n \le p$, then $\mathbf{S}$ is not invertible.

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> \operatorname{rank}(\mathbf{S})
> &= \operatorname{rank}({\mathbf{X}_c}^{\top}\mathbf{X}_c)
> && \text{(multiplying by } \tfrac{1}{n-1} \ne 0 \text{ does not change the rank)}
> \\
> &= \operatorname{rank}(\mathbf{X}_c)
> && \text{(}\href{#thm-rank-transpose}{\text{Theorem~4}}\text{)}
> \\
> &\le n - 1.
> && \text{(}\href{#thm-centered-data-rank}{\text{Theorem~6}}\text{)}
> \end{aligned}$$
>
> If $n \le p$, then $\operatorname{rank}(\mathbf{S}) \le n - 1 < p$, so $\mathbf{S}$ does not have full column rank, and it is not invertible by [Theorem 1 in Diagonalization and Cholesky](linear-algebra-diagonalization.llms.md#thm-invertible-rank).

> **NOTE:**
>
> **Example 10 (As many points as dimensions)** The $n = 3$ points $(1, 0, 0)$, $(0, 1, 0)$ and $(0, 0, 1)$ in $p = 3$ dimensions have $\bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} = \frac{1}{3}(1, 1, 1)$, so
>
> $$\mathbf{X}_c = \mathbf{I}_3 - \tfrac{1}{3}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}}{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}}}^{\top},
> \qquad
> \mathbf{S} = \tfrac{1}{2}\,\mathbf{X}_c
> = \tfrac{1}{6}\begin{bmatrix} 2 & -1 & -1 \\ -1 & 2 & -1 \\ -1 & -1 & 2 \end{bmatrix},$$
>
> using ${\mathbf{X}_c}^{\top}\mathbf{X}_c = \mathbf{X}_c$ (the centering matrix is a symmetric projection). Then $\mathbf{S}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{1}}\vphantom{1}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$ and $\operatorname{rank}(\mathbf{S}) = 2 = n - 1 < 3$. With one more point than dimensions ($n = p + 1$), the rank bound allows $\mathbf{S}$ to have full rank $p$.

> **NOTE:**
>
> **Exercise 9 (Finding how large the rank of centered data can be)** Centering a data [matrix](linear-algebra-matrices.llms.md#def-matrix) subtracts the [mean](linear-algebra-vectors.llms.md#def-mean) vector from every [row](linear-algebra-matrices.llms.md#def-matrix-row), and [Theorem 6](#thm-centered-data-rank) shows how large the [rank](linear-algebra-subspaces.llms.md#def-rank) of the result can be. Suppose that $\mathbf{X}$ holds $3$ observations of $4$ features, as a $3 \times 4$ matrix, and $\mathbf{X}_c$ is its centered version.
>
> Find the number that, by [Theorem 6](#thm-centered-data-rank), ${\operatorname{rank}\mathopen{}\left(\mathbf{X}_c\right)\mathclose{}}$ cannot exceed.
>
> > **TIP:**
> >
> > Compare the number from [Theorem 6](#thm-centered-data-rank) with the one from [Corollary 1](#cor-rank-bound).

> **NOTE:**
>
> *Solution 9*. By [Theorem 6](#thm-centered-data-rank) with $n = 3$, ${\operatorname{rank}\mathopen{}\left(\mathbf{X}_c\right)\mathclose{}} \le 3 - 1 = 2$. That number is smaller than $\min\mathopen{}\left\{3, 4\right\}\mathclose{} = 3$ from [Corollary 1](#cor-rank-bound): the three centered [rows](linear-algebra-matrices.llms.md#def-matrix-row) add up to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_4$, so they are [linearly dependent](linear-algebra-subspaces.llms.md#def-linearly-independent).

> **NOTE:**
>
> **Exercise 10 (Deciding whether a sample covariance matrix is invertible)** A study records $6$ features for each of $4$ people, and forms the $6 \times 6$ sample covariance [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{S}$ defined in [Corollary 3](#cor-sample-covariance-singular).
>
> Decide whether $\mathbf{S}$ is [invertible](linear-algebra-special-matrices.llms.md#def-invertible-matrix).
>
> > **TIP:**
> >
> > Compare $n$ with $p$.

> **NOTE:**
>
> *Solution 10*. Here $n = 4$ and $p = 6$, so $n \le p$. By [Corollary 3](#cor-sample-covariance-singular), ${\operatorname{rank}\mathopen{}\left(\mathbf{S}\right)\mathclose{}} \le 4 - 1 = 3 < 6$, so $\mathbf{S}$ is not [invertible](linear-algebra-special-matrices.llms.md#def-invertible-matrix).

> **NOTE:**
>
> **Definition 2 (Rank factorization)** Let $\mathbf{A}$ be an $m \times n$ matrix with $\operatorname{rank}(\mathbf{A}) = r \ge 1$. A **rank factorization** [\[3\]](#ref-wikipedia_rank_factorization) of $\mathbf{A}$ is a product
>
> $$\underbrace{\mathbf{A}}_{m \times n}
> = \underbrace{\mathbf{C}}_{m \times r}\,\underbrace{\mathbf{R}}_{r \times n}.$$

> **NOTE:**
>
> **Example 11 (A rank factorization of a rank-one matrix)** The matrix $\mathbf{A}$ in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space) has rank $1$ ([Example 1](#exm-rank-dim)), and
>
> $$\begin{aligned}
> \begin{bmatrix} 1 \\ 3 \end{bmatrix}
> \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}
> &= \begin{bmatrix} 1 \cdot 1 & 1 \cdot(-2) & 1 \cdot(-2) \\ 3 \cdot 1 & 3 \cdot(-2) & 3 \cdot(-2) \end{bmatrix} \\
> &= \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix},
> \end{aligned}$$
>
> so $\mathbf{C} = \begin{bmatrix} 1 \\ 3 \end{bmatrix}$ ($2 \times 1$) and $\mathbf{R} = \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}$ ($1 \times 3$) are a rank factorization. It is not unique: $\mathbf{C} = \begin{bmatrix} 2 \\ 6 \end{bmatrix}$ and $\mathbf{R} = \begin{bmatrix} \frac{1}{2} & -1 & -1 \end{bmatrix}$ give the same product. A product $\mathbf{C} \mathbf{R}$ with $\mathbf{C}$ of size $2 \times 2$ is not a rank factorization of this $\mathbf{A}$, because the inner dimension must equal $\operatorname{rank}(\mathbf{A}) = 1$.

> **NOTE:**
>
> **Theorem 7 (Every nonzero matrix has a rank factorization)** Every $m \times n$ matrix $\mathbf{A}$ with $\operatorname{rank}(\mathbf{A}) = r \ge 1$ has a rank factorization ([Definition 2](#def-rank-factorization)). One is given by taking the columns of $\mathbf{C}$ to be any basis of $\mathcal{C}(\mathbf{A})$.

> **NOTE:**
>
> *Proof*. $\mathcal{C}(\mathbf{A})$ has dimension $r$ ([Theorem 1](#thm-rank-dim)), so it has a basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_r$ ([Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis)); let $\mathbf{C}$ be the $m \times r$ matrix with these columns. Each column $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$ of $\mathbf{A}$ is in $\mathcal{C}(\mathbf{A})$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j = r_{1j} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_1 + \cdots + r_{rj} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_r$ for some numbers $r_{ij}$, because the basis spans $\mathcal{C}(\mathbf{A})$. Let $\mathbf{R}$ be the $r \times n$ matrix with entries $r_{ij}$, whose column $j$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_j = (r_{1j}, \ldots, r_{rj})$. Then column $j$ of $\mathbf{C} \mathbf{R}$ is
>
> $$\begin{aligned}
> \mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_j
> &= r_{1j} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_1 + \cdots + r_{rj} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_r
> && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-columns}{\text{Theorem~3 in Subspaces and Rank}}\text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j,
> && \text{(choice of the } r_{ij} \text{)}
> \end{aligned}$$
>
> so $\mathbf{C} \mathbf{R} = \mathbf{A}$.

> **NOTE:**
>
> **Example 12 (Building a rank factorization from a basis)** For $\mathbf{A}$ in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space), $(1, 3)$ spans $\mathcal{C}(\mathbf{A})$ ([Example 2 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space-span)), and it is linearly independent because it is nonzero ($c\,(1, 3) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ forces $c = 0$), so it is a basis of $\mathcal{C}(\mathbf{A})$. The columns of $\mathbf{A}$ are $(1, 3) = 1 \cdot(1, 3)$, $(-2, -6) = -2 \cdot(1, 3)$ and $(-2, -6) = -2 \cdot(1, 3)$, so the construction in [Theorem 7](#thm-rank-factorization) gives $\mathbf{C} = \begin{bmatrix} 1 \\ 3 \end{bmatrix}$ and $\mathbf{R} = \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}$, the factorization in [Example 11](#exm-rank-factorization).

> **NOTE:**
>
> **Exercise 11 (Finding a rank factorization of a rank-one matrix)** A [rank factorization](#def-rank-factorization) writes an $m \times n$ [matrix](linear-algebra-matrices.llms.md#def-matrix) with [rank](linear-algebra-subspaces.llms.md#def-rank) $r$ as a [matrix product](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult) of an $m \times r$ and an $r \times n$ matrix. Let
>
> $$\mathbf{A} = \begin{bmatrix}2 & 4 \\ 1 & 2\end{bmatrix}.$$
>
> Find a rank factorization of $\mathbf{A}$.
>
> > **TIP:**
> >
> > In $\mathbf{A}$, the second [column](linear-algebra-matrices.llms.md#def-matrix-column) is twice the first, so ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}} = 1$.

> **NOTE:**
>
> *Solution 11*. [Columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$ are $(2, 1)$ and $(4, 2) = 2\,(2, 1)$, so ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}} = 1$, and
>
> $$\begin{bmatrix}2 \\ 1\end{bmatrix} \begin{bmatrix}1 & 2\end{bmatrix}
> = \begin{bmatrix}2 \cdot 1 & 2 \cdot 2 \\ 1 \cdot 1 & 1 \cdot 2\end{bmatrix}
> = \begin{bmatrix}2 & 4 \\ 1 & 2\end{bmatrix}
> = \mathbf{A}.$$
>
> So $\mathbf{C} = \begin{bmatrix}2 \\ 1\end{bmatrix}$ ($2 \times 1$) and $\mathbf{R} = \begin{bmatrix}1 & 2\end{bmatrix}$ ($1 \times 2$) are a rank factorization.

> **NOTE:**
>
> **Exercise 12 (Building a rank factorization from a basis of the column space)** [Theorem 7](#thm-rank-factorization) builds a [rank factorization](#def-rank-factorization) from a [basis](linear-algebra-subspaces.llms.md#def-basis) of the [column space](linear-algebra-column-null-space.llms.md#def-column-space). Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 2 & 3 \\ 2 & 4 & 6 \\ 1 & 0 & 1\end{bmatrix},$$
>
> in which [column](linear-algebra-matrices.llms.md#def-matrix-column) $3$ is column $1$ plus column $2$.
>
> Find a rank factorization $\mathbf{A} = \mathbf{C}\mathbf{R}$ in which $\mathbf{C}$ holds [columns 1 and 2 of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$.
>
> > **TIP:**
> >
> > [Column](linear-algebra-matrices.llms.md#def-matrix-column) $j$ of $\mathbf{R}$ says how much of [column](linear-algebra-matrices.llms.md#def-matrix-column) $1$ and of column $2$ of $\mathbf{C}$ add up to column $j$ of $\mathbf{A}$.

> **NOTE:**
>
> *Solution 12*. [Columns 1 and 2 of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$, $(1, 2, 1)$ and $(2, 4, 0)$, are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent): the third entry of $c_1\,(1, 2, 1) + c_2\,(2, 4, 0)$ is $c_1$, and then the first is $2 c_2$. They [span](linear-algebra-subspaces.llms.md#def-span) $\mathcal{C}(\mathbf{A})$, since the third [column](linear-algebra-matrices.llms.md#def-matrix-column) is the first plus the second, so ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}} = 2$. Each [column of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$ in terms of them:
>
> $$\begin{aligned}
> (1, 2, 1) &= 1 \cdot(1, 2, 1) + 0 \cdot(2, 4, 0),
> \\
> (2, 4, 0) &= 0 \cdot(1, 2, 1) + 1 \cdot(2, 4, 0),
> \\
> (3, 6, 1) &= 1 \cdot(1, 2, 1) + 1 \cdot(2, 4, 0).
> \end{aligned}$$
>
> So
>
> $$\mathbf{C} = \begin{bmatrix}1 & 2 \\ 2 & 4 \\ 1 & 0\end{bmatrix},
> \qquad
> \mathbf{R} = \begin{bmatrix}1 & 0 & 1 \\ 0 & 1 & 1\end{bmatrix},$$
>
> and multiplying gives back $\mathbf{A}$.

# Definitions on this page

- [Definition 1 (Nullity)](#def-nullity)
- [Definition 2 (Rank factorization)](#def-rank-factorization)

Back to top

## References

\[1\]

H. Zhou, “Rank and nullity.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/05-rank/05-rank.html>

\[2\]

Wikipedia contributors, “Rank–nullity theorem — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Rank%E2%80%93nullity_theorem>

\[3\]

Wikipedia contributors, “Rank factorization — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Rank_factorization>
