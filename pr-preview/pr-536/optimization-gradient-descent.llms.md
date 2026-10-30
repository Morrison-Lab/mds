# Gradient Descent

Code

Published

Last modified: 2026-10-29 16:13:50 (PDT)

## 1 Gradient descent

> **NOTE:**
>
> **Definition 1 (Gradient descent)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first partial derivatives, let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}\\ be a starting point, and let \\s^{(0)}, s^{(1)}, \ldots\\ be positive **step lengths**. **Gradient descent** [\[1\]](#ref-wikipedia_gradient_descent) computes, for \\t = 0, 1, 2, \ldots\\,
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} - s^{(t)}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}). \\

> **NOTE:**
>
> **Example 1 (Fixed steps on a parabola)** For \\f(x) = x^2\\, \\f'(x) = 2x\\, so gradient descent with fixed step length \\s\\ is
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
> *Remark 1* (Gradient descent as Newton’s method with a simpler Hessian). Gradient descent ([Definition 1](#def-gradient-descent)) is Newton’s method ([Definition 5 in Newton’s Method](optimization-newton.llms.md#def-newton-method)) with the Hessian replaced by \\\tfrac{1}{s^{(t)}} \mathbf{I}\_p\\, so it needs no second derivatives.

> **NOTE:**
>
> **Definition 2 (Gradient ascent)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first [partial derivatives](vector-calculus.llms.md#def-partial-derivative), let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(0)}\\ be a starting point, and let \\s^{(0)}, s^{(1)}, \ldots\\ be positive [step lengths](#def-gradient-descent). **Gradient ascent** [\[1\]](#ref-wikipedia_gradient_descent) repeats, for \\t = 0, 1, 2, \ldots\\, the update
>
> \\ \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t+1)} \stackrel{\text{def}}{=}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} + s^{(t)}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}). \\

> **NOTE:**
>
> **Example 2 (Gradient ascent is gradient descent on the negative function)** Gradient ascent on \\f\\ takes the same steps as [gradient descent](#def-gradient-descent) on \\-f\\, since \\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} (-f) = -\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f\\. In one variable, for \\f(x) = -x^2\\ the [derivative](calculus-derivatives.llms.md#def-derivative) is \\f'(x) = -2x\\, so gradient ascent with fixed [step length](#def-gradient-descent) \\s\\ is \\x^{(t+1)} = (1 - 2s)\\x^{(t)}\\, the iteration of [Example 1](#exm-gradient-descent), which tends to the maximizer \\0\\ when \\0 \< s \< 1\\.

> **NOTE:**
>
> **Definition 3 (Line search)** In gradient descent ([Definition 1](#def-gradient-descent)), a **line search** [\[2\]](#ref-wikipedia_line_search) is a rule that chooses the step length \\s^{(t)}\\ by examining the values of \\f\\ along the line \\\mathopen{}\left\\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} - s\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}) : s \> 0\right\\\mathclose{}\\.

> **NOTE:**
>
> **Definition 4 (Exact line search)** **Exact line search** is the line search ([Definition 3](#def-line-search)) that chooses \\s^{(t)}\\ to minimize \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)} - s\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}))\\ over \\s \> 0\\.

> **NOTE:**
>
> **Example 3 (Exact line search on a parabola)** For \\f(x) = x^2\\ and \\x^{(t)} = 2\\, the derivative is \\f'(2) = 4\\, so the line is \\\mathopen{}\left\\2 - 4s : s \> 0\right\\\mathclose{}\\ and the values along it are
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
> **Definition 5 (Descent direction)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have a gradient \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \stackrel{\text{def}}{=}\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\. A direction \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}}\\ ([direction](vector-calculus.llms.md#def-direction)) is a **descent direction** for \\f\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ if \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{d}}\vphantom{d}} \< 0\\. When \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\, \\-\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\\ is a descent direction, since \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot (-\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}) =-\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\right\rVert\mathclose{}^2 \< 0\\.

> **NOTE:**
>
> **Example 4 (Descent directions for \\x_1^2 + x_2^2\\ at \\{(1, 0)}^{\top}\\)** Let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = x_1^2 + x_2^2\\ and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= {(1, 0)}^{\top}\\, so
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
> **Theorem 1 (A short enough step downhill decreases the function)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first partial derivatives that are continuous on \\\mathbb{R}^p\\ ([continuity](vector-calculus.llms.md#def-continuous-on)), and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\ be a point with \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \stackrel{\text{def}}{=}\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1}\\. Then there is an \\\bar{s} \> 0\\ with \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}) \< f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\ for every \\s \in (0, \bar{s})\\: a short enough step in the descent direction \\-\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\\ ([Definition 5](#def-descent-direction)) decreases \\f\\.

> **NOTE:**
>
> *Proof*. Let \\h(s) \stackrel{\text{def}}{=}f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}})\\. The inner function \\s \mapsto \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\\ has derivative \\-{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top}\\ ([vector-valued derivative](vector-calculus.llms.md#def-vector-valued-derivative)), so by the vector chain rule ([vector chain rule](vector-calculus.llms.md#thm-chain-vec))
>
> \\ \begin{aligned} h'(s) &= -{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}), && \text{(chain rule)} \\ h'(0) &= -{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}}^{\top}\\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) && \text{(set } s = 0 \text{)} \\ &= -\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} && \text{(definition of } \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \text{)} \\ &= -\mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\right\rVert\mathclose{}^2 && \text{(squared length)} \\ &\< 0. && \text{(} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \ne \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{p \times 1} \text{)} \end{aligned} \\
>
> Since \\h'(0) = \lim\_{s \to 0} (h(s) - h(0)) / s\\ is negative, taking \\\varepsilon= \mathopen{}\left\|h'(0)\right\|\mathclose{}\\ in the definition of the limit gives an \\\bar{s} \> 0\\ such that \\(h(s) - h(0)) / s \< h'(0) + \mathopen{}\left\|h'(0)\right\|\mathclose{} = 0\\ for \\0 \< s \< \bar{s}\\. Multiplying by \\s \> 0\\, \\h(s) \< h(0)\\, that is, \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}) \< f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\.

> **NOTE:**
>
> **Example 5 (How short is short enough)** In [Example 1](#exm-gradient-descent), \\f(x) = x^2\\ at \\x \ne 0\\ has \\g = 2x\\, and \\f(x - 2 s x) = (1 - 2s)^2 x^2 \< x^2\\ exactly when \\\mathopen{}\left\|1 - 2s\right\|\mathclose{} \< 1\\, that is, when \\0 \< s \< 1\\. So [Theorem 1](#thm-descent-direction) holds with \\\bar{s} = 1\\, and the step \\s = 1.5\\ of that example was too long.

> **NOTE:**
>
> **Example 6 (Gradient descent zigzags)** Let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2} (x_1^2 + b\\x_2^2)\\ with \\b \> 0\\, so \\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = {(x_1,\\ b x_2)}^{\top}\\ and one gradient step of length \\s\\ from \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ gives \\{((1 - s) x_1,\\ (1 - b s) x_2)}^{\top}\\. For exact line search ([Definition 4](#def-exact-line-search)), let \\\phi(s) \stackrel{\text{def}}{=}f\\ at that point:
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
> - With \\b = 0.01\\, \\r^2 = (0.99 / 1.01)^2 \approx 0.96\\, so \\f\\ shrinks by only about \\4\\\\ per step. Newton’s method reaches the minimizer of any such \\f\\ in one step ([Theorem 2 in Newton’s Method](optimization-newton.llms.md#thm-newton-quadratic)).

> **NOTE:**
>
> **Definition 6 (Rosenbrock function)** The **Rosenbrock function** on \\\mathbb{R}^2\\ is
>
> \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) \stackrel{\text{def}}{=}100\mathopen{}\left(x_2 - x_1^2\right)\mathclose{}^2 + \mathopen{}\left(1 - x_1\right)\mathclose{}^2, \qquad \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}= {(x_1, x_2)}^{\top}. \\
>
> It is a standard test problem for optimizers [\[3\]](#ref-wikipedia_rosenbrock_function).

> **NOTE:**
>
> **Example 7 (Values of the Rosenbrock function)** We evaluate the [Rosenbrock function](#def-rosenbrock-function) at the [minimizer](algebra-basics.llms.md#def-global-minimizer) \\(1, 1)\\, at the origin, and at the standard starting point \\(-1.2, 1)\\. Then we evaluate it along the curve \\x_2 = x_1^2\\, which is the floor of a narrow, curved valley.
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
> [![Contour plot of the Rosenbrock function over first coordinates from -2 to 2 and second coordinates from -1 to 3. The contours are nested curved bands around a narrow parabola-shaped valley along the dashed curve x2 equals x1 squared, with steep walls on both sides. Three marked points, each with its own colour and shape: the minimizer at (1, 1) on the valley floor, a blue circle, the origin on the valley floor, a green square, and the standard starting point (-1.2, 1), an orange triangle, on the left, just outside the dashed curve.](optimization-gradient-descent_files/figure-html/rosenbrock-contours-r-1.png)](optimization-gradient-descent_files/figure-html/rosenbrock-contours-r-1.png "Figure 1: Level curves of the Rosenbrock function, with the curve x_2 = x_1^2 (dashed) along the floor of the valley. The minimizer, the origin and the starting point are marked.")
>
> ## Python
>
> [![Contour plot of the Rosenbrock function over first coordinates from -2 to 2 and second coordinates from -1 to 3. The contours are nested curved bands around a narrow parabola-shaped valley along the dashed curve x2 equals x1 squared, with steep walls on both sides. Three marked points, each with its own colour and shape: the minimizer at (1, 1) on the valley floor, a blue circle, the origin on the valley floor, a green square, and the standard starting point (-1.2, 1), an orange triangle, on the left, just outside the dashed curve.](optimization-gradient-descent_files/figure-html/rosenbrock-contours-python-1.png)](optimization-gradient-descent_files/figure-html/rosenbrock-contours-python-1.png "Figure 1: Level curves of the Rosenbrock function, with the curve x_2 = x_1^2 (dashed) along the floor of the valley. The minimizer, the origin and the starting point are marked.")
>
> Figure 1: [Level curves](vector-calculus.llms.md#def-level-curve) of the [Rosenbrock function](#def-rosenbrock-function), with the curve \\x_2 = x_1^2\\ (dashed) along the floor of the valley. The [minimizer](algebra-basics.llms.md#def-global-minimizer), the origin and the starting point are marked.

> **NOTE:**
>
> **Definition 7 (Basin of attraction)** For given [step lengths](#def-gradient-descent), the **basin of attraction** of a [local minimizer](algebra-basics.llms.md#def-local-minimizer) \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ under [gradient descent](#def-gradient-descent) is the [set](sets.llms.md#def-set) of starting points \\{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(0)}}\\ from which the [iterates](optimization-newton.llms.md#def-iterate) [converge](optimization-newton.llms.md#def-vector-sequence-limit) to \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ [\[4\]](#ref-wikipedia_attractor).

> **NOTE:**
>
> **Example 8 (Basins of a double-well function)** Let \\f(x) = x^4 - 2x^2\\, so \\\frac{\partial}{\partial x} f(x) = 4x(x - 1)(x + 1)\\ and the [stationary points](optimization-critical-points.llms.md#def-stationary-point) are \\-1\\, \\0\\ and \\1\\. Both \\-1\\ and \\1\\ are [local minimizers](algebra-basics.llms.md#def-local-minimizer), with \\f(\pm 1) = -1\\, and \\0\\ is a [local maximizer](optimization-critical-points.llms.md#def-local-maximizer). We run [gradient descent](#def-gradient-descent) with the fixed [step length](#def-gradient-descent) \\s= 0.05\\ for 200 steps from the starting points \\-1.5\\, \\-0.5\\, \\-0.1\\, \\0.1\\, \\0.5\\, \\1.5\\ and \\3\\, and for three steps from \\{{x}^{(0)}} = 4\\.
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
> Each of the six starts between \\-1.5\\ and \\1.5\\ ends at \\-1\\ or \\1\\, whichever lies on its own side of \\0\\, so for these starts the sign of the starting point decides which of the two the run reaches. A run from \\0\\ itself never moves, because \\\frac{\partial}{\partial x} f(0) = 0\\. The [basin of attraction](#def-basin-of-attraction) of \\1\\ is not all of \\(0, \infty)\\: the first step from \\{{x}^{(0)}} = 3\\ lands at \\-1.8\\, on the other side of \\0\\, and the run ends at \\-1\\. From \\{{x}^{(0)}} = 4\\ the [iterates](optimization-newton.llms.md#def-iterate), starting with \\{{x}^{(0)}}\\ itself, are \\4\\, \\-8\\, \\92.8\\ and \\-1.6\times 10^{5}\\, which grow in [absolute value](algebra-basics.llms.md#def-absolute-value) at every step shown. Both of these starts are far from \\0\\, where the [derivative](calculus-derivatives.llms.md#def-derivative) is large and so the step \\s\frac{\partial}{\partial x} f(x)\\ is long. From \\{{x}^{(0)}} = 3\\ that step is \\96\\s\\ long, so the first step stays on the positive side of \\0\\ only when \\s\\ is below \\0.03125\\. So the basin of \\1\\ depends on \\s\\, and with \\s= 0.05\\ the basin is not a half-line.

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
> #> [<matplotlib.lines.Line2D object at 0x7f5378c00050>]
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
> #> [<matplotlib.lines.Line2D object at 0x7f5378c00190>]
> #> [<matplotlib.lines.Line2D object at 0x7f5378c002d0>]
> #> [<matplotlib.lines.Line2D object at 0x7f5378c00410>]
> #> [<matplotlib.lines.Line2D object at 0x7f5378c00550>]
> #> [<matplotlib.lines.Line2D object at 0x7f5378c00690>]
> #> [<matplotlib.lines.Line2D object at 0x7f5378c007d0>]
> ax.set_xlabel("x")
> #> Text(0.5, 0, 'x')
> ax.set_ylabel("f(x)")
> #> Text(0, 0.5, 'f(x)')
> fig.legend(loc="outside lower center", ncol=2)
> #> <matplotlib.legend.Legend object at 0x7f5378c00910>
> plt.show()
> ```
>
> ## R
>
> [![Plot of the double-well function x to the fourth minus 2 x squared for x from -1.6 to 1.6, a grey W-shaped curve with minima of -1 at x of -1 and 1 and a local maximum of 0 at x of 0. Points mark the gradient descent iterates from six starting values, three positive and three negative. Positive starts, drawn as blue circles, slide down the right well to 1. Negative starts, drawn as orange triangles, slide down the left well to -1.](optimization-gradient-descent_files/figure-html/basin-iterates-r-1.png)](optimization-gradient-descent_files/figure-html/basin-iterates-r-1.png "Figure 2: Gradient descent with step length 0.05 on the double-well function of Example 8, from six starting points between -1.5 and 1.5. Each run settles at the local minimizer on its own side of the local maximizer at 0.")
>
> ## Python
>
> [![Plot of the double-well function x to the fourth minus 2 x squared for x from -1.6 to 1.6, a grey W-shaped curve with minima of -1 at x of -1 and 1 and a local maximum of 0 at x of 0. Points mark the gradient descent iterates from six starting values, three positive and three negative. Positive starts, drawn as blue circles, slide down the right well to 1. Negative starts, drawn as orange triangles, slide down the left well to -1.](optimization-gradient-descent_files/figure-html/basin-iterates-python-1.png)](optimization-gradient-descent_files/figure-html/basin-iterates-python-1.png "Figure 2: Gradient descent with step length 0.05 on the double-well function of Example 8, from six starting points between -1.5 and 1.5. Each run settles at the local minimizer on its own side of the local maximizer at 0.")
>
> Figure 2: [Gradient descent](#def-gradient-descent) with [step length](#def-gradient-descent) \\0.05\\ on the double-well [function](functions.llms.md#def-function) of [Example 8](#exm-basin-of-attraction), from six starting points between \\-1.5\\ and \\1.5\\. Each run settles at the [local minimizer](algebra-basics.llms.md#def-local-minimizer) on its own side of the [local maximizer](optimization-critical-points.llms.md#def-local-maximizer) at \\0\\.

> **NOTE:**
>
> **Proposition 1 (Divergence of gradient descent on the double-well function)** Let \\f(x) = x^4 - 2x^2\\, and run [gradient descent](#def-gradient-descent) with a fixed [step length](#def-gradient-descent) \\s\> 0\\. If \\{{x}^{(0)}}\\ satisfies
>
> \\ {{x}^{(0)}}^2 \> 1 + \frac{1}{2s}, \\
>
> then \\\mathopen{}\left\|{{x}^{(t)}}\right\|\mathclose{} \to \infty\\ as \\t \to \infty\\.

> **NOTE:**
>
> *Proof*. The [derivative](calculus-derivatives.llms.md#def-derivative) is \\\frac{\partial}{\partial x} f(x) = 4x^3 - 4x\\, so one step of [gradient descent](#def-gradient-descent) gives
>
> \\ \begin{aligned} {{x}^{(t+1)}} &= {{x}^{(t)}} - s\\\mathopen{}\left(4 {{x}^{(t)}}^3 - 4 {{x}^{(t)}}\right)\mathclose{} && \text{(gradient descent step)} \\ &= -{{x}^{(t)}}\\\mathopen{}\left(4s{{x}^{(t)}}^2 - 4s- 1\right)\mathclose{}. && \text{(factor out } -{{x}^{(t)}} \text{)} \end{aligned} \\
>
> Write \\m(x) \stackrel{\text{def}}{=}4sx^2 - 4s- 1\\. Then \\\mathopen{}\left\|{{x}^{(t+1)}}\right\|\mathclose{} = \mathopen{}\left\|{{x}^{(t)}}\right\|\mathclose{}\\ m({{x}^{(t)}})\\ whenever \\m({{x}^{(t)}}) \ge 0\\. Now \\m(x) \> 1\\ exactly when \\x^2 \> 1 + 1 / (2s)\\, and \\m(x)\\ increases with \\x^2\\. So if \\{{x}^{(t)}}\\ satisfies the condition, then \\\mathopen{}\left\|{{x}^{(t+1)}}\right\|\mathclose{} \> \mathopen{}\left\|{{x}^{(t)}}\right\|\mathclose{}\\, and \\{{x}^{(t+1)}}\\ satisfies it too. By [induction](proof-writing.llms.md#def-proof-by-induction) on \\t\\, every [iterate](optimization-newton.llms.md#def-iterate) satisfies it. Since \\\mathopen{}\left\|{{x}^{(t)}}\right\|\mathclose{}\\ increases at every step, \\{{x}^{(t)}}^2 \ge {{x}^{(0)}}^2\\, and so \\m({{x}^{(t)}}) \ge m({{x}^{(0)}}) \> 1\\. Hence \\\mathopen{}\left\|{{x}^{(t)}}\right\|\mathclose{} \ge m({{x}^{(0)}})^t \mathopen{}\left\|{{x}^{(0)}}\right\|\mathclose{}\\, which tends to \\\infty\\.

> **NOTE:**
>
> **Corollary 1 (Basins of the double-well function are bounded)** Let \\f(x) = x^4 - 2x^2\\, and run [gradient descent](#def-gradient-descent) with a fixed [step length](#def-gradient-descent) \\s\> 0\\. Every start \\{{x}^{(0)}}\\ in the [basin of attraction](#def-basin-of-attraction) of a [local minimizer](algebra-basics.llms.md#def-local-minimizer) of \\f\\ satisfies
>
> \\ {{x}^{(0)}}^2 \le 1 + \frac{1}{2s}. \\

> **NOTE:**
>
> *Proof*. The [iterates](optimization-newton.llms.md#def-iterate) from a start in the basin [converge](optimization-newton.llms.md#def-vector-sequence-limit) to a [local minimizer](algebra-basics.llms.md#def-local-minimizer), so they do not [diverge to \\\infty\\](algebra-exponentials.llms.md#def-diverges-to-infinity). By [Proposition 1](#prp-double-well-divergence), the start therefore does not satisfy \\{{x}^{(0)}}^2 \> 1 + 1 / (2s)\\.

> **NOTE:**
>
> **Example 9 (Divergent starts on the double-well function for three step lengths)** For \\f(x) = x^4 - 2x^2\\, [Proposition 1](#prp-double-well-divergence) says that [gradient descent](#def-gradient-descent) [diverges to \\\infty\\](algebra-exponentials.llms.md#def-diverges-to-infinity) from every start with \\\mathopen{}\left\|{{x}^{(0)}}\right\|\mathclose{}\\ above \\\sqrt{1 + 1 / (2s)}\\. This [bound](sets.llms.md#def-bound) is \\7.14\\ for \\s= 0.01\\, \\3.32\\ for \\s= 0.05\\, and \\2.45\\ for \\s= 0.1\\. The [derivative](calculus-derivatives.llms.md#def-derivative) \\4x^3 - 4x\\ is unbounded, as is the [second derivative](calculus-derivatives.llms.md#def-second-derivative) \\12x^2 - 4\\, so the step \\s\frac{\partial}{\partial x} f(x)\\ grows without bound with \\x\\, and a far start overshoots. By [Proposition 1](#prp-double-well-divergence), every fixed [step length](#def-gradient-descent) fails to [converge](optimization-newton.llms.md#def-vector-sequence-limit) from some starts. A larger step length lowers the bound, so more starts are guaranteed to diverge. By [Corollary 1](#cor-double-well-basin-bound), each [basin of attraction](#def-basin-of-attraction) lies within the same [bounded](algebra-sums.llms.md#def-bounded) [interval](sets.llms.md#def-interval), which narrows as \\s\\ grows. In the earlier [basin example](#exm-basin-of-attraction), \\s= 0.05\\, and the start \\4\\ lies above the bound \\3.32\\, which is why its [iterates](optimization-newton.llms.md#def-iterate) grow.

> **NOTE:**
>
> **Definition 8 (Plateau)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ be a [function](functions.llms.md#def-function) with a [gradient](vector-calculus.llms.md#def-vector-derivative) at every point of a region, and let \\\epsilon \> 0\\ be a tolerance. The region is a **plateau** of \\f\\ if the [Euclidean norm](linear-algebra-vectors.llms.md#def-euclidean-norm) of the gradient satisfies
>
> \\ 0 \< \mathopen{}\left\lVert\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\right\rVert\mathclose{} \< \epsilon \\
>
> at every point \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ of the region. The function is then nearly flat on the region, and the region contains no [stationary point](optimization-critical-points.llms.md#def-stationary-point).

> **NOTE:**
>
> **Example 10 (A cost with no stationary point)**  
>
> Let \\f(x) = \log\mathopen{}\left(1 + \text{e}^{-x}\right)\mathclose{}\\. Its [derivative](calculus-derivatives.llms.md#def-derivative) is \\\frac{\partial}{\partial x} f(x) = -1 / (1 + \text{e}^{x})\\, which is negative for every \\x\\, so \\f\\ has no [stationary point](optimization-critical-points.llms.md#def-stationary-point) at all.
>
> At \\x = 0\\ the [gradient](vector-calculus.llms.md#def-vector-derivative) has size \\0.5\\. At \\x = 10\\ it has size \\4.54\times 10^{-5}\\, which is small but not zero. A step of [gradient descent](#def-gradient-descent) subtracts the gradient times the [step length](#def-gradient-descent). The gradient is negative, so the [iterates](optimization-newton.llms.md#def-iterate) keep moving to the right, more and more slowly. With tolerance \\\epsilon = 10^{-4}\\, the region \\x \ge 10\\ is a plateau ([Definition 8](#def-plateau)). A run that enters this plateau has not converged; the run has only slowed down.

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
> #> [<matplotlib.lines.Line2D object at 0x7f5378a89090>]
> ax.plot(plateau_marks_pf, 1 / (1 + np.exp(plateau_marks_pf)),
>         color="#D55E00", marker="^", markersize=8, linestyle="")
> #> [<matplotlib.lines.Line2D object at 0x7f5378a891d0>]
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
> [![Plot of the size of the gradient of the function log of 1 plus e to the minus x, against x from -5 to 15, on a logarithmic vertical axis. A solid blue curve falls from about 0.99 at x of -5 to about 0.0000003 at x of 15. It is always positive and never reaches 0. Two vermilion triangles mark x of 0, where the size is 0.5, and x of 10, where it is about 0.00005.](optimization-gradient-descent_files/figure-html/plateau-size-r-1.png)](optimization-gradient-descent_files/figure-html/plateau-size-r-1.png "Figure 3: The size of the gradient of the function in Example 10, with x = 0 and x = 10 marked. The size shrinks toward 0 as x grows but is never 0, which is why descent slows down on a plateau without stopping at a stationary point.")
>
> ## Python
>
> [![Plot of the size of the gradient of the function log of 1 plus e to the minus x, against x from -5 to 15, on a logarithmic vertical axis. A solid blue curve falls from about 0.99 at x of -5 to about 0.0000003 at x of 15. It is always positive and never reaches 0. Two vermilion triangles mark x of 0, where the size is 0.5, and x of 10, where it is about 0.00005.](optimization-gradient-descent_files/figure-html/plateau-size-python-1.png)](optimization-gradient-descent_files/figure-html/plateau-size-python-1.png "Figure 3: The size of the gradient of the function in Example 10, with x = 0 and x = 10 marked. The size shrinks toward 0 as x grows but is never 0, which is why descent slows down on a plateau without stopping at a stationary point.")
>
> Figure 3: The size of the [gradient](vector-calculus.llms.md#def-vector-derivative) of the [function](functions.llms.md#def-function) in [Example 10](#exm-plateau), with \\x = 0\\ and \\x = 10\\ marked. The size shrinks toward \\0\\ as \\x\\ grows but is never \\0\\, which is why descent slows down on a [plateau](#def-plateau) without stopping at a [stationary point](optimization-critical-points.llms.md#def-stationary-point).

> **NOTE:**
>
> **Definition 9 (Armijo condition)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first partial derivatives, let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\in \mathbb{R}^p\\, and let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}} \stackrel{\text{def}}{=}\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}})\\. A step length \\s \> 0\\ satisfies the **Armijo condition** [\[5\]](#ref-wikipedia_backtracking_line_search) with constant \\c \in (0, 1)\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\ if
>
> \\ f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- s \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}) \le f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) - c\\ s\\ \mathopen{}\left\lVert\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{g}}\vphantom{g}}\right\rVert\mathclose{}^2. \\

> **NOTE:**
>
> **Example 11 (The Armijo condition on a parabola)** Let \\f(x) = x^2\\ and \\x = 2\\, so \\g = f'(2) = 4\\ and \\\mathopen{}\left\lVert g\right\rVert\mathclose{}^2 = 16\\. With \\c = 1/4\\, the condition on a step length \\s \> 0\\ is
>
> \\ \begin{aligned} (2 - 4s)^2 &\le 4 - 4s && \text{(} f(2 - 4s) \le f(2) - c\\ s\\ \mathopen{}\left\lVert g\right\rVert\mathclose{}^2 \text{)} \\ 4 - 16 s + 16 s^2 &\le 4 - 4s && \text{(expand the square)} \\ 16 s^2 &\le 12 s && \text{(add } 16 s - 4 \text{ to both sides)} \\ s &\le 3/4. && \text{(divide by } 16 s \> 0 \text{)} \end{aligned} \\
>
> So \\s = 1/2\\ satisfies the condition: \\f(0) = 0 \le 4 - 2 = 2\\. And \\s = 1\\ does not: \\f(-2) = 4 \> 4 - 4 = 0\\.

> **NOTE:**
>
> **Definition 10 (Backtracking line search)** Let \\s_0 \> 0\\ be an initial step length, \\\beta \in (0, 1)\\ a shrink factor, and \\c \in (0, 1)\\. **Backtracking line search** [\[5\]](#ref-wikipedia_backtracking_line_search) is the [line search](#def-line-search) that chooses \\s^{(t)}\\ to be the largest of \\s_0, \beta s_0, \beta^2 s_0, \ldots\\ that satisfies the [Armijo condition](#def-armijo-condition) with constant \\c\\ at \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^{(t)}\\.

> **NOTE:**
>
> **Example 12 (Backtracking on a parabola)** For \\f(x) = x^2\\ at \\x = 2\\ with \\c = 1/4\\, the Armijo condition holds exactly when \\s \le 3/4\\ ([Example 11](#exm-armijo-condition)). With \\s_0 = 1\\ and \\\beta = 1/2\\, the trial step lengths are \\1, 1/2, 1/4, \ldots\\. The first, \\s = 1\\, exceeds \\3/4\\ and is rejected. The second, \\s = 1/2\\, is at most \\3/4\\ and is accepted. So backtracking chooses \\s^{(0)} = 1/2\\, after two evaluations of \\f\\.

> **NOTE:**
>
> **Theorem 2 (A bound on the error of gradient descent on a quadratic)** Let \\\mathbf{S}\\ be a \\p \times p\\ [positive definite matrix](linear-algebra-special-matrices.llms.md#def-positive-definite) with [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) \\\lambda_1, \ldots, \lambda_p\\, let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} \in \mathbb{R}^p\\, and let \\f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \tfrac{1}{2}\\{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{\top} \mathbf{S} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} \cdot \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}\\, whose unique [minimizer](algebra-basics.llms.md#def-global-minimizer) is \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* = \mathbf{S}^{-1} \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}\\ ([Theorem 2 in Newton’s Method](optimization-newton.llms.md#thm-newton-quadratic)). [Gradient descent](#def-gradient-descent) with a fixed [step length](#def-gradient-descent) \\s\> 0\\ from any \\{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(0)}}\\ has [errors](optimization-newton.llms.md#def-iterate-error) satisfying, for \\t = 1, 2, \ldots\\,
>
> \\ \mathopen{}\left\lVert{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(t)}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{} \le \rho(s)^t\\\mathopen{}\left\lVert{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(0)}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\right\rVert\mathclose{}, \qquad \rho(s) \stackrel{\text{def}}{=}\max\_{1 \le i \le p} \mathopen{}\left\|1 - s\\\lambda_i\right\|\mathclose{}. \\

> **NOTE:**
>
> *Proof*. Let \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{e}}\vphantom{e}}^{(t)} \stackrel{\text{def}}{=}{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(t)}} - \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\ be the [error](optimization-newton.llms.md#def-iterate-error) at step \\t\\. The [gradient](vector-calculus.llms.md#def-vector-derivative) of \\f\\ is \\\frac{\partial}{\partial \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}} f(\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}) = \mathbf{S}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}- \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}}\\ (see the proof of [Theorem 2 in Newton’s Method](optimization-newton.llms.md#thm-newton-quadratic)), and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathbf{S}\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\*\\, so
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
> **Example 13 (The error multiplier for a step length of one quarter)** Let \\\mathbf{S} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ with [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) \\3\\ and \\1\\ ([eigenvalue example](linear-algebra-special-matrices.llms.md#exm-eigenvalue)), and \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{c}}\vphantom{c}} = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\, so \\\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}^\* = \mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{0}}\vphantom{0}}\_{2 \times 1}\\. With \\s= 0.25\\, the factors \\1 - s\\\lambda_i\\ are \\0.25\\ and \\0.75\\, so \\\rho(s) = 0.75\\ and
>
> \\ \mathopen{}\left\lVert{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(t)}}\right\rVert\mathclose{} \le 0.75^t\\\mathopen{}\left\lVert{{\mathord{\smash\[b\]{\underset{\raise.3ex\hbox{\$\scriptstyle\sim\$}}{x}}\vphantom{x}}}^{(0)}}\right\rVert\mathclose{}. \\
>
> Along the [eigenvector](linear-algebra-special-matrices.llms.md#def-eigenvector) for \\\lambda= 3\\ the [error](optimization-newton.llms.md#def-iterate-error) shrinks fast, and along the eigenvector for \\\lambda= 1\\ it shrinks slowly; the [bound](sets.llms.md#def-bound) follows the slower one.

> **NOTE:**
>
> **Theorem 3 (The best constant step length)** In the setting of [Theorem 2](#thm-gd-quadratic-error), let \\\lambda\_{\min}\\ and \\\lambda\_{\max}\\ be the smallest and largest [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) of \\\mathbf{S}\\. The factor \\\rho(s) = \max_i \mathopen{}\left\|1 - s\\\lambda_i\right\|\mathclose{}\\ of [Theorem 2](#thm-gd-quadratic-error) is smallest over \\s\> 0\\ at
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
> **Example 14 (The best step length for eigenvalues 3 and 1)** For \\\mathbf{S} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ with [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) \\3\\ and \\1\\, [Theorem 3](#thm-best-constant-step) gives \\s^\* = 2 / (3 + 1) = 0.5\\, \\\kappa= 3\\ ([condition number example](linear-algebra-special-matrices.llms.md#exm-condition-number)), and \\\rho(s^\*) = (3 - 1) / (3 + 1) = 0.5\\. A grid search over \\s= 0.01, 0.02, \ldots, 1\\ finds the smallest \\\rho(s)\\ at \\s= 0.5\\, the same [step length](#def-gradient-descent). Each step then multiplies the [error](optimization-newton.llms.md#def-iterate-error) by at most \\0.5\\.

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
> #> [<matplotlib.lines.Line2D object at 0x7f5378864690>]
> ax.axhline(1, color="black", linestyle=":")
> #> <matplotlib.lines.Line2D object at 0x7f53788647d0>
> ax.axvline(0.5, color="#D55E00", linestyle="--")
> #> <matplotlib.lines.Line2D object at 0x7f5378864910>
> ax.set_xlabel("Step length")
> #> Text(0.5, 0, 'Step length')
> ax.set_ylabel("Error factor")
> #> Text(0, 0.5, 'Error factor')
> plt.show()
> ```
>
> ## R
>
> [![Plot of the error factor against the step length, from 0 to 1. A solid blue curve falls in a straight line from 1 at a step length of 0 to a sharp minimum of 0.5 at a step length of 0.5, then rises in a straight line, crossing 1 at a step length of 0.667 and reaching 2 at a step length of 1. A dotted horizontal line marks 1. A dashed vermilion vertical line marks 0.5.](optimization-gradient-descent_files/figure-html/best-constant-step-plot-r-1.png)](optimization-gradient-descent_files/figure-html/best-constant-step-plot-r-1.png "Figure 4: The factor \rho(s) of Example 14 against the step length s (solid). The best step length (dashed) is where the curve is lowest, and the bound on the error shrinks only where the curve is below 1 (dotted).")
>
> ## Python
>
> [![Plot of the error factor against the step length, from 0 to 1. A solid blue curve falls in a straight line from 1 at a step length of 0 to a sharp minimum of 0.5 at a step length of 0.5, then rises in a straight line, crossing 1 at a step length of 0.667 and reaching 2 at a step length of 1. A dotted horizontal line marks 1. A dashed vermilion vertical line marks 0.5.](optimization-gradient-descent_files/figure-html/best-constant-step-plot-python-1.png)](optimization-gradient-descent_files/figure-html/best-constant-step-plot-python-1.png "Figure 4: The factor \rho(s) of Example 14 against the step length s (solid). The best step length (dashed) is where the curve is lowest, and the bound on the error shrinks only where the curve is below 1 (dotted).")
>
> Figure 4: The factor \\\rho(s)\\ of [Example 14](#exm-best-constant-step) against the [step length](#def-gradient-descent) \\s\\ (solid). The best step length (dashed) is where the curve is lowest, and the [bound](sets.llms.md#def-bound) on the [error](optimization-newton.llms.md#def-iterate-error) shrinks only where the curve is below \\1\\ (dotted).

> **NOTE:**
>
> **Exercise 1 (Which step lengths shrink the error bound)** In the setting of [Theorem 2](#thm-gd-quadratic-error), find all \\s\> 0\\ with \\\rho(s) \< 1\\, and write the answer as a condition on \\s\\ that involves \\\lambda\_{\max}\\.

> **NOTE:**
>
> *Solution 1*. \\\rho(s) \< 1\\ says that \\\mathopen{}\left\|1 - s\\\lambda_i\right\|\mathclose{} \< 1\\ for every \\i\\, which is \\-1 \< 1 - s\\\lambda_i \< 1\\. The right [inequality](proof-writing.llms.md#def-inequality) holds for every \\s\> 0\\ because \\\lambda_i \> 0\\. The left inequality is \\s\\\lambda_i \< 2\\, that is, \\s\< 2 / \lambda_i\\. These \\p\\ [inequalities](proof-writing.llms.md#def-inequality), one for each [eigenvalue](linear-algebra-special-matrices.llms.md#def-eigenvalue), all hold exactly when the inequality for the largest eigenvalue holds, since it is the most restrictive:
>
> \\ 0 \< s\< \frac{2}{\lambda\_{\max}}. \\

> **NOTE:**
>
> **Exercise 2 (The best step length for eigenvalues 1 and 9)** In [gradient descent](#def-gradient-descent), a fixed [step length](#def-gradient-descent) that is too short [converges](algebra-exponentials.llms.md#def-convergent-sequence) slowly, and one that is too long [diverges](algebra-exponentials.llms.md#def-divergent-sequence). [Theorem 3](#thm-best-constant-step) gives the best one from the [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) of \\\mathbf{S}\\.
>
> Let \\\mathbf{S} = \begin{bmatrix} 1 & 0 \\ 0 & 9 \end{bmatrix}\\. Using [Theorem 3](#thm-best-constant-step), find \\s^\*\\.

> **NOTE:**
>
> *Solution 2*. \\\mathbf{S}\\ is diagonal, so its [eigenvalues](linear-algebra-special-matrices.llms.md#def-eigenvalue) are its [diagonal entries](linear-algebra-matrices.llms.md#def-main-diagonal) \\1\\ and \\9\\. Then
>
> \\ s^\* = \frac{2}{1 + 9} = 0.2. \\

> **NOTE:**
>
> **Exercise 3 (The best error factor for eigenvalues 1 and 9)** In the setting of [Exercise 2](#exr-best-step-length), find \\\rho(s^\*)\\.

> **NOTE:**
>
> *Solution 3*. The [condition number](linear-algebra-special-matrices.llms.md#def-condition-number) is \\\kappa(\mathbf{S}) = 9 / 1 = 9\\, so by [Theorem 3](#thm-best-constant-step)
>
> \\ \rho(s^\*) = \frac{9 - 1}{9 + 1} = 0.8. \\

> **NOTE:**
>
> **Exercise 4 (Steps to cut the error bound by a factor of ten)** In the setting of [Exercise 2](#exr-best-step-length) and [Exercise 3](#exr-best-step-factor), find the smallest \\t = 1, 2, \ldots\\ with \\\rho(s^\*)^t \le 0.1\\.

> **NOTE:**
>
> *Solution 4*. From [Solution 3](#sol-best-step-factor), \\\rho(s^\*) = 0.8\\. Taking logarithms, \\\rho(s^\*)^t \le 0.1\\ becomes \\t \ln \rho(s^\*) \le \ln 0.1\\. Here \\\ln \rho(s^\*) \< 0\\, so dividing by it flips the [inequality](proof-writing.llms.md#def-inequality): \\t \ge \ln 0.1 / \ln \rho(s^\*) \approx 10.32\\. The smallest such \\t\\ is \\11\\.

Back to top

## References

\[1\]

Wikipedia contributors, “Gradient descent — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Gradient_descent>

\[2\]

Wikipedia contributors, “Line search — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Line_search>

\[3\]

Wikipedia contributors, “Rosenbrock function — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Rosenbrock_function>

\[4\]

Wikipedia contributors, “Attractor — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Attractor>

\[5\]

Wikipedia contributors, “Backtracking line search — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Backtracking_line_search>
