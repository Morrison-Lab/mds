# Subspaces and Rank

Code

- [Show All Code](javascript:void(0))

- [Hide All Code](javascript:void(0))

- 

  ------------------------------------------------------------------------

- [View Source](javascript:void(0))

Published

Last modified: 2026-10-09 17:08:02 (PDT)

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
> This section is adapted from Zhou ([2024c](#ref-zhou2024vecsp)), used under the MIT License. The license text is:
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

## 3 Column space and null space

> **NOTE:**
>
> **Definition 9 (Column space (range, image))** The **column space** of an \\m \times n\\ matrix \\\mathbf{A}\\ is
>
> \\ \mathcal{C}(\mathbf{A}) \stackrel{\text{def}}{=} \mathopen{}\left\\\mathbf{A} \tilde{x} : \tilde{x} \in \mathbb{R}^n\right\\\mathclose{}, \\
>
> the set of all vectors \\\mathbf{A} \tilde{x}\\ in \\\mathbb{R}^m\\. It is also called the **range** or **image** of \\\mathbf{A}\\. The **row space** of \\\mathbf{A}\\ is \\\mathcal{C}({\mathbf{A}}^{\top})\\, a set of vectors in \\\mathbb{R}^n\\.

> **NOTE:**
>
> **Example 22 (The column space of a rank-one matrix)** Let
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
> **Theorem 12 (The column space is the span of the columns)** If \\\mathbf{A}\\ is an \\m \times n\\ matrix with columns \\\tilde{a}\_1, \ldots, \tilde{a}\_n\\, then
>
> \\ \mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_n\right\\\mathclose{}, \\
>
> so \\\mathcal{C}(\mathbf{A})\\ is a subspace of \\\mathbb{R}^m\\, and the row space \\\mathcal{C}({\mathbf{A}}^{\top})\\ is a subspace of \\\mathbb{R}^n\\.

> **NOTE:**
>
> *Proof*. By [Theorem 3](#thm-matvec-columns), \\\mathbf{A} \tilde{x} = x_1 \tilde{a}\_1 + \cdots + x_n \tilde{a}\_n\\, and as \\\tilde{x}\\ ranges over \\\mathbb{R}^n\\, the coefficients \\x_1, \ldots, x_n\\ range over all lists of \\n\\ numbers. So the set of all \\\mathbf{A} \tilde{x}\\ ([Definition 9](#def-column-space)) is the set of all linear combinations of the columns, which is their span ([Definition 5](#def-span)). A span is a subspace ([Theorem 2](#thm-span-subspace)). Applying the same argument to \\{\mathbf{A}}^{\top}\\, whose columns are the rows of \\\mathbf{A}\\, shows the row space is a subspace of \\\mathbb{R}^n\\.

> **NOTE:**
>
> **Example 23 (Reading off the column space and row space from the columns and rows)** For \\\mathbf{A}\\ in [Example 22](#exm-column-space), the columns are \\(1, 3)\\, \\(-2, -6) = -2\\(1, 3)\\ and \\(-2, -6) = -2\\(1, 3)\\, so by [Theorem 12](#thm-column-space-span) \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\, the same line found in [Example 22](#exm-column-space). The rows are \\(1, -2, -2)\\ and \\(3, -6, -6) = 3\\(1, -2, -2)\\, so the row space is \\\operatorname{span}\mathopen{}\left\\(1, -2, -2)\right\\\mathclose{}\\, a line in \\\mathbb{R}^3\\.

> **NOTE:**
>
> **Definition 10 (Null space (kernel))** The **null space** of an \\m \times n\\ matrix \\\mathbf{A}\\ is
>
> \\ \mathcal{N}(\mathbf{A}) \stackrel{\text{def}}{=} \mathopen{}\left\\\tilde{x} \in \mathbb{R}^n : \mathbf{A} \tilde{x} = \tilde{0}\_m\right\\\mathclose{}, \\
>
> the set of [solutions](linear-algebra-matrices.llms.md#def-linear-system) of the linear system \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\. It is also called the **kernel** of \\\mathbf{A}\\. The **left null space** of \\\mathbf{A}\\ is \\\mathcal{N}({\mathbf{A}}^{\top})\\, a set of vectors in \\\mathbb{R}^m\\.

> **NOTE:**
>
> **Example 24 (The null space and left null space of a rank-one matrix)** For \\\mathbf{A}\\ in [Example 22](#exm-column-space), \\\mathbf{A} \tilde{x} = (x_1 - 2x_2 - 2x_3,\\ 3\\(x_1 - 2x_2 - 2x_3))\\, so \\\mathbf{A} \tilde{x} = \tilde{0}\_2\\ exactly when \\x_1 = 2x_2 + 2x_3\\. Writing
>
> \\ \begin{aligned} \tilde{x} &= (2x_2 + 2x_3, x_2, x_3) \\ &= x_2\\(2, 1, 0) + x_3\\(2, 0, 1) \end{aligned} \\
>
> shows \\\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\, a plane in \\\mathbb{R}^3\\.
>
> For the left null space, \\{\mathbf{A}}^{\top} \tilde{y} = (y_1 + 3y_2,\\ -2\\(y_1 + 3y_2),\\ -2\\(y_1 + 3y_2))\\, which is \\\tilde{0}\_3\\ exactly when \\y_1 = -3y_2\\, so \\\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(-3, 1)\right\\\mathclose{}\\, a line in \\\mathbb{R}^2\\.

> **NOTE:**
>
> **Theorem 13 (A null space is a subspace)** For any \\m \times n\\ matrix \\\mathbf{A}\\, \\\mathcal{N}(\mathbf{A})\\ ([Definition 10](#def-null-space)) is a subspace of \\\mathbb{R}^n\\ ([Definition 4](#def-subspace)).

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
> **Example 25 (The solutions of \\\mathbf{A} \tilde{x} = \tilde{b}\\ with \\\tilde{b} \neq \tilde{0}\\ are not a subspace)** In [Example 24](#exm-null-space), \\(2, 1, 0)\\ and \\(2, 0, 1)\\ are in \\\mathcal{N}(\mathbf{A})\\, and so is their sum \\(4, 1, 1)\\, since \\4 - 2 \cdot 1 - 2 \cdot 1 = 0\\. By contrast, the solutions of \\\mathbf{A} \tilde{x} = (1, 3)\\ for the same \\\mathbf{A}\\ are the vectors with \\x_1 - 2x_2 - 2x_3 = 1\\. That set does not contain \\\tilde{0}\_3\\, so by [Theorem 1](#thm-subspace-zero) it is not a subspace.

> **NOTE:**
>
> **Theorem 14 (The row space and null space share only the zero vector)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \mathcal{C}({\mathbf{A}}^{\top}) \cap \mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}. \\

> **NOTE:**
>
> *Proof*. Both sets are subspaces, by [Theorem 12](#thm-column-space-span) and [Theorem 13](#thm-null-space-subspace), so both contain \\\tilde{0}\_n\\ ([Theorem 1](#thm-subspace-zero)).
>
> Now take any \\\tilde{x}\\ in both sets. Being in the row space means \\\tilde{x} = {\mathbf{A}}^{\top} \tilde{u}\\ for some \\\tilde{u} \in \mathbb{R}^m\\ ([Definition 9](#def-column-space)), and being in the null space means \\\mathbf{A} \tilde{x} = \tilde{0}\_m\\ ([Definition 10](#def-null-space)). Then
>
> \\ \begin{aligned} {\tilde{x}}^{\top} \tilde{x} &= {({\mathbf{A}}^{\top} \tilde{u})}^{\top}\\\tilde{x} && \text{(substitute } \tilde{x} = {\mathbf{A}}^{\top} \tilde{u} \text{ in the first factor)} \\ &= \mathopen{}\left({\tilde{u}}^{\top}\\{({\mathbf{A}}^{\top})}^{\top}\right)\mathclose{}\\\tilde{x} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= \mathopen{}\left({\tilde{u}}^{\top} \mathbf{A}\right)\mathclose{}\\\tilde{x} && \text{(transposing twice returns the original matrix)} \\ &= {\tilde{u}}^{\top}\\(\mathbf{A} \tilde{x}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= {\tilde{u}}^{\top}\\\tilde{0}\_m && \text{(substitute } \mathbf{A} \tilde{x} = \tilde{0}\_m \text{)} \\ &= 0. && \text{(every term of the inner product is } 0 \text{)} \end{aligned} \\
>
> But \\{\tilde{x}}^{\top} \tilde{x} = x_1^2 + \cdots + x_n^2\\, which is \\0\\ only when every \\x_i = 0\\. So \\\tilde{x} = \tilde{0}\_n\\.

> **NOTE:**
>
> **Example 26 (The row space and null space in [Example 24](#exm-null-space))** For \\\mathbf{A}\\ in [Example 22](#exm-column-space), the row space is \\\operatorname{span}\mathopen{}\left\\(1, -2, -2)\right\\\mathclose{}\\ and the null space is \\\operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\ ([Example 24](#exm-null-space)). A vector \\c\\(1, -2, -2)\\ of the row space is in the null space only if
>
> \\ \begin{aligned} \mathbf{A}\\\mathopen{}\left(c\\(1, -2, -2)\right)\mathclose{} &= c\\\mathopen{}\left(1 - 2 \cdot(-2) - 2 \cdot(-2),\\ 3\\(1 - 2 \cdot(-2) - 2 \cdot(-2))\right)\mathclose{} && \text{(}\href{#exm-null-space}{\text{Example~24}}\text{'s formula for } \mathbf{A} \tilde{x} \text{)} \\ &= c\\(9, 27) && \text{(arithmetic)} \end{aligned} \\
>
> is \\\tilde{0}\_2\\, that is, only if \\c = 0\\. So the two subspaces share only \\\tilde{0}\_3\\.

> **NOTE:**
>
> **Definition 11 (Gram matrix)** The **Gram matrix** of an \\m \times n\\ matrix \\\mathbf{A}\\ is the \\n \times n\\ matrix \\{\mathbf{A}}^{\top} \mathbf{A}\\.

> **NOTE:**
>
> **Example 27 (A Gram matrix and its entries)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \\ 0 & 1 \end{bmatrix}\\, with columns \\\tilde{a}\_1 = (1, 1, 0)\\ and \\\tilde{a}\_2 = (0, 1, 1)\\. Then
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
> **Theorem 15 (\\{\mathbf{A}}^{\top} \mathbf{A}\\ has the same null space as \\\mathbf{A}\\)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
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
> **Example 28 (The null space of a Gram matrix)** For \\\mathbf{A}\\ in [Example 22](#exm-column-space),
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \mathbf{A} &= \begin{bmatrix} 1 & 3 \\ -2 & -6 \\ -2 & -6 \end{bmatrix} \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix} \\ &= \begin{bmatrix} 10 & -20 & -20 \\ -20 & 40 & 40 \\ -20 & 40 & 40 \end{bmatrix}. \end{aligned} \\
>
> Every row is a multiple of \\(1, -2, -2)\\, so \\{\mathbf{A}}^{\top} \mathbf{A} \tilde{x} = \tilde{0}\_3\\ exactly when \\x_1 - 2x_2 - 2x_3 = 0\\, the same condition as for \\\mathcal{N}(\mathbf{A})\\ in [Example 24](#exm-null-space).

## 4 Rank-nullity and rank factorization

> **NOTE:**
>
> This section is adapted from Zhou ([2024b](#ref-zhou2024rank)), used under the MIT License (see the license text in [Section 2](#sec-subspaces)).

> **NOTE:**
>
> **Theorem 16 (The rank is the dimension of the column space)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \operatorname{rank}(\mathbf{A}) = \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{}. \\

> **NOTE:**
>
> *Proof*. Let \\r = \operatorname{rank}(\mathbf{A})\\ ([Definition 2](#def-rank)), and choose \\r\\ linearly independent columns of \\\mathbf{A}\\; by [Definition 2](#def-rank), no larger set of columns is linearly independent. We show the chosen columns are a basis of \\\mathcal{C}(\mathbf{A})\\ ([Definition 6](#def-basis)).
>
> **Every column is in the span of the chosen columns.** A chosen column is in that span trivially. If some unchosen column \\\tilde{a}\_j\\ were not in the span, then adding it to the chosen columns would give \\r + 1\\ linearly independent columns ([Theorem 8](#thm-add-outside-span)), more than \\r\\. So every column of \\\mathbf{A}\\ is in the span of the chosen columns.
>
> **The chosen columns span \\\mathcal{C}(\mathbf{A})\\.** The span of the chosen columns is a subspace ([Theorem 2](#thm-span-subspace)), so it is closed under addition and scalar multiplication, and it contains every linear combination of the columns of \\\mathbf{A}\\. By [Theorem 12](#thm-column-space-span), those combinations make up \\\mathcal{C}(\mathbf{A})\\, so \\\mathcal{C}(\mathbf{A})\\ is contained in the span of the chosen columns. The chosen columns are themselves columns of \\\mathbf{A}\\, so their span is contained in \\\mathcal{C}(\mathbf{A})\\, and the two sets are equal.
>
> The chosen columns are linearly independent and span \\\mathcal{C}(\mathbf{A})\\, so they are a basis of it, and \\\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = r\\ ([Definition 8](#def-dimension)). If \\r = 0\\, every column is \\\tilde{0}\_m\\, \\\mathcal{C}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_m\right\\\mathclose{}\\, and both sides are \\0\\.

> **NOTE:**
>
> **Example 29 (The rank of the matrix in [Example 22](#exm-column-space))** For \\\mathbf{A}\\ in [Example 22](#exm-column-space), \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\ (1), and \\(1, 3)\\ is linearly independent because it is nonzero, so it is a basis and \\\mathcal{C}(\mathbf{A})\\ has dimension \\1\\. So \\\operatorname{rank}(\mathbf{A}) = 1\\, by [Theorem 16](#thm-rank-dim). Directly: the first column \\(1, 3)\\ is linearly independent on its own, and any two columns are dependent, because each column is a multiple of \\(1, 3)\\.

> **NOTE:**
>
> **Definition 12 (Nullity)** The **nullity** of a matrix \\\mathbf{A}\\ is the dimension of its null space ([Definition 10](#def-null-space)):
>
> \\ \operatorname{nullity}(\mathbf{A}) \stackrel{\text{def}}{=}\dim\mathopen{}\left(\mathcal{N}(\mathbf{A})\right)\mathclose{}. \\

> **NOTE:**
>
> **Example 30 (The nullity of the matrix in [Example 22](#exm-column-space))** For \\\mathbf{A}\\ in [Example 22](#exm-column-space), \\\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\ ([Example 24](#exm-null-space)). Those two vectors are linearly independent: \\c_1 (2, 1, 0) + c_2 (2, 0, 1) = (2c_1 + 2c_2, c_1, c_2)\\, which is \\\tilde{0}\_3\\ only if
>
> \\ \begin{aligned} c_1 &= c_2 \\ &= 0. \end{aligned} \\
>
> So they are a basis of \\\mathcal{N}(\mathbf{A})\\, and \\\operatorname{nullity}(\mathbf{A}) = 2\\. The \\2 \times 2\\ identity matrix has nullity \\0\\, because \\\mathbf{I} \tilde{x} = \tilde{x}\\ is \\\tilde{0}\_2\\ only when \\\tilde{x} = \tilde{0}\_2\\.

> **NOTE:**
>
> **Theorem 17 (Rank-nullity theorem)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \operatorname{rank}(\mathbf{A}) + \operatorname{nullity}(\mathbf{A}) = n. \\

> **NOTE:**
>
> *Proof*. Let \\\nu= \operatorname{nullity}(\mathbf{A})\\. Choose a basis \\\tilde{x}\_1, \ldots, \tilde{x}\_\nu\\ of \\\mathcal{N}(\mathbf{A})\\, and extend it to a basis \\\tilde{x}\_1, \ldots, \tilde{x}\_\nu, \tilde{y}\_1, \ldots, \tilde{y}\_{n - \nu}\\ of \\\mathbb{R}^n\\ ([Theorem 9](#thm-extend-basis)); it has \\n\\ vectors, because every basis of \\\mathbb{R}^n\\ has \\\dim(\mathbb{R}^n) = n\\ vectors ([Theorem 7](#thm-basis-size), [Example 16](#exm-dimension)). We show that \\\mathbf{A} \tilde{y}\_1, \ldots, \mathbf{A} \tilde{y}\_{n - \nu}\\ are a basis of \\\mathcal{C}(\mathbf{A})\\, using [Theorem 4](#thm-matvec-linear) to apply \\\mathbf{A}\\ to linear combinations.
>
> **They are linearly independent.** Suppose \\\sum\_{i=1}^{n-\nu} v_i\\\mathbf{A} \tilde{y}\_i = \tilde{0}\_m\\. Then \\\mathbf{A}\\\mathopen{}\left(\sum_i v_i \tilde{y}\_i\right)\mathclose{} = \tilde{0}\_m\\ ([Theorem 4](#thm-matvec-linear)), so \\\sum_i v_i \tilde{y}\_i \in \mathcal{N}(\mathbf{A})\\, and it equals \\\sum\_{j=1}^{\nu} u_j \tilde{x}\_j\\ for some numbers \\u_j\\, since the \\\tilde{x}\_j\\ span \\\mathcal{N}(\mathbf{A})\\. Moving everything to one side,
>
> \\ \sum\_{j=1}^{\nu} (-u_j)\\\tilde{x}\_j + \sum\_{i=1}^{n-\nu} v_i \tilde{y}\_i = \tilde{0}\_n, \\
>
> and because the \\\tilde{x}\\’s and \\\tilde{y}\\’s together form a basis of \\\mathbb{R}^n\\, which is linearly independent, every coefficient is \\0\\; in particular every \\v_i = 0\\.
>
> **They span \\\mathcal{C}(\mathbf{A})\\.** Take any \\\tilde{w} \in \mathcal{C}(\mathbf{A})\\, so \\\tilde{w} = \mathbf{A} \tilde{z}\\ for some \\\tilde{z} \in \mathbb{R}^n\\ ([Definition 9](#def-column-space)). Write \\\tilde{z} = \sum_j a_j \tilde{x}\_j + \sum_i b_i \tilde{y}\_i\\ in the basis of \\\mathbb{R}^n\\. Then
>
> \\ \begin{aligned} \tilde{w} &= \mathbf{A}\\\mathopen{}\left(\sum\_{j=1}^{\nu} a_j \tilde{x}\_j + \sum\_{i=1}^{n-\nu} b_i \tilde{y}\_i\right)\mathclose{} && \text{(substitute } \tilde{z} \text{)} \\ &= \sum\_{j=1}^{\nu} a_j\\\mathbf{A} \tilde{x}\_j + \sum\_{i=1}^{n-\nu} b_i\\\mathbf{A} \tilde{y}\_i && \text{(}\href{#thm-matvec-linear}{\text{Theorem~4}}\text{)} \\ &= \sum\_{j=1}^{\nu} a_j\\\tilde{0}\_m + \sum\_{i=1}^{n-\nu} b_i\\\mathbf{A} \tilde{y}\_i && \text{(each } \tilde{x}\_j \in \mathcal{N}(\mathbf{A}) \text{)} \\ &= \sum\_{i=1}^{n-\nu} b_i\\\mathbf{A} \tilde{y}\_i, && \text{(drop the zero terms)} \end{aligned} \\
>
> a linear combination of \\\mathbf{A} \tilde{y}\_1, \ldots, \mathbf{A} \tilde{y}\_{n-\nu}\\. These vectors are in \\\mathcal{C}(\mathbf{A})\\, so their span is exactly \\\mathcal{C}(\mathbf{A})\\.
>
> So \\\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = n - \nu\\, and \\\operatorname{rank}(\mathbf{A}) = n - \nu\\ by [Theorem 16](#thm-rank-dim).

> **NOTE:**
>
> **Example 31 (Checking rank-nullity on the matrix in [Example 22](#exm-column-space))** The matrix \\\mathbf{A}\\ in [Example 22](#exm-column-space) has \\n = 3\\ columns, rank \\1\\ ([Example 29](#exm-rank-dim)) and nullity \\2\\ ([Example 30](#exm-nullity)), and \\1 + 2 = 3\\. The \\2 \times 2\\ identity matrix has rank \\2\\ and nullity \\0\\ ([Example 30](#exm-nullity)), and \\2 + 0 = 2\\.

> **NOTE:**
>
> **Theorem 18 (Multiplying on the right cannot increase the rank)** If \\\mathbf{A}\\ is \\m \times n\\ and \\\mathbf{B}\\ is \\n \times k\\, then
>
> \\ \operatorname{rank}(\mathbf{A} \mathbf{B}) \le \operatorname{rank}(\mathbf{A}). \\

> **NOTE:**
>
> *Proof*. **\\\mathcal{C}(\mathbf{A} \mathbf{B}) \subseteq \mathcal{C}(\mathbf{A})\\.** Any vector in \\\mathcal{C}(\mathbf{A} \mathbf{B})\\ is \\(\mathbf{A} \mathbf{B})\\\tilde{x}\\ for some \\\tilde{x} \in \mathbb{R}^k\\ ([Definition 9](#def-column-space)), and
>
> \\ \begin{aligned} (\mathbf{A} \mathbf{B})\\\tilde{x} &= \mathbf{A}\\(\mathbf{B} \tilde{x}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \end{aligned} \\
>
> is \\\mathbf{A}\\ times the vector \\\mathbf{B} \tilde{x} \in \mathbb{R}^n\\, so it is in \\\mathcal{C}(\mathbf{A})\\.
>
> **Compare dimensions.** Both column spaces are subspaces ([Theorem 12](#thm-column-space-span)), so
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A} \mathbf{B}) &= \dim\mathopen{}\left(\mathcal{C}(\mathbf{A} \mathbf{B})\right)\mathclose{} && \text{(}\href{#thm-rank-dim}{\text{Theorem~16}}\text{)} \\ &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} && \text{(}\href{#thm-dim-bound}{\text{Theorem~10}}\text{, part 2)} \\ &= \operatorname{rank}(\mathbf{A}). && \text{(}\href{#thm-rank-dim}{\text{Theorem~16}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 32 (A product can lose rank)** Let
>
> \\ \mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}, \qquad \mathbf{B} = \begin{bmatrix} 0 & 0 \\ 1 & 0 \end{bmatrix}, \qquad \mathbf{A} \mathbf{B} = \begin{bmatrix} 1 \cdot 0 + 0 \cdot 1 & 1 \cdot 0 + 0 \cdot 0 \\ 0 \cdot 0 + 0 \cdot 1 & 0 \cdot 0 + 0 \cdot 0 \end{bmatrix} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix}. \\
>
> \\\mathbf{A}\\ has rank \\1\\, but \\\mathbf{A} \mathbf{B}\\ has rank \\0\\, so the inequality in [Theorem 18](#thm-rank-product) can be strict. With the \\2 \times 2\\ identity in place of \\\mathbf{B}\\, \\\mathbf{A} \mathbf{I} = \mathbf{A}\\ keeps rank \\1\\, and the inequality is an equality.

> **NOTE:**
>
> **Theorem 19 (Fundamental theorem of ranks)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A}) &= \operatorname{rank}({\mathbf{A}}^{\top}) \\ &= \operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) \\ &= \operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}). \end{aligned} \\
>
> In particular, the largest number of linearly independent rows of \\\mathbf{A}\\ equals the largest number of linearly independent columns.

> **NOTE:**
>
> *Proof*. **\\\operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) = \operatorname{rank}(\mathbf{A})\\.** Both matrices have \\n\\ columns, and \\\mathcal{N}({\mathbf{A}}^{\top} \mathbf{A}) = \mathcal{N}(\mathbf{A})\\ ([Theorem 15](#thm-null-gram)), so they have the same nullity ([Definition 12](#def-nullity)). Then
>
> \\ \begin{aligned} \operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) &= n - \operatorname{nullity}({\mathbf{A}}^{\top} \mathbf{A}) && \text{(}\href{#thm-rank-nullity}{\text{Theorem~17}}\text{)} \\ &= n - \operatorname{nullity}(\mathbf{A}) && \text{(equal null spaces)} \\ &= \operatorname{rank}(\mathbf{A}). && \text{(}\href{#thm-rank-nullity}{\text{Theorem~17}}\text{)} \end{aligned} \\
>
> **\\\operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}) = \operatorname{rank}({\mathbf{A}}^{\top})\\.** Apply the previous step to the \\n \times m\\ matrix \\{\mathbf{A}}^{\top}\\, using \\{({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}\\.
>
> **Chain the inequalities.**
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A}) &= \operatorname{rank}({\mathbf{A}}^{\top} \mathbf{A}) && \text{(first step)} \\ &\le \operatorname{rank}({\mathbf{A}}^{\top}) && \text{(}\href{#thm-rank-product}{\text{Theorem~18}}\text{, with } {\mathbf{A}}^{\top} \text{ on the left)} \\ &= \operatorname{rank}(\mathbf{A} {\mathbf{A}}^{\top}) && \text{(second step)} \\ &\le \operatorname{rank}(\mathbf{A}). && \text{(}\href{#thm-rank-product}{\text{Theorem~18}}\text{, with } \mathbf{A} \text{ on the left)} \end{aligned} \\
>
> The chain starts and ends at \\\operatorname{rank}(\mathbf{A})\\, so every quantity in it equals \\\operatorname{rank}(\mathbf{A})\\. The columns of \\{\mathbf{A}}^{\top}\\ are the rows of \\\mathbf{A}\\, which gives the statement about rows.

> **NOTE:**
>
> **Example 33 (Four equal ranks)** For \\\mathbf{A}\\ in [Example 22](#exm-column-space), \\\operatorname{rank}(\mathbf{A}) = 1\\ ([Example 29](#exm-rank-dim)). Its transpose \\{\mathbf{A}}^{\top} = \begin{bmatrix} 1 & 3 \\ -2 & -6 \\ -2 & -6 \end{bmatrix}\\ has second column \\3\\ times its first, so its rank is \\1\\. \\{\mathbf{A}}^{\top} \mathbf{A}\\ in [Example 28](#exm-null-gram) has every row a multiple of \\(1, -2, -2)\\, so its rank is \\1\\ too, and
>
> \\ \begin{aligned} \mathbf{A} {\mathbf{A}}^{\top} &= \begin{bmatrix} 1 \cdot 1 + (-2)(-2) + (-2)(-2) & 1 \cdot 3 + (-2)(-6) + (-2)(-6) \\ 3 \cdot 1 + (-6)(-2) + (-6)(-2) & 3 \cdot 3 + (-6)(-6) + (-6)(-6) \end{bmatrix} \\ &= \begin{bmatrix} 9 & 27 \\ 27 & 81 \end{bmatrix}, \end{aligned} \\
>
> whose second column is \\3\\ times its first, so its rank is \\1\\.

> **NOTE:**
>
> **Corollary 1 (The rank is at most the smaller dimension)** For any \\m \times n\\ matrix \\\mathbf{A}\\, \\\operatorname{rank}(\mathbf{A}) \le \min\mathopen{}\left\\m, n\right\\\mathclose{}\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{A}\\ has \\n\\ columns, so at most \\n\\ of them are linearly independent, and \\\operatorname{rank}(\mathbf{A}) \le n\\ ([Definition 2](#def-rank)). Likewise \\{\mathbf{A}}^{\top}\\ has \\m\\ columns, so \\\operatorname{rank}(\mathbf{A}) = \operatorname{rank}({\mathbf{A}}^{\top}) \le m\\ ([Theorem 19](#thm-rank-transpose)).

> **NOTE:**
>
> **Example 34 (A \\2 \times 3\\ matrix has rank at most \\2\\)** By [Corollary 1](#cor-rank-bound), every \\2 \times 3\\ matrix has rank at most \\\min\mathopen{}\left\\2, 3\right\\\mathclose{} = 2\\, even though it has \\3\\ columns. The matrix \\\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}\\ of [Remark 1](#rem-full-column-rank-shape) reaches that bound: its first two columns \\(1, 0)\\ and \\(0, 1)\\ are linearly independent, so its rank is \\2\\.

> **NOTE:**
>
> **Definition 13 (Affine subspace)** An **affine subspace** of \\\mathbb{R}^p\\ is a set of the form
>
> \\ \mathopen{}\left\\\tilde{x}\_0 + \tilde{s} : \tilde{s} \in \mathcal{S}\right\\\mathclose{} \\
>
> for some vector \\\tilde{x}\_0 \in \mathbb{R}^p\\ and some subspace \\\mathcal{S}\\ of \\\mathbb{R}^p\\ ([Definition 4](#def-subspace)): the [image](sets-functions.llms.md#def-image) of \\\mathcal{S}\\ under the translation by \\\tilde{x}\_0\\ ([Definition 16 in Matrices](linear-algebra-matrices.llms.md#def-translation)).

> **NOTE:**
>
> **Example 35 (A line that misses the origin is an affine subspace)** The line \\\mathcal{T} = \mathopen{}\left\\(x, 1) : x \in \mathbb{R}\right\\\mathclose{}\\ of [Example 4](#exm-not-subspace) is not a subspace, but it is an affine subspace, with \\\tilde{x}\_0 = (0, 1)\\ and \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 0)\right\\\mathclose{}\\ ([Definition 5](#def-span)):
>
> \\ \begin{aligned} (0, 1) + c\\(1, 0) &= (0 + c,\\ 1 + 0) && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{, }\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~6 in Vectors}}\text{)} \\ &= (c, 1), && \text{(add)} \end{aligned} \\
>
> and as \\c\\ ranges over \\\mathbb{R}\\, \\(c, 1)\\ ranges over all of \\\mathcal{T}\\. Every subspace \\\mathcal{S}\\ is also an affine subspace, with \\\tilde{x}\_0 = \tilde{0}\\.

> **NOTE:**
>
> **Theorem 20 (A hyperplane is a translated subspace of dimension \\p - 1\\)** Let \\\tilde{w} \in \mathbb{R}^p\\ be nonzero, let \\b \in \mathbb{R}\\, let \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w}^{\top} \tilde{x}+ b = 0\right\\\mathclose{}\\ be the hyperplane with normal vector \\\tilde{w}\\ and offset \\b\\ ([Definition 19 in Matrices](linear-algebra-matrices.llms.md#def-hyperplane)), and let \\\mathcal{H}\_0 = \mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w}^{\top} \tilde{x}= 0\right\\\mathclose{}\\ be the hyperplane with the same normal vector and offset \\0\\.
>
> 1.  \\\mathcal{H}\_0\\ is a subspace of \\\mathbb{R}^p\\ ([Definition 4](#def-subspace)) of dimension \\p - 1\\ ([Definition 8](#def-dimension)).
> 2.  \\\mathcal{H}\\ is not empty, and for any \\\tilde{x}\_0 \in \mathcal{H}\\, \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\_0 + \tilde{s} : \tilde{s} \in \mathcal{H}\_0\right\\\mathclose{}\\, so \\\mathcal{H}\\ is an affine subspace ([Definition 13](#def-affine-subspace)).
> 3.  For any \\\tilde{x}, \tilde{y}\in \mathcal{H}\\, the normal vector is orthogonal to their difference: \\\tilde{w} \perp (\tilde{x}- \tilde{y})\\ ([Definition 13 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)).

> **NOTE:**
>
> *Proof*. Here \\\tilde{w}^{\top}\\ is a \\1 \times p\\ matrix, and \\\tilde{w}^{\top} \tilde{x}= \tilde{w} \cdot \tilde{x}\\ ([Example 6 in Matrices](linear-algebra-matrices.llms.md#exm-dot-product-matmul)).
>
> **Part 1.** \\\mathcal{H}\_0\\ is the null space \\\mathcal{N}(\tilde{w}^{\top})\\ ([Definition 10](#def-null-space)), so it is a subspace ([Theorem 13](#thm-null-space-subspace)). The \\p\\ columns of \\\tilde{w}^{\top}\\ are the numbers \\w_1, \ldots, w_p\\. Some \\w_j \ne 0\\, because \\\tilde{w} \ne \tilde{0}\\, and that column on its own is linearly independent (\\c\\w_j = 0\\ forces \\c = 0\\), so \\\operatorname{rank}(\tilde{w}^{\top}) \ge 1\\ ([Definition 2](#def-rank)); and \\\operatorname{rank}(\tilde{w}^{\top}) \le \min\mathopen{}\left\\1, p\right\\\mathclose{} = 1\\ ([Corollary 1](#cor-rank-bound)). So
>
> \\ \begin{aligned} \dim(\mathcal{H}\_0) &= \operatorname{nullity}(\tilde{w}^{\top}) && \text{(}\href{#def-nullity}{\text{Definition~12}}\text{)} \\ &= p - \operatorname{rank}(\tilde{w}^{\top}) && \text{(}\href{#thm-rank-nullity}{\text{Theorem~17}}\text{, for the } p \text{ columns of } \tilde{w}^{\top} \text{)} \\ &= p - 1. && \text{(the rank is } 1 \text{)} \end{aligned} \\
>
> **Part 2.** \\\tilde{w} \cdot \tilde{w} = w_1^2 + \cdots + w_p^2 \> 0\\, because some \\w_j \ne 0\\. So \\\tilde{x}^\* \stackrel{\text{def}}{=}-\frac{b}{\tilde{w} \cdot \tilde{w}}\\\tilde{w}\\ is defined, and
>
> \\ \begin{aligned} \tilde{w}^{\top} \tilde{x}^\* + b &= -\frac{b}{\tilde{w} \cdot \tilde{w}}\\(\tilde{w}^{\top} \tilde{w}) + b && \text{(homogeneity of } \tilde{x}\mapsto \tilde{w}^{\top} \tilde{x}\text{, }\href{linear-algebra-matrices.qmd#thm-matrix-map-linear}{\text{Theorem~9 in Matrices}}\text{)} \\ &= -b + b && \text{(} \tilde{w}^{\top} \tilde{w} = \tilde{w} \cdot \tilde{w} \text{)} \\ &= 0, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\tilde{x}^\* \in \mathcal{H}\\, and \\\mathcal{H}\\ is not empty. Now take any \\\tilde{x}\_0 \in \mathcal{H}\\, so \\\tilde{w}^{\top} \tilde{x}\_0 = -b\\. For any \\\tilde{x}\in \mathbb{R}^p\\,
>
> \\ \begin{aligned} \tilde{w}^{\top} (\tilde{x}- \tilde{x}\_0) &= \tilde{w}^{\top} \tilde{x}- \tilde{w}^{\top} \tilde{x}\_0 && \text{(}\href{#thm-matvec-linear}{\text{Theorem~4}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= \tilde{w}^{\top} \tilde{x}- (-b) && \text{(} \tilde{x}\_0 \in \mathcal{H} \text{)} \\ &= \tilde{w}^{\top} \tilde{x}+ b, && \text{(arithmetic)} \end{aligned} \\
>
> so \\\tilde{x}\in \mathcal{H}\\ exactly when \\\tilde{x}- \tilde{x}\_0 \in \mathcal{H}\_0\\, that is, exactly when \\\tilde{x}= \tilde{x}\_0 + \tilde{s}\\ with \\\tilde{s} = \tilde{x}- \tilde{x}\_0 \in \mathcal{H}\_0\\. \\\mathcal{H}\_0\\ is a subspace (part 1), so \\\mathcal{H}\\ has the form in [Definition 13](#def-affine-subspace).
>
> **Part 3.** For \\\tilde{x}, \tilde{y}\in \mathcal{H}\\, both \\\tilde{w}^{\top} \tilde{x}\\ and \\\tilde{w}^{\top} \tilde{y}\\ equal \\-b\\, so
>
> \\ \begin{aligned} \tilde{w} \cdot (\tilde{x}- \tilde{y}) &= \tilde{w}^{\top} \tilde{x}- \tilde{w}^{\top} \tilde{y} && \text{(}\href{#thm-matvec-linear}{\text{Theorem~4}}\text{, with coefficients } 1 \text{ and } -1 \text{)} \\ &= (-b) - (-b) && \text{(} \tilde{x}, \tilde{y}\in \mathcal{H} \text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\

> **NOTE:**
>
> **Example 36 (The plane \\x_1 + x_2 + x_3 = 1\\ in \\\mathbb{R}^3\\)** Take \\\tilde{w} = (1, 1, 1)\\ and \\b = -1\\, so \\\mathcal{H} = \mathopen{}\left\\\tilde{x}: x_1 + x_2 + x_3 - 1 = 0\right\\\mathclose{}\\, the plane that [Example 5](#exm-subspace-zero) showed is not a subspace. By part 1, \\\mathcal{H}\_0 = \mathopen{}\left\\\tilde{x}: x_1 + x_2 + x_3 = 0\right\\\mathclose{}\\ is a subspace of dimension \\3 - 1 = 2\\.
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
> **Theorem 21 (Where a hyperplane passes, and its shape in \\\mathbb{R}^2\\ and \\\mathbb{R}^3\\)** Let \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w} \cdot \tilde{x} + b = 0\right\\\mathclose{}\\ be a hyperplane ([Definition 19 in Matrices](linear-algebra-matrices.llms.md#def-hyperplane)).
>
> 1.  \\\mathcal{H}\\ contains the origin \\\tilde{0}\\ exactly when \\b = 0\\.
> 2.  If \\p = 2\\, then \\\mathcal{H}\\ is a line: \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\_0 + t\\\tilde{v} : t \in \mathbb{R}\right\\\mathclose{}\\ for some \\\tilde{x}\_0 \in \mathbb{R}^2\\ and some nonzero \\\tilde{v} \in \mathbb{R}^2\\.
> 3.  If \\p = 3\\, then \\\mathcal{H}\\ is a plane: \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\_0 + s\\\tilde{v}\_1 + t\\\tilde{v}\_2 : s, t \in \mathbb{R}\right\\\mathclose{}\\ for some \\\tilde{x}\_0 \in \mathbb{R}^3\\ and some linearly independent \\\tilde{v}\_1, \tilde{v}\_2 \in \mathbb{R}^3\\.

> **NOTE:**
>
> *Proof*. **Part 1.** Since \\\tilde{w} \cdot \tilde{0} = 0\\,
>
> \\ \begin{aligned} \tilde{w} \cdot \tilde{0} + b &= 0 + b && \text{(the dot product with } \tilde{0}\text{ is } 0 \text{)} \\ &= b, && \text{(@thm-add-ident)} \end{aligned} \\
>
> so \\\tilde{0}\in \mathcal{H}\\ exactly when \\b = 0\\.
>
> **Parts 2 and 3.** By [Theorem 20](#thm-hyperplane-subspace), \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\_0 + \tilde{s} : \tilde{s} \in \mathcal{H}\_0\right\\\mathclose{}\\ for any \\\tilde{x}\_0 \in \mathcal{H}\\, where \\\mathcal{H}\_0\\ is a subspace of \\\mathbb{R}^p\\ of dimension \\p - 1\\.
>
> For \\p = 2\\, \\\mathcal{H}\_0\\ has dimension \\1\\, so it has a basis ([Definition 6](#def-basis)) with one vector \\\tilde{v}\\. That vector is nonzero, and \\\mathcal{H}\_0 = \mathopen{}\left\\t\\\tilde{v} : t \in \mathbb{R}\right\\\mathclose{}\\.
>
> For \\p = 3\\, \\\mathcal{H}\_0\\ has dimension \\2\\, so it has a basis with two vectors \\\tilde{v}\_1\\ and \\\tilde{v}\_2\\. They are linearly independent, and \\\mathcal{H}\_0 = \mathopen{}\left\\s\\\tilde{v}\_1 + t\\\tilde{v}\_2 : s, t \in \mathbb{R}\right\\\mathclose{}\\.

> **NOTE:**
>
> **Example 37 (A line in \\\mathbb{R}^2\\ and a plane in \\\mathbb{R}^3\\, checked on a grid of points)** In \\\mathbb{R}^2\\, take \\\tilde{w} = (1, 1)\\ and \\b = -1\\, the line of [Example 19 in Matrices](linear-algebra-matrices.llms.md#exm-hyperplane). The point \\\tilde{x}\_0 = -\frac{b}{\tilde{w} \cdot \tilde{w}}\\\tilde{w}\\ is on it, and the vector \\\tilde{v} = (-w_2, w_1)\\ is nonzero with \\\tilde{w} \cdot \tilde{v} = 0\\, so it spans the subspace \\\mathcal{H}\_0\\ of [Theorem 20](#thm-hyperplane-subspace). In \\\mathbb{R}^3\\, take \\\tilde{w} = (1, 1, 1)\\ and \\b = -1\\, the plane of [Example 36](#exm-hyperplane-subspace), with the independent vectors \\\tilde{v}\_1 = (1, -1, 0)\\ and \\\tilde{v}\_2 = (0, 1, -1)\\ in \\\mathcal{H}\_0\\. The code evaluates \\\tilde{w} \cdot \tilde{x} + b\\ at the origin and at points \\\tilde{x}\_0 + t\\\tilde{v}\\ and \\\tilde{x}\_0 + s\\\tilde{v}\_1 + t\\\tilde{v}\_2\\.
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
> **Definition 14 (Half-space)** Let \\\mathcal{H} = \mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w} \cdot \tilde{x} + b = 0\right\\\mathclose{}\\ be a hyperplane ([Definition 19 in Matrices](linear-algebra-matrices.llms.md#def-hyperplane)). The two **open half-spaces** of \\\mathcal{H}\\ are
>
> \\ \mathcal{H}^+ \stackrel{\text{def}}{=}\mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w} \cdot \tilde{x} + b \> 0\right\\\mathclose{} \quad \text{and} \quad \mathcal{H}^- \stackrel{\text{def}}{=}\mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : \tilde{w} \cdot \tilde{x} + b \< 0\right\\\mathclose{}. \tag{1}\\
>
> The **closed half-spaces** also include \\\mathcal{H}\\ itself: \\\mathcal{H}^+ \cup \mathcal{H}\\ and \\\mathcal{H}^- \cup \mathcal{H}\\. Every point of \\\mathbb{R}^p\\ is in exactly one of \\\mathcal{H}^+\\, \\\mathcal{H}\\ and \\\mathcal{H}^-\\, because the number \\\tilde{w} \cdot \tilde{x} + b\\ is positive, zero or negative. The vector \\\tilde{w}\\ points into \\\mathcal{H}^+\\: the number \\\tilde{w} \cdot \tilde{x} + b\\ goes up when \\\tilde{x}\\ moves in the direction \\\tilde{w}\\.

> **NOTE:**
>
> *Remark*. Replacing \\(\tilde{w}, b)\\ by \\(-\tilde{w}, -b)\\ describes the same hyperplane but swaps the names \\\mathcal{H}^+\\ and \\\mathcal{H}^-\\. The sign of \\\tilde{w} \cdot \tilde{x} + b\\ tells you which side of the hyperplane \\\tilde{x}\\ is on. A linear classifier uses this sign to assign one of two labels.

> **NOTE:**
>
> **Example 38 (Half-spaces of a line in the plane)** Let \\\mathcal{H}\\ be the line in \\\mathbb{R}^2\\ with \\\tilde{w} = (1, 2)\\ and \\b = -2\\ ([Definition 19 in Matrices](linear-algebra-matrices.llms.md#def-hyperplane)), so \\\mathcal{H} = \mathopen{}\left\\\tilde{x}: x_1 + 2 x_2 - 2 = 0\right\\\mathclose{}\\. Evaluate \\\tilde{w} \cdot \tilde{x} + b\\ at three points ([Definition 14](#def-half-space)):
>
> - At \\(0, 0)\\ it equals \\0 + 0 - 2 = -2 \< 0\\, so \\(0, 0) \in \mathcal{H}^-\\.
> - At \\(2, 0)\\ it equals \\2 + 0 - 2 = 0\\, so \\(2, 0) \in \mathcal{H}\\.
> - At \\(2, 1)\\ it equals \\2 + 2 - 2 = 2 \> 0\\, so \\(2, 1) \in \mathcal{H}^+\\.
>
> Moving from \\(2, 0)\\ in the direction \\\tilde{w} = (1, 2)\\ gives \\(3, 2)\\, where the value is \\3 + 4 - 2 = 5 \> 0\\. So the direction \\\tilde{w}\\ leads into \\\mathcal{H}^+\\.

> **NOTE:**
>
> **Theorem 22 (Differences of points in a hyperplane and in a half-space)** Let \\\tilde{w} \in \mathbb{R}^p\\ be nonzero, let \\b \in \mathbb{R}\\, and let \\\mathcal{H}\\, \\\mathcal{H}^+\\ be the hyperplane and open half-space of [Definition 14](#def-half-space). For a set \\S \subseteq \mathbb{R}^p\\, let \\D(S) \stackrel{\text{def}}{=}\mathopen{}\left\\\tilde{y}- \tilde{x}: \tilde{x}, \tilde{y}\in S\right\\\mathclose{}\\ be the set of differences of its points.
>
> 1.  \\D(\mathcal{H}) = \mathopen{}\left\\\tilde{s} : \tilde{w} \cdot \tilde{s} = 0\right\\\mathclose{}\\, a subspace of dimension \\p - 1\\.
> 2.  \\D(\mathcal{H}^+) = \mathbb{R}^p\\, a subspace of dimension \\p\\.
>
> The same holds for \\\mathcal{H}^-\\.

> **NOTE:**
>
> *Proof*. **Part 1.** Let \\\tilde{x}, \tilde{y}\in \mathcal{H}\\. By [Theorem 20](#thm-hyperplane-subspace) part 3, \\\tilde{w} \cdot (\tilde{y}- \tilde{x}) = 0\\, so \\\tilde{y}- \tilde{x}\in \mathcal{H}\_0 = \mathopen{}\left\\\tilde{s} : \tilde{w} \cdot \tilde{s} = 0\right\\\mathclose{}\\. Conversely, fix any \\\tilde{x}\_0 \in \mathcal{H}\\ (it exists by [Theorem 20](#thm-hyperplane-subspace) part 2). For any \\\tilde{s} \in \mathcal{H}\_0\\, the point \\\tilde{x}\_0 + \tilde{s}\\ is in \\\mathcal{H}\\ by the same part, and \\(\tilde{x}\_0 + \tilde{s}) - \tilde{x}\_0 = \tilde{s}\\. So \\D(\mathcal{H}) = \mathcal{H}\_0\\, which has dimension \\p - 1\\ by [Theorem 20](#thm-hyperplane-subspace) part 1.
>
> **Part 2.** Every difference is in \\\mathbb{R}^p\\, so \\D(\mathcal{H}^+) \subseteq \mathbb{R}^p\\. For the other direction, fix any \\\tilde{x}\_0 \in \mathcal{H}\\ and any \\\tilde{v} \in \mathbb{R}^p\\. For a number \\t \> 0\\ to be chosen, let \\\tilde{x}\_t \stackrel{\text{def}}{=}\tilde{x}\_0 + t\\\tilde{w}\\. Then
>
> \\ \begin{aligned} \tilde{w} \cdot \tilde{x}\_t + b &= \mathopen{}\left(\tilde{w} \cdot \tilde{x}\_0 + b\right)\mathclose{} + t\\\tilde{w} \cdot \tilde{w} && \text{(linearity of } \tilde{x}\mapsto \tilde{w} \cdot \tilde{x} \text{)} \\ &= t\\\tilde{w} \cdot \tilde{w}, && \text{(} \tilde{x}\_0 \in \mathcal{H} \text{)} \end{aligned} \\
>
> which is positive, so \\\tilde{x}\_t \in \mathcal{H}^+\\. Next,
>
> \\ \begin{aligned} \tilde{w} \cdot (\tilde{x}\_t + \tilde{v}) + b &= \mathopen{}\left(\tilde{w} \cdot \tilde{x}\_t + b\right)\mathclose{} + \tilde{w} \cdot \tilde{v} && \text{(linearity of } \tilde{x}\mapsto \tilde{w} \cdot \tilde{x} \text{)} \\ &= t\\\tilde{w} \cdot \tilde{w} + \tilde{w} \cdot \tilde{v}. && \text{(the display above)} \end{aligned} \\
>
> Because \\\tilde{w} \cdot \tilde{w} \> 0\\, this is positive once \\t \> -\tilde{w} \cdot \tilde{v} / \tilde{w} \cdot \tilde{w}\\. Choose such a \\t \> 0\\. Then \\\tilde{x}\_t\\ and \\\tilde{x}\_t + \tilde{v}\\ are both in \\\mathcal{H}^+\\, and their difference is \\\tilde{v}\\. So \\\tilde{v} \in D(\mathcal{H}^+)\\. The whole space \\\mathbb{R}^p\\ is a subspace of dimension \\p\\ ([Definition 8](#def-dimension)).
>
> The proof for \\\mathcal{H}^-\\ is the same with \\-\tilde{w}\\ and \\-b\\ in place of \\\tilde{w}\\ and \\b\\.

> **NOTE:**
>
> **Example 39 (Two iris species on either side of a line)** The `iris` data set in R has the petal length and petal width, in centimeters, of 150 irises. Take the 100 flowers of the species versicolor and virginica, and let \\\tilde{x}= (x_1, x_2)\\ be the petal length and petal width of one flower. A logistic regression of the species on \\\tilde{x}\\ gives a coefficient vector \\\tilde{w}\\ and an intercept \\b\\. The line \\\tilde{w} \cdot \tilde{x} + b = 0\\ is a hyperplane in \\\mathbb{R}^2\\ ([Definition 19 in Matrices](linear-algebra-matrices.llms.md#def-hyperplane)), and the two species mostly fall in its two open half-spaces ([Definition 14](#def-half-space)). [Figure 1](#fig-half-space-iris) shows the line and the flowers.
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
> [![Scatter plot of petal width against petal length for 100 irises. Versicolor points, in one color, are mostly to the lower left. Virginica points, in another color, are mostly to the upper right. A straight line runs between the two groups and separates most of them.](linear-algebra-subspaces_files/figure-html/fig-half-space-iris-1.png)](linear-algebra-subspaces_files/figure-html/fig-half-space-iris-1.png "Figure 1: Petal length and width of versicolor and virginica irises, with the line where a logistic regression is indifferent between the two species")
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
> The vector \\\tilde{w}\\ points toward the virginica side, so the positive half-space \\\mathcal{H}^+\\ holds 50 of the 100 flowers, and 47 of them are virginica. The line is a set of dimension \\p - 1 = 1\\, and each side is a region of the plane of dimension \\p = 2\\ ([Theorem 22](#thm-half-space-dimension)).

> **NOTE:**
>
> **Exercise 1 (Which side of the plane?)** Let \\\mathcal{H}\\ be the plane in \\\mathbb{R}^3\\ with \\\tilde{w} = (1, 1, 1)\\ and \\b = -1\\ ([Example 36](#exm-hyperplane-subspace)).
>
> 1.  For each point, say whether it is in \\\mathcal{H}^+\\, \\\mathcal{H}\\ or \\\mathcal{H}^-\\ ([Definition 14](#def-half-space)): \\(0, 0, 0)\\, \\(1, 0, 0)\\ and \\(1, 1, 1)\\.
> 2.  Write the plane and its half-spaces using \\-\tilde{w}\\ and \\-b\\. Which points from part 1 change sides?
> 3.  State the dimension of \\D(\mathcal{H})\\ and of \\D(\mathcal{H}^+)\\ ([Theorem 22](#thm-half-space-dimension)).

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
> **Definition 15 (Rank factorization)** Let \\\mathbf{A}\\ be an \\m \times n\\ matrix with \\\operatorname{rank}(\mathbf{A}) = r \ge 1\\. A **rank factorization** of \\\mathbf{A}\\ is a product
>
> \\ \underbrace{\mathbf{A}}\_{m \times n} = \underbrace{\mathbf{C}}\_{m \times r}\\\underbrace{\mathbf{R}}\_{r \times n}. \\

> **NOTE:**
>
> **Example 40 (A rank factorization of a rank-one matrix)** The matrix \\\mathbf{A}\\ in [Example 22](#exm-column-space) has rank \\1\\ ([Example 29](#exm-rank-dim)), and
>
> \\ \begin{aligned} \begin{bmatrix} 1 \\ 3 \end{bmatrix} \begin{bmatrix} 1 & -2 & -2 \end{bmatrix} &= \begin{bmatrix} 1 \cdot 1 & 1 \cdot(-2) & 1 \cdot(-2) \\ 3 \cdot 1 & 3 \cdot(-2) & 3 \cdot(-2) \end{bmatrix} \\ &= \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix}, \end{aligned} \\
>
> so \\\mathbf{C} = \begin{bmatrix} 1 \\ 3 \end{bmatrix}\\ (\\2 \times 1\\) and \\\mathbf{R} = \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}\\ (\\1 \times 3\\) are a rank factorization. It is not unique: \\\mathbf{C} = \begin{bmatrix} 2 \\ 6 \end{bmatrix}\\ and \\\mathbf{R} = \begin{bmatrix} \frac{1}{2} & -1 & -1 \end{bmatrix}\\ give the same product. A product \\\mathbf{C} \mathbf{R}\\ with \\\mathbf{C}\\ of size \\2 \times 2\\ is not a rank factorization of this \\\mathbf{A}\\, because the inner dimension must equal \\\operatorname{rank}(\mathbf{A}) = 1\\.

> **NOTE:**
>
> **Theorem 23 (Every nonzero matrix has a rank factorization)** Every \\m \times n\\ matrix \\\mathbf{A}\\ with \\\operatorname{rank}(\mathbf{A}) = r \ge 1\\ has a rank factorization ([Definition 15](#def-rank-factorization)). One is given by taking the columns of \\\mathbf{C}\\ to be any basis of \\\mathcal{C}(\mathbf{A})\\.

> **NOTE:**
>
> *Proof*. \\\mathcal{C}(\mathbf{A})\\ has dimension \\r\\ ([Theorem 16](#thm-rank-dim)), so it has a basis \\\tilde{c}\_1, \ldots, \tilde{c}\_r\\ ([Theorem 9](#thm-extend-basis)); let \\\mathbf{C}\\ be the \\m \times r\\ matrix with these columns. Each column \\\tilde{a}\_j\\ of \\\mathbf{A}\\ is in \\\mathcal{C}(\mathbf{A})\\, so \\\tilde{a}\_j = r\_{1j} \tilde{c}\_1 + \cdots + r\_{rj} \tilde{c}\_r\\ for some numbers \\r\_{ij}\\, because the basis spans \\\mathcal{C}(\mathbf{A})\\. Let \\\mathbf{R}\\ be the \\r \times n\\ matrix with entries \\r\_{ij}\\, whose column \\j\\ is \\\tilde{r}\_j = (r\_{1j}, \ldots, r\_{rj})\\. Then column \\j\\ of \\\mathbf{C} \mathbf{R}\\ is
>
> \\ \begin{aligned} \mathbf{C} \tilde{r}\_j &= r\_{1j} \tilde{c}\_1 + \cdots + r\_{rj} \tilde{c}\_r && \text{(}\href{#thm-matvec-columns}{\text{Theorem~3}}\text{)} \\ &= \tilde{a}\_j, && \text{(choice of the } r\_{ij} \text{)} \end{aligned} \\
>
> so \\\mathbf{C} \mathbf{R} = \mathbf{A}\\.

> **NOTE:**
>
> **Example 41 (Building a rank factorization from a basis)** For \\\mathbf{A}\\ in [Example 22](#exm-column-space), \\(1, 3)\\ spans \\\mathcal{C}(\mathbf{A})\\ (1), and it is linearly independent because it is nonzero (\\c\\(1, 3) = \tilde{0}\_2\\ forces \\c = 0\\), so it is a basis of \\\mathcal{C}(\mathbf{A})\\. The columns of \\\mathbf{A}\\ are \\(1, 3) = 1 \cdot(1, 3)\\, \\(-2, -6) = -2 \cdot(1, 3)\\ and \\(-2, -6) = -2 \cdot(1, 3)\\, so the construction in [Theorem 23](#thm-rank-factorization) gives \\\mathbf{C} = \begin{bmatrix} 1 \\ 3 \end{bmatrix}\\ and \\\mathbf{R} = \begin{bmatrix} 1 & -2 & -2 \end{bmatrix}\\, the factorization in [Example 40](#exm-rank-factorization).

## 5 Sums and direct sums

> **NOTE:**
>
> This section, [Section 6](#sec-orthogonal-complements) and [Section 7](#sec-fundamental-theorem) are adapted from Zhou ([2024a](#ref-zhou2024orthproj)), used under the MIT License (see the license text in [Section 2](#sec-subspaces)). The source proves that a subspace and its orthogonal complement together make up \\\mathbb{R}^p\\ by extending an orthonormal basis; the proof here uses the rank-nullity theorem ([Theorem 17](#thm-rank-nullity)) instead.

> **NOTE:**
>
> **Definition 16 (Sum of subspaces)** The **sum** of two subspaces \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ of \\\mathbb{R}^p\\ ([Definition 4](#def-subspace)) is the set of all sums of a vector from \\\mathcal{S}\_1\\ and a vector from \\\mathcal{S}\_2\\:
>
> \\ \mathcal{S}\_1 + \mathcal{S}\_2 \stackrel{\text{def}}{=} \mathopen{}\left\\\tilde{x}\_1 + \tilde{x}\_2 : \tilde{x}\_1 \in \mathcal{S}\_1,\\ \tilde{x}\_2 \in \mathcal{S}\_2\right\\\mathclose{}. \\

> **NOTE:**
>
> **Example 42 (Two lines sum to a plane)** Let \\\mathcal{S}\_1 = \operatorname{span}\mathopen{}\left\\(1, 0, 0)\right\\\mathclose{}\\ and \\\mathcal{S}\_2 = \operatorname{span}\mathopen{}\left\\(0, 1, 0)\right\\\mathclose{}\\, two lines in \\\mathbb{R}^3\\. A vector of \\\mathcal{S}\_1 + \mathcal{S}\_2\\ has the form \\a\\(1, 0, 0) + b\\(0, 1, 0) = (a, b, 0)\\, and \\a\\ and \\b\\ can be any numbers, so \\\mathcal{S}\_1 + \mathcal{S}\_2 = \mathopen{}\left\\(a, b, 0) : a, b \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\.

> **NOTE:**
>
> **Example 43 (The sum is not the union)** For the two lines in [Example 42](#exm-subspace-sum), the union \\\mathcal{S}\_1 \cup \mathcal{S}\_2\\ contains \\(1, 0, 0)\\ and \\(0, 1, 0)\\ but not their sum \\(1, 1, 0)\\: every multiple of \\(1, 0, 0)\\ has second entry \\0\\, and every multiple of \\(0, 1, 0)\\ has first entry \\0\\. So the union is not closed under addition and is not a subspace, while the sum, the whole plane \\z = 0\\, is.

> **NOTE:**
>
> **Theorem 24 (Sums and intersections of subspaces are subspaces)** If \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are subspaces of \\\mathbb{R}^p\\ ([Definition 4](#def-subspace)), then \\\mathcal{S}\_1 + \mathcal{S}\_2\\ ([Definition 16](#def-subspace-sum)) and \\\mathcal{S}\_1 \cap \mathcal{S}\_2\\ are subspaces of \\\mathbb{R}^p\\.

> **NOTE:**
>
> *Proof*. Both \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ contain \\\tilde{0}\\ ([Theorem 1](#thm-subspace-zero)).
>
> **The sum.** It is not empty: it contains \\\tilde{0}+ \tilde{0}= \tilde{0}\\. Take two of its vectors, \\\tilde{u} = \tilde{u}\_1 + \tilde{u}\_2\\ and \\\tilde{w} = \tilde{w}\_1 + \tilde{w}\_2\\, with \\\tilde{u}\_1, \tilde{w}\_1 \in \mathcal{S}\_1\\ and \\\tilde{u}\_2, \tilde{w}\_2 \in \mathcal{S}\_2\\, and a number \\c\\. Then
>
> \\ \begin{aligned} \tilde{u} + \tilde{w} &= (\tilde{u}\_1 + \tilde{u}\_2) + (\tilde{w}\_1 + \tilde{w}\_2) && \text{(substitute)} \\ &= (\tilde{u}\_1 + \tilde{w}\_1) + (\tilde{u}\_2 + \tilde{w}\_2), && \text{(regroup; vector addition is entrywise)} \end{aligned} \\
>
> where \\\tilde{u}\_1 + \tilde{w}\_1 \in \mathcal{S}\_1\\ and \\\tilde{u}\_2 + \tilde{w}\_2 \in \mathcal{S}\_2\\, because each subspace is closed under addition. Likewise
>
> \\ \begin{aligned} c\\\tilde{u} &= c\\(\tilde{u}\_1 + \tilde{u}\_2) && \text{(substitute)} \\ &= c\\\tilde{u}\_1 + c\\\tilde{u}\_2, && \text{(distribute } c \text{ entrywise)} \end{aligned} \\
>
> where \\c\\\tilde{u}\_1 \in \mathcal{S}\_1\\ and \\c\\\tilde{u}\_2 \in \mathcal{S}\_2\\, because each subspace is closed under scalar multiplication. So \\\tilde{u} + \tilde{w}\\ and \\c\\\tilde{u}\\ are in \\\mathcal{S}\_1 + \mathcal{S}\_2\\.
>
> **The intersection.** It is not empty: it contains \\\tilde{0}\\. If \\\tilde{u}\\ and \\\tilde{w}\\ are in both \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\, then \\\tilde{u} + \tilde{w}\\ and \\c\\\tilde{u}\\ are in \\\mathcal{S}\_1\\, because \\\mathcal{S}\_1\\ is a subspace, and in \\\mathcal{S}\_2\\ for the same reason, so they are in \\\mathcal{S}\_1 \cap \mathcal{S}\_2\\.

> **NOTE:**
>
> **Example 44 (Two planes in \\\mathbb{R}^3\\)** Let \\\mathcal{S}\_1 = \mathopen{}\left\\(a, b, 0) : a, b \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\, and \\\mathcal{S}\_2 = \mathopen{}\left\\(0, b, c) : b, c \in \mathbb{R}\right\\\mathclose{}\\, the plane \\x = 0\\.
>
> - **Intersection:** a vector in both has third entry \\0\\ and first entry \\0\\, so \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\(0, b, 0) : b \in \mathbb{R}\right\\\mathclose{}\\, the \\y\\-axis, which is a line through the origin.
> - **Sum:** \\(a, b, 0) + (0, b', c) = (a, b + b', c)\\, and any \\(x, y, z)\\ arises this way, with \\a = x\\, \\b = y\\, \\b' = 0\\ and \\c = z\\. So \\\mathcal{S}\_1 + \mathcal{S}\_2 = \mathbb{R}^3\\.

> **NOTE:**
>
> **Theorem 25 (The dimension of a sum of subspaces)** If \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are subspaces of \\\mathbb{R}^p\\, then
>
> \\ \dim(\mathcal{S}\_1 + \mathcal{S}\_2) = \dim(\mathcal{S}\_1) + \dim(\mathcal{S}\_2) - \dim(\mathcal{S}\_1 \cap \mathcal{S}\_2). \\

> **NOTE:**
>
> *Proof*. All three sets in the formula are subspaces ([Theorem 24](#thm-sum-intersection-subspace)), so each has a dimension ([Definition 8](#def-dimension)). Let \\k = \dim(\mathcal{S}\_1 \cap \mathcal{S}\_2)\\, \\d_1 = \dim(\mathcal{S}\_1)\\ and \\d_2 = \dim(\mathcal{S}\_2)\\.
>
> **Build a list.** Choose a basis \\\tilde{z}\_1, \ldots, \tilde{z}\_k\\ of \\\mathcal{S}\_1 \cap \mathcal{S}\_2\\ ([Theorem 9](#thm-extend-basis)). These vectors are linearly independent and lie in \\\mathcal{S}\_1\\, so [Theorem 9](#thm-extend-basis) extends them to a basis \\\tilde{z}\_1, \ldots, \tilde{z}\_k, \tilde{x}\_1, \ldots, \tilde{x}\_{d_1 - k}\\ of \\\mathcal{S}\_1\\, which has \\d_1\\ vectors ([Theorem 7](#thm-basis-size)). In the same way, extend them to a basis \\\tilde{z}\_1, \ldots, \tilde{z}\_k, \tilde{y}\_1, \ldots, \tilde{y}\_{d_2 - k}\\ of \\\mathcal{S}\_2\\. We show that the \\\tilde{z}\\’s, \\\tilde{x}\\’s and \\\tilde{y}\\’s together, \\k + (d_1 - k) + (d_2 - k) = d_1 + d_2 - k\\ vectors, are a basis of \\\mathcal{S}\_1 + \mathcal{S}\_2\\ ([Definition 6](#def-basis)).
>
> **They span \\\mathcal{S}\_1 + \mathcal{S}\_2\\.** Any \\\tilde{v} \in \mathcal{S}\_1 + \mathcal{S}\_2\\ is \\\tilde{v}\_1 + \tilde{v}\_2\\ with \\\tilde{v}\_1 \in \mathcal{S}\_1\\ and \\\tilde{v}\_2 \in \mathcal{S}\_2\\. \\\tilde{v}\_1\\ is a linear combination of the \\\tilde{z}\\’s and \\\tilde{x}\\’s, and \\\tilde{v}\_2\\ is a linear combination of the \\\tilde{z}\\’s and \\\tilde{y}\\’s, so their sum is a linear combination of all three groups. Conversely, each vector in the list is in \\\mathcal{S}\_1 + \mathcal{S}\_2\\ (for example, \\\tilde{x}\_1 = \tilde{x}\_1 + \tilde{0}\\), and \\\mathcal{S}\_1 + \mathcal{S}\_2\\ is a subspace, so it contains every linear combination of them.
>
> **They are linearly independent.** Suppose
>
> \\ \sum\_{i=1}^{k} a_i \tilde{z}\_i + \sum\_{j=1}^{d_1 - k} b_j \tilde{x}\_j + \sum\_{l=1}^{d_2 - k} c_l \tilde{y}\_l = \tilde{0}. \\
>
> Let \\\tilde{w} \stackrel{\text{def}}{=}\sum\_{l} c_l \tilde{y}\_l\\. Then \\\tilde{w} \in \mathcal{S}\_2\\, because it is a linear combination of vectors of \\\mathcal{S}\_2\\. Subtracting \\\sum\_{i} a_i \tilde{z}\_i + \sum\_{j} b_j \tilde{x}\_j\\ from both sides of the supposed equation gives
>
> \\ \tilde{w} = \sum\_{i=1}^{k} (-a_i)\\\tilde{z}\_i + \sum\_{j=1}^{d_1 - k} (-b_j)\\\tilde{x}\_j, \\
>
> a linear combination of vectors of \\\mathcal{S}\_1\\, so \\\tilde{w} \in \mathcal{S}\_1\\ too. So \\\tilde{w} \in \mathcal{S}\_1 \cap \mathcal{S}\_2\\, and \\\tilde{w} = \sum\_{i} e_i \tilde{z}\_i\\ for some numbers \\e_i\\, since the \\\tilde{z}\\’s span the intersection. Then
>
> \\ \begin{aligned} \tilde{0} &= \tilde{w} - \tilde{w} && \text{(a vector minus itself)} \\ &= \sum\_{i=1}^{k} e_i \tilde{z}\_i - \sum\_{l=1}^{d_2 - k} c_l \tilde{y}\_l && \text{(substitute the two expressions for } \tilde{w} \text{)} \\ &= \sum\_{i=1}^{k} e_i \tilde{z}\_i + \sum\_{l=1}^{d_2 - k} (-c_l)\\\tilde{y}\_l, && \text{(write each subtraction as adding } -1 \text{ times)} \end{aligned} \\
>
> and because the \\\tilde{z}\\’s and \\\tilde{y}\\’s are a basis of \\\mathcal{S}\_2\\, every \\c_l = 0\\. The supposed equation then reads \\\sum\_{i} a_i \tilde{z}\_i + \sum\_{j} b_j \tilde{x}\_j = \tilde{0}\\, and because the \\\tilde{z}\\’s and \\\tilde{x}\\’s are a basis of \\\mathcal{S}\_1\\, every \\a_i\\ and \\b_j\\ is \\0\\.
>
> So \\\dim(\mathcal{S}\_1 + \mathcal{S}\_2) = d_1 + d_2 - k\\. When some of the groups are empty (for example \\k = 0\\, or \\\mathcal{S}\_1 = \mathcal{S}\_1 \cap \mathcal{S}\_2\\), the sums over them are \\\tilde{0}\\ and the argument goes through unchanged.

> **NOTE:**
>
> **Example 45 (Two planes in \\\mathbb{R}^3\\, by dimension)** For the planes \\z = 0\\ and \\x = 0\\ in [Example 44](#exm-sum-intersection-subspace), each has dimension \\2\\: the plane \\z = 0\\ has basis \\(1, 0, 0), (0, 1, 0)\\ ([Example 16](#exm-dimension)), and the plane \\x = 0\\ has basis \\(0, 1, 0), (0, 0, 1)\\ by the same argument. Their intersection, the \\y\\-axis \\\operatorname{span}\mathopen{}\left\\(0, 1, 0)\right\\\mathclose{}\\, has dimension \\1\\, because the single nonzero vector \\(0, 1, 0)\\ is linearly independent (\\c\\(0, 1, 0) = (0, c, 0)\\ is \\\tilde{0}\\ only if \\c = 0\\) and so is a basis of it. [Theorem 25](#thm-dim-sum) gives
>
> \\ \begin{aligned} \dim(\mathcal{S}\_1 + \mathcal{S}\_2) &= 2 + 2 - 1 \\ &= 3, \end{aligned} \\
>
> which agrees with \\\mathcal{S}\_1 + \mathcal{S}\_2 = \mathbb{R}^3\\ ([Example 44](#exm-sum-intersection-subspace)) and \\\dim(\mathbb{R}^3) = 3\\ ([Example 16](#exm-dimension)).

> **NOTE:**
>
> **Corollary 2 (The dimension of a sum is at most the sum of the dimensions)** If \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are subspaces of \\\mathbb{R}^p\\, then
>
> \\ \dim(\mathcal{S}\_1 + \mathcal{S}\_2) \le \dim(\mathcal{S}\_1) + \dim(\mathcal{S}\_2), \\
>
> with equality exactly when \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\.

> **NOTE:**
>
> *Proof*. By [Theorem 25](#thm-dim-sum), the two sides differ by \\\dim(\mathcal{S}\_1 \cap \mathcal{S}\_2) \ge 0\\. That dimension is \\0\\ exactly when a basis of the intersection is the empty list, that is, when the intersection is the span of the empty list, \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ ([Definition 5](#def-span), [Example 16](#exm-dimension)).

> **NOTE:**
>
> **Example 46 (Equality and strict inequality)**  
>
> - For the lines \\\mathcal{S}\_1 = \operatorname{span}\mathopen{}\left\\(1, 0, 0)\right\\\mathclose{}\\ and \\\mathcal{S}\_2 = \operatorname{span}\mathopen{}\left\\(0, 1, 0)\right\\\mathclose{}\\ in [Example 42](#exm-subspace-sum), a common vector satisfies \\a\\(1, 0, 0) = b\\(0, 1, 0)\\, so \\(a, -b, 0) = \tilde{0}\\ and
>
>   \\ \begin{aligned} a &= b \\ &= 0. \end{aligned} \\
>
>   The intersection is \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, and indeed
>
>   \\ \begin{aligned} \dim(\mathcal{S}\_1 + \mathcal{S}\_2) &= 2 \\ &= 1 + 1: \end{aligned} \\
>
>   the sum is the plane \\z = 0\\ ([Example 42](#exm-subspace-sum)), which has dimension \\2\\ ([Example 16](#exm-dimension)), and each line has dimension \\1\\, with its spanning vector as a basis.
>
> - For
>
>   \\ \begin{aligned} \mathcal{S}\_1 &= \mathcal{S}\_2 \\ &= \operatorname{span}\mathopen{}\left\\(1, 0, 0)\right\\\mathclose{}, \end{aligned} \\
>
>   the sum is the same line, because \\a\\(1, 0, 0) + b\\(1, 0, 0) = (a + b)\\(1, 0, 0)\\, so \\\dim(\mathcal{S}\_1 + \mathcal{S}\_2) = 1 \< 1 + 1\\, a [strict inequality](algebra.llms.md#def-strict-inequality).

> **NOTE:**
>
> **Theorem 26 (Rank is subadditive)** For \\m \times n\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\,
>
> \\ \operatorname{rank}(\mathbf{A} + \mathbf{B}) \le \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(\mathbf{B}). \\

> **NOTE:**
>
> *Proof*. **\\\mathcal{C}(\mathbf{A} + \mathbf{B}) \subseteq \mathcal{C}(\mathbf{A}) + \mathcal{C}(\mathbf{B})\\.** Any vector of \\\mathcal{C}(\mathbf{A} + \mathbf{B})\\ is \\(\mathbf{A} + \mathbf{B})\\\tilde{x}\\ for some \\\tilde{x} \in \mathbb{R}^n\\ ([Definition 9](#def-column-space)), and \\(\mathbf{A} + \mathbf{B})\\\tilde{x} = \mathbf{A} \tilde{x} + \mathbf{B} \tilde{x}\\ ([Theorem 6 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-distrib), with \\\tilde{x}\\ as an \\n \times 1\\ matrix), a vector of \\\mathcal{C}(\mathbf{A})\\ plus a vector of \\\mathcal{C}(\mathbf{B})\\.
>
> **Compare dimensions.** All the sets involved are subspaces of \\\mathbb{R}^m\\ ([Theorem 12](#thm-column-space-span), [Theorem 24](#thm-sum-intersection-subspace)), so
>
> \\ \begin{aligned} \operatorname{rank}(\mathbf{A} + \mathbf{B}) &= \dim\mathopen{}\left(\mathcal{C}(\mathbf{A} + \mathbf{B})\right)\mathclose{} && \text{(}\href{#thm-rank-dim}{\text{Theorem~16}}\text{)} \\ &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A}) + \mathcal{C}(\mathbf{B})\right)\mathclose{} && \text{(the containment, and part 2 of }\href{#thm-dim-bound}{\text{Theorem~10}}\text{)} \\ &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} + \dim\mathopen{}\left(\mathcal{C}(\mathbf{B})\right)\mathclose{} && \text{(}\href{#cor-dim-subadditive}{\text{Corollary~2}}\text{)} \\ &= \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(\mathbf{B}). && \text{(}\href{#thm-rank-dim}{\text{Theorem~16}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 47 (Subadditivity with equality and without)** Let \\\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}\\ and \\\mathbf{B} = \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix}\\. Each has one nonzero column and one zero column. The nonzero column on its own is linearly independent (\\c\\\tilde{v} = \tilde{0}\_2\\ with \\\tilde{v} \ne \tilde{0}\_2\\ forces \\c = 0\\), and the two columns together are not, since \\1\\ times the zero column is \\\tilde{0}\_2\\; so each matrix has rank \\1\\ ([Definition 2](#def-rank)). By the same argument, \\-\mathbf{A}\\ has rank \\1\\.
>
> - \\\mathbf{A} + \mathbf{B}\\ is the \\2 \times 2\\ identity matrix, which has rank \\2\\ ([Example 31](#exm-rank-nullity)), so the bound \\2 \le 1 + 1\\ holds with equality.
> - \\\mathbf{A} + (-\mathbf{A})\\ is the \\2 \times 2\\ zero matrix, which has rank \\0\\: any nonempty list of its columns contains \\\tilde{0}\_2\\, and \\1 \cdot\tilde{0}\_2 = \tilde{0}\_2\\. So the bound \\0 \le \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(-\mathbf{A}) = 1 + 1\\ is strict.

> **NOTE:**
>
> **Definition 17 (Direct sum)** Let \\\mathcal{S}\_1\\, \\\mathcal{S}\_2\\ and \\\mathcal{V}\\ be subspaces of \\\mathbb{R}^p\\. \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ are **complementary** in \\\mathcal{V}\\ if
>
> \\ \mathcal{V} = \mathcal{S}\_1 + \mathcal{S}\_2 \quad \text{and} \quad \mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{} \\
>
> ([Definition 16](#def-subspace-sum)). Then \\\mathcal{V}\\ is the **direct sum** of \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\, written \\\mathcal{V} = \mathcal{S}\_1 \oplus \mathcal{S}\_2\\.

> **NOTE:**
>
> **Example 48 (\\\mathbb{R}^3\\ is a plane plus a line)** Let \\\mathcal{S}\_1 = \mathopen{}\left\\(a, b, 0) : a, b \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\, and \\\mathcal{S}\_2 = \mathopen{}\left\\(0, 0, c) : c \in \mathbb{R}\right\\\mathclose{}\\, the \\z\\-axis.
>
> - **Sum:** any \\(x, y, z) \in \mathbb{R}^3\\ is \\(x, y, 0) + (0, 0, z)\\, so \\\mathcal{S}\_1 + \mathcal{S}\_2 = \mathbb{R}^3\\.
> - **Intersection:** a vector in both has third entry \\0\\ and first and second entries \\0\\, so \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\.
>
> So \\\mathbb{R}^3 = \mathcal{S}\_1 \oplus \mathcal{S}\_2\\.

> **NOTE:**
>
> **Example 49 (Two planes that sum to \\\mathbb{R}^3\\ but not directly)** The planes \\z = 0\\ and \\x = 0\\ sum to \\\mathbb{R}^3\\ ([Example 44](#exm-sum-intersection-subspace)), but they share the \\y\\-axis, so they are not complementary, and \\\mathbb{R}^3\\ is not their direct sum. The shared line shows up as more than one way to split a vector:
>
> \\ \begin{aligned} (0, 1, 0) &= (0, 1, 0) + \tilde{0}\\ &= \tilde{0}+ (0, 1, 0), \end{aligned} \\
>
> with the first term in the plane \\z = 0\\ and the second in the plane \\x = 0\\ both times.

> **NOTE:**
>
> **Theorem 27 (Three ways to recognize a direct sum)** Let \\\mathcal{S}\_1\\ and \\\mathcal{S}\_2\\ be subspaces of \\\mathbb{R}^p\\, and let \\\mathcal{V} = \mathcal{S}\_1 + \mathcal{S}\_2\\. The following statements are equivalent:
>
> 1.  \\\mathcal{V} = \mathcal{S}\_1 \oplus \mathcal{S}\_2\\ ([Definition 17](#def-direct-sum)).
> 2.  \\\dim(\mathcal{V}) = \dim(\mathcal{S}\_1) + \dim(\mathcal{S}\_2)\\.
> 3.  Every \\\tilde{x} \in \mathcal{V}\\ can be written as \\\tilde{x} = \tilde{x}\_1 + \tilde{x}\_2\\ with \\\tilde{x}\_1 \in \mathcal{S}\_1\\ and \\\tilde{x}\_2 \in \mathcal{S}\_2\\ in only one way.

> **NOTE:**
>
> *Proof*. Since \\\mathcal{V} = \mathcal{S}\_1 + \mathcal{S}\_2\\ is given, statement 1 says exactly that \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\.
>
> **1 and 2 are equivalent.** By [Corollary 2](#cor-dim-subadditive), \\\dim(\mathcal{S}\_1 + \mathcal{S}\_2) = \dim(\mathcal{S}\_1) + \dim(\mathcal{S}\_2)\\ exactly when \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\.
>
> **1 implies 3.** Every \\\tilde{x} \in \mathcal{V}\\ has at least one such expression, because \\\mathcal{V} = \mathcal{S}\_1 + \mathcal{S}\_2\\. Suppose
>
> \\ \begin{aligned} \tilde{x} &= \tilde{u}\_1 + \tilde{u}\_2 \\ &= \tilde{v}\_1 + \tilde{v}\_2, \end{aligned} \\
>
> with \\\tilde{u}\_1, \tilde{v}\_1 \in \mathcal{S}\_1\\ and \\\tilde{u}\_2, \tilde{v}\_2 \in \mathcal{S}\_2\\. Then
>
> \\ \begin{aligned} \tilde{u}\_1 - \tilde{v}\_1 &= (\tilde{u}\_1 + \tilde{u}\_2) - \tilde{u}\_2 - \tilde{v}\_1 && \text{(add and subtract } \tilde{u}\_2 \text{)} \\ &= (\tilde{v}\_1 + \tilde{v}\_2) - \tilde{u}\_2 - \tilde{v}\_1 && \text{(substitute } \tilde{u}\_1 + \tilde{u}\_2 = \tilde{v}\_1 + \tilde{v}\_2 \text{)} \\ &= \tilde{v}\_2 - \tilde{u}\_2. && \text{(cancel } \tilde{v}\_1 \text{)} \end{aligned} \\
>
> The left side is in \\\mathcal{S}\_1\\ and the right side is in \\\mathcal{S}\_2\\, because each subspace is closed under addition and scalar multiplication (the difference is \\\tilde{u}\_1 + (-1)\\\tilde{v}\_1\\). So both sides are in \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, which gives \\\tilde{u}\_1 = \tilde{v}\_1\\ and \\\tilde{u}\_2 = \tilde{v}\_2\\.
>
> **3 implies 1.** Take any \\\tilde{x} \in \mathcal{S}\_1 \cap \mathcal{S}\_2\\. Then \\\tilde{x} = \tilde{x} + \tilde{0}\\, with \\\tilde{x} \in \mathcal{S}\_1\\ and \\\tilde{0}\in \mathcal{S}\_2\\, and \\\tilde{x} = \tilde{0}+ \tilde{x}\\, with \\\tilde{0}\in \mathcal{S}\_1\\ and \\\tilde{x} \in \mathcal{S}\_2\\ ([Theorem 1](#thm-subspace-zero)). By statement 3 these two expressions are the same, so \\\tilde{x} = \tilde{0}\\, and \\\mathcal{S}\_1 \cap \mathcal{S}\_2 = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\.

> **NOTE:**
>
> **Example 50 (Checking the three statements)** For the plane \\z = 0\\ and the \\z\\-axis in [Example 48](#exm-direct-sum):
>
> - the dimensions add up:
>
>   \\ \begin{aligned} 2 + 1 &= 3 \\ &= \dim(\mathbb{R}^3), \end{aligned} \\
>
>   since the plane has dimension \\2\\ ([Example 16](#exm-dimension)), the \\z\\-axis has the single nonzero vector \\(0, 0, 1)\\ as a basis, and \\\dim(\mathbb{R}^3) = 3\\ ([Example 16](#exm-dimension));
>
> - the split is unique: if
>
>   \\ \begin{aligned} (x, y, z) &= (a, b, 0) + (0, 0, c) \\ &= (a, b, c), \end{aligned} \\
>
>   then \\a = x\\, \\b = y\\ and \\c = z\\.
>
> For the planes \\z = 0\\ and \\x = 0\\ in [Example 49](#exm-not-direct-sum), both statements fail:
>
> \\ \begin{aligned} 2 + 2 &= 4 \\ &\ne 3 \\ &= \dim(\mathcal{S}\_1 + \mathcal{S}\_2) \end{aligned} \\
>
> ([Example 45](#exm-dim-sum)), and \\(0, 1, 0)\\ splits in two ways.

> **NOTE:**
>
> **Definition 18 (Projection onto a subspace along a complement)** Let \\\mathcal{S}\\ and \\\mathcal{T}\\ be subspaces of \\\mathbb{R}^p\\ with \\\mathbb{R}^p = \mathcal{S} \oplus \mathcal{T}\\ ([Definition 17](#def-direct-sum)), and let \\\tilde{y} \in \mathbb{R}^p\\. By [Theorem 27](#thm-direct-sum-equiv), \\\tilde{y} = \tilde{u} + \tilde{v}\\ for exactly one \\\tilde{u} \in \mathcal{S}\\ and \\\tilde{v} \in \mathcal{T}\\. The vector \\\tilde{u}\\ is the **projection** of \\\tilde{y}\\ onto \\\mathcal{S}\\ along \\\mathcal{T}\\ ([Banerjee and Roy 2014](#ref-banerjee2014linear), Definition 6.3, p. 163).

> **NOTE:**
>
> **Example 51 (The projection depends on the complement)** Let \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 0)\right\\\mathclose{}\\, the horizontal axis in \\\mathbb{R}^2\\, and let \\\tilde{y} = (3, 2)\\.
>
> - **Along \\\mathcal{T}\_1 = \operatorname{span}\mathopen{}\left\\(1, -1)\right\\\mathclose{}\\:** \\(3, 2) = (5, 0) + (-2, 2)\\, with \\(5, 0) \in \mathcal{S}\\ and \\(-2, 2) = -2 \cdot(1, -1) \in \mathcal{T}\_1\\, so the projection of \\(3, 2)\\ onto \\\mathcal{S}\\ along \\\mathcal{T}\_1\\ is \\(5, 0)\\.
> - **Along \\\mathcal{T}\_2 = \operatorname{span}\mathopen{}\left\\(0, 1)\right\\\mathclose{}\\:** \\(3, 2) = (3, 0) + (0, 2)\\, with \\(3, 0) \in \mathcal{S}\\ and \\(0, 2) \in \mathcal{T}\_2\\, so the projection of \\(3, 2)\\ onto \\\mathcal{S}\\ along \\\mathcal{T}\_2\\ is \\(3, 0)\\.
>
> Each of \\\mathcal{T}\_1\\ and \\\mathcal{T}\_2\\ is a line that meets \\\mathcal{S}\\ only at \\\tilde{0}\\, so
>
> \\ \begin{aligned} \mathbb{R}^2 &= \mathcal{S} \oplus \mathcal{T}\_1 \\ &= \mathcal{S} \oplus \mathcal{T}\_2 \end{aligned} \\
>
> ([Definition 17](#def-direct-sum), [Theorem 27](#thm-direct-sum-equiv)). The same vector has a different projection onto the same subspace when the complement changes.

## 6 Orthogonal complements

> **NOTE:**
>
> **Theorem 28 (The dot product is linear in each slot)** For vectors \\\tilde{x}, \tilde{u}, \tilde{w} \in \mathbb{R}^p\\ and numbers \\a, b\\,
>
> \\ \tilde{x} \cdot (a\\\tilde{u} + b\\\tilde{w}) = a\\(\tilde{x} \cdot \tilde{u}) + b\\(\tilde{x} \cdot \tilde{w}) \\
>
> and
>
> \\ (a\\\tilde{u} + b\\\tilde{w}) \cdot \tilde{x} = a\\(\tilde{u} \cdot \tilde{x}) + b\\(\tilde{w} \cdot \tilde{x}). \\

> **NOTE:**
>
> *Proof*. **Second slot.**
>
> \\ \begin{aligned} \tilde{x} \cdot (a\\\tilde{u} + b\\\tilde{w}) &= \sum\_{i=1}^px_i\\(a\\\tilde{u} + b\\\tilde{w})\_i && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{)} \\ &= \sum\_{i=1}^px_i\\(a u_i + b w_i) && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{, }\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~6 in Vectors}}\text{)} \\ &= \sum\_{i=1}^p\mathopen{}\left(x_i a u_i + x_i b w_i\right)\mathclose{} && \text{(distribute each } x_i \text{)} \\ &= \sum\_{i=1}^p\mathopen{}\left(a\\x_i u_i + b\\x_i w_i\right)\mathclose{} && \text{(commute the factors in each product)} \\ &= \sum\_{i=1}^pa\\x_i u_i + \sum\_{i=1}^pb\\x_i w_i && \text{(split the finite sum)} \\ &= a \sum\_{i=1}^px_i u_i + b \sum\_{i=1}^px_i w_i && \text{(factor } a \text{ and } b \text{ out of the sums)} \\ &= a\\(\tilde{x} \cdot \tilde{u}) + b\\(\tilde{x} \cdot \tilde{w}). && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{)} \end{aligned} \\
>
> **First slot.**
>
> \\ \begin{aligned} (a\\\tilde{u} + b\\\tilde{w}) \cdot \tilde{x} &= \tilde{x} \cdot (a\\\tilde{u} + b\\\tilde{w}) && \text{(}\href{linear-algebra-vectors.qmd#thm-lincom-symmetric}{\text{Theorem~1 in Vectors}}\text{)} \\ &= a\\(\tilde{x} \cdot \tilde{u}) + b\\(\tilde{x} \cdot \tilde{w}) && \text{(second slot)} \\ &= a\\(\tilde{u} \cdot \tilde{x}) + b\\(\tilde{w} \cdot \tilde{x}). && \text{(}\href{linear-algebra-vectors.qmd#thm-lincom-symmetric}{\text{Theorem~1 in Vectors}}\text{, twice)} \end{aligned} \\
>
> Two special cases are used often. With
>
> \\ \begin{aligned} a &= b \\ &= 1, \end{aligned} \\
>
> and \\1\\\tilde{u} = \tilde{u}\\, the theorem gives \\\tilde{x} \cdot (\tilde{u} + \tilde{w}) = \tilde{x} \cdot \tilde{u} + \tilde{x} \cdot \tilde{w}\\. With \\\tilde{w} = \tilde{u}\\ and \\b = 0\\, and \\0\\\tilde{u} = \tilde{0}\\, it gives \\\tilde{x} \cdot (a\\\tilde{u}) = a\\(\tilde{x} \cdot \tilde{u})\\, and likewise in the first slot.

> **NOTE:**
>
> **Example 52 (Splitting a dot product)** Let \\\tilde{x} = (1, 2)\\, \\\tilde{u} = (3, 0)\\, \\\tilde{w} = (0, 1)\\, \\a = 2\\ and \\b = -1\\. Directly, \\a\\\tilde{u} + b\\\tilde{w} = (6, -1)\\ and
>
> \\ \begin{aligned} \tilde{x} \cdot (6, -1) &= 6 - 2 \\ &= 4. \end{aligned} \\
>
> By [Theorem 28](#thm-dot-linear),
>
> \\ \begin{aligned} a\\(\tilde{x} \cdot \tilde{u}) + b\\(\tilde{x} \cdot \tilde{w}) &= 2 \cdot 3 + (-1) \cdot 2 \\ &= 4, \end{aligned} \\
>
> the same number.

> **NOTE:**
>
> **Definition 19 (Orthogonal complement)** The **orthogonal complement** of a set \\\mathcal{X}\\ of vectors in \\\mathbb{R}^p\\ is the set of vectors orthogonal ([Definition 13 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)) to every vector of \\\mathcal{X}\\:
>
> \\ \mathcal{X}^\perp \stackrel{\text{def}}{=} \mathopen{}\left\\\tilde{u} \in \mathbb{R}^p : \tilde{x} \cdot \tilde{u} = 0 \text{ for all } \tilde{x} \in \mathcal{X}\right\\\mathclose{}. \\
>
> \\\mathcal{X}^\perp\\ is read “\\\mathcal{X}\\ perp”. \\\mathcal{X}\\ need not be a subspace.

> **NOTE:**
>
> **Example 53 (Orthogonal complements in \\\mathbb{R}^3\\)**  
>
> - **A plane.** Let \\\mathcal{X} = \mathopen{}\left\\(a, b, 0) : a, b \in \mathbb{R}\right\\\mathclose{}\\, the plane \\z = 0\\. A vector \\\tilde{u}\\ is in \\\mathcal{X}^\perp\\ when
>
>   \\ \begin{aligned} (a, b, 0) \cdot \tilde{u} &= a u_1 + b u_2 \\ &= 0 \end{aligned} \\
>
>   for all \\a\\ and \\b\\. Taking \\(a, b) = (1, 0)\\ forces \\u_1 = 0\\, and taking \\(a, b) = (0, 1)\\ forces \\u_2 = 0\\; conversely, if
>
>   \\ \begin{aligned} u_1 &= u_2 \\ &= 0, \end{aligned} \\
>
>   then \\a u_1 + b u_2 = 0\\ for all \\a\\ and \\b\\. So \\\mathcal{X}^\perp = \mathopen{}\left\\(0, 0, c) : c \in \mathbb{R}\right\\\mathclose{}\\, the \\z\\-axis.
>
> - **Two vectors.** The two-element set \\\mathopen{}\left\\(1, 0, 0), (0, 1, 0)\right\\\mathclose{}\\ is not a subspace, and its orthogonal complement is the \\z\\-axis too: the two conditions \\u_1 = 0\\ and \\u_2 = 0\\ are the same as for the plane.
>
> - **The extremes.** \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}^\perp = \mathbb{R}^3\\, because \\\tilde{0}\cdot \tilde{u} = 0\\ for every \\\tilde{u}\\. \\(\mathbb{R}^3)^\perp = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, because a \\\tilde{u}\\ in it is orthogonal to itself, and
>
>   \\ \begin{aligned} \tilde{u} \cdot \tilde{u} &= u_1^2 + u_2^2 + u_3^2 \\ &= 0 \end{aligned} \\
>
>   forces \\\tilde{u} = \tilde{0}\\.

> **NOTE:**
>
> **Theorem 29 (An orthogonal complement is a subspace)** For any set \\\mathcal{X}\\ of vectors in \\\mathbb{R}^p\\, \\\mathcal{X}^\perp\\ ([Definition 19](#def-orthogonal-complement)) is a subspace of \\\mathbb{R}^p\\ ([Definition 4](#def-subspace)).

> **NOTE:**
>
> *Proof*. \\\mathcal{X}^\perp\\ is not empty:
>
> \\ \begin{aligned} \tilde{x} \cdot \tilde{0}&= \sum_i x_i \cdot 0 \\ &= 0 \end{aligned} \\
>
> for every \\\tilde{x}\\, so \\\tilde{0}\in \mathcal{X}^\perp\\. Let \\\tilde{u}, \tilde{w} \in \mathcal{X}^\perp\\, let \\c \in \mathbb{R}\\, and let \\\tilde{x} \in \mathcal{X}\\.
>
> **Addition.**
>
> \\ \begin{aligned} \tilde{x} \cdot (\tilde{u} + \tilde{w}) &= \tilde{x} \cdot \tilde{u} + \tilde{x} \cdot \tilde{w} && \text{(}\href{#thm-dot-linear}{\text{Theorem~28}}\text{, special case } a \text{ and } b \text{ both equal to } 1 \text{)} \\ &= 0 + 0 && \text{(} \tilde{u}, \tilde{w} \in \mathcal{X}^\perp \text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\
>
> **Scalar multiplication.**
>
> \\ \begin{aligned} \tilde{x} \cdot (c\\\tilde{u}) &= c\\(\tilde{x} \cdot \tilde{u}) && \text{(}\href{#thm-dot-linear}{\text{Theorem~28}}\text{, special case } b = 0 \text{)} \\ &= c \cdot 0 && \text{(} \tilde{u} \in \mathcal{X}^\perp \text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\
>
> These two equations hold for every \\\tilde{x} \in \mathcal{X}\\, so \\\tilde{u} + \tilde{w}\\ and \\c\\\tilde{u}\\ are in \\\mathcal{X}^\perp\\.

> **NOTE:**
>
> **Example 54 (The complement of a single vector is a line)** The one-element set \\\mathcal{X} = \mathopen{}\left\\(1, 2)\right\\\mathclose{}\\ in \\\mathbb{R}^2\\ is not a subspace: \\2\\(1, 2) = (2, 4)\\ is not in it. Its orthogonal complement is
>
> \\ \begin{aligned} \mathcal{X}^\perp &= \mathopen{}\left\\\tilde{u} \in \mathbb{R}^2 : u_1 + 2 u_2 = 0\right\\\mathclose{} \\ &= \mathopen{}\left\\c\\(-2, 1) : c \in \mathbb{R}\right\\\mathclose{}, \end{aligned} \\
>
> since \\u_1 + 2u_2 = 0\\ means
>
> \\ \begin{aligned} \tilde{u} &= (-2u_2, u_2) \\ &= u_2\\(-2, 1). \end{aligned} \\
>
> That set is \\\operatorname{span}\mathopen{}\left\\(-2, 1)\right\\\mathclose{}\\, a subspace by [Theorem 2](#thm-span-subspace), as [Theorem 29](#thm-orthogonal-complement-subspace) says it must be. It contains \\(-2, 1)\\, the vector [Remark 7 in Vectors](linear-algebra-vectors.llms.md#rem-orthogonal-perpendicular) found perpendicular to \\(1, 2)\\.

> **NOTE:**
>
> **Theorem 30 (The orthogonal complement of a column space is a null space)** For any \\m \times n\\ matrix \\\mathbf{A}\\,
>
> \\ \mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top}). \\

> **NOTE:**
>
> *Proof*. Let \\\tilde{a}\_1, \ldots, \tilde{a}\_n\\ be the columns of \\\mathbf{A}\\, so \\\tilde{a}\_j = (a\_{1j}, \ldots, a\_{mj})\\. For \\\tilde{x} \in \mathbb{R}^m\\, entry \\j\\ of \\{\mathbf{A}}^{\top} \tilde{x}\\ is
>
> \\ \begin{aligned} ({\mathbf{A}}^{\top} \tilde{x})\_j &= \sum\_{i=1}^{m} ({\mathbf{A}}^{\top})\_{ji}\\ x_i && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \\ &= \sum\_{i=1}^{m} a\_{ij}\\ x_i && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{)} \\ &= \tilde{a}\_j \cdot \tilde{x}. && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{)} \end{aligned} \\
>
> So \\\tilde{x} \in \mathcal{N}({\mathbf{A}}^{\top})\\ ([Definition 10](#def-null-space)) exactly when \\\tilde{a}\_j \cdot \tilde{x} = 0\\ for every column \\\tilde{a}\_j\\.
>
> **\\\mathcal{C}(\mathbf{A})^\perp \subseteq \mathcal{N}({\mathbf{A}}^{\top})\\.** Each column \\\tilde{a}\_j\\ is in \\\mathcal{C}(\mathbf{A})\\ ([Theorem 12](#thm-column-space-span)), so a vector orthogonal to all of \\\mathcal{C}(\mathbf{A})\\ is orthogonal to every column.
>
> **\\\mathcal{N}({\mathbf{A}}^{\top}) \subseteq \mathcal{C}(\mathbf{A})^\perp\\.** Suppose \\\tilde{a}\_j \cdot \tilde{x} = 0\\ for every \\j\\, and take any \\\tilde{y} \in \mathcal{C}(\mathbf{A})\\, so \\\tilde{y} = \mathbf{A} \tilde{z}\\ for some \\\tilde{z} \in \mathbb{R}^n\\ ([Definition 9](#def-column-space)). Then
>
> \\ \begin{aligned} \tilde{y} \cdot \tilde{x} &= \sum\_{i=1}^{m} (\mathbf{A} \tilde{z})\_i\\ x_i && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{)} \\ &= \sum\_{i=1}^{m} \mathopen{}\left(\sum\_{j=1}^na\_{ij} z_j\right)\mathclose{}\\ x_i && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \\ &= \sum\_{i=1}^{m} \sum\_{j=1}^na\_{ij}\\ z_j\\ x_i && \text{(distribute each } x_i \text{ over the inner sum)} \\ &= \sum\_{j=1}^n\sum\_{i=1}^{m} a\_{ij}\\ z_j\\ x_i && \text{(swap the order of the finite sums)} \\ &= \sum\_{j=1}^nz_j \sum\_{i=1}^{m} a\_{ij}\\ x_i && \text{(commute, then factor } z_j \text{ out of the inner sum)} \\ &= \sum\_{j=1}^nz_j\\ (\tilde{a}\_j \cdot \tilde{x}) && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{)} \\ &= \sum\_{j=1}^nz_j \cdot 0 && \text{(each } \tilde{a}\_j \cdot \tilde{x} = 0 \text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\
>
> So \\\tilde{x}\\ is orthogonal to every vector of \\\mathcal{C}(\mathbf{A})\\.

> **NOTE:**
>
> **Example 55 (The complement of the column space in [Example 22](#exm-column-space))** For \\\mathbf{A}\\ in [Example 22](#exm-column-space), \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\ (1). [Example 24](#exm-null-space) found \\\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(-3, 1)\right\\\mathclose{}\\, so by [Theorem 30](#thm-complement-null-space) this line is \\\mathcal{C}(\mathbf{A})^\perp\\. Directly, for any \\c\\,
>
> \\ \begin{aligned} \mathopen{}\left(c\\(1, 3)\right)\mathclose{} \cdot (-3, 1) &= c\\\mathopen{}\left((1, 3) \cdot (-3, 1)\right)\mathclose{} && \text{(}\href{#thm-dot-linear}{\text{Theorem~28}}\text{, special case } b = 0 \text{, first slot)} \\ &= c\\(-3 + 3) && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 31 (A subspace and its orthogonal complement make up the whole space)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\. Then
>
> 1.  \\\mathcal{S} \cap \mathcal{S}^\perp = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\;
> 2.  \\\dim(\mathcal{S}) + \dim(\mathcal{S}^\perp) = p\\;
> 3.  \\\mathbb{R}^p = \mathcal{S} \oplus \mathcal{S}^\perp\\ ([Definition 17](#def-direct-sum)).
>
> So every \\\tilde{y} \in \mathbb{R}^p\\ can be written as \\\tilde{y} = \tilde{u} + \tilde{v}\\ with \\\tilde{u} \in \mathcal{S}\\ and \\\tilde{v} \in \mathcal{S}^\perp\\ in only one way ([Theorem 27](#thm-direct-sum-equiv)).

> **NOTE:**
>
> *Proof*. \\\mathcal{S}^\perp\\ is a subspace ([Theorem 29](#thm-orthogonal-complement-subspace)), so it has a dimension ([Definition 8](#def-dimension)).
>
> **Part 1.** Both \\\mathcal{S}\\ and \\\mathcal{S}^\perp\\ contain \\\tilde{0}\\ ([Theorem 1](#thm-subspace-zero)). If \\\tilde{x}\\ is in both, then \\\tilde{x}\\ is orthogonal to every vector of \\\mathcal{S}\\, \\\tilde{x}\\ itself included, so
>
> \\ \begin{aligned} \tilde{x} \cdot \tilde{x} &= x_1^2 + \cdots + x_p^2 \\ &= 0, \end{aligned} \\
>
> which forces every \\x_i = 0\\.
>
> **Part 2.** Let \\d = \dim(\mathcal{S})\\. If \\d = 0\\, then \\\mathcal{S}\\ has a basis ([Theorem 9](#thm-extend-basis)) with \\0\\ vectors ([Definition 8](#def-dimension)), the empty list, whose span is \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ ([Definition 5](#def-span)); so \\\mathcal{S} = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, \\\mathcal{S}^\perp = \mathbb{R}^p\\ (every \\\tilde{u}\\ satisfies \\\tilde{0}\cdot \tilde{u} = 0\\), and \\0 + p = p\\ ([Example 16](#exm-dimension)). If \\d \ge 1\\, choose a basis \\\tilde{a}\_1, \ldots, \tilde{a}\_d\\ of \\\mathcal{S}\\ ([Theorem 9](#thm-extend-basis)), and let \\\mathbf{A}\\ be the \\p \times d\\ matrix with these columns. The basis spans \\\mathcal{S}\\, so \\\mathcal{S} = \mathcal{C}(\mathbf{A})\\ ([Theorem 12](#thm-column-space-span)), and \\\mathcal{S}^\perp = \mathcal{N}({\mathbf{A}}^{\top})\\ ([Theorem 30](#thm-complement-null-space)). \\{\mathbf{A}}^{\top}\\ is \\d \times p\\, so
>
> \\ \begin{aligned} \dim(\mathcal{S}^\perp) &= \dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{} && \text{(}\href{#thm-complement-null-space}{\text{Theorem~30}}\text{)} \\ &= \operatorname{nullity}({\mathbf{A}}^{\top}) && \text{(}\href{#def-nullity}{\text{Definition~12}}\text{)} \\ &= p - \operatorname{rank}({\mathbf{A}}^{\top}) && \text{(}\href{#thm-rank-nullity}{\text{Theorem~17}}\text{, for the } p \text{ columns of } {\mathbf{A}}^{\top} \text{)} \\ &= p - \operatorname{rank}(\mathbf{A}) && \text{(}\href{#thm-rank-transpose}{\text{Theorem~19}}\text{)} \\ &= p - \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} && \text{(}\href{#thm-rank-dim}{\text{Theorem~16}}\text{)} \\ &= p - d. && \text{(} \mathcal{C}(\mathbf{A}) = \mathcal{S} \text{)} \end{aligned} \\
>
> **Part 3.** \\\mathcal{S} + \mathcal{S}^\perp\\ is a subspace of \\\mathbb{R}^p\\ ([Theorem 24](#thm-sum-intersection-subspace)), and
>
> \\ \begin{aligned} \dim(\mathcal{S} + \mathcal{S}^\perp) &= \dim(\mathcal{S}) + \dim(\mathcal{S}^\perp) - \dim(\mathcal{S} \cap \mathcal{S}^\perp) && \text{(}\href{#thm-dim-sum}{\text{Theorem~25}}\text{)} \\ &= p - \dim(\mathcal{S} \cap \mathcal{S}^\perp) && \text{(part 2)} \\ &= p - 0 && \text{(part 1, and } \dim(\mathopen{}\left\\\tilde{0}\right\\\mathclose{}) = 0 \text{ by }\href{#exm-dimension}{\text{Example~16}}\text{)} \\ &= p. && \text{(arithmetic)} \end{aligned} \\
>
> Since \\\mathcal{S} + \mathcal{S}^\perp \subseteq \mathbb{R}^p\\, \\\mathbb{R}^p\\ is a subspace ([Example 3](#exm-subspace)) and \\\dim(\mathbb{R}^p) = p\\ ([Example 16](#exm-dimension)), [Theorem 11](#thm-subspace-equal-dim) gives \\\mathcal{S} + \mathcal{S}^\perp = \mathbb{R}^p\\. Together with part 1, \\\mathbb{R}^p = \mathcal{S} \oplus \mathcal{S}^\perp\\. The uniqueness of the split then follows from [Theorem 27](#thm-direct-sum-equiv) (statement 1 implies statement 3).

> **NOTE:**
>
> **Example 56 (Splitting a vector of \\\mathbb{R}^3\\ along a line and its complement)** Let \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ in \\\mathbb{R}^3\\. A single nonzero vector is linearly independent (\\c\\\tilde{v} = \tilde{0}\\ with \\\tilde{v} \ne \tilde{0}\\ forces \\c = 0\\), so \\(1, 1, 0)\\ is a basis of \\\mathcal{S}\\ and \\\dim(\mathcal{S}) = 1\\. A vector \\\tilde{u}\\ is in \\\mathcal{S}^\perp\\ exactly when \\u_1 + u_2 = 0\\: that condition says \\(1, 1, 0) \cdot \tilde{u} = 0\\, and then
>
> \\ \begin{aligned} c\\(1, 1, 0) \cdot \tilde{u} &= c\\(u_1 + u_2) \\ &= 0 \end{aligned} \\
>
> for every \\c\\. So
>
> \\ \begin{aligned} \mathcal{S}^\perp &= \mathopen{}\left\\(a, -a, c) : a, c \in \mathbb{R}\right\\\mathclose{} \\ &= \operatorname{span}\mathopen{}\left\\(1, -1, 0), (0, 0, 1)\right\\\mathclose{}. \end{aligned} \\
>
> Those two vectors are linearly independent, because \\a\\(1, -1, 0) + c\\(0, 0, 1) = (a, -a, c)\\ is \\\tilde{0}\\ only if
>
> \\ \begin{aligned} a &= c \\ &= 0, \end{aligned} \\
>
> so \\\dim(\mathcal{S}^\perp) = 2\\, and \\1 + 2 = 3\\, as part 2 says.
>
> To split \\\tilde{y} = (3, 1, 2)\\, look for \\\tilde{u} = t\\(1, 1, 0)\\ with
>
> \\ \begin{aligned} \tilde{v} &= \tilde{y} - \tilde{u} \\ &= (3 - t, 1 - t, 2) \end{aligned} \\
>
> in \\\mathcal{S}^\perp\\: that membership needs \\(3 - t) + (1 - t) = 0\\, so \\t = 2\\. Then \\\tilde{u} = (2, 2, 0)\\ and \\\tilde{v} = (1, -1, 2)\\, with \\\tilde{u} + \tilde{v} = (3, 1, 2)\\ and
>
> \\ \begin{aligned} (1, 1, 0) \cdot (1, -1, 2) &= 1 - 1 + 0 \\ &= 0. \end{aligned} \\

> **NOTE:**
>
> **Theorem 32 (The orthogonal complement of the orthogonal complement)** For any subspace \\\mathcal{S}\\ of \\\mathbb{R}^p\\,
>
> \\ (\mathcal{S}^\perp)^\perp = \mathcal{S}. \\

> **NOTE:**
>
> *Proof*. **\\\mathcal{S} \subseteq (\mathcal{S}^\perp)^\perp\\.** Take \\\tilde{s} \in \mathcal{S}\\ and any \\\tilde{v} \in \mathcal{S}^\perp\\. By [Definition 19](#def-orthogonal-complement), \\\tilde{s} \cdot \tilde{v} = 0\\, so \\\tilde{v} \cdot \tilde{s} = 0\\ too ([Theorem 1 in Vectors](linear-algebra-vectors.llms.md#thm-lincom-symmetric)). So \\\tilde{s}\\ is orthogonal to every vector of \\\mathcal{S}^\perp\\, that is, \\\tilde{s} \in (\mathcal{S}^\perp)^\perp\\.
>
> **Equal dimensions.** \\\mathcal{S}^\perp\\ is a subspace ([Theorem 29](#thm-orthogonal-complement-subspace)), so part 2 of [Theorem 31](#thm-orthogonal-direct-sum) applies to it as well as to \\\mathcal{S}\\:
>
> \\ \begin{aligned} \dim\mathopen{}\left((\mathcal{S}^\perp)^\perp\right)\mathclose{} &= p - \dim(\mathcal{S}^\perp) && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~31}}\text{, applied to } \mathcal{S}^\perp \text{)} \\ &= p - \mathopen{}\left(p - \dim(\mathcal{S})\right)\mathclose{} && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~31}}\text{, applied to } \mathcal{S} \text{)} \\ &= \dim(\mathcal{S}). && \text{(arithmetic)} \end{aligned} \\
>
> \\(\mathcal{S}^\perp)^\perp\\ is a subspace ([Theorem 29](#thm-orthogonal-complement-subspace)) that contains \\\mathcal{S}\\ and has the same dimension, so it equals \\\mathcal{S}\\ ([Theorem 11](#thm-subspace-equal-dim)).

> **NOTE:**
>
> **Example 57 (Back to the line)** In [Example 56](#exm-orthogonal-direct-sum), \\\mathcal{S} = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ and \\\mathcal{S}^\perp = \operatorname{span}\mathopen{}\left\\(1, -1, 0), (0, 0, 1)\right\\\mathclose{}\\. Put those two spanning vectors in the columns of the \\3 \times 2\\ matrix \\\mathbf{B} = \begin{bmatrix} 1 & 0 \\ -1 & 0 \\ 0 & 1 \end{bmatrix}\\, so \\\mathcal{S}^\perp = \mathcal{C}(\mathbf{B})\\ ([Theorem 12](#thm-column-space-span)) and \\(\mathcal{S}^\perp)^\perp = \mathcal{N}({\mathbf{B}}^{\top})\\ ([Theorem 30](#thm-complement-null-space)). Since \\{\mathbf{B}}^{\top} \tilde{w} = (w_1 - w_2,\\ w_3)\\ ([Definition 11 in Matrices](linear-algebra-matrices.llms.md#def-matvec-mult)), \\\tilde{w} \in (\mathcal{S}^\perp)^\perp\\ exactly when \\w_1 - w_2 = 0\\ and \\w_3 = 0\\. So
>
> \\ \begin{aligned} (\mathcal{S}^\perp)^\perp &= \mathopen{}\left\\(a, a, 0) : a \in \mathbb{R}\right\\\mathclose{} \\ &= \mathcal{S}. \end{aligned} \\

> **NOTE:**
>
> **Example 58 (A set that is not a subspace does not come back)** The one-element set \\\mathcal{X} = \mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\ is not a subspace. Its orthogonal complement is the same as that of \\\mathcal{S}\\ in [Example 57](#exm-double-complement), since both are defined by the single condition \\u_1 + u_2 = 0\\, so \\(\mathcal{X}^\perp)^\perp = \operatorname{span}\mathopen{}\left\\(1, 1, 0)\right\\\mathclose{}\\, which contains \\(2, 2, 0) \notin \mathcal{X}\\. [Theorem 32](#thm-double-complement) needs \\\mathcal{S}\\ to be a subspace.

## 7 The fundamental theorem of linear algebra

> **NOTE:**
>
> **Theorem 33 (Fundamental theorem of linear algebra)** Let \\\mathbf{A}\\ be an \\m \times n\\ matrix with \\\operatorname{rank}(\mathbf{A}) = r\\. Then
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
> *Proof*. **Part 1.** The first equation is [Theorem 30](#thm-complement-null-space). \\\mathcal{C}(\mathbf{A})\\ is a subspace of \\\mathbb{R}^m\\ ([Theorem 12](#thm-column-space-span)), so
>
> \\ \begin{aligned} \mathbb{R}^m &= \mathcal{C}(\mathbf{A}) \oplus \mathcal{C}(\mathbf{A})^\perp && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~31}}\text{)} \\ &= \mathcal{C}(\mathbf{A}) \oplus \mathcal{N}({\mathbf{A}}^{\top}). && \text{(first equation)} \end{aligned} \\
>
> **Part 2.**
>
> \\ \begin{aligned} \mathcal{C}(\mathbf{A}) &= \mathopen{}\left(\mathcal{C}(\mathbf{A})^\perp\right)\mathclose{}^\perp && \text{(}\href{#thm-double-complement}{\text{Theorem~32}}\text{)} \\ &= \mathcal{N}({\mathbf{A}}^{\top})^\perp. && \text{(part 1)} \end{aligned} \\
>
> **Part 3.** Apply parts 2 and 1 to the \\n \times m\\ matrix \\{\mathbf{A}}^{\top}\\, using \\{({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}\\: part 2 gives \\\mathcal{C}({\mathbf{A}}^{\top}) = \mathcal{N}(\mathbf{A})^\perp\\, and part 1 gives \\\mathbb{R}^n = \mathcal{C}({\mathbf{A}}^{\top}) \oplus \mathcal{N}(\mathbf{A})\\.
>
> **Part 4.** \\\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = r\\ by [Theorem 16](#thm-rank-dim). \\\dim\mathopen{}\left(\mathcal{C}({\mathbf{A}}^{\top})\right)\mathclose{} = \operatorname{rank}({\mathbf{A}}^{\top})\\ by [Theorem 16](#thm-rank-dim), and that is \\r\\ by [Theorem 19](#thm-rank-transpose). \\\mathbf{A}\\ has \\n\\ columns, so \\\dim\mathopen{}\left(\mathcal{N}(\mathbf{A})\right)\mathclose{} = n - r\\ ([Definition 12](#def-nullity), [Theorem 17](#thm-rank-nullity)). \\{\mathbf{A}}^{\top}\\ has \\m\\ columns and rank \\r\\, so \\\dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{} = m - r\\ in the same way.

> **NOTE:**
>
> **Example 59 (The four subspaces of the matrix in [Example 22](#exm-column-space))** For \\\mathbf{A}\\ in [Example 22](#exm-column-space), \\m = 2\\, \\n = 3\\ and \\r = 1\\ ([Example 29](#exm-rank-dim)).
>
> - **In \\\mathbb{R}^3\\:** the row space \\\mathcal{C}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(1, -2, -2)\right\\\mathclose{}\\
>
>   1.  has dimension \\1 = r\\, and \\\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(2, 1, 0), (2, 0, 1)\right\\\mathclose{}\\ has dimension \\2 = n - r\\ ([Example 30](#exm-nullity)). The spanning vectors are orthogonal:
>
>   \\ \begin{aligned} (1, -2, -2) \cdot (2, 1, 0) &= 2 - 2 + 0 \\ &= 0 \end{aligned} \\
>
>   and
>
>   \\ \begin{aligned} (1, -2, -2) \cdot (2, 0, 1) &= 2 + 0 - 2 \\ &= 0. \end{aligned} \\
>
> - **In \\\mathbb{R}^2\\:** \\\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\\(1, 3)\right\\\mathclose{}\\ has dimension \\1 = r\\, and \\\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\\(-3, 1)\right\\\mathclose{}\\ has dimension \\1 = m - r\\ ([Example 55](#exm-complement-null-space)).
>
> By part 3, \\\tilde{y} = (1, 0, 0)\\ splits uniquely into a row-space part \\t\\(1, -2, -2)\\ and a null-space part. The null-space part \\\tilde{y} - t\\(1, -2, -2)\\ lies in \\\mathcal{N}(\mathbf{A})\\ (part 3), and \\\mathcal{N}(\mathbf{A}) = \mathcal{C}({\mathbf{A}}^{\top})^\perp\\ ([Theorem 30](#thm-complement-null-space) applied to \\{\mathbf{A}}^{\top}\\, with \\{({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}\\), so it must be orthogonal to \\(1, -2, -2)\\:
>
> \\ \begin{aligned} 0 &= (1, -2, -2) \cdot \mathopen{}\left((1, 0, 0) - t\\(1, -2, -2)\right)\mathclose{} && \text{(orthogonality)} \\ &= (1, -2, -2) \cdot \mathopen{}\left(1 \cdot(1, 0, 0) + (-t)\\(1, -2, -2)\right)\mathclose{} && \text{(write the difference as a linear combination)} \\ &= 1 \cdot\mathopen{}\left((1, -2, -2) \cdot (1, 0, 0)\right)\mathclose{} + (-t)\\\mathopen{}\left((1, -2, -2) \cdot (1, -2, -2)\right)\mathclose{} && \text{(}\href{#thm-dot-linear}{\text{Theorem~28}}\text{)} \\ &= 1 \cdot 1 + (-t) \cdot 9 && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{)} \\ &= 1 - 9t, && \text{(arithmetic)} \end{aligned} \\
>
> so \\t = \frac{1}{9}\\. The row-space part is \\\mathopen{}\left(\frac{1}{9}, -\frac{2}{9}, -\frac{2}{9}\right)\mathclose{}\\ and the null-space part is \\\mathopen{}\left(\frac{8}{9}, \frac{2}{9}, \frac{2}{9}\right)\mathclose{}\\; as a check, row 1 of \\\mathbf{A}\\ gives \\\frac{8}{9} - 2 \cdot\frac{2}{9} - 2 \cdot\frac{2}{9} = 0\\, and row 2 is \\3\\ times row 1, so \\\mathbf{A}\\ sends the null-space part to \\\tilde{0}\_2\\.

Back to top

## References

Banerjee, Sudipto, and Anindya Roy. 2014. *Linear Algebra and Matrix Analysis for Statistics*. Vol. 181. Crc Press Boca Raton. <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>.

Zhou, Hua. 2024a. *Orthogonal Projections*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/06-orthproj/06-orthproj.html>.

Zhou, Hua. 2024b. *Rank and Nullity*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/05-rank/05-rank.html>.

Zhou, Hua. 2024c. *Vector Space*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/04-vecsp/04-vecsp.html>.
