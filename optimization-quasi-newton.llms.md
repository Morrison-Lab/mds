# Quasi-Newton Methods

Code

Published

Last modified: 2026-10-30 02:22:19 (PDT)

## 0.1 Quasi-Newton methods

> **NOTE:**
>
> This section is adapted from the quasi-Newton lecture of Zhou [\[1\]](#ref-zhou2025quasinewton), used under the MIT License. The license text is:
>
> > Copyright (c) 2025 ucla-biostat-257
> >
> > Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
> >
> > The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
> >
> > THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
>
> From the source, this section takes the order of ideas: the cost of Newton’s method, the secant condition, and the BFGS and limited-memory BFGS updates. The source states the updates as solutions of nearest-matrix problems without proof; here the BFGS update is written out. The Davidon-Fletcher-Powell and rank-1 updates, the nearest-matrix derivation, the history, and the Julia code are not part of this section.

> **NOTE:**
>
> **Definition 1 (Secant condition)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first [partial derivatives](vector-calculus.llms.md#def-partial-derivative), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+ \in \mathbb{R}^p\\. Write \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+ - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ for the step and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\stackrel{\text{def}}{=}\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+) - \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ for the change in the [gradient](vector-calculus.llms.md#def-vector-derivative). A [symmetric matrix](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) \\\mathbf{B}\\ satisfies the **secant condition** [\[2, Ch. 6\]](#ref-nocedal2006numerical) for \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\ when
>
> \\ \mathbf{B} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}. \\

> **NOTE:**
>
> **Example 1 (The Hessian of a quadratic function satisfies the secant condition)** Let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ with \\\mathbf{Q}\\ [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix). Then \\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, so for any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+\\
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} &= (\mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+ - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) - (\mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) && \text{(gradient at each point)} \\ &= \mathbf{Q} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+ - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) && \text{(collect terms)} \\ &= \mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}. && \text{(definition of } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} \text{)} \end{aligned} \\
>
> So the Hessian \\\mathbf{Q}\\ of the [quadratic function](algebra-exponentials.llms.md#def-quadratic-polynomial) satisfies the secant condition for every step. For a general \\f\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\approx \mathbf{H}\_f \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}\\ holds for a short step, with \\\mathbf{H}\_f\\ the Hessian of \\f\\ near the step, which is why a [matrix](linear-algebra-matrices.llms.md#def-matrix) that satisfies the secant condition is a reasonable stand-in for the Hessian.

> **NOTE:**
>
> **Definition 2 (Quasi-Newton method)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first [partial derivatives](vector-calculus.llms.md#def-partial-derivative), let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}\\ be a starting point, and let \\\mathbf{H}^{(0)}\\ be a [positive definite matrix](linear-algebra-special-matrices.llms.md#def-positive-definite). A **quasi-Newton method** [\[2, Ch. 6\]](#ref-nocedal2006numerical) produces, for \\t = 0, 1, 2, \ldots\\,
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} - \alpha^{(t)} \mathbf{H}^{(t)} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}), \\
>
> where \\\alpha^{(t)} \> 0\\ is a [step length](optimization-gradient-descent.llms.md#def-gradient-descent) chosen by a [line search](optimization-gradient-descent.llms.md#def-line-search), and \\\mathbf{H}^{(t+1)}\\ is a [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) positive definite matrix whose [inverse](linear-algebra-special-matrices.llms.md#def-matrix-inverse) satisfies the [secant condition](#def-secant-condition), that is, \\\mathbf{H}^{(t+1)} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}^{(t)} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}^{(t)}\\, with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}^{(t)} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}^{(t)} = \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)}) - \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)})\\.

> **NOTE:**
>
> **Example 2 (One quasi-Newton step on a quadratic function)** Take \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ with \\\mathbf{Q} = \begin{bmatrix} 4 & 1 \\ 1 & 3 \end{bmatrix}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = {(1, 2)}^{\top}\\ ([Example 1](#exm-secant-condition)), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ and \\\mathbf{H}^{(0)} = \mathbf{I}\_2\\. For a [quadratic function](algebra-exponentials.llms.md#def-quadratic-polynomial), the [step length](optimization-gradient-descent.llms.md#def-gradient-descent) that minimizes \\f\\ along a [direction](vector-calculus.llms.md#def-direction) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}\\ is \\\alpha = -\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} / {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}\\.
>
> ``` downlit
> Q <- matrix(c(4, 1, 1, 3), nrow = 2)
> b <- c(1, 2)
> f <- function(x) 0.5 * sum(x * (Q %*% x)) - sum(b * x)
> grad <- function(x) drop(Q %*% x - b)
> x0 <- c(0, 0)
> H0 <- diag(2)
> d <- -drop(H0 %*% grad(x0))
> step <- -sum(grad(x0) * d) / drop(t(d) %*% Q %*% d)
> x1 <- x0 + step * d
> s <- x1 - x0
> y <- grad(x1) - grad(x0)
> ```
>
> The step length is 0.25, which moves the [iterate](optimization-newton.llms.md#def-iterate) to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)} = (0.25, 0.5)\\ and lowers \\f\\ from 0 to -0.625. The difference of the [gradients](vector-calculus.llms.md#def-vector-derivative), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}^{(0)} = (1.5, 1.75)\\, is \\\mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}^{(0)}\\ ([the secant condition](#def-secant-condition) for a quadratic function).

> **NOTE:**
>
> *Remark 1* (Why a quasi-Newton method is used). Because \\\mathbf{H}^{(t)}\\ is [positive definite](linear-algebra-special-matrices.llms.md#def-positive-definite), \\-\mathbf{H}^{(t)} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)})\\ is a [descent direction](optimization-gradient-descent.llms.md#def-descent-direction), so, when the [gradient](vector-calculus.llms.md#def-vector-derivative) is not \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, a [line search](optimization-gradient-descent.llms.md#def-line-search) finds a step that decreases \\f\\. [Newton’s method](optimization-newton.llms.md#def-newton-method) needs the Hessian and the solution of a system of equations at every iteration, which costs about \\p^3\\ operations for a dense \\p \times p\\ Hessian, and requires the formulas for its entries. A quasi-Newton method needs only the [gradient](vector-calculus.llms.md#def-vector-derivative) and an update of \\\mathbf{H}^{(t)}\\ costing about \\p^2\\ operations. Near a minimizer the method speeds up superlinearly: faster than [gradient descent](optimization-gradient-descent.llms.md#def-gradient-descent), slower than Newton’s method [\[2, Ch. 6\]](#ref-nocedal2006numerical). Replacing \\\mathbf{H}^{(t)}\\ by \\\mathbf{I}\_p\\ in the step formula gives [gradient descent](optimization-gradient-descent.llms.md#def-gradient-descent).

> **NOTE:**
>
> **Definition 3 (BFGS update (Broyden-Fletcher-Goldfarb-Shanno))** Let \\\mathbf{H}\\, an approximation of the [inverse](linear-algebra-special-matrices.llms.md#def-matrix-inverse) Hessian, be a \\p \times p\\ [positive definite matrix](linear-algebra-special-matrices.llms.md#def-positive-definite), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\ satisfy \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} \> 0\\. With \\\rho \stackrel{\text{def}}{=}1 / \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}\\, the **BFGS update** [\[2, Ch. 6\]](#ref-nocedal2006numerical) of \\\mathbf{H}\\ is
>
> \\ \mathbf{H}^+ \stackrel{\text{def}}{=}\mathopen{}\left(\mathbf{I}\_p - \rho \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\top}\right)\mathclose{} \mathbf{H} \mathopen{}\left(\mathbf{I}\_p - \rho \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}}^{\top}\right)\mathclose{} + \rho \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}}^{\top}. \\

> **NOTE:**
>
> **Example 3 (A BFGS update from the quasi-Newton step)** Continue [Example 2](#exm-quasi-newton-step) with \\\mathbf{H} = \mathbf{I}\_2\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}^{(0)}\\, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}^{(0)}\\.
>
> ``` downlit
> rho <- 1 / sum(y * s)
> left <- diag(2) - rho * s %*% t(y)
> H1 <- left %*% H0 %*% t(left) + rho * s %*% t(s)
> H1
> #>         [,1]   [,2]
> #> [1,]  0.6625 -0.425
> #> [2,] -0.4250  0.650
> drop(H1 %*% y)
> #> [1] 0.25 0.50
> ```
>
> Here \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} = 1.25 \> 0\\, so \\\rho = 0.8\\. The updated [matrix](linear-algebra-matrices.llms.md#def-matrix) satisfies \\\mathbf{H}^+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= (0.25, 0.5)\\, which is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} = (0.25, 0.5)\\, and its smallest [eigenvalue](linear-algebra-special-matrices.llms.md#def-eigenvalue) is 0.231204, so \\\mathbf{H}^+\\ is [positive definite](linear-algebra-special-matrices.llms.md#def-positive-definite).

> **NOTE:**
>
> *Remark 2* (The curvature condition \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} \> 0\\). If the [strict inequality](algebra-basics.llms.md#def-strict-inequality) of [Theorem 4 in Convexity in Several Variables](optimization-convexity.llms.md#thm-convex-first-order) holds for distinct points, then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} \> 0\\ for \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+ - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+) - \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\. Add the versions at \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ and at \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+)\\:
>
> \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+) + f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \> f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+) + \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} - \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+) \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}, \\
>
> so \\0 \> -\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}\\. For a general \\f\\, a [line search](optimization-gradient-descent.llms.md#def-line-search) that enforces a curvature condition on the [step length](optimization-gradient-descent.llms.md#def-gradient-descent) (the Wolfe conditions [\[2, Ch. 3\]](#ref-nocedal2006numerical)) guarantees \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} \> 0\\. Such a step can be found along a [descent direction](optimization-gradient-descent.llms.md#def-descent-direction) when \\f\\ cannot keep decreasing forever.

> **NOTE:**
>
> **Definition 4 (Limited-memory BFGS (L-BFGS))** **Limited-memory BFGS** (**L-BFGS**) [\[2, Ch. 7\]](#ref-nocedal2006numerical) is the [quasi-Newton method](#def-quasi-newton-method) that never forms \\\mathbf{H}^{(t)}\\. It stores only the \\m\\ most recent pairs \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}^{(j)}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}^{(j)})\\, with \\m\\ small, such as \\5\\ or \\20\\, and obtains \\\mathbf{H}^{(t)} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)})\\ implicitly, through a few vector operations, as if the [BFGS update](#def-bfgs-update) for those \\m\\ pairs were applied to a simple starting [matrix](linear-algebra-matrices.llms.md#def-matrix), such as a multiple of \\\mathbf{I}\_p\\.

> **NOTE:**
>
> **Example 4 (L-BFGS applies the update without forming the matrix)** Continue [Example 3](#exm-bfgs-step) with \\m = 1\\ stored pair \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}^{(0)}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}^{(0)})\\ and starting [matrix](linear-algebra-matrices.llms.md#def-matrix) \\\mathbf{I}\_2\\. Below, \\\mathbf{H}^+ \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)})\\ is formed from vectors alone, starting from `H0`, then compared with the [matrix product](linear-algebra-matrices.llms.md#def-matrix-mult).
>
> ``` downlit
> g1 <- grad(x1)
> alpha <- rho * sum(s * g1)
> q <- g1 - alpha * y
> r <- drop(H0 %*% q)
> beta <- rho * sum(y * r)
> r <- r + s * (alpha - beta)
> rbind(from_vectors = r, from_matrix = drop(H1 %*% g1))
> #>                [,1]   [,2]
> #> from_vectors 0.4375 -0.375
> #> from_matrix  0.4375 -0.375
> ```
>
> The two rows agree to within 5.6e-17, although the first never forms the matrix. BFGS stores a dense \\p \times p\\ matrix and spends about \\p^2\\ operations per iteration; L-BFGS stores \\2m\\ vectors with \\p\\ entries and spends about \\m p\\ operations per iteration, so it remains usable when \\p\\ is in the millions.

# Definitions on this page

- [Definition 1 (Secant condition)](#def-secant-condition)
- [Definition 2 (Quasi-Newton method)](#def-quasi-newton-method)
- [Definition 3 (BFGS update (Broyden-Fletcher-Goldfarb-Shanno))](#def-bfgs-update)
- [Definition 4 (Limited-memory BFGS (L-BFGS))](#def-lbfgs)

Back to top

## References

\[1\]

H. Zhou, “Quasi-Newton methods.” Lecture notes for Biostat 257, Statistical Computing, University of California, Los Angeles, 2025. Accessed: Oct. 26, 2026. \[Online\]. Available: <https://ucla-biostat-257.github.io/2025spring/slides/24-quasinewton/quasinewton.html>

\[2\]

J. Nocedal and S. J. Wright, *Numerical optimization*, 2nd ed. in Springer series in operations research and financial engineering. Springer, 2006. doi: [10.1007/978-0-387-40065-5](https://doi.org/10.1007/978-0-387-40065-5).
