# Linear Algebra

Code

Published

Last modified: 2026-10-28 20:06:09 (PDT)

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

## 1 Further reading

- Strang [\[1\]](#ref-strang2023linear) is a widely used first course in linear algebra. It covers vectors, elimination, vector spaces, orthogonality, determinants, eigenvalues, and the singular value decomposition.
- Axler [\[2\]](#ref-axler2024linear) is a proof-based treatment centered on vector spaces and linear maps. A free electronic version is available from the publisher.
- Lange [\[3\]](#ref-lange2010numerical) covers computing [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) and [eigenvectors](linear-algebra-special-matrices.llms.md#def-eigenvector), including Jacobi’s method (Chapter 8), and the singular value decomposition, its properties, and its applications (Chapter 9).
- Fieller [\[4\]](#ref-fieller2018basics)
- Banerjee and Roy [\[5\]](#ref-banerjee2014linear)
- Searle and Khuri [\[6\]](#ref-searle2017matrix)
- Petersen and Pedersen [\[7\]](#ref-petersen2012matrix) is a free desk reference that collects matrix identities: it lists results on determinants, inverses, decompositions, and [derivatives](calculus-derivatives.llms.md#def-derivative) of vectors and matrices, so it is a quick place to look up a formula these pages prove.
- Stanford University [\[8\]](#ref-stanford2024ee278notes) (Stanford EE 278, taught by Tsachy Weissman) applies this page’s tools to probability and inference. Its “MMSE Geometry” lecture treats the best estimate as an orthogonal [projection](linear-algebra-projections.llms.md), and its lectures on spectral decomposition, the Karhunen-Loeve expansion and principal component analysis treat [diagonalization](linear-algebra-diagonalization.llms.md) of a covariance matrix.
- [Essence of Linear Algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) is a 16-video YouTube playlist by Grant Sanderson (3Blue1Brown) that develops visual and geometric intuition for vectors, linear combinations, spans, linear transformations, matrix multiplication, determinants, inverses, dot and cross products, change of basis, and eigenvectors and eigenvalues.

## References

\[1\]

G. Strang, *Introduction to linear algebra*, 6th ed. Wellesley, MA: Wellesley-Cambridge Press, 2023. Available: <https://math.mit.edu/~gs/linearalgebra/>

\[2\]

S. Axler, *Linear algebra done right*, 4th ed. in Undergraduate texts in mathematics. Springer, 2024. doi: [10.1007/978-3-031-41026-0](https://doi.org/10.1007/978-3-031-41026-0).

\[3\]

K. Lange, *Numerical analysis for statisticians*, 2nd ed. in Statistics and computing. Springer, 2010. doi: [10.1007/978-1-4419-5945-4](https://doi.org/10.1007/978-1-4419-5945-4).

\[4\]

N. Fieller, *Basics of matrix algebra for statistics with R*. Chapman; Hall/CRC, 2016. doi: [10.1201/9781315370200](https://doi.org/10.1201/9781315370200).

\[5\]

S. Banerjee and A. Roy, *Linear algebra and matrix analysis for statistics*, vol. 181. Crc Press Boca Raton, 2014. Available: <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>

\[6\]

S. R. Searle and A. I. Khuri, *Matrix algebra useful for statistics*. John Wiley & Sons, 2017.

\[7\]

K. B. Petersen and M. S. Pedersen, “The matrix cookbook,” Technical University of Denmark, Nov. 2012. Available: <https://www2.imm.dtu.dk/pubdb/edoc/imm3274.pdf>

\[8\]

Stanford University, “EE 278, probability and statistical inference: Fall 2024 lecture notes.” Handwritten lecture notes, 2024. Available: <https://web.stanford.edu/class/ee278/lectures.html>

Back to top
