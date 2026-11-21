# Second Partial Derivatives and the Hessian

Code

Published

Last modified: 2026-11-20 22:15:48 (PST)

# 1 Second partial derivatives and the Hessian

> **NOTE:**
>
> **Definition 1 (Open ball)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$ and $r > 0$. The **open ball** [\[1\]](#ref-wikipedia_ball_mathematics) of radius $r$ around $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is the set $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^p : \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} < r\right\}\mathclose{}$, of points whose distance from $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ (the [Euclidean norm](linear-algebra-vectors.llms.md#def-euclidean-norm) of the difference) is less than $r$.

> **NOTE:**
>
> **Definition 2 (Closed ball)** For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $r$ as in [Definition 1](#def-ball), the **closed ball** of radius $r$ around $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^p : \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \le r\right\}\mathclose{}$.

> **NOTE:**
>
> **Definition 3 (Unit ball)** The open and closed balls ([Definition 1](#def-ball), [Definition 2](#def-closed-ball)) of radius $1$ around $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ are the open and closed **unit balls**.

> **NOTE:**
>
> **Example 1 (Points in the unit balls of** $\mathbb{R}^2$)  
>
> - ${(0.5, 0.5)}^{\top}$ has
>
>   $$\begin{aligned}
>   \mathopen{}\left\lVert{(0.5, 0.5)}^{\top}\right\rVert\mathclose{}^2 &= 0.25 + 0.25 \\
>   &= 0.5 \\
>   &< 1,
>   \end{aligned}$$
>
>   so it is in both the open and the closed unit ball.
>
> - ${(0.6, 0.8)}^{\top}$ has
>
>   $$\begin{aligned}
>   \mathopen{}\left\lVert{(0.6, 0.8)}^{\top}\right\rVert\mathclose{}^2 &= 0.36 + 0.64 \\
>   &= 1,
>   \end{aligned}$$
>
>   so it is in the closed unit ball but not the open one.
>
> - For $p = 1$, the open ball of radius $r$ around $c$ is the open interval $(c - r, c + r)$.

> **NOTE:**
>
> **Definition 4 (Second partial derivative)** Let $f$ be a scalar-valued function of a $p \times 1$ vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, and let $i, j \in \mathopen{}\left\{1, \ldots, p\right\}\mathclose{}$. Suppose the partial derivative $\frac{\partial}{\partial x_j} f$ ([Definition 1 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#def-partial-derivative)) exists at every point of an open ball around $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Definition 1](#def-ball)). The **second partial derivative** of $f$ at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, first with respect to $x_j$ and then with respect to $x_i$, is
>
> $$\frac{\partial}{\partial x_i} \mathopen{}\left(\frac{\partial}{\partial x_j} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{},$$
>
> the partial derivative with respect to $x_i$ of the function $\frac{\partial}{\partial x_j} f$, when it exists.

> **NOTE:**
>
> **Example 2 (Second partial derivatives of** $x_1^2 x_2 + 3 x_2$) For $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1^2 x_2 + 3 x_2$ of [Example 1 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#exm-partial-derivative), $\frac{\partial}{\partial x_1} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 2 x_1 x_2$ and $\frac{\partial}{\partial x_2} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1^2 + 3$. Differentiating each of these again:
>
> - $$\begin{aligned}
>   \frac{\partial}{\partial x_1} \mathopen{}\left(\frac{\partial}{\partial x_1} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{} &= \frac{\partial}{\partial x_1} (2 x_1 x_2) \\
>   &= 2 x_2;
>   \end{aligned}$$
>
> - $$\begin{aligned}
>   \frac{\partial}{\partial x_2} \mathopen{}\left(\frac{\partial}{\partial x_1} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{} &= \frac{\partial}{\partial x_2} (2 x_1 x_2) \\
>   &= 2 x_1;
>   \end{aligned}$$
>
> - $$\begin{aligned}
>   \frac{\partial}{\partial x_1} \mathopen{}\left(\frac{\partial}{\partial x_2} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{} &= \frac{\partial}{\partial x_1} (x_1^2 + 3) \\
>   &= 2 x_1;
>   \end{aligned}$$
>
> - $$\begin{aligned}
>   \frac{\partial}{\partial x_2} \mathopen{}\left(\frac{\partial}{\partial x_2} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{} &= \frac{\partial}{\partial x_2} (x_1^2 + 3) \\
>   &= 0.
>   \end{aligned}$$
>
> The two mixed partial derivatives are both $2 x_1$.

> **NOTE:**
>
> **Definition 5 (Mixed partial derivative)** When $i \ne j$, the second partial derivative of [Definition 4](#def-second-partial-derivative) is a **mixed partial derivative**.

> **NOTE:**
>
> **Definition 6 (Hessian matrix)** Let $f$ be a scalar-valued function of a $p \times 1$ vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ whose first partial derivatives exist on an open ball around $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Definition 1](#def-ball)) and whose second partial derivatives ([Definition 4](#def-second-partial-derivative)) exist at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. The **Hessian matrix** [\[2\]](#ref-wikipedia_hessian_matrix) of $f$ at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is the derivative ([Definition 2 in Jacobians and Derivative Rules](vector-calculus-derivative-rules.llms.md#def-vector-valued-derivative)) of the transposed gradient ${\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{}}^{\top}$ ([Definition 2 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#def-vector-derivative)):
>
> $$\underbrace{\mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}_{p \times p} \stackrel{\text{def}}{=}\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} {\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{}}^{\top}.
> \tag{1}$$

> **NOTE:**
>
> **Example 3 (A Hessian matrix)** Let $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = e^{2x_1 + x_2} - x_1$ for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(x_1, x_2)}^{\top}$, where $e$ is [Euler’s number](algebra-exponentials.llms.md#def-euler-number), and write $u = 2x_1 + x_2$. By the [chain rule](calculus-derivatives.llms.md#thm-chain-rule), $\frac{\partial}{\partial x_1} e^{u} = 2 e^{u}$ and $\frac{\partial}{\partial x_2} e^{u} = e^{u}$, so
>
> $$\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \begin{bmatrix} 2 e^{u} - 1 \\ e^{u} \end{bmatrix}.$$
>
> Differentiating each entry again,
>
> $$\begin{aligned}
> \mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> &= \begin{bmatrix}
> \frac{\partial}{\partial x_1} (2 e^{u} - 1) & \frac{\partial}{\partial x_1} e^{u} \\
> \frac{\partial}{\partial x_2} (2 e^{u} - 1) & \frac{\partial}{\partial x_2} e^{u}
> \end{bmatrix} \\
> &= \begin{bmatrix}
> 4 e^{u} & 2 e^{u} \\
> 2 e^{u} & e^{u}
> \end{bmatrix},
> \end{aligned}$$
>
> and at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, where $u = 0$, $\mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \begin{bmatrix} 4 & 2 \\ 2 & 1 \end{bmatrix}$.

> **NOTE:**
>
> **Example 4 (A function with a gradient but no Hessian at a point)** Let $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1 \mathopen{}\left|x_1\right|\mathclose{}$ for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(x_1, x_2)}^{\top}$, where $\mathopen{}\left|\cdot\right|\mathclose{}$ is the [absolute value](algebra-basics.llms.md#def-absolute-value). For $x_1 > 0$, $f = x_1^2$ and $\frac{\partial}{\partial x_1} f = 2 x_1$; for $x_1 < 0$, $f = -x_1^2$ and $\frac{\partial}{\partial x_1} f = -2 x_1$; and at $x_1 = 0$ the [difference quotient](calculus-derivatives.llms.md#def-difference-quotient) is $h \mathopen{}\left|h\right|\mathclose{} / h = \mathopen{}\left|h\right|\mathclose{} \to 0$. So the gradient exists everywhere: it is ${(2 \mathopen{}\left|x_1\right|\mathclose{},\ 0)}^{\top}$. But $2 \mathopen{}\left|x_1\right|\mathclose{}$ has no derivative in $x_1$ at $x_1 = 0$ (its difference quotient $2 \mathopen{}\left|h\right|\mathclose{} / h$ is $2$ for $h > 0$ and $-2$ for $h < 0$), so $\mathopen{}\left[\mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right]\mathclose{}_{11}$, and with it the Hessian, does not exist at any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with $x_1 = 0$.

> **NOTE:**
>
> **Theorem 1 (Other ways to write the Hessian, and its entries)** Let $f$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ be as in [Definition 6](#def-hessian).
>
> 1.  The Hessian can be written with the row-vector derivative ([Definition 1 in Jacobians and Derivative Rules](vector-calculus-derivative-rules.llms.md#def-row-vector-derivative)) of $f$:
>
>     $$\begin{aligned}
>     \mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
>     &= \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} \mathopen{}\left(\frac{\partial f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}{\partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}}\right)\mathclose{} \\
>     &= \frac{\partial^2 f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}}.
>     \end{aligned}
>     \tag{2}$$
>
> 2.  The $(i, j)$ entry of the Hessian is
>
>     $$\mathopen{}\left[\mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right]\mathclose{}_{ij} = \frac{\partial}{\partial x_i} \mathopen{}\left(\frac{\partial}{\partial x_j} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{}.
>     \tag{3}$$

> **NOTE:**
>
> *Proof*. **Part 1.** By [Theorem 1 in Jacobians and Derivative Rules](vector-calculus-derivative-rules.llms.md#thm-row-deriv-tp-col-deriv), the transposed gradient ${\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{}}^{\top}$ equals the row-vector derivative $\frac{\partial f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}{\partial {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}}$. Substituting it into [Equation 1](#eq-hessian) gives the first line. The second line is the same expression written as a second derivative. It follows the [shape rule](linear-algebra-matrix-multiplication.llms.md#def-shape-rule) of [matrix multiplication](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult) ([Remark 2 in Jacobians and Derivative Rules](vector-calculus-derivative-rules.llms.md#rem-row-derivative-shape)): the $p \times 1$ column-vector operator $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}$ stands on the left of a $1 \times p$ row vector, giving a $p \times p$ matrix.
>
> **Part 2.** Let $y_j \stackrel{\text{def}}{=}\frac{\partial}{\partial x_j} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$ be entry $j$ of the gradient. By [Definition 2 in Jacobians and Derivative Rules](vector-calculus-derivative-rules.llms.md#def-vector-valued-derivative), the $(i, j)$ entry of the derivative of the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (y_1, \ldots, y_p)$ with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is
>
> $$\begin{aligned}
> \mathopen{}\left[\mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right]\mathclose{}_{ij}
> &= \mathopen{}\left[\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}\right]\mathclose{}_{ij}
> && \text{(}\href{#eq-hessian}{\text{Equation~1}}\text{, with } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\text{ the gradient)}
> \\
> &= \frac{\partial}{\partial x_i} y_j
> && \text{(}\href{vector-calculus-derivative-rules.qmd#def-vector-valued-derivative}{\text{Definition~2 in Jacobians and Derivative Rules}}\text{)}
> \\
> &= \frac{\partial}{\partial x_i} \mathopen{}\left(\frac{\partial}{\partial x_j} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{}.
> && \text{(} y_j = \frac{\partial}{\partial x_j} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 5 (Computing the Hessian entry by entry, and checking it by finite differences)** Take $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = e^{2x_1 + x_2} - x_1$ from [Example 3](#exm-hessian). By [Equation 3](#eq-hessian-entry), entry $(i, j)$ of the Hessian is the derivative with respect to $x_i$ of the derivative with respect to $x_j$. The code differentiates `f` symbolically in that order with [`D()`](https://rdrr.io/r/stats/deriv.html), evaluates the four entries at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (0.5, -1)$, and compares them with central differences of the gradient.
>
> ``` downlit
> f_expr <- quote(exp(2 * x1 + x2) - x1)
> vars <- c("x1", "x2")
> point <- c(x1 = 0.5, x2 = -1)
>
> grad_expr <- lapply(vars, function(v) D(f_expr, v))
> hess_expr <- lapply(vars, function(i) {
>   lapply(grad_expr, function(g_j) D(g_j, i))
> })
> H <- sapply(1:2, function(j) {
>   sapply(1:2, function(i) eval(hess_expr[[i]][[j]], as.list(point)))
> })
>
> grad_at <- function(x) {
>   sapply(grad_expr, function(g) eval(g, as.list(setNames(x, vars))))
> }
> h <- 1e-5
> H_fd <- sapply(1:2, function(j) {
>   sapply(1:2, function(i) {
>     step <- replace(c(0, 0), i, h)
>     (grad_at(point + step)[j] - grad_at(point - step)[j]) / (2 * h)
>   })
> })
>
> H
> #>      [,1] [,2]
> #> [1,]    4    2
> #> [2,]    2    1
> H_fd
> #>      [,1] [,2]
> #> [1,]    4    2
> #> [2,]    2    1
> ```
>
> At this point $u = 2x_1 + x_2 = 0$, so the closed form in [Example 3](#exm-hessian) gives $4 e^u = 4$ for entry $(1, 1)$, and the code gives 4. The off-diagonal entries are 2 and 2, which are equal. The finite differences agree with the symbolic entries to within 0.00000000026.

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on second and higher partial derivatives:
>
> - [Higher-Order Partial Derivatives](https://www.youtube.com/watch?v=3HAOTYo39A8&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Exercise on Higher-Order Partial Derivatives](https://www.youtube.com/watch?v=E7ZN4y2tW0I&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Definition 7 (Continuity at a point in several variables)** A function $f$ from $\mathbb{R}^p$ to $\mathbb{R}^q$ is **continuous at** $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ if for every $\varepsilon> 0$ there is a $\delta> 0$ such that $\mathopen{}\left\lVert f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right\rVert\mathclose{} < \varepsilon$ whenever $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} < \delta$. For $q = 1$, $\mathopen{}\left\lVert f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right\rVert\mathclose{} = \mathopen{}\left|f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right|\mathclose{}$.

> **NOTE:**
>
> **Definition 8 (Continuity on a set in several variables)** A function $f$ from $\mathbb{R}^p$ to $\mathbb{R}^q$ is **continuous on** a set if it is continuous at every point of the set ([Definition 7](#def-continuous-several)).

> **NOTE:**
>
> **Example 6 (A continuous function, and a discontinuous one)**  
>
> - $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1 + x_2$ is continuous at every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. Each $\mathopen{}\left|y_i - x_i\right|\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}$, since the squared length is a sum of nonnegative squares, so
>
>   $$\begin{aligned}
>   \mathopen{}\left|f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right|\mathclose{}
>   &= \mathopen{}\left|(y_1 - x_1) + (y_2 - x_2)\right|\mathclose{}
>   && \text{(subtract)}
>   \\
>   &\le \mathopen{}\left|y_1 - x_1\right|\mathclose{} + \mathopen{}\left|y_2 - x_2\right|\mathclose{}
>   && \text{(triangle inequality for numbers)}
>   \\
>   &\le 2\,\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{},
>   && \text{(each term is at most } \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \text{)}
>   \end{aligned}$$
>
>   which is less than $\varepsilon$ whenever $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} < \delta= \varepsilon/ 2$.
>
> - $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 1$ if $x_1 > 0$ and $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 0$ otherwise is not continuous at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$: for $\varepsilon= \tfrac{1}{2}$ and any $\delta> 0$, the point $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= {(\delta/ 2, 0)}^{\top}$ has $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\rVert\mathclose{} = \delta/ 2 < \delta$ but $\mathopen{}\left|f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})\right|\mathclose{} = 1 > \tfrac{1}{2}$.

> **NOTE:**
>
> **Theorem 2 (Continuity in one variable, and sums, multiples and compositions)**  
>
> 1.  For $p = q = 1$, a function $f$ is continuous at $x$ in the sense of [Definition 7](#def-continuous-several) exactly when $\lim_{y \to x} f(y) = f(x)$ ([limit](calculus-derivatives.llms.md#def-limit)), which is the usual [continuity](calculus-integration.llms.md#def-continuous) at $x$.
> 2.  If $f : \mathbb{R}^p \to \mathbb{R}^q$ is continuous at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $g : \mathbb{R}^q \to \mathbb{R}^r$ is continuous at $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$, then the [composition](https://morrison-lab.github.io/mcs/functions.html#def-composition) $g \circ f$ is continuous at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.
> 3.  If $f, g : \mathbb{R}^p \to \mathbb{R}$ are continuous at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, then $f + g$ is continuous at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.
> 4.  If $f : \mathbb{R}^p \to \mathbb{R}$ is continuous at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $c \in \mathbb{R}$, then $c f$ is continuous at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.
>
> If the hypotheses of part 2, 3 or 4 hold at every point of a set, the conclusion holds at every point of that set.

> **NOTE:**
>
> *Proof*. Let $\varepsilon> 0$ be given.
>
> **Part 1.** For $p = q = 1$, $\mathopen{}\left\lVert f(y) - f(x)\right\rVert\mathclose{} = \mathopen{}\left|f(y) - f(x)\right|\mathclose{}$ and $\mathopen{}\left\lVert y - x\right\rVert\mathclose{} = \mathopen{}\left|y - x\right|\mathclose{}$. [Definition 7](#def-continuous-several) then asks for a $\delta> 0$ such that $\mathopen{}\left|f(y) - f(x)\right|\mathclose{} < \varepsilon$ whenever $\mathopen{}\left|y - x\right|\mathclose{} < \delta$. The [limit definition](calculus-derivatives.llms.md#def-limit) with $L = f(x)$ asks for the same inequality, but only whenever $0 < \mathopen{}\left|y - x\right|\mathclose{} < \delta$. The two agree, because at $y = x$ the inequality $\mathopen{}\left|f(x) - f(x)\right|\mathclose{} = 0 < \varepsilon$ holds for every $\delta$.
>
> **Part 2.** Because $g$ is continuous at $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$, there is a $\delta_g > 0$ such that $\mathopen{}\left\lVert g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}) - g(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}))\right\rVert\mathclose{} < \varepsilon$ whenever $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right\rVert\mathclose{} < \delta_g$. Because $f$ is continuous at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, applied with $\delta_g$ in the role of $\varepsilon$, there is a $\delta> 0$ such that $\mathopen{}\left\lVert f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right\rVert\mathclose{} < \delta_g$ whenever $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} < \delta$. So if $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} < \delta$, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})$ has $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right\rVert\mathclose{} < \delta_g$, and therefore $\mathopen{}\left\lVert g(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})) - g(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}))\right\rVert\mathclose{} < \varepsilon$.
>
> **Part 3.** Because $f$ and $g$ are continuous at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, there are $\delta_f > 0$ and $\delta_g > 0$ such that $\mathopen{}\left|f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right|\mathclose{} < \varepsilon/ 2$ whenever $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} < \delta_f$, and $\mathopen{}\left|g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right|\mathclose{} < \varepsilon/ 2$ whenever $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} < \delta_g$. Let $\delta\stackrel{\text{def}}{=}\min\mathopen{}\left\{\delta_f, \delta_g\right\}\mathclose{}$. If $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} < \delta$, then
>
> $$\begin{aligned}
> \mathopen{}\left|(f + g)(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - (f + g)(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right|\mathclose{}
> &= \mathopen{}\left|\mathopen{}\left(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{} + \mathopen{}\left(g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{}\right|\mathclose{}
> && \text{(regroup)}
> \\
> &\le \mathopen{}\left|f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right|\mathclose{} + \mathopen{}\left|g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right|\mathclose{}
> && \text{(triangle inequality for numbers)}
> \\
> &< \frac{\varepsilon}{2} + \frac{\varepsilon}{2}
> && \text{(choice of } \delta\text{)}
> \\
> &= \varepsilon.
> && \text{(add)}
> \end{aligned}$$
>
> **Part 4.** Because $f$ is continuous at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, there is a $\delta> 0$ such that $\mathopen{}\left|f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right|\mathclose{} < \varepsilon/ (\mathopen{}\left|c\right|\mathclose{} + 1)$ whenever $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} < \delta$. For such $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$,
>
> $$\begin{aligned}
> \mathopen{}\left|c f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - c f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right|\mathclose{}
> &= \mathopen{}\left|c\right|\mathclose{}\,\mathopen{}\left|f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right|\mathclose{}
> && \text{(factor out } c \text{)}
> \\
> &\le \mathopen{}\left|c\right|\mathclose{}\,\frac{\varepsilon}{\mathopen{}\left|c\right|\mathclose{} + 1}
> && \text{(choice of } \delta\text{)}
> \\
> &< \varepsilon.
> && \text{(} \mathopen{}\left|c\right|\mathclose{} < \mathopen{}\left|c\right|\mathclose{} + 1 \text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 7 (Choosing** $\delta$ for a sum, a multiple and a composition) Let $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1$ and $g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_2$ on $\mathbb{R}^2$, and $h(t) = 3t$ on $\mathbb{R}$. Since $\mathopen{}\left|y_i - x_i\right|\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}$, the functions $f$ and $g$ are continuous with $\delta= \varepsilon$, and $h$ is continuous with $\delta= \varepsilon/ 3$, because $\mathopen{}\left|h(s) - h(t)\right|\mathclose{} = 3\,\mathopen{}\left|s - t\right|\mathclose{}$. Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 2)$ and $\varepsilon= 0.1$. The proof of [Theorem 2](#thm-continuous-several) gives these values of $\delta$:
>
> - for $f + g$ (part 3), $\delta= \min\mathopen{}\left\{\varepsilon/ 2, \varepsilon/ 2\right\}\mathclose{}$;
> - for $3 f$ (part 4), $\delta= \varepsilon/ (3 + 1)$;
> - for $h \circ (f + g)$ (part 2), the outer value $\delta_h = \varepsilon/ 3$ plays the role of $\varepsilon$ for $f + g$, so $\delta= \delta_h / 2$.
>
> The code draws many points $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ at distance less than $\delta$ from $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and finds the largest change in each function.
>
> ``` downlit
> set.seed(571)
> eps <- 0.1
> x <- c(1, 2)
> f <- function(x) x[1]
> g <- function(x) x[2]
> h <- function(t) 3 * t
>
> fun_sum <- function(x) f(x) + g(x)
> fun_multiple <- function(x) 3 * f(x)
> fun_composition <- function(x) h(fun_sum(x))
>
> deltas <- c(
>   sum = eps / 2,
>   multiple = eps / (3 + 1),
>   composition = (eps / 3) / 2
> )
> funs <- list(
>   sum = fun_sum, multiple = fun_multiple, composition = fun_composition
> )
>
> n <- 10000L
> largest_change <- sapply(names(funs), function(nm) {
>   radius <- deltas[[nm]] * sqrt(runif(n))
>   angle <- runif(n, 0, 2 * pi)
>   y <- cbind(x[1] + radius * cos(angle), x[2] + radius * sin(angle))
>   max(abs(apply(y, 1, funs[[nm]]) - funs[[nm]](x)))
> })
> data.frame(delta = deltas, largest_change = largest_change, eps = eps)
> ```
>
> For 3 of the 3 functions, the largest change among the 10000 points is below $\varepsilon= 0.1$, as [Theorem 2](#thm-continuous-several) guarantees.

> **NOTE:**
>
> **Example 8 (Partial derivatives can exist where a function is not continuous)** Let $f : \mathbb{R}^2 \to \mathbb{R}$ be
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) =
> \begin{cases}
> \dfrac{x_1 x_2}{x_1^2 + x_2^2} & \text{if } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}, \\
> 0 & \text{if } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}.
> \end{cases}$$
>
> **Both partial derivatives exist at** $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. For $h \ne 0$,
>
> $$\begin{aligned}
> f(h, 0) &= \frac{h \cdot 0}{h^2 + 0} \\
> &= 0,
> \end{aligned}$$
>
> so
>
> $$\begin{aligned}
> \frac{f(0 + h, 0) - f(0, 0)}{h}
> &= \frac{0 - 0}{h}
> && \text{(} f(h, 0) = 0 \text{ and } f(0, 0) = 0 \text{)}
> \\
> &= 0,
> && \text{(} 0 / h = 0 \text{ for } h \ne 0 \text{)}
> \end{aligned}$$
>
> and the limit as $h \to 0$ is $0$: $\frac{\partial}{\partial x_1} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = 0$ ([Definition 1 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#def-partial-derivative)). The same steps with $f(0, h) = 0$ give $\frac{\partial}{\partial x_2} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = 0$.
>
> **But** $f$ is not continuous at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ ([Definition 7](#def-continuous-several)). Take $\varepsilon= \tfrac{1}{4}$ and any $\delta> 0$, and let $t = \delta/ 2$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= {(t, t)}^{\top}$. Then
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\rVert\mathclose{} &= \sqrt{t^2 + t^2} \\
> &= t \sqrt{2} \\
> &= \delta/ \sqrt{2} \\
> &< \delta,
> \end{aligned}$$
>
> but
>
> $$\begin{aligned}
> \mathopen{}\left|f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) - f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})\right|\mathclose{}
> &= \mathopen{}\left|\frac{t \cdot t}{t^2 + t^2} - 0\right|\mathclose{}
> && \text{(} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{, since } t > 0 \text{)}
> \\
> &= \frac{t^2}{2 t^2}
> && \text{(} t^2 + t^2 = 2 t^2 \text{)}
> \\
> &= \tfrac{1}{2},
> && \text{(cancel } t^2 > 0 \text{)}
> \end{aligned}$$
>
> which is more than $\varepsilon= \tfrac{1}{4}$.
>
> The partial derivatives only look along the two coordinate axes, where $f$ is $0$; along the line $x_1 = x_2$, $f$ is $\tfrac{1}{2}$ everywhere except at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. So partial derivatives existing at a point says little about how $f$ behaves near it.

> **NOTE:**
>
> **Theorem 3 (Symmetry of the Hessian)** If the second partial derivatives of $f$ exist and are continuous ([Definition 7](#def-continuous-several)) on an open ball around $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Definition 1](#def-ball)), then $\frac{\partial}{\partial x_i} \mathopen{}\left(\frac{\partial}{\partial x_j} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{} = \frac{\partial}{\partial x_j} \mathopen{}\left(\frac{\partial}{\partial x_i} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{}$ for all $i, j$ [\[3\]](#ref-wikipedia_symmetry_of_second_derivatives), so $\mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$ ([Definition 6](#def-hessian)) is symmetric ([symmetric matrix](linear-algebra-special-matrices.llms.md#def-symmetric-matrix)).

The proof applies the one-variable mean value theorem twice, which these notes do not develop; see [\[4\]](#ref-rudin1976principles), Theorem 9.41, which is stated for two variables: apply it to $f$ as a function of $x_i$ and $x_j$, with the other coordinates held fixed.

> **NOTE:**
>
> **Example 9 (Mixed partial derivatives agree)** In [Example 3](#exm-hessian), the $(1, 2)$ and $(2, 1)$ entries of $\mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$ are both $2 e^{2x_1 + x_2}$.

> **NOTE:**
>
> **Example 10 (Without continuity, the mixed partials can differ)** Let $f(x_1, x_2) = \dfrac{x_1 x_2 (x_1^2 - x_2^2)}{x_1^2 + x_2^2}$ for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = 0$. For $x_2 \ne 0$, the partial derivative ([Definition 1 in Partial Derivatives and Gradients](vector-calculus-gradients.llms.md#def-partial-derivative)) in $x_1$ at $(0, x_2)$ is
>
> $$\begin{aligned}
> \frac{\partial}{\partial x_1} f(0, x_2)
> &= \lim_{h \to 0} \frac{f(h, x_2) - f(0, x_2)}{h}
> && \text{(definition of the partial derivative, }\href{vector-calculus-gradients.qmd#def-partial-derivative}{\text{Definition~1 in Partial Derivatives and Gradients}}\text{)}
> \\
> &= \lim_{h \to 0} \frac{x_2 (h^2 - x_2^2)}{h^2 + x_2^2}
> && \text{(} f(0, x_2) = 0 \text{; cancel } h \text{)}
> \\
> &= \frac{x_2 \cdot (-x_2^2)}{x_2^2} \\
> &= -x_2,
> && \text{(the quotient is continuous at } h = 0 \text{)}
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> \frac{\partial}{\partial x_1} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) &= \lim_{h \to 0} (0 - 0)/h \\
> &= 0,
> \end{aligned}$$
>
> so $\frac{\partial}{\partial x_1} f(0, x_2) = -x_2$ holds at $x_2 = 0$ too. In the same way, with the roles of $x_1$ and $x_2$ swapped, $f(x_1, k) / k = x_1 (x_1^2 - k^2) / (x_1^2 + k^2) \to x_1$, so $\frac{\partial}{\partial x_2} f(x_1, 0) = x_1$ for every $x_1$. So at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ ([Definition 6](#def-hessian))
>
> $$\begin{aligned}
> \mathopen{}\left[\mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})\right]\mathclose{}_{21}
> &= \frac{\partial}{\partial x_2} \mathopen{}\left(\frac{\partial}{\partial x_1} f\right)\mathclose{} \\
> &= \frac{d }{d x_2} (-x_2) \\
> &= -1, \\
> \mathopen{}\left[\mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})\right]\mathclose{}_{12}
> &= \frac{\partial}{\partial x_1} \mathopen{}\left(\frac{\partial}{\partial x_2} f\right)\mathclose{} \\
> &= \frac{d }{d x_1} x_1 \\
> &= 1:
> \end{aligned}$$
>
> the Hessian at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ is not symmetric. By [Theorem 3](#thm-hessian-symmetric), then, the second partial derivatives of this $f$ cannot all be continuous near $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Theorem 4 (Hessian of a quadratic form)** If $\mathbf{S}$ is a symmetric $p \times p$ matrix that is constant with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, then $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ has $\mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 2 \mathbf{S}$ for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> \mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> &= \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} {\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} ({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{}}^{\top}
> && \text{(}\href{#def-hessian}{\text{Definition~6}}\text{)}
> \\
> &= \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} {\mathopen{}\left(2 \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}}^{\top}
> && \text{(}\href{vector-calculus-derivative-rules.qmd#cor-quadratic-form-symmetric}{\text{Corollary~2 in Jacobians and Derivative Rules}}\text{)}
> \\
> &= \mathopen{}\left(\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}\,{(2 \mathbf{S})}^{\top}
> && \text{(}\href{vector-calculus-derivative-rules.qmd#thm-deriv-matrix-vector}{\text{Theorem~5 in Jacobians and Derivative Rules}}\text{, with } \mathbf{A} = 2 \mathbf{S} \text{ and } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\text{; } \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} {(2 \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}^{\top} = \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} (2 \mathbf{S} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \text{, }\href{vector-calculus-derivative-rules.qmd#def-vector-valued-derivative}{\text{Definition~2 in Jacobians and Derivative Rules}}\text{)}
> \\
> &= \mathbf{I}_p\,{(2 \mathbf{S})}^{\top}
> && \text{(} \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathbf{I}_p \text{, }\href{vector-calculus-derivative-rules.qmd#rem-deriv-matrix-vector-special-case}{\text{Remark~4 in Jacobians and Derivative Rules}}\text{)}
> \\
> &= 2 \mathbf{S}.
> && \text{(} \mathbf{S} \text{ is symmetric)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 11 (The Hessian of a** $2 \times 2$ quadratic form) For $\mathbf{S} = \begin{bmatrix} 3 & 1 \\ 1 & 2 \end{bmatrix}$ as in [Example 12 in Jacobians and Derivative Rules](vector-calculus-derivative-rules.llms.md#exm-deriv-quadratic-form), [Theorem 4](#thm-hessian-quadratic) gives $\mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \begin{bmatrix} 6 & 2 \\ 2 & 4 \end{bmatrix}$. Directly, the gradient found there, with $\beta_{i}$ renamed $x_i$, is ${(6 x_1 + 2 x_2,\ 2 x_1 + 4 x_2)}^{\top}$, and differentiating its entries by $x_1$ and by $x_2$ ([Definition 6](#def-hessian)) gives
>
> $$\begin{aligned}
> \mathbf{H}_f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> &= \begin{bmatrix}
> \frac{\partial}{\partial x_1} (6 x_1 + 2 x_2) & \frac{\partial}{\partial x_1} (2 x_1 + 4 x_2) \\
> \frac{\partial}{\partial x_2} (6 x_1 + 2 x_2) & \frac{\partial}{\partial x_2} (2 x_1 + 4 x_2)
> \end{bmatrix} \\
> &= \begin{bmatrix} 6 & 2 \\ 2 & 4 \end{bmatrix}.
> \end{aligned}$$

# Definitions on this page

- [Definition 1 (Open ball)](#def-ball)
- [Definition 2 (Closed ball)](#def-closed-ball)
- [Definition 3 (Unit ball)](#def-unit-ball)
- [Definition 4 (Second partial derivative)](#def-second-partial-derivative)
- [Definition 5 (Mixed partial derivative)](#def-mixed-partial-derivative)
- [Definition 6 (Hessian matrix)](#def-hessian)
- [Definition 7 (Continuity at a point in several variables)](#def-continuous-several)
- [Definition 8 (Continuity on a set in several variables)](#def-continuous-on)

Back to top

## References

\[1\]

Wikipedia contributors, “Ball (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Ball_(mathematics)>

\[2\]

Wikipedia contributors, “Hessian matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Hessian_matrix>

\[3\]

Wikipedia contributors, “Symmetry of second derivatives — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Symmetry_of_second_derivatives>

\[4\]

W. Rudin, *Principles of mathematical analysis*, 3rd ed. in International series in pure and applied mathematics. New York: McGraw-Hill, 1976.
