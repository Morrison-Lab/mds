# Inner Products and Orthogonality

Code

Published

Last modified: 2026-10-29 11:36:27 (PDT)

## 1 Inner products

> **NOTE:**
>
> **Definition 1 (Inner product)** An **inner product** [\[1\]](#ref-wikipedia_inner_product_space) on \\\mathbb{R}^p\\ is a function that assigns to each ordered pair of vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\ a real number \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\\, and that has the following four properties for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} \in \mathbb{R}^p\\ and all real numbers \\a, b\\:
>
> - **positivity**: \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rangle\mathclose{}} \ge 0\\;
> - **definiteness**: \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rangle\mathclose{}} = 0\\ if and only if \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\;
> - **linearity in the first slot**: \\{\mathopen{}\left\langle a\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ b\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\right\rangle\mathclose{}} = a\\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\right\rangle\mathclose{}} + b\\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\right\rangle\mathclose{}}\\;
> - **symmetry**: \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}} = {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}\\.

> **NOTE:**
>
> *Remark 1* (The definition in other sources). Axler [\[2\]](#ref-axler2024linear), Definition 6.2, p. 183 states the same definition for any vector space over the real or complex numbers. Axler splits linearity in the first slot into additivity and homogeneity, and his last property is *conjugate* symmetry, \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\right\rangle\mathclose{}} = \overline{{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\right\rangle\mathclose{}}}\\, which for real numbers is the same as symmetry. Symmetry and linearity in the first slot together give linearity in the second slot.

> **NOTE:**
>
> **Example 1 (The dot product is an inner product)** The dot product (1) is an inner product on \\\mathbb{R}^p\\, called the **Euclidean** or **standard** inner product. Each of the four properties in [Definition 1](#def-inner-product) holds:
>
> - **positivity**: \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \sum\_{i=1}^px_i^2\\ is a sum of squares, so it is at least \\0\\;
> - **definiteness**: a sum of squares is \\0\\ exactly when every term is \\0\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= 0\\ exactly when every \\x_i = 0\\, that is, when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\;
> - **linearity in the first slot**: this property is the first-slot half of [Theorem 5 in Direct Sums and Orthogonal Complements](linear-algebra-direct-sums.llms.md#thm-dot-linear);
> - **symmetry**: this property is [Theorem 1 in Vectors](linear-algebra-vectors.llms.md#thm-lincom-symmetric).
>
> For instance, with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, -2, 2)\\,
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= 1 \cdot 1 + (-2) \cdot(-2) + 2 \cdot 2 && \text{(definition of the dot product)} \\ &= 1 + 4 + 4 && \text{(multiply)} \\ &= 9 && \text{(add)} \end{aligned} \\
>
> which is positive, as positivity and definiteness require of a nonzero vector.

> **NOTE:**
>
> **Definition 2 (Inner product space)** A **real inner product space** [\[1\]](#ref-wikipedia_inner_product_space) is a pair \\(V, {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}})\\ of a real vector space \\V\\ and an inner product \\{\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\\ on it, a function with the four properties of [Definition 1](#def-inner-product). We say that \\V\\ is **equipped with** that inner product: the inner product is part of the data of the space, so the same set of vectors with a different inner product is a different inner product space. [Definition 1](#def-inner-product) states the properties for \\V = \mathbb{R}^p\\ ([Definition 2 in Vectors](linear-algebra-vectors.llms.md#def-real-coordinate-space)), and the same four properties define an inner product on other real vector spaces, such as spaces of matrices or functions.

> **NOTE:**
>
> **Example 2 (Real coordinate space as an inner product space)** The Euclidean space \\\mathbb{R}^p\\ equipped with the standard dot product (1), that is, the pair \\(\mathbb{R}^p, {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}})\\ with \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, is an inner product space, because the dot product satisfies the four inner product axioms ([Example 1](#exm-dot-product-inner-product)). For \\p = 2\\, any vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (x_1, x_2) \in \mathbb{R}^2\\ has squared norm \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rangle\mathclose{}} = x_1^2 + x_2^2 \ge 0\\, which is zero if and only if
>
> \\ \begin{aligned} x_1 &= x_2 \\ &= 0. \end{aligned} \\
>
> Equipping the same vector space \\\mathbb{R}^p\\ with different inner products yields different inner product spaces with different geometric notions of angle and distance on the same set of vectors.

> **NOTE:**
>
> **Example 3 (A weighted inner product)** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = (c_1, \ldots, c_p)\\ be a vector of positive numbers, and define
>
> \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} \stackrel{\text{def}}{=}\sum\_{i=1}^pc_i\\x_i y_i.\\
>
> This function is also an inner product on \\\mathbb{R}^p\\ [\[2\]](#ref-axler2024linear), Example 6.3(b), p. 184:
>
> - **positivity**: \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} = \sum\_{i=1}^pc_i\\x_i^2\\, and each term \\c_i\\x_i^2\\ is a positive number times a square, so the sum is at least \\0\\;
> - **definiteness**: a sum of nonnegative terms is \\0\\ exactly when every term is \\0\\, and \\c_i\\x_i^2 = 0\\ exactly when \\x_i = 0\\, because \\c_i \> 0\\; so \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} = 0\\ exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\;
> - **linearity in the first slot**: see the derivation after this list;
> - **symmetry**: \\c_i\\x_i y_i = c_i\\y_i x_i\\ for each \\i\\, so \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} = {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}}\\.
>
> For linearity in the first slot, take \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} \in \mathbb{R}^p\\ and real numbers \\a, b\\:
>
> \\ \begin{aligned} {\mathopen{}\left\langle a\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ b\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} &= \sum\_{i=1}^pc_i\\(a\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ b\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\_i\\z_i && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} \text{)} \\ &= \sum\_{i=1}^pc_i\\(a x_i + b y_i)\\z_i && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{, }\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~7 in Vectors}}\text{)} \\ &= \sum\_{i=1}^p\mathopen{}\left(a\\c_i x_i z_i + b\\c_i y_i z_i\right)\mathclose{} && \text{(distribute, and commute the factors in each product)} \\ &= \sum\_{i=1}^pa\\c_i x_i z_i + \sum\_{i=1}^pb\\c_i y_i z_i && \text{(split the finite sum)} \\ &= a \sum\_{i=1}^pc_i x_i z_i + b \sum\_{i=1}^pc_i y_i z_i && \text{(factor } a \text{ and } b \text{ out of the sums)} \\ &= a\\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} + b\\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} \text{)} \end{aligned} \\
>
> Different inner products can give different numbers for the same pair of vectors. With \\p = 2\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = (2, 1)\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 3)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (4, -1)\\:
>
> \\ \begin{aligned} {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} &= 2 \cdot 1 \cdot 4 + 1 \cdot 3 \cdot(-1) && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} \text{)} \\ &= 8 - 3 && \text{(multiply)} \\ &= 5 && \text{(subtract)} \end{aligned} \\
>
> while the dot product of the same vectors is
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} &= 1 \cdot 4 + 3 \cdot(-1) && \text{(definition of the dot product)} \\ &= 4 - 3 && \text{(multiply)} \\ &= 1 && \text{(subtract)} \end{aligned} \\

> **NOTE:**
>
> **Example 4 (Functions that are not inner products)** Each of these functions on \\\mathbb{R}^2\\ has some of the properties in [Definition 1](#def-inner-product), but not all four:
>
> - \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \stackrel{\text{def}}{=}x_1 y_1 - x_2 y_2\\ is symmetric, because \\x_i y_i = y_i x_i\\, and linear in the first slot, because it is a linear combination of \\x_1\\ and \\x_2\\ with coefficients \\y_1\\ and \\-y_2\\. It fails positivity: for \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (0, 1)\\,
>
>   \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= 0 \cdot 0 - 1 \cdot 1 \\ &= -1 \\ &\< 0. \end{aligned} \\
>
>   It also fails definiteness: for \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 1)\\,
>
>   \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= 1 \cdot 1 - 1 \cdot 1 \\ &= 0 \end{aligned} \\
>
>   although \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\.
>
> - \\g(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \stackrel{\text{def}}{=}x_1 y_1\\ is symmetric and linear in the first slot, for the same reasons as \\f\\, and has positivity, because \\g(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 \ge 0\\. It fails definiteness: for \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (0, 1)\\,
>
>   \\ \begin{aligned} g(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= 0 \cdot 0 \\ &= 0 \end{aligned} \\
>
>   although \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\.
>
> - \\h(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \stackrel{\text{def}}{=}\mathopen{}\left\|x_1 y_1\right\|\mathclose{} + \mathopen{}\left\|x_2 y_2\right\|\mathclose{}\\, where \\\mathopen{}\left\|\cdot\right\|\mathclose{}\\ is the [absolute value](algebra-basics.llms.md#def-absolute-value), is symmetric, because \\\mathopen{}\left\|x_i y_i\right\|\mathclose{} = \mathopen{}\left\|y_i x_i\right\|\mathclose{}\\, and has positivity and definiteness, because \\h(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2\\ is a sum of squares. It is not linear in the first slot: take
>
>   \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}&= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ &= (1, 0), \end{aligned} \\
>
>   \\a = -1\\ and \\b = 0\\; then
>
>   \\ \begin{aligned} h(a\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) &= \mathopen{}\left\|(-1) \cdot 1\right\|\mathclose{} + \mathopen{}\left\|0 \cdot 0\right\|\mathclose{} \\ &= 1, \end{aligned} \\
>
>   while
>
>   \\ \begin{aligned} a\\h(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) &= (-1) \cdot(\mathopen{}\left\|1 \cdot 1\right\|\mathclose{} + \mathopen{}\left\|0 \cdot 0\right\|\mathclose{}) \\ &= -1. \end{aligned} \\

> **NOTE:**
>
> **Definition 3 (Orthogonality in an inner product space)** In an inner product space ([Definition 2](#def-inner-product-space)) with inner product \\{\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\\, two vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ are **orthogonal with respect to** \\{\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\\, written \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\perp \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, if
>
> \\{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}} = 0\\
>
> [\[3\]](#ref-banerjee2014linear), Definition 7.3, p. 181.

> **NOTE:**
>
> **Example 5 (Orthogonality depends on the inner product)** Take the weighted inner product of [Example 3](#exm-weighted-inner-product) with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = (2, 1)\\, and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 2)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (1, -1)\\. Then
>
> \\ \begin{aligned} {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} &= 2 \cdot 1 \cdot 1 + 1 \cdot 2 \cdot(-1) && \text{(definition of } {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}} \text{)} \\ &= 2 - 2 && \text{(multiply)} \\ &= 0, && \text{(subtract)} \end{aligned} \\
>
> so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ are orthogonal with respect to \\{\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\_{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}}\\. They are not orthogonal with respect to the dot product, since
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}&= 1 \cdot 1 + 2 \cdot(-1) \\ &= -1 \\ &\ne 0. \end{aligned} \\

> **NOTE:**
>
> *Remark 2* (Orthogonality for the dot product). With the dot product as the inner product ([Example 1](#exm-dot-product-inner-product)), the condition of [Definition 3](#def-orthogonal-inner-product) is orthogonality as in [Definition 19 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors).

## 2 Cauchy-Schwarz and the triangle inequality

> **NOTE:**
>
> This section is adapted from Zhou [\[4\]](#ref-zhou2024vector), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source leaves the proof of the triangle inequality to class; it is written out here. These parts of the source are not part of this section:
>
> - its table of names for the angle between two vectors (aligned, acute, orthogonal, obtuse, opposed)
> - the triangle inequality for distances
> - the identity relating the average, the standard deviation and the root mean square of a vector

> **NOTE:**
>
> **Theorem 1 (Basic properties of the Euclidean norm)** For any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \in \mathbb{R}^p\\ and any number \\c\\:
>
> 1.  \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \ge 0\\, and \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = 0\\ if and only if \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\;
> 2.  \\\mathopen{}\left\lVert c\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\.

> **NOTE:**
>
> *Proof*. **Part 1.** \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = \sqrt{x_1^2 + \cdots + x_p^2}\\ ([Equation 2 in Vectors](linear-algebra-vectors.llms.md#eq-l2-norm)) is the square root of a sum of squares, so it is at least \\0\\. It is \\0\\ exactly when \\x_1^2 + \cdots + x_p^2 = 0\\, and a sum of squares is \\0\\ exactly when every term is \\0\\, that is, when every \\x_i = 0\\: if some \\x_i \ne 0\\, its square is positive and the sum is positive, and if every \\x_i = 0\\, the sum is \\0\\.
>
> **Part 2.**
>
> \\ \begin{aligned} \mathopen{}\left\lVert c\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} &= \sqrt{\sum\_{i=1}^p(c\\x_i)^2} && \text{(}\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{, and }\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~6 in Matrices}}\text{)} \\ &= \sqrt{\sum\_{i=1}^pc^2 x_i^2} && \text{(} (c\\x_i)^2 = c^2 x_i^2 \text{)} \\ &= \sqrt{c^2 \sum\_{i=1}^px_i^2} && \text{(factor } c^2 \text{ out of the sum)} \\ &= \sqrt{c^2}\\\sqrt{\sum\_{i=1}^px_i^2} && \text{(the square root of a product of nonnegative numbers)} \\ &= \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}. && \text{(} \sqrt{c^2} = \mathopen{}\left\|c\right\|\mathclose{} \text{, and }\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 6 (Scaling a vector scales its length)** For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (3, 4)\\, \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = 5\\ ([Example 15 in Vectors](linear-algebra-vectors.llms.md#exm-euclidean-norm)). Then \\-2\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (-6, -8)\\ has norm
>
> \\ \begin{aligned} \sqrt{36 + 64} &= 10 \\ &= \mathopen{}\left\|-2\right\|\mathclose{} \cdot 5, \end{aligned} \\
>
> as part 2 says. Dividing by the norm gives a vector of length \\1\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\tfrac{1}{5}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} &= \tfrac{1}{5} \cdot 5 \\ &= 1, \end{aligned} \\
>
> and \\\tfrac{1}{5}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (0.6, 0.8)\\ is the unit vector in [Example 15 in Vectors](linear-algebra-vectors.llms.md#exm-euclidean-norm).

> **NOTE:**
>
> **Theorem 2 (The squared norm of a sum)** For any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \in \mathbb{R}^p\\,
>
> \\ \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 + 2\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2. \\
>
> In particular, if \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \perp \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ ([Definition 19 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)), then \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2\\ (the **Pythagorean theorem**) [\[5\]](#ref-wikipedia_pythagorean_theorem).

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 &= (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \cdot (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(square both sides of }\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dot-linear}{\text{Theorem~5 in Direct Sums and Orthogonal Complements}}\text{, first slot, } a \text{ and } b \text{ both equal to } 1 \text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dot-linear}{\text{Theorem~5 in Direct Sums and Orthogonal Complements}}\text{, second slot, } a \text{ and } b \text{ both equal to } 1 \text{, twice)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(}\href{linear-algebra-vectors.qmd#thm-lincom-symmetric}{\text{Theorem~1 in Vectors}}\text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + 2\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(combine like terms)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 + 2\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2. && \text{(}\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{, squared)} \end{aligned} \\
>
> If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \perp \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = 0\\, and the middle term drops out.

> **NOTE:**
>
> **Example 7 (Checking the expansion)** For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (3, 0)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = (1, 4)\\: \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = (4, 4)\\, so
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 &= 16 + 16 \\ &= 32, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 + 2\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 &= 9 + 2 \cdot 3 + 17 \\ &= 32. \end{aligned} \\
>
> For the orthogonal vectors \\(3, 0)\\ and \\(0, 4)\\,
>
> \\ \begin{aligned} \mathopen{}\left\lVert(3, 4)\right\rVert\mathclose{}^2 &= 25 \\ &= 9 + 16, \end{aligned} \\
>
> the \\3\\-\\4\\-\\5\\ right triangle.

> **NOTE:**
>
> **Theorem 3 (Cauchy-Schwarz inequality)** For any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \in \mathbb{R}^p\\,
>
> \\ \mathopen{}\left\|\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\|\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}, \\
>
> with equality exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ are linearly dependent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)) [\[6\]](#ref-wikipedia_cauchy_schwarz_inequality).

> **NOTE:**
>
> *Proof*. **If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.** Then
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}&= \sum_i x_i \cdot 0 \\ &= 0 \end{aligned} \\
>
> 1.  and \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\right\rVert\mathclose{} = 0\\ ([Theorem 1](#thm-norm-properties), part 1), so both sides are \\0\\ and equality holds; and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ are linearly dependent, because \\0\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + 1\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.
>
> **If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.** Then \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} \> 0\\ ([Theorem 1](#thm-norm-properties), part 1). Let \\t \stackrel{\text{def}}{=}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) / \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2\\. Then
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - t\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + (-1)\\(t\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right\rVert\mathclose{}^2 && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + (-1)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \text{)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + (-t)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 && \text{(} (-1)\\(t\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = (-t)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \text{, entrywise)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 + 2\\\mathopen{}\left(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot ((-t)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right)\mathclose{} + \mathopen{}\left\lVert(-t)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 && \text{(}\href{#thm-norm-sum-square}{\text{Theorem~2}}\text{)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 + 2\\(-t)\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + \mathopen{}\left\lVert(-t)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dot-linear}{\text{Theorem~5 in Direct Sums and Orthogonal Complements}}\text{, special case } b = 0 \text{)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 + 2\\(-t)\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + \mathopen{}\left(\mathopen{}\left\|-t\right\|\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\right)\mathclose{}^2 && \text{(}\href{#thm-norm-properties}{\text{Theorem~1}}\text{, part 2)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 + 2\\(-t)\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + \mathopen{}\left\|-t\right\|\mathclose{}^2\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 && \text{(} (ab)^2 = a^2 b^2 \text{)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 - 2t\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + t^2\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 && \text{(} 2\\(-t) = -2t \text{ and } \mathopen{}\left\|-t\right\|\mathclose{}^2 = t^2 \text{)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 - 2\\\frac{(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})^2}{\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2} + \frac{(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})^2}{\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^4}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 && \text{(substitute } t \text{)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 - 2\\\frac{(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})^2}{\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2} + \frac{(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})^2}{\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2} && \text{(cancel one factor } \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 \text{)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 - \frac{(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})^2}{\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2}. && \text{(combine the last two terms)} \end{aligned} \tag{1}\\
>
> The left side is at least \\0\\ ([Theorem 1](#thm-norm-properties), part 1), so
>
> \\ \begin{aligned} 0 &\le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 - \frac{(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})^2}{\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2} && \text{(}\href{#eq-cauchy-schwarz-chain}{\text{Equation~1}}\text{)} \\ \frac{(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})^2}{\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2} &\le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 && \text{(add } (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})^2 / \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 \text{ to both sides)} \\ (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})^2 &\le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2, && \text{(multiply both sides by } \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 \> 0 \text{)} \end{aligned} \\
>
> and taking nonnegative square roots of both sides, which preserves the inequality, gives \\\mathopen{}\left\|\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\|\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\\.
>
> **When equality holds (\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\).** Both sides of the inequality are nonnegative, so equality holds exactly when \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})^2 = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2\\, that is (dividing by \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 \> 0\\ and rearranging), when \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 - (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})^2 / \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 = 0\\. By [Equation 1](#eq-cauchy-schwarz-chain), that quantity is \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - t\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2\\, so equality holds exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - t\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ ([Theorem 1](#thm-norm-properties), part 1), that is, when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = t\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\.
>
> - If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = t\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, then \\1\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + (-t)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, so the two vectors are linearly dependent.
>
> - Conversely, suppose \\a\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + b\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ with \\a, b\\ not both \\0\\. Then \\a \ne 0\\: otherwise \\b \ne 0\\ and \\b\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, so
>
>   \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} &= \tfrac{1}{b}\\(b\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}, \end{aligned} \\
>
>   contrary to assumption. Subtracting \\b\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ from both sides gives \\a\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = -b\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, and multiplying by \\\tfrac{1}{a}\\ gives \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = s\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ with \\s = -b/a\\. Then
>
>   \\ \begin{aligned} \mathopen{}\left\|\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\|\mathclose{} &= \mathopen{}\left\|(s\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\|\mathclose{} && \text{(substitute } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = s\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \text{)} \\ &= \mathopen{}\left\|s\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right\|\mathclose{} && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dot-linear}{\text{Theorem~5 in Direct Sums and Orthogonal Complements}}\text{, special case } b = 0 \text{, first slot)} \\ &= \mathopen{}\left\|s\right\|\mathclose{}\\\mathopen{}\left\|\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\|\mathclose{} && \text{(} \mathopen{}\left\|ab\right\|\mathclose{} = \mathopen{}\left\|a\right\|\mathclose{}\\\mathopen{}\left\|b\right\|\mathclose{} \text{)} \\ &= \mathopen{}\left\|s\right\|\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 \ge 0 \text{, }\href{linear-algebra-vectors.qmd#eq-l2-norm}{\text{Equation~2 in Vectors}}\text{)} \\ &= \mathopen{}\left(\mathopen{}\left\|s\right\|\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\right)\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} && \text{(regroup)} \\ &= \mathopen{}\left\lVert s\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} && \text{(}\href{#thm-norm-properties}{\text{Theorem~1}}\text{, part 2)} \\ &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}, && \text{(} s\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \text{)} \end{aligned} \\
>
>   so equality holds.

> **NOTE:**
>
> **Example 8 (A strict case and an equality case)**  
>
> - For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (1, 2)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = (3, 4)\\:
>
>   \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} &= 3 + 8 \\ &= 11, \end{aligned} \\
>
>   while \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} = \sqrt{5} \cdot 5 \approx 11.18\\. The inequality is strict, and the vectors are linearly independent: \\(3, 4)\\ is not a multiple of \\(1, 2)\\, since \\3 \cdot 2 \ne 4\\.
>
> - For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (1, 2)\\ and
>
>   \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} &= (2, 4) \\ &= 2\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}: \end{aligned} \\
>
>   \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} &= 2 + 8 \\ &= 10 \end{aligned} \\
>
>   and
>
>   \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} &= \sqrt{5}\\\sqrt{20} \\ &= \sqrt{100} \\ &= 10, \end{aligned} \\
>
>   so equality holds.

> **NOTE:**
>
> **Theorem 4 (Triangle inequality)** For any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \in \mathbb{R}^p\\,
>
> \\ \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}. \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 &= \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 + 2\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 && \text{(}\href{#thm-norm-sum-square}{\text{Theorem~2}}\text{)} \\ &\le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 + 2\\\mathopen{}\left\|\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\|\mathclose{} + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 && \text{(a number is at most its absolute value)} \\ &\le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2 + 2\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 && \text{(}\href{#thm-cauchy-schwarz}{\text{Theorem~3}}\text{)} \\ &= \mathopen{}\left(\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\right)\mathclose{}^2. && \text{(expand the square)} \end{aligned} \\
>
> Both \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\\ and \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\\ are nonnegative ([Theorem 1](#thm-norm-properties)), and for nonnegative numbers \\a^2 \le b^2\\ implies \\a \le b\\.

> **NOTE:**
>
> **Example 9 (A strict case and an equality case)**  
>
> - For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (3, 0)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = (0, 4)\\:
>
>   \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} &= \mathopen{}\left\lVert(3, 4)\right\rVert\mathclose{} \\ &= 5, \end{aligned} \\
>
>   while
>
>   \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} &= 3 + 4 \\ &= 7. \end{aligned} \\
>
> - For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (1, 0)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = (2, 0)\\, which point the same way:
>
>   \\ \begin{aligned} \mathopen{}\left\lVert(3, 0)\right\rVert\mathclose{} &= 3 \\ &= 1 + 2, \end{aligned} \\
>
>   so equality holds.

> **NOTE:**
>
> **Definition 4 (Norm (normed vector space, normed space))** A **norm** [\[7\]](#ref-wikipedia_norm_mathematics) on a real vector space \\V\\ is a function \\\mathopen{}\left\lVert\cdot\right\rVert\mathclose{} : V \to \[0, \infty)\\ that assigns to each vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in V\\ a nonnegative real number \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\, and satisfies the following three axioms for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in V\\ and all scalars \\c \in \mathbb{R}\\:
>
> 1.  **Positivity and definiteness**: \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \ge 0\\, and \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = 0\\ if and only if \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\;
> 2.  **Absolute homogeneity**: \\\mathopen{}\left\lVert c\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\;
> 3.  **Subadditivity (triangle inequality)**: \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\\ [\[8\]](#ref-wikipedia_triangle_inequality).
>
> A vector space equipped with a norm is called a **normed vector space** (or **normed space**).

> **NOTE:**
>
> **Example 10 (Euclidean space as a normed vector space)** The Euclidean space \\\mathbb{R}^p\\ equipped with the Euclidean norm ([Definition 20 in Vectors](linear-algebra-vectors.llms.md#def-euclidean-norm)) is a normed vector space:
>
> - Positivity and absolute homogeneity hold by [Theorem 1](#thm-norm-properties).
> - The triangle inequality holds by [Theorem 4](#thm-triangle-inequality).
>
> Every inner product space \\(\mathbb{R}^p, {\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}})\\ ([Definition 2](#def-inner-product-space)) naturally defines an induced norm \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \stackrel{\text{def}}{=}\sqrt{{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}}\\, which satisfies all three norm axioms.

> **NOTE:**
>
> **Definition 5 (Vector \\p\\-norm (\\\ell_p\\ norm, \\\ell_1\\ norm, taxicab norm, Manhattan norm, \\\ell_2\\ norm, infinity norm))** For a vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (x_1, \ldots, x_p) \in \mathbb{R}^p\\ and any real number \\k \ge 1\\, the **vector \\p\\-norm** [\[9\]](#ref-wikipedia_lp_space) (or **\\\ell_p\\ norm**, traditionally named with parameter \\p\\ but denoted here with exponent \\k\\ to avoid clashing with the ambient vector dimension \\p\\) is:
>
> \\ \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k \stackrel{\text{def}}{=}\mathopen{}\left(\sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}^k\right)\mathclose{}^{1/k}. \\
>
> The cases \\k = 1\\ and \\k = 2\\ are named the **\\\ell_1\\ norm** (also the **taxicab norm** or **Manhattan norm**) and the **\\\ell_2\\ norm**.

> **NOTE:**
>
> **Example 11 (Calculating \\\ell_1\\, \\\ell_2\\, and \\\ell\_\infty\\ norms)** For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (3, -4) \in \mathbb{R}^2\\:
>
> - \\\ell_1\\ norm:
>
>   \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_1 &= \mathopen{}\left\|3\right\|\mathclose{} + \mathopen{}\left\|-4\right\|\mathclose{} \\ &= 3 + 4 \\ &= 7. \end{aligned} \\
>
> - \\\ell_2\\ norm:
>
>   \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_2 &= \sqrt{3^2 + (-4)^2} \\ &= \sqrt{9 + 16} \\ &= \sqrt{25} \\ &= 5. \end{aligned} \\
>
> - \\\ell\_\infty\\ norm:
>
>   \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_\infty &= \max(\mathopen{}\left\|3\right\|\mathclose{}, \mathopen{}\left\|-4\right\|\mathclose{}) \\ &= 4. \end{aligned} \\
>
> Notice that \\4 \le 5 \le 7\\. For any vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\, the norms satisfy the chain of inequalities:
>
> \\ \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_\infty \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_2 \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_1 \le \sqrt{p}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_2 \le p\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_\infty. \\

> **NOTE:**
>
> *Remark 3* (Unit balls and regularization in machine learning). The unit ball in \\\mathbb{R}^2\\ under the \\\ell_p\\ norm is the set \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^2 : \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k \le 1\right\\\mathclose{}\\:
>
> - For \\k = 1\\, the unit ball is a diamond (cross-polytope) with sharp vertices along the coordinate axes \\(\pm 1, 0)\\ and \\(0, \pm 1)\\.
> - For \\k = 2\\, the unit ball is the smooth round Euclidean unit disk.
> - For \\k = \infty\\, the unit ball is an axis-aligned square with vertices \\(\pm 1, \pm 1)\\.
>
> In regression and machine learning, adding an \\\ell_1\\ penalty (Lasso regularization) to an objective function encourages sparse solutions: the level curves of the loss function tend to make contact with the sharp corners of the \\\ell_1\\ unit ball on the coordinate axes, setting irrelevant feature weights exactly to zero. In contrast, the smooth spherical \\\ell_2\\ penalty (Ridge regularization) shrinks all weights toward zero without setting them exactly to zero.

> **NOTE:**
>
> **Definition 6 (Infinity norm (\\\ell\_\infty\\ norm, maximum norm, Chebyshev norm))** For a vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (x_1, \ldots, x_p) \in \mathbb{R}^p\\, the **infinity norm** [\[10\]](#ref-wikipedia_uniform_norm) (also the **\\\ell\_\infty\\ norm**, **maximum norm**, or **Chebyshev norm**) is defined separately from the \\p\\-norms ([Definition 5](#def-vector-p-norm)) by
>
> \\ \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_\infty \stackrel{\text{def}}{=}\max\_{1 \le i \le p} \mathopen{}\left\|x_i\right\|\mathclose{}. \\

> **NOTE:**
>
> **Theorem 5 (The \\\ell_1\\, \\\ell_2\\ and infinity norms, and the norm axioms)** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (x_1, \ldots, x_p) \in \mathbb{R}^p\\.
>
> 1.  \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_1 = \sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}\\, and \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_2 = \sqrt{\sum\_{i=1}^px_i^2}\\, which is the Euclidean norm ([Definition 20 in Vectors](linear-algebra-vectors.llms.md#def-euclidean-norm)).
> 2.  \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_\infty = \lim\_{k \to \infty} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k\\.
> 3.  For every real number \\k \ge 1\\, and for \\k = \infty\\, \\\mathopen{}\left\lVert\cdot\right\rVert\mathclose{}\_k\\ is a norm on \\\mathbb{R}^p\\ ([Definition 4](#def-norm)).

> **NOTE:**
>
> *Proof*. **Part 1.** Setting \\k = 1\\ in [Definition 5](#def-vector-p-norm) gives \\\mathopen{}\left(\sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}\right)\mathclose{}^{1/1} = \sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}\\. Setting \\k = 2\\ gives \\\mathopen{}\left(\sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}^2\right)\mathclose{}^{1/2}\\, and \\\mathopen{}\left\|x_i\right\|\mathclose{}^2 = x_i^2\\ for every real number \\x_i\\.
>
> **Part 2.** If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, every \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k\\ is \\0\\, and so is \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_\infty\\. Otherwise, let \\M \stackrel{\text{def}}{=}\max_i \mathopen{}\left\|x_i\right\|\mathclose{} \> 0\\, and pick \\j\\ with \\\mathopen{}\left\|x_j\right\|\mathclose{} = M\\. Every term of \\\sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}^k\\ is at most \\M^k\\, and the \\j\\th term equals \\M^k\\, so
>
> \\ M^k \le \sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}^k \le p\\M^k. \\
>
> Taking the \\1/k\\ power, which preserves order on \\\[0, \infty)\\, gives
>
> \\ M \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k \le p^{1/k} M. \\
>
> As \\k \to \infty\\, \\p^{1/k} = {\operatorname{exp}\mathopen{}\left\\\frac{\ln p}{k}\right\\\mathclose{}} \to 1\\, so \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k\\ is squeezed between \\M\\ and a quantity that tends to \\M\\. Thus \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k \to M = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_\infty\\.
>
> **Part 3, finite \\k\\.**
>
> - *Positivity and definiteness.* Each term \\\mathopen{}\left\|x_i\right\|\mathclose{}^k\\ is at least \\0\\, so \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k \ge 0\\. The sum \\\sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}^k\\ is \\0\\ exactly when every term is \\0\\, that is, when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.
>
> - *Absolute homogeneity.* For a number \\c\\,
>
>   \\ \begin{aligned} \mathopen{}\left\lVert c\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k &= \mathopen{}\left(\sum\_{i=1}^p\mathopen{}\left\|c\\x_i\right\|\mathclose{}^k\right)\mathclose{}^{1/k} && \text{(definition)} \\ &= \mathopen{}\left(\mathopen{}\left\|c\right\|\mathclose{}^k \sum\_{i=1}^p\mathopen{}\left\|x_i\right\|\mathclose{}^k\right)\mathclose{}^{1/k} && \text{(} \mathopen{}\left\|c\\x_i\right\|\mathclose{} = \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\|x_i\right\|\mathclose{} \text{, and factor out } \mathopen{}\left\|c\right\|\mathclose{}^k \text{)} \\ &= \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k. && \text{(take the } 1/k \text{ power of each factor)} \end{aligned} \\
>
> - *Triangle inequality.* Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\. If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ or \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, both sides of \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\_k \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\_k\\ are equal. Otherwise, let \\a \stackrel{\text{def}}{=}\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k \> 0\\, \\b \stackrel{\text{def}}{=}\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\_k \> 0\\, \\\lambda \stackrel{\text{def}}{=}\frac{a}{a + b}\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}/ a\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}/ b\\. By absolute homogeneity, \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\right\rVert\mathclose{}\_k = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\right\rVert\mathclose{}\_k = 1\\, and
>
>   \\ \frac{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}{a + b} = \lambda\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} + (1 - \lambda)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}. \\
>
>   The function \\s \mapsto s^k\\ is non-decreasing and convex on \\\[0, \infty)\\ (its second derivative \\k (k - 1) s^{k - 2}\\ is nonnegative). So for each coordinate \\i\\,
>
>   \\ \begin{aligned} \mathopen{}\left\|\lambda u_i + (1 - \lambda) v_i\right\|\mathclose{}^k &\le \mathopen{}\left(\lambda \mathopen{}\left\|u_i\right\|\mathclose{} + (1 - \lambda) \mathopen{}\left\|v_i\right\|\mathclose{}\right)\mathclose{}^k && \text{(triangle inequality for numbers; } s^k \text{ is non-decreasing)} \\ &\le \lambda \mathopen{}\left\|u_i\right\|\mathclose{}^k + (1 - \lambda) \mathopen{}\left\|v_i\right\|\mathclose{}^k. && \text{(} s^k \text{ is convex)} \end{aligned} \\
>
>   Summing over \\i\\, and using \\\sum\_{i=1}^p\mathopen{}\left\|u_i\right\|\mathclose{}^k = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\right\rVert\mathclose{}\_k^k = 1\\ and likewise for \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\,
>
>   \\ \mathopen{}\left\lVert\lambda\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} + (1 - \lambda)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\right\rVert\mathclose{}\_k^k \le \lambda + (1 - \lambda) = 1. \\
>
>   So \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\_k / (a + b) \le 1\\ by absolute homogeneity, that is, \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\_k \le a + b\\.
>
> **Part 3, \\k = \infty\\.** Every \\\mathopen{}\left\|x_i\right\|\mathclose{}\\ is at least \\0\\, and the largest of them is \\0\\ exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\. For a number \\c\\, \\\max_i \mathopen{}\left\|c\\x_i\right\|\mathclose{} = \mathopen{}\left\|c\right\|\mathclose{} \max_i \mathopen{}\left\|x_i\right\|\mathclose{}\\. For each \\i\\,
>
> \\ \begin{aligned} \mathopen{}\left\|x_i + y_i\right\|\mathclose{} &\le \mathopen{}\left\|x_i\right\|\mathclose{} + \mathopen{}\left\|y_i\right\|\mathclose{} && \text{(triangle inequality for numbers)} \\ &\le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_\infty + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\_\infty, && \text{(each is at most the maximum)} \end{aligned} \\
>
> and taking the maximum over \\i\\ on the left gives \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\_\infty \le \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_\infty + \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\_\infty\\.

> **NOTE:**
>
> **Example 12 (The \\\ell_k\\ norm approaches the maximum norm as \\k\\ grows)** Take \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (3, -4)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (-1, 5)\\ in \\\mathbb{R}^2\\. The code computes \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_k\\ for several values of \\k\\, including \\k = \infty\\ as the maximum, and checks the triangle inequality for \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ at each of them.
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
> **Definition 7 (Cosine similarity)** The **cosine similarity** [\[11\]](#ref-wikipedia_cosine_similarity) between two nonzero vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\ is their dot product divided by the product of their lengths:
>
> \\ \operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \stackrel{\text{def}}{=}\frac{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}{\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}}. \\

> **NOTE:**
>
> **Example 13 (Cosine similarity of parallel, orthogonal, and arbitrary vectors)** For vectors in \\\mathbb{R}^2\\:
>
> - Parallel vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 2)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (2, 4)\\:
>
>   \\ \begin{aligned} \operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) &= \frac{2 + 8}{\sqrt{5}\\\sqrt{20}} \\ &= \frac{10}{10} \\ &= 1. \end{aligned} \\
>
> - Orthogonal vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 2)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (-2, 1)\\:
>
>   \\ \begin{aligned} \operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) &= \frac{-2 + 2}{\sqrt{5}\\\sqrt{5}} \\ &= \frac{0}{5} \\ &= 0. \end{aligned} \\
>
> - Arbitrary vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 0)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (1, 1)\\:
>
>   \\ \begin{aligned} \operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) &= \frac{1 \cdot 1 + 0 \cdot 1}{1 \cdot\sqrt{2}} \\ &= \frac{1}{\sqrt{2}}. \end{aligned} \\
>
> When both vectors have unit Euclidean norm (\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = 1\\ and \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} = 1\\), cosine similarity equals their inner product: \\\operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}\\.

> **NOTE:**
>
> **Definition 8 (Angle between two vectors)** The **angle** between two nonzero vectors, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \in \mathbb{R}^p\\, is
>
> \\ \theta\stackrel{\text{def}}{=}\arccos\mathopen{}\left(\operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right)\mathclose{}. \\
>
> In words, the angle is the [arccosine](algebra-trigonometry.llms.md#def-arccosine) of the [cosine similarity](#def-cosine-similarity) of the two vectors.

> **NOTE:**
>
> *Remark 4* (Why the angle is well defined). The [cosine similarity](#def-cosine-similarity) is defined, because both vectors are nonzero ([Theorem 1](#thm-norm-properties)). By [Theorem 3](#thm-cauchy-schwarz), it lies in the [closed interval](sets.llms.md#def-closed-interval) \\\[-1, 1\]\\, which is where the [arccosine](algebra-trigonometry.llms.md#def-arccosine), \\\arccos\\, is defined. So the angle \\\theta\\ lies in \\\[0, \pi\]\\, with [cosine](algebra-trigonometry.llms.md#def-cosine-sine) \\\cos\theta= \operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\.

> **NOTE:**
>
> **Corollary 1 (A right angle means orthogonal)** For nonzero vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \in \mathbb{R}^p\\ with angle \\\theta\\ ([Definition 8](#def-angle)),
>
> \\ \theta= \frac{\pi}{2} \quad\Longleftrightarrow\quad \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = 0, \\
>
> so for nonzero vectors, orthogonal ([Definition 19 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)) means at a right angle.

> **NOTE:**
>
> *Proof*. Since \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} \> 0\\ ([Theorem 1](#thm-norm-properties)), \\\operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = 0\\ exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = 0\\ ([Definition 7](#def-cosine-similarity)), so \\\cos\theta= 0\\ exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = 0\\ ([Remark 4](#rem-angle-well-defined)). On \\\[0, \pi\]\\, \\\cos\\ vanishes only at \\\pi/2\\.

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
> - \\(1, 0)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\: there is no angle, because the ratio would divide by \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\right\rVert\mathclose{} = 0\\.

> **NOTE:**
>
> **Theorem 6 (The sign of the inner product)** For nonzero \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\ with [angle](#def-angle) \\\theta\in \[0, \pi\]\\ between them,
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_2 \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\_2 \cos\theta,\\
>
> so:
>
> - \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \> 0\\ when the vectors point broadly in the same [direction](vector-calculus.llms.md#def-direction) (\\\theta\< \pi/2\\).
> - \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} = 0\\ exactly when the vectors are [orthogonal](linear-algebra-vectors.llms.md#def-orthogonal-vectors) (\\\theta= \pi/2\\).
> - \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \< 0\\ when the vectors point broadly in opposing directions (\\\theta\> \pi/2\\).

> **NOTE:**
>
> *Proof*. By the definition of the [angle](#def-angle), \\\cos\theta\\ is the [cosine similarity](#def-cosine-similarity) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} / (\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\_2 \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\_2)\\, which gives the displayed equation. Both vectors are nonzero, so their [norms](linear-algebra-inner-products.llms.md#def-norm) are positive, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ has the sign of \\\cos\theta\\. On \\\[0, \pi\]\\, the [cosine](algebra-trigonometry.llms.md#def-cosine-sine) is positive for \\\theta\< \pi/2\\, zero at \\\pi/2\\ and negative for \\\theta\> \pi/2\\.

> **NOTE:**
>
> **Example 15 (The sign of the inner product in the plane)**  
>
> - \\(1, 0)\\ and \\(1, 1)\\ have [inner product](#def-inner-product) \\1 \> 0\\ and [angle](#def-angle) \\\pi/4 \< \pi/2\\.
> - \\(1, 2)\\ and \\(-2, 1)\\ have inner product \\-2 + 2 = 0\\ and angle \\\pi/2\\.
> - \\(1, 0)\\ and \\(-3, 0)\\ have inner product \\-3 \< 0\\ and angle \\\pi \> \pi/2\\.
>
> These are the pairs of [Example 14](#exm-angle).

> **NOTE:**
>
> *Remark 5* (How the two angles relate). For nonzero vectors in the plane, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, the [angle between the vectors](#def-angle) is the [angle on the unit circle](algebra-trigonometry.llms.md#def-angle-unit-circle) between the points \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} / \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} / \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}\\. The [cosine similarity](#def-cosine-similarity) of the vectors is the [dot product](linear-algebra-vectors.llms.md#def-dot-product) of these points. Rotating the plane puts the first point at \\(1, 0)\\, with no change to the distance between the points along the circle or to their dot product. For the angle on the unit circle, \\\theta\\, the second point is then \\(\cos\theta, \pm\sin\theta)\\, so the dot product of the points is \\\cos\theta\\. Applying \\\arccos\\ to it returns \\\theta\\, which lies in \\\[0, \pi\]\\.

> **NOTE:**
>
> **Definition 9 (Cosine similarity in an inner product space)** In a general real inner product space ([Definition 2](#def-inner-product-space)) with inner product \\{\mathopen{}\left\langle \cdot, \cdot\right\rangle\mathclose{}}\\ and induced norm \\\mathopen{}\left\lVert\cdot\right\rVert\mathclose{}\\, the **cosine similarity** is
>
> \\ \operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \stackrel{\text{def}}{=}\frac{{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}}{\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}}. \\

> **NOTE:**
>
> **Corollary 2 (Cosine similarity of unit vectors is their inner product)** In a real inner product space ([Definition 2](#def-inner-product-space)), for all vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ with \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} = 1\\,
>
> \\ \operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}. \\

> **NOTE:**
>
> *Proof*. Both norms in the denominator of [Definition 9](#def-cosine-similarity-inner-product-space) equal \\1\\, so
>
> \\ \operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = \frac{{\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}}{1 \cdot 1} = {\mathopen{}\left\langle \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rangle\mathclose{}}. \\

> **NOTE:**
>
> **Theorem 7 (Pearson correlation is the cosine similarity of the centered vectors)** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^n\\ be two vectors that are not constant, with means \\\bar{x} = \frac{1}{n}\sum\_{i=1}^nx_i\\ and \\\bar{y} = \frac{1}{n}\sum\_{i=1}^ny_i\\. Write \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \bar{x}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}}\\ and \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \bar{y}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}}\\ for the **centered** vectors, whose means are zero. Then the [Pearson correlation coefficient](https://morrison-lab.github.io/sds/exploratory-descriptive.html#def-pearson-r) \\r\\ of the \\n\\ pairs \\(x_i, y_i)\\ is the cosine similarity ([Definition 7](#def-cosine-similarity)) of the centered vectors:
>
> \\ r = \operatorname{cossim}({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}}, {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}}). \\

> **NOTE:**
>
> *Proof*. Entry \\i\\ of \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}}\\ is \\x_i - \bar{x}\\, and entry \\i\\ of \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}}\\ is \\y_i - \bar{y}\\. Neither centered vector is zero, because neither \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ nor \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is constant, so the cosine similarity is defined. The three pieces of the cosine similarity are
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}} \cdot {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}} &= \sum\_{i=1}^n(x_i - \bar{x})(y_i - \bar{y}), \\ \mathopen{}\left\lVert{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}}\right\rVert\mathclose{} &= \sqrt{\sum\_{i=1}^n(x_i - \bar{x})^2}, \\ \mathopen{}\left\lVert{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}}\right\rVert\mathclose{} &= \sqrt{\sum\_{i=1}^n(y_i - \bar{y})^2}, \end{aligned} \\
>
> by the definitions of the dot product and the Euclidean norm. Dividing the first by the product of the other two gives the formula for \\r\\.

> **NOTE:**
>
> **Example 16 (Centering changes the cosine similarity)** Take \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 2, 3)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (1, 3, 2)\\. Their means are \\\bar{x} = \bar{y} = 2\\, so \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}} = (-1, 0, 1)\\ and \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}} = (-1, 1, 0)\\. Then
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}} \cdot {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}} &= 1 + 0 + 0 = 1, \\ \mathopen{}\left\lVert{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}}\right\rVert\mathclose{} &= \mathopen{}\left\lVert{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}}\right\rVert\mathclose{} = \sqrt{2}, \end{aligned} \\
>
> so \\r = \operatorname{cossim}({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}}, {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}}) = 1 / 2\\.
>
> Without centering, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= 1 + 6 + 6 = 13\\ and \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} = \sqrt{14}\\, so \\\operatorname{cossim}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = 13 / 14\\. The uncentered value is close to \\1\\ mostly because both vectors have positive entries and the same mean, not because they move together.

> **NOTE:**
>
> **Corollary 3 (Pearson correlation is the cosine of the angle between the centered vectors)** For the two data vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^n\\ of [Theorem 7](#thm-pearson-cosine-centered), the centered vectors \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}}\\, \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}}\\ are nonzero, so they have an [angle](#def-angle) \\\theta\\. The [Pearson correlation coefficient](https://morrison-lab.github.io/sds/exploratory-descriptive.html#def-pearson-r) \\r\\ satisfies
>
> \\ r = \cos\theta. \\

> **NOTE:**
>
> *Proof*. By [Theorem 7](#thm-pearson-cosine-centered), \\r = \operatorname{cossim}({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}}, {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}})\\. By [Definition 8](#def-angle), \\\theta= \arccos\mathopen{}\left(\operatorname{cossim}({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}}, {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}})\right)\mathclose{}\\, so \\\cos\theta= \operatorname{cossim}({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}}, {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}})\\ ([Remark 4](#rem-angle-well-defined)).

> **NOTE:**
>
> **Example 17 (A correlation of one half is an angle of sixty degrees)** In [Example 16](#exm-pearson-cosine-centered), the correlation is \\r = 1/2\\, for the data vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= (1, 2, 3)\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (1, 3, 2)\\. By [Corollary 3](#cor-pearson-angle), the [angle](#def-angle) \\\theta\\ between the centered vectors \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\mathrm{c}} = (-1, 0, 1)\\, \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\mathrm{c}} = (-1, 1, 0)\\ satisfies
>
> \\ \cos\theta= \frac{1}{2}, \\
>
> so the angle is \\\theta= \pi/3\\.

## 3 Orthonormal bases and Gram-Schmidt

> **NOTE:**
>
> Like [Section 2](#sec-cauchy-schwarz), this section is adapted from Zhou [\[4\]](#ref-zhou2024vector), used under the MIT License (see the license text in [Section 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source leaves the proof that orthonormal vectors are linearly independent to class; it is written out here.

> **NOTE:**
>
> **Theorem 8 (The dot product of a vector with a linear combination)** For vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_k \in \mathbb{R}^p\\ and numbers \\c_1, \ldots, c_k\\, with \\k \ge 1\\,
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathopen{}\left(\sum\_{j=1}^{k} c_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_j\right)\mathclose{} = \sum\_{j=1}^{k} c_j\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_j). \\

> **NOTE:**
>
> *Proof*. Write \\u\_{ji}\\ for entry \\i\\ of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_j\\. Then
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathopen{}\left(\sum\_{j=1}^{k} c_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_j\right)\mathclose{} &= \sum\_{i=1}^px_i \sum\_{j=1}^{k} c_j u\_{ji} && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{, }\href{linear-algebra-vectors.qmd#def-linear-combination}{\text{Definition~9 in Vectors}}\text{)} \\ &= \sum\_{i=1}^p\sum\_{j=1}^{k} x_i c_j u\_{ji} && \text{(distribute each } x_i \text{ over the inner sum)} \\ &= \sum\_{j=1}^{k} \sum\_{i=1}^px_i c_j u\_{ji} && \text{(swap the order of the finite sums)} \\ &= \sum\_{j=1}^{k} \sum\_{i=1}^pc_j x_i u\_{ji} && \text{(commute the factors in each product)} \\ &= \sum\_{j=1}^{k} c_j \sum\_{i=1}^px_i u\_{ji} && \text{(factor } c_j \text{ out of the inner sum)} \\ &= \sum\_{j=1}^{k} c_j\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_j). && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 18 (Dotting with a combination of three vectors)** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (1, 2, 3)\\ and take the combination \\2\\(1, 0, 0) - (0, 1, 0) + 4\\(0, 0, 1) = (2, -1, 4)\\. Directly,
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \cdot (2, -1, 4) &= 2 - 2 + 12 \\ &= 12. \end{aligned} \\
>
> By [Theorem 8](#thm-dot-linear-sum), \\2 \cdot 1 - 1 \cdot 2 + 4 \cdot 3 = 12\\, the same number.

> **NOTE:**
>
> **Theorem 9 (Orthonormal vectors are linearly independent)** If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_k\\ are orthonormal ([Definition 23 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)), then they are linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)).

> **NOTE:**
>
> *Proof*. Suppose \\\sum\_{j=1}^{k} c_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\. Take any \\i \in \mathopen{}\left\\1, \ldots, k\right\\\mathclose{}\\. Then
>
> \\ \begin{aligned} 0 &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}} && \text{(every term of the dot product is } 0 \text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \cdot \mathopen{}\left(\sum\_{j=1}^{k} c_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j\right)\mathclose{} && \text{(substitute the supposed equation)} \\ &= \sum\_{j=1}^{k} c_j\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j) && \text{(}\href{#thm-dot-linear-sum}{\text{Theorem~8}}\text{)} \\ &= c_i. && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \text{ is } 1 \text{ if } j = i \text{ and } 0 \text{ otherwise)} \end{aligned} \\
>
> So every \\c_i = 0\\.

> **NOTE:**
>
> **Example 19 (Three orthonormal vectors in \\\mathbb{R}^3\\)** Let
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 = (0, 0, 1), \quad \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0), \quad \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3 = \tfrac{1}{\sqrt{2}}\\(1, -1, 0). \\
>
> Each has norm \\1\\:
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2\right\rVert\mathclose{}^2 &= \tfrac{1}{2}\\(1 + 1 + 0) \\ &= 1, \end{aligned} \\
>
> and likewise for the others. They are mutually orthogonal: \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 = 0\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3 = 0\\, because \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1\\ has its only nonzero entry where the others have \\0\\, and
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3 &= \tfrac{1}{2}\\(1 - 1 + 0) \\ &= 0. \end{aligned} \\
>
> So by [Theorem 9](#thm-orthonormal-independent) they are linearly independent, with no need to solve \\c_1 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 + c_2 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 + c_3 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3 = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.
>
> The converse fails: \\(1, 0)\\ and \\(1, 1)\\ are linearly independent, since \\c_1 (1, 0) + c_2 (1, 1) = (c_1 + c_2, c_2)\\ is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ only if \\c_2 = 0\\ and then \\c_1 = 0\\, but they are not orthonormal, since \\(1, 0) \cdot (1, 1) = 1 \ne 0\\.

> **NOTE:**
>
> **Definition 10 (Orthonormal basis)** An **orthonormal basis** [\[12\]](#ref-wikipedia_orthonormal_basis) of a subspace \\\mathcal{S}\\ of \\\mathbb{R}^p\\ is a basis of \\\mathcal{S}\\ ([Definition 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-basis)) whose vectors are orthonormal ([Definition 23 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)).

> **NOTE:**
>
> **Example 20 (Orthonormal bases of \\\mathbb{R}^3\\)**  
>
> - The indicator vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_1, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_2, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_3\\ are orthonormal
>   2.  and a basis of \\\mathbb{R}^3\\ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)).
> - The vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3\\ of [Example 19](#exm-orthonormal-independent) are orthonormal and linearly independent, so they are a basis of their span ([Definition 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-basis)), which therefore has dimension \\3\\ ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)) and is all of \\\mathbb{R}^3\\ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim), [Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)). So they are an orthonormal basis of \\\mathbb{R}^3\\ too.

> **NOTE:**
>
> **Example 21 (Bases that are not orthonormal, and orthonormal lists that are not bases)**  
>
> - \\(1, 0), (1, 1)\\ is a basis of \\\mathbb{R}^2\\ ([Example 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-basis)). It is not an orthonormal basis, since \\(1, 0) \cdot (1, 1) = 1\\.
> - \\(1, 0, 0), (0, 1, 0)\\ is orthonormal but not a basis of \\\mathbb{R}^3\\: its span is the plane \\z = 0\\ ([Example 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-span)), which does not contain \\(0, 0, 1)\\.

> **NOTE:**
>
> **Theorem 10 (Coordinates in an orthonormal basis are dot products)** If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_k\\ is an orthonormal basis of a subspace \\\mathcal{S}\\ ([Definition 10](#def-orthonormal-basis)), then every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \in \mathcal{S}\\ satisfies
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \sum\_{i=1}^{k} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i. \\

> **NOTE:**
>
> *Proof*. The basis spans \\\mathcal{S}\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = \sum\_{j=1}^{k} c_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j\\ for some numbers \\c_j\\. For each \\i\\,
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \cdot \mathopen{}\left(\sum\_{j=1}^{k} c_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j\right)\mathclose{} && \text{(substitute)} \\ &= \sum\_{j=1}^{k} c_j\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j) && \text{(}\href{#thm-dot-linear-sum}{\text{Theorem~8}}\text{)} \\ &= c_i, && \text{(}\href{linear-algebra-vectors.qmd#def-orthonormal-vectors}{\text{Definition~23 in Vectors}}\text{)} \end{aligned} \\
>
> so each coefficient \\c_i\\ is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\.

> **NOTE:**
>
> **Example 22 (Expanding a vector in an orthonormal basis)** With the orthonormal basis \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3\\ of \\\mathbb{R}^3\\ from [Example 20](#exm-orthonormal-basis) and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = (1, 2, 3)\\: \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = 3\\,
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= \tfrac{1}{\sqrt{2}}\\(1 + 2) \\ &= \tfrac{3}{\sqrt{2}} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} &= \tfrac{1}{\sqrt{2}}\\(1 - 2) \\ &= -\tfrac{1}{\sqrt{2}}. \end{aligned} \\
>
> Then
>
> \\ \begin{aligned} \sum\_{i=1}^{3} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i &= 3\\(0, 0, 1) + \tfrac{3}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\\(1, 1, 0) - \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\\(1, -1, 0) && \text{(substitute)} \\ &= (0, 0, 3) + \mathopen{}\left(\tfrac{3}{2}, \tfrac{3}{2}, 0\right)\mathclose{} + \mathopen{}\left(-\tfrac{1}{2}, \tfrac{1}{2}, 0\right)\mathclose{} && \text{(multiply out each term)} \\ &= (1, 2, 3), && \text{(add entrywise)} \end{aligned} \\
>
> which is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, as [Theorem 10](#thm-orthonormal-expansion) says.

> **NOTE:**
>
> **Definition 11 (Gram-Schmidt process)** The **Gram-Schmidt process** [\[13\]](#ref-wikipedia_gram_schmidt_process) takes vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_k \in \mathbb{R}^p\\ and, for \\i = 1, 2, \ldots, k\\ in turn:
>
> 1.  **Orthogonalize:** \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i - \sum\_{j=1}^{i-1} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j\\ (for \\i = 1\\ the sum is empty, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_1 = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1\\);
> 2.  **Test:** if \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, stop;
> 3.  **Normalize:** \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i / \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\right\rVert\mathclose{}\\.
>
> The output is the list \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2, \ldots\\ produced before the process stops, or all \\k\\ of them if it never stops.

> **NOTE:**
>
> **Example 23 (Two steps of Gram-Schmidt in \\\mathbb{R}^3\\)** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1 = (1, 1, 0)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_2 = (1, 0, 1)\\.
>
> - **Step 1.** \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_1 = (1, 1, 0)\\, with norm \\\sqrt{2}\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0)\\.
>
> - **Step 2.**
>
>   \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_2 &= \tfrac{1}{\sqrt{2}}\\(1 + 0 + 0) \\ &= \tfrac{1}{\sqrt{2}}, \end{aligned} \\
>
>   so
>
>   \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_2 &= (1, 0, 1) - \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\\(1, 1, 0) && \text{(orthogonalize)} \\ &= (1, 0, 1) - \mathopen{}\left(\tfrac{1}{2}, \tfrac{1}{2}, 0\right)\mathclose{} && \text{(multiply out)} \\ &= \mathopen{}\left(\tfrac{1}{2}, -\tfrac{1}{2}, 1\right)\mathclose{}, && \text{(subtract entrywise)} \end{aligned} \\
>
>   with norm \\\sqrt{\tfrac{1}{4} + \tfrac{1}{4} + 1} = \sqrt{\tfrac{3}{2}}\\, so
>
>   \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 &= \sqrt{\tfrac{2}{3}}\\\mathopen{}\left(\tfrac{1}{2}, -\tfrac{1}{2}, 1\right)\mathclose{} \\ &= \tfrac{1}{\sqrt{6}}\\(1, -1, 2). \end{aligned} \\
>
> As a check,
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 &= \tfrac{1}{\sqrt{12}}\\(1 - 1 + 0) \\ &= 0. \end{aligned} \\

> **NOTE:**
>
> **Example 24 (Gram-Schmidt stops on dependent vectors)** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1 = (1, 2)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_2 = (2, 4)\\. Step 1 gives \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 = \tfrac{1}{\sqrt{5}}\\(1, 2)\\. In step 2,
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_2 &= \tfrac{1}{\sqrt{5}}\\(2 + 8) \\ &= \tfrac{10}{\sqrt{5}}, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_2 &= (2, 4) - \tfrac{10}{\sqrt{5}} \cdot\tfrac{1}{\sqrt{5}}\\(1, 2) \\ &= (2, 4) - 2\\(1, 2) \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}, \end{aligned} \\
>
> so the process stops: \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_2\\ is a multiple of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1\\.

> **NOTE:**
>
> **Theorem 11 (What Gram-Schmidt produces)** Run the Gram-Schmidt process ([Definition 11](#def-gram-schmidt)) on \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_k \in \mathbb{R}^p\\.
>
> 1.  If it has produced \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i\\ without stopping, then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i\\ are orthonormal and \\\operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i\right\\\mathclose{} = \operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i\right\\\mathclose{}\\.
> 2.  If it reaches step \\i\\ (that is, it did not stop at steps \\1, \ldots, i - 1\\), it stops there exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i \in \operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_{i-1}\right\\\mathclose{}\\.
> 3.  It completes all \\k\\ steps exactly when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_k\\ are linearly independent; then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_k\\ is an orthonormal basis of \\\operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_k\right\\\mathclose{}\\ ([Definition 10](#def-orthonormal-basis)).

> **NOTE:**
>
> *Proof*. **Parts 1 and 2, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\i\\.** Before step \\1\\, the list of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\\’s is empty, which is orthonormal, and both spans are \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\right\\\mathclose{}\\ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)). Suppose part 1 holds after step \\i - 1\\, and write
>
> \\ \begin{aligned} \mathcal{S}\_{i-1} &= \operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_{i-1}\right\\\mathclose{} \\ &= \operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_{i-1}\right\\\mathclose{}. \end{aligned} \\
>
> The orthonormal vectors \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_{i-1}\\ are linearly independent ([Theorem 9](#thm-orthonormal-independent)) and span \\\mathcal{S}\_{i-1}\\, so they are an orthonormal basis of it.
>
> *\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\\ is orthogonal to the earlier \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\\’s.* For each \\l \< i\\,
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_l \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_l \cdot \mathopen{}\left(1\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i + \sum\_{j=1}^{i-1} \mathopen{}\left(-\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i\right)\mathclose{}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j\right)\mathclose{} && \text{(}\href{#def-gram-schmidt}{\text{Definition~11}}\text{, as a linear combination)} \\ &= 1\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_l \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i) + \sum\_{j=1}^{i-1} \mathopen{}\left(-\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i\right)\mathclose{}\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_l \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j) && \text{(}\href{#thm-dot-linear-sum}{\text{Theorem~8}}\text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_l \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i - \sum\_{j=1}^{i-1} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i)\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_l \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j) && \text{(} 1\\z = z \text{, and pull the minus signs out of the sum)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_l \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_l \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i && \text{(only the } j = l \text{ term survives, }\href{linear-algebra-vectors.qmd#def-orthonormal-vectors}{\text{Definition~23 in Vectors}}\text{)} \\ &= 0. && \text{(arithmetic)} \end{aligned} \\
>
> *Part 2 at step \\i\\.* If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i = \sum\_{j\<i} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \in \mathcal{S}\_{i-1}\\. Conversely, if \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i \in \mathcal{S}\_{i-1}\\, then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i = \sum\_{j\<i} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j\\ ([Theorem 10](#thm-orthonormal-expansion)), so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.
>
> *Part 1 at step \\i\\, if the process does not stop.* Then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, so \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\right\rVert\mathclose{} \> 0\\, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i / \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\right\rVert\mathclose{}\\ has norm \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\right\rVert\mathclose{} / \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\right\rVert\mathclose{} = 1\\ ([Theorem 1](#thm-norm-properties)) and for \\l \< i\\
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_l \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i &= \frac{1}{\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\right\rVert\mathclose{}}\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_l \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i) && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dot-linear}{\text{Theorem~5 in Direct Sums and Orthogonal Complements}}\text{, special case } b = 0 \text{)} \\ &= 0, && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i \text{ is orthogonal to } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_l \text{)} \end{aligned} \\
>
> and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_l = 0\\ too ([Theorem 1 in Vectors](linear-algebra-vectors.llms.md#thm-lincom-symmetric)). So \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i\\ are orthonormal. For the spans:
>
> - \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\right\rVert\mathclose{}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i + \sum\_{j\<i} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j\\ is in \\\operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i\right\\\mathclose{}\\, and so is each of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_{i-1}\\, which lie in \\\mathcal{S}\_{i-1} = \operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_{i-1}\right\\\mathclose{} \subseteq \operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i\right\\\mathclose{}\\.
> - \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i = \mathopen{}\left(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i - \sum\_{j\<i} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j\right)\mathclose{} / \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i\right\rVert\mathclose{}\\ is in \\\operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i\right\\\mathclose{}\\, because each \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_j\\ with \\j \< i\\ lies in \\\mathcal{S}\_{i-1}\\; and so is each of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_{i-1}\\.
>
> A span is a subspace ([Theorem 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-span-subspace)), so it contains every linear combination of vectors in it; each span therefore contains the other, and they are equal.
>
> **Part 3.** If the process completes, then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1 \notin \operatorname{span}\\ of the empty list, and for each \\i \ge 2\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i \notin \operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_{i-1}\right\\\mathclose{}\\ (part 2). Applying [Theorem 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-add-outside-span) \\k\\ times, starting from the empty list, shows that \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_k\\ are linearly independent. Conversely, if they are linearly independent, no \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i\\ is a linear combination \\\sum\_{j\<i} c_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_j\\ of the earlier ones, because then \\\sum\_{j\<i} c_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_j - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_i = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ would be a combination with a nonzero coefficient; so by part 2 the process never stops. When it completes, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_k\\ are orthonormal, hence linearly independent ([Theorem 9](#thm-orthonormal-independent)), and span \\\operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_k\right\\\mathclose{}\\ (part 1), so they are an orthonormal basis of it.

> **NOTE:**
>
> **Example 25 (Finishing an orthonormal basis of \\\mathbb{R}^3\\)** Continue [Example 23](#exm-gram-schmidt) with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_3 = (0, 1, 1)\\. \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_3 = \tfrac{1}{\sqrt{2}}\\ and
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_3 &= \tfrac{1}{\sqrt{6}}\\(0 - 1 + 2) \\ &= \tfrac{1}{\sqrt{6}}, \end{aligned} \\
>
> so
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_3 &= (0, 1, 1) - \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\\(1, 1, 0) - \tfrac{1}{\sqrt{6}} \cdot\tfrac{1}{\sqrt{6}}\\(1, -1, 2) && \text{(orthogonalize)} \\ &= (0, 1, 1) - \tfrac{1}{2}\\(1, 1, 0) - \tfrac{1}{6}\\(1, -1, 2) && \text{(multiply the scalars)} \\ &= \mathopen{}\left(0 - \tfrac{1}{2} - \tfrac{1}{6},\\ 1 - \tfrac{1}{2} + \tfrac{1}{6},\\ 1 - 0 - \tfrac{2}{6}\right)\mathclose{} && \text{(subtract entrywise)} \\ &= \mathopen{}\left(-\tfrac{2}{3}, \tfrac{2}{3}, \tfrac{2}{3}\right)\mathclose{}, && \text{(arithmetic)} \end{aligned} \\
>
> with norm \\\sqrt{3 \cdot\tfrac{4}{9}} = \tfrac{2}{\sqrt{3}}\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3 = \tfrac{1}{\sqrt{3}}\\(-1, 1, 1)\\. The process did not stop, so by [Theorem 11](#thm-gram-schmidt) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_1, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_2, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_3\\ are linearly independent and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3\\ is an orthonormal basis of their span. That span therefore has dimension \\3\\ ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)), so it is \\\mathbb{R}^3\\ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim), [Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)). As a check,
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3 &= \tfrac{1}{\sqrt{6}}\\(-1 + 1 + 0) \\ &= 0 \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3 &= \tfrac{1}{\sqrt{18}}\\(-1 - 1 + 2) \\ &= 0. \end{aligned} \\

> **NOTE:**
>
> **Corollary 4 (Every subspace has an orthonormal basis)** Let \\\mathcal{S}\\ be a subspace of \\\mathbb{R}^p\\. Every orthonormal list of vectors in \\\mathcal{S}\\ extends to an orthonormal basis of \\\mathcal{S}\\ ([Definition 10](#def-orthonormal-basis)). Starting from the empty list shows that \\\mathcal{S}\\ has an orthonormal basis.

> **NOTE:**
>
> *Proof*. Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_r \in \mathcal{S}\\ be orthonormal. They are linearly independent ([Theorem 9](#thm-orthonormal-independent)), so they extend to a basis \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_r, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_{r+1}, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\_d\\ of \\\mathcal{S}\\ ([Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis)). Run the Gram-Schmidt process on this basis. It is linearly independent, so the process completes, and the output is an orthonormal basis of its span, which is \\\mathcal{S}\\ ([Theorem 11](#thm-gram-schmidt), part 3).
>
> The first \\r\\ outputs are \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_r\\ themselves, by [induction](proof-writing.llms.md#def-proof-by-induction) on \\i \le r\\. Suppose the outputs before step \\i\\ are \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1, \ldots, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_{i-1}\\ (for \\i = 1\\ there are none, and the sum below is empty). Then
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_i - \sum\_{j\<i} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_i)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_j \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_i, \end{aligned} \\
>
> because each \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_j \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_i = 0\\; \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_i = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_i \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, because \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_i\right\rVert\mathclose{} = 1\\, so the process does not stop; and
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_i &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_i / \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_i\right\rVert\mathclose{} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_i. \end{aligned} \\
>
> So the orthonormal basis contains the starting list.

> **NOTE:**
>
> **Example 26 (Extending one unit vector to an orthonormal basis of \\\mathbb{R}^3\\)** Start from the unit vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1 = \tfrac{1}{\sqrt{2}}\\(1, 1, 0)\\. Extend it to a basis of \\\mathbb{R}^3\\ as in [Example 18 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-extend-basis), starting from the empty list: \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1\\ is not in the span of the empty list, \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\right\\\mathclose{}\\, because \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1\right\rVert\mathclose{} = 1\\; \\(1, 0, 0)\\ is not in \\\operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1\right\\\mathclose{}\\, because every multiple of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1\\ has equal first and second entries, and \\(0, 0, 1)\\ is not in \\\operatorname{span}\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1, (1, 0, 0)\right\\\mathclose{}\\, because every combination of those two vectors has third entry \\0\\. So \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1, (1, 0, 0), (0, 0, 1)\\ are linearly independent ([Theorem 8 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-add-outside-span)), and three linearly independent vectors in \\\mathbb{R}^3\\ are a basis of it (they are a basis of their span, which has dimension \\3\\ ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)) and so is \\\mathbb{R}^3\\ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim), [Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension))). Gram-Schmidt on \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1, (1, 0, 0), (0, 0, 1)\\:
>
> 1.  \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\_1\\.
>
> 2.  \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1 \cdot (1, 0, 0) = \tfrac{1}{\sqrt{2}}\\, so
>
>     \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_2 &= (1, 0, 0) - \tfrac{1}{2}\\(1, 1, 0) \\ &= \mathopen{}\left(\tfrac{1}{2}, -\tfrac{1}{2}, 0\right)\mathclose{}, \end{aligned} \\
>
>     with norm \\\tfrac{1}{\sqrt{2}}\\, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2 = \tfrac{1}{\sqrt{2}}\\(1, -1, 0)\\.
>
> 3.  \\(0, 0, 1)\\ is orthogonal to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_1\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_2\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}'\_3 = (0, 0, 1)\\, which already has norm \\1\\, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{q}}\vphantom{q}}\_3 = (0, 0, 1)\\.
>
> The result is the orthonormal basis of [Example 20](#exm-orthonormal-basis), in a different order.

## 4 Outer product

> **NOTE:**
>
> **Definition 12 (Outer product)** The **outer product** [\[14\]](#ref-wikipedia_outer_product) of a vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ of length \\m\\ and a vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ of length \\n\\ is the \\m \times n\\ matrix product ([Definition 7 in Matrices](linear-algebra-matrices.llms.md#def-matrix-mult)) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\ of the column vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ with the row vector \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\. Its entries are
>
> \\ \mathopen{}\left(\underbrace{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}\_{m \times 1}\\\underbrace{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}}\_{1 \times n}\right)\mathclose{}\_{ij} = u_i v_j \qquad \text{(definition of matrix multiplication; the sum has one term)} \\

> **NOTE:**
>
> **Example 27 (An outer product)** For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = (1, 2, 3)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = (4, 5)\\:
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top} &= \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix} \begin{bmatrix} 4 & 5 \end{bmatrix} && \text{(definition of the outer product)} \\ &= \begin{bmatrix} 1 \cdot 4 & 1 \cdot 5 \\ 2 \cdot 4 & 2 \cdot 5 \\ 3 \cdot 4 & 3 \cdot 5 \end{bmatrix} && \text{(entry } (i, j) \text{ is } u_i v_j \text{)} \\ &= \begin{bmatrix} 4 & 5 \\ 8 & 10 \\ 12 & 15 \end{bmatrix} && \text{(multiply)} \end{aligned} \\

> **NOTE:**
>
> *Remark 6* (Outer product and dot product). The dot product \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ ([Example 6 in Matrices](linear-algebra-matrices.llms.md#exm-dot-product-matmul)) needs two vectors of the same length and gives a number. The outer product \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\ takes vectors of any two lengths and gives a matrix [\[3, Ch. 1\]](#ref-banerjee2014linear), p. 11.
>
> For example, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = (1, 2, 3)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = (4, 5)\\ in [Example 27](#exm-outer-product) have different lengths, so they have no dot product, but their outer product is a \\3 \times 2\\ matrix. For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}} = (1, 2)\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = (3, 4)\\, which have the same length, both products exist:
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} &= 1 \cdot 3 + 2 \cdot 4 \\ &= 11 \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}^{\top} &= \begin{bmatrix} 1 \cdot 3 & 1 \cdot 4 \\ 2 \cdot 3 & 2 \cdot 4 \end{bmatrix} \\ &= \begin{bmatrix} 3 & 4 \\ 6 & 8 \end{bmatrix} \end{aligned} \\

> **NOTE:**
>
> **Theorem 12 (An outer product has rank one)** If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ is a nonzero vector of length \\m\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}\\ is a nonzero vector of length \\n\\, then \\\operatorname{rank}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}) = 1\\ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)).

> **NOTE:**
>
> *Proof*. Column \\j\\ of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\ has entries \\u_1 v_j, \ldots, u_m v_j\\, so it is the vector \\v_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\.
>
> **The rank is at least one.** Because \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} \neq \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, some entry \\v_j\\ is nonzero. Then column \\j\\, \\v_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\, is a nonzero vector, and a single nonzero vector is linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)): \\c\\(v_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ forces \\c = 0\\.
>
> **The rank is at most one.** Take any two columns \\j \neq k\\. If
>
> \\ \begin{aligned} v_j &= v_k \\ &= 0, \end{aligned} \\
>
> both columns are \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, and \\1 \cdot(v_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}) + 1 \cdot(v_k \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\. Otherwise, use the coefficients \\c_j = v_k\\ and \\c_k = -v_j\\, which are not both zero:
>
> \\ \begin{aligned} v_k\\(v_j \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}) - v_j\\(v_k \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}) &= (v_k v_j - v_j v_k)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} && \text{(collect the scalar multiples of } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} \text{)} \\ &= 0 \cdot\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} && \text{(multiplication of numbers is commutative)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}} && \text{(a zero multiple of a vector is } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\text{)} \end{aligned} \\
>
> Either way, every pair of columns has a combination with coefficients that are not all zero and that equals \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\. Now take any set of two or more columns. It contains a pair \\j \neq k\\. Use that pair’s coefficients for columns \\j\\ and \\k\\, and the coefficient \\0\\ for every other column in the set. This combination equals \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, and its coefficients are not all zero, so the set is not linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)). The largest linearly independent set of columns therefore has one column.

> **NOTE:**
>
> **Example 28 (The rank of an outer product)** In [Example 27](#exm-outer-product), the second column \\(5, 10, 15)\\ of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}}}^{\top}\\ is \\\frac{5}{4}\\ times the first column \\(4, 8, 12)\\, because the columns are \\v_1 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = 4\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\ and \\v_2 \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}} = 5\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{u}}\vphantom{u}}\\. So the two columns are not linearly independent, and the \\3 \times 2\\ matrix has rank \\1\\.

Back to top

## References

\[1\]

Wikipedia contributors, “Inner product space — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Inner_product_space>

\[2\]

S. Axler, *Linear algebra done right*, 4th ed. in Undergraduate texts in mathematics. Springer, 2024. doi: [10.1007/978-3-031-41026-0](https://doi.org/10.1007/978-3-031-41026-0).

\[3\]

S. Banerjee and A. Roy, *Linear algebra and matrix analysis for statistics*, vol. 181. Crc Press Boca Raton, 2014. Available: <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>

\[4\]

H. Zhou, “Vectors.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/02-vector/02-vector.html>

\[5\]

Wikipedia contributors, “Pythagorean theorem — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Pythagorean_theorem>

\[6\]

Wikipedia contributors, “Cauchy–schwarz inequality — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Cauchy%E2%80%93Schwarz_inequality>

\[7\]

Wikipedia contributors, “Norm (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Norm_(mathematics)>

\[8\]

Wikipedia contributors, “Triangle inequality — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Triangle_inequality>

\[9\]

Wikipedia contributors, “Lp space — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Lp_space>

\[10\]

Wikipedia contributors, “Uniform norm — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Uniform_norm>

\[11\]

Wikipedia contributors, “Cosine similarity — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Cosine_similarity>

\[12\]

Wikipedia contributors, “Orthonormal basis — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Orthonormal_basis>

\[13\]

Wikipedia contributors, “Gram–schmidt process — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Gram%E2%80%93Schmidt_process>

\[14\]

Wikipedia contributors, “Outer product — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Outer_product>
