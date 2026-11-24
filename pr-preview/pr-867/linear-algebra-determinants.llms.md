# Determinants

Code

Published

Last modified: 2026-11-23 20:33:37 (PST)

# 1 Definition

> **NOTE:**
>
> **Definition 1 (Determinant)** The **determinant** [\[1\]](#ref-wikipedia_determinant) of a $p \times p$ matrix $\mathbf{A}$ with entries $a_{ij}$, written $\det(\mathbf{A})$ or $\mathopen{}\left|\mathbf{A}\right|\mathclose{}$, is the number defined recursively in $p$:
>
> - For $p = 1$, $\det(\mathbf{A}) = a_{11}$.
> - For $p \ge 2$, $$\det(\mathbf{A}) = \sum_{j=1}^p(-1)^{1+j}\, a_{1j} {\det\mathopen{}\left(\mathbf{A}_{(1j)}\right)\mathclose{}},$$ where $\mathbf{A}_{(1j)}$ is the $(p-1) \times (p-1)$ matrix left after deleting row $1$ and column $j$ of $\mathbf{A}$.

> **NOTE:**
>
> **Example 1 (Determinant of a** $2 \times 2$ matrix) For $\mathbf{A} = \begin{bmatrix} a & b \\ c & d \end{bmatrix}$, deleting row 1 and column 1 leaves $\begin{bmatrix} d \end{bmatrix}$, and deleting row 1 and column 2 leaves $\begin{bmatrix} c \end{bmatrix}$. So:
>
> $$\begin{aligned}
> \det(\mathbf{A})
> &= (-1)^{1+1}\, a {\det\mathopen{}\left(\begin{bmatrix} d \end{bmatrix}\right)\mathclose{}}
> + (-1)^{1+2}\, b {\det\mathopen{}\left(\begin{bmatrix} c \end{bmatrix}\right)\mathclose{}}
> && \text{(definition, } p = 2 \text{)}
> \\
> &= a d - b c
> && \text{(definition, } p = 1 \text{)}
> \end{aligned}$$
>
> For example,
>
> $$\begin{aligned}
> {\det\mathopen{}\left(\begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\right)\mathclose{}} &= 2 \cdot 2 - 1 \cdot 1 \\
> &= 3.
> \end{aligned}$$

> **NOTE:**
>
> *Remark 1* (Cofactor expansion). The recursive formula in [Definition 1](#def-determinant) is the *cofactor expansion* along the first row. Other sources define the determinant as a sum over all orderings of the columns and derive this expansion from it; the two definitions agree [\[2\]](#ref-banerjee2014linear).
>
> Each ordering picks one entry from each row, from the column that the ordering assigns to that row, and multiplies them. Its sign is $+1$ if the ordering takes an even number of swaps of two columns to reach from $(1, 2, \ldots, p)$, and $-1$ if it takes an odd number.
>
> For $p = 2$, the columns have two orderings. The ordering $(1, 2)$ keeps each column in place, picks the entries $a_{11}$ and $a_{22}$, and has sign $+1$. The ordering $(2, 1)$ swaps the two columns, picks the entries $a_{12}$ and $a_{21}$, and has sign $-1$. The sum $a_{11} a_{22} - a_{12} a_{21}$ is the value $a d - b c$ from [Example 1](#exm-determinant).

See also [\[1\]](#ref-wikipedia_determinant).

> **TIP:**
>
> Chapter 6 of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown shows the geometric meaning of the determinant:
>
> - [The determinant](https://www.youtube.com/watch?v=Ip3X9LOh2dk) shows how the determinant measures the factor by which a linear transformation scales areas and volumes, and why a zero determinant corresponds to compressing space into a lower dimension.

# 2 Diagonal matrices

> **NOTE:**
>
> **Theorem 1 (Determinant of a diagonal matrix)** The determinant ([Definition 1](#def-determinant)) of a $p \times p$ diagonal matrix ([Definition 4 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-diagonal-matrix)) is the product of its diagonal entries:
>
> $${\det\mathopen{}\left(
> \begin{bmatrix}
> d_1    & \cdots & 0      \\
> \vdots & \ddots & \vdots \\
> 0      & \cdots & d_p
> \end{bmatrix}
> \right)\mathclose{}} = \prod_{i=1}^p d_i$$

> **NOTE:**
>
> *Proof*. By [induction](https://morrison-lab.github.io/mcs/proof-writing.html#def-proof-by-induction) on $p$. For $p = 1$, the matrix is $\begin{bmatrix} d_1 \end{bmatrix}$, and its determinant is $d_1$ by definition.
>
> For $p \ge 2$, suppose the result holds for $(p-1) \times (p-1)$ diagonal matrices, and let $\mathbf{D}$ be $p \times p$ and diagonal. Row 1 of $\mathbf{D}$ is $(d_1, 0, \ldots, 0)$, so only the $j = 1$ term of the definition can be nonzero, and deleting row 1 and column 1 of $\mathbf{D}$ leaves the diagonal matrix with diagonal entries $d_2, \ldots, d_p$:
>
> $$\begin{aligned}
> \det(\mathbf{D})
> &= (-1)^{1+1}\, d_1 {\det\mathopen{}\left(\mathbf{D}_{(11)}\right)\mathclose{}}
> + \sum_{j=2}^p (-1)^{1+j} \cdot 0 \cdot{\det\mathopen{}\left(\mathbf{D}_{(1j)}\right)\mathclose{}}
> && \text{(definition)}
> \\
> &= d_1 {\det\mathopen{}\left(\mathbf{D}_{(11)}\right)\mathclose{}}
> && \text{(drop the zero terms)}
> \\
> &= d_1 \prod_{i=2}^p d_i
> && \text{(induction hypothesis)}
> \\
> &= \prod_{i=1}^p d_i
> && \text{(combine)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 2 (Determinant of a scaled identity matrix)** For a number $c$, $c\,\mathbf{I}_p$ is diagonal with every diagonal entry equal to $c$, so $\det(c\,\mathbf{I}_p) = c^p$. In particular, $\det(\mathbf{I}_p) = 1$.

# 3 Matrix products

> **NOTE:**
>
> **Theorem 2 (Determinant of a product)** For $p \times p$ matrices $\mathbf{A}$ and $\mathbf{B}$,
>
> $$\det(\mathbf{A}\mathbf{B}) = \det(\mathbf{A}) \det(\mathbf{B}).$$

> **NOTE:**
>
> **Example 3 (Checking the product rule)** For $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}$ and $\mathbf{B} = \begin{bmatrix} 1 & 0 \\ 3 & 1 \end{bmatrix}$, [Example 1](#exm-determinant) gives
>
> $$\begin{aligned}
> \det(\mathbf{A}) &= 2 \cdot 1 - 1 \cdot 0 \\
> &= 2
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> \det(\mathbf{B}) &= 1 \cdot 1 - 0 \cdot 3 \\
> &= 1.
> \end{aligned}$$
>
> The product is
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B}
> &= \begin{bmatrix} 2 \cdot 1 + 1 \cdot 3 & 2 \cdot 0 + 1 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 3 & 0 \cdot 0 + 1 \cdot 1 \end{bmatrix} \\
> &= \begin{bmatrix} 5 & 1 \\ 3 & 1 \end{bmatrix},
> \end{aligned}$$
>
> with
>
> $$\begin{aligned}
> \det(\mathbf{A}\mathbf{B}) &= 5 \cdot 1 - 1 \cdot 3 \\
> &= 2 \\
> &= \det(\mathbf{A})\det(\mathbf{B}).
> \end{aligned}$$

> **NOTE:**
>
> *Remark 2* (An example is not a proof). [Example 3](#exm-det-product) checks [Theorem 2](#thm-det-product) for one pair of $2 \times 2$ matrices, which shows the theorem holds there but does not prove it for every pair. The proof needs properties of the determinant that these notes don’t develop; see Banerjee and Roy [\[2\]](#ref-banerjee2014linear).

See also [\[1\]](#ref-wikipedia_determinant).

# 4 Eigenvalues

> **NOTE:**
>
> **Theorem 3 (The determinant of a symmetric matrix is the product of its eigenvalues)** Let $\mathbf{A}$ be a $p \times p$ symmetric matrix with real entries, with eigendecomposition $\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}$ ([Definition 3 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#def-eigendecomposition)) and eigenvalues $\lambda_1, \ldots, \lambda_p$ on the diagonal of $\mathbf{\Lambda}$. Then
>
> $$\det(\mathbf{A}) = \prod_{i=1}^p \lambda_i.$$

> **NOTE:**
>
> *Proof*. First, $\det({\mathbf{Q}}^{\top})\det(\mathbf{Q}) = 1$:
>
> $$\begin{aligned}
> \det({\mathbf{Q}}^{\top})\det(\mathbf{Q})
> &= \det({\mathbf{Q}}^{\top}\mathbf{Q})
> && \text{(determinant of a product)}
> \\
> &= \det(\mathbf{I}_p)
> && \text{(} \mathbf{Q} \text{ is orthogonal)}
> \\
> &= 1
> && \text{(determinant of the identity)}
> \end{aligned}$$
>
> Then:
>
> $$\begin{aligned}
> \det(\mathbf{A})
> &= \det(\mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top})
> && \text{(substitute the eigendecomposition)}
> \\
> &= \det(\mathbf{Q}) \det(\mathbf{\Lambda}) \det({\mathbf{Q}}^{\top})
> && \text{(determinant of a product, twice)}
> \\
> &= \det(\mathbf{\Lambda}) \cdot\det({\mathbf{Q}}^{\top})\det(\mathbf{Q})
> && \text{(reorder the three numbers)}
> \\
> &= \det(\mathbf{\Lambda})
> && \text{(the first display)}
> \\
> &= \prod_{i=1}^p \lambda_i
> && \text{(determinant of a diagonal matrix)}
> \end{aligned}$$
>
> The product steps are [Theorem 2](#thm-det-product), the orthogonality step is [Definition 10 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-orthogonal-matrix), and the identity and diagonal steps are [Theorem 1](#thm-det-diagonal) and [Example 2](#exm-det-diagonal).

> **NOTE:**
>
> **Corollary 1 (A positive definite matrix has a positive determinant)** If $\mathbf{A}$ is positive definite ([Definition 2 in Definite Matrices](linear-algebra-definite-matrices.llms.md#def-positive-definite)), then $\det(\mathbf{A}) > 0$.

> **NOTE:**
>
> *Proof*. By [Theorem 2 in Definite Matrices](linear-algebra-definite-matrices.llms.md#thm-definite-eigenvalues), every eigenvalue of $\mathbf{A}$ is positive, so their product, which is $\det(\mathbf{A})$ by [Theorem 3](#thm-det-eigenvalues), is positive.

> **NOTE:**
>
> **Example 4 (Two ways to the same determinant)** $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ has eigenvalues $3$ and $1$ ([Example 1 in Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md#exm-eigenvalue)), so [Theorem 3](#thm-det-eigenvalues) gives
>
> $$\begin{aligned}
> \det(\mathbf{A}) &= 3 \cdot 1 \\
> &= 3,
> \end{aligned}$$
>
> matching $2 \cdot 2 - 1 \cdot 1 = 3$ from [Example 1](#exm-determinant).

# Definitions on this page

- [Definition 1 (Determinant)](#def-determinant)

Back to top

## References

\[1\]

Wikipedia contributors, “Determinant — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Determinant>

\[2\]

S. Banerjee and A. Roy, *Linear algebra and matrix analysis for statistics*, vol. 181. Crc Press Boca Raton, 2014. Available: <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>
