# Partial Derivatives and Gradients

Code

- [Show All Code](javascript:void(0))

- [Hide All Code](javascript:void(0))

- 

  ------------------------------------------------------------------------

- [View Source](javascript:void(0))

Published

Last modified: 2026-11-20 16:05:26 (PST)

(adapted from Fieller [\[1\]](#ref-fieller2018basics), [Section 7.2](https://www.taylorfrancis.com/chapters/mono/10.1201/9781315370200-7/vector-matrix-calculus-nick-fieller?context=ubx&refId=c310b723-786a-4f33-ae56-720a6cccd3a1))

This section covers [derivatives](calculus-derivatives.llms.md#def-derivative) of functions of vectors and matrices. Its linear algebra prerequisites, such as vectors, matrices, transposes, dot products, and quadratic forms, are covered in [Linear Algebra](linear-algebra.llms.md).

Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ be column vectors of length $p$ (see [column vector](linear-algebra-vectors.llms.md#def-column-vector) and [dot product](linear-algebra-vectors.llms.md#def-dot-product)).

> **NOTE:**
>
> **Definition 1 (Partial derivative)** Let $f : \mathbb{R}^p \to \mathbb{R}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(x_1, \ldots, x_p)}^{\top} \in \mathbb{R}^p$. The **partial derivative** [\[2\]](#ref-wikipedia_partial_derivative) of $f$ with respect to $x_j$ at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is
>
> $$\frac{\partial}{\partial x_j} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \stackrel{\text{def}}{=}
> \lim_{h \to 0} \frac{f(x_1, \ldots, x_j + h, \ldots, x_p) - f(x_1, \ldots, x_p)}{h},$$
>
> when this [limit](calculus-derivatives.llms.md#def-limit) exists. It is the [derivative](calculus-derivatives.llms.md#def-derivative) at $x_j$ of the one-variable function $t \mapsto f(x_1, \ldots, t, \ldots, x_p)$, which varies the $j$th coordinate and holds the other coordinates fixed.

> **NOTE:**
>
> **Example 1 (Partial derivatives of** $x_1^2 x_2 + 3 x_2$) Let $f(x_1, x_2) = x_1^2 x_2 + 3 x_2$. At $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(1, 2)}^{\top}$,
>
> $$\begin{aligned}
> f(1, 2) &= 1 \cdot 2 + 6 \\
> &= 8,
> \end{aligned}$$
>
> and for $h \ne 0$
>
> $$\begin{aligned}
> \frac{f(1 + h, 2) - f(1, 2)}{h}
> &= \frac{(1 + h)^2 \cdot 2 + 6 - 8}{h}
> && \text{(substitute into } f \text{)}
> \\
> &= \frac{(1 + h)^2 \cdot 2 - 2}{h}
> && \text{(} 6 - 8 = -2 \text{)}
> \\
> &= \frac{(1 + 2h + h^2) \cdot 2 - 2}{h}
> && \text{(expand } (1 + h)^2 \text{)}
> \\
> &= \frac{2 + 4h + 2h^2 - 2}{h}
> && \text{(distributive law)}
> \\
> &= \frac{4h + 2h^2 + 2 - 2}{h}
> && \text{(reorder the terms)}
> \\
> &= \frac{4h + 2h^2}{h}
> && \text{(} 2 - 2 = 0 \text{)}
> \\
> &= 4 + 2h,
> && \text{(divide by } h \ne 0 \text{)}
> \end{aligned}$$
>
> which tends to $4$ as $h \to 0$, so $\frac{\partial}{\partial x_1} f(1, 2) = 4$. Holding $x_2$ fixed and differentiating in $x_1$ gives the same answer: $\frac{\partial}{\partial x_1} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 2 x_1 x_2$, which is $2 \cdot 1 \cdot 2 = 4$ at ${(1, 2)}^{\top}$. Holding $x_1$ fixed instead gives $\frac{\partial}{\partial x_2} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1^2 + 3$, which is $1 + 3 = 4$ at ${(1, 2)}^{\top}$.

> **NOTE:**
>
> **Exercise 1 (First-order partial derivatives)** Adapted from Miller [\[3\]](#ref-problifesavercalc), Question 1.1.42.
>
> Let $f(x, y) = x^2 y + e^x + \sin(xy)$. Find $\frac{\partial f}{\partial x}$ and $\frac{\partial f}{\partial y}$.

> **NOTE:**
>
> *Solution 1*. To compute $\frac{\partial f}{\partial x}$, treat $y$ as a constant:
>
> $$\frac{\partial f}{\partial x} = 2xy + e^x + y\cos(xy)$$
>
> To compute $\frac{\partial f}{\partial y}$, treat $x$ as a constant:
>
> $$\begin{aligned}
> \frac{\partial f}{\partial y}
> &= x^2 + 0 + x\cos(xy) \\
> &= x^2 + x\cos(xy)
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 2 (Partial derivatives of the normal density with respect to parameters)** Adapted from Miller [\[3\]](#ref-problifesavercalc), Question 1.1.43.
>
> Let
>
> $$f(x; \mu, \sigma) = \frac{1}{\sqrt{2\pi\sigma^2}}{\operatorname{exp}\mathopen{}\left\{-\frac{(x - \mu)^2}{2\sigma^2}\right\}\mathclose{}}$$
>
> Find $\frac{\partial f}{\partial \mu}$ and $\frac{\partial f}{\partial \sigma}$.

> **NOTE:**
>
> *Solution 2*. **1. Derivative with respect to** $\mu$: Treat $\sigma$ as constant. Differentiating the exponential factor via the chain rule:
>
> $$\begin{aligned}
> \frac{\partial f}{\partial \mu} &= \frac{1}{\sqrt{2\pi\sigma^2}}{\operatorname{exp}\mathopen{}\left\{-\frac{(x - \mu)^2}{2\sigma^2}\right\}\mathclose{}} \cdot\mathopen{}\left[-\frac{2(x - \mu)(-1)}{2\sigma^2}\right]\mathclose{}
> \\
> &= \frac{x - \mu}{\sigma^2} f(x; \mu, \sigma)
> \end{aligned}$$
>
> **2. Derivative with respect to** $\sigma$: Write $f(x; \mu, \sigma) = \frac{1}{\sqrt{2\pi}}\sigma^{-1}{\operatorname{exp}\mathopen{}\left\{-\frac{(x - \mu)^2}{2\sigma^2}\right\}\mathclose{}}$ and apply the product rule:
>
> $$\begin{aligned}
> \frac{\partial f}{\partial \sigma} &= -\frac{1}{\sqrt{2\pi}}\sigma^{-2}{\operatorname{exp}\mathopen{}\left\{-\frac{(x - \mu)^2}{2\sigma^2}\right\}\mathclose{}} + \frac{1}{\sqrt{2\pi}}\sigma^{-1}{\operatorname{exp}\mathopen{}\left\{-\frac{(x - \mu)^2}{2\sigma^2}\right\}\mathclose{}} \cdot\mathopen{}\left[\frac{(x - \mu)^2}{\sigma^3}\right]\mathclose{}
> \\
> &= \mathopen{}\left[-\frac{1}{\sigma} + \frac{(x - \mu)^2}{\sigma^3}\right]\mathclose{} f(x; \mu, \sigma)
> \end{aligned}$$
>
> *Remark:* Setting $\frac{\partial f}{\partial \mu} = 0$ and $\frac{\partial f}{\partial \sigma} = 0$ for a sample of independent observations leads directly to the values that make the sample most probable, which statistics calls the maximum likelihood estimates: $\hat{\mu}= \bar{x}$ and $\hat{\sigma}^2 = \frac{1}{n}\sum_{i=1}^n(x_i - \bar{x})^2$.

> **NOTE:**
>
> **Theorem 1 (Partial derivatives of the normal density with respect to its parameters)** Let $\mu\in \mathbb{R}$ and $\sigma> 0$, and let
>
> $$f(x; \mu, \sigma) = \frac{1}{\sqrt{2\pi\sigma^2}}{\operatorname{exp}\mathopen{}\left\{-\frac{(x - \mu)^2}{2\sigma^2}\right\}\mathclose{}}$$
>
> Then for every $x \in \mathbb{R}$,
>
> $$\begin{aligned}
> \frac{\partial f}{\partial \mu} &= \frac{x - \mu}{\sigma^2} f(x; \mu, \sigma)
> \\
> \frac{\partial f}{\partial \sigma} &= \mathopen{}\left[-\frac{1}{\sigma} + \frac{(x - \mu)^2}{\sigma^3}\right]\mathclose{} f(x; \mu, \sigma)
> \end{aligned}$$

> **NOTE:**
>
> *Proof*. This is the solution to [Exercise 2](#exr-miller-pderiv-normal-parameters), worked in [Solution 2](#sol-miller-pderiv-normal-parameters). The argument has two steps.
>
> 1.  For $\frac{\partial f}{\partial \mu}$, treat $\sigma$ as constant. The prefactor is constant, so the chain rule on the exponential gives $\frac{\partial f}{\partial \mu} = f(x; \mu, \sigma) \cdot\mathopen{}\left[-\frac{2(x - \mu)(-1)}{2\sigma^2}\right]\mathclose{}
>     = \frac{x - \mu}{\sigma^2} f(x; \mu, \sigma)$.
> 2.  For $\frac{\partial f}{\partial \sigma}$, write $f(x; \mu, \sigma) = \frac{1}{\sqrt{2\pi}}\sigma^{-1}{\operatorname{exp}\mathopen{}\left\{-\frac{(x - \mu)^2}{2\sigma^2}\right\}\mathclose{}}$. The product rule gives one term from differentiating $\sigma^{-1}$, namely $-\sigma^{-1} f(x; \mu, \sigma)$, and one from the chain rule on the exponential, namely $\frac{(x - \mu)^2}{\sigma^3} f(x; \mu, \sigma)$. Adding them gives $\mathopen{}\left[-\frac{1}{\sigma} + \frac{(x - \mu)^2}{\sigma^3}\right]\mathclose{} f(x; \mu, \sigma)$.

> **NOTE:**
>
> **Exercise 3 (Partial derivatives with exponential of quadratic form)** Adapted from Miller [\[3\]](#ref-problifesavercalc), Question 1.1.44.
>
> Find $\frac{\partial f}{\partial x}$ and $\frac{\partial f}{\partial y}$ for
>
> $$f(x, y) = x{\operatorname{exp}\mathopen{}\left\{x^2 + y^2\right\}\mathclose{}}$$

> **NOTE:**
>
> *Solution 3*. With respect to $x$, apply the product rule:
>
> $$\begin{aligned}
> \frac{\partial f}{\partial x}
> &= (1){\operatorname{exp}\mathopen{}\left\{x^2 + y^2\right\}\mathclose{}} + x \cdot\mathopen{}\left[2x{\operatorname{exp}\mathopen{}\left\{x^2 + y^2\right\}\mathclose{}}\right]\mathclose{} \\
> &= (1 + 2x^2){\operatorname{exp}\mathopen{}\left\{x^2 + y^2\right\}\mathclose{}}
> \end{aligned}$$
>
> With respect to $y$, treat $x$ as constant:
>
> $$\begin{aligned}
> \frac{\partial f}{\partial y}
> &= x \cdot\mathopen{}\left[2y{\operatorname{exp}\mathopen{}\left\{x^2 + y^2\right\}\mathclose{}}\right]\mathclose{} \\
> &= 2xy{\operatorname{exp}\mathopen{}\left\{x^2 + y^2\right\}\mathclose{}}
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 4 (Using symmetry to compute partial derivatives)** Adapted from Miller [\[3\]](#ref-problifesavercalc), Question 1.1.45.
>
> Find $\frac{\partial f}{\partial x}$ and $\frac{\partial f}{\partial y}$ for
>
> $$f(x, y) = e^{xy} - \log(x^2 + y^2)$$
>
> on $\mathbb{R}^2 \setminus \{(0, 0)\}$.

> **NOTE:**
>
> *Solution 4*. Holding $y$ constant, differentiate with respect to $x$:
>
> $$\frac{\partial f}{\partial x} = ye^{xy} - \frac{2x}{x^2 + y^2}$$
>
> Notice that the function is symmetric in $x$ and $y$: $f(x, y) = f(y, x)$. Interchanging $x$ and $y$ gives $\frac{\partial f}{\partial y}$ immediately:
>
> $$\frac{\partial f}{\partial y} = xe^{xy} - \frac{2y}{x^2 + y^2}$$
>
> *Remark:* Recognizing symmetry in multi-variable functions eliminates redundant calculations.

> **NOTE:**
>
> **Definition 2 (Vector derivative, gradient)** If $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})$ is a scalar-valued function of a $p \times 1$ vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, such as $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, then its **vector derivative** is the column vector of its partial derivatives ([Definition 1](#def-partial-derivative)):
>
> $$\frac{\partial}{\partial  \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) =
> \begin{bmatrix}
> \frac{\partial}{\partial \beta_{1}}f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) \\
> \frac{\partial}{\partial \beta_{2}}f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) \\
> \vdots \\
> \frac{\partial}{\partial \beta_{p}}f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})
> \end{bmatrix}$$
>
> The vector derivative is also called the **gradient** [\[4\]](#ref-wp:gradient) of $f$ with respect to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, written $\nabla_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})$.

> **NOTE:**
>
> **Example 2 (A vector derivative)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(\beta_{1}, \beta_{2})}^{\top}$ and $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = 3 \beta_{1} + 5 \beta_{2}^2$. Then
>
> $$\begin{aligned}
> \underbrace{\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})}_{2 \times 1}
> &= \begin{bmatrix}
> \frac{\partial}{\partial \beta_{1}} (3 \beta_{1} + 5 \beta_{2}^2) \\
> \frac{\partial}{\partial \beta_{2}} (3 \beta_{1} + 5 \beta_{2}^2)
> \end{bmatrix} \\
> &= \begin{bmatrix} 3 \\ 10 \beta_{2} \end{bmatrix},
> \end{aligned}$$
>
> and at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(1, 2)}^{\top}$ the vector derivative is ${(3, 20)}^{\top}$.

> **TIP:**
>
> Hutchinson’s [Gradients Refresher](https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/#gradients) (17 min) covers gradients and partial derivatives, the ideas behind this section [\[5\]](#ref-hutchinson_wwu_ml_videos). The login for the video site is posted [on Canvas](https://wwu.instructure.com/courses/1906010/modules#module_3922392).

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on partial derivatives:
>
> - [What Partial Derivatives Are (Hands-on Introduction)](https://www.youtube.com/watch?v=lRq7xtPxOGk&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Partial Derivative Exercises](https://www.youtube.com/watch?v=8bHZJOBizwE&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Advanced Partial Derivatives](https://www.youtube.com/watch?v=0YzXHf-u5zU&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Advanced Partial-Derivative Exercises](https://www.youtube.com/watch?v=WFmUDiABfUI&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Partial Derivative Notation](https://www.youtube.com/watch?v=kIKVHguEpvA&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

# 1 Checking a gradient by its shape

The gradient always has the same shape as the input it is taken with respect to, because it holds exactly one partial derivative per component of that input:

> **NOTE:**
>
> | $f$ is a function of | its gradient is |
> |----|----|
> | a single number | a single number — the ordinary derivative |
> | a vector in $\mathbb{R}^p$ | a vector in $\mathbb{R}^p$ |
> | a matrix in $\mathbb{R}^{m \times n}$ | a matrix in $\mathbb{R}^{m \times n}$ |
>
> Table 1: The shape of a gradient follows the shape of what it differentiates with respect to.

The table is the cheapest check there is on a gradient just worked out by hand: if the shapes disagree, something went wrong. It is the [shape rule](linear-algebra-matrix-multiplication.llms.md#def-shape-rule) of [matrix multiplication](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult) again, applied to calculus.

> **NOTE:**
>
> **Definition 3 (Linear approximation of a function of a vector, first-order Taylor approximation of a function of a vector)** Let $f : \mathbb{R}^p \to \mathbb{R}$ have a [gradient](#def-vector-derivative) at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$. The **linear approximation** of $f$ at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ [\[6\]](#ref-wikipedia_linear_approximation) (also called the **first-order Taylor approximation** or the **first-order Taylor expansion**) is the function of a step $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\delta}}\vphantom{\delta}}\in \mathbb{R}^p$
>
> $$\hat{f}_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\delta}}\vphantom{\delta}}) \stackrel{\text{def}}{=}f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) + \nabla f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\delta}}\vphantom{\delta}}.
> \tag{1}$$

> **NOTE:**
>
> **Example 3 (A linear approximation of a function of two variables)** Take $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = 3 \beta_{1} + 5 \beta_{2}^2$ from [Example 2](#exm-vector-derivative), whose [gradient](#def-vector-derivative) at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(1, 2)}^{\top}$ is $\nabla f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = {(3, 20)}^{\top}$. At that point,
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}})
> &= 3 \cdot 1 + 5 \cdot 2^2
> && \text{(substitute } \beta_{1} = 1 \text{ and } \beta_{2} = 2 \text{)}
> \\
> &= 23,
> && \text{(} 3 + 20 = 23 \text{)}
> \end{aligned}$$
>
> so the [linear approximation](#def-linear-approximation-vector) at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ is
>
> $$\hat{f}_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\delta}}\vphantom{\delta}}) = 23 + 3 \delta_1 + 20 \delta_2.$$
>
> For the step $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\delta}}\vphantom{\delta}}= {(0.1, 0.1)}^{\top}$, the approximation is
>
> $$\begin{aligned}
> \hat{f}_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\delta}}\vphantom{\delta}})
> &= 23 + 3 \cdot 0.1 + 20 \cdot 0.1
> && \text{(substitute } \delta_1 = \delta_2 = 0.1 \text{)}
> \\
> &= 25.3,
> && \text{(} 23 + 0.3 + 2 = 25.3 \text{)}
> \end{aligned}$$
>
> and the value of $f$ at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\delta}}\vphantom{\delta}}= {(1.1, 2.1)}^{\top}$ is
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\delta}}\vphantom{\delta}})
> &= 3 \cdot 1.1 + 5 \cdot 2.1^2
> && \text{(substitute } \beta_{1} = 1.1 \text{ and } \beta_{2} = 2.1 \text{)}
> \\
> &= 25.35.
> && \text{(} 3.3 + 22.05 = 25.35 \text{)}
> \end{aligned}$$
>
> The approximation misses by $0.05$, which is $5 \delta_2^2$, the second-order term of $f$ that the approximation leaves out. That term is never negative, and is zero only when $\delta_2 = 0$, so the [graph](https://morrison-lab.github.io/mcs/functions.html#def-graph) of the approximation in [Figure 1](#fig-linear-approximation-vector) is a plane that touches the graph of $f$ along the line $\beta_{2} = 2$ and lies below it everywhere else.
>
> > **NOTE:**
> >
> > Show code
> >
> > ``` downlit
> > la_c1_la <- seq(0, 2, length.out = 41)
> > la_c2_la <- seq(1, 3, length.out = 41)
> > la_lin1_la <- 3 * la_c1_la
> > la_quad2_la <- 5 * la_c2_la^2
> > la_step1_la <- 3 * (la_c1_la - 1)
> > la_step2_la <- 20 * (la_c2_la - 2)
> > la_surface_la <- outer(la_quad2_la, la_lin1_la, "+")
> > la_steps_la <- outer(la_step2_la, la_step1_la, "+")
> > la_plane_la <- la_steps_la + 23
> > la_point_la <- tibble::tibble(c1 = 1, c2 = 2, z = 23)
> > la_black_la <- list(color = "#000000", size = 5)
> > la_stops_la <- c(0, 1)
> > la_blue_cols_la <- c("#CCE0F0", "#0072B2")
> > la_red_cols_la <- c("#D55E00", "#D55E00")
> > la_blue_la <- list(la_stops_la, la_blue_cols_la)
> > la_red_la <- list(la_stops_la, la_red_cols_la)
> > la_eye_la <- list(x = 1.6, y = -1.6, z = 0.9)
> > la_camera_la <- list(eye = la_eye_la)
> > la_xaxis_la <- list(title = "beta1")
> > la_yaxis_la <- list(title = "beta2")
> > la_zaxis_la <- list(title = "f(beta)")
> > la_scene_la <- list(
> >   xaxis = la_xaxis_la,
> >   yaxis = la_yaxis_la,
> >   zaxis = la_zaxis_la,
> >   camera = la_camera_la
> > )
> > la_legend_la <- list(orientation = "h")
> > plotly::plot_ly() |>
> >   plotly::add_surface(
> >     x = la_c1_la,
> >     y = la_c2_la,
> >     z = la_surface_la,
> >     colorscale = la_blue_la,
> >     showscale = FALSE,
> >     opacity = 0.8
> >   ) |>
> >   plotly::add_surface(
> >     x = la_c1_la,
> >     y = la_c2_la,
> >     z = la_plane_la,
> >     colorscale = la_red_la,
> >     showscale = FALSE,
> >     opacity = 0.5
> >   ) |>
> >   plotly::add_trace(
> >     data = la_point_la,
> >     x = ~c1,
> >     y = ~c2,
> >     z = ~z,
> >     type = "scatter3d",
> >     mode = "markers",
> >     marker = la_black_la,
> >     name = "point of approximation"
> >   ) |>
> >   plotly::layout(scene = la_scene_la, legend = la_legend_la)
> > ```
> >
> > Figure 1: The [graph](https://morrison-lab.github.io/mcs/functions.html#def-graph) of $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}) = 3 \beta_{1} + 5 \beta_{2}^2$ (blue) and [its linear approximation](#def-linear-approximation-vector) at ${(1, 2)}^{\top}$ (vermilion), drawn as a function of the point ${(1, 2)}^{\top} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\delta}}\vphantom{\delta}}$. The two surfaces touch along the line $\beta_{2} = 2$.

> **NOTE:**
>
> *Remark 1* (The one-variable linear approximation is the case $p = 1$). For $p = 1$, the [gradient](#def-vector-derivative) of $f$ is its [derivative](calculus-derivatives.llms.md#def-derivative), so [Equation 1](#eq-linear-approximation-vector) is the one-variable [linear approximation](calculus-derivatives.llms.md#def-linear-approximation), with the step $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\delta}}\vphantom{\delta}}$ in place of $\varepsilon$.

> **NOTE:**
>
> **Definition 4 (Direction)** A **direction** in $\mathbb{R}^p$ is given by a nonzero vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} \in \mathbb{R}^p$: moving from a point $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ in the direction $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}$ means moving to the points $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ t \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}$ with $t > 0$. For any $c > 0$, $c \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}$ reaches the same points (with $t / c$ in place of $t$), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}$ and $c \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}$ give the same direction.

> **NOTE:**
>
> **Example 4 (Moving from** ${(2, -1)}^{\top}$ in the direction ${(1, 1)}^{\top}$) From $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(2, -1)}^{\top}$, moving in the direction $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} = {(1, 1)}^{\top}$ reaches the points $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ t \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} = {(2 + t,\ -1 + t)}^{\top}$ for $t > 0$, such as ${(3, 0)}^{\top}$ at $t = 1$. The vector ${(2, 2)}^{\top}$ gives the same direction: it reaches ${(3, 0)}^{\top}$ at $t = \tfrac{1}{2}$. The vector ${(-1, -1)}^{\top}$ gives the opposite direction, reaching points such as ${(1, -2)}^{\top}$.

> **NOTE:**
>
> **Definition 5 (Level set)** Let $f : \mathbb{R}^p \to \mathbb{R}$, and let $c$ be a [real number](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers). The **level set** [\[7\]](#ref-wikipedia_level_set) of $f$ at $c$ is the [preimage](https://morrison-lab.github.io/mcs/functions.html#def-preimage) of the single value $c$ under $f$:
>
> $${{{f}^{-1}\mathopen{}\left(\mathopen{}\left\{c\right\}\mathclose{}\right)\mathclose{}}} \stackrel{\text{def}}{=}{{f}^{-1}\mathopen{}\left(\mathopen{}\left\{c\right\}\mathclose{}\right)\mathclose{}}.$$

> **NOTE:**
>
> **Theorem 2 (A level set is the set of points where the function takes the value)** Let $f : \mathbb{R}^p \to \mathbb{R}$, and let $c$ be a [real number](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers). The [level set](#def-level-set) of $f$ at $c$ is the [set](https://morrison-lab.github.io/mcs/sets.html#def-set) of points where $f$ takes the value $c$:
>
> $${{{f}^{-1}\mathopen{}\left(\mathopen{}\left\{c\right\}\mathclose{}\right)\mathclose{}}} = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p : f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = c\right\}\mathclose{}.$$

> **NOTE:**
>
> *Proof*. Unfold the [preimage](https://morrison-lab.github.io/mcs/functions.html#def-preimage):
>
> $$\begin{aligned}
> {{{f}^{-1}\mathopen{}\left(\mathopen{}\left\{c\right\}\mathclose{}\right)\mathclose{}}}
> &= {{f}^{-1}\mathopen{}\left(\mathopen{}\left\{c\right\}\mathclose{}\right)\mathclose{}}
> && \text{(}\href{#def-level-set}{\text{Definition~5}}\text{)}
> \\
> &= \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p : f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \in \mathopen{}\left\{c\right\}\mathclose{}\right\}\mathclose{}
> && \text{(definition of the preimage)}
> \\
> &= \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p : f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = c\right\}\mathclose{}.
> && \text{(} \mathopen{}\left\{c\right\}\mathclose{} \text{ has the one element } c \text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 5 (Level sets of** $x_1^2 + x_2^2$) Let $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2$ for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(x_1, x_2)}^{\top}$. By [Theorem 2](#thm-level-set-points), each [level set](#def-level-set) of $f$ holds the points where $f$ takes that value:
>
> - The level set ${{{f}^{-1}\mathopen{}\left(\mathopen{}\left\{1\right\}\mathclose{}\right)\mathclose{}}}$ is the circle of radius $1$ around $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. For example, ${(0.6, 0.8)}^{\top}$ is on it, since $0.36 + 0.64 = 1$, and ${(1, 1)}^{\top}$ is not, since $1 + 1 = 2$.
> - The level set ${{{f}^{-1}\mathopen{}\left(\mathopen{}\left\{0\right\}\mathclose{}\right)\mathclose{}}}$ is the single point $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.
> - The level set ${{{f}^{-1}\mathopen{}\left(\mathopen{}\left\{-1\right\}\mathclose{}\right)\mathclose{}}}$ is empty, since $x_1^2 + x_2^2 \ge 0$.
>
> [Figure 2](#fig-level-set) draws the first two.
>
> > **NOTE:**
> >
> > Show code
> >
> > ``` downlit
> > ls_angle_ls <- seq(0, 2 * pi, length.out = 201)
> > ls_x1_ls <- cos(ls_angle_ls)
> > ls_x2_ls <- sin(ls_angle_ls)
> > ls_circle_ls <- tibble::tibble(x1 = ls_x1_ls, x2 = ls_x2_ls)
> > ls_origin_ls <- tibble::tibble(x1 = 0, x2 = 0)
> > ls_kinds_ls <- c("on the level set at 1", "not on it")
> > ls_points_x1_ls <- c(0.6, 1)
> > ls_points_x2_ls <- c(0.8, 1)
> > ls_points_ls <- tibble::tibble(
> >   x1 = ls_points_x1_ls,
> >   x2 = ls_points_x2_ls,
> >   kind = ls_kinds_ls
> > )
> > ls_points_aes_ls <- ggplot2::aes(shape = kind)
> > ls_shapes_ls <- c("on the level set at 1" = 16, "not on it" = 17)
> > ls_limits_ls <- c(-1.5, 1.5)
> > ls_circle_ls |>
> >   ggplot2::ggplot() +
> >   ggplot2::aes(x = x1, y = x2) +
> >   ggplot2::geom_path(colour = "#0072B2") +
> >   ggplot2::geom_point(data = ls_origin_ls, colour = "#0072B2", size = 2) +
> >   ggplot2::geom_point(
> >     data = ls_points_ls, mapping = ls_points_aes_ls,
> >     colour = "#D55E00", size = 3
> >   ) +
> >   ggplot2::scale_shape_manual(values = ls_shapes_ls) +
> >   ggplot2::coord_equal(xlim = ls_limits_ls, ylim = ls_limits_ls) +
> >   ggplot2::labs(shape = NULL) +
> >   ggplot2::theme_minimal() +
> >   ggplot2::theme(legend.position = "bottom")
> > ```
> >
> > [![The plane with axes x1 and x2 from -1.5 to 1.5. A blue circle of radius 1 around the origin is the level set at 1, and a blue point at the origin is the level set at 0. A vermilion circle marks the point (0.6, 0.8), which lies on the circle, and a vermilion triangle marks the point (1, 1), which lies outside it.](vector-calculus-gradients_files/figure-html/level-set-r-1.png)](vector-calculus-gradients_files/figure-html/level-set-r-1.png "Figure 2: The level sets {{{f}^{-1}\mathopen{}\left(\mathopen{}\left\{1\right\}\mathclose{}\right)\mathclose{}}} (blue circle) and {{{f}^{-1}\mathopen{}\left(\mathopen{}\left\{0\right\}\mathclose{}\right)\mathclose{}}} (blue point at \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) of f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2, with the points {(0.6, 0.8)}^{\top} (circle) and {(1, 1)}^{\top} (triangle).")
> >
> > Figure 2: The [level sets](#def-level-set) ${{{f}^{-1}\mathopen{}\left(\mathopen{}\left\{1\right\}\mathclose{}\right)\mathclose{}}}$ (blue circle) and ${{{f}^{-1}\mathopen{}\left(\mathopen{}\left\{0\right\}\mathclose{}\right)\mathclose{}}}$ (blue point at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$) of $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2$, with the points ${(0.6, 0.8)}^{\top}$ (circle) and ${(1, 1)}^{\top}$ (triangle).

> **NOTE:**
>
> *Remark 2* (Level sets in the plane). For $p = 2$, a [level set](#def-level-set) is often a curve in the plane, such as the circle ${{{f}^{-1}\mathopen{}\left(\mathopen{}\left\{1\right\}\mathclose{}\right)\mathclose{}}}$ in [Example 5](#exm-level-set).

> **NOTE:**
>
> **Definition 6 (Level curve)** Let $f : \mathbb{R}^2 \to \mathbb{R}$ and let $c$ be a [real number](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers). The **level curve** of $f$ at $c$ is the [level set](#def-level-set) of $f$ at $c$ when it is a curve in the plane. It is the special case $p = 2$ of a level set. A [contour line](algebra-exponentials.llms.md#def-contour-line) is a level curve drawn on a plot of $f$.

> **NOTE:**
>
> **Example 6 (A level curve of** $x_1^2 + x_2^2$) Let $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2$ for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(x_1, x_2)}^{\top}$. The level curve at $4$ is the circle of radius $2$ around $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Theorem 3 (Level sets of a linear function)** Let ${h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + \beta_{0}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Every [level set](#def-level-set) ${{{h}^{-1}\mathopen{}\left(\mathopen{}\left\{c\right\}\mathclose{}\right)\mathclose{}}}$ is a [hyperplane](linear-algebra-linear-maps.llms.md#def-hyperplane) with [normal vector](linear-algebra-linear-maps.llms.md#def-normal-vector) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$, parallel to the level set ${{{h}^{-1}\mathopen{}\left(\mathopen{}\left\{0\right\}\mathclose{}\right)\mathclose{}}}$. Its [dimension](linear-algebra-bases.llms.md#def-dimension) is $p - 1$: a point for $p = 1$, a line for $p = 2$, and a two-dimensional plane for $p = 3$.

> **NOTE:**
>
> *Proof*. For any $c$,
>
> $$\begin{aligned}
> {{{h}^{-1}\mathopen{}\left(\mathopen{}\left\{c\right\}\mathclose{}\right)\mathclose{}}}
> &= {\mathopen{}\left\{ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}: \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + \beta_{0}= c \right\}\mathclose{}} \\
> &= {\mathopen{}\left\{ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}: \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + (\beta_{0}- c) = 0 \right\}\mathclose{}}.
> \end{aligned}$$
>
> This is the [hyperplane](linear-algebra-linear-maps.llms.md#def-hyperplane) with [normal vector](linear-algebra-linear-maps.llms.md#def-normal-vector) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ and [offset](linear-algebra-linear-maps.llms.md#def-affine-offset) $\beta_{0}- c$. Changing $c$ changes only the offset, so the [level sets](#def-level-set) share the normal vector and are parallel. A hyperplane in $\mathbb{R}^p$ has [dimension](linear-algebra-bases.llms.md#def-dimension) $p - 1$ by [the hyperplane theorem](linear-algebra-affine-subspaces.llms.md#thm-hyperplane-subspace), which gives the point, line and plane cases for $p = 1, 2, 3$.

> **NOTE:**
>
> **Example 7 (Parallel level lines)** Let ${h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}} = 2x_1 + x_2 + 1$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(2, 1)}^{\top}$ and $\beta_{0}= 1$. The [level set](#def-level-set) at $c$ is the line $x_2 = c - 1 - 2x_1$. For $c = -1, 0, 1$ the lines are $x_2 = -2 - 2x_1$, $x_2 = -1 - 2x_1$ and $x_2 = -2x_1$. They all have [slope](algebra-polynomials.llms.md#def-slope) $-2$ and differ only in the [intercept](algebra-polynomials.llms.md#def-intercept), so they are parallel.

> **NOTE:**
>
> **Theorem 4 (Stepping along the normal vector)** Let ${h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + \beta_{0}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. For every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$ and $t \in \mathbb{R}$,
>
> $${h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ t\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right)\mathclose{}} = {h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}} + t{\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{}}^2.$$
>
> So a step along $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ with $t > 0$ increases $h$.

> **NOTE:**
>
> *Proof*. By linearity of the [dot product](linear-algebra-vectors.llms.md#def-dot-product),
>
> $$\begin{aligned}
> {h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ t\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right)\mathclose{}}
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ t\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} + \beta_{0}\\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + t\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} + \beta_{0}\\
> &= {h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}} + t{\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{}}^2.
> \end{aligned}$$

> **NOTE:**
>
> **Example 8 (A step along the normal vector)** Let ${h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}} = 2x_1 + x_2 + 1$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(2, 1)}^{\top}$ and ${\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{}}^2 = 5$. At $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, ${h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right)\mathclose{}} = 1$. A step of $t = 1$ along $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ lands at ${(2, 1)}^{\top}$, where ${h\mathopen{}\left({(2, 1)}^{\top}\right)\mathclose{}} = 4 + 1 + 1 = 6 = 1 + 5$.

> **NOTE:**
>
> **Theorem 5 (The normal vector is the steepest direction)** Let ${h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + \beta_{0}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Among [unit vectors](linear-algebra-vectors.llms.md#def-unit-vector) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ ($\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right\rVert\mathclose{} = 1$), the change ${h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ t\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right)\mathclose{}} - {h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}}$ with $t > 0$ is largest for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}/ \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{}$.

> **NOTE:**
>
> *Proof*. For a [unit vector](linear-algebra-vectors.llms.md#def-unit-vector) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$,
>
> $${h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ t\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right)\mathclose{}} - {h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}} = t\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}.$$
>
> Since $t > 0$, maximizing this change is the same as maximizing $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$. By the [Cauchy-Schwarz inequality](linear-algebra-inner-products.llms.md#thm-cauchy-schwarz), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \le \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{}\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right\rVert\mathclose{} = \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{}$. Equality holds exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}= \alpha\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ for some $\alpha > 0$. The condition $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right\rVert\mathclose{} = 1$ then forces $\alpha\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{} = 1$, so
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}/ \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{}.$$

> **NOTE:**
>
> **Example 9 (Two unit steps compared)** Let ${h\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}} = 2x_1 + x_2 + 1$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}= {(2, 1)}^{\top}$ and $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{} = \sqrt{5}$. A step of size $1$ along the [unit vector](linear-algebra-vectors.llms.md#def-unit-vector) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}/ \sqrt{5}$ raises $h$ by $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} / \sqrt{5} = \sqrt{5} \approx 2.24$. A step of size $1$ along ${(1, 0)}^{\top}$ raises it by only $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}} \cdot {(1, 0)}^{\top} = 2$.

Show code

``` js
gradFns = ({
  "3 w1 w2 + w2^3 - 5 w1": {
    f: (a, b) => 3 * a * b + b ** 3 - 5 * a,
    grad: (a, b) => [3 * b - 5, 3 * a + 3 * b * b]
  },
  "w1^2 + 4 w2^2": {
    f: (a, b) => a * a + 4 * b * b,
    grad: (a, b) => [2 * a, 8 * b]
  }
})
gradDeg = (rad) => ((rad * 180 / Math.PI) % 360 + 360) % 360
// The chosen function, and its gradient at the chosen point.
gradF = gradFns[gradWhich].f
gradG = gradFns[gradWhich].grad(gradW1, gradW2)
gradLen = Math.hypot(...gradG)
gradPhi = gradDeg(Math.atan2(gradG[1], gradG[0]))
// The rate f changes at, per unit step in direction deg: the gradient dotted with that direction.
gradRate = (deg) => gradG[0] * Math.cos(deg * Math.PI / 180) + gradG[1] * Math.sin(deg * Math.PI / 180)
```

Turn the blue arrow in [Figure 3](#fig-gradient-explorer) and watch the rate: it is largest along the red arrow, zero along the black level curve ([Definition 5](#def-level-set)), and most negative pointing straight back. Then look for a point where the red arrow shrinks to nothing.

> **NOTE:**
>
> Show code
>
> ``` js
> viewof gradWhich = Inputs.radio(Object.keys(gradFns), {value: "3 w1 w2 + w2^3 - 5 w1", label: "f(w) ="})
> viewof gradW1 = Inputs.range([-3, 3], {value: 2, step: 0.05, label: "w1"})
> viewof gradW2 = Inputs.range([-3, 3], {value: -1, step: 0.05, label: "w2"})
> viewof gradTheta = Inputs.range([0, 359], {value: 0, step: 1, label: "step direction (degrees)"})
> ```
>
> Show code
>
> ``` js
> {
>   const f2 = (v) => v.toFixed(2);
>   const deg = "\u00b0";
>   return md`f(w) = ${f2(gradF(gradW1, gradW2))};
> gradient (${f2(gradG[0])}, ${f2(gradG[1])}), length ${f2(gradLen)}, at ${gradPhi.toFixed(0)}${deg}.
> Along the blue arrow, f changes at rate ${f2(gradRate(gradTheta))} per unit step,
> ${(gradRate(gradTheta) / (gradLen || 1) * 100).toFixed(0)}% of the steepest rate.`;
> }
> ```
>
> Show code
>
> ``` js
> {
>   const u = [Math.cos(gradTheta * Math.PI / 180), Math.sin(gradTheta * Math.PI / 180)];
>   const g = gradLen > 1e-9 ? gradG.map((v) => v / gradLen) : [0, 0];
>   return Plot.plot({
>     ariaLabel: 'Contour map of f over w1 and w2, ' +
>       'with the chosen point, ' +
>       'the level curve through it drawn in black, ' +
>       'a red arrow along the gradient and a blue arrow in the chosen step direction.',
>     width: 310, height: 310, marginLeft: 40,
>     x: {domain: [-3, 3], label: "w1"},
>     y: {domain: [-3, 3], label: "w2"},
>     color: {scheme: "YlGnBu", legend: true, label: "f(w)"},
>     marks: [
>       Plot.contour({x1: -3, y1: -3, x2: 3, y2: 3, fill: gradF, thresholds: 20,
>                     stroke: "#fff", strokeOpacity: 0.4}),
>       // Sampled past the edges and clipped, so the border is not drawn as part of the curve.
>       Plot.contour({x1: -3.5, y1: -3.5, x2: 3.5, y2: 3.5, value: gradF, clip: true,
>                     thresholds: [gradF(gradW1, gradW2)], stroke: "#222", strokeWidth: 2}),
>       Plot.arrow([0], {x1: gradW1, y1: gradW2, x2: gradW1 + u[0], y2: gradW2 + u[1],
>                        stroke: "#1f77b4", strokeWidth: 2.5, clip: true}),
>       Plot.arrow([0], {x1: gradW1, y1: gradW2, x2: gradW1 + g[0], y2: gradW2 + g[1],
>                        stroke: "#d62728", strokeWidth: 3, clip: true}),
>       Plot.dot([0], {x: gradW1, y: gradW2, r: 5, fill: "#222"})
>     ]
>   });
> }
> ```
>
> Show code
>
> ``` js
> Plot.plot({
>   ariaLabel: 'The rate at which f changes when stepping from the chosen point, ' +
>     'plotted against the step direction in degrees: ' +
>     'a cosine wave whose peak is at the gradient direction and whose zeros are a quarter turn either side of it.',
>   width: 300, height: 220, grid: true,
>   x: {domain: [0, 360], label: "step direction (degrees)", ticks: d3.range(0, 361, 90)},
>   y: {label: "rate of change of f"},
>   marks: [
>     Plot.ruleY([0], {stroke: "#888"}),
>     Plot.ruleX([gradPhi], {stroke: "#d62728", strokeDasharray: "4,3"}),
>     Plot.line(d3.range(0, 360.1, 2), {x: (d) => d, y: gradRate, stroke: "#555"}),
>     Plot.dot([gradTheta], {x: (d) => d, y: gradRate, r: 5, fill: "#1f77b4"})
>   ]
> })
> ```
>
> Figure 3: A gradient explorer: the red arrow points along the gradient at the chosen point, and the blue arrow along the chosen step direction ([Definition 4](#def-direction)).

> **NOTE:**
>
> Show code
>
> ``` js
> viewof gradTurn = Inputs.range([0, 360], {value: 30, step: 5, label: "turn the view"})
> ```
>
> Show code
>
> ``` js
> // The graph z = f(w1, w2) of the function chosen in @fig-gradient-explorer, drawn in 3-D:
> // turn the square about the vertical axis, then look down on it from 30 degrees.
> {
>   const n = 41, lim = 3, w = 380, h = 320, s = 36, elev = 30 * Math.PI / 180;
>   const turn = gradTurn * Math.PI / 180;
>   const grid = d3.range(n).map((i) => d3.range(n).map((j) => {
>     const a = -lim + 2 * lim * i / (n - 1);
>     const b = -lim + 2 * lim * j / (n - 1);
>     return gradF(a, b);
>   }));
>   const top = d3.max(grid.flat().map(Math.abs)) || 1;
>   const sz = 2.5 / top;
>   const at = (a, b, z) => {
>     const u = a * Math.cos(turn) - b * Math.sin(turn);
>     const v = a * Math.sin(turn) + b * Math.cos(turn);
>     return [w / 2 + s * u, h / 2 - s * Math.sin(elev) * v - s * Math.cos(elev) * z * sz];
>   };
>   const path = (pts) => d3.line()(pts.map(([a, b, z]) => at(a, b, z)));
>   const svg = d3.create("svg").attr("width", w).attr("height", h)
>     .attr("role", "img")
>     .attr("aria-label", "The graph of the chosen function drawn in three dimensions over a square of inputs, " +
>       "with the chosen point lifted onto the surface, " +
>       "the level curve through it at constant height, " +
>       "a red arrow along the gradient and a blue arrow in the chosen step direction, " +
>       "each rising at its rate of change.");
>   const ticks = d3.range(-lim, lim + 0.01, 1);
>   const fill = "none";
>   for (const t of ticks) {
>     svg.append("path").attr("d", path(d3.range(n).map((j) => [t, -lim + 2 * lim * j / (n - 1), gradF(t, -lim + 2 * lim * j / (n - 1))])))
>       .attr("stroke", "#1f77b4").attr("stroke-opacity", 0.45).attr("fill", fill);
>     svg.append("path").attr("d", path(d3.range(n).map((i) => [-lim + 2 * lim * i / (n - 1), t, gradF(-lim + 2 * lim * i / (n - 1), t)])))
>       .attr("stroke", "#1f77b4").attr("stroke-opacity", 0.45).attr("fill", fill);
>   }
>   // The level curve through the chosen point, at the point's height.
>   const fv = gradF(gradW1, gradW2);
>   const flat = d3.range(n * n).map((k) => grid[k % n][Math.floor(k / n)]);
>   const level = d3.contours().size([n, n]).thresholds([fv])(flat)[0];
>   for (const polygon of level.coordinates) {
>     for (const ring of polygon) {
>       const pts = ring.map(([i, j]) => [-lim + 2 * lim * i / (n - 1), -lim + 2 * lim * j / (n - 1), fv]);
>       svg.append("path").attr("d", path(pts)).attr("stroke", "#222").attr("stroke-width", 2).attr("fill", fill);
>     }
>   }
>   // Arrows from the point: one unit step in the plane, rising by the rate of change along it.
>   const u = [Math.cos(gradTheta * Math.PI / 180), Math.sin(gradTheta * Math.PI / 180)];
>   const g = gradLen > 1e-9 ? gradG.map((v) => v / gradLen) : [0, 0];
>   const arrow = (dir, rise, color) => {
>     svg.append("path")
>       .attr("d", path([[gradW1, gradW2, fv], [gradW1 + dir[0], gradW2 + dir[1], fv + rise]]))
>       .attr("stroke", color).attr("stroke-width", 3).attr("fill", fill);
>     const [x, y] = at(gradW1 + dir[0], gradW2 + dir[1], fv + rise);
>     svg.append("circle").attr("cx", x).attr("cy", y).attr("r", 3.5).attr("fill", color);
>   };
>   arrow(u, gradRate(gradTheta), "#1f77b4");
>   arrow(g, gradLen, "#d62728");
>   const [px, py] = at(gradW1, gradW2, fv);
>   svg.append("circle").attr("cx", px).attr("cy", py).attr("r", 5).attr("fill", "#222");
>   return svg.node();
> }
> ```
>
> Figure 4: The [graph](https://morrison-lab.github.io/mcs/functions.html#def-graph) of the [function](https://morrison-lab.github.io/mcs/functions.html#def-function) in the [gradient explorer](#fig-gradient-explorer), with the same point, [level curve](#def-level-set) and arrows. Each arrow takes one unit step in the plane, and its height gain is the amount $f$ changes along that step.

> **NOTE:**
>
> **Exercise 5 (Take a gradient by hand)** Let $f : \mathbb{R}^2 \to \mathbb{R}$ be
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}) = 3 w_1 w_2 + w_2^3 - 5 w_1$$
>
> 1.  Compute $\partial f / \partial w_1$ ([Definition 1](#def-partial-derivative)), treating $w_2$ as a constant.
> 2.  Compute $\partial f / \partial w_2$, treating $w_1$ as a constant.
> 3.  Assemble $\nabla_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}} f$ and evaluate it at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \begin{bmatrix} 2 & -1 \end{bmatrix}^{\top}$.
> 4.  Check the shape of your answer against [Table 1](#tbl-gradient-shape).

> **NOTE:**
>
> *Solution 5*. **1.** Differentiate with respect to $w_1$, holding $w_2$ fixed. The first term is the constant $3w_2$ times $w_1$, so it contributes $3w_2$. The second term has no $w_1$ in it, so it contributes $0$. The third term is $-5$ times $w_1$, so it contributes $-5$:
>
> $$\begin{aligned}
> \frac{\partial f}{\partial w_1}
> &= 3w_2 + 0 - 5 \\
> &= 3w_2 - 5
> \end{aligned}$$
>
> **2.** Now with respect to $w_2$, holding $w_1$ fixed. The first term is the constant $3w_1$ times $w_2$, contributing $3w_1$. The second term contributes $3w_2^2$. The third has no $w_2$ in it, contributing $0$:
>
> $$\begin{aligned}
> \frac{\partial f}{\partial w_2}
> &= 3w_1 + 3w_2^2 + 0 \\
> &= 3w_1 + 3w_2^2
> \end{aligned}$$
>
> **3.** Stack the two, in the order the coordinates are numbered:
>
> $$\nabla_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}) = \begin{bmatrix} 3w_2 - 5 \\ 3w_1 + 3w_2^2 \end{bmatrix}$$
>
> The gradient is a vector-valued *function* of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$, not a single vector. At $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \begin{bmatrix} 2 & -1 \end{bmatrix}^{\top}$,
>
> $$\begin{aligned}
> \nabla_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}} f
> &= \begin{bmatrix} 3(-1) - 5 \\ 3(2) + 3(-1)^2 \end{bmatrix} \\
> &= \begin{bmatrix} -3 - 5 \\ 6 + 3 \end{bmatrix} \\
> &= \begin{bmatrix} -8 \\ 9 \end{bmatrix}
> \end{aligned}$$
>
> **4.** The input was a vector in $\mathbb{R}^2$ and so is the answer, as [Table 1](#tbl-gradient-shape) requires. Note the signs: from this point, increasing $w_1$ *decreases* $f$ while increasing $w_2$ increases it, so the uphill direction is neither axis.

# Definitions on this page

- [Definition 1 (Partial derivative)](#def-partial-derivative)
- [Definition 2 (Vector derivative, gradient)](#def-vector-derivative)
- [Definition 3 (Linear approximation of a function of a vector, first-order Taylor approximation of a function of a vector)](#def-linear-approximation-vector)
- [Definition 4 (Direction)](#def-direction)
- [Definition 5 (Level set)](#def-level-set)
- [Definition 6 (Level curve)](#def-level-curve)

Back to top

## References

\[1\]

N. Fieller, *Basics of matrix algebra for statistics with R*. Chapman and Hall/CRC, 2016. doi: [10.1201/9781315370200](https://doi.org/10.1201/9781315370200).

\[2\]

Wikipedia contributors, “Partial derivative — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Partial_derivative>

\[3\]

S. J. Miller, *The probability lifesaver: Calculus review problems*. 2016. Available: <https://web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/index.htm#:~:text=http%3A//web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/supplementalchap_calcreview.pdf>

\[4\]

Wikipedia contributors, “Gradient — Wikipedia, the free encyclopedia.” Available: <https://en.wikipedia.org/wiki/Gradient>

\[5\]

B. Hutchinson, “DATA 471/571 (machine learning) and CSCI 481/581 (deep learning) video lectures.” Western Washington University. Accessed: Sep. 28, 2026. \[Online\]. Available: <https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/>

\[6\]

Wikipedia contributors, “Linear approximation — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Linear_approximation>

\[7\]

Wikipedia contributors, “Level set — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Level_set>
