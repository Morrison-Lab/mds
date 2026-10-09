# Calculus

Code

Published

Last modified: 2026-10-09 01:33:02 (PDT)

## 1 Derivatives

### 1.1 Limits and derivatives

> **NOTE:**
>
> **Definition 1 (Limit of a function at a point)** Let \\f\\ be a [function](sets-functions.llms.md#def-function) defined at every point of an [open interval](sets-functions.llms.md#def-interval) around \\c\\, except possibly at \\c\\ itself, and let \\L\\ be a [real number](notation.llms.md#def-real-numbers). The **limit** of \\f(x)\\ as \\x\\ approaches \\c\\ is \\L\\, written \\\lim\_{x \to c} f(x) = L\\, if for every \\\varepsilon\> 0\\ there is a \\\delta\> 0\\ such that
>
> \\\mathopen{}\left\|f(x) - L\right\|\mathclose{} \< \varepsilon\quad \text{for every } x \text{ with } 0 \< \mathopen{}\left\|x - c\right\|\mathclose{} \< \delta.\\
>
> Here \\\mathopen{}\left\|\cdot\right\|\mathclose{}\\ is the [absolute value](algebra.llms.md#def-absolute-value). When such a real number \\L\\ exists, the limit **exists**; otherwise, the limit does not exist. The value \\f(c)\\, if it is defined, plays no role.

> **NOTE:**
>
> **Example 1 (The limit of \\3x + 1\\ at \\2\\)** \\\lim\_{x \to 2} (3x + 1) = 7\\. Given \\\varepsilon\> 0\\, take \\\delta= \varepsilon/ 3\\. For every \\x\\ with \\0 \< \mathopen{}\left\|x - 2\right\|\mathclose{} \< \delta\\, using the [distributive law](algebra.llms.md#def-distributive) in the second line,
>
> \\ \begin{aligned} \mathopen{}\left\|(3x + 1) - 7\right\|\mathclose{} &= \mathopen{}\left\|3x - 6\right\|\mathclose{} && \text{(subtract)} \\ &= \mathopen{}\left\|3(x - 2)\right\|\mathclose{} && \text{(distributive law)} \\ &= 3 \mathopen{}\left\|x - 2\right\|\mathclose{} && \text{(} \mathopen{}\left\|3y\right\|\mathclose{} = 3 \mathopen{}\left\|y\right\|\mathclose{} \text{, since } 3 \> 0 \text{)} \\ &\< 3 \cdot\frac{\varepsilon}{3} && \text{(} \mathopen{}\left\|x - 2\right\|\mathclose{} \< \delta= \varepsilon/ 3 \text{)} \\ &= \varepsilon && \text{(multiply)} \end{aligned} \\
>
> For example, with \\\varepsilon= 0.3\\ and \\\delta= 0.1\\, the point \\x = 2.05\\ satisfies \\0 \< \mathopen{}\left\|2.05 - 2\right\|\mathclose{} \< 0.1\\, and \\\mathopen{}\left\|(3 \cdot 2.05 + 1) - 7\right\|\mathclose{} = \mathopen{}\left\|7.15 - 7\right\|\mathclose{} = 0.15 \< 0.3\\.

> **NOTE:**
>
> **Definition 2 (One-sided limits)** Let \\f\\ be a function and \\L\\ a real number.
>
> - The **right-hand limit** of \\f\\ at \\c\\ is \\L\\, written \\\lim\_{x \to c^+} f(x) = L\\, if for every \\\varepsilon\> 0\\ there is a \\\delta\> 0\\ such that \\\mathopen{}\left\|f(x) - L\right\|\mathclose{} \< \varepsilon\\ for every \\x\\ with \\c \< x \< c + \delta\\.
> - The **left-hand limit** of \\f\\ at \\c\\ is \\L\\, written \\\lim\_{x \to c^-} f(x) = L\\, if for every \\\varepsilon\> 0\\ there is a \\\delta\> 0\\ such that \\\mathopen{}\left\|f(x) - L\right\|\mathclose{} \< \varepsilon\\ for every \\x\\ with \\c - \delta\< x \< c\\.
>
> These are the **one-sided limits** of \\f\\ at \\c\\. The limit \\\lim\_{x \to c} f(x)\\ ([Definition 1](#def-limit)) exists exactly when both one-sided limits exist and are equal, and then all three are equal.

> **NOTE:**
>
> **Example 2 (One-sided limits of a step function)** Let \\H(x) = 1\\ for \\x \ge 0\\ and \\H(x) = 0\\ for \\x \< 0\\.
>
> - \\\lim\_{x \to 0^+} H(x) = 1\\, because \\H(x) = 1\\ for every \\x \> 0\\.
> - \\\lim\_{x \to 0^-} H(x) = 0\\, because \\H(x) = 0\\ for every \\x \< 0\\.
>
> The one-sided limits differ, since \\1 \ne 0\\, so \\\lim\_{x \to 0} H(x)\\ does not exist.

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist introduces limits and derivatives:
>
> - [Calculating Limits](https://www.youtube.com/watch?v=VUlOwf9P9Pc&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Exercises on Limits](https://www.youtube.com/watch?v=_2S3V5_DqAc&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Intro to Differential Calculus](https://www.youtube.com/watch?v=w1NJFmUEHWg&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [How Derivatives Arise from Limits](https://www.youtube.com/watch?v=9l0b37Kb030&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Derivative Notation](https://www.youtube.com/watch?v=457-HLoOo6U&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Definition 3 (Difference quotient)** Let \\f\\ be a real-valued function of one variable, defined at \\c\\ and at \\c + h\\, with \\h \ne 0\\. The **difference quotient** of \\f\\ at \\c\\ with increment \\h\\ is
>
> \\ \frac{f(c + h) - f(c)}{h}, \\
>
> the [slope](algebra.llms.md#def-affine-function) of the line through the points \\(c, f(c))\\ and \\(c + h, f(c + h))\\.

> **NOTE:**
>
> **Example 3 (The difference quotient of \\x^2\\ at \\1\\)** For \\f(x) = x^2\\, \\c = 1\\, and \\h \ne 0\\,
>
> \\ \begin{aligned} \frac{f(1 + h) - f(1)}{h} &= \frac{(1 + h)^2 - 1}{h} && \text{(substitute into } f \text{)} \\ &= \frac{1 + 2h + h^2 - 1}{h} && \text{(expand } (1 + h)^2 \text{)} \\ &= \frac{2h + h^2}{h} && \text{(} 1 - 1 = 0 \text{)} \\ &= 2 + h, && \text{(divide by } h \ne 0 \text{)} \end{aligned} \\
>
> which tends to \\2\\ as \\h \to 0\\ ([Definition 1](#def-limit)). With \\h = 0.1\\ the difference quotient is \\2 + 0.1 = 2.1\\: the line through \\(1, 1)\\ and \\(1.1, 1.21)\\ has slope \\\tfrac{1.21 - 1}{0.1} = \tfrac{0.21}{0.1} = 2.1\\.

> **NOTE:**
>
> **Definition 4 (Differentiable function)** A function \\f\\ is **differentiable at** \\x = c\\ if the limit ([Definition 1](#def-limit)) of the difference quotient ([Definition 3](#def-difference-quotient)) as \\h \to 0\\,
>
> \\f'(c) \stackrel{\text{def}}{=}\lim\_{h \to 0} \frac{f(c + h) - f(c)}{h},\\
>
> exists and is finite. The number \\f'(c)\\ is the derivative of \\f\\ at \\c\\ ([Definition 5](#def-derivative)).
>
> ([Larson and Edwards 2018, sec. 2.1](#ref-larsonCalc11e), p. 100)

> **NOTE:**
>
> **Example 4 (A differentiable function, and a limit that is not finite)**  
>
> - \\f(x) = x^2\\ is differentiable at \\c = 3\\:
>
>   \\ \begin{aligned} \frac{f(3 + h) - f(3)}{h} &= \frac{(3 + h)^2 - 3^2}{h} && \text{(substitute } f(x) = x^2 \text{)} \\ &= \frac{9 + 6h + h^2 - 9}{h} && \text{(expand } (3 + h)^2 \text{)} \\ &= \frac{6h + h^2}{h} && \text{(cancel } 9 - 9 \text{)} \\ &= 6 + h && \text{(divide by } h \ne 0 \text{)} \end{aligned} \\
>
>   which tends to the finite limit \\f'(3) = 6\\ as \\h \to 0\\.
>
> - \\g(x) = \sqrt\[3\]{x}\\ is not differentiable at \\c = 0\\: the difference quotient \\\tfrac{g(h) - g(0)}{h} = \tfrac{\sqrt\[3\]{h}}{h} = \tfrac{1}{(\sqrt\[3\]{h})^2}\\ grows without bound as \\h \to 0\\, so the limit is not finite.

> **NOTE:**
>
> **Definition 5 (Derivative)** If \\f\\ is differentiable at \\c\\ ([Definition 4](#def-differentiable)), the number \\f'(c)\\ is the **derivative** of \\f\\ at \\c\\. The **derivative** of \\f\\ is the function \\f'\\ whose value at each \\x\\ where \\f\\ is differentiable is \\f'(x)\\. Writing the derivative with a prime, as \\f'\\ or \\f'(x)\\, is **Lagrange’s notation**. The derivative of \\f\\ is also written \\\frac{d f}{d x}\\ or \\\frac{d }{d x} f(x)\\, which is **Leibniz notation**.

> **NOTE:**
>
> **Example 5 (The derivative of \\x^2\\)** For \\f(x) = x^2\\, the computation in [Example 4](#exm-differentiable), with \\3\\ replaced by any real number \\c\\, gives \\\frac{f(c + h) - f(c)}{h} = 2c + h\\, which tends to \\2c\\ as \\h \to 0\\. So the derivative of \\f\\ is \\f'(x) = 2x\\. For example, \\f'(3) = 6\\ and \\f'(-1) = -2\\.

> **NOTE:**
>
> **Definition 6 (One-sided derivatives)** Let \\f\\ be a function defined at \\c\\.
>
> - The **right-hand derivative** of \\f\\ at \\c\\ is the right-hand limit ([Definition 2](#def-one-sided-limit)) \\\lim\_{h \to 0^+} \frac{f(c + h) - f(c)}{h}\\ of the difference quotient ([Definition 3](#def-difference-quotient)), when that limit exists and is finite.
> - The **left-hand derivative** of \\f\\ at \\c\\ is the left-hand limit \\\lim\_{h \to 0^-} \frac{f(c + h) - f(c)}{h}\\, when that limit exists and is finite.
>
> These are the **one-sided derivatives** of \\f\\ at \\c\\.

> **NOTE:**
>
> **Example 6 (One-sided derivatives of \\\mathopen{}\left\|x\right\|\mathclose{}\\ at \\0\\)** Let \\f(x) = \mathopen{}\left\|x\right\|\mathclose{}\\, the [absolute value](algebra.llms.md#def-absolute-value), and \\c = 0\\.
>
> - For \\h \> 0\\, \\\mathopen{}\left\|h\right\|\mathclose{} = h\\, so \\\frac{f(0 + h) - f(0)}{h} = \frac{h - 0}{h} = 1\\. The right-hand derivative of \\f\\ at \\0\\ is \\1\\.
> - For \\h \< 0\\, \\\mathopen{}\left\|h\right\|\mathclose{} = -h\\, so \\\frac{f(0 + h) - f(0)}{h} = \frac{-h - 0}{h} = -1\\. The left-hand derivative of \\f\\ at \\0\\ is \\-1\\.
>
> For example, \\h = 0.5\\ gives \\\tfrac{0.5}{0.5} = 1\\, and \\h = -0.5\\ gives \\\tfrac{0.5}{-0.5} = -1\\. The one-sided derivatives differ, since \\1 \ne -1\\.

> **NOTE:**
>
> **Definition 7 (Second derivative)** Let \\f\\ be a real-valued function of one variable whose derivative \\f'\\ ([Definition 5](#def-derivative)) exists at every point of an [open interval](sets-functions.llms.md#def-interval) containing \\c\\. If \\f'\\ is differentiable ([Definition 4](#def-differentiable)) at \\c\\, its derivative there, written \\f''(c)\\ or \\\frac{d ^2 f}{d x^2}\\, is the **second derivative** of \\f\\ at \\c\\.

> **NOTE:**
>
> **Example 7 (The second derivative of \\x^3\\)** For \\f(x) = x^3\\, the power rule ([Theorem 3](#thm-deriv-polynomial)) gives \\f'(x) = 3x^2\\ at every \\x\\, and differentiating again, with the constant multiple rule ([Theorem 2](#thm-deriv-const-factor)), gives \\f''(x) = 3 \cdot 2x = 6x\\. So \\f''(2) = 12\\, \\f''(0) = 0\\, and \\f''(-1) = -6\\.

### 1.2 Derivative rules

> **NOTE:**
>
> **Theorem 1 (Constant rule)** If \\c\\ is constant with respect to \\x\\, then
>
> \\\frac{\partial}{\partial x}c = 0\\

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has a video on this rule:
>
> - [The Derivative of a Constant](https://www.youtube.com/watch?v=GL5Rqgn7i9g&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Theorem 2 (Constant multiple rule)** If \\a\\ is constant with respect to \\x\\ and \\y\\ is a differentiable function of \\x\\, then: \\\frac{\partial}{\partial x}ay = a \frac{\partial y}{\partial x}\\

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has a video on this rule:
>
> - [The Constant Multiple Rule for Derivatives](https://www.youtube.com/watch?v=zgNEiW0JHQA&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Theorem 3 (Power rule)** For every real number \\q\\ and every \\x \> 0\\, the derivative of the [power](algebra.llms.md#def-real-power) \\x^q\\ is:
>
> \\\frac{\partial}{\partial x}x^q = qx^{q-1}\\
>
> When \\q\\ is a positive [integer](notation.llms.md#def-integers), the same formula holds for every real \\x\\.

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on this rule, on the sum rule (the derivative of a sum is the sum of the derivatives), and on exercises that combine the rules so far:
>
> - [The Power Rule for Derivatives](https://www.youtube.com/watch?v=pyB2Rpcs6LQ&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [The Sum Rule for Derivatives](https://www.youtube.com/watch?v=WgjuA94Dj54&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Exercises on Derivative Rules](https://www.youtube.com/watch?v=EANCBJiw9pE&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Exercise 1 (Derivative of polynomial and power functions)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.1.
>
> Find the derivative of
>
> \\f(x) = 4x^5 + 3x^2 + x^{1/3}\\

> **NOTE:**
>
> *Solution 1*. Differentiate term by term using the constant multiple rule ([Theorem 2](#thm-deriv-const-factor)) and the power rule ([Theorem 3](#thm-deriv-polynomial)):
>
> \\\begin{aligned} \frac{d }{d x}(4x^5) &= 4 \cdot(5x^4) \\ &= 20x^4 \\ \frac{d }{d x}(3x^2) &= 3 \cdot(2x) \\ &= 6x \\ \frac{d }{d x}(x^{1/3}) &= \frac{1}{3}x^{1/3 - 1} \\ &= \frac{1}{3}x^{-2/3} \end{aligned}\\
>
> Combining the three terms yields:
>
> \\f'(x) = 20x^4 + 6x + \frac{1}{3}x^{-2/3}\\

> **NOTE:**
>
> **Exercise 2 (Finding points with a prescribed slope)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.14.
>
> Let \\f(x) = \frac{1}{3}x^3 + x^2 - x - 1\\. Find all points on the graph of \\f\\ where the slope is:
>
> 1.  \\-1\\
> 2.  \\2\\
> 3.  \\0\\

> **NOTE:**
>
> *Solution 2*. The slope is given by the derivative:
>
> \\f'(x) = x^2 + 2x - 1\\
>
> **1. Slope \\-1\\:** Solve \\x^2 + 2x - 1 = -1 \iff x^2 + 2x = 0 \iff x(x + 2) = 0\\. The roots are \\x = 0\\ and \\x = -2\\. Evaluating \\f\\: \\f(0) = -1\\ and \\f(-2) = -\frac{8}{3} + 4 + 2 - 1 = \frac{7}{3}\\. The points are \\(0, -1)\\ and \\(-2, 7/3)\\.
>
> **2. Slope \\2\\:** Solve \\x^2 + 2x - 1 = 2 \iff x^2 + 2x - 3 = 0 \iff (x + 3)(x - 1) = 0\\. The roots are \\x = -3\\ and \\x = 1\\. Evaluating \\f\\: \\f(-3) = -9 + 9 + 3 - 1 = 2\\ and \\f(1) = \frac{1}{3} + 1 - 1 - 1 = -\frac{2}{3}\\. The points are \\(-3, 2)\\ and \\(1, -2/3)\\.
>
> **3. Slope \\0\\:** Solve \\x^2 + 2x - 1 = 0\\. By the quadratic formula:
>
> \\ \begin{aligned} x &= \frac{-2 \pm \sqrt{4 - 4(1)(-1)}}{2} \\ &= \frac{-2 \pm \sqrt{8}}{2} \\ &= -1 \pm \sqrt{2} \end{aligned} \\

> **NOTE:**
>
> **Theorem 4 (Derivative of natural logarithm)** For every \\x \> 0\\, the derivative of the [natural logarithm](algebra.llms.md#def-natural-log) is:
>
> \\ \begin{aligned} \operatorname{log}'\mathopen{}\left\\x\right\\\mathclose{} &= \frac{1}{x} \\ &= x^{-1} \end{aligned} \\

> **NOTE:**
>
> **Exercise 3 (Derivative after logarithmic simplification)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.4.
>
> Find the derivative of
>
> \\f(x) = \log(4x) - \log(2x)\\
>
> for \\x \> 0\\.

> **NOTE:**
>
> *Solution 3*. Simplify before differentiating using the quotient property of logarithms:
>
> \\ \begin{aligned} f(x) &= \log(4x) - \log(2x) \\ &= \log\mathopen{}\left(\frac{4x}{2x}\right)\mathclose{} \\ &= \log 2 \end{aligned} \\
>
> Because \\\log 2\\ is constant with respect to \\x\\, the constant rule ([Theorem 1](#thm-deriv-const)) gives:
>
> \\f'(x) = 0\\
>
> *Remark:* While one could apply the chain rule separately to each term (\\\frac{4}{4x} - \frac{2}{2x} = \frac{1}{x} - \frac{1}{x} = 0\\), simplifying algebraically first is faster and prevents arithmetic errors.

> **NOTE:**
>
> **Theorem 5 (Derivative of exponential)** For every real \\x\\, the derivative of the [exponential function](algebra.llms.md#def-exponential-function) is:
>
> \\\operatorname{exp}'\mathopen{}\left\\x\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\x\right\\\mathclose{}\\

> **NOTE:**
>
> **Theorem 6 (Derivative of sine)** For every real \\x\\, the derivative of the sine function is:
>
> \\\frac{\partial}{\partial x}\sin x = \cos x\\

> **NOTE:**
>
> **Theorem 7 (Derivative of cosine)** For every real \\x\\, the derivative of the cosine function is:
>
> \\\frac{\partial}{\partial x}\cos x = -\sin x\\

> **NOTE:**
>
> **Theorem 8 (Product rule)** If \\a\\ and \\b\\ are differentiable functions of \\x\\, then
>
> \\(ab)' = ab' + ba'\\

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has a video on this rule:
>
> - [The Product Rule for Derivatives](https://www.youtube.com/watch?v=-YFKJRp9Ncc&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Exercise 4 (Derivative of a product)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.2.
>
> Find the derivative of
>
> \\f(x) = (x^4 + 3x^2 + 8)\cos x\\

> **NOTE:**
>
> *Solution 4*. Apply the product rule ([Theorem 8](#thm-product-rule)) with:
>
> \\u(x) = x^4 + 3x^2 + 8, \qquad v(x) = \cos x\\
>
> Their derivatives are:
>
> \\u'(x) = 4x^3 + 6x, \qquad v'(x) = -\sin x\\
>
> By the product rule:
>
> \\\begin{aligned} f'(x) &= u'(x)v(x) + u(x)v'(x) \\ &= (4x^3 + 6x)\cos x - (x^4 + 3x^2 + 8)\sin x \end{aligned}\\

> **NOTE:**
>
> **Exercise 5 (Second derivative of a product)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.15.
>
> Find the second derivative of
>
> \\f(x) = (x^4 + 3x^2 + 8)\cos x\\

> **NOTE:**
>
> *Solution 5*. From [Exercise 4](#exr-miller-deriv-product-poly-cos), the first derivative is:
>
> \\f'(x) = (4x^3 + 6x)\cos x - (x^4 + 3x^2 + 8)\sin x\\
>
> Differentiate each term via the product rule:
>
> \\\begin{aligned} \frac{d }{d x}\mathopen{}\left\[(4x^3 + 6x)\cos x\right\]\mathclose{} &= (12x^2 + 6)\cos x - (4x^3 + 6x)\sin x \\ \frac{d }{d x}\mathopen{}\left\[-(x^4 + 3x^2 + 8)\sin x\right\]\mathclose{} &= -(4x^3 + 6x)\sin x - (x^4 + 3x^2 + 8)\cos x \end{aligned}\\
>
> Combining and grouping like trigonometric terms:
>
> \\\begin{aligned} f''(x) &= \mathopen{}\left\[(12x^2 + 6) - (x^4 + 3x^2 + 8)\right\]\mathclose{}\cos x - 2(4x^3 + 6x)\sin x \\ &= (-x^4 + 9x^2 - 2)\cos x - (8x^3 + 12x)\sin x \end{aligned}\\

> **NOTE:**
>
> **Theorem 9 (Quotient rule)** If \\a\\ and \\b\\ are differentiable functions of \\x\\ and \\b \neq 0\\, then
>
> \\(a/b)' = a'/b - (a/b^2)b'\\

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has a video on this rule:
>
> - [The Quotient Rule for Derivatives](https://www.youtube.com/watch?v=apqvDKiWMsQ&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Exercise 6 (Derivative of a rational function)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.12.
>
> Find the derivative of
>
> \\f(x) = \frac{x^2 - 1}{x - 1}\\
>
> for \\x \ne 1\\.

> **NOTE:**
>
> *Solution 6*. Factor the numerator before differentiating:
>
> \\ \begin{aligned} f(x) &= \frac{(x - 1)(x + 1)}{x - 1} \\ &= x + 1 \qquad (x \ne 1) \end{aligned} \\
>
> Differentiating directly gives \\f'(x) = 1\\.
>
> *Alternative (quotient rule):* Using [Theorem 9](#thm-quotient-rule) with \\u(x) = x^2 - 1\\ and \\v(x) = x - 1\\:
>
> \\ \begin{aligned} f'(x) &= \frac{2x(x - 1) - (x^2 - 1)(1)}{(x - 1)^2} \\ &= \frac{x^2 - 2x + 1}{(x - 1)^2} \\ &= \frac{(x - 1)^2}{(x - 1)^2} \\ &= 1 \end{aligned} \\
>
> Both methods yield \\1\\, but factoring first eliminates tedious algebraic simplification.

> **NOTE:**
>
> **Theorem 10 (Chain rule)** If \\a\\ is a differentiable function of \\b\\, and \\b\\ is a differentiable function of \\c\\, then \\a\\ is a differentiable function of \\c\\, and
>
> \\\begin{aligned} \frac{d a}{d c} &= \frac{d a}{d b} \frac{d b}{d c} \\ &= \frac{d b}{d c} \frac{d a}{d b} \end{aligned} \\
>
> or in Lagrange’s notation ([Definition 5](#def-derivative)), if \\g\\ is differentiable at \\x\\ and \\f\\ is differentiable at \\g(x)\\, then for the [composition](sets-functions.llms.md#def-composition) \\f \circ g\\, with inner function \\g\\ and outer function \\f\\:
>
> \\(f(g(x)))' = g'(x) f'(g(x))\\

> **NOTE:**
>
> **Exercise 7 (Derivative of the standard Gaussian kernel)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.5.
>
> Find the derivative of
>
> \\f(x) = \operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\\

> **NOTE:**
>
> *Solution 7*. Apply the chain rule ([Theorem 10](#thm-chain-rule)) with outer function \\\operatorname{exp}\mathopen{}\left\\u\right\\\mathclose{}\\ and inner function \\u(x) = -x^2/2\\. Since \\\frac{d }{d u}\operatorname{exp}\mathopen{}\left\\u\right\\\mathclose{} = \operatorname{exp}\mathopen{}\left\\u\right\\\mathclose{}\\ ([Theorem 5](#thm-deriv-exp)) and \\u'(x) = -x\\:
>
> \\ \begin{aligned} f'(x) &= u'(x)\operatorname{exp}\mathopen{}\left\\u(x)\right\\\mathclose{} \\ &= -x\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{} \end{aligned} \\

> **NOTE:**
>
> **Exercise 8 (Second derivative of the Gaussian kernel)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.6.
>
> Find the second derivative of
>
> \\f(x) = \operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\\

> **NOTE:**
>
> *Solution 8*. From [Exercise 7](#exr-miller-deriv-gaussian-kernel), the first derivative is \\f'(x) = -x\operatorname{exp}\mathopen{}\left\\-x^2/2\right\\\mathclose{}\\. Apply the product rule ([Theorem 8](#thm-product-rule)) to \\u(x) = -x\\ and \\v(x) = \operatorname{exp}\mathopen{}\left\\-x^2/2\right\\\mathclose{}\\:
>
> \\\begin{aligned} u'(x) &= -1 \\ v'(x) &= -x\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{} \end{aligned}\\
>
> Therefore:
>
> \\\begin{aligned} f''(x) &= u'(x)v(x) + u(x)v'(x) \\ &= (-1)\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{} + (-x)\mathopen{}\left\[-x\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\right\]\mathclose{} \\ &= (x^2 - 1)\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{} \end{aligned}\\

> **NOTE:**
>
> **Exercise 9 (Combining product and chain rules)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.7.
>
> Find the derivative of
>
> \\f(x) = \operatorname{exp}\mathopen{}\left\\x^8\right\\\mathclose{}\cos(3x^4)\\

> **NOTE:**
>
> *Solution 9*. Apply the product rule ([Theorem 8](#thm-product-rule)) to \\u(x) = \operatorname{exp}\mathopen{}\left\\x^8\right\\\mathclose{}\\ and \\v(x) = \cos(3x^4)\\:
>
> \\f'(x) = u'(x)v(x) + u(x)v'(x)\\
>
> Compute \\u'(x)\\ and \\v'(x)\\ via the chain rule ([Theorem 10](#thm-chain-rule)):
>
> \\\begin{aligned} u'(x) &= 8x^7 \operatorname{exp}\mathopen{}\left\\x^8\right\\\mathclose{} \\ v'(x) &= -12x^3 \sin(3x^4) \end{aligned}\\
>
> Substitute both derivatives into the product rule:
>
> \\\begin{aligned} f'(x) &= 8x^7 \operatorname{exp}\mathopen{}\left\\x^8\right\\\mathclose{}\cos(3x^4) - 12x^3 \operatorname{exp}\mathopen{}\left\\x^8\right\\\mathclose{}\sin(3x^4) \\ &= 4x^3 \operatorname{exp}\mathopen{}\left\\x^8\right\\\mathclose{}\mathopen{}\left\[2x^4 \cos(3x^4) - 3\sin(3x^4)\right\]\mathclose{} \end{aligned}\\

> **NOTE:**
>
> **Exercise 10 (Generalized power rule)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.13.
>
> Find the derivative of
>
> \\ \begin{aligned} f(x) &= \sqrt\[3\]{(5x - 2)^2} \\ &= (5x - 2)^{2/3} \end{aligned} \\
>
> for \\x \ne 2/5\\.

> **NOTE:**
>
> *Solution 10*. Apply the generalized power rule \\\frac{d }{d x}\[g(x)\]^r = r\[g(x)\]^{r-1}g'(x)\\ with \\g(x) = 5x - 2\\ and \\r = 2/3\\:
>
> \\ \begin{aligned} f'(x) &= \frac{2}{3}(5x - 2)^{2/3 - 1} \cdot 5 \\ &= \frac{10}{3}(5x - 2)^{-1/3} \\ &= \frac{10}{3(5x - 2)^{1/3}} \end{aligned} \\
>
> *Remark:* Omitting the inner derivative \\g'(x) = 5\\ is a frequent mistake when applying the generalized power rule.

> **NOTE:**
>
> **Corollary 1 (Chain rule for logarithms)** If \\f\\ is differentiable at \\x\\ and \\f(x) \> 0\\, then
>
> \\ \frac{d }{d x}\operatorname{log}\mathopen{}\left\\f(x)\right\\\mathclose{} = \frac{f'(x)}{f(x)} \\

> **NOTE:**
>
> *Proof*. Apply [Theorem 10](#thm-chain-rule) and [Theorem 4](#thm-deriv-log):
>
> \\ \begin{aligned} \frac{d }{d x}\operatorname{log}\mathopen{}\left\\f(x)\right\\\mathclose{} &= f'(x) \cdot\operatorname{log}'\mathopen{}\left\\f(x)\right\\\mathclose{} && \text{(chain rule, with } g = f \text{ and outer function } \log \text{)} \\ &= f'(x) \cdot\frac{1}{f(x)} && \text{(derivative of } \log \text{, valid because } f(x) \> 0 \text{)} \\ &= \frac{f'(x)}{f(x)} && \text{(multiply)} \end{aligned} \\

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on this rule and on exercises that combine it with the other rules:
>
> - [The Chain Rule for Derivatives](https://www.youtube.com/watch?v=zFOD3NR5I4Q&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [The Power Rule on a Function Chain](https://www.youtube.com/watch?v=JXG4g196cG0&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Advanced Exercises on Derivative Rules](https://www.youtube.com/watch?v=Qkyq95jYj9w&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Exercise 11 (Chain rule with logarithm)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.3.
>
> Find the derivative of
>
> \\f(x) = \log(1 - x^2)\\
>
> for \\x \in (-1, 1)\\.

> **NOTE:**
>
> *Solution 11*. Apply the chain rule for logarithms ([Corollary 1](#cor-deriv-log-chain)): if \\g(x) = 1 - x^2\\, then \\g'(x) = -2x\\, and
>
> \\ \begin{aligned} f'(x) &= \frac{g'(x)}{g(x)} \\ &= -\frac{2x}{1 - x^2} \end{aligned} \\
>
> *Remark:* A common pitfall in chain rule problems is evaluating the outer derivative at \\x\\ rather than at the inner value \\g(x)\\. The denominator is \\g(x) = 1 - x^2\\, not \\x\\.

> **NOTE:**
>
> **Exercise 12 (Second derivative with an added constant)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.9.
>
> Find the second derivative of
>
> \\f(x) = \log x + \sqrt{162}\\
>
> for \\x \> 0\\.

> **NOTE:**
>
> *Solution 12*. Because \\\sqrt{162}\\ is constant with respect to \\x\\, its derivative is zero ([Theorem 1](#thm-deriv-const)):
>
> \\ \begin{aligned} f'(x) &= \frac{1}{x} \\ &= x^{-1} \end{aligned} \\
>
> Differentiating again via the power rule ([Theorem 3](#thm-deriv-polynomial)):
>
> \\ \begin{aligned} f''(x) &= -x^{-2} \\ &= -\frac{1}{x^2} \end{aligned} \\

### 1.3 Tangent lines

> **NOTE:**
>
> **Definition 8 (Tangent line)** Let \\f\\ be differentiable at \\c\\ ([Definition 4](#def-differentiable)). The **tangent line** to the [graph](sets-functions.llms.md#def-graph) of \\f\\ at \\c\\ is the graph of the [affine function](algebra.llms.md#def-affine-function)
>
> \\x \mapsto f(c) + f'(c)\\(x - c),\\
>
> the line through the point \\(c, f(c))\\ with [slope](algebra.llms.md#def-affine-function) \\f'(c)\\. The slope \\f'(c)\\ is also called the **tangent slope** of \\f\\ at \\c\\.

> **NOTE:**
>
> **Example 8 (The tangent line to \\x^2\\ at \\1\\)** For \\f(x) = x^2\\ at \\c = 1\\, \\f(1) = 1\\ and \\f'(1) = 2\\ ([Example 5](#exm-derivative)), so the tangent line is the graph of
>
> \\ \begin{aligned} x &\mapsto 1 + 2\\(x - 1) && \text{(substitute } f(1) = 1 \text{ and } f'(1) = 2 \text{)} \\ &= 2x - 1 && \text{(distribute, and } 1 - 2 = -1 \text{)} \end{aligned} \\
>
> At \\x = 1.1\\ the tangent line has height \\2(1.1) - 1 = 1.2\\, close to the curve’s height \\f(1.1) = 1.21\\; the gap, \\1.21 - 1.2 = 0.01\\, is \\(1.1 - 1)^2\\.

### 1.4 Linear approximation

For a differentiable function \\f\\ and a small step \\\varepsilon\\,

\\f(w + \varepsilon) \approx f(w) + \varepsilon\\\frac{d }{d w}f(w) \tag{1}\\

> **NOTE:**
>
> **Definition 9 (Linear approximation (first-order Taylor approximation))** For a function \\f\\ that is differentiable at \\w\\, the **linear approximation** of \\f\\ at \\w\\ (also called the **first-order Taylor approximation**) is the function of the step \\\varepsilon\\
>
> \\\hat{f}\_w(\varepsilon) = f(w) + \varepsilon\\\frac{d }{d w}f(w)\\
>
> so [Equation 1](#eq-linear-approx) says \\f(w + \varepsilon) \approx \hat{f}\_w(\varepsilon)\\ for small \\\varepsilon\\. [Figure 1](#fig-linear-approx) illustrates this approximation interactively for a quadratic function.

> **NOTE:**
>
> *Remark 1* (The “linear” approximation is affine). The linear approximation \\\hat{f}\_w\\ ([Definition 9](#def-linear-approximation)) is an [affine function](algebra.llms.md#def-affine-function) of the step \\\varepsilon\\: its slope is \\\frac{d }{d w}f(w)\\ and its intercept is \\f(w)\\. It is [linear](algebra.llms.md#def-linear-function) in \\\varepsilon\\ only when \\f(w) = 0\\. The name “linear approximation” uses “linear” in the looser sense of elementary algebra ([remark](algebra.llms.md#rem-linear-function-terminology)). Boyd and Vandenberghe ([2018](#ref-boyd2018vmls)), section 2.2, treats the first-order Taylor approximation as an affine function for functions of several variables as well.

Show R code

``` js
tanF = (w) => w * w - 4 * w + 7
tanDf = (w) => 2 * w - 4
tanPred = tanF(tanW) + tanEps * tanDf(tanW)
tanExact = tanF(tanW + tanEps)
```

Show R code

``` js
viewof tanW = Inputs.range([-1, 4], {value: 1, step: 0.05, label: "w"})
viewof tanEps = Inputs.range([0.01, 2], {value: 0.5, transform: Math.log, label: "step \u03b5", format: d3.format(".3~f")})
```

Show R code

``` js
md`At w = ${tanW.toFixed(2)}, f(w) = ${tanF(tanW).toFixed(4)} and f\u2032(w) = ${tanDf(tanW).toFixed(2)}.

A step of \u03b5 = ${tanEps.toFixed(3)}:

- predicted by the tangent line, f(w) + \u03b5 f\u2032(w) = ${tanPred.toFixed(4)};
- exact, f(w + \u03b5) = ${tanExact.toFixed(4)};
- error ${(tanExact - tanPred).toPrecision(3)}, and error / \u03b5\u00b2 = ${((tanExact - tanPred) / tanEps ** 2).toFixed(3)}.`
```

Show R code

``` js
Plot.plot({
  ariaLabel: 'The parabola f of w, ' +
    'with the tangent line at the chosen w, ' +
    'and two points above w plus epsilon: ' +
    'one on the tangent line (the prediction) and one on the curve (the exact value), ' +
    'joined by a red segment showing the error.',
  width: 460, height: 340, grid: true,
  x: {domain: [-1.5, 6.5], label: "w"},
  y: {domain: [0, 20], label: "f(w)"},
  marks: [
    Plot.line(d3.range(-1.5, 6.51, 0.05), {x: (w) => w, y: tanF, stroke: "#555", strokeWidth: 2, clip: true}),
    Plot.line([-1.5, 6.5], {x: (w) => w, y: (w) => tanF(tanW) + (w - tanW) * tanDf(tanW),
                        stroke: "#1f77b4", strokeWidth: 2, strokeDasharray: "6,4", clip: true}),
    Plot.ruleX([tanW + tanEps], {stroke: "#bbb", strokeDasharray: "2,3"}),
    Plot.link([0], {x1: tanW + tanEps, x2: tanW + tanEps, y1: tanPred, y2: tanExact,
                    stroke: "#d62728", strokeWidth: 3, clip: true}),
    Plot.dot([[tanW, tanF(tanW)]], {x: (d) => d[0], y: (d) => d[1], r: 5, fill: "#222"}),
    Plot.dot([[tanW + tanEps, tanPred]], {x: (d) => d[0], y: (d) => d[1], r: 4, fill: "#1f77b4", clip: true}),
    Plot.dot([[tanW + tanEps, tanExact]], {x: (d) => d[0], y: (d) => d[1], r: 4, fill: "#555", clip: true})
  ]
})
```

The dashed blue line is the tangent line ([Definition 8](#def-tangent-line)) at \\w\\; the red segment is the error of the prediction.

Figure 1: The linear approximation [Equation 1](#eq-linear-approx) for \\f(w) = w^2 - 4w + 7\\, at any \\w\\ and step \\\varepsilon\\.

> **NOTE:**
>
> **Exercise 13 (Tangent line approximation)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.8.
>
> Let \\f(x) = 4x + \sqrt{2}\cos x\\.
>
> 1.  Compute \\f'(x)\\.
> 2.  Find the equation of the tangent line to the curve \\y = f(x)\\ at \\x = \pi/4\\.
> 3.  Use the tangent line to approximate \\f(\pi/4 + 0.01)\\, and compare that approximation with the exact value.

> **NOTE:**
>
> *Solution 13*. **1.** Differentiate term by term:
>
> \\f'(x) = 4 - \sqrt{2}\sin x\\
>
> **2.** Evaluate \\f\\ and \\f'\\ at \\x_0 = \pi/4\\:
>
> \\\begin{aligned} f(\pi/4) &= 4\mathopen{}\left(\frac{\pi}{4}\right)\mathclose{} + \sqrt{2}\cos\mathopen{}\left(\frac{\pi}{4}\right)\mathclose{} \\ &= \pi + \sqrt{2}\mathopen{}\left(\frac{\sqrt{2}}{2}\right)\mathclose{} \\ &= \pi + 1 \\ f'(\pi/4) &= 4 - \sqrt{2}\sin\mathopen{}\left(\frac{\pi}{4}\right)\mathclose{} \\ &= 4 - \sqrt{2}\mathopen{}\left(\frac{\sqrt{2}}{2}\right)\mathclose{} \\ &= 4 - 1 \\ &= 3 \end{aligned}\\
>
> Using the point-slope formula, the tangent line at \\(\pi/4, \pi + 1)\\ is:
>
> \\y - (\pi + 1) = 3\mathopen{}\left(x - \frac{\pi}{4}\right)\mathclose{} \implies y = \pi + 1 + 3\mathopen{}\left(x - \frac{\pi}{4}\right)\mathclose{}\\
>
> **3.** At \\x = \pi/4 + 0.01\\, the linear approximation ([Equation 1](#eq-linear-approx)) gives:
>
> \\f(\pi/4 + 0.01) \approx (\pi + 1) + 3(0.01) = \pi + 1.03 \approx 4.171593\\
>
> The exact value is:
>
> \\f(\pi/4 + 0.01) = 4\mathopen{}\left(\frac{\pi}{4} + 0.01\right)\mathclose{} + \sqrt{2}\cos\mathopen{}\left(\frac{\pi}{4} + 0.01\right)\mathclose{} \approx 4.171543\\
>
> The approximation error is \\\|4.171593 - 4.171543\| \approx 0.00005\\, on the order of \\(0.01)^2 = 10^{-4}\\.

### 1.5 Critical points and optimization

> **NOTE:**
>
> **Definition 10 (Flat point (stationary point))** Let \\f\\ be differentiable at \\c\\ ([Definition 4](#def-differentiable)). If \\f'(c) = 0\\, then \\c\\ is a **flat point** of \\f\\ (also called a **stationary point**).

> **NOTE:**
>
> **Example 9 (Flat points, and a point that is not one)**  
>
> - \\f(w) = w^3\\ has \\f'(w) = 3w^2\\, which is \\0\\ at \\w = 0\\, so \\0\\ is a flat point. Yet \\f(0) = 0\\ is neither the [minimum](algebra.llms.md#def-minimum) nor the [maximum](algebra.llms.md#def-maximum) of the values \\f\\ takes on any open interval around \\0\\: \\f(w) \< 0\\ for \\w \< 0\\ and \\f(w) \> 0\\ for \\w \> 0\\.
> - \\h(w) = w^2\\ has \\h'(1) = 2 \ne 0\\, so \\1\\ is not a flat point.

> **NOTE:**
>
> **Exercise 14 (Find the flat point, and check the approximation)** Let \\f(w) = w^2 - 4w + 7\\.
>
> 1.  Differentiate \\f\\.
> 2.  Find the flat point \\w\\ of \\f\\, and say whether \\f(w)\\ is the [minimum](algebra.llms.md#def-minimum) or the [maximum](algebra.llms.md#def-maximum) of the values of \\f\\.
> 3.  Evaluate the derivative at \\w = 1\\, use [Equation 1](#eq-linear-approx) to predict \\f(1.01)\\, and compare that prediction with the exact value.

> **NOTE:**
>
> *Solution 14*. **1.** Term by term:
>
> \\\frac{df}{dw} = 2w - 4\\
>
> **2.** Set it to zero: \\2w - 4 = 0\\ gives \\w = 2\\. \\f(2) = 4 - 8 + 7 = 3\\ is the minimum of the values of \\f\\. Completing the square, \\f(w) = (w - 2)^2 + 3\\, since \\(w - 2)^2 + 3 = w^2 - 4w + 4 + 3 = w^2 - 4w + 7\\, and \\(w - 2)^2 \ge 0\\, so \\f(w) \ge 3 = f(2)\\ for every \\w\\. Equivalently, the derivative is negative below \\w = 2\\ and positive above it, so the function falls into that point and rises out of it.
>
> **3.** At \\w = 1\\ the derivative is \\2(1) - 4 = -2\\, so \\f\\ is falling there. With \\\varepsilon= 0.01\\, [Equation 1](#eq-linear-approx) predicts a change of \\(0.01)(-2) = -0.02\\, from \\f(1) = 1 - 4 + 7 = 4\\ to \\3.98\\. The exact value is
>
> \\ \begin{aligned} f(1.01) &= (1.01)^2 - 4(1.01) + 7 \\ &= 1.0201 - 4.04 + 7 \\ &= 3.9801 \end{aligned} \\
>
> a change of \\-0.0199\\. The prediction is off by \\0.0001\\, which is \\\varepsilon^2\\: the linear approximation drops everything of that order and smaller, so halving the step quarters the error. That trade is the whole bargain of [gradient descent](optimization.llms.md#def-gradient-descent), the step-by-step method of fitting models defined on the optimization page. We take a step in the direction the derivative recommends, and the recommendation is trustworthy only as far as the step is small.

> **NOTE:**
>
> **Definition 11 (Critical point)** Let \\f\\ be a function defined on an [open interval](sets-functions.llms.md#def-interval) containing \\c\\. The point \\c\\ is a **critical point** of \\f\\ if either \\f'(c) = 0\\ or \\f\\ is not differentiable at \\c\\ ([Definition 4](#def-differentiable)). So every flat point ([Definition 10](#def-flat-point)) is a critical point.

> **NOTE:**
>
> **Example 10 (Critical points that are and are not flat points)**  
>
> - \\g(w) = \mathopen{}\left\|w\right\|\mathclose{}\\ has no derivative at \\w = 0\\: its one-sided derivatives there are \\1\\ and \\-1\\ ([Example 6](#exm-one-sided-derivative)), so the difference quotient \\\tfrac{\mathopen{}\left\|h\right\|\mathclose{} - 0}{h}\\ has no limit as \\h \to 0\\ ([Definition 2](#def-one-sided-limit)). So \\0\\ is a critical point of \\g\\ but not a flat point.
> - \\f(w) = w^3\\ has \\f'(0) = 3 \cdot 0^2 = 0\\, so \\0\\ is a flat point of \\f\\, and hence a critical point.
> - \\h(w) = w^2\\ is differentiable everywhere, with \\h'(w) = 2w\\, which is \\0\\ only at \\w = 0\\. So \\0\\ is the only critical point of \\h\\; for example, \\h'(1) = 2 \ne 0\\, so \\1\\ is not one.

> **NOTE:**
>
> **Exercise 15 (Maximizing a gamma-family kernel)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.10.
>
> Find the maximum value of
>
> \\f(x) = x^4 e^{-x}\\
>
> on the interval \\\[0, \infty)\\.

> **NOTE:**
>
> *Solution 15*. Differentiate using the product rule:
>
> \\ \begin{aligned} f'(x) &= 4x^3 e^{-x} - x^4 e^{-x} \\ &= x^3 e^{-x}(4 - x) \end{aligned} \\
>
> On \\\[0, \infty)\\, \\e^{-x} \> 0\\, so \\f'(x) = 0\\ only at \\x = 0\\ and \\x = 4\\.
>
> Evaluate \\f\\ at the boundary and critical points:
>
> - At \\x = 0\\: \\f(0) = 0\\.
> - At \\x = 4\\: \\f(4) = 4^4 e^{-4} = 256 e^{-4} \approx 4.6888\\.
> - As \\x \to \infty\\: exponential decay dominates polynomial growth, so \\\lim\_{x \to \infty} x^4 e^{-x} = 0\\.
>
> Since \\f(x) \ge 0\\ for all \\x \ge 0\\ and \\f(4) \> 0\\, the global maximum occurs at \\x = 4\\, with maximum value \\256/e^4\\.

> **NOTE:**
>
> **Exercise 16 (Classifying critical points with the second derivative test)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.11.
>
> Find the critical points of
>
> \\f(x) = 4x^3 - 3x^2\\
>
> and decide whether each is a local maximum, a local minimum, or an inflection point.

> **NOTE:**
>
> *Solution 16*. Compute the first derivative:
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
> - At \\x = 1/2\\: \\f''(1/2) = 24(1/2) - 6 = 6 \> 0\\, so \\x = 1/2\\ is a strict local minimum.
>
> Inflection points occur where the second derivative changes sign (\\f''(x) = 0\\ at \\x = 1/4\\). Because \\f''\\ is non-zero at both critical points, neither is an inflection point.

### 1.6 Taylor series

> **NOTE:**
>
> **Definition 12 (Taylor polynomial and Taylor series)** Let \\f\\ be a function that has at least \\n\\ derivatives at a point \\x_0\\. The **Taylor polynomial** of degree \\n\\ for \\f\\ centered at \\x_0\\ is:
>
> \\ \begin{aligned} P_n(x) &= \sum\_{k=0}^n \frac{f^{(k)}(x_0)}{k!}(x - x_0)^k \\ &= f(x_0) + f'(x_0)(x - x_0) + \frac{f''(x_0)}{2!}(x - x_0)^2 + \dots + \frac{f^{(n)}(x_0)}{n!}(x - x_0)^n \end{aligned} \tag{2}\\
>
> When \\x_0 = 0\\, \\P_n(x)\\ is called the **Maclaurin polynomial**. When \\f\\ is infinitely differentiable and the series converges to \\f(x)\\ on an open interval containing \\x_0\\, the infinite sum \\\sum\_{k=0}^\infty \frac{f^{(k)}(x_0)}{k!}(x - x_0)^k\\ is the **Taylor series** of \\f\\ centered at \\x_0\\.

> **NOTE:**
>
> **Example 11 (Taylor series of the exponential function)** For \\f(x) = e^x\\ centered at \\x_0 = 0\\, every derivative is \\f^{(k)}(0) = e^0 = 1\\. The degree-\\n\\ Maclaurin polynomial is:
>
> \\ \begin{aligned} P_n(x) &= 1 + x + \frac{x^2}{2!} + \dots + \frac{x^n}{n!} \\ &= \sum\_{k=0}^n \frac{x^k}{k!} \end{aligned} \\
>
> Because the remainder \\R_n(x) \to 0\\ as \\n \to \infty\\ for all \\x \in \mathbb{R}\\, the Taylor series converges everywhere to \\e^x\\:
>
> \\e^x = \sum\_{k=0}^\infty \frac{x^k}{k!}\\

> **TIP:**
>
> Chapter 11 of the [*Essence of calculus*](https://www.youtube.com/playlist?list=PLZHQObOWTQDMsr9K-rj53DwVRMYO3t5Yr) series by 3Blue1Brown develops the geometric and polynomial intuition behind Taylor approximations:
>
> - [Taylor series](https://www.youtube.com/watch?v=3d6DsjIBzJ4) shows how higher-order derivatives match the curvature and rate of change of a function near a point to build polynomial approximations ([Definition 12](#def-taylor-polynomial)).

> **NOTE:**
>
> **Exercise 17 (Taylor polynomial of a polynomial at the origin)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.16.
>
> Find the first five terms (up to degree 4) of the Taylor series for
>
> \\f(x) = x^8 + x^4 + 3\\
>
> at \\x_0 = 0\\.

> **NOTE:**
>
> *Solution 17*. Evaluate \\f\\ and its first four derivatives at \\x = 0\\:
>
> \\\begin{aligned} f(x) &= x^8 + x^4 + 3 &\implies f(0) &= 3 \\ f'(x) &= 8x^7 + 4x^3 &\implies f'(0) &= 0 \\ f''(x) &= 56x^6 + 12x^2 &\implies f''(0) &= 0 \\ f'''(x) &= 336x^5 + 24x &\implies f'''(0) &= 0 \\ f^{(4)}(x) &= 1680x^4 + 24 &\implies f^{(4)}(0) &= 24 \end{aligned}\\
>
> By [Equation 2](#eq-taylor-poly-def):
>
> \\ \begin{aligned} P_4(x) &= 3 + 0x + \frac{0}{2!}x^2 + \frac{0}{3!}x^3 + \frac{24}{4!}x^4 \\ &= 3 + x^4 \end{aligned} \\
>
> Because \\f\\ is already a polynomial centered at \\0\\, its Taylor polynomial of degree 4 simply collects its terms of degree at most 4.

> **NOTE:**
>
> **Exercise 18 (Taylor expansion of a polynomial at a nonzero point)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.17.
>
> Find the first three terms (up to degree 2) of the Taylor series for
>
> \\f(x) = x^8 + x^4 + 3\\
>
> at \\x_0 = 1\\.

> **NOTE:**
>
> *Solution 18*. Evaluate \\f\\ and its first two derivatives at \\x_0 = 1\\:
>
> \\\begin{aligned} f(1) &= 1^8 + 1^4 + 3 \\ &= 5 \\ f'(1) &= 8(1)^7 + 4(1)^3 \\ &= 12 \\ f''(1) &= 56(1)^6 + 12(1)^2 \\ &= 68 \end{aligned}\\
>
> The degree-2 Taylor polynomial is:
>
> \\ \begin{aligned} P_2(x) &= f(1) + f'(1)(x - 1) + \frac{f''(1)}{2!}(x - 1)^2 \\ &= 5 + 12(x - 1) + 34(x - 1)^2 \end{aligned} \\

> **NOTE:**
>
> **Example 12 (Taylor series of the cosine function)** For \\f(x) = \cos x\\ centered at \\x_0 = 0\\, the derivatives follow a repeating cycle of length 4:
>
> \\\begin{aligned} f(0) &= \cos(0) \\ &= 1, \\ f'(0) &= -\sin(0) \\ &= 0, \\ f''(0) &= -\cos(0) \\ &= -1, \\ f'''(0) &= \sin(0) \\ &= 0, \end{aligned}\\
>
> and in general \\f^{(2k)}(0) = (-1)^k\\ and \\f^{(2k+1)}(0) = 0\\ for all \\k \ge 0\\. The Taylor series (Maclaurin series) converges everywhere to \\\cos x\\:
>
> \\ \begin{aligned} \cos x &= 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots \\ &= \sum\_{k=0}^\infty \frac{(-1)^k}{(2k)!}x^{2k} \end{aligned} \\

> **NOTE:**
>
> **Example 13 (Taylor series of the sine function)** For \\f(x) = \sin x\\ centered at \\x_0 = 0\\, the derivatives evaluate at \\0\\ to \\f^{(2k)}(0) = 0\\ and \\f^{(2k+1)}(0) = (-1)^k\\ for all \\k \ge 0\\. The Taylor series converges everywhere to \\\sin x\\:
>
> \\ \begin{aligned} \sin x &= x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots \\ &= \sum\_{k=0}^\infty \frac{(-1)^k}{(2k+1)!}x^{2k+1} \end{aligned} \\

> **NOTE:**
>
> **Exercise 19 (Taylor expansion of a scaled cosine)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.18.
>
> Find the terms up to degree 4 in the Taylor series for
>
> \\f(x) = \cos(5x)\\
>
> at \\x_0 = 0\\.

> **NOTE:**
>
> *Solution 19*. Recall the standard Maclaurin series for cosine:
>
> \\\cos u = 1 - \frac{u^2}{2!} + \frac{u^4}{4!} - \dots\\
>
> Substitute \\u = 5x\\:
>
> \\ \begin{aligned} \cos(5x) &= 1 - \frac{(5x)^2}{2!} + \frac{(5x)^4}{4!} - \dots \\ &= 1 - \frac{25}{2}x^2 + \frac{625}{24}x^4 - \dots \end{aligned} \\
>
> *Remark:* Substituting into known Taylor expansions avoids computing high-order derivatives by hand.

> **NOTE:**
>
> **Exercise 20 (Taylor series of a power of a function)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.19.
>
> Find the terms up to degree 4 in the Taylor series for
>
> \\f(x) = \cos^3(5x)\\
>
> at \\x_0 = 0\\.

> **NOTE:**
>
> *Solution 20*. From [Exercise 19](#exr-miller-taylor-cos-scaled), the expansion of \\\cos(5x)\\ up to order \\x^4\\ is:
>
> \\\cos(5x) = 1 - \frac{25}{2}x^2 + \frac{625}{24}x^4 + O(x^6)\\
>
> Cube this expansion using \\(1 - y)^3 = 1 - 3y + 3y^2 - y^3\\ with \\y = \frac{25}{2}x^2 - \frac{625}{24}x^4\\:
>
> \\\begin{aligned} \cos^3(5x) &= 1 - 3\mathopen{}\left(\frac{25}{2}x^2 - \frac{625}{24}x^4\right)\mathclose{} + 3\mathopen{}\left(\frac{25}{2}x^2\right)\mathclose{}^2 + O(x^6) \\ &= 1 - \frac{75}{2}x^2 + \frac{625}{8}x^4 + \frac{1875}{4}x^4 + O(x^6) \\ &= 1 - \frac{75}{2}x^2 + \frac{4375}{8}x^4 + O(x^6) \end{aligned}\\

> **NOTE:**
>
> **Exercise 21 (Linear Taylor polynomial of the exponential)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.20.
>
> Find the first two terms (degree 1) of the Taylor series for
>
> \\f(x) = e^x\\
>
> at \\x_0 = 0\\.

> **NOTE:**
>
> *Solution 21*. Since \\f(0) = e^0 = 1\\ and \\f'(0) = e^0 = 1\\:
>
> \\ \begin{aligned} P_1(x) &= f(0) + f'(0)x \\ &= 1 + x \end{aligned} \\
>
> The full Taylor series is \\e^x = \sum\_{n=0}^\infty \frac{x^n}{n!} = 1 + x + \frac{x^2}{2} + \frac{x^3}{6} + \dots\\.

> **NOTE:**
>
> **Exercise 22 (Taylor series of a composite exponential)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.21.
>
> Find the first six terms (up to degree 5) of the Taylor series for
>
> \\f(x) = \operatorname{exp}\mathopen{}\left\\x^8\right\\\mathclose{}\\
>
> at \\x_0 = 0\\.

> **NOTE:**
>
> *Solution 22*. Substitute \\u = x^8\\ into \\e^u = 1 + u + \frac{u^2}{2!} + \dots\\:
>
> \\\operatorname{exp}\mathopen{}\left\\x^8\right\\\mathclose{} = 1 + x^8 + \frac{x^{16}}{2} + \dots\\
>
> Because the lowest-order variable term is \\x^8\\, all coefficients for powers \\x^1, x^2, x^3, x^4, x^5\\ are zero:
>
> \\ \begin{aligned} P_5(x) &= 1 + 0x + 0x^2 + 0x^3 + 0x^4 + 0x^5 \\ &= 1 \end{aligned} \\

> **NOTE:**
>
> **Exercise 23 (Taylor expansion of the normal density)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.22.
>
> Find the terms up to degree 3 of the Taylor series for the standard normal density
>
> \\\phi(x) = \frac{1}{\sqrt{2\pi}}\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\\
>
> at \\x_0 = 0\\.

> **NOTE:**
>
> *Solution 23*. Using \\e^u = 1 + u + O(u^2)\\ with \\u = -x^2/2\\:
>
> \\\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{} = 1 - \frac{x^2}{2} + O(x^4)\\
>
> Multiplying by the normalization constant \\1/\sqrt{2\pi}\\:
>
> \\\phi(x) = \frac{1}{\sqrt{2\pi}} - \frac{x^2}{2\sqrt{2\pi}} + O(x^4)\\
>
> Up to degree 3, the odd powers vanish by symmetry, so:
>
> \\P_3(x) = \frac{1}{\sqrt{2\pi}} - \frac{x^2}{2\sqrt{2\pi}}\\

> **NOTE:**
>
> **Exercise 24 (Taylor expansion of the square root)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.23.
>
> Find the first three terms (up to degree 2) of the Taylor series for
>
> \\f(x) = \sqrt{x}\\
>
> at \\x_0 = 1/3\\.

> **NOTE:**
>
> *Solution 24*. Compute the values at \\x_0 = 1/3\\:
>
> \\\begin{aligned} f(1/3) &= \mathopen{}\left(\frac{1}{3}\right)\mathclose{}^{1/2} \\ &= \frac{1}{\sqrt{3}} \\ &= \frac{\sqrt{3}}{3} \\ f'(x) &= \frac{1}{2}x^{-1/2} \\ \implies f'(1/3) &= \frac{1}{2}\sqrt{3} \\ &= \frac{\sqrt{3}}{2} \\ f''(x) &= -\frac{1}{4}x^{-3/2} \\ \implies f''(1/3) &= -\frac{1}{4} \cdot 3\sqrt{3} \\ &= -\frac{3\sqrt{3}}{4} \end{aligned}\\
>
> The degree-2 Taylor polynomial is:
>
> \\P_2(x) = \frac{\sqrt{3}}{3} + \frac{\sqrt{3}}{2}\mathopen{}\left(x - \frac{1}{3}\right)\mathclose{} - \frac{3\sqrt{3}}{8}\mathopen{}\left(x - \frac{1}{3}\right)\mathclose{}^2\\

> **NOTE:**
>
> **Exercise 25 (Taylor expansion of a fractional power)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.24.
>
> Find the first three terms of the Taylor series for
>
> \\f(x) = (1 + x)^{1/3}\\
>
> at \\x_0 = 1/2\\.

> **NOTE:**
>
> *Solution 25*. At \\x_0 = 1/2\\, \\1 + x_0 = 3/2\\:
>
> \\\begin{aligned} f(1/2) &= \mathopen{}\left(\frac{3}{2}\right)\mathclose{}^{1/3} \\ f'(x) &= \frac{1}{3}(1 + x)^{-2/3} \\ \implies f'(1/2) &= \frac{1}{3}\mathopen{}\left(\frac{3}{2}\right)\mathclose{}^{-2/3} \\ &= \frac{1}{3}\mathopen{}\left(\frac{2}{3}\right)\mathclose{}^{2/3} \\ f''(x) &= -\frac{2}{9}(1 + x)^{-5/3} \\ \implies f''(1/2) &= -\frac{2}{9}\mathopen{}\left(\frac{3}{2}\right)\mathclose{}^{-5/3} \\ &= -\frac{2}{9}\mathopen{}\left(\frac{2}{3}\right)\mathclose{}^{5/3} \end{aligned}\\
>
> Dividing \\f''(1/2)\\ by \\2!\\ gives \\-\frac{1}{9}\mathopen{}\left(\frac{2}{3}\right)\mathclose{}^{5/3}\\. The Taylor polynomial is:
>
> \\P_2(x) = \mathopen{}\left(\frac{3}{2}\right)\mathclose{}^{1/3} + \frac{1}{3}\mathopen{}\left(\frac{2}{3}\right)\mathclose{}^{2/3}\mathopen{}\left(x - \frac{1}{2}\right)\mathclose{} - \frac{1}{9}\mathopen{}\left(\frac{2}{3}\right)\mathclose{}^{5/3}\mathopen{}\left(x - \frac{1}{2}\right)\mathclose{}^2\\

> **NOTE:**
>
> **Exercise 26 (Taylor expansion of \\x \log x\\)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.25.
>
> Find the first three terms (up to degree 2) of the Taylor series for
>
> \\f(x) = x\log x\\
>
> at \\x_0 = 1\\.

> **NOTE:**
>
> *Solution 26*. Evaluate derivatives at \\x_0 = 1\\:
>
> \\\begin{aligned} f(1) &= 1 \log 1 \\ &= 0 \\ f'(x) &= \log x + 1 \\ \implies f'(1) &= 0 + 1 \\ &= 1 \\ f''(x) &= \frac{1}{x} \implies f''(1) = 1 \end{aligned}\\
>
> Therefore:
>
> \\ \begin{aligned} P_2(x) &= f(1) + f'(1)(x - 1) + \frac{f''(1)}{2!}(x - 1)^2 \\ &= (x - 1) + \frac{1}{2}(x - 1)^2 \end{aligned} \\

> **NOTE:**
>
> **Exercise 27 (Maclaurin series of \\\log(1 + x)\\)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.26.
>
> Find the first three terms of the Taylor series for
>
> \\f(x) = \log(1 + x)\\
>
> at \\x_0 = 0\\.

> **NOTE:**
>
> *Solution 27*. Differentiating repeatedly at \\x_0 = 0\\:
>
> \\\begin{aligned} f(0) &= \log 1 \\ &= 0 \\ f'(x) &= (1 + x)^{-1} \implies f'(0) = 1 \\ f''(x) &= -(1 + x)^{-2} \implies f''(0) = -1 \\ f'''(x) &= 2(1 + x)^{-3} \implies f'''(0) = 2 \end{aligned}\\
>
> The Taylor polynomial of degree 3 is:
>
> \\P_3(x) = x - \frac{x^2}{2} + \frac{x^3}{3}\\

> **NOTE:**
>
> **Exercise 28 (Maclaurin series of \\\log(1 - x)\\)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.27.
>
> Find the terms up to degree 3 of the Taylor series for
>
> \\f(x) = \log(1 - x)\\
>
> at \\x_0 = 0\\.

> **NOTE:**
>
> *Solution 28*. Substitute \\u = -x\\ into the expansion for \\\log(1 + u)\\ from [Exercise 27](#exr-miller-taylor-log-one-plus-x):
>
> \\ \begin{aligned} \log(1 - x) &= (-x) - \frac{(-x)^2}{2} + \frac{(-x)^3}{3} - \dots \\ &= -x - \frac{x^2}{2} - \frac{x^3}{3} - \dots \end{aligned} \\

> **NOTE:**
>
> **Exercise 29 (Taylor series of \\\log((1 - x)e^x)\\)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.28.
>
> Find the first two non-zero terms of the Taylor series for
>
> \\f(x) = \log((1 - x)e^x)\\
>
> at \\x_0 = 0\\.

> **NOTE:**
>
> *Solution 29*. Expand using logarithm properties:
>
> \\ \begin{aligned} f(x) &= \log(1 - x) + \log(e^x) \\ &= \log(1 - x) + x \end{aligned} \\
>
> Substitute the series for \\\log(1 - x)\\ from [Exercise 28](#exr-miller-taylor-log-one-minus-x):
>
> \\ \begin{aligned} f(x) &= \mathopen{}\left(-x - \frac{x^2}{2} - \frac{x^3}{3} - \dots\right)\mathclose{} + x \\ &= -\frac{x^2}{2} - \frac{x^3}{3} - \dots \end{aligned} \\
>
> The constant and linear terms vanish (\\f(0) = 0\\, \\f'(0) = 0\\). The first two non-zero terms are:
>
> \\-\frac{x^2}{2} - \frac{x^3}{3}\\

> **NOTE:**
>
> **Exercise 30 (Taylor series of a product of known expansions)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.29.
>
> Find the terms up to degree 2 of the Taylor series for
>
> \\f(x) = \cos(x)\log(1 + x)\\
>
> at \\x_0 = 0\\.

> **NOTE:**
>
> *Solution 30*. Multiply the known Maclaurin expansions:
>
> \\\begin{aligned} \cos x &= 1 - \frac{x^2}{2} + O(x^4) \\ \log(1 + x) &= x - \frac{x^2}{2} + O(x^3) \end{aligned}\\
>
> Multiplying and dropping terms of order \\x^3\\ and higher:
>
> \\ \begin{aligned} f(x) &= \mathopen{}\left(1 - \frac{x^2}{2} + \dots\right)\mathclose{}\mathopen{}\left(x - \frac{x^2}{2} + \dots\right)\mathclose{} \\ &= x - \frac{x^2}{2} + O(x^3) \end{aligned} \\

> **NOTE:**
>
> **Exercise 31 (Taylor series of \\\log(1 + 2x)\\)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.30.
>
> Find the first two non-zero terms of the Taylor series for
>
> \\f(x) = \log(1 + 2x)\\
>
> at \\x_0 = 0\\.

> **NOTE:**
>
> *Solution 31*. Substitute \\u = 2x\\ into the Maclaurin series \\\log(1 + u) = u - \frac{u^2}{2} + \dots\\:
>
> \\ \begin{aligned} \log(1 + 2x) &= (2x) - \frac{(2x)^2}{2} + \dots \\ &= 2x - 2x^2 + \dots \end{aligned} \\

## 2 Integration

Integration is the inverse operation of differentiation: it recovers a function from its derivative and accumulates quantities such as areas, totals, and probabilities. We begin with antiderivatives, then state basic integration rules, and conclude with the Fundamental Theorem of Calculus and a worked example from probability.

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist introduces integral calculus:
>
> - [Intro to Integral Calculus](https://www.youtube.com/watch?v=PNdKPsiaPhU&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [What Integral Calculus Is](https://www.youtube.com/watch?v=O7TuAb_jHTs&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

### 2.1 Antiderivatives

> **NOTE:**
>
> **Definition 13 (Antiderivative)** A function \\F\\ is an **antiderivative** of \\f\\ on an interval \\I\\ if:
>
> \\\frac{\partial}{\partial x} F(x) = f(x), \quad \forall x \in I\\
>
> Finding an antiderivative of \\f\\ is called **antidifferentiation**, or **antidifferentiating** \\f\\.
>
> ([Larson and Edwards 2018, sec. 4.1](#ref-larsonCalc11e), pp. 248–249)

> **NOTE:**
>
> **Definition 14 (Indefinite integral)** The **indefinite integral** of \\f\\ is the family of all antiderivatives ([Definition 13](#def-antiderivative)) of \\f\\:
>
> \\\int f(x)\\dx = F(x) + C\\
>
> where \\F\\ is any one antiderivative of \\f\\ and \\C\\ is an arbitrary constant of integration.
>
> ([Larson and Edwards 2018, sec. 4.1](#ref-larsonCalc11e), pp. 248–249)

> **NOTE:**
>
> **Example 14 (Antiderivative of \\x^2\\)** For \\f(x) = x^2\\, an antiderivative is \\F(x) = \frac{x^3}{3}\\, since \\\frac{\partial}{\partial x}\frac{x^3}{3} = x^2 = f(x)\\.
>
> Adding any constant \\C\\ gives another antiderivative; for example, with \\C = 7\\, \\F(x) = \frac{x^3}{3} + 7\\ also satisfies \\F'(x) = x^2\\, since adding a constant does not change the derivative. \\G(x) = x^3\\ is not an antiderivative of \\x^2\\: \\G'(x) = 3x^2 \ne x^2\\ for \\x \ne 0\\.
>
> See [Figure 2](#fig-antiderivatives).
>
> Show R code
>
> ``` downlit
> ggplot2::ggplot() +
>   ggplot2::geom_function(fun = \(x) x^2, xlim = x_lim, linewidth = 1) +
>   ggplot2::labs(x = "x", y = expression(f(x))) +
>   ggplot2::theme_minimal()
> ```
>
> [![](calculus_files/figure-html/antiderivatives-f-code-1.png)](calculus_files/figure-html/antiderivatives-f-code-1.png "Figure 2 (a): The function f(x) = x^2.")
>
> \(a\) The function \\f(x) = x^2\\.
>
> Show R code
>
> ``` downlit
> x_seq <- seq(x_lim[1], x_lim[2], length.out = 200)
> df <- do.call(rbind, lapply(C_vals, \(C) {
>   data.frame(
>     x = x_seq,
>     y = x_seq^3 / 3 + C,
>     C = factor(C)
>   )
> }))
>
> ggplot2::ggplot(df, ggplot2::aes(x = x, y = y, color = C)) +
>   ggplot2::geom_line(linewidth = 0.8) +
>   ggplot2::labs(x = "x", y = expression(F(x)), color = "C") +
>   ggplot2::theme_minimal()
> ```
>
> [![](calculus_files/figure-html/antiderivatives-F-code-1.png)](calculus_files/figure-html/antiderivatives-F-code-1.png "Figure 2 (b): Family of antiderivatives F(x) = x^3/3 + C.")
>
> \(b\) Family of antiderivatives \\F(x) = x^3/3 + C\\.
>
> Figure 2: The function \\f(x) = x^2\\ and five antiderivatives \\F(x) = x^3/3 + C\\ for \\C \in \\-2, -1, 0, 1, 2\\\\. Each antiderivative has the same derivative \\f\\; they differ only by a vertical shift.

> **NOTE:**
>
> **Theorem 11 (Basic integration rules)** Each antiderivative in the table is defined only up to an arbitrary constant \\C\\ (see [Definition 13](#def-antiderivative)); the table omits \\+ C\\ from every row for brevity.
>
> | Function \\f(x)\\ | Antiderivative \\F(x)\\ | Condition |
> |:--:|:--:|:---|
> | \\c\\ | \\cx\\ | — |
> | \\x^n\\ | \\\dfrac{x^{n+1}}{n+1}\\ | \\n \ne -1\\ |
> | \\\dfrac{1}{x}\\ | \\\operatorname{log}\mathopen{}\left\\\mathopen{}\left\|x\right\|\mathclose{}\right\\\mathclose{}\\ | \\x \ne 0\\ |
> | \\\text{e}^{x}\\ | \\\text{e}^{x}\\ | (self-antiderivative) |
> | \\\text{e}^{cx}\\ | \\\dfrac{1}{c}\text{e}^{cx}\\ | \\c \ne 0\\ |
> | \\\sin x\\ | \\-\cos x\\ | — |
> | \\\cos x\\ | \\\sin x\\ | — |
> | \\c \cdot f(x)\\ | \\c \cdot F(x)\\ | — |
> | \\f(x) + g(x)\\ | \\F(x) + G(x)\\ | — |
>
> The first two rows, the trigonometric rows (\\\sin x\\, \\\cos x\\), and the bottom two rows (linearity) are from ([Larson and Edwards 2018, sec. 4.1](#ref-larsonCalc11e), p. 250 “Basic Integration Rules”); \\1/x\\ is from ([Larson and Edwards 2018, sec. 5.2](#ref-larsonCalc11e), Theorem 5.5, p. 324); \\\text{e}^{x}\\ and \\\text{e}^{cx}\\ are from ([Larson and Edwards 2018, sec. 5.4](#ref-larsonCalc11e), Theorem 5.12, p. 346).

> **NOTE:**
>
> **Example 15 (Antiderivative of \\3x^2 - 1\\)** By the power rule (\\n = 2\\) and linearity from [Theorem 11](#thm-integral-rules):
>
> \\ \begin{aligned} \int \mathopen{}\left(3x^2 - 1\right)\mathclose{}\\dx &= 3 \cdot\frac{x^3}{3} - x + C \\ &= x^3 - x + C. \end{aligned} \\
>
> Verify by differentiating: \\\frac{\partial}{\partial x}\mathopen{}\left(x^3 - x + C\right)\mathclose{} = 3x^2 - 1 = f(x)\\, as required.

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on these rules:
>
> - [The Integral Calculus Rules](https://www.youtube.com/watch?v=d-pyobAQ0iI&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Indefinite Integral Exercises](https://www.youtube.com/watch?v=PoTWa8X_EpI&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

### 2.2 Regularity Conditions

> **NOTE:**
>
> **Definition 15 (Differentiable on an interval)** A function \\f\\ is **differentiable on** an interval if it is differentiable ([Definition 4](#def-differentiable)) at every point of the interval other than its [endpoints](sets-functions.llms.md#def-interval), and, at each endpoint that belongs to the interval, it has the one-sided derivative ([Definition 6](#def-one-sided-derivative)) from inside the interval: the right-hand derivative at the left endpoint and the left-hand derivative at the right endpoint.
>
> ([Larson and Edwards 2018, sec. 2.1](#ref-larsonCalc11e), p. 100)

> **NOTE:**
>
> **Example 16 (Differentiable on one interval but not another)**  
>
> - \\f(x) = x^2\\ is differentiable on \\\[0, 1\]\\: the computation of [Example 4](#exm-differentiable) with \\3\\ replaced by any \\c\\ gives \\\tfrac{f(c + h) - f(c)}{h} = 2c + h\\, which tends to \\2c\\, including the one-sided limits at the endpoints \\0\\ and \\1\\.
> - \\g(x) = \sqrt\[3\]{x}\\ is differentiable on \\\[1, 2\]\\, but not on \\\[-1, 1\]\\: the point \\0\\ is in \\\[-1, 1\]\\ and is not an endpoint, and [Example 4](#exm-differentiable) shows \\g\\ is not differentiable there.

> **NOTE:**
>
> **Definition 16 (Continuous function)** A function \\f\\ is **continuous at** \\x = c\\ if all three conditions hold:
>
> 1.  \\f(c)\\ is defined,
> 2.  \\\lim\_{x \to c} f(x)\\ exists, and
> 3.  \\\lim\_{x \to c} f(x) = f(c)\\.
>
> If any of the three conditions fails, \\f\\ is **discontinuous** at \\c\\.
>
> ([Larson and Edwards 2018, sec. 1.4](#ref-larsonCalc11e), p. 73)

> **NOTE:**
>
> **Example 17 (A continuous function, and one failure of each condition)**  
>
> - \\f(x) = x^2\\ is continuous at \\c = 1\\: \\f(1) = 1\\ is defined, and \\\lim\_{x \to 1} x^2 = 1 = f(1)\\.
> - \\g(x) = \tfrac{x^2 - 1}{x - 1}\\ fails condition 1 at \\c = 1\\: \\g(1)\\ is not defined (it would divide by zero), even though \\\lim\_{x \to 1} g(x) = \lim\_{x \to 1} (x + 1) = 2\\ exists (\\x^2 - 1 = (x - 1)(x + 1)\\, and the factor \\x - 1\\ cancels for \\x \ne 1\\).
> - The step function \\H(x) = 1\\ for \\x \ge 0\\ and \\H(x) = 0\\ for \\x \< 0\\ fails condition 2 at \\c = 0\\: values to the left are all \\0\\ and values to the right are all \\1\\, so \\\lim\_{x \to 0} H(x)\\ does not exist.
> - \\k(x) = x^2\\ for \\x \ne 1\\, with \\k(1) = 5\\, fails condition 3 at \\c = 1\\: \\\lim\_{x \to 1} k(x) = 1\\ exists but differs from \\k(1) = 5\\.

> **NOTE:**
>
> **Definition 17 (Jump discontinuity)** A function \\f\\ has a **jump discontinuity** at \\c\\ if both one-sided limits ([Definition 2](#def-one-sided-limit)) \\\lim\_{x \to c^-} f(x)\\ and \\\lim\_{x \to c^+} f(x)\\ exist but are not equal. Then \\\lim\_{x \to c} f(x)\\ does not exist, so \\f\\ is discontinuous at \\c\\ ([Definition 16](#def-continuous)).

> **NOTE:**
>
> **Example 18 (A jump discontinuity, and a discontinuity that is not a jump)**  
>
> - The step function \\H\\ of [Example 2](#exm-one-sided-limit) has a jump discontinuity at \\0\\: \\\lim\_{x \to 0^-} H(x) = 0\\ and \\\lim\_{x \to 0^+} H(x) = 1\\ both exist, and \\0 \ne 1\\. The size of the jump is \\1 - 0 = 1\\.
> - \\g(x) = \tfrac{x^2 - 1}{x - 1}\\ of [Example 17](#exm-continuous) is discontinuous at \\1\\, because \\g(1)\\ is not defined, but it does not have a jump discontinuity there: for \\x \ne 1\\, \\g(x) = x + 1\\, so both one-sided limits at \\1\\ equal \\1 + 1 = 2\\.

> **NOTE:**
>
> **Definition 18 (Continuous on a closed interval)** A function \\f\\ is **continuous on** a closed interval \\\[a, b\]\\ if all three conditions hold:
>
> 1.  \\f\\ is continuous ([Definition 16](#def-continuous)) at every point of the open interval \\(a, b)\\,
> 2.  \\\lim\_{x \to a^+} f(x) = f(a)\\, and
> 3.  \\\lim\_{x \to b^-} f(x) = f(b)\\.
>
> ([Larson and Edwards 2018, sec. 1.4](#ref-larsonCalc11e), p. 73)

> **NOTE:**
>
> **Example 19 (Continuity on \\\lbrack 0, 1\rbrack\\ uses one-sided limits at the endpoints)** Let \\f(x) = \sqrt{x}\\, the [square root](algebra.llms.md#def-square-root), defined for \\x \ge 0\\. Because \\f\\ is undefined for \\x \< 0\\, only the right-hand limit of \\f\\ at \\0\\ makes sense, and [Definition 18](#def-continuous-on) asks only for that one-sided limit at the endpoint \\0\\. Here \\f\\ is continuous at every point of \\(0, 1)\\, \\\lim\_{x \to 0^+} \sqrt{x} = 0 = f(0)\\, and \\\lim\_{x \to 1^-} \sqrt{x} = 1 = f(1)\\, so \\f\\ is continuous on \\\[0, 1\]\\ ([Definition 18](#def-continuous-on)).

> **NOTE:**
>
> **Example 20 (A function not continuous on \\\lbrack 0, 1\rbrack\\)** Let \\f(x) = 0\\ for \\0 \le x \< 1\\ and \\f(1) = 2\\. Conditions 1 and 2 of [Definition 18](#def-continuous-on) hold, but \\\lim\_{x \to 1^-} f(x) = 0 \ne 2 = f(1)\\, so condition 3 fails and \\f\\ is not continuous on \\\[0, 1\]\\.

> **NOTE:**
>
> **Definition 19 (Partition of an interval)** A **partition** \\\mathcal{P}\\ of a closed interval \\\[a, b\]\\ is a finite list of points
>
> \\ \begin{aligned} a &= x_0 \\ &\< x_1 \\ &\< \cdots \\ &\< x_n \\ &= b. \end{aligned} \\
>
> It splits \\\[a, b\]\\ into the \\n\\ subintervals \\\[x\_{i-1}, x_i\]\\, of widths \\\Delta x_i \stackrel{\text{def}}{=}x_i - x\_{i-1}\\.
>
> ([Larson and Edwards 2018, sec. 4.3](#ref-larsonCalc11e))

> **NOTE:**
>
> **Example 21 (A partition of \\\lbrack 0, 1\rbrack\\)** The points \\0 \< 0.25 \< 0.5 \< 1\\ form a partition of \\\[0, 1\]\\ with \\n = 3\\ subintervals, of widths \\\Delta x_1 = 0.25\\, \\\Delta x_2 = 0.25\\, and \\\Delta x_3 = 0.5\\.

> **NOTE:**
>
> **Example 22 (Lists that are not partitions of \\\lbrack 0, 1\rbrack\\)**  
>
> - \\0, 0.5, 0.25, 1\\ is not a partition: the points are not increasing, since \\0.5 \> 0.25\\.
> - \\0 \< 0.5\\ is not a partition of \\\[0, 1\]\\: its last point is \\0.5\\, not \\b = 1\\.

> **NOTE:**
>
> **Definition 20 (Mesh of a partition)** The **mesh** of a partition \\\mathcal{P}\\ ([Definition 19](#def-partition)) is its largest subinterval width,
>
> \\\mathopen{}\left\lVert\mathcal{P}\right\rVert\mathclose{} \stackrel{\text{def}}{=}\max\_{i \in \mathopen{}\left\\1, \ldots, n\right\\\mathclose{}} \Delta x_i,\\
>
> where \\n\\ is the number of subintervals of \\\mathcal{P}\\.
>
> ([Larson and Edwards 2018, sec. 4.3](#ref-larsonCalc11e))

> **NOTE:**
>
> **Example 23 (The mesh of a partition of \\\lbrack 0, 1\rbrack\\)** For the partition of \\\[0, 1\]\\ in [Example 21](#exm-partition), with widths \\\Delta x_1 = 0.25\\, \\\Delta x_2 = 0.25\\, and \\\Delta x_3 = 0.5\\, the mesh is the largest of these widths, \\\mathopen{}\left\lVert\mathcal{P}\right\rVert\mathclose{} = 0.5\\.

> **NOTE:**
>
> **Definition 21 (Riemann sum)** Let \\f\\ be a function on \\\[a, b\]\\, let \\\mathcal{P}\\ be a partition \\a = x_0 \< x_1 \< \cdots \< x_n = b\\ of \\\[a, b\]\\ ([Definition 19](#def-partition)), and choose a **sample point** \\x_i^\*\\ in each subinterval \\\[x\_{i-1}, x_i\]\\. The **Riemann sum** of \\f\\ for \\\mathcal{P}\\ and these sample points is
>
> \\\sum\_{i=1}^nf(x_i^\*)\\\Delta x_i,\\
>
> where \\\Delta x_i = x_i - x\_{i-1}\\.
>
> ([Larson and Edwards 2018, sec. 4.3](#ref-larsonCalc11e))

> **NOTE:**
>
> **Example 24 (A Riemann sum for \\x^2\\ on \\\lbrack 0, 1\rbrack\\)** Let \\f(x) = x^2\\, take the partition \\0 \< 0.25 \< 0.5 \< 1\\ of [Example 21](#exm-partition), with widths \\\Delta x_1 = 0.25\\, \\\Delta x_2 = 0.25\\, and \\\Delta x_3 = 0.5\\, and take each sample point at the right end of its subinterval: \\x_1^\* = 0.25\\, \\x_2^\* = 0.5\\, and \\x_3^\* = 1\\. Then
>
> \\ \begin{aligned} \sum\_{i=1}^{3} f(x_i^\*)\\\Delta x_i &= f(0.25) \cdot 0.25 + f(0.5) \cdot 0.25 + f(1) \cdot 0.5 && \text{(write out the three terms)} \\ &= 0.0625 \cdot 0.25 + 0.25 \cdot 0.25 + 1 \cdot 0.5 && \text{(evaluate } f(x) = x^2 \text{)} \\ &= 0.015625 + 0.0625 + 0.5 && \text{(multiply)} \\ &= 0.578125 && \text{(add)} \end{aligned} \\

> **NOTE:**
>
> **Definition 22 (Riemann integral (definite integral))** Let \\f\\ be a [bounded](algebra.llms.md#def-bounded) function on \\\[a, b\]\\. For each partition \\\mathcal{P}\\ of \\\[a, b\]\\ ([Definition 19](#def-partition)), choose a sample point \\x_i^\*\\ in each subinterval \\\[x\_{i-1}, x_i\]\\. The **Riemann integral** of \\f\\ over \\\[a, b\]\\ (also called the **definite integral** of \\f\\ from \\a\\ to \\b\\) is the limit of the Riemann sums ([Definition 21](#def-riemann-sum)) as the mesh ([Definition 20](#def-mesh)) shrinks to zero:
>
> \\\int_a^b f(x)\\dx \stackrel{\text{def}}{=}\lim\_{\mathopen{}\left\lVert\mathcal{P}\right\rVert\mathclose{} \to 0} \sum\_{i=1}^nf(x_i^\*)\\\Delta x_i,\\
>
> when that limit exists and has the same value for every choice of the partitions and of the sample points \\x_i^\*\\.
>
> ([Larson and Edwards 2018, sec. 4.3](#ref-larsonCalc11e), p. 272)

> **NOTE:**
>
> **Definition 23 (Riemann integrable)** A bounded function \\f\\ is **Riemann integrable on** \\\[a, b\]\\ if the Riemann sums ([Definition 21](#def-riemann-sum)) \\\sum\_{i=1}^nf(x_i^\*)\\\Delta x_i\\, over partitions \\\mathcal{P}\\ of \\\[a, b\]\\ ([Definition 19](#def-partition)) with a sample point \\x_i^\*\\ in each subinterval \\\[x\_{i-1}, x_i\]\\, approach a real-number limit as the mesh \\\mathopen{}\left\lVert\mathcal{P}\right\rVert\mathclose{}\\ ([Definition 20](#def-mesh)) shrinks to zero, and that limit is the same for every choice of the partitions and of the sample points.
>
> ([Larson and Edwards 2018, sec. 4.3](#ref-larsonCalc11e), p. 272)

> **NOTE:**
>
> **Example 25 (A constant function is integrable)** Let \\f(x) = 2\\ on \\\[0, 3\]\\. For every partition and every choice of sample points,
>
> \\ \begin{aligned} \sum\_{i=1}^nf(x_i^\*)\\\Delta x_i &= \sum\_{i=1}^n2\\\Delta x_i && \text{(} f \text{ is } 2 \text{ everywhere)} \\ &= 2 \sum\_{i=1}^n\Delta x_i && \text{(factor out the constant)} \\ &= 2 \cdot(3 - 0) && \text{(the widths add up to the length of } \[0, 3\] \text{)} \\ &= 6, && \text{(multiply)} \end{aligned} \\
>
> so the sums have the same limit, \\6\\, for every choice: \\f\\ is Riemann integrable on \\\[0, 3\]\\ ([Definition 23](#def-integrable)), and \\\int_0^3 2\\dx = 6\\ ([Definition 22](#def-riemann-integral)).

> **NOTE:**
>
> **Definition 24 (Integrand)** In an integral such as \\\int_a^b f(x)\\dx\\ ([Definition 22](#def-riemann-integral)) or \\\int f(x)\\dx\\ ([Definition 14](#def-indefinite-integral)), the function \\f\\ being integrated is the **integrand**.

> **NOTE:**
>
> **Example 26 (Integrands)**  
>
> - In \\\int_0^3 2\\dx = 6\\ ([Example 25](#exm-integrable-constant)), the integrand is the [constant function](algebra.llms.md#def-constant-function) \\f(x) = 2\\, and the [limits of integration](notation.llms.md#def-lower-upper-limits) are \\0\\ and \\3\\.
> - In \\\int \mathopen{}\left(3x^2 - 1\right)\mathclose{}\\dx = x^3 - x + C\\ ([Example 15](#exm-integral-rules-quadratic)), the integrand is \\f(x) = 3x^2 - 1\\; its value at \\x = 2\\ is \\3 \cdot 4 - 1 = 11\\.

> **NOTE:**
>
> *Remark 2* (Riemann integrable functions and Riemann integrals). A bounded function \\f\\ is Riemann integrable on \\\[a, b\]\\ exactly when its Riemann integral \\\int_a^b f(x)\\dx\\ ([Definition 22](#def-riemann-integral)) exists; the integral is the common limit of the sums. For example, let \\g(x) = 1\\ when \\x\\ is [rational](notation.llms.md#def-rational-numbers) and \\g(x) = 0\\ when \\x\\ is [irrational](notation.llms.md#def-irrational-numbers), on \\\[0, 1\]\\. Every subinterval contains both rational and irrational points. Choosing every sample point rational gives \\\sum\_{i=1}^n1 \cdot\Delta x_i = 1\\ for every partition, because the widths \\\Delta x_i\\ add up to the length \\1 - 0 = 1\\ of \\\[0, 1\]\\, and choosing every sample point irrational gives \\\sum\_{i=1}^n0 \cdot\Delta x_i = 0\\. The two limits differ, so \\g\\ is not Riemann integrable on \\\[0, 1\]\\, and \\\int_0^1 g(x)\\dx\\ does not exist.

> **NOTE:**
>
> **Definition 25 (Equal-width Riemann sum)** For a bounded function \\f\\ on \\\[a, b\]\\ and a positive integer \\n\\, split \\\[a, b\]\\ into \\n\\ subintervals of equal width \\\Delta x \stackrel{\text{def}}{=}(b - a)/n\\, and let \\x_i^\*\\ be any point in the \\i\\-th subinterval. The **equal-width Riemann sum** is
>
> \\S_n \stackrel{\text{def}}{=}\sum\_{i=1}^nf(x_i^\*)\\\Delta x.\\

> **NOTE:**
>
> **Example 27 (An equal-width Riemann sum)** Let \\f(x) = x^2\\ on \\\[0, 1\]\\, with \\n = 2\\, so \\\Delta x = 1/2\\, and take each sample point at the right end of its subinterval: \\x_1^\* = \frac{1}{2}\\ and \\x_2^\* = 1\\. Then
>
> \\ \begin{aligned} S_2 &= f\mathopen{}\left(\tfrac{1}{2}\right)\mathclose{} \cdot\tfrac{1}{2} + f(1) \cdot\tfrac{1}{2} && \text{(equal-width Riemann sum with } n = 2 \text{)} \\ &= \tfrac{1}{4} \cdot\tfrac{1}{2} + 1 \cdot\tfrac{1}{2} && \text{(evaluate } f(x) = x^2 \text{)} \\ &= \tfrac{5}{8} && \text{(add)} \end{aligned} \\

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on approximating an area by a sum of simple pieces, as a Riemann sum does, and on computing such sums in Python:
>
> - [The Method of Exhaustion](https://www.youtube.com/watch?v=h0gPomI3h8o&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Numeric Integration with Python](https://www.youtube.com/watch?v=f4nfLIkNv0A&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

Before stating the Fundamental Theorem of Calculus, we record two prerequisite results. The usual statement of the Fundamental Theorem of Calculus assumes that the integrand \\f\\ is continuous on \\\[a, b\]\\; continuity is [sufficient](notation.llms.md#def-necessary-sufficient) there, though not necessary. The two results are “differentiability implies continuity”, which says where continuity comes from, and “continuity implies integrability”, which says what continuity buys us.

> **NOTE:**
>
> **Theorem 12 (Differentiability implies continuity)** If \\f\\ is differentiable at \\x = c\\, then \\f\\ is continuous at \\x = c\\.
>
> ([Larson and Edwards 2018](#ref-larsonCalc11e), Theorem 2.1, p. 106)

> **NOTE:**
>
> *Proof*. Because \\f'(c)\\ exists, \\f(c)\\ is defined, and:
>
> \\ \begin{aligned} \lim\_{h \to 0} \mathopen{}\left(f(c + h) - f(c)\right)\mathclose{} &= \lim\_{h \to 0} \mathopen{}\left(\frac{f(c + h) - f(c)}{h} \cdot h\right)\mathclose{} && \text{(multiply and divide by } h \neq 0 \text{)} \\ &= \mathopen{}\left(\lim\_{h \to 0} \frac{f(c + h) - f(c)}{h}\right)\mathclose{} \cdot\mathopen{}\left(\lim\_{h \to 0} h\right)\mathclose{} && \text{(limit of a product, both limits exist)} \\ &= f'(c) \cdot 0 && \text{(definition of } f'(c) \text{)} \\ &= 0 && \text{(multiply)} \end{aligned} \\
>
> So \\\lim\_{h \to 0} f(c + h) = f(c)\\, which is \\\lim\_{x \to c} f(x) = f(c)\\ with \\x = c + h\\; all three conditions of [Definition 16](#def-continuous) hold.

> **NOTE:**
>
> **Example 28 (Differentiable, hence continuous: \\x^3 - x\\)** \\f(x) = x^3 - x\\ is differentiable everywhere (with derivative \\f'(x) = 3x^2 - 1\\), so by [Theorem 12](#thm-diff-implies-cont) it is continuous everywhere.

> **NOTE:**
>
> **Example 29 (Continuous but not differentiable: \\\mathopen{}\left\|x\right\|\mathclose{}\\)** The absolute-value function \\f(x) = \mathopen{}\left\|x\right\|\mathclose{}\\ is continuous at \\x = 0\\ (\\\lim\_{x \to 0}\mathopen{}\left\|x\right\|\mathclose{} = 0 = \mathopen{}\left\|0\right\|\mathclose{}\\), but it is not differentiable at \\x = 0\\: its left-hand derivative there is \\-1\\ and its right-hand derivative is \\+1\\ ([Example 6](#exm-one-sided-derivative)).
>
> This [counterexample](notation.llms.md#def-counterexample) shows that the [converse](notation.llms.md#def-converse) of [Theorem 12](#thm-diff-implies-cont) fails: continuity does not imply differentiability. See [Figure 3](#fig-abs-value).
>
> Show R code
>
> ``` downlit
> ggplot2::ggplot() +
>   ggplot2::geom_function(fun = abs, xlim = c(-2, 2), linewidth = 1) +
>   ggplot2::geom_point(ggplot2::aes(x = 0, y = 0), size = 3) +
>   ggplot2::labs(x = "x", y = expression(f(x) == abs(x))) +
>   ggplot2::theme_minimal()
> ```
>
> [![](calculus_files/figure-html/abs-value-code-1.png)](calculus_files/figure-html/abs-value-code-1.png "Figure 3: f(x) = \mathopen{}\left|x\right|\mathclose{} has a sharp corner at x = 0 (not differentiable there) but is continuous everywhere: no gaps or jumps.")
>
> Figure 3: \\f(x) = \mathopen{}\left\|x\right\|\mathclose{}\\ has a sharp corner at \\x = 0\\ (not differentiable there) but is continuous everywhere: no gaps or jumps.

> **NOTE:**
>
> **Theorem 13 (Continuity implies integrability)** If \\f\\ is continuous on the closed interval \\\[a, b\]\\, then \\f\\ is integrable on \\\[a, b\]\\ (i.e., the Riemann integral \\\int_a^b f(x)\\dx\\ exists and is finite).
>
> ([Larson and Edwards 2018](#ref-larsonCalc11e), Theorem 4.4, p. 272)

> **NOTE:**
>
> **Example 30 (Continuous, hence integrable: polynomials)** Every [polynomial](algebra.llms.md#def-polynomial) is continuous on \\\mathbb{R}\\, so by [Theorem 13](#thm-cont-implies-int) every polynomial is integrable on every closed interval \\\[a, b\]\\.

> **NOTE:**
>
> **Example 31 (Integrable but not continuous: a step function)** Let \\f(x) = 0\\ for \\x \< \tfrac{1}{2}\\ and \\f(x) = 1\\ for \\x \ge \tfrac{1}{2}\\. Then \\f\\ has a jump discontinuity ([Definition 17](#def-jump-discontinuity)) at \\x = \tfrac{1}{2}\\, but it is integrable on \\\[0, 1\]\\:
>
> \\ \begin{aligned} \int_0^1 f(x)\\dx &= \int_0^{1/2} 0\\dx + \int\_{1/2}^1 1\\dx \\ &= 0 + \tfrac{1}{2} \\ &= \tfrac{1}{2}. \end{aligned} \\
>
> This counterexample shows that the converse of [Theorem 13](#thm-cont-implies-int) fails: integrability does not imply continuity. See [Figure 4](#fig-step).
>
> Show R code
>
> ``` downlit
> step_df <- data.frame(
>   x = c(0, 0.5, 0.5, 1),
>   y = c(0, 0, 1, 1),
>   segment = c("left", "left", "right", "right")
> )
>
> ggplot2::ggplot() +
>   ggplot2::geom_rect(
>     ggplot2::aes(xmin = 0.5, xmax = 1, ymin = 0, ymax = 1),
>     fill = "steelblue", alpha = 0.3
>   ) +
>   ggplot2::geom_line(
>     data = step_df,
>     ggplot2::aes(x = x, y = y, group = segment),
>     linewidth = 1
>   ) +
>   ggplot2::geom_point(ggplot2::aes(x = 0.5, y = 0), shape = 1, size = 3) +
>   ggplot2::geom_point(ggplot2::aes(x = 0.5, y = 1), shape = 16, size = 3) +
>   ggplot2::scale_x_continuous(
>     breaks = c(0, 0.5, 1),
>     labels = c("0", "1/2", "1")
>   ) +
>   ggplot2::scale_y_continuous(limits = c(-0.1, 1.2)) +
>   ggplot2::labs(x = "x", y = "f(x)") +
>   ggplot2::theme_minimal()
> ```
>
> [![](calculus_files/figure-html/step-code-1.png)](calculus_files/figure-html/step-code-1.png "Figure 4: Step function: f(x) = 0 on [0, \tfrac{1}{2}) (open circle at the jump) and f(x) = 1 on [\tfrac{1}{2}, 1] (filled circle). The shaded rectangle has area \tfrac{1}{2}, matching the integral computed in Example 31.")
>
> Figure 4: Step function: \\f(x) = 0\\ on \\\[0, \tfrac{1}{2})\\ (open circle at the jump) and \\f(x) = 1\\ on \\\[\tfrac{1}{2}, 1\]\\ (filled circle). The shaded rectangle has area \\\tfrac{1}{2}\\, matching the integral computed in [Example 31](#exm-int-not-cont).

Together, [Theorem 12](#thm-diff-implies-cont) and [Theorem 13](#thm-cont-implies-int) establish the chain:

\\\text{differentiable on } \[a, b\] \\\Rightarrow\\ \text{continuous on } \[a, b\] \\\Rightarrow\\ \text{integrable on } \[a, b\]\\

[Example 29](#exm-cont-not-diff) and [Example 31](#exm-int-not-cont) show that neither implication reverses in general.

> **NOTE:**
>
> **Theorem 14 (Equal-width Riemann sums converge to the integral)** If \\f\\ is Riemann integrable on \\\[a, b\]\\ ([Definition 23](#def-integrable)), then for every choice of the sample points \\x_i^\*\\, the equal-width Riemann sums ([Definition 25](#def-riemann-sum-equal-width)) converge to the integral:
>
> \\\lim\_{n \to \infty} S_n = \int_a^b f(x)\\dx.\\

> **NOTE:**
>
> *Proof*. The \\n\\ equal-width subintervals form a partition of \\\[a, b\]\\ whose mesh ([Definition 20](#def-mesh)) is \\(b - a)/n\\, which goes to \\0\\ as \\n \to \infty\\. So \\S_n\\ is one of the sums in the limit that defines the integral ([Definition 22](#def-riemann-integral)), along a sequence of partitions whose mesh goes to \\0\\, and a limit that has the same value for every choice of partitions has that value along this sequence too.

> **NOTE:**
>
> **Example 32 (Equal-width sums for \\\int_0^1 x\\dx\\)** Let \\f(x) = x\\ on \\\[0, 1\]\\, which is continuous and so Riemann integrable ([Theorem 13](#thm-cont-implies-int)), and take each sample point at the right end of its subinterval, \\x_i^\* = i/n\\. With \\\Delta x = 1/n\\:
>
> \\ \begin{aligned} S_n &= \sum\_{i=1}^n\frac{i}{n} \cdot\frac{1}{n} && \text{(equal-width Riemann sum with } x_i^\* = i/n \text{)} \\ &= \frac{1}{n^2} \sum\_{i=1}^ni && \text{(factor out } 1/n^2 \text{)} \\ &= \frac{1}{n^2} \cdot\frac{n(n+1)}{2} && \text{(sum of the first } n \text{ integers)} \\ &= \frac{n+1}{2n} && \text{(cancel one factor of } n \text{)} \end{aligned} \\
>
> So \\S\_{10} = 0.55\\, \\S\_{100} = 0.505\\, \\S\_{1000} = 0.5005\\, and \\S_n \to \frac{1}{2}\\ as \\n \to \infty\\. By [Theorem 14](#thm-riemann-general), \\\int_0^1 x\\dx = \frac{1}{2}\\.

### 2.3 Fundamental Theorem of Calculus

> **NOTE:**
>
> **Definition 26 (Accumulation function)** Let \\f\\ be Riemann integrable on \\\[a, b\]\\ ([Definition 23](#def-integrable)). The **accumulation function** of \\f\\ from \\a\\ is the function \\F\\ on \\\[a, b\]\\ with \\F(a) \stackrel{\text{def}}{=}0\\ and
>
> \\F(x) \stackrel{\text{def}}{=}\int_a^x f(t)\\dt \quad \text{for } a \< x \le b.\\
>
> So \\F(x)\\ is the integral of \\f\\ accumulated from \\a\\ up to \\x\\. The letter \\t\\ inside the integral is a placeholder, renamed from \\x\\ so that \\x\\ can serve as the [upper limit](notation.llms.md#def-lower-upper-limits).

> **NOTE:**
>
> **Example 33 (The accumulation function of a constant)** Let \\f(t) = 2\\ on \\\[0, 3\]\\, which is Riemann integrable ([Example 25](#exm-integrable-constant)). For \\0 \< x \le 3\\, the computation of [Example 25](#exm-integrable-constant), with the interval \\\[0, 3\]\\ replaced by \\\[0, x\]\\, gives
>
> \\ \begin{aligned} F(x) &= \int_0^x 2\\dt && \text{(definition of the accumulation function)} \\ &= 2 \cdot(x - 0) && \text{(every Riemann sum is } 2 \text{ times the total width } x - 0 \text{)} \\ &= 2x && \text{(subtract)} \end{aligned} \\
>
> and \\F(0) = 0 = 2 \cdot 0\\ too. For example, \\F(1.5) = 2 \cdot 1.5 = 3\\, the area of a rectangle of height \\2\\ and width \\1.5\\.

> **NOTE:**
>
> **Theorem 15 (Fundamental Theorem of Calculus)** Let \\f\\ be a continuous function on a closed interval \\\[a, b\]\\.
>
> **Part 1 (Derivative of an integral).** Let \\F(x) = \int_a^x f(t)\\dt\\ for \\x \in \[a, b\]\\ be the accumulation function of \\f\\ from \\a\\ ([Definition 26](#def-accumulation-function)). Then \\F\\ is differentiable and:
>
> \\\frac{\partial}{\partial x}\int_a^x f(t)\\dt = f(x) \tag{3}\\
>
> > **NOTE:**
> >
> > Continuity on all of \\\[a, b\]\\ is a sufficient condition. More generally, Part 1 holds at any individual point \\x\\ where \\f\\ is integrable on \\\[a, b\]\\ (see [Definition 23](#def-integrable)) and continuous at \\x\\ (see [Definition 16](#def-continuous)), even if \\f\\ has jump discontinuities ([Definition 17](#def-jump-discontinuity)) elsewhere ([Rudin 1976](#ref-rudin1976principles), Theorem 6.20, p. 133).
>
> ([Larson and Edwards 2018](#ref-larsonCalc11e), Theorem 4.11, p. 288)
>
> **Part 2 (Evaluation theorem).** The \\F\\ here may be *any* antiderivative of \\f\\ — not just the accumulation function from Part 1. If \\F\\ is an antiderivative of \\f\\ on \\\[a, b\]\\ (i.e., \\\frac{\partial}{\partial x} F(x) = f(x)\\ for all \\x \in \[a, b\]\\), then:
>
> \\\int_a^b f(x)\\dx = F(b) - F(a) \tag{4}\\
>
> Equivalently, with \\b\\ replaced by a variable upper limit \\x\\, integrating the derivative of \\F\\ recovers the net change in \\F\\:
>
> \\\int_a^x F'(t)\\dt = F(x) - F(a) \tag{5}\\
>
> or equivalently in Leibniz notation:
>
> \\\int_a^x \frac{d F}{d t}\\dt = F(x) - F(a)\\
>
> ([Banner 2007, chap. 18](#ref-calclifesaver); [Larson and Edwards 2018](#ref-larsonCalc11e), Theorem 4.9, p. 282)

The two parts of the FTC together express that **differentiation and integration are inverse operations**:

- Part 1: differentiating the integral of \\f\\ recovers \\f\\ ([Equation 3](#eq-ftc-deriv-of-integral)).
- Part 2: the integral of \\f\\ over \\\[a, b\]\\ equals the difference of any antiderivative’s values at the endpoints ([Equation 4](#eq-ftc-part2)), which rearranges to “integrating the derivative of \\F\\ recovers the net change in \\F\\” ([Equation 5](#eq-ftc-integral-of-deriv)).

The standard form of the FTC assumes \\f\\ is continuous on \\\[a, b\]\\; continuity is *sufficient* but not strictly necessary (see the callout note inside [Theorem 15](#thm-ftc) for the more general statement). Since differentiability implies continuity ([Theorem 12](#thm-diff-implies-cont)), the FTC applies in particular whenever \\f\\ is differentiable — a common situation in applied statistics.

> **NOTE:**
>
> **Definition 27 (Evaluation bracket)** For a function \\F\\ and numbers \\a\\ and \\b\\ where \\F\\ is defined, the **evaluation bracket** is the difference
>
> \\\mathopen{}\left\[F(t)\right\]\mathclose{}\_{t=a}^{t=b} \stackrel{\text{def}}{=}F(b) - F(a).\\
>
> When the variable is clear from the context, it is written \\\mathopen{}\left\[F(t)\right\]\mathclose{}\_a^b\\. With FTC Part 2 ([Theorem 15](#thm-ftc)), \\\int_a^b f(t)\\dt = \mathopen{}\left\[F(t)\right\]\mathclose{}\_{t=a}^{t=b}\\ for any antiderivative \\F\\ of a continuous \\f\\, and computing \\F(b) - F(a)\\ from the bracket is called **evaluating at the limits** (the [limits of integration](notation.llms.md#def-lower-upper-limits) \\a\\ and \\b\\).

> **NOTE:**
>
> **Example 34 (Evaluating \\\int_1^3 2t\\dt\\ with a bracket)** \\F(t) = t^2\\ is an antiderivative of \\f(t) = 2t\\, since \\\frac{\partial}{\partial t} t^2 = 2t\\, so
>
> \\ \begin{aligned} \int_1^3 2t\\dt &= \mathopen{}\left\[t^2\right\]\mathclose{}\_{t=1}^{t=3} && \text{(FTC Part 2)} \\ &= 3^2 - 1^2 && \text{(definition of the evaluation bracket)} \\ &= 9 - 1 && \text{(square)} \\ &= 8 && \text{(subtract)} \end{aligned} \\

> **NOTE:**
>
> **Exercise 32 (Definite integral of a polynomial)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.31.
>
> Evaluate the integral:
>
> \\\int_0^1 (x^4 + x^2 + 1)\\dx\\

> **NOTE:**
>
> *Solution 32*. Integrate term by term using the power rule for integration:
>
> \\\begin{aligned} \int_0^1 (x^4 + x^2 + 1)\\dx &= \mathopen{}\left\[\frac{x^5}{5} + \frac{x^3}{3} + x\right\]\mathclose{}\_0^1 \\ &= \mathopen{}\left(\frac{1}{5} + \frac{1}{3} + 1\right)\mathclose{} - 0 \\ &= \frac{3 + 5 + 15}{15} \\ &= \frac{23}{15} \end{aligned}\\

> **NOTE:**
>
> **Exercise 33 (Integral of a perfect square)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.32.
>
> Evaluate the integral:
>
> \\\int_0^1 (x^2 + 2x + 1)\\dx\\

> **NOTE:**
>
> *Solution 33*. Notice that the integrand is a perfect square: \\x^2 + 2x + 1 = (x + 1)^2\\.
>
> With substitution \\u = x + 1\\ (where \\du = dx\\):
>
> \\ \begin{aligned} \int_0^1 (x + 1)^2\\dx &= \mathopen{}\left\[\frac{(x + 1)^3}{3}\right\]\mathclose{}\_0^1 \\ &= \frac{2^3}{3} - \frac{1^3}{3} \\ &= \frac{8 - 1}{3} \\ &= \frac{7}{3} \end{aligned} \\
>
> *Alternative (term by term):*
>
> \\ \begin{aligned} \mathopen{}\left\[\frac{x^3}{3} + x^2 + x\right\]\mathclose{}\_0^1 &= \frac{1}{3} + 1 + 1 \\ &= \frac{7}{3} \end{aligned} \\

> **NOTE:**
>
> **Exercise 34 (Integral of a composite power)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.33.
>
> Evaluate the integral:
>
> \\\int_0^1 (x^2 + 2x + 1)^2\\dx\\

> **NOTE:**
>
> *Solution 34*. Recognize that \\x^2 + 2x + 1 = (x + 1)^2\\, so the integrand is:
>
> \\ \begin{aligned} (x^2 + 2x + 1)^2 &= \mathopen{}\left\[(x + 1)^2\right\]\mathclose{}^2 \\ &= (x + 1)^4 \end{aligned} \\
>
> Using the substitution \\u = x + 1\\ with \\du = dx\\:
>
> \\ \begin{aligned} \int_0^1 (x + 1)^4\\dx &= \mathopen{}\left\[\frac{(x + 1)^5}{5}\right\]\mathclose{}\_0^1 \\ &= \frac{2^5 - 1^5}{5} \\ &= \frac{32 - 1}{5} \\ &= \frac{31}{5} \end{aligned} \\
>
> *Remark:* Do not mistakenly write \\\int (x^2 + 2x + 1)^2\\dx = \frac{(x^2 + 2x + 1)^3}{3}\\; that formula requires the derivative of the inside function (\\2x + 2\\) to be present as a factor in the integrand.

> **NOTE:**
>
> **Exercise 35 (Integral of odd trigonometric functions)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.34.
>
> Evaluate the integral:
>
> \\\int\_{-\pi/2}^{\pi/2} (\sin^3 x \cos x + \sin x \cos x)\\dx\\

> **NOTE:**
>
> *Solution 35*. Because \\\sin(-x) = -\sin x\\ and \\\cos(-x) = \cos x\\:
>
> \\\sin^3(-x)\cos(-x) + \sin(-x)\cos(-x) = -\sin^3 x \cos x - \sin x \cos x\\
>
> The integrand is an odd function. The integral of any continuous odd function over a symmetric interval \\\[-a, a\]\\ is zero:
>
> \\\int\_{-\pi/2}^{\pi/2} (\sin^3 x \cos x + \sin x \cos x)\\dx = 0\\
>
> *Alternative (by substitution):* Set \\u = \sin x\\, so \\du = \cos x\\dx\\. As \\x\\ ranges from \\-\pi/2\\ to \\\pi/2\\, \\u\\ ranges from \\-1\\ to \\1\\:
>
> \\ \begin{aligned} \int\_{-1}^1 (u^3 + u)\\du &= \mathopen{}\left\[\frac{u^4}{4} + \frac{u^2}{2}\right\]\mathclose{}\_{-1}^1 \\ &= \mathopen{}\left(\frac{1}{4} + \frac{1}{2}\right)\mathclose{} - \mathopen{}\left(\frac{1}{4} + \frac{1}{2}\right)\mathclose{} \\ &= 0 \end{aligned} \\

> **NOTE:**
>
> **Exercise 36 (Separating even and odd parts of a polynomial)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.35.
>
> Evaluate the integral:
>
> \\\int\_{-4}^4 (x^3 + 6x^2 - 2x - 3)\\dx\\

> **NOTE:**
>
> *Solution 36*. Split the integrand into its odd part \\x^3 - 2x\\ and its even part \\6x^2 - 3\\:
>
> \\\int\_{-4}^4 (x^3 - 2x)\\dx = 0\\
>
> The even part doubles over the half-interval \\\[0, 4\]\\:
>
> \\ \begin{aligned} \int\_{-4}^4 (6x^2 - 3)\\dx &= 2\int_0^4 (6x^2 - 3)\\dx \\ &= 2\mathopen{}\left\[2x^3 - 3x\right\]\mathclose{}\_0^4 \\ &= 2\mathopen{}\left\[2(64) - 3(4)\right\]\mathclose{} \\ &= 2(128 - 12) \\ &= 232 \end{aligned} \\

> **NOTE:**
>
> **Exercise 37 (Substitution leading to a natural logarithm)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.36.
>
> Evaluate the integral:
>
> \\\int_0^1 \frac{x}{1 + x^2}\\dx\\

> **NOTE:**
>
> *Solution 37*. Let \\u = 1 + x^2\\. Then \\du = 2x\\dx\\, so \\x\\dx = \frac{1}{2}du\\.
>
> Transform the limits of integration:
>
> - When \\x = 0\\: \\u = 1 + 0^2 = 1\\.
> - When \\x = 1\\: \\u = 1 + 1^2 = 2\\.
>
> Applying the substitution:
>
> \\ \begin{aligned} \int_0^1 \frac{x}{1 + x^2}\\dx &= \frac{1}{2}\int_1^2 \frac{du}{u} \\ &= \frac{1}{2}\mathopen{}\left\[\log u\right\]\mathclose{}\_1^2 \\ &= \frac{1}{2}(\log 2 - \log 1) \\ &= \frac{\log 2}{2} \end{aligned} \\
>
> *Remark:* When using \\u\\-substitution with definite integrals, the transformation \\x \mapsto u(x)\\ must be one-to-one on the domain of integration.

> **NOTE:**
>
> **Exercise 38 (Substitution with a polynomial power)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.37.
>
> Evaluate the integral:
>
> \\\int_0^3 (x^3 + 3x)^8 (x^2 + 1)\\dx\\

> **NOTE:**
>
> *Solution 38*. Let \\u = x^3 + 3x\\. Then:
>
> \\ \begin{aligned} du &= (3x^2 + 3)\\dx \\ &= 3(x^2 + 1)\\dx \\ \implies (x^2 + 1)\\dx &= \frac{du}{3} \end{aligned} \\
>
> Limits:
>
> - When \\x = 0\\: \\u = 0\\.
> - When \\x = 3\\: \\u = 3^3 + 3(3) = 27 + 9 = 36\\.
>
> Substitute:
>
> \\ \begin{aligned} \int_0^3 (x^3 + 3x)^8 (x^2 + 1)\\dx &= \frac{1}{3}\int_0^{36} u^8\\du \\ &= \frac{1}{3}\mathopen{}\left\[\frac{u^9}{9}\right\]\mathclose{}\_0^{36} \\ &= \frac{36^9}{27} \end{aligned} \\

> **NOTE:**
>
> **Exercise 39 (Substitution with a trigonometric integrand)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.38.
>
> Evaluate the integral:
>
> \\\int_0^2 x\cos(3x^2)\\dx\\

> **NOTE:**
>
> *Solution 39*. Let \\u = 3x^2\\. Then \\du = 6x\\dx\\, meaning \\x\\dx = \frac{du}{6}\\.
>
> Limits:
>
> - When \\x = 0\\: \\u = 0\\.
> - When \\x = 2\\: \\u = 3(2^2) = 12\\.
>
> Substitute:
>
> \\ \begin{aligned} \int_0^2 x\cos(3x^2)\\dx &= \frac{1}{6}\int_0^{12} \cos u\\du \\ &= \frac{1}{6}\mathopen{}\left\[\sin u\right\]\mathclose{}\_0^{12} \\ &= \frac{\sin 12}{6} \end{aligned} \\

> **NOTE:**
>
> **Exercise 40 (Integration by parts with an exponential factor)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.40.
>
> Evaluate the integral:
>
> \\\int_a^b x^3 \operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\\dx\\

> **NOTE:**
>
> *Solution 40*. Factor the integrand as \\x^2 \cdot\mathopen{}\left(x \operatorname{exp}\mathopen{}\left\\-x^2/2\right\\\mathclose{}\right)\mathclose{}\\. Set:
>
> \\u = x^2, \qquad dv = x\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\\dx\\
>
> Then \\du = 2x\\dx\\ and \\v = -\operatorname{exp}\mathopen{}\left\\-x^2/2\right\\\mathclose{}\\.
>
> Using integration by parts (\\\int u\\dv = uv - \int v\\du\\):
>
> \\\begin{aligned} \int_a^b x^3 \operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\\dx &= \mathopen{}\left\[-x^2 \operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\right\]\mathclose{}\_a^b - \int_a^b \mathopen{}\left\[-\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\right\]\mathclose{}(2x\\dx) \\ &= \mathopen{}\left\[-x^2 \operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\right\]\mathclose{}\_a^b + 2\int_a^b x\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\\dx \\ &= \mathopen{}\left\[-x^2 \operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\right\]\mathclose{}\_a^b + 2\mathopen{}\left\[-\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\right\]\mathclose{}\_a^b \\ &= \mathopen{}\left\[-(x^2 + 2)\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{2}\right\\\mathclose{}\right\]\mathclose{}\_a^b \\ &= (a^2 + 2)\operatorname{exp}\mathopen{}\left\\-\frac{a^2}{2}\right\\\mathclose{} - (b^2 + 2)\operatorname{exp}\mathopen{}\left\\-\frac{b^2}{2}\right\\\mathclose{} \end{aligned}\\

> **NOTE:**
>
> **Example 35 (FTC Part 1 visualized: accumulation function for \\f(t) = 2t\\)** Take \\f(t) = 2t\\ on \\\[0, 2\]\\. The accumulation function from \\0\\ is
>
> \\ \begin{aligned} F(x) \\ &\stackrel{\text{def}}{=}\\ \int_0^x 2t\\dt \\ \\ &=\\ \mathopen{}\left\[t^2\right\]\mathclose{}\_{t=0}^{t=x} \\ \\ &=\\ x^2 - 0^2 \\ \\ &=\\ x^2, \end{aligned} \\
>
> so \\F(x) = x^2\\, and indeed \\F'(x) = 2x = f(x)\\, as [Theorem 15](#thm-ftc) Part 1 predicts. [Figure 5](#fig-ftc-part1) shows the integrand on the left (shaded area equals \\F(x)\\ at each \\x\\) and the accumulation function \\F(x) = x^2\\ on the right (its slope at \\x\\ equals \\f(x) = 2x\\).
>
> Show R code
>
> ``` downlit
> ggplot2::ggplot() +
>   ggplot2::geom_area(
>     data = data.frame(t = seq(0, x_focus, length.out = 200)),
>     ggplot2::aes(x = t, y = 2 * t),
>     fill = "steelblue", alpha = 0.4
>   ) +
>   ggplot2::geom_function(fun = \(t) 2 * t, xlim = c(0, 2.2), linewidth = 1) +
>   ggplot2::geom_vline(
>     data = data.frame(x = x_marks),
>     ggplot2::aes(xintercept = x, color = factor(x)),
>     linetype = "dashed", linewidth = 0.6
>   ) +
>   ggplot2::labs(x = "t", y = "f(t) = 2t", color = "x") +
>   ggplot2::theme_minimal() +
>   ggplot2::theme(legend.position = "bottom")
> ```
>
> [![](calculus_files/figure-html/ftc-part1-left-code-1.png)](calculus_files/figure-html/ftc-part1-left-code-1.png "Figure 5 (a): f(t) = 2t; shaded area equals F(1.5) = 2.25; vertical lines mark x \in \{1, 1.5, 2\}.")
>
> \(a\) \\f(t) = 2t\\; shaded area equals \\F(1.5) = 2.25\\; vertical lines mark \\x \in \\1, 1.5, 2\\\\.
>
> Show R code
>
> ``` downlit
> slope_df <- data.frame(
>   x = x_marks,
>   Fx = x_marks^2,
>   slope = 2 * x_marks
> )
>
> ggplot2::ggplot() +
>   ggplot2::geom_function(fun = \(x) x^2, xlim = c(0, 2.2), linewidth = 1) +
>   ggplot2::geom_point(
>     data = slope_df,
>     ggplot2::aes(x = x, y = Fx, color = factor(x)),
>     size = 3
>   ) +
>   ggplot2::geom_segment(
>     data = slope_df,
>     ggplot2::aes(
>       x = x - 0.3, xend = x + 0.3,
>       y = Fx - 0.3 * slope, yend = Fx + 0.3 * slope,
>       color = factor(x)
>     ),
>     linewidth = 0.8
>   ) +
>   ggplot2::labs(x = "x", y = expression(F(x) == x^2), color = "x") +
>   ggplot2::theme_minimal() +
>   ggplot2::theme(legend.position = "bottom")
> ```
>
> [![](calculus_files/figure-html/ftc-part1-right-code-1.png)](calculus_files/figure-html/ftc-part1-right-code-1.png "Figure 5 (b): F(x) = x^2; tangent slope at each marked x equals f(x) = 2x.")
>
> \(b\) \\F(x) = x^2\\; tangent slope at each marked \\x\\ equals \\f(x) = 2x\\.
>
> Figure 5: Left: \\f(t) = 2t\\; the shaded area \\\int_0^{1.5} 2t\\dt = F(1.5) = 2.25\\; vertical lines mark \\x \in \\1, 1.5, 2\\\\. Right: \\F(x) = x^2\\; for each marked \\x\\, the tangent slope equals \\f(x) = 2x\\.

> **NOTE:**
>
> **Example 36 (CDF and PDF of the exponential distribution)** In what follows, \\f\\ denotes the PDF and \\F\\ the CDF — the same letters as the antiderivative pair in [Definition 13](#def-antiderivative), because the FTC will show \\F\\ is exactly an antiderivative of \\f\\.
>
> Let \\T\\ be a [random variable](https://morrison-lab.github.io/pds/random-variables.html#def-random-variable) with the [exponential distribution](https://morrison-lab.github.io/pds/random-variables.html#def-exponential) with rate \\{\lambda}\> 0\\. Its [probability density function (PDF)](https://morrison-lab.github.io/pds/random-variables.html#def-pdf) is ([Kleinbaum and Klein 2012, sec. II](#ref-kleinbaum2012survival), p. 295, “Survival and Hazard Functions for Selected Distributions”):
>
> \\f(t) = {\lambda}\text{e}^{-{\lambda}t}, \quad t \ge 0\\
>
> **FTC Part 2** gives the [cumulative distribution function (CDF)](https://morrison-lab.github.io/pds/random-variables.html#def-cdf), \\F(t) = P(T \le t)\\, from the PDF. Apply the \\\text{e}^{cx}\\ rule from [Theorem 11](#thm-integral-rules) with \\c = -{\lambda}\\ to antidifferentiate the integrand:
>
> \\ \begin{aligned} F(t) &= \int_0^t {\lambda}\text{e}^{-{\lambda}u}\\du && \text{(the CDF integrates the PDF)} \\ &= \mathopen{}\left\[{\lambda}\cdot\frac{1}{-{\lambda}}\text{e}^{-{\lambda}u}\right\]\mathclose{}\_{u=0}^{u=t} && \text{(FTC Part 2, with the } \text{e}^{cx} \text{ rule)} \\ &= \mathopen{}\left\[(-1)\text{e}^{-{\lambda}u}\right\]\mathclose{}\_{u=0}^{u=t} && \text{(} {\lambda}/ (-{\lambda}) = -1 \text{)} \\ &= \mathopen{}\left\[-\text{e}^{-{\lambda}u}\right\]\mathclose{}\_{u=0}^{u=t} && \text{(multiply by } -1 \text{)} \\ &= -\text{e}^{-{\lambda}t} - \mathopen{}\left(-\text{e}^{0}\right)\mathclose{} && \text{(evaluate at the limits)} \\ &= -\text{e}^{-{\lambda}t} - (-1) && \text{(} \text{e}^{0} = 1 \text{)} \\ &= 1 - \text{e}^{-{\lambda}t} && \text{(rearrange)} \end{aligned} \\
>
> **FTC Part 1** recovers the PDF from the CDF:
>
> \\ \begin{aligned} \frac{\partial}{\partial t} F(t) &= \frac{\partial}{\partial t}\mathopen{}\left(1 - \text{e}^{-{\lambda}t}\right)\mathclose{} && \text{(substitute } F \text{)} \\ &= \frac{\partial}{\partial t} 1 - \frac{\partial}{\partial t} \text{e}^{-{\lambda}t} && \text{(derivative of a difference)} \\ &= 0 - \frac{\partial}{\partial t} \text{e}^{-{\lambda}t} && \text{(constant rule)} \\ &= 0 - \text{e}^{-{\lambda}t} \cdot\frac{\partial}{\partial t}(-{\lambda}t) && \text{(chain rule, with inner function } -{\lambda}t \text{)} \\ &= 0 - \text{e}^{-{\lambda}t} \cdot(-{\lambda}) && \text{(constant multiple rule)} \\ &= {\lambda}\text{e}^{-{\lambda}t} && \text{(simplify)} \\ &= f(t) && \text{(definition of } f \text{)} \end{aligned} \\
>
> For a concrete instance: with \\{\lambda}= 1\\, the probability that \\T \le 2\\ is:
>
> \\ \begin{aligned} F(2) &= 1 - \text{e}^{-1 \cdot 2} \\ &= 1 - \text{e}^{-2} \\ &\approx 1 - 0.135 \\ &= 0.865 \end{aligned} \\
>
> See [Figure 6](#fig-exp-pdf-cdf).
>
> Show R code
>
> ``` downlit
> ggplot2::ggplot() +
>   ggplot2::geom_area(
>     data = data.frame(t = seq(0, t_focus, length.out = 300)),
>     ggplot2::aes(x = t, y = lambda * exp(-lambda * t)),
>     fill = "steelblue", alpha = 0.4
>   ) +
>   ggplot2::geom_function(
>     fun = \(t) lambda * exp(-lambda * t),
>     xlim = c(0, t_max), linewidth = 1
>   ) +
>   ggplot2::labs(x = "t", y = "f(t)") +
>   ggplot2::theme_minimal()
> ```
>
> [![](calculus_files/figure-html/exp-pdf-cdf-pdf-code-1.png)](calculus_files/figure-html/exp-pdf-cdf-pdf-code-1.png "Figure 6 (a): PDF with {\lambda}= 1; shaded area equals F(2) \approx 0.865.")
>
> \(a\) PDF with \\{\lambda}= 1\\; shaded area equals \\F(2) \approx 0.865\\.
>
> Show R code
>
> ``` downlit
> ggplot2::ggplot() +
>   ggplot2::geom_function(
>     fun = \(t) 1 - exp(-lambda * t),
>     xlim = c(0, t_max), linewidth = 1
>   ) +
>   ggplot2::geom_point(
>     ggplot2::aes(x = t_focus, y = F_at_focus),
>     size = 3, color = "steelblue"
>   ) +
>   ggplot2::geom_segment(
>     ggplot2::aes(x = t_focus, xend = t_focus, y = 0, yend = F_at_focus),
>     linetype = "dashed", color = "steelblue"
>   ) +
>   ggplot2::geom_segment(
>     ggplot2::aes(x = 0, xend = t_focus, y = F_at_focus, yend = F_at_focus),
>     linetype = "dashed", color = "steelblue"
>   ) +
>   ggplot2::labs(x = "t", y = "F(t)") +
>   ggplot2::theme_minimal()
> ```
>
> [![](calculus_files/figure-html/exp-pdf-cdf-cdf-code-1.png)](calculus_files/figure-html/exp-pdf-cdf-cdf-code-1.png "Figure 6 (b): CDF with {\lambda}= 1; point marks F(2) \approx 0.865.")
>
> \(b\) CDF with \\{\lambda}= 1\\; point marks \\F(2) \approx 0.865\\.
>
> Figure 6: Exponential distribution with \\{\lambda}= 1\\. Left: the PDF \\f(t) = {\lambda}\text{e}^{-{\lambda}t}\\; the shaded area under the curve from \\0\\ to \\2\\ equals \\F(2) \approx 0.865\\. Right: the CDF \\F(t) = 1 - \text{e}^{-{\lambda}t}\\; the dashed lines mark the value \\F(2)\\ computed via FTC Part 2.

> **NOTE:**
>
> **Exercise 41 (Improper Gaussian-kernel integral)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.39.
>
> Evaluate the improper integral:
>
> \\\int_0^\infty x\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{4}\right\\\mathclose{}\\dx\\

> **NOTE:**
>
> *Solution 41*. Let \\u = x^2/4\\. Then \\du = \frac{x}{2}\\dx\\, so \\x\\dx = 2\\du\\.
>
> Limits:
>
> - As \\x \to 0\\: \\u \to 0\\.
> - As \\x \to \infty\\: \\u \to \infty\\.
>
> Substitute:
>
> \\ \begin{aligned} \int_0^\infty x\operatorname{exp}\mathopen{}\left\\-\frac{x^2}{4}\right\\\mathclose{}\\dx &= 2\int_0^\infty e^{-u}\\du \\ &= 2\mathopen{}\left\[-e^{-u}\right\]\mathclose{}\_0^\infty \\ &= 2\mathopen{}\left(0 - (-1)\right)\mathclose{} \\ &= 2 \end{aligned} \\
>
> *Remark:* Integrals of this structure arise directly in calculating moments and normalization constants for Gaussian and Rayleigh probability distributions.

> **NOTE:**
>
> **Exercise 42 (Convolution of two uniform densities)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.41.
>
> Let \\f(x) = \mathbf{1}\_{\[0, 1\]}(x)\\ be the indicator of the unit interval:
>
> \\f(x) = \begin{cases} 1 & \text{if } x \in \[0, 1\] \\ 0 & \text{otherwise} \end{cases}\\
>
> Evaluate the convolution:
>
> \\(f \* f)(x) = \int\_{-\infty}^\infty f(t)f(x - t)\\dt\\
>
> for all \\x \in \mathbb{R}\\.

> **NOTE:**
>
> *Solution 42*. The integrand \\f(t)f(x - t)\\ equals \\1\\ when both \\t \in \[0, 1\]\\ and \\x - t \in \[0, 1\]\\, and equals \\0\\ otherwise.
>
> The condition \\0 \le x - t \le 1\\ rearranges to:
>
> \\x - 1 \le t \le x\\
>
> For this interval to overlap with \\t \in \[0, 1\]\\, we must have \\x \ge 0\\ and \\x - 1 \le 1\\, meaning \\0 \le x \le 2\\. Outside \\\[0, 2\]\\, \\(f \* f)(x) = 0\\.
>
> For \\x \in \[0, 2\]\\, we distinguish two cases:
>
> - **Case 1: \\0 \le x \le 1\\.** The overlapping bounds for \\t\\ are \\\[0, x\]\\:
>
>   \\ \begin{aligned} (f \* f)(x) &= \int_0^x 1\\dt \\ &= x \end{aligned} \\
>
> - **Case 2: \\1 \le x \le 2\\.** The overlapping bounds for \\t\\ are \\\[x - 1, 1\]\\:
>
>   \\ \begin{aligned} (f \* f)(x) &= \int\_{x-1}^1 1\\dt \\ &= 1 - (x - 1) \\ &= 2 - x \end{aligned} \\
>
> Combining the cases:
>
> \\(f \* f)(x) = \begin{cases} x & \text{if } 0 \le x \le 1 \\ 2 - x & \text{if } 1 \< x \le 2 \\ 0 & \text{otherwise} \end{cases}\\
>
> *Remark:* In probability theory, if \\X_1, X_2 \sim \text{Uniform}(0, 1)\\ independently, the probability density function of their sum \\S = X_1 + X_2\\ is the convolution of their individual densities, producing this symmetric triangular distribution on \\\[0, 2\]\\.

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on evaluating definite integrals:
>
> - [Definite Integrals](https://www.youtube.com/watch?v=lhtoBu51N7k&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Definite Integral Exercise](https://www.youtube.com/watch?v=kSZWX3j2u2U&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

## 3 Double Integrals

The **Fubini–Tonelli theorem** states conditions under which the order of integration in a double integral can be exchanged. We state two versions: the Riemann version ([Theorem 16](#thm-fubini)) is what applied courses usually use for double integrals of continuous functions on simple regions; the [\\\sigma\\-finite](measures.llms.md#def-sigma-finite) measure-theoretic version ([Theorem 17](#thm-fubini-tonelli)) is included to make the [joint-distribution form](https://morrison-lab.github.io/pds/expectation.html#cor-fubini-joint) corollary in *Probability for Data Science* follow from a stated theorem rather than from an aside.

> **NOTE:**
>
> **Definition 28 (Double integral)** Let \\f\\ be a bounded function on a closed, bounded plane region \\R \subseteq \mathbb{R}^2\\. Cover \\R\\ with a grid of rectangles, keep the \\n\\ rectangles that lie entirely inside \\R\\, with areas \\\Delta A_1, \ldots, \Delta A_n\\, and choose a point \\(x_i, y_i)\\ in the \\i\\-th rectangle. The **double integral** of \\f\\ over \\R\\ is
>
> \\\iint_R f(x, y)\\dA \stackrel{\text{def}}{=}\lim\_{\mathopen{}\left\lVert\Delta\right\rVert\mathclose{} \to 0} \sum\_{i=1}^nf(x_i, y_i)\\\Delta A_i,\\
>
> where \\\mathopen{}\left\lVert\Delta\right\rVert\mathclose{}\\ is the length of the longest diagonal among the \\n\\ rectangles, when that limit exists and has the same value for every choice of grids and of the points \\(x_i, y_i)\\. The symbol \\dA\\ stands for an element of area.
>
> ([Larson and Edwards 2018, sec. 14.2](#ref-larsonCalc11e))

> **NOTE:**
>
> **Example 37 (The double integral of \\1\\ is an area)** Let \\f(x, y) = 1\\ on the rectangle \\R = \[0, 2\] \times \[0, 3\]\\. Every sum in [Definition 28](#def-double-integral) adds up the areas of rectangles inside \\R\\, and those sums approach the area of \\R\\ as the grid gets finer, so \\\iint_R 1\\dA = 2 \cdot 3 = 6\\.

> **NOTE:**
>
> **Definition 29 (Iterated integral)** An **iterated integral** is an integral of an integral:
>
> \\ \int_a^b \int\_{g_1(x)}^{g_2(x)} f(x, y)\\dy\\dx \stackrel{\text{def}}{=}\int_a^b \mathopen{}\left(\int\_{g_1(x)}^{g_2(x)} f(x, y)\\dy\right)\mathclose{}\\dx \\
>
> That is, integrate over the inner variable (\\y\\) first, holding the outer variable (\\x\\) fixed, and then integrate the result over the outer variable. The inner limits \\g_1(x)\\ and \\g_2(x)\\ may depend on the outer variable, or be constants \\c\\ and \\d\\, as in \\\int_a^b \int_c^d f(x, y)\\dy\\dx\\. Iterated integrals in the other order, \\\int \int \cdots \\dx\\dy\\, are defined the same way with the roles of \\x\\ and \\y\\ swapped.

> **NOTE:**
>
> **Example 38 (An iterated integral)** Integrating over \\y\\ first, then \\x\\:
>
> \\ \begin{aligned} \int_0^1 \int_0^2 x y\\dy\\dx &= \int_0^1 \mathopen{}\left(\int_0^2 x y\\dy\right)\mathclose{}\\dx && \text{(definition of the iterated integral)} \\ &= \int_0^1 x \mathopen{}\left(\int_0^2 y\\dy\right)\mathclose{}\\dx && \text{(} x \text{ is constant in } y \text{)} \\ &= \int_0^1 x \mathopen{}\left\[\frac{y^2}{2}\right\]\mathclose{}\_{y=0}^{y=2}\\dx && \text{(antiderivative of } y \text{)} \\ &= \int_0^1 2x\\dx && \text{(evaluate at the limits)} \\ &= \mathopen{}\left\[x^2\right\]\mathclose{}\_{x=0}^{x=1} && \text{(antiderivative of } 2x \text{)} \\ &= 1 && \text{(evaluate at the limits)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 16 (Fubini’s theorem (Riemann version))** Let \\f\\ be **continuous** on a plane region \\R \subseteq \mathbb{R}^2\\.
>
> 1.  **Vertically simple region.** If \\R\\ is defined by \\a \le x \le b\\ and \\g_1(x) \le y \le g_2(x)\\, where \\g_1\\ and \\g_2\\ are continuous on \\\[a, b\]\\, then
>
>     \\ \begin{aligned} \iint_R f(x, y)\\dA &= \int_a^b \int\_{g_1(x)}^{g_2(x)} f(x, y)\\dy\\dx. \end{aligned} \\
>
> 2.  **Horizontally simple region.** If \\R\\ is defined by \\c \le y \le d\\ and \\h_1(y) \le x \le h_2(y)\\, where \\h_1\\ and \\h_2\\ are continuous on \\\[c, d\]\\, then
>
>     \\ \begin{aligned} \iint_R f(x, y)\\dA &= \int_c^d \int\_{h_1(y)}^{h_2(y)} f(x, y)\\dx\\dy. \end{aligned} \\
>
> When \\R\\ can be described both ways, the two iterated integrals are equal — so the order of integration can be exchanged.
>
> ([Larson and Edwards 2018](#ref-larsonCalc11e), Theorem 14.2, p. 982)

> **NOTE:**
>
> **Example 39 (Changing the order of integration for a non-rectangular region)** Adapted from ([Larson and Edwards 2018, sec. 14.2](#ref-larsonCalc11e), Example 4, pp. 984–985).
>
> Let \\X\\ and \\Y\\ be [independent](https://morrison-lab.github.io/pds/independence.html#def-indpt) [\\\operatorname{Uniform}(0, 1)\\](https://morrison-lab.github.io/pds/random-variables.html#def-uniform) [random variables](https://morrison-lab.github.io/pds/random-variables.html#def-random-variable), with [joint density](https://morrison-lab.github.io/pds/random-variables.html#def-pdf) \\f(x, y) = 1\\ on the unit square \\\[0, 1\]^2\\. Define the function \\g(x, y) = \text{e}^{-x^2}\\\mathbb{1}\mathopen{}\left(y \le x\right)\mathclose{}\\, where \\e\\ is [Euler’s number](algebra.llms.md#def-euler-number), and compute its [expectation](https://morrison-lab.github.io/pds/expectation.html#def-expectation) \\\operatorname{E}\mathopen{}\left\[g(X, Y)\right\]\mathclose{}\\.
>
> Because the joint density equals \\1\\ on \\\[0, 1\]^2\\, this expectation is the double integral of \\g\\ over the unit square:
>
> \\\operatorname{E}\mathopen{}\left\[g(X, Y)\right\]\mathclose{} = \iint\_{\[0, 1\]^2} g(x, y)\\dA.\\
>
> The [indicator](notation.llms.md#def-indicator-function) factor \\\mathbb{1}\mathopen{}\left(y \le x\right)\mathclose{}\\ equals \\1\\ on the triangular region where \\y \le x\\ and \\0\\ elsewhere, so only that region, namely \\D = \\(x, y) : x \in \[0, 1\],\\ y \in \[0, x\]\\\\ ([Figure 7](#fig-fubini-nonrect-region)), contributes, and there \\g(x, y) = \text{e}^{-x^2}\\:
>
> \\\operatorname{E}\mathopen{}\left\[g(X, Y)\right\]\mathclose{} = \iint_D \text{e}^{-x^2}\\dA.\\
>
> Show R code
>
> ``` downlit
> region <- data.frame(x = c(0, 1, 1), y = c(0, 0, 1))
> ggplot2::ggplot(region, ggplot2::aes(x = x, y = y)) +
>   ggplot2::geom_polygon(
>     fill = "steelblue", alpha = 0.4, color = "black", linewidth = 0.7
>   ) +
>   ggplot2::annotate(
>     "text", x = 0.65, y = 0.28, label = "D", size = 8, fontface = "italic"
>   ) +
>   ggplot2::annotate(
>     "text", x = 0.36, y = 0.52, label = "y == x",
>     parse = TRUE, angle = 45
>   ) +
>   ggplot2::annotate(
>     "text", x = 1.08, y = 0.5, label = "x == 1",
>     parse = TRUE, angle = 90, hjust = 0.5
>   ) +
>   ggplot2::annotate(
>     "text", x = 0.5, y = -0.1, label = "y == 0", parse = TRUE
>   ) +
>   ggplot2::scale_x_continuous(breaks = c(0, 0.5, 1), limits = c(-0.1, 1.3)) +
>   ggplot2::scale_y_continuous(breaks = c(0, 0.5, 1), limits = c(-0.2, 1.2)) +
>   ggplot2::coord_equal() +
>   ggplot2::labs(x = "x", y = "y") +
>   ggplot2::theme_minimal()
> ```
>
> [![](calculus_files/figure-html/unnamed-chunk-5-1.png)](calculus_files/figure-html/unnamed-chunk-5-1.png "Figure 7: Triangular integration region D = \{(x, y) : x \in [0, 1],\; y \in [0, x]\}, bounded below by y = 0, above-left by y = x, and on the right by x = 1.")
>
> Figure 7: Triangular integration region \\D = \\(x, y) : x \in \[0, 1\],\\ y \in \[0, x\]\\\\, bounded below by \\y = 0\\, above-left by \\y = x\\, and on the right by \\x = 1\\.
>
> **Order \\dx\\dy\\ is intractable.** Re-describing \\D\\ as \\D = \\(x, y) : y \in \[0, 1\],\\ x \in \[y, 1\]\\\\, the inner integral is
>
> \\\int_y^1 \text{e}^{-x^2}\\dx,\\
>
> which cannot be computed with FTC Part 2: no antiderivative of \\\text{e}^{-x^2}\\ can be written as a finite formula built from powers, exponentials, logarithms, and trigonometric functions (an **elementary** antiderivative).
>
> **Order \\dy\\dx\\ works.** Applying [Theorem 16](#thm-fubini) Part 1 (\\\text{e}^{-x^2}\\ is continuous and \\D\\ is the vertically simple region \\x \in \[0, 1\]\\, \\y \in \[0, x\]\\):
>
> \\ \begin{aligned} \iint_D \text{e}^{-x^2}\\dA &= \int_0^1\\\int_0^x \text{e}^{-x^2}\\dy\\dx && \text{(Fubini, vertically simple region)} \\&= \int_0^1 \text{e}^{-x^2}\mathopen{}\left(\int_0^x dy\right)\mathclose{}\\dx && \text{(} \text{e}^{-x^2} \text{ is constant in } y \text{)} \\&= \int_0^1 x\\\text{e}^{-x^2}\\dx && \text{(} \textstyle\int_0^x dy = x \text{)} \end{aligned} \\
>
> To antidifferentiate \\x\\\text{e}^{-x^2}\\, let \\u = x^2\\ be the inner function. By the chain rule ([Theorem 10](#thm-chain-rule)), with \\\frac{d u}{d x} = 2x\\,
>
> \\ \begin{aligned} \frac{d }{d x}\mathopen{}\left(-\frac{1}{2}\\\text{e}^{-u}\right)\mathclose{} &= -\frac{1}{2}\\\text{e}^{-u} \cdot(-1) \cdot\frac{d u}{d x} && \text{(chain rule)} \\&= -\frac{1}{2}\\\text{e}^{-x^2} \cdot(-1) \cdot 2x && \text{(substitute } u = x^2 \text{ and } du/dx = 2x \text{)} \\&= x\\\text{e}^{-x^2} && \text{(multiply)} \end{aligned} \\
>
> so \\-\frac{1}{2}\\\text{e}^{-x^2}\\ is an antiderivative of \\x\\\text{e}^{-x^2}\\, and
>
> \\ \begin{aligned} \int_0^1 x\\\text{e}^{-x^2}\\dx &= \mathopen{}\left\[-\frac{1}{2}\\\text{e}^{-x^2}\right\]\mathclose{}\_0^1 && \text{(FTC Part 2)} \\&= -\frac{1}{2}\mathopen{}\left(\text{e}^{-1} - \text{e}^{0}\right)\mathclose{} && \text{(evaluate at the limits)} \\&= -\frac{1}{2}\mathopen{}\left(\text{e}^{-1} - 1\right)\mathclose{} && \text{(} \text{e}^{0} = 1 \text{)} \\&= \frac{1 - \text{e}^{-1}}{2} && \text{(distribute } -\tfrac{1}{2} \text{)} \\&= \frac{e - 1}{2e} && \text{(multiply numerator and denominator by } e \text{)} \\&\approx 0.316 \end{aligned} \\
>
> The solid whose volume equals this integral is shown in [Figure 8](#fig-fubini-nonrect).
>
> Show R code
>
> ``` downlit
> n_grid <- 51
> x_seq <- seq(0, 1, length.out = n_grid)
> y_seq <- seq(0, 1, length.out = n_grid)
>
> z_mat <- outer(x_seq, y_seq, function(x, y) {
>   z <- exp(-x^2)
>   z[y > x] <- NA
>   z
> })
>
> plotly::plot_ly(x = ~x_seq, y = ~y_seq, z = ~t(z_mat)) |>
>   plotly::add_surface(showscale = FALSE) |>
>   plotly::layout(scene = list(
>     xaxis = list(title = "x"),
>     yaxis = list(title = "y"),
>     zaxis = list(title = "z = exp(-x^2)"),
>     camera = list(eye = list(x = 1.6, y = -1.6, z = 0.8))
>   ))
> ```
>
> Figure 8: Surface \\z = e^{-x^2}\\ over the region \\D = \\(x, y) : x \in \[0, 1\],\\ y \in \[0, x\]\\\\. The surface depends only on \\x\\ (constant in \\y\\), so for each \\x\\ the inner integral over \\y \in \[0, x\]\\ contributes \\x \cdot e^{-x^2}\\.

> **NOTE:**
>
> **Exercise 43 (Double integral over a triangular region)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.50.
>
> Evaluate the integral:
>
> \\\int_0^1 \int_0^x xy\\dy\\dx\\
>
> and confirm the result by reversing the order of integration.

> **NOTE:**
>
> *Solution 43*. **1. Given order (\\y\\ then \\x\\):**
>
> \\ \begin{aligned} \int_0^x xy\\dy &= x\mathopen{}\left\[\frac{y^2}{2}\right\]\mathclose{}\_0^x \\ &= \frac{x^3}{2} \end{aligned} \\
>
> \\ \begin{aligned} \int_0^1 \frac{x^3}{2}\\dx &= \mathopen{}\left\[\frac{x^4}{8}\right\]\mathclose{}\_0^1 \\ &= \frac{1}{8} \end{aligned} \\
>
> **2. Reversed order (\\x\\ then \\y\\):** The triangular region \\T = \\(x, y) : 0 \le x \le 1, 0 \le y \le x\\\\ is equivalently described by \\T = \\(x, y) : 0 \le y \le 1, y \le x \le 1\\\\:
>
> \\ \begin{aligned} \int_0^1 \int_y^1 xy\\dx\\dy &= \int_0^1 y\mathopen{}\left\[\frac{x^2}{2}\right\]\mathclose{}\_{x=y}^1\\dy \\ &= \int_0^1 \frac{y(1 - y^2)}{2}\\dy \end{aligned} \\
>
> \\ \begin{aligned} \int_0^1 \mathopen{}\left(\frac{y}{2} - \frac{y^3}{2}\right)\mathclose{}\\dy &= \mathopen{}\left\[\frac{y^2}{4} - \frac{y^4}{8}\right\]\mathclose{}\_0^1 \\ &= \frac{1}{4} - \frac{1}{8} \\ &= \frac{1}{8} \end{aligned} \\
>
> Both orders yield \\1/8\\.

> **NOTE:**
>
> **Exercise 44 (Switching order of integration on a non-rectangular region)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.51.
>
> Express the integral:
>
> \\\int_0^1 \int_0^x y e^{-xy}\\dy\\dx\\
>
> by reversing the order of integration.

> **NOTE:**
>
> *Solution 44*. In the given order, the inner integral \\\int_0^x y e^{-xy}\\dy\\ requires integration by parts with respect to \\y\\.
>
> Switching the order over the triangular domain \\\\(x, y) : 0 \le y \le 1, y \le x \le 1\\\\:
>
> \\\int_0^1 \int_y^1 y e^{-xy}\\dx\\dy\\
>
> Now the inner integral has the factor \\y\\ in place for direct integration with respect to \\x\\:
>
> \\ \begin{aligned} \int_y^1 y e^{-xy}\\dx &= \mathopen{}\left\[-e^{-xy}\right\]\mathclose{}\_{x=y}^1 \\ &= e^{-y^2} - e^{-y} \end{aligned} \\
>
> The double integral becomes:
>
> \\ \begin{aligned} \int_0^1 (e^{-y^2} - e^{-y})\\dy &= \int_0^1 e^{-y^2}\\dy - \mathopen{}\left\[-e^{-y}\right\]\mathclose{}\_0^1 \\ &= \int_0^1 e^{-y^2}\\dy - (1 - e^{-1}) \end{aligned} \\
>
> The term \\\int_0^1 e^{-y^2}\\dy\\ has no elementary antiderivative; it can be written using the error function \\\operatorname{erf}(z) = \frac{2}{\sqrt{\pi}}\int_0^z e^{-t^2}\\dt\\ as \\\frac{\sqrt{\pi}}{2}\operatorname{erf}(1) \approx 0.7468\\. The overall value is:
>
> \\\frac{\sqrt{\pi}}{2}\operatorname{erf}(1) + e^{-1} - 1 \approx 0.1147\\

> **NOTE:**
>
> **Example 40 (When conditions fail: a counterexample)** The conditions in [Theorem 16](#thm-fubini) are not merely technical — when they fail, iterated integrals can exist yet disagree.
>
> Let \\f(x, y) = \frac{x^2 - y^2}{(x^2 + y^2)^2}\\ on the unit square \\R = \[0, 1\] \times \[0, 1\]\\. Strictly, \\f\\ is defined on \\R \setminus \\(0, 0)\\\\: the denominator vanishes at the origin, so \\f\\ is undefined there (we return to this point in the condition check).
>
> **Integrating \\y\\ first, then \\x\\:**
>
> Holding \\x\\ fixed and differentiating in \\y\\ (by the quotient rule, [Theorem 9](#thm-quotient-rule)), \\\displaystyle\frac{d }{d y}\frac{y}{x^2 + y^2} = \frac{(x^2 + y^2) - y \cdot 2y}{(x^2 + y^2)^2} = \frac{x^2 - y^2}{(x^2 + y^2)^2}\\. (A derivative in one variable with the others held fixed is a [partial derivative](vector-calculus.llms.md#def-partial-derivative), defined on the vector calculus page.) The arctangent \\\arctan\\ is the inverse of the tangent function from trigonometry; all this example needs is that \\\frac{d }{d x}\arctan(x) = \frac{1}{1 + x^2}\\, \\\arctan(0) = 0\\, and \\\arctan(1) = \frac{\pi}{4}\\.
>
> \\ \begin{aligned} \int_0^1\\\int_0^1 f(x, y)\\dy\\dx &= \int_0^1 \mathopen{}\left\[\frac{y}{x^2 + y^2}\right\]\mathclose{}\_{y=0}^{y=1}\\dx \\&= \int_0^1 \frac{1}{x^2 + 1}\\dx \\&= \mathopen{}\left\[\arctan(x)\right\]\mathclose{}\_0^1 \\&= \frac{\pi}{4} \end{aligned} \\
>
> **Integrating \\x\\ first, then \\y\\:**
>
> Holding \\y\\ fixed and differentiating in \\x\\, \\\displaystyle\frac{d }{d x}\mathopen{}\left(-\frac{x}{x^2 + y^2}\right)\mathclose{} = -\frac{(x^2 + y^2) - x \cdot 2x}{(x^2 + y^2)^2} = \frac{x^2 - y^2}{(x^2 + y^2)^2}\\:
>
> \\ \begin{aligned} \int_0^1\\\int_0^1 f(x, y)\\dx\\dy &= \int_0^1 \mathopen{}\left\[-\frac{x}{x^2 + y^2}\right\]\mathclose{}\_{x=0}^{x=1}\\dy \\&= \int_0^1 \mathopen{}\left(-\frac{1}{1 + y^2}\right)\mathclose{}\\dy \\&= -\mathopen{}\left\[\arctan(y)\right\]\mathclose{}\_0^1 \\&= -\frac{\pi}{4} \end{aligned} \\
>
> **Conclusion:** \\\dfrac{\pi}{4} \neq -\dfrac{\pi}{4}\\, so the two iterated integrals are unequal. [Theorem 16](#thm-fubini) does not apply here.
>
> **Why [Theorem 16](#thm-fubini)’s condition fails:** [Theorem 16](#thm-fubini) requires \\f\\ to be **continuous** on \\R\\. The denominator \\(x^2 + y^2)^2\\ vanishes at the origin \\(0, 0) \in R\\, so \\f\\ is *not even defined* there — let alone continuous — and the theorem does not apply.
>
> ([Wikipedia contributors 2024](#ref-wp:fubini))
>
> [Figure 9](#fig-fubini-fail) shows the surface. The failure comes from the origin, where \\f\\ is undefined and unbounded.
>
> Show R code
>
> ``` downlit
> n_grid <- 81
> eps <- 0.04
> x_seq <- seq(eps, 1, length.out = n_grid)
> y_seq <- seq(eps, 1, length.out = n_grid)
>
> z_mat <- outer(x_seq, y_seq, function(x, y) (x^2 - y^2) / (x^2 + y^2)^2)
> z_clip <- 50
> z_mat[z_mat > z_clip] <- z_clip
> z_mat[z_mat < -z_clip] <- -z_clip
>
> plotly::plot_ly(x = ~x_seq, y = ~y_seq, z = ~t(z_mat)) |>
>   plotly::add_surface(
>     showscale = FALSE,
>     colorscale = list(
>       list(0, "#3b4cc0"),
>       list(0.5, "#dddddd"),
>       list(1, "#b40426")
>     )
>   ) |>
>   plotly::layout(scene = list(
>     xaxis = list(title = "x"),
>     yaxis = list(title = "y"),
>     zaxis = list(title = "f(x, y)", range = c(-z_clip, z_clip)),
>     camera = list(eye = list(x = 1.6, y = 1.6, z = 0.6))
>   ))
> ```
>
> Figure 9: Surface \\f(x, y) = (x^2 - y^2)/(x^2 + y^2)^2\\ on \\\[0, 1\]^2\\, sampled away from the origin and clipped to \\\[-50, 50\]\\ for display. Approaching the origin, the function grows without bound along the \\x\\-axis (red ridge, \\f \> 0\\ when \\\|x\| \> \|y\|\\) and falls without bound along the \\y\\-axis (blue ridge, \\f \< 0\\ when \\\|y\| \> \|x\|\\). Because \\f\\ is undefined at \\(0, 0)\\, \\f\\ is not continuous on \\R\\ and [Theorem 16](#thm-fubini) does not apply.

> **NOTE:**
>
> **Corollary 2 (Continuous functions on a rectangle (corollary of [Theorem 16](#thm-fubini)))** If \\f : \[a, b\] \times \[c, d\] \to \mathbb{R}\\ is **continuous** on the closed bounded rectangle \\\[a, b\] \times \[c, d\]\\, then:
>
> \\ \begin{aligned} \int_a^b \mathopen{}\left(\int_c^d f(x, y)\\dy\right)\mathclose{}\\dx &= \int_c^d \mathopen{}\left(\int_a^b f(x, y)\\dx\right)\mathclose{}\\dy\\ &= \iint\_{\[a,b\]\times\[c,d\]} f(x, y)\\dA. \end{aligned} \\
>
> ([Larson and Edwards 2018](#ref-larsonCalc11e), Theorem 14.2, p. 982)

> **NOTE:**
>
> *Proof*. A closed bounded rectangle \\\[a, b\] \times \[c, d\]\\ is both vertically simple (with \\g_1 \equiv c\\, \\g_2 \equiv d\\) and horizontally simple (with \\h_1 \equiv a\\, \\h_2 \equiv b\\). Applying both parts of [Theorem 16](#thm-fubini) to \\f\\ on this rectangle gives the two iterated forms shown.

> **NOTE:**
>
> **Example 41 (Evaluating a double integral on a rectangle)** Structure adapted from ([Larson and Edwards 2018, sec. 14.2](#ref-larsonCalc11e), Example 2, pp. 982–983); the integrand \\x^2 + y^2\\ is original, chosen so the integral equals \\\operatorname{E}\mathopen{}\left\[g(X, Y)\right\]\mathclose{}\\ for \\g(x, y) = x^2 + y^2\\.
>
> Let \\X\\ and \\Y\\ be [independent](https://morrison-lab.github.io/pds/independence.html#def-indpt) [\\\operatorname{Uniform}(0, 1)\\](https://morrison-lab.github.io/pds/random-variables.html#def-uniform) [random variables](https://morrison-lab.github.io/pds/random-variables.html#def-random-variable), with [joint density](https://morrison-lab.github.io/pds/random-variables.html#def-pdf) \\f(x, y) = 1\\ on the unit square \\R = \\(x, y) : x \in \[0, 1\],\\ y \in \[0, 1\]\\\\ ([Figure 10](#fig-fubini-rect-region)). Define the function \\g(x, y) = x^2 + y^2\\, and compute its [expectation](https://morrison-lab.github.io/pds/expectation.html#def-expectation) \\\operatorname{E}\mathopen{}\left\[g(X, Y)\right\]\mathclose{}\\.
>
> Because the joint density equals \\1\\ on \\R\\, this expectation is the double integral of \\g\\ over \\R\\:
>
> \\\operatorname{E}\mathopen{}\left\[g(X, Y)\right\]\mathclose{} = \iint_R \mathopen{}\left(x^2 + y^2\right)\mathclose{}\\dA.\\
>
> Show R code
>
> ``` downlit
> ggplot2::ggplot() +
>   ggplot2::annotate(
>     "rect", xmin = 0, xmax = 1, ymin = 0, ymax = 1,
>     fill = "steelblue", alpha = 0.4, color = "black", linewidth = 0.7
>   ) +
>   ggplot2::annotate(
>     "text", x = 0.5, y = 0.5, label = "R", size = 8, fontface = "italic"
>   ) +
>   ggplot2::scale_x_continuous(breaks = c(0, 1), limits = c(-0.15, 1.25)) +
>   ggplot2::scale_y_continuous(breaks = c(0, 1), limits = c(-0.15, 1.25)) +
>   ggplot2::coord_equal() +
>   ggplot2::labs(x = "x", y = "y") +
>   ggplot2::theme_minimal()
> ```
>
> [![](calculus_files/figure-html/unnamed-chunk-10-1.png)](calculus_files/figure-html/unnamed-chunk-10-1.png "Figure 10: Integration region R = [0, 1]^2, the unit square.")
>
> Figure 10: Integration region \\R = \[0, 1\]^2\\, the unit square.
>
> The integrand is continuous on \\R\\, so [Corollary 2](#cor-fubini-rect) applies and either order of integration yields the same value.
>
> **Integrating \\y\\ first, then \\x\\:**
>
> \\ \begin{aligned} \operatorname{E}\mathopen{}\left\[g(X, Y)\right\]\mathclose{} &= \int_0^1\\\int_0^1 \mathopen{}\left(x^2 + y^2\right)\mathclose{}\\dy\\dx \\&= \int_0^1 \mathopen{}\left\[x^2 y + \frac{y^3}{3}\right\]\mathclose{}\_0^1\\dx \\&= \int_0^1 \mathopen{}\left(x^2 + \frac{1}{3}\right)\mathclose{}\\dx \\&= \mathopen{}\left\[\frac{x^3}{3} + \frac{x}{3}\right\]\mathclose{}\_0^1 \\&= \frac{2}{3} \end{aligned} \\
>
> **Integrating \\x\\ first, then \\y\\** (verifying the order can be swapped):
>
> \\ \begin{aligned} \int_0^1\\\int_0^1 \mathopen{}\left(x^2 + y^2\right)\mathclose{}\\dx\\dy &= \int_0^1 \mathopen{}\left\[\frac{x^3}{3} + y^2 x\right\]\mathclose{}\_0^1\\dy \\&= \int_0^1 \mathopen{}\left(\frac{1}{3} + y^2\right)\mathclose{}\\dy \\&= \mathopen{}\left\[\frac{y}{3} + \frac{y^3}{3}\right\]\mathclose{}\_0^1 \\&= \frac{2}{3} \end{aligned} \\
>
> Both orders give \\\frac{2}{3}\\, as [Corollary 2](#cor-fubini-rect) guarantees.
>
> As a cross-check, linearity of expectation gives the same value: since \\\operatorname{E}\mathopen{}\left\[X^2\right\]\mathclose{} = \int_0^1 x^2\\dx = \frac{1}{3}\\ for \\X \sim \operatorname{Uniform}(0, 1)\\ (and likewise for \\Y\\),
>
> \\ \begin{aligned} \operatorname{E}\mathopen{}\left\[g(X, Y)\right\]\mathclose{} &= \operatorname{E}\mathopen{}\left\[X^2 + Y^2\right\]\mathclose{} \\ &= \operatorname{E}\mathopen{}\left\[X^2\right\]\mathclose{} + \operatorname{E}\mathopen{}\left\[Y^2\right\]\mathclose{} \\ &= \frac{1}{3} + \frac{1}{3} \\ &= \frac{2}{3}. \end{aligned} \\
>
> The solid whose volume equals this integral is shown in [Figure 11](#fig-fubini-rect).
>
> Show R code
>
> ``` downlit
> n_grid <- 41
> x_seq <- seq(0, 1, length.out = n_grid)
> y_seq <- seq(0, 1, length.out = n_grid)
> z_mat <- outer(x_seq, y_seq, function(x, y) x^2 + y^2)
>
> plotly::plot_ly(x = ~x_seq, y = ~y_seq, z = ~t(z_mat)) |>
>   plotly::add_surface(showscale = FALSE) |>
>   plotly::layout(scene = list(
>     xaxis = list(title = "x"),
>     yaxis = list(title = "y"),
>     zaxis = list(title = "z", range = c(0, 2))
>   ))
> ```
>
> Figure 11: Surface \\z = x^2 + y^2\\ over the unit square \\\[0, 1\]^2\\. The double integral \\\tfrac{2}{3}\\ is the volume between this surface and the \\xy\\-plane, and equals \\\operatorname{E}\mathopen{}\left\[X^2 + Y^2\right\]\mathclose{}\\.

> **NOTE:**
>
> **Exercise 45 (Double integral of a polynomial over a rectangle)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.47.
>
> Evaluate the double integral:
>
> \\\int_0^2 \int_0^3 5(x^2 y + xy^2 + 2)\\dy\\dx\\

> **NOTE:**
>
> *Solution 45*. Integrate with respect to \\y\\ first:
>
> \\\begin{aligned} \int_0^3 (x^2 y + xy^2 + 2)\\dy &= \mathopen{}\left\[\frac{x^2 y^2}{2} + \frac{x y^3}{3} + 2y\right\]\mathclose{}\_{y=0}^3 \\ &= \frac{9}{2}x^2 + 9x + 6 \end{aligned}\\
>
> Now integrate with respect to \\x\\:
>
> \\\begin{aligned} 5\int_0^2 \mathopen{}\left(\frac{9}{2}x^2 + 9x + 6\right)\mathclose{}\\dx &= 5\mathopen{}\left\[\frac{3}{2}x^3 + \frac{9}{2}x^2 + 6x\right\]\mathclose{}\_0^2 \\ &= 5\mathopen{}\left\[\frac{3}{2}(8) + \frac{9}{2}(4) + 6(2)\right\]\mathclose{} \\ &= 5\mathopen{}\left\[12 + 18 + 12\right\]\mathclose{} \\ &= 5(42) \\ &= 210 \end{aligned}\\
>
> *(Note: The source text carried an arithmetic slip in the inner coefficient resulting in \\190\\; the exact value is \\210\\.)*

> **NOTE:**
>
> **Exercise 46 (Choosing the order of integration)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.48.
>
> Evaluate the double integral:
>
> \\\int_0^6 \int_0^5 x e^{-xy}\\dy\\dx\\

> **NOTE:**
>
> *Solution 46*. Integrating with respect to \\x\\ first requires integration by parts. Integrating with respect to \\y\\ first is much simpler because the factor of \\x\\ is already present:
>
> \\ \begin{aligned} \int_0^5 x e^{-xy}\\dy &= \mathopen{}\left\[-e^{-xy}\right\]\mathclose{}\_{y=0}^5 \\ &= 1 - e^{-5x} \end{aligned} \\
>
> Now integrate with respect to \\x\\:
>
> \\\begin{aligned} \int_0^6 (1 - e^{-5x})\\dx &= \mathopen{}\left\[x + \frac{1}{5}e^{-5x}\right\]\mathclose{}\_0^6 \\ &= \mathopen{}\left(6 + \frac{1}{5}e^{-30}\right)\mathclose{} - \mathopen{}\left(0 + \frac{1}{5}\right)\mathclose{} \\ &= \frac{29}{5} + \frac{e^{-30}}{5} \end{aligned}\\

> **NOTE:**
>
> **Exercise 47 (Product of single integrals for separable functions)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.49.
>
> Let \\m, n \> 0\\. Evaluate:
>
> \\\int_0^1 \int_0^1 x^m y^n\\dy\\dx\\

> **NOTE:**
>
> *Solution 47*. Because the region of integration is a rectangle \\\[0, 1\] \times \[0, 1\]\\ and the integrand factors as \\g(x)h(y) = x^m \cdot y^n\\, the double integral splits into the product of two single-variable integrals:
>
> \\\int_0^1 \int_0^1 x^m y^n\\dy\\dx = \mathopen{}\left(\int_0^1 x^m\\dx\right)\mathclose{}\mathopen{}\left(\int_0^1 y^n\\dy\right)\mathclose{}\\
>
> Evaluating each factor:
>
> \\\int_0^1 x^m\\dx = \frac{1}{m + 1}, \qquad \int_0^1 y^n\\dy = \frac{1}{n + 1}\\
>
> Therefore:
>
> \\\int_0^1 \int_0^1 x^m y^n\\dy\\dx = \frac{1}{(m + 1)(n + 1)}\\
>
> *Remark:* When joint random variables \\X\\ and \\Y\\ are independent, their joint density factors as \\f\_{X, Y}(x, y) = f_X(x)f_Y(y)\\, and joint probabilities over product sets factor in exactly this way.

> **NOTE:**
>
> **Exercise 48 (Double integral with polynomial and radical terms)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.52.
>
> Evaluate the double integral:
>
> \\\int_0^1 \int_0^1 (x^2 + 2xy + y\sqrt{x})\\dy\\dx\\

> **NOTE:**
>
> *Solution 48*. Integrate with respect to \\y\\ first:
>
> \\ \begin{aligned} \int_0^1 (x^2 + 2xy + y\sqrt{x})\\dy &= \mathopen{}\left\[x^2 y + x y^2 + \frac{y^2 \sqrt{x}}{2}\right\]\mathclose{}\_{y=0}^1 \\ &= x^2 + x + \frac{1}{2}x^{1/2} \end{aligned} \\
>
> Now integrate with respect to \\x\\:
>
> \\\begin{aligned} \int_0^1 \mathopen{}\left(x^2 + x + \frac{1}{2}x^{1/2}\right)\mathclose{}\\dx &= \mathopen{}\left\[\frac{x^3}{3} + \frac{x^2}{2} + \frac{1}{2}\cdot\frac{x^{3/2}}{3/2}\right\]\mathclose{}\_0^1 \\ &= \mathopen{}\left\[\frac{x^3}{3} + \frac{x^2}{2} + \frac{1}{3}x^{3/2}\right\]\mathclose{}\_0^1 \\ &= \frac{1}{3} + \frac{1}{2} + \frac{1}{3} \\ &= \frac{2}{3} + \frac{1}{2} \\ &= \frac{7}{6} \end{aligned}\\

> **NOTE:**
>
> **Exercise 49 (Double integral of an affine function)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.53.
>
> Let \\a, b, c\\ be constants. Evaluate:
>
> \\\int_0^1 \int_0^1 (ax + by + c)\\dy\\dx\\

> **NOTE:**
>
> *Solution 49*. By linearity of the integral:
>
> \\\begin{aligned} \int_0^1 \int_0^1 (ax + by + c)\\dy\\dx &= a\int_0^1 x\\dx \int_0^1 1\\dy + b\int_0^1 1\\dx \int_0^1 y\\dy + c\int_0^1 1\\dx \int_0^1 1\\dy \\ &= a\mathopen{}\left(\frac{1}{2}\right)\mathclose{}(1) + b(1)\mathopen{}\left(\frac{1}{2}\right)\mathclose{} + c(1)(1) \\ &= \frac{a}{2} + \frac{b}{2} + c \end{aligned}\\

> **NOTE:**
>
> **Exercise 50 (Harmonic numbers via double integrals)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.54.
>
> Prove that for every positive integer \\n\\:
>
> \\ \begin{aligned} \int_0^1 \int_0^1 n(1 - xy)^{n-1}\\dx\\dy &= \sum\_{k=1}^{n} \frac{1}{k} \\ &= 1 + \frac{1}{2} + \dots + \frac{1}{n} \end{aligned} \\

> **NOTE:**
>
> *Solution 50*. **Method 1 (integration then geometric series):** Integrate with respect to \\x\\ first:
>
> \\ \begin{aligned} \int_0^1 n(1 - xy)^{n-1}\\dx &= \mathopen{}\left\[-\frac{(1 - xy)^n}{y}\right\]\mathclose{}\_{x=0}^1 \\ &= \frac{1 - (1 - y)^n}{y} \end{aligned} \\
>
> Use the finite geometric series identity \\\sum\_{k=0}^{n-1} r^k = \frac{1 - r^n}{1 - r}\\ with \\r = 1 - y\\:
>
> \\\frac{1 - (1 - y)^n}{y} = \sum\_{k=0}^{n-1} (1 - y)^k\\
>
> Now integrate each term with respect to \\y\\ from \\0\\ to \\1\\:
>
> \\ \begin{aligned} \int_0^1 (1 - y)^k\\dy &= \mathopen{}\left\[-\frac{(1 - y)^{k+1}}{k+1}\right\]\mathclose{}\_0^1 \\ &= \frac{1}{k+1} \end{aligned} \\
>
> Summing over \\k = 0, 1, \dots, n-1\\:
>
> \\ \begin{aligned} \sum\_{k=0}^{n-1} \frac{1}{k+1} &= \sum\_{j=1}^n\frac{1}{j} \\ &= 1 + \frac{1}{2} + \dots + \frac{1}{n} \end{aligned} \\
>
> **Method 2 (binomial expansion):** Expand \\(1 - xy)^{n-1} = \sum\_{k=0}^{n-1} \binom{n-1}{k}(-1)^k (xy)^k\\. Integrating over \\\[0, 1\]^2\\:
>
> \\\int_0^1 \int_0^1 (xy)^k\\dx\\dy = \mathopen{}\left(\frac{1}{k+1}\right)\mathclose{}^2\\
>
> Multiplying by \\n\\ and using the identity \\\frac{n}{k+1}\binom{n-1}{k} = \binom{n}{k+1}\\:
>
> \\ \begin{aligned} \int_0^1 \int_0^1 n(1 - xy)^{n-1}\\dx\\dy &= \sum\_{k=0}^{n-1} \binom{n}{k+1}\frac{(-1)^k}{k+1} \\ &= \sum\_{j=1}^n\frac{1}{j} \end{aligned} \\
>
> *Remark:* This integral identity connects multivariable integration with harmonic numbers \\H_n = \sum\_{k=1}^{n} \frac{1}{k} \approx \log n + \gamma\\, where \\\gamma \approx 0.5772\\ is the Euler-Mascheroni constant.

> **NOTE:**
>
> **Theorem 17 (Fubini–Tonelli theorem (measure-theoretic form))** Let \\(\Omega_1, \mathcal F_1, \mu_1)\\ and \\(\Omega_2, \mathcal F_2, \mu_2)\\ be [measure spaces](measures.llms.md#def-measure-space) with [\\\sigma\\-finite](measures.llms.md#def-sigma-finite) measures, and let \\f : \Omega_1 \times \Omega_2 \to \mathbb{R}\\ be [measurable](measures.llms.md#def-measurable-function) with respect to the [product \\\sigma\\-algebra](measures.llms.md#def-product-sigma-algebra) \\\mathcal F_1 \otimes \mathcal F_2\\. If either
>
> 1.  \\f \ge 0\\ [almost everywhere](measures.llms.md#def-almost-everywhere) with respect to the [product measure](measures.llms.md#def-product-measure) \\\mu_1 \otimes \mu_2\\ (**Tonelli’s theorem**), or
>
> 2.  \\\int\_{\Omega_1 \times \Omega_2} \mathopen{}\left\|f\right\|\mathclose{}\\d(\mu_1 \otimes \mu_2) \< \infty\\, that is, \\f\\ is [absolutely integrable](measures.llms.md#def-absolutely-integrable) (**Fubini’s theorem**),
>
> then both iterated [integrals](measures.llms.md#def-integral) exist, agree with the double integral, and equal each other:
>
> \\ \begin{aligned} \int\_{\Omega_1 \times \Omega_2} f\\d(\mu_1 \otimes \mu_2) &= \int\_{\Omega_1} \mathopen{}\left(\int\_{\Omega_2} f(\omega_1, \omega_2)\\d\mu_2(\omega_2)\right)\mathclose{}\\d\mu_1(\omega_1)\\ &= \int\_{\Omega_2} \mathopen{}\left(\int\_{\Omega_1} f(\omega_1, \omega_2)\\d\mu_1(\omega_1)\right)\mathclose{}\\d\mu_2(\omega_2). \end{aligned} \\
>
> ([Billingsley 1995](#ref-billingsley1995probability), Theorem 18.3; [Gut 2013](#ref-gut2013), Theorem 9.1, p. 65; [Fubini 1907](#ref-fubini1907); [Wikipedia contributors 2024](#ref-wp:fubini))

> **NOTE:**
>
> *Remark 3* (Fubini–Tonelli for probability measures). Applied courses rarely need the measure-theoretic generalization itself, but it is what justifies the [joint-distribution form](https://morrison-lab.github.io/pds/expectation.html#cor-fubini-joint) corollary in *Probability for Data Science*. A [probability measure](measures.llms.md#def-probability-measure) \\P\\ on \\\Omega\\ has \\P(\Omega) = 1 \< \infty\\, so it is [finite](measures.llms.md#def-sigma-finite), and hence \\\sigma\\-finite ([finite and \\\sigma\\-finite measures](measures.llms.md#exm-sigma-finite)); for probability measures, the \\\sigma\\-finiteness condition is automatic.
>
> The integrability conditions (nonnegativity or [absolute integrability](measures.llms.md#def-absolutely-integrable)) still need to be verified in each application. For example, [Lebesgue measure](measures.llms.md#def-lebesgue-measure) (ordinary length) on \\\[0, 1\]\\ is a probability measure, so the \\\sigma\\-finiteness condition holds for both factors \\\[0, 1\]\\, yet the two iterated integrals in [Example 40](#exm-fubini-fail) are \\\pi/4\\ and \\-\pi/4\\. So \\\sigma\\-finiteness alone does not make the iterated integrals agree.

> **NOTE:**
>
> **Example 42 (Positive application of [Theorem 17](#thm-fubini-tonelli))** Let \\X\\ and \\Y\\ be [independent](https://morrison-lab.github.io/pds/independence.html#def-indpt) [\\\operatorname{Exponential}(1)\\](https://morrison-lab.github.io/pds/random-variables.html#def-exponential) [random variables](https://morrison-lab.github.io/pds/random-variables.html#def-random-variable), with [joint density](https://morrison-lab.github.io/pds/random-variables.html#def-pdf) \\f(x, y) = e^{-(x+y)}\\ for \\x, y \ge 0\\.
>
> The probability \\P(X \le 1,\\ Y \le 1)\\ is the integral of \\f\\ over \\\[0, 1\]^2\\ with respect to Lebesgue measure (ordinary length) in each coordinate. Lebesgue measure on \\\[0, \infty)\\ is \\\sigma\\-finite, because \\\[0, \infty)\\ is the union of the intervals \\\[0, n\]\\, \\n \in \mathbb{N}\\, each of finite length \\n\\; so the \\\sigma\\-finiteness condition of [Theorem 17](#thm-fubini-tonelli) holds. Since \\f(x,y) = e^{-(x+y)} \ge 0\\, condition (a) (Tonelli’s theorem, nonnegativity) is also satisfied.
>
> By [Theorem 17](#thm-fubini-tonelli), both iterated integrals exist and agree. Integrating \\y\\ first, then \\x\\:
>
> \\ \begin{aligned} P(X \le 1,\\ Y \le 1) &= \int_0^1\\\int_0^1 e^{-(x+y)}\\dy\\dx \\&= \int_0^1\\\int_0^1 e^{-x} e^{-y}\\dy\\dx && \text{(exponential of a sum)} \\&= \int_0^1 e^{-x}\mathopen{}\left(\int_0^1 e^{-y}\\dy\right)\mathclose{}\\dx && \text{(} e^{-x} \text{ is constant in } y \text{)} \\&= \int_0^1 e^{-x}\mathopen{}\left\[-e^{-y}\right\]\mathclose{}\_{y=0}^{y=1}\\dx && \text{(antiderivative of } e^{-y} \text{)} \\&= \int_0^1 e^{-x}(1 - e^{-1})\\dx && \text{(evaluate at the limits)} \\&= (1 - e^{-1})\int_0^1 e^{-x}\\dx && \text{(} 1 - e^{-1} \text{ is constant in } x \text{)} \\&= (1 - e^{-1})\mathopen{}\left\[-e^{-x}\right\]\mathclose{}\_{x=0}^{x=1} && \text{(antiderivative of } e^{-x} \text{)} \\&= (1 - e^{-1})^2 && \text{(evaluate at the limits)} \end{aligned} \\
>
> Integrating \\x\\ first, then \\y\\:
>
> \\ \begin{aligned} P(X \le 1,\\ Y \le 1) &= \int_0^1\\\int_0^1 e^{-(x+y)}\\dx\\dy \\&= \int_0^1\\\int_0^1 e^{-y} e^{-x}\\dx\\dy && \text{(exponential of a sum)} \\&= \int_0^1 e^{-y}\mathopen{}\left(\int_0^1 e^{-x}\\dx\right)\mathclose{}\\dy && \text{(} e^{-y} \text{ is constant in } x \text{)} \\&= \int_0^1 e^{-y}\mathopen{}\left\[-e^{-x}\right\]\mathclose{}\_{x=0}^{x=1}\\dy && \text{(antiderivative of } e^{-x} \text{)} \\&= \int_0^1 e^{-y}(1 - e^{-1})\\dy && \text{(evaluate at the limits)} \\&= (1 - e^{-1})\int_0^1 e^{-y}\\dy && \text{(} 1 - e^{-1} \text{ is constant in } y \text{)} \\&= (1 - e^{-1})\mathopen{}\left\[-e^{-y}\right\]\mathclose{}\_{y=0}^{y=1} && \text{(antiderivative of } e^{-y} \text{)} \\&= (1 - e^{-1})^2 && \text{(evaluate at the limits)} \end{aligned} \\
>
> Both iterated integrals equal \\(1 - e^{-1})^2 \approx 0.400\\, as [Theorem 17](#thm-fubini-tonelli) guarantees when condition (a) holds.

> **NOTE:**
>
> **Example 43 (When neither Fubini–Tonelli condition is satisfied)** The same function \\f(x, y) = (x^2 - y^2)/(x^2 + y^2)^2\\ from [Example 40](#exm-fubini-fail) illustrates a case where neither condition of [Theorem 17](#thm-fubini-tonelli) is satisfied.
>
> **Why [Theorem 17](#thm-fubini-tonelli)’s conditions fail:** \\\iint_R \|f\|\\dA = \infty\\, which violates condition (b). Switching to polar coordinates \\(r, \theta)\\ near the origin, the integrand satisfies \\\|f(x, y)\| = \mathopen{}\left\|x^2 - y^2\right\|\mathclose{}/(x^2 + y^2)^2 = \mathopen{}\left\|\cos 2\theta\right\|\mathclose{}/r^2\\, so
>
> \\ \begin{aligned} \iint_R \|f\|\\dA &\ge \int_0^{\pi/2}\\\int_0^{\varepsilon} \frac{\mathopen{}\left\|\cos 2\theta\right\|\mathclose{}}{r^2}\\ r\\dr\\d\theta\\ &= \mathopen{}\left(\int_0^{\pi/2}\mathopen{}\left\|\cos 2\theta\right\|\mathclose{}\\d\theta\right)\mathclose{} \int_0^{\varepsilon} \frac{dr}{r}\\ &= +\infty, \end{aligned} \\
>
> since \\\int_0^{\varepsilon} dr/r\\ diverges. Therefore \\\iint_R \|f\|\\dA = \infty\\, and condition (b) of [Theorem 17](#thm-fubini-tonelli) is not satisfied. (Condition (a) also fails: \\f\\ takes both positive and negative values, so it is not nonnegative a.e.) The unequal iterated integrals from [Example 40](#exm-fubini-fail) are thus consistent with [Theorem 17](#thm-fubini-tonelli): the theorem simply does not apply.
>
> ([Wikipedia contributors 2024](#ref-wp:fubini))

## 4 Further reading

- Kaplan ([2022](#ref-mosaiccalc))
- Khuri ([2003](#ref-khuri2003advanced))
- Banner ([2007](#ref-calclifesaver))
- Larson and Edwards ([2018](#ref-larsonCalc11e))
- Miller ([2016](#ref-problifesavercalc)) The calculus review exercises and worked solutions across this page and in [Vector Calculus](vector-calculus.llms.md#def-partial-derivative) are adapted from this supplemental review chapter.
  - <http://www.youtube.com/watch?v=xYzQL0TUtBA>
  - <http://www.youtube.com/watch?v=Ps2SBo_WjoE>
- Grinberg ([2017](#ref-realanalysislifesaver)) (the rigorous foundations behind these results)
- [Essence of Calculus](https://www.youtube.com/playlist?list=PLZHQObOWTQDMsr9K-rj53DwVRMYO3t5Yr) is a 12-video YouTube playlist by Grant Sanderson (3Blue1Brown) that develops geometric and visual intuition for limits, derivatives, product and chain rules, implicit differentiation, integration, and Taylor series.

## References

Banner, Adrian D. 2007. *The Calculus Lifesaver : All the Tools You Need to Excel at Calculus*. A Princeton Lifesaver Study Guide. Princeton University Press. <https://press.princeton.edu/books/paperback/9780691130880/the-calculus-lifesaver>.

Billingsley, Patrick. 1995. *Probability and Measure*. 3rd ed. Wiley Series in Probability and Mathematical Statistics. Wiley.

Boyd, Stephen, and Lieven Vandenberghe. 2018. *Introduction to Applied Linear Algebra: Vectors, Matrices, and Least Squares*. Cambridge University Press. <https://doi.org/10.1017/9781108583664>.

Fubini, Guido. 1907. “Sugli Integrali Multipli.” *Rendiconti Della Reale Accademia Dei Lincei. Classe Di Scienze Fisiche, Matematiche e Naturali* 16: 608–14.

Grinberg, Raffi. 2017. *The Real Analysis Lifesaver: All the Tools You Need to Understand Proofs*. 1st ed. Princeton Lifesaver Study Guides. Princeton University Press. <https://press.princeton.edu/books/paperback/9780691172934/the-real-analysis-lifesaver>.

Gut, Allan. 2013. *Probability: A Graduate Course*. 2nd ed. Springer Texts in Statistics. Springer. <https://doi.org/10.1007/978-1-4614-4708-5>.

Kaplan, Daniel. 2022. *MOSAIC Calculus*. Www.mosaic-web.org. [www.mosaic-web.org](https://www.mosaic-web.org).

Khuri, André I. 2003. *Advanced Calculus with Applications in Statistics*. John Wiley & Sons. <https://doi.org/10.1002/0471394882>.

Kleinbaum, David G, and Mitchel Klein. 2012. *Survival Analysis: A Self-Learning Text*. 3rd ed. Springer. <https://doi.org/10.1007/978-1-4419-6646-9>.

Larson, Ron, and Bruce H. Edwards. 2018. *Calculus*. 11th ed. Cengage Learning. <https://www.cengage.com/c/calculus-11e-larson/>.

Miller, Steven J. 2016. *The Probability Lifesaver: Calculus Review Problems*. <https://web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/index.htm#:~:text=http%3A//web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/supplementalchap_calcreview.pdf>.

Rudin, Walter. 1976. *Principles of Mathematical Analysis*. 3rd ed. International Series in Pure and Applied Mathematics. McGraw-Hill.

Wikipedia contributors. 2024. *Fubini’s Theorem — Wikipedia, the Free Encyclopedia*. <https://en.wikipedia.org/wiki/Fubini%27s_theorem>.

Back to top
