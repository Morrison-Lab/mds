# Jacobians and Derivative Rules

Code

Published

Last modified: 2026-11-20 17:52:26 (PST)

# 1 Jacobians and derivative rules

> **NOTE:**
>
> **Definition 1 (Row-vector derivative)** If $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})$ is a scalar-valued function of a $p \times 1$ vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, such as $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, then its **row-vector derivative** is the row vector of its partial derivatives ([Definition 1 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#def-partial-derivative)):
>
> $$\frac{\partial f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}{\partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top}} =
> \begin{bmatrix}
> \frac{\partial}{\partial \beta_{1}}f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) &
> \frac{\partial}{\partial \beta_{2}}f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) &
> \cdots &
> \frac{\partial}{\partial \beta_{p}}f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})
> \end{bmatrix}
> \tag{1}$$
>
> When the [derivative](calculus-derivatives.llms.md#def-derivative) of a scalar-valued function is written as a row vector, it is also called the total derivative [\[1\]](#ref-wikipedia_total_derivative) of $f$.

> **NOTE:**
>
> *Remark 1* (Other notation for the row-vector derivative). Some sources write the same row vector as $\frac{\partial}{\partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})$, with the operator on the left, read as each operator $\frac{\partial}{\partial \beta_{i}}$ applied to $f$ rather than as a matrix product (see [Remark 2](#rem-row-derivative-shape)).

> **NOTE:**
>
> *Remark 2* (Which side the operator goes on). Read $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}$ as a $p \times 1$ column vector of operators with entries $\frac{\partial}{\partial \beta_{1}}, \ldots, \frac{\partial}{\partial \beta_{p}}$, and $\frac{\partial}{\partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top}}$ as the $1 \times p$ row vector of operators with the same entries. Writing either one next to $f$ can be read in two ways:
>
> - **As a matrix product,** with $f$ a $1 \times 1$ matrix, under the shape rule of [matrix multiplication](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult). The column-vector operator works on the left: $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} f$ is $(p \times 1)(1 \times 1)$, a $p \times 1$ column vector ([Definition 2 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#def-vector-derivative)). The row-vector operator does not: $\frac{\partial}{\partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top}} f$ is $(1 \times p)(1 \times 1)$, whose inner dimensions $p$ and $1$ do not match when $p > 1$. For the shape rule to give the $1 \times p$ row vector, the operator would have to go on the right of $f$, as in $(1 \times 1)(1 \times p)$, which changes its meaning (see below).
> - **As a scalar multiple,** with $f$ a scalar, the way $c \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is read in [scalar multiplication](linear-algebra-matrices.llms.md#def-scalar-mult), which has no shape rule: each entry of the operator vector is applied to $f$. Then both $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} f$ and $\frac{\partial}{\partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top}} f$ work with the operator on the left.
>
> The fraction $\frac{\partial f}{\partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top}}$ of [Equation 1](#eq-row-vector-derivative) means the same thing under both readings: the transpose in the denominator says the result is a row vector, without making the derivative a product.
>
> Treating the operators as vectors is sound for checking shapes, but “multiplying” an operator by a function means applying the operator to it, so two rules of ordinary matrix algebra do not carry over: scalars commute with matrices, and products can be regrouped.
>
> - **Scalars do not commute with operators.** $\frac{\partial}{\partial \beta_{i}} f$ is a function, but $f \frac{\partial}{\partial \beta_{i}}$ is still an unapplied operator, waiting for something to act on. So, unlike $c \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}c$, the operator cannot move to the other side of $f$ without changing the meaning. Putting the row-vector operator on the right of $f$ gives the row-vector derivative only under the convention that it acts on the factor to its left.
> - **Products cannot be regrouped.** An operator acts on the whole product to its right, so by the [product rule](calculus-derivatives.llms.md#thm-product-rule), $\frac{\partial}{\partial \beta_{i}} (f g) \ne \mathopen{}\left(\frac{\partial}{\partial \beta_{i}} f\right)\mathclose{} g$ in general. For example, with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = \beta_{1}$, $\frac{\partial}{\partial \beta_{1}} (f f) = 2 \beta_{1}$ but $\mathopen{}\left(\frac{\partial}{\partial \beta_{1}} f\right)\mathclose{} f = \beta_{1}$.

> **NOTE:**
>
> **Theorem 1 (Row and column derivatives are transposes)** $$\frac{\partial f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}{\partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top}} = {\mathopen{}\left(\frac{\partial f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\right)\mathclose{}}^{\top} \tag{2}$$
>
> $$\frac{\partial f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} = {\mathopen{}\left(\frac{\partial f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}{\partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top}}\right)\mathclose{}}^{\top} \tag{3}$$

> **NOTE:**
>
> *Proof*. By [Definition 2 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#def-vector-derivative) and [Definition 1](#def-row-vector-derivative), entry $j$ of both $\frac{\partial f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}$ and $\frac{\partial f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}{\partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top}}$ is $\frac{\partial}{\partial \beta_{j}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})$; the first is a $p \times 1$ column vector and the second a $1 \times p$ row vector with the same entries in the same order, so each is the transpose of the other.

> **NOTE:**
>
> **Example 1 (Row and column derivatives of a linear function)** For $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = 3\beta_{1} + 5\beta_{2}$:
>
> $$\frac{\partial f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} = \begin{bmatrix}3 \\ 5\end{bmatrix},
> \qquad
> \frac{\partial f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}{\partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top}} = \begin{bmatrix}3 & 5\end{bmatrix},$$
>
> and each is the transpose of the other.

> **NOTE:**
>
> **Definition 2 (Derivative of a vector-valued function)** If
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}&= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) \\
> &= {(y_1, \ldots, y_q)}^{\top}
> \end{aligned}$$
>
> is a $q \times 1$ vector-valued function of the $p \times 1$ vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, its **derivative with respect to** $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ is the $p \times q$ matrix whose $(i, j)$ entry is
>
> $$\mathopen{}\left[\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}\right]\mathclose{}_{ij} \stackrel{\text{def}}{=}\frac{\partial}{\partial \beta_{i}} y_j,
> \qquad i = 1, \ldots, p, \quad j = 1, \ldots, q.$$
>
> Both $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ and $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}$ denote this $p \times q$ matrix.

> **NOTE:**
>
> **Definition 3 (Denominator layout)** Writing derivatives as in [Definition 2](#def-vector-valued-derivative) is the **denominator layout** [\[2\]](#ref-wikipedia_matrix_calculus), which these notes use throughout: rows index the entries of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ (the denominator) and columns index the entries of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ (the numerator), so column $j$ is the vector derivative $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} y_j$ ([Definition 2 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#def-vector-derivative)).

> **NOTE:**
>
> **Example 2 (Differentiating a** $3 \times 1$ function of a $2 \times 1$ vector) Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(\beta_{1}, \beta_{2})}^{\top}$ ($p = 2$) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = {(\beta_{1}^2,\ \beta_{1}\beta_{2},\ 3\beta_{2})}^{\top}$ ($q = 3$). Then
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}}_{2 \times 3}
> &= \begin{bmatrix}
> \frac{\partial}{\partial \beta_{1}} \beta_{1}^2 & \frac{\partial}{\partial \beta_{1}} \beta_{1}\beta_{2} & \frac{\partial}{\partial \beta_{1}} 3\beta_{2} \\
> \frac{\partial}{\partial \beta_{2}} \beta_{1}^2 & \frac{\partial}{\partial \beta_{2}} \beta_{1}\beta_{2} & \frac{\partial}{\partial \beta_{2}} 3\beta_{2}
> \end{bmatrix} \\
> &= \begin{bmatrix}
> 2\beta_{1} & \beta_{2} & 0 \\
> 0 & \beta_{1} & 3
> \end{bmatrix}
> \end{aligned}$$

> **NOTE:**
>
> **Definition 4 (Jacobian matrix)** Let
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}&= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) \\
> &= {(y_1, \ldots, y_q)}^{\top}
> \end{aligned}$$
>
> be a $q \times 1$ vector-valued function of the $p \times 1$ vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$. The **Jacobian matrix** [\[3\]](#ref-wikipedia_jacobian_matrix_and_determinant) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is the $q \times p$ matrix whose $(j, i)$ entry is $\frac{\partial}{\partial \beta_{i}} y_j$, for $j = 1, \ldots, q$ and $i = 1, \ldots, p$. It is the transpose of the derivative $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}$ of [Definition 2](#def-vector-valued-derivative).

> **NOTE:**
>
> **Definition 5 (Numerator layout)** Writing derivatives as in [Definition 4](#def-jacobian-matrix), with rows indexing the entries of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ (the numerator) and columns indexing the entries of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ (the denominator), is the **numerator layout** [\[2\]](#ref-wikipedia_matrix_calculus).

> **NOTE:**
>
> **Example 3 (The Jacobian matrix of a** $3 \times 1$ function of a $2 \times 1$ vector) For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = {(\beta_{1}^2,\ \beta_{1}\beta_{2},\ 3\beta_{2})}^{\top}$ of [Example 2](#exm-vector-valued-derivative), the Jacobian matrix is the $3 \times 2$ matrix
>
> $$\begin{bmatrix}
> \frac{\partial}{\partial \beta_{1}} \beta_{1}^2 & \frac{\partial}{\partial \beta_{2}} \beta_{1}^2 \\
> \frac{\partial}{\partial \beta_{1}} \beta_{1}\beta_{2} & \frac{\partial}{\partial \beta_{2}} \beta_{1}\beta_{2} \\
> \frac{\partial}{\partial \beta_{1}} 3\beta_{2} & \frac{\partial}{\partial \beta_{2}} 3\beta_{2}
> \end{bmatrix}
> = \begin{bmatrix}
> 2\beta_{1} & 0 \\
> \beta_{2} & \beta_{1} \\
> 0 & 3
> \end{bmatrix},$$
>
> the transpose of the $2 \times 3$ matrix found there.

> **NOTE:**
>
> *Remark 3* (Numerator layout). Some sources use the numerator layout ([Definition 5](#def-numerator-layout)) throughout, so that their derivative of a vector-valued function is the Jacobian matrix, the transpose of the derivative used in these notes. In numerator layout, the derivative of a scalar-valued function is a row vector: the row-vector derivative ([Definition 1](#def-row-vector-derivative)). Check a source’s layout before combining its formulas with these.

> **NOTE:**
>
> **Definition 6 (Constant)** A $q \times 1$ vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is **constant with respect to** the $p \times 1$ vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ if its derivative ([Definition 2](#def-vector-valued-derivative)) is zero:
>
> $$\underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}}_{p \times q}
> = \underbrace{\mathbf{0}}_{p \times q}$$

> **NOTE:**
>
> **Example 4 (A constant vector)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(\beta_{1}, \beta_{2})}^{\top}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(3, 5)}^{\top}$, so $x_1 = 3$ and $x_2 = 5$ do not depend on $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$. Expanding $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ into its matrix of scalar partial derivatives ([Definition 2](#def-vector-valued-derivative)) and evaluating each entry:
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}}_{2 \times 2}
> &= \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} \begin{bmatrix}x_1 & x_2\end{bmatrix} \\
> &= \begin{bmatrix}
> \frac{\partial}{\partial \beta_{1}} x_1 & \frac{\partial}{\partial \beta_{1}} x_2 \\
> \frac{\partial}{\partial \beta_{2}} x_1 & \frac{\partial}{\partial \beta_{2}} x_2
> \end{bmatrix} \\
> &= \begin{bmatrix}
> \frac{\partial}{\partial \beta_{1}} 3 & \frac{\partial}{\partial \beta_{1}} 5 \\
> \frac{\partial}{\partial \beta_{2}} 3 & \frac{\partial}{\partial \beta_{2}} 5
> \end{bmatrix} \\
> &= \begin{bmatrix}
> 0 & 0 \\
> 0 & 0
> \end{bmatrix} \\
> &= \underbrace{\mathbf{0}}_{2 \times 2}
> \end{aligned}$$
>
> Every entry is the derivative of a constant, so $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} = \underbrace{\mathbf{0}}_{2 \times 2}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ ([Definition 6](#def-constant-wrt-vector)).

> **NOTE:**
>
> **Example 5 (A vector that is not constant)** With the same $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(\beta_{1}, 3)}^{\top}$. Then
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}}_{2 \times 2}
> &= \begin{bmatrix}
> \frac{\partial}{\partial \beta_{1}} \beta_{1} & \frac{\partial}{\partial \beta_{1}} 3 \\
> \frac{\partial}{\partial \beta_{2}} \beta_{1} & \frac{\partial}{\partial \beta_{2}} 3
> \end{bmatrix} \\
> &= \begin{bmatrix}
> 1 & 0 \\
> 0 & 0
> \end{bmatrix},
> \end{aligned}$$
>
> which is not $\underbrace{\mathbf{0}}_{2 \times 2}$, so this $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is not constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$: its first entry changes when $\beta_{1}$ does.

> **NOTE:**
>
> **Exercise 1 (Partial derivative with respect to an unreferenced variable)** Adapted from Miller [\[4\]](#ref-problifesavercalc), Question 1.1.46.
>
> Find $\frac{\partial f}{\partial x}$ and $\frac{\partial f}{\partial y}$ for
>
> $$f(x, y, t) = 5t^4 - 4t^5 \cos(t\sin t)$$

> **NOTE:**
>
> *Solution 1*. Although the function is declared as a function of three variables $(x, y, t)$, its expression depends solely on $t$.
>
> Because neither $x$ nor $y$ appears in the formula, $f$ is constant with respect to both $x$ and $y$:
>
> $$\frac{\partial f}{\partial x} = 0, \qquad \frac{\partial f}{\partial y} = 0$$
>
> *Remark:* Always verify which variables actually appear in a formula before performing lengthy algebraic differentiation.

> **NOTE:**
>
> **Theorem 2 (Derivative of a dot product)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, then:
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}_{p \times 1}
> &=
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}_{p \times 1} \\
> &=
> \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}_{p \times 1}
> \end{aligned}$$

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})
> &=
> \begin{bmatrix}
> \frac{\partial}{\partial \beta_{1}}(x_1\beta_{1}+x_2\beta_{2} +...+x_p \beta_{p} ) \\
> \frac{\partial}{\partial \beta_{2}}(x_1\beta_{1}+x_2\beta_{2} +...+x_p \beta_{p} ) \\
> \vdots \\
> \frac{\partial}{\partial \beta_{p}}(x_1\beta_{1}+x_2\beta_{2} +...+x_p \beta_{p} )
> \end{bmatrix}
> \\ &=
> \begin{bmatrix}
> x_{1} \\
> x_{2} \\
> \vdots \\
> x_{p}
> \end{bmatrix}
> \\ &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> \end{aligned}$$

> **NOTE:**
>
> **Example 6 (Derivative of a dot product)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(3, 5)}^{\top}$ (constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$; see [Example 4](#exm-constant-wrt-vector)) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(\beta_{1}, \beta_{2})}^{\top}$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= 3\beta_{1} + 5\beta_{2}$, and by [Theorem 2](#thm-deriv-lincom):
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}_{2 \times 1}
> &= \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}_{2 \times 1} \\
> &= \begin{pmatrix} 3 \\
> 5 \end{pmatrix}
> \end{aligned}$$
>
> Verifying entry-wise:
>
> $$\begin{aligned}
> \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(3\beta_{1} + 5\beta_{2})
> &= \begin{pmatrix} \frac{\partial}{\partial \beta_{1}}(3\beta_{1} + 5\beta_{2}) \\
> \frac{\partial}{\partial \beta_{2}}(3\beta_{1} + 5\beta_{2}) \end{pmatrix} \\
> &= \begin{pmatrix} 3 \\
> 5 \end{pmatrix}
> \end{aligned}$$
>
> Both methods agree.

> **NOTE:**
>
> **Theorem 3 (Product rule for dot-products)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$ are differentiable $p \times 1$ vector functions of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, then:
>
> $$\begin{aligned}
> \frac{\partial}{\partial \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}_{p \times 1}} \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}}_{p \times 1} \cdot \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}_{p \times 1}
> &=
> \mathopen{}\left(
>     \frac{\partial}{\partial \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}_{p \times 1}} \underbrace{{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}}^{\top}}_{1 \times p}
>   \right)\mathclose{}
> \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}_{p \times 1}
> +
> \mathopen{}\left(
>   \frac{\partial}{\partial \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}_{p \times 1}} \underbrace{{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top}}_{1 \times p}
> \right)\mathclose{}
> \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}}_{p \times 1}
> \end{aligned}$$

> **NOTE:**
>
> *Proof*. Entry-wise, for $i = 1, \ldots, p$:
>
> $$\begin{aligned}
> \mathopen{}\left[\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}})\right]\mathclose{}_i
> &= \frac{\partial}{\partial x_i} \sum_{k=1}^{p} a_k b_k \\
> &= \sum_{k=1}^{p} \mathopen{}\left(b_k \frac{\partial}{\partial x_i} a_k + a_k \frac{\partial}{\partial x_i} b_k\right)\mathclose{} \\
> &= \mathopen{}\left[\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}}^{\top}\right)\mathclose{}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}\right]\mathclose{}_i
>   + \mathopen{}\left[\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top}\right)\mathclose{}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}\right]\mathclose{}_i
> \end{aligned}$$

> **NOTE:**
>
> **Example 7 (Example of the dot-product rule)** Apply [Theorem 3](#thm-deriv-dot-product) with the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(\beta_{1}, \beta_{2})}^{\top}$ in the role of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = {(\beta_{1}, \beta_{1}\beta_{2})}^{\top}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = {(\beta_{2}, \beta_{1})}^{\top}$. Then:
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> &= \beta_{1} \cdot \beta_{2} + \beta_{1}\beta_{2} \cdot \beta_{1} \\
> &= \beta_{1}\beta_{2} + \beta_{1}^2\beta_{2}
> \end{aligned}$$
>
> By direct calculation:
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}})}_{2 \times 1}
> &= \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\beta_{1}\beta_{2} + \beta_{1}^2\beta_{2}) \\
> &= \begin{pmatrix} \beta_{2} + 2\beta_{1}\beta_{2} \\ \beta_{1} + \beta_{1}^2 \end{pmatrix}
> \end{aligned}$$
>
> By the product rule ([Theorem 3](#thm-deriv-dot-product)), using $\underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}}^{\top}}_{2 \times 2}
> = \begin{pmatrix}1 & \beta_{2} \\ 0 & \beta_{1}\end{pmatrix}$ and $\underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top}}_{2 \times 2}
> = \begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix}$:
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}})}_{2 \times 1}
> &=
> \underbrace{\begin{pmatrix}1 & \beta_{2} \\ 0 & \beta_{1}\end{pmatrix}}_{2 \times 2}
> \underbrace{\begin{pmatrix}\beta_{2} \\ \beta_{1}\end{pmatrix}}_{2 \times 1}
> +
> \underbrace{\begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix}}_{2 \times 2}
> \underbrace{\begin{pmatrix}\beta_{1} \\ \beta_{1}\beta_{2}\end{pmatrix}}_{2 \times 1}
> \\
> &=
> \begin{pmatrix}\beta_{2} + \beta_{1}\beta_{2} \\ \beta_{1}^2\end{pmatrix}
> +
> \begin{pmatrix}\beta_{1}\beta_{2} \\ \beta_{1}\end{pmatrix}
> \\
> &=
> \begin{pmatrix}\beta_{2} + 2\beta_{1}\beta_{2} \\ \beta_{1}^2 + \beta_{1}\end{pmatrix}
> \end{aligned}$$
>
> Both methods agree.

> **NOTE:**
>
> **Theorem 4 (Derivative of a linear map)** If $\mathbf{A}$ is an $m \times p$ matrix that is constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, then:
>
> $$\underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}_{p \times m} =
> \underbrace{{\mathbf{A}}^{\top}}_{p \times m}$$

> **NOTE:**
>
> *Proof*. For entry $(i,j)$, where row $i$ indexes the denominator $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ (see [Definition 2](#def-vector-valued-derivative)) and column $j$ indexes the numerator $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$:
>
> $$\begin{aligned}
> \mathopen{}\left[\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})\right]\mathclose{}_{ij}
> &= \frac{\partial}{\partial \beta_{i}} (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})_j \\
> &= \frac{\partial}{\partial \beta_{i}} \sum_{k=1}^{p} a_{jk} \beta_{k} \\
> &= a_{ji} \\
> &= \mathopen{}\left[{\mathbf{A}}^{\top}\right]\mathclose{}_{ij}
> \end{aligned}$$

> **NOTE:**
>
> **Example 8 (Derivative of a linear map)** Let $\mathbf{A} = \begin{pmatrix} 2 & 3 \end{pmatrix}$ ($1 \times 2$) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(\beta_{1}, \beta_{2})}^{\top}$. Then $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= 2\beta_{1} + 3\beta_{2}$, and by [Theorem 4](#thm-deriv-linear-map):
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}_{2 \times 1}
> &= \underbrace{{\mathbf{A}}^{\top}}_{2 \times 1} \\
> &= \begin{pmatrix} 2 \\
> 3 \end{pmatrix}
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 5 (Vector-derivative of a matrix-vector product)** If $\mathbf{A}$ is an $m \times q$ matrix that is constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})$ is a $q \times 1$ vector that depends on the $p \times 1$ vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, then:
>
> $$\underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})}_{p \times m} =
> \underbrace{\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right)\mathclose{}}_{p \times q}
> \underbrace{{\mathbf{A}}^{\top}}_{q \times m}$$

> **NOTE:**
>
> *Proof*. For entry $(i,j)$, where row $i$ indexes the denominator $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ and column $j$ indexes the numerator $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ (see [Definition 2](#def-vector-valued-derivative)):
>
> $$\begin{aligned}
> \mathopen{}\left[\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})\right]\mathclose{}_{ij}
> &= \frac{\partial}{\partial \beta_{i}} (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})_j \\
> &= \frac{\partial}{\partial \beta_{i}} \sum_{k=1}^{q} a_{jk} v_k \\
> &= \sum_{k=1}^{q} a_{jk} \frac{\partial}{\partial \beta_{i}} v_k \\
> &= \sum_{k=1}^{q} \mathopen{}\left[\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right]\mathclose{}_{ik} \mathopen{}\left[{\mathbf{A}}^{\top}\right]\mathclose{}_{kj} \\
> &= \mathopen{}\left[\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right)\mathclose{} {\mathbf{A}}^{\top}\right]\mathclose{}_{ij}
> \end{aligned}$$

> **NOTE:**
>
> **Example 9 (Vector-derivative of a matrix-vector product)** Let $\mathbf{A} = \begin{pmatrix} 2 & 3 \end{pmatrix}$ ($1 \times 2$, constant) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = {(\beta_{1}^2, \beta_{2}^2)}^{\top}$. Then $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = 2\beta_{1}^2 + 3\beta_{2}^2$. By [Theorem 5](#thm-deriv-matrix-vector):
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})}_{2 \times 1}
> &= \begin{pmatrix} 2\beta_{1} & 0 \\
> 0 & 2\beta_{2} \end{pmatrix}
> \begin{pmatrix} 2 \\
> 3 \end{pmatrix} \\
> &= \begin{pmatrix} 4\beta_{1} \\
> 6\beta_{2} \end{pmatrix}
> \end{aligned}$$

> **NOTE:**
>
> *Remark 4* (The derivative of a linear map as a special case). This result generalizes [Theorem 4](#thm-deriv-linear-map), which is the special case $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ (so that $q = p$, $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= \mathbf{I}_p$, and $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = \mathbf{I}_p {\mathbf{A}}^{\top}$, which is ${\mathbf{A}}^{\top}$). For example, [Example 8](#exm-deriv-linear-map) is the case $\mathbf{A} = \begin{pmatrix} 2 & 3 \end{pmatrix}$ and
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\\
> &= {(\beta_{1}, \beta_{2})}^{\top},
> \end{aligned}$$
>
> where this result gives $\mathbf{I}_2 {\mathbf{A}}^{\top} = {(2, 3)}^{\top}$.

> **NOTE:**
>
> **Theorem 6 (Vector-derivative of a product of matrices)** If $\mathbf{A}$ ($k \times m$) and $\mathbf{B}$ ($m \times q$) are constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})$ is a $q \times 1$ vector that depends on the $p \times 1$ vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, then:
>
> $$\underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\mathbf{A} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})}_{p \times k} =
> \underbrace{\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right)\mathclose{}}_{p \times q}
> \underbrace{{\mathbf{B}}^{\top}}_{q \times m}
> \underbrace{{\mathbf{A}}^{\top}}_{m \times k}$$

> **NOTE:**
>
> *Proof*. Apply [Theorem 5](#thm-deriv-matrix-vector) with the constant $k \times q$ matrix $\mathbf{A}\mathbf{B}$, then use the [transpose of a product](linear-algebra-matrix-multiplication.llms.md#thm-transpose-product):
>
> $$\begin{aligned}
> \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\mathbf{A} \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})
> &= \mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right)\mathclose{} {(\mathbf{A}\mathbf{B})}^{\top}
> && \text{(derivative of a matrix-vector product)}
> \\
> &= \mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right)\mathclose{} {\mathbf{B}}^{\top}\,{\mathbf{A}}^{\top}
> && \text{(transpose of a product)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 10** Let $\mathbf{A} = \begin{pmatrix}1 & 0\end{pmatrix}$ ($1 \times 2$), $\mathbf{B} = \begin{pmatrix}2 & 0 \\
> 0 & 3\end{pmatrix}$ ($2 \times 2$), and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ where $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(\beta_{1}, \beta_{2})}^{\top}$. Then $\mathbf{A}\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = 2\beta_{1}$, and:
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathbf{A}\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}})}_{2 \times 1}
> &= \underbrace{\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right)\mathclose{}}_{2 \times 2}
> \underbrace{{\mathbf{B}}^{\top}}_{2 \times 2}
> \underbrace{{\mathbf{A}}^{\top}}_{2 \times 1} \\
> &= \mathbf{I}_2
> \begin{pmatrix}2 & 0 \\
> 0 & 3\end{pmatrix}
> \begin{pmatrix}1 \\
> 0\end{pmatrix} \\
> &= \begin{pmatrix}2 \\
> 0\end{pmatrix}
> \end{aligned}$$

> **NOTE:**
>
> **Corollary 1 (Derivative of a dot product, transpose-product form)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, then:
>
> $$\underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\underbrace{{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}}_{1 \times p} \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}_{p \times 1})}_{p \times 1} =
> \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}_{p \times 1}$$

> **NOTE:**
>
> *Proof*. **Using [Theorem 2](#thm-deriv-lincom):**
>
> Since ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ (see [dot product](linear-algebra-vectors.llms.md#def-dot-product)), and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$:
>
> $$\begin{aligned}
> \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})
> &= \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> \end{aligned}$$
>
> by [Theorem 2](#thm-deriv-lincom).

> **NOTE:**
>
> *Proof*. **Using [Theorem 5](#thm-deriv-matrix-vector):**
>
> Since $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, $\mathbf{A} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ is a constant $1 \times p$ matrix. Applying [Theorem 5](#thm-deriv-matrix-vector) with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ (so $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= \mathbf{I}$):
>
> $$\begin{aligned}
> \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})
> &= \mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right)\mathclose{} {({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top})}^{\top} \\
> &= \mathbf{I} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> \end{aligned}$$

> **NOTE:**
>
> **Example 11 (Derivative of a transpose product)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(3, 5)}^{\top}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(\beta_{1}, \beta_{2})}^{\top}$. Then ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= 3\beta_{1} + 5\beta_{2}$, and by [Corollary 1](#cor-deriv-lincom-tp):
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\mathopen{}\left(\underbrace{{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}}_{1 \times 2}\underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}_{2 \times 1}\right)\mathclose{}}_{2 \times 1}
> &= \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}_{2 \times 1} \\
> &= \begin{pmatrix} 3 \\
> 5 \end{pmatrix}
> \end{aligned}$$

> **NOTE:**
>
> *Remark 5* (The coefficient gets transposed). This vector derivative formula looks a lot like non-vector calculus, except that you have to transpose the coefficient: in scalar calculus $\frac{\partial}{\partial x}(cx) = c$, but here the coefficient ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ (a row vector) becomes $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ (a column vector) in the result. For example, with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(2, -1)}^{\top}$, ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= 2\beta_{1} - \beta_{2}$, whose vector derivative is the column vector ${(2, -1)}^{\top} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, not the row vector ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} = (2, -1)$.

> **NOTE:**
>
> **Theorem 7 (Derivative of a quadratic form)** For a quadratic form (see [quadratic form](linear-algebra-special-matrices.llms.md#def-quadratic-form)), if $\mathbf{S}$ is a $p \times p$ matrix that is constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, then:
>
> $$\underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} ({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}_{p \times 1} = \underbrace{(\mathbf{S} + {\mathbf{S}}^{\top}) \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}_{p \times 1}.$$

> **NOTE:**
>
> *Proof*. Expanding entry-wise, ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} = \sum_{j=1}^p\sum_{k=1}^{p} s_{jk} \beta_{j} \beta_{k}$. Differentiating component-wise with respect to $\beta_{i}$ for $i = 1, \ldots, p$:
>
> $$\begin{aligned}
> \mathopen{}\left[\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})\right]\mathclose{}_i
> &= \frac{\partial}{\partial \beta_{i}} \sum_{j=1}^p\sum_{k=1}^{p} s_{jk} \beta_{j} \beta_{k}
> && \text{(expand quadratic form)} \\
> &= \sum_{k=1}^{p} s_{ik} \beta_{k} + \sum_{j=1}^ps_{ji} \beta_{j}
> && \text{(product rule for } \beta_{i} \beta_{k} \text{)} \\
> &= [\mathbf{S}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}]_i + [{\mathbf{S}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}]_i
> && \text{(matrix-vector multiplication definition)} \\
> &= [(\mathbf{S} + {\mathbf{S}}^{\top})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}]_i
> && \text{(linearity of matrix multiplication)}
> \end{aligned}$$

> **NOTE:**
>
> **Corollary 2 (Derivative of a quadratic form with a symmetric matrix)** If, in addition, $\mathbf{S}$ is symmetric (and, as in [Theorem 7](#thm-quadratic-form), $p \times p$ and constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$), then
>
> $$\underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} ({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}_{p \times 1} = \underbrace{2 \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}_{p \times 1}.$$

> **NOTE:**
>
> *Proof*. If $\mathbf{S} = {\mathbf{S}}^{\top}$, then $\mathbf{S} + {\mathbf{S}}^{\top} = 2\mathbf{S}$, so [Theorem 7](#thm-quadratic-form) gives $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = 2\mathbf{S}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$.

> **NOTE:**
>
> *Remark 6* (Like the derivative of $cx^2$). This operation is like taking the derivative of $cx^2$ with respect to $x$ in non-vector calculus: $\frac{\partial}{\partial x} (cx^2) = 2cx$, and [Corollary 2](#cor-quadratic-form-symmetric) says $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} ({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = 2 \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$. For example, with $p = 1$, $\mathbf{S} = (3)$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= (\beta_{1})$, ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} = 3\beta_{1}^2$, and its derivative is $6\beta_{1} = 2 \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$.

> **NOTE:**
>
> **Example 12 (Derivative of a quadratic form)** Let $\mathbf{S} = \begin{pmatrix} 3 & 1 \\ 1 & 2 \end{pmatrix}$ ($2 \times 2$, symmetric and constant) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(\beta_{1}, \beta_{2})}^{\top}$. Then ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} = 3\beta_{1}^2 + 2\beta_{1}\beta_{2} + 2\beta_{2}^2$. By [Corollary 2](#cor-quadratic-form-symmetric):
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}_{2 \times 1}
> &= 2 \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\\
> &= 2 \begin{pmatrix} 3 & 1 \\ 1 & 2 \end{pmatrix} \begin{pmatrix} \beta_{1} \\ \beta_{2} \end{pmatrix} \\
> &= \begin{pmatrix} 6\beta_{1} + 2\beta_{2} \\ 2\beta_{1} + 4\beta_{2} \end{pmatrix}
> \end{aligned}$$
>
> Differentiating component-wise directly:
>
> $$\begin{pmatrix} \frac{\partial}{\partial \beta_{1}}(3\beta_{1}^2 + 2\beta_{1}\beta_{2} + 2\beta_{2}^2) \\ \frac{\partial}{\partial \beta_{2}}(3\beta_{1}^2 + 2\beta_{1}\beta_{2} + 2\beta_{2}^2) \end{pmatrix}
> = \begin{pmatrix} 6\beta_{1} + 2\beta_{2} \\ 2\beta_{1} + 4\beta_{2} \end{pmatrix}$$
>
> Both methods agree.
>
> For a matrix that is not symmetric, such as $\mathbf{S} = \begin{pmatrix} 1 & 2 \\ 0 & 3 \end{pmatrix}$, [Theorem 7](#thm-quadratic-form) gives
>
> $$\begin{aligned}
> (\mathbf{S} + {\mathbf{S}}^{\top}) \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}
> &= \begin{pmatrix} 2 & 2 \\ 2 & 6 \end{pmatrix} \begin{pmatrix} \beta_{1} \\ \beta_{2} \end{pmatrix} \\
> &= \begin{pmatrix} 2\beta_{1} + 2\beta_{2} \\ 2\beta_{1} + 6\beta_{2} \end{pmatrix},
> \end{aligned}$$
>
> which matches differentiating ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} = \beta_{1}^2 + 2\beta_{1}\beta_{2} + 3\beta_{2}^2$ directly.

> **NOTE:**
>
> **Corollary 3 (Derivative of a simple quadratic form)** $$\underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}_{p \times 1} = \underbrace{2\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}_{p \times 1}$$

> **NOTE:**
>
> *Proof*. Applying [Corollary 2](#cor-quadratic-form-symmetric) with $\mathbf{S} = \mathbf{I}_{p \times p}$ (which is symmetric and constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$):
>
> $$\begin{aligned}
> \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})
> &= \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}^{\top} \mathbf{I}_{p \times p} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})
> && \text{(rewrite with identity matrix)} \\
> &= 2\mathbf{I}_{p \times p}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}
> && \text{(derivative of a quadratic form, with } \mathbf{S} = \mathbf{I}_{p \times p} \text{)} \\
> &= 2\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}
> && \text{(identity matrix property)}
> \end{aligned}$$

> **NOTE:**
>
> *Remark 7* (Like the derivative of $x^2$). This vector derivative is like taking the derivative of $x^2$: in scalar calculus $\frac{\partial}{\partial x} x^2 = 2x$, and [Corollary 3](#cor-deriv-normsq) says $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = 2\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$. For example, with $p = 1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= (\beta_{1})$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} = \beta_{1}^2$, and its derivative is $2\beta_{1} = 2\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$.

> **NOTE:**
>
> **Example 13 (Derivative of a sum of squares)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(\beta_{1}, \beta_{2})}^{\top}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} = \beta_{1}^2 + \beta_{2}^2$. By [Corollary 3](#cor-deriv-normsq):
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}_{2 \times 1}
> &= 2\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\\
> &= \begin{pmatrix} 2\beta_{1} \\ 2\beta_{2} \end{pmatrix}
> \end{aligned}$$
>
> Direct partial differentiation yields the same column vector.

> **NOTE:**
>
> **Definition 7 (Residual vector and residuals)** Let $\mathbf{X}$ be an $n \times p$ matrix, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^n$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\in \mathbb{R}^p$. The **residual vector** of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) \stackrel{\text{def}}{=}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, and its entries $\varepsilon_i = y_i - (\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})_i$ are the **residuals** [\[5\]](#ref-wikipedia_errors_and_residuals).

> **NOTE:**
>
> **Definition 8 (Squared error)** In the setting of [Definition 7](#def-residual), the square $\varepsilon_i^2$ is the $i$th **squared error**.

> **NOTE:**
>
> **Definition 9 (Residual sum of squares)** In the setting of [Definition 7](#def-residual), the sum of the squared errors ([Definition 8](#def-squared-error))
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}
> &= \sum_{i=1}^n\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}_i^2 \\
> &= \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{}^2
> \end{aligned}$$
>
> is the **residual sum of squares** [\[6\]](#ref-wikipedia_residual_sum_of_squares).

> **NOTE:**
>
> *Remark 8* (Least squares solutions minimize the residual sum of squares). A [least squares solution](linear-algebra-least-squares.llms.md#def-least-squares) of $\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ makes $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{}$ as small as possible, and so makes the residual sum of squares ([Definition 9](#def-residual-sum-of-squares)) as small as possible too.

> **NOTE:**
>
> **Example 14 (Residuals of a constant fit)** Let $\mathbf{X}= {(1, 1)}^{\top}$ ($n = 2$, $p = 1$) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= {(1, 3)}^{\top}$. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= (2)$, $\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(2, 2)}^{\top}$, so
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})
> &= {(1, 3)}^{\top} - {(2, 2)}^{\top}
> && \text{(definition of the residual vector)}
> \\
> &= {(-1, 1)}^{\top},
> && \text{(subtract entry by entry)}
> \end{aligned}$$
>
> the squared errors are $(-1)^2 = 1$ and $1^2 = 1$, and the residual sum of squares is $1 + 1 = 2$. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= (1)$ the residuals are $0$ and $2$, and the residual sum of squares is $0 + 4 = 4$.

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on gradients of sums and sample means of squared errors ([Definition 9](#def-residual-sum-of-squares)):
>
> - [The Gradient of Quadratic Cost](https://www.youtube.com/watch?v=rhn7ie7JBdA&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [The Gradient of Mean Squared Error](https://www.youtube.com/watch?v=KLXP2RL0-Vg&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Theorem 8 (Vector chain rule)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ be a $p \times 1$ vector, let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$ be a $q \times 1$ vector-valued function of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, and let $z = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})$ be a scalar-valued function of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$, where $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}}$ and $f$ have continuous partial derivatives. Then $z = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}))$, as a function of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, satisfies
>
> $$\underbrace{\frac{\partial z}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}}_{p \times 1}
> = \underbrace{\frac{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}}_{p \times q}
> \underbrace{\frac{\partial z}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}}_{q \times 1}$$
>
> where $\frac{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$ is the derivative of [Definition 2](#def-vector-valued-derivative) and $\frac{\partial z}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$ and $\frac{\partial z}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}$ are vector derivatives ([Definition 2 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#def-vector-derivative)).

> **NOTE:**
>
> *Remark 9* (The order of the factors matters). The vector chain rule ([Theorem 8](#thm-chain-vec)) is like the univariate [chain rule](calculus-derivatives.llms.md#thm-chain-rule), but the order matters now: $\frac{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$ is $p \times q$ and $\frac{\partial z}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}$ is $q \times 1$, so the product $\frac{\partial z}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}} \frac{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$ in the other order is not even defined unless $p = 1$.
>
> The version presented here is for the gradient ([Definition 2 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#def-vector-derivative)), a column vector. The total derivative ([Definition 1](#def-row-vector-derivative)), a row vector, is the transpose of the gradient ([Theorem 1](#thm-row-deriv-tp-col-deriv)), and transposing both sides gives ${\mathopen{}\left(\frac{\partial z}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}\right)\mathclose{}}^{\top} = {\mathopen{}\left(\frac{\partial z}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}\right)\mathclose{}}^{\top} {\mathopen{}\left(\frac{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}\right)\mathclose{}}^{\top}$, with the factors in the reverse order; there ${\mathopen{}\left(\frac{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}\right)\mathclose{}}^{\top}$ is the Jacobian matrix of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ as a function of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Definition 4](#def-jacobian-matrix)).

> **NOTE:**
>
> **Example 15 (Applying the vector chain rule)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(x_1, x_2)}^{\top}$,
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}&= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \\
> &= {(x_1 + x_2,\ x_1 x_2)}^{\top},
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> z &= f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) \\
> &= y_1^2 + y_2.
> \end{aligned}$$
>
> Then
>
> $$\begin{aligned}
> \underbrace{\frac{\partial z}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}}_{2 \times 1}
> &= \underbrace{\frac{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}}_{2 \times 2}
> \underbrace{\frac{\partial z}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}}_{2 \times 1}
> && \text{(vector chain rule)}
> \\
> &= \begin{bmatrix}
> 1 & x_2 \\
> 1 & x_1
> \end{bmatrix}
> \begin{bmatrix}
> 2y_1 \\
> 1
> \end{bmatrix}
> && \text{(differentiate } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{g}}\vphantom{g}} \text{ and } f \text{)}
> \\
> &= \begin{bmatrix}
> 2(x_1 + x_2) + x_2 \\
> 2(x_1 + x_2) + x_1
> \end{bmatrix}
> && \text{(multiply, and substitute } y_1 = x_1 + x_2 \text{)}
> \\
> &= \begin{bmatrix}
> 2x_1 + 3x_2 \\
> 3x_1 + 2x_2
> \end{bmatrix}
> && \text{(collect terms)}
> \end{aligned}$$
>
> This matches differentiating $z$ directly:
>
> $$\begin{aligned}
> z &= (x_1 + x_2)^2 + x_1 x_2 \\
> &= x_1^2 + 3x_1 x_2 + x_2^2,
> \end{aligned}$$
>
> so $\frac{\partial}{\partial x_1} z = 2x_1 + 3x_2$ and $\frac{\partial}{\partial x_2} z = 3x_1 + 2x_2$. The product in the other order, a $2 \times 1$ matrix times a $2 \times 2$ matrix, is not defined. The total derivative is the transpose, the row vector $(2x_1 + 3x_2,\ 3x_1 + 2x_2)$.

See Felippa [\[7\]](#ref-felippa_ifem_matrix_calculus), and Wikipedia contributors [\[8\]](#ref-wp:gradient), section “Relationship with Frechet derivative”.

> **NOTE:**
>
> **Corollary 4 (Vector chain rule for quadratic forms)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})$ is an $n \times 1$ vector-valued function of the $p \times 1$ vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, with continuous partial derivatives, then
>
> $$\underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}{\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})\right)\mathclose{}}}_{p \times 1}
> = \underbrace{\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})\right)\mathclose{}}_{p \times n}
> \underbrace{\mathopen{}\left(2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})\right)\mathclose{}}_{n \times 1}$$

> **NOTE:**
>
> *Proof*. Apply [Theorem 8](#thm-chain-vec) with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}$, $q = n$, and
>
> $$\begin{aligned}
> z &= f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}) \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}:
> \end{aligned}$$
>
> $$\begin{aligned}
> \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\right)\mathclose{}
> &= \mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\right)\mathclose{} \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}}\mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\right)\mathclose{}
> && \text{(vector chain rule)}
> \\
> &= \mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\right)\mathclose{} \mathopen{}\left(2\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\right)\mathclose{}
> && \text{(derivative of a simple quadratic form, in } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\text{)}
> \end{aligned}$$
>
> The second step is [Corollary 3](#cor-deriv-normsq), applied to the $n \times 1$ vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}$ in place of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$.

> **NOTE:**
>
> **Example 16 (Derivative of the residual sum of squares)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ ($n \times 1$) and $\mathbf{X}$ ($n \times p$) be constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ be the residual vector ([Definition 7](#def-residual)). By [Theorem 4](#thm-deriv-linear-map), $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = {\mathbf{X}}^{\top}$, and $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= \mathbf{0}_{p \times n}$ because $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is constant, so $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}= -{\mathbf{X}}^{\top}$ ($p \times n$). By [Corollary 4](#cor-chain-qf):
>
> $$\begin{aligned}
> \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\right)\mathclose{}
> &= \mathopen{}\left(-{\mathbf{X}}^{\top}\right)\mathclose{} \mathopen{}\left(2\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}\right)\mathclose{}
> && \text{(vector chain rule for quadratic forms)}
> \\
> &= -2\,{\mathbf{X}}^{\top}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right)\mathclose{}
> && \text{(substitute } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\varepsilon}}\vphantom{\varepsilon}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\text{)}
> \end{aligned}$$
>
> Setting this $p \times 1$ vector to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ gives the normal equations ${\mathbf{X}}^{\top}\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {\mathbf{X}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ of least squares.

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on the chain rule for partial derivatives:
>
> - [The Chain Rule for Partial Derivatives](https://www.youtube.com/watch?v=_XeqwcVLf-s&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Exercises on the Multivariate Chain Rule](https://www.youtube.com/watch?v=zjLUIkF4H6M&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Definition 10 (Matrix derivative (gradient))** For a scalar-valued function $f(\mathbf{X})$ of an $m \times n$ matrix $\mathbf{X}$, the **matrix derivative** [\[2\]](#ref-wikipedia_matrix_calculus) is the $m \times n$ matrix whose $(i,j)$ entry is the partial derivative of $f$ with respect to the $(i,j)$ entry of $\mathbf{X}$:
>
> $$\mathopen{}\left[\frac{\partial}{\partial \mathbf{X}} f\right]\mathclose{}_{ij} = \frac{\partial}{\partial X_{ij}} f$$
>
> Like the vector derivative ([Definition 2 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#def-vector-derivative)), the matrix derivative is also called the **gradient** of $f$ with respect to $\mathbf{X}$, written $\nabla_{\mathbf{X}} f$.

> **NOTE:**
>
> **Example 17 (The matrix derivative of a trace)** Let $\mathbf{X}$ be a $2 \times 2$ matrix and
>
> $$\begin{aligned}
> f(\mathbf{X}) &= \operatorname{tr}(\mathbf{X}) \\
> &= X_{11} + X_{22}
> \end{aligned}$$
>
> (see [trace](linear-algebra-special-matrices.llms.md#def-trace)). Then $\frac{\partial}{\partial X_{ij}} f = 1$ if $i = j$ and $0$ otherwise, so:
>
> $$\frac{\partial}{\partial \mathbf{X}} f = \mathbf{I}_2$$

> **NOTE:**
>
> **Theorem 9 (Matrix derivative of the trace of a matrix product)** If $\mathbf{A}$ ($r \times m$) and $\mathbf{B}$ ($n \times r$) are constant with respect to the $m \times n$ matrix $\mathbf{X}$, then:
>
> $$\underbrace{\frac{\partial}{\partial \mathbf{X}} \operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})}_{m \times n} =
> \underbrace{{\mathbf{A}}^{\top}}_{m \times r}
> \underbrace{{\mathbf{B}}^{\top}}_{r \times n}$$

> **NOTE:**
>
> *Proof*. Write $A_{kl}$, $X_{kl}$, and $B_{kl}$ for the entries of $\mathbf{A}$, $\mathbf{X}$, and $\mathbf{B}$. For entry $(i,j)$:
>
> $$\begin{aligned}
> \mathopen{}\left[\frac{\partial}{\partial \mathbf{X}} \operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})\right]\mathclose{}_{ij}
> &= \frac{\partial}{\partial X_{ij}} \sum_{a=1}^{r} \sum_{b=1}^{m} \sum_{c=1}^{n} A_{ab} X_{bc} B_{ca}
> && \text{(trace of the } r \times r \text{ product } \mathbf{A}\mathbf{X}\mathbf{B} \text{)}
> \\
> &= \sum_{a=1}^{r} A_{ai} B_{ja}
> && \text{(only the terms with } b = i,\ c = j \text{ depend on } X_{ij} \text{)}
> \\
> &= \sum_{a=1}^{r} \mathopen{}\left[{\mathbf{A}}^{\top}\right]\mathclose{}_{ia} \mathopen{}\left[{\mathbf{B}}^{\top}\right]\mathclose{}_{aj}
> && \text{(definition of the transpose)}
> \\
> &= \mathopen{}\left[{\mathbf{A}}^{\top}\,{\mathbf{B}}^{\top}\right]\mathclose{}_{ij}
> && \text{(definition of matrix multiplication)}
> \end{aligned}$$

> **NOTE:**
>
> *Remark 10* (Why the theorem uses the trace). The trace makes $\operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})$ a scalar, so its matrix derivative ([Definition 10](#def-matrix-derivative)) is again an $m \times n$ matrix. The matrix product $\mathbf{A} \mathbf{X} \mathbf{B}$ itself (without the trace) is an $r \times r$ matrix, and each of its $r^2$ entries has a partial derivative with respect to each of the $m n$ entries of $\mathbf{X}$. Those $r^2 m n$ partial derivatives form a four-index array (a fourth-order tensor), not a matrix, which is why this result is stated for the scalar $\operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})$.
>
> For example, with
>
> $$\begin{aligned}
> \mathbf{A} &= \mathbf{B} \\
> &= \mathbf{I}_2,
> \end{aligned}$$
>
> the product $\mathbf{A} \mathbf{X} \mathbf{B} = \mathbf{X}$ has $4$ entries, each with $4$ partial derivatives, $16$ in all, while its trace $X_{11} + X_{22}$ has the $4$ partial derivatives that form the $2 \times 2$ matrix $\mathbf{I}_2$ of [Example 17](#exm-matrix-derivative).

> **NOTE:**
>
> **Example 18 (Differentiating a weighted trace)** Let $\mathbf{A} = \mathbf{I}_2$ ($2 \times 2$) and $\mathbf{B} = \begin{pmatrix}2 & 0 \\
> 0 & 3\end{pmatrix}$ ($2 \times 2$). Then $\operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B}) = 2X_{11} + 3X_{22}$, and:
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathbf{X}} \operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})}_{2 \times 2}
> &= \underbrace{{\mathbf{A}}^{\top}}_{2 \times 2} \underbrace{{\mathbf{B}}^{\top}}_{2 \times 2} \\
> &= \mathbf{I}_2 \begin{pmatrix}2 & 0 \\
> 0 & 3\end{pmatrix} \\
> &= \begin{pmatrix}2 & 0 \\
> 0 & 3\end{pmatrix}
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 2 (A gradient that does not mention its variable)** Take
>
> $$A = \begin{bmatrix} 2 & -1 & 0 \\ 4 & 3 & -2 \end{bmatrix}$$
>
> let $W \in \mathbb{R}^{2 \times 3}$ vary, and define
>
> $$g(W) = \sum_{i=1}^{2} \sum_{j=1}^{3} W_{ij} A_{ij}$$
>
> which is the entry-by-entry version of the inner product for matrices. Compute $\nabla_W\, g(W)$, and say what is unusual about the answer.

> **NOTE:**
>
> *Solution 2*. Written out over the six positions,
>
> $$g(W) = 2W_{11} - W_{12} + 0\,W_{13} + 4W_{21} + 3W_{22} - 2W_{23}$$
>
> Each $W_{ij}$ appears in exactly one term, multiplied by $A_{ij}$ and by nothing else, so differentiating with respect to it leaves $A_{ij}$ behind:
>
> $$\frac{\partial g}{\partial W_{ij}} = A_{ij}$$
>
> Collecting those partial derivatives into a matrix of the same shape as $W$, as [Table 1 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#tbl-gradient-shape) requires,
>
> $$\begin{aligned}
> \nabla_W\, g(W)
> &= \begin{bmatrix} 2 & -1 & 0 \\ 4 & 3 & -2 \end{bmatrix} \\
> &= A
> \end{aligned}$$
>
> What is unusual is that the gradient came out **constant**: it does not mention $W$ at all. The constant answer is not a quirk of this particular $A$. $g$ is a linear function of $W$, and the gradient of a linear function is constant everywhere, for the same reason the derivative of $f(w) = cw$ is $c$ no matter where it is evaluated.
>
> A constant gradient is the easy case, and it is not the case we usually face. Most functions we minimize are curved — the residual sum of squares of a linear model ([Definition 9](#def-residual-sum-of-squares)) is the standard example — so their gradient changes from point to point and the downhill direction has to be worked out afresh at every step.

> **NOTE:**
>
> **Theorem 10 (Gradient of an entrywise inner product with a fixed matrix)** Let $A$ be a fixed $m \times n$ matrix, and for $W \in \mathbb{R}^{m \times n}$ define
>
> $$g(W) = \sum_{i=1}^{m} \sum_{j=1}^{n} W_{ij} A_{ij}$$
>
> Then for every $W$, $\nabla_W\, g(W) = A$. In particular, the gradient is constant: it does not depend on $W$.

> **NOTE:**
>
> *Proof*. This is the solution to [Exercise 2](#exr-gradient-of-linear), worked in [Solution 2](#sol-gradient-of-linear), where $m = 2$, $n = 3$, and the entries of $A$ are given. The same argument works for every $A$: each $W_{ij}$ appears in exactly one term, multiplied by $A_{ij}$, so $\frac{\partial g}{\partial W_{ij}} = A_{ij}$.

# Definitions on this page

- [Definition 1 (Row-vector derivative)](#def-row-vector-derivative)
- [Definition 2 (Derivative of a vector-valued function)](#def-vector-valued-derivative)
- [Definition 3 (Denominator layout)](#def-denominator-layout)
- [Definition 4 (Jacobian matrix)](#def-jacobian-matrix)
- [Definition 5 (Numerator layout)](#def-numerator-layout)
- [Definition 6 (Constant)](#def-constant-wrt-vector)
- [Definition 7 (Residual vector and residuals)](#def-residual)
- [Definition 8 (Squared error)](#def-squared-error)
- [Definition 9 (Residual sum of squares)](#def-residual-sum-of-squares)
- [Definition 10 (Matrix derivative (gradient))](#def-matrix-derivative)

Back to top

## References

\[1\]

Wikipedia contributors, “Total derivative — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Total_derivative>

\[2\]

Wikipedia contributors, “Matrix calculus — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Matrix_calculus>

\[3\]

Wikipedia contributors, “Jacobian matrix and determinant — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Jacobian_matrix_and_determinant>

\[4\]

S. J. Miller, *The probability lifesaver: Calculus review problems*. 2016. Available: <https://web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/index.htm#:~:text=http%3A//web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/supplementalchap_calcreview.pdf>

\[5\]

Wikipedia contributors, “Errors and residuals — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Errors_and_residuals>

\[6\]

Wikipedia contributors, “Residual sum of squares — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Residual_sum_of_squares>

\[7\]

C. A. Felippa, “Matrix calculus.” Appendix F of Introduction to Finite Element Methods, course notes, University of Colorado Boulder. Accessed: Oct. 06, 2026. \[Online\]. Available: <https://quickfem.com/wp-content/uploads/IFEM.AppF_.pdf>

\[8\]

Wikipedia contributors, “Gradient — Wikipedia, the free encyclopedia.” Available: <https://en.wikipedia.org/wiki/Gradient>
