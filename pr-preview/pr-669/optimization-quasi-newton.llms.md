# Quasi-Newton Methods

Code

Published

Last modified: 2026-11-05 19:11:58 (PST)

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
> **Definition 1 (Secant condition)** Let $f : \mathbb{R}^p \to \mathbb{R}$ have first [partial derivatives](vector-calculus.llms.md#def-partial-derivative), and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+ \in \mathbb{R}^p$. Write $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} \stackrel{\text{def}}{=}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+ - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for the step and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\stackrel{\text{def}}{=}\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+) - \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$ for the change in the [gradient](vector-calculus.llms.md#def-vector-derivative). A [symmetric matrix](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) $\mathbf{B}$ satisfies the **secant condition** [\[2, Ch. 6\]](#ref-nocedal2006numerical) for $(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})$ when
>
> $$\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}.$$

> **NOTE:**
>
> **Example 1 (The Hessian of a quadratic function satisfies the secant condition)** Let $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \tfrac{1}{2} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{Q} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with $\mathbf{Q}$ [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix). Then $\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{Q} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, so for any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+$
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> &= (\mathbf{Q} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+ - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}) - (\mathbf{Q} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}})
> && \text{(gradient at each point)}
> \\
> &= \mathbf{Q} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+ - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(collect terms)}
> \\
> &= \mathbf{Q} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}.
> && \text{(definition of } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} \text{)}
> \end{aligned}$$
>
> So the Hessian $\mathbf{Q}$ of the [quadratic function](algebra-exponentials.llms.md#def-quadratic-polynomial) satisfies the secant condition for every step. For a general $f$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\approx \mathbf{H}_f \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}$ holds for a short step, with $\mathbf{H}_f$ the Hessian of $f$ near the step, which is why a [matrix](linear-algebra-matrices.llms.md#def-matrix) that satisfies the secant condition is a reasonable stand-in for the Hessian.

> **NOTE:**
>
> **Definition 2 (Quasi-Newton method)** Let $f : \mathbb{R}^p \to \mathbb{R}$ have first [partial derivatives](vector-calculus.llms.md#def-partial-derivative), let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(0)}$ be a starting point, and let $\mathbf{H}^{(0)}$ be a [positive definite matrix](linear-algebra-special-matrices.llms.md#def-positive-definite). A **quasi-Newton method** [\[2, Ch. 6\]](#ref-nocedal2006numerical) produces, for $t = 0, 1, 2, \ldots$,
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(t+1)} \stackrel{\text{def}}{=}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(t)} - \alpha^{(t)} \mathbf{H}^{(t)} \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(t)}),$$
>
> where $\alpha^{(t)} > 0$ is a [step length](optimization-gradient-descent.llms.md#def-gradient-descent) chosen by a [line search](optimization-gradient-descent.llms.md#def-line-search), and $\mathbf{H}^{(t+1)}$ is a [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) positive definite matrix whose [inverse](linear-algebra-special-matrices.llms.md#def-matrix-inverse) satisfies the [secant condition](#def-secant-condition), that is, $\mathbf{H}^{(t+1)} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}^{(t)} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}^{(t)}$, with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}^{(t)} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(t+1)} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(t)}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}^{(t)} = \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(t+1)}) - \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(t)})$.

> **NOTE:**
>
> **Example 2 (One quasi-Newton step on a quadratic function)** Take $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \tfrac{1}{2} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathbf{Q} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with $\mathbf{Q} = \begin{bmatrix} 4 & 1 \\ 1 & 3 \end{bmatrix}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = {(1, 2)}^{\top}$ ([Example 1](#exm-secant-condition)), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(0)} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and $\mathbf{H}^{(0)} = \mathbf{I}_2$. For a [quadratic function](algebra-exponentials.llms.md#def-quadratic-polynomial), the [step length](optimization-gradient-descent.llms.md#def-gradient-descent) that minimizes $f$ along a [direction](vector-calculus.llms.md#def-direction) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}$ is $\alpha = -\frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}} / {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}}^{\top} \mathbf{Q} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{d}}\vphantom{d}}$.
>
> ``` downlit
> q_entries <- c(4, 1, 1, 3)
> Q <- matrix(q_entries, nrow = 2)
> b <- c(1, 2)
> x0 <- c(0, 0)
> H0 <- diag(2)
> q_x0 <- drop(Q %*% x0)
> grad0 <- q_x0 - b
> d <- -drop(H0 %*% grad0)
> q_d <- drop(Q %*% d)
> step <- -sum(grad0 * d) / sum(d * q_d)
> x1 <- x0 + step * d
> q_x1 <- drop(Q %*% x1)
> grad1 <- q_x1 - b
> f0 <- 0.5 * sum(x0 * q_x0) - sum(b * x0)
> f1 <- 0.5 * sum(x1 * q_x1) - sum(b * x1)
> s <- x1 - x0
> y <- grad1 - grad0
> ```
>
> The step length is 0.25, which moves the [iterate](optimization-newton.llms.md#def-iterate) to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(1)} = (0.25, 0.5)$ and lowers $f$ from 0 to -0.625. The difference of the [gradients](vector-calculus.llms.md#def-vector-derivative), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}^{(0)} = (1.5, 1.75)$, is $\mathbf{Q} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}^{(0)}$, which is the [secant condition](#def-secant-condition) for a quadratic function.

> **NOTE:**
>
> Show code
>
> ``` downlit
> qn_x_qn <- seq(-0.4, 0.6, length.out = 101)
> qn_y_qn <- seq(-0.2, 1, length.out = 101)
> qn_grid_qn <- tidyr::expand_grid(x = qn_x_qn, y = qn_y_qn)
> qn_gx_qn <- qn_grid_qn$x
> qn_gy_qn <- qn_grid_qn$y
> qn_quad_qn <- 0.5 * (4 * qn_gx_qn^2 + 2 * qn_gx_qn * qn_gy_qn + 3 * qn_gy_qn^2)
> qn_lin_qn <- qn_gx_qn + 2 * qn_gy_qn
> qn_grid_qn$z <- qn_quad_qn - qn_lin_qn
> qn_star_qn <- c(1, 7) / 11
> qn_start_qn <- tibble::tibble(x = 0, y = 0)
> qn_next_qn <- tibble::tibble(x = 0.25, y = 0.5)
> qn_min_qn <- tibble::tibble(x = qn_star_qn[1], y = qn_star_qn[2])
> qn_step_qn <- tibble::tibble(x = 0, y = 0, xend = 0.25, yend = 0.5)
> qn_rest_qn <- tibble::tibble(
>   x = 0.25, y = 0.5, xend = qn_star_qn[1], yend = qn_star_qn[2]
> )
> qn_len_qn <- grid::unit(0.15, "inches")
> qn_arrow_qn <- grid::arrow(length = qn_len_qn)
> qn_aes_qn <- ggplot2::aes(x, y)
> qn_seg_qn <- ggplot2::aes(xend = xend, yend = yend)
> ggplot2::ggplot(qn_grid_qn, qn_aes_qn) +
>   ggplot2::geom_contour(ggplot2::aes(z = z), colour = "grey70", bins = 12) +
>   ggplot2::geom_segment(
>     data = qn_step_qn, mapping = qn_seg_qn, colour = "#0072B2",
>     arrow = qn_arrow_qn
>   ) +
>   ggplot2::geom_segment(
>     data = qn_rest_qn, mapping = qn_seg_qn, colour = "#D55E00",
>     linetype = "dashed", arrow = qn_arrow_qn
>   ) +
>   ggplot2::geom_point(data = qn_start_qn, colour = "#0072B2", size = 3) +
>   ggplot2::geom_point(data = qn_next_qn, colour = "#D55E00", size = 3) +
>   ggplot2::geom_point(
>     data = qn_min_qn, colour = "#0072B2", size = 3, shape = 15
>   ) +
>   ggplot2::coord_equal() +
>   ggplot2::labs(x = "first coordinate", y = "second coordinate")
> ```
>
> Show code
>
> ``` python
> import matplotlib.pyplot as plt
> import numpy as np
>
> qn_x_ax = np.linspace(-0.4, 0.6, 101)
> qn_y_ax = np.linspace(-0.2, 1, 101)
> qn_xx_ax, qn_yy_ax = np.meshgrid(qn_x_ax, qn_y_ax)
> qn_quad_ax = 0.5 * (4 * qn_xx_ax**2 + 2 * qn_xx_ax * qn_yy_ax + 3 * qn_yy_ax**2)
> qn_z_ax = qn_quad_ax - qn_xx_ax - 2 * qn_yy_ax
> qn_star_ax = np.array([1, 7]) / 11
> fig, ax = plt.subplots(figsize=(6, 4.5), layout="constrained")
> ax.contour(
>     qn_xx_ax, qn_yy_ax, qn_z_ax, levels=12, colors="0.7",
>     negative_linestyles="solid",
> )
> ax.annotate("", xy=(0.25, 0.5), xytext=(0, 0), arrowprops={"arrowstyle": "->", "color": "#0072B2"})
> ax.annotate(
>     "", xy=qn_star_ax, xytext=(0.25, 0.5),
>     arrowprops={"arrowstyle": "->", "color": "#D55E00", "linestyle": "dashed"},
> )
> ax.plot(0, 0, "o", color="#0072B2", markersize=8)
> ax.plot(0.25, 0.5, "o", color="#D55E00", markersize=8)
> ax.plot(qn_star_ax[0], qn_star_ax[1], "s", color="#0072B2", markersize=8)
> ax.set_aspect("equal")
> ax.set_xlabel("first coordinate")
> ax.set_ylabel("second coordinate")
> plt.show();
> ```
>
> ## R
>
> [![Contour plot of the quadratic function f with level curves that are tilted ellipses, centred near the point (0.09, 0.64). A blue circle at the origin marks the starting point, and a solid blue arrow runs from it to a vermilion circle at (0.25, 0.5), the iterate after one step. A dashed vermilion arrow runs from that iterate to a blue square at (0.09, 0.64), the minimizer, which is the ellipses' centre.](optimization-quasi-newton_files/figure-html/quasi-newton-step-fig-r-1.png)](optimization-quasi-newton_files/figure-html/quasi-newton-step-fig-r-1.png "Figure 1: Level curves of the quadratic function f from Example 2. The first step (solid arrow) moves from \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(0)} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}} (blue circle) to \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(1)} (vermilion circle) in the steepest-descent direction, because \mathbf{H}^{(0)} = \mathbf{I}_2. The minimizer (blue square) is the centre of the ellipses.  The dashed arrow shows the step that remains. A quasi-Newton matrix that approximates \mathbf{Q}^{-1} would aim the next step at that centre rather than along the gradient.")
>
> ## Python
>
> [![Contour plot of the quadratic function f with level curves that are tilted ellipses, centred near the point (0.09, 0.64). A blue circle at the origin marks the starting point, and a solid blue arrow runs from it to a vermilion circle at (0.25, 0.5), the iterate after one step. A dashed vermilion arrow runs from that iterate to a blue square at (0.09, 0.64), the minimizer, which is the ellipses' centre.](optimization-quasi-newton_files/figure-html/quasi-newton-step-fig-python-1.png)](optimization-quasi-newton_files/figure-html/quasi-newton-step-fig-python-1.png "Figure 1: Level curves of the quadratic function f from Example 2. The first step (solid arrow) moves from \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(0)} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}} (blue circle) to \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(1)} (vermilion circle) in the steepest-descent direction, because \mathbf{H}^{(0)} = \mathbf{I}_2. The minimizer (blue square) is the centre of the ellipses.  The dashed arrow shows the step that remains. A quasi-Newton matrix that approximates \mathbf{Q}^{-1} would aim the next step at that centre rather than along the gradient.")
>
> Figure 1: [Level curves](vector-calculus.llms.md#def-level-set) of the [quadratic function](algebra-exponentials.llms.md#def-quadratic-polynomial) $f$ from [Example 2](#exm-quasi-newton-step). The first step (solid arrow) moves from $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(0)} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ (blue circle) to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(1)}$ (vermilion circle) in the [steepest-descent](optimization-gradient-descent.llms.md#def-gradient-descent) [direction](vector-calculus.llms.md#def-direction), because $\mathbf{H}^{(0)} = \mathbf{I}_2$. The [minimizer](algebra-basics.llms.md#def-global-minimizer) (blue square) is the centre of the ellipses. The dashed arrow shows the step that remains. A [quasi-Newton](#def-quasi-newton-method) [matrix](linear-algebra-matrices.llms.md#def-matrix) that approximates $\mathbf{Q}^{-1}$ would aim the next step at that centre rather than along the [gradient](vector-calculus.llms.md#def-vector-derivative).

> **NOTE:**
>
> Show code
>
> ``` downlit
> qn_x_sf <- seq(-0.4, 0.6, length.out = 101)
> qn_y_sf <- seq(-0.2, 1, length.out = 101)
> qn_grid_sf <- tidyr::expand_grid(x = qn_x_sf, y = qn_y_sf)
> qn_quad_sf <- 4 * qn_grid_sf$x^2 + 2 * qn_grid_sf$x * qn_grid_sf$y
> qn_quad_sf <- 0.5 * (qn_quad_sf + 3 * qn_grid_sf$y^2)
> qn_value_sf <- qn_quad_sf - qn_grid_sf$x - 2 * qn_grid_sf$y
> qn_ny_sf <- length(qn_y_sf)
> qn_z_sf <- matrix(qn_value_sf, nrow = qn_ny_sf)
> qn_p_x_sf <- c(0, 0.25, 1 / 11)
> qn_p_y_sf <- c(0, 0.5, 7 / 11)
> qn_p_label_sf <- c("start", "after one step", "minimizer")
> qn_p_color_sf <- c("#0072B2", "#D55E00", "#0072B2")
> qn_p_symbol_sf <- c("circle", "circle", "square")
> qn_pts_sf <- tibble::tibble(
>   x = qn_p_x_sf,
>   y = qn_p_y_sf,
>   label = qn_p_label_sf,
>   color = qn_p_color_sf,
>   symbol = qn_p_symbol_sf
> )
> qn_pq_sf <- 4 * qn_pts_sf$x^2 + 2 * qn_pts_sf$x * qn_pts_sf$y
> qn_pq_sf <- 0.5 * (qn_pq_sf + 3 * qn_pts_sf$y^2)
> qn_pts_sf$z <- qn_pq_sf - qn_pts_sf$x - 2 * qn_pts_sf$y
> qn_marker_sf <- list(color = ~color, size = 6, symbol = ~symbol)
> qn_stops_sf <- c(0, 1)
> qn_cols_sf <- c("#E5E5E5", "#808080")
> qn_scale_sf <- list(qn_stops_sf, qn_cols_sf)
> qn_eye_sf <- list(x = 1.6, y = -1.6, z = 0.9)
> qn_camera_sf <- list(eye = qn_eye_sf)
> qn_xaxis_sf <- list(title = "first coordinate")
> qn_yaxis_sf <- list(title = "second coordinate")
> qn_zaxis_sf <- list(title = "f(x)")
> qn_scene_sf <- list(
>   xaxis = qn_xaxis_sf,
>   yaxis = qn_yaxis_sf,
>   zaxis = qn_zaxis_sf,
>   camera = qn_camera_sf
> )
> qn_legend_sf <- list(orientation = "h")
> plotly::plot_ly() |>
>   plotly::add_surface(
>     x = qn_x_sf,
>     y = qn_y_sf,
>     z = qn_z_sf,
>     colorscale = qn_scale_sf,
>     showscale = FALSE,
>     opacity = 0.7
>   ) |>
>   plotly::add_markers(
>     data = qn_pts_sf,
>     x = ~x,
>     y = ~y,
>     z = ~z,
>     text = ~label,
>     hoverinfo = "text",
>     showlegend = FALSE,
>     marker = qn_marker_sf
>   ) |>
>   plotly::layout(scene = qn_scene_sf, legend = qn_legend_sf)
> ```
>
> Show code
>
> ``` python
> import matplotlib.pyplot as plt
> import numpy as np
>
> qn_x_3d = np.linspace(-0.4, 0.6, 101)
> qn_y_3d = np.linspace(-0.2, 1, 101)
> qn_xx_3d, qn_yy_3d = np.meshgrid(qn_x_3d, qn_y_3d)
>
>
> def qn_f_3d(x, y):
>     return 0.5 * (4 * x**2 + 2 * x * y + 3 * y**2) - x - 2 * y
>
>
> qn_pts_x_3d = np.array([0, 0.25, 1 / 11])
> qn_pts_y_3d = np.array([0, 0.5, 7 / 11])
> qn_pts_z_3d = qn_f_3d(qn_pts_x_3d, qn_pts_y_3d)
> fig = plt.figure(figsize=(6, 4.5))
> ax = fig.add_subplot(projection="3d")
> ax.plot_surface(qn_xx_3d, qn_yy_3d, qn_f_3d(qn_xx_3d, qn_yy_3d),
>                 color="grey", alpha=0.4)
> ax.scatter(qn_pts_x_3d[0], qn_pts_y_3d[0], qn_pts_z_3d[0], marker="o",
>            color="#0072B2", s=50, label="start")
> ax.scatter(qn_pts_x_3d[1], qn_pts_y_3d[1], qn_pts_z_3d[1], marker="o",
>            color="#D55E00", s=50, label="after one step")
> ax.scatter(qn_pts_x_3d[2], qn_pts_y_3d[2], qn_pts_z_3d[2], marker="s",
>            color="#0072B2", s=50, label="minimizer")
> ax.set_xlabel("first coordinate")
> ax.set_ylabel("second coordinate")
> ax.set_zlabel("f(x)")
> ax.legend(loc="upper right")
> plt.show();
> ```
>
> ## R
>
> [![Surface plot of the quadratic function f over first coordinates from -0.4 to 0.6 and second coordinates from -0.2 to 1, a bowl-shaped surface whose lowest point is above the point (0.09, 0.64). Three markers lie on the surface. A blue circle at the origin is the starting point, a vermilion circle above (0.25, 0.5) is the iterate after one step, and a blue square above (0.09, 0.64) is the minimizer, at the bottom of the bowl.](optimization-quasi-newton_files/figure-html/quasi-newton-step-3d-python-1.png)](optimization-quasi-newton_files/figure-html/quasi-newton-step-3d-python-1.png "Figure 2: The graph of the quadratic function f from Example 2, the surface whose level curves are in Figure 1. The start \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(0)} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}} (blue circle), the point \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(1)} reached after one steepest-descent step (vermilion circle), and the minimizer (blue square) at the bottom of the bowl are marked on the surface. ")
>
> ## Python
>
> Figure 2: The [graph](https://morrison-lab.github.io/mcs/functions.html#def-graph) of the [quadratic function](algebra-exponentials.llms.md#def-quadratic-polynomial) $f$ from [Example 2](#exm-quasi-newton-step), the surface whose [level curves](vector-calculus.llms.md#def-level-set) are in [Figure 1](#fig-quasi-newton-step). The start $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(0)} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ (blue circle), the point $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(1)}$ reached after one [steepest-descent](optimization-gradient-descent.llms.md#def-gradient-descent) step (vermilion circle), and the [minimizer](algebra-basics.llms.md#def-global-minimizer) (blue square) at the bottom of the bowl are marked on the surface.

> **NOTE:**
>
> *Remark 1* (Why a quasi-Newton method is used). Because $\mathbf{H}^{(t)}$ is [positive definite](linear-algebra-special-matrices.llms.md#def-positive-definite), $-\mathbf{H}^{(t)} \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(t)})$ is a [descent direction](optimization-gradient-descent.llms.md#def-descent-direction), so, when the [gradient](vector-calculus.llms.md#def-vector-derivative) is not $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, a [line search](optimization-gradient-descent.llms.md#def-line-search) finds a step that decreases $f$. [Newton’s method](optimization-newton.llms.md#def-newton-method) needs the Hessian and the solution of a system of equations at every iteration, which costs about $p^3$ operations for a dense $p \times p$ Hessian, and requires the formulas for its entries. A quasi-Newton method needs only the [gradient](vector-calculus.llms.md#def-vector-derivative) and an update of $\mathbf{H}^{(t)}$ costing about $p^2$ operations. Near a minimizer the method speeds up superlinearly: faster than [gradient descent](optimization-gradient-descent.llms.md#def-gradient-descent), slower than Newton’s method [\[2, Ch. 6\]](#ref-nocedal2006numerical). Replacing $\mathbf{H}^{(t)}$ by $\mathbf{I}_p$ in the step formula gives [gradient descent](optimization-gradient-descent.llms.md#def-gradient-descent).

> **NOTE:**
>
> **Definition 3 (BFGS update (Broyden-Fletcher-Goldfarb-Shanno))** Let $\mathbf{H}$, an approximation of the [inverse](linear-algebra-special-matrices.llms.md#def-matrix-inverse) Hessian, be a $p \times p$ [positive definite matrix](linear-algebra-special-matrices.llms.md#def-positive-definite), and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^p$ satisfy $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} > 0$. With $\rho \stackrel{\text{def}}{=}1 / \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}$, the **BFGS update** [\[2, Ch. 6\]](#ref-nocedal2006numerical) of $\mathbf{H}$ is
>
> $$\mathbf{H}^+
> \stackrel{\text{def}}{=}\mathopen{}\left(\mathbf{I}_p - \rho \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}\right)\mathclose{}
> \mathbf{H}
> \mathopen{}\left(\mathbf{I}_p - \rho \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}}^{\top}\right)\mathclose{}
> + \rho \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}}^{\top}.$$

> **NOTE:**
>
> **Example 3 (A BFGS update from the quasi-Newton step)** Continue [Example 2](#exm-quasi-newton-step) with $\mathbf{H} = \mathbf{I}_2$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}^{(0)}$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}^{(0)}$.
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
> Here $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} = 1.25 > 0$, so $\rho = 0.8$. The updated [matrix](linear-algebra-matrices.llms.md#def-matrix) satisfies $\mathbf{H}^+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (0.25, 0.5)$, which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} = (0.25, 0.5)$, and its smallest [eigenvalue](linear-algebra-special-matrices.llms.md#def-eigenvalue) is 0.231204, so $\mathbf{H}^+$ is [positive definite](linear-algebra-special-matrices.llms.md#def-positive-definite).

> **NOTE:**
>
> *Remark 2* (The curvature condition $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} > 0$). If the [strict inequality](algebra-basics.llms.md#def-strict-inequality) of [Theorem 4 in Convexity in Several Variables](optimization-convexity.llms.md#thm-convex-first-order) holds for distinct points, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} > 0$ for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+ - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+) - \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$. Add the versions at $(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$ and at $(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+)$:
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+) + f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> > f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) + f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+)
> + \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}
> - \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^+) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}},$$
>
> so $0 > -\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}$. For a general $f$, a [line search](optimization-gradient-descent.llms.md#def-line-search) that enforces a curvature condition on the [step length](optimization-gradient-descent.llms.md#def-gradient-descent) (the Wolfe conditions [\[2, Ch. 3\]](#ref-nocedal2006numerical)) guarantees $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} > 0$. Such a step can be found along a [descent direction](optimization-gradient-descent.llms.md#def-descent-direction) when $f$ cannot keep decreasing forever.

> **NOTE:**
>
> **Definition 4 (Limited-memory BFGS (L-BFGS))** **Limited-memory BFGS** (**L-BFGS**) [\[2, Ch. 7\]](#ref-nocedal2006numerical) is the [quasi-Newton method](#def-quasi-newton-method) that never forms $\mathbf{H}^{(t)}$. It stores only the $m$ most recent pairs $(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}^{(j)}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}^{(j)})$, with $m$ small, such as $5$ or $20$, and obtains $\mathbf{H}^{(t)} \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(t)})$ implicitly, through a few vector operations, as if the [BFGS update](#def-bfgs-update) for those $m$ pairs were applied to a simple starting [matrix](linear-algebra-matrices.llms.md#def-matrix), such as a multiple of $\mathbf{I}_p$.

> **NOTE:**
>
> **Example 4 (L-BFGS applies the update without forming the matrix)**  
>
> Continue [Example 3](#exm-bfgs-step) with $m = 1$ stored pair $(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}^{(0)}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}^{(0)})$ and starting [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{I}_2$. Below, $\mathbf{H}^+ \frac{\partial}{\partial \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{(1)})$ is formed from vectors alone, starting from `H0`, then compared with the [matrix product](linear-algebra-matrices.llms.md#def-matrix-mult).
>
> ``` downlit
> g1 <- grad1
> alpha <- rho * sum(s * g1)
> q <- g1 - alpha * y
> r <- drop(H0 %*% q)
> beta <- rho * sum(y * r)
> r <- r + s * (alpha - beta)
> h1_g1 <- H1 %*% g1
> from_matrix <- drop(h1_g1)
> tibble::tibble(from_vectors = r, from_matrix = from_matrix)
> ```
>
> The two columns agree to within 5.6e-17, although the first never forms the matrix. BFGS stores a dense $p \times p$ matrix and spends about $p^2$ operations per iteration; L-BFGS stores $2m$ vectors with $p$ entries and spends about $m p$ operations per iteration, so it remains usable when $p$ is in the millions.

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
