# Diagonalization and Cholesky

Code

Published

Last modified: 2026-10-10 10:39:03 (PDT)

## 1 Similarity and diagonalization

> **NOTE:**
>
> This section is adapted from Zhou ([2024a](#ref-zhou2024eig)), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). These notes take eigenvalues to be real numbers ([Definition 16 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-eigenvalue)), so the source’s complex eigenvalues are left out, and eigenvalues are characterized through null spaces rather than through the characteristic polynomial. Only the source’s material on similarity, diagonalization and the basic eigenvalue properties is adapted; its characteristic polynomial and algebraic multiplicity, its trace and determinant identities, and its section on symmetric matrices (covered by [Theorem 10 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#thm-spectral)) are left out, and its result that eigenvalues of orthogonal matrices have modulus \\1\\ appears here in the real form \\\pm 1\\. The source’s two-vector argument that eigenvectors for distinct eigenvalues are independent is extended here to any number of eigenvectors.

> **NOTE:**
>
> **Theorem 1 (A square matrix is invertible exactly when it has full column rank)** An \\n \times n\\ matrix \\\mathbf{A}\\ is invertible ([Definition 6 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-invertible-matrix)) exactly when \\\operatorname{rank}(\mathbf{A}) = n\\ (full column rank, [Definition 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-full-column-rank)), that is, exactly when \\\mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}\\.

> **NOTE:**
>
> *Proof*. **Invertible implies rank \\n\\.** If \\\mathbf{A} \tilde{x} = \tilde{0}\_n\\, then
>
> \\ \begin{aligned} \tilde{x} &= \mathbf{I}\_n \tilde{x} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \\ &= (\mathbf{A}^{-1} \mathbf{A})\\\tilde{x} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{A}^{-1}\\(\mathbf{A} \tilde{x}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A}^{-1}\\\tilde{0}\_n && \text{(} \mathbf{A} \tilde{x} = \tilde{0}\_n \text{)} \\ &= \tilde{0}\_n, && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \end{aligned} \\
>
> so \\\mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}\\, the nullity is \\0\\, and \\\operatorname{rank}(\mathbf{A}) = n\\ ([Theorem 6 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-nullity)).
>
> **Rank \\n\\ implies invertible.** Every system \\\mathbf{A} \tilde{y} = \tilde{b}\\ has exactly one solution ([Corollary 1 in Projections and Linear Systems](linear-algebra-projections.llms.md#cor-solution-unique), both parts, with \\m = n\\). Let \\\tilde{y}\_j\\ solve \\\mathbf{A} \tilde{y}\_j = \tilde{e}\_j\\ ([Definition 12 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)), and let \\\mathbf{B}\\ have columns \\\tilde{y}\_1, \ldots, \tilde{y}\_n\\. Column \\j\\ of \\\mathbf{A} \mathbf{B}\\ is \\\mathbf{A} \tilde{y}\_j = \tilde{e}\_j\\ (1), so \\\mathbf{A} \mathbf{B} = \mathbf{I}\_n\\. For the other order,
>
> \\ \begin{aligned} \mathbf{A}\\(\mathbf{B} \mathbf{A} - \mathbf{I}\_n) &= \mathbf{A} \mathbf{B} \mathbf{A} - \mathbf{A} \mathbf{I}\_n && \text{(}\href{linear-algebra-projections.qmd#thm-scalar-matmul}{\text{Theorem~7 in Projections and Linear Systems}}\text{, }\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{I}\_n \mathbf{A} - \mathbf{A} \mathbf{I}\_n && \text{(} \mathbf{A} \mathbf{B} = \mathbf{I}\_n \text{)} \\ &= \mathbf{A} - \mathbf{A} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \\ &= \mathbf{0}\_{n \times n}, && \text{(arithmetic)} \end{aligned} \\
>
> so every column of \\\mathbf{B} \mathbf{A} - \mathbf{I}\_n\\ is in \\\mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}\\ (1), and \\\mathbf{B} \mathbf{A} = \mathbf{I}\_n\\. So \\\mathbf{B}\\ satisfies [Definition 6 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-invertible-matrix). The two conditions in the statement are equivalent by [Theorem 6 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-nullity): the nullity is \\0\\ exactly when \\\mathcal{N}(\mathbf{A}) = \mathopen{}\left\\\tilde{0}\_n\right\\\mathclose{}\\, because a subspace of dimension \\0\\ has the empty list as a basis, whose span is \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ ([Definition 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension), [Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)), and \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ has dimension \\0\\ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)).

> **NOTE:**
>
> **Example 1 (Rank decides invertibility)**  
>
> - \\\begin{bmatrix} 2 & 1 \\ 0 & 1 \end{bmatrix}\\ of [Example 5 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-invertible-matrix) has rank \\2\\: \\c_1 (2, 0) + c_2 (1, 1) = (2c_1 + c_2, c_2)\\ is \\\tilde{0}\\ only if \\c_2 = 0\\ and then \\c_1 = 0\\. So it is invertible, as that example found by exhibiting the inverse.
> - \\\begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ has rank less than \\2\\: \\(1, -1)\\ is a nonzero vector in its null space. So it is singular, as [Example 5 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-invertible-matrix) found.

> **NOTE:**
>
> **Definition 1 (Eigenspace and geometric multiplicity)** Let \\\lambda\\ be an eigenvalue of a \\p \times p\\ matrix \\\mathbf{A}\\ ([Definition 16 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-eigenvalue)). The **eigenspace** of \\\lambda\\ is \\\mathcal{E}\_\lambda\stackrel{\text{def}}{=}\mathcal{N}(\mathbf{A} - \lambda\\\mathbf{I}\_p)\\. It is a subspace of \\\mathbb{R}^p\\ ([Theorem 2 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-null-space-subspace)), and its dimension ([Definition 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)) is the **geometric multiplicity** of \\\lambda\\.

> **NOTE:**
>
> **Example 2 (Eigenspaces of two matrices)**  
>
> - For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ of [Example 21 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-eigenvalue), \\\mathbf{A} - 3\\\mathbf{I}\_2 = \begin{bmatrix} -1 & 1 \\ 1 & -1 \end{bmatrix}\\ sends \\\tilde{v}\\ to \\(v_2 - v_1)\\(1, -1)\\, so \\\mathcal{E}\_3 = \operatorname{span}\mathopen{}\left\\(1, 1)\right\\\mathclose{}\\, with geometric multiplicity \\1\\.
>
> - For \\\mathbf{J} = \begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix}\\, \\\mathbf{J} \tilde{v} = (v_2, 0)\\.
>
>   \\ \begin{aligned} \mathbf{J}\\(1, 0) &= (0, 0) \\ &= 0\\(1, 0), \end{aligned} \\
>
>   so \\0\\ is an eigenvalue. If \\\mathbf{J} \tilde{v} = \lambda\tilde{v}\\ with \\\lambda\ne 0\\, the second entry gives \\\lambda v_2 = 0\\, so \\v_2 = 0\\, and then the first gives \\\lambda v_1 = 0\\, so \\\tilde{v} = \tilde{0}\\. So \\0\\ is the only eigenvalue, and
>
>   \\ \begin{aligned} \mathcal{E}\_0 &= \mathcal{N}(\mathbf{J}) \\ &= \mathopen{}\left\\(t, 0) : t \in \mathbb{R}\right\\\mathclose{}, \end{aligned} \\
>
>   with geometric multiplicity \\1\\.

> **NOTE:**
>
> **Example 3 (A number that is not an eigenvalue has no eigenspace)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ and \\\lambda= 2\\, \\\mathbf{A} - 2\\\mathbf{I}\_2 = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ sends \\\tilde{v}\\ to \\(v_2, v_1)\\, which is \\\tilde{0}\\ only for \\\tilde{v} = \tilde{0}\\, so \\\mathcal{N}(\mathbf{A} - 2\\\mathbf{I}\_2) = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\. And \\2\\ is not an eigenvalue ([Definition 16 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-eigenvalue)): \\\mathbf{A} \tilde{v} = 2\tilde{v}\\ reads \\(2v_1 + v_2, v_1 + 2v_2) = (2v_1, 2v_2)\\, so \\v_2 = 0\\ and \\v_1 = 0\\. So [Definition 1](#def-eigenspace) does not apply to \\2\\.

> **NOTE:**
>
> **Theorem 2 (Eigenvalues are where \\\mathbf{A} - \lambda\mathbf{I}\\ is singular)** Let \\\mathbf{A}\\ be a \\p \times p\\ matrix and \\\lambda\\ a real number. Then \\\lambda\\ is an eigenvalue of \\\mathbf{A}\\ ([Definition 16 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-eigenvalue)) exactly when \\\mathbf{A} - \lambda\\\mathbf{I}\_p\\ is singular ([Definition 6 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-invertible-matrix)). In particular, \\\mathbf{A}\\ is singular exactly when \\0\\ is one of its eigenvalues; and each eigenspace \\\mathcal{E}\_\lambda\\ ([Definition 1](#def-eigenspace)) is a subspace of \\\mathbb{R}^p\\ consisting of \\\tilde{0}\\ and the eigenvectors for \\\lambda\\.

> **NOTE:**
>
> *Proof*. For any \\\tilde{v} \in \mathbb{R}^p\\,
>
> \\ \begin{aligned} (\mathbf{A} - \lambda\\\mathbf{I}\_p)\\\tilde{v} &= \mathbf{A} \tilde{v} - (\lambda\\\mathbf{I}\_p)\\\tilde{v} && \text{(}\href{linear-algebra-projections.qmd#thm-scalar-matmul}{\text{Theorem~7 in Projections and Linear Systems}}\text{, the difference law)} \\ &= \mathbf{A} \tilde{v} - \lambda\\(\mathbf{I}\_p \tilde{v}) && \text{(}\href{linear-algebra-projections.qmd#thm-scalar-matmul}{\text{Theorem~7 in Projections and Linear Systems}}\text{, the scalar factor)} \\ &= \mathbf{A} \tilde{v} - \lambda\tilde{v}, && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \end{aligned} \\
>
> so \\\mathbf{A} \tilde{v} = \lambda\tilde{v}\\ exactly when \\\tilde{v} \in \mathcal{N}(\mathbf{A} - \lambda\\\mathbf{I}\_p)\\; the nonzero such \\\tilde{v}\\ are the eigenvectors for \\\lambda\\. So \\\lambda\\ is an eigenvalue exactly when that null space contains a nonzero vector, which by [Theorem 1](#thm-invertible-rank) is exactly when \\\mathbf{A} - \lambda\\\mathbf{I}\_p\\ is singular. With \\\lambda= 0\\, \\\mathbf{A} - 0\\\mathbf{I}\_p = \mathbf{A}\\. An eigenspace is a null space, so it is a subspace ([Theorem 2 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-null-space-subspace)).

> **NOTE:**
>
> **Example 4 (Eigenvalues and singular matrices)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, \\\mathbf{A} - 3\\\mathbf{I}\_2 = \begin{bmatrix} -1 & 1 \\ 1 & -1 \end{bmatrix}\\ is singular (its columns are negatives of each other, so its rank is \\1\\), matching the eigenvalue \\3\\ of [Example 21 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-eigenvalue). \\\mathbf{A}\\ itself has rank \\2\\, since \\c_1 (2, 1) + c_2 (1, 2) = (2c_1 + c_2, c_1 + 2c_2)\\ is \\\tilde{0}\\ only if
>
> \\ \begin{aligned} c_1 &= c_2 \\ &= 0 \end{aligned} \\
>
> (subtract twice the second entry from the first: \\-3c_2 = 0\\, and then the second entry gives \\c_1 = 0\\); so it is invertible ([Theorem 1](#thm-invertible-rank)), and \\0\\ is not an eigenvalue. The singular matrix \\\begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\ has eigenvalue \\0\\, with eigenvector \\(1, -1)\\.

> **NOTE:**
>
> **Theorem 3 (Eigenvalues of shifts and powers)** Let \\\tilde{v}\\ be an eigenvector of a \\p \times p\\ matrix \\\mathbf{A}\\ for the eigenvalue \\\lambda\\ ([Definition 16 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-eigenvalue)). Then
>
> 1.  \\\tilde{v}\\ is an eigenvector of \\\mathbf{A} + s\\\mathbf{I}\_p\\ for \\\lambda+ s\\, for every number \\s\\;
> 2.  \\\tilde{v}\\ is an eigenvector of \\\mathbf{A}^k\\ ([Definition 2 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-matrix-power)) for \\\lambda^k\\, for every positive integer \\k\\.

> **NOTE:**
>
> *Proof*. **Part 1.**
>
> \\ \begin{aligned} (\mathbf{A} + s\\\mathbf{I}\_p)\\\tilde{v} &= \mathbf{A} \tilde{v} + (s\\\mathbf{I}\_p)\\\tilde{v} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-distrib}{\text{Theorem~6 in Matrices}}\text{)} \\ &= \mathbf{A} \tilde{v} + s\\(\mathbf{I}\_p \tilde{v}) && \text{(}\href{linear-algebra-projections.qmd#thm-scalar-matmul}{\text{Theorem~7 in Projections and Linear Systems}}\text{)} \\ &= \lambda\tilde{v} + s\\(\mathbf{I}\_p \tilde{v}) && \text{(eigenvector)} \\ &= \lambda\tilde{v} + s \tilde{v} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \\ &= (\lambda+ s)\\\tilde{v}. && \text{(add entrywise)} \end{aligned} \\
>
> **Part 2, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\k\\.** For \\k = 1\\ it is the assumption. If \\\mathbf{A}^{k-1} \tilde{v} = \lambda^{k-1} \tilde{v}\\, then
>
> \\ \begin{aligned} \mathbf{A}^k \tilde{v} &= \mathbf{A}\\(\mathbf{A}^{k-1} \tilde{v}) && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-power}{\text{Definition~2 in Special Matrices and Decompositions}}\text{, }\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{A}\\(\lambda^{k-1} \tilde{v}) && \text{(induction hypothesis)} \\ &= \lambda^{k-1}\\(\mathbf{A} \tilde{v}) && \text{(}\href{linear-algebra-projections.qmd#thm-scalar-matmul}{\text{Theorem~7 in Projections and Linear Systems}}\text{)} \\ &= \lambda^{k-1}\\(\lambda\tilde{v}) && \text{(eigenvector)} \\ &= \lambda^k \tilde{v}. && \text{(multiply the numbers)} \end{aligned} \\
>
> In both parts \\\tilde{v} \ne \tilde{0}\\, so \\\tilde{v}\\ is an eigenvector.

> **NOTE:**
>
> **Example 5 (Shifting and squaring)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ with eigenvector \\(1, 1)\\ for \\3\\ ([Example 21 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-eigenvalue)):
>
> - \\\mathbf{A} - 2\\\mathbf{I}\_2 = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ sends \\(1, 1)\\ to \\(1, 1) = (3 - 2)\\(1, 1)\\;
>
> - \\ \begin{aligned} \mathbf{A}^2 &= \begin{bmatrix} 2 \cdot 2 + 1 \cdot 1 & 2 \cdot 1 + 1 \cdot 2 \\ 1 \cdot 2 + 2 \cdot 1 & 1 \cdot 1 + 2 \cdot 2 \end{bmatrix} \\ &= \begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix} \end{aligned} \\
>
>   1.  sends \\(1, 1)\\ to \\(9, 9) = 3^2\\(1, 1)\\.

> **NOTE:**
>
> **Theorem 4 (The eigenvalues of an upper triangular matrix are its diagonal entries)** The eigenvalues ([Definition 16 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-eigenvalue)) of an upper triangular \\p \times p\\ matrix \\\mathbf{U}\\ ([Definition 7 in Projections and Linear Systems](linear-algebra-projections.llms.md#def-triangular-matrix)) are exactly its diagonal entries \\u\_{11}, \ldots, u\_{pp}\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{U} - \lambda\\\mathbf{I}\_p\\ is upper triangular, with diagonal entries \\u\_{ii} - \lambda\\ ([Definition 10 in Matrices](linear-algebra-matrices.llms.md#def-identity-matrix), [Definition 5 in Matrices](linear-algebra-matrices.llms.md#def-matrix-addition)).
>
> **If \\\lambda\\ is not a diagonal entry,** every \\u\_{ii} - \lambda\ne 0\\, so \\(\mathbf{U} - \lambda\\\mathbf{I}\_p)\\\tilde{v} = \tilde{0}\\ has exactly one solution, \\\tilde{v} = \tilde{0}\\ ([Theorem 16 in Projections and Linear Systems](linear-algebra-projections.llms.md#thm-back-substitution)), and \\\lambda\\ is not an eigenvalue ([Theorem 2](#thm-eigenvalue-singular)).
>
> **If \\\lambda\\ is a diagonal entry,** let \\k\\ be the smallest index with \\u\_{kk} = \lambda\\, and write \\\mathbf{M} = \mathbf{U} - \lambda\\\mathbf{I}\_p\\, so \\m\_{kk} = 0\\ and \\m\_{ii} \ne 0\\ for \\i \< k\\. Look for \\\tilde{v}\\ with \\v_k = 1\\ and \\v_j = 0\\ for \\j \> k\\. Entry \\i\\ of \\\mathbf{M} \tilde{v}\\ is
>
> \\ \begin{aligned} \sum\_{j=1}^pm\_{ij}\\v_j &= \sum\_{j=i}^{p} m\_{ij}\\v_j && \text{(} m\_{ij} = 0 \text{ for } j \< i \text{)} \\ &= \sum\_{j=i}^{k} m\_{ij}\\v_j, && \text{(} v_j = 0 \text{ for } j \> k \text{)} \end{aligned} \\
>
> where the last sum is empty, and so \\0\\, when \\i \> k\\. So:
>
> - for \\i \> k\\ entry \\i\\ is \\0\\;
> - for \\i = k\\ it is \\m\_{kk}\\v_k = 0\\;
> - for \\i \< k\\ it is \\0\\ exactly when \\v_i = -\frac{1}{m\_{ii}} \sum\_{j=i+1}^{k} m\_{ij}\\v_j\\, and these equations fix \\v\_{k-1}, \ldots, v_1\\ in turn, as in [Theorem 16 in Projections and Linear Systems](linear-algebra-projections.llms.md#thm-back-substitution).
>
> So \\\mathbf{M} \tilde{v} = \tilde{0}\\ with \\v_k = 1\\, hence \\\tilde{v} \ne \tilde{0}\\, and \\\lambda\\ is an eigenvalue.

> **NOTE:**
>
> **Example 6 (Eigenvalues read off the diagonal)** \\\mathbf{U} = \begin{bmatrix} 2 & 1 & -1 \\ 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & -1 \end{bmatrix}\\ of [Example 23 in Projections and Linear Systems](linear-algebra-projections.llms.md#exm-triangular-matrix) has eigenvalues \\2\\, \\\tfrac{1}{2}\\ and \\-1\\. For \\\lambda= \tfrac{1}{2}\\ (so \\k = 2\\), take \\v_2 = 1\\, \\v_3 = 0\\; row 1 of \\(\mathbf{U} - \tfrac{1}{2}\\\mathbf{I}\_3)\\\tilde{v}\\ is \\\tfrac{3}{2}\\v_1 + 1 = 0\\, so \\v_1 = -\tfrac{2}{3}\\. Check:
>
> \\ \begin{aligned} \mathbf{U}\\(-\tfrac{2}{3}, 1, 0) &= (-\tfrac{4}{3} + 1, \tfrac{1}{2}, 0) \\ &= \tfrac{1}{2}\\(-\tfrac{2}{3}, 1, 0). \end{aligned} \\
>
> The matrix \\\mathbf{J}\\ of [Example 2](#exm-eigenspace) is upper triangular with both diagonal entries \\0\\, and \\0\\ is its only eigenvalue.

> **NOTE:**
>
> **Theorem 5 (Eigenvalues of idempotent and orthogonal matrices)**  
>
> 1.  Every eigenvalue of an idempotent matrix ([Definition 7 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-idempotent-matrix)) is \\0\\ or \\1\\.
> 2.  Every eigenvalue of an orthogonal matrix ([Definition 10 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-orthogonal-matrix)) is \\1\\ or \\-1\\.

> **NOTE:**
>
> *Proof*. Let \\\tilde{v} \ne \tilde{0}\\ with \\\mathbf{A} \tilde{v} = \lambda\tilde{v}\\.
>
> **Part 1.** If \\\mathbf{A}^2 = \mathbf{A}\\, then
>
> \\ \begin{aligned} \lambda\tilde{v} &= \mathbf{A} \tilde{v} && \text{(eigenvector)} \\ &= \mathbf{A}^2 \tilde{v} && \text{(idempotent)} \\ &= \lambda^2 \tilde{v}, && \text{(}\href{#thm-eigen-shift-power}{\text{Theorem~3}}\text{, part 2)} \end{aligned} \\
>
> and subtracting \\\lambda\tilde{v}\\ from both sides gives \\(\lambda^2 - \lambda)\\\tilde{v} = \tilde{0}\\. Some entry of \\\tilde{v}\\ is nonzero, so
>
> \\ \begin{aligned} \lambda^2 - \lambda&= \lambda\\(\lambda- 1) \\ &= 0, \end{aligned} \\
>
> and a product of two numbers is \\0\\ only when one of them is: \\\lambda= 0\\ or \\\lambda= 1\\.
>
> **Part 2.** If \\\mathbf{A}\\ is orthogonal, then
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{v}\right\rVert\mathclose{} &= \mathopen{}\left\lVert\mathbf{A} \tilde{v}\right\rVert\mathclose{} && \text{(}\href{linear-algebra-special-matrices.qmd#thm-orthogonal-norm}{\text{Theorem~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathopen{}\left\lVert\lambda\tilde{v}\right\rVert\mathclose{} && \text{(eigenvector)} \\ &= \mathopen{}\left\|\lambda\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{v}\right\rVert\mathclose{}, && \text{(}\href{linear-algebra-inner-products.qmd#thm-norm-properties}{\text{Theorem~1 in Inner Products and Orthogonality}}\text{, part 2)} \end{aligned} \\
>
> and \\\mathopen{}\left\lVert\tilde{v}\right\rVert\mathclose{} \> 0\\ ([Theorem 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#thm-norm-properties), part 1), so dividing by \\\mathopen{}\left\lVert\tilde{v}\right\rVert\mathclose{}\\ gives \\\mathopen{}\left\|\lambda\right\|\mathclose{} = 1\\; since \\\lambda\\ is real ([Definition 16 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-eigenvalue)), \\\lambda= 1\\ or \\\lambda= -1\\.

> **NOTE:**
>
> **Example 7 (Projections and reflections)**  
>
> - The idempotent matrix \\\begin{bmatrix} 0.5 & 0.5 \\ 0.5 & 0.5 \end{bmatrix}\\ of [Example 3 in Projections and Linear Systems](linear-algebra-projections.llms.md#exm-hat-matrix-projection) sends \\(1, 1)\\ to \\(1, 1)\\ and \\(1, -1)\\ to \\(0, 0)\\: eigenvalues \\1\\ and \\0\\.
>
> - The matrix \\\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\, which swaps the two entries, is orthogonal: its columns \\(0, 1)\\ and \\(1, 0)\\ are orthonormal ([Remark 5 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#rem-orthogonal-matrix-columns)). It sends \\(1, 1)\\ to \\(1, 1)\\ and \\(1, -1)\\ to \\(-1, 1)\\: eigenvalues \\1\\ and \\-1\\.
>
> - The rotation \\\mathbf{Q}\\ of [Example 11 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-orthogonal-matrix) has no real eigenvalue. By part 2 the only candidates are \\\pm 1\\. \\\mathbf{Q} \tilde{v} = \tilde{v}\\ reads \\-0.4\\v_1 - 0.8\\v_2 = 0\\ and \\0.8\\v_1 - 0.4\\v_2 = 0\\, so \\v_1 = -2 v_2\\ and
>
>   \\ \begin{aligned} v_2 &= 2 v_1 \\ &= -4 v_2, \end{aligned} \\
>
>   forcing \\\tilde{v} = \tilde{0}\\; \\\mathbf{Q} \tilde{v} = -\tilde{v}\\ reads \\1.6\\v_1 - 0.8\\v_2 = 0\\ and \\0.8\\v_1 + 1.6\\v_2 = 0\\, so \\v_2 = 2 v_1\\ and \\0.8\\v_1 + 3.2\\v_1 = 0\\, forcing \\\tilde{v} = \tilde{0}\\ again.

> **NOTE:**
>
> **Definition 2 (Similar matrices)** Two \\p \times p\\ matrices \\\mathbf{A}\\ and \\\mathbf{B}\\ are **similar** if \\\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}\\ for some invertible \\p \times p\\ matrix \\\mathbf{P}\\ ([Definition 6 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-invertible-matrix)).

> **NOTE:**
>
> *Remark 1* (Similarity read both ways). If \\\mathbf{P}\\ is invertible, then \\\mathbf{P}^{-1}\\ is invertible with inverse \\\mathbf{P}\\:
>
> \\ \begin{aligned} \mathbf{P}^{-1} \mathbf{P} &= \mathbf{P} \mathbf{P}^{-1} \\ &= \mathbf{I}\_p \end{aligned} \\
>
> 2.  is the condition of [Definition 6 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-invertible-matrix) for \\\mathbf{P}^{-1}\\ with \\\mathbf{P}\\ as the other factor, and that factor is unique ([Remark 3 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#rem-invertible-inverse)). If \\\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}\\, then
>
> \\ \begin{aligned} \mathbf{P} \mathbf{B} \mathbf{P}^{-1} &= \mathbf{P}\\(\mathbf{P}^{-1} \mathbf{A} \mathbf{P})\\\mathbf{P}^{-1} && \text{(substitute } \mathbf{B} \text{)} \\ &= (\mathbf{P} \mathbf{P}^{-1})\\\mathbf{A}\\(\mathbf{P} \mathbf{P}^{-1}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{I}\_p\\\mathbf{A}\\\mathbf{I}\_p && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{A}, && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \end{aligned} \\
>
> and the same steps with \\\mathbf{P}\\ and \\\mathbf{P}^{-1}\\ exchanged turn \\\mathbf{A} = \mathbf{P} \mathbf{B} \mathbf{P}^{-1}\\ back into \\\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}\\. So \\\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}\\ exactly when \\\mathbf{A} = \mathbf{P} \mathbf{B} \mathbf{P}^{-1}\\, and similarity goes both ways: \\\mathbf{A}\\ is similar to \\\mathbf{B}\\ through \\\mathbf{P}^{-1}\\, whose inverse is \\\mathbf{P}\\.

> **NOTE:**
>
> **Example 8 (A matrix similar to a diagonal one)** Let \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ and \\\mathbf{P} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}\\. Then
>
> \\ \begin{aligned} \mathbf{P}^2 &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 1 & 1 \cdot 1 + 1 \cdot(-1) \\ 1 \cdot 1 + (-1) \cdot 1 & 1 \cdot 1 + (-1)(-1) \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \\ &= \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix} && \text{(arithmetic)} \\ &= 2\\\mathbf{I}\_2, && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{, }\href{linear-algebra-matrices.qmd#def-identity-matrix}{\text{Definition~10 in Matrices}}\text{)} \end{aligned} \\
>
> so
>
> \\ \begin{aligned} \mathbf{P}\\(\tfrac{1}{2}\\\mathbf{P}) &= \tfrac{1}{2}\\\mathbf{P}^2 \\ &= \mathbf{I}\_2 \end{aligned} \\
>
> and likewise \\(\tfrac{1}{2}\\\mathbf{P})\\\mathbf{P} = \mathbf{I}\_2\\ ([Theorem 7 in Projections and Linear Systems](linear-algebra-projections.llms.md#thm-scalar-matmul)): \\\mathbf{P}^{-1} = \tfrac{1}{2}\\\mathbf{P}\\ (2). Then
>
> \\ \begin{aligned} \mathbf{P}^{-1} \mathbf{A} \mathbf{P} &= (\tfrac{1}{2}\\\mathbf{P})\\\mathbf{A} \mathbf{P} && \text{(substitute } \mathbf{P}^{-1} \text{)} \\ &= \tfrac{1}{2}\\(\mathbf{P} \mathbf{A} \mathbf{P}) && \text{(}\href{linear-algebra-projections.qmd#thm-scalar-matmul}{\text{Theorem~7 in Projections and Linear Systems}}\text{)} \\ &= \tfrac{1}{2}\\\mathbf{P}\\(\mathbf{A} \mathbf{P}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \tfrac{1}{2} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 3 & 1 \\ 3 & -1 \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{, for } \mathbf{A} \mathbf{P} \text{)} \\ &= \tfrac{1}{2} \begin{bmatrix} 6 & 0 \\ 0 & 2 \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \\ &= \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix}, && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{)} \end{aligned} \\
>
> so \\\mathbf{A}\\ is similar to \\\operatorname{diag}(3, 1)\\. At the other extreme, the identity matrix is similar only to itself:
>
> \\ \begin{aligned} \mathbf{P}^{-1} \mathbf{I}\_p \mathbf{P} &= \mathbf{P}^{-1} \mathbf{P} \\ &= \mathbf{I}\_p \end{aligned} \\
>
> for every invertible \\\mathbf{P}\\ ([Theorem 7 in Matrices](linear-algebra-matrices.llms.md#thm-identity), 2).

> **NOTE:**
>
> **Theorem 6 (Similar matrices have the same eigenvalues)** If \\\mathbf{B} = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}\\ ([Definition 2](#def-similar)), then \\\tilde{v}\\ is an eigenvector of \\\mathbf{A}\\ for \\\lambda\\ exactly when \\\mathbf{P}^{-1} \tilde{v}\\ is an eigenvector of \\\mathbf{B}\\ for \\\lambda\\. So \\\mathbf{A}\\ and \\\mathbf{B}\\ have the same eigenvalues.

> **NOTE:**
>
> *Proof*. **From \\\mathbf{A}\\ to \\\mathbf{B}\\.** Let \\\mathbf{A} \tilde{v} = \lambda\tilde{v}\\ with \\\tilde{v} \ne \tilde{0}\\, and \\\tilde{w} = \mathbf{P}^{-1} \tilde{v}\\. Then
>
> \\ \begin{aligned} \mathbf{B} \tilde{w} &= (\mathbf{P}^{-1} \mathbf{A} \mathbf{P})\\(\mathbf{P}^{-1} \tilde{v}) && \text{(substitute } \mathbf{B} \text{ and } \tilde{w} \text{)} \\ &= \mathbf{P}^{-1} \mathbf{A}\\(\mathbf{P} \mathbf{P}^{-1})\\\tilde{v} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{P}^{-1} \mathbf{A}\\\mathbf{I}\_p\\\tilde{v} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{P}^{-1} \mathbf{A} \tilde{v} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \\ &= \mathbf{P}^{-1}\\(\mathbf{A} \tilde{v}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{P}^{-1}\\(\lambda\tilde{v}) && \text{(eigenvector)} \\ &= \lambda\\\tilde{w}. && \text{(}\href{linear-algebra-projections.qmd#thm-scalar-matmul}{\text{Theorem~7 in Projections and Linear Systems}}\text{)} \end{aligned} \\
>
> And \\\tilde{w} \ne \tilde{0}\\: if \\\tilde{w} = \tilde{0}\\, then
>
> \\ \begin{aligned} \tilde{v} &= \mathbf{I}\_p \tilde{v} \\ &= \mathbf{P}\\(\mathbf{P}^{-1} \tilde{v}) \\ &= \mathbf{P}\\\tilde{0}\\ &= \tilde{0} \end{aligned} \\
>
> ([Theorem 7 in Matrices](linear-algebra-matrices.llms.md#thm-identity), 2, [Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc), [Definition 11 in Matrices](linear-algebra-matrices.llms.md#def-matvec-mult)), which is false.
>
> **From \\\mathbf{B}\\ to \\\mathbf{A}\\.** By [Remark 1](#rem-similar-both-ways),
>
> \\ \begin{aligned} \mathbf{A} &= \mathbf{P} \mathbf{B} \mathbf{P}^{-1} \\ &= (\mathbf{P}^{-1})^{-1} \mathbf{B}\\\mathbf{P}^{-1}, \end{aligned} \\
>
> so the first part, with \\\mathbf{P}^{-1}\\ in place of \\\mathbf{P}\\ and the roles of \\\mathbf{A}\\ and \\\mathbf{B}\\ exchanged, shows that if \\\tilde{w} = \mathbf{P}^{-1} \tilde{v}\\ is an eigenvector of \\\mathbf{B}\\ for \\\lambda\\, then \\\mathbf{P} \tilde{w}\\ is an eigenvector of \\\mathbf{A}\\ for \\\lambda\\; and
>
> \\ \begin{aligned} \mathbf{P} \tilde{w} &= \mathbf{P} \mathbf{P}^{-1} \tilde{v} \\ &= \tilde{v} \end{aligned} \\
>
> ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc), 2, [Theorem 7 in Matrices](linear-algebra-matrices.llms.md#thm-identity)).

> **NOTE:**
>
> **Example 9 (Eigenvectors carried across a similarity)** In [Example 8](#exm-similar), \\\mathbf{B} = \operatorname{diag}(3, 1)\\ has eigenvectors \\(1, 0)\\ for \\3\\ and \\(0, 1)\\ for \\1\\: \\\operatorname{diag}(3, 1)\\(1, 0) = (3, 0)\\ and \\\operatorname{diag}(3, 1)\\(0, 1) = (0, 1)\\. \\\mathbf{P}\\(1, 0) = (1, 1)\\ and \\\mathbf{P}\\(0, 1) = (1, -1)\\ are the eigenvectors of \\\mathbf{A}\\ for \\3\\ and \\1\\ found in [Example 21 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-eigenvalue).

> **NOTE:**
>
> **Theorem 7 (Eigenvectors for distinct eigenvalues are linearly independent)** If \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ are eigenvectors of a \\p \times p\\ matrix \\\mathbf{A}\\ for eigenvalues \\\lambda_1, \ldots, \lambda_k\\ that are all different, then \\\tilde{v}\_1, \ldots, \tilde{v}\_k\\ are linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)).

> **NOTE:**
>
> *Proof*. By [induction](proof-writing.llms.md#def-proof-by-induction) on \\k\\. For \\k = 1\\, \\\tilde{v}\_1 \ne \tilde{0}\\ is linearly independent on its own. Suppose the result holds for \\k - 1\\ eigenvectors, and \\\sum\_{i=1}^{k} c_i \tilde{v}\_i = \tilde{0}\\. Then
>
> \\ \begin{aligned} \tilde{0} &= (\mathbf{A} - \lambda_k \mathbf{I}\_p) \sum\_{i=1}^{k} c_i \tilde{v}\_i && \text{(multiply the supposed equation by } \mathbf{A} - \lambda_k \mathbf{I}\_p \text{)} \\ &= \sum\_{i=1}^{k} c_i\\(\mathbf{A} - \lambda_k \mathbf{I}\_p)\\\tilde{v}\_i && \text{(}\href{linear-algebra-subspaces.qmd#thm-matvec-linear}{\text{Theorem~4 in Subspaces and Rank}}\text{)} \\ &= \sum\_{i=1}^{k} c_i\\(\lambda_i - \lambda_k)\\\tilde{v}\_i && \text{(}\href{#thm-eigen-shift-power}{\text{Theorem~3}}\text{, part 1, with } s = -\lambda_k \text{)} \\ &= \sum\_{i=1}^{k-1} c_i\\(\lambda_i - \lambda_k)\\\tilde{v}\_i. && \text{(the } i = k \text{ term is } \tilde{0}\text{)} \end{aligned} \\
>
> By the induction hypothesis \\\tilde{v}\_1, \ldots, \tilde{v}\_{k-1}\\ are linearly independent, so every \\c_i\\(\lambda_i - \lambda_k) = 0\\ for \\i \< k\\, and since \\\lambda_i \ne \lambda_k\\, every \\c_i = 0\\ for \\i \< k\\. The supposed equation then reads \\c_k \tilde{v}\_k = \tilde{0}\\ with \\\tilde{v}\_k \ne \tilde{0}\\, so \\c_k = 0\\ too.

> **NOTE:**
>
> **Example 10 (Independent eigenvectors)** The eigenvectors \\(1, 1)\\ for \\3\\ and \\(1, -1)\\ for \\1\\ of [Example 21 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-eigenvalue) are linearly independent, as [Theorem 7](#thm-eigenvectors-independent) says they must be: \\c_1 (1, 1) + c_2 (1, -1) = (c_1 + c_2, c_1 - c_2)\\ is \\\tilde{0}\\ only if
>
> \\ \begin{aligned} c_1 &= c_2 \\ &= 0. \end{aligned} \\
>
> Two eigenvectors for the same eigenvalue need not be independent: \\(1, 1)\\ and \\(2, 2)\\ are both eigenvectors for \\3\\.

> **NOTE:**
>
> **Definition 3 (Diagonalizable matrix)** A \\p \times p\\ matrix \\\mathbf{A}\\ is **diagonalizable** if \\\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}\\ for some invertible \\p \times p\\ matrix \\\mathbf{X}\\ and diagonal \\p \times p\\ matrix \\\mathbf{\Lambda}\\ ([Definition 4 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-diagonal-matrix)); by [Remark 1](#rem-similar-both-ways), that is the same as \\\mathbf{\Lambda} = \mathbf{X}^{-1} \mathbf{A} \mathbf{X}\\, so a diagonalizable matrix is one similar to a diagonal matrix ([Definition 2](#def-similar)).

> **NOTE:**
>
> **Example 11 (Diagonalizable and not)**  
>
> - \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ is diagonalizable: with \\\mathbf{P}\\ as in [Example 8](#exm-similar), \\\operatorname{diag}(3, 1) = \mathbf{P}^{-1} \mathbf{A} \mathbf{P}\\.
>
> - \\\mathbf{J} = \begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix}\\ is not. Suppose \\\mathbf{J} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}\\, so \\\mathbf{\Lambda} = \mathbf{X}^{-1} \mathbf{J} \mathbf{X}\\ ([Remark 1](#rem-similar-both-ways)). The eigenvalues of \\\mathbf{\Lambda}\\ are its diagonal entries ([Theorem 4](#thm-eigen-triangular), since a diagonal matrix is upper triangular) and are the eigenvalues of \\\mathbf{J}\\ ([Theorem 6](#thm-similar-eigenvalues)), of which \\0\\ is the only one ([Example 2](#exm-eigenspace)). So \\\mathbf{\Lambda} = \mathbf{0}\_{2 \times 2}\\, and then
>
>   \\ \begin{aligned} \mathbf{J} &= \mathbf{X}\\\mathbf{0}\_{2 \times 2}\\\mathbf{X}^{-1} \\ &= \mathbf{0}\_{2 \times 2} \end{aligned} \\
>
>   (1), which it is not.

> **NOTE:**
>
> **Theorem 8 (Diagonalizable means a basis of eigenvectors)** A \\p \times p\\ matrix \\\mathbf{A}\\ is diagonalizable ([Definition 3](#def-diagonalizable)) exactly when it has \\p\\ linearly independent eigenvectors. Then \\\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}\\ with the eigenvectors as the columns of \\\mathbf{X}\\ and their eigenvalues, in the same order, on the diagonal of \\\mathbf{\Lambda}\\.

> **NOTE:**
>
> *Proof*. Let \\\mathbf{X}\\ have columns \\\tilde{x}\_1, \ldots, \tilde{x}\_p\\ and \\\mathbf{\Lambda} = \operatorname{diag}(\lambda_1, \ldots, \lambda_p)\\. Column \\j\\ of \\\mathbf{A} \mathbf{X}\\ is \\\mathbf{A} \tilde{x}\_j\\, and column \\j\\ of \\\mathbf{X} \mathbf{\Lambda}\\ is \\\mathbf{X}\\ times column \\j\\ of \\\mathbf{\Lambda}\\ (1), which is
>
> \\ \begin{aligned} \mathbf{X}\\(\lambda_j \tilde{e}\_j) &= \lambda_j\\(\mathbf{X} \tilde{e}\_j) \\ &= \lambda_j \tilde{x}\_j \end{aligned} \\
>
> ([Theorem 7 in Projections and Linear Systems](linear-algebra-projections.llms.md#thm-scalar-matmul), [Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns)), so
>
> \\ \mathbf{A} \mathbf{X} = \mathbf{X} \mathbf{\Lambda} \iff \mathbf{A} \tilde{x}\_j = \lambda_j \tilde{x}\_j \text{ for every } j. \tag{1}\\
>
> Also, \\\mathbf{X}\\ has rank \\p\\ exactly when its \\p\\ columns are linearly independent ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)), which by [Theorem 1](#thm-invertible-rank) is exactly when \\\mathbf{X}\\ is invertible.
>
> **Eigenvectors give a diagonalization.** If \\\tilde{x}\_1, \ldots, \tilde{x}\_p\\ are linearly independent eigenvectors, then \\\mathbf{X}\\ is invertible and [Equation 1](#eq-ax-xlambda) gives \\\mathbf{A} \mathbf{X} = \mathbf{X} \mathbf{\Lambda}\\, so
>
> \\ \begin{aligned} \mathbf{A} &= \mathbf{A}\\\mathbf{I}\_p && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \\ &= \mathbf{A}\\(\mathbf{X} \mathbf{X}^{-1}) && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= (\mathbf{A} \mathbf{X})\\\mathbf{X}^{-1} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}. && \text{(} \mathbf{A} \mathbf{X} = \mathbf{X} \mathbf{\Lambda} \text{)} \end{aligned} \\
>
> **A diagonalization gives eigenvectors.** If \\\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}\\, then
>
> \\ \begin{aligned} \mathbf{A} \mathbf{X} &= (\mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1})\\\mathbf{X} && \text{(substitute } \mathbf{A} \text{)} \\ &= \mathbf{X} \mathbf{\Lambda}\\(\mathbf{X}^{-1} \mathbf{X}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda}\\\mathbf{I}\_p && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda}, && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \end{aligned} \\
>
> so each column satisfies \\\mathbf{A} \tilde{x}\_j = \lambda_j \tilde{x}\_j\\ ([Equation 1](#eq-ax-xlambda)). \\\mathbf{X}\\ is invertible, so its columns are linearly independent, and in particular nonzero; they are \\p\\ linearly independent eigenvectors.

> **NOTE:**
>
> **Example 12 (Building the diagonalization from eigenvectors)** The eigenvectors \\(1, 1)\\ and \\(1, -1)\\ of \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ are linearly independent ([Example 10](#exm-eigenvectors-independent)), so with \\\mathbf{X} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}\\ and \\\mathbf{\Lambda} = \operatorname{diag}(3, 1)\\, \\\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}\\; by [Remark 1](#rem-similar-both-ways) this is the similarity of [Example 8](#exm-similar), with \\\mathbf{X} = \mathbf{P}\\. Because \\\mathbf{A}\\ is symmetric, [Theorem 10 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#thm-spectral) even gives such a factorization with orthonormal eigenvectors ([Definition 17 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-eigendecomposition)): dividing each column of \\\mathbf{X}\\ by its length \\\sqrt{2}\\ gives one. By contrast, every eigenvector of \\\mathbf{J}\\ in [Example 2](#exm-eigenspace) has the form \\(t, 0)\\, so any two of them are multiples of each other, and \\\mathbf{J}\\ has no two linearly independent eigenvectors: another way to see that it is not diagonalizable.

> **NOTE:**
>
> **Corollary 1 (Distinct eigenvalues make a matrix diagonalizable)** A \\p \times p\\ matrix with \\p\\ different eigenvalues is diagonalizable.

> **NOTE:**
>
> *Proof*. Choose one eigenvector for each eigenvalue. These \\p\\ eigenvectors are linearly independent ([Theorem 7](#thm-eigenvectors-independent)), so the matrix is diagonalizable ([Theorem 8](#thm-diagonalizable)).

> **NOTE:**
>
> **Example 13 (A triangular matrix with distinct diagonal entries)** \\\mathbf{U}\\ of [Example 6](#exm-eigen-triangular) has the three different eigenvalues \\2\\, \\\tfrac{1}{2}\\ and \\-1\\ ([Theorem 4](#thm-eigen-triangular)), so it is diagonalizable, even though it is not symmetric, so [Theorem 10 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#thm-spectral) does not apply to it. The converse fails: \\\mathbf{I}\_2\\ is diagonal, hence diagonalizable (\\\mathbf{I}\_2 = \mathbf{I}\_2\\\mathbf{I}\_2\\\mathbf{I}\_2^{-1}\\), but has only the eigenvalue \\1\\.

> **NOTE:**
>
> **Theorem 9 (Powers of a diagonalizable matrix)** If \\\mathbf{A} = \mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1}\\ ([Definition 3](#def-diagonalizable)) with \\\mathbf{\Lambda} = \operatorname{diag}(\lambda_1, \ldots, \lambda_p)\\, then for every positive integer \\k\\, \\\mathbf{A}^k = \mathbf{X} \mathbf{\Lambda}^k \mathbf{X}^{-1}\\ and \\\mathbf{\Lambda}^k = \operatorname{diag}(\lambda_1^k, \ldots, \lambda_p^k)\\.

> **NOTE:**
>
> *Proof*. **Powers of \\\mathbf{\Lambda}\\.** If \\\mathbf{D} = \operatorname{diag}(d_1, \ldots, d_p)\\ and \\\mathbf{E} = \operatorname{diag}(e_1, \ldots, e_p)\\, with entries \\d\_{il}\\ and \\e\_{lj}\\ (so \\d\_{ii} = d_i\\ and \\e\_{jj} = e_j\\), entry \\(i, j)\\ of \\\mathbf{D} \mathbf{E}\\ is \\\sum_l d\_{il}\\e\_{lj}\\ (1), where \\d\_{il} = 0\\ unless \\l = i\\ and \\e\_{lj} = 0\\ unless \\l = j\\. For \\i \ne j\\ no term survives, so the entry is \\0\\; for \\i = j\\ only \\l = i\\ survives, giving \\d_i\\e_i\\. So \\\mathbf{D} \mathbf{E} = \operatorname{diag}(d_1 e_1, \ldots, d_p e_p)\\, and [induction](proof-writing.llms.md#def-proof-by-induction) on \\k\\ gives \\\mathbf{\Lambda}^k = \operatorname{diag}(\lambda_1^k, \ldots, \lambda_p^k)\\.
>
> **Powers of \\\mathbf{A}\\, by induction on \\k\\.** \\k = 1\\ is the assumption. If it holds for \\k - 1\\,
>
> \\ \begin{aligned} \mathbf{A}^k &= \mathbf{A}^{k-1} \mathbf{A} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-power}{\text{Definition~2 in Special Matrices and Decompositions}}\text{, }\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda}^{k-1} \mathbf{X}^{-1}\\\mathbf{A} && \text{(induction hypothesis)} \\ &= \mathbf{X} \mathbf{\Lambda}^{k-1} \mathbf{X}^{-1}\\\mathbf{X} \mathbf{\Lambda} \mathbf{X}^{-1} && \text{(the assumption)} \\ &= \mathbf{X} \mathbf{\Lambda}^{k-1}\\(\mathbf{X}^{-1} \mathbf{X})\\\mathbf{\Lambda} \mathbf{X}^{-1} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda}^{k-1}\\\mathbf{I}\_p\\\mathbf{\Lambda} \mathbf{X}^{-1} && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-inverse}{\text{Definition~5 in Special Matrices and Decompositions}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda}^{k-1} \mathbf{\Lambda} \mathbf{X}^{-1} && \text{(}\href{linear-algebra-matrices.qmd#thm-identity}{\text{Theorem~7 in Matrices}}\text{)} \\ &= \mathbf{X} \mathbf{\Lambda}^{k} \mathbf{X}^{-1}. && \text{(}\href{linear-algebra-special-matrices.qmd#def-matrix-power}{\text{Definition~2 in Special Matrices and Decompositions}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 14 (A closed form for the powers)** For \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\, with \\\mathbf{X}\\ as in [Example 12](#exm-thm-diagonalizable) and \\\mathbf{X}^{-1} = \tfrac{1}{2}\\\mathbf{X}\\ ([Example 8](#exm-similar)),
>
> \\ \begin{aligned} \mathbf{A}^k &= \mathbf{X}\\\operatorname{diag}(3^k, 1)\\\mathbf{X}^{-1} && \text{(}\href{#thm-diagonalizable-powers}{\text{Theorem~9}}\text{)} \\ &= \mathbf{X}\\\operatorname{diag}(3^k, 1)\\(\tfrac{1}{2}\\\mathbf{X}) && \text{(substitute } \mathbf{X}^{-1} \text{)} \\ &= \tfrac{1}{2}\\\mathbf{X}\\\operatorname{diag}(3^k, 1)\\\mathbf{X} && \text{(}\href{linear-algebra-projections.qmd#thm-scalar-matmul}{\text{Theorem~7 in Projections and Linear Systems}}\text{)} \\ &= \tfrac{1}{2} \begin{bmatrix} 3^k & 1 \\ 3^k & -1 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{, for } \mathbf{X}\\\operatorname{diag}(3^k, 1) \text{)} \\ &= \tfrac{1}{2} \begin{bmatrix} 3^k + 1 & 3^k - 1 \\ 3^k - 1 & 3^k + 1 \end{bmatrix}. && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{)} \end{aligned} \\
>
> For \\k = 2\\ this gives \\\tfrac{1}{2} \begin{bmatrix} 10 & 8 \\ 8 & 10 \end{bmatrix} = \begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}\\, which matches \\\mathbf{A}^2\\ in [Example 5](#exm-eigen-shift-power).

## 2 Gram matrices, Schur complements and Cholesky

> **NOTE:**
>
> This section is adapted from Zhou ([2024b](#ref-zhou2024pd)), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source’s eigenvalue and quadratic-form characterizations of definiteness are covered in these notes already ([Theorem 13 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#thm-definite-eigenvalues)). These parts of the source are left out:
>
> - its covariance test, which needs probability
> - its material on minimization
> - its positive semidefinite version of the Schur complement test
> - its pivot test
> - its Hadamard-product “Schur lemma”
> - its notes on the LU factorization and computational cost
>
> The source leaves the Schur complement test unproved; it is proved here from a block expansion of the quadratic form, and the Cholesky factorization is derived from it.

> **NOTE:**
>
> **Theorem 10 (Definite matrices are Gram matrices)** Let \\\mathbf{A}\\ be a \\p \times p\\ matrix.
>
> 1.  \\\mathbf{A}\\ is positive semidefinite ([Definition 19 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-positive-semidefinite)) exactly when \\\mathbf{A} = {\mathbf{B}}^{\top} \mathbf{B}\\ for some matrix \\\mathbf{B}\\ with \\p\\ columns.
> 2.  \\\mathbf{A}\\ is positive definite ([Definition 20 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-positive-definite)) exactly when \\\mathbf{A} = {\mathbf{B}}^{\top} \mathbf{B}\\ for some matrix \\\mathbf{B}\\ with \\p\\ linearly independent columns.

> **NOTE:**
>
> *Proof*. **If \\\mathbf{A} = {\mathbf{B}}^{\top} \mathbf{B}\\.** \\\mathbf{A}\\ is symmetric, since
>
> \\ \begin{aligned} {({\mathbf{B}}^{\top} \mathbf{B})}^{\top} &= {\mathbf{B}}^{\top}\\{({\mathbf{B}}^{\top})}^{\top} \\ &= {\mathbf{B}}^{\top} \mathbf{B} \end{aligned} \\
>
> ([Theorem 16 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product), [Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)). For any \\\tilde{x}\\,
>
> \\ \begin{aligned} {\tilde{x}}^{\top} \mathbf{A} \tilde{x} &= {\tilde{x}}^{\top}\\{\mathbf{B}}^{\top}\\\mathbf{B} \tilde{x} && \text{(substitute } \mathbf{A} \text{)} \\ &= {(\mathbf{B} \tilde{x})}^{\top}\\(\mathbf{B} \tilde{x}) && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{, }\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &= \mathopen{}\left\lVert\mathbf{B} \tilde{x}\right\rVert\mathclose{}^2 && \text{(}\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{, squared)} \\ &\ge 0. && \text{(}\href{linear-algebra-inner-products.qmd#thm-norm-properties}{\text{Theorem~1 in Inner Products and Orthogonality}}\text{)} \end{aligned} \\
>
> If the columns of \\\mathbf{B}\\ are linearly independent, then \\\mathcal{N}(\mathbf{B}) = \mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ (\\\mathbf{B} \tilde{x}\\ is the combination of the columns with coefficients \\x_j\\, [Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns), and only the zero combination is \\\tilde{0}\\, [Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)), so for \\\tilde{x}\ne \tilde{0}\\, \\\mathbf{B} \tilde{x}\ne \tilde{0}\\ and \\\mathopen{}\left\lVert\mathbf{B} \tilde{x}\right\rVert\mathclose{}^2 \> 0\\ ([Theorem 1 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#thm-norm-properties), part 1).
>
> **Only if.** Let \\\mathbf{A}\\ be positive semidefinite. It is symmetric, so \\\mathbf{A} = \mathbf{Q} \mathbf{\Lambda} {\mathbf{Q}}^{\top}\\ ([Theorem 10 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#thm-spectral)), and every \\\lambda_i \ge 0\\ ([Theorem 13 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#thm-definite-eigenvalues)). Let \\\mathbf{\Lambda}^{1/2} \stackrel{\text{def}}{=}\operatorname{diag}(\sqrt{\lambda_1}, \ldots, \sqrt{\lambda_p})\\, which is symmetric, with \\\mathbf{\Lambda}^{1/2} \mathbf{\Lambda}^{1/2} = \mathbf{\Lambda}\\ (the product of diagonal matrices multiplies their diagonals, as in the proof of [Theorem 9](#thm-diagonalizable-powers)), and let \\\mathbf{B} \stackrel{\text{def}}{=}\mathbf{\Lambda}^{1/2} {\mathbf{Q}}^{\top}\\. Then
>
> \\ \begin{aligned} {\mathbf{B}}^{\top} \mathbf{B} &= {({\mathbf{Q}}^{\top})}^{\top}\\{(\mathbf{\Lambda}^{1/2})}^{\top}\\\mathbf{\Lambda}^{1/2} {\mathbf{Q}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= \mathbf{Q}\\\mathbf{\Lambda}^{1/2} \mathbf{\Lambda}^{1/2}\\{\mathbf{Q}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{; } \mathbf{\Lambda}^{1/2} \text{ is symmetric)} \\ &= \mathbf{Q} \mathbf{\Lambda} {\mathbf{Q}}^{\top} && \text{(} \mathbf{\Lambda}^{1/2} \mathbf{\Lambda}^{1/2} = \mathbf{\Lambda} \text{)} \\ &= \mathbf{A}. && \text{(}\href{linear-algebra-special-matrices.qmd#thm-spectral}{\text{Theorem~10 in Special Matrices and Decompositions}}\text{)} \end{aligned} \\
>
> If \\\mathbf{A}\\ is positive definite, it is positive semidefinite ([Remark 18 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#rem-positive-definite-symmetry)), so the same \\\mathbf{B}\\ gives \\\mathbf{A} = {\mathbf{B}}^{\top} \mathbf{B}\\; and every \\\lambda_i \> 0\\ ([Theorem 13 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#thm-definite-eigenvalues)), so \\\mathbf{\Lambda}^{1/2}\\ is diagonal with nonzero diagonal, and invertible (its inverse is \\\operatorname{diag}(1/\sqrt{\lambda_1}, \ldots, 1/\sqrt{\lambda_p})\\); \\{\mathbf{Q}}^{\top}\\ is invertible with inverse \\\mathbf{Q}\\ ([Remark 5 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#rem-orthogonal-matrix-columns)). So \\\mathbf{B}\\ is invertible ([Theorem 1 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#thm-inverse-product)), and its \\p\\ columns are linearly independent ([Theorem 1](#thm-invertible-rank), [Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)).

> **NOTE:**
>
> **Example 15 (Gram factorizations)**  
>
> - With \\\mathbf{R} = \begin{bmatrix} 1 & 1 \end{bmatrix}\\ (\\1 \times 2\\), \\{\mathbf{R}}^{\top} \mathbf{R} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\, the positive semidefinite matrix of [Example 26 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-positive-semidefinite); the two columns of \\\mathbf{R}\\, \\1\\ and \\1\\, are dependent, so part 2 does not apply to \\\mathbf{R}\\; \\{\mathbf{R}}^{\top} \mathbf{R}\\ is in fact not positive definite ([Example 27 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-positive-definite)).
> - With \\\mathbf{X}= \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}\\, whose columns are independent ([Example 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-rank)), \\{\mathbf{X}}^{\top} \mathbf{X}= \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix}\\ ([Example 1 in Projections and Linear Systems](linear-algebra-projections.llms.md#exm-gram-invertible)) is positive definite.
> - \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\ of [Example 27 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-positive-definite) is symmetric but not positive semidefinite, so by part 1 it is not \\{\mathbf{B}}^{\top} \mathbf{B}\\ for any \\\mathbf{B}\\.

> **NOTE:**
>
> **Theorem 11 (Operations that preserve definiteness)**  
>
> 1.  If \\\mathbf{C}\\ is a \\p \times p\\ positive definite matrix ([Definition 20 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-positive-definite)) and \\\mathbf{A}\\ is a \\p \times k\\ matrix with \\k\\ linearly independent columns, then the \\k \times k\\ matrix \\{\mathbf{A}}^{\top} \mathbf{C} \mathbf{A}\\ is positive definite.
> 2.  If \\\mathbf{A}\_1\\ and \\\mathbf{A}\_2\\ are positive definite \\p \times p\\ matrices and \\\alpha_1, \alpha_2 \> 0\\, then \\\alpha_1 \mathbf{A}\_1 + \alpha_2 \mathbf{A}\_2\\ is positive definite.

> **NOTE:**
>
> *Proof*. **Part 1.** \\{\mathbf{A}}^{\top} \mathbf{C} \mathbf{A}\\ is symmetric:
>
> \\ \begin{aligned} {({\mathbf{A}}^{\top} \mathbf{C} \mathbf{A})}^{\top} &= {\mathbf{A}}^{\top}\\{\mathbf{C}}^{\top}\\{({\mathbf{A}}^{\top})}^{\top} \\ &= {\mathbf{A}}^{\top} \mathbf{C} \mathbf{A} \end{aligned} \\
>
> ([Theorem 16 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product), twice; \\\mathbf{C}\\ symmetric; [Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)). For \\\tilde{x}\ne \tilde{0}\_k\\, \\\mathbf{A} \tilde{x}\ne \tilde{0}\_p\\, since the columns of \\\mathbf{A}\\ are independent ([Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns), [Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)), and
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\\({\mathbf{A}}^{\top} \mathbf{C} \mathbf{A})\\\tilde{x} &= {(\mathbf{A} \tilde{x})}^{\top}\\\mathbf{C}\\(\mathbf{A} \tilde{x}) && \text{(}\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{, }\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~5 in Matrices}}\text{)} \\ &\> 0. && \text{(} \mathbf{C} \text{ positive definite, } \mathbf{A} \tilde{x}\ne \tilde{0}\text{)} \end{aligned} \\
>
> **Part 2.** \\\alpha_1 \mathbf{A}\_1 + \alpha_2 \mathbf{A}\_2\\ is symmetric: its transpose is \\\alpha_1 {\mathbf{A}\_1}^{\top} + \alpha_2 {\mathbf{A}\_2}^{\top} = \alpha_1 \mathbf{A}\_1 + \alpha_2 \mathbf{A}\_2\\ ([Theorem 15 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-sum), [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-scalar-mult), [Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)). For \\\tilde{x}\ne \tilde{0}\\,
>
> \\ \begin{aligned} {\tilde{x}}^{\top}\\(\alpha_1 \mathbf{A}\_1 + \alpha_2 \mathbf{A}\_2)\\\tilde{x} &= {\tilde{x}}^{\top}\\(\alpha_1 \mathbf{A}\_1)\\\tilde{x}+ {\tilde{x}}^{\top}\\(\alpha_2 \mathbf{A}\_2)\\\tilde{x} && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-distrib}{\text{Theorem~6 in Matrices}}\text{, twice)} \\ &= \alpha_1\\{\tilde{x}}^{\top} \mathbf{A}\_1 \tilde{x}+ \alpha_2\\{\tilde{x}}^{\top} \mathbf{A}\_2 \tilde{x} && \text{(}\href{linear-algebra-projections.qmd#thm-scalar-matmul}{\text{Theorem~7 in Projections and Linear Systems}}\text{)} \\ &\> 0. && \text{(each term is positive)} \end{aligned} \\

> **NOTE:**
>
> **Example 16 (Building positive definite matrices)**  
>
> - With \\\mathbf{C} = \mathbf{I}\_3\\ and \\\mathbf{X}\\ of [Example 15](#exm-pd-gram), part 1 gives again that \\{\mathbf{X}}^{\top} \mathbf{X}\\ is positive definite.
>
> - With \\\alpha_1 = 2\\, \\\mathbf{A}\_1 = \mathbf{I}\_2\\ ([Example 27 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-positive-definite)), \\\alpha_2 = 1\\ and
>
>   \\ \begin{aligned} \mathbf{A}\_2 &= {\mathbf{X}}^{\top} \mathbf{X}\\ &= \begin{bmatrix} 3 & 6 \\ 6 & 14 \end{bmatrix} \end{aligned} \\
>
>   ([Example 15](#exm-pd-gram)), part 2 gives that \\2 \mathbf{I}\_2 + {\mathbf{X}}^{\top} \mathbf{X}= \begin{bmatrix} 5 & 6 \\ 6 & 16 \end{bmatrix}\\ is positive definite.
>
> - An aside beyond part 2: \\\mathbf{I}\_2 + \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ is positive definite plus positive semidefinite; its quadratic form is \\x_1^2 + x_2^2 + (x_1 + x_2)^2 \> 0\\ for \\\tilde{x}\ne \tilde{0}\\, so it is positive definite, in line with its eigenvalues \\3\\ and \\1\\ ([Example 21 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-eigenvalue)).
>
> - Independence is needed in part 1: with \\\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\, whose columns are equal, \\{\mathbf{A}}^{\top}\\\mathbf{I}\_2\\\mathbf{A} = \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}\\, and \\(1, -1)\\ gives quadratic form \\0\\.

> **NOTE:**
>
> **Definition 4 (Block matrix)** Split the rows of an \\m \times n\\ matrix \\\mathbf{X}\\ into the first \\k\\ and the last \\m - k\\, and its columns into the first \\l\\ and the last \\n - l\\, with \\1 \le k \< m\\ and \\1 \le l \< n\\. This cuts \\\mathbf{X}\\ into four smaller matrices, its **blocks**:
>
> \\ \mathbf{X} = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ \mathbf{C} & \mathbf{D} \end{bmatrix}, \\
>
> where \\\mathbf{A}\\ (\\k \times l\\) holds the entries \\x\_{ij}\\ with \\i \le k\\ and \\j \le l\\, \\\mathbf{B}\\ (\\k \times (n - l)\\) those with \\i \le k\\ and \\j \> l\\, \\\mathbf{C}\\ (\\(m - k) \times l\\) those with \\i \> k\\ and \\j \le l\\, and \\\mathbf{D}\\ (\\(m - k) \times (n - l)\\) those with \\i \> k\\ and \\j \> l\\, each in its original order. A matrix written this way is a **block matrix**. When \\\mathbf{X}\\ is \\n \times n\\ and \\1 \le k \le n\\, the \\k \times k\\ matrix of the entries \\x\_{ij}\\ with \\i, j \le k\\ is the **leading** (or **top-left**) \\k \times k\\ **block** of \\\mathbf{X}\\; for \\k \< n\\ it is the block \\\mathbf{A}\\ above with \\l = k\\, and for \\k = n\\ it is \\\mathbf{X}\\ itself.

> **NOTE:**
>
> **Example 17 (Cutting a \\3 \times 3\\ matrix into blocks)** With
>
> \\ \begin{aligned} k &= l \\ &= 1, \end{aligned} \\
>
> \\ \mathbf{X} = \begin{bmatrix} 4 & 2 & 1 \\ 2 & 5 & 3 \\ 1 & 3 & 6 \end{bmatrix} = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ \mathbf{C} & \mathbf{D} \end{bmatrix}, \qquad \mathbf{A} = \begin{bmatrix} 4 \end{bmatrix}, \quad \mathbf{B} = \begin{bmatrix} 2 & 1 \end{bmatrix}, \quad \mathbf{C} = \begin{bmatrix} 2 \\ 1 \end{bmatrix}, \quad \mathbf{D} = \begin{bmatrix} 5 & 3 \\ 3 & 6 \end{bmatrix}. \\
>
> For instance, entry \\(1, 2)\\ of \\\mathbf{D}\\ is
>
> \\ \begin{aligned} x\_{1 + 1, 2 + 1} &= x\_{23} \\ &= 3. \end{aligned} \\
>
> With
>
> \\ \begin{aligned} k &= l \\ &= 2 \end{aligned} \\
>
> instead, the leading \\2 \times 2\\ block is \\\begin{bmatrix} 4 & 2 \\ 2 & 5 \end{bmatrix}\\.

> **NOTE:**
>
> **Theorem 12 (Leading blocks of a positive definite matrix are positive definite)** Let \\\mathbf{X}\\ be a \\p \times p\\ positive definite matrix ([Definition 20 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-positive-definite)), and for \\1 \le k \le p\\ let \\\mathbf{X}\_k\\ be its leading \\k \times k\\ block ([Definition 4](#def-block-matrix)), with entries \\x\_{ij}\\ for \\i, j \le k\\. Then \\\mathbf{X}\_k\\ is positive definite. Also, every diagonal entry of a positive definite matrix is positive.

> **NOTE:**
>
> *Proof*. \\\mathbf{X}\_k\\ is symmetric, because \\\mathbf{X}\\ is. For \\\tilde{u} \in \mathbb{R}^k\\ with \\\tilde{u} \ne \tilde{0}\\, let \\\tilde{y} = (u_1, \ldots, u_k, 0, \ldots, 0) \in \mathbb{R}^p\\, which is nonzero, with entries \\y_i = u_i\\ for \\i \le k\\ and \\y_i = 0\\ for \\i \> k\\. Then
>
> \\ \begin{aligned} {\tilde{u}}^{\top} \mathbf{X}\_k \tilde{u} &= \sum\_{i=1}^{k} \sum\_{j=1}^{k} u_i\\x\_{ij}\\u_j && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{, }\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{)} \\ &= \sum\_{i=1}^{k} \sum\_{j=1}^{k} y_i\\x\_{ij}\\y_j && \text{(} y_i = u_i \text{ for } i \le k \text{)} \\ &= \sum\_{i=1}^p\sum\_{j=1}^py_i\\x\_{ij}\\y_j && \text{(each added term has a factor } y_i = 0 \text{ or } y_j = 0 \text{)} \\ &= {\tilde{y}}^{\top} \mathbf{X} \tilde{y} && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{, }\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{)} \\ &\> 0. && \text{(} \mathbf{X} \text{ positive definite, } \tilde{y} \ne \tilde{0}\text{)} \end{aligned} \\
>
> For the diagonal entry \\x\_{ii}\\, take \\\tilde{e}\_i\\ ([Definition 12 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)), which is nonzero:
>
> \\ \begin{aligned} {\tilde{e}\_i}^{\top} \mathbf{X} \tilde{e}\_i &= \sum\_{r=1}^{p} \sum\_{s=1}^{p} (\tilde{e}\_i)\_r\\x\_{rs}\\(\tilde{e}\_i)\_s && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{, }\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{)} \\ &= x\_{ii} && \text{(only the term with } r \text{ and } s \text{ both equal to } i \text{ is nonzero)} \\ &\> 0. && \text{(} \mathbf{X} \text{ positive definite)} \end{aligned} \\

> **NOTE:**
>
> **Example 18 (A quick necessary test)** \\\begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ is positive definite ([Example 16](#exm-pd-operations)), and its diagonal entries \\2, 2\\ and its \\1 \times 1\\ leading block \\\[2\]\\ are positive. The test can only rule matrices out: \\-\mathbf{I}\_2\\ has negative diagonal entries, so it is not positive definite, even though
>
> \\ \begin{aligned} \det(-\mathbf{I}\_2) &= (-1)(-1) - 0 \\ &= 1 \\ &\> 0 \end{aligned} \\
>
> ([Definition 22 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-determinant)); a positive determinant alone does not make a matrix positive definite. And positive diagonal entries are not enough: \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\ of [Example 27 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-positive-definite) has them but is not positive definite.

> **NOTE:**
>
> **Theorem 13 (The quadratic form of a block matrix)** Let \\k, m \ge 1\\, let \\\mathbf{A}\\ be a symmetric \\k \times k\\ matrix, \\\mathbf{B}\\ a \\k \times m\\ matrix and \\\mathbf{C}\\ a symmetric \\m \times m\\ matrix, and let \\\mathbf{X}\\ be the \\(k + m) \times (k + m)\\ block matrix ([Definition 4](#def-block-matrix))
>
> \\ \mathbf{X} = \begin{bmatrix} \underbrace{\mathbf{A}}\_{k \times k} & \underbrace{\mathbf{B}}\_{k \times m} \\ \underbrace{{\mathbf{B}}^{\top}}\_{m \times k} & \underbrace{\mathbf{C}}\_{m \times m} \end{bmatrix}, \\
>
> that is, \\x\_{ij} = a\_{ij}\\, \\x\_{i, k+j} = b\_{ij}\\, \\x\_{k+i, j} = b\_{ji}\\ and \\x\_{k+i, k+j} = c\_{ij}\\ for indices in range. \\\mathbf{X}\\ is symmetric ([Definition 3 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-symmetric-matrix)):
>
> \\ \begin{aligned} x\_{k+i, j} &= b\_{ji} \\ &= x\_{j, k+i}, \end{aligned} \\
>
> and \\\mathbf{A}\\ and \\\mathbf{C}\\ are symmetric. Split \\\tilde{v} \in \mathbb{R}^{k + m}\\ as \\\tilde{v} = (\tilde{u}, \tilde{w})\\, with \\\tilde{u} \in \mathbb{R}^k\\ its first \\k\\ entries and \\\tilde{w} \in \mathbb{R}^m\\ the rest. Then
>
> \\ {\tilde{v}}^{\top} \mathbf{X} \tilde{v} = {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + 2\\{\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{w}}^{\top} \mathbf{C} \tilde{w}, \tag{2}\\
>
> and if \\\mathbf{A}\\ is invertible, with \\\mathbf{S} \stackrel{\text{def}}{=}\mathbf{C} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B}\\ and \\\tilde{z} \stackrel{\text{def}}{=}\tilde{u} + \mathbf{A}^{-1} \mathbf{B} \tilde{w}\\,
>
> \\ {\tilde{v}}^{\top} \mathbf{X} \tilde{v} = {\tilde{z}}^{\top} \mathbf{A} \tilde{z} + {\tilde{w}}^{\top} \mathbf{S} \tilde{w}. \\

> **NOTE:**
>
> *Proof*. **\\\mathbf{X} \tilde{v}\\ in blocks.** For \\i \le k\\,
>
> \\ \begin{aligned} (\mathbf{X} \tilde{v})\_i &= \sum\_{j=1}^{k+m} x\_{ij}\\v_j && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \\ &= \sum\_{j=1}^{k} x\_{ij}\\v_j + \sum\_{j=1}^{m} x\_{i, k+j}\\v\_{k+j} && \text{(split the sum at } j = k \text{)} \\ &= \sum\_{j=1}^{k} a\_{ij}\\u_j + \sum\_{j=1}^{m} b\_{ij}\\w_j && \text{(the blocks of } \mathbf{X} \text{ and of } \tilde{v} \text{)} \\ &= (\mathbf{A} \tilde{u})\_i + (\mathbf{B} \tilde{w})\_i, && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~11 in Matrices}}\text{)} \end{aligned} \\
>
> and in the same way \\(\mathbf{X} \tilde{v})\_{k+i} = ({\mathbf{B}}^{\top} \tilde{u})\_i + (\mathbf{C} \tilde{w})\_i\\ for \\i \le m\\.
>
> **The expansion.**
>
> \\ \begin{aligned} {\tilde{v}}^{\top} \mathbf{X} \tilde{v} &= \sum\_{i=1}^{k} u_i\\(\mathbf{X} \tilde{v})\_i + \sum\_{i=1}^{m} w_i\\(\mathbf{X} \tilde{v})\_{k+i} && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{, split the sum at } k \text{)} \\ &= \tilde{u} \cdot (\mathbf{A} \tilde{u} + \mathbf{B} \tilde{w}) + \tilde{w} \cdot ({\mathbf{B}}^{\top} \tilde{u} + \mathbf{C} \tilde{w}) && \text{(the blocks of } \mathbf{X} \tilde{v} \text{)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + {\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{w}}^{\top} {\mathbf{B}}^{\top} \tilde{u} + {\tilde{w}}^{\top} \mathbf{C} \tilde{w} && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dot-linear}{\text{Theorem~5 in Direct Sums and Orthogonal Complements}}\text{)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + {\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{w}}^{\top} \mathbf{C} \tilde{w} && \text{(} {\tilde{w}}^{\top} {\mathbf{B}}^{\top} \tilde{u} = {\mathopen{}\left({\tilde{w}}^{\top} {\mathbf{B}}^{\top} \tilde{u}\right)\mathclose{}}^{\top} \text{, which equals } {\tilde{u}}^{\top} \mathbf{B} \tilde{w} \text{; } 1 \times 1 \text{, }\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{, }\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + 2\\{\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{w}}^{\top} \mathbf{C} \tilde{w}. && \text{(combine like terms)} \end{aligned} \\
>
> **Completing the square.** Write \\\tilde{d} \stackrel{\text{def}}{=}\mathbf{A}^{-1} \mathbf{B} \tilde{w}\\, so \\\tilde{z} = \tilde{u} + \tilde{d}\\ and \\\mathbf{A} \tilde{d} = \mathbf{B} \tilde{w}\\ ([Theorem 5 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-assoc), 2, [Theorem 7 in Matrices](linear-algebra-matrices.llms.md#thm-identity)); \\\mathbf{A}^{-1}\\ is symmetric ([Corollary 1 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric)). Then
>
> \\ \begin{aligned} {\tilde{z}}^{\top} \mathbf{A} \tilde{z} &= (\tilde{u} + \tilde{d}) \cdot \mathbf{A}\\(\tilde{u} + \tilde{d}) && \text{(substitute } \tilde{z} = \tilde{u} + \tilde{d} \text{)} \\ &= (\tilde{u} + \tilde{d}) \cdot (\mathbf{A} \tilde{u} + \mathbf{A} \tilde{d}) && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-distrib}{\text{Theorem~6 in Matrices}}\text{)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + {\tilde{u}}^{\top} \mathbf{A} \tilde{d} + {\tilde{d}}^{\top} \mathbf{A} \tilde{u} + {\tilde{d}}^{\top} \mathbf{A} \tilde{d} && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dot-linear}{\text{Theorem~5 in Direct Sums and Orthogonal Complements}}\text{, both slots)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + {\tilde{u}}^{\top} \mathbf{A} \tilde{d} + {\tilde{u}}^{\top} \mathbf{A} \tilde{d} + {\tilde{d}}^{\top} \mathbf{A} \tilde{d} && \text{(as in the expansion, with } {\mathbf{A}}^{\top} = \mathbf{A} \text{)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + 2\\{\tilde{u}}^{\top} \mathbf{A} \tilde{d} + {\tilde{d}}^{\top} \mathbf{A} \tilde{d} && \text{(combine like terms)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + 2\\{\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{d}}^{\top} \mathbf{B} \tilde{w} && \text{(} \mathbf{A} \tilde{d} = \mathbf{B} \tilde{w} \text{, twice)} \\ &= {\tilde{u}}^{\top} \mathbf{A} \tilde{u} + 2\\{\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{w}}^{\top}\\{\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \tilde{w}, && \text{(} {\tilde{d}}^{\top} = {\tilde{w}}^{\top} {\mathbf{B}}^{\top} \mathbf{A}^{-1} \text{, }\href{linear-algebra-matrices.qmd#thm-transpose-product}{\text{Theorem~16 in Matrices}}\text{, }\href{linear-algebra-special-matrices.qmd#cor-inverse-symmetric}{\text{Corollary~1 in Special Matrices and Decompositions}}\text{)} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} {\tilde{w}}^{\top} \mathbf{S} \tilde{w} &= {\tilde{w}}^{\top}\\(\mathbf{C} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B})\\\tilde{w} && \text{(substitute } \mathbf{S} \text{)} \\ &= {\tilde{w}}^{\top}\\(\mathbf{C} \tilde{w} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \tilde{w}) && \text{(}\href{linear-algebra-projections.qmd#thm-scalar-matmul}{\text{Theorem~7 in Projections and Linear Systems}}\text{, difference rule on the right)} \\ &= {\tilde{w}}^{\top} \mathbf{C} \tilde{w} - {\tilde{w}}^{\top}\\{\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \tilde{w}. && \text{(}\href{linear-algebra-projections.qmd#thm-scalar-matmul}{\text{Theorem~7 in Projections and Linear Systems}}\text{, difference rule on the left)} \end{aligned} \\
>
> Adding the two displays, the \\{\tilde{w}}^{\top}\\{\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \tilde{w}\\ terms cancel, leaving \\{\tilde{u}}^{\top} \mathbf{A} \tilde{u} + 2\\{\tilde{u}}^{\top} \mathbf{B} \tilde{w} + {\tilde{w}}^{\top} \mathbf{C} \tilde{w}\\, which is \\{\tilde{v}}^{\top} \mathbf{X} \tilde{v}\\ by [Equation 2](#eq-block-quadratic).

> **NOTE:**
>
> **Example 19 (The \\2 \times 2\\ case)** For \\\mathbf{X} = \begin{bmatrix} a & b \\ b & c \end{bmatrix}\\ (\\k = 1\\ and \\m = 1\\) and \\a \ne 0\\, the theorem reads
>
> \\ a u^2 + 2buw + cw^2 = a\\\mathopen{}\left(u + \tfrac{b}{a}\\w\right)\mathclose{}^2 + \mathopen{}\left(c - \tfrac{b^2}{a}\right)\mathclose{}\\w^2, \\
>
> with \\\tilde{v} = (u, w)\\: the familiar completing of the square. With
>
> \\ \begin{aligned} a &= c \\ &= 5 \end{aligned} \\
>
> and \\b = 4\\:
>
> \\ \begin{aligned} 5\\(u + 0.8\\w)^2 + 1.8\\w^2 &= 5\\(u^2 + 1.6\\uw + 0.64\\w^2) + 1.8\\w^2 \\ &= 5u^2 + 8uw + 3.2\\w^2 + 1.8\\w^2 \\ &= 5u^2 + 8uw + 5w^2. \end{aligned} \\

> **NOTE:**
>
> **Definition 5 (Schur complement)** For a block matrix \\\mathbf{X} = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ {\mathbf{B}}^{\top} & \mathbf{C} \end{bmatrix}\\ as in [Theorem 13](#thm-block-quadratic) with \\\mathbf{A}\\ invertible, the **Schur complement** of \\\mathbf{A}\\ in \\\mathbf{X}\\ is the \\m \times m\\ matrix \\\mathbf{S} = \mathbf{C} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B}\\ defined in [Theorem 13](#thm-block-quadratic).

> **NOTE:**
>
> **Example 20 (Schur complements of \\2 \times 2\\ matrices)**  
>
> - For \\\begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}\\ with \\\mathbf{A} = \[5\]\\:
>
>   \\ \begin{aligned} \mathbf{S} &= 5 - 4 \cdot\tfrac{1}{5} \cdot 4 \\ &= \tfrac{25}{5} - \tfrac{16}{5} \\ &= \tfrac{9}{5}, \end{aligned} \\
>
>   that is, \\\mathbf{S} = \[\tfrac{9}{5}\]\\.
>
> - For \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\ with \\\mathbf{A} = \[1\]\\:
>
>   \\ \begin{aligned} \mathbf{S} &= \[1 - 2 \cdot 1 \cdot 2\] \\ &= \[-3\]. \end{aligned} \\
>
> - For \\\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}\\ the top-left block \\\[0\]\\ is not invertible, so there is no Schur complement of it.

> **NOTE:**
>
> **Theorem 14 (Schur complement test)** Let \\\mathbf{X} = \begin{bmatrix} \mathbf{A} & \mathbf{B} \\ {\mathbf{B}}^{\top} & \mathbf{C} \end{bmatrix}\\ be as in [Theorem 13](#thm-block-quadratic). Then \\\mathbf{X}\\ is positive definite ([Definition 20 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-positive-definite)) exactly when \\\mathbf{A}\\ is positive definite and its Schur complement \\\mathbf{S}\\ ([Definition 5](#def-schur-complement)) is positive definite.

> **NOTE:**
>
> *Proof*. **If.** \\\mathbf{A}\\ is positive definite, so invertible ([Theorem 14 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#thm-pd-inverse)), and \\\mathbf{S}\\ is defined. \\\mathbf{X}\\ is symmetric. Let \\\tilde{v} = (\tilde{u}, \tilde{w}) \ne \tilde{0}\\ and \\\tilde{z} = \tilde{u} + \mathbf{A}^{-1} \mathbf{B} \tilde{w}\\. By [Theorem 13](#thm-block-quadratic), \\{\tilde{v}}^{\top} \mathbf{X} \tilde{v} = {\tilde{z}}^{\top} \mathbf{A} \tilde{z} + {\tilde{w}}^{\top} \mathbf{S} \tilde{w}\\, and both terms are at least \\0\\. If \\\tilde{w} \ne \tilde{0}\\, the second term is positive. If \\\tilde{w} = \tilde{0}\\, then \\\tilde{u} \ne \tilde{0}\\ and \\\tilde{z} = \tilde{u}\\, so the first term is positive. Either way \\{\tilde{v}}^{\top} \mathbf{X} \tilde{v} \> 0\\.
>
> **Only if.** \\\mathbf{A}\\ is the top-left \\k \times k\\ block of \\\mathbf{X}\\, so it is positive definite ([Theorem 12](#thm-pd-submatrix)), and invertible ([Theorem 14 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#thm-pd-inverse)). \\\mathbf{S}\\ is symmetric:
>
> \\ \begin{aligned} {({\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B})}^{\top} &= {\mathbf{B}}^{\top}\\{(\mathbf{A}^{-1})}^{\top}\\\mathbf{B} \\ &= {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B} \end{aligned} \\
>
> ([Theorem 16 in Matrices](linear-algebra-matrices.llms.md#thm-transpose-product), [Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose) for \\{({\mathbf{B}}^{\top})}^{\top} = \mathbf{B}\\, [Corollary 1 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric)), and \\\mathbf{C}\\ is symmetric, so \\\mathbf{S} = \mathbf{C} - {\mathbf{B}}^{\top} \mathbf{A}^{-1} \mathbf{B}\\ is symmetric (the transpose of a difference is the difference of the transposes, entry by entry, [Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)). For \\\tilde{w} \ne \tilde{0}\\, take \\\tilde{u} = -\mathbf{A}^{-1} \mathbf{B} \tilde{w}\\, so \\\tilde{z} = \tilde{0}\\ and \\\tilde{v} = (\tilde{u}, \tilde{w}) \ne \tilde{0}\\; then \\{\tilde{w}}^{\top} \mathbf{S} \tilde{w} = {\tilde{v}}^{\top} \mathbf{X} \tilde{v} \> 0\\ ([Theorem 13](#thm-block-quadratic)).

> **NOTE:**
>
> **Example 21 (Testing \\2 \times 2\\ matrices)** A symmetric \\\begin{bmatrix} a & b \\ b & c \end{bmatrix}\\ is positive definite exactly when \\a \> 0\\ and \\c - \tfrac{b^2}{a} \> 0\\, that is, \\a \> 0\\ and \\ac \> b^2\\ (a \\1 \times 1\\ matrix \\\[s\]\\ is positive definite exactly when \\s \> 0\\, since \\{x}^{\top} s x = s x^2\\).
>
> - \\\begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}\\: \\5 \> 0\\ and \\\tfrac{9}{5} \> 0\\ ([Example 20](#exm-schur-complement)), so it is positive definite.
> - \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\: \\1 \> 0\\ but \\\mathbf{S} = -3\\, so it is not, as [Example 27 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#exm-positive-definite) found directly.

> **NOTE:**
>
> **Theorem 15 (Cholesky factorization)** A \\p \times p\\ matrix \\\mathbf{A}\\ is positive definite ([Definition 20 in Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md#def-positive-definite)) exactly when \\\mathbf{A} = \mathbf{L} {\mathbf{L}}^{\top}\\ for some lower triangular \\\mathbf{L}\\ ([Definition 7 in Projections and Linear Systems](linear-algebra-projections.llms.md#def-triangular-matrix)) with positive diagonal entries. For a positive definite \\\mathbf{A}\\ that \\\mathbf{L}\\ is unique; it is the **Cholesky factor** of \\\mathbf{A}\\.

> **NOTE:**
>
> *Proof*. **If.** \\{\mathbf{L}}^{\top}\\ is upper triangular with positive diagonal ([Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)), so \\{\mathbf{L}}^{\top} \tilde{x}= \tilde{0}\\ only for \\\tilde{x}= \tilde{0}\\ ([Theorem 16 in Projections and Linear Systems](linear-algebra-projections.llms.md#thm-back-substitution)), and the columns of \\{\mathbf{L}}^{\top}\\ are linearly independent ([Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns), [Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)). So \\\mathbf{A} = {({\mathbf{L}}^{\top})}^{\top}\\{\mathbf{L}}^{\top}\\ ([Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)) is positive definite ([Theorem 10](#thm-pd-gram), part 2).
>
> **Only if, with uniqueness, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\p\\.** For \\p = 1\\, \\\mathbf{A} = \[a\]\\ with \\a \> 0\\ ([Theorem 12](#thm-pd-submatrix)), and \\\[c\]\\\[c\] = \[a\]\\ with \\c \> 0\\ holds exactly for \\c = \sqrt{a}\\. For \\p \> 1\\, assume every \\(p - 1) \times (p - 1)\\ positive definite matrix has exactly one such factor, and split off the first row and column. \\\mathbf{A}\\ is symmetric, so its first row is the transpose of its first column:
>
> \\ \mathbf{A} = \begin{bmatrix} a\_{11} & {\tilde{b}}^{\top} \\ \tilde{b} & \mathbf{A}\_{22} \end{bmatrix}, \qquad \mathbf{L} = \begin{bmatrix} \ell\_{11} & \tilde{0}\_{1 \times (p-1)} \\ \tilde{g} & \mathbf{L}\_{22} \end{bmatrix}, \qquad {\mathbf{L}}^{\top} = \begin{bmatrix} \ell\_{11} & {\tilde{g}}^{\top} \\ \tilde{0}\_{(p-1) \times 1} & {\mathbf{L}\_{22}}^{\top} \end{bmatrix}, \\
>
> with \\\tilde{b}, \tilde{g} \in \mathbb{R}^{p-1}\\, where \\b_i\\ and \\g_i\\ are entries \\(i + 1, 1)\\ of \\\mathbf{A}\\ and \\\mathbf{L}\\, and \\(\mathbf{A}\_{22})\_{ij}\\ and \\(\mathbf{L}\_{22})\_{ij}\\ are their entries \\(i + 1, j + 1)\\; \\{\mathbf{L}}^{\top}\\ has this form by [Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose). A \\p \times p\\ matrix \\\mathbf{L}\\ is lower triangular with positive diagonal exactly when \\\ell\_{11} \> 0\\, its first row is otherwise zero, and \\\mathbf{L}\_{22}\\ is lower triangular with positive diagonal; \\\tilde{g}\\ can be anything. So choosing \\\mathbf{L}\\ means choosing \\\ell\_{11} \> 0\\, \\\tilde{g}\\ and such an \\\mathbf{L}\_{22}\\.
>
> Entry \\(i, j)\\ of \\\mathbf{L} {\mathbf{L}}^{\top}\\ is \\\sum\_{r=1}^{p} \ell\_{ir}\\\ell\_{jr}\\, with \\\ell\_{ir}\\ entry \\(i, r)\\ of \\\mathbf{L}\\ (1, [Definition 3 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose)). Row \\1\\ of \\\mathbf{L}\\ is \\(\ell\_{11}, 0, \ldots, 0)\\, and row \\i + 1\\ is \\(g_i, (\mathbf{L}\_{22})\_{i1}, \ldots, (\mathbf{L}\_{22})\_{i,p-1})\\. So, for \\i, j = 1, \ldots, p - 1\\:
>
> \\ \begin{aligned} (\mathbf{L} {\mathbf{L}}^{\top})\_{11} &= \ell\_{11}\\\ell\_{11} + \sum\_{r=2}^{p} 0 \cdot 0 \\ &= \ell\_{11}^2, && \text{(rows 1 and 1)} \\ (\mathbf{L} {\mathbf{L}}^{\top})\_{i+1,1} &= g_i\\\ell\_{11} + \sum\_{r=2}^{p} (\mathbf{L}\_{22})\_{i,r-1} \cdot 0 \\ &= \ell\_{11}\\g_i, && \text{(rows } i + 1 \text{ and } 1 \text{)} \\ (\mathbf{L} {\mathbf{L}}^{\top})\_{i+1,j+1} &= g_i\\g_j + \sum\_{r=2}^{p} (\mathbf{L}\_{22})\_{i,r-1}\\(\mathbf{L}\_{22})\_{j,r-1} && \text{(rows } i + 1 \text{ and } j + 1 \text{)} \\ &= (\tilde{g} {\tilde{g}}^{\top})\_{ij} + (\mathbf{L}\_{22} {\mathbf{L}\_{22}}^{\top})\_{ij}. && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-mult}{\text{Definition~7 in Matrices}}\text{, with } s = r - 1 \text{)} \end{aligned} \\
>
> Entry \\(1, j + 1)\\ is \\\ell\_{11}\\g_j\\ by the same computation with the roles swapped, the transpose of the \\(2, 1)\\ block; it matches \\{\tilde{b}}^{\top}\\ exactly when the \\(2, 1)\\ block matches \\\tilde{b}\\, which is where the symmetry of \\\mathbf{A}\\ is used. So \\\mathbf{L} {\mathbf{L}}^{\top} = \mathbf{A}\\ says exactly
>
> \\ \ell\_{11}^2 = a\_{11}, \qquad \ell\_{11}\\\tilde{g} = \tilde{b}, \qquad \tilde{g} {\tilde{g}}^{\top} + \mathbf{L}\_{22} {\mathbf{L}\_{22}}^{\top} = \mathbf{A}\_{22}. \\
>
> \\a\_{11} \> 0\\ ([Theorem 12](#thm-pd-submatrix)), so the first equation with \\\ell\_{11} \> 0\\ forces \\\ell\_{11} = \sqrt{a\_{11}}\\; the second then forces \\\tilde{g} = \tfrac{1}{\ell\_{11}}\\\tilde{b}\\; and the third becomes
>
> \\ \begin{aligned} \mathbf{L}\_{22} {\mathbf{L}\_{22}}^{\top} &= \mathbf{A}\_{22} - \tilde{g} {\tilde{g}}^{\top} && \text{(subtract } \tilde{g} {\tilde{g}}^{\top} \text{)} \\ &= \mathbf{A}\_{22} - \mathopen{}\left(\tfrac{1}{\ell\_{11}}\\\tilde{b}\right)\mathclose{} {\mathopen{}\left(\tfrac{1}{\ell\_{11}}\\\tilde{b}\right)\mathclose{}}^{\top} && \text{(substitute } \tilde{g} \text{)} \\ &= \mathbf{A}\_{22} - \tfrac{1}{\ell\_{11}^2}\\\tilde{b} {\tilde{b}}^{\top} && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~3 in Matrices}}\text{, }\href{linear-algebra-projections.qmd#thm-scalar-matmul}{\text{Theorem~7 in Projections and Linear Systems}}\text{)} \\ &= \mathbf{A}\_{22} - \tfrac{1}{a\_{11}}\\\tilde{b} {\tilde{b}}^{\top}. && \text{(} \ell\_{11}^2 = a\_{11} \text{)} \end{aligned} \\
>
> Here \\\[a\_{11}\]\\ is invertible with inverse \\\[1 / a\_{11}\]\\, so with \\\mathbf{B} = {\tilde{b}}^{\top}\\ in [Definition 5](#def-schur-complement),
>
> \\ \begin{aligned} {\mathbf{B}}^{\top}\\\[a\_{11}\]^{-1} \mathbf{B} &= \tilde{b}\\\tfrac{1}{a\_{11}}\\{\tilde{b}}^{\top} \\ &= \tfrac{1}{a\_{11}}\\\tilde{b} {\tilde{b}}^{\top} \end{aligned} \\
>
> ([Theorem 7 in Projections and Linear Systems](linear-algebra-projections.llms.md#thm-scalar-matmul)), and the right side is the Schur complement of \\\[a\_{11}\]\\ in \\\mathbf{A}\\. It is positive definite by [Theorem 14](#thm-schur-test) (with \\k = 1\\; \\\mathbf{A}\_{22}\\ is symmetric because \\\mathbf{A}\\ is). By the induction hypothesis it has exactly one factor \\\mathbf{L}\_{22}\\ of the required kind. So \\\mathbf{L}\\ exists and is unique.

> **NOTE:**
>
> **Example 22 (Two Cholesky factors)**  
>
> - \\\mathbf{A} = \begin{bmatrix} 4 & 2 \\ 2 & 5 \end{bmatrix}\\:
>
>   \\ \begin{aligned} \ell\_{11} &= \sqrt{4} \\ &= 2, \end{aligned} \\
>
>   \\ \begin{aligned} \ell\_{21} &= 2/2 \\ &= 1, \end{aligned} \\
>
>   and
>
>   \\ \begin{aligned} \ell\_{22}^2 &= 5 - 1^2 \\ &= 4, \end{aligned} \\
>
>   so \\\ell\_{22} = 2\\: \\\mathbf{L} = \begin{bmatrix} 2 & 0 \\ 1 & 2 \end{bmatrix}\\, and
>
>   \\ \begin{aligned} \mathbf{L} {\mathbf{L}}^{\top} &= \begin{bmatrix} 2 \cdot 2 & 2 \cdot 1 \\ 1 \cdot 2 & 1 \cdot 1 + 2 \cdot 2 \end{bmatrix} \\ &= \mathbf{A}. \end{aligned} \\
>
> - \\\begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}\\: \\\ell\_{11} = \sqrt{5}\\, \\\ell\_{21} = 4/\sqrt{5}\\, and
>
>   \\ \begin{aligned} \ell\_{22}^2 &= 5 - \tfrac{16}{5} \\ &= \tfrac{9}{5}, \end{aligned} \\
>
>   the Schur complement of [Example 20](#exm-schur-complement), so \\\ell\_{22} = \tfrac{3}{\sqrt{5}}\\.
>
> - For \\\mathbf{D} = \begin{bmatrix} 1 & 2 \\ 2 & 1 \end{bmatrix}\\ the method breaks down:
>
>   \\ \begin{aligned} \ell\_{22}^2 &= 1 - 4 \\ &= -3 \end{aligned} \\
>
>   has no real solution, matching the failure of the Schur complement test ([Example 21](#exm-schur-test)).

Back to top

## References

Zhou, Hua. 2024a. *Eigen-Decomposition*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/10-eig/10-eig.html>.

Zhou, Hua. 2024b. *Symmetric Positive Definite Matrices*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/11-pd/11-pd.html>.
