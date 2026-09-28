# Vector Calculus

Code

Published

Last modified: 2026-09-28 16:24:06 (PDT)

(adapted from Fieller ([2016](#ref-fieller2018basics)), [Section 7.2](https://www.taylorfrancis.com/chapters/mono/10.1201/9781315370200-7/vector-matrix-calculus-nick-fieller?context=ubx&refId=c310b723-786a-4f33-ae56-720a6cccd3a1))

This section covers derivatives of functions of vectors and matrices. Linear algebra prerequisites — including vectors, matrices, transpose, dot product, and quadratic forms — are covered in [Linear Algebra](linear-algebra.llms.md).

Let \\\tilde{x}\\ and \\\tilde{\beta}\\ be column vectors of length \\p\\ (see [column vector](linear-algebra.llms.md#def-column-vector) and [dot product](linear-algebra.llms.md#def-dot-product)).

> **NOTE:**
>
> **Definition 1 (Vector derivative)** If \\f(\tilde{\beta})\\ is a scalar-valued function of a \\p \times 1\\ vector \\\tilde{\beta}\\, such as \\f(\tilde{\beta}) = {\tilde{x}}^{\top}\tilde{\beta}\\, then its **vector derivative** is:
>
> \\ \frac{\partial}{\partial \tilde{\beta}} f(\tilde{\beta}) = \begin{bmatrix} \frac{\partial}{\partial \beta_1}f(\tilde{\beta}) \\ \frac{\partial}{\partial \beta_2}f(\tilde{\beta}) \\ \vdots \\ \frac{\partial}{\partial \beta_p}f(\tilde{\beta}) \end{bmatrix} \\

> **TIP:**
>
> Hutchinson’s [Gradients Refresher](https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/#gradients) (17 min) covers gradients and partial derivatives, the ideas behind this section ([Hutchinson, n.d.](#ref-hutchinson_wwu_ml_videos)). The login for the video site is posted [on Canvas](https://wwu.instructure.com/courses/1906010/modules#module_3922392).

> **NOTE:**
>
> **Definition 2 (Row-vector derivative)** If \\f(\tilde{\beta})\\ is a scalar-valued function of a \\p \times 1\\ vector \\\tilde{\beta}\\, such as \\f(\tilde{\beta}) = {\tilde{x}}^{\top}\tilde{\beta}\\, then its **row-vector derivative** is:
>
> \\ \frac{\partial}{\partial \tilde{\beta}^{\top}} f(\tilde{\beta}) = \begin{bmatrix} \frac{\partial}{\partial \beta_1}f(\tilde{\beta}) & \frac{\partial}{\partial \beta_2}f(\tilde{\beta}) & \cdots & \frac{\partial}{\partial \beta_p}f(\tilde{\beta}) \end{bmatrix} \\

> **NOTE:**
>
> **Theorem 1 (Row and column derivatives are transposes)** \\\frac{\partial}{\partial \tilde{\beta}^{\top}} f(\tilde{\beta}) = \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} f(\tilde{\beta})\right)\mathclose{}^{\top}\\
>
> \\\frac{\partial}{\partial \tilde{\beta}} f(\tilde{\beta}) = \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}^{\top}} f(\tilde{\beta})\right)\mathclose{}^{\top}\\

> **NOTE:**
>
> *Proof*. By [Definition 1](#def-vector-derivative) and [Definition 2](#def-row-vector-derivative), entry \\j\\ of both \\\frac{\partial}{\partial \tilde{\beta}} f(\tilde{\beta})\\ and \\\frac{\partial}{\partial \tilde{\beta}^{\top}} f(\tilde{\beta})\\ is \\\frac{\partial}{\partial \beta_j} f(\tilde{\beta})\\; the first is a \\p \times 1\\ column and the second a \\1 \times p\\ row with the same entries in the same order, so each is the transpose of the other.

> **NOTE:**
>
> **Example 1 (Row and column derivatives of a linear function)** For \\f(\tilde{\beta}) = 3\beta_1 + 5\beta_2\\:
>
> \\ \frac{\partial}{\partial \tilde{\beta}} f(\tilde{\beta}) = \begin{bmatrix}3 \\ 5\end{bmatrix}, \qquad \frac{\partial}{\partial \tilde{\beta}^{\top}} f(\tilde{\beta}) = \begin{bmatrix}3 & 5\end{bmatrix}, \\
>
> and each is the transpose of the other.

> **NOTE:**
>
> **Definition 3 (Derivative of a vector-valued function)** If \\\tilde{y}= \tilde{y}(\tilde{\beta}) = {(y_1, \ldots, y_q)}^{\top}\\ is a \\q \times 1\\ vector-valued function of the \\p \times 1\\ vector \\\tilde{\beta}\\, its **derivative with respect to** \\\tilde{\beta}\\ is the \\p \times q\\ matrix whose \\(i, j)\\ entry is
>
> \\ \mathopen{}\left\[\frac{\partial}{\partial \tilde{\beta}} {\tilde{y}}^{\top}\right\]\mathclose{}\_{ij} \stackrel{\text{def}}{=}\frac{\partial}{\partial \beta_i} y_j, \qquad i = 1, \ldots, p, \quad j = 1, \ldots, q. \\
>
> These notes use this *denominator layout* throughout: rows index the entries of \\\tilde{\beta}\\ (the denominator) and columns index the entries of \\\tilde{y}\\ (the numerator), so column \\j\\ is the vector derivative \\\frac{\partial}{\partial \tilde{\beta}} y_j\\ ([Definition 1](#def-vector-derivative)). Both \\\frac{\partial}{\partial \tilde{\beta}} \tilde{y}\\ and \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{y}}^{\top}\\ denote this \\p \times q\\ matrix.

Some sources use the transposed, *numerator layout*, in which the derivative is the \\q \times p\\ Jacobian matrix with \\(j, i)\\ entry \\\frac{\partial}{\partial \beta_i} y_j\\. Check a source’s layout before combining its formulas with these.

> **NOTE:**
>
> **Example 2 (Differentiating a \\3 \times 1\\ function of a \\2 \times 1\\ vector)** Let \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\ (\\p = 2\\) and \\\tilde{y}(\tilde{\beta}) = {(\beta_1^2,\\ \beta_1\beta_2,\\ 3\beta_2)}^{\top}\\ (\\q = 3\\). Then
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} {\tilde{y}}^{\top}}\_{2 \times 3} = \begin{bmatrix} \frac{\partial}{\partial \beta_1} \beta_1^2 & \frac{\partial}{\partial \beta_1} \beta_1\beta_2 & \frac{\partial}{\partial \beta_1} 3\beta_2 \\ \frac{\partial}{\partial \beta_2} \beta_1^2 & \frac{\partial}{\partial \beta_2} \beta_1\beta_2 & \frac{\partial}{\partial \beta_2} 3\beta_2 \end{bmatrix} = \begin{bmatrix} 2\beta_1 & \beta_2 & 0 \\ 0 & \beta_1 & 3 \end{bmatrix} \\

> **NOTE:**
>
> **Definition 4 (Constant)** A \\q \times 1\\ vector \\\tilde{x}\\ is **constant with respect to** the \\p \times 1\\ vector \\\tilde{\beta}\\ if its derivative ([Definition 3](#def-vector-valued-derivative)) is zero:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}}\_{p \times q} = \underbrace{\mathbf{0}}\_{p \times q} \\

> **NOTE:**
>
> **Example 3 (A constant vector)** Let \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\ and \\\tilde{x}= {(3, 5)}^{\top}\\, so \\x_1 = 3\\ and \\x_2 = 5\\ do not depend on \\\tilde{\beta}\\. Expanding \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}\\ into its matrix of scalar partial derivatives ([Definition 3](#def-vector-valued-derivative)) and evaluating each entry:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}}\_{2 \times 2} = \frac{\partial}{\partial \tilde{\beta}} \begin{bmatrix}x_1 & x_2\end{bmatrix} = \begin{bmatrix} \frac{\partial}{\partial \beta_1} x_1 & \frac{\partial}{\partial \beta_1} x_2 \\ \frac{\partial}{\partial \beta_2} x_1 & \frac{\partial}{\partial \beta_2} x_2 \end{bmatrix} = \begin{bmatrix} \frac{\partial}{\partial \beta_1} 3 & \frac{\partial}{\partial \beta_1} 5 \\ \frac{\partial}{\partial \beta_2} 3 & \frac{\partial}{\partial \beta_2} 5 \end{bmatrix} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix} = \underbrace{\mathbf{0}}\_{2 \times 2} \\
>
> Every entry is the derivative of a constant, so \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top} = \underbrace{\mathbf{0}}\_{2 \times 2}\\ and \\\tilde{x}\\ is constant with respect to \\\tilde{\beta}\\ ([Definition 4](#def-constant-wrt-vector)).

> **NOTE:**
>
> **Theorem 2 (Derivative of a dot product)** If \\\tilde{x}\\ is constant with respect to \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\tilde{x}\cdot \tilde{\beta})}\_{p \times 1} = \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\tilde{\beta}\cdot \tilde{x})}\_{p \times 1} = \underbrace{\tilde{x}}\_{p \times 1} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}} (\tilde{x}\cdot \tilde{\beta}) &= \begin{bmatrix} \frac{\partial}{\partial \beta_1}(x_1\beta_1+x_2\beta_2 +...+x_p \beta_p ) \\ \frac{\partial}{\partial \beta_2}(x_1\beta_1+x_2\beta_2 +...+x_p \beta_p ) \\ \vdots \\ \frac{\partial}{\partial \beta_p}(x_1\beta_1+x_2\beta_2 +...+x_p \beta_p ) \end{bmatrix} \\ &= \begin{bmatrix} x\_{1} \\ x\_{2} \\ \vdots \\ x\_{p} \end{bmatrix} \\ &= \tilde{x} \end{aligned} \\

> **NOTE:**
>
> **Example 4 (Derivative of a dot product)** Let \\\tilde{x}= {(3, 5)}^{\top}\\ (constant with respect to \\\tilde{\beta}\\; see [Example 3](#exm-constant-wrt-vector)) and \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\\tilde{x}\cdot \tilde{\beta}= 3\beta_1 + 5\beta_2\\, and by [Theorem 2](#thm-deriv-lincom):
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
> **Theorem 3 (Product rule for dot-products)** If \\\tilde{a} = \tilde{a}(\tilde{x})\\ and \\\tilde{b} = \tilde{b}(\tilde{x})\\ are differentiable \\p \times 1\\ vector functions of \\\tilde{x}\\, then:
>
> \\ \begin{aligned} \frac{\partial}{\partial \underbrace{\tilde{x}}\_{p \times 1}} \underbrace{\tilde{a}}\_{p \times 1} \cdot \underbrace{\tilde{b}}\_{p \times 1} &= \mathopen{}\left( \frac{\partial}{\partial \underbrace{\tilde{x}}\_{p \times 1}} \underbrace{{\tilde{a}}^{\top}}\_{1 \times p} \right)\mathclose{} \underbrace{\tilde{b}}\_{p \times 1} + \mathopen{}\left( \frac{\partial}{\partial \underbrace{\tilde{x}}\_{p \times 1}} \underbrace{{\tilde{b}}^{\top}}\_{1 \times p} \right)\mathclose{} \underbrace{\tilde{a}}\_{p \times 1} \end{aligned} \\

> **NOTE:**
>
> *Proof*. Entry-wise, for \\i = 1, \ldots, p\\:
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{x}} (\tilde{a} \cdot \tilde{b})\right\]\_i &= \frac{\partial}{\partial x_i} \sum\_{k=1}^p a_k b_k \\ &= \sum\_{k=1}^p \mathopen{}\left(b_k \frac{\partial}{\partial x_i} a_k + a_k \frac{\partial}{\partial x_i} b_k\right)\mathclose{} \\ &= \left\[\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} {\tilde{a}}^{\top}\right)\mathclose{}\tilde{b}\right\]\_i + \left\[\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} {\tilde{b}}^{\top}\right)\mathclose{}\tilde{a}\right\]\_i \end{aligned} \\

> **NOTE:**
>
> **Example 5 (Example of the dot-product rule)** Apply [Theorem 3](#thm-deriv-dot-product) with the vector \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\ in the role of \\\tilde{x}\\. Let \\\tilde{a}(\tilde{\beta}) = {(\beta_1, \beta_1\beta_2)}^{\top}\\ and \\\tilde{b}(\tilde{\beta}) = {(\beta_2, \beta_1)}^{\top}\\. Then:
>
> \\ \tilde{a} \cdot \tilde{b} = \beta_1 \cdot \beta_2 + \beta_1\beta_2 \cdot \beta_1 = \beta_1\beta_2 + \beta_1^2\beta_2 \\
>
> By direct calculation:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\tilde{a} \cdot \tilde{b})}\_{2 \times 1} = \frac{\partial}{\partial \tilde{\beta}}(\beta_1\beta_2 + \beta_1^2\beta_2) = \begin{pmatrix} \beta_2 + 2\beta_1\beta_2 \\ \beta_1 + \beta_1^2 \end{pmatrix} \\
>
> By the product rule ([Theorem 3](#thm-deriv-dot-product)), using \\\underbrace{\frac{\partial}{\partial \tilde{\beta}}{\tilde{a}}^{\top}}\_{2 \times 2} = \begin{pmatrix}1 & \beta_2 \\ 0 & \beta_1\end{pmatrix}\\ and \\\underbrace{\frac{\partial}{\partial \tilde{\beta}}{\tilde{b}}^{\top}}\_{2 \times 2} = \begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix}\\:
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\tilde{a} \cdot \tilde{b})}\_{2 \times 1} &= \underbrace{\begin{pmatrix}1 & \beta_2 \\ 0 & \beta_1\end{pmatrix}}\_{2 \times 2} \underbrace{\begin{pmatrix}\beta_2 \\ \beta_1\end{pmatrix}}\_{2 \times 1} + \underbrace{\begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix}}\_{2 \times 2} \underbrace{\begin{pmatrix}\beta_1 \\ \beta_1\beta_2\end{pmatrix}}\_{2 \times 1} \\ &= \begin{pmatrix}\beta_2 + \beta_1\beta_2 \\ \beta_1^2\end{pmatrix} + \begin{pmatrix}\beta_1\beta_2 \\ \beta_1\end{pmatrix} \\ &= \begin{pmatrix}\beta_2 + 2\beta_1\beta_2 \\ \beta_1^2 + \beta_1\end{pmatrix} \end{aligned} \\
>
> Both methods agree.

> **NOTE:**
>
> **Theorem 4 (Derivative of a linear map)** If \\\mathbf{A}\\ is an \\m \times p\\ matrix that is constant with respect to \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{\beta})}\_{p \times m} = \underbrace{{\mathbf{A}}^{\top}}\_{p \times m} \\

> **NOTE:**
>
> *Proof*. For entry \\(i,j)\\, where row \\i\\ indexes the denominator \\\tilde{\beta}\\ (see [Definition 3](#def-vector-valued-derivative)) and column \\j\\ indexes the numerator \\\mathbf{A}\tilde{\beta}\\:
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{\beta})\right\]\_{ij} &= \frac{\partial}{\partial \beta_i} (\mathbf{A}\tilde{\beta})\_j \\ &= \frac{\partial}{\partial \beta_i} \sum\_{k=1}^{p} a\_{jk} \beta_k \\ &= a\_{ji} \\ &= \left\[{\mathbf{A}}^{\top}\right\]\_{ij} \end{aligned} \\

> **NOTE:**
>
> **Example 6 (Derivative of a linear map)** Let \\\mathbf{A} = \begin{pmatrix} 2 & 3 \end{pmatrix}\\ (\\1 \times 2\\) and \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\\mathbf{A}\tilde{\beta}= 2\beta_1 + 3\beta_2\\, and by [Theorem 4](#thm-deriv-linear-map):
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\mathbf{A}\tilde{\beta})}\_{2 \times 1} = \underbrace{{\mathbf{A}}^{\top}}\_{2 \times 1} = \begin{pmatrix} 2 \\ 3 \end{pmatrix} \\

> **NOTE:**
>
> **Theorem 5 (Vector-derivative of a matrix-vector product)** If \\\mathbf{A}\\ is an \\m \times q\\ matrix that is constant with respect to \\\tilde{\beta}\\, and \\\tilde{v} = \tilde{v}(\tilde{\beta})\\ is a \\q \times 1\\ vector that depends on the \\p \times 1\\ vector \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{v})}\_{p \times m} = \underbrace{\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{}}\_{p \times q} \underbrace{{\mathbf{A}}^{\top}}\_{q \times m} \\
>
> This result generalizes [Theorem 4](#thm-deriv-linear-map), which is the special case \\\tilde{v} = \tilde{\beta}\\ (so that \\\frac{\partial}{\partial \tilde{\beta}} \tilde{\beta}= \mathbf{I}\\ and \\\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{\beta}) = {\mathbf{A}}^{\top}\\).

> **NOTE:**
>
> *Proof*. For entry \\(i,j)\\, where row \\i\\ indexes the denominator \\\tilde{\beta}\\ and column \\j\\ indexes the numerator \\\mathbf{A}\tilde{v}\\ (see [Definition 3](#def-vector-valued-derivative)):
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{v})\right\]\_{ij} &= \frac{\partial}{\partial \beta_i} (\mathbf{A}\tilde{v})\_j \\ &= \frac{\partial}{\partial \beta_i} \sum\_{k=1}^{q} a\_{jk} v_k \\ &= \sum\_{k=1}^{q} a\_{jk} \frac{\partial}{\partial \beta_i} v_k \\ &= \sum\_{k=1}^{q} \left\[\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right\]\_{ik} \left\[{\mathbf{A}}^{\top}\right\]\_{kj} \\ &= \left\[\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{} {\mathbf{A}}^{\top}\right\]\_{ij} \end{aligned} \\

> **NOTE:**
>
> **Example 7 (Vector-derivative of a matrix-vector product)** Let \\\mathbf{A} = \begin{pmatrix} 2 & 3 \end{pmatrix}\\ (\\1 \times 2\\, constant) and \\\tilde{v}(\tilde{\beta}) = {(\beta_1^2, \beta_2^2)}^{\top}\\. Then \\\mathbf{A}\tilde{v} = 2\beta_1^2 + 3\beta_2^2\\. By [Theorem 5](#thm-deriv-matrix-vector):
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\mathbf{A}\tilde{v})}\_{2 \times 1} &= \begin{pmatrix} 2\beta_1 & 0 \\ 0 & 2\beta_2 \end{pmatrix} \begin{pmatrix} 2 \\ 3 \end{pmatrix} \\ &= \begin{pmatrix} 4\beta_1 \\ 6\beta_2 \end{pmatrix} \end{aligned} \\

> **NOTE:**
>
> **Theorem 6 (Vector-derivative of a product of matrices)** If \\\mathbf{A}\\ (\\\ell \times m\\) and \\\mathbf{B}\\ (\\m \times q\\) are constant with respect to \\\tilde{\beta}\\, and \\\tilde{v} = \tilde{v}(\tilde{\beta})\\ is a \\q \times 1\\ vector that depends on the \\p \times 1\\ vector \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A} \mathbf{B} \tilde{v})}\_{p \times \ell} = \underbrace{\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{}}\_{p \times q} \underbrace{{\mathbf{B}}^{\top}}\_{q \times m} \underbrace{{\mathbf{A}}^{\top}}\_{m \times \ell} \\

> **NOTE:**
>
> *Proof*. Apply [Theorem 5](#thm-deriv-matrix-vector) with the constant \\\ell \times q\\ matrix \\\mathbf{A}\mathbf{B}\\, then use the [transpose of a product](linear-algebra.llms.md#thm-transpose-product):
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}} (\mathbf{A} \mathbf{B} \tilde{v}) &= \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{} {(\mathbf{A}\mathbf{B})}^{\top} && \text{(derivative of a matrix-vector product)} \\ &= \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{} {\mathbf{B}}^{\top}\\{\mathbf{A}}^{\top} && \text{(transpose of a product)} \end{aligned} \\

> **NOTE:**
>
> **Example 8** Let \\\mathbf{A} = \begin{pmatrix}1 & 0\end{pmatrix}\\ (\\1 \times 2\\), \\\mathbf{B} = \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix}\\ (\\2 \times 2\\), and \\\tilde{v}(\tilde{\beta}) = \tilde{\beta}\\ where \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\\mathbf{A}\mathbf{B}\tilde{v} = 2\beta_1\\, and:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\mathbf{A}\mathbf{B}\tilde{v})}\_{2 \times 1} = \underbrace{\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}}\tilde{\beta}\right)\mathclose{}}\_{2 \times 2} \underbrace{{\mathbf{B}}^{\top}}\_{2 \times 2} \underbrace{{\mathbf{A}}^{\top}}\_{2 \times 1} = \mathbf{I}\_2 \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix} \begin{pmatrix}1 \\ 0\end{pmatrix} = \begin{pmatrix}2 \\ 0\end{pmatrix} \\

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
> Since \\\tilde{x}\\ is constant with respect to \\\tilde{\beta}\\, \\\mathbf{A} = {\tilde{x}}^{\top}\\ is a constant \\1 \times p\\ matrix. Applying [Theorem 5](#thm-deriv-matrix-vector) with \\\tilde{v} = \tilde{\beta}\\ (so \\\frac{\partial}{\partial \tilde{\beta}}\tilde{\beta}= \mathbf{I}\\):
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}}({\tilde{x}}^{\top}\tilde{\beta}) &= \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}}\tilde{\beta}\right)\mathclose{} {({\tilde{x}}^{\top})}^{\top} \\ &= \mathbf{I} \cdot \tilde{x}\\ &= \tilde{x} \end{aligned} \\

> **NOTE:**
>
> **Example 9 (Derivative of a transpose product)** Let \\\tilde{x}= {(3, 5)}^{\top}\\ and \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\{\tilde{x}}^{\top}\tilde{\beta}= 3\beta_1 + 5\beta_2\\, and by [Corollary 1](#cor-deriv-lincom-tp):
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}\left(\underbrace{{\tilde{x}}^{\top}}\_{1 \times 2}\underbrace{\tilde{\beta}}\_{2 \times 1}\right)}\_{2 \times 1} = \underbrace{\tilde{x}}\_{2 \times 1} = \begin{pmatrix} 3 \\ 5 \end{pmatrix} \\

> **NOTE:**
>
> **Theorem 7 (Derivative of a quadratic form)** For a quadratic form (see [quadratic form](linear-algebra.llms.md#def-quadratic-form)), if \\\mathbf{S}\\ is a symmetric \\p \times p\\ matrix that is constant with respect to \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} ({\tilde{\beta}}^{\top} \mathbf{S} \tilde{\beta})}\_{p \times 1} = \underbrace{2 \mathbf{S} \tilde{\beta}}\_{p \times 1} \\

> **NOTE:**
>
> *Proof*. Expanding entry-wise, \\{\tilde{\beta}}^{\top} \mathbf{S} \tilde{\beta}= \sum\_{j=1}^p \sum\_{k=1}^p s\_{jk} \beta_j \beta_k\\. Differentiating component-wise with respect to \\\beta_i\\ for \\i = 1, \ldots, p\\:
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\mathbf{S}\tilde{\beta})\right\]\_i &= \frac{\partial}{\partial \beta_i} \sum\_{j=1}^p \sum\_{k=1}^p s\_{jk} \beta_j \beta_k && \text{(expand quadratic form)} \\ &= \sum\_{k=1}^p s\_{ik} \beta_k + \sum\_{j=1}^p s\_{ji} \beta_j && \text{(product rule for } \beta_i \beta_k \text{)} \\ &= \[\mathbf{S}\tilde{\beta}\]\_i + \[{\mathbf{S}}^{\top}\tilde{\beta}\]\_i && \text{(matrix-vector multiplication definition)} \\ &= \[(\mathbf{S} + {\mathbf{S}}^{\top})\tilde{\beta}\]\_i && \text{(linearity of matrix multiplication)} \end{aligned} \\
>
> When \\\mathbf{S}\\ is symmetric (\\\mathbf{S} = {\mathbf{S}}^{\top}\\), \\\mathbf{S} + {\mathbf{S}}^{\top} = 2\mathbf{S}\\, so \\\frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\mathbf{S}\tilde{\beta}) = 2\mathbf{S}\tilde{\beta}\\.

This operation is like taking the derivative of \\cx^2\\ with respect to \\x\\ in non-vector calculus.

> **NOTE:**
>
> **Example 10 (Derivative of a quadratic form)** Let \\\mathbf{S} = \begin{pmatrix} 3 & 1 \\ 1 & 2 \end{pmatrix}\\ (\\2 \times 2\\, symmetric and constant) and \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\{\tilde{\beta}}^{\top}\mathbf{S}\tilde{\beta}= 3\beta_1^2 + 2\beta_1\beta_2 + 2\beta_2^2\\. By [Theorem 7](#thm-quadratic-form):
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\mathbf{S}\tilde{\beta})}\_{2 \times 1} = 2 \mathbf{S} \tilde{\beta} = 2 \begin{pmatrix} 3 & 1 \\ 1 & 2 \end{pmatrix} \begin{pmatrix} \beta_1 \\ \beta_2 \end{pmatrix} = \begin{pmatrix} 6\beta_1 + 2\beta_2 \\ 2\beta_1 + 4\beta_2 \end{pmatrix} \\
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
> *Proof*. Applying [Theorem 7](#thm-quadratic-form) with \\\mathbf{S} = \mathbf{I}\_{p \times p}\\ (which is symmetric and constant with respect to \\\tilde{\beta}\\):
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\tilde{\beta}) &= \frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\mathbf{I}\_{p \times p}\tilde{\beta}) && \text{(rewrite with identity matrix)} \\ &= 2\mathbf{I}\_{p \times p}\tilde{\beta} && \text{(derivative of a quadratic form, with } \mathbf{S} = \mathbf{I}\_{p \times p} \text{)} \\ &= 2\tilde{\beta} && \text{(identity matrix property)} \end{aligned} \\

This vector derivative is like taking the derivative of \\x^2\\.

> **NOTE:**
>
> **Example 11 (Derivative of a sum of squares)** Let \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\, so \\{\tilde{\beta}}^{\top}\tilde{\beta}= \beta_1^2 + \beta_2^2\\. By [Corollary 2](#cor-deriv-normsq):
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\tilde{\beta})}\_{2 \times 1} = 2\tilde{\beta} = \begin{pmatrix} 2\beta_1 \\ 2\beta_2 \end{pmatrix} \\
>
> Direct partial differentiation yields the same column vector.

> **NOTE:**
>
> **Theorem 8 (Vector chain rule)** Let \\\tilde{x}\\ be a \\p \times 1\\ vector, let \\\tilde{y}= \tilde{g}(\tilde{x})\\ be a \\q \times 1\\ vector-valued function of \\\tilde{x}\\, and let \\z = f(\tilde{y})\\ be a scalar-valued function of \\\tilde{y}\\, where \\\tilde{g}\\ and \\f\\ have continuous partial derivatives. Then \\z = f(\tilde{g}(\tilde{x}))\\, as a function of \\\tilde{x}\\, satisfies
>
> \\ \underbrace{\frac{\partial z}{\partial \tilde{x}}}\_{p \times 1} = \underbrace{\frac{\partial \tilde{y}}{\partial \tilde{x}}}\_{p \times q} \underbrace{\frac{\partial z}{\partial \tilde{y}}}\_{q \times 1} \\
>
> where \\\frac{\partial \tilde{y}}{\partial \tilde{x}}\\ is the derivative of [Definition 3](#def-vector-valued-derivative) and \\\frac{\partial z}{\partial \tilde{x}}\\ and \\\frac{\partial z}{\partial \tilde{y}}\\ are vector derivatives ([Definition 1](#def-vector-derivative)).

See <https://quickfem.com/finite-element-analysis/>, specifically <https://quickfem.com/wp-content/uploads/IFEM.AppF_.pdf>

See also <https://en.wikipedia.org/wiki/Gradient#Relationship_with_Fr%C3%A9chet_derivative>

This chain rule is like the univariate [chain rule](calculus.llms.md#thm-chain-rule), but the order matters now. The version presented here is for the [gradient](https://en.wikipedia.org/wiki/Gradient) (column vector); the [total derivative](https://en.wikipedia.org/wiki/Total_derivative) (row vector) would be the [transpose of the gradient](https://en.wikipedia.org/wiki/Gradient#Relationship_with_total_derivative).

> **NOTE:**
>
> **Corollary 3 (Vector chain rule for quadratic forms)** If \\\tilde{\varepsilon}= \tilde{\varepsilon}(\tilde{\beta})\\ is an \\n \times 1\\ vector-valued function of the \\p \times 1\\ vector \\\tilde{\beta}\\, with continuous partial derivatives, then
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}{\mathopen{}\left(\tilde{\varepsilon}(\tilde{\beta})\cdot \tilde{\varepsilon}(\tilde{\beta})\right)\mathclose{}}}\_{p \times 1} = \underbrace{\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}}\tilde{\varepsilon}(\tilde{\beta})\right)\mathclose{}}\_{p \times n} \underbrace{\mathopen{}\left(2 \tilde{\varepsilon}(\tilde{\beta})\right)\mathclose{}}\_{n \times 1} \\

> **NOTE:**
>
> *Proof*. Apply [Theorem 8](#thm-chain-vec) with \\\tilde{x}= \tilde{\beta}\\, \\\tilde{y}= \tilde{\varepsilon}\\, \\q = n\\, and \\z = f(\tilde{\varepsilon}) = \tilde{\varepsilon}\cdot \tilde{\varepsilon}= {\tilde{\varepsilon}}^{\top}\tilde{\varepsilon}\\:
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}}\mathopen{}\left(\tilde{\varepsilon}\cdot \tilde{\varepsilon}\right)\mathclose{} &= \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}}\tilde{\varepsilon}\right)\mathclose{} \frac{\partial}{\partial \tilde{\varepsilon}}\mathopen{}\left({\tilde{\varepsilon}}^{\top}\tilde{\varepsilon}\right)\mathclose{} && \text{(vector chain rule)} \\ &= \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}}\tilde{\varepsilon}\right)\mathclose{} \mathopen{}\left(2\tilde{\varepsilon}\right)\mathclose{} && \text{(derivative of a simple quadratic form, in } \tilde{\varepsilon}\text{)} \end{aligned} \\
>
> The second step is [Corollary 2](#cor-deriv-normsq), applied to the \\n \times 1\\ vector \\\tilde{\varepsilon}\\ in place of \\\tilde{\beta}\\.

> **NOTE:**
>
> **Example 12 (Derivative of the residual sum of squares)** Let \\\tilde{y}\\ (\\n \times 1\\) and \\\mathbf{X}\\ (\\n \times p\\) be constant with respect to \\\tilde{\beta}\\, and let \\\tilde{\varepsilon}(\tilde{\beta}) = \tilde{y}- \mathbf{X}\tilde{\beta}\\ be the vector of residuals. By [Theorem 4](#thm-deriv-linear-map), \\\frac{\partial}{\partial \tilde{\beta}}(\mathbf{X}\tilde{\beta}) = {\mathbf{X}}^{\top}\\, and \\\frac{\partial}{\partial \tilde{\beta}}\tilde{y}= \mathbf{0}\_{p \times n}\\ because \\\tilde{y}\\ is constant, so \\\frac{\partial}{\partial \tilde{\beta}}\tilde{\varepsilon}= -{\mathbf{X}}^{\top}\\ (\\p \times n\\). By [Corollary 3](#cor-chain-qf):
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}}\mathopen{}\left(\tilde{\varepsilon}\cdot \tilde{\varepsilon}\right)\mathclose{} &= \mathopen{}\left(-{\mathbf{X}}^{\top}\right)\mathclose{} \mathopen{}\left(2\tilde{\varepsilon}\right)\mathclose{} && \text{(vector chain rule for quadratic forms)} \\ &= -2\\{\mathbf{X}}^{\top}\mathopen{}\left(\tilde{y}- \mathbf{X}\tilde{\beta}\right)\mathclose{} && \text{(substitute } \tilde{\varepsilon}= \tilde{y}- \mathbf{X}\tilde{\beta}\text{)} \end{aligned} \\
>
> Setting this \\p \times 1\\ vector to \\\tilde{0}\\ gives the normal equations \\{\mathbf{X}}^{\top}\mathbf{X}\tilde{\beta}= {\mathbf{X}}^{\top}\tilde{y}\\ of least squares.

> **NOTE:**
>
> **Definition 5 (Matrix derivative)** For a scalar-valued function \\f(\mathbf{X})\\ of an \\m \times n\\ matrix \\\mathbf{X}\\, the **matrix derivative** is the \\m \times n\\ matrix whose \\(i,j)\\ entry is the partial derivative of \\f\\ with respect to the \\(i,j)\\ entry of \\\mathbf{X}\\:
>
> \\ \left\[\frac{\partial}{\partial \mathbf{X}} f\right\]\_{ij} = \frac{\partial}{\partial X\_{ij}} f \\

> **NOTE:**
>
> **Example 13 (The matrix derivative of a trace)** Let \\\mathbf{X}\\ be a \\2 \times 2\\ matrix and \\f(\mathbf{X}) = \operatorname{tr}(\mathbf{X}) = X\_{11} + X\_{22}\\ (see [trace](linear-algebra.llms.md#def-trace)). Then \\\frac{\partial}{\partial X\_{ij}} f = 1\\ if \\i = j\\ and \\0\\ otherwise, so:
>
> \\ \frac{\partial}{\partial \mathbf{X}} f = \mathbf{I}\_2 \\

> **NOTE:**
>
> **Theorem 9 (Matrix derivative of the trace of a matrix product)** If \\\mathbf{A}\\ (\\r \times m\\) and \\\mathbf{B}\\ (\\n \times r\\) are constant with respect to the \\m \times n\\ matrix \\\mathbf{X}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \mathbf{X}} \operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})}\_{m \times n} = \underbrace{{\mathbf{A}}^{\top}}\_{m \times r} \underbrace{{\mathbf{B}}^{\top}}\_{r \times n} \\
>
> The trace makes \\\operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})\\ a scalar, so its matrix derivative is again an \\m \times n\\ matrix. The derivative of the matrix product \\\mathbf{A} \mathbf{X} \mathbf{B}\\ itself (without the trace) is a fourth-order tensor, which is why this result is stated for the scalar \\\operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})\\.

> **NOTE:**
>
> *Proof*. Write \\A\_{kl}\\, \\X\_{kl}\\, and \\B\_{kl}\\ for the entries of \\\mathbf{A}\\, \\\mathbf{X}\\, and \\\mathbf{B}\\. For entry \\(i,j)\\:
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \mathbf{X}} \operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})\right\]\_{ij} &= \frac{\partial}{\partial X\_{ij}} \sum\_{a=1}^{r} \sum\_{b=1}^{m} \sum\_{c=1}^{n} A\_{ab} X\_{bc} B\_{ca} && \text{(trace of the } r \times r \text{ product } \mathbf{A}\mathbf{X}\mathbf{B} \text{)} \\ &= \sum\_{a=1}^{r} A\_{ai} B\_{ja} && \text{(only the terms with } b = i,\\ c = j \text{ depend on } X\_{ij} \text{)} \\ &= \sum\_{a=1}^{r} \left\[{\mathbf{A}}^{\top}\right\]\_{ia} \left\[{\mathbf{B}}^{\top}\right\]\_{aj} && \text{(definition of the transpose)} \\ &= \left\[{\mathbf{A}}^{\top}\\{\mathbf{B}}^{\top}\right\]\_{ij} && \text{(definition of matrix multiplication)} \end{aligned} \\

> **NOTE:**
>
> **Example 14 (Differentiating a weighted trace)** Let \\\mathbf{A} = \mathbf{I}\_2\\ (\\2 \times 2\\) and \\\mathbf{B} = \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix}\\ (\\2 \times 2\\). Then \\\operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B}) = 2X\_{11} + 3X\_{22}\\, and:
>
> \\ \underbrace{\frac{\partial}{\partial \mathbf{X}} \operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})}\_{2 \times 2} = \underbrace{{\mathbf{A}}^{\top}}\_{2 \times 2} \underbrace{{\mathbf{B}}^{\top}}\_{2 \times 2} = \mathbf{I}\_2 \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix} = \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix} \\

## 1 Additional resources

See also the [Linear Algebra and Vector Calculus references](linear-algebra.llms.md#sec-additional-resources).

- [Hua Zhou](https://hua-zhou.github.io/)’s [lecture notes for “UCLA Biostat 216 - Mathematical Methods for Biostatistics” (2023 Fall)](https://ucla-biostat-216.github.io/2023fall/schedule/schedule.html)

## References

Fieller, Nick. 2016. *Basics of Matrix Algebra for Statistics with R*. Chapman; Hall/CRC. <https://doi.org/10.1201/9781315370200>.

Hutchinson, Brian. n.d. *DATA 471/571 (Machine Learning) and CSCI 481/581 (Deep Learning) Video Lectures*. Western Washington University. Accessed September 28, 2026. <https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/>.

Back to top
