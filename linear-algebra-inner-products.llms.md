# Inner Products and Orthogonality

Code

Published

Last modified: 2026-10-10 11:17:20 (PDT)

## 1 Inner products

> **NOTE:**
>
> **Definition 1 (Inner product)** An **inner product** on \\\mathbb{R}^p\\ is a function that assigns to each ordered pair of vectors \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\ a real number \\\left\langle \tilde{x}, \tilde{y} \right\rangle\\, and that has the following four properties for all \\\tilde{x}, \tilde{y}, \tilde{z} \in \mathbb{R}^p\\ and all real numbers \\a, b\\:
>
> - **positivity**: \\\left\langle \tilde{x}, \tilde{x} \right\rangle \ge 0\\;
> - **definiteness**: \\\left\langle \tilde{x}, \tilde{x} \right\rangle = 0\\ if and only if \\\tilde{x}= \tilde{0}\_{p \times 1}\\;
> - **linearity in the first slot**: \\\left\langle a\\\tilde{x}+ b\\\tilde{y}, \tilde{z} \right\rangle = a\\\left\langle \tilde{x}, \tilde{z} \right\rangle + b\\\left\langle \tilde{y}, \tilde{z} \right\rangle\\;
> - **symmetry**: \\\left\langle \tilde{x}, \tilde{y} \right\rangle = \left\langle \tilde{y}, \tilde{x} \right\rangle\\.

> **NOTE:**
>
> *Remark 1* (The definition in other sources). Axler ([2024](#ref-axler2024linear), Definition 6.2, p. 183) states the same definition for any vector space over the real or complex numbers. Axler splits linearity in the first slot into additivity and homogeneity, and his last property is *conjugate* symmetry, \\\left\langle \tilde{u}, \tilde{v} \right\rangle = \overline{\left\langle \tilde{v}, \tilde{u} \right\rangle}\\, which for real numbers is the same as symmetry. Symmetry and linearity in the first slot together give linearity in the second slot.

> **NOTE:**
>
> **Example 1 (The dot product is an inner product)** The dot product (1) is an inner product on \\\mathbb{R}^p\\, called the **Euclidean** or **standard** inner product. Each of the four properties in [Definition 1](#def-inner-product) holds:
>
> - **positivity**: \\\tilde{x}\cdot \tilde{x}= \sum\_{i=1}^px_i^2\\ is a sum of squares, so it is at least \\0\\;
> - **definiteness**: a sum of squares is \\0\\ exactly when every term is \\0\\, so \\\tilde{x}\cdot \tilde{x}= 0\\ exactly when every \\x_i = 0\\, that is, when \\\tilde{x}= \tilde{0}\_{p \times 1}\\;
> - **linearity in the first slot**: this property is the first-slot half of [Theorem 5 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-dot-linear);
> - **symmetry**: this property is [Theorem 1 in Vectors](linear-algebra-vectors.llms.md#thm-lincom-symmetric).
>
> For instance, with \\\tilde{x}= (1, -2, 2)\\,
>
> \\ \begin{aligned} \tilde{x}\cdot \tilde{x} &= 1 \cdot 1 + (-2) \cdot(-2) + 2 \cdot 2 && \text{(definition of the dot product)} \\ &= 1 + 4 + 4 && \text{(multiply)} \\ &= 9 && \text{(add)} \end{aligned} \\
>
> which is positive, as positivity and definiteness require of a nonzero vector.

> **NOTE:**
>
> **Definition 2 (Inner product space)** An **inner product space** is a vector space equipped with an inner product ([Definition 1](#def-inner-product)). For vectors in \\\mathbb{R}^p\\ ([Definition 2 in Vectors](linear-algebra-vectors.llms.md#def-real-coordinate-space)), the pair \\(\mathbb{R}^p, \left\langle \cdot, \cdot \right\rangle)\\ is a real inner product space.

> **NOTE:**
>
> **Example 2 (Real coordinate space as an inner product space)** The Euclidean space \\\mathbb{R}^p\\ equipped with the standard dot product (1) is an inner product space, because the dot product satisfies the four inner product axioms ([Example 1](#exm-dot-product-inner-product)). For \\p = 2\\, any vector \\\tilde{x}= (x_1, x_2) \in \mathbb{R}^2\\ has squared norm \\\left\langle \tilde{x}, \tilde{x} \right\rangle = x_1^2 + x_2^2 \ge 0\\, which is zero if and only if
>
> \\ \begin{aligned} x_1 &= x_2 \\ &= 0. \end{aligned} \\
>
> Equipping the same vector space \\\mathbb{R}^p\\ with different inner products yields different inner product spaces with different geometric notions of angle and distance on the same set of vectors.

> **NOTE:**
>
> **Example 3 (A weighted inner product)** Let \\\tilde{c} = (c_1, \ldots, c_p)\\ be a vector of positive numbers, and define
>
> \\\left\langle \tilde{x}, \tilde{y} \right\rangle\_{\tilde{c}} \stackrel{\text{def}}{=}\sum\_{i=1}^pc_i\\x_i y_i.\\
>
> This function is also an inner product on \\\mathbb{R}^p\\ ([Axler 2024](#ref-axler2024linear), Example 6.3(b), p. 184):
>
> - **positivity**: \\\left\langle \tilde{x}, \tilde{x} \right\rangle\_{\tilde{c}} = \sum\_{i=1}^pc_i\\x_i^2\\, and each term \\c_i\\x_i^2\\ is a positive number times a square, so the sum is at least \\0\\;
> - **definiteness**: a sum of nonnegative terms is \\0\\ exactly when every term is \\0\\, and \\c_i\\x_i^2 = 0\\ exactly when \\x_i = 0\\, because \\c_i \> 0\\; so \\\left\langle \tilde{x}, \tilde{x} \right\rangle\_{\tilde{c}} = 0\\ exactly when \\\tilde{x}= \tilde{0}\_{p \times 1}\\;
> - **linearity in the first slot**: see the derivation after this list;
> - **symmetry**: \\c_i\\x_i y_i = c_i\\y_i x_i\\ for each \\i\\, so \\\left\langle \tilde{x}, \tilde{y} \right\rangle\_{\tilde{c}} = \left\langle \tilde{y}, \tilde{x} \right\rangle\_{\tilde{c}}\\.
>
> For linearity in the first slot, take \\\tilde{x}, \tilde{y}, \tilde{z} \in \mathbb{R}^p\\ and real numbers \\a, b\\:
>
> \\ \begin{aligned} \left\langle a\\\tilde{x}+ b\\\tilde{y}, \tilde{z} \right\rangle\_{\tilde{c}} &= \sum\_{i=1}^pc_i\\(a\\\tilde{x}+ b\\\tilde{y})\_i\\z_i && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\tilde{c}} \text{)} \\ &= \sum\_{i=1}^pc_i\\(a x_i + b y_i)\\z_i && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{, }\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~6 in Vectors}}\text{)} \\ &= \sum\_{i=1}^p\mathopen{}\left(a\\c_i x_i z_i + b\\c_i y_i z_i\right)\mathclose{} && \text{(distribute, and commute the factors in each product)} \\ &= \sum\_{i=1}^pa\\c_i x_i z_i + \sum\_{i=1}^pb\\c_i y_i z_i && \text{(split the finite sum)} \\ &= a \sum\_{i=1}^pc_i x_i z_i + b \sum\_{i=1}^pc_i y_i z_i && \text{(factor } a \text{ and } b \text{ out of the sums)} \\ &= a\\\left\langle \tilde{x}, \tilde{z} \right\rangle\_{\tilde{c}} + b\\\left\langle \tilde{y}, \tilde{z} \right\rangle\_{\tilde{c}} && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\tilde{c}} \text{)} \end{aligned} \\
>
> Different inner products can give different numbers for the same pair of vectors. With \\p = 2\\, \\\tilde{c} = (2, 1)\\, \\\tilde{x}= (1, 3)\\ and \\\tilde{y}= (4, -1)\\:
>
> \\ \begin{aligned} \left\langle \tilde{x}, \tilde{y} \right\rangle\_{\tilde{c}} &= 2 \cdot 1 \cdot 4 + 1 \cdot 3 \cdot(-1) && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\tilde{c}} \text{)} \\ &= 8 - 3 && \text{(multiply)} \\ &= 5 && \text{(subtract)} \end{aligned} \\
>
> while the dot product of the same vectors is
>
> \\ \begin{aligned} \tilde{x}\cdot \tilde{y} &= 1 \cdot 4 + 3 \cdot(-1) && \text{(definition of the dot product)} \\ &= 4 - 3 && \text{(multiply)} \\ &= 1 && \text{(subtract)} \end{aligned} \\

> **NOTE:**
>
> **Example 4 (Functions that are not inner products)** Each of these functions on \\\mathbb{R}^2\\ has some of the properties in [Definition 1](#def-inner-product), but not all four:
>
> - \\f(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}x_1 y_1 - x_2 y_2\\ is symmetric, because \\x_i y_i = y_i x_i\\, and linear in the first slot, because it is a linear combination of \\x_1\\ and \\x_2\\ with coefficients \\y_1\\ and \\-y_2\\. It fails positivity: for \\\tilde{x}= (0, 1)\\,
>
>   \\ \begin{aligned} f(\tilde{x}, \tilde{x}) &= 0 \cdot 0 - 1 \cdot 1 \\ &= -1 \\ &\< 0. \end{aligned} \\
>
>   It also fails definiteness: for \\\tilde{x}= (1, 1)\\,
>
>   \\ \begin{aligned} f(\tilde{x}, \tilde{x}) &= 1 \cdot 1 - 1 \cdot 1 \\ &= 0 \end{aligned} \\
>
>   although \\\tilde{x}\neq \tilde{0}\_{2 \times 1}\\.
>
> - \\g(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}x_1 y_1\\ is symmetric and linear in the first slot, for the same reasons as \\f\\, and has positivity, because \\g(\tilde{x}, \tilde{x}) = x_1^2 \ge 0\\. It fails definiteness: for \\\tilde{x}= (0, 1)\\,
>
>   \\ \begin{aligned} g(\tilde{x}, \tilde{x}) &= 0 \cdot 0 \\ &= 0 \end{aligned} \\
>
>   although \\\tilde{x}\neq \tilde{0}\_{2 \times 1}\\.
>
> - \\h(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}\mathopen{}\left\|x_1 y_1\right\|\mathclose{} + \mathopen{}\left\|x_2 y_2\right\|\mathclose{}\\, where \\\mathopen{}\left\|\cdot\right\|\mathclose{}\\ is the [absolute value](algebra.llms.md#def-absolute-value), is symmetric, because \\\mathopen{}\left\|x_i y_i\right\|\mathclose{} = \mathopen{}\left\|y_i x_i\right\|\mathclose{}\\, and has positivity and definiteness, because \\h(\tilde{x}, \tilde{x}) = x_1^2 + x_2^2\\ is a sum of squares. It is not linear in the first slot: take
>
>   \\ \begin{aligned} \tilde{x}&= \tilde{y}\\ &= (1, 0), \end{aligned} \\
>
>   \\a = -1\\ and \\b = 0\\; then
>
>   \\ \begin{aligned} h(a\\\tilde{x}, \tilde{y}) &= \mathopen{}\left\|(-1) \cdot 1\right\|\mathclose{} + \mathopen{}\left\|0 \cdot 0\right\|\mathclose{} \\ &= 1, \end{aligned} \\
>
>   while
>
>   \\ \begin{aligned} a\\h(\tilde{x}, \tilde{y}) &= (-1) \cdot(\mathopen{}\left\|1 \cdot 1\right\|\mathclose{} + \mathopen{}\left\|0 \cdot 0\right\|\mathclose{}) \\ &= -1. \end{aligned} \\

> **NOTE:**
>
> **Definition 3 (Orthogonality in an inner product space)** In an inner product space ([Definition 2](#def-inner-product-space)) with inner product \\\left\langle \cdot, \cdot \right\rangle\\, two vectors \\\tilde{x}\\ and \\\tilde{y}\\ are **orthogonal with respect to** \\\left\langle \cdot, \cdot \right\rangle\\, written \\\tilde{x}\perp \tilde{y}\\, if
>
> \\\left\langle \tilde{x}, \tilde{y} \right\rangle = 0\\
>
> ([Banerjee and Roy 2014](#ref-banerjee2014linear), Definition 7.3, p. 181). With the dot product as the inner product ([Example 1](#exm-dot-product-inner-product)), this condition is orthogonality as in [Definition 13 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors).

> **NOTE:**
>
> **Example 5 (Orthogonality depends on the inner product)** Take the weighted inner product of [Example 3](#exm-weighted-inner-product) with \\\tilde{c} = (2, 1)\\, and let \\\tilde{x}= (1, 2)\\ and \\\tilde{y}= (1, -1)\\. Then
>
> \\ \begin{aligned} \left\langle \tilde{x}, \tilde{y} \right\rangle\_{\tilde{c}} &= 2 \cdot 1 \cdot 1 + 1 \cdot 2 \cdot(-1) && \text{(definition of } \left\langle \cdot, \cdot \right\rangle\_{\tilde{c}} \text{)} \\ &= 2 - 2 && \text{(multiply)} \\ &= 0, && \text{(subtract)} \end{aligned} \\
>
> so \\\tilde{x}\\ and \\\tilde{y}\\ are orthogonal with respect to \\\left\langle \cdot, \cdot \right\rangle\_{\tilde{c}}\\. They are not orthogonal with respect to the dot product, since
>
> \\ \begin{aligned} \tilde{x}\cdot \tilde{y}&= 1 \cdot 1 + 2 \cdot(-1) \\ &= -1 \\ &\ne 0. \end{aligned} \\

## 2 Cauchy-Schwarz and the triangle inequality

> **NOTE:**
>
> This section is adapted from Zhou ([2024](#ref-zhou2024vector)), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source leaves the proof of the triangle inequality to class; it is written out here.

> **NOTE:**
>
> **Theorem 1 (Basic properties of the Euclidean norm)** For any \\\tilde{x} \in \mathbb{R}^p\\ and any number \\c\\:
>
> 1.  \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \ge 0\\, and \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = 0\\ if and only if \\\tilde{x} = \tilde{0}\\;
> 2.  \\\mathopen{}\left\lVert c\\\tilde{x}\right\rVert\mathclose{} = \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\.

> **NOTE:**
>
> *Proof*. **Part 1.** \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = \sqrt{x_1^2 + \cdots + x_p^2}\\ ([Equation 2 in Vectors](linear-algebra-vectors.llms.md#eq-l2-norm)) is the square root of a sum of squares, so it is at least \\0\\. It is \\0\\ exactly when \\x_1^2 + \cdots + x_p^2 = 0\\, and a sum of squares is \\0\\ exactly when every term is \\0\\, that is, when every \\x_i = 0\\: if some \\x_i \ne 0\\, its square is positive and the sum is positive, and if every \\x_i = 0\\, the sum is \\0\\.
>
> **Part 2.**
>
> \\ \begin{aligned} \mathopen{}\left\lVert c\\\tilde{x}\right\rVert\mathclose{} &= \sqrt{\sum\_{i=1}^p(c\\x_i)^2} && \text{(}\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{, and }\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{)} \\ &= \sqrt{\sum\_{i=1}^pc^2 x_i^2} && \text{(} (c\\x_i)^2 = c^2 x_i^2 \text{)} \\ &= \sqrt{c^2 \sum\_{i=1}^px_i^2} && \text{(factor } c^2 \text{ out of the sum)} \\ &= \sqrt{c^2}\\\sqrt{\sum\_{i=1}^px_i^2} && \text{(the square root of a product of nonnegative numbers)} \\ &= \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}. && \text{(} \sqrt{c^2} = \mathopen{}\left\|c\right\|\mathclose{} \text{, and }\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 6 (Scaling a vector scales its length)** For \\\tilde{x} = (3, 4)\\, \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = 5\\ ([Example 9 in Vectors](linear-algebra-vectors.llms.md#exm-euclidean-norm)). Then \\-2\\\tilde{x} = (-6, -8)\\ has norm
>
> \\ \begin{aligned} \sqrt{36 + 64} &= 10 \\ &= \mathopen{}\left\|-2\right\|\mathclose{} \cdot 5, \end{aligned} \\
>
> as part 2 says. Dividing by the norm gives a vector of length \\1\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tfrac{1}{5}\\\tilde{x}\right\rVert\mathclose{} &= \tfrac{1}{5} \cdot 5 \\ &= 1, \end{aligned} \\
>
> and \\\tfrac{1}{5}\\\tilde{x} = (0.6, 0.8)\\ is the unit vector in [Example 9 in Vectors](linear-algebra-vectors.llms.md#exm-euclidean-norm).

> **NOTE:**
>
> **Theorem 2 (The squared norm of a sum)** For any \\\tilde{x}, \tilde{y} \in \mathbb{R}^p\\,
>
> \\ \mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{}^2 = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2. \\
>
> In particular, if \\\tilde{x} \perp \tilde{y}\\ ([Definition 13 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)), then \\\mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{}^2 = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2\\ (the **Pythagorean theorem**).

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{}^2 &= (\tilde{x} + \tilde{y}) \cdot (\tilde{x} + \tilde{y}) && \text{(square both sides of }\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{)} \\ &= \tilde{x} \cdot (\tilde{x} + \tilde{y}) + \tilde{y} \cdot (\tilde{x} + \tilde{y}) && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dot-linear}{\text{Theorem~5 in Direct Sums and Orthogonal Complements}}\text{, first slot, } a \text{ and } b \text{ both equal to } 1 \text{)} \\ &= \tilde{x} \cdot \tilde{x} + \tilde{x} \cdot \tilde{y} + \tilde{y} \cdot \tilde{x} + \tilde{y} \cdot \tilde{y} && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dot-linear}{\text{Theorem~5 in Direct Sums and Orthogonal Complements}}\text{, second slot, } a \text{ and } b \text{ both equal to } 1 \text{, twice)} \\ &= \tilde{x} \cdot \tilde{x} + \tilde{x} \cdot \tilde{y} + \tilde{x} \cdot \tilde{y} + \tilde{y} \cdot \tilde{y} && \text{(}\href{linear-algebra-vectors.qmd#thm-lincom-symmetric}{\text{Theorem~1 in Vectors}}\text{)} \\ &= \tilde{x} \cdot \tilde{x} + 2\\(\tilde{x} \cdot \tilde{y}) + \tilde{y} \cdot \tilde{y} && \text{(combine like terms)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2. && \text{(}\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{, squared)} \end{aligned} \\
>
> If \\\tilde{x} \perp \tilde{y}\\, then \\\tilde{x} \cdot \tilde{y} = 0\\, and the middle term drops out.

> **NOTE:**
>
> **Example 7 (Checking the expansion)** For \\\tilde{x} = (3, 0)\\ and \\\tilde{y} = (1, 4)\\: \\\tilde{x} + \tilde{y} = (4, 4)\\, so
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{}^2 &= 16 + 16 \\ &= 32, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 &= 9 + 2 \cdot 3 + 17 \\ &= 32. \end{aligned} \\
>
> For the orthogonal vectors \\(3, 0)\\ and \\(0, 4)\\,
>
> \\ \begin{aligned} \mathopen{}\left\lVert(3, 4)\right\rVert\mathclose{}^2 &= 25 \\ &= 9 + 16, \end{aligned} \\
>
> the \\3\\-\\4\\-\\5\\ right triangle.

> **NOTE:**
>
> **Theorem 3 (Cauchy-Schwarz inequality)** For any \\\tilde{x}, \tilde{y} \in \mathbb{R}^p\\,
>
> \\ \mathopen{}\left\|\tilde{x} \cdot \tilde{y}\right\|\mathclose{} \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}, \\
>
> with equality exactly when \\\tilde{x}\\ and \\\tilde{y}\\ are linearly dependent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)).

> **NOTE:**
>
> *Proof*. **If \\\tilde{y} = \tilde{0}\\.** Then
>
> \\ \begin{aligned} \tilde{x} \cdot \tilde{0}&= \sum_i x_i \cdot 0 \\ &= 0 \end{aligned} \\
>
> 1.  and \\\mathopen{}\left\lVert\tilde{0}\right\rVert\mathclose{} = 0\\ ([Theorem 1](#thm-norm-properties), part 1), so both sides are \\0\\ and equality holds; and \\\tilde{x}, \tilde{y}\\ are linearly dependent, because \\0\\\tilde{x} + 1\\\tilde{y} = \tilde{0}\\.
>
> **If \\\tilde{y} \ne \tilde{0}\\.** Then \\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} \> 0\\ ([Theorem 1](#thm-norm-properties), part 1). Let \\t \stackrel{\text{def}}{=}(\tilde{x} \cdot \tilde{y}) / \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2\\. Then
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x} - t\\\tilde{y}\right\rVert\mathclose{}^2 &= \mathopen{}\left\lVert\tilde{x} + (-1)\\(t\\\tilde{y})\right\rVert\mathclose{}^2 && \text{(} \tilde{x} - \tilde{v} = \tilde{x} + (-1)\\\tilde{v} \text{)} \\ &= \mathopen{}\left\lVert\tilde{x} + (-t)\\\tilde{y}\right\rVert\mathclose{}^2 && \text{(} (-1)\\(t\\\tilde{y}) = (-t)\\\tilde{y} \text{, entrywise)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\\mathopen{}\left(\tilde{x} \cdot ((-t)\\\tilde{y})\right)\mathclose{} + \mathopen{}\left\lVert(-t)\\\tilde{y}\right\rVert\mathclose{}^2 && \text{(}\href{#thm-norm-sum-square}{\text{Theorem~2}}\text{)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(-t)\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left\lVert(-t)\\\tilde{y}\right\rVert\mathclose{}^2 && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dot-linear}{\text{Theorem~5 in Direct Sums and Orthogonal Complements}}\text{, special case } b = 0 \text{)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(-t)\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left(\mathopen{}\left\|-t\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\right)\mathclose{}^2 && \text{(}\href{#thm-norm-properties}{\text{Theorem~1}}\text{, part 2)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(-t)\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left\|-t\right\|\mathclose{}^2\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(} (ab)^2 = a^2 b^2 \text{)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 - 2t\\(\tilde{x} \cdot \tilde{y}) + t^2\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(} 2\\(-t) = -2t \text{ and } \mathopen{}\left\|-t\right\|\mathclose{}^2 = t^2 \text{)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 - 2\\\frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2} + \frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^4}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(substitute } t \text{)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 - 2\\\frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2} + \frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2} && \text{(cancel one factor } \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 \text{)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 - \frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2}. && \text{(combine the last two terms)} \end{aligned} \tag{1}\\
>
> The left side is at least \\0\\ ([Theorem 1](#thm-norm-properties), part 1), so
>
> \\ \begin{aligned} 0 &\le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 - \frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2} && \text{(}\href{#eq-cauchy-schwarz-chain}{\text{Equation~1}}\text{)} \\ \frac{(\tilde{x} \cdot \tilde{y})^2}{\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2} &\le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 && \text{(add } (\tilde{x} \cdot \tilde{y})^2 / \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 \text{ to both sides)} \\ (\tilde{x} \cdot \tilde{y})^2 &\le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2, && \text{(multiply both sides by } \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 \> 0 \text{)} \end{aligned} \\
>
> and taking nonnegative square roots of both sides, which preserves the inequality, gives \\\mathopen{}\left\|\tilde{x} \cdot \tilde{y}\right\|\mathclose{} \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\\.
>
> **When equality holds (\\\tilde{y} \ne \tilde{0}\\).** Both sides of the inequality are nonnegative, so equality holds exactly when \\(\tilde{x} \cdot \tilde{y})^2 = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2\\, that is (dividing by \\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 \> 0\\ and rearranging), when \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 - (\tilde{x} \cdot \tilde{y})^2 / \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 = 0\\. By [Equation 1](#eq-cauchy-schwarz-chain), that quantity is \\\mathopen{}\left\lVert\tilde{x} - t\\\tilde{y}\right\rVert\mathclose{}^2\\, so equality holds exactly when \\\tilde{x} - t\\\tilde{y} = \tilde{0}\\ ([Theorem 1](#thm-norm-properties), part 1), that is, when \\\tilde{x} = t\\\tilde{y}\\.
>
> - If \\\tilde{x} = t\\\tilde{y}\\, then \\1\\\tilde{x} + (-t)\\\tilde{y} = \tilde{0}\\, so the two vectors are linearly dependent.
>
> - Conversely, suppose \\a\\\tilde{x} + b\\\tilde{y} = \tilde{0}\\ with \\a, b\\ not both \\0\\. Then \\a \ne 0\\: otherwise \\b \ne 0\\ and \\b\\\tilde{y} = \tilde{0}\\, so
>
>   \\ \begin{aligned} \tilde{y} &= \tfrac{1}{b}\\(b\\\tilde{y}) \\ &= \tilde{0}, \end{aligned} \\
>
>   contrary to assumption. Subtracting \\b\\\tilde{y}\\ from both sides gives \\a\\\tilde{x} = -b\\\tilde{y}\\, and multiplying by \\\tfrac{1}{a}\\ gives \\\tilde{x} = s\\\tilde{y}\\ with \\s = -b/a\\. Then
>
>   \\ \begin{aligned} \mathopen{}\left\|\tilde{x} \cdot \tilde{y}\right\|\mathclose{} &= \mathopen{}\left\|(s\\\tilde{y}) \cdot \tilde{y}\right\|\mathclose{} && \text{(substitute } \tilde{x} = s\\\tilde{y} \text{)} \\ &= \mathopen{}\left\|s\\(\tilde{y} \cdot \tilde{y})\right\|\mathclose{} && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dot-linear}{\text{Theorem~5 in Direct Sums and Orthogonal Complements}}\text{, special case } b = 0 \text{, first slot)} \\ &= \mathopen{}\left\|s\right\|\mathclose{}\\\mathopen{}\left\|\tilde{y} \cdot \tilde{y}\right\|\mathclose{} && \text{(} \mathopen{}\left\|ab\right\|\mathclose{} = \mathopen{}\left\|a\right\|\mathclose{}\\\mathopen{}\left\|b\right\|\mathclose{} \text{)} \\ &= \mathopen{}\left\|s\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(} \tilde{y} \cdot \tilde{y} = \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 \ge 0 \text{, }\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{)} \\ &= \mathopen{}\left(\mathopen{}\left\|s\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\right)\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} && \text{(regroup)} \\ &= \mathopen{}\left\lVert s\\\tilde{y}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} && \text{(}\href{#thm-norm-properties}{\text{Theorem~1}}\text{, part 2)} \\ &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}, && \text{(} s\\\tilde{y} = \tilde{x} \text{)} \end{aligned} \\
>
>   so equality holds.

> **NOTE:**
>
> **Example 8 (A strict case and an equality case)**  
>
> - For \\\tilde{x} = (1, 2)\\ and \\\tilde{y} = (3, 4)\\:
>
>   \\ \begin{aligned} \tilde{x} \cdot \tilde{y} &= 3 + 8 \\ &= 11, \end{aligned} \\
>
>   while \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} = \sqrt{5} \cdot 5 \approx 11.18\\. The inequality is strict, and the vectors are linearly independent: \\(3, 4)\\ is not a multiple of \\(1, 2)\\, since \\3 \cdot 2 \ne 4\\.
>
> - For \\\tilde{x} = (1, 2)\\ and
>
>   \\ \begin{aligned} \tilde{y} &= (2, 4) \\ &= 2\\\tilde{x}: \end{aligned} \\
>
>   \\ \begin{aligned} \tilde{x} \cdot \tilde{y} &= 2 + 8 \\ &= 10 \end{aligned} \\
>
>   and
>
>   \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} &= \sqrt{5}\\\sqrt{20} \\ &= \sqrt{100} \\ &= 10, \end{aligned} \\
>
>   so equality holds.

> **NOTE:**
>
> **Theorem 4 (Triangle inequality)** For any \\\tilde{x}, \tilde{y} \in \mathbb{R}^p\\,
>
> \\ \mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}. \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{}^2 &= \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\(\tilde{x} \cdot \tilde{y}) + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(}\href{#thm-norm-sum-square}{\text{Theorem~2}}\text{)} \\ &\le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\\mathopen{}\left\|\tilde{x} \cdot \tilde{y}\right\|\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(a number is at most its absolute value)} \\ &\le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}^2 + 2\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(}\href{#thm-cauchy-schwarz}{\text{Theorem~3}}\text{)} \\ &= \mathopen{}\left(\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\right)\mathclose{}^2. && \text{(expand the square)} \end{aligned} \\
>
> Both \\\mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{}\\ and \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\\ are nonnegative ([Theorem 1](#thm-norm-properties)), and for nonnegative numbers \\a^2 \le b^2\\ implies \\a \le b\\.

> **NOTE:**
>
> **Example 9 (A strict case and an equality case)**  
>
> - For \\\tilde{x} = (3, 0)\\ and \\\tilde{y} = (0, 4)\\:
>
>   \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x} + \tilde{y}\right\rVert\mathclose{} &= \mathopen{}\left\lVert(3, 4)\right\rVert\mathclose{} \\ &= 5, \end{aligned} \\
>
>   while
>
>   \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} &= 3 + 4 \\ &= 7. \end{aligned} \\
>
> - For \\\tilde{x} = (1, 0)\\ and \\\tilde{y} = (2, 0)\\, which point the same way:
>
>   \\ \begin{aligned} \mathopen{}\left\lVert(3, 0)\right\rVert\mathclose{} &= 3 \\ &= 1 + 2, \end{aligned} \\
>
>   so equality holds.

> **NOTE:**
>
> **Definition 4 (Norm (normed vector space))** A **norm** on a real vector space \\V\\ is a function \\\mathopen{}\left\lVert\cdot\right\rVert\mathclose{} : V \to \[0, \infty)\\ that assigns to each vector \\\tilde{x}\in V\\ a nonnegative real number \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\, and satisfies the following three axioms for all \\\tilde{x}, \tilde{y}\in V\\ and all scalars \\c \in \mathbb{R}\\:
>
> 1.  **Positivity and definiteness**: \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \ge 0\\, and \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = 0\\ if and only if \\\tilde{x}= \tilde{0}\\;
> 2.  **Absolute homogeneity**: \\\mathopen{}\left\lVert c\\\tilde{x}\right\rVert\mathclose{} = \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\;
> 3.  **Subadditivity (triangle inequality)**: \\\mathopen{}\left\lVert\tilde{x}+ \tilde{y}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\\.
>
> A vector space equipped with a norm is called a **normed vector space** (or **normed space**).

> **NOTE:**
>
> **Example 10 (Euclidean space as a normed vector space)** The Euclidean space \\\mathbb{R}^p\\ equipped with the Euclidean norm ([Definition 14 in Vectors](linear-algebra-vectors.llms.md#def-euclidean-norm)) is a normed vector space:
>
> - Positivity and absolute homogeneity hold by [Theorem 1](#thm-norm-properties).
> - The triangle inequality holds by [Theorem 4](#thm-triangle-inequality).
>
> Every inner product space \\(\mathbb{R}^p, \left\langle \cdot, \cdot \right\rangle)\\ ([Definition 2](#def-inner-product-space)) naturally defines an induced norm \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \stackrel{\text{def}}{=}\sqrt{\left\langle \tilde{x}, \tilde{x} \right\rangle}\\, which satisfies all three norm axioms.

> **NOTE:**
>
> **Definition 5 (Vector \\p\\-norm (\\\ell_p\\ norm, \\\ell_1\\ norm, \\\ell_2\\ norm, infinity norm))** For a vector \\\tilde{x}= (x_1, \ldots, x_p) \in \mathbb{R}^p\\ and any real number \\k \ge 1\\, the **vector \\p\\-norm** (or **\\\ell_p\\ norm**, traditionally named with parameter \\p\\ but denoted here with exponent \\k\\ to avoid clashing with the ambient vector dimension \\p\\) is:
>
> \\ \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k \stackrel{\text{def}}{=}\mathopen{}\left(\sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}^k\right)\mathclose{}^{1/k}. \\
>
> The cases \\k = 1\\ and \\k = 2\\ are named the **\\\ell_1\\ norm** (also the **taxicab norm** or **Manhattan norm**) and the **\\\ell_2\\ norm**. The **infinity norm** (also the **\\\ell\_\infty\\ norm**, **maximum norm**, or **Chebyshev norm**) is defined separately by
>
> \\ \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty \stackrel{\text{def}}{=}\max\_{1 \le i \le p} \mathopen{}\left\|x_i\right\|\mathclose{}. \\

> **NOTE:**
>
> **Example 11 (Calculating \\\ell_1\\, \\\ell_2\\, and \\\ell\_\infty\\ norms)** For \\\tilde{x}= (3, -4) \in \mathbb{R}^2\\:
>
> - \\\ell_1\\ norm:
>
>   \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_1 &= \mathopen{}\left\|3\right\|\mathclose{} + \mathopen{}\left\|-4\right\|\mathclose{} \\ &= 3 + 4 \\ &= 7. \end{aligned} \\
>
> - \\\ell_2\\ norm:
>
>   \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_2 &= \sqrt{3^2 + (-4)^2} \\ &= \sqrt{9 + 16} \\ &= \sqrt{25} \\ &= 5. \end{aligned} \\
>
> - \\\ell\_\infty\\ norm:
>
>   \\ \begin{aligned} \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty &= \max(\mathopen{}\left\|3\right\|\mathclose{}, \mathopen{}\left\|-4\right\|\mathclose{}) \\ &= 4. \end{aligned} \\
>
> Notice that \\4 \le 5 \le 7\\. For any vector \\\tilde{x}\in \mathbb{R}^p\\, the norms satisfy the chain of inequalities:
>
> \\ \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_2 \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_1 \le \sqrt{p}\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_2 \le p\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty. \\

> **NOTE:**
>
> *Remark 2* (Unit balls and regularization in machine learning). The unit ball in \\\mathbb{R}^2\\ under the \\\ell_p\\ norm is the set \\\mathopen{}\left\\\tilde{x}\in \mathbb{R}^2 : \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k \le 1\right\\\mathclose{}\\:
>
> - For \\k = 1\\, the unit ball is a diamond (cross-polytope) with sharp vertices along the coordinate axes \\(\pm 1, 0)\\ and \\(0, \pm 1)\\.
> - For \\k = 2\\, the unit ball is the smooth round Euclidean unit disk.
> - For \\k = \infty\\, the unit ball is an axis-aligned square with vertices \\(\pm 1, \pm 1)\\.
>
> In regression and machine learning, adding an \\\ell_1\\ penalty (Lasso regularization) to an objective function encourages sparse solutions: the level curves of the loss function tend to make contact with the sharp corners of the \\\ell_1\\ unit ball on the coordinate axes, setting irrelevant feature weights exactly to zero. In contrast, the smooth spherical \\\ell_2\\ penalty (Ridge regularization) shrinks all weights toward zero without setting them exactly to zero.

> **NOTE:**
>
> **Theorem 5 (The \\\ell_1\\, \\\ell_2\\ and infinity norms, and the norm axioms)** Let \\\tilde{x}= (x_1, \ldots, x_p) \in \mathbb{R}^p\\.
>
> 1.  \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_1 = \sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}\\, and \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_2 = \sqrt{\sum\_{i=1}^px_i^2}\\, which is the Euclidean norm ([Definition 14 in Vectors](linear-algebra-vectors.llms.md#def-euclidean-norm)).
> 2.  \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty = \lim\_{k \to \infty} \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k\\.
> 3.  For every real number \\k \ge 1\\, and for \\k = \infty\\, \\\mathopen{}\left\lVert\cdot\right\rVert\mathclose{}\_k\\ is a norm on \\\mathbb{R}^p\\ ([Definition 4](#def-norm)).

> **NOTE:**
>
> *Proof*. **Part 1.** Setting \\k = 1\\ in [Definition 5](#def-vector-p-norm) gives \\\mathopen{}\left(\sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}\right)\mathclose{}^{1/1} = \sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}\\. Setting \\k = 2\\ gives \\\mathopen{}\left(\sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}^2\right)\mathclose{}^{1/2}\\, and \\\mathopen{}\left\|x_i\right\|\mathclose{}^2 = x_i^2\\ for every real number \\x_i\\.
>
> **Part 2.** If \\\tilde{x}= \tilde{0}\\, every \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k\\ is \\0\\, and so is \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty\\. Otherwise, let \\M \stackrel{\text{def}}{=}\max_i \mathopen{}\left\|x_i\right\|\mathclose{} \> 0\\, and pick \\j\\ with \\\mathopen{}\left\|x_j\right\|\mathclose{} = M\\. Every term of \\\sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}^k\\ is at most \\M^k\\, and the \\j\\th term equals \\M^k\\, so
>
> \\ M^k \le \sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}^k \le p\\M^k. \\
>
> Taking the \\1/k\\ power, which preserves order on \\\[0, \infty)\\, gives
>
> \\ M \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k \le p^{1/k} M. \\
>
> As \\k \to \infty\\, \\p^{1/k} = \operatorname{exp}\mathopen{}\left\\\frac{\ln p}{k}\right\\\mathclose{} \to 1\\, so \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k\\ is squeezed between \\M\\ and a quantity that tends to \\M\\. Thus \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k \to M = \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty\\.
>
> **Part 3, finite \\k\\.**
>
> - *Positivity and definiteness.* Each term \\\mathopen{}\left\|x_i\right\|\mathclose{}^k\\ is at least \\0\\, so \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k \ge 0\\. The sum \\\sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}^k\\ is \\0\\ exactly when every term is \\0\\, that is, when \\\tilde{x}= \tilde{0}\\.
>
> - *Absolute homogeneity.* For a number \\c\\,
>
>   \\ \begin{aligned} \mathopen{}\left\lVert c\\\tilde{x}\right\rVert\mathclose{}\_k &= \mathopen{}\left(\sum\_{i=1}^p\mathopen{}\left\|c\\x_i\right\|\mathclose{}^k\right)\mathclose{}^{1/k} && \text{(definition)} \\ &= \mathopen{}\left(\mathopen{}\left\|c\right\|\mathclose{}^k \sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}^k\right)\mathclose{}^{1/k} && \text{(} \mathopen{}\left\|c\\x_i\right\|\mathclose{} = \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\|x_i\right\|\mathclose{} \text{, and factor out } \mathopen{}\left\|c\right\|\mathclose{}^k \text{)} \\ &= \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k. && \text{(take the } 1/k \text{ power of each factor)} \end{aligned} \\
>
> - *Triangle inequality.* Let \\\tilde{y}\in \mathbb{R}^p\\. If \\\tilde{x}= \tilde{0}\\ or \\\tilde{y}= \tilde{0}\\, both sides of \\\mathopen{}\left\lVert\tilde{x}+ \tilde{y}\right\rVert\mathclose{}\_k \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\_k\\ are equal. Otherwise, let \\a \stackrel{\text{def}}{=}\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k \> 0\\, \\b \stackrel{\text{def}}{=}\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\_k \> 0\\, \\\lambda \stackrel{\text{def}}{=}\frac{a}{a + b}\\, \\\tilde{u} \stackrel{\text{def}}{=}\tilde{x}/ a\\ and \\\tilde{v} \stackrel{\text{def}}{=}\tilde{y}/ b\\. By absolute homogeneity, \\\mathopen{}\left\lVert\tilde{u}\right\rVert\mathclose{}\_k = \mathopen{}\left\lVert\tilde{v}\right\rVert\mathclose{}\_k = 1\\, and
>
>   \\ \frac{\tilde{x}+ \tilde{y}}{a + b} = \lambda\\\tilde{u} + (1 - \lambda)\\\tilde{v}. \\
>
>   The function \\s \mapsto s^k\\ is non-decreasing and convex on \\\[0, \infty)\\ (its second derivative \\k (k - 1) s^{k - 2}\\ is nonnegative). So for each coordinate \\i\\,
>
>   \\ \begin{aligned} \mathopen{}\left\|\lambda u_i + (1 - \lambda) v_i\right\|\mathclose{}^k &\le \mathopen{}\left(\lambda \mathopen{}\left\|u_i\right\|\mathclose{} + (1 - \lambda) \mathopen{}\left\|v_i\right\|\mathclose{}\right)\mathclose{}^k && \text{(triangle inequality for numbers; } s^k \text{ is non-decreasing)} \\ &\le \lambda \mathopen{}\left\|u_i\right\|\mathclose{}^k + (1 - \lambda) \mathopen{}\left\|v_i\right\|\mathclose{}^k. && \text{(} s^k \text{ is convex)} \end{aligned} \\
>
>   Summing over \\i\\, and using \\\sum\_{i=1}^p\mathopen{}\left\|u_i\right\|\mathclose{}^k = \mathopen{}\left\lVert\tilde{u}\right\rVert\mathclose{}\_k^k = 1\\ and likewise for \\\tilde{v}\\,
>
>   \\ \mathopen{}\left\lVert\lambda\\\tilde{u} + (1 - \lambda)\\\tilde{v}\right\rVert\mathclose{}\_k^k \le \lambda + (1 - \lambda) = 1. \\
>
>   So \\\mathopen{}\left\lVert\tilde{x}+ \tilde{y}\right\rVert\mathclose{}\_k / (a + b) \le 1\\ by absolute homogeneity, that is, \\\mathopen{}\left\lVert\tilde{x}+ \tilde{y}\right\rVert\mathclose{}\_k \le a + b\\.
>
> **Part 3, \\k = \infty\\.** Every \\\mathopen{}\left\|x_i\right\|\mathclose{}\\ is at least \\0\\, and the largest of them is \\0\\ exactly when \\\tilde{x}= \tilde{0}\\. For a number \\c\\, \\\max_i \mathopen{}\left\|c\\x_i\right\|\mathclose{} = \mathopen{}\left\|c\right\|\mathclose{} \max_i \mathopen{}\left\|x_i\right\|\mathclose{}\\. For each \\i\\,
>
> \\ \begin{aligned} \mathopen{}\left\|x_i + y_i\right\|\mathclose{} &\le \mathopen{}\left\|x_i\right\|\mathclose{} + \mathopen{}\left\|y_i\right\|\mathclose{} && \text{(triangle inequality for numbers)} \\ &\le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\_\infty, && \text{(each is at most the maximum)} \end{aligned} \\
>
> and taking the maximum over \\i\\ on the left gives \\\mathopen{}\left\lVert\tilde{x}+ \tilde{y}\right\rVert\mathclose{}\_\infty \le \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_\infty + \mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}\_\infty\\.

> **NOTE:**
>
> **Example 12 (The \\\ell_k\\ norm approaches the maximum norm as \\k\\ grows)** Take \\\tilde{x}= (3, -4)\\ and \\\tilde{y}= (-1, 5)\\ in \\\mathbb{R}^2\\. The code computes \\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\_k\\ for several values of \\k\\, including \\k = \infty\\ as the maximum, and checks the triangle inequality for \\\tilde{x}\\ and \\\tilde{y}\\ at each of them.
>
> ``` downlit
> lk_norm <- function(x, k) {
>   if (is.infinite(k)) max(abs(x)) else sum(abs(x)^k)^(1 / k)
> }
>
> x <- c(3, -4)
> y <- c(-1, 5)
> ks <- c(1, 2, 4, 8, 16, 32, 64, Inf)
> norms <- sapply(ks, function(k) lk_norm(x, k))
> triangle <- sapply(
>   ks,
>   function(k) lk_norm(x + y, k) <= lk_norm(x, k) + lk_norm(y, k)
> )
> data.frame(k = ks, norm = norms, triangle_holds = triangle)
> ```
>
> By part 1 of [Theorem 5](#thm-vector-p-norm), the \\\ell_1\\ norm 7 equals \\\mathopen{}\left\|3\right\|\mathclose{} + \mathopen{}\left\|-4\right\|\mathclose{} = 7\\, and the \\\ell_2\\ norm 5 equals \\\sqrt{3^2 + (-4)^2} = 5\\. By part 2, the norms approach the maximum norm 4: at \\k = 64\\ the \\\ell_k\\ norm is within 0.00000000063 of it. By part 3, the triangle inequality holds at all 8 of the 8 values of \\k\\.

> **NOTE:**
>
> **Definition 6 (Cosine and sine)** The *unit circle* is the set of points \\(x_1, x_2)\\ in the plane with \\x_1^2 + x_2^2 = 1\\, and \\\pi \approx 3.14159\\ is half of its circumference. For a real number \\\theta\\, start at the point \\(1, 0)\\ and move a distance \\\mathopen{}\left\|\theta\right\|\mathclose{}\\ along the unit circle, counterclockwise if \\\theta\ge 0\\ and clockwise if \\\theta\< 0\\. The point reached is \\(\cos\theta, \sin\theta)\\: its first coordinate is the **cosine** of \\\theta\\, and its second coordinate is the **sine** of \\\theta\\.

> **NOTE:**
>
> **Example 13 (Cosines and sines of some angles)**  
>
> - \\\theta= 0\\ stays at \\(1, 0)\\, so \\\cos 0 = 1\\ and \\\sin 0 = 0\\.
>
> - \\\theta= \pi\\ goes half way around the circle, to \\(-1, 0)\\, so \\\cos\pi = -1\\ and \\\sin\pi = 0\\.
>
> - \\\theta= \pi/2\\ goes a quarter of the way round, to \\(0, 1)\\, so \\\cos(\pi/2) = 0\\ and \\\sin(\pi/2) = 1\\.
>
> - \\\theta= \pi/4\\ goes an eighth of the way round, to the point of the circle with \\x_1 = x_2 \> 0\\. There \\x_1^2 + x_1^2 = 1\\, so \\x_1^2 = \tfrac{1}{2}\\ and \\x_1 = \tfrac{1}{\sqrt{2}} \approx 0.7071\\:
>
>   \\ \begin{aligned} \cos(\pi/4) &= \sin(\pi/4) \\ &= \tfrac{1}{\sqrt{2}}. \end{aligned} \\
>
> Angles are also measured in *degrees*, with a full turn of \\2\pi\\ equal to \\360\\ degrees, so \\\pi/2\\ is \\90\\ degrees and \\\pi/4\\ is \\45\\ degrees.

> **NOTE:**
>
> **Definition 7 (Angle between two vectors)** The **angle** between two nonzero vectors \\\tilde{x}, \tilde{y} \in \mathbb{R}^p\\ is the unique number \\\theta\in \[0, \pi\]\\ whose cosine ([Definition 6](#def-cosine-sine)) satisfies
>
> \\ \cos\theta= \frac{\tilde{x} \cdot \tilde{y}}{\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}}. \\

> **NOTE:**
>
> *Remark 3* (Why the angle is well defined). The denominator is positive, because both vectors are nonzero ([Theorem 1](#thm-norm-properties)), and by [Theorem 3](#thm-cauchy-schwarz) the ratio lies between \\-1\\ and \\1\\. On \\\[0, \pi\]\\, \\\cos\\ is decreasing from \\1\\ to \\-1\\ and takes each value in \\\[-1, 1\]\\ exactly once, so there is exactly one such \\\theta\\. The angle is \\\pi/2\\ exactly when \\\tilde{x} \cdot \tilde{y} = 0\\, so for nonzero vectors, orthogonal ([Definition 13 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)) means at a right angle.

> **NOTE:**
>
> **Example 14 (Some angles in the plane)**  
>
> - \\(1, 0)\\ and \\(1, 1)\\: \\\cos\theta= \frac{1}{1 \cdot\sqrt{2}}\\, so \\\theta= \pi/4\\.
>
> - \\(1, 2)\\ and \\(-2, 1)\\:
>
>   \\ \begin{aligned} \cos\theta&= \frac{-2 + 2}{\sqrt{5}\\\sqrt{5}} \\ &= 0, \end{aligned} \\
>
>   so \\\theta= \pi/2\\.
>
> - \\(1, 0)\\ and \\(-3, 0)\\:
>
>   \\ \begin{aligned} \cos\theta&= \frac{-3}{1 \cdot 3} \\ &= -1, \end{aligned} \\
>
>   so \\\theta= \pi\\.
>
> - \\(1, 0)\\ and \\\tilde{0}\\: there is no angle, because the ratio would divide by \\\mathopen{}\left\lVert\tilde{0}\right\rVert\mathclose{} = 0\\.

> **NOTE:**
>
> **Definition 8 (Cosine similarity)** The **cosine similarity** between two nonzero vectors \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\ is the cosine of the angle between them ([Definition 7](#def-angle)):
>
> \\ \operatorname{cossim}(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}\frac{\tilde{x}\cdot \tilde{y}}{\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}}. \\
>
> In a general real inner product space ([Definition 2](#def-inner-product-space)) with inner product \\\left\langle \cdot, \cdot \right\rangle\\ and induced norm \\\mathopen{}\left\lVert\cdot\right\rVert\mathclose{}\\, the cosine similarity is
>
> \\ \operatorname{cossim}(\tilde{x}, \tilde{y}) \stackrel{\text{def}}{=}\frac{\left\langle \tilde{x}, \tilde{y} \right\rangle}{\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}}. \\

> **NOTE:**
>
> **Example 15 (Cosine similarity of parallel, orthogonal, and arbitrary vectors)** For vectors in \\\mathbb{R}^2\\:
>
> - Parallel vectors \\\tilde{x}= (1, 2)\\ and \\\tilde{y}= (2, 4)\\:
>
>   \\ \begin{aligned} \operatorname{cossim}(\tilde{x}, \tilde{y}) &= \frac{2 + 8}{\sqrt{5}\\\sqrt{20}} \\ &= \frac{10}{10} \\ &= 1. \end{aligned} \\
>
> - Orthogonal vectors \\\tilde{x}= (1, 2)\\ and \\\tilde{y}= (-2, 1)\\:
>
>   \\ \begin{aligned} \operatorname{cossim}(\tilde{x}, \tilde{y}) &= \frac{-2 + 2}{\sqrt{5}\\\sqrt{5}} \\ &= \frac{0}{5} \\ &= 0. \end{aligned} \\
>
> - Arbitrary vectors \\\tilde{x}= (1, 0)\\ and \\\tilde{y}= (1, 1)\\:
>
>   \\ \begin{aligned} \operatorname{cossim}(\tilde{x}, \tilde{y}) &= \frac{1 \cdot 1 + 0 \cdot 1}{1 \cdot\sqrt{2}} \\ &= \frac{1}{\sqrt{2}}. \end{aligned} \\
>
> When both vectors have unit Euclidean norm (\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} = 1\\ and \\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} = 1\\), cosine similarity equals their inner product: \\\operatorname{cossim}(\tilde{x}, \tilde{y}) = \left\langle \tilde{x}, \tilde{y} \right\rangle\\.

## 3 Orthonormal bases and Gram-Schmidt

> **NOTE:**
>
> Like [Section 2](#sec-cauchy-schwarz), this section is adapted from Zhou ([2024](#ref-zhou2024vector)), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source leaves the proof that orthonormal vectors are linearly independent to class; it is written out here.

> **NOTE:**
>
> **Theorem 6 (The dot product of a vector with a linear combination)** For vectors \\\tilde{x}, \tilde{u}\_1, \ldots, \tilde{u}\_k \in \mathbb{R}^p\\ and numbers \\c_1, \ldots, c_k\\, with \\k \ge 1\\,
>
> \\ \tilde{x} \cdot \mathopen{}\left(\sum\_{j=1}^{k} c_j \tilde{u}\_j\right)\mathclose{} = \sum\_{j=1}^{k} c_j\\(\tilde{x} \cdot \tilde{u}\_j). \\

> **NOTE:**
>
> *Proof*. Write \\u\_{ji}\\ for entry \\i\\ of \\\tilde{u}\_j\\. Then
>
> \\ \begin{aligned} \tilde{x} \cdot \mathopen{}\left(\sum\_{j=1}^{k} c_j \tilde{u}\_j\right)\mathclose{} &= \sum\_{i=1}^px_i \sum\_{j=1}^{k} c_j u\_{ji} && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{, }\href{linear-algebra-vectors.qmd#def-linear-combination}{\text{Definition~8 in Vectors}}\text{)} \\ &= \sum\_{i=1}^p\sum\_{j=1}^{k} x_i c_j u\_{ji} && \text{(distribute each } x_i \text{ over the inner sum)} \\ &= \sum\_{j=1}^{k} \sum\_{i=1}^px_i c_j u\_{ji} && \text{(swap the order of the finite sums)} \\ &= \sum\_{j=1}^{k} \sum\_{i=1}^pc_j x_i u\_{ji} && \text{(commute the factors in each product)} \\ &= \sum\_{j=1}^{k} c_j \sum\_{i=1}^px_i u\_{ji} && \text{(factor } c_j \text{ out of the inner sum)} \\ &= \sum\_{j=1}^{k} c_j\\(\tilde{x} \cdot \tilde{u}\_j). && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~7 in Vectors}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 16 (Dotting with a combination of three vectors)** Let \\\tilde{x} = (1, 2, 3)\\ and take the combination \\2\\(1, 0, 0) - (0, 1, 0) + 4\\(0, 0, 1) = (2, -1, 4)\\. Directly,
>
> \\ \begin{aligned} \tilde{x} \cdot (2, -1, 4) &= 2 - 2 + 12 \\ &= 12. \end{aligned} \\
>
> By [Theorem 6](#thm-dot-linear-sum), \\2 \cdot 1 - 1 \cdot 2 + 4 \cdot 3 = 12\\, the same number.

> **NOTE:**
>
> **Theorem 7 (Orthonormal vectors are linearly independent)** If \\\tilde{q}\_1, \ldots, \tilde{q}\_k\\ are orthonormal ([Definition 17 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)), then they are linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)).

> **NOTE:**
>
> *Proof*. Suppose \\\sum\_{j=1}^{k} c_j \tilde{q}\_j = \tilde{0}\\, and fix any \\i\\ between \\1\\ and \\k\\. Then
>
> \\ \begin{aligned} 0 &= \tilde{q}\_i \cdot \tilde{0} && \text{(every term of the dot product is } 0 \text{)} \\ &= \tilde{q}\_i \cdot \mathopen{}\left(\sum\_{j=1}^{k} c_j \tilde{q}\_j\right)\mathclose{} && \text{(substitute the supposed equation)} \\ &= \sum\_{j=1}^{k} c_j\\(\tilde{q}\_i \cdot \tilde{q}\_j) && \text{(}\href{#thm-dot-linear-sum}{\text{Theorem~6}}\text{)} \\ &= c_i. && \text{(} \tilde{q}\_i \cdot \tilde{q}\_j \text{ is } 1 \text{ if } j = i \text{ and } 0 \text{ otherwise)} \end{aligned} \\
>
> So every \\c_i = 0\\.

> **NOTE:**
>
> **Example 17 (Three orthonormal vectors in \\\mathbb{R}^3\\)** Let
>
> \\ \tilde{q}\_1 = (0, 0, 1), \quad \tilde{q}\_2 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0), \quad \tilde{q}\_3 = \tfrac{1}{\sqrt{2}}\\(1, -1, 0). \\
>
> Each has norm \\1\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tilde{q}\_2\right\rVert\mathclose{}^2 &= \tfrac{1}{2}\\(1 + 1 + 0) \\ &= 1, \end{aligned} \\
>
> and likewise for the others. They are mutually orthogonal: \\\tilde{q}\_1 \cdot \tilde{q}\_2 = 0\\ and \\\tilde{q}\_1 \cdot \tilde{q}\_3 = 0\\, because \\\tilde{q}\_1\\ has its only nonzero entry where the others have \\0\\, and
>
> \\ \begin{aligned} \tilde{q}\_2 \cdot \tilde{q}\_3 &= \tfrac{1}{2}\\(1 - 1 + 0) \\ &= 0. \end{aligned} \\
>
> So by [Theorem 7](#thm-orthonormal-independent) they are linearly independent, with no need to solve \\c_1 \tilde{q}\_1 + c_2 \tilde{q}\_2 + c_3 \tilde{q}\_3 = \tilde{0}\\.
>
> The converse fails: \\(1, 0)\\ and \\(1, 1)\\ are linearly independent, since \\c_1 (1, 0) + c_2 (1, 1) = (c_1 + c_2, c_2)\\ is \\\tilde{0}\\ only if \\c_2 = 0\\ and then \\c_1 = 0\\, but they are not orthonormal, since \\(1, 0) \cdot (1, 1) = 1 \ne 0\\.

> **NOTE:**
>
> **Definition 9 (Orthonormal basis)** An **orthonormal basis** of a subspace \\\mathcal{S}\\ of \\\mathbb{R}^p\\ is a basis of \\\mathcal{S}\\ ([Definition 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-basis)) whose vectors are orthonormal ([Definition 17 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)).

> **NOTE:**
>
> **Example 18 (Orthonormal bases of \\\mathbb{R}^3\\)**  
>
> - The indicator vectors \\\tilde{e}\_1, \tilde{e}\_2, \tilde{e}\_3\\ are orthonormal
>   2.  and a basis of \\\mathbb{R}^3\\ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)).
> - The vectors \\\tilde{q}\_1, \tilde{q}\_2, \tilde{q}\_3\\ of [Example 17](#exm-orthonormal-independent) are orthonormal and linearly independent, so they are a basis of their span ([Definition 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-basis)), which therefore has dimension \\3\\ ([Definition 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)) and is all of \\\mathbb{R}^3\\ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim), [Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)). So they are an orthonormal basis of \\\mathbb{R}^3\\ too.

> **NOTE:**
>
> **Example 19 (Bases that are not orthonormal, and orthonormal lists that are not bases)**  
>
> - \\(1, 0), (1, 1)\\ is a basis of \\\mathbb{R}^2\\ ([Example 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-basis)). It is not an orthonormal basis, since \\(1, 0) \cdot (1, 1) = 1\\.
> - \\(1, 0, 0), (0, 1, 0)\\ is orthonormal but not a basis of \\\mathbb{R}^3\\: its span is the plane \\z = 0\\ ([Example 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-span)), which does not contain \\(0, 0, 1)\\.

> **NOTE:**
>
> **Theorem 8 (Coordinates in an orthonormal basis are dot products)** If \\\tilde{q}\_1, \ldots, \tilde{q}\_k\\ is an orthonormal basis of a subspace \\\mathcal{S}\\ ([Definition 9](#def-orthonormal-basis)), then every \\\tilde{x} \in \mathcal{S}\\ satisfies
>
> \\ \tilde{x} = \sum\_{i=1}^{k} (\tilde{q}\_i \cdot \tilde{x})\\\tilde{q}\_i. \\

> **NOTE:**
>
> *Proof*. The basis spans \\\mathcal{S}\\, so \\\tilde{x} = \sum\_{j=1}^{k} c_j \tilde{q}\_j\\ for some numbers \\c_j\\. For each \\i\\,
>
> \\ \begin{aligned} \tilde{q}\_i \cdot \tilde{x} &= \tilde{q}\_i \cdot \mathopen{}\left(\sum\_{j=1}^{k} c_j \tilde{q}\_j\right)\mathclose{} && \text{(substitute)} \\ &= \sum\_{j=1}^{k} c_j\\(\tilde{q}\_i \cdot \tilde{q}\_j) && \text{(}\href{#thm-dot-linear-sum}{\text{Theorem~6}}\text{)} \\ &= c_i, && \text{(}\href{linear-algebra-vectors.qmd#def-orthonormal-vectors}{\text{Definition~17 in Vectors}}\text{)} \end{aligned} \\
>
> so each coefficient \\c_i\\ is \\\tilde{q}\_i \cdot \tilde{x}\\.

> **NOTE:**
>
> **Example 20 (Expanding a vector in an orthonormal basis)** With the orthonormal basis \\\tilde{q}\_1, \tilde{q}\_2, \tilde{q}\_3\\ of \\\mathbb{R}^3\\ from [Example 18](#exm-orthonormal-basis) and \\\tilde{x} = (1, 2, 3)\\: \\\tilde{q}\_1 \cdot \tilde{x} = 3\\,
>
> \\ \begin{aligned} \tilde{q}\_2 \cdot \tilde{x} &= \tfrac{1}{\sqrt{2}}\\(1 + 2) \\ &= \tfrac{3}{\sqrt{2}} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \tilde{q}\_3 \cdot \tilde{x} &= \tfrac{1}{\sqrt{2}}\\(1 - 2) \\ &= -\tfrac{1}{\sqrt{2}}. \end{aligned} \\
>
> Then
>
> \\ \begin{aligned} \sum\_{i=1}^{3} (\tilde{q}\_i \cdot \tilde{x})\\\tilde{q}\_i &= 3\\(0, 0, 1) + \tfrac{3}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\\(1, 1, 0) - \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\\(1, -1, 0) && \text{(substitute)} \\ &= (0, 0, 3) + \mathopen{}\left(\tfrac{3}{2}, \tfrac{3}{2}, 0\right)\mathclose{} + \mathopen{}\left(-\tfrac{1}{2}, \tfrac{1}{2}, 0\right)\mathclose{} && \text{(multiply out each term)} \\ &= (1, 2, 3), && \text{(add entrywise)} \end{aligned} \\
>
> which is \\\tilde{x}\\, as [Theorem 8](#thm-orthonormal-expansion) says.

> **NOTE:**
>
> **Definition 10 (Gram-Schmidt process)** The **Gram-Schmidt process** takes vectors \\\tilde{a}\_1, \ldots, \tilde{a}\_k \in \mathbb{R}^p\\ and, for \\i = 1, 2, \ldots, k\\ in turn:
>
> 1.  **Orthogonalize:** \\\tilde{\tilde{q}}\_i \stackrel{\text{def}}{=}\tilde{a}\_i - \sum\_{j=1}^{i-1} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j\\ (for \\i = 1\\ the sum is empty, so \\\tilde{\tilde{q}}\_1 = \tilde{a}\_1\\);
> 2.  **Test:** if \\\tilde{\tilde{q}}\_i = \tilde{0}\\, stop;
> 3.  **Normalize:** \\\tilde{q}\_i \stackrel{\text{def}}{=}\tilde{\tilde{q}}\_i / \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\.
>
> The output is the list \\\tilde{q}\_1, \tilde{q}\_2, \ldots\\ produced before the process stops, or all \\k\\ of them if it never stops.

> **NOTE:**
>
> **Example 21 (Two steps of Gram-Schmidt in \\\mathbb{R}^3\\)** Let \\\tilde{a}\_1 = (1, 1, 0)\\ and \\\tilde{a}\_2 = (1, 0, 1)\\.
>
> - **Step 1.** \\\tilde{\tilde{q}}\_1 = (1, 1, 0)\\, with norm \\\sqrt{2}\\, so \\\tilde{q}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0)\\.
>
> - **Step 2.**
>
>   \\ \begin{aligned} \tilde{q}\_1 \cdot \tilde{a}\_2 &= \tfrac{1}{\sqrt{2}}\\(1 + 0 + 0) \\ &= \tfrac{1}{\sqrt{2}}, \end{aligned} \\
>
>   so
>
>   \\ \begin{aligned} \tilde{\tilde{q}}\_2 &= (1, 0, 1) - \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\\(1, 1, 0) && \text{(orthogonalize)} \\ &= (1, 0, 1) - \mathopen{}\left(\tfrac{1}{2}, \tfrac{1}{2}, 0\right)\mathclose{} && \text{(multiply out)} \\ &= \mathopen{}\left(\tfrac{1}{2}, -\tfrac{1}{2}, 1\right)\mathclose{}, && \text{(subtract entrywise)} \end{aligned} \\
>
>   with norm \\\sqrt{\tfrac{1}{4} + \tfrac{1}{4} + 1} = \sqrt{\tfrac{3}{2}}\\, so
>
>   \\ \begin{aligned} \tilde{q}\_2 &= \sqrt{\tfrac{2}{3}}\\\mathopen{}\left(\tfrac{1}{2}, -\tfrac{1}{2}, 1\right)\mathclose{} \\ &= \tfrac{1}{\sqrt{6}}\\(1, -1, 2). \end{aligned} \\
>
> As a check,
>
> \\ \begin{aligned} \tilde{q}\_1 \cdot \tilde{q}\_2 &= \tfrac{1}{\sqrt{12}}\\(1 - 1 + 0) \\ &= 0. \end{aligned} \\

> **NOTE:**
>
> **Example 22 (Gram-Schmidt stops on dependent vectors)** Let \\\tilde{a}\_1 = (1, 2)\\ and \\\tilde{a}\_2 = (2, 4)\\. Step 1 gives \\\tilde{q}\_1 = \tfrac{1}{\sqrt{5}}\\(1, 2)\\. In step 2,
>
> \\ \begin{aligned} \tilde{q}\_1 \cdot \tilde{a}\_2 &= \tfrac{1}{\sqrt{5}}\\(2 + 8) \\ &= \tfrac{10}{\sqrt{5}}, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \tilde{\tilde{q}}\_2 &= (2, 4) - \tfrac{10}{\sqrt{5}} \cdot\tfrac{1}{\sqrt{5}}\\(1, 2) \\ &= (2, 4) - 2\\(1, 2) \\ &= \tilde{0}, \end{aligned} \\
>
> so the process stops: \\\tilde{a}\_2\\ is a multiple of \\\tilde{a}\_1\\.

> **NOTE:**
>
> **Theorem 9 (What Gram-Schmidt produces)** Run the Gram-Schmidt process ([Definition 10](#def-gram-schmidt)) on \\\tilde{a}\_1, \ldots, \tilde{a}\_k \in \mathbb{R}^p\\.
>
> 1.  If it has produced \\\tilde{q}\_1, \ldots, \tilde{q}\_i\\ without stopping, then \\\tilde{q}\_1, \ldots, \tilde{q}\_i\\ are orthonormal and \\\operatorname{span}\mathopen{}\left\\\tilde{q}\_1, \ldots, \tilde{q}\_i\right\\\mathclose{} = \operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_i\right\\\mathclose{}\\.
> 2.  If it reaches step \\i\\ (that is, it did not stop at steps \\1, \ldots, i - 1\\), it stops there exactly when \\\tilde{a}\_i \in \operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_{i-1}\right\\\mathclose{}\\.
> 3.  It completes all \\k\\ steps exactly when \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ are linearly independent; then \\\tilde{q}\_1, \ldots, \tilde{q}\_k\\ is an orthonormal basis of \\\operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_k\right\\\mathclose{}\\ ([Definition 9](#def-orthonormal-basis)).

> **NOTE:**
>
> *Proof*. **Parts 1 and 2, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\i\\.** Before step \\1\\, the list of \\\tilde{q}\\’s is empty, which is orthonormal, and both spans are \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)). Suppose part 1 holds after step \\i - 1\\, and write
>
> \\ \begin{aligned} \mathcal{S}\_{i-1} &= \operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_{i-1}\right\\\mathclose{} \\ &= \operatorname{span}\mathopen{}\left\\\tilde{q}\_1, \ldots, \tilde{q}\_{i-1}\right\\\mathclose{}. \end{aligned} \\
>
> The orthonormal vectors \\\tilde{q}\_1, \ldots, \tilde{q}\_{i-1}\\ are linearly independent ([Theorem 7](#thm-orthonormal-independent)) and span \\\mathcal{S}\_{i-1}\\, so they are an orthonormal basis of it.
>
> *\\\tilde{\tilde{q}}\_i\\ is orthogonal to the earlier \\\tilde{q}\\’s.* For each \\l \< i\\,
>
> \\ \begin{aligned} \tilde{q}\_l \cdot \tilde{\tilde{q}}\_i &= \tilde{q}\_l \cdot \mathopen{}\left(1\\\tilde{a}\_i + \sum\_{j=1}^{i-1} \mathopen{}\left(-\tilde{q}\_j \cdot \tilde{a}\_i\right)\mathclose{}\\\tilde{q}\_j\right)\mathclose{} && \text{(}\href{#def-gram-schmidt}{\text{Definition~10}}\text{, as a linear combination)} \\ &= 1\\(\tilde{q}\_l \cdot \tilde{a}\_i) + \sum\_{j=1}^{i-1} \mathopen{}\left(-\tilde{q}\_j \cdot \tilde{a}\_i\right)\mathclose{}\\(\tilde{q}\_l \cdot \tilde{q}\_j) && \text{(}\href{#thm-dot-linear-sum}{\text{Theorem~6}}\text{)} \\ &= \tilde{q}\_l \cdot \tilde{a}\_i - \sum\_{j=1}^{i-1} (\tilde{q}\_j \cdot \tilde{a}\_i)\\(\tilde{q}\_l \cdot \tilde{q}\_j) && \text{(} 1\\z = z \text{, and pull the minus signs out of the sum)} \\ &= \tilde{q}\_l \cdot \tilde{a}\_i - \tilde{q}\_l \cdot \tilde{a}\_i && \text{(only the } j = l \text{ term survives, }\href{linear-algebra-vectors.qmd#def-orthonormal-vectors}{\text{Definition~17 in Vectors}}\text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\
>
> *Part 2 at step \\i\\.* If \\\tilde{\tilde{q}}\_i = \tilde{0}\\, then \\\tilde{a}\_i = \sum\_{j\<i} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j \in \mathcal{S}\_{i-1}\\. Conversely, if \\\tilde{a}\_i \in \mathcal{S}\_{i-1}\\, then \\\tilde{a}\_i = \sum\_{j\<i} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j\\ ([Theorem 8](#thm-orthonormal-expansion)), so \\\tilde{\tilde{q}}\_i = \tilde{0}\\.
>
> *Part 1 at step \\i\\, if the process does not stop.* Then \\\tilde{\tilde{q}}\_i \ne \tilde{0}\\, so \\\mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{} \> 0\\, and \\\tilde{q}\_i = \tilde{\tilde{q}}\_i / \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\ has norm \\\mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{} / \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{} = 1\\ ([Theorem 1](#thm-norm-properties)) and for \\l \< i\\
>
> \\ \begin{aligned} \tilde{q}\_l \cdot \tilde{q}\_i &= \frac{1}{\mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}}\\(\tilde{q}\_l \cdot \tilde{\tilde{q}}\_i) && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dot-linear}{\text{Theorem~5 in Direct Sums and Orthogonal Complements}}\text{, special case } b = 0 \text{)} \\ &= 0, && \text{(} \tilde{\tilde{q}}\_i \text{ is orthogonal to } \tilde{q}\_l \text{)} \end{aligned} \\
>
> and \\\tilde{q}\_i \cdot \tilde{q}\_l = 0\\ too ([Theorem 1 in Vectors](linear-algebra-vectors.llms.md#thm-lincom-symmetric)). So \\\tilde{q}\_1, \ldots, \tilde{q}\_i\\ are orthonormal. For the spans:
>
> - \\\tilde{a}\_i = \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\\tilde{q}\_i + \sum\_{j\<i} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j\\ is in \\\operatorname{span}\mathopen{}\left\\\tilde{q}\_1, \ldots, \tilde{q}\_i\right\\\mathclose{}\\, and so is each of \\\tilde{a}\_1, \ldots, \tilde{a}\_{i-1}\\, which lie in \\\mathcal{S}\_{i-1} = \operatorname{span}\mathopen{}\left\\\tilde{q}\_1, \ldots, \tilde{q}\_{i-1}\right\\\mathclose{} \subseteq \operatorname{span}\mathopen{}\left\\\tilde{q}\_1, \ldots, \tilde{q}\_i\right\\\mathclose{}\\.
> - \\\tilde{q}\_i = \mathopen{}\left(\tilde{a}\_i - \sum\_{j\<i} (\tilde{q}\_j \cdot \tilde{a}\_i)\\\tilde{q}\_j\right)\mathclose{} / \mathopen{}\left\lVert\tilde{\tilde{q}}\_i\right\rVert\mathclose{}\\ is in \\\operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_i\right\\\mathclose{}\\, because each \\\tilde{q}\_j\\ with \\j \< i\\ lies in \\\mathcal{S}\_{i-1}\\; and so is each of \\\tilde{q}\_1, \ldots, \tilde{q}\_{i-1}\\.
>
> A span is a subspace ([Theorem 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-span-subspace)), so it contains every linear combination of vectors in it; each span therefore contains the other, and they are equal.
>
> **Part 3.** If the process completes, then \\\tilde{a}\_1 \notin \operatorname{span}\\ of the empty list, and for each \\i \ge 2\\, \\\tilde{a}\_i \notin \operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_{i-1}\right\\\mathclose{}\\ (part 2). Applying [Theorem 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-add-outside-span) \\k\\ times, starting from the empty list, shows that \\\tilde{a}\_1, \ldots, \tilde{a}\_k\\ are linearly independent. Conversely, if they are linearly independent, no \\\tilde{a}\_i\\ is a linear combination \\\sum\_{j\<i} c_j \tilde{a}\_j\\ of the earlier ones, because then \\\sum\_{j\<i} c_j \tilde{a}\_j - \tilde{a}\_i = \tilde{0}\\ would be a combination with a nonzero coefficient; so by part 2 the process never stops. When it completes, \\\tilde{q}\_1, \ldots, \tilde{q}\_k\\ are orthonormal, hence linearly independent ([Theorem 7](#thm-orthonormal-independent)), and span \\\operatorname{span}\mathopen{}\left\\\tilde{a}\_1, \ldots, \tilde{a}\_k\right\\\mathclose{}\\ (part 1), so they are an orthonormal basis of it.

> **NOTE:**
>
> **Example 23 (Finishing an orthonormal basis of \\\mathbb{R}^3\\)** Continue [Example 21](#exm-gram-schmidt) with \\\tilde{a}\_3 = (0, 1, 1)\\. \\\tilde{q}\_1 \cdot \tilde{a}\_3 = \tfrac{1}{\sqrt{2}}\\ and
>
> \\ \begin{aligned} \tilde{q}\_2 \cdot \tilde{a}\_3 &= \tfrac{1}{\sqrt{6}}\\(0 - 1 + 2) \\ &= \tfrac{1}{\sqrt{6}}, \end{aligned} \\
>
> so
>
> \\ \begin{aligned} \tilde{\tilde{q}}\_3 &= (0, 1, 1) - \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\\(1, 1, 0) - \tfrac{1}{\sqrt{6}} \cdot\tfrac{1}{\sqrt{6}}\\(1, -1, 2) && \text{(orthogonalize)} \\ &= (0, 1, 1) - \tfrac{1}{2}\\(1, 1, 0) - \tfrac{1}{6}\\(1, -1, 2) && \text{(multiply the scalars)} \\ &= \mathopen{}\left(0 - \tfrac{1}{2} - \tfrac{1}{6},\\ 1 - \tfrac{1}{2} + \tfrac{1}{6},\\ 1 - 0 - \tfrac{2}{6}\right)\mathclose{} && \text{(subtract entrywise)} \\ &= \mathopen{}\left(-\tfrac{2}{3}, \tfrac{2}{3}, \tfrac{2}{3}\right)\mathclose{}, && \text{(arithmetic)} \end{aligned} \\
>
> with norm \\\sqrt{3 \cdot\tfrac{4}{9}} = \tfrac{2}{\sqrt{3}}\\, so \\\tilde{q}\_3 = \tfrac{1}{\sqrt{3}}\\(-1, 1, 1)\\. The process did not stop, so by [Theorem 9](#thm-gram-schmidt) \\\tilde{a}\_1, \tilde{a}\_2, \tilde{a}\_3\\ are linearly independent and \\\tilde{q}\_1, \tilde{q}\_2, \tilde{q}\_3\\ is an orthonormal basis of their span. That span therefore has dimension \\3\\ ([Definition 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)), so it is \\\mathbb{R}^3\\ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim), [Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)). As a check,
>
> \\ \begin{aligned} \tilde{q}\_1 \cdot \tilde{q}\_3 &= \tfrac{1}{\sqrt{6}}\\(-1 + 1 + 0) \\ &= 0 \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \tilde{q}\_2 \cdot \tilde{q}\_3 &= \tfrac{1}{\sqrt{18}}\\(-1 - 1 + 2) \\ &= 0. \end{aligned} \\

> **NOTE:**
>
> **Corollary 1 (Every subspace has an orthonormal basis)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\. Every orthonormal list of vectors in \\\mathcal{S}\\ extends to an orthonormal basis of \\\mathcal{S}\\ ([Definition 9](#def-orthonormal-basis)). Starting from the empty list shows that \\\mathcal{S}\\ has an orthonormal basis.

> **NOTE:**
>
> *Proof*. Let \\\tilde{u}\_1, \ldots, \tilde{u}\_r \in \mathcal{S}\\ be orthonormal. They are linearly independent ([Theorem 7](#thm-orthonormal-independent)), so they extend to a basis \\\tilde{u}\_1, \ldots, \tilde{u}\_r, \tilde{a}\_{r+1}, \ldots, \tilde{a}\_d\\ of \\\mathcal{S}\\ ([Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis)). Run the Gram-Schmidt process on this basis. It is linearly independent, so the process completes, and the output is an orthonormal basis of its span, which is \\\mathcal{S}\\ ([Theorem 9](#thm-gram-schmidt), part 3).
>
> The first \\r\\ outputs are \\\tilde{u}\_1, \ldots, \tilde{u}\_r\\ themselves, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\i \le r\\. Suppose the outputs before step \\i\\ are \\\tilde{u}\_1, \ldots, \tilde{u}\_{i-1}\\ (for \\i = 1\\ there are none, and the sum below is empty). Then
>
> \\ \begin{aligned} \tilde{\tilde{q}}\_i &= \tilde{u}\_i - \sum\_{j\<i} (\tilde{u}\_j \cdot \tilde{u}\_i)\\\tilde{u}\_j \\ &= \tilde{u}\_i, \end{aligned} \\
>
> because each \\\tilde{u}\_j \cdot \tilde{u}\_i = 0\\; \\\tilde{\tilde{q}}\_i = \tilde{u}\_i \ne \tilde{0}\\, because \\\mathopen{}\left\lVert\tilde{u}\_i\right\rVert\mathclose{} = 1\\, so the process does not stop; and
>
> \\ \begin{aligned} \tilde{q}\_i &= \tilde{u}\_i / \mathopen{}\left\lVert\tilde{u}\_i\right\rVert\mathclose{} \\ &= \tilde{u}\_i. \end{aligned} \\
>
> So the orthonormal basis contains the starting list.

> **NOTE:**
>
> **Example 24 (Extending one unit vector to an orthonormal basis of \\\mathbb{R}^3\\)** Start from the unit vector \\\tilde{u}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0)\\. Extend it to a basis of \\\mathbb{R}^3\\ as in [Example 18 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-extend-basis), starting from the empty list: \\\tilde{u}\_1\\ is not in the span of the empty list, \\\mathopen{}\left\\\tilde{0}\right\\\mathclose{}\\, because \\\mathopen{}\left\lVert\tilde{u}\_1\right\rVert\mathclose{} = 1\\; \\(1, 0, 0)\\ is not in \\\operatorname{span}\mathopen{}\left\\\tilde{u}\_1\right\\\mathclose{}\\, because every multiple of \\\tilde{u}\_1\\ has equal first and second entries, and \\(0, 0, 1)\\ is not in \\\operatorname{span}\mathopen{}\left\\\tilde{u}\_1, (1, 0, 0)\right\\\mathclose{}\\, because every combination of those two vectors has third entry \\0\\. So \\\tilde{u}\_1, (1, 0, 0), (0, 0, 1)\\ are linearly independent ([Theorem 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-add-outside-span)), and three linearly independent vectors in \\\mathbb{R}^3\\ are a basis of it (they are a basis of their span, which has dimension \\3\\ ([Definition 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)) and so is \\\mathbb{R}^3\\ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim), [Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension))). Gram-Schmidt on \\\tilde{u}\_1, (1, 0, 0), (0, 0, 1)\\:
>
> 1.  \\\tilde{q}\_1 = \tilde{u}\_1\\.
>
> 2.  \\\tilde{q}\_1 \cdot (1, 0, 0) = \tfrac{1}{\sqrt{2}}\\, so
>
>     \\ \begin{aligned} \tilde{\tilde{q}}\_2 &= (1, 0, 0) - \tfrac{1}{2}\\(1, 1, 0) \\ &= \mathopen{}\left(\tfrac{1}{2}, -\tfrac{1}{2}, 0\right)\mathclose{}, \end{aligned} \\
>
>     with norm \\\tfrac{1}{\sqrt{2}}\\, and \\\tilde{q}\_2 = \tfrac{1}{\sqrt{2}}\\(1, -1, 0)\\.
>
> 3.  \\(0, 0, 1)\\ is orthogonal to \\\tilde{q}\_1\\ and \\\tilde{q}\_2\\, so \\\tilde{\tilde{q}}\_3 = (0, 0, 1)\\, which already has norm \\1\\, and \\\tilde{q}\_3 = (0, 0, 1)\\.
>
> The result is the orthonormal basis of [Example 18](#exm-orthonormal-basis), in a different order.

## 4 Outer product

> **NOTE:**
>
> **Definition 11 (Outer product)** The **outer product** of a vector \\\tilde{u}\\ of length \\m\\ and a vector \\\tilde{v}\\ of length \\n\\ is the \\m \times n\\ matrix product ([Definition 7 in Matrices](linear-algebra-matrices.llms.md#def-matrix-mult)) \\\tilde{u}\\{\tilde{v}}^{\top}\\ of the column vector \\\tilde{u}\\ with the row vector \\{\tilde{v}}^{\top}\\. Its entries are
>
> \\ \mathopen{}\left(\underbrace{\tilde{u}}\_{m \times 1}\\\underbrace{{\tilde{v}}^{\top}}\_{1 \times n}\right)\mathclose{}\_{ij} = u_i v_j \qquad \text{(definition of matrix multiplication; the sum has one term)} \\

> **NOTE:**
>
> **Example 25 (An outer product)** For \\\tilde{u} = (1, 2, 3)\\ and \\\tilde{v} = (4, 5)\\:
>
> \\ \begin{aligned} \tilde{u}\\{\tilde{v}}^{\top} &= \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix} \begin{bmatrix} 4 & 5 \end{bmatrix} && \text{(definition of the outer product)} \\ &= \begin{bmatrix} 1 \cdot 4 & 1 \cdot 5 \\ 2 \cdot 4 & 2 \cdot 5 \\ 3 \cdot 4 & 3 \cdot 5 \end{bmatrix} && \text{(entry } (i, j) \text{ is } u_i v_j \text{)} \\ &= \begin{bmatrix} 4 & 5 \\ 8 & 10 \\ 12 & 15 \end{bmatrix} && \text{(multiply)} \end{aligned} \\

> **NOTE:**
>
> *Remark 4* (Outer product and dot product). The dot product \\{\tilde{u}}^{\top}\tilde{v}\\ ([Example 6 in Matrices](linear-algebra-matrices.llms.md#exm-dot-product-matmul)) needs two vectors of the same length and gives a number. The outer product \\\tilde{u}\\{\tilde{v}}^{\top}\\ takes vectors of any two lengths and gives a matrix ([Banerjee and Roy 2014, chap. 1](#ref-banerjee2014linear), p. 11).
>
> For example, \\\tilde{u} = (1, 2, 3)\\ and \\\tilde{v} = (4, 5)\\ in [Example 25](#exm-outer-product) have different lengths, so they have no dot product, but their outer product is a \\3 \times 2\\ matrix. For \\\tilde{a} = (1, 2)\\ and \\\tilde{b} = (3, 4)\\, which have the same length, both products exist:
>
> \\ \begin{aligned} {\tilde{a}}^{\top}\tilde{b} &= 1 \cdot 3 + 2 \cdot 4 \\ &= 11 \\ \tilde{a}\\{\tilde{b}}^{\top} &= \begin{bmatrix} 1 \cdot 3 & 1 \cdot 4 \\ 2 \cdot 3 & 2 \cdot 4 \end{bmatrix} \\ &= \begin{bmatrix} 3 & 4 \\ 6 & 8 \end{bmatrix} \end{aligned} \\

> **NOTE:**
>
> **Theorem 10 (An outer product has rank one)** If \\\tilde{u}\\ is a nonzero vector of length \\m\\ and \\\tilde{v}\\ is a nonzero vector of length \\n\\, then \\\operatorname{rank}(\tilde{u}\\{\tilde{v}}^{\top}) = 1\\ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)).

> **NOTE:**
>
> *Proof*. Column \\j\\ of \\\tilde{u}\\{\tilde{v}}^{\top}\\ has entries \\u_1 v_j, \ldots, u_m v_j\\, so it is the vector \\v_j \tilde{u}\\.
>
> **The rank is at least one.** Because \\\tilde{v} \neq \tilde{0}\\, some entry \\v_j\\ is nonzero. Then column \\j\\, \\v_j \tilde{u}\\, is a nonzero vector, and a single nonzero vector is linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)): \\c\\(v_j \tilde{u}) = \tilde{0}\\ forces \\c = 0\\.
>
> **The rank is at most one.** Take any two columns \\j \neq k\\. If
>
> \\ \begin{aligned} v_j &= v_k \\ &= 0, \end{aligned} \\
>
> both columns are \\\tilde{0}\\, and \\1 \cdot(v_j \tilde{u}) + 1 \cdot(v_k \tilde{u}) = \tilde{0}\\. Otherwise, use the coefficients \\c_j = v_k\\ and \\c_k = -v_j\\, which are not both zero:
>
> \\ \begin{aligned} v_k\\(v_j \tilde{u}) - v_j\\(v_k \tilde{u}) &= (v_k v_j - v_j v_k)\\\tilde{u} && \text{(collect the scalar multiples of } \tilde{u} \text{)} \\ &= 0 \cdot\tilde{u} && \text{(multiplication of numbers is commutative)} \\ &= \tilde{0} && \text{(a zero multiple of a vector is } \tilde{0}\text{)} \end{aligned} \\
>
> Either way, every pair of columns has a combination with coefficients that are not all zero and that equals \\\tilde{0}\\. Now take any set of two or more columns. It contains a pair \\j \neq k\\. Use that pair’s coefficients for columns \\j\\ and \\k\\, and the coefficient \\0\\ for every other column in the set. This combination equals \\\tilde{0}\\, and its coefficients are not all zero, so the set is not linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)). The largest linearly independent set of columns therefore has one column.

> **NOTE:**
>
> **Example 26 (The rank of an outer product)** In [Example 25](#exm-outer-product), the second column \\(5, 10, 15)\\ of \\\tilde{u}\\{\tilde{v}}^{\top}\\ is \\\frac{5}{4}\\ times the first column \\(4, 8, 12)\\, because the columns are \\v_1 \tilde{u} = 4\tilde{u}\\ and \\v_2 \tilde{u} = 5\tilde{u}\\. So the two columns are not linearly independent, and the \\3 \times 2\\ matrix has rank \\1\\.

Back to top

## References

Axler, Sheldon. 2024. *Linear Algebra Done Right*. 4th ed. Undergraduate Texts in Mathematics. Springer. <https://doi.org/10.1007/978-3-031-41026-0>.

Banerjee, Sudipto, and Anindya Roy. 2014. *Linear Algebra and Matrix Analysis for Statistics*. Vol. 181. Crc Press Boca Raton. <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>.

Zhou, Hua. 2024. *Vectors*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/02-vector/02-vector.html>.
