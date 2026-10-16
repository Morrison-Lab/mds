# Direct Sums and Orthogonal Complements

Code

Published

Last modified: 2026-10-16 11:06:52 (PDT)

## 1 Sums and direct sums

> **NOTE:**
>
> This section, [Section 2](#sec-orthogonal-complements) and [Section 3](#sec-fundamental-theorem) are adapted from Zhou ([2024](#ref-zhou2024orthproj)), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source proves that a subspace and its orthogonal complement together make up \\\mathbb{R}^p\\ by extending an orthonormal basis; the proof here uses the rank-nullity theorem ([Theorem 8 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-nullity)) instead.

> **NOTE:**
>
> **Definition 1 (Sum of subspaces)** The **sum** of two subspaces \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ of \\\mathbb{R}^p\\ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)) is the set of all sums of a vector from \\\mathcal{S}\_1\\ and a vector from \\\mathcal{S}\_2\\:
>
> \\ \mathcal{S}\_1 + \mathcal{S}\_2 \stackrel{\text{def}}{=} \mathopen{}\left\\\underset{\sim}{x}\_1 + \underset{\sim}{x}\_2 : \underset{\sim}{x}\_1 \in \mathcal{S}\_1,\\ \underset{\sim}{x}\_2 \in \mathcal{S}\_2\right\\\mathclose{}. \\

> **NOTE:**
>
> **Example 1 (Two lines sum to a plane)** Let \\\mathcal{S}\_1 = \operatorname{span}\mathopen{}\left\\(1, 0, 0)\right\\\mathclose{}\\ and \\\mathcal{S}\_2 = \operatorname{span}\mathopen{}\left\\(0, 1, 0)\right\\\mathclose{}\\, two lines in \\\mathbb{R}^3\\. A vector of \\\mathcal{S}\_1 + \mathcal{S}\_2\\ has the form \\a\\(1, 0, 0) + b\\(0, 1, 0) = (a, b, 0)\\, and \\a\\ and \\b\\ can be any numbers, so \\\mathcal{S}\_1 + \mathcal{S}\_2 = \mathopen{}\left\\(a, b, 0) : a, b \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\.

> **NOTE:**
>
> **Example 2 (The sum is not the union)** For the two lines in [Example 1](#exm-subspace-sum), the union \\\mathcal{S}\_1 \cup \mathcal{S}\_2\\ contains \\(1, 0, 0)\\ and \\(0, 1, 0)\\ but not their sum \\(1, 1, 0)\\: every multiple of \\(1, 0, 0)\\ has second entry \\0\\, and every multiple of \\(0, 1, 0)\\ has first entry \\0\\. So the union is not closed under addition and is not a subspace, while the sum, the whole plane \\z = 0\\, is.

> **NOTE:**
>
> **Theorem 1 (Sums and intersections of subspaces are subspaces)** If \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are subspaces of \\\mathbb{R}^p\\ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)), then \\\mathcal{S}\_1 + \mathcal{S}\_2\\ ([Definition 1](#def-subspace-sum)) and \\\mathcal{S}\_1 \cap \mathcal{S}\_2\\ are subspaces of \\\mathbb{R}^p\\.

> **NOTE:**
>
> *Proof*. Both \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ contain \\\underset{\sim}{0}\\ ([Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)).
>
> **The sum.** It is not empty: it contains \\\underset{\sim}{0}+ \underset{\sim}{0}= \underset{\sim}{0}\\. Take two of its vectors, \\\underset{\sim}{u} = \underset{\sim}{u}\_1 + \underset{\sim}{u}\_2\\ and \\\underset{\sim}{w} = \underset{\sim}{w}\_1 + \underset{\sim}{w}\_2\\, with \\\underset{\sim}{u}\_1, \underset{\sim}{w}\_1 \in \mathcal{S}\_1\\ and \\\underset{\sim}{u}\_2, \underset{\sim}{w}\_2 \in \mathcal{S}\_2\\, and a number \\c\\. Then
>
> \\ \begin{aligned} \underset{\sim}{u} + \underset{\sim}{w} &= (\underset{\sim}{u}\_1 + \underset{\sim}{u}\_2) + (\underset{\sim}{w}\_1 + \underset{\sim}{w}\_2) && \text{(substitute)} \\ &= (\underset{\sim}{u}\_1 + \underset{\sim}{w}\_1) + (\underset{\sim}{u}\_2 + \underset{\sim}{w}\_2), && \text{(regroup; vector addition is entrywise)} \end{aligned} \\
>
> where \\\underset{\sim}{u}\_1 + \underset{\sim}{w}\_1 \in \mathcal{S}\_1\\ and \\\underset{\sim}{u}\_2 + \underset{\sim}{w}\_2 \in \mathcal{S}\_2\\, because each subspace is closed under addition. Likewise
>
> \\ \begin{aligned} c\\\underset{\sim}{u} &= c\\(\underset{\sim}{u}\_1 + \underset{\sim}{u}\_2) && \text{(substitute)} \\ &= c\\\underset{\sim}{u}\_1 + c\\\underset{\sim}{u}\_2, && \text{(distribute } c \text{ entrywise)} \end{aligned} \\
>
> where \\c\\\underset{\sim}{u}\_1 \in \mathcal{S}\_1\\ and \\c\\\underset{\sim}{u}\_2 \in \mathcal{S}\_2\\, because each subspace is closed under scalar multiplication. So \\\underset{\sim}{u} + \underset{\sim}{w}\\ and \\c\\\underset{\sim}{u}\\ are in \\\mathcal{S}\_1 + \mathcal{S}\_2\\.
>
> **The intersection.** It is not empty: it contains \\\underset{\sim}{0}\\. If \\\underset{\sim}{u}\\ and \\\underset{\sim}{w}\\ are in both \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\, then \\\underset{\sim}{u} + \underset{\sim}{w}\\ and \\c\\\underset{\sim}{u}\\ are in \\\mathcal{S}\_1\\, because \\\mathcal{S}\_1\\ is a subspace, and in \\\mathcal{S}\_2\\ for the same reason, so they are in \\\mathcal{S}\_1 \cap \mathcal{S}\_2\\.

> **NOTE:**
>
> **Example 3 (Two planes in \\\mathbb{R}^3\\)** Let \\\mathcal{S}\_1 = \mathopen{}\left\\(a, b, 0) : a, b \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\, and \\\mathcal{S}\_2 = \mathopen{}\left\\(0, b, c) : b, c \in \mathbb{R}\right\\\mathclose{}\\, the plane \\x = 0\\.
>
> - **Intersection:** a vector in both has third entry \\0\\ and first entry \\0\\, so \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\(0, b, 0) : b \in \mathbb{R}\right\\\mathclose{}\\, the \\y\\-axis, which is a line through the origin.
> - **Sum:** \\(a, b, 0) + (0, b', c) = (a, b + b', c)\\, and any \\(x, y, z)\\ arises this way, with \\a = x\\, \\b = y\\, \\b' = 0\\ and \\c = z\\. So \\\mathcal{S}\_1 + \mathcal{S}\_2 = \mathbb{R}^3\\.

> **NOTE:**
>
> **Theorem 2 (The dimension of a sum of subspaces)** If \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are subspaces of \\\mathbb{R}^p\\, then
>
> \\ \dim(\mathcal{S}\_1 + \mathcal{S}\_2) = \dim(\mathcal{S}\_1) + \dim(\mathcal{S}\_2) - \dim(\mathcal{S}\_1 \cap \mathcal{S}\_2). \\

> **NOTE:**
>
> *Proof*. All three sets in the formula are subspaces ([Theorem 1](#thm-sum-intersection-subspace)), so each has a dimension ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)). Let \\k = \dim(\mathcal{S}\_1 \cap \mathcal{S}\_2)\\, \\d_1 = \dim(\mathcal{S}\_1)\\ and \\d_2 = \dim(\mathcal{S}\_2)\\.
>
> **Build a list.** Choose a basis \\\underset{\sim}{z}\_1, \ldots, \underset{\sim}{z}\_k\\ of \\\mathcal{S}\_1 \cap \mathcal{S}\_2\\ ([Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis)). These vectors are linearly independent and lie in \\\mathcal{S}\_1\\, so [Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis) extends them to a basis \\\underset{\sim}{z}\_1, \ldots, \underset{\sim}{z}\_k, \underset{\sim}{x}\_1, \ldots, \underset{\sim}{x}\_{d_1 - k}\\ of \\\mathcal{S}\_1\\, which has \\d_1\\ vectors ([Theorem 7 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-basis-size)). In the same way, extend them to a basis \\\underset{\sim}{z}\_1, \ldots, \underset{\sim}{z}\_k, \underset{\sim}{y}\_1, \ldots, \underset{\sim}{y}\_{d_2 - k}\\ of \\\mathcal{S}\_2\\. We show that the \\\underset{\sim}{z}\\’s, \\\underset{\sim}{x}\\’s and \\\underset{\sim}{y}\\’s together, \\k + (d_1 - k) + (d_2 - k) = d_1 + d_2 - k\\ vectors, are a basis of \\\mathcal{S}\_1 + \mathcal{S}\_2\\ ([Definition 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-basis)).
>
> **They span \\\mathcal{S}\_1 + \mathcal{S}\_2\\.** Any \\\underset{\sim}{v} \in \mathcal{S}\_1 + \mathcal{S}\_2\\ is \\\underset{\sim}{v}\_1 + \underset{\sim}{v}\_2\\ with \\\underset{\sim}{v}\_1 \in \mathcal{S}\_1\\ and \\\underset{\sim}{v}\_2 \in \mathcal{S}\_2\\. \\\underset{\sim}{v}\_1\\ is a linear combination of the \\\underset{\sim}{z}\\’s and \\\underset{\sim}{x}\\’s, and \\\underset{\sim}{v}\_2\\ is a linear combination of the \\\underset{\sim}{z}\\’s and \\\underset{\sim}{y}\\’s, so their sum is a linear combination of all three groups. Conversely, each vector in the list is in \\\mathcal{S}\_1 + \mathcal{S}\_2\\ (for example, \\\underset{\sim}{x}\_1 = \underset{\sim}{x}\_1 + \underset{\sim}{0}\\), and \\\mathcal{S}\_1 + \mathcal{S}\_2\\ is a subspace, so it contains every linear combination of them.
>
> **They are linearly independent.** Suppose
>
> \\ \sum\_{i=1}^{k} a_i \underset{\sim}{z}\_i + \sum\_{j=1}^{d_1 - k} b_j \underset{\sim}{x}\_j + \sum\_{l=1}^{d_2 - k} c_l \underset{\sim}{y}\_l = \underset{\sim}{0}. \\
>
> Let \\\underset{\sim}{w} \stackrel{\text{def}}{=}\sum\_{l} c_l \underset{\sim}{y}\_l\\. Then \\\underset{\sim}{w} \in \mathcal{S}\_2\\, because it is a linear combination of vectors of \\\mathcal{S}\_2\\. Subtracting \\\sum\_{i} a_i \underset{\sim}{z}\_i + \sum\_{j} b_j \underset{\sim}{x}\_j\\ from both sides of the supposed equation gives
>
> \\ \underset{\sim}{w} = \sum\_{i=1}^{k} (-a_i)\\\underset{\sim}{z}\_i + \sum\_{j=1}^{d_1 - k} (-b_j)\\\underset{\sim}{x}\_j, \\
>
> a linear combination of vectors of \\\mathcal{S}\_1\\, so \\\underset{\sim}{w} \in \mathcal{S}\_1\\ too. So \\\underset{\sim}{w} \in \mathcal{S}\_1 \cap \mathcal{S}\_2\\, and \\\underset{\sim}{w} = \sum\_{i} e_i \underset{\sim}{z}\_i\\ for some numbers \\e_i\\, since the \\\underset{\sim}{z}\\’s span the intersection. Then
>
> \\ \begin{aligned} \underset{\sim}{0} &= \underset{\sim}{w} - \underset{\sim}{w} && \text{(a vector minus itself)} \\ &= \sum\_{i=1}^{k} e_i \underset{\sim}{z}\_i - \sum\_{l=1}^{d_2 - k} c_l \underset{\sim}{y}\_l && \text{(substitute the two expressions for } \underset{\sim}{w} \text{)} \\ &= \sum\_{i=1}^{k} e_i \underset{\sim}{z}\_i + \sum\_{l=1}^{d_2 - k} (-c_l)\\\underset{\sim}{y}\_l, && \text{(write each subtraction as adding } -1 \text{ times)} \end{aligned} \\
>
> and because the \\\underset{\sim}{z}\\’s and \\\underset{\sim}{y}\\’s are a basis of \\\mathcal{S}\_2\\, every \\c_l = 0\\. The supposed equation then reads \\\sum\_{i} a_i \underset{\sim}{z}\_i + \sum\_{j} b_j \underset{\sim}{x}\_j = \underset{\sim}{0}\\, and because the \\\underset{\sim}{z}\\’s and \\\underset{\sim}{x}\\’s are a basis of \\\mathcal{S}\_1\\, every \\a_i\\ and \\b_j\\ is \\0\\.
>
> So \\\dim(\mathcal{S}\_1 + \mathcal{S}\_2) = d_1 + d_2 - k\\. When some of the groups are empty (for example \\k = 0\\, or \\\mathcal{S}\_1 = \mathcal{S}\_1 \cap \mathcal{S}\_2\\), the sums over them are \\\underset{\sim}{0}\\ and the argument goes through unchanged.

> **NOTE:**
>
> **Example 4 (Two planes in \\\mathbb{R}^3\\, by dimension)** For the planes \\z = 0\\ and \\x = 0\\ in [Example 3](#exm-sum-intersection-subspace), each has dimension \\2\\: the plane \\z = 0\\ has basis \\(1, 0, 0), (0, 1, 0)\\ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)), and the plane \\x = 0\\ has basis \\(0, 1, 0), (0, 0, 1)\\ by the same argument. Their intersection, the \\y\\-axis \\\operatorname{span}\mathopen{}\left\\(0, 1, 0)\right\\\mathclose{}\\, has dimension \\1\\, because the single nonzero vector \\(0, 1, 0)\\ is linearly independent (\\c\\(0, 1, 0) = (0, c, 0)\\ is \\\underset{\sim}{0}\\ only if \\c = 0\\) and so is a basis of it. [Theorem 2](#thm-dim-sum) gives
>
> \\ \begin{aligned} \dim(\mathcal{S}\_1 + \mathcal{S}\_2) &= 2 + 2 - 1 \\ &= 3, \end{aligned} \\
>
> which agrees with \\\mathcal{S}\_1 + \mathcal{S}\_2 = \mathbb{R}^3\\ ([Example 3](#exm-sum-intersection-subspace)) and \\\dim(\mathbb{R}^3) = 3\\ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)).

> **NOTE:**
>
> **Corollary 1 (The dimension of a sum is at most the sum of the dimensions)** If \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are subspaces of \\\mathbb{R}^p\\, then
>
> \\ \dim(\mathcal{S}\_1 + \mathcal{S}\_2) \le \dim(\mathcal{S}\_1) + \dim(\mathcal{S}\_2), \\
>
> with equality exactly when \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}\\.

> **NOTE:**
>
> *Proof*. By [Theorem 2](#thm-dim-sum), the two sides differ by \\\dim(\mathcal{S}\_1 \cap \mathcal{S}\_2) \ge 0\\. That dimension is \\0\\ exactly when a basis of the intersection is the empty list, that is, when the intersection is the span of the empty list, \\\mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}\\ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span), [Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)).

> **NOTE:**
>
> **Example 5 (Equality and strict inequality)**  
>
> - For the lines \\\mathcal{S}\_1 = \operatorname{span}\mathopen{}\left\\(1, 0, 0)\right\\\mathclose{}\\ and \\\mathcal{S}\_2 = \operatorname{span}\mathopen{}\left\\(0, 1, 0)\right\\\mathclose{}\\ in [Example 1](#exm-subspace-sum), a common vector satisfies \\a\\(1, 0, 0) = b\\(0, 1, 0)\\, so \\(a, -b, 0) = \underset{\sim}{0}\\ and
>
>   \\ \begin{aligned} a &= b \\ &= 0. \end{aligned} \\
>
>   The intersection is \\\mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}\\, and indeed
>
>   \\ \begin{aligned} \dim(\mathcal{S}\_1 + \mathcal{S}\_2) &= 2 \\ &= 1 + 1: \end{aligned} \\
>
>   the sum is the plane \\z = 0\\ ([Example 1](#exm-subspace-sum)), which has dimension \\2\\ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)), and each line has dimension \\1\\, with its spanning vector as a basis.
>
> - For
>
>   \\ \begin{aligned} \mathcal{S}\_1 &= \mathcal{S}\_2 \\ &= \operatorname{span}\mathopen{}\left\\(1, 0, 0)\right\\\mathclose{}, \end{aligned} \\
>
>   the sum is the same line, because \\a\\(1, 0, 0) + b\\(1, 0, 0) = (a + b)\\(1, 0, 0)\\, so \\\dim(\mathcal{S}\_1 + \mathcal{S}\_2) = 1 \< 1 + 1\\, a [strict inequality](algebra-basics.llms.md#def-strict-inequality).

> **NOTE:**
>
> **Theorem 3 (Rank is subadditive)** For \\m \times n\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\,
>
> \\ \operatorname{rank}(\mathbf{A} + \mathbf{B}) \le \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(\mathbf{B}). \\

> **NOTE:**
>
> *Proof*. **\\\mathcal{C}(\mathbf{A} + \mathbf{B}) \subseteq \mathcal{C}(\mathbf{A}) + \mathcal{C}(\mathbf{B})\\.** Any vector of \\\mathcal{C}(\mathbf{A} + \mathbf{B})\\ is \\(\mathbf{A} + \mathbf{B})\\\underset{\sim}{x}\\ for some \\\underset{\sim}{x} \in \mathbb{R}^n\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)), and \\(\mathbf{A} + \mathbf{B})\\\underset{\sim}{x} = \mathbf{A} \underset{\sim}{x} + \mathbf{B} \underset{\sim}{x}\\ ([Theorem 6 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-distrib), with \\\underset{\sim}{x}\\ as an \\n \times 1\\ matrix), a vector of \\\mathcal{C}(\mathbf{A})\\ plus a vector of \\\mathcal{C}(\mathbf{B})\\.
>
> **Compare dimensions.** All the sets involved are subspaces of \\\mathbb{R}^m\\ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span), [Theorem 1](#thm-sum-intersection-subspace)), so
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A} + \mathbf{B}) &= \dim\mathopen{}\left(\mathcal{C}(\mathbf{A} + \mathbf{B})\right)\mathclose{} && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-dim}{\text{Theorem~7 in Column Space, Null Space and Rank-Nullity}}\text{)} \\ &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A}) + \mathcal{C}(\mathbf{B})\right)\mathclose{} && \text{(the containment, and part 2 of }\href{linear-algebra-subspaces.qmd#thm-dim-bound}{\text{Theorem~10 in Subspaces and Rank}}\text{)} \\ &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} + \dim\mathopen{}\left(\mathcal{C}(\mathbf{B})\right)\mathclose{} && \text{(}\href{#cor-dim-subadditive}{\text{Corollary~1}}\text{)} \\ &= \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(\mathbf{B}). && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-dim}{\text{Theorem~7 in Column Space, Null Space and Rank-Nullity}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 6 (Subadditivity with equality and without)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ and \\\mathbf{B} = \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix}\\. Each has one nonzero column and one zero column. The nonzero column on its own is linearly independent (\\c\\\underset{\sim}{v} = \underset{\sim}{0}\_2\\ with \\\underset{\sim}{v} \ne \underset{\sim}{0}\_2\\ forces \\c = 0\\), and the two columns together are not, since \\1\\ times the zero column is \\\underset{\sim}{0}\_2\\; so each matrix has rank \\1\\ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)). By the same argument, \\-\mathbf{A}\\ has rank \\1\\.
>
> - \\\mathbf{A} + \mathbf{B}\\ is the \\2 \times 2\\ identity matrix, which has rank \\2\\ ([Example 13 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-rank-nullity)), so the bound \\2 \le 1 + 1\\ holds with equality.
> - \\\mathbf{A} + (-\mathbf{A})\\ is the \\2 \times 2\\ zero matrix, which has rank \\0\\: any nonempty list of its columns contains \\\underset{\sim}{0}\_2\\, and \\1 \cdot\underset{\sim}{0}\_2 = \underset{\sim}{0}\_2\\. So the bound \\0 \le \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(-\mathbf{A}) = 1 + 1\\ is strict.

> **NOTE:**
>
> **Definition 2 (Complementary subspaces)** Let \\\mathcal{S}\_1\\, \\\mathcal{S}\_2\\ and \\\mathcal{V}\\ be subspaces of \\\mathbb{R}^p\\. \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are **complementary** in \\\mathcal{V}\\ if
>
> \\ \mathcal{V} = \mathcal{S}\_1 + \mathcal{S}\_2 \quad \text{and} \quad \mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{} \\
>
> ([Definition 1](#def-subspace-sum)).

> **NOTE:**
>
> **Definition 3 (Direct sum)** If \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are complementary in \\\mathcal{V}\\ ([Definition 2](#def-complementary-subspaces)), then \\\mathcal{V}\\ is the **direct sum** of \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\, written \\\mathcal{V} = \mathcal{S}\_1 \oplus \mathcal{S}\_2\\.

> **NOTE:**
>
> **Example 7 (\\\mathbb{R}^3\\ is a plane plus a line)** Let \\\mathcal{S}\_1 = \mathopen{}\left\\(a, b, 0) : a, b \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\, and \\\mathcal{S}\_2 = \mathopen{}\left\\(0, 0, c) : c \in \mathbb{R}\right\\\mathclose{}\\, the \\z\\-axis.
>
> - **Sum:** any \\(x, y, z) \in \mathbb{R}^3\\ is \\(x, y, 0) + (0, 0, z)\\, so \\\mathcal{S}\_1 + \mathcal{S}\_2 = \mathbb{R}^3\\.
> - **Intersection:** a vector in both has third entry \\0\\ and first and second entries \\0\\, so \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}\\.
>
> So \\\mathbb{R}^3 = \mathcal{S}\_1 \oplus \mathcal{S}\_2\\.

> **NOTE:**
>
> **Example 8 (Two planes that sum to \\\mathbb{R}^3\\ but not directly)** The planes \\z = 0\\ and \\x = 0\\ sum to \\\mathbb{R}^3\\ ([Example 3](#exm-sum-intersection-subspace)), but they share the \\y\\-axis, so they are not complementary, and \\\mathbb{R}^3\\ is not their direct sum. The shared line shows up as more than one way to split a vector:
>
> \\ \begin{aligned} (0, 1, 0) &= (0, 1, 0) + \underset{\sim}{0}\\ &= \underset{\sim}{0}+ (0, 1, 0), \end{aligned} \\
>
> with the first term in the plane \\z = 0\\ and the second in the plane \\x = 0\\ both times.

> **NOTE:**
>
> **Theorem 4 (Three ways to recognize a direct sum)** Let \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ be subspaces of \\\mathbb{R}^p\\, and let \\\mathcal{V} = \mathcal{S}\_1 + \mathcal{S}\_2\\. The following statements are equivalent:
>
> 1.  \\\mathcal{V} = \mathcal{S}\_1 \oplus \mathcal{S}\_2\\ ([Definition 3](#def-direct-sum)).
> 2.  \\\dim(\mathcal{V}) = \dim(\mathcal{S}\_1) + \dim(\mathcal{S}\_2)\\.
> 3.  Every \\\underset{\sim}{x} \in \mathcal{V}\\ can be written as \\\underset{\sim}{x} = \underset{\sim}{x}\_1 + \underset{\sim}{x}\_2\\ with \\\underset{\sim}{x}\_1 \in \mathcal{S}\_1\\ and \\\underset{\sim}{x}\_2 \in \mathcal{S}\_2\\ in only one way.

> **NOTE:**
>
> *Proof*. Since \\\mathcal{V} = \mathcal{S}\_1 + \mathcal{S}\_2\\ is given, statement 1 says exactly that \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}\\.
>
> **1 and 2 are equivalent.** By [Corollary 1](#cor-dim-subadditive), \\\dim(\mathcal{S}\_1 + \mathcal{S}\_2) = \dim(\mathcal{S}\_1) + \dim(\mathcal{S}\_2)\\ exactly when \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}\\.
>
> **1 implies 3.** Every \\\underset{\sim}{x} \in \mathcal{V}\\ has at least one such expression, because \\\mathcal{V} = \mathcal{S}\_1 + \mathcal{S}\_2\\. Suppose
>
> \\ \begin{aligned} \underset{\sim}{x} &= \underset{\sim}{u}\_1 + \underset{\sim}{u}\_2 \\ &= \underset{\sim}{v}\_1 + \underset{\sim}{v}\_2, \end{aligned} \\
>
> with \\\underset{\sim}{u}\_1, \underset{\sim}{v}\_1 \in \mathcal{S}\_1\\ and \\\underset{\sim}{u}\_2, \underset{\sim}{v}\_2 \in \mathcal{S}\_2\\. Then
>
> \\ \begin{aligned} \underset{\sim}{u}\_1 - \underset{\sim}{v}\_1 &= (\underset{\sim}{u}\_1 + \underset{\sim}{u}\_2) - \underset{\sim}{u}\_2 - \underset{\sim}{v}\_1 && \text{(add and subtract } \underset{\sim}{u}\_2 \text{)} \\ &= (\underset{\sim}{v}\_1 + \underset{\sim}{v}\_2) - \underset{\sim}{u}\_2 - \underset{\sim}{v}\_1 && \text{(substitute } \underset{\sim}{u}\_1 + \underset{\sim}{u}\_2 = \underset{\sim}{v}\_1 + \underset{\sim}{v}\_2 \text{)} \\ &= \underset{\sim}{v}\_2 - \underset{\sim}{u}\_2. && \text{(cancel } \underset{\sim}{v}\_1 \text{)} \end{aligned} \\
>
> The left side is in \\\mathcal{S}\_1\\ and the right side is in \\\mathcal{S}\_2\\, because each subspace is closed under addition and scalar multiplication (the difference is \\\underset{\sim}{u}\_1 + (-1)\\\underset{\sim}{v}\_1\\). So both sides are in \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}\\, which gives \\\underset{\sim}{u}\_1 = \underset{\sim}{v}\_1\\ and \\\underset{\sim}{u}\_2 = \underset{\sim}{v}\_2\\.
>
> **3 implies 1.** Take any \\\underset{\sim}{x} \in \mathcal{S}\_1 \cap \mathcal{S}\_2\\. Then \\\underset{\sim}{x} = \underset{\sim}{x} + \underset{\sim}{0}\\, with \\\underset{\sim}{x} \in \mathcal{S}\_1\\ and \\\underset{\sim}{0}\in \mathcal{S}\_2\\, and \\\underset{\sim}{x} = \underset{\sim}{0}+ \underset{\sim}{x}\\, with \\\underset{\sim}{0}\in \mathcal{S}\_1\\ and \\\underset{\sim}{x} \in \mathcal{S}\_2\\ ([Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)). By statement 3 these two expressions are the same, so \\\underset{\sim}{x} = \underset{\sim}{0}\\, and \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}\\.

> **NOTE:**
>
> **Example 9 (Checking the three statements)** For the plane \\z = 0\\ and the \\z\\-axis in [Example 7](#exm-direct-sum):
>
> - the dimensions add up:
>
>   \\ \begin{aligned} 2 + 1 &= 3 \\ &= \dim(\mathbb{R}^3), \end{aligned} \\
>
>   since the plane has dimension \\2\\ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)), the \\z\\-axis has the single nonzero vector \\(0, 0, 1)\\ as a basis, and \\\dim(\mathbb{R}^3) = 3\\ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension));
>
> - the split is unique: if
>
>   \\ \begin{aligned} (x, y, z) &= (a, b, 0) + (0, 0, c) \\ &= (a, b, c), \end{aligned} \\
>
>   then \\a = x\\, \\b = y\\ and \\c = z\\.
>
> For the planes \\z = 0\\ and \\x = 0\\ in [Example 8](#exm-not-direct-sum), both statements fail:
>
> \\ \begin{aligned} 2 + 2 &= 4 \\ &\ne 3 \\ &= \dim(\mathcal{S}\_1 + \mathcal{S}\_2) \end{aligned} \\
>
> ([Example 4](#exm-dim-sum)), and \\(0, 1, 0)\\ splits in two ways.

> **NOTE:**
>
> **Definition 4 (Projection onto a subspace along a complement)** Let \\\mathcal{S}\\ and \\\mathcal{T}\\ be subspaces of \\\mathbb{R}^p\\ with \\\mathbb{R}^p = \mathcal{S} \oplus \mathcal{T}\\ ([Definition 3](#def-direct-sum)), and let \\\underset{\sim}{y} \in \mathbb{R}^p\\. By [Theorem 4](#thm-direct-sum-equiv), \\\underset{\sim}{y} = \underset{\sim}{u} + \underset{\sim}{v}\\ for exactly one \\\underset{\sim}{u} \in \mathcal{S}\\ and \\\underset{\sim}{v} \in \mathcal{T}\\. The vector \\\underset{\sim}{u}\\ is the **projection** of \\\underset{\sim}{y}\\ onto \\\mathcal{S}\\ along \\\mathcal{T}\\ ([Banerjee and Roy 2014](#ref-banerjee2014linear), Definition 6.3, p. 163).

> **NOTE:**
>
> **Example 10 (The projection depends on the complement)** Let \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 0)\right\\\mathclose{}\\, the horizontal axis in \\\mathbb{R}^2\\, and let \\\underset{\sim}{y} = (3, 2)\\.
>
> - **Along \\\mathcal{T}\_1 = \operatorname{span}\mathopen{}\left\\(1, -1)\right\\\mathclose{}\\:** \\(3, 2) = (5, 0) + (-2, 2)\\, with \\(5, 0) \in \mathcal{S}\\ and \\(-2, 2) = -2 \cdot(1, -1) \in \mathcal{T}\_1\\, so the projection of \\(3, 2)\\ onto \\\mathcal{S}\\ along \\\mathcal{T}\_1\\ is \\(5, 0)\\.
> - **Along \\\mathcal{T}\_2 = \operatorname{span}\mathopen{}\left\\(0, 1)\right\\\mathclose{}\\:** \\(3, 2) = (3, 0) + (0, 2)\\, with \\(3, 0) \in \mathcal{S}\\ and \\(0, 2) \in \mathcal{T}\_2\\, so the projection of \\(3, 2)\\ onto \\\mathcal{S}\\ along \\\mathcal{T}\_2\\ is \\(3, 0)\\.
>
> Each of \\\mathcal{T}\_1\\ and \\\mathcal{T}\_2\\ is a line that meets \\\mathcal{S}\\ only at \\\underset{\sim}{0}\\, so
>
> \\ \begin{aligned} \mathbb{R}^2 &= \mathcal{S} \oplus \mathcal{T}\_1 \\ &= \mathcal{S} \oplus \mathcal{T}\_2 \end{aligned} \\
>
> ([Definition 3](#def-direct-sum), [Theorem 4](#thm-direct-sum-equiv)). The same vector has a different projection onto the same subspace when the complement changes.

## 2 Orthogonal complements

> **NOTE:**
>
> **Theorem 5 (The dot product is linear in each slot)** For vectors \\\underset{\sim}{x}, \underset{\sim}{u}, \underset{\sim}{w} \in \mathbb{R}^p\\ and numbers \\a, b\\,
>
> \\ \underset{\sim}{x} \cdot (a\\\underset{\sim}{u} + b\\\underset{\sim}{w}) = a\\(\underset{\sim}{x} \cdot \underset{\sim}{u}) + b\\(\underset{\sim}{x} \cdot \underset{\sim}{w}) \\
>
> and
>
> \\ (a\\\underset{\sim}{u} + b\\\underset{\sim}{w}) \cdot \underset{\sim}{x} = a\\(\underset{\sim}{u} \cdot \underset{\sim}{x}) + b\\(\underset{\sim}{w} \cdot \underset{\sim}{x}). \\

> **NOTE:**
>
> *Proof*. **Second slot.**
>
> \\ \begin{aligned} \underset{\sim}{x} \cdot (a\\\underset{\sim}{u} + b\\\underset{\sim}{w}) &= \sum\_{i=1}^px_i\\(a\\\underset{\sim}{u} + b\\\underset{\sim}{w})\_i && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)} \\ &= \sum\_{i=1}^px_i\\(a u_i + b w_i) && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{, }\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~7 in Vectors}}\text{)} \\ &= \sum\_{i=1}^p\mathopen{}\left(x_i a u_i + x_i b w_i\right)\mathclose{} && \text{(distribute each } x_i \text{)} \\ &= \sum\_{i=1}^p\mathopen{}\left(a\\x_i u_i + b\\x_i w_i\right)\mathclose{} && \text{(commute the factors in each product)} \\ &= \sum\_{i=1}^pa\\x_i u_i + \sum\_{i=1}^pb\\x_i w_i && \text{(split the finite sum)} \\ &= a \sum\_{i=1}^px_i u_i + b \sum\_{i=1}^px_i w_i && \text{(factor } a \text{ and } b \text{ out of the sums)} \\ &= a\\(\underset{\sim}{x} \cdot \underset{\sim}{u}) + b\\(\underset{\sim}{x} \cdot \underset{\sim}{w}). && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)} \end{aligned} \\
>
> **First slot.**
>
> \\ \begin{aligned} (a\\\underset{\sim}{u} + b\\\underset{\sim}{w}) \cdot \underset{\sim}{x} &= \underset{\sim}{x} \cdot (a\\\underset{\sim}{u} + b\\\underset{\sim}{w}) && \text{(}\href{linear-algebra-vectors.qmd#thm-lincom-symmetric}{\text{Theorem~1 in Vectors}}\text{)} \\ &= a\\(\underset{\sim}{x} \cdot \underset{\sim}{u}) + b\\(\underset{\sim}{x} \cdot \underset{\sim}{w}) && \text{(second slot)} \\ &= a\\(\underset{\sim}{u} \cdot \underset{\sim}{x}) + b\\(\underset{\sim}{w} \cdot \underset{\sim}{x}). && \text{(}\href{linear-algebra-vectors.qmd#thm-lincom-symmetric}{\text{Theorem~1 in Vectors}}\text{, twice)} \end{aligned} \\
>
> Two special cases are used often. With
>
> \\ \begin{aligned} a &= b \\ &= 1, \end{aligned} \\
>
> and \\1\\\underset{\sim}{u} = \underset{\sim}{u}\\, the theorem gives \\\underset{\sim}{x} \cdot (\underset{\sim}{u} + \underset{\sim}{w}) = \underset{\sim}{x} \cdot \underset{\sim}{u} + \underset{\sim}{x} \cdot \underset{\sim}{w}\\. With \\\underset{\sim}{w} = \underset{\sim}{u}\\ and \\b = 0\\, and \\0\\\underset{\sim}{u} = \underset{\sim}{0}\\, it gives \\\underset{\sim}{x} \cdot (a\\\underset{\sim}{u}) = a\\(\underset{\sim}{x} \cdot \underset{\sim}{u})\\, and likewise in the first slot.

> **NOTE:**
>
> **Example 11 (Splitting a dot product)** Let \\\underset{\sim}{x} = (1, 2)\\, \\\underset{\sim}{u} = (3, 0)\\, \\\underset{\sim}{w} = (0, 1)\\, \\a = 2\\ and \\b = -1\\. Directly, \\a\\\underset{\sim}{u} + b\\\underset{\sim}{w} = (6, -1)\\ and
>
> \\ \begin{aligned} \underset{\sim}{x} \cdot (6, -1) &= 6 - 2 \\ &= 4. \end{aligned} \\
>
> By [Theorem 5](#thm-dot-linear),
>
> \\ \begin{aligned} a\\(\underset{\sim}{x} \cdot \underset{\sim}{u}) + b\\(\underset{\sim}{x} \cdot \underset{\sim}{w}) &= 2 \cdot 3 + (-1) \cdot 2 \\ &= 4, \end{aligned} \\
>
> the same number.

> **NOTE:**
>
> **Definition 5 (Orthogonal complement)** The **orthogonal complement** of a set \\\mathcal{X}\\ of vectors in \\\mathbb{R}^p\\ is the set of vectors orthogonal ([Definition 15 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)) to every vector of \\\mathcal{X}\\:
>
> \\ \mathcal{X}^\perp \stackrel{\text{def}}{=} \mathopen{}\left\\\underset{\sim}{u} \in \mathbb{R}^p : \underset{\sim}{x} \cdot \underset{\sim}{u} = 0 \text{ for all } \underset{\sim}{x} \in \mathcal{X}\right\\\mathclose{}. \\
>
> \\\mathcal{X}^\perp\\ is read “\\\mathcal{X}\\ perp”.

> **NOTE:**
>
> **Example 12 (Orthogonal complements in \\\mathbb{R}^3\\)**  
>
> - **A plane.** Let \\\mathcal{X} = \mathopen{}\left\\(a, b, 0) : a, b \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\. A vector \\\underset{\sim}{u}\\ is in \\\mathcal{X}^\perp\\ when
>
>   \\ \begin{aligned} (a, b, 0) \cdot \underset{\sim}{u} &= a u_1 + b u_2 \\ &= 0 \end{aligned} \\
>
>   for all \\a\\ and \\b\\. Taking \\(a, b) = (1, 0)\\ forces \\u_1 = 0\\, and taking \\(a, b) = (0, 1)\\ forces \\u_2 = 0\\; conversely, if
>
>   \\ \begin{aligned} u_1 &= u_2 \\ &= 0, \end{aligned} \\
>
>   then \\a u_1 + b u_2 = 0\\ for all \\a\\ and \\b\\. So \\\mathcal{X}^\perp = \mathopen{}\left\\(0, 0, c) : c \in \mathbb{R}\right\\\mathclose{}\\, the \\z\\-axis.
>
> - **Two vectors.** The two-element set \\\mathopen{}\left\\(1, 0, 0), (0, 1, 0)\right\\\mathclose{}\\ is not a subspace, and its orthogonal complement is the \\z\\-axis too: the two conditions \\u_1 = 0\\ and \\u_2 = 0\\ are the same as for the plane.
>
> - **The extremes.** \\\mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}^\perp = \mathbb{R}^3\\, because \\\underset{\sim}{0}\cdot \underset{\sim}{u} = 0\\ for every \\\underset{\sim}{u}\\. \\(\mathbb{R}^3)^\perp = \mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}\\, because a \\\underset{\sim}{u}\\ in it is orthogonal to itself, and
>
>   \\ \begin{aligned} \underset{\sim}{u} \cdot \underset{\sim}{u} &= u_1^2 + u_2^2 + u_3^2 \\ &= 0 \end{aligned} \\
>
>   forces \\\underset{\sim}{u} = \underset{\sim}{0}\\.

> **NOTE:**
>
> *Remark 1* (The orthogonal complement of a set that is not a subspace). \\\mathcal{X}\\ in [Definition 5](#def-orthogonal-complement) need not be a subspace.

> **NOTE:**
>
> **Theorem 6 (An orthogonal complement is a subspace)** For any set \\\mathcal{X}\\ of vectors in \\\mathbb{R}^p\\, \\\mathcal{X}^\perp\\ ([Definition 5](#def-orthogonal-complement)) is a subspace of \\\mathbb{R}^p\\ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)).

> **NOTE:**
>
> *Proof*. \\\mathcal{X}^\perp\\ is not empty:
>
> \\ \begin{aligned} \underset{\sim}{x} \cdot \underset{\sim}{0}&= \sum_i x_i \cdot 0 \\ &= 0 \end{aligned} \\
>
> for every \\\underset{\sim}{x}\\, so \\\underset{\sim}{0}\in \mathcal{X}^\perp\\. Let \\\underset{\sim}{u}, \underset{\sim}{w} \in \mathcal{X}^\perp\\, let \\c \in \mathbb{R}\\, and let \\\underset{\sim}{x} \in \mathcal{X}\\.
>
> **Addition.**
>
> \\ \begin{aligned} \underset{\sim}{x} \cdot (\underset{\sim}{u} + \underset{\sim}{w}) &= \underset{\sim}{x} \cdot \underset{\sim}{u} + \underset{\sim}{x} \cdot \underset{\sim}{w} && \text{(}\href{#thm-dot-linear}{\text{Theorem~5}}\text{, special case } a \text{ and } b \text{ both equal to } 1 \text{)} \\ &= 0 + 0 && \text{(} \underset{\sim}{u}, \underset{\sim}{w} \in \mathcal{X}^\perp \text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\
>
> **Scalar multiplication.**
>
> \\ \begin{aligned} \underset{\sim}{x} \cdot (c\\\underset{\sim}{u}) &= c\\(\underset{\sim}{x} \cdot \underset{\sim}{u}) && \text{(}\href{#thm-dot-linear}{\text{Theorem~5}}\text{, special case } b = 0 \text{)} \\ &= c \cdot 0 && \text{(} \underset{\sim}{u} \in \mathcal{X}^\perp \text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\
>
> These two equations hold for every \\\underset{\sim}{x} \in \mathcal{X}\\, so \\\underset{\sim}{u} + \underset{\sim}{w}\\ and \\c\\\underset{\sim}{u}\\ are in \\\mathcal{X}^\perp\\.

> **NOTE:**
>
> **Example 13 (The complement of a single vector is a line)** The one-element set \\\mathcal{X} = \mathopen{}\left\\(1, 2)\right\\\mathclose{}\\ in \\\mathbb{R}^2\\ is not a subspace: \\2\\(1, 2) = (2, 4)\\ is not in it. Its orthogonal complement is
>
> \\ \begin{aligned} \mathcal{X}^\perp &= \mathopen{}\left\\\underset{\sim}{u} \in \mathbb{R}^2 : u_1 + 2 u_2 = 0\right\\\mathclose{} \\ &= \mathopen{}\left\\c\\(-2, 1) : c \in \mathbb{R}\right\\\mathclose{}, \end{aligned} \\
>
> since \\u_1 + 2u_2 = 0\\ means
>
> \\ \begin{aligned} \underset{\sim}{u} &= (-2u_2, u_2) \\ &= u_2\\(-2, 1). \end{aligned} \\
>
> That set is \\\operatorname{span}\mathopen{}\left\\(-2, 1)\right\\\mathclose{}\\, a subspace by [Theorem 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-span-subspace), as [Theorem 6](#thm-orthogonal-complement-subspace) says it must be. It contains \\(-2, 1)\\, the vector [Remark 8 in Vectors](linear-algebra-vectors.llms.md#rem-orthogonal-perpendicular) found perpendicular to \\(1, 2)\\.

> **NOTE:**
>
> **Theorem 7 (The orthogonal complement of a column space is a null space)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top}). \\

> **NOTE:**
>
> *Proof*. Let \\\underset{\sim}{a}\_1, \ldots, \underset{\sim}{a}\_n\\ be the columns of \\\mathbf{A}\\, so \\\underset{\sim}{a}\_j = (a\_{1j}, \ldots, a\_{mj})\\. For \\\underset{\sim}{x} \in \mathbb{R}^m\\, entry \\j\\ of \\{\mathbf{A}}^{\top} \underset{\sim}{x}\\ is
>
> \\ \begin{aligned} ({\mathbf{A}}^{\top} \underset{\sim}{x})\_j &= \sum\_{i=1}^{m} ({\mathbf{A}}^{\top})\_{ji}\\ x_i && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~13 in Matrices}}\text{)} \\ &= \sum\_{i=1}^{m} a\_{ij}\\ x_i && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \\ &= \underset{\sim}{a}\_j \cdot \underset{\sim}{x}. && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)} \end{aligned} \\
>
> So \\\underset{\sim}{x} \in \mathcal{N}({\mathbf{A}}^{\top})\\ ([Definition 3 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-null-space)) exactly when \\\underset{\sim}{a}\_j \cdot \underset{\sim}{x} = 0\\ for every column \\\underset{\sim}{a}\_j\\.
>
> **\\\mathcal{C}(\mathbf{A})^\perp \subseteq \mathcal{N}({\mathbf{A}}^{\top})\\.** Each column \\\underset{\sim}{a}\_j\\ is in \\\mathcal{C}(\mathbf{A})\\ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)), so a vector orthogonal to all of \\\mathcal{C}(\mathbf{A})\\ is orthogonal to every column.
>
> **\\\mathcal{N}({\mathbf{A}}^{\top}) \subseteq \mathcal{C}(\mathbf{A})^\perp\\.** Suppose \\\underset{\sim}{a}\_j \cdot \underset{\sim}{x} = 0\\ for every \\j\\, and take any \\\underset{\sim}{y} \in \mathcal{C}(\mathbf{A})\\, so \\\underset{\sim}{y} = \mathbf{A} \underset{\sim}{z}\\ for some \\\underset{\sim}{z} \in \mathbb{R}^n\\ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)). Then
>
> \\ \begin{aligned} \underset{\sim}{y} \cdot \underset{\sim}{x} &= \sum\_{i=1}^{m} (\mathbf{A} \underset{\sim}{z})\_i\\ x_i && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)} \\ &= \sum\_{i=1}^{m} \mathopen{}\left(\sum\_{j=1}^na\_{ij} z_j\right)\mathclose{}\\ x_i && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~13 in Matrices}}\text{)} \\ &= \sum\_{i=1}^{m} \sum\_{j=1}^na\_{ij}\\ z_j\\ x_i && \text{(distribute each } x_i \text{ over the inner sum)} \\ &= \sum\_{j=1}^n\sum\_{i=1}^{m} a\_{ij}\\ z_j\\ x_i && \text{(swap the order of the finite sums)} \\ &= \sum\_{j=1}^nz_j \sum\_{i=1}^{m} a\_{ij}\\ x_i && \text{(commute, then factor } z_j \text{ out of the inner sum)} \\ &= \sum\_{j=1}^nz_j\\ (\underset{\sim}{a}\_j \cdot \underset{\sim}{x}) && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)} \\ &= \sum\_{j=1}^nz_j \cdot 0 && \text{(each } \underset{\sim}{a}\_j \cdot \underset{\sim}{x} = 0 \text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\
>
> So \\\underset{\sim}{x}\\ is orthogonal to every vector of \\\mathcal{C}(\mathbf{A})\\.

> **NOTE:**
>
> **Example 14 (The complement of the column space in [Example 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-column-space))** For \\\mathbf{A}\\ in [Example 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-column-space), \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\ (1). [Example 3 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-null-space) found \\\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(-3, 1)\right\\\mathclose{}\\, so by [Theorem 7](#thm-complement-null-space) this line is \\\mathcal{C}(\mathbf{A})^\perp\\. Directly, for any \\c\\,
>
> \\ \begin{aligned} \mathopen{}\left(c\\(1, 3)\right)\mathclose{} \cdot (-3, 1) &= c\\\mathopen{}\left((1, 3) \cdot (-3, 1)\right)\mathclose{} && \text{(}\href{#thm-dot-linear}{\text{Theorem~5}}\text{, special case } b = 0 \text{, first slot)} \\ &= c\\(-3 + 3) && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 8 (A subspace and its orthogonal complement make up the whole space)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\. Then
>
> 1.  \\\mathcal{S} \cap \mathcal{S}^\perp = \mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}\\;
> 2.  \\\dim(\mathcal{S}) + \dim(\mathcal{S}^\perp) = p\\;
> 3.  \\\mathbb{R}^p = \mathcal{S} \oplus \mathcal{S}^\perp\\ ([Definition 3](#def-direct-sum)).
>
> So every \\\underset{\sim}{y} \in \mathbb{R}^p\\ can be written as \\\underset{\sim}{y} = \underset{\sim}{u} + \underset{\sim}{v}\\ with \\\underset{\sim}{u} \in \mathcal{S}\\ and \\\underset{\sim}{v} \in \mathcal{S}^\perp\\ in only one way ([Theorem 4](#thm-direct-sum-equiv)).

> **NOTE:**
>
> *Proof*. \\\mathcal{S}^\perp\\ is a subspace ([Theorem 6](#thm-orthogonal-complement-subspace)), so it has a dimension ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)).
>
> **Part 1.** Both \\\mathcal{S}\\ and \\\mathcal{S}^\perp\\ contain \\\underset{\sim}{0}\\ ([Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)). If \\\underset{\sim}{x}\\ is in both, then \\\underset{\sim}{x}\\ is orthogonal to every vector of \\\mathcal{S}\\, \\\underset{\sim}{x}\\ itself included, so
>
> \\ \begin{aligned} \underset{\sim}{x} \cdot \underset{\sim}{x} &= x_1^2 + \cdots + x_p^2 \\ &= 0, \end{aligned} \\
>
> which forces every \\x_i = 0\\.
>
> **Part 2.** Let \\d = \dim(\mathcal{S})\\. If \\d = 0\\, then \\\mathcal{S}\\ has a basis ([Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis)) with \\0\\ vectors ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)), the empty list, whose span is \\\mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}\\ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)); so \\\mathcal{S} = \mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}\\, \\\mathcal{S}^\perp = \mathbb{R}^p\\ (every \\\underset{\sim}{u}\\ satisfies \\\underset{\sim}{0}\cdot \underset{\sim}{u} = 0\\), and \\0 + p = p\\ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)). If \\d \ge 1\\, choose a basis \\\underset{\sim}{a}\_1, \ldots, \underset{\sim}{a}\_d\\ of \\\mathcal{S}\\ ([Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis)), and let \\\mathbf{A}\\ be the \\p \times d\\ matrix with these columns. The basis spans \\\mathcal{S}\\, so \\\mathcal{S} = \mathcal{C}(\mathbf{A})\\ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)), and \\\mathcal{S}^\perp = \mathcal{N}({\mathbf{A}}^{\top})\\ ([Theorem 7](#thm-complement-null-space)). \\{\mathbf{A}}^{\top}\\ is \\d \times p\\, so
>
> \\ \begin{aligned} \dim(\mathcal{S}^\perp) &= \dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{} && \text{(}\href{#thm-complement-null-space}{\text{Theorem~7}}\text{)} \\ &= \operatorname{nullity}({\mathbf{A}}^{\top}) && \text{(}\href{linear-algebra-rank-nullity.qmd#def-nullity}{\text{Definition~7 in Column Space, Null Space and Rank-Nullity}}\text{)} \\ &= p - \operatorname{rank}({\mathbf{A}}^{\top}) && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-nullity}{\text{Theorem~8 in Column Space, Null Space and Rank-Nullity}}\text{, for the } p \text{ columns of } {\mathbf{A}}^{\top} \text{)} \\ &= p - \operatorname{rank}(\mathbf{A}) && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-transpose}{\text{Theorem~10 in Column Space, Null Space and Rank-Nullity}}\text{)} \\ &= p - \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-dim}{\text{Theorem~7 in Column Space, Null Space and Rank-Nullity}}\text{)} \\ &= p - d. && \text{(} \mathcal{C}(\mathbf{A}) = \mathcal{S} \text{)} \end{aligned} \\
>
> **Part 3.** \\\mathcal{S} + \mathcal{S}^\perp\\ is a subspace of \\\mathbb{R}^p\\ ([Theorem 1](#thm-sum-intersection-subspace)), and
>
> \\ \begin{aligned} \dim(\mathcal{S} + \mathcal{S}^\perp) &= \dim(\mathcal{S}) + \dim(\mathcal{S}^\perp) - \dim(\mathcal{S} \cap \mathcal{S}^\perp) && \text{(}\href{#thm-dim-sum}{\text{Theorem~2}}\text{)} \\ &= p - \dim(\mathcal{S} \cap \mathcal{S}^\perp) && \text{(part 2)} \\ &= p - 0 && \text{(part 1, and } \dim(\mathopen{}\left\\\underset{\sim}{0}\right\\\mathclose{}) = 0 \text{ by }\href{linear-algebra-subspaces.qmd#exm-dimension}{\text{Example~16 in Subspaces and Rank}}\text{)} \\ &= p. && \text{(arithmetic)} \end{aligned} \\
>
> Since \\\mathcal{S} + \mathcal{S}^\perp \subseteq \mathbb{R}^p\\, \\\mathbb{R}^p\\ is a subspace ([Example 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-subspace)) and \\\dim(\mathbb{R}^p) = p\\ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)), [Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim) gives \\\mathcal{S} + \mathcal{S}^\perp = \mathbb{R}^p\\. Together with part 1, \\\mathbb{R}^p = \mathcal{S} \oplus \mathcal{S}^\perp\\. The uniqueness of the split then follows from [Theorem 4](#thm-direct-sum-equiv) (statement 1 implies statement 3).

> **NOTE:**
>
> **Example 15 (Splitting a vector of \\\mathbb{R}^3\\ along a line and its complement)** Let \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ in \\\mathbb{R}^3\\. A single nonzero vector is linearly independent (\\c\\\underset{\sim}{v} = \underset{\sim}{0}\\ with \\\underset{\sim}{v} \ne \underset{\sim}{0}\\ forces \\c = 0\\), so \\(1, 1, 0)\\ is a basis of \\\mathcal{S}\\ and \\\dim(\mathcal{S}) = 1\\. A vector \\\underset{\sim}{u}\\ is in \\\mathcal{S}^\perp\\ exactly when \\u_1 + u_2 = 0\\: that condition says \\(1, 1, 0) \cdot \underset{\sim}{u} = 0\\, and then
>
> \\ \begin{aligned} c\\(1, 1, 0) \cdot \underset{\sim}{u} &= c\\(u_1 + u_2) \\ &= 0 \end{aligned} \\
>
> for every \\c\\. So
>
> \\ \begin{aligned} \mathcal{S}^\perp &= \mathopen{}\left\\(a, -a, c) : a, c \in \mathbb{R}\right\\\mathclose{} \\ &= \operatorname{span}\mathopen{}\left\\(1, -1, 0), (0, 0, 1)\right\\\mathclose{}. \end{aligned} \\
>
> Those two vectors are linearly independent, because \\a\\(1, -1, 0) + c\\(0, 0, 1) = (a, -a, c)\\ is \\\underset{\sim}{0}\\ only if
>
> \\ \begin{aligned} a &= c \\ &= 0, \end{aligned} \\
>
> so \\\dim(\mathcal{S}^\perp) = 2\\, and \\1 + 2 = 3\\, as part 2 says.
>
> To split \\\underset{\sim}{y} = (3, 1, 2)\\, look for \\\underset{\sim}{u} = t\\(1, 1, 0)\\ with
>
> \\ \begin{aligned} \underset{\sim}{v} &= \underset{\sim}{y} - \underset{\sim}{u} \\ &= (3 - t, 1 - t, 2) \end{aligned} \\
>
> in \\\mathcal{S}^\perp\\: that membership needs \\(3 - t) + (1 - t) = 0\\, so \\t = 2\\. Then \\\underset{\sim}{u} = (2, 2, 0)\\ and \\\underset{\sim}{v} = (1, -1, 2)\\, with \\\underset{\sim}{u} + \underset{\sim}{v} = (3, 1, 2)\\ and
>
> \\ \begin{aligned} (1, 1, 0) \cdot (1, -1, 2) &= 1 - 1 + 0 \\ &= 0. \end{aligned} \\

> **NOTE:**
>
> **Theorem 9 (The orthogonal complement of the orthogonal complement)** For any subspace \\\mathcal{S}\\ of \\\mathbb{R}^p\\,
>
> \\ (\mathcal{S}^\perp)^\perp = \mathcal{S}. \\

> **NOTE:**
>
> *Proof*. **\\\mathcal{S} \subseteq (\mathcal{S}^\perp)^\perp\\.** Take \\\underset{\sim}{s} \in \mathcal{S}\\ and any \\\underset{\sim}{v} \in \mathcal{S}^\perp\\. By [Definition 5](#def-orthogonal-complement), \\\underset{\sim}{s} \cdot \underset{\sim}{v} = 0\\, so \\\underset{\sim}{v} \cdot \underset{\sim}{s} = 0\\ too ([Theorem 1 in Vectors](linear-algebra-vectors.llms.md#thm-lincom-symmetric)). So \\\underset{\sim}{s}\\ is orthogonal to every vector of \\\mathcal{S}^\perp\\, that is, \\\underset{\sim}{s} \in (\mathcal{S}^\perp)^\perp\\.
>
> **Equal dimensions.** \\\mathcal{S}^\perp\\ is a subspace ([Theorem 6](#thm-orthogonal-complement-subspace)), so part 2 of [Theorem 8](#thm-orthogonal-direct-sum) applies to it as well as to \\\mathcal{S}\\:
>
> \\ \begin{aligned} \dim\mathopen{}\left((\mathcal{S}^\perp)^\perp\right)\mathclose{} &= p - \dim(\mathcal{S}^\perp) && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~8}}\text{, applied to } \mathcal{S}^\perp \text{)} \\ &= p - \mathopen{}\left(p - \dim(\mathcal{S})\right)\mathclose{} && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~8}}\text{, applied to } \mathcal{S} \text{)} \\ &= \dim(\mathcal{S}). && \text{(arithmetic)} \end{aligned} \\
>
> \\(\mathcal{S}^\perp)^\perp\\ is a subspace ([Theorem 6](#thm-orthogonal-complement-subspace)) that contains \\\mathcal{S}\\ and has the same dimension, so it equals \\\mathcal{S}\\ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim)).

> **NOTE:**
>
> **Example 16 (Back to the line)** In [Example 15](#exm-orthogonal-direct-sum), \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ and \\\mathcal{S}^\perp = \operatorname{span}\mathopen{}\left\\(1, -1, 0), (0, 0, 1)\right\\\mathclose{}\\. Put those two spanning vectors in the columns of the \\3 \times 2\\ matrix \\\mathbf{B} = \begin{bmatrix} 1 & 0 \\ -1 & 0 \\ 0 & 1 \end{bmatrix}\\, so \\\mathcal{S}^\perp = \mathcal{C}(\mathbf{B})\\ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)) and \\(\mathcal{S}^\perp)^\perp = \mathcal{N}({\mathbf{B}}^{\top})\\ ([Theorem 7](#thm-complement-null-space)). Since \\{\mathbf{B}}^{\top} \underset{\sim}{w} = (w_1 - w_2,\\ w_3)\\ ([Definition 13 in Matrices](linear-algebra-matrices.llms.md#def-matvec-mult)), \\\underset{\sim}{w} \in (\mathcal{S}^\perp)^\perp\\ exactly when \\w_1 - w_2 = 0\\ and \\w_3 = 0\\. So
>
> \\ \begin{aligned} (\mathcal{S}^\perp)^\perp &= \mathopen{}\left\\(a, a, 0) : a \in \mathbb{R}\right\\\mathclose{} \\ &= \mathcal{S}. \end{aligned} \\

> **NOTE:**
>
> **Example 17 (A set that is not a subspace does not come back)** The one-element set \\\mathcal{X} = \mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ is not a subspace. Its orthogonal complement is the same as that of \\\mathcal{S}\\ in [Example 16](#exm-double-complement), since both are defined by the single condition \\u_1 + u_2 = 0\\, so \\(\mathcal{X}^\perp)^\perp = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\, which contains \\(2, 2, 0) \notin \mathcal{X}\\. [Theorem 9](#thm-double-complement) needs \\\mathcal{S}\\ to be a subspace.

## 3 The fundamental theorem of linear algebra

> **NOTE:**
>
> **Theorem 10 (Fundamental theorem of linear algebra)** Let \\\mathbf{A}\\ be an \\m \times n\\ matrix with \\\operatorname{rank}(\mathbf{A}) = r\\. Then
>
> 1.  \\\mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top})\\, and \\\mathbb{R}^m = \mathcal{C}(\mathbf{A}) \oplus \mathcal{N}({\mathbf{A}}^{\top})\\;
>
> 2.  \\\mathcal{C}(\mathbf{A}) = \mathcal{N}({\mathbf{A}}^{\top})^\perp\\;
>
> 3.  \\\mathcal{N}(\mathbf{A})^\perp = \mathcal{C}({\mathbf{A}}^{\top})\\, and \\\mathbb{R}^n = \mathcal{C}({\mathbf{A}}^{\top}) \oplus \mathcal{N}(\mathbf{A})\\;
>
> 4.  \\ \begin{aligned} \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} &= \dim\mathopen{}\left(\mathcal{C}({\mathbf{A}}^{\top})\right)\mathclose{} \\ &= r, \end{aligned} \\
>
>     \\\dim\mathopen{}\left(\mathcal{N}(\mathbf{A})\right)\mathclose{} = n - r\\, and \\\dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{} = m - r\\.

> **NOTE:**
>
> *Proof*. **Part 1.** The first equation is [Theorem 7](#thm-complement-null-space). \\\mathcal{C}(\mathbf{A})\\ is a subspace of \\\mathbb{R}^m\\ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)), so
>
> \\ \begin{aligned} \mathbb{R}^m &= \mathcal{C}(\mathbf{A}) \oplus \mathcal{C}(\mathbf{A})^\perp && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~8}}\text{)} \\ &= \mathcal{C}(\mathbf{A}) \oplus \mathcal{N}({\mathbf{A}}^{\top}). && \text{(first equation)} \end{aligned} \\
>
> **Part 2.**
>
> \\ \begin{aligned} \mathcal{C}(\mathbf{A}) &= \mathopen{}\left(\mathcal{C}(\mathbf{A})^\perp\right)\mathclose{}^\perp && \text{(}\href{#thm-double-complement}{\text{Theorem~9}}\text{)} \\ &= \mathcal{N}({\mathbf{A}}^{\top})^\perp. && \text{(part 1)} \end{aligned} \\
>
> **Part 3.** Apply parts 2 and 1 to the \\n \times m\\ matrix \\{\mathbf{A}}^{\top}\\, using \\{({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}\\: part 2 gives \\\mathcal{C}({\mathbf{A}}^{\top}) = \mathcal{N}(\mathbf{A})^\perp\\, and part 1 gives \\\mathbb{R}^n = \mathcal{C}({\mathbf{A}}^{\top}) \oplus \mathcal{N}(\mathbf{A})\\.
>
> **Part 4.** \\\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = r\\ by [Theorem 7 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-dim). \\\dim\mathopen{}\left(\mathcal{C}({\mathbf{A}}^{\top})\right)\mathclose{} = \operatorname{rank}({\mathbf{A}}^{\top})\\ by [Theorem 7 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-dim), and that is \\r\\ by [Theorem 10 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-transpose). \\\mathbf{A}\\ has \\n\\ columns, so \\\dim\mathopen{}\left(\mathcal{N}(\mathbf{A})\right)\mathclose{} = n - r\\ ([Definition 7 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-nullity), [Theorem 8 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-nullity)). \\{\mathbf{A}}^{\top}\\ has \\m\\ columns and rank \\r\\, so \\\dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{} = m - r\\ in the same way.

> **NOTE:**
>
> **Example 18 (The four subspaces of the matrix in [Example 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-column-space))** For \\\mathbf{A}\\ in [Example 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-column-space), \\m = 2\\, \\n = 3\\ and \\r = 1\\ ([Example 11 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-rank-dim)).
>
> - **In \\\mathbb{R}^3\\:** the row space \\\mathcal{C}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(1, -2, -2)\right\\\mathclose{}\\
>
>   1.  has dimension \\1 = r\\, and \\\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\ has dimension \\2 = n - r\\ ([Example 12 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-nullity)). The spanning vectors are orthogonal:
>
>   \\ \begin{aligned} (1, -2, -2) \cdot (2, 1, 0) &= 2 - 2 + 0 \\ &= 0 \end{aligned} \\
>
>   and
>
>   \\ \begin{aligned} (1, -2, -2) \cdot (2, 0, 1) &= 2 + 0 - 2 \\ &= 0. \end{aligned} \\
>
> - **In \\\mathbb{R}^2\\:** \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\ has dimension \\1 = r\\, and \\\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(-3, 1)\right\\\mathclose{}\\ has dimension \\1 = m - r\\ ([Example 14](#exm-complement-null-space)).
>
> By part 3, \\\underset{\sim}{y} = (1, 0, 0)\\ splits uniquely into a row-space part \\t\\(1, -2, -2)\\ and a null-space part. The null-space part \\\underset{\sim}{y} - t\\(1, -2, -2)\\ lies in \\\mathcal{N}(\mathbf{A})\\ (part 3), and \\\mathcal{N}(\mathbf{A}) = \mathcal{C}({\mathbf{A}}^{\top})^\perp\\ ([Theorem 7](#thm-complement-null-space) applied to \\{\mathbf{A}}^{\top}\\, with \\{({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}\\), so it must be orthogonal to \\(1, -2, -2)\\:
>
> \\ \begin{aligned} 0 &= (1, -2, -2) \cdot \mathopen{}\left((1, 0, 0) - t\\(1, -2, -2)\right)\mathclose{} && \text{(orthogonality)} \\ &= (1, -2, -2) \cdot \mathopen{}\left(1 \cdot(1, 0, 0) + (-t)\\(1, -2, -2)\right)\mathclose{} && \text{(write the difference as a linear combination)} \\ &= 1 \cdot\mathopen{}\left((1, -2, -2) \cdot (1, 0, 0)\right)\mathclose{} + (-t)\\\mathopen{}\left((1, -2, -2) \cdot (1, -2, -2)\right)\mathclose{} && \text{(}\href{#thm-dot-linear}{\text{Theorem~5}}\text{)} \\ &= 1 \cdot 1 + (-t) \cdot 9 && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)} \\ &= 1 - 9t, && \text{(arithmetic)} \end{aligned} \\
>
> so \\t = \frac{1}{9}\\. The row-space part is \\\mathopen{}\left(\frac{1}{9}, -\frac{2}{9}, -\frac{2}{9}\right)\mathclose{}\\ and the null-space part is \\\mathopen{}\left(\frac{8}{9}, \frac{2}{9}, \frac{2}{9}\right)\mathclose{}\\; as a check, row 1 of \\\mathbf{A}\\ gives \\\frac{8}{9} - 2 \cdot\frac{2}{9} - 2 \cdot\frac{2}{9} = 0\\, and row 2 is \\3\\ times row 1, so \\\mathbf{A}\\ sends the null-space part to \\\underset{\sim}{0}\_2\\.

Back to top

## References

Banerjee, Sudipto, and Anindya Roy. 2014. *Linear Algebra and Matrix Analysis for Statistics*. Vol. 181. Crc Press Boca Raton. <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>.

Zhou, Hua. 2024. *Orthogonal Projections*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/06-orthproj/06-orthproj.html>.
