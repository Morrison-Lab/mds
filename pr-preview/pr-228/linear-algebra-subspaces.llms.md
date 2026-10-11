# Subspaces and Rank

Code

Published

Last modified: 2026-10-10 18:58:14 (PDT)

## 1 Rank

> **NOTE:**
>
> **Definition 1 (Linearly independent vectors)** Vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ of the same length \\p\\ are **linearly independent** if the only numbers \\c_1, \ldots, c_k\\ with
>
> \\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k = \tilde{0}\\
>
> are
>
> \\ \begin{aligned} c_1 &= \cdots \\ &= c_k \\ &= 0. \end{aligned} \\
>
> Vectors that are not linearly independent are **linearly dependent**.

> **NOTE:**
>
> **Example 1 (Independent and dependent pairs of vectors)**  
>
> - \\\tilde{v}\_1 = (1, 0)\\ and \\\tilde{v}\_2 = (1, 1)\\ are linearly independent: \\c_1 \tilde{v}\_1 + c_2 \tilde{v}\_2 = (c_1 + c_2, c_2)\\, which is \\\tilde{0}\\ only if \\c_2 = 0\\ and then \\c_1 = 0\\.
> - \\\tilde{v}\_1 = (1, 2)\\ and \\\tilde{v}\_2 = (2, 4)\\ are not: \\2 \tilde{v}\_1 - \tilde{v}\_2 = \tilde{0}\\.

> **NOTE:**
>
> **Definition 2 (Rank)** The **rank** of a matrix \\\mathbf{A}\\, written \\\operatorname{rank}(\mathbf{A})\\, is the largest number of columns of \\\mathbf{A}\\ that are linearly independent ([Definition 1](#def-linearly-independent)).

> **NOTE:**
>
> **Example 2 (The rank of two \\3 \times 2\\ matrices)** The matrix \\\begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\ has rank \\2\\: if \\c_1 (1, 1, 1) + c_2 (1, 2, 3) = \tilde{0}\\, then subtracting the first entry from the second gives \\c_2 = 0\\, and then \\c_1 = 0\\.
>
> The matrix \\\begin{bmatrix} 1 & 2 \\ 1 & 2 \\ 1 & 2 \end{bmatrix}\\ has rank \\1\\: its second column is twice its first, so the two columns are not linearly independent, but the first column on its own is.

> **NOTE:**
>
> **Definition 3 (Full column rank)** An \\n \times p\\ matrix has **full column rank** if its rank ([Definition 2](#def-rank)) is \\p\\, so that all of its columns are linearly independent.

> **NOTE:**
>
> *Remark 1* (Full column rank needs at least as many rows as columns). In [Example 2](#exm-rank), the first matrix has full column rank: its rank is \\2\\, and it has \\2\\ columns. The second does not, because its rank is \\1\\.
>
> An \\n \times p\\ matrix can have full column rank only when \\p \le n\\, because more than \\n\\ vectors of length \\n\\ are never linearly independent. For example, the \\2 \times 3\\ matrix \\\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}\\ has \\3\\ columns of length \\2\\, and \\1 \cdot(1, 0) + 1 \cdot(0, 1) - 1 \cdot(1, 1) = \tilde{0}\\, with coefficients that are not all zero. So its \\3\\ columns are not linearly independent, and its rank is less than \\3\\.

## 2 Subspaces

> **NOTE:**
>
> This section is adapted from Zhou ([2024](#ref-zhou2024vecsp)), used under the MIT License. The license text is:
>
> > Copyright (c) 2024 ucla-biostat-216
> >
> > Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
> >
> > The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
> >
> > THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

> **NOTE:**
>
> **Definition 4 (Subspace (linear subspace, vector space, linear space))** A set \\\mathcal{S}\\ of vectors in \\\mathbb{R}^p\\ is a **subspace** of \\\mathbb{R}^p\\ if it is not empty and it is closed under vector addition and scalar multiplication:
>
> 1.  if \\\tilde{u} \in \mathcal{S}\\ and \\\tilde{v} \in \mathcal{S}\\, then \\\tilde{u} + \tilde{v} \in \mathcal{S}\\;
> 2.  if \\\tilde{u} \in \mathcal{S}\\ and \\c \in \mathbb{R}\\, then \\c \tilde{u} \in \mathcal{S}\\.
>
> A subspace is also called a **linear subspace**, a **vector space**, or a **linear space**.

> **NOTE:**
>
> **Example 3 (A line through the origin is a subspace)** Let \\\mathcal{S} = \mathopen{}\left\\c\\(1, 2) : c \in \mathbb{R}\right\\\mathclose{}\\, the line in \\\mathbb{R}^2\\ through \\(0, 0)\\ and \\(1, 2)\\.
>
> - **Addition:** \\a\\(1, 2) + b\\(1, 2) = (a + b)\\(1, 2)\\, which is in \\\mathcal{S}\\.
> - **Scalar multiplication:** \\c\\\mathopen{}\left(a\\(1, 2)\right)\mathclose{} = (ca)\\(1, 2)\\, which is in \\\mathcal{S}\\.
>
> So \\\mathcal{S}\\ is a subspace of \\\mathbb{R}^2\\. Two other subspaces of \\\mathbb{R}^p\\ are the set \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ that holds only the zero vector, and \\\mathbb{R}^p\\ itself.

> **NOTE:**
>
> **Example 4 (A line that misses the origin is not a subspace)** Let \\\mathcal{T} = \mathopen{}\left\\(x, 1) : x \in \mathbb{R}\right\\\mathclose{}\\, the horizontal line in \\\mathbb{R}^2\\ at height \\1\\. The vectors \\(0, 1)\\ and \\(2, 1)\\ are in \\\mathcal{T}\\, but their sum \\(2, 2)\\ is not, because its second entry is \\2\\, not \\1\\. So \\\mathcal{T}\\ is not closed under addition, and it is not a subspace.

> **NOTE:**
>
> **Theorem 1 (Every subspace contains the zero vector)** If \\\mathcal{S}\\ is a subspace of \\\mathbb{R}^p\\ ([Definition 4](#def-subspace)), then \\\tilde{0}\in \mathcal{S}\\.

> **NOTE:**
>
> *Proof*. A subspace is not empty, so it contains some vector \\\tilde{u}\\. Closure under scalar multiplication with \\c = 0\\ puts \\0 \cdot\tilde{u}\\ in \\\mathcal{S}\\, and \\0 \cdot\tilde{u} = \tilde{0}\\.

> **NOTE:**
>
> **Example 5 (Using the zero vector to rule out a subspace)** The plane \\\mathopen{}\left\\(x, y, z) : x + y + z = 1\right\\\mathclose{}\\ in \\\mathbb{R}^3\\ does not contain \\\tilde{0}= (0, 0, 0)\\, because \\0 + 0 + 0 = 0 \neq 1\\. So, by [Theorem 1](#thm-subspace-zero), it is not a subspace. The line \\\mathcal{T}\\ in [Example 4](#exm-not-subspace) fails the same test: \\(0, 0)\\ is not in \\\mathcal{T}\\, because its second entry is not \\1\\.
>
> Containing \\\tilde{0}\\ is necessary but not sufficient. The union of the two coordinate axes in \\\mathbb{R}^2\\, \\\mathopen{}\left\\(x, 0) : x \in \mathbb{R}\right\\\mathclose{} \cup \mathopen{}\left\\(0, y) : y \in \mathbb{R}\right\\\mathclose{}\\, contains \\\tilde{0}\\, but \\(1, 0) + (0, 1) = (1, 1)\\ lies on neither axis, so the union is not closed under addition and is not a subspace.

> **NOTE:**
>
> **Definition 5 (Span)** The **span** of vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k \in \mathbb{R}^p\\ is the set of all their linear combinations:
>
> \\ \operatorname{span}\mathopen{}\left\\\tilde{v}\_1, \ldots, \tilde{v}\_k\right\\\mathclose{} \stackrel{\text{def}}{=} \mathopen{}\left\\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k : c_1, \ldots, c_k \in \mathbb{R}\right\\\mathclose{}. \\
>
> The vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ **span** a set \\\mathcal{S}\\ if their span equals \\\mathcal{S}\\.
>
> By convention, the span of the empty list (\\k = 0\\) is \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, and the empty list counts as linearly independent ([Definition 1](#def-linearly-independent)), since it has no coefficients that could fail to be zero.

> **NOTE:**
>
> **Example 6 (Two spans in \\\mathbb{R}^3\\)**  
>
> - \\\operatorname{span}\mathopen{}\left\\(1, 0, 0), (0, 1, 0)\right\\\mathclose{}\\ is the set of vectors \\(c_1, c_2, 0)\\, the plane \\z = 0\\ in \\\mathbb{R}^3\\.
> - \\\operatorname{span}\mathopen{}\left\\(1, 2, 3), (2, 4, 6)\right\\\mathclose{}\\ is only the line \\\mathopen{}\left\\c\\(1, 2, 3) : c \in \mathbb{R}\right\\\mathclose{}\\, because \\(2, 4, 6) = 2\\(1, 2, 3)\\, so \\c_1 (1, 2, 3) + c_2 (2, 4, 6) = (c_1 + 2 c_2)\\(1, 2, 3)\\. Adding a vector to a list does not always enlarge its span.

> **NOTE:**
>
> **Theorem 2 (A span is a subspace)** For any vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k \in \mathbb{R}^p\\, \\\operatorname{span}\mathopen{}\left\\\tilde{v}\_1, \ldots, \tilde{v}\_k\right\\\mathclose{}\\ ([Definition 5](#def-span)) is a subspace of \\\mathbb{R}^p\\ ([Definition 4](#def-subspace)).

> **NOTE:**
>
> *Proof*. The span is not empty: it contains \\0 \cdot\tilde{v}\_1 + \cdots + 0 \cdot\tilde{v}\_k = \tilde{0}\\.
>
> **Addition.** Take two vectors in the span, \\\tilde{u} = a_1 \tilde{v}\_1 + \cdots + a_k \tilde{v}\_k\\ and \\\tilde{w} = b_1 \tilde{v}\_1 + \cdots + b_k \tilde{v}\_k\\. Then
>
> \\ \begin{aligned} \tilde{u} + \tilde{w} &= (a_1 \tilde{v}\_1 + \cdots + a_k \tilde{v}\_k) + (b_1 \tilde{v}\_1 + \cdots + b_k \tilde{v}\_k) && \text{(substitute the two combinations)} \\ &= (a_1 + b_1)\\\tilde{v}\_1 + \cdots + (a_k + b_k)\\\tilde{v}\_k && \text{(regroup, and distribute each } \tilde{v}\_i \text{)} \end{aligned} \\
>
> which is a linear combination of \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\, so it is in the span.
>
> **Scalar multiplication.** For \\c \in \mathbb{R}\\,
>
> \\ \begin{aligned} c\\\tilde{u} &= c\\(a_1 \tilde{v}\_1 + \cdots + a_k \tilde{v}\_k) && \text{(substitute the combination)} \\ &= (c a_1)\\\tilde{v}\_1 + \cdots + (c a_k)\\\tilde{v}\_k && \text{(distribute } c \text{ over the sum)} \end{aligned} \\
>
> which is again in the span.

> **NOTE:**
>
> **Example 7 (The line in [Example 3](#exm-subspace) is a span)** The line \\\mathcal{S} = \mathopen{}\left\\c\\(1, 2) : c \in \mathbb{R}\right\\\mathclose{}\\ in [Example 3](#exm-subspace) is \\\operatorname{span}\mathopen{}\left\\(1, 2)\right\\\mathclose{}\\, so [Theorem 2](#thm-span-subspace) gives a second [proof](notation.llms.md#def-proof) that it is a subspace. Likewise, the plane \\z = 0\\ in [Example 6](#exm-span) is a subspace of \\\mathbb{R}^3\\, because it is \\\operatorname{span}\mathopen{}\left\\(1, 0, 0), (0, 1, 0)\right\\\mathclose{}\\.

> **NOTE:**
>
> **Theorem 3 (A matrix-vector product combines the columns)** If \\\mathbf{A}\\ is an \\m \times n\\ matrix with columns \\\tilde{a}\_1, \ldots, \tilde{a}\_n\\ and \\\tilde{x} \in \mathbb{R}^n\\, then
>
> \\ \mathbf{A} \tilde{x} = x_1 \tilde{a}\_1 + \cdots + x_n \tilde{a}\_n. \\

> **NOTE:**
>
> *Proof*. Compare entry \\i\\ of the two sides, for each \\i = 1, \ldots, m\\. Entry \\i\\ of \\\tilde{a}\_j\\ is \\a\_{ij}\\, so
>
> \\ \begin{aligned} (\mathbf{A} \tilde{x})\_i &= a\_{i1} x_1 + \cdots + a\_{in} x_n && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \\ &= x_1 a\_{i1} + \cdots + x_n a\_{in} && \text{(multiplication of numbers is commutative)} \\ &= (x_1 \tilde{a}\_1 + \cdots + x_n \tilde{a}\_n)\_i && \text{(entry } i \text{ of each } x_j \tilde{a}\_j \text{ is } x_j a\_{ij} \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 8 (A product as a combination of columns)** \\ \begin{aligned} \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \begin{bmatrix} 1 \\ -1 \end{bmatrix} &= 1 \cdot\begin{bmatrix} 1 \\ 3 \end{bmatrix} + (-1) \cdot\begin{bmatrix} 2 \\ 4 \end{bmatrix} && \text{(}\href{#thm-matvec-columns}{\text{Theorem~3}}\text{)} \\ &= \begin{bmatrix} -1 \\ -1 \end{bmatrix}, && \text{(arithmetic)} \end{aligned} \\
>
> the same answer as computing each entry as a row-times-vector dot product ([Remark 3 in Matrices](linear-algebra-matrices.llms.md#rem-matvec-row-dot-products)).

> **NOTE:**
>
> **Theorem 4 (A matrix maps a combination to the same combination of images)** If \\\mathbf{A}\\ is an \\m \times n\\ matrix, \\\tilde{z}\_1, \ldots, \tilde{z}\_k \in \mathbb{R}^n\\ and \\c_1, \ldots, c_k \in \mathbb{R}\\, then
>
> \\ \mathbf{A}\\(c_1 \tilde{z}\_1 + \cdots + c_k \tilde{z}\_k) = c_1\\\mathbf{A} \tilde{z}\_1 + \cdots + c_k\\\mathbf{A} \tilde{z}\_k. \\

> **NOTE:**
>
> *Proof*. The function \\\tilde{x}\mapsto \mathbf{A}\tilde{x}\\ is a linear map by [Theorem 9 in Matrices](linear-algebra-matrices.llms.md#thm-matrix-map-linear), and a linear map preserves linear combinations by [Theorem 10 in Matrices](linear-algebra-matrices.llms.md#thm-linear-map-lincom). Applying that theorem with \\f(\tilde{x}) = \mathbf{A}\tilde{x}\\ and \\\tilde{v}\_i = \tilde{z}\_i\\ gives the identity.

> **NOTE:**
>
> **Example 9 (Applying a matrix to a combination)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\\, \\\tilde{z}\_1 = (1, 0)\\ and \\\tilde{z}\_2 = (0, 1)\\. Then \\\mathbf{A} \tilde{z}\_1 = (1, 3)\\ and \\\mathbf{A} \tilde{z}\_2 = (2, 4)\\, and for the combination \\2 \tilde{z}\_1 - \tilde{z}\_2 = (2, -1)\\:
>
> \\ \begin{aligned} \mathbf{A}\\(2, -1) &= (1 \cdot 2 + 2 \cdot(-1),\\ 3 \cdot 2 + 4 \cdot(-1)) && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \\ &= (0, 2) && \text{(arithmetic)} \\ &= 2\\(1, 3) - (2, 4), && \text{(arithmetic)} \end{aligned} \\
>
> which is \\2\\\mathbf{A} \tilde{z}\_1 - \mathbf{A} \tilde{z}\_2\\, as [Theorem 4](#thm-matvec-linear) says.

> **NOTE:**
>
> **Theorem 5 (More than \\p\\ vectors in \\\mathbb{R}^p\\ are linearly dependent)** If \\k \> p\\, then any \\k\\ vectors \\\tilde{v}\_1, \ldots, \tilde{v}\_k \in \mathbb{R}^p\\ are not linearly independent ([Definition 1](#def-linearly-independent)): some numbers \\c_1, \ldots, c_k\\, not all zero, satisfy \\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k = \tilde{0}\_p\\.

> **NOTE:**
>
> *Proof*. [Induction](proof-writing.llms.md#def-proof-by-induction) on \\p\\.
>
> **Base case, \\p = 1\\.** Each \\\tilde{v}\_i\\ is a single number \\v_i\\, and \\k \ge 2\\. If \\v_1 = 0\\, take \\c_1 = 1\\ and every other \\c_i = 0\\. Otherwise take \\c_1 = v_2\\, \\c_2 = -v_1\\ and every other \\c_i = 0\\; then \\c_2 \neq 0\\, and \\v_2 v_1 - v_1 v_2 = 0\\.
>
> **Inductive step.** Let \\p \ge 2\\, assume the [theorem](notation.llms.md#def-theorem) holds for vectors in \\\mathbb{R}^{p-1}\\, and take \\k \> p\\ vectors in \\\mathbb{R}^p\\. Write \\v\_{i,p}\\ for the last entry of \\\tilde{v}\_i\\.
>
> *Case 1: every \\v\_{i,p} = 0\\.* Deleting the last entry gives \\k \> p - 1\\ vectors in \\\mathbb{R}^{p-1}\\, which by the inductive hypothesis have a combination with coefficients not all zero that equals \\\tilde{0}\_{p-1}\\. The same coefficients combine the original vectors to \\\tilde{0}\_p\\, since every last entry is \\0\\.
>
> *Case 2: some \\v\_{i,p} \neq 0\\.* Renumber the vectors so that \\v\_{k,p} \neq 0\\, and for \\i = 1, \ldots, k-1\\ let
>
> \\ \tilde{w}\_i \stackrel{\text{def}}{=}\tilde{v}\_i - \frac{v\_{i,p}}{v\_{k,p}}\\\tilde{v}\_k. \\
>
> The last entry of \\\tilde{w}\_i\\ is \\v\_{i,p} - \frac{v\_{i,p}}{v\_{k,p}}\\v\_{k,p} = 0\\. Deleting that zero last entry gives \\k - 1 \> p - 1\\ vectors in \\\mathbb{R}^{p-1}\\, so by the inductive hypothesis there are numbers \\c_1, \ldots, c\_{k-1}\\, not all zero, whose combination of the shortened vectors is \\\tilde{0}\_{p-1}\\. Putting the zero last entries back gives \\c_1 \tilde{w}\_1 + \cdots + c\_{k-1} \tilde{w}\_{k-1} = \tilde{0}\_p\\. Then
>
> \\ \begin{aligned} \tilde{0}\_p &= c_1 \tilde{w}\_1 + \cdots + c\_{k-1} \tilde{w}\_{k-1} && \text{(choice of } c_1, \ldots, c\_{k-1} \text{)} \\ &= \sum\_{i=1}^{k-1} c_i \mathopen{}\left(\tilde{v}\_i - \frac{v\_{i,p}}{v\_{k,p}}\\\tilde{v}\_k\right)\mathclose{} && \text{(definition of } \tilde{w}\_i \text{)} \\ &= \sum\_{i=1}^{k-1} c_i \tilde{v}\_i - \sum\_{i=1}^{k-1} \frac{c_i v\_{i,p}}{v\_{k,p}}\\\tilde{v}\_k && \text{(distribute each } c_i \text{, and split the sum)} \\ &= c_1 \tilde{v}\_1 + \cdots + c\_{k-1} \tilde{v}\_{k-1} - \mathopen{}\left(\sum\_{i=1}^{k-1} \frac{c_i v\_{i,p}}{v\_{k,p}}\right)\mathclose{}\\\tilde{v}\_k, && \text{(factor } \tilde{v}\_k \text{ out of the second sum)} \end{aligned} \\
>
> a combination of \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ equal to \\\tilde{0}\_p\\ whose first \\k - 1\\ coefficients are not all zero.

> **NOTE:**
>
> **Example 10 (Three vectors in \\\mathbb{R}^2\\)** [Theorem 5](#thm-many-vectors-dependent) says the three vectors \\(1, 0)\\, \\(0, 1)\\ and \\(1, 1)\\ in \\\mathbb{R}^2\\ are linearly dependent, and indeed \\1 \cdot(1, 0) + 1 \cdot(0, 1) - 1 \cdot(1, 1) = (0, 0)\\. The theorem says nothing about \\k \le p\\ vectors: \\(1, 0)\\ and \\(0, 1)\\ are linearly independent, while \\(1, 2)\\ and \\(2, 4)\\ are not ([Example 1](#exm-linearly-independent)).

> **NOTE:**
>
> **Definition 6 (Basis)** A **basis** of a subspace \\\mathcal{S}\\ ([Definition 4](#def-subspace)) is a list of vectors that are linearly independent ([Definition 1](#def-linearly-independent)) and span \\\mathcal{S}\\ ([Definition 5](#def-span)).

> **NOTE:**
>
> **Example 11 (Two bases of \\\mathbb{R}^2\\)**  
>
> - \\(1, 0)\\ and \\(0, 1)\\ form a basis of \\\mathbb{R}^2\\: they are linearly independent, and any \\(x, y) \in \mathbb{R}^2\\ equals \\x\\(1, 0) + y\\(0, 1)\\.
> - \\(1, 0)\\ and \\(1, 1)\\ also form a basis of \\\mathbb{R}^2\\: [Example 1](#exm-linearly-independent) shows they are linearly independent, and any \\(x, y)\\ equals \\(x - y)\\(1, 0) + y\\(1, 1)\\, because \\(x - y) + y = x\\ in the first entry and \\0 + y = y\\ in the second.

> **NOTE:**
>
> **Example 12 (Lists that are not bases of \\\mathbb{R}^2\\)**  
>
> - \\(1, 0)\\ and \\(2, 0)\\ are not a basis of \\\mathbb{R}^2\\. They are not linearly independent, since \\2\\(1, 0) - (2, 0) = \tilde{0}\\, and they do not span \\\mathbb{R}^2\\: every combination \\c_1 (1, 0) + c_2 (2, 0)\\ has second entry \\0\\, so \\(0, 1)\\ is not in their span.
> - \\(1, 0)\\, \\(0, 1)\\ and \\(1, 1)\\ span \\\mathbb{R}^2\\, but they are not a basis: \\(1, 0) + (0, 1) - (1, 1) = \tilde{0}\\, so they are not linearly independent.

> **NOTE:**
>
> **Theorem 6 (Coefficients in a basis are unique)** If \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ is a basis of a subspace \\\mathcal{S}\\ ([Definition 6](#def-basis)), then every \\\tilde{x} \in \mathcal{S}\\ is a linear combination \\\tilde{x} = c_1 \tilde{a}\_1 + \cdots + c_k \tilde{a}\_k\\ for exactly one list of numbers \\c_1, \ldots, c_k\\.

> **NOTE:**
>
> *Proof*. At least one such list exists, because the basis spans \\\mathcal{S}\\ ([Definition 5](#def-span)).
>
> Suppose two lists both work:
>
> \\ \begin{aligned} c_1 \tilde{a}\_1 + \cdots + c_k \tilde{a}\_k &= \tilde{x} \\ &= d_1 \tilde{a}\_1 + \cdots + d_k \tilde{a}\_k. \end{aligned} \\
>
> Subtracting the right side from the left side gives
>
> \\ \begin{aligned} \tilde{0} &= (c_1 \tilde{a}\_1 + \cdots + c_k \tilde{a}\_k) - (d_1 \tilde{a}\_1 + \cdots + d_k \tilde{a}\_k) && \text{(both combinations equal } \tilde{x} \text{)} \\ &= (c_1 - d_1)\\\tilde{a}\_1 + \cdots + (c_k - d_k)\\\tilde{a}\_k && \text{(regroup, and distribute each } \tilde{a}\_i \text{)} \end{aligned} \\
>
> Because \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ are linearly independent ([Definition 1](#def-linearly-independent)), every coefficient \\c_i - d_i\\ is \\0\\, so \\c_i = d_i\\ for each \\i\\.

> **NOTE:**
>
> **Example 13 (Coefficients of \\(3, 5)\\ in two bases)** In the basis \\(1, 0), (0, 1)\\ of [Example 11](#exm-basis), \\(3, 5) = 3\\(1, 0) + 5\\(0, 1)\\, and no other coefficients work. In the basis \\(1, 0), (1, 1)\\, the formula in [Example 11](#exm-basis) gives
>
> \\ \begin{aligned} (3, 5) &= (3 - 5)\\(1, 0) + 5\\(1, 1) \\ &= -2\\(1, 0) + 5\\(1, 1). \end{aligned} \\
>
> The same vector has different coefficients in different bases, but within one basis its coefficients are unique.
>
> The list \\(1, 0), (0, 1), (1, 1)\\ in [Example 12](#exm-not-basis) spans \\\mathbb{R}^2\\ but is not linearly independent, and the coefficients of \\(3, 5)\\ are not unique:
>
> \\ \begin{aligned} (3, 5) &= 3\\(1, 0) + 5\\(0, 1) + 0\\(1, 1) \\ &= 0\\(1, 0) + 2\\(0, 1) + 3\\(1, 1). \end{aligned} \\

> **NOTE:**
>
> **Definition 7 (Coordinates in a basis)** Let \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ be a basis of a subspace \\\mathcal{S}\\ ([Definition 6](#def-basis)), and let \\\tilde{x} \in \mathcal{S}\\. The **coordinates** of \\\tilde{x}\\ in this basis are the numbers \\c_1, \ldots, c_k\\ with \\\tilde{x} = c_1 \tilde{a}\_1 + \cdots + c_k \tilde{a}\_k\\, and \\(c_1, \ldots, c_k) \in \mathbb{R}^k\\ is the **coordinate vector** of \\\tilde{x}\\. By [Theorem 6](#thm-basis-unique) there is exactly one such list of numbers.

> **NOTE:**
>
> **Example 14 (Coordinates of \\(4, 1)\\ in two bases of \\\mathbb{R}^2\\)** In the basis \\(1, 0), (1, 1)\\ of [Example 11](#exm-basis), the coordinates of \\(4, 1)\\ are \\3\\ and \\1\\:
>
> \\ \begin{aligned} 3\\(1, 0) + 1\\(1, 1) &= (3 + 1,\\ 0 + 1) && \text{(}\href{linear-algebra-vectors.qmd#def-linear-combination}{\text{Definition~8 in Vectors}}\text{, entry by entry)} \\ &= (4, 1). && \text{(add)} \end{aligned} \\
>
> In the basis \\(1, 0), (0, 1)\\, its coordinates are its entries, \\4\\ and \\1\\.

> **NOTE:**
>
> **Theorem 7 (All bases of a subspace have the same number of vectors)** If \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ and \\\tilde{b}\_1, \ldots, \tilde{b}\_l\\ are both bases of a subspace \\\mathcal{S}\\ of \\\mathbb{R}^p\\ ([Definition 6](#def-basis)), then \\k = l\\.

> **NOTE:**
>
> *Proof*. Let \\\mathbf{A}\\ be the \\p \times k\\ matrix with columns \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\, and \\\mathbf{B}\\ the \\p \times l\\ matrix with columns \\\tilde{b}\_1, \ldots, \tilde{b}\_l\\.
>
> **Write \\\mathbf{A}\\ in terms of \\\mathbf{B}\\.** Each \\\tilde{a}\_j\\ is in \\\mathcal{S}\\, and the \\\tilde{b}\\’s span \\\mathcal{S}\\ ([Definition 5](#def-span)), so \\\tilde{a}\_j = \mathbf{B} \tilde{c}\_j\\ for some \\\tilde{c}\_j \in \mathbb{R}^l\\ ([Definition 11 in Matrices](linear-algebra-matrices.llms.md#def-matvec-mult)). Let \\\mathbf{C}\\ be the \\l \times k\\ matrix with columns \\\tilde{c}\_1, \ldots, \tilde{c}\_k\\. Then \\\underbrace{\mathbf{A}}\_{p \times k} = \underbrace{\mathbf{B}}\_{p \times l}\\\underbrace{\mathbf{C}}\_{l \times k}\\, because column \\j\\ of \\\mathbf{B} \mathbf{C}\\ is \\\mathbf{B} \tilde{c}\_j\\.
>
> **The columns of \\\mathbf{C}\\ are linearly independent.** Suppose \\\mathbf{C} \tilde{x} = \tilde{0}\\ for some \\\tilde{x} \in \mathbb{R}^k\\. Then
>
> \\ \begin{aligned} \mathbf{A} \tilde{x} &= (\mathbf{B} \mathbf{C})\\\tilde{x} && \text{(substitute } \mathbf{A} = \mathbf{B} \mathbf{C} \text{)} \\ &= \mathbf{B}\\(\mathbf{C} \tilde{x}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{B}\\\tilde{0} && \text{(substitute } \mathbf{C} \tilde{x} = \tilde{0}\text{)} \\ &= \tilde{0} && \text{(a matrix times the zero vector is } \tilde{0}\text{)} \end{aligned} \\
>
> \\\mathbf{A} \tilde{x}\\ is the combination \\x_1 \tilde{a}\_1 + \cdots + x_k \tilde{a}\_k\\ ([Theorem 3](#thm-matvec-columns)), and the \\\tilde{a}\\’s are linearly independent ([Definition 1](#def-linearly-independent)), so \\\tilde{x} = \tilde{0}\\. So the only combination of the columns of \\\mathbf{C}\\ that equals \\\tilde{0}\\ has all coefficients \\0\\.
>
> **Count.** \\\mathbf{C}\\ has \\k\\ linearly independent columns of length \\l\\. More than \\l\\ vectors in \\\mathbb{R}^l\\ are never linearly independent ([Theorem 5](#thm-many-vectors-dependent)), so \\k \le l\\. Exchanging the roles of the two bases gives \\l \le k\\, so \\k = l\\.

> **NOTE:**
>
> **Example 15 (Both bases of \\\mathbb{R}^2\\ in [Example 11](#exm-basis) have two vectors)** The bases \\(1, 0), (0, 1)\\ and \\(1, 0), (1, 1)\\ of \\\mathbb{R}^2\\ in [Example 11](#exm-basis) both have \\2\\ vectors, as [Theorem 7](#thm-basis-size) requires. So no list of \\3\\ vectors is a basis of \\\mathbb{R}^2\\, which agrees with [Example 12](#exm-not-basis): the list \\(1, 0), (0, 1), (1, 1)\\ spans \\\mathbb{R}^2\\ but is not linearly independent.

> **NOTE:**
>
> **Definition 8 (Dimension)** The **dimension** of a subspace \\\mathcal{S}\\, written \\\dim(\mathcal{S})\\, is the number of vectors in any basis of \\\mathcal{S}\\ ([Definition 6](#def-basis)). [Theorem 7](#thm-basis-size) makes this number well defined. By convention, the empty list is the basis of \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, so \\\dim(\mathopen{}\left\\\tilde{0}\right\\\mathclose{}) = 0\\.

> **NOTE:**
>
> **Example 16 (The dimensions of some subspaces)**  
>
> - \\\dim(\mathopen{}\left\\\tilde{0}\right\\\mathclose{}) = 0\\, by the convention in [Definition 8](#def-dimension).
> - \\\dim(\mathbb{R}^2) = 2\\, by [Example 11](#exm-basis). More generally, \\\dim(\mathbb{R}^p) = p\\: the indicator vectors \\\tilde{e}\_1, \ldots, \tilde{e}\_p\\ ([Definition 12 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)) are linearly independent, since \\c_1 \tilde{e}\_1 + \cdots + c_p \tilde{e}\_p = (c_1, \ldots, c_p)\\, which is \\\tilde{0}\_p\\ only if every \\c_i = 0\\; and they span \\\mathbb{R}^p\\, since any \\\tilde{x} = x_1 \tilde{e}\_1 + \cdots + x_p \tilde{e}\_p\\.
> - The line in [Example 3](#exm-subspace) has dimension \\1\\: the single vector \\(1, 2)\\ is linearly independent and spans the line.
> - The plane \\z = 0\\ in [Example 6](#exm-span) has dimension \\2\\, with basis \\(1, 0, 0), (0, 1, 0)\\.

> **NOTE:**
>
> **Theorem 8 (Adding a vector outside the span keeps a list independent)** If \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ are linearly independent ([Definition 1](#def-linearly-independent)) and \\\tilde{w}\\ is not in \\\operatorname{span}\mathopen{}\left\\\tilde{v}\_1, \ldots, \tilde{v}\_k\right\\\mathclose{}\\ ([Definition 5](#def-span)), then \\\tilde{v}\_1, \ldots, \tilde{v}\_k, \tilde{w}\\ are linearly independent.

> **NOTE:**
>
> *Proof*. Suppose \\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k + d\\\tilde{w} = \tilde{0}\\.
>
> **The coefficient \\d\\ is \\0\\.** If \\d \neq 0\\, then
>
> \\ \begin{aligned} \tilde{w} &= \frac{1}{d}\\\mathopen{}\left(d\\\tilde{w}\right)\mathclose{} && \text{(} d \neq 0 \text{)} \\ &= \frac{1}{d}\\\mathopen{}\left(-c_1 \tilde{v}\_1 - \cdots - c_k \tilde{v}\_k\right)\mathclose{} && \text{(solve the supposed equation for } d\\\tilde{w} \text{)} \\ &= \mathopen{}\left(-\frac{c_1}{d}\right)\mathclose{}\\\tilde{v}\_1 + \cdots + \mathopen{}\left(-\frac{c_k}{d}\right)\mathclose{}\\\tilde{v}\_k, && \text{(distribute } \tfrac{1}{d} \text{)} \end{aligned} \\
>
> which puts \\\tilde{w}\\ in \\\operatorname{span}\mathopen{}\left\\\tilde{v}\_1, \ldots, \tilde{v}\_k\right\\\mathclose{}\\, contrary to the assumption.
>
> **The other coefficients are \\0\\.** With \\d = 0\\, the equation reads \\c_1 \tilde{v}\_1 + \cdots + c_k \tilde{v}\_k = \tilde{0}\\, so every \\c_i = 0\\, because \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ are linearly independent.

> **NOTE:**
>
> **Example 17 (Adding \\(0, 0, 1)\\ to two independent vectors in \\\mathbb{R}^3\\)** The vectors \\(1, 0, 0)\\ and \\(0, 1, 0)\\ are linearly independent, and their span is the plane \\z = 0\\ ([Example 6](#exm-span)). The vector \\(0, 0, 1)\\ has third entry \\1\\, so it is not in that plane, and by [Theorem 8](#thm-add-outside-span) the three vectors \\(1, 0, 0)\\, \\(0, 1, 0)\\, \\(0, 0, 1)\\ are linearly independent. Adding \\(1, 1, 0)\\ instead would not work: \\(1, 1, 0)\\ is in the span, and \\(1, 0, 0) + (0, 1, 0) - (1, 1, 0) = \tilde{0}\\.

> **NOTE:**
>
> **Theorem 9 (An independent list extends to a basis)** If \\\mathcal{S}\\ is a subspace of \\\mathbb{R}^p\\ ([Definition 4](#def-subspace)) and \\\tilde{v}\_1, \ldots, \tilde{v}\_k \in \mathcal{S}\\ are linearly independent ([Definition 1](#def-linearly-independent)), then adding vectors of \\\mathcal{S}\\ to the list gives a basis of \\\mathcal{S}\\ ([Definition 6](#def-basis)). Starting from the empty list shows that every subspace has a basis.

> **NOTE:**
>
> *Proof*. Repeat the following step. If the current list spans \\\mathcal{S}\\, stop: it is linearly independent and spans \\\mathcal{S}\\, so it is a basis. Otherwise, some \\\tilde{w} \in \mathcal{S}\\ is not in the span of the current list; add \\\tilde{w}\\ to the list, which stays linearly independent by [Theorem 8](#thm-add-outside-span).
>
> Every list produced is a linearly independent list of vectors in \\\mathbb{R}^p\\, so it has at most \\p\\ vectors ([Theorem 5](#thm-many-vectors-dependent)). Each step adds one vector, so the process stops after at most \\p - k\\ steps, and when it stops the list is a basis of \\\mathcal{S}\\.
>
> For the empty list, which is linearly independent and spans \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ by the conventions in [Definition 5](#def-span), the first step asks whether \\\mathcal{S} = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\: if so, the empty list is already a basis; if not, the process adds vectors as described.

> **NOTE:**
>
> **Example 18 (Extending \\(1, 1, 0)\\ to a basis of \\\mathbb{R}^3\\)** Start with the single vector \\(1, 1, 0)\\.
>
> 1.  \\(1, 0, 0)\\ is not in \\\operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\, because every multiple \\c\\(1, 1, 0)\\ has equal first and second entries. Add it.
> 2.  \\(0, 0, 1)\\ is not in \\\operatorname{span}\mathopen{}\left\\(1, 1, 0), (1, 0, 0)\right\\\mathclose{}\\, because every combination of those two vectors has third entry \\0\\. Add it.
> 3.  The list \\(1, 1, 0), (1, 0, 0), (0, 0, 1)\\ spans \\\mathbb{R}^3\\: \\(x, y, z) = y\\(1, 1, 0) + (x - y)\\(1, 0, 0) + z\\(0, 0, 1)\\. Stop.
>
> The result is a basis of \\\mathbb{R}^3\\ that contains the starting vector.

> **NOTE:**
>
> **Theorem 10 (An independent list in a subspace has at most \\\dim\\ vectors)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\ with \\\dim(\mathcal{S}) = d\\ ([Definition 8](#def-dimension)).
>
> 1.  Any linearly independent list of vectors in \\\mathcal{S}\\ has at most \\d\\ vectors.
> 2.  If \\\mathcal{T}\\ is a subspace with \\\mathcal{T} \subseteq \mathcal{S}\\, then \\\dim(\mathcal{T}) \le \dim(\mathcal{S})\\.

> **NOTE:**
>
> *Proof*. **Part 1.** If \\d = 0\\, then \\\mathcal{S} = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, so every vector in a nonempty list from \\\mathcal{S}\\ is \\\tilde{0}\\, and \\1 \cdot\tilde{0}= \tilde{0}\\ shows the list is not linearly independent; only the empty list, with \\0 = d\\ vectors, is. Now let \\d \ge 1\\, and let \\\tilde{a}\_1, \ldots, \tilde{a}\_d\\ be a basis of \\\mathcal{S}\\, and let \\\tilde{u}\_1, \ldots, \tilde{u}\_k \in \mathcal{S}\\ be linearly independent. Each \\\tilde{u}\_j\\ is in \\\mathcal{S}\\, so \\\tilde{u}\_j = c\_{1j} \tilde{a}\_1 + \cdots + c\_{dj} \tilde{a}\_d\\ for some coordinate vector \\\tilde{c}\_j = (c\_{1j}, \ldots, c\_{dj}) \in \mathbb{R}^d\\. Suppose \\k \> d\\. Then \\\tilde{c}\_1, \ldots, \tilde{c}\_k\\ are \\k \> d\\ vectors in \\\mathbb{R}^d\\, so some \\x_1, \ldots, x_k\\, not all zero, satisfy \\x_1 \tilde{c}\_1 + \cdots + x_k \tilde{c}\_k = \tilde{0}\_d\\ ([Theorem 5](#thm-many-vectors-dependent)); entry \\i\\ of that equation says \\\sum\_{j=1}^{k} x_j c\_{ij} = 0\\. Then
>
> \\ \begin{aligned} \sum\_{j=1}^{k} x_j \tilde{u}\_j &= \sum\_{j=1}^{k} x_j \sum\_{i=1}^{d} c\_{ij} \tilde{a}\_i && \text{(substitute each } \tilde{u}\_j \text{)} \\ &= \sum\_{j=1}^{k} \sum\_{i=1}^{d} x_j c\_{ij}\\\tilde{a}\_i && \text{(distribute each } x_j \text{ over the inner sum)} \\ &= \sum\_{i=1}^{d} \sum\_{j=1}^{k} x_j c\_{ij}\\\tilde{a}\_i && \text{(swap the order of the finite sums)} \\ &= \sum\_{i=1}^{d} \mathopen{}\left(\sum\_{j=1}^{k} x_j c\_{ij}\right)\mathclose{}\\\tilde{a}\_i && \text{(factor } \tilde{a}\_i \text{ out of the inner sum)} \\ &= \sum\_{i=1}^{d} 0 \cdot\tilde{a}\_i && \text{(entry } i \text{ of } \textstyle\sum_j x_j \tilde{c}\_j = \tilde{0}\_d \text{)} \\ &= \tilde{0}\_p, && \text{(a zero multiple of a vector is } \tilde{0}\text{)} \end{aligned} \\
>
> a combination of \\\tilde{u}\_1, \ldots, \tilde{u}\_k\\ with coefficients not all zero that equals \\\tilde{0}\_p\\. That contradicts their linear independence, so \\k \le d\\.
>
> **Part 2.** \\\mathcal{T}\\ has a basis ([Theorem 9](#thm-extend-basis)) with \\\dim(\mathcal{T})\\ vectors. Those vectors are linearly independent and lie in \\\mathcal{S}\\, so by Part 1 there are at most \\\dim(\mathcal{S})\\ of them.

> **NOTE:**
>
> **Example 19 (Subspaces of a plane have dimension at most two)** The plane \\\mathcal{S} = \mathopen{}\left\\(x, y, 0) : x, y \in \mathbb{R}\right\\\mathclose{}\\ in \\\mathbb{R}^3\\ has dimension \\2\\ ([Example 16](#exm-dimension)). By [Theorem 10](#thm-dim-bound), no three vectors with third entry \\0\\ are linearly independent; for instance, \\(1, 0, 0) + (0, 1, 0) - (1, 1, 0) = \tilde{0}\\. The line \\\mathcal{T} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ lies in \\\mathcal{S}\\, and
>
> \\ \begin{aligned} \dim(\mathcal{T}) &= 1 \\ &\le 2 \\ &= \dim(\mathcal{S}). \end{aligned} \\

> **NOTE:**
>
> **Theorem 11 (A subspace inside another of the same dimension equals it)** If \\\mathcal{T}\\ and \\\mathcal{S}\\ are subspaces of \\\mathbb{R}^p\\ with \\\mathcal{T} \subseteq \mathcal{S}\\ and \\\dim(\mathcal{T}) = \dim(\mathcal{S})\\ ([Definition 8](#def-dimension)), then \\\mathcal{T} = \mathcal{S}\\.

> **NOTE:**
>
> *Proof*. Let \\d = \dim(\mathcal{S})\\, and let \\\tilde{t}\_1, \ldots, \tilde{t}\_d\\ be a basis of \\\mathcal{T}\\ ([Theorem 9](#thm-extend-basis)); it has \\d\\ vectors because \\\dim(\mathcal{T}) = d\\. (When \\d = 0\\ it is the empty list, whose span is \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ by the convention in [Definition 5](#def-span), and the argument is unchanged.) Suppose some \\\tilde{s} \in \mathcal{S}\\ is not in \\\operatorname{span}\mathopen{}\left\\\tilde{t}\_1, \ldots, \tilde{t}\_d\right\\\mathclose{} = \mathcal{T}\\. Then \\\tilde{t}\_1, \ldots, \tilde{t}\_d, \tilde{s}\\ are linearly independent ([Theorem 8](#thm-add-outside-span)), and they are \\d + 1\\ vectors of \\\mathcal{S}\\, which contradicts part 1 of [Theorem 10](#thm-dim-bound). So every vector of \\\mathcal{S}\\ is in \\\mathcal{T}\\, that is, \\\mathcal{S} \subseteq \mathcal{T}\\. Together with \\\mathcal{T} \subseteq \mathcal{S}\\, this inclusion gives \\\mathcal{T} = \mathcal{S}\\.

> **NOTE:**
>
> **Example 20 (Two independent vectors in a plane span it)** Let \\\mathcal{S} = \mathopen{}\left\\(x, y, 0) : x, y \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\, which has dimension \\2\\ ([Example 16](#exm-dimension)), and let \\\mathcal{T} = \operatorname{span}\mathopen{}\left\\(1, 0, 0), (1, 1, 0)\right\\\mathclose{}\\. Both vectors have third entry \\0\\, so \\\mathcal{T} \subseteq \mathcal{S}\\. They are linearly independent: \\c_1 (1, 0, 0) + c_2 (1, 1, 0) = (c_1 + c_2, c_2, 0)\\, which is \\\tilde{0}\\ only if \\c_2 = 0\\ and then \\c_1 = 0\\. So \\\dim(\mathcal{T}) = 2\\, and [Theorem 11](#thm-subspace-equal-dim) gives \\\mathcal{T} = \mathcal{S}\\ without solving for any coefficients. As a check, \\(x, y, 0) = (x - y)\\(1, 0, 0) + y\\(1, 1, 0)\\.

> **NOTE:**
>
> **Example 21 (Equal dimensions without containment)** The lines \\\operatorname{span}\mathopen{}\left\\(1, 0, 0)\right\\\mathclose{}\\ and \\\operatorname{span}\mathopen{}\left\\(0, 1, 0)\right\\\mathclose{}\\ in \\\mathbb{R}^3\\ both have dimension \\1\\, but they are not equal: \\(1, 0, 0)\\ is in the first and not the second. [Theorem 11](#thm-subspace-equal-dim) does not apply, because neither line contains the other.

Back to top

## References

Zhou, Hua. 2024. *Vector Space*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/04-vecsp/04-vecsp.html>.
