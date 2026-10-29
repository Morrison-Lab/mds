# Optimization

Code

Published

Last modified: 2026-10-29 08:12:19 (PDT)

## 1 Critical points and optimization

> **NOTE:**
>
> **Definition 1 (Flat point (stationary point))** Let \\f\\ be [differentiable at](calculus-derivatives.llms.md#def-differentiable) \\c\\. If \\f'(c) = 0\\, then \\c\\ is a **flat point** of \\f\\ (also called a **stationary point**) [\[1\]](#ref-wikipedia_stationary_point).

> **NOTE:**
>
> **Example 1 (Flat points, and a point that is not one)**  
>
> - \\f(w) = w^3\\ has \\f'(w) = 3w^2\\, which is \\0\\ at \\w = 0\\, so \\0\\ is a flat point. Yet \\f(0) = 0\\ is neither the [minimum](algebra-basics.llms.md#def-minimum) nor the [maximum](algebra-basics.llms.md#def-maximum) of the [values](functions.llms.md#def-value) \\f\\ takes on any [open interval](sets.llms.md#def-open-interval) around \\0\\: \\f(w) \< 0\\ for \\w \< 0\\, and \\f(w) \> 0\\ for \\w \> 0\\.
> - \\h(w) = w^2\\ has \\h'(1) = 2 \ne 0\\, so \\1\\ is not a flat point.

> **NOTE:**
>
> **Exercise 1 (Differentiate a quadratic)** Let \\f(w) = w^2 - 4w + 7\\.
>
> Differentiate \\f\\.

> **NOTE:**
>
> *Solution 1*. Differentiating each [term](algebra-sums.llms.md#def-term):
>
> \\\frac{df}{dw} = 2w - 4\\

> **NOTE:**
>
> **Exercise 2 (Find the flat point)** In the setting of [Exercise 1](#exr-flat-point), find the [flat point](#def-flat-point) \\w\\ of \\f\\.

> **NOTE:**
>
> *Solution 2*. The [derivative](calculus-derivatives.llms.md#def-derivative) is zero where \\2w - 4 = 0\\, which gives \\w = 2\\.

> **NOTE:**
>
> **Exercise 3 (Classify the flat point)** In the setting of [Exercise 1](#exr-flat-point), say whether \\f(w)\\ at the [flat point](#def-flat-point) is the [minimum](algebra-basics.llms.md#def-minimum) or the [maximum](algebra-basics.llms.md#def-maximum) of the values of \\f\\.

> **NOTE:**
>
> *Solution 3*. The [flat point](#def-flat-point) is \\w = 2\\, from [Solution 2](#sol-flat-point-find). Evaluating \\f\\ there gives
>
> \\ \begin{aligned} f(2) &= 4 - 8 + 7 \\ &= 3. \end{aligned} \\
>
> This is the [minimum](algebra-basics.llms.md#def-minimum) of the [values](functions.llms.md#def-value) of \\f\\. Completing the square, \\f(w) = (w - 2)^2 + 3\\, since
>
> \\ \begin{aligned} (w - 2)^2 + 3 &= w^2 - 4w + 4 + 3 \\ &= w^2 - 4w + 7, \end{aligned} \\
>
> and \\(w - 2)^2 \ge 0\\, so \\f(w) \ge 3 = f(2)\\ for every \\w\\. Equivalently, the [derivative](calculus-derivatives.llms.md#def-derivative) is negative below \\w = 2\\ and positive above it, so the function falls into that point and rises out of it.

> **NOTE:**
>
> **Exercise 4 (Slope at \\w = 1\\)** In the setting of [Exercise 1](#exr-flat-point), evaluate the [derivative](calculus-derivatives.llms.md#def-derivative) at \\w = 1\\.

> **NOTE:**
>
> *Solution 4*. At \\w = 1\\ the [derivative](calculus-derivatives.llms.md#def-derivative) is \\2(1) - 4 = -2\\, so \\f\\ is falling there.

> **NOTE:**
>
> **Exercise 5 (Predict a nearby value)** In the setting of [Exercise 1](#exr-flat-point), use the [linear approximation](calculus-derivatives.llms.md#eq-linear-approx) and the [derivative](calculus-derivatives.llms.md#def-derivative) at \\w = 1\\ from [Exercise 4](#exr-flat-point-slope) to predict \\f(1.01)\\.

> **NOTE:**
>
> *Solution 5*. With \\\varepsilon= 0.01\\, the [linear approximation](calculus-derivatives.llms.md#eq-linear-approx) predicts a change of \\(0.01)(-2) = -0.02\\, from
>
> \\ \begin{aligned} f(1) &= 1 - 4 + 7 \\ &= 4 \end{aligned} \\
>
> to \\3.98\\.

> **NOTE:**
>
> **Exercise 6 (Exact value)** In the setting of [Exercise 1](#exr-flat-point), find the exact [value](functions.llms.md#def-value) of \\f(1.01)\\.

> **NOTE:**
>
> *Solution 6*. The exact [value](functions.llms.md#def-value) is
>
> \\ \begin{aligned} f(1.01) &= (1.01)^2 - 4(1.01) + 7 \\ &= 1.0201 - 4.04 + 7 \\ &= 3.9801 \end{aligned} \\
>
> a change of \\-0.0199\\ from \\f(1) = 4\\.

> **NOTE:**
>
> **Exercise 7 (Check the prediction)** Compare the prediction in [Exercise 5](#exr-flat-point-predict) with the exact [value](functions.llms.md#def-value) of \\f(1.01)\\ from [Exercise 6](#exr-flat-point-exact).

> **NOTE:**
>
> *Solution 7*. The prediction \\3.98\\ ([Solution 5](#sol-flat-point-predict)) and the exact [value](functions.llms.md#def-value) \\3.9801\\ ([Solution 6](#sol-flat-point-exact)) differ by \\0.0001\\, which is \\\varepsilon^2\\. The [linear approximation](calculus-derivatives.llms.md#def-linear-approximation) drops everything of that order and smaller, so halving the step quarters the error. That trade is the whole bargain of [gradient descent](optimization.llms.md#def-gradient-descent), the step-by-step method of fitting models that the optimization page defines. We take a step in the direction the derivative recommends, and the recommendation is trustworthy only as far as the step is small.

> **NOTE:**
>
> **Definition 2 (Critical point)** Let \\f\\ be a function defined on an [open interval](sets.llms.md#def-open-interval) containing \\c\\. The point \\c\\ is a **critical point** of \\f\\ if either \\f'(c) = 0\\ or \\f\\ is not differentiable at \\c\\ ([Definition 6 in Derivatives and Taylor Series](calculus-derivatives.llms.md#def-differentiable)).

> **NOTE:**
>
> **Example 2 (Critical points that are and are not flat points)**  
>
> - \\g(w) = \mathopen{}\left\|w\right\|\mathclose{}\\ has no derivative at \\w = 0\\: its [one-sided derivatives](calculus-derivatives.llms.md#def-one-sided-derivative) there are \\1\\ and \\-1\\ ([worked example](calculus-derivatives.llms.md#exm-one-sided-derivative)). So the [difference quotient](calculus-derivatives.llms.md#def-difference-quotient) \\\tfrac{\mathopen{}\left\|h\right\|\mathclose{} - 0}{h}\\ has no [limit](calculus-derivatives.llms.md#def-limit) as \\h \to 0\\, because the limits from the left and from the right ([one-sided limits](calculus-derivatives.llms.md#def-one-sided-limit)) differ. So \\0\\ is a critical point of \\g\\ but not a flat point.
>
> - \\f(w) = w^3\\ has
>
>   \\ \begin{aligned} f'(0) &= 3 \cdot 0^2 \\ &= 0, \end{aligned} \\
>
>   so \\0\\ is a flat point of \\f\\, and hence a critical point.
>
> - \\h(w) = w^2\\ is differentiable everywhere, with \\h'(w) = 2w\\, which is \\0\\ only at \\w = 0\\. So \\0\\ is the only critical point of \\h\\. For example, \\h'(1) = 2 \ne 0\\, so \\1\\ is not one.

> **NOTE:**
>
> **Theorem 1 (Every flat point is a critical point)** If \\c\\ is a flat point of \\f\\ ([Definition 1](#def-flat-point)), then \\c\\ is a critical point of \\f\\ ([Definition 2](#def-critical-point)).

> **NOTE:**
>
> *Proof*. A flat point \\c\\ has \\f\\ differentiable at \\c\\ and \\f'(c) = 0\\. The condition “\\f'(c) = 0\\” is the first alternative in [Definition 2](#def-critical-point), so \\c\\ is a critical point.

> **NOTE:**
>
> **Example 3 (The flat points of a cubic, and a critical point that is not flat)** For \\f(w) = w^3 - 3w\\, the derivative is \\f'(w) = 3w^2 - 3\\. The code differentiates \\f\\ with [`D()`](https://rdrr.io/r/stats/deriv.html) and evaluates \\f'\\ at several points. For \\g(w) = \mathopen{}\left\|w\right\|\mathclose{}\\, it computes the difference quotients at \\0\\ from both sides.
>
> ``` downlit
> f_prime <- D(quote(w^3 - 3 * w), "w")
> points <- c(-2, -1, 0, 1, 2)
> derivs <- data.frame(w = points, f_prime = eval(f_prime, list(w = points)))
> derivs
> ```
>
> ``` downlit
> flat <- derivs$w[derivs$f_prime == 0]
>
> h <- c(-1e-3, 1e-3)
> quotients <- abs(h) / h
> quotients
> #> [1] -1  1
> ```
>
> The derivative is \\0\\ at 2 of the 5 points, namely \\w = -1\\ and \\w = 1\\. These are flat points of \\f\\, so by [Theorem 1](#thm-flat-point-critical) they are critical points. The difference quotients of \\g\\ at \\0\\ are -1 from the left and 1 from the right, so \\g\\ has no derivative at \\0\\. Thus \\0\\ is a critical point of \\g\\ ([Definition 2](#def-critical-point)), but not a flat point.

> **NOTE:**
>
> **Exercise 8 (Maximizing a gamma-family kernel)** Adapted from Miller [\[2\]](#ref-problifesavercalc), Question 1.1.10.
>
> Find the maximum value of
>
> \\f(x) = x^4 e^{-x}\\
>
> on the interval \\\[0, \infty)\\.

> **NOTE:**
>
> *Solution 8*. Differentiate using the product rule:
>
> \\ \begin{aligned} f'(x) &= 4x^3 e^{-x} - x^4 e^{-x} \\ &= x^3 e^{-x}(4 - x) \end{aligned} \\
>
> On \\\[0, \infty)\\, \\e^{-x} \> 0\\, so \\f'(x) = 0\\ only at \\x = 0\\ and \\x = 4\\.
>
> Evaluate \\f\\ at the boundary and critical points:
>
> - At \\x = 0\\: \\f(0) = 0\\.
>
> - At \\x = 4\\:
>
>   \\ \begin{aligned} f(4) &= 4^4 e^{-4} \\ &= 256 e^{-4} \\ &\approx 4.6888. \end{aligned} \\
>
> - As \\x \to \infty\\: exponential decay dominates polynomial growth, so \\\lim\_{x \to \infty} x^4 e^{-x} = 0\\.
>
> Since \\f(x) \ge 0\\ for all \\x \ge 0\\ and \\f(4) \> 0\\, the global maximum occurs at \\x = 4\\, with maximum value \\256/e^4\\.

> **NOTE:**
>
> **Exercise 9 (Classifying critical points with the second derivative test)** Adapted from Miller [\[2\]](#ref-problifesavercalc), Question 1.1.11.
>
> Find the critical points of
>
> \\f(x) = 4x^3 - 3x^2\\
>
> and decide whether each is a local maximum, a local minimum, or an inflection point.

> **NOTE:**
>
> *Solution 9*. Compute the first derivative:
>
> \\ \begin{aligned} f'(x) &= 12x^2 - 6x \\ &= 6x(2x - 1) \end{aligned} \\
>
> Setting \\f'(x) = 0\\ gives critical points at \\x = 0\\ and \\x = 1/2\\.
>
> Compute the second derivative:
>
> \\f''(x) = 24x - 6\\
>
> Apply the second derivative test at each critical point:
>
> - At \\x = 0\\: \\f''(0) = -6 \< 0\\, so \\x = 0\\ is a strict local maximum.
>
> - At \\x = 1/2\\:
>
>   \\ \begin{aligned} f''(1/2) &= 24(1/2) - 6 \\ &= 6 \\ &\> 0, \end{aligned} \\
>
>   so \\x = 1/2\\ is a strict local minimum.
>
> Inflection points occur where the second derivative changes sign (\\f''(x) = 0\\ at \\x = 1/4\\). Because \\f''\\ is non-zero at both critical points, neither is an inflection point.

## 2 Optimality conditions in several variables

> **NOTE:**
>
> This section is adapted from the multivariate calculus and optimality-condition parts of Zhou [\[3\]](#ref-zhou2024optim), used under the MIT License (see the license text in [Linear Algebra](linear-algebra-subspaces.llms.md#sec-subspaces)). The source states the second-order Taylor approximation and the optimality conditions without [proof](proof-writing.llms.md#def-proof); here they are proved from the one-variable Taylor theorem, and the approximation is made exact by evaluating the Hessian at a point between \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\\. The source calls points with zero gradient critical points; here they are stationary points, because [Definition 2](#def-critical-point) gives “critical point” a wider meaning. The source states these results for differentiable functions without saying how smooth; here the first-order results assume continuous first partial derivatives, and the second-order results continuous second partial derivatives. These parts of the source are not part of this section:
>
> - its remark that maximizing \\f\\ is minimizing \\-f\\, and its classification of constraints
> - its figure of local, strict local and global minima
> - its one-variable Taylor example and its plots
> - matrix calculus
> - convexity
> - Lagrange multipliers
> - Newton’s method and gradient descent

A local minimizer of a differentiable function on an open interval is a flat point ([Definition 1](#def-flat-point)), and, at a flat point, a positive [second derivative](calculus-derivatives.llms.md#def-second-derivative) guarantees a strict local minimum. This section extends both facts to a function \\f\\ of a \\p \times 1\\ vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\: the gradient \\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ ([gradient](vector-calculus.llms.md#def-vector-derivative)) takes the place of the first derivative, and a \\p \times p\\ matrix of second partial derivatives takes the place of the second; both facts are proved in this section, for every \\p \ge 1\\. Throughout, \\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}})\\ means the gradient evaluated at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\\.

> **NOTE:**
>
> **Theorem 2 (A minimizer has derivative zero)** Let \\g\\ be a [real](number-systems.llms.md#def-real-numbers)-valued function on an [open interval](sets.llms.md#def-open-interval) containing \\c\\, and let \\g\\ be [differentiable](calculus-derivatives.llms.md#def-differentiable) at \\c\\. If \\c\\ is a [local minimizer](algebra-basics.llms.md#def-local-minimizer) of \\g\\, then \\g'(c) = 0\\. [\[4\]](#ref-wikipedia_fermats_theorem_stationary_points)

> **NOTE:**
>
> *Proof*. Take \\\delta\> 0\\ as in the definition of a local minimizer, shrunk if needed so that \\(c - \delta, c + \delta)\\ lies inside the interval; then \\g(c) \le g(c + h)\\ whenever \\\mathopen{}\left\|h\right\|\mathclose{} \< \delta\\. For \\0 \< h \< \delta\\, the difference quotient is
>
> \\ \frac{g(c + h) - g(c)}{h} \ge 0, \\
>
> because its numerator is at least \\0\\ and its denominator is positive. As \\h \to 0\\ from the right, these quotients tend to \\g'(c)\\ (the two-sided limit exists, so the [one-sided limit](calculus-derivatives.llms.md#def-one-sided-limit) equals it), and a limit of numbers that are all at least \\0\\ is at least \\0\\; so \\g'(c) \ge 0\\. For \\-\delta\< h \< 0\\, the numerator is still at least \\0\\ but the denominator is negative, so the quotient is at most \\0\\, and in the same way, with \\h \to 0\\ from the left, \\g'(c) \le 0\\. Together, \\g'(c) = 0\\.

> **NOTE:**
>
> **Example 4 (Applying the test, and its limits)**  
>
> - \\g(x) = (x - 2)^2\\ has its minimizer at \\c = 2\\, and
>
>   \\ \begin{aligned} g'(2) &= 2 (2 - 2) \\ &= 0. \end{aligned} \\
>
> - The [converse](proof-writing.llms.md#def-converse) fails: \\g(x) = x^3\\ has
>
>   \\ \begin{aligned} g'(0) &= 3 \cdot 0^2 \\ &= 0, \end{aligned} \\
>
>   but \\0\\ is not a local minimizer, since
>
>   \\ \begin{aligned} g(-h) &= -h^3 \\ &\< 0 \\ &= g(0) \end{aligned} \\
>
>   for every \\h \> 0\\.
>
> - Differentiability is needed: \\g(x) = \mathopen{}\left\|x\right\|\mathclose{}\\ has its minimizer at \\0\\, but the difference quotient \\\mathopen{}\left\|h\right\|\mathclose{} / h\\ is \\1\\ for \\h \> 0\\ and \\-1\\ for \\h \< 0\\, so it has no limit and \\g'(0)\\ does not exist.

> **NOTE:**
>
> **Definition 3 (Stationary point)** Let \\f\\ be a scalar-valued function of a \\p \times 1\\ vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\. A point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\\ at which the gradient exists and
>
> \\ \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1} \\
>
> is a **stationary point** of \\f\\.

> **NOTE:**
>
> **Example 5 (A stationary point, and a point that is not one)** Let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2 - 2 x_1\\. Its gradient is \\{(2 x_1 - 2,\\ 2 x_2)}^{\top}\\, which is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\ exactly when \\x_1 = 1\\ and \\x_2 = 0\\. So \\{(1, 0)}^{\top}\\ is its only stationary point, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ is not one: the gradient there is \\{(-2, 0)}^{\top}\\.

> **NOTE:**
>
> *Remark 1* (Stationary points in one variable). For \\p = 1\\, a [stationary point](#def-stationary-point) is a flat point ([Definition 1](#def-flat-point)).

> **NOTE:**
>
> **Theorem 3 (First-order necessary condition)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\. If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ is a [local minimizer](algebra-basics.llms.md#def-local-minimizer) of \\f\\ and the gradient of \\f\\ exists at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\, then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ is a stationary point of \\f\\ ([Definition 3](#def-stationary-point)).

> **NOTE:**
>
> *Proof*. Take \\\delta\> 0\\ as in the definition of a local minimizer. Let \\i \in \mathopen{}\left\\1, \ldots, p\right\\\mathclose{}\\, let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i\\ be the vector with \\1\\ in entry \\i\\ and \\0\\ elsewhere, and let \\g_i(t) \stackrel{\text{def}}{=}f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + t\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i)\\ for \\t \in \mathbb{R}\\. For \\\mathopen{}\left\|t\right\|\mathclose{} \< \delta\\,
>
> \\ \begin{aligned} \mathopen{}\left\lVert(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + t\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i) - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{} &= \mathopen{}\left\|t\right\|\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i\right\rVert\mathclose{} \\ &= \mathopen{}\left\|t\right\|\mathclose{} \\ &\< \delta, \end{aligned} \\
>
> so
>
> \\ \begin{aligned} g_i(0) &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) \\ &\le f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + t\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i) \\ &= g_i(t): \end{aligned} \\
>
> \\0\\ is a local minimizer of \\g_i\\. Moving \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ from \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ along \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}\_i\\ changes only \\x_i\\, so \\g_i'(0)\\ is the partial derivative \\\frac{\partial}{\partial x_i} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*)\\, which exists because the gradient does. By [Theorem 2](#thm-fermat),
>
> \\ \begin{aligned} \frac{\partial}{\partial x_i} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) &= g_i'(0) \\ &= 0. \end{aligned} \\
>
> The equation \\g_i'(0) = 0\\ holds for every \\i\\, so every entry of the gradient at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ is \\0\\ ([vector derivative](vector-calculus.llms.md#def-vector-derivative)).

> **NOTE:**
>
> **Example 6 (Using the condition to locate, and to rule out, minimizers)**  
>
> - For \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2 - 2 x_1\\ of [Example 5](#exm-stationary-point), any local minimizer must be the stationary point \\{(1, 0)}^{\top}\\. It is one: completing the square,
>
>   \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= (x_1 - 1)^2 + x_2^2 - 1 \\ &\ge -1 \\ &= f(1, 0). \end{aligned} \\
>
> - For \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = e^{2x_1 + x_2} - x_1\\ of [Example](vector-calculus.llms.md#exm-hessian), the second entry of the gradient is \\e^{2x_1 + x_2} \> 0\\, so \\f\\ has no stationary point, and so no local minimizer.
>
> - The converse fails: \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 - x_2^2\\ has gradient \\{(2 x_1,\\ -2 x_2)}^{\top}\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ is a stationary point, but
>
>   \\ \begin{aligned} f(0, t) &= -t^2 \\ &\< 0 \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) \end{aligned} \\
>
>   for every \\t \ne 0\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ is not a local minimizer.

> **NOTE:**
>
> **Example 7 (A stationary point of the sum of squared errors, on real data)** The Auto data record the horsepower and fuel economy (miles per gallon) of 392 car models sold between 1970 and 1982. They come from the StatLib library at Carnegie Mellon University and ship with the book *An Introduction to Statistical Learning*, in the Python package [`ISLP`](https://islp.readthedocs.io/) (`ISLP.load_data("Auto")`) and the R package [`ISLR2`](https://cran.r-project.org/package=ISLR2) (`ISLR2::Auto`). This site has a copy at [`data/auto.csv`](data/auto.csv), and both code tabs below read that file.
>
> Let \\y_i\\ be the miles per gallon and \\x_i\\ the horsepower of car \\i\\. To predict miles per gallon from horsepower with a line, write \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}= {(\beta\_{0}, \beta\_{1})}^{\top}\\ and let \\\mathbf{X}\\ be the matrix whose row \\i\\ is \\(1, x_i)\\. The sum of squared errors is
>
> \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}) = \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}\right\rVert\mathclose{}^2, \\
>
> a scalar-valued function of the \\2 \times 1\\ vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}\\. Its gradient is \\-2\\{\mathbf{X}}^{\top}(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}})\\. By [Theorem 3](#thm-first-order-condition), a minimizer of \\f\\ must make this gradient \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, which is the equation \\{\mathbf{X}}^{\top}\mathbf{X}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}= {\mathbf{X}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\. The code below solves that equation and evaluates the gradient at the solution and at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\beta}}\vphantom{\beta}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.
>
> ## Python
>
> ``` python
> import numpy as np
> import pandas as pd
>
> auto = pd.read_csv("data/auto.csv")
> y = auto["mpg"].to_numpy(dtype=float)
> X = np.column_stack([np.ones(len(auto)), auto["horsepower"].to_numpy(dtype=float)])
>
> def grad(beta):
>     return -2 * X.T @ (y - X @ beta)
>
> beta_hat = np.linalg.solve(X.T @ X, X.T @ y)
> grad_hat = grad(beta_hat)
> grad_zero = grad(np.zeros(2))
>
> pd.DataFrame(
>     {"beta": [beta_hat, np.zeros(2)], "gradient": [grad_hat, grad_zero]},
>     index=["solution", "zero vector"],
> )
> #>                                beta                gradient
> #> solution     [39.935861, -0.157845]              [0.0, 0.0]
> #> zero vector              [0.0, 0.0]  [-18381.6, -1737437.6]
> ```
>
> A library fit gives the same coefficients:
>
> ``` python
> import numpy as np
>
> # np.polyfit returns the slope first, so reverse to (intercept, slope).
> beta_polyfit = np.polyfit(auto["horsepower"], auto["mpg"], deg=1)[::-1]
> beta_polyfit
> #> array([39.93586102, -0.15784473])
> ```
>
> ## R
>
> ``` downlit
> auto <- read.csv("data/auto.csv")
> y <- auto$mpg
> X <- cbind(1, auto$horsepower)
>
> grad <- function(beta) -2 * t(X) %*% (y - X %*% beta)
>
> beta_hat <- solve(t(X) %*% X, t(X) %*% y)
> grad_hat <- grad(beta_hat)
> grad_zero <- grad(c(0, 0))
>
> list(
>   solution = list(beta = c(beta_hat), gradient = c(grad_hat)),
>   zero_vector = list(beta = c(0, 0), gradient = c(grad_zero))
> )
> #> $solution
> #> $solution$beta
> #> [1] 39.9358610 -0.1578447
> #> 
> #> $solution$gradient
> #> [1] 1.071498e-11 1.673470e-10
> #> 
> #> 
> #> $zero_vector
> #> $zero_vector$beta
> #> [1] 0 0
> #> 
> #> $zero_vector$gradient
> #> [1]   -18381.6 -1737437.6
> ```
>
> A library fit gives the same coefficients:
>
> ``` downlit
> coef(lm(mpg ~ horsepower, data = auto))
> #> (Intercept)  horsepower 
> #>  39.9358610  -0.1578447
> ```
>
> The solution is an intercept of 39.9 miles per gallon and a slope of -0.158 miles per gallon per unit of horsepower. The largest entry of the gradient there is 1.7e-10, zero up to rounding error, against 1,737,438 at the zero vector. So the solution is a stationary point ([Definition 3](#def-stationary-point)), and the zero vector is not. The library fits above agree with the solution of that equation.

> **NOTE:**
>
> **Theorem 4 (Taylor’s theorem with a second-order remainder)** Let \\a \< b\\, and let \\g\\ be a real-valued function on \\\[a, b\]\\ whose derivative \\g'\\ is [continuous](calculus-integration.llms.md#def-continuous) on \\\[a, b\]\\ and whose [second derivative](calculus-derivatives.llms.md#def-second-derivative) \\g''\\ exists at every point of \\(a, b)\\. Then there is a \\\tau\in (a, b)\\ with [\[5\]](#ref-wikipedia_taylors_theorem)
>
> \\ g(b) = g(a) + g'(a)\\(b - a) + \frac{1}{2}\\g''(\tau)\\(b - a)^2. \\

This theorem is the case \\n = 2\\ of [\[6\]](#ref-rudin1976principles), Theorem 5.15; its proof uses the mean value theorem, which these notes do not develop.

> **NOTE:**
>
> **Example 8 (The remainder point for \\e^x\\)** Take \\g(x) = e^x\\ on \\\[0, 1\]\\, so
>
> \\ \begin{aligned} g' &= g'' \\ &= g. \end{aligned} \\
>
> [Theorem 4](#thm-taylor-1d) says \\e = 1 + 1 + \tfrac{1}{2}\\e^{\tau}\\ for some \\\tau\in (0, 1)\\. Solving,
>
> \\ \begin{aligned} e^{\tau} &= 2 (e - 2) \\ &\approx 2 \times 0.71828 \\ &= 1.43656, \end{aligned} \\
>
> so \\\tau= \log 1.43656 \approx 0.362\\ ([natural logarithm](algebra-exponentials.llms.md#def-natural-log)), which is in \\(0, 1)\\.

> **NOTE:**
>
> **Theorem 5 (Second-order Taylor theorem in several variables)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first and second partial derivatives that are continuous on \\\mathbb{R}^p\\ ([continuity](vector-calculus.llms.md#def-continuous-on)), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} \in \mathbb{R}^p\\. Then there is a \\\tau\in (0, 1)\\ with [\[5\]](#ref-wikipedia_taylors_theorem)
>
> \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}) = f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + {\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}})\right)\mathclose{}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} + \frac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + \tau\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}. \\

> **NOTE:**
>
> *Proof*. Let \\g(t) \stackrel{\text{def}}{=}f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}})\\ for \\t \in \mathbb{R}\\, the values of \\f\\ along the line through \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\\ in the direction \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\\. The [inner function](functions.llms.md#def-inner-function) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}(t) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\\ has entries \\y_j = z_j + t h_j\\, so \\\frac{\partial}{\partial t} y_j = h_j\\, and its derivative ([vector-valued derivative](vector-calculus.llms.md#def-vector-valued-derivative)) is the \\1 \times p\\ matrix \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\. By the vector chain rule ([vector chain rule](vector-calculus.llms.md#thm-chain-vec), with its input \\t\\ of length \\1\\, its inner function \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}(t) = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\\, and its outer function \\f\\),
>
> \\ \begin{aligned} g'(t) &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}) && \text{(vector chain rule)} \\ &= \sum\_{j=1}^ph_j\\\frac{\partial}{\partial x_j} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}). && \text{(matrix product)} \end{aligned} \\
>
> The second step writes out the [matrix product](linear-algebra-matrices.llms.md#def-matrix-mult). \\g'\\ is continuous ([continuity](vector-calculus.llms.md#def-continuous-several)): \\t \mapsto \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\\ is continuous, since \\\mathopen{}\left\lVert(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}) - (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}})\right\rVert\mathclose{} = \mathopen{}\left\|s - t\right\|\mathclose{}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{}\\, each \\\frac{\partial}{\partial x_j} f\\ is continuous by assumption, and compositions, sums and constant multiples of continuous functions are continuous. Each \\\frac{\partial}{\partial x_j} f\\ has continuous partial derivatives, the second partial derivatives of \\f\\, so the same chain-rule computation applies to it: \\\frac{\partial}{\partial t} \mathopen{}\left\[\frac{\partial}{\partial x_j} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}})\right\]\mathclose{} = \sum\_{i=1}^ph_i\\\frac{\partial}{\partial x_i} \mathopen{}\left(\frac{\partial}{\partial x_j} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}})\right)\mathclose{}\\. So
>
> \\ \begin{aligned} g''(t) &= \sum\_{j=1}^ph_j \sum\_{i=1}^ph_i\\\frac{\partial}{\partial x_i} \mathopen{}\left(\frac{\partial}{\partial x_j} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}})\right)\mathclose{} && \text{(differentiate each term of } g'(t) \text{)} \\ &= \sum\_{i=1}^p\sum\_{j=1}^ph_i\\\mathopen{}\left\[\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}})\right\]\mathclose{}\_{ij}\\h_j && \text{(definition of the Hessian; reorder the finite sums)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}. && \text{(matrix product)} \end{aligned} \\
>
> The last step is again the [matrix product](linear-algebra-matrices.llms.md#def-matrix-mult). Now apply [Theorem 4](#thm-taylor-1d) to \\g\\ on \\\[0, 1\]\\: there is a \\\tau\in (0, 1)\\ with
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}) &= g(1) && \text{(definition of } g \text{)} \\ &= g(0) + g'(0)\\(1 - 0) + \frac{1}{2}\\g''(\tau)\\(1 - 0)^2 && \text{(}\href{#thm-taylor-1d}{\text{Theorem~4}}\text{, with } a = 0, b = 1 \text{)} \\ &= g(0) + g'(0) + \frac{1}{2}\\g''(\tau) && \text{(} 1 - 0 = 1 \text{)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + \frac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + \tau\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} && \text{(substitute } g(0), g'(0), g''(\tau) \text{)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + {\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}})\right)\mathclose{}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} + \frac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + \tau\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}. && \text{(a } 1 \times 1 \text{ matrix equals its transpose)} \end{aligned} \\

> **NOTE:**
>
> **Example 9 (For a quadratic form the expansion is exact)** Let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ with \\\mathbf{S}\\ symmetric and constant. Its gradient is \\2 \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ ([derivative of a quadratic form](vector-calculus.llms.md#cor-quadratic-form-symmetric)) and its Hessian is \\2 \mathbf{S}\\ at every point ([Hessian of a quadratic form](vector-calculus.llms.md#thm-hessian-quadratic)), so whatever \\\tau\\ is, [Theorem 5](#thm-taylor-mv) reads
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}) &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + {(2 \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}})}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} + \frac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} (2 \mathbf{S}) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + 2\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}, \end{aligned} \\
>
> using
>
> \\ \begin{aligned} {(2 \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}})}^{\top} &= 2\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}}^{\top}\\{\mathbf{S}}^{\top} \\ &= 2\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}}^{\top} \mathbf{S}. \end{aligned} \\
>
> Multiplying out directly gives the same:
>
> \\ \begin{aligned} {(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}})}^{\top} \mathbf{S} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}) &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} && \text{(distribute)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} + 2\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}. && \text{(} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} = {({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}})}^{\top} \text{, which equals } {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} \text{)} \end{aligned} \\

> **NOTE:**
>
> **Definition 4 (Strict local minimizer)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\. A point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ is a **strict local minimizer** of \\f\\ if there is a number \\\delta\> 0\\ such that \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) \< f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ with \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{} \< \delta\\.

> **NOTE:**
>
> **Example 10 (Strict and non-strict local minimizers)**  
>
> - \\f(x) = (x - 2)^2\\ has
>
>   \\ \begin{aligned} f(2) &= 0 \\ &\< (x - 2)^2 \\ &= f(x) \end{aligned} \\
>
>   for every \\x \ne 2\\, so \\2\\ is a strict local minimizer (any \\\delta\> 0\\ works).
>
> - A constant function \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = 0\\ has \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) \le f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, so every point is a [local minimizer](algebra-basics.llms.md#def-local-minimizer), but no point is a strict one: \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) \< f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ never holds.

> **NOTE:**
>
> **Lemma 1 (A quadratic form is at least the smallest eigenvalue times the squared length)** Let \\\mathbf{A}\\ be a symmetric \\p \times p\\ matrix, and let \\\lambda\_{\min}\\ be the smallest of its eigenvalues ([eigendecomposition](linear-algebra-special-matrices.llms.md#def-eigendecomposition)). Then \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} \ge \lambda\_{\min}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{}^2\\ for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} \in \mathbb{R}^p\\.

> **NOTE:**
>
> *Proof*. Write \\\mathbf{A} = \mathbf{Q} \mathbf{\Lambda} {\mathbf{Q}}^{\top}\\ with \\\mathbf{Q}\\ orthogonal and \\\mathbf{\Lambda} = \operatorname{diag}(\lambda_1, \ldots, \lambda_p)\\ ([spectral theorem](linear-algebra-special-matrices.llms.md#thm-spectral)), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \stackrel{\text{def}}{=}{\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\\. Then
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{Q} \mathbf{\Lambda} {\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} && \text{(substitute the eigendecomposition)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\top} \mathbf{\Lambda} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} && \text{(} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{Q} = {({\mathbf{Q}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}})}^{\top} \text{, transpose of a product)} \\ &= \sum\_{i=1}^p\lambda_i\\y_i^2 && \text{(} \mathbf{\Lambda} \text{ is diagonal)} \\ &\ge \sum\_{i=1}^p\lambda\_{\min}\\y_i^2 && \text{(} \lambda_i \ge \lambda\_{\min} \text{ and } y_i^2 \ge 0 \text{)} \\ &= \lambda\_{\min}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2 && \text{(the squared length is the sum of squares)} \\ &= \lambda\_{\min}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{}^2. && \text{(orthogonal matrices preserve length)} \end{aligned} \\
>
> The second step is the [transpose of a product](linear-algebra-matrices.llms.md#thm-transpose-product). The last step applies [orthogonal matrices preserve length](linear-algebra-special-matrices.llms.md#thm-orthogonal-norm) to \\{\mathbf{Q}}^{\top}\\, which is orthogonal because
>
> \\ \begin{aligned} {\mathbf{Q}}^{\top} \mathbf{Q} &= \mathbf{Q} {\mathbf{Q}}^{\top} \\ &= \mathbf{I}\_p \end{aligned} \\
>
> ([orthogonal matrix](linear-algebra-special-matrices.llms.md#def-orthogonal-matrix)).

> **NOTE:**
>
> **Example 11 (Checking the bound)** \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ has eigenvalues \\3\\ and \\1\\ ([eigenvalue example](linear-algebra-special-matrices.llms.md#exm-eigenvalue)), so \\\lambda\_{\min} = 1\\. At \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} = {(1, 0)}^{\top}\\, \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} = 2 \ge 1 \cdot 1\\. At \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} = {(1, -1)}^{\top}\\,
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} &= 2 - 1 - 1 + 2 \\ &= 2 \\ &= 1 \cdot 2: \end{aligned} \\
>
> the bound holds with equality, since this \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\\ is an eigenvector for \\\lambda\_{\min}\\.

> **NOTE:**
>
> **Lemma 2 (A quadratic form with small entries is small)** Let \\\mathbf{E}\\ be a \\p \times p\\ matrix whose entries all satisfy \\\mathopen{}\left\|e\_{ij}\right\|\mathclose{} \le m\\. Then \\\mathopen{}\left\|{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{E} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\|\mathclose{} \le p\\m\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{}^2\\ for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} \in \mathbb{R}^p\\.

> **NOTE:**
>
> *Proof*. Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}} \stackrel{\text{def}}{=}{(\mathopen{}\left\|h_1\right\|\mathclose{}, \ldots, \mathopen{}\left\|h_p\right\|\mathclose{})}^{\top}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}} \stackrel{\text{def}}{=}{(1, \ldots, 1)}^{\top}\\, both in \\\mathbb{R}^p\\. Then
>
> \\ \begin{aligned} \mathopen{}\left\|{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{E} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\|\mathclose{} &= \mathopen{}\left\|\sum\_{i=1}^p\sum\_{j=1}^ph_i\\e\_{ij}\\h_j\right\|\mathclose{} && \text{(matrix product)} \\ &\le \sum\_{i=1}^p\sum\_{j=1}^p\mathopen{}\left\|h_i\right\|\mathclose{}\\\mathopen{}\left\|e\_{ij}\right\|\mathclose{}\\\mathopen{}\left\|h_j\right\|\mathclose{} && \text{(triangle inequality for numbers)} \\ &\le m \sum\_{i=1}^p\sum\_{j=1}^p\mathopen{}\left\|h_i\right\|\mathclose{}\\\mathopen{}\left\|h_j\right\|\mathclose{} && \text{(} \mathopen{}\left\|e\_{ij}\right\|\mathclose{} \le m \text{)} \\ &= m\\\mathopen{}\left(\sum\_{i=1}^p\mathopen{}\left\|h_i\right\|\mathclose{}\right)\mathclose{}^2 && \text{(the double sum factors)} \\ &= m\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}})^2 && \text{(dot product)} \\ &\le m\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}}\right\rVert\mathclose{}^2\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\right\rVert\mathclose{}^2 && \text{(Cauchy-Schwarz, squared)} \\ &= m\\p\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{}^2. && \text{(} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{1}}\vphantom{1}}\right\rVert\mathclose{}^2 = p \text{ and } \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}}\right\rVert\mathclose{}^2 = \textstyle\sum_i h_i^2 \text{, which equals } \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{}^2 \text{)} \end{aligned} \\
>
> The steps use the [matrix product](linear-algebra-matrices.llms.md#def-matrix-mult), the [dot product](linear-algebra-vectors.llms.md#def-dot-product) and the [Cauchy-Schwarz inequality](linear-algebra-inner-products.llms.md#thm-cauchy-schwarz).

> **NOTE:**
>
> **Example 12 (Checking the bound)** Let \\\mathbf{E} = \begin{bmatrix} 0.1 & -0.2 \\ -0.2 & 0.1 \end{bmatrix}\\, so \\m = 0.2\\ works, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} = {(1, 1)}^{\top}\\, so \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{}^2 = 2\\. Then
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{E} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} &= 0.1 - 0.2 - 0.2 + 0.1 \\ &= -0.2, \end{aligned} \\
>
> and
>
> \\ \begin{aligned} \mathopen{}\left\|-0.2\right\|\mathclose{} &= 0.2 \\ &\le 2 \cdot 0.2 \cdot 2 \\ &= 0.8. \end{aligned} \\

> **NOTE:**
>
> **Theorem 6 (Second-order sufficient condition)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first and second partial derivatives that are continuous on \\\mathbb{R}^p\\ ([continuity](vector-calculus.llms.md#def-continuous-on)). If \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ is a stationary point of \\f\\ ([Definition 3](#def-stationary-point)) and \\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*)\\ is [positive definite](linear-algebra-special-matrices.llms.md#def-positive-definite), then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ is a strict local minimizer of \\f\\ ([Definition 4](#def-strict-local-minimizer)).

> **NOTE:**
>
> *Proof*. \\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*)\\ is positive definite, and so symmetric, so its smallest eigenvalue \\\lambda\\ is positive ([definiteness and eigenvalues](linear-algebra-special-matrices.llms.md#thm-definite-eigenvalues)). Each of the \\p^2\\ entries of \\\mathbf{H}\_f\\ is continuous at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ ([continuity](vector-calculus.llms.md#def-continuous-several)): for \\\varepsilon= \lambda/ (2p)\\ there is a \\\delta\_{ij} \> 0\\ with \\\mathopen{}\left\|\mathopen{}\left\[\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right\]\mathclose{}\_{ij} - \mathopen{}\left\[\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*)\right\]\mathclose{}\_{ij}\right\|\mathclose{} \< \lambda/ (2p)\\ whenever \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{} \< \delta\_{ij}\\. Let \\\delta\\ be the smallest of these \\p^2\\ numbers.
>
> Now let \\0 \< \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{} \< \delta\\. By [Theorem 5](#thm-taylor-mv) there is a \\\tau\in (0, 1)\\ for which the first step of the next display holds; let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + \tau\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\\ and \\\mathbf{E} \stackrel{\text{def}}{=}\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) - \mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*)\\. Since \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{} = \tau\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{} \< \delta\\, every entry of \\\mathbf{E}\\ has absolute value less than \\\lambda/ (2p)\\, so [Lemma 2](#lem-qf-entry-bound) applies with \\m = \lambda/ (2p)\\:
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}) - f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) &= {\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*)\right)\mathclose{}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} + \frac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} && \text{(}\href{#thm-taylor-mv}{\text{Theorem~5}}\text{)} \\ &= \frac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* \text{ is stationary)} \\ &= \frac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*)\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} + \frac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\mathbf{E}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} && \text{(} \mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = \mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) + \mathbf{E} \text{; distribute)} \\ &\ge \frac{1}{2}\\\lambda\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{}^2 + \frac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\mathbf{E}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} && \text{(}\href{#lem-qf-eigen-bound}{\text{Lemma~1}}\text{)} \\ &\ge \frac{1}{2}\\\lambda\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{}^2 - \frac{1}{2}\\\mathopen{}\left\|{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\mathbf{E}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\|\mathclose{} && \text{(a number is at least minus its absolute value)} \\ &\ge \frac{1}{2}\\\lambda\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{}^2 - \frac{1}{2}\\p\\\frac{\lambda}{2p}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{}^2 && \text{(}\href{#lem-qf-entry-bound}{\text{Lemma~2}}\text{, } m = \lambda/ (2p) \text{)} \\ &= \frac{\lambda}{4}\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}\right\rVert\mathclose{}^2 && \text{(arithmetic)} \\ &\> 0. && \text{(} \lambda\> 0 \text{ and } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\text{)} \end{aligned} \\
>
> So \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) \< f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ whenever \\0 \< \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{} \< \delta\\ (take \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\).

> **NOTE:**
>
> **Example 13 (Classifying stationary points)**  
>
> - \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2 - 2 x_1\\ has the stationary point \\{(1, 0)}^{\top}\\ ([Example 5](#exm-stationary-point)), and its Hessian is
>
>   \\ \begin{aligned} \mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix} \\ &= 2 \mathbf{I}\_2, \end{aligned} \\
>
>   which is positive definite, so \\{(1, 0)}^{\top}\\ is a strict local minimizer.
>
> - \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 - x_2^2\\ has the stationary point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ and Hessian \\\begin{bmatrix} 2 & 0 \\ 0 & -2 \end{bmatrix}\\, which is not positive definite (\\{(0, 1)}^{\top}\\ gives \\-2\\), and indeed \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ is not a local minimizer ([Example 6](#exm-first-order-condition)).

> **NOTE:**
>
> **Example 14 (The condition is sufficient, not necessary)** \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 + x_2^4\\ and \\g(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 - x_2^4\\ both have gradient \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ and the same Hessian there, \\\begin{bmatrix} 2 & 0 \\ 0 & 0 \end{bmatrix}\\, since
>
> \\ \begin{aligned} \frac{\partial}{\partial x_2} \mathopen{}\left(\frac{\partial}{\partial x_2} (\pm x_2^4)\right)\mathclose{} &= \pm 12 x_2^2 \\ &= 0 \end{aligned} \\
>
> at \\x_2 = 0\\. That Hessian is not positive definite (\\{(0, 1)}^{\top}\\ gives \\0\\), so [Theorem 6](#thm-second-order-condition) says nothing about either function. In fact \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ is a strict local minimizer of \\f\\, since \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \> 0 = f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}})\\ for \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, but not a local minimizer of \\g\\, since
>
> \\ \begin{aligned} g(0, t) &= -t^4 \\ &\< 0 \\ &= g(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) \end{aligned} \\
>
> for \\t \ne 0\\.

> **NOTE:**
>
> **Definition 5 (Local maximizer)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\. A point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* \in \mathbb{R}^p\\ is a **local maximizer** of \\f\\ if there is a number \\\delta\> 0\\ such that \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) \ge f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\ with \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{} \< \delta\\.

> **NOTE:**
>
> **Example 15 (A local maximizer)** Let \\f(x) = 1 - x^2\\. For every \\x \in \mathbb{R}\\,
>
> \\ \begin{aligned} f(0) - f(x) &= 1 - (1 - x^2) && \text{(substitute)} \\ &= x^2 && \text{(simplify)} \\ &\ge 0, && \text{(a square)} \end{aligned} \\
>
> so \\f(0) \ge f(x)\\ for all \\x\\, and \\0\\ is a local maximizer of \\f\\ with any \\\delta\> 0\\.

> **NOTE:**
>
> **Definition 6 (Saddle point)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\. A [stationary point](#def-stationary-point) of \\f\\ that is neither a [local minimizer](algebra-basics.llms.md#def-local-minimizer) nor a [local maximizer](#def-local-maximizer) of \\f\\ is a **saddle point** of \\f\\ [\[7\]](#ref-wikipedia_saddle_point).

> **NOTE:**
>
> **Example 16 (A saddle point)** Let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 - x_2^2\\. Its gradient is \\{(2 x_1,\\ -2 x_2)}^{\top}\\, which is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\ only at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\ is a stationary point. For every \\t \ne 0\\,
>
> \\ \begin{aligned} f(t, 0) &= t^2 && \text{(substitute)} \\ &\> 0 && \text{(} t \ne 0 \text{)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}), && \text{(substitute)} \\ f(0, t) &= -t^2 && \text{(substitute)} \\ &\< 0 && \text{(} t \ne 0 \text{)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}). && \text{(substitute)} \end{aligned} \\
>
> So every ball around \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\ contains a point with a larger value of \\f\\ and a point with a smaller one. Hence \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\ is neither a local minimizer nor a local maximizer, and it is a saddle point.

## 3 Convexity in several variables

> **NOTE:**
>
> This section is adapted from the convexity part of Zhou [\[3\]](#ref-zhou2024optim), used under the MIT License (see the license text in [Linear Algebra](linear-algebra-subspaces.llms.md#sec-subspaces)). The source states the first-order test (in one direction) and the second-derivative test for convexity without proof; here both directions of the first-order test are proved, and the second-derivative test is proved from the Taylor theorem of [Section 2](#sec-optimality-vector). The source defines both concave and strictly concave as “\\-f\\ is strictly convex”; here \\f\\ is concave when \\-f\\ is convex. The source states that an intersection of convex sets is convex and that a maximum of convex functions is convex for any finite number of them; here each is stated for two and the general case follows by induction. These parts of the source are not part of this section:
>
> - its catalogs of convex sets and convex functions, including the positive semidefinite matrices and \\-\log \det\\
> - intersections of infinitely many convex sets, and suprema of infinitely many convex functions
> - its examples, exercises and figures, including the multivariate normal maximum likelihood example

> **NOTE:**
>
> **Definition 7 (Convex set)** A set \\K \subseteq \mathbb{R}^p\\ is **convex** if [\[8\]](#ref-wikipedia_convex_set) for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in K\\ and all \\t \in \[0, 1\]\\, the point \\t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is in \\K\\: \\K\\ contains the whole line segment between any two of its points.

> **NOTE:**
>
> **Example 17 (Convex sets)**  
>
> - \\\mathbb{R}^p\\ is convex, and so is any set with at most one point.
>
> - The closed ball ([closed ball](vector-calculus.llms.md#def-closed-ball)) \\B = \mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}: \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \le r\right\\\mathclose{}\\ is convex: for \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in B\\ and \\t \in \[0, 1\]\\,
>
>   \\ \begin{aligned} \mathopen{}\left\lVert t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} &\le \mathopen{}\left\lVert t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} + \mathopen{}\left\lVert(1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} && \text{(triangle inequality)} \\ &= t\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} + (1 - t)\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\right\rVert\mathclose{} && \text{(norm of a multiple; } t, 1 - t \ge 0 \text{)} \\ &\le t\\r + (1 - t)\\r && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in B \text{)} \\ &= r. && \text{(arithmetic)} \end{aligned} \\
>
>   The first step is the [triangle inequality](linear-algebra-inner-products.llms.md#thm-triangle-inequality), and the second uses [the norm of a multiple](linear-algebra-inner-products.llms.md#thm-norm-properties).

> **NOTE:**
>
> **Example 18 (A set that is not convex)** \\K = \mathopen{}\left\\x \in \mathbb{R}: \mathopen{}\left\|x\right\|\mathclose{} \ge 1\right\\\mathclose{}\\ is not convex: \\-1\\ and \\1\\ are in \\K\\, but with \\t = \tfrac{1}{2}\\ the point \\\tfrac{1}{2}(-1) + \tfrac{1}{2}(1) = 0\\ is not.

> **NOTE:**
>
> **Definition 8 (Half-space)** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}} \in \mathbb{R}^p\\ be a nonzero vector and \\c\\ a real number. The set \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p : \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} \ge c\right\\\mathclose{}\\ is a (closed) **half-space**: the points on one side of the boundary \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}: \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} = c\right\\\mathclose{}\\, together with the boundary. In \\\mathbb{R}^2\\, a half-space is called a **half-plane**.

> **NOTE:**
>
> **Example 19 (The right half-plane)** With \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{a}}\vphantom{a}} = {(1, 0)}^{\top}\\ and \\c = 0\\, the half-plane \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^2 : x_1 \ge 0\right\\\mathclose{}\\ is the set of points on or to the right of the \\x_2\\-axis. \\{(1, 5)}^{\top}\\ is in it, since \\1 \ge 0\\; \\{(0, -3)}^{\top}\\ is in it, on the boundary; and \\{(-1, 0)}^{\top}\\ is not, since \\-1 \< 0\\.

> **NOTE:**
>
> **Theorem 7 (An intersection of convex sets is convex)** If \\K_1\\ and \\K_2\\ are convex subsets of \\\mathbb{R}^p\\ ([Definition 7](#def-convex-set)), then \\K_1 \cap K_2\\ is convex.

> **NOTE:**
>
> *Proof*. Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in K_1 \cap K_2\\ and \\t \in \[0, 1\]\\. Then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in K_1\\, so \\t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in K_1\\, since \\K_1\\ is convex; in the same way \\t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in K_2\\. So \\t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in K_1 \cap K_2\\.

> **NOTE:**
>
> **Example 20 (Intersecting a ball with a half-plane)** The closed unit ball ([unit ball](vector-calculus.llms.md#def-unit-ball)) in \\\mathbb{R}^2\\ is convex ([Example 17](#exm-convex-set)), and so is the half-plane ([Definition 8](#def-half-space)) \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}: x_1 \ge 0\right\\\mathclose{}\\: if \\x_1 \ge 0\\ and \\y_1 \ge 0\\, then \\t x_1 + (1 - t) y_1 \ge 0\\ for \\t \in \[0, 1\]\\. By [Theorem 7](#thm-convex-intersection), the closed half-disk \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}: \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right\rVert\mathclose{} \le 1,\\ x_1 \ge 0\right\\\mathclose{}\\ is convex. A union need not be convex: \\\mathopen{}\left\\x \in \mathbb{R}: x \le -1\right\\\mathclose{}\\ and \\\mathopen{}\left\\x \in \mathbb{R}: x \ge 1\right\\\mathclose{}\\ are convex, but their union is the set of [Example 18](#exm-not-convex-set).

> **NOTE:**
>
> **Definition 9 (Strictly convex function)** A function \\f : \mathbb{R}^p \to \mathbb{R}\\ is **strictly convex** if \\f(t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \< t f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + (1 - t) f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\ for all \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ in \\\mathbb{R}^p\\ and all \\t \in (0, 1)\\.

> **NOTE:**
>
> **Definition 10 (Concave function)** A function \\f : \mathbb{R}^p \to \mathbb{R}\\ is **concave** if \\-f\\ is [convex](algebra-sums.llms.md#def-convex-function).

> **NOTE:**
>
> **Definition 11 (Strictly concave function)** A function \\f : \mathbb{R}^p \to \mathbb{R}\\ is **strictly concave** if \\-f\\ is strictly convex ([Definition 9](#def-strictly-convex)).

> **NOTE:**
>
> **Example 21 (Strictly convex, and convex but not strictly)**  
>
> - \\f(x) = x^2\\ is strictly convex:
>
>   \\ \begin{aligned} t x^2 + (1 - t) y^2 - (t x + (1 - t) y)^2 &= t x^2 + (1 - t) y^2 - t^2 x^2 - 2 t (1 - t) x y - (1 - t)^2 y^2 && \text{(expand the square)} \\ &= t (1 - t) x^2 - 2 t (1 - t) x y + t (1 - t) y^2 && \text{(} t - t^2 = t (1 - t) \text{, } (1 - t) - (1 - t)^2 = t (1 - t) \text{)} \\ &= t (1 - t) (x - y)^2, && \text{(factor)} \end{aligned} \\
>
>   which is positive when \\x \ne y\\ and \\t \in (0, 1)\\. At \\t \in \mathopen{}\left\\0, 1\right\\\mathclose{}\\ or \\x = y\\ it is \\0\\, so \\x^2\\ is also convex.
>
> - \\f(x) = 2x + 1\\ is convex but not strictly convex:
>
>   \\ \begin{aligned} f(t x + (1 - t) y) &= 2 t x + 2 (1 - t) y + 1 \\ &= t f(x) + (1 - t) f(y) \end{aligned} \\
>
>   for every \\x, y, t\\, so the inequality holds, but never strictly. It is also concave.

> **NOTE:**
>
> **Theorem 8 (The maximum of convex functions is convex)** If \\f_1\\ and \\f_2\\ are [convex](algebra-sums.llms.md#def-convex-function) functions on \\\mathbb{R}^p\\, then \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \stackrel{\text{def}}{=}\max\mathopen{}\left\\f_1(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}), f_2(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\right\\\mathclose{}\\ is convex.

> **NOTE:**
>
> *Proof*. Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\ and \\t \in \[0, 1\]\\. For \\i = 1, 2\\,
>
> \\ \begin{aligned} f_i(t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) &\le t f_i(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + (1 - t) f_i(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(} f_i \text{ is convex)} \\ &\le t f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + (1 - t) f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}). && \text{(} f_i \le f \text{, and } t, 1 - t \ge 0 \text{)} \end{aligned} \\
>
> Both \\f_1\\ and \\f_2\\ at \\t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ are at most \\t f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + (1 - t) f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\, so their maximum \\f(t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\ is too.

> **NOTE:**
>
> **Example 22 (A maximum is convex; a minimum need not be)**  
>
> - \\f_1(x) = x\\ is convex, by the computation for \\2x + 1\\ in [Example 21](#exm-strictly-convex) with \\2\\ and \\1\\ replaced by \\1\\ and \\0\\, and \\f_2(x) = x^2\\ is convex by the same example, so \\\max\mathopen{}\left\\x, x^2\right\\\mathclose{}\\ is convex by [Theorem 8](#thm-convex-max).
>
> - The minimum of two convex functions need not be convex: \\g(x) = \min\mathopen{}\left\\x^2, (x - 2)^2\right\\\mathclose{}\\ has
>
>   \\ \begin{aligned} g(0) &= g(2) \\ &= 0, \end{aligned} \\
>
>   but at the midpoint
>
>   \\ \begin{aligned} g(1) &= \min\mathopen{}\left\\1, 1\right\\\mathclose{} \\ &= 1 \\ &\> \tfrac{1}{2} g(0) + \tfrac{1}{2} g(2) \\ &= 0. \end{aligned} \\

> **NOTE:**
>
> **Definition 12 (Epigraph)** The **epigraph** [\[9\]](#ref-wikipedia_epigraph_mathematics) of \\f : \mathbb{R}^p \to \mathbb{R}\\ is the set of points on or over its [graph](functions.llms.md#def-graph),
>
> \\ \operatorname{epi} f \stackrel{\text{def}}{=}\mathopen{}\left\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, s) : \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p,\\ s \in \mathbb{R},\\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \le s\right\\\mathclose{}. \\
>
> A pair \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, s)\\ is treated as the \\(p + 1)\\-vector with entries \\x_1, \ldots, x_p, s\\, so \\\operatorname{epi} f \subseteq \mathbb{R}^{p+1}\\, and sums and multiples of pairs are taken entry by entry.

> **NOTE:**
>
> **Example 23 (The epigraph of \\x^2\\)** For \\f(x) = x^2\\, \\\operatorname{epi} f = \mathopen{}\left\\(x, s) : x^2 \le s\right\\\mathclose{}\\, the points \\(x, s)\\ on the parabola \\s = x^2\\ or on the side of it where \\s\\ is larger. \\(1, 2)\\ is in it, since \\1^2 \le 2\\; \\(2, 1)\\ is not, since \\2^2 \> 1\\.

> **NOTE:**
>
> **Theorem 9 (Convexity through the epigraph)** \\f : \mathbb{R}^p \to \mathbb{R}\\ is [convex](algebra-sums.llms.md#def-convex-function) if and only if its epigraph ([Definition 12](#def-epigraph)) is convex ([Definition 7](#def-convex-set)).

> **NOTE:**
>
> *Proof*. **If.** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\ and \\t \in \[0, 1\]\\. The points \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}))\\ and \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}))\\ are in \\\operatorname{epi} f\\, since \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \le f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ and \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \le f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\. Since \\\operatorname{epi} f\\ is convex, it contains
>
> \\ t\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})) + (1 - t)\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})) = \mathopen{}\left(t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}},\\ t f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + (1 - t) f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right)\mathclose{}, \\
>
> and by [Definition 12](#def-epigraph) that membership means \\f(t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \le t f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + (1 - t) f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\.
>
> **Only if.** Let \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, s)\\ and \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, u)\\ be in \\\operatorname{epi} f\\, so \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \le s\\ and \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \le u\\, and let \\t \in \[0, 1\]\\. Then
>
> \\ \begin{aligned} f(t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) &\le t f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + (1 - t) f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(} f \text{ is convex)} \\ &\le t s + (1 - t) u, && \text{(} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \le s \text{, } f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \le u \text{, and } t, 1 - t \ge 0 \text{)} \end{aligned} \\
>
> so \\t\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, s) + (1 - t)\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}, u) = (t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}},\\ t s + (1 - t) u)\\ is in \\\operatorname{epi} f\\.

> **NOTE:**
>
> **Example 24 (Two epigraphs)**  
>
> - The epigraph of \\f(x) = \mathopen{}\left\|x\right\|\mathclose{}\\ is \\\mathopen{}\left\\(x, s) : \mathopen{}\left\|x\right\|\mathclose{} \le s\right\\\mathclose{}\\, a wedge. It is the intersection of the half-planes \\\mathopen{}\left\\(x, s) : s - x \ge 0\right\\\mathclose{}\\ and \\\mathopen{}\left\\(x, s) : s + x \ge 0\right\\\mathclose{}\\. Each half-plane is convex: if \\s_1 - x_1 \ge 0\\ and \\s_2 - x_2 \ge 0\\, then \\(t s_1 + (1 - t) s_2) - (t x_1 + (1 - t) x_2) = t (s_1 - x_1) + (1 - t)(s_2 - x_2) \ge 0\\, and the same with \\+\\ for the other. So the wedge is convex ([Theorem 7](#thm-convex-intersection)), and \\\mathopen{}\left\|x\right\|\mathclose{}\\ is convex by [Theorem 9](#thm-epigraph).
> - The epigraph of \\g(x) = -x^2\\ is not convex: \\(-1, -1)\\ and \\(1, -1)\\ are in it, since \\g(\pm 1) = -1\\, but their midpoint \\(0, -1)\\ is not, since \\g(0) = 0 \> -1\\. So \\-x^2\\ is not convex.

> **NOTE:**
>
> **Definition 13 (Tangent plane)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have a gradient at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ ([gradient](vector-calculus.llms.md#def-vector-derivative)). The **tangent plane** [\[10\]](#ref-wikipedia_tangent_space) to the [graph](functions.llms.md#def-graph) of \\f\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ is the graph of the function
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\mapsto f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + {\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right)\mathclose{}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}), \\
>
> which takes the value \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ and has the same gradient as \\f\\ there.

> **NOTE:**
>
> **Example 25 (A tangent line and a tangent plane)**  
>
> - For \\f(x) = x^2\\ at \\y = 1\\, \\f(1) = 1\\ and \\f'(1) = 2\\, so the tangent line is
>
>   \\ \begin{aligned} s &= 1 + 2\\(x - 1) && \text{(substitute } f(1) \text{ and } f'(1) \text{)} \\ &= 1 + 2x - 2 && \text{(distribute)} \\ &= 2x - 1. && \text{(} 1 - 2 = -1 \text{)} \end{aligned} \\
>
> - For \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= {(1, 1)}^{\top}\\, \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) = 2\\ and the gradient is \\{(2 y_1,\\ 2 y_2)}^{\top} = {(2, 2)}^{\top}\\, so the tangent plane is
>
>   \\ \begin{aligned} s &= 2 + 2\\(x_1 - 1) + 2\\(x_2 - 1) && \text{(substitute } f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \text{ and the gradient)} \\ &= 2 + 2 x_1 - 2 + 2 x_2 - 2 && \text{(distribute)} \\ &= 2 x_1 + 2 x_2 - 2. && \text{(} 2 - 2 - 2 = -2 \text{)} \end{aligned} \\

> **NOTE:**
>
> *Remark 2* (The tangent plane in one variable). For \\p = 1\\ the tangent plane is the [tangent line](calculus-derivatives.llms.md#def-tangent-line) \\s = f(y) + f'(y)\\(x - y)\\, the line through \\(y, f(y))\\ with slope \\f'(y)\\.

> **NOTE:**
>
> **Theorem 10 (First-order characterization of convexity)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first partial derivatives that are continuous on \\\mathbb{R}^p\\ ([continuity](vector-calculus.llms.md#def-continuous-on)). Then \\f\\ is [convex](algebra-sums.llms.md#def-convex-function) if and only if
>
> \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \ge f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + {\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right)\mathclose{}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \qquad \text{for all } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p: \tag{1}\\
>
> every tangent plane ([Definition 13](#def-tangent-plane)) lies on or under the graph. If the inequality is strict whenever \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, then \\f\\ is strictly convex ([Definition 9](#def-strictly-convex)).

> **NOTE:**
>
> *Proof*. **Only if.** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\, let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, and let \\g(t) \stackrel{\text{def}}{=}f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}+ t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}})\\. The inner function \\t \mapsto \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}+ t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}\\ has derivative \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top}\\ ([vector-valued derivative](vector-calculus.llms.md#def-vector-valued-derivative)), so the vector chain rule ([vector chain rule](vector-calculus.llms.md#thm-chain-vec)) gives
>
> \\ \begin{aligned} g'(0) &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(vector chain rule)} \\ &= {\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right)\mathclose{}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}. && \text{(a } 1 \times 1 \text{ matrix equals its transpose)} \end{aligned} \\
>
> For \\t \in (0, 1\]\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}+ t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} = t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, so
>
> \\ \begin{aligned} g(t) - g(0) &= f(t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) - f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(definition of } g \text{)} \\ &\le t f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + (1 - t) f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) - f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(} f \text{ is convex)} \\ &= t\\(f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) - f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})), && \text{(collect terms)} \end{aligned} \\
>
> and dividing by \\t \> 0\\, \\\dfrac{g(t) - g(0)}{t} \le f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) - f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\. As \\t \to 0\\ from the right, the left side tends to \\g'(0)\\ (\\g\\ is differentiable at \\0\\, so the one-sided limit equals the two-sided derivative), and a limit of numbers that are all at most \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) - f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\ is at most \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) - f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\. So \\{\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right)\mathclose{}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \le f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) - f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\, which rearranges to [Equation 1](#eq-supporting-hyperplane).
>
> **If.** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\, \\t \in \[0, 1\]\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} \stackrel{\text{def}}{=}t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \stackrel{\text{def}}{=}\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}})\\. Applying [Equation 1](#eq-supporting-hyperplane) at the point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\\, once toward \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and once toward \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\,
>
> \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \ge f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}), \qquad f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \ge f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}). \\
>
> Multiplying the first by \\t \ge 0\\ and the second by \\1 - t \ge 0\\ and adding,
>
> \\ \begin{aligned} t f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + (1 - t) f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) &\ge t \mathopen{}\left(f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}})\right)\mathclose{} + (1 - t) \mathopen{}\left(f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}})\right)\mathclose{} && \text{(multiply by } t, 1 - t \ge 0 \text{ and add)} \\ &= (t + (1 - t))\\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + t\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + (1 - t)\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) && \text{(distribute } t \text{ and } 1 - t \text{)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + t\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + (1 - t)\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) && \text{(} t + (1 - t) = 1 \text{)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top} \mathopen{}\left(t (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + (1 - t) (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}})\right)\mathclose{} && \text{(factor out } {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top} \text{; matrix products distribute)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}) + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top} \mathopen{}\left(t \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ (1 - t) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\right)\mathclose{} && \text{(collect terms)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}). && \text{(definition of } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} \text{)} \end{aligned} \\
>
> That inequality is the defining inequality of a [convex function](algebra-sums.llms.md#def-convex-function). If [Equation 1](#eq-supporting-hyperplane) is strict for distinct points, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ and \\t \in (0, 1)\\, then:
>
> - \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\\ differs from both \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, since \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} = (1 - t)(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} = t (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\;
> - so both inequalities at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}}\\ are strict;
> - both multipliers \\t\\ and \\1 - t\\ are positive, so the first step of the display is strict, and \\f\\ is strictly convex.

> **NOTE:**
>
> **Example 26 (Tangent lines under a parabola)** For \\f(x) = x^2\\, the right side of [Equation 1](#eq-supporting-hyperplane) is \\y^2 + 2y (x - y) = 2xy - y^2\\, and
>
> \\ \begin{aligned} f(x) - (2xy - y^2) &= x^2 - 2xy + y^2 \\ &= (x - y)^2 \\ &\ge 0, \end{aligned} \\
>
> with equality only at \\x = y\\, confirming that \\x^2\\ is strictly convex. For \\g(x) = -x^2\\ the inequality fails: at \\y = 0\\ the tangent line is \\s = 0\\, and \\g(1) = -1 \< 0\\.

> **NOTE:**
>
> **Theorem 11 (Second-derivative test for convexity)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first and second partial derivatives that are continuous on \\\mathbb{R}^p\\ ([continuity](vector-calculus.llms.md#def-continuous-on)).
>
> 1.  If \\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ is [positive semidefinite](linear-algebra-special-matrices.llms.md#def-positive-semidefinite) for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, then \\f\\ is [convex](algebra-sums.llms.md#def-convex-function).
> 2.  If \\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ is [positive definite](linear-algebra-special-matrices.llms.md#def-positive-definite) for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, then \\f\\ is strictly convex ([Definition 9](#def-strictly-convex)).

> **NOTE:**
>
> *Proof*. Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\. By [Theorem 5](#thm-taylor-mv) with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{z}}\vphantom{z}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, there is a \\\tau\in (0, 1)\\ such that, with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}+ \tau(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\,
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + {\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right)\mathclose{}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + \frac{1}{2}\\{(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})}^{\top}\\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}})\\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) && \text{(}\href{#thm-taylor-mv}{\text{Theorem~5}}\text{)} \\ &\ge f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}) + {\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\right)\mathclose{}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}). && \text{(} \mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{w}}\vphantom{w}}) \text{ is positive semidefinite)} \end{aligned} \\
>
> This inequality is [Equation 1](#eq-supporting-hyperplane), so \\f\\ is convex by [Theorem 10](#thm-convex-first-order). Under the hypothesis of part 2 and with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\\, the quadratic-form term is positive, so the inequality is strict, and \\f\\ is strictly convex by the last sentence of [Theorem 10](#thm-convex-first-order).

> **NOTE:**
>
> **Example 27 (Using the Hessian to show convexity)**  
>
> - For a symmetric positive semidefinite \\\mathbf{A}\\, \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ has Hessian \\2 \mathbf{A}\\ ([Hessian of a quadratic form](vector-calculus.llms.md#thm-hessian-quadratic)), which is positive semidefinite because \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} (2 \mathbf{A}) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} = 2\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top} \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} \ge 0\\; so \\f\\ is convex.
>
> - \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2 - 2 x_1\\ has Hessian \\2 \mathbf{I}\_2\\ ([Example 13](#exm-second-order-condition)), which is positive definite, so \\f\\ is strictly convex.
>
> - \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = e^{2x_1 + x_2} - x_1\\ has Hessian \\e^{u} \begin{bmatrix} 4 & 2 \\ 2 & 1 \end{bmatrix}\\ with \\u = 2x_1 + x_2\\ ([Example](vector-calculus.llms.md#exm-hessian)), and
>
>   \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}}}^{\top}\\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} &= e^{u} (4 h_1^2 + 4 h_1 h_2 + h_2^2) \\ &= e^{u} (2 h_1 + h_2)^2 \\ &\ge 0, \end{aligned} \\
>
>   so \\f\\ is convex. The Hessian is not positive definite (\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{h}}\vphantom{h}} = {(1, -2)}^{\top}\\ gives \\0\\), so part 2 does not apply, and in fact \\f\\ is not strictly convex: along \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= t\\{(1, -2)}^{\top}\\,
>
>   \\ \begin{aligned} u &= 2t - 2t \\ &= 0 \end{aligned} \\
>
>   and \\f = 1 - t\\ is linear in \\t\\, so the convexity inequality holds with equality there.

> **NOTE:**
>
> **Example 28 (Strictly convex with a singular Hessian)** Part 2 is sufficient but not necessary. \\f(x) = x^4\\ has
>
> \\ \begin{aligned} f''(0) &= 12 \cdot 0^2 \\ &= 0, \end{aligned} \\
>
> so \\\mathbf{H}\_f(0) = \[0\]\\ is [singular](linear-algebra-special-matrices.llms.md#def-invertible-matrix) and not positive definite. Yet \\f\\ is strictly convex, by the strict form of [Equation 1](#eq-supporting-hyperplane): for \\x \ne y\\,
>
> \\ \begin{aligned} x^4 - y^4 - 4 y^3 (x - y) &= (x - y)(x^3 + x^2 y + x y^2 + y^3) - 4 y^3 (x - y) && \text{(factor } x^4 - y^4 \text{)} \\ &= (x - y)(x^3 + x^2 y + x y^2 - 3 y^3) && \text{(collect the } y^3 \text{ terms)} \\ &= (x - y)^2 (x^2 + 2 x y + 3 y^2) && \text{(} (x - y)(x^2 + 2 x y + 3 y^2) = x^3 + x^2 y + x y^2 - 3 y^3 \text{)} \\ &= (x - y)^2 \mathopen{}\left((x + y)^2 + 2 y^2\right)\mathclose{}, && \text{(complete the square)} \end{aligned} \\
>
> which is positive: \\(x - y)^2 \> 0\\, and \\(x + y)^2 + 2 y^2 = 0\\ would need \\y = 0\\ and then
>
> \\ \begin{aligned} x &= 0 \\ &= y. \end{aligned} \\

> **NOTE:**
>
> **Corollary 1 (Stationary points of a convex function are global minimizers)** If \\f\\ is as in [Theorem 10](#thm-convex-first-order) and convex, then every stationary point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ of \\f\\ ([Definition 3](#def-stationary-point)) is a [global minimizer](algebra-basics.llms.md#def-global-minimizer).

> **NOTE:**
>
> *Proof*. For every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\,
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &\ge f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) + {\mathopen{}\left(\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*)\right)\mathclose{}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) && \text{(}\href{#eq-supporting-hyperplane}{\text{Equation~1}}\text{ with } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* \text{)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}}^{\top} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* \text{ is stationary)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*). && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{v}}\vphantom{v}} = 0 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 29 (A convex function, and a non-convex one)**  
>
> - \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2 - 2 x_1\\ is convex by [Theorem 11](#thm-convex-hessian), since its Hessian is \\2 \mathbf{I}\_2\\ ([Example 13](#exm-second-order-condition)), so its stationary point \\{(1, 0)}^{\top}\\ ([Example 5](#exm-stationary-point)) is a global minimizer, as completing the square showed in [Example 6](#exm-first-order-condition).
> - Without convexity, a stationary point need not be a minimizer at all: \\x_1^2 - x_2^2\\ has the stationary point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, which is not a minimizer ([Example 6](#exm-first-order-condition)).
> - The corollary says nothing about whether a minimizer exists: \\e^{2x_1 + x_2} - x_1\\ is convex ([Example 27](#exm-convex-hessian)) but has no stationary point, and so no local minimizer ([Example 6](#exm-first-order-condition)).

## 4 Minimizing a quadratic under linear constraints

> **NOTE:**
>
> This section is adapted from the Lagrange-multiplier part of Zhou [\[3\]](#ref-zhou2024optim), used under the MIT License (see the license text in [Linear Algebra](linear-algebra-subspaces.llms.md#sec-subspaces)). The source solves the stationarity equations of the Lagrangian and reports the solution; here the solution is also proved to be the unique minimizer, directly from the positive definiteness of the matrices involved. The source assumes only that \\\mathbf{S}\\ is positive definite; the added hypothesis that the columns of \\\mathbf{A}\\ are linearly independent makes \\{\mathbf{A}}^{\top} \mathbf{S}^{-1} \mathbf{A}\\ invertible. The source’s example with general coefficients \\a_1, a_2, b\\ is specialized here to \\3, 4, 5\\. These parts of the source are not part of this section:
>
> - the Lagrange multiplier method for constraints that are not linear, or objectives that are not quadratic, including its multinomial maximum likelihood example
> - the eigenvalues of the block matrix of the stationarity equations, and the convexity of the Lagrangian in \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and its concavity in the multipliers
> - its homework examples

> **NOTE:**
>
> **Definition 14 (Feasible set)** In a problem that looks for a best point among some allowed points of \\\mathbb{R}^p\\, the set \\F \subseteq \mathbb{R}^p\\ of allowed points is the **feasible set**, [\[11\]](#ref-wikipedia_feasible_region) and its points are feasible.

> **NOTE:**
>
> **Definition 15 (Constraints)** When the feasible set \\F\\ ([Definition 14](#def-feasible-set)) is the set of points that satisfy some equations or inequalities, those equations or inequalities are the **constraints**.

> **NOTE:**
>
> **Example 30 (A line as a feasible set)** With the single constraint \\3 x_1 + 4 x_2 = 5\\, the feasible set is the line \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^2 : 3 x_1 + 4 x_2 = 5\right\\\mathclose{}\\. \\{(1, 0.5)}^{\top}\\ is feasible, since
>
> \\ \begin{aligned} 3 \cdot 1 + 4 \cdot 0.5 &= 3 + 2 \\ &= 5; \end{aligned} \\
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ is not feasible, since \\3 \cdot 0 + 4 \cdot 0 = 0 \ne 5\\.

> **NOTE:**
>
> **Definition 16 (Objective function, objective)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ and let \\F \subseteq \mathbb{R}^p\\ be a feasible set ([Definition 14](#def-feasible-set)). In the problem of minimizing \\f\\ over \\F\\, \\f\\ is the **objective function** (or **objective**).

> **NOTE:**
>
> **Definition 17 (Minimizer over a feasible set)** With \\f\\ and \\F\\ as in [Definition 16](#def-objective-function), a **minimizer of \\f\\ over \\F\\** is a feasible \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ with \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) \le f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ for every feasible \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\: a [global minimizer](algebra-basics.llms.md#def-global-minimizer) of \\f\\ with its domain restricted to \\F\\.

> **NOTE:**
>
> **Definition 18 (Minimization problem)** With \\f\\ and \\F\\ as in [Definition 16](#def-objective-function), the **minimization problem** [\[12\]](#ref-wikipedia_mathematical_optimization) is to find a minimizer of \\f\\ over \\F\\ ([Definition 17](#def-minimizer-over-feasible-set)). When \\F\\ is given by constraints ([Definition 15](#def-constraints)), the problem is to minimize \\f\\ subject to them.

> **NOTE:**
>
> **Example 31 (Minimizing over a line)** In the problem of minimizing \\x_1^2 + x_2^2\\ subject to \\3 x_1 + 4 x_2 = 5\\, the objective function is \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2\\, and the feasible set is the line of [Example 30](#exm-feasible-set). The feasible point \\{(1, 0.5)}^{\top}\\ has
>
> \\ \begin{aligned} f(1, 0.5) &= 1 + 0.25 \\ &= 1.25. \end{aligned} \\
>
> \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ minimizes \\f\\ over all of \\\mathbb{R}^2\\, with \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}) = 0\\, but it is not a minimizer over the feasible set, because it is not feasible.

> **NOTE:**
>
> **Definition 19 (Optimization algorithm)** Let:
>
> - \\f : \mathbb{R}^p \to \mathbb{R}\\: an [objective function](#def-objective-function);
> - \\F \subseteq \mathbb{R}^p\\: a [feasible set](#def-feasible-set).
>
> An **optimization algorithm** [\[12\]](#ref-wikipedia_mathematical_optimization) is a step-by-step procedure that [maps](functions.llms.md#def-function) the pair \\(f, F)\\ to a feasible point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\dagger\\:
>
> \\ (f, F) \mapsto \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\dagger \in F. \tag{2}\\
>
> In words: given \\(f, F)\\, the procedure returns a feasible point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\dagger\\ intended to make \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\dagger)\\ small.

> **NOTE:**
>
> **Example 32 (Exhaustive search over a finite feasible set)** Let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2\\, with the [feasible set](#def-feasible-set) the three points \\\mathopen{}\left\\{(1, 0.5)}^{\top}, {(3, -1)}^{\top}, {(-1, 2)}^{\top}\right\\\mathclose{}\\ of the line of [Example 30](#exm-feasible-set). The procedure “evaluate \\f\\ at every feasible point; return the point with the smallest [value](functions.llms.md#def-value)” is an [optimization algorithm](#def-optimization-algorithm). Computing \\f\\ at each point gives
>
> \\ \begin{aligned} f(1, 0.5) &= 1 + 0.25 = 1.25, \\ f(3, -1) &= 9 + 1 = 10, \\ f(-1, 2) &= 1 + 4 = 5, \end{aligned} \\
>
> so it returns \\{(1, 0.5)}^{\top}\\, a [minimizer of \\f\\ over this feasible set](#def-minimizer-over-feasible-set).

Here the objective ([Definition 16](#def-objective-function)) is a quadratic \\\tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ with \\\mathbf{S}\\ positive definite, and the constraints ([Definition 15](#def-constraints)) are \\m\\ linear equations \\{\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, where \\\mathbf{A}\\ is a \\p \times m\\ matrix and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\. The only stationary point of the objective alone ([Definition 3](#def-stationary-point)) is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\ (its gradient is \\\mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, and \\\mathbf{S}\\ is invertible), which may not satisfy the constraints. A Lagrange multiplier adds one unknown per constraint, and the minimizer over the feasible set ([Definition 14](#def-feasible-set)) is then found among the stationary points of a new function of the extended set of unknowns.

> **NOTE:**
>
> **Definition 20 (Lagrangian)** For the problem of minimizing \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ over \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\ subject to \\{\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, with \\\mathbf{A}\\ a \\p \times m\\ matrix and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\, the **Lagrangian** [\[13\]](#ref-wikipedia_lagrange_multiplier) is the function of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}\in \mathbb{R}^m\\
>
> \\ L(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}) \stackrel{\text{def}}{=}f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}}^{\top} \mathopen{}\left({\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\right)\mathclose{}. \\

> **NOTE:**
>
> **Definition 21 (Lagrange multipliers)** In the Lagrangian \\L(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}})\\ ([Definition 20](#def-lagrangian)), the entries of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}\\ are the **Lagrange multipliers** [\[13\]](#ref-wikipedia_lagrange_multiplier), one per constraint.

> **NOTE:**
>
> **Example 33 (The gradients of the Lagrangian of a quadratic)** Let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ with \\\mathbf{S}\\ symmetric and constant. By the [transpose of a product](linear-algebra-matrices.llms.md#thm-transpose-product), \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}}^{\top} {\mathbf{A}}^{\top} = {(\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}})}^{\top}\\, so
>
> \\ \begin{aligned} L(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}) &= \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}}^{\top} {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(distribute)} \\ &= \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + {(\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}})}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}, && \text{(transpose of a product)} \end{aligned} \\
>
> and, since \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}}^{\top} \mathopen{}\left({\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\right)\mathclose{}\\ is \\1 \times 1\\ and so equals its transpose,
>
> \\ L(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}) = \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} + {\mathopen{}\left({\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\right)\mathclose{}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}. \\
>
> The partial derivatives of a sum are the sums of the partial derivatives, entry by entry. Using the first of these forms, [derivative of a quadratic form](vector-calculus.llms.md#cor-quadratic-form-symmetric) for the first term, [derivative of a linear combination](vector-calculus.llms.md#cor-deriv-lincom-tp) for the second (\\\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}\\ is constant in \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\), and [constant with respect to a vector](vector-calculus.llms.md#def-constant-wrt-vector) for the third,
>
> \\ \begin{aligned} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} L(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}) &= \tfrac{1}{2}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} \mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right)\mathclose{} + \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} \mathopen{}\left({(\mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}})}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right)\mathclose{} - \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} \mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\right)\mathclose{} && \text{(sum and constant multiple)} \\ &= \tfrac{1}{2} \mathopen{}\left(2 \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\right)\mathclose{} + \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1} && \text{(the three derivatives)} \\ &= \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}. && \text{(simplify)} \end{aligned} \\
>
> Using the second form, in which \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ and \\{\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ are constant in \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}\\, and [derivative of a linear combination](vector-calculus.llms.md#cor-deriv-lincom-tp) again,
>
> \\ \begin{aligned} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}} L(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}) &= \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}} \mathopen{}\left({\mathopen{}\left({\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\right)\mathclose{}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}\right)\mathclose{} && \text{(sum)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{m \times 1} + \mathopen{}\left({\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\right)\mathclose{} && \text{(the two derivatives)} \\ &= {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}. && \text{(simplify)} \end{aligned} \\
>
> So \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}})\\ makes the gradients equal \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{m \times 1}\\ exactly when
>
> \\ \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1} \quad \text{and} \quad {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}, \qquad\text{that is,}\qquad \underbrace{\begin{bmatrix} \mathbf{S} & \mathbf{A} \\ {\mathbf{A}}^{\top} & \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{m \times m} \end{bmatrix}}\_{(p + m) \times (p + m)} \underbrace{\begin{bmatrix} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}\end{bmatrix}}\_{(p + m) \times 1} = \underbrace{\begin{bmatrix} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1} \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \end{bmatrix}}\_{(p + m) \times 1}, \tag{3}\\
>
> the second equation being the constraint itself.

> **NOTE:**
>
> **Theorem 12 (Minimizing a positive definite quadratic under linear constraints)** Let \\\mathbf{S}\\ be a \\p \times p\\ [positive definite](linear-algebra-special-matrices.llms.md#def-positive-definite) matrix, \\\mathbf{A}\\ a \\p \times m\\ matrix with [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent) columns, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\. Then the \\m \times m\\ matrix \\\mathbf{M} \stackrel{\text{def}}{=}{\mathbf{A}}^{\top} \mathbf{S}^{-1} \mathbf{A}\\ is invertible, and \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ has exactly one minimizer over the \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\ with \\{\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, namely
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* = \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}. \\
>
> With \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}^\* \stackrel{\text{def}}{=}-\mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, the pair \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}^\*)\\ solves [Equation 3](#eq-kkt), and the minimum value is \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) = \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}^{\top} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\.

> **NOTE:**
>
> *Proof*. The steps marked “transpose of a product” use the [transpose of a product](linear-algebra-matrices.llms.md#thm-transpose-product), and \\\mathbf{S}\\ is symmetric because it is [positive definite](linear-algebra-special-matrices.llms.md#def-positive-definite).
>
> **\\\mathbf{M}\\ is invertible.** \\\mathbf{S}^{-1}\\ exists and is positive definite ([positive definite inverse](linear-algebra-special-matrices.llms.md#thm-pd-inverse)), so \\\mathbf{M} = {\mathbf{A}}^{\top} \mathbf{S}^{-1} \mathbf{A}\\ is positive definite ([operations that preserve definiteness](linear-algebra-diagonalization.llms.md#thm-pd-operations), part 1), and so invertible (positive definite inverse again). \\\mathbf{S}^{-1}\\ and \\\mathbf{M}^{-1}\\ are symmetric ([inverse of a symmetric matrix](linear-algebra-special-matrices.llms.md#cor-inverse-symmetric)), because \\\mathbf{S}\\ and \\\mathbf{M}\\ are.
>
> **\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ satisfies the constraint, and the pair solves [Equation 3](#eq-kkt).**
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* &= {\mathbf{A}}^{\top} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(substitute } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* \text{)} \\ &= \mathbf{M} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(definition of } \mathbf{M} \text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}, && \text{(} \mathbf{M} \mathbf{M}^{-1} = \mathbf{I}\_m \text{)} \\ \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}^\* &= \mathbf{S} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(substitute } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* \text{ and } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}^\* \text{)} \\ &= \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(} \mathbf{S} \mathbf{S}^{-1} = \mathbf{I}\_p \text{)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}. && \text{(subtract)} \end{aligned} \\
>
> **\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ is the unique minimizer.** Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ satisfy \\{\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\, so
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} &= {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{m \times 1} \end{aligned} \\
>
> (matrix products distribute; both points satisfy the constraint). First, the cross term vanishes:
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{S} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(substitute } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* \text{)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(} \mathbf{S} \mathbf{S}^{-1} = \mathbf{I}\_p \text{)} \\ &= {({\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}})}^{\top} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(transpose of a product; } {({\mathbf{A}}^{\top})}^{\top} = \mathbf{A} \text{)} \\ &= {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{m \times 1}}^{\top} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(} {\mathbf{A}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{m \times 1} \text{)} \\ &= 0. && \text{(a product with a zero factor is zero)} \end{aligned} \\
>
> Then
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= \tfrac{1}{2}\\{(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}})}^{\top} \mathbf{S} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}) && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} \text{)} \\ &= \tfrac{1}{2} \mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*{}}^{\top} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top}\right)\mathclose{} \mathbf{S} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}) && \text{(the transpose of a sum is the sum of the transposes)} \\ &= \tfrac{1}{2} \mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*{}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*{}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}\right)\mathclose{} && \text{(distribute)} \\ &= \tfrac{1}{2} \mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*{}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} {\mathbf{S}}^{\top} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}\right)\mathclose{} && \text{(} 1 \times 1 \text{: } {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*{}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} = {({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*{}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}})}^{\top} \text{; transpose of a product)} \\ &= \tfrac{1}{2} \mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*{}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + 2\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}\right)\mathclose{} && \text{(} {\mathbf{S}}^{\top} = \mathbf{S} \text{; combine)} \\ &= \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*{}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} && \text{(distribute } \tfrac{1}{2} \text{)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) + \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} && \text{(the cross term is } 0 \text{)} \\ &\ge f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*), && \text{(} \mathbf{S} \text{ is positive definite)} \end{aligned} \\
>
> with equality only when \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\, that is, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\.
>
> **The minimum value.**
>
> \\ \begin{aligned} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) &= \tfrac{1}{2}\\{(\mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}})}^{\top} \mathbf{S} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(substitute } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* \text{)} \\ &= \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}^{\top}\\{(\mathbf{M}^{-1})}^{\top}\\{\mathbf{A}}^{\top}\\{(\mathbf{S}^{-1})}^{\top}\\\mathbf{S} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(transpose of a product, applied repeatedly)} \\ &= \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}^{\top} \mathbf{M}^{-1} {\mathbf{A}}^{\top} \mathbf{S}^{-1} \mathbf{S} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(} \mathbf{S}^{-1} \text{ and } \mathbf{M}^{-1} \text{ are symmetric)} \\ &= \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}^{\top} \mathbf{M}^{-1} {\mathbf{A}}^{\top} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(} \mathbf{S}^{-1} \mathbf{S} = \mathbf{I}\_p \text{)} \\ &= \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}^{\top} \mathbf{M}^{-1} \mathbf{M} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(definition of } \mathbf{M} \text{)} \\ &= \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}^{\top} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}. && \text{(} \mathbf{M}^{-1} \mathbf{M} = \mathbf{I}\_m \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 34 (The closest point on a line to the origin)** Minimize \\x_1^2 + x_2^2\\ subject to \\3 x_1 + 4 x_2 = 5\\. In the form of [Theorem 12](#thm-qp-equality), \\x_1^2 + x_2^2 = \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} (2 \mathbf{I}\_2) \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, so \\\mathbf{S} = 2 \mathbf{I}\_2\\, \\\mathbf{A} = {(3, 4)}^{\top}\\ (\\p = 2\\, \\m = 1\\) and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \[5\]\\. The hypotheses hold: \\2 \mathbf{I}\_2\\ is positive definite, and the single column \\{(3, 4)}^{\top}\\ is nonzero, so it is linearly independent. Also \\\mathbf{S}^{-1} = \tfrac{1}{2} \mathbf{I}\_2\\. Then, from the formulas of [Theorem 12](#thm-qp-equality),
>
> \\ \begin{aligned} \mathbf{M} &= {\mathbf{A}}^{\top}\\\tfrac{1}{2} \mathbf{I}\_2\\\mathbf{A} \\ &= \tfrac{1}{2}\\(3^2 + 4^2) \\ &= \tfrac{25}{2}, \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* &= \tfrac{1}{2} \mathbf{I}\_2 \begin{bmatrix} 3 \\ 4 \end{bmatrix} \mathopen{}\left(\tfrac{2}{25}\right)\mathclose{} (5) \\ &= \tfrac{5}{25} \begin{bmatrix} 3 \\ 4 \end{bmatrix} \\ &= \begin{bmatrix} 0.6 \\ 0.8 \end{bmatrix}, \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}^\* &= -\mathopen{}\left(\tfrac{2}{25}\right)\mathclose{} (5) \\ &= -0.4, \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) &= \tfrac{1}{2} (5) \mathopen{}\left(\tfrac{2}{25}\right)\mathclose{} (5) \\ &= 1. \end{aligned} \\
>
> Checks:
>
> - the constraint:
>
>   \\ \begin{aligned} 3 (0.6) + 4 (0.8) &= 1.8 + 3.2 \\ &= 5; \end{aligned} \\
>
> - the first block of [Equation 3](#eq-kkt):
>
>   \\ \begin{aligned} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* + \mathbf{A} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}^\* &= {(1.2, 1.6)}^{\top} + {(3, 4)}^{\top} (-0.4) \\ &= {(1.2, 1.6)}^{\top} - {(1.2, 1.6)}^{\top} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}; \end{aligned} \\
>
> - the value:
>
>   \\ \begin{aligned} 0.6^2 + 0.8^2 &= 0.36 + 0.64 \\ &= 1. \end{aligned} \\
>
> Geometrically, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ is the point of the line nearest the origin, at distance \\1\\.

> **NOTE:**
>
> **Example 35 (The hypotheses are needed)**  
>
> - If \\\mathbf{S}\\ is not positive definite there may be no minimizer: with \\\mathbf{S} = \begin{bmatrix} 1 & 0 \\ 0 & -1 \end{bmatrix}\\ and the constraint \\x_1 = 1\\ (\\\mathbf{A} = {(1, 0)}^{\top}\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = \[1\]\\), \\f(1, x_2) = \tfrac{1}{2} (1 - x_2^2)\\ decreases without bound as \\x_2\\ grows.
>
> - If the columns of \\\mathbf{A}\\ are dependent, \\\mathbf{M}\\ is not invertible: with \\\mathbf{S} = \mathbf{I}\_2\\ and \\\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\,
>
>   \\ \begin{aligned} \mathbf{M} &= {\mathbf{A}}^{\top} \mathbf{A} \\ &= \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}, \end{aligned} \\
>
>   whose columns are equal. So \\\mathbf{M} {(1, -1)}^{\top} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\, and \\\mathbf{M}\\ is not invertible ([a square matrix is invertible exactly when its null space is zero](linear-algebra-diagonalization.llms.md#thm-invertible-rank)). The two constraints both read \\x_1 + x_2 = b_i\\, so they have no solution at all when \\b_1 \ne b_2\\. When \\b_1 = b_2\\ a unique minimizer still exists,
>
>   \\ \begin{aligned} x_1 &= x_2 \\ &= b_1 / 2, \end{aligned} \\
>
>   but the formula of [Theorem 12](#thm-qp-equality) cannot produce it.

> **NOTE:**
>
> **Definition 22 (Sensitivity)** Suppose a minimization problem ([Definition 18](#def-minimization-problem)) depends on a vector \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \in \mathbb{R}^m\\, and let \\f^\*(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}})\\ be its minimum value, as a function of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\. When the gradient \\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}} f^\*(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}})\\ exists ([gradient](vector-calculus.llms.md#def-vector-derivative)), it is the **sensitivity** of the minimum value to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\: by [partial derivative](vector-calculus.llms.md#def-partial-derivative), its entry \\i\\ is the limit, as a change in \\b_i\\ alone shrinks to \\0\\, of the resulting change in the minimum value divided by the change in \\b_i\\.

> **NOTE:**
>
> **Example 36 (The sensitivity of a one-point problem)** Minimize \\x^2\\ subject to \\x = b\\, for a number \\b\\. The feasible set ([Definition 14](#def-feasible-set)) is \\\mathopen{}\left\\b\right\\\mathclose{}\\, so the minimum value is \\f^\*(b) = b^2\\, and its sensitivity to \\b\\ is \\\frac{d }{d b} f^\*(b) = 2b\\. At \\b = 3\\ the sensitivity is \\6\\: moving \\b\\ from \\3\\ to \\3.1\\ raises the minimum value from \\9\\ to \\9.61\\, an increase of \\0.61\\, close to \\6 \times 0.1 = 0.6\\.

> **NOTE:**
>
> **Corollary 2 (The multiplier is the sensitivity of the minimum value)** In [Theorem 12](#thm-qp-equality), write the minimum value as a function of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, \\f^\*(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) = \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}^{\top} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\. Its sensitivity to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\ ([Definition 22](#def-sensitivity)) is
>
> \\ \begin{aligned} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}} f^\*(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) &= \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \\ &= -\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}^\*. \end{aligned} \\

> **NOTE:**
>
> *Proof*. \\\mathbf{M}^{-1}\\ is symmetric and does not depend on \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, so [derivative of a quadratic form](vector-calculus.llms.md#cor-quadratic-form-symmetric) applies with \\\mathbf{M}^{-1}\\ in place of \\\mathbf{S}\\:
>
> \\ \begin{aligned} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}} f^\*(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) &= \tfrac{1}{2}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}} \mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}}^{\top} \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\right)\mathclose{} && \text{(constant multiple)} \\ &= \tfrac{1}{2} \mathopen{}\left(2 \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\right)\mathclose{} && \text{(derivative of a quadratic form)} \\ &= \mathbf{M}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} && \text{(simplify)} \\ &= -\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}^\*. && \text{(definition of } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\lambda}}\vphantom{\lambda}}^\* \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 37 (Moving the line)** In [Example 34](#exm-qp-equality) with a general right side \\b\\ in place of \\5\\, \\\mathbf{M}^{-1} = \tfrac{2}{25}\\ and
>
> \\ \begin{aligned} f^\*(b) &= \tfrac{1}{2} \mathopen{}\left(\tfrac{2}{25}\right)\mathclose{}\\b^2 \\ &= \tfrac{b^2}{25}, \end{aligned} \\
>
> so \\\frac{d }{d b} f^\*(b) = \tfrac{2b}{25}\\. At \\b = 5\\ this derivative is
>
> \\ \begin{aligned} \tfrac{10}{25} &= 0.4 \\ &= -\lambda^\*: \end{aligned} \\
>
> moving the line \\3 x_1 + 4 x_2 = b\\ outward by a small step \\\varepsilon\\ in \\b\\ raises the minimum value by about \\0.4\\\varepsilon\\.

## 5 Newton’s method and gradient descent

> **NOTE:**
>
> This section is adapted from the Newton-Raphson and gradient descent parts of Zhou [\[3\]](#ref-zhou2024optim), used under the MIT License (see the license text in [Linear Algebra](linear-algebra-subspaces.llms.md#sec-subspaces)). The source motivates the Newton step by minimizing a quadratic approximation; here that step is proved to be the exact minimizer of the quadratic model. In the source’s zigzag example the starting value of the objective is \\\tfrac{1}{2}(b^2 + b)\\, not \\\tfrac{1}{2}(1 + b^2)\\ as the source writes; the ratio of successive values is unaffected. In the same example the source’s formula for \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)}\\ has \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)}\\ on its right side where \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}\\ is meant. These parts of the source are not part of this section:
>
> - the quadratic convergence theorem for Newton’s method in general, and its remedies for instability (a positive definite substitute for the Hessian, and shortening the Newton step by a search along its direction)
> - its remark that Hessians are expensive to compute
> - the convergence-rate theorem for strongly convex functions
> - gradient descent with momentum, and its optimal parameters
> - Nesterov acceleration, and stochastic gradient descent
> - its code and animations

> **NOTE:**
>
> **Definition 23 (Iterative method)** An **iterative method** [\[14\]](#ref-wikipedia_iterative_method) starts from a point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}\\ and computes \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)}\\ from \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}\\ by a fixed rule, for \\t = 0, 1, 2, \ldots\\.

> **NOTE:**
>
> **Definition 24 (Iterate)** In an iterative method ([Definition 23](#def-iterative-method)), the points \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}\\ are its **iterates**.

> **NOTE:**
>
> **Definition 25 (Error of an iterate)** For a point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ that an iterative method ([Definition 23](#def-iterative-method)) is meant to reach, \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{}\\ is the **error** of the iterate \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}\\ ([Definition 24](#def-iterate)).

> **NOTE:**
>
> **Definition 26 (Convergence of a sequence of vectors)** A [sequence](functions.llms.md#def-sequence) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)}, \ldots\\ in \\\mathbb{R}^p\\ **converges** to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* \in \mathbb{R}^p\\ if the sequence of distances \\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{}\\ [converges](algebra-exponentials.llms.md#def-convergent-sequence) to \\0\\. For \\p = 1\\, \\\mathopen{}\left\lVert x^{(t)} - x^\*\right\rVert\mathclose{} = \mathopen{}\left\|x^{(t)} - x^\*\right\|\mathclose{}\\, and this is the convergence of a sequence of numbers to \\x^\*\\.

> **NOTE:**
>
> **Example 38 (Halving a vector)** The iterative method \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)} = \tfrac{1}{2}\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}\\ from \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)} = {(4, 2)}^{\top}\\ has iterates \\{(4, 2)}^{\top}, {(2, 1)}^{\top}, {(1, 0.5)}^{\top}, \ldots\\, that is, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} = 2^{-t}\\{(4, 2)}^{\top}\\. With \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, the error of \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}\\ is
>
> \\ \begin{aligned} \mathopen{}\left\lVert 2^{-t}\\{(4, 2)}^{\top} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\right\rVert\mathclose{} &= 2^{-t}\\\mathopen{}\left\lVert{(4, 2)}^{\top}\right\rVert\mathclose{} && \text{(norm of a multiple)} \\ &= 2^{-t} \sqrt{20}, && \text{(} 4^2 + 2^2 = 20 \text{)} \end{aligned} \\
>
> which converges to \\0\\, so the iterates converge to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\.

> **NOTE:**
>
> **Definition 27 (Newton’s method for minimization)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first and second partial derivatives, and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}\\ be a starting point. **Newton’s method** [\[15\]](#ref-wikipedia_newtons_method_in_optimization) computes, for \\t = 0, 1, 2, \ldots\\, as long as \\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)})\\ is invertible,
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} - \mathopen{}\left\[\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)})\right\]\mathclose{}^{-1} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}). \\

> **NOTE:**
>
> **Definition 28 (Newton step)** In Newton’s method ([Definition 27](#def-newton-method)), the vector \\-\mathopen{}\left\[\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)})\right\]\mathclose{}^{-1} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)})\\ is the **Newton step** at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}\\.

> **NOTE:**
>
> **Example 39 (Newton’s method for a cubic)** Let \\f(x) = \tfrac{1}{3} x^3 - 4x\\, so \\f'(x) = x^2 - 4\\ and \\f''(x) = 2x\\. For \\x^{(t)} \ne 0\\, one Newton step gives
>
> \\ \begin{aligned} x^{(t+1)} &= x^{(t)} - \frac{(x^{(t)})^2 - 4}{2 x^{(t)}} && \text{(Newton's method with } p = 1 \text{)} \\ &= \frac{2 (x^{(t)})^2 - (x^{(t)})^2 + 4}{2 x^{(t)}} && \text{(common denominator)} \\ &= \frac{1}{2} \mathopen{}\left(x^{(t)} + \frac{4}{x^{(t)}}\right)\mathclose{}. && \text{(simplify)} \end{aligned} \\
>
> From \\x^{(0)} = 2.5\\:
>
> - \\ \begin{aligned} x^{(1)} &= \tfrac{1}{2} (2.5 + 1.6) \\ &= 2.05; \end{aligned} \\
>
> - \\ \begin{aligned} x^{(2)} &= \tfrac{1}{2} (2.05 + 1.951219\ldots) \\ &= 2.000610 \end{aligned} \\
>
>   (to six decimals);
>
> - \\x^{(3)} = 2.0000001\\ (to seven decimals).
>
> The iterates ([Definition 24](#def-iterate)) approach \\2\\, the local minimizer of \\f\\ (a stationary point, since \\f'(2) = 0\\, with \\f''(2) = 4 \> 0\\; [Theorem 6](#thm-second-order-condition)).

> **NOTE:**
>
> **Definition 29 (Quadratic model, second-order Taylor polynomial)** Let \\f\\ be as in [Definition 27](#def-newton-method) and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ be a point, with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \stackrel{\text{def}}{=}\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ and \\\mathbf{H} \stackrel{\text{def}}{=}\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\. The **quadratic model** of \\f\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ is the function of a step \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}\in \mathbb{R}^p\\
>
> \\ q(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}) \stackrel{\text{def}}{=}f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}} + \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}, \\
>
> also called the **second-order Taylor polynomial** of \\f\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\.

> **NOTE:**
>
> **Example 40 (The model at \\x = 2.5\\)** For \\f(x) = \tfrac{1}{3} x^3 - 4x\\ at \\x = 2.5\\ ([Example 39](#exm-newton-method)),
>
> \\ \begin{aligned} g &= 2.5^2 - 4 \\ &= 2.25 \end{aligned} \\
>
> and
>
> \\ \begin{aligned} H &= \[2 \cdot 2.5\] \\ &= \[5\], \end{aligned} \\
>
> so \\q(\delta) = f(2.5) + 2.25\\\delta+ 2.5\\\delta^2\\. For \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2} (x_1^2 + 3 x_2^2)\\, whose Hessian is \\\begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix}\\ at every point, the model at any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ equals \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}})\\ exactly ([Example 9](#exm-taylor-mv) with \\\mathbf{S} = \begin{bmatrix} 1/2 & 0 \\ 0 & 3/2 \end{bmatrix}\\).

> **NOTE:**
>
> *Remark 3* (The quadratic model and Taylor’s theorem). When the second partial derivatives of \\f\\ are continuous, [Theorem 5](#thm-taylor-mv) says that \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}})\\ equals the expression for \\q(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}})\\ in [Definition 29](#def-quadratic-model) with the Hessian evaluated at a point between \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}+ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}\\.

> **NOTE:**
>
> **Theorem 13 (The Newton step minimizes the quadratic model)** Let \\q\\ be the quadratic model of \\f\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ ([Definition 29](#def-quadratic-model)), with \\\mathbf{H} = \mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ [positive definite](linear-algebra-special-matrices.llms.md#def-positive-definite). Its unique minimizer is the Newton step \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* = -\mathbf{H}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{H}\\ is symmetric, by the definition of [positive definite](linear-algebra-special-matrices.llms.md#def-positive-definite), and invertible ([positive definite inverse](linear-algebra-special-matrices.llms.md#thm-pd-inverse)), so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\*\\ exists and \\\mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* = -\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\\. For any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} \in \mathbb{R}^p\\, first
>
> \\ \begin{aligned} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* &= -\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} && \text{(} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* = -\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \text{)} \\ &= -\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}, && \text{(a } 1 \times 1 \text{ matrix equals its transpose)} \end{aligned} \\
>
> and \\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\*{}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} = {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\*\\ in the same way, using \\{\mathbf{H}}^{\top} = \mathbf{H}\\. Then
>
> \\ \begin{aligned} q(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}) &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}) +\tfrac{1}{2}\\{(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}})}^{\top} \mathbf{H} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}) && \text{(definition of } q \text{)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} + \tfrac{1}{2} \mathopen{}\left({\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\*{}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\*{}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* + {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}\right)\mathclose{} && \text{(distribute)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} + \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\*{}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} + \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} && \text{(both cross terms equal } -\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} \text{)} \\ &= f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* + \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\*{}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\* + \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} && \text{(cancel } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} \text{)} \\ &= q(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\*) + \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{H} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}, && \text{(definition of } q \text{)} \end{aligned} \\
>
> which is greater than \\q(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{\delta}}\vphantom{\delta}}^\*)\\ for every \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\, since \\\mathbf{H}\\ is positive definite.

> **NOTE:**
>
> **Example 41 (The Newton step at \\x = 2.5\\)** For the model \\q(\delta) = f(2.5) + 2.25\\\delta+ 2.5\\\delta^2\\ of [Example 40](#exm-quadratic-model), \\H = \[5\]\\ is positive definite, so by [Theorem 13](#thm-newton-model) its minimizer is
>
> \\ \begin{aligned} \delta^\* &= -H^{-1} g \\ &= -2.25 / 5 \\ &= -0.45. \end{aligned} \\
>
> Setting the derivative \\2.25 + 5 \delta\\ to \\0\\ gives the same \\\delta^\*\\, and
>
> \\ \begin{aligned} 2.5 - 0.45 &= 2.05 \\ &= x^{(1)} \end{aligned} \\
>
> ([Example 39](#exm-newton-method)).

> **NOTE:**
>
> **Definition 30 (Quadratic convergence)** A [sequence](functions.llms.md#def-sequence) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)}, \ldots\\ in \\\mathbb{R}^p\\ that converges ([Definition 26](#def-vector-sequence-limit)) to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ **converges quadratically** [\[16\]](#ref-wikipedia_rate_of_convergence) if there is a constant \\C\\ with
>
> \\ \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{} \le C\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{}^2 \qquad \text{for every } t. \\

> **NOTE:**
>
> **Example 42 (Halving the error is not quadratic convergence)** \\x^{(t)} = 2^{-t}\\ converges to \\0\\, but it does not converge quadratically: the bound would need \\2^{-(t+1)} \le C\\(2^{-t})^2 = C\\2^{-2t}\\, that is, \\2^{t - 1} \le C\\, which fails once \\t \> 1 + \log_2 C\\. Each step only halves the error.

> **NOTE:**
>
> **Example 43 (The error squares at each step)** For the iteration \\x^{(t+1)} = \tfrac{1}{2} (x^{(t)} + 4 / x^{(t)})\\ of [Example 39](#exm-newton-method),
>
> \\ \begin{aligned} x^{(t+1)} - 2 &= \frac{1}{2} \mathopen{}\left(x^{(t)} + \frac{4}{x^{(t)}}\right)\mathclose{} - 2 && \text{(the iteration)} \\ &= \frac{(x^{(t)})^2 + 4 - 4 x^{(t)}}{2 x^{(t)}} && \text{(common denominator)} \\ &= \frac{(x^{(t)} - 2)^2}{2 x^{(t)}}. && \text{(the numerator is a perfect square)} \end{aligned} \\
>
> So near \\2\\ the error is roughly squared and divided by \\4\\ at each step: the errors are \\0.05\\, then \\0.00061\\, then \\0.000000093\\, and \\0.05^2 / (2 \cdot 2.05) \approx 0.00061\\. The iterates converge quadratically ([Definition 30](#def-quadratic-convergence)): \\C = \tfrac{1}{2}\\ works for every \\x^{(t)} \ge 1\\, since then \\\tfrac{1}{2 x^{(t)}} \le \tfrac{1}{2}\\, and every iterate from \\2.5\\ is at least \\2\\, since the identity makes \\x^{(t+1)} - 2 \ge 0\\ whenever \\x^{(t)} \> 0\\. Zhou [\[3\]](#ref-zhou2024optim) states such a bound for Newton’s method in general; it holds from starting points close enough to a minimizer where the Hessian is positive definite, when near that minimizer the Hessian changes by at most a constant times the distance moved, which these notes do not prove.

> **NOTE:**
>
> **Example 44 (Newton’s method can find a maximum)** From \\x^{(0)} = -2.5\\ the same iteration gives \\-2.05\\, \\-2.000610\\, \\-2.0000001\\, approaching \\-2\\. But \\-2\\ is not a minimizer of \\f\\: it is a stationary point of \\-f\\, whose second derivative there is \\-f''(-2) = 4 \> 0\\, so it is a strict local minimizer of \\-f\\ ([Theorem 6](#thm-second-order-condition)), that is, \\f\\ is strictly larger at \\-2\\ than at all nearby points. Newton’s method looks only for a stationary point, and here the Hessian \\f''(x) = 2x\\ is negative along the way, so the quadratic model has no minimizer (with \\H \< 0\\, \\q(\delta) = f + g\\\delta+ \tfrac{1}{2} H \delta^2\\ decreases without bound) and [Theorem 13](#thm-newton-model) does not apply: the positive definite hypothesis there is needed.

> **NOTE:**
>
> **Theorem 14 (Newton’s method minimizes a quadratic in one step)** Let \\\mathbf{S}\\ be a \\p \times p\\ [positive definite](linear-algebra-special-matrices.llms.md#def-positive-definite) matrix, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} \in \mathbb{R}^p\\, and \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\. From any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}\\, Newton’s method ([Definition 27](#def-newton-method)) gives \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)} = \mathbf{S}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}\\, the unique minimizer of \\f\\.

> **NOTE:**
>
> *Proof*. Partial derivatives of a sum or of a constant multiple are the sum or multiple of the partial derivatives, so by [derivative of a quadratic form](vector-calculus.llms.md#cor-quadratic-form-symmetric) for \\\tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and [derivative of a linear combination](vector-calculus.llms.md#cor-deriv-lincom-tp) for \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\,
>
> \\ \begin{aligned} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) &= \tfrac{1}{2} (2 \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} \\ &= \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}; \end{aligned} \\
>
> by [Hessian of a quadratic form](vector-calculus.llms.md#thm-hessian-quadratic) with \\\tfrac{1}{2} \mathbf{S}\\ in place of \\\mathbf{S}\\, and because the gradient \\-\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}\\ of the linear term is constant ([constant with respect to a vector](vector-calculus.llms.md#def-constant-wrt-vector)), \\\mathbf{H}\_f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{S}\\, which is invertible ([positive definite inverse](linear-algebra-special-matrices.llms.md#thm-pd-inverse)). So
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)} &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)} - \mathbf{S}^{-1} (\mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}) && \text{(definition of Newton's method)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)} - \mathbf{S}^{-1} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)} + \mathbf{S}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} && \text{(distribute)} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)} + \mathbf{S}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} && \text{(} \mathbf{S}^{-1} \mathbf{S} = \mathbf{I}\_p \text{)} \\ &= \mathbf{S}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}. && \text{(cancel)} \end{aligned} \\
>
> The gradient at \\\mathbf{S}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}\\ is \\\mathbf{S} \mathbf{S}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\, and \\f\\ is strictly convex ([Theorem 11](#thm-convex-hessian), part 2), so \\\mathbf{S}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}\\ is a global minimizer ([Corollary 1](#cor-convex-stationary)). It is the only one: a strictly convex function has at most one global minimizer, since the midpoint of two distinct global minimizers, which have equal values, would have a strictly smaller value ([Definition 9](#def-strictly-convex) with \\t = \tfrac{1}{2}\\).

> **NOTE:**
>
> **Example 45 (One step to the minimizer)** Let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2} (x_1^2 + 3 x_2^2)\\, so \\\mathbf{S} = \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\. From \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)} = {(3, 1)}^{\top}\\ the gradient is \\\mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)} = {(3, 3)}^{\top}\\, and \\\mathbf{S}^{-1} = \begin{bmatrix} 1 & 0 \\ 0 & 1/3 \end{bmatrix}\\, so the Newton step is \\-\mathbf{S}^{-1} {(3, 3)}^{\top} = -{(3, 1)}^{\top}\\ and
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)} &= {(3, 1)}^{\top} - {(3, 1)}^{\top} \\ &= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}, \end{aligned} \\
>
> the minimizer.

> **NOTE:**
>
> **Definition 31 (Gradient descent)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first partial derivatives, let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}\\ be a starting point, and let \\s^{(0)}, s^{(1)}, \ldots\\ be positive **step lengths**. **Gradient descent** [\[17\]](#ref-wikipedia_gradient_descent) computes, for \\t = 0, 1, 2, \ldots\\,
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} - s^{(t)}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}). \\

> **NOTE:**
>
> **Example 46 (Fixed steps on a parabola)** For \\f(x) = x^2\\, \\f'(x) = 2x\\, so gradient descent with fixed step length \\s\\ is
>
> \\ \begin{aligned} x^{(t+1)} &= x^{(t)} - 2 s\\x^{(t)} \\ &= (1 - 2s)\\x^{(t)}, \end{aligned} \\
>
> and \\x^{(t)} = (1 - 2s)^t x^{(0)}\\.
>
> - With \\s = 0.25\\, \\x^{(t)} = 0.5^t x^{(0)}\\, which tends to the minimizer \\0\\.
> - With \\s = 0.5\\, the first step lands on \\0\\, since \\1 - 2s = 0\\.
> - With \\s = 1.5\\, \\x^{(t)} = (-2)^t x^{(0)}\\, which moves away from \\0\\ for any \\x^{(0)} \ne 0\\: too long a step can make gradient descent fail.

> **NOTE:**
>
> *Remark 4* (Gradient descent as Newton’s method with a simpler Hessian). Gradient descent ([Definition 31](#def-gradient-descent)) is Newton’s method ([Definition 27](#def-newton-method)) with the Hessian replaced by \\\tfrac{1}{s^{(t)}} \mathbf{I}\_p\\, so it needs no second derivatives.

> **NOTE:**
>
> **Definition 32 (Gradient ascent)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first [partial derivatives](vector-calculus.llms.md#def-partial-derivative), let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}\\ be a starting point, and let \\s^{(0)}, s^{(1)}, \ldots\\ be positive [step lengths](#def-gradient-descent). **Gradient ascent** [\[17\]](#ref-wikipedia_gradient_descent) repeats, for \\t = 0, 1, 2, \ldots\\, the update
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} + s^{(t)}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}). \\

> **NOTE:**
>
> **Example 47 (Gradient ascent is gradient descent on the negative function)** Gradient ascent on \\f\\ takes the same steps as [gradient descent](#def-gradient-descent) on \\-f\\, since \\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} (-f) = -\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f\\. In one variable, for \\f(x) = -x^2\\ the [derivative](calculus-derivatives.llms.md#def-derivative) is \\f'(x) = -2x\\, so gradient ascent with fixed [step length](#def-gradient-descent) \\s\\ is \\x^{(t+1)} = (1 - 2s)\\x^{(t)}\\, the iteration of [Example 46](#exm-gradient-descent), which tends to the maximizer \\0\\ when \\0 \< s \< 1\\.

> **NOTE:**
>
> **Definition 33 (Line search)** In gradient descent ([Definition 31](#def-gradient-descent)), a **line search** [\[18\]](#ref-wikipedia_line_search) is a rule that chooses the step length \\s^{(t)}\\ by examining the values of \\f\\ along the line \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} - s\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}) : s \> 0\right\\\mathclose{}\\.

> **NOTE:**
>
> **Definition 34 (Exact line search)** **Exact line search** is the line search ([Definition 33](#def-line-search)) that chooses \\s^{(t)}\\ to minimize \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} - s\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}))\\ over \\s \> 0\\.

> **NOTE:**
>
> **Example 48 (Exact line search on a parabola)** For \\f(x) = x^2\\ and \\x^{(t)} = 2\\, the derivative is \\f'(2) = 4\\, so the line is \\\mathopen{}\left\\2 - 4s : s \> 0\right\\\mathclose{}\\ and the values along it are
>
> \\ \begin{aligned} \phi(s) &= f(2 - 4s) && \text{(the value at step length } s \text{)} \\&= (2 - 4s)^2 && (f(x) = x^2) \end{aligned} \\
>
> \\\phi(s) \ge 0\\ for every \\s\\, and
>
> \\ \begin{aligned} \phi(0.5) &= (2 - 2)^2 \\ &= 0, \end{aligned} \\
>
> so exact line search chooses \\s^{(t)} = 0.5\\, which lands on the minimizer \\x^{(t+1)} = 0\\ in one step.

> **NOTE:**
>
> **Definition 35 (Descent direction)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have a gradient \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \stackrel{\text{def}}{=}\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\. A direction \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}\\ ([direction](vector-calculus.llms.md#def-direction)) is a **descent direction** for \\f\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ if \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} \< 0\\. When \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\, \\-\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\\ is a descent direction, since \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot (-\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}) =-\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\right\rVert\mathclose{}^2 \< 0\\.

> **NOTE:**
>
> **Example 49 (Descent directions for \\x_1^2 + x_2^2\\ at \\{(1, 0)}^{\top}\\)** Let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= {(1, 0)}^{\top}\\, so
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} &= {(2 x_1,\\ 2 x_2)}^{\top} \\ &= {(2, 0)}^{\top}. \end{aligned} \\
>
> - \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} = {(-1, 1)}^{\top}\\ is a descent direction:
>
>   \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} &= -2 + 0 \\ &= -2 \\ &\< 0. \end{aligned} \\
>
> - \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} = {(0, 1)}^{\top}\\ is not: \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} = 0\\.
>
> - \\-\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} = {(-2, 0)}^{\top}\\ is: \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot (-\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}) = -4 \< 0\\.

> **NOTE:**
>
> **Theorem 15 (A short enough step downhill decreases the function)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first partial derivatives that are continuous on \\\mathbb{R}^p\\ ([continuity](vector-calculus.llms.md#def-continuous-on)), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\ be a point with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \stackrel{\text{def}}{=}\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\. Then there is an \\\bar{s} \> 0\\ with \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}) \< f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ for every \\s \in (0, \bar{s})\\: a short enough step in the descent direction \\-\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\\ ([Definition 35](#def-descent-direction)) decreases \\f\\.

> **NOTE:**
>
> *Proof*. Let \\h(s) \stackrel{\text{def}}{=}f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}})\\. The inner function \\s \mapsto \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\\ has derivative \\-{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top}\\ ([vector-valued derivative](vector-calculus.llms.md#def-vector-valued-derivative)), so by the vector chain rule ([vector chain rule](vector-calculus.llms.md#thm-chain-vec))
>
> \\ \begin{aligned} h'(s) &= -{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}), && \text{(chain rule)} \\ h'(0) &= -{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) && \text{(set } s = 0 \text{)} \\ &= -\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} && \text{(definition of } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \text{)} \\ &= -\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\right\rVert\mathclose{}^2 && \text{(squared length)} \\ &\< 0. && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1} \text{)} \end{aligned} \\
>
> Since \\h'(0) = \lim\_{s \to 0} (h(s) - h(0)) / s\\ is negative, taking \\\varepsilon= \mathopen{}\left\|h'(0)\right\|\mathclose{}\\ in the definition of the limit gives an \\\bar{s} \> 0\\ such that \\(h(s) - h(0)) / s \< h'(0) + \mathopen{}\left\|h'(0)\right\|\mathclose{} = 0\\ for \\0 \< s \< \bar{s}\\. Multiplying by \\s \> 0\\, \\h(s) \< h(0)\\, that is, \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}) \< f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\.

> **NOTE:**
>
> **Example 50 (How short is short enough)** In [Example 46](#exm-gradient-descent), \\f(x) = x^2\\ at \\x \ne 0\\ has \\g = 2x\\, and \\f(x - 2 s x) = (1 - 2s)^2 x^2 \< x^2\\ exactly when \\\mathopen{}\left\|1 - 2s\right\|\mathclose{} \< 1\\, that is, when \\0 \< s \< 1\\. So [Theorem 15](#thm-descent-direction) holds with \\\bar{s} = 1\\, and the step \\s = 1.5\\ of that example was too long.

> **NOTE:**
>
> **Example 51 (Gradient descent zigzags)** Let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2} (x_1^2 + b\\x_2^2)\\ with \\b \> 0\\, so \\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = {(x_1,\\ b x_2)}^{\top}\\ and one gradient step of length \\s\\ from \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ gives \\{((1 - s) x_1,\\ (1 - b s) x_2)}^{\top}\\. For exact line search ([Definition 34](#def-exact-line-search)), let \\\phi(s) \stackrel{\text{def}}{=}f\\ at that point:
>
> \\ \begin{aligned} \phi(s) &= \tfrac{1}{2} \mathopen{}\left((1 - s)^2 x_1^2 + b (1 - b s)^2 x_2^2\right)\mathclose{}, && \text{(definition of } f \text{)} \\ \phi'(s) &= -(1 - s) x_1^2 - b^2 (1 - b s) x_2^2 && \text{(chain rule, term by term)} \\ &= -x_1^2 + s\\x_1^2 - b^2 x_2^2 + b^3 s\\x_2^2 && \text{(expand the products)} \\ &= s\\(x_1^2 + b^3 x_2^2) - (x_1^2 + b^2 x_2^2). && \text{(collect the terms in } s \text{)} \end{aligned} \\
>
> For \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\, \\x_1^2 + b^3 x_2^2 \> 0\\, so \\\phi'\\ is increasing in \\s\\ with a single zero, and \\\phi\\ is minimized at \\s^\* = \dfrac{x_1^2 + b^2 x_2^2}{x_1^2 + b^3 x_2^2}\\. From \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)} = {(b, 1)}^{\top}\\:
>
> \\ \begin{aligned} s^{(0)} &= \frac{b^2 + b^2}{b^2 + b^3} && \text{(substitute } x_1 = b, x_2 = 1 \text{)} \\ &= \frac{2}{1 + b}, && \text{(cancel } b^2 \text{)} \end{aligned} \\
>
> and, with \\r \stackrel{\text{def}}{=}\tfrac{b - 1}{b + 1}\\,
>
> \\ \begin{aligned} 1 - s^{(0)} &= \frac{1 + b - 2}{1 + b} \\ &= r, && \text{(common denominator)} \\ 1 - b\\s^{(0)} &= \frac{1 + b - 2b}{1 + b} \\ &= -r, && \text{(common denominator)} \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)} &= {\mathopen{}\left(r\\b,\\ -r \cdot 1\right)\mathclose{}}^{\top} \\ &= r\\{(b, -1)}^{\top}. && \text{(the gradient step from } {(b, 1)}^{\top} \text{)} \end{aligned} \\
>
> For \\b \ne 1\\ the same holds at every step, by [induction](proof-writing.llms.md#def-proof-by-induction) (when \\b = 1\\, \\r = 0\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)}\\ is already the minimizer): if \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} = {(c\\b,\\ \pm c)}^{\top}\\ for a number \\c \ne 0\\, then \\s^\*\\, which depends only on \\x_1^2 = c^2 b^2\\ and \\x_2^2 = c^2\\, is again \\\tfrac{2}{1 + b}\\ (the factor \\c^2\\ cancels), and the step multiplies the first entry by \\r\\ and the second by \\-r\\. So
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} &= {\mathopen{}\left(b\\r^t,\\ (-r)^t\right)\mathclose{}}^{\top}, \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}) &= \tfrac{1}{2} (b^2 + b)\\r^{2t} \\ &= r^{2t} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}). \end{aligned} \\
>
> For \\b \ne 1\\, exactly one entry changes sign at every step: the second when \\b \> 1\\ (then \\r \> 0\\), and the first when \\b \< 1\\ (then \\r \< 0\\). So the iterates zigzag toward the minimizer \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\.
>
> - With \\b = 3\\, \\r = \tfrac{1}{2}\\: \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)} = {(1.5, -0.5)}^{\top}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(2)} = {(0.75, 0.25)}^{\top}\\, and \\f\\ falls from \\6\\ to \\1.5\\ to \\0.375\\, a quarter at each step.
> - With \\b = 1\\, \\r = 0\\ and one step reaches the minimizer.
> - With \\b = 0.01\\, \\r^2 = (0.99 / 1.01)^2 \approx 0.96\\, so \\f\\ shrinks by only about \\4\\\\ per step. Newton’s method reaches the minimizer of any such \\f\\ in one step ([Theorem 14](#thm-newton-quadratic)).

> **NOTE:**
>
> **Definition 36 (Rosenbrock function)** The **Rosenbrock function** on \\\mathbb{R}^2\\ is
>
> \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \stackrel{\text{def}}{=}100\mathopen{}\left(x_2 - x_1^2\right)\mathclose{}^2 + \mathopen{}\left(1 - x_1\right)\mathclose{}^2, \qquad \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= {(x_1, x_2)}^{\top}. \\
>
> It is a standard test problem for optimizers [\[19\]](#ref-wikipedia_rosenbrock_function).

> **NOTE:**
>
> **Example 52 (Values of the Rosenbrock function)** We evaluate the [Rosenbrock function](#def-rosenbrock-function) at the [minimizer](algebra-basics.llms.md#def-global-minimizer) \\(1, 1)\\, at the origin, and at the standard starting point \\(-1.2, 1)\\. Then we evaluate it along the curve \\x_2 = x_1^2\\, which is the floor of a narrow, curved valley.
>
> ## R
>
> ``` downlit
> rosenbrock_rf <- function(x1, x2) 100 * (x2 - x1^2)^2 + (1 - x1)^2
>
> points_rf <- list(minimizer = c(1, 1), origin = c(0, 0), start = c(-1.2, 1))
> sapply(points_rf, function(p) round(rosenbrock_rf(p[1], p[2]), 3))
> #> minimizer    origin     start 
> #>       0.0       1.0      24.2
>
> # On the curve x2 = x1^2 the first term vanishes, leaving (1 - x1)^2.
> x_curve_rf <- c(-1, 0, 0.5, 1, 2)
> rbind(
>   on_curve = rosenbrock_rf(x_curve_rf, x_curve_rf^2),
>   formula = (1 - x_curve_rf)^2
> )
> #>          [,1] [,2] [,3] [,4] [,5]
> #> on_curve    4    1 0.25    0    1
> #> formula     4    1 0.25    0    1
> ```
>
> ## Python
>
> ``` python
> import numpy as np
>
> def rosenbrock_rf(x1, x2):
>     return 100 * (x2 - x1 ** 2) ** 2 + (1 - x1) ** 2
>
> points_rf = {"minimizer": (1, 1), "origin": (0, 0), "start": (-1.2, 1)}
> print({name: round(rosenbrock_rf(*p), 3) for name, p in points_rf.items()})
> #> {'minimizer': 0, 'origin': 1, 'start': 24.2}
>
> # On the curve x2 = x1^2 the first term vanishes, leaving (1 - x1)^2.
> x_curve_rf = np.array([-1.0, 0.0, 0.5, 1.0, 2.0])
> print("on_curve:", rosenbrock_rf(x_curve_rf, x_curve_rf ** 2))
> #> on_curve: [4.   1.   0.25 0.   1.  ]
> print("formula: ", (1 - x_curve_rf) ** 2)
> #> formula:  [4.   1.   0.25 0.   1.  ]
> ```
>
> The [function](functions.llms.md#def-function) is \\0\\ at \\(1, 1)\\ and positive everywhere else, because both of its parts are non-negative and vanish together only when \\x_1 = 1\\ and \\x_2 = 1\\. So \\(1, 1)\\ is the [global minimizer](algebra-basics.llms.md#def-global-minimizer). At the starting point the [value](functions.llms.md#def-value) is 24.2, mostly from the first [term](algebra-sums.llms.md#def-term), because \\(-1.2, 1)\\ is off the curve \\x_2 = x_1^2\\. On the curve the function is \\(1 - x_1)^2\\, which varies slowly compared with the steep walls.

> **NOTE:**
>
> Show R code
>
> ``` downlit
> library(ggplot2)
> rf_grid <- expand.grid(
>   x1 = seq(-2, 2, length.out = 201),
>   x2 = seq(-1, 3, length.out = 201)
> )
> rf_grid$f <- rosenbrock_rf(rf_grid$x1, rf_grid$x2)
> rf_points <- data.frame(
>   name = names(points_rf),
>   x1 = sapply(points_rf, `[`, 1),
>   x2 = sapply(points_rf, `[`, 2)
> )
> rf_curve <- data.frame(x1 = seq(-2, 1.7, length.out = 200))
> rf_curve$x2 <- rf_curve$x1^2
> ggplot(rf_grid, aes(x1, x2)) +
>   geom_contour(
>     aes(z = f),
>     colour = "grey60",
>     breaks = c(1, 3, 10, 30, 100, 300, 1000)
>   ) +
>   geom_line(data = rf_curve, linetype = "dashed") +
>   geom_point(aes(colour = name, shape = name), data = rf_points, size = 3) +
>   scale_colour_manual(
>     values = c(minimizer = "#0072B2", origin = "#009E73", start = "#D55E00")
>   ) +
>   scale_shape_manual(values = c(minimizer = 16, origin = 15, start = 17)) +
>   coord_cartesian(xlim = c(-2, 2), ylim = c(-1, 3)) +
>   labs(x = "x1", y = "x2", colour = NULL, shape = NULL) +
>   theme(legend.position = "bottom")
> ```
>
> Show R code
>
> ``` python
> import matplotlib.pyplot as plt
> import numpy as np
>
> g1_rf, g2_rf = np.meshgrid(np.linspace(-2, 2, 201), np.linspace(-1, 3, 201))
> fig, ax = plt.subplots(figsize=(5, 4), layout="constrained")
> ax.contour(g1_rf, g2_rf, rosenbrock_rf(g1_rf, g2_rf), levels=[1, 3, 10, 30, 100, 300, 1000], colors="grey")
> t_rf = np.linspace(-2, 1.7, 200)
> ax.plot(t_rf, t_rf ** 2, color="black", linestyle="--")
> style_rf = {"minimizer": ("#0072B2", "o"), "origin": ("#009E73", "s"), "start": ("#D55E00", "^")}
> for name, p in points_rf.items():
>     ax.plot(*p, color=style_rf[name][0], marker=style_rf[name][1], linestyle="", markersize=8, label=name)
> ax.set_xlim(-2, 2)
> #> (-2.0, 2.0)
> ax.set_ylim(-1, 3)
> #> (-1.0, 3.0)
> ax.set_xlabel("x1")
> ax.set_ylabel("x2")
> fig.legend(loc="outside lower center", ncol=3)
> plt.show()
> ```
>
> ## R
>
> [![Contour plot of the Rosenbrock function over first coordinates from -2 to 2 and second coordinates from -1 to 3. The contours are nested curved bands around a narrow parabola-shaped valley along the dashed curve x2 equals x1 squared, with steep walls on both sides. Three marked points, each with its own colour and shape: the minimizer at (1, 1) on the valley floor, a blue circle, the origin on the valley floor, a green square, and the standard starting point (-1.2, 1), an orange triangle, on the left, just outside the dashed curve.](optimization_files/figure-html/rosenbrock-contours-r-1.png)](optimization_files/figure-html/rosenbrock-contours-r-1.png "Figure 1: Level curves of the Rosenbrock function, with the curve x_2 = x_1^2 (dashed) along the floor of the valley. The minimizer, the origin and the starting point are marked.")
>
> ## Python
>
> [![Contour plot of the Rosenbrock function over first coordinates from -2 to 2 and second coordinates from -1 to 3. The contours are nested curved bands around a narrow parabola-shaped valley along the dashed curve x2 equals x1 squared, with steep walls on both sides. Three marked points, each with its own colour and shape: the minimizer at (1, 1) on the valley floor, a blue circle, the origin on the valley floor, a green square, and the standard starting point (-1.2, 1), an orange triangle, on the left, just outside the dashed curve.](optimization_files/figure-html/rosenbrock-contours-python-1.png)](optimization_files/figure-html/rosenbrock-contours-python-1.png "Figure 1: Level curves of the Rosenbrock function, with the curve x_2 = x_1^2 (dashed) along the floor of the valley. The minimizer, the origin and the starting point are marked.")
>
> Figure 1: [Level curves](vector-calculus.llms.md#def-level-curve) of the [Rosenbrock function](#def-rosenbrock-function), with the curve \\x_2 = x_1^2\\ (dashed) along the floor of the valley. The [minimizer](algebra-basics.llms.md#def-global-minimizer), the origin and the starting point are marked.

> **NOTE:**
>
> **Definition 37 (Basin of attraction)** For given [step lengths](#def-gradient-descent), the **basin of attraction** of a [local minimizer](algebra-basics.llms.md#def-local-minimizer) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ under [gradient descent](#def-gradient-descent) is the [set](sets.llms.md#def-set) of starting points \\{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(0)}}\\ from which the [iterates](#def-iterate) [converge](#def-vector-sequence-limit) to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ [\[20\]](#ref-wikipedia_attractor).

> **NOTE:**
>
> **Example 53 (Basins of a double-well function)** Let \\f(x) = x^4 - 2x^2\\, so \\\frac{\partial}{\partial x} f(x) = 4x(x - 1)(x + 1)\\ and the [stationary points](#def-stationary-point) are \\-1\\, \\0\\ and \\1\\. Both \\-1\\ and \\1\\ are [local minimizers](algebra-basics.llms.md#def-local-minimizer), with \\f(\pm 1) = -1\\, and \\0\\ is a [local maximizer](#def-local-maximizer). We run [gradient descent](#def-gradient-descent) with the fixed [step length](#def-gradient-descent) \\s= 0.05\\ for 200 steps from the starting points \\-1.5\\, \\-0.5\\, \\-0.1\\, \\0.1\\, \\0.5\\, \\1.5\\ and \\3\\, and for three steps from \\{{x}^{(0)}} = 4\\.
>
> ## R
>
> ``` downlit
> basin_step_bs <- 0.05
> basin_starts_bs <- c(-1.5, -0.5, -0.1, 0.1, 0.5, 1.5, 3)
>
> # 200 steps from every starting point at once.
> basin_final_bs <- basin_starts_bs
> for (i in 1:200) {
>   basin_slope_bs <- 4 * basin_final_bs^3 - 4 * basin_final_bs
>   basin_final_bs <- basin_final_bs - basin_step_bs * basin_slope_bs
> }
> basin_end_bs <- signif(basin_final_bs, 3)
> tibble::tibble(start = basin_starts_bs, end = basin_end_bs)
> ```
>
> ``` downlit
>
> # The first step from 3.
> basin_from_three_bs <- 3 - basin_step_bs * (4 * 3^3 - 4 * 3)
>
> # Three steps from 4: the iterates grow in size.
> basin_far_bs <- numeric(4)
> basin_far_bs[1] <- 4
> for (i in 1:3) {
>   basin_slope_bs <- 4 * basin_far_bs[i]^3 - 4 * basin_far_bs[i]
>   basin_far_bs[i + 1] <- basin_far_bs[i] - basin_step_bs * basin_slope_bs
> }
> signif(basin_far_bs, 3)
> #> [1]       4.0      -8.0      92.8 -160000.0
> ```
>
> ## Python
>
> ``` python
> basin_step_bs = 0.05
>
> def basin_next_bs(x):
>     return x - basin_step_bs * (4 * x ** 3 - 4 * x)
>
> def basin_gd_bs(x0, n_steps=200):
>     x = x0
>     for _ in range(n_steps):
>         x = basin_next_bs(x)
>     return x
>
> basin_starts_bs = [-1.5, -0.5, -0.1, 0.1, 0.5, 1.5, 3]
> for start in basin_starts_bs:
>     print(start, float(f"{basin_gd_bs(start):.3g}"))
> #> -1.5 -1.0
> #> -0.5 -1.0
> #> -0.1 -1.0
> #> 0.1 1.0
> #> 0.5 1.0
> #> 1.5 1.0
> #> 3 -1.0
>
> # Three steps from 4: the iterates grow in size.
> basin_far_bs = [4.0]
> for _ in range(3):
>     basin_far_bs.append(basin_next_bs(basin_far_bs[-1]))
> print([float(f"{v:.3g}") for v in basin_far_bs])
> #> [4.0, -8.0, 92.8, -160000.0]
> ```
>
> Each of the six starts between \\-1.5\\ and \\1.5\\ ends at \\-1\\ or \\1\\, whichever lies on its own side of \\0\\, so for these starts the sign of the starting point decides which of the two the run reaches. A run from \\0\\ itself never moves, because \\\frac{\partial}{\partial x} f(0) = 0\\. The [basin of attraction](#def-basin-of-attraction) of \\1\\ is not all of \\(0, \infty)\\: the first step from \\{{x}^{(0)}} = 3\\ lands at \\-1.8\\, on the other side of \\0\\, and the run ends at \\-1\\. From \\{{x}^{(0)}} = 4\\ the [iterates](#def-iterate), starting with \\{{x}^{(0)}}\\ itself, are \\4\\, \\-8\\, \\92.8\\ and \\-1.6\times 10^{5}\\, which grow in [absolute value](algebra-basics.llms.md#def-absolute-value) at every step shown. Both of these starts are far from \\0\\, where the [derivative](calculus-derivatives.llms.md#def-derivative) is large and so the step \\s\frac{\partial}{\partial x} f(x)\\ is long. From \\{{x}^{(0)}} = 3\\ that step is \\96\\s\\ long, so the first step stays on the positive side of \\0\\ only when \\s\\ is below \\0.03125\\. So the basin of \\1\\ depends on \\s\\, and with \\s= 0.05\\ the basin is not a half-line.

> **NOTE:**
>
> Show R code
>
> ``` downlit
> # Uses basin_step_bs and basin_starts_bs from the example above.
> basin_runs_bf <- matrix(0, nrow = 31, ncol = 6)
> basin_runs_bf[1, ] <- basin_starts_bs[1:6]
> for (i in 1:30) {
>   basin_prev_bf <- basin_runs_bf[i, ]
>   basin_slope_bf <- 4 * basin_prev_bf^3 - 4 * basin_prev_bf
>   basin_runs_bf[i + 1, ] <- basin_prev_bf - basin_step_bs * basin_slope_bf
> }
> basin_side_bf <- ifelse(
>   basin_starts_bs[1:6] > 0, "start above 0", "start below 0"
> )
> basin_x_bf <- as.vector(basin_runs_bf)
> basin_side_all_bf <- rep(basin_side_bf, each = 31)
> basin_paths_bf <- tibble::tibble(x = basin_x_bf, side = basin_side_all_bf)
> basin_paths_bf$cost <- basin_paths_bf$x^4 - 2 * basin_paths_bf$x^2
> basin_grid_bf <- seq(-1.6, 1.6, length.out = 321)
> basin_curve_bf <- tibble::tibble(
>   x = basin_grid_bf, cost = basin_grid_bf^4 - 2 * basin_grid_bf^2
> )
> basin_colours_bf <- c("start above 0" = "#0072B2", "start below 0" = "#D55E00")
> ggplot2::ggplot(basin_curve_bf, ggplot2::aes(x, cost)) +
>   ggplot2::geom_line(colour = "grey60") +
>   ggplot2::geom_point(
>     data = basin_paths_bf,
>     ggplot2::aes(colour = side, shape = side), alpha = 0.7
>   ) +
>   ggplot2::scale_colour_manual(values = basin_colours_bf) +
>   ggplot2::labs(x = "x", y = "f(x)", colour = NULL, shape = NULL) +
>   ggplot2::theme(legend.position = "bottom")
> ```
>
> Show R code
>
> ``` python
> import matplotlib.pyplot as plt
> import numpy as np
>
> def basin_cost_bf(x):
>     return x ** 4 - 2 * x ** 2
>
> fig, ax = plt.subplots(figsize=(5, 4), layout="constrained")
> grid_bf = np.linspace(-1.6, 1.6, 321)
> ax.plot(grid_bf, basin_cost_bf(grid_bf), color="grey")
> #> [<matplotlib.lines.Line2D object at 0x7f44f9e82990>]
> for start in sorted(basin_starts_bs[:6], reverse=True):
>     x = [start]
>     for _ in range(30):
>         x.append(basin_next_bs(x[-1]))
>     x = np.array(x)
>     above = start > 0
>     ax.plot(x, basin_cost_bf(x), linestyle="", alpha=0.7,
>             color="#0072B2" if above else "#D55E00",
>             marker="o" if above else "^",
>             label=("start above 0" if above else "start below 0")
>             if abs(start) == 0.1 else None)
> #> [<matplotlib.lines.Line2D object at 0x7f44f9e82ad0>]
> #> [<matplotlib.lines.Line2D object at 0x7f44f9e82c10>]
> #> [<matplotlib.lines.Line2D object at 0x7f44f9e82d50>]
> #> [<matplotlib.lines.Line2D object at 0x7f44f9e82e90>]
> #> [<matplotlib.lines.Line2D object at 0x7f44f9e82fd0>]
> #> [<matplotlib.lines.Line2D object at 0x7f44f9e83110>]
> ax.set_xlabel("x")
> #> Text(0.5, 0, 'x')
> ax.set_ylabel("f(x)")
> #> Text(0, 0.5, 'f(x)')
> fig.legend(loc="outside lower center", ncol=2)
> #> <matplotlib.legend.Legend object at 0x7f44f9e83250>
> plt.show()
> ```
>
> ## R
>
> [![Plot of the double-well function x to the fourth minus 2 x squared for x from -1.6 to 1.6, a grey W-shaped curve with minima of -1 at x of -1 and 1 and a local maximum of 0 at x of 0. Points mark the gradient descent iterates from six starting values, three positive and three negative. Positive starts, drawn as blue circles, slide down the right well to 1. Negative starts, drawn as orange triangles, slide down the left well to -1.](optimization_files/figure-html/basin-iterates-r-1.png)](optimization_files/figure-html/basin-iterates-r-1.png "Figure 2: Gradient descent with step length 0.05 on the double-well function of Example 53, from six starting points between -1.5 and 1.5. Each run settles at the local minimizer on its own side of the local maximizer at 0.")
>
> ## Python
>
> [![Plot of the double-well function x to the fourth minus 2 x squared for x from -1.6 to 1.6, a grey W-shaped curve with minima of -1 at x of -1 and 1 and a local maximum of 0 at x of 0. Points mark the gradient descent iterates from six starting values, three positive and three negative. Positive starts, drawn as blue circles, slide down the right well to 1. Negative starts, drawn as orange triangles, slide down the left well to -1.](optimization_files/figure-html/basin-iterates-python-1.png)](optimization_files/figure-html/basin-iterates-python-1.png "Figure 2: Gradient descent with step length 0.05 on the double-well function of Example 53, from six starting points between -1.5 and 1.5. Each run settles at the local minimizer on its own side of the local maximizer at 0.")
>
> Figure 2: [Gradient descent](#def-gradient-descent) with [step length](#def-gradient-descent) \\0.05\\ on the double-well [function](functions.llms.md#def-function) of [Example 53](#exm-basin-of-attraction), from six starting points between \\-1.5\\ and \\1.5\\. Each run settles at the [local minimizer](algebra-basics.llms.md#def-local-minimizer) on its own side of the [local maximizer](#def-local-maximizer) at \\0\\.

> **NOTE:**
>
> **Definition 38 (Plateau)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ be a [function](functions.llms.md#def-function) with a [gradient](vector-calculus.llms.md#def-vector-derivative) at every point of a region, and let \\\epsilon \> 0\\ be a tolerance. The region is a **plateau** of \\f\\ if the [Euclidean norm](linear-algebra-vectors.llms.md#def-euclidean-norm) of the gradient satisfies
>
> \\ 0 \< \mathopen{}\left\lVert\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\right\rVert\mathclose{} \< \epsilon \\
>
> at every point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ of the region. The function is then nearly flat on the region, and the region contains no [stationary point](#def-stationary-point).

> **NOTE:**
>
> **Example 54 (A cost with no stationary point)**  
>
> Let \\f(x) = \log\mathopen{}\left(1 + \text{e}^{-x}\right)\mathclose{}\\. Its [derivative](calculus-derivatives.llms.md#def-derivative) is \\\frac{\partial}{\partial x} f(x) = -1 / (1 + \text{e}^{x})\\, which is negative for every \\x\\, so \\f\\ has no [stationary point](#def-stationary-point) at all.
>
> At \\x = 0\\ the [gradient](vector-calculus.llms.md#def-vector-derivative) has size \\0.5\\. At \\x = 10\\ it has size \\4.54\times 10^{-5}\\, which is small but not zero. A step of [gradient descent](#def-gradient-descent) subtracts the gradient times the [step length](#def-gradient-descent). The gradient is negative, so the [iterates](#def-iterate) keep moving to the right, more and more slowly. With tolerance \\\epsilon = 10^{-4}\\, the region \\x \ge 10\\ is a plateau ([Definition 38](#def-plateau)). A run that enters this plateau has not converged; the run has only slowed down.

> **NOTE:**
>
> Show R code
>
> ``` downlit
> plateau_grid_pf <- seq(-5, 15, length.out = 401)
> plateau_exp_pf <- exp(plateau_grid_pf)
> plateau_size_pf <- 1 / (1 + plateau_exp_pf)
> plateau_curve_pf <- tibble::tibble(x = plateau_grid_pf, size = plateau_size_pf)
> plateau_marks_x_pf <- c(0, 10)
> plateau_marks_exp_pf <- exp(plateau_marks_x_pf)
> plateau_marks_size_pf <- 1 / (1 + plateau_marks_exp_pf)
> plateau_marks_pf <- tibble::tibble(
>   x = plateau_marks_x_pf, size = plateau_marks_size_pf
> )
> plateau_aes_pf <- ggplot2::aes(x, size)
> ggplot2::ggplot(plateau_curve_pf, plateau_aes_pf) +
>   ggplot2::geom_line(colour = "#0072B2") +
>   ggplot2::geom_point(
>     data = plateau_marks_pf, colour = "#D55E00", shape = 17, size = 3
>   ) +
>   ggplot2::scale_y_log10() +
>   ggplot2::labs(x = "x", y = "Size of the gradient (log scale)")
> ```
>
> Show R code
>
> ``` python
> import matplotlib.pyplot as plt
> import numpy as np
>
> plateau_grid_pf = np.linspace(-5, 15, 401)
> plateau_marks_pf = np.array([0, 10])
> fig, ax = plt.subplots(figsize=(5, 4), layout="constrained")
> ax.plot(plateau_grid_pf, 1 / (1 + np.exp(plateau_grid_pf)), color="#0072B2")
> #> [<matplotlib.lines.Line2D object at 0x7f44f9efb9d0>]
> ax.plot(plateau_marks_pf, 1 / (1 + np.exp(plateau_marks_pf)),
>         color="#D55E00", marker="^", markersize=8, linestyle="")
> #> [<matplotlib.lines.Line2D object at 0x7f44f9efbb10>]
> ax.set_yscale("log")
> ax.set_xlabel("x")
> #> Text(0.5, 0, 'x')
> ax.set_ylabel("Size of the gradient (log scale)")
> #> Text(0, 0.5, 'Size of the gradient (log scale)')
> plt.show()
> ```
>
> ## R
>
> [![Plot of the size of the gradient of the function log of 1 plus e to the minus x, against x from -5 to 15, on a logarithmic vertical axis. A solid blue curve falls from about 0.99 at x of -5 to about 0.0000003 at x of 15. It is always positive and never reaches 0. Two vermilion triangles mark x of 0, where the size is 0.5, and x of 10, where it is about 0.00005.](optimization_files/figure-html/plateau-size-r-1.png)](optimization_files/figure-html/plateau-size-r-1.png "Figure 3: The size of the gradient of the function in Example 54, with x = 0 and x = 10 marked. The size shrinks toward 0 as x grows but is never 0, which is why descent slows down on a plateau without stopping at a stationary point.")
>
> ## Python
>
> [![Plot of the size of the gradient of the function log of 1 plus e to the minus x, against x from -5 to 15, on a logarithmic vertical axis. A solid blue curve falls from about 0.99 at x of -5 to about 0.0000003 at x of 15. It is always positive and never reaches 0. Two vermilion triangles mark x of 0, where the size is 0.5, and x of 10, where it is about 0.00005.](optimization_files/figure-html/plateau-size-python-1.png)](optimization_files/figure-html/plateau-size-python-1.png "Figure 3: The size of the gradient of the function in Example 54, with x = 0 and x = 10 marked. The size shrinks toward 0 as x grows but is never 0, which is why descent slows down on a plateau without stopping at a stationary point.")
>
> Figure 3: The size of the [gradient](vector-calculus.llms.md#def-vector-derivative) of the [function](functions.llms.md#def-function) in [Example 54](#exm-plateau), with \\x = 0\\ and \\x = 10\\ marked. The size shrinks toward \\0\\ as \\x\\ grows but is never \\0\\, which is why descent slows down on a [plateau](#def-plateau) without stopping at a [stationary point](#def-stationary-point).

> **NOTE:**
>
> **Definition 39 (Armijo condition)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first partial derivatives, let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\, and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \stackrel{\text{def}}{=}\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\. A step length \\s \> 0\\ satisfies the **Armijo condition** [\[21\]](#ref-wikipedia_backtracking_line_search) with constant \\c \in (0, 1)\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ if
>
> \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}) \le f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) - c\\ s\\ \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\right\rVert\mathclose{}^2. \\

> **NOTE:**
>
> **Example 55 (The Armijo condition on a parabola)** Let \\f(x) = x^2\\ and \\x = 2\\, so \\g = f'(2) = 4\\ and \\\mathopen{}\left\lVert g\right\rVert\mathclose{}^2 = 16\\. With \\c = 1/4\\, the condition on a step length \\s \> 0\\ is
>
> \\ \begin{aligned} (2 - 4s)^2 &\le 4 - 4s && \text{(} f(2 - 4s) \le f(2) - c\\ s\\ \mathopen{}\left\lVert g\right\rVert\mathclose{}^2 \text{)} \\ 4 - 16 s + 16 s^2 &\le 4 - 4s && \text{(expand the square)} \\ 16 s^2 &\le 12 s && \text{(add } 16 s - 4 \text{ to both sides)} \\ s &\le 3/4. && \text{(divide by } 16 s \> 0 \text{)} \end{aligned} \\
>
> So \\s = 1/2\\ satisfies the condition: \\f(0) = 0 \le 4 - 2 = 2\\. And \\s = 1\\ does not: \\f(-2) = 4 \> 4 - 4 = 0\\.

> **NOTE:**
>
> **Definition 40 (Backtracking line search)** Let \\s_0 \> 0\\ be an initial step length, \\\beta \in (0, 1)\\ a shrink factor, and \\c \in (0, 1)\\. **Backtracking line search** [\[21\]](#ref-wikipedia_backtracking_line_search) is the [line search](#def-line-search) that chooses \\s^{(t)}\\ to be the largest of \\s_0, \beta s_0, \beta^2 s_0, \ldots\\ that satisfies the [Armijo condition](#def-armijo-condition) with constant \\c\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}\\.

> **NOTE:**
>
> **Example 56 (Backtracking on a parabola)** For \\f(x) = x^2\\ at \\x = 2\\ with \\c = 1/4\\, the Armijo condition holds exactly when \\s \le 3/4\\ ([Example 55](#exm-armijo-condition)). With \\s_0 = 1\\ and \\\beta = 1/2\\, the trial step lengths are \\1, 1/2, 1/4, \ldots\\. The first, \\s = 1\\, exceeds \\3/4\\ and is rejected. The second, \\s = 1/2\\, is at most \\3/4\\ and is accepted. So backtracking chooses \\s^{(0)} = 1/2\\, after two evaluations of \\f\\.

> **NOTE:**
>
> **Theorem 16 (A bound on the error of gradient descent on a quadratic)** Let \\\mathbf{S}\\ be a \\p \times p\\ [positive definite matrix](linear-algebra-special-matrices.llms.md#def-positive-definite) with [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) \\\lambda_1, \ldots, \lambda_p\\, let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} \in \mathbb{R}^p\\, and let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, whose unique [minimizer](algebra-basics.llms.md#def-global-minimizer) is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* = \mathbf{S}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}\\ ([Theorem 14](#thm-newton-quadratic)). [Gradient descent](#def-gradient-descent) with a fixed [step length](#def-gradient-descent) \\s\> 0\\ from any \\{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(0)}}\\ has [errors](#def-iterate-error) satisfying, for \\t = 1, 2, \ldots\\,
>
> \\ \mathopen{}\left\lVert{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(t)}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{} \le \rho(s)^t\\\mathopen{}\left\lVert{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(0)}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{}, \qquad \rho(s) \stackrel{\text{def}}{=}\max\_{1 \le i \le p} \mathopen{}\left\|1 - s\\\lambda_i\right\|\mathclose{}. \\

> **NOTE:**
>
> *Proof*. Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}^{(t)} \stackrel{\text{def}}{=}{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(t)}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ be the [error](#def-iterate-error) at step \\t\\. The [gradient](vector-calculus.llms.md#def-vector-derivative) of \\f\\ is \\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{S}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}\\ (see the proof of [Theorem 14](#thm-newton-quadratic)), and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathbf{S}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\, so
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}^{(t+1)} &= {{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(t)}} - s\\(\mathbf{S}{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(t)}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}) - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* && \text{(definition of gradient descent)} \\ &= {{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(t)}} - s\\\mathbf{S}({{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(t)}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*) - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathbf{S}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* \text{)} \\ &= (\mathbf{I}\_p - s\\\mathbf{S})\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}^{(t)}. && \text{(collect the terms in } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}^{(t)} \text{)} \end{aligned} \\
>
> By [induction](proof-writing.llms.md#def-proof-by-induction) on \\t\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}^{(t)} = (\mathbf{I}\_p - s\\\mathbf{S})^t\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}^{(0)}\\. Write \\\mathbf{S} = \mathbf{Q}\mathbf{\Lambda}{\mathbf{Q}}^{\top}\\ ([spectral theorem](linear-algebra-special-matrices.llms.md#thm-spectral)). Then \\\mathbf{I}\_p - s\\\mathbf{S} = \mathbf{Q}(\mathbf{I}\_p - s\\\mathbf{\Lambda}){\mathbf{Q}}^{\top}\\ because \\\mathbf{Q}{\mathbf{Q}}^{\top} = \mathbf{I}\_p\\, and the \\t\\th [power](linear-algebra-special-matrices.llms.md#def-matrix-power) cancels each inner \\{\mathbf{Q}}^{\top}\mathbf{Q} = \mathbf{I}\_p\\, so
>
> \\ \begin{aligned} \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}^{(t)}\right\rVert\mathclose{} &= \mathopen{}\left\lVert\mathbf{Q}(\mathbf{I}\_p - s\\\mathbf{\Lambda})^t{\mathbf{Q}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}^{(0)}\right\rVert\mathclose{} && \text{(the factorization above)} \\ &= \mathopen{}\left\lVert(\mathbf{I}\_p - s\\\mathbf{\Lambda})^t{\mathbf{Q}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}^{(0)}\right\rVert\mathclose{} && \text{(orthogonal matrices preserve length)} \\ &\le \rho(s)^t\\\mathopen{}\left\lVert{\mathbf{Q}}^{\top}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}^{(0)}\right\rVert\mathclose{} && \text{(each coordinate is multiplied by } (1 - s\lambda_i)^t \text{)} \\ &= \rho(s)^t\\\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}^{(0)}\right\rVert\mathclose{}. && \text{(orthogonal matrices preserve length)} \end{aligned} \\
>
> The length-preserving steps apply [orthogonal matrices preserve length](linear-algebra-special-matrices.llms.md#thm-orthogonal-norm). The [inequality](proof-writing.llms.md#def-inequality) holds because \\\mathbf{I}\_p - s\\\mathbf{\Lambda}\\ is diagonal, so its \\t\\th power multiplies coordinate \\i\\ by \\(1 - s\\\lambda_i)^t\\, whose [absolute value](algebra-basics.llms.md#def-absolute-value) is at most \\\rho(s)^t\\.

> **NOTE:**
>
> **Example 57 (The error multiplier for a step length of one quarter)** Let \\\mathbf{S} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ with [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) \\3\\ and \\1\\ ([eigenvalue example](linear-algebra-special-matrices.llms.md#exm-eigenvalue)), and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\. With \\s= 0.25\\, the factors \\1 - s\\\lambda_i\\ are \\0.25\\ and \\0.75\\, so \\\rho(s) = 0.75\\ and
>
> \\ \mathopen{}\left\lVert{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(t)}}\right\rVert\mathclose{} \le 0.75^t\\\mathopen{}\left\lVert{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(0)}}\right\rVert\mathclose{}. \\
>
> Along the [eigenvector](linear-algebra-special-matrices.llms.md#def-eigenvector) for \\\lambda= 3\\ the [error](#def-iterate-error) shrinks fast, and along the eigenvector for \\\lambda= 1\\ it shrinks slowly; the [bound](sets.llms.md#def-bound) follows the slower one.

> **NOTE:**
>
> **Theorem 17 (The best constant step length)** In the setting of [Theorem 16](#thm-gd-quadratic-error), let \\\lambda\_{\min}\\ and \\\lambda\_{\max}\\ be the smallest and largest [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) of \\\mathbf{S}\\. The factor \\\rho(s) = \max_i \mathopen{}\left\|1 - s\\\lambda_i\right\|\mathclose{}\\ of [Theorem 16](#thm-gd-quadratic-error) is smallest over \\s\> 0\\ at
>
> \\ s^\* = \frac{2}{\lambda\_{\min} + \lambda\_{\max}}, \\
>
> where
>
> \\ \rho(s^\*) = \frac{\kappa- 1}{\kappa+ 1}, \qquad \kappa= \kappa(\mathbf{S}), \\
>
> the [condition number](linear-algebra-special-matrices.llms.md#def-condition-number) of \\\mathbf{S}\\.

> **NOTE:**
>
> *Proof*. For \\s\> 0\\, each \\1 - s\\\lambda_i\\ lies between \\u\_{\min} \stackrel{\text{def}}{=}1 - s\\\lambda\_{\max}\\ and \\u\_{\max} \stackrel{\text{def}}{=}1 - s\\\lambda\_{\min}\\, so \\\mathopen{}\left\|1 - s\\\lambda_i\right\|\mathclose{} \le {\max\mathopen{}\left(u\_{\max}, -u\_{\min}\right)\mathclose{}}\\. Both \\\lambda\_{\min}\\ and \\\lambda\_{\max}\\ occur among the \\\lambda_i\\, and \\\mathopen{}\left\|u\_{\max}\right\|\mathclose{} \ge u\_{\max}\\ and \\\mathopen{}\left\|u\_{\min}\right\|\mathclose{} \ge -u\_{\min}\\, so the [maximum](algebra-basics.llms.md#def-maximum) is attained:
>
> \\ \rho(s) = {\max\mathopen{}\left(1 - s\\\lambda\_{\min},\\ s\\\lambda\_{\max} - 1\right)\mathclose{}}. \\
>
> The first [expression](expressions-algorithms.llms.md#def-expression) is strictly decreasing in \\s\\, and the second is strictly increasing, and they coincide when
>
> \\ \begin{aligned} 1 - s\\\lambda\_{\min} &= s\\\lambda\_{\max} - 1 && \text{(set the two expressions equal)} \\ 2 &= s\\(\lambda\_{\min} + \lambda\_{\max}) && \text{(collect the terms in } s\text{)} \\ s&= \frac{2}{\lambda\_{\min} + \lambda\_{\max}} = s^\*. && \text{(divide)} \end{aligned} \\
>
> For \\s\< s^\*\\, \\\rho(s)\\ is at least the decreasing expression, which exceeds its [value](functions.llms.md#def-value) at \\s^\*\\. For \\s\> s^\*\\, \\\rho(s)\\ is at least the increasing expression, which exceeds its value at \\s^\*\\. So \\s^\*\\ is the [minimizer](algebra-basics.llms.md#def-global-minimizer), and
>
> \\ \begin{aligned} \rho(s^\*) &= 1 - \frac{2\\\lambda\_{\min}}{\lambda\_{\min} + \lambda\_{\max}} && \text{(first expression at } s^\* \text{)} \\ &= \frac{\lambda\_{\max} - \lambda\_{\min}}{\lambda\_{\max} + \lambda\_{\min}} && \text{(common denominator)} \\ &= \frac{\kappa- 1}{\kappa+ 1}. && \text{(divide the numerator and denominator by } \lambda\_{\min} \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 58 (The best step length for eigenvalues 3 and 1)** For \\\mathbf{S} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ with [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) \\3\\ and \\1\\, [Theorem 17](#thm-best-constant-step) gives \\s^\* = 2 / (3 + 1) = 0.5\\, \\\kappa= 3\\ ([condition number example](linear-algebra-special-matrices.llms.md#exm-condition-number)), and \\\rho(s^\*) = (3 - 1) / (3 + 1) = 0.5\\. A grid search over \\s= 0.01, 0.02, \ldots, 1\\ finds the smallest \\\rho(s)\\ at \\s= 0.5\\, the same [step length](#def-gradient-descent). Each step then multiplies the [error](#def-iterate-error) by at most \\0.5\\.

> **NOTE:**
>
> Show R code
>
> ``` downlit
> bcs_grid_pf <- seq(0, 1, length.out = 401)
> bcs_first_pf <- abs(1 - 3 * bcs_grid_pf)
> bcs_second_pf <- abs(1 - bcs_grid_pf)
> bcs_rho_pf <- pmax(bcs_first_pf, bcs_second_pf)
> bcs_curve_pf <- tibble::tibble(s = bcs_grid_pf, rho = bcs_rho_pf)
> bcs_aes_pf <- ggplot2::aes(s, rho)
> ggplot2::ggplot(bcs_curve_pf, bcs_aes_pf) +
>   ggplot2::geom_line(colour = "#0072B2") +
>   ggplot2::geom_hline(yintercept = 1, linetype = "dotted") +
>   ggplot2::geom_vline(
>     xintercept = 0.5, colour = "#D55E00", linetype = "dashed"
>   ) +
>   ggplot2::labs(x = "Step length", y = "Error factor")
> ```
>
> Show R code
>
> ``` python
> import matplotlib.pyplot as plt
> import numpy as np
>
> bcs_grid_pf = np.linspace(0, 1, 401)
> bcs_rho_pf = np.maximum(np.abs(1 - 3 * bcs_grid_pf), np.abs(1 - bcs_grid_pf))
> fig, ax = plt.subplots(figsize=(5, 4), layout="constrained")
> ax.plot(bcs_grid_pf, bcs_rho_pf, color="#0072B2")
> #> [<matplotlib.lines.Line2D object at 0x7f44f9c32fd0>]
> ax.axhline(1, color="black", linestyle=":")
> #> <matplotlib.lines.Line2D object at 0x7f44f9c33110>
> ax.axvline(0.5, color="#D55E00", linestyle="--")
> #> <matplotlib.lines.Line2D object at 0x7f44f9c33250>
> ax.set_xlabel("Step length")
> #> Text(0.5, 0, 'Step length')
> ax.set_ylabel("Error factor")
> #> Text(0, 0.5, 'Error factor')
> plt.show()
> ```
>
> ## R
>
> [![Plot of the error factor against the step length, from 0 to 1. A solid blue curve falls in a straight line from 1 at a step length of 0 to a sharp minimum of 0.5 at a step length of 0.5, then rises in a straight line, crossing 1 at a step length of 0.667 and reaching 2 at a step length of 1. A dotted horizontal line marks 1. A dashed vermilion vertical line marks 0.5.](optimization_files/figure-html/best-constant-step-plot-r-1.png)](optimization_files/figure-html/best-constant-step-plot-r-1.png "Figure 4: The factor \rho(s) of Example 58 against the step length s (solid). The best step length (dashed) is where the curve is lowest, and the bound on the error shrinks only where the curve is below 1 (dotted).")
>
> ## Python
>
> [![Plot of the error factor against the step length, from 0 to 1. A solid blue curve falls in a straight line from 1 at a step length of 0 to a sharp minimum of 0.5 at a step length of 0.5, then rises in a straight line, crossing 1 at a step length of 0.667 and reaching 2 at a step length of 1. A dotted horizontal line marks 1. A dashed vermilion vertical line marks 0.5.](optimization_files/figure-html/best-constant-step-plot-python-1.png)](optimization_files/figure-html/best-constant-step-plot-python-1.png "Figure 4: The factor \rho(s) of Example 58 against the step length s (solid). The best step length (dashed) is where the curve is lowest, and the bound on the error shrinks only where the curve is below 1 (dotted).")
>
> Figure 4: The factor \\\rho(s)\\ of [Example 58](#exm-best-constant-step) against the [step length](#def-gradient-descent) \\s\\ (solid). The best step length (dashed) is where the curve is lowest, and the [bound](sets.llms.md#def-bound) on the [error](#def-iterate-error) shrinks only where the curve is below \\1\\ (dotted).

> **NOTE:**
>
> **Exercise 10 (Which step lengths shrink the error bound)** In the setting of [Theorem 16](#thm-gd-quadratic-error), find all \\s\> 0\\ with \\\rho(s) \< 1\\, and write the answer as a condition on \\s\\ that involves \\\lambda\_{\max}\\.

> **NOTE:**
>
> *Solution 10*. \\\rho(s) \< 1\\ says that \\\mathopen{}\left\|1 - s\\\lambda_i\right\|\mathclose{} \< 1\\ for every \\i\\, which is \\-1 \< 1 - s\\\lambda_i \< 1\\. The right [inequality](proof-writing.llms.md#def-inequality) holds for every \\s\> 0\\ because \\\lambda_i \> 0\\. The left inequality is \\s\\\lambda_i \< 2\\, that is, \\s\< 2 / \lambda_i\\. These \\p\\ [inequalities](proof-writing.llms.md#def-inequality), one for each [eigenvalue](linear-algebra-special-matrices.llms.md#def-eigenvalue), all hold exactly when the inequality for the largest eigenvalue holds, since it is the most restrictive:
>
> \\ 0 \< s\< \frac{2}{\lambda\_{\max}}. \\

> **NOTE:**
>
> **Exercise 11 (The best step length for eigenvalues 1 and 9)** Let \\\mathbf{S} = \begin{bmatrix} 1 & 0 \\ 0 & 9 \end{bmatrix}\\. Using [Theorem 17](#thm-best-constant-step), find \\s^\*\\.

> **NOTE:**
>
> *Solution 11*. \\\mathbf{S}\\ is diagonal, so its [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) are its [diagonal entries](linear-algebra-matrices.llms.md#def-main-diagonal) \\1\\ and \\9\\. Then
>
> \\ s^\* = \frac{2}{1 + 9} = 0.2. \\

> **NOTE:**
>
> **Exercise 12 (The best error factor for eigenvalues 1 and 9)** In the setting of [Exercise 11](#exr-best-step-length), find \\\rho(s^\*)\\.

> **NOTE:**
>
> *Solution 12*. The [condition number](linear-algebra-special-matrices.llms.md#def-condition-number) is \\\kappa(\mathbf{S}) = 9 / 1 = 9\\, so by [Theorem 17](#thm-best-constant-step)
>
> \\ \rho(s^\*) = \frac{9 - 1}{9 + 1} = 0.8. \\

> **NOTE:**
>
> **Exercise 13 (Steps to cut the error bound by a factor of ten)** In the setting of [Exercise 11](#exr-best-step-length) and [Exercise 12](#exr-best-step-factor), find the smallest \\t = 1, 2, \ldots\\ with \\\rho(s^\*)^t \le 0.1\\.

> **NOTE:**
>
> *Solution 13*. From [Solution 12](#sol-best-step-factor), \\\rho(s^\*) = 0.8\\. Taking logarithms, \\\rho(s^\*)^t \le 0.1\\ becomes \\t \ln \rho(s^\*) \le \ln 0.1\\. Here \\\ln \rho(s^\*) \< 0\\, so dividing by it flips the [inequality](proof-writing.llms.md#def-inequality): \\t \ge \ln 0.1 / \ln \rho(s^\*) \approx 10.32\\. The smallest such \\t\\ is \\11\\.

## 6 Quasi-Newton methods

> **NOTE:**
>
> This section is adapted from the quasi-Newton lecture of Zhou [\[22\]](#ref-zhou2025quasinewton), used under the MIT License. The license text is:
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
> **Definition 41 (Secant condition)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first [partial derivatives](vector-calculus.llms.md#def-partial-derivative), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+ \in \mathbb{R}^p\\. Write \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+ - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ for the step and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\stackrel{\text{def}}{=}\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+) - \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ for the change in the [gradient](vector-calculus.llms.md#def-vector-derivative). A [symmetric matrix](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) \\\mathbf{B}\\ satisfies the **secant condition** [\[23, Ch. 6\]](#ref-nocedal2006numerical) for \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}})\\ when
>
> \\ \mathbf{B} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}. \\

> **NOTE:**
>
> **Example 59 (The Hessian of a quadratic function satisfies the secant condition)** Let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ with \\\mathbf{Q}\\ [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix). Then \\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}\\, so for any \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+\\
>
> \\ \begin{aligned} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} &= (\mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+ - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) - (\mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}}) && \text{(gradient at each point)} \\ &= \mathbf{Q} (\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+ - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) && \text{(collect terms)} \\ &= \mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}. && \text{(definition of } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} \text{)} \end{aligned} \\
>
> So the Hessian \\\mathbf{Q}\\ of the [quadratic function](algebra-exponentials.llms.md#def-quadratic-polynomial) satisfies the secant condition for every step. For a general \\f\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\approx \mathbf{H}\_f \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}\\ holds for a short step, with \\\mathbf{H}\_f\\ the Hessian of \\f\\ near the step, which is why a [matrix](linear-algebra-matrices.llms.md#def-matrix) that satisfies the secant condition is a reasonable stand-in for the Hessian.

> **NOTE:**
>
> **Definition 42 (Quasi-Newton method)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first [partial derivatives](vector-calculus.llms.md#def-partial-derivative), let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}\\ be a starting point, and let \\\mathbf{H}^{(0)}\\ be a [positive definite matrix](linear-algebra-special-matrices.llms.md#def-positive-definite). A **quasi-Newton method** [\[23, Ch. 6\]](#ref-nocedal2006numerical) produces, for \\t = 0, 1, 2, \ldots\\,
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} - \alpha^{(t)} \mathbf{H}^{(t)} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}), \\
>
> where \\\alpha^{(t)} \> 0\\ is a [step length](#def-gradient-descent) chosen by a [line search](#def-line-search), and \\\mathbf{H}^{(t+1)}\\ is a [symmetric](linear-algebra-special-matrices.llms.md#def-symmetric-matrix) positive definite matrix whose [inverse](linear-algebra-special-matrices.llms.md#def-matrix-inverse) satisfies the [secant condition](#def-secant-condition), that is, \\\mathbf{H}^{(t+1)} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}^{(t)} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}^{(t)}\\, with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}^{(t)} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}^{(t)} = \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)}) - \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)})\\.

> **NOTE:**
>
> **Example 60 (One quasi-Newton step on a quadratic function)** Take \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ with \\\mathbf{Q} = \begin{bmatrix} 4 & 1 \\ 1 & 3 \end{bmatrix}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{b}}\vphantom{b}} = {(1, 2)}^{\top}\\ ([Example 59](#exm-secant-condition)), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ and \\\mathbf{H}^{(0)} = \mathbf{I}\_2\\. For a [quadratic function](algebra-exponentials.llms.md#def-quadratic-polynomial), the [step length](#def-gradient-descent) that minimizes \\f\\ along a [direction](vector-calculus.llms.md#def-direction) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}\\ is \\\alpha = -\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} / {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}}^{\top} \mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}\\.
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
> The step length is 0.25, which moves the [iterate](#def-iterate) to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)} = (0.25, 0.5)\\ and lowers \\f\\ from 0 to -0.625. The difference of the [gradients](vector-calculus.llms.md#def-vector-derivative), \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}^{(0)} = (1.5, 1.75)\\, is \\\mathbf{Q} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}^{(0)}\\ ([the secant condition](#def-secant-condition) for a quadratic function).

> **NOTE:**
>
> *Remark 5* (Why a quasi-Newton method is used). Because \\\mathbf{H}^{(t)}\\ is [positive definite](linear-algebra-special-matrices.llms.md#def-positive-definite), \\-\mathbf{H}^{(t)} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)})\\ is a [descent direction](#def-descent-direction), so, when the [gradient](vector-calculus.llms.md#def-vector-derivative) is not \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\, a [line search](#def-line-search) finds a step that decreases \\f\\. [Newton’s method](#def-newton-method) needs the Hessian and the solution of a system of equations at every iteration, which costs about \\p^3\\ operations for a dense \\p \times p\\ Hessian, and requires the formulas for its entries. A quasi-Newton method needs only the [gradient](vector-calculus.llms.md#def-vector-derivative) and an update of \\\mathbf{H}^{(t)}\\ costing about \\p^2\\ operations. Near a minimizer the method speeds up superlinearly: faster than [gradient descent](#def-gradient-descent), slower than Newton’s method [\[23, Ch. 6\]](#ref-nocedal2006numerical). Replacing \\\mathbf{H}^{(t)}\\ by \\\mathbf{I}\_p\\ in the step formula gives [gradient descent](#def-gradient-descent).

> **NOTE:**
>
> **Definition 43 (BFGS update (Broyden-Fletcher-Goldfarb-Shanno))** Let \\\mathbf{H}\\, an approximation of the [inverse](linear-algebra-special-matrices.llms.md#def-matrix-inverse) Hessian, be a \\p \times p\\ [positive definite matrix](linear-algebra-special-matrices.llms.md#def-positive-definite), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}\in \mathbb{R}^p\\ satisfy \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} \> 0\\. With \\\rho \stackrel{\text{def}}{=}1 / \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}\\, the **BFGS update** [\[23, Ch. 6\]](#ref-nocedal2006numerical) of \\\mathbf{H}\\ is
>
> \\ \mathbf{H}^+ \stackrel{\text{def}}{=}\mathopen{}\left(\mathbf{I}\_p - \rho \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}}^{\top}\right)\mathclose{} \mathbf{H} \mathopen{}\left(\mathbf{I}\_p - \rho \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}}^{\top}\right)\mathclose{} + \rho \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} {\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}}^{\top}. \\

> **NOTE:**
>
> **Example 61 (A BFGS update from the quasi-Newton step)** Continue [Example 60](#exm-quasi-newton-step) with \\\mathbf{H} = \mathbf{I}\_2\\, \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}^{(0)}\\, and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}^{(0)}\\.
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
> *Remark 6* (The curvature condition \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} \> 0\\). If the [strict inequality](algebra-basics.llms.md#def-strict-inequality) of [Theorem 10](#thm-convex-first-order) holds for distinct points, then \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} \> 0\\ for \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+ - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}= \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+) - \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\. Add the versions at \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ and at \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+)\\:
>
> \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+) + f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \> f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) + f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+) + \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} - \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^+) \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}, \\
>
> so \\0 \> -\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}\\. For a general \\f\\, a [line search](#def-line-search) that enforces a curvature condition on the [step length](#def-gradient-descent) (the Wolfe conditions [\[23, Ch. 3\]](#ref-nocedal2006numerical)) guarantees \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}} \> 0\\. Such a step can be found along a [descent direction](#def-descent-direction) when \\f\\ cannot keep decreasing forever.

> **NOTE:**
>
> **Definition 44 (Limited-memory BFGS (L-BFGS))** **Limited-memory BFGS** (**L-BFGS**) [\[23, Ch. 7\]](#ref-nocedal2006numerical) is the [quasi-Newton method](#def-quasi-newton-method) that never forms \\\mathbf{H}^{(t)}\\. It stores only the \\m\\ most recent pairs \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}^{(j)}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}^{(j)})\\, with \\m\\ small, such as \\5\\ or \\20\\, and obtains \\\mathbf{H}^{(t)} \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)})\\ implicitly, through a few vector operations, as if the [BFGS update](#def-bfgs-update) for those \\m\\ pairs were applied to a simple starting [matrix](linear-algebra-matrices.llms.md#def-matrix), such as a multiple of \\\mathbf{I}\_p\\.

> **NOTE:**
>
> **Example 62 (L-BFGS applies the update without forming the matrix)** Continue [Example 61](#exm-bfgs-step) with \\m = 1\\ stored pair \\(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{s}}\vphantom{s}}^{(0)}, \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{y}}\vphantom{y}}^{(0)})\\ and starting [matrix](linear-algebra-matrices.llms.md#def-matrix) \\\mathbf{I}\_2\\. Below, \\\mathbf{H}^+ \frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(1)})\\ is formed from vectors alone, starting from `H0`, then compared with the [matrix product](linear-algebra-matrices.llms.md#def-matrix-mult).
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

## 7 Further reading

- Boyd and Vandenberghe [\[24\]](#ref-boyd2004convex) is the standard reference on convex optimization, covering convex sets, convex functions, convex optimization problems, duality, unconstrained minimization, and interior-point methods.
- Nocedal and Wright [\[23\]](#ref-nocedal2006numerical) is a comprehensive reference on continuous numerical optimization, covering line search methods, trust-region methods, conjugate gradient methods, quasi-Newton methods, and nonlinear equations.
- [Hua Zhou](https://hua-zhou.github.io/)’s [course page for “UCLA Biostat 257 - Statistical Computing” (2025 Spring)](https://ucla-biostat-257.github.io/2025spring/) has lectures on optimization, from root finding to constrained problems. Its source is [on GitHub](https://github.com/ucla-biostat-257/2025spring) under the MIT License.
- [Hua Zhou](https://hua-zhou.github.io/)’s [lecture notes for “UCLA Biostat 216 - Mathematical Methods for Biostatistics” (2024 Fall)](https://ucla-biostat-216.github.io/2024fall/slides/13-optim/13-optim.html)
- [Neural Networks](https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi) is a YouTube playlist by Grant Sanderson (3Blue1Brown); its chapters on gradient descent and backpropagation calculus visually illustrate how gradients of multivariate cost functions are computed and used for optimization.

## References

\[1\]

Wikipedia contributors, “Stationary point — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Stationary_point>

\[2\]

S. J. Miller, *The probability lifesaver: Calculus review problems*. 2016. Available: <https://web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/index.htm#:~:text=http%3A//web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/supplementalchap_calcreview.pdf>

\[3\]

H. Zhou, “Optimization and multivariate calculus.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/13-optim/13-optim.html>

\[4\]

Wikipedia contributors, “Fermat’s theorem (stationary points) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Fermat%27s_theorem_(stationary_points)>

\[5\]

Wikipedia contributors, “Taylor’s theorem — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Taylor%27s_theorem>

\[6\]

W. Rudin, *Principles of mathematical analysis*, 3rd ed. in International series in pure and applied mathematics. New York: McGraw-Hill, 1976.

\[7\]

Wikipedia contributors, “Saddle point — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Saddle_point>

\[8\]

Wikipedia contributors, “Convex set — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Convex_set>

\[9\]

Wikipedia contributors, “Epigraph (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Epigraph_(mathematics)>

\[10\]

Wikipedia contributors, “Tangent space — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Tangent_space>

\[11\]

Wikipedia contributors, “Feasible region — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Feasible_region>

\[12\]

Wikipedia contributors, “Mathematical optimization — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Mathematical_optimization>

\[13\]

Wikipedia contributors, “Lagrange multiplier — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Lagrange_multiplier>

\[14\]

Wikipedia contributors, “Iterative method — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Iterative_method>

\[15\]

Wikipedia contributors, “Newton’s method in optimization — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Newton%27s_method_in_optimization>

\[16\]

Wikipedia contributors, “Rate of convergence — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Rate_of_convergence>

\[17\]

Wikipedia contributors, “Gradient descent — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Gradient_descent>

\[18\]

Wikipedia contributors, “Line search — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Line_search>

\[19\]

Wikipedia contributors, “Rosenbrock function — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Rosenbrock_function>

\[20\]

Wikipedia contributors, “Attractor — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Attractor>

\[21\]

Wikipedia contributors, “Backtracking line search — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Backtracking_line_search>

\[22\]

H. Zhou, “Quasi-Newton methods.” Lecture notes for Biostat 257, Statistical Computing, University of California, Los Angeles, 2025. Accessed: Oct. 26, 2026. \[Online\]. Available: <https://ucla-biostat-257.github.io/2025spring/slides/24-quasinewton/quasinewton.html>

\[23\]

J. Nocedal and S. J. Wright, *Numerical optimization*, 2nd ed. in Springer series in operations research and financial engineering. Springer, 2006. doi: [10.1007/978-0-387-40065-5](https://doi.org/10.1007/978-0-387-40065-5).

\[24\]

S. Boyd and L. Vandenberghe, *Convex optimization*. Cambridge University Press, 2004. doi: [10.1017/CBO9780511804441](https://doi.org/10.1017/CBO9780511804441).

Back to top
