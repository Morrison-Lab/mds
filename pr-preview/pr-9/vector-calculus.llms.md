# Vector Calculus

Code

Published

Last modified: 2026-09-26 12:42:19 (PDT)

(adapted from Fieller ([2016](#ref-fieller2018basics)), [§7.2](https://www.taylorfrancis.com/chapters/mono/10.1201/9781315370200-7/vector-matrix-calculus-nick-fieller?context=ubx&refId=c310b723-786a-4f33-ae56-720a6cccd3a1))

This section covers derivatives of functions of vectors and matrices. Linear algebra prerequisites — including vectors, matrices, transpose, dot product, and quadratic forms — are covered in [Linear Algebra](linear-algebra.llms.md).

Let \\\tilde{x}\\ and \\\tilde{\beta}\\ be column vectors of length \\p\\ (see [column vector](linear-algebra.llms.md#def-column-vector) and [dot product](linear-algebra.llms.md#def-dot-product)).

------------------------------------------------------------------------

> **NOTE:**
>
> **Definition 1 (Vector derivative)** If \\f(\tilde{\beta})\\ is a function that takes a vector \\\tilde{\beta}\\ as input, such as \\f(\tilde{\beta}) = x'\tilde{\beta}\\, then its **vector derivative** is:
>
> \\ \frac{\partial}{\partial \tilde{\beta}} f(\tilde{\beta}) = \begin{bmatrix} \frac{\partial}{\partial \beta_1}f(\tilde{\beta}) \\ \frac{\partial}{\partial \beta_2}f(\tilde{\beta}) \\ \vdots \\ \frac{\partial}{\partial \beta_p}f(\tilde{\beta}) \end{bmatrix} \\

------------------------------------------------------------------------

> **NOTE:**
>
> **Definition 2 (Row-vector derivative)** If \\f(\tilde{\beta})\\ is a function that takes a vector \\\tilde{\beta}\\ as input, such as \\f(\tilde{\beta}) = x'\tilde{\beta}\\, then its **row-vector derivative** is:
>
> \\ \frac{\partial}{\partial \tilde{\beta}^{\top}} f(\tilde{\beta}) = \begin{bmatrix} \frac{\partial}{\partial \beta_1}f(\tilde{\beta}) & \frac{\partial}{\partial \beta_2}f(\tilde{\beta}) & \cdots & \frac{\partial}{\partial \beta_p}f(\tilde{\beta}) \end{bmatrix} \\

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 1 (Row and column derivatives are transposes)** \\\frac{\partial}{\partial \tilde{\beta}^{\top}} f(\tilde{\beta}) = \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} f(\tilde{\beta})\right)\mathclose{}^{\top}\\
>
> \\\frac{\partial}{\partial \tilde{\beta}} f(\tilde{\beta}) = \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}^{\top}} f(\tilde{\beta})\right)\mathclose{}^{\top}\\

------------------------------------------------------------------------

> **NOTE:**
>
> **Definition 3 (Constant)** \\\tilde{x}\\ is **constant with respect to** \\\tilde{\beta}\\ if
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}}\_{p \times p} = \underbrace{\mathbf{0}}\_{p \times p} \\

> **NOTE:**
>
> **Example 1 (A constant vector)** Let \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\ and \\\tilde{x}= {(3, 5)}^{\top}\\, so \\x_1 = 3\\ and \\x_2 = 5\\ do not depend on \\\tilde{\beta}\\. Expanding \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}\\ into its matrix of scalar partial derivatives ([Definition 1](#def-vector-derivative), applied to each component of the row \\{\tilde{x}}^{\top}\\) and evaluating each entry:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}}\_{2 \times 2} = \frac{\partial}{\partial \tilde{\beta}} \begin{bmatrix}x_1 & x_2\end{bmatrix} = \begin{bmatrix} \frac{\partial}{\partial \beta_1} x_1 & \frac{\partial}{\partial \beta_1} x_2 \\ \frac{\partial}{\partial \beta_2} x_1 & \frac{\partial}{\partial \beta_2} x_2 \end{bmatrix} = \begin{bmatrix} \frac{\partial}{\partial \beta_1} 3 & \frac{\partial}{\partial \beta_1} 5 \\ \frac{\partial}{\partial \beta_2} 3 & \frac{\partial}{\partial \beta_2} 5 \end{bmatrix} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix} = \underbrace{\mathbf{0}}\_{2 \times 2} \\
>
> Every entry is the derivative of a constant, so \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top} = \underbrace{\mathbf{0}}\_{2 \times 2}\\ and \\\tilde{x}\\ is constant with respect to \\\tilde{\beta}\\ ([Definition 3](#def-constant-wrt-vector)).

> **NOTE:**
>
> **Theorem 2 (Derivative of a dot product)** If \\\tilde{x}\\ is constant with respect to \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\tilde{x}\cdot \tilde{\beta})}\_{p \times 1} = \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\tilde{\beta}\cdot \tilde{x})}\_{p \times 1} = \underbrace{\tilde{x}}\_{p \times 1} \\

------------------------------------------------------------------------

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}} (\tilde{x}\cdot \tilde{\beta}) &= \begin{bmatrix} \frac{\partial}{\partial \beta_1}(x_1\beta_1+x_2\beta_2 +...+x_p \beta_p ) \\ \frac{\partial}{\partial \beta_2}(x_1\beta_1+x_2\beta_2 +...+x_p \beta_p ) \\ \vdots \\ \frac{\partial}{\partial \beta_p}(x_1\beta_1+x_2\beta_2 +...+x_p \beta_p ) \end{bmatrix} \\ &= \begin{bmatrix} x\_{1} \\ x\_{2} \\ \vdots \\ x\_{p} \end{bmatrix} \\ &= \tilde{x} \end{aligned} \\

> **NOTE:**
>
> **Example 2 (Derivative of a dot product)** Let \\\tilde{x}= {(3, 5)}^{\top}\\ (constant with respect to \\\tilde{\beta}\\; see [Example 1](#exm-constant-wrt-vector)) and \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\\tilde{x}\cdot \tilde{\beta}= 3\beta_1 + 5\beta_2\\, and by [Theorem 2](#thm-deriv-lincom):
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\tilde{x}\cdot \tilde{\beta})}\_{2 \times 1} = \underbrace{\tilde{x}}\_{2 \times 1} = \begin{pmatrix} 3 \\ 5 \end{pmatrix} \\
>
> Verifying entry-wise:
>
> \\ \frac{\partial}{\partial \tilde{\beta}}(3\beta_1 + 5\beta_2) = \begin{pmatrix} \frac{\partial}{\partial \beta_1}(3\beta_1 + 5\beta_2) \\ \frac{\partial}{\partial \beta_2}(3\beta_1 + 5\beta_2) \end{pmatrix} = \begin{pmatrix} 3 \\ 5 \end{pmatrix} \\
>
> Both methods agree.

> **NOTE:**
>
> **Theorem 3 (Product rule for dot-products)** If \\\mathbf{a} = \mathbf{a}(\tilde{x})\\ and \\\mathbf{b} = \mathbf{b}(\tilde{x})\\ are differentiable \\p \times 1\\ vector functions of \\\tilde{x}\\, then:
>
> \\ \begin{aligned} \frac{\partial}{\partial \underbrace{\tilde{x}}\_{p \times 1}} \underbrace{a}\_{p \times 1} \cdot \underbrace{b}\_{p \times 1} &= \mathopen{}\left( \frac{\partial}{\partial \underbrace{\tilde{x}}\_{p \times 1}} \underbrace{{a}^{\top}}\_{1 \times p} \right)\mathclose{} \underbrace{b}\_{p \times 1} + \mathopen{}\left( \frac{\partial}{\partial \underbrace{\tilde{x}}\_{p \times 1}} \underbrace{{b}^{\top}}\_{1 \times p} \right)\mathclose{} \underbrace{a}\_{p \times 1} \end{aligned} \\

> **NOTE:**
>
> *Proof*. Entry-wise, for \\i = 1, \ldots, p\\:
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{x}} (\mathbf{a} \cdot \mathbf{b})\right\]\_i &= \frac{\partial}{\partial x_i} \sum\_{k=1}^p a_k b_k \\ &= \sum\_{k=1}^p \mathopen{}\left(b_k \frac{\partial}{\partial x_i} a_k + a_k \frac{\partial}{\partial x_i} b_k\right)\mathclose{} \\ &= \left\[\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} {\mathbf{a}}^{\top}\right)\mathclose{}\mathbf{b}\right\]\_i + \left\[\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} {\mathbf{b}}^{\top}\right)\mathclose{}\mathbf{a}\right\]\_i \end{aligned} \\

> **NOTE:**
>
> **Example 3 (Example of the dot-product rule)** Let \\\tilde{x}= {(\beta_1, \beta_2)}^{\top}\\, \\\mathbf{a}(\tilde{x}) = {(\beta_1, \beta_1\beta_2)}^{\top}\\, and \\\mathbf{b}(\tilde{x}) = {(\beta_2, \beta_1)}^{\top}\\. Then:
>
> \\ \mathbf{a} \cdot \mathbf{b} = \beta_1 \cdot \beta_2 + \beta_1\beta_2 \cdot \beta_1 = \beta_1\beta_2 + \beta_1^2\beta_2 \\
>
> By direct calculation:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{x}}(\mathbf{a} \cdot \mathbf{b})}\_{2 \times 1} = \frac{\partial}{\partial \tilde{x}}(\beta_1\beta_2 + \beta_1^2\beta_2) = \begin{pmatrix} \beta_2 + 2\beta_1\beta_2 \\ \beta_1 + \beta_1^2 \end{pmatrix} \\
>
> By the product rule ([Theorem 3](#thm-deriv-dot-product)), using \\\underbrace{\frac{\partial}{\partial \tilde{x}}{\mathbf{a}}^{\top}}\_{2 \times 2} = \begin{pmatrix}1 & \beta_2 \\ 0 & \beta_1\end{pmatrix}\\ and \\\underbrace{\frac{\partial}{\partial \tilde{x}}{\mathbf{b}}^{\top}}\_{2 \times 2} = \begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix}\\:
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{x}}(\mathbf{a} \cdot \mathbf{b})}\_{2 \times 1} &= \underbrace{\begin{pmatrix}1 & \beta_2 \\ 0 & \beta_1\end{pmatrix}}\_{2 \times 2} \underbrace{\begin{pmatrix}\beta_2 \\ \beta_1\end{pmatrix}}\_{2 \times 1} + \underbrace{\begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix}}\_{2 \times 2} \underbrace{\begin{pmatrix}\beta_1 \\ \beta_1\beta_2\end{pmatrix}}\_{2 \times 1} \\ &= \begin{pmatrix}\beta_2 + \beta_1\beta_2 \\ \beta_1^2\end{pmatrix} + \begin{pmatrix}\beta_1\beta_2 \\ \beta_1\end{pmatrix} \\ &= \begin{pmatrix}\beta_2 + 2\beta_1\beta_2 \\ \beta_1^2 + \beta_1\end{pmatrix} \end{aligned} \\
>
> Both methods agree.

> **NOTE:**
>
> **Theorem 4 (Derivative of a linear map)** If \\A\\ is an \\m \times p\\ matrix that is constant with respect to \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (A\tilde{\beta})}\_{p \times m} = \underbrace{{A}^{\top}}\_{p \times m} \\

> **NOTE:**
>
> *Proof*. For entry \\(i,j)\\, where row \\i\\ indexes the denominator \\\tilde{\beta}\\ (see [Definition 1](#def-vector-derivative)) and column \\j\\ indexes the numerator \\A\tilde{\beta}\\:
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{\beta}} (A\tilde{\beta})\right\]\_{ij} &= \frac{\partial}{\partial \beta_i} (A\tilde{\beta})\_j \\ &= \frac{\partial}{\partial \beta_i} \sum\_{k=1}^{p} a\_{jk} \beta_k \\ &= a\_{ji} \\ &= \left\[{A}^{\top}\right\]\_{ij} \end{aligned} \\

> **NOTE:**
>
> **Example 4 (Derivative of a linear map)** Let \\A = \begin{pmatrix} 2 & 3 \end{pmatrix}\\ (\\1 \times 2\\) and \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\A\tilde{\beta}= 2\beta_1 + 3\beta_2\\, and by [Theorem 4](#thm-deriv-linear-map):
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}(A\tilde{\beta})}\_{2 \times 1} = \underbrace{{A}^{\top}}\_{2 \times 1} = \begin{pmatrix} 2 \\ 3 \end{pmatrix} \\

> **NOTE:**
>
> **Theorem 5 (Vector-derivative of a matrix-vector product)** If \\A\\ is an \\m \times q\\ matrix that is constant with respect to \\\tilde{\beta}\\, and \\\tilde{v} = \tilde{v}(\tilde{\beta})\\ is a \\q \times 1\\ vector that depends on the \\p \times 1\\ vector \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (A\tilde{v})}\_{p \times m} = \underbrace{\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{}}\_{p \times q} \underbrace{{A}^{\top}}\_{q \times m} \\
>
> This result generalizes [Theorem 4](#thm-deriv-linear-map), which is the special case \\\tilde{v} = \tilde{\beta}\\ (so that \\\frac{\partial}{\partial \tilde{\beta}} \tilde{\beta}= \mathbf{I}\\ and \\\frac{\partial}{\partial \tilde{\beta}} (A\tilde{\beta}) = {A}^{\top}\\).

> **NOTE:**
>
> *Proof*. For entry \\(i,j)\\, where row \\i\\ indexes the denominator \\\tilde{\beta}\\ and column \\j\\ indexes the numerator \\A\tilde{v}\\:
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{\beta}} (A\tilde{v})\right\]\_{ij} &= \frac{\partial}{\partial \beta_i} (A\tilde{v})\_j \\ &= \frac{\partial}{\partial \beta_i} \sum\_{k=1}^{q} a\_{jk} v_k \\ &= \sum\_{k=1}^{q} a\_{jk} \frac{\partial}{\partial \beta_i} v_k \\ &= \sum\_{k=1}^{q} \left\[\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right\]\_{ik} \left\[{A}^{\top}\right\]\_{kj} \\ &= \left\[\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{} {A}^{\top}\right\]\_{ij} \end{aligned} \\

> **NOTE:**
>
> **Example 5 (Vector-derivative of a matrix-vector product)** Let \\A = \begin{pmatrix} 2 & 3 \end{pmatrix}\\ (\\1 \times 2\\, constant) and \\\tilde{v}(\tilde{\beta}) = {(\beta_1^2, \beta_2^2)}^{\top}\\. Then \\A\tilde{v} = 2\beta_1^2 + 3\beta_2^2\\. By [Theorem 5](#thm-deriv-matrix-vector):
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}(A\tilde{v})}\_{2 \times 1} &= \begin{pmatrix} 2\beta_1 & 0 \\ 0 & 2\beta_2 \end{pmatrix} \begin{pmatrix} 2 \\ 3 \end{pmatrix} \\ &= \begin{pmatrix} 4\beta_1 \\ 6\beta_2 \end{pmatrix} \end{aligned} \\

> **NOTE:**
>
> **Corollary 1 (Derivative of a dot product, transpose-product form)** If \\\tilde{x}\\ is constant with respect to \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\underbrace{{\tilde{x}}^{\top}}\_{1 \times p} \underbrace{\tilde{\beta}}\_{p \times 1})}\_{p \times 1} = \underbrace{\tilde{x}}\_{p \times 1} \\
>
> This vector derivative formula looks a lot like non-vector calculus, except that you have to transpose the coefficient: in scalar calculus \\\frac{\partial}{\partial x}(cx) = c\\, but here the coefficient \\{\tilde{x}}^{\top}\\ (a row vector) becomes \\\tilde{x}\\ (a column vector) in the result.

> **NOTE:**
>
> *Proof*. **Using [Theorem 2](#thm-deriv-lincom):**
>
> Since \\{\tilde{x}}^{\top}\tilde{\beta}= \tilde{x}\cdot \tilde{\beta}\\ (see [dot product](linear-algebra.llms.md#def-dot-product)), and \\\tilde{x}\\ is constant with respect to \\\tilde{\beta}\\:
>
> \\ \frac{\partial}{\partial \tilde{\beta}}({\tilde{x}}^{\top}\tilde{\beta}) = \frac{\partial}{\partial \tilde{\beta}}(\tilde{x}\cdot \tilde{\beta}) = \tilde{x} \\
>
> by [Theorem 2](#thm-deriv-lincom).

> **NOTE:**
>
> *Proof*. **Using [Theorem 5](#thm-deriv-matrix-vector):**
>
> Since \\\tilde{x}\\ is constant with respect to \\\tilde{\beta}\\, \\A = {\tilde{x}}^{\top}\\ is a constant \\1 \times p\\ matrix. Applying [Theorem 5](#thm-deriv-matrix-vector) with \\\tilde{v} = \tilde{\beta}\\ (so \\\frac{\partial}{\partial \tilde{\beta}}\tilde{\beta}= \mathbf{I}\\):
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}}({\tilde{x}}^{\top}\tilde{\beta}) &= \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}}\tilde{\beta}\right)\mathclose{} {({\tilde{x}}^{\top})}^{\top} \\ &= \mathbf{I} \cdot \tilde{x}\\ &= \tilde{x} \end{aligned} \\

> **NOTE:**
>
> **Example 6 (Derivative of a transpose product)** Let \\\tilde{x}= {(3, 5)}^{\top}\\ and \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\{\tilde{x}}^{\top}\tilde{\beta}= 3\beta_1 + 5\beta_2\\, and by [Corollary 1](#cor-deriv-lincom-tp):
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}\left(\underbrace{{\tilde{x}}^{\top}}\_{1 \times 2}\underbrace{\tilde{\beta}}\_{2 \times 1}\right)}\_{2 \times 1} = \underbrace{\tilde{x}}\_{2 \times 1} = \begin{pmatrix} 3 \\ 5 \end{pmatrix} \\

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 6 (Derivative of a quadratic form)** For a quadratic form (see [quadratic form](linear-algebra.llms.md#def-quadratic-form)), if \\S\\ is a symmetric \\p \times p\\ matrix that is constant with respect to \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} ({\tilde{\beta}}^{\top} S \tilde{\beta})}\_{p \times 1} = \underbrace{2 S \tilde{\beta}}\_{p \times 1} \\

> **NOTE:**
>
> *Proof*. Expanding entry-wise, \\{\tilde{\beta}}^{\top} S \tilde{\beta}= \sum\_{j=1}^p \sum\_{k=1}^p s\_{jk} \beta_j \beta_k\\. Differentiating component-wise with respect to \\\beta_i\\ for \\i = 1, \ldots, p\\:
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}S\tilde{\beta})\right\]\_i &= \frac{\partial}{\partial \beta_i} \sum\_{j=1}^p \sum\_{k=1}^p s\_{jk} \beta_j \beta_k && \text{(expand quadratic form)} \\ &= \sum\_{k=1}^p s\_{ik} \beta_k + \sum\_{j=1}^p s\_{ji} \beta_j && \text{(product rule for } \beta_i \beta_k \text{)} \\ &= \[S\tilde{\beta}\]\_i + \[{S}^{\top}\tilde{\beta}\]\_i && \text{(matrix-vector multiplication definition)} \\ &= \[(S + {S}^{\top})\tilde{\beta}\]\_i && \text{(linearity of matrix multiplication)} \end{aligned} \\
>
> When \\S\\ is symmetric (\\S = {S}^{\top}\\), \\S + {S}^{\top} = 2S\\, so \\\frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}S\tilde{\beta}) = 2S\tilde{\beta}\\.

This operation is like taking the derivative of \\cx^2\\ with respect to \\x\\ in non-vector calculus.

> **NOTE:**
>
> **Example 7 (Derivative of a quadratic form)** Let \\S = \begin{pmatrix} 3 & 1 \\ 1 & 2 \end{pmatrix}\\ (\\2 \times 2\\, symmetric and constant) and \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\{\tilde{\beta}}^{\top}S\tilde{\beta}= 3\beta_1^2 + 2\beta_1\beta_2 + 2\beta_2^2\\. By [Theorem 6](#thm-quadratic-form):
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}S\tilde{\beta})}\_{2 \times 1} = 2 S \tilde{\beta} = 2 \begin{pmatrix} 3 & 1 \\ 1 & 2 \end{pmatrix} \begin{pmatrix} \beta_1 \\ \beta_2 \end{pmatrix} = \begin{pmatrix} 6\beta_1 + 2\beta_2 \\ 2\beta_1 + 4\beta_2 \end{pmatrix} \\
>
> Differentiating component-wise directly:
>
> \\ \begin{pmatrix} \frac{\partial}{\partial \beta_1}(3\beta_1^2 + 2\beta_1\beta_2 + 2\beta_2^2) \\ \frac{\partial}{\partial \beta_2}(3\beta_1^2 + 2\beta_1\beta_2 + 2\beta_2^2) \end{pmatrix} = \begin{pmatrix} 6\beta_1 + 2\beta_2 \\ 2\beta_1 + 4\beta_2 \end{pmatrix} \\
>
> Both methods agree.

> **NOTE:**
>
> **Corollary 2 (Derivative of a simple quadratic form)** \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} ({\tilde{\beta}}^{\top}\tilde{\beta})}\_{p \times 1} = \underbrace{2\tilde{\beta}}\_{p \times 1} \\

> **NOTE:**
>
> *Proof*. Applying [Theorem 6](#thm-quadratic-form) with \\S = \mathbf{I}\_{p \times p}\\ (which is symmetric and constant with respect to \\\tilde{\beta}\\):
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\tilde{\beta}) &= \frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\mathbf{I}\_{p \times p}\tilde{\beta}) && \text{(rewrite with identity matrix)} \\ &= 2\mathbf{I}\_{p \times p}\tilde{\beta} && \text{(apply } \text{@thm-quadratic-form} \text{ with } S = \mathbf{I}\_{p \times p} \text{)} \\ &= 2\tilde{\beta} && \text{(identity matrix property)} \end{aligned} \\

This vector derivative is like taking the derivative of \\x^2\\.

> **NOTE:**
>
> **Example 8 (Derivative of a sum of squares)** Let \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\, so \\{\tilde{\beta}}^{\top}\tilde{\beta}= \beta_1^2 + \beta_2^2\\. By [Corollary 2](#cor-deriv-normsq):
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\tilde{\beta})}\_{2 \times 1} = 2\tilde{\beta} = \begin{pmatrix} 2\beta_1 \\ 2\beta_2 \end{pmatrix} \\
>
> Direct partial differentiation yields the same column vector.

------------------------------------------------------------------------

> **NOTE:**
>
> **Theorem 7 (Vector chain rule)** \\\frac{\partial z}{\partial \tilde{x}} = \frac{\partial y}{\partial \tilde{x}} \frac{\partial z}{\partial y}\\
>
> or in Euler/Lagrange notation:
>
> \\(f(g(\tilde{x})))' = \tilde{g}'(\tilde{x}) f'(g(\tilde{x}))\\

See <https://quickfem.com/finite-element-analysis/>, specifically <https://quickfem.com/wp-content/uploads/IFEM.AppF_.pdf>

See also <https://en.wikipedia.org/wiki/Gradient#Relationship_with_Fr%C3%A9chet_derivative>

This chain rule is like the univariate [chain rule](calculus.llms.md#thm-chain-rule), but the order matters now. The version presented here is for the [gradient](https://en.wikipedia.org/wiki/Gradient) (column vector); the [total derivative](https://en.wikipedia.org/wiki/Total_derivative) (row vector) would be the [transpose of the gradient](https://en.wikipedia.org/wiki/Gradient#Relationship_with_total_derivative).

------------------------------------------------------------------------

> **NOTE:**
>
> **Corollary 3 (Vector chain rule for quadratic forms)** \\\frac{\partial}{\partial \tilde{\beta}}{\mathopen{}\left(\tilde{\varepsilon}(\tilde{\beta})\cdot \tilde{\varepsilon}(\tilde{\beta})\right)\mathclose{}} = \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}}\tilde{\varepsilon}(\tilde{\beta})\right)\mathclose{} \mathopen{}\left(2 \tilde{\varepsilon}(\tilde{\beta})\right)\mathclose{}\\

# 1 Additional resources

See also the [Linear Algebra and Vector Calculus references](linear-algebra.llms.md#sec-additional-resources).

- [Hua Zhou](https://hua-zhou.github.io/)’s [lecture notes for “UCLA Biostat 216 - Mathematical Methods for Biostatistics” (2023 Fall)](https://ucla-biostat-216.github.io/2023fall/schedule/schedule.html)

# References

Fieller, Nick. 2016. *Basics of Matrix Algebra for Statistics with R*. Chapman; Hall/CRC. <https://doi.org/10.1201/9781315370200>.

Back to top
