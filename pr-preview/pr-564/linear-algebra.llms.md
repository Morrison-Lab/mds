# Linear Algebra

Code

Published

Last modified: 2026-11-01 18:29:48 (PST)

The linear algebra notes are split across these pages:

- [Vectors](linear-algebra-vectors.llms.md): column vectors, transposes, linear combinations, special vectors, and orthogonality.
- [Matrices](linear-algebra-matrices.llms.md): matrix arithmetic, matrix-vector products, linear and affine maps, and hyperplanes.
- [Subspaces and Rank](linear-algebra-subspaces.llms.md): rank, subspaces, and bases.
- [Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md): column and null spaces, the rank-nullity theorem, and rank factorization.
- [Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md): sums and direct sums, orthogonal complements, and the fundamental theorem of linear algebra.
- [Inner Products and Orthogonality](linear-algebra-inner-products.llms.md): inner products, the Cauchy-Schwarz and triangle inequalities, norms, angles, Gram-Schmidt, and outer products.
- [Special Matrices and Decompositions](linear-algebra-special-matrices.llms.md): symmetric, diagonal, inverse, projection and orthogonal matrices, quadratic forms, the trace, eigendecompositions and the SVD, definite matrices, and determinants.
- [Projections and Linear Systems](linear-algebra-projections.llms.md): design matrices, orthogonal projection, generalized inverses, and solving linear systems and least squares.
- [Diagonalization and Cholesky](linear-algebra-diagonalization.llms.md): similarity, diagonalization, Schur complements, and the Cholesky factorization.
- [Complex Vectors and Matrices](linear-algebra-complex.llms.md): conjugate transposes and Hermitian matrices.

A link to a section, theorem or definition on this page from before the split goes on to the page that now holds it.

> **NOTE:**
>
> **Definition 1 (Matrix analysis)** **Matrix analysis** is the study of [matrices](linear-algebra-matrices.llms.md#def-matrix) and their algebraic properties, with operations on matrices, [functions](functions.llms.md#def-function) of matrices and the [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) of matrices as example topics [\[1\]](#ref-wikipedia_matrix_analysis).

> **NOTE:**
>
> **Example 1 (Eigenvalues of a small matrix)** The [matrix](linear-algebra-matrices.llms.md#def-matrix) \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ has the [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) \\3\\ and \\1\\. Finding these eigenvalues is a question about \\\mathbf{A}\\ alone, so it is a topic of [matrix analysis](#def-matrix-analysis).

> **NOTE:**
>
> *Remark 1* (Linear algebra and matrix analysis). [Matrix analysis](#def-matrix-analysis) is usually placed within [linear algebra](linear-algebra.llms.md) and its applications [\[1\]](#ref-wikipedia_matrix_analysis), and these notes do not treat it as a separate subject: they use the name *linear algebra* for the material in the pages above. Banerjee and Roy [\[2\]](#ref-banerjee2014linear) pairs the two names in its title. Its preface says that its last two chapters cover [convergence](algebra-exponentials.llms.md#def-convergent-sequence) of [matrices](linear-algebra-matrices.llms.md#def-matrix) and [Hilbert spaces](linear-algebra-inner-products.llms.md#def-hilbert-space) [\[2, p. xvi\]](#ref-banerjee2014linear).

## 0.1 Further reading

- Strang [\[3\]](#ref-strang2023linear) is a widely used first course in linear algebra. It covers vectors, elimination, vector spaces, orthogonality, determinants, eigenvalues, and the singular value decomposition.
- Axler [\[4\]](#ref-axler2024linear) is a proof-based treatment centered on vector spaces and linear maps. A free electronic version is available from the publisher.
- Lange [\[5\]](#ref-lange2010numerical) covers computing [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) and [eigenvectors](linear-algebra-special-matrices.llms.md#def-eigenvector), including Jacobi’s method (Chapter 8), and the singular value decomposition, its properties, and its applications (Chapter 9).
- Fieller [\[6\]](#ref-fieller2018basics)
- Banerjee and Roy [\[2\]](#ref-banerjee2014linear)
- Searle and Khuri [\[7\]](#ref-searle2017matrix)
- Petersen and Pedersen [\[8\]](#ref-petersen2012matrix) is a free desk reference that collects matrix identities: it lists results on determinants, inverses, decompositions, and [derivatives](calculus-derivatives.llms.md#def-derivative) of vectors and matrices, so it is a quick place to look up a formula these pages prove.
- Stanford University [\[9\]](#ref-stanford2024ee278notes) (Stanford EE 278, taught by Tsachy Weissman) applies this page’s tools to probability and inference. Its “MMSE Geometry” lecture treats the best estimate as an orthogonal [projection](linear-algebra-projections.llms.md), and its lectures on spectral decomposition, the Karhunen-Loeve expansion and principal component analysis treat [diagonalization](linear-algebra-diagonalization.llms.md) of a covariance matrix.
- [Essence of Linear Algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) is a 16-video YouTube playlist by Grant Sanderson (3Blue1Brown) that develops visual and geometric intuition for vectors, linear combinations, spans, linear transformations, matrix multiplication, determinants, inverses, dot and cross products, change of basis, and eigenvectors and eigenvalues.

## References

\[1\]

Wikipedia contributors, “Matrix analysis — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Matrix_analysis>

\[2\]

S. Banerjee and A. Roy, *Linear algebra and matrix analysis for statistics*, vol. 181. Crc Press Boca Raton, 2014. Available: <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>

\[3\]

G. Strang, *Introduction to linear algebra*, 6th ed. Wellesley, MA: Wellesley-Cambridge Press, 2023. Available: <https://math.mit.edu/~gs/linearalgebra/>

\[4\]

S. Axler, *Linear algebra done right*, 4th ed. in Undergraduate texts in mathematics. Springer, 2024. doi: [10.1007/978-3-031-41026-0](https://doi.org/10.1007/978-3-031-41026-0).

\[5\]

K. Lange, *Numerical analysis for statisticians*, 2nd ed. in Statistics and computing. Springer, 2010. doi: [10.1007/978-1-4419-5945-4](https://doi.org/10.1007/978-1-4419-5945-4).

\[6\]

N. Fieller, *Basics of matrix algebra for statistics with R*. Chapman; Hall/CRC, 2016. doi: [10.1201/9781315370200](https://doi.org/10.1201/9781315370200).

\[7\]

S. R. Searle and A. I. Khuri, *Matrix algebra useful for statistics*. John Wiley & Sons, 2017.

\[8\]

K. B. Petersen and M. S. Pedersen, “The matrix cookbook,” Technical University of Denmark, Nov. 2012. Available: <https://www2.imm.dtu.dk/pubdb/edoc/imm3274.pdf>

\[9\]

Stanford University, “EE 278, probability and statistical inference: Fall 2024 lecture notes.” Handwritten lecture notes, 2024. Available: <https://web.stanford.edu/class/ee278/lectures.html>

# Definitions on this page

- [Definition 1 (Matrix analysis)](#def-matrix-analysis)

Back to top
