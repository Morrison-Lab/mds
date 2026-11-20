# Eigenvalues and Matrix Decompositions

Code

Published

Last modified: 2026-11-20 12:51:52 (PST)

# 1 Matrix Decompositions

> **NOTE:**
>
> **Definition 1 (Eigenvalue)** Let $\mathbf{A}$ be a $p \times p$ matrix. A real number $\lambda$ is an **eigenvalue** of $\mathbf{A}$ if some real vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ of length $p$ satisfies
>
> $$\underbrace{\mathbf{A}}_{p \times p}\,\underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}_{p \times 1}
> = \lambda\,\underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}_{p \times 1}$$

> **NOTE:**
>
> **Definition 2 (Eigenvector)** In [Definition 1](#def-eigenvalue), any such $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is an **eigenvector** of $\mathbf{A}$ for $\lambda$.

> **NOTE:**
>
> **Example 1 (Eigenvectors of a** $2 \times 2$ matrix) Let $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$.
>
> $(1, 1)$ is an eigenvector for the eigenvalue $3$:
>
> $$\begin{aligned}
> \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}
> \begin{bmatrix} 1 \\ 1 \end{bmatrix}
> &= \begin{bmatrix} 2 + 1 \\ 1 + 2 \end{bmatrix}
> && \text{(definition of matrix-vector multiplication)}
> \\
> &= 3 \begin{bmatrix} 1 \\ 1 \end{bmatrix}
> && \text{(factor out } 3 \text{)}
> \end{aligned}$$
>
> $(1, -1)$ is an eigenvector for the eigenvalue $1$:
>
> $$\begin{aligned}
> \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}
> \begin{bmatrix} 1 \\ -1 \end{bmatrix}
> &= \begin{bmatrix} 2 - 1 \\ 1 - 2 \end{bmatrix}
> && \text{(definition of matrix-vector multiplication)}
> \\
> &= 1 \begin{bmatrix} 1 \\ -1 \end{bmatrix}
> && \text{(factor out } 1 \text{)}
> \end{aligned}$$

> **NOTE:**
>
> *Remark 1* (Multiples of an eigenvector). Multiplying by $\mathbf{A}$ rescales an eigenvector by $\lambda$ and does not change the line it lies on. Any nonzero multiple $c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ of an eigenvector is also an eigenvector for the same $\lambda$:
>
> $$\begin{aligned}
> \mathbf{A}(c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> &= c\,\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(move the scalar } c \text{ to the front)}
> \\
> &= c\,\lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \text{ is an eigenvector for } \lambda\text{)}
> \\
> &= \lambda\,(c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> && \text{(multiplication of numbers is commutative)}
> \end{aligned}$$
>
> For example, in [Example 1](#exm-eigenvalue), $2\,(1, 1) = (2, 2)$ is also an eigenvector for the eigenvalue $3$:
>
> $$\begin{aligned}
> \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}
> \begin{bmatrix} 2 \\ 2 \end{bmatrix}
> &= \begin{bmatrix} 2 \cdot 2 + 1 \cdot 2 \\ 1 \cdot 2 + 2 \cdot 2 \end{bmatrix}
> && \text{(definition of matrix-vector multiplication)}
> \\
> &= \begin{bmatrix} 4 + 2 \\ 2 + 4 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \begin{bmatrix} 6 \\ 6 \end{bmatrix}
> && \text{(add)}
> \\
> &= 3 \begin{bmatrix} 2 \\ 2 \end{bmatrix}
> && \text{(factor out } 3 \text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 2 (A vector that is not an eigenvector)** For the same $\mathbf{A}$, $(1, 0)$ is not an eigenvector:
>
> $$\begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}
> \begin{bmatrix} 1 \\ 0 \end{bmatrix}
> = \begin{bmatrix} 2 \\ 1 \end{bmatrix},$$
>
> and no number $\lambda$ gives $(2, 1) = \lambda\,(1, 0)$, because the second entries would need $1 = \lambda\cdot 0$.

> **NOTE:**
>
> *Remark 2* (Real and complex eigenvalues). These notes take $\lambda$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ to be real. Banerjee and Roy [\[1, Ch. 11\]](#ref-banerjee2014linear), Definition 11.1, pp. 312-313 also allows [complex](algebra-complex.llms.md#def-complex-number) eigenvalues and eigenvectors, because some real matrices, such as a rotation by $90$ degrees, have no real eigenvalues [\[1, Ch. 11\]](#ref-banerjee2014linear), Example 11.2, p. 312.
>
> For example, $\mathbf{R} = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}$ rotates each vector in the plane counterclockwise by $90$ degrees: $\mathbf{R}\,(v_1, v_2) = (-v_2, v_1)$. Suppose $\mathbf{R}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \lambda\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ for a real number $\lambda$. Matching entries gives $-v_2 = \lambda v_1$ and $v_1 = \lambda v_2$. Substituting the second equation into the first gives $-v_2 = \lambda^2 v_2$, so $(1 + \lambda^2)\, v_2 = 0$. Since $1 + \lambda^2 > 0$, $v_2 = 0$, and then
>
> $$\begin{aligned}
> v_1 &= \lambda v_2 \\
> &= 0.
> \end{aligned}$$
>
> So the only solution is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and $\mathbf{R}$ has no real eigenvalue.

> **TIP:**
>
> Chapter 14 of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown shows the geometric meaning of eigenvectors and eigenvalues:
>
> - [Eigenvectors and eigenvalues](https://www.youtube.com/watch?v=PFDu9oVAE-g) shows how certain vectors maintain their direction during a linear transformation and are merely stretched or squished by an eigenvalue factor ([Definition 1](#def-eigenvalue)).

> **NOTE:**
>
> **Theorem 1 (Spectral theorem for symmetric matrices)** If $\mathbf{A}$ is a $p \times p$ symmetric matrix ([Definition 3 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-symmetric-matrix)) with real entries, then there are a $p \times p$ orthogonal matrix $\mathbf{Q}$ ([Definition 10 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-orthogonal-matrix)) and a $p \times p$ diagonal matrix $\mathbf{\Lambda}$ ([Definition 4 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-diagonal-matrix)) with real diagonal entries $\lambda_1, \ldots, \lambda_p$ such that
>
> $$\underbrace{\mathbf{A}}_{p \times p}
> = \underbrace{\mathbf{Q}}_{p \times p}\,
> \underbrace{\mathbf{\Lambda}}_{p \times p}\,
> \underbrace{{\mathbf{Q}}^{\top}}_{p \times p}$$
>
> Each $\lambda_i$ is an eigenvalue of $\mathbf{A}$ ([Definition 1](#def-eigenvalue)), and column $i$ of $\mathbf{Q}$ is an eigenvector of $\mathbf{A}$ for $\lambda_i$.

> **NOTE:**
>
> *Remark 3* (An equivalent form of the spectral theorem). The proof, by [induction](https://morrison-lab.github.io/mcs/proof-writing.html#def-proof-by-induction) on $p$, is outside the scope of these notes; see Banerjee and Roy [\[1, Ch. 11\]](#ref-banerjee2014linear), Theorem 11.27, p. 349, which states the result in the equivalent form ${\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q} = \mathbf{\Lambda}$. The two forms are equivalent because
>
> $$\begin{aligned}
> {\mathbf{Q}}^{\top}\mathbf{Q} &= \mathbf{Q}{\mathbf{Q}}^{\top} \\
> &= \mathbf{I}_p
> \end{aligned}$$
>
> ([Remark 6 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#rem-orthogonal-matrix-columns)). Multiplying $\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}$ by ${\mathbf{Q}}^{\top}$ on the left and by $\mathbf{Q}$ on the right gives
>
> $$\begin{aligned}
> {\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q}
> &= {\mathbf{Q}}^{\top}\mathopen{}\left(\mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\right)\mathclose{}\mathbf{Q}
> && \text{(substitute)}
> \\
> &= \mathopen{}\left({\mathbf{Q}}^{\top}\mathbf{Q}\right)\mathclose{}\mathbf{\Lambda}\mathopen{}\left({\mathbf{Q}}^{\top}\mathbf{Q}\right)\mathclose{}
> && \text{(regroup; matrix multiplication is associative)}
> \\
> &= \mathbf{I}_p\mathbf{\Lambda}\mathbf{I}_p
> && \text{(} \mathbf{Q} \text{ is orthogonal)}
> \\
> &= \mathbf{\Lambda}
> && \text{(multiplying by } \mathbf{I}_p \text{ changes nothing)}
> \end{aligned}$$
>
> Multiplying ${\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q} = \mathbf{\Lambda}$ by $\mathbf{Q}$ on the left and by ${\mathbf{Q}}^{\top}$ on the right gives back the first form:
>
> $$\begin{aligned}
> \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}
> &= \mathbf{Q}\mathopen{}\left({\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q}\right)\mathclose{}{\mathbf{Q}}^{\top}
> && \text{(substitute)}
> \\
> &= \mathopen{}\left(\mathbf{Q}{\mathbf{Q}}^{\top}\right)\mathclose{}\mathbf{A}\mathopen{}\left(\mathbf{Q}{\mathbf{Q}}^{\top}\right)\mathclose{}
> && \text{(regroup; matrix multiplication is associative)}
> \\
> &= \mathbf{I}_p\mathbf{A}\mathbf{I}_p
> && \text{(} \mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}_p \text{)}
> \\
> &= \mathbf{A}
> && \text{(multiplying by } \mathbf{I}_p \text{ changes nothing)}
> \end{aligned}$$
>
> For example, let $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ and $\mathbf{Q} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}$, which is symmetric, so ${\mathbf{Q}}^{\top} = \mathbf{Q}$. Then
>
> $$\begin{aligned}
> {\mathbf{Q}}^{\top}\mathbf{A}\mathbf{Q}
> &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}
> \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(substitute)}
> \\
> &= \frac{1}{\sqrt{2}} \cdot\frac{1}{\sqrt{2}}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(move the scalars to the front)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(multiply the scalars)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 1 \cdot 2 + 1 \cdot 1 & 1 \cdot 1 + 1 \cdot 2 \\ 1 \cdot 2 + (-1) \cdot 1 & 1 \cdot 1 + (-1) \cdot 2 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(definition of matrix multiplication, first two matrices)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 2 + 1 & 1 + 2 \\ 2 - 1 & 1 - 2 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 3 & 3 \\ 1 & -1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(add)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 3 \cdot 1 + 3 \cdot 1 & 3 \cdot 1 + 3 \cdot(-1) \\ 1 \cdot 1 + (-1) \cdot 1 & 1 \cdot 1 + (-1) \cdot(-1) \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 3 + 3 & 3 - 3 \\ 1 - 1 & 1 + 1 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 6 & 0 \\ 0 & 2 \end{bmatrix}
> && \text{(add)}
> \\
> &= \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix}
> && \text{(multiply by } \tfrac{1}{2} \text{)}
> \end{aligned}$$
>
> a diagonal matrix with the eigenvalues $3$ and $1$ of $\mathbf{A}$ from [Example 1](#exm-eigenvalue) on its diagonal.

> **NOTE:**
>
> **Theorem 2 (Eigenvectors of a symmetric matrix for distinct eigenvalues are orthogonal)** Let $\mathbf{A}$ be a symmetric $p \times p$ matrix ([Definition 3 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-symmetric-matrix)), and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ be [eigenvectors](linear-algebra-decompositions.llms.md#def-eigenvector) of $\mathbf{A}$ ([Definition 2](#def-eigenvector)) for [eigenvalues](linear-algebra-decompositions.llms.md#def-eigenvalue) $\lambda_1 \ne \lambda_2$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \perp \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ ([Definition 22 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)).

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> \lambda_1\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> &= (\lambda_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \\
> &= (\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \text{ is an eigenvector for } \lambda_1 \text{)}
> \\
> &= {(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}})}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\,{\mathbf{A}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\,\mathbf{A}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> && \text{(} \mathbf{A} \text{ is symmetric)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\,(\lambda_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> && \text{(} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \text{ is an eigenvector for } \lambda_2 \text{)}
> \\
> &= \lambda_2\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}).
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \end{aligned}$$
>
> So $(\lambda_1 - \lambda_2)\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}) = 0$, and $\lambda_1 - \lambda_2 \ne 0$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = 0$.

> **NOTE:**
>
> **Example 3 (Eigenvectors of a symmetric** $2 \times 2$ matrix) $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$ is [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix). Its [eigenvectors](linear-algebra-decompositions.llms.md#def-eigenvector) $(1, 1)$ for $\lambda_1 = 3$ and $(1, -1)$ for $\lambda_2 = 1$ ([Example 1](#exm-eigenvalue)) satisfy
>
> $$\begin{aligned}
> (1, 1) \cdot (1, -1) &= 1 \cdot 1 + 1 \cdot(-1) \\
> &= 0.
> \end{aligned}$$

> **NOTE:**
>
> **Definition 3 (Eigendecomposition, spectral decomposition)** Let $\mathbf{A}$ be a $p \times p$ symmetric matrix with real entries. An **eigendecomposition** [\[2\]](#ref-wikipedia_eigendecomposition_of_a_matrix), or **spectral decomposition**, of $\mathbf{A}$ is a factorization
>
> $$\mathbf{A} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}$$
>
> with $\mathbf{Q}$ a $p \times p$ orthogonal matrix ([Definition 10 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-orthogonal-matrix)) and $\mathbf{\Lambda}$ a $p \times p$ diagonal matrix ([Definition 4 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-diagonal-matrix)).

> **NOTE:**
>
> **Example 4 (An eigendecomposition of a** $2 \times 2$ symmetric matrix) For $\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$, [Example 1](#exm-eigenvalue) found the eigenvectors $(1, 1)$ for $3$ and $(1, -1)$ for $1$. They are orthogonal ([Definition 22 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)):
>
> $$\begin{aligned}
> (1, 1) \cdot (1, -1)
> &= 1 \cdot 1 + 1 \cdot(-1)
> && \text{(definition of the dot product)}
> \\
> &= 1 - 1
> && \text{(multiply)}
> \\
> &= 0
> && \text{(add)}
> \end{aligned}$$
>
> Each has norm $\sqrt{1^2 + 1^2} = \sqrt{2}$ ([Definition 23 in Vectors](linear-algebra-vectors.llms.md#def-euclidean-norm)), so dividing each by $\sqrt{2}$ gives two orthonormal eigenvectors ([Definition 28 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)). Put them in the columns of $\mathbf{Q}$, and the matching eigenvalues on the diagonal of $\mathbf{\Lambda}$:
>
> $$\mathbf{Q} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> \qquad
> \mathbf{\Lambda} = \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix}$$
>
> This $\mathbf{Q}$ is symmetric, so ${\mathbf{Q}}^{\top} = \mathbf{Q}$. Then
>
> $$\begin{aligned}
> \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}
> &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix}
> \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(substitute)}
> \\
> &= \frac{1}{\sqrt{2}} \cdot\frac{1}{\sqrt{2}}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(move the scalars to the front)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(multiply the scalars)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 1 \cdot 3 + 1 \cdot 0 & 1 \cdot 0 + 1 \cdot 1 \\ 1 \cdot 3 + (-1) \cdot 0 & 1 \cdot 0 + (-1) \cdot 1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(definition of matrix multiplication, first two matrices)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 3 + 0 & 0 + 1 \\ 3 + 0 & 0 - 1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 3 & 1 \\ 3 & -1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(add)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 3 \cdot 1 + 1 \cdot 1 & 3 \cdot 1 + 1 \cdot(-1) \\ 3 \cdot 1 + (-1) \cdot 1 & 3 \cdot 1 + (-1) \cdot(-1) \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 3 + 1 & 3 - 1 \\ 3 - 1 & 3 + 1 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 4 & 2 \\ 2 & 4 \end{bmatrix}
> && \text{(add)}
> \\
> &= \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}
> && \text{(multiply by } \tfrac{1}{2} \text{)}
> \end{aligned}$$
>
> which is $\mathbf{A}$.

> **NOTE:**
>
> *Remark 4* (An eigendecomposition is not unique). A symmetric matrix can have more than one eigendecomposition. Reordering the eigenvalues on the diagonal of $\mathbf{\Lambda}$, and the columns of $\mathbf{Q}$ with them, gives another one, and so does multiplying a column of $\mathbf{Q}$ by $-1$.
>
> For example, take $\mathbf{A}$ from [Example 4](#exm-spectral). Swapping the two eigenvalues and the two columns gives
>
> $$\mathbf{Q}_1 = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}
> \qquad
> \mathbf{\Lambda}_1 = \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix}$$
>
> and multiplying the second column of $\mathbf{Q}$ by $-1$ gives
>
> $$\begin{aligned}
> \mathbf{Q}_2
> &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} \\
> \mathbf{\Lambda}_2
> &= \mathbf{\Lambda} \\
> &= \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix}
> \end{aligned}$$
>
> The columns of $\mathbf{Q}_1$ and $\mathbf{Q}_2$ are the columns of $\mathbf{Q}$, reordered or multiplied by $-1$, so they are still orthonormal, and $\mathbf{Q}_1$ and $\mathbf{Q}_2$ are orthogonal. Both products give back $\mathbf{A}$:
>
> $$\begin{aligned}
> \mathbf{Q}_1\mathbf{\Lambda}_1{\mathbf{Q}_1}^{\top}
> &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}
> \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix}
> {\mathopen{}\left(\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}\right)\mathclose{}}^{\top}
> && \text{(substitute)}
> \\
> &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}
> \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix}
> \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}
> && \text{(definition of the transpose)}
> \\
> &= \frac{1}{\sqrt{2}} \cdot\frac{1}{\sqrt{2}}
> \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}
> \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix}
> \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}
> && \text{(move the scalars to the front)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}
> \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix}
> \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}
> && \text{(multiply the scalars)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 0 + 1 \cdot 3 \\ -1 \cdot 1 + 1 \cdot 0 & -1 \cdot 0 + 1 \cdot 3 \end{bmatrix}
> \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}
> && \text{(definition of matrix multiplication, first two matrices)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 1 + 0 & 0 + 3 \\ -1 + 0 & 0 + 3 \end{bmatrix}
> \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 1 & 3 \\ -1 & 3 \end{bmatrix}
> \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}
> && \text{(add)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 1 \cdot 1 + 3 \cdot 1 & 1 \cdot(-1) + 3 \cdot 1 \\ -1 \cdot 1 + 3 \cdot 1 & -1 \cdot(-1) + 3 \cdot 1 \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 1 + 3 & -1 + 3 \\ -1 + 3 & 1 + 3 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 4 & 2 \\ 2 & 4 \end{bmatrix}
> && \text{(add)}
> \\
> &= \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}
> && \text{(multiply by } \tfrac{1}{2} \text{)}
> \end{aligned}$$
>
> $$\begin{aligned}
> \mathbf{Q}_2\mathbf{\Lambda}_2{\mathbf{Q}_2}^{\top}
> &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}
> \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix}
> {\mathopen{}\left(\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}\right)\mathclose{}}^{\top}
> && \text{(substitute)}
> \\
> &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}
> \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix}
> \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}
> && \text{(definition of the transpose)}
> \\
> &= \frac{1}{\sqrt{2}} \cdot\frac{1}{\sqrt{2}}
> \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}
> \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}
> && \text{(move the scalars to the front)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix}
> \begin{bmatrix} 3 & 0 \\ 0 & 1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}
> && \text{(multiply the scalars)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 1 \cdot 3 + (-1) \cdot 0 & 1 \cdot 0 + (-1) \cdot 1 \\ 1 \cdot 3 + 1 \cdot 0 & 1 \cdot 0 + 1 \cdot 1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}
> && \text{(definition of matrix multiplication, first two matrices)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 3 + 0 & 0 - 1 \\ 3 + 0 & 0 + 1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 3 & -1 \\ 3 & 1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ -1 & 1 \end{bmatrix}
> && \text{(add)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 3 \cdot 1 + (-1) \cdot(-1) & 3 \cdot 1 + (-1) \cdot 1 \\ 3 \cdot 1 + 1 \cdot(-1) & 3 \cdot 1 + 1 \cdot 1 \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 3 + 1 & 3 - 1 \\ 3 - 1 & 3 + 1 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \frac{1}{2}
> \begin{bmatrix} 4 & 2 \\ 2 & 4 \end{bmatrix}
> && \text{(add)}
> \\
> &= \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}
> && \text{(multiply by } \tfrac{1}{2} \text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 3 (Singular value decomposition)** Let $\mathbf{A}$ be an $n \times p$ matrix with real entries and $\operatorname{rank}(\mathbf{A}) = r$ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)). Then there are an $n \times n$ orthogonal matrix $\mathbf{U}$, a $p \times p$ orthogonal matrix $\mathbf{V}$ ([Definition 10 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-orthogonal-matrix)), and numbers $\sigma_1 \ge \sigma_2 \ge \cdots \ge \sigma_r > 0$ such that
>
> $$\underbrace{\mathbf{A}}_{n \times p}
> = \underbrace{\mathbf{U}}_{n \times n}\,
> \underbrace{\mathbf{D}}_{n \times p}\,
> \underbrace{{\mathbf{V}}^{\top}}_{p \times p}$$
>
> where $\mathbf{D}$ has entries $d_{ii} = \sigma_i$ for $i = 1, \ldots, r$ and every other entry $0$.

> **NOTE:**
>
> *Remark 5* (The SVD applies to every real matrix). The proof is outside the scope of these notes; see Banerjee and Roy [\[1, Ch. 12\]](#ref-banerjee2014linear), Theorem 12.1, p. 373. Unlike the spectral theorem ([Theorem 1](#thm-spectral)), [Theorem 3](#thm-svd) applies to every real matrix, including one that is not square or not symmetric.
>
> For example, the $1 \times 2$ matrix $\mathbf{A} = \begin{bmatrix} 1 & 1 \end{bmatrix}$ is not square, so [Theorem 1](#thm-spectral) does not apply to it. It has rank $1$, and [Theorem 3](#thm-svd) holds with $\mathbf{U} = \begin{bmatrix} 1 \end{bmatrix}$, $\mathbf{D} = \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix}$, and $\mathbf{V}$ the orthogonal matrix $\mathbf{Q}$ from [Example 4](#exm-spectral), which is symmetric, so ${\mathbf{V}}^{\top} = \mathbf{V}$:
>
> $$\begin{aligned}
> \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}
> &= \begin{bmatrix} 1 \end{bmatrix}
> \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix}
> \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(substitute)}
> \\
> &= \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix}
> \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(multiplying by the } 1 \times 1 \text{ identity changes nothing)}
> \\
> &= \frac{1}{\sqrt{2}}
> \begin{bmatrix} \sqrt{2} & 0 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(move the scalar to the front)}
> \\
> &= \frac{1}{\sqrt{2}}
> \begin{bmatrix} \sqrt{2} \cdot 1 + 0 \cdot 1 & \sqrt{2} \cdot 1 + 0 \cdot(-1) \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \frac{1}{\sqrt{2}}
> \begin{bmatrix} \sqrt{2} + 0 & \sqrt{2} + 0 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \frac{1}{\sqrt{2}}
> \begin{bmatrix} \sqrt{2} & \sqrt{2} \end{bmatrix}
> && \text{(add)}
> \\
> &= \begin{bmatrix} 1 & 1 \end{bmatrix}
> && \text{(divide by } \sqrt{2} \text{)}
> \end{aligned}$$
>
> $\mathbf{U}$ is orthogonal because
>
> $$\begin{aligned}
> {\mathbf{U}}^{\top}\mathbf{U} &= \begin{bmatrix} 1 \end{bmatrix} \\
> &= \mathbf{I}_1,
> \end{aligned}$$
>
> and the single singular value is $\sigma_1 = \sqrt{2}$.

> **NOTE:**
>
> **Definition 4 (Singular value decomposition)** Let $\mathbf{A}$ be an $n \times p$ matrix with real entries and $\operatorname{rank}(\mathbf{A}) = r$. A **singular value decomposition** [\[3\]](#ref-wikipedia_singular_value_decomposition) (SVD) of $\mathbf{A}$ is a factorization $\mathbf{A} = \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}$ with $\mathbf{U}$, $\mathbf{D}$ and $\mathbf{V}$ as in [Theorem 3](#thm-svd).

> **NOTE:**
>
> **Definition 5 (Singular values)** The numbers $\sigma_1 \ge \cdots \ge \sigma_r > 0$ on the diagonal of $\mathbf{D}$ in a singular value decomposition of $\mathbf{A}$ ([Definition 4](#def-svd)) are the **singular values** of $\mathbf{A}$.

> **NOTE:**
>
> **Example 5 (An SVD of a** $3 \times 2$ matrix) Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix}
> \qquad
> \mathbf{U} = \begin{bmatrix}
> \frac{1}{\sqrt{2}} & 0 & \frac{1}{\sqrt{2}} \\
> 0 & 1 & 0 \\
> \frac{1}{\sqrt{2}} & 0 & -\frac{1}{\sqrt{2}}
> \end{bmatrix}
> \qquad
> \mathbf{D} = \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix}
> \qquad
> \mathbf{V} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}$$
>
> $\mathbf{V}$ is the orthogonal matrix $\mathbf{Q}$ from [Example 4](#exm-spectral). $\mathbf{U}$ is orthogonal too. Entry $(i, j)$ of ${\mathbf{U}}^{\top}\mathbf{U}$ is the dot product of columns $i$ and $j$ of $\mathbf{U}$, and those columns are $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 = (\frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}})$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2 = (0, 1, 0)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_3 = (\frac{1}{\sqrt{2}}, 0, -\frac{1}{\sqrt{2}})$:
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1
> &= \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}} + 0 \cdot 0 + \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}
> && \text{(definition of the dot product)}
> \\
> &= \tfrac{1}{2} + 0 + \tfrac{1}{2}
> && \text{(multiply)}
> \\
> &= 1
> && \text{(add)}
> \end{aligned}$$
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2
> &= 0 \cdot 0 + 1 \cdot 1 + 0 \cdot 0
> && \text{(definition of the dot product)}
> \\
> &= 0 + 1 + 0
> && \text{(multiply)}
> \\
> &= 1
> && \text{(add)}
> \end{aligned}$$
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_3 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_3
> &= \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}} + 0 \cdot 0 + \mathopen{}\left(-\tfrac{1}{\sqrt{2}}\right)\mathclose{} \cdot\mathopen{}\left(-\tfrac{1}{\sqrt{2}}\right)\mathclose{}
> && \text{(definition of the dot product)}
> \\
> &= \tfrac{1}{2} + 0 + \tfrac{1}{2}
> && \text{(multiply)}
> \\
> &= 1
> && \text{(add)}
> \end{aligned}$$
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2
> &= \tfrac{1}{\sqrt{2}} \cdot 0 + 0 \cdot 1 + \tfrac{1}{\sqrt{2}} \cdot 0
> && \text{(definition of the dot product)}
> \\
> &= 0 + 0 + 0
> && \text{(multiply)}
> \\
> &= 0
> && \text{(add)}
> \end{aligned}$$
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_3
> &= \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}} + 0 \cdot 0 + \tfrac{1}{\sqrt{2}} \cdot\mathopen{}\left(-\tfrac{1}{\sqrt{2}}\right)\mathclose{}
> && \text{(definition of the dot product)}
> \\
> &= \tfrac{1}{2} + 0 - \tfrac{1}{2}
> && \text{(multiply)}
> \\
> &= 0
> && \text{(add)}
> \end{aligned}$$
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_3
> &= 0 \cdot\tfrac{1}{\sqrt{2}} + 1 \cdot 0 + 0 \cdot\mathopen{}\left(-\tfrac{1}{\sqrt{2}}\right)\mathclose{}
> && \text{(definition of the dot product)}
> \\
> &= 0 + 0 + 0
> && \text{(multiply)}
> \\
> &= 0
> && \text{(add)}
> \end{aligned}$$
>
> The dot product is symmetric, so these six values fill in all nine entries, and ${\mathbf{U}}^{\top}\mathbf{U} = \mathbf{I}_3$.
>
> $\mathbf{V}$ is symmetric, so ${\mathbf{V}}^{\top} = \mathbf{V}$. Then
>
> $$\begin{aligned}
> \mathbf{D}{\mathbf{V}}^{\top}
> &= \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix}
> \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(substitute)}
> \\
> &= \frac{1}{\sqrt{2}}
> \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
> && \text{(move the scalar to the front)}
> \\
> &= \frac{1}{\sqrt{2}}
> \begin{bmatrix}
> 2 \cdot 1 + 0 \cdot 1 & 2 \cdot 1 + 0 \cdot(-1) \\
> 0 \cdot 1 + \sqrt{2} \cdot 1 & 0 \cdot 1 + \sqrt{2} \cdot(-1) \\
> 0 \cdot 1 + 0 \cdot 1 & 0 \cdot 1 + 0 \cdot(-1)
> \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \frac{1}{\sqrt{2}}
> \begin{bmatrix} 2 + 0 & 2 + 0 \\ 0 + \sqrt{2} & 0 - \sqrt{2} \\ 0 + 0 & 0 + 0 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \frac{1}{\sqrt{2}}
> \begin{bmatrix} 2 & 2 \\ \sqrt{2} & -\sqrt{2} \\ 0 & 0 \end{bmatrix}
> && \text{(add)}
> \\
> &= \begin{bmatrix} \sqrt{2} & \sqrt{2} \\ 1 & -1 \\ 0 & 0 \end{bmatrix}
> && \text{(divide by } \sqrt{2} \text{)}
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}
> &= \begin{bmatrix}
> \frac{1}{\sqrt{2}} & 0 & \frac{1}{\sqrt{2}} \\
> 0 & 1 & 0 \\
> \frac{1}{\sqrt{2}} & 0 & -\frac{1}{\sqrt{2}}
> \end{bmatrix}
> \begin{bmatrix} \sqrt{2} & \sqrt{2} \\ 1 & -1 \\ 0 & 0 \end{bmatrix}
> && \text{(substitute)}
> \\
> &= \begin{bmatrix}
> \frac{1}{\sqrt{2}} \cdot\sqrt{2} + 0 \cdot 1 + \frac{1}{\sqrt{2}} \cdot 0 & \frac{1}{\sqrt{2}} \cdot\sqrt{2} + 0 \cdot(-1) + \frac{1}{\sqrt{2}} \cdot 0 \\
> 0 \cdot\sqrt{2} + 1 \cdot 1 + 0 \cdot 0 & 0 \cdot\sqrt{2} + 1 \cdot(-1) + 0 \cdot 0 \\
> \frac{1}{\sqrt{2}} \cdot\sqrt{2} + 0 \cdot 1 - \frac{1}{\sqrt{2}} \cdot 0 & \frac{1}{\sqrt{2}} \cdot\sqrt{2} + 0 \cdot(-1) - \frac{1}{\sqrt{2}} \cdot 0
> \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \begin{bmatrix}
> 1 + 0 + 0 & 1 + 0 + 0 \\
> 0 + 1 + 0 & 0 - 1 + 0 \\
> 1 + 0 - 0 & 1 + 0 - 0
> \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix}
> && \text{(add)}
> \end{aligned}$$
>
> which is $\mathbf{A}$. $\mathbf{A}$ has rank $2$, because its two columns are linearly independent, and its singular values are $\sigma_1 = 2$ and $\sigma_2 = \sqrt{2}$.

> **NOTE:**
>
> *Remark 6* (An SVD is not unique). An SVD is not unique [\[1, Ch. 12\]](#ref-banerjee2014linear), Examples 12.2 and 12.3, p. 378. For any $i \le r$, multiplying column $i$ of both $\mathbf{U}$ and $\mathbf{V}$ by $-1$ gives another one. The singular values do not depend on which SVD is chosen [\[1, Ch. 12\]](#ref-banerjee2014linear), pp. 371 and 378.
>
> For example, in [Example 5](#exm-svd), multiplying the first columns of $\mathbf{U}$ and $\mathbf{V}$ by $-1$ gives
>
> $$\mathbf{U}_1 = \begin{bmatrix}
> -\frac{1}{\sqrt{2}} & 0 & \frac{1}{\sqrt{2}} \\
> 0 & 1 & 0 \\
> -\frac{1}{\sqrt{2}} & 0 & -\frac{1}{\sqrt{2}}
> \end{bmatrix}
> \qquad
> \mathbf{V}_1 = \frac{1}{\sqrt{2}} \begin{bmatrix} -1 & 1 \\ -1 & -1 \end{bmatrix}$$
>
> Their columns are the columns of $\mathbf{U}$ and $\mathbf{V}$, some multiplied by $-1$, so they are still orthonormal. With the same $\mathbf{D}$:
>
> $$\begin{aligned}
> \mathbf{D}{\mathbf{V}_1}^{\top}
> &= \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix}
> {\mathopen{}\left(\frac{1}{\sqrt{2}} \begin{bmatrix} -1 & 1 \\ -1 & -1 \end{bmatrix}\right)\mathclose{}}^{\top}
> && \text{(substitute)}
> \\
> &= \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix}
> \frac{1}{\sqrt{2}} \begin{bmatrix} -1 & -1 \\ 1 & -1 \end{bmatrix}
> && \text{(definition of the transpose)}
> \\
> &= \frac{1}{\sqrt{2}}
> \begin{bmatrix} 2 & 0 \\ 0 & \sqrt{2} \\ 0 & 0 \end{bmatrix}
> \begin{bmatrix} -1 & -1 \\ 1 & -1 \end{bmatrix}
> && \text{(move the scalar to the front)}
> \\
> &= \frac{1}{\sqrt{2}}
> \begin{bmatrix}
> 2 \cdot(-1) + 0 \cdot 1 & 2 \cdot(-1) + 0 \cdot(-1) \\
> 0 \cdot(-1) + \sqrt{2} \cdot 1 & 0 \cdot(-1) + \sqrt{2} \cdot(-1) \\
> 0 \cdot(-1) + 0 \cdot 1 & 0 \cdot(-1) + 0 \cdot(-1)
> \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \frac{1}{\sqrt{2}}
> \begin{bmatrix} -2 + 0 & -2 + 0 \\ 0 + \sqrt{2} & 0 - \sqrt{2} \\ 0 + 0 & 0 + 0 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \frac{1}{\sqrt{2}}
> \begin{bmatrix} -2 & -2 \\ \sqrt{2} & -\sqrt{2} \\ 0 & 0 \end{bmatrix}
> && \text{(add)}
> \\
> &= \begin{bmatrix} -\sqrt{2} & -\sqrt{2} \\ 1 & -1 \\ 0 & 0 \end{bmatrix}
> && \text{(divide by } \sqrt{2} \text{)}
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> \mathbf{U}_1\mathbf{D}{\mathbf{V}_1}^{\top}
> &= \begin{bmatrix}
> -\frac{1}{\sqrt{2}} & 0 & \frac{1}{\sqrt{2}} \\
> 0 & 1 & 0 \\
> -\frac{1}{\sqrt{2}} & 0 & -\frac{1}{\sqrt{2}}
> \end{bmatrix}
> \begin{bmatrix} -\sqrt{2} & -\sqrt{2} \\ 1 & -1 \\ 0 & 0 \end{bmatrix}
> && \text{(substitute)}
> \\
> &= \begin{bmatrix}
> -\frac{1}{\sqrt{2}} \cdot\mathopen{}\left(-\sqrt{2}\right)\mathclose{} + 0 \cdot 1 + \frac{1}{\sqrt{2}} \cdot 0 & -\frac{1}{\sqrt{2}} \cdot\mathopen{}\left(-\sqrt{2}\right)\mathclose{} + 0 \cdot(-1) + \frac{1}{\sqrt{2}} \cdot 0 \\
> 0 \cdot\mathopen{}\left(-\sqrt{2}\right)\mathclose{} + 1 \cdot 1 + 0 \cdot 0 & 0 \cdot\mathopen{}\left(-\sqrt{2}\right)\mathclose{} + 1 \cdot(-1) + 0 \cdot 0 \\
> -\frac{1}{\sqrt{2}} \cdot\mathopen{}\left(-\sqrt{2}\right)\mathclose{} + 0 \cdot 1 - \frac{1}{\sqrt{2}} \cdot 0 & -\frac{1}{\sqrt{2}} \cdot\mathopen{}\left(-\sqrt{2}\right)\mathclose{} + 0 \cdot(-1) - \frac{1}{\sqrt{2}} \cdot 0
> \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \begin{bmatrix}
> 1 + 0 + 0 & 1 + 0 + 0 \\
> 0 + 1 + 0 & 0 - 1 + 0 \\
> 1 + 0 - 0 & 1 + 0 - 0
> \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix}
> && \text{(add)}
> \end{aligned}$$
>
> which is $\mathbf{A}$ again. Both SVDs have the singular values $\sigma_1 = 2$ and $\sigma_2 = \sqrt{2}$.

> **NOTE:**
>
> *Remark 7* (Counting zero singular values). Some texts, and R’s `svd()`, also count $\min(n, p) - r$ singular values equal to $0$, so that every $n \times p$ matrix has $\min(n, p)$ singular values.
>
> For example, $\mathbf{B} = \begin{bmatrix} 3 & 0 \\ 0 & 0 \end{bmatrix}$ has rank $r = 1$. Taking
>
> $$\begin{aligned}
> \mathbf{U} &= \mathbf{V} \\
> &= \mathbf{I}_2
> \end{aligned}$$
>
> and $\mathbf{D} = \mathbf{B}$ gives an SVD $\mathbf{B} = \mathbf{I}_2 \mathbf{B} {\mathbf{I}_2}^{\top}$, so by [Definition 5](#def-singular-values), $\mathbf{B}$ has one singular value, $\sigma_1 = 3$. R’s `svd()` reports $\min(2, 2) = 2$ singular values for $\mathbf{B}$: $3$ and $0$.

> **NOTE:**
>
> **Theorem 4 (An SVD gives an eigendecomposition of** ${\mathbf{A}}^{\top}\mathbf{A}$) Let $\mathbf{A} = \mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}$ be a singular value decomposition ([Definition 4](#def-svd)) of an $n \times p$ matrix $\mathbf{A}$ with singular values $\sigma_1, \ldots, \sigma_r$. Then ${\mathbf{A}}^{\top}\mathbf{A}$ is symmetric ([Definition 3 in Special Matrices, Quadratic Forms and Trace](linear-algebra-special-matrices.llms.md#def-symmetric-matrix)), and
>
> $$\underbrace{{\mathbf{A}}^{\top}\mathbf{A}}_{p \times p}
> = \underbrace{\mathbf{V}}_{p \times p}\,
> \underbrace{\mathbf{\Lambda}}_{p \times p}\,
> \underbrace{{\mathbf{V}}^{\top}}_{p \times p}$$
>
> where $\mathbf{\Lambda} \stackrel{\text{def}}{=}{\mathbf{D}}^{\top}\mathbf{D}$ is the $p \times p$ diagonal matrix whose $i$-th diagonal entry $\lambda_i$ is $\sigma_i^2$ for $i \le r$ and $0$ for $i > r$. So $\mathbf{V}\mathbf{\Lambda}{\mathbf{V}}^{\top}$ is an eigendecomposition ([Definition 3](#def-eigendecomposition)) of ${\mathbf{A}}^{\top}\mathbf{A}$: column $i$ of $\mathbf{V}$ is an eigenvector of ${\mathbf{A}}^{\top}\mathbf{A}$ for the eigenvalue $\lambda_i$.

> **NOTE:**
>
> *Proof*. **Symmetry.**
>
> $$\begin{aligned}
> {\mathopen{}\left({\mathbf{A}}^{\top}\mathbf{A}\right)\mathclose{}}^{\top}
> &= {\mathbf{A}}^{\top}\,{\mathopen{}\left({\mathbf{A}}^{\top}\right)\mathclose{}}^{\top}
> && \text{(transpose of a product)}
> \\
> &= {\mathbf{A}}^{\top}\mathbf{A}
> && \text{(transposing twice changes nothing)}
> \end{aligned}$$
>
> The first step is [Theorem 6 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product), and the second follows from [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose), which swaps rows and columns, so swapping them again restores $\mathbf{A}$.
>
> **The factorization.**
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top}\mathbf{A}
> &= {\mathopen{}\left(\mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}\right)\mathclose{}}^{\top}\,\mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}
> && \text{(substitute the SVD)}
> \\
> &= {\mathopen{}\left(\mathbf{D}{\mathbf{V}}^{\top}\right)\mathclose{}}^{\top}\,{\mathbf{U}}^{\top}\,\mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}
> && \text{(transpose of the product of } \mathbf{U} \text{ and } \mathbf{D}{\mathbf{V}}^{\top} \text{)}
> \\
> &= {\mathopen{}\left({\mathbf{V}}^{\top}\right)\mathclose{}}^{\top}\,{\mathbf{D}}^{\top}\,{\mathbf{U}}^{\top}\,\mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}
> && \text{(transpose of the product of } \mathbf{D} \text{ and } {\mathbf{V}}^{\top} \text{)}
> \\
> &= \mathbf{V}\,{\mathbf{D}}^{\top}\,{\mathbf{U}}^{\top}\,\mathbf{U}\mathbf{D}{\mathbf{V}}^{\top}
> && \text{(transposing twice changes nothing)}
> \\
> &= \mathbf{V}\,{\mathbf{D}}^{\top}\,\mathopen{}\left({\mathbf{U}}^{\top}\mathbf{U}\right)\mathclose{}\,\mathbf{D}{\mathbf{V}}^{\top}
> && \text{(regroup; matrix multiplication is associative)}
> \\
> &= \mathbf{V}\,{\mathbf{D}}^{\top}\,\mathbf{I}_n\,\mathbf{D}{\mathbf{V}}^{\top}
> && \text{(} \mathbf{U} \text{ is orthogonal)}
> \\
> &= \mathbf{V}\,\mathopen{}\left({\mathbf{D}}^{\top}\mathbf{D}\right)\mathclose{}\,{\mathbf{V}}^{\top}
> && \text{(identity matrix)}
> \\
> &= \mathbf{V}\mathbf{\Lambda}{\mathbf{V}}^{\top}
> && \text{(definition of } \mathbf{\Lambda} \text{)}
> \end{aligned}$$
>
> **The entries of** $\mathbf{\Lambda}$. Write $\lambda_{ij}$ for entry $(i, j)$ of $\mathbf{\Lambda}$, so $\lambda_i = \lambda_{ii}$. Only the entries $d_{kk}$ with $k \le r$ of $\mathbf{D}$ can be nonzero.
>
> $$\begin{aligned}
> \lambda_{ij}
> &= \sum_{k=1}^{n} ({\mathbf{D}}^{\top})_{ik}\, d_{kj}
> && \text{(definition of matrix multiplication)}
> \\
> &= \sum_{k=1}^{n} d_{ki}\, d_{kj}
> && \text{(definition of the transpose)}
> \end{aligned}$$
>
> The term for $k$ is nonzero only if $k = i \le r$ and $k = j$. So $\lambda_{ij} = 0$ when $i \neq j$. On the diagonal, only the term $k = i$ can be nonzero, and for $i \le r$
>
> $$\begin{aligned}
> \lambda_i
> &= \lambda_{ii}
> && \text{(notation)}
> \\
> &= d_{ii}\, d_{ii}
> && \text{(the only term that can be nonzero)}
> \\
> &= \sigma_i \cdot\sigma_i
> && \text{(definition of } \mathbf{D} \text{)}
> \\
> &= \sigma_i^2
> && \text{(notation for a square)}
> \end{aligned}$$
>
> For $i > r$, every term is $0$, so $\lambda_i = 0$.
>
> **The eigenvectors.** Write $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i$ for column $i$ of $\mathbf{V}$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i$ for the indicator vector ([Definition 21 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)) of length $p$. Column $i$ of ${\mathbf{V}}^{\top}\mathbf{V} = \mathbf{I}_p$ says ${\mathbf{V}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i$. Then
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top}\mathbf{A}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i
> &= \mathbf{V}\mathbf{\Lambda}\,{\mathbf{V}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i
> && \text{(the factorization)}
> \\
> &= \mathbf{V}\mathbf{\Lambda}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i
> && \text{(} {\mathbf{V}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i \text{)}
> \\
> &= \mathbf{V}\,(\lambda_i\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i)
> && \text{(column } i \text{ of the diagonal matrix } \mathbf{\Lambda} \text{)}
> \\
> &= \lambda_i\,\mathbf{V}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i
> && \text{(move the scalar } \lambda_i \text{ to the front)}
> \\
> &= \lambda_i\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i
> && \text{(} \mathbf{V}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_i \text{ is column } i \text{ of } \mathbf{V} \text{)}
> \end{aligned}$$
>
> and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i \neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ because it has norm $1$.

> **NOTE:**
>
> **Example 6 (**${\mathbf{A}}^{\top}\mathbf{A}$ for the matrix of the SVD example) For $\mathbf{A}$ in [Example 5](#exm-svd):
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top}\mathbf{A}
> &= \begin{bmatrix} 1 & 1 & 1 \\ 1 & -1 & 1 \end{bmatrix}
> \begin{bmatrix} 1 & 1 \\ 1 & -1 \\ 1 & 1 \end{bmatrix}
> && \text{(definition of the transpose)}
> \\
> &= \begin{bmatrix} 1 + 1 + 1 & 1 - 1 + 1 \\ 1 - 1 + 1 & 1 + 1 + 1 \end{bmatrix}
> && \text{(definition of matrix multiplication)}
> \\
> &= \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix}
> && \text{(add)}
> \end{aligned}$$
>
> [Theorem 4](#thm-svd-evd) says its eigenvalues are $\sigma_1^2 = 4$ and $\sigma_2^2 = 2$, with the columns of $\mathbf{V}$ as eigenvectors. Checking the first column, up to its factor $\frac{1}{\sqrt{2}}$:
>
> $$\begin{aligned}
> \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix}
> \begin{bmatrix} 1 \\ 1 \end{bmatrix}
> &= \begin{bmatrix} 3 \cdot 1 + 1 \cdot 1 \\ 1 \cdot 1 + 3 \cdot 1 \end{bmatrix}
> && \text{(definition of matrix-vector multiplication)}
> \\
> &= \begin{bmatrix} 3 + 1 \\ 1 + 3 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \begin{bmatrix} 4 \\ 4 \end{bmatrix}
> && \text{(add)}
> \\
> &= 4 \begin{bmatrix} 1 \\ 1 \end{bmatrix}
> && \text{(factor out } 4 \text{)}
> \end{aligned}$$
>
> and the second:
>
> $$\begin{aligned}
> \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix}
> \begin{bmatrix} 1 \\ -1 \end{bmatrix}
> &= \begin{bmatrix} 3 \cdot 1 + 1 \cdot(-1) \\ 1 \cdot 1 + 3 \cdot(-1) \end{bmatrix}
> && \text{(definition of matrix-vector multiplication)}
> \\
> &= \begin{bmatrix} 3 - 1 \\ 1 - 3 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \begin{bmatrix} 2 \\ -2 \end{bmatrix}
> && \text{(add)}
> \\
> &= 2 \begin{bmatrix} 1 \\ -1 \end{bmatrix}
> && \text{(factor out } 2 \text{)}
> \end{aligned}$$

> **NOTE:**
>
> *Remark 8* (Building an SVD from an eigendecomposition). [Theorem 4](#thm-svd-evd) matches Banerjee and Roy [\[1, Ch. 12\]](#ref-banerjee2014linear), pp. 372-373, which works in the other direction: it constructs an SVD from a spectral decomposition of ${\mathbf{A}}^{\top}\mathbf{A}$ and sets $\sigma_i = \sqrt{\lambda_i}$.
>
> For example, in [Example 6](#exm-svd-evd) the eigenvalues of ${\mathbf{A}}^{\top}\mathbf{A}$ are $4$ and $2$, and $\sqrt{4} = 2$ and $\sqrt{2}$ are the singular values $\sigma_1$ and $\sigma_2$ of $\mathbf{A}$ from [Example 5](#exm-svd).

# Definitions on this page

- [Definition 1 (Eigenvalue)](#def-eigenvalue)
- [Definition 2 (Eigenvector)](#def-eigenvector)
- [Definition 3 (Eigendecomposition, spectral decomposition)](#def-eigendecomposition)
- [Definition 4 (Singular value decomposition)](#def-svd)
- [Definition 5 (Singular values)](#def-singular-values)

Back to top

## References

\[1\]

S. Banerjee and A. Roy, *Linear algebra and matrix analysis for statistics*, vol. 181. Crc Press Boca Raton, 2014. Available: <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>

\[2\]

Wikipedia contributors, “Eigendecomposition of a matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Eigendecomposition_of_a_matrix>

\[3\]

Wikipedia contributors, “Singular value decomposition — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Singular_value_decomposition>
