# Linear Algebra

Code

Published

Last modified: 2026-11-19 18:32:32 (PST)

The linear algebra notes are split across these pages:

- [Vectors](linear-algebra-vectors.llms.md): column vectors, transposes, linear combinations, special vectors, and orthogonality.
- [Matrices](linear-algebra-matrices.llms.md): matrices, their [rows](linear-algebra-matrices.llms.md#def-matrix-row) and [columns](linear-algebra-matrices.llms.md#def-matrix-column), transposes, addition, and [scalar multiplication](linear-algebra-matrices.llms.md#def-scalar-mult).
- [Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md): [matrix products](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult), [square matrices](linear-algebra-matrix-multiplication.llms.md#def-square-matrix), [identity matrices](linear-algebra-matrix-multiplication.llms.md#def-identity-matrix), [matrix-vector products](linear-algebra-matrix-multiplication.llms.md#def-matvec-mult), and the transpose rules for addition and multiplication.
- [Linear and Affine Maps](linear-algebra-linear-maps.llms.md): linear and affine maps, and [hyperplanes](linear-algebra-linear-maps.llms.md#def-hyperplane).
- [Subspaces and Rank](linear-algebra-subspaces.llms.md): rank, subspaces, and bases.
- [Column Space and Null Space](linear-algebra-column-null-space.llms.md): column, row and null spaces of a matrix, and [Gram matrices](linear-algebra-column-null-space.llms.md#def-gram-matrix).
- [Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md): [rank-nullity](linear-algebra-rank-nullity.llms.md#thm-rank-nullity), the rank of matrix products, and rank factorization.
- [Affine Subspaces and Half-Spaces](linear-algebra-affine-subspaces.llms.md): affine subspaces, hyperplanes, and half-spaces.
- [Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md): sums and direct sums, orthogonal complements, and the fundamental theorem of linear algebra.
- [Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md): inner products, the Cauchy-Schwarz inequality, the [triangle inequality](linear-algebra-inner-products.llms.md#thm-triangle-inequality), the [norm](linear-algebra-inner-products.llms.md#def-norm) of a vector, and the [angle between two vectors](linear-algebra-inner-products.llms.md#def-angle).
- [Orthonormal Bases, Outer Products and Hilbert Spaces](linear-algebra-orthonormal-bases.llms.md): orthonormal bases, Gram-Schmidt, outer products, the [Kronecker product](linear-algebra-orthonormal-bases.llms.md#def-kronecker-product), and Hilbert spaces.
- [Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md): symmetric, diagonal, inverse, projection and orthogonal matrices, quadratic forms, the trace, and the [matrix inner product](linear-algebra-special-matrices.llms.md#def-matrix-inner-product).
- [Eigenvalues and Matrix Decompositions](linear-algebra-decompositions.llms.md): eigenvalues, the spectral theorem, [eigendecompositions](linear-algebra-decompositions.llms.md#def-eigendecomposition) and the SVD.
- [Definite Matrices and Determinants](linear-algebra-definite-matrices.llms.md): [positive definite](linear-algebra-definite-matrices.llms.md#def-positive-definite) and semidefinite matrices, [condition numbers](linear-algebra-definite-matrices.llms.md#def-condition-number), [matrix-induced inner products](linear-algebra-definite-matrices.llms.md#def-matrix-induced-inner-product), and determinants.
- [Design Matrices and Projections](linear-algebra-projections.llms.md): design matrices, the [hat matrix](linear-algebra-projections.llms.md#def-hat-matrix) and [orthogonal projection](linear-algebra-projections.llms.md#def-orthogonal-projection).
- [Generalized Inverses and Linear Systems](linear-algebra-generalized-inverses.llms.md): generalized inverses, the [Moore-Penrose inverse](linear-algebra-generalized-inverses.llms.md#def-moore-penrose), and when a linear system has a solution.
- [Solving Linear Systems and Least Squares](linear-algebra-least-squares.llms.md): back substitution, the QR factorization, the [LU factorization](linear-algebra-least-squares.llms.md#def-lu), least squares and the [normal equations](linear-algebra-least-squares.llms.md#def-normal-equations).
- [Similarity and Diagonalization](linear-algebra-diagonalization.llms.md): [eigenspaces](linear-algebra-diagonalization.llms.md#def-eigenspace), [similar matrices](linear-algebra-diagonalization.llms.md#def-similar), and [diagonalizable matrices](linear-algebra-diagonalization.llms.md#def-diagonalizable).
- [Schur Complements and the Cholesky Factorization](linear-algebra-cholesky.llms.md): Gram matrices, [block matrices](linear-algebra-cholesky.llms.md#def-block-matrix), [Schur complements](linear-algebra-cholesky.llms.md#def-schur-complement), and the [Cholesky factorization](linear-algebra-cholesky.llms.md#thm-cholesky).
- [Complex Vectors and Matrices](linear-algebra-complex.llms.md): conjugate transposes and Hermitian matrices.

A link to a section, theorem or definition on this page from before the split goes on to the page that now holds it.

> **NOTE:**
>
> **Definition 1 (Matrix analysis)** **Matrix analysis** is the study of [matrices](linear-algebra-matrices.llms.md#def-matrix) and their algebraic properties, with operations on matrices, [functions](https://morrison-lab.github.io/mcs/functions.html#def-function) of matrices and the [eigenvalues](linear-algebra-decompositions.llms.md#def-eigenvalue) of matrices as example topics [\[1\]](#ref-wikipedia_matrix_analysis).

> **NOTE:**
>
> **Example 1 (Eigenvalues of a small matrix)** The [matrix](linear-algebra-matrices.llms.md#def-matrix) $\matr{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ has the [eigenvalues](linear-algebra-decompositions.llms.md#def-eigenvalue) $3$ and $1$. Finding these eigenvalues is a question about $\matr{A}$ alone, so it is a topic of [matrix analysis](#def-matrix-analysis).

> **NOTE:**
>
> *Remark 1* (Linear algebra and matrix analysis). [Matrix analysis](#def-matrix-analysis) is usually placed within [linear algebra](linear-algebra.llms.md) and its applications [\[1\]](#ref-wikipedia_matrix_analysis), and these notes do not treat it as a separate subject: they use the name *linear algebra* for the material in the pages above. Banerjee and Roy [\[2\]](#ref-banerjee2014linear) pairs the two names in its title. Its preface says that its last two chapters cover [convergence](algebra-exponentials.llms.md#def-convergent-sequence) of [matrices](linear-algebra-matrices.llms.md#def-matrix) and [Hilbert spaces](linear-algebra-orthonormal-bases.llms.md#def-hilbert-space) [\[2, p. xvi\]](#ref-banerjee2014linear).

# 1 Further reading

- Strang [\[3\]](#ref-strang2023linear) is a widely used first course in linear algebra. It covers vectors, elimination, vector spaces, orthogonality, determinants, eigenvalues, and the singular value decomposition.
- Nield [\[4\]](#ref-nield2022essential) is a short, code-driven introduction to the linear algebra used in data science (Chapter 4).
- Axler [\[5\]](#ref-axler2024linear) is a proof-based treatment centered on vector spaces and linear maps. A free electronic version is available from the publisher.
- Lange [\[6\]](#ref-lange2010numerical) covers computing [eigenvalues](linear-algebra-decompositions.llms.md#def-eigenvalue) and [eigenvectors](linear-algebra-decompositions.llms.md#def-eigenvector), including Jacobi’s method (Chapter 8), and the singular value decomposition, its properties, and its applications (Chapter 9).
- Fieller [\[7\]](#ref-fieller2018basics)
- Banerjee and Roy [\[2\]](#ref-banerjee2014linear)
- Searle and Khuri [\[8\]](#ref-searle2017matrix)
- Petersen and Pedersen [\[9\]](#ref-petersen2012matrix) is a free desk reference that collects matrix identities: it lists results on determinants, inverses, decompositions, and [derivatives](calculus-derivatives.llms.md#def-derivative) of vectors and matrices, so it is a quick place to look up a formula these pages prove.
- Stanford University [\[10\]](#ref-stanford2024ee278notes) (Stanford EE 278, taught by Tsachy Weissman) applies this page’s tools to probability and inference. Its “MMSE Geometry” lecture treats the best estimate as an orthogonal [projection](linear-algebra-projections.llms.md), and its lectures on spectral decomposition, the Karhunen-Loeve expansion and principal component analysis treat [diagonalization](linear-algebra-diagonalization.llms.md) of a covariance matrix.
- [Essence of Linear Algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) is a 16-video YouTube playlist by Grant Sanderson (3Blue1Brown) that develops visual and geometric intuition for vectors, linear combinations, spans, linear transformations, matrix multiplication, determinants, inverses, dot and cross products, change of basis, and eigenvectors and eigenvalues.

# Definitions on this page

- [Definition 1 (Matrix analysis)](#def-matrix-analysis)

# References

\[1\]

Wikipedia contributors, “Matrix analysis — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Matrix_analysis>

\[2\]

S. Banerjee and A. Roy, *Linear algebra and matrix analysis for statistics*, vol. 181. Crc Press Boca Raton, 2014. Available: <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>

\[3\]

G. Strang, *Introduction to linear algebra*, 6th ed. Wellesley, MA: Wellesley-Cambridge Press, 2023. Available: <https://math.mit.edu/~gs/linearalgebra/>

\[4\]

T. Nield, *Essential math for data science: Take control of your data with fundamental linear algebra, probability, and statistics*. Sebastopol, CA: O’Reilly Media, 2022.

\[5\]

S. Axler, *Linear algebra done right*, 4th ed. in Undergraduate texts in mathematics. Springer, 2024. doi: [10.1007/978-3-031-41026-0](https://doi.org/10.1007/978-3-031-41026-0).

\[6\]

K. Lange, *Numerical analysis for statisticians*, 2nd ed. in Statistics and computing. Springer, 2010. doi: [10.1007/978-1-4419-5945-4](https://doi.org/10.1007/978-1-4419-5945-4).

\[7\]

N. Fieller, *Basics of matrix algebra for statistics with R*. Chapman and Hall/CRC, 2016. doi: [10.1201/9781315370200](https://doi.org/10.1201/9781315370200).

\[8\]

S. R. Searle and A. I. Khuri, *Matrix algebra useful for statistics*. John Wiley & Sons, 2017.

\[9\]

K. B. Petersen and M. S. Pedersen, “The matrix cookbook,” Technical University of Denmark, Nov. 2012. Available: <https://www2.imm.dtu.dk/pubdb/edoc/imm3274.pdf>

\[10\]

Stanford University, “EE 278, probability and statistical inference: Fall 2024 lecture notes.” Handwritten lecture notes, 2024. Available: <https://web.stanford.edu/class/ee278/lectures.html>

Back to top
