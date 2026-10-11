# Complex Vectors and Matrices

Code

Published

Last modified: 2026-10-10 18:58:14 (PDT)

## 1 Complex vectors and matrices

> **NOTE:**
>
> **Definition 1 (Complex vectors and matrices)** A **complex vector** of length \\p\\ is a column vector whose entries are [complex numbers](algebra-complex.llms.md#def-complex-number); the set of all of them is denoted \\\mathbb{C}^p\\. A **complex matrix** of size \\m \times n\\ is a matrix with complex entries; the set of all of them is denoted \\\mathbb{C}^{m \times n}\\.
>
> The **complex conjugate** of a complex vector or matrix takes the [complex conjugate](algebra-complex.llms.md#def-complex-conjugate) of each entry: \\(\overline{\mathbf{A}})\_{jk} \stackrel{\text{def}}{=}\overline{a\_{jk}}\\.

> **NOTE:**
>
> **Example 1 (A complex vector and its conjugate)** \\ \underbrace{\tilde{z}}\_{3 \times 1} = \begin{bmatrix} 1 + i \\ 2 \\ -3\\i \end{bmatrix} \in \mathbb{C}^3, \qquad \underbrace{\overline{\tilde{z}}}\_{3 \times 1} = \begin{bmatrix} 1 - i \\ 2 \\ 3\\i \end{bmatrix}. \\
>
> The real entry \\2\\ is its own conjugate. Every real vector is also a complex vector, since each real number \\a\\ is the complex number \\a + 0\\i\\, so \\\mathbb{R}^p\\ is a subset of \\\mathbb{C}^p\\.

> **NOTE:**
>
> **Definition 2 (Conjugate transpose (Hermitian adjoint, Hermitian conjugate, transjugate))** The **conjugate transpose** (also called the **Hermitian adjoint**, **Hermitian conjugate**, or **transjugate**) of an \\m \times n\\ complex matrix \\\mathbf{A}\\ is the \\n \times m\\ matrix \\\mathbf{A}^{\mathsf{H}}\\ obtained by transposing \\\mathbf{A}\\ and then taking the complex conjugate of each entry:
>
> \\(\mathbf{A}^{\mathsf{H}})\_{jk} \stackrel{\text{def}}{=}\overline{a\_{kj}} \quad \text{for } j \in \\1, \ldots, n\\,\\ k \in \\1, \ldots, m\\.\\
>
> The conjugate transpose of a column vector \\\tilde{z} \in \mathbb{C}^p\\ is the \\1 \times p\\ row vector \\\tilde{z}^{\mathsf{H}} = \[\overline{z_1},\\ \ldots,\\ \overline{z_p}\]\\.

> **NOTE:**
>
> *Remark 1* (Notation for the conjugate transpose). The operation is denoted variously across mathematics and physics: \\\mathbf{A}^\*\\ in pure mathematics (Axler ([2024](#ref-axler2024linear), Definition 7.7, p. 231)), \\\mathbf{A}^{\dagger}\\ (“\\A\\-dagger”) in physics and quantum mechanics, and \\\mathbf{A}^{\mathsf{H}}\\ in engineering, numerical linear algebra, and statistics. These notes write \\\mathbf{A}^{\mathsf{H}}\\ because \\^\*\\ is reserved for optimal points (as in \\\tilde{x}^\*\\) and \\^{\dagger}\\ frequently denotes the Moore-Penrose pseudoinverse in the broader literature.
>
> The Hermitian adjoint matrix should not be confused with the classical *adjugate matrix* (the transpose of the matrix of cofactors), which older texts occasionally referred to as the “adjoint.”

> **NOTE:**
>
> **Example 2 (The conjugate transpose of a \\2 \times 3\\ matrix)** For
>
> \\ \underbrace{\mathbf{A}}\_{2 \times 3} = \begin{bmatrix} 1 + i & 2 & 0 \\ -i & 3 - 2\\i & 4 \end{bmatrix}, \\
>
> transposing gives a \\3 \times 2\\ matrix, and conjugating each of its entries gives
>
> \\ \underbrace{\mathbf{A}^{\mathsf{H}}}\_{3 \times 2} = \begin{bmatrix} 1 - i & i \\ 2 & 3 + 2\\i \\ 0 & 4 \end{bmatrix}. \\
>
> For instance,
>
> \\ \begin{aligned} (\mathbf{A}^{\mathsf{H}})\_{12} &= \overline{a\_{21}} \\ &= \overline{-i} \\ &= i. \end{aligned} \\
>
> The transpose alone would have \\-i\\ in that position, so for a matrix with an entry that is not real, \\\mathbf{A}^{\mathsf{H}}\\ and \\{\mathbf{A}}^{\top}\\ differ. For a real matrix, conjugating changes nothing, so \\\mathbf{A}^{\mathsf{H}} = {\mathbf{A}}^{\top}\\.

> **NOTE:**
>
> **Theorem 1 (Properties of the Hermitian adjoint)** Let \\\mathbf{A}\\ and \\\mathbf{B}\\ be complex matrices of compatible dimensions, and let \\c \in \mathbb{C}\\ be a scalar. The Hermitian adjoint ([Definition 2](#def-conjugate-transpose)) satisfies:
>
> 1.  **Involution**: \\(\mathbf{A}^{\mathsf{H}})^{\mathsf{H}} = \mathbf{A}\\
> 2.  **Additivity**: \\(\mathbf{A} + \mathbf{B})^{\mathsf{H}} = \mathbf{A}^{\mathsf{H}} + \mathbf{B}^{\mathsf{H}}\\
> 3.  **Conjugate-homogeneity**: \\(c\\\mathbf{A})^{\mathsf{H}} = \overline{c}\\\mathbf{A}^{\mathsf{H}}\\
> 4.  **Reversal of products**: \\(\mathbf{A}\mathbf{B})^{\mathsf{H}} = \mathbf{B}^{\mathsf{H}}\mathbf{A}^{\mathsf{H}}\\
>
> If \\\mathbf{A}\\ is invertible, then \\\mathbf{A}^{\mathsf{H}}\\ is also invertible, and
>
> \\(\mathbf{A}^{\mathsf{H}})^{-1} = (\mathbf{A}^{-1})^{\mathsf{H}}.\\

> **NOTE:**
>
> *Proof*. Properties 1-3 follow directly from entrywise conjugation and transposition:
>
> - For involution:
>
>   \\ \begin{aligned} \[(\mathbf{A}^{\mathsf{H}})^{\mathsf{H}}\]\_{jk} &= \overline{(\mathbf{A}^{\mathsf{H}})\_{kj}} \\ &= \overline{\overline{a\_{jk}}} \\ &= a\_{jk}. \end{aligned} \\
>
> - For additivity:
>
>   \\ \begin{aligned} \[(\mathbf{A} + \mathbf{B})^{\mathsf{H}}\]\_{jk} &= \overline{(\mathbf{A} + \mathbf{B})\_{kj}} \\ &= \overline{a\_{kj} + b\_{kj}} \\ &= \overline{a\_{kj}} + \overline{b\_{kj}} \\ &= (\mathbf{A}^{\mathsf{H}})\_{jk} + (\mathbf{B}^{\mathsf{H}})\_{jk}. \end{aligned} \\
>
> - For conjugate-homogeneity:
>
>   \\ \begin{aligned} \[(c\\\mathbf{A})^{\mathsf{H}}\]\_{jk} &= \overline{(c\\\mathbf{A})\_{kj}} \\ &= \overline{c\\a\_{kj}} \\ &= \overline{c}\\\overline{a\_{kj}} \\ &= \overline{c}\\(\mathbf{A}^{\mathsf{H}})\_{jk}. \end{aligned} \\
>
>   Unlike the real transpose where \\{(c\\\mathbf{A})}^{\top} = c\\{\mathbf{A}}^{\top}\\, scaling conjugates the scalar.
>
> For property 4 (reversal of products), let \\\mathbf{A}\\ be an \\m \times k\\ matrix and \\\mathbf{B}\\ a \\k \times n\\ matrix. Entry \\(i, j)\\ of the product’s Hermitian adjoint (for \\i \in \\1, \ldots, n\\\\ and \\j \in \\1, \ldots, m\\\\) is:
>
> \\ \begin{aligned} \[(\mathbf{A}\mathbf{B})^{\mathsf{H}}\]\_{ij} &= \overline{(\mathbf{A}\mathbf{B})\_{ji}} && \text{(}\href{#def-conjugate-transpose}{\text{Definition~2}}\text{)} \\ &= \overline{\sum\_{s=1}^{k} a\_{js}\\b\_{si}} && \text{(definition of matrix multiplication)} \\ &= \sum\_{s=1}^{k} \overline{a\_{js}}\\\overline{b\_{si}} && \text{(conjugate of sums and products)} \\ &= \sum\_{s=1}^{k} \overline{b\_{si}}\\\overline{a\_{js}} && \text{(complex multiplication is commutative)} \\ &= \sum\_{s=1}^{k} (\mathbf{B}^{\mathsf{H}})\_{is}\\(\mathbf{A}^{\mathsf{H}})\_{sj} && \text{(}\href{#def-conjugate-transpose}{\text{Definition~2}}\text{)} \\ &= (\mathbf{B}^{\mathsf{H}}\mathbf{A}^{\mathsf{H}})\_{ij} && \text{(definition of matrix multiplication)}. \end{aligned} \\
>
> For the inverse, applying property 4 to \\\mathbf{A}\mathbf{A}^{-1} = \mathbf{I}\\ gives:
>
> \\ \begin{aligned} (\mathbf{A}^{-1})^{\mathsf{H}}\mathbf{A}^{\mathsf{H}} &= (\mathbf{A}\mathbf{A}^{-1})^{\mathsf{H}} \\ &= \mathbf{I}^{\mathsf{H}} \\ &= \mathbf{I}, \end{aligned} \\
>
> so \\(\mathbf{A}^{\mathsf{H}})^{-1} = (\mathbf{A}^{-1})^{\mathsf{H}}\\.

> **NOTE:**
>
> **Theorem 2 (The adjoint property for inner products)** Let \\\mathbf{A}\\ be an \\m \times n\\ complex matrix. Under the standard inner product on complex Euclidean space, \\\left\langle \tilde{u}, \tilde{v} \right\rangle \stackrel{\text{def}}{=}\tilde{u}^{\mathsf{H}}\tilde{v}\\,
>
> \\\left\langle \mathbf{A}\tilde{u}, \tilde{v} \right\rangle = \left\langle \tilde{u}, \mathbf{A}^{\mathsf{H}}\tilde{v} \right\rangle \quad \text{for all } \tilde{u} \in \mathbb{C}^n \text{ and } \tilde{v} \in \mathbb{C}^m.\\

> **NOTE:**
>
> *Proof*. By the definition of the standard complex inner product and the product rule for the Hermitian adjoint ([Theorem 1](#thm-hermitian-adjoint-properties)):
>
> \\ \begin{aligned} \left\langle \mathbf{A}\tilde{u}, \tilde{v} \right\rangle &= (\mathbf{A}\tilde{u})^{\mathsf{H}}\tilde{v} && \text{(definition of standard inner product)} \\ &= (\tilde{u}^{\mathsf{H}}\mathbf{A}^{\mathsf{H}})\tilde{v} && \text{(}\href{#thm-hermitian-adjoint-properties}{\text{Theorem~1}}\text{, reversal of products)} \\ &= \tilde{u}^{\mathsf{H}}(\mathbf{A}^{\mathsf{H}}\tilde{v}) && \text{(associativity of matrix multiplication)} \\ &= \left\langle \tilde{u}, \mathbf{A}^{\mathsf{H}}\tilde{v} \right\rangle && \text{(definition of standard inner product)}. \end{aligned} \\

> **NOTE:**
>
> *Remark 2* (Where the name “adjoint” comes from). This identity is the origin of the name **adjoint**: in functional analysis and operator theory, the *adjoint* of a linear map \\T: V \to W\\ between inner product spaces is defined as the unique operator \\T^\*: W \to V\\ satisfying \\\left\langle T\tilde{u}, \tilde{v} \right\rangle = \left\langle \tilde{u}, T^\*\tilde{v} \right\rangle\\ (Axler ([2024](#ref-axler2024linear), Definition 7.1, p. 226)). When \\V\\ and \\W\\ are finite-dimensional spaces equipped with their standard orthonormal bases, the matrix representing the adjoint operator \\T^\*\\ is precisely the Hermitian adjoint matrix \\\mathbf{A}^{\mathsf{H}}\\ (Axler ([2024](#ref-axler2024linear), Proposition 7.9, p. 231)).

> **NOTE:**
>
> **Theorem 3 (\\\tilde{z}^{\mathsf{H}}\tilde{z}\\ is a sum of squared absolute values)** For every \\\tilde{z} \in \mathbb{C}^p\\,
>
> \\\underbrace{\tilde{z}^{\mathsf{H}}}\_{1 \times p}\\\underbrace{\tilde{z}}\_{p \times 1} = \sum\_{j=1}^p\mathopen{}\left\|z_j\right\|\mathclose{}^2,\\
>
> which is a nonnegative real number, and is \\0\\ only when \\\tilde{z} = \tilde{0}\_{p \times 1}\\.

> **NOTE:**
>
> *Proof*. The last step uses the [identity for a complex number times its conjugate](algebra-complex.llms.md#thm-conj-product).
>
> \\ \begin{aligned} \tilde{z}^{\mathsf{H}}\tilde{z} &= \sum\_{j=1}^p\overline{z_j}\\z_j && \text{(}\href{#def-conjugate-transpose}{\text{Definition~2}}\text{, and the row-times-column product)} \\ &= \sum\_{j=1}^pz_j\\\overline{z_j} && \text{(complex multiplication is commutative)} \\ &= \sum\_{j=1}^p\mathopen{}\left\|z_j\right\|\mathclose{}^2 && \text{(a number times its conjugate)} \end{aligned} \\
>
> By the definition of the [absolute value](algebra-complex.llms.md#def-complex-modulus), each \\\mathopen{}\left\|z_j\right\|\mathclose{}^2 = (\operatorname{Re} z_j)^2 + (\operatorname{Im} z_j)^2\\ is a nonnegative real number, so their sum is too. A sum of nonnegative numbers is \\0\\ only when every term is \\0\\, and \\\mathopen{}\left\|z_j\right\|\mathclose{}^2 = 0\\ only when
>
> \\ \begin{aligned} \operatorname{Re} z_j &= \operatorname{Im} z_j \\ &= 0, \end{aligned} \\
>
> that is, when \\z_j = 0\\.

> **NOTE:**
>
> **Example 3 (Computing \\\tilde{z}^{\mathsf{H}}\tilde{z}\\)** Let \\\tilde{z} = {(1 + i, 2)}^{\top}\\. By [Theorem 3](#thm-zhz-sum-squares),
>
> \\ \begin{aligned} \underbrace{\tilde{z}^{\mathsf{H}}}\_{1 \times 2}\\\underbrace{\tilde{z}}\_{2 \times 1} &= \mathopen{}\left\|1 + i\right\|\mathclose{}^2 + \mathopen{}\left\|2\right\|\mathclose{}^2 && \text{(}\href{#thm-zhz-sum-squares}{\text{Theorem~3}}\text{)} \\ &= (1^2 + 1^2) + (2^2 + 0^2) && \text{(definition of the absolute value, squared)} \\ &= 2 + 4 && \text{(add inside each group)} \\ &= 6 && \text{(add)} \end{aligned} \\
>
> Multiplying out directly gives the same number: \\\overline{2} \cdot 2 = 4\\, and
>
> \\ \begin{aligned} \overline{(1 + i)}\\(1 + i) &= (1 - i)(1 + i) && \text{(conjugate)} \\ &= 1 + i - i - i^2 && \text{(distribute)} \\ &= 1 - i^2 && \text{(cancel } i \text{)} \\ &= 2 && \text{(} i^2 = -1 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 4 (Why complex vectors use the conjugate transpose)** For a real vector \\\tilde{x}\\, \\{\tilde{x}}^{\top}\tilde{x}= \sum\_{j=1}^px_j^2\\ is \\0\\ only when \\\tilde{x}\\ is the zero vector. The same formula fails for complex vectors. Let \\\tilde{z} = {(1, i)}^{\top}\\. Then
>
> \\ \begin{aligned} \underbrace{{\tilde{z}}^{\top}}\_{1 \times 2}\\\underbrace{\tilde{z}}\_{2 \times 1} &= 1 \cdot 1 + i \cdot i && \text{(multiply entry by entry and add)} \\ &= 1 + i^2 && \text{(multiply)} \\ &= 0 && \text{(} i^2 = -1 \text{)} \end{aligned} \\
>
> although \\\tilde{z} \neq \tilde{0}\_{2 \times 1}\\. Using the conjugate transpose instead,
>
> \\ \begin{aligned} \underbrace{\tilde{z}^{\mathsf{H}}}\_{1 \times 2}\\\underbrace{\tilde{z}}\_{2 \times 1} &= \overline{1} \cdot 1 + \overline{i} \cdot i && \text{(}\href{#def-conjugate-transpose}{\text{Definition~2}}\text{)} \\ &= 1 + (-i) \cdot i && \text{(conjugate each entry)} \\ &= 1 - i^2 && \text{(multiply)} \\ &= 2 && \text{(} i^2 = -1 \text{)} \end{aligned} \\
>
> which is positive, as [Theorem 3](#thm-zhz-sum-squares) guarantees.

> **NOTE:**
>
> **Definition 3 (Hermitian matrix (self-adjoint matrix))** A square complex matrix \\\mathbf{A} \in \mathbb{C}^{n \times n}\\ is **Hermitian** (or **self-adjoint**) if it equals its conjugate transpose ([Definition 2](#def-conjugate-transpose)):
>
> \\\mathbf{A}^{\mathsf{H}} = \mathbf{A}.\\

> **NOTE:**
>
> *Remark 3* (Why “self-adjoint”). The term *self-adjoint* comes directly from [Theorem 2](#thm-adjoint-inner-product): when \\\mathbf{A}\\ is Hermitian, \\\left\langle \mathbf{A}\tilde{u}, \tilde{v} \right\rangle = \left\langle \tilde{u}, \mathbf{A}\tilde{v} \right\rangle\\ for all \\\tilde{u}, \tilde{v} \in \mathbb{C}^n\\. The linear operator moves across the inner product without change.

> **NOTE:**
>
> **Example 5 (A Hermitian matrix)** \\ \underbrace{\mathbf{A}}\_{2 \times 2} = \begin{bmatrix} 2 & 1 - i \\ 1 + i & 3 \end{bmatrix} \\
>
> is Hermitian: transposing swaps the off-diagonal entries, and conjugating turns \\1 + i\\ back into \\1 - i\\ and \\1 - i\\ back into \\1 + i\\, so \\\mathbf{A}^{\mathsf{H}} = \mathbf{A}\\. The diagonal entries of a Hermitian matrix must be real, because \\a\_{jj} = \overline{a\_{jj}}\\, and only a real number is its own conjugate: if \\a + b\\i = a - b\\i\\, then the imaginary parts give \\b = -b\\, so \\b = 0\\.
>
> Every real symmetric matrix is Hermitian, because for a real matrix \\\mathbf{A}^{\mathsf{H}} = {\mathbf{A}}^{\top}\\.

> **NOTE:**
>
> **Example 6 (A symmetric complex matrix that is not Hermitian)** \\ \underbrace{\mathbf{B}}\_{2 \times 2} = \begin{bmatrix} 0 & i \\ i & 0 \end{bmatrix} \\
>
> is symmetric, \\{\mathbf{B}}^{\top} = \mathbf{B}\\, but it is not Hermitian:
>
> \\ \underbrace{\mathbf{B}^{\mathsf{H}}}\_{2 \times 2} = \begin{bmatrix} 0 & -i \\ -i & 0 \end{bmatrix} \neq \mathbf{B}. \\

> **NOTE:**
>
> **Definition 4 (Skew-Hermitian matrix (anti-Hermitian matrix))** A square complex matrix \\\mathbf{A} \in \mathbb{C}^{n \times n}\\ is **skew-Hermitian** (or **anti-Hermitian**) if it equals the negative of its conjugate transpose ([Definition 2](#def-conjugate-transpose)):
>
> \\\mathbf{A}^{\mathsf{H}} = -\mathbf{A}.\\

> **NOTE:**
>
> *Remark 4* (The diagonal of a skew-Hermitian matrix). Every entry of a skew-Hermitian matrix satisfies \\a\_{jk} = -\overline{a\_{kj}}\\. In particular, its diagonal entries satisfy \\a\_{jj} = -\overline{a\_{jj}}\\, which means
>
> \\ \begin{aligned} a\_{jj} + \overline{a\_{jj}} &= 2\operatorname{Re}(a\_{jj}) \\ &= 0. \end{aligned} \\
>
> Therefore, every diagonal entry of a skew-Hermitian matrix must be purely imaginary (or zero). For example, \\a\_{jj} = 3\\i\\ works, since
>
> \\ \begin{aligned} -\overline{3\\i} &= -(-3\\i) \\ &= 3\\i, \end{aligned} \\
>
> but \\a\_{jj} = 3\\ does not, since \\-\overline{3} = -3\\.

> **NOTE:**
>
> **Example 7 (A skew-Hermitian matrix)** The matrix
>
> \\ \mathbf{A} = \begin{bmatrix} 2\\i & 1 + i \\ -1 + i & 0 \end{bmatrix} \\
>
> is skew-Hermitian: transposing and conjugating gives
>
> \\ \begin{aligned} \mathbf{A}^{\mathsf{H}} &= \begin{bmatrix} \overline{2\\i} & \overline{-1 + i} \\ \overline{1 + i} & \overline{0} \end{bmatrix} \\ &= \begin{bmatrix} -2\\i & -1 - i \\ 1 - i & 0 \end{bmatrix} \\ &= -\mathbf{A}. \end{aligned} \\
>
> Its diagonal entries \\2\\i\\ and \\0\\ are purely imaginary.

> **NOTE:**
>
> **Theorem 4 (Hermitian and skew-Hermitian decomposition)** Every square complex matrix \\\mathbf{A} \in \mathbb{C}^{n \times n}\\ can be uniquely expressed as the sum of a Hermitian matrix \\\mathbf{H}\\ ([Definition 3](#def-hermitian-matrix)) and a skew-Hermitian matrix \\\mathbf{S}\\ ([Definition 4](#def-skew-hermitian-matrix)):
>
> \\\mathbf{A} = \mathbf{H} + \mathbf{S},\\
>
> where
>
> \\\mathbf{H} = \frac{\mathbf{A} + \mathbf{A}^{\mathsf{H}}}{2} \quad \text{and} \quad \mathbf{S} = \frac{\mathbf{A} - \mathbf{A}^{\mathsf{H}}}{2}.\\

> **NOTE:**
>
> *Proof*. **Existence**: Define \\\mathbf{H} = \frac{1}{2}(\mathbf{A} + \mathbf{A}^{\mathsf{H}})\\ and \\\mathbf{S} = \frac{1}{2}(\mathbf{A} - \mathbf{A}^{\mathsf{H}})\\. Their sum is:
>
> \\ \begin{aligned} \mathbf{H} + \mathbf{S} &= \frac{\mathbf{A} + \mathbf{A}^{\mathsf{H}}}{2} + \frac{\mathbf{A} - \mathbf{A}^{\mathsf{H}}}{2} \\ &= \frac{2\mathbf{A}}{2} \\ &= \mathbf{A}. \end{aligned} \\
>
> Applying the properties of the Hermitian adjoint ([Theorem 1](#thm-hermitian-adjoint-properties)):
>
> \\ \begin{aligned} \mathbf{H}^{\mathsf{H}} &= \mathopen{}\left(\frac{\mathbf{A} + \mathbf{A}^{\mathsf{H}}}{2}\right)\mathclose{}^{\mathsf{H}} \\ &= \frac{\mathbf{A}^{\mathsf{H}} + (\mathbf{A}^{\mathsf{H}})^{\mathsf{H}}}{2} \\ &= \frac{\mathbf{A}^{\mathsf{H}} + \mathbf{A}}{2} \\ &= \mathbf{H}, \\ \mathbf{S}^{\mathsf{H}} &= \mathopen{}\left(\frac{\mathbf{A} - \mathbf{A}^{\mathsf{H}}}{2}\right)\mathclose{}^{\mathsf{H}} \\ &= \frac{\mathbf{A}^{\mathsf{H}} - (\mathbf{A}^{\mathsf{H}})^{\mathsf{H}}}{2} \\ &= \frac{\mathbf{A}^{\mathsf{H}} - \mathbf{A}}{2} \\ &= -\mathbf{S}. \end{aligned} \\
>
> Thus \\\mathbf{H}\\ is Hermitian and \\\mathbf{S}\\ is skew-Hermitian.
>
> **Uniqueness**: Suppose \\\mathbf{A} = \mathbf{H}' + \mathbf{S}'\\ with \\(\mathbf{H}')^{\mathsf{H}} = \mathbf{H}'\\ and \\(\mathbf{S}')^{\mathsf{H}} = -\mathbf{S}'\\. Taking the Hermitian adjoint of both sides yields:
>
> \\ \begin{aligned} \mathbf{A}^{\mathsf{H}} &= (\mathbf{H}' + \mathbf{S}')^{\mathsf{H}} \\ &= (\mathbf{H}')^{\mathsf{H}} + (\mathbf{S}')^{\mathsf{H}} \\ &= \mathbf{H}' - \mathbf{S}'. \end{aligned} \\
>
> Adding \\\mathbf{A} = \mathbf{H}' + \mathbf{S}'\\ and \\\mathbf{A}^{\mathsf{H}} = \mathbf{H}' - \mathbf{S}'\\ gives \\\mathbf{A} + \mathbf{A}^{\mathsf{H}} = 2\mathbf{H}'\\, so
>
> \\ \begin{aligned} \mathbf{H}' &= \frac{1}{2}(\mathbf{A} + \mathbf{A}^{\mathsf{H}}) \\ &= \mathbf{H}. \end{aligned} \\
>
> Subtracting the two equations gives \\\mathbf{A} - \mathbf{A}^{\mathsf{H}} = 2\mathbf{S}'\\, so
>
> \\ \begin{aligned} \mathbf{S}' &= \frac{1}{2}(\mathbf{A} - \mathbf{A}^{\mathsf{H}}) \\ &= \mathbf{S}. \end{aligned} \\

Back to top

## References

Axler, Sheldon. 2024. *Linear Algebra Done Right*. 4th ed. Undergraduate Texts in Mathematics. Springer. <https://doi.org/10.1007/978-3-031-41026-0>.
