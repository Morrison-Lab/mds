# Derivatives and Taylor Series

Code

Published

Last modified: 2026-10-10 18:58:14 (PDT)

## 1 Derivatives

### 1.1 Limits and derivatives

> **NOTE:**
>
> **Definition 1 (Limit of a function at a point)** Let \\f\\ be a [function](sets-functions.llms.md#def-function) defined at every point of an [open interval](sets-functions.llms.md#def-interval) around \\c\\, except possibly at \\c\\ itself, and let \\L\\ be a [real number](notation.llms.md#def-real-numbers). The **limit** of \\f(x)\\ as \\x\\ approaches \\c\\ is \\L\\, written \\\lim\_{x \to c} f(x) = L\\, if for every \\\varepsilon\> 0\\ there is a \\\delta\> 0\\ such that
>
> \\\mathopen{}\left\|f(x) - L\right\|\mathclose{} \< \varepsilon\quad \text{for every } x \text{ with } 0 \< \mathopen{}\left\|x - c\right\|\mathclose{} \< \delta.\\
>
> Here \\\mathopen{}\left\|\cdot\right\|\mathclose{}\\ is the [absolute value](algebra-basics.llms.md#def-absolute-value). When such a real number \\L\\ exists, the limit **exists**; otherwise, the limit does not exist. The value \\f(c)\\, if it is defined, plays no role.

> **NOTE:**
>
> **Example 1 (The limit of \\3x + 1\\ at \\2\\)** \\\lim\_{x \to 2} (3x + 1) = 7\\. Given \\\varepsilon\> 0\\, take \\\delta= \varepsilon/ 3\\. For every \\x\\ with \\0 \< \mathopen{}\left\|x - 2\right\|\mathclose{} \< \delta\\, using the [distributive law](algebra-sums.llms.md#def-distributive) in the second line,
>
> \\ \begin{aligned} \mathopen{}\left\|(3x + 1) - 7\right\|\mathclose{} &= \mathopen{}\left\|3x - 6\right\|\mathclose{} && \text{(subtract)} \\ &= \mathopen{}\left\|3(x - 2)\right\|\mathclose{} && \text{(distributive law)} \\ &= 3 \mathopen{}\left\|x - 2\right\|\mathclose{} && \text{(} \mathopen{}\left\|3y\right\|\mathclose{} = 3 \mathopen{}\left\|y\right\|\mathclose{} \text{, since } 3 \> 0 \text{)} \\ &\< 3 \cdot\frac{\varepsilon}{3} && \text{(} \mathopen{}\left\|x - 2\right\|\mathclose{} \< \delta= \varepsilon/ 3 \text{)} \\ &= \varepsilon && \text{(multiply)} \end{aligned} \\
>
> For example, with \\\varepsilon= 0.3\\ and \\\delta= 0.1\\, the point \\x = 2.05\\ satisfies \\0 \< \mathopen{}\left\|2.05 - 2\right\|\mathclose{} \< 0.1\\, and
>
> \\ \begin{aligned} \mathopen{}\left\|(3 \cdot 2.05 + 1) - 7\right\|\mathclose{} &= \mathopen{}\left\|7.15 - 7\right\|\mathclose{} \\ &= 0.15 \\ &\< 0.3. \end{aligned} \\

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
> the [slope](algebra-exponentials.llms.md#def-affine-function) of the line through the points \\(c, f(c))\\ and \\(c + h, f(c + h))\\.

> **NOTE:**
>
> **Example 3 (The difference quotient of \\x^2\\ at \\1\\)** For \\f(x) = x^2\\, \\c = 1\\, and \\h \ne 0\\,
>
> \\ \begin{aligned} \frac{f(1 + h) - f(1)}{h} &= \frac{(1 + h)^2 - 1}{h} && \text{(substitute into } f \text{)} \\ &= \frac{1 + 2h + h^2 - 1}{h} && \text{(expand } (1 + h)^2 \text{)} \\ &= \frac{2h + h^2}{h} && \text{(} 1 - 1 = 0 \text{)} \\ &= 2 + h, && \text{(divide by } h \ne 0 \text{)} \end{aligned} \\
>
> which tends to \\2\\ as \\h \to 0\\ ([Definition 1](#def-limit)). With \\h = 0.1\\ the difference quotient is \\2 + 0.1 = 2.1\\: the line through \\(1, 1)\\ and \\(1.1, 1.21)\\ has slope
>
> \\ \begin{aligned} \tfrac{1.21 - 1}{0.1} &= \tfrac{0.21}{0.1} \\ &= 2.1. \end{aligned} \\

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
> - \\g(x) = \sqrt\[3\]{x}\\ is not differentiable at \\c = 0\\: the difference quotient
>
>   \\ \begin{aligned} \tfrac{g(h) - g(0)}{h} &= \tfrac{\sqrt\[3\]{h}}{h} \\ &= \tfrac{1}{(\sqrt\[3\]{h})^2} \end{aligned} \\
>
>   grows without bound as \\h \to 0\\, so the limit is not finite.

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
> **Example 6 (One-sided derivatives of \\\mathopen{}\left\|x\right\|\mathclose{}\\ at \\0\\)** Let \\f(x) = \mathopen{}\left\|x\right\|\mathclose{}\\, the [absolute value](algebra-basics.llms.md#def-absolute-value), and \\c = 0\\.
>
> - For \\h \> 0\\, \\\mathopen{}\left\|h\right\|\mathclose{} = h\\, so
>
>   \\ \begin{aligned} \frac{f(0 + h) - f(0)}{h} &= \frac{h - 0}{h} \\ &= 1. \end{aligned} \\
>
>   The right-hand derivative of \\f\\ at \\0\\ is \\1\\.
>
> - For \\h \< 0\\, \\\mathopen{}\left\|h\right\|\mathclose{} = -h\\, so
>
>   \\ \begin{aligned} \frac{f(0 + h) - f(0)}{h} &= \frac{-h - 0}{h} \\ &= -1. \end{aligned} \\
>
>   The left-hand derivative of \\f\\ at \\0\\ is \\-1\\.
>
> For example, \\h = 0.5\\ gives \\\tfrac{0.5}{0.5} = 1\\, and \\h = -0.5\\ gives \\\tfrac{0.5}{-0.5} = -1\\. The one-sided derivatives differ, since \\1 \ne -1\\.

> **NOTE:**
>
> **Definition 7 (Second derivative)** Let \\f\\ be a real-valued function of one variable whose derivative \\f'\\ ([Definition 5](#def-derivative)) exists at every point of an [open interval](sets-functions.llms.md#def-interval) containing \\c\\. If \\f'\\ is differentiable ([Definition 4](#def-differentiable)) at \\c\\, its derivative there, written \\f''(c)\\ or \\\frac{d ^2 f}{d x^2}\\, is the **second derivative** of \\f\\ at \\c\\.

> **NOTE:**
>
> **Example 7 (The second derivative of \\x^3\\)** For \\f(x) = x^3\\, the power rule ([Theorem 3](#thm-deriv-polynomial)) gives \\f'(x) = 3x^2\\ at every \\x\\, and differentiating again, with the constant multiple rule ([Theorem 2](#thm-deriv-const-factor)), gives
>
> \\ \begin{aligned} f''(x) &= 3 \cdot 2x \\ &= 6x. \end{aligned} \\
>
> So \\f''(2) = 12\\, \\f''(0) = 0\\, and \\f''(-1) = -6\\.

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
> **Theorem 3 (Power rule)** For every real number \\q\\ and every \\x \> 0\\, the derivative of the [power](algebra-exponentials.llms.md#def-real-power) \\x^q\\ is:
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
> **1. Slope \\-1\\:** Solve
>
> \\ \begin{aligned} x^2 + 2x - 1 = -1 &\iff x^2 + 2x = 0 \\ &\iff x(x + 2) = 0. \end{aligned} \\
>
> The roots are \\x = 0\\ and \\x = -2\\. Evaluating \\f\\: \\f(0) = -1\\ and
>
> \\ \begin{aligned} f(-2) &= -\frac{8}{3} + 4 + 2 - 1 \\ &= \frac{7}{3}. \end{aligned} \\
>
> The points are \\(0, -1)\\ and \\(-2, 7/3)\\.
>
> **2. Slope \\2\\:** Solve
>
> \\ \begin{aligned} x^2 + 2x - 1 = 2 &\iff x^2 + 2x - 3 = 0 \\ &\iff (x + 3)(x - 1) = 0. \end{aligned} \\
>
> The roots are \\x = -3\\ and \\x = 1\\. Evaluating \\f\\:
>
> \\ \begin{aligned} f(-3) &= -9 + 9 + 3 - 1 \\ &= 2 \end{aligned} \\
>
> and
>
> \\ \begin{aligned} f(1) &= \frac{1}{3} + 1 - 1 - 1 \\ &= -\frac{2}{3}. \end{aligned} \\
>
> The points are \\(-3, 2)\\ and \\(1, -2/3)\\.
>
> **3. Slope \\0\\:** Solve \\x^2 + 2x - 1 = 0\\. By the quadratic formula:
>
> \\ \begin{aligned} x &= \frac{-2 \pm \sqrt{4 - 4(1)(-1)}}{2} \\ &= \frac{-2 \pm \sqrt{8}}{2} \\ &= -1 \pm \sqrt{2} \end{aligned} \\

> **NOTE:**
>
> **Theorem 4 (Derivative of natural logarithm)** For every \\x \> 0\\, the derivative of the [natural logarithm](algebra-exponentials.llms.md#def-natural-log) is:
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
> *Remark:* While one could apply the chain rule separately to each term, giving
>
> \\ \begin{aligned} \frac{4}{4x} - \frac{2}{2x} &= \frac{1}{x} - \frac{1}{x} \\ &= 0, \end{aligned} \\
>
> simplifying algebraically first is faster and prevents arithmetic errors.

> **NOTE:**
>
> **Theorem 5 (Derivative of exponential)** For every real \\x\\, the derivative of the [exponential function](algebra-exponentials.llms.md#def-exponential-function) is:
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
> **Definition 8 (Tangent line)** Let \\f\\ be differentiable at \\c\\ ([Definition 4](#def-differentiable)). The **tangent line** to the [graph](sets-functions.llms.md#def-graph) of \\f\\ at \\c\\ is the graph of the [affine function](algebra-exponentials.llms.md#def-affine-function)
>
> \\x \mapsto f(c) + f'(c)\\(x - c),\\
>
> the line through the point \\(c, f(c))\\ with [slope](algebra-exponentials.llms.md#def-affine-function) \\f'(c)\\. The slope \\f'(c)\\ is also called the **tangent slope** of \\f\\ at \\c\\.

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
> *Remark 1* (The “linear” approximation is affine). The linear approximation \\\hat{f}\_w\\ ([Definition 9](#def-linear-approximation)) is an [affine function](algebra-exponentials.llms.md#def-affine-function) of the step \\\varepsilon\\: its slope is \\\frac{d }{d w}f(w)\\ and its intercept is \\f(w)\\. It is [linear](algebra-exponentials.llms.md#def-linear-function) in \\\varepsilon\\ only when \\f(w) = 0\\. The name “linear approximation” uses “linear” in the looser sense of elementary algebra ([remark](algebra-exponentials.llms.md#rem-linear-function-terminology)). Boyd and Vandenberghe ([2018](#ref-boyd2018vmls)), section 2.2, treats the first-order Taylor approximation as an affine function for functions of several variables as well.

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
> - \\f(w) = w^3\\ has \\f'(w) = 3w^2\\, which is \\0\\ at \\w = 0\\, so \\0\\ is a flat point. Yet \\f(0) = 0\\ is neither the [minimum](algebra-basics.llms.md#def-minimum) nor the [maximum](algebra-basics.llms.md#def-maximum) of the values \\f\\ takes on any open interval around \\0\\: \\f(w) \< 0\\ for \\w \< 0\\ and \\f(w) \> 0\\ for \\w \> 0\\.
> - \\h(w) = w^2\\ has \\h'(1) = 2 \ne 0\\, so \\1\\ is not a flat point.

> **NOTE:**
>
> **Exercise 14 (Find the flat point, and check the approximation)** Let \\f(w) = w^2 - 4w + 7\\.
>
> 1.  Differentiate \\f\\.
> 2.  Find the flat point \\w\\ of \\f\\, and say whether \\f(w)\\ is the [minimum](algebra-basics.llms.md#def-minimum) or the [maximum](algebra-basics.llms.md#def-maximum) of the values of \\f\\.
> 3.  Evaluate the derivative at \\w = 1\\, use [Equation 1](#eq-linear-approx) to predict \\f(1.01)\\, and compare that prediction with the exact value.

> **NOTE:**
>
> *Solution 14*. **1.** Term by term:
>
> \\\frac{df}{dw} = 2w - 4\\
>
> **2.** Set it to zero: \\2w - 4 = 0\\ gives \\w = 2\\.
>
> \\ \begin{aligned} f(2) &= 4 - 8 + 7 \\ &= 3 \end{aligned} \\
>
> is the minimum of the values of \\f\\. Completing the square, \\f(w) = (w - 2)^2 + 3\\, since
>
> \\ \begin{aligned} (w - 2)^2 + 3 &= w^2 - 4w + 4 + 3 \\ &= w^2 - 4w + 7, \end{aligned} \\
>
> and \\(w - 2)^2 \ge 0\\, so \\f(w) \ge 3 = f(2)\\ for every \\w\\. Equivalently, the derivative is negative below \\w = 2\\ and positive above it, so the function falls into that point and rises out of it.
>
> **3.** At \\w = 1\\ the derivative is \\2(1) - 4 = -2\\, so \\f\\ is falling there. With \\\varepsilon= 0.01\\, [Equation 1](#eq-linear-approx) predicts a change of \\(0.01)(-2) = -0.02\\, from
>
> \\ \begin{aligned} f(1) &= 1 - 4 + 7 \\ &= 4 \end{aligned} \\
>
> to \\3.98\\. The exact value is
>
> \\ \begin{aligned} f(1.01) &= (1.01)^2 - 4(1.01) + 7 \\ &= 1.0201 - 4.04 + 7 \\ &= 3.9801 \end{aligned} \\
>
> a change of \\-0.0199\\. The prediction is off by \\0.0001\\, which is \\\varepsilon^2\\: the linear approximation drops everything of that order and smaller, so halving the step quarters the error. That trade is the whole bargain of [gradient descent](optimization.llms.md#def-gradient-descent), the step-by-step method of fitting models defined on the optimization page. We take a step in the direction the derivative recommends, and the recommendation is trustworthy only as far as the step is small.

> **NOTE:**
>
> **Definition 11 (Critical point)** Let \\f\\ be a function defined on an [open interval](sets-functions.llms.md#def-interval) containing \\c\\. The point \\c\\ is a **critical point** of \\f\\ if either \\f'(c) = 0\\ or \\f\\ is not differentiable at \\c\\ ([Definition 4](#def-differentiable)).

> **NOTE:**
>
> **Example 10 (Critical points that are and are not flat points)**  
>
> - \\g(w) = \mathopen{}\left\|w\right\|\mathclose{}\\ has no derivative at \\w = 0\\: its one-sided derivatives there are \\1\\ and \\-1\\ ([Example 6](#exm-one-sided-derivative)), so the difference quotient \\\tfrac{\mathopen{}\left\|h\right\|\mathclose{} - 0}{h}\\ has no limit as \\h \to 0\\ ([Definition 2](#def-one-sided-limit)). So \\0\\ is a critical point of \\g\\ but not a flat point.
>
> - \\f(w) = w^3\\ has
>
>   \\ \begin{aligned} f'(0) &= 3 \cdot 0^2 \\ &= 0, \end{aligned} \\
>
>   so \\0\\ is a flat point of \\f\\, and hence a critical point.
>
> - \\h(w) = w^2\\ is differentiable everywhere, with \\h'(w) = 2w\\, which is \\0\\ only at \\w = 0\\. So \\0\\ is the only critical point of \\h\\; for example, \\h'(1) = 2 \ne 0\\, so \\1\\ is not one.

> **NOTE:**
>
> **Theorem 11 (Every flat point is a critical point)** If \\c\\ is a flat point of \\f\\ ([Definition 10](#def-flat-point)), then \\c\\ is a critical point of \\f\\ ([Definition 11](#def-critical-point)).

> **NOTE:**
>
> *Proof*. A flat point \\c\\ has \\f\\ differentiable at \\c\\ and \\f'(c) = 0\\. The condition “\\f'(c) = 0\\” is the first alternative in [Definition 11](#def-critical-point), so \\c\\ is a critical point.

> **NOTE:**
>
> **Example 11 (The flat points of a cubic, and a critical point that is not flat)** For \\f(w) = w^3 - 3w\\, the derivative is \\f'(w) = 3w^2 - 3\\. The code differentiates \\f\\ with [`D()`](https://rdrr.io/r/stats/deriv.html) and evaluates \\f'\\ at several points. For \\g(w) = \mathopen{}\left\|w\right\|\mathclose{}\\, it computes the difference quotients at \\0\\ from both sides.
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
> The derivative is \\0\\ at 2 of the 5 points, namely \\w = -1\\ and \\w = 1\\. These are flat points of \\f\\, so by [Theorem 11](#thm-flat-point-critical) they are critical points. The difference quotients of \\g\\ at \\0\\ are -1 from the left and 1 from the right, so \\g\\ has no derivative at \\0\\. Thus \\0\\ is a critical point of \\g\\ ([Definition 11](#def-critical-point)), but not a flat point.

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
>
> - At \\x = 1/2\\:
>
>   \\ \begin{aligned} f''(1/2) &= 24(1/2) - 6 \\ &= 6 \\ &\> 0, \end{aligned} \\
>
>   so \\x = 1/2\\ is a strict local minimum.
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
> **Example 12 (Taylor series of the exponential function)** For \\f(x) = e^x\\ centered at \\x_0 = 0\\, every derivative is
>
> \\ \begin{aligned} f^{(k)}(0) &= e^0 \\ &= 1. \end{aligned} \\
>
> The degree-\\n\\ Maclaurin polynomial is:
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
> **Example 13 (Taylor series of the cosine function)** For \\f(x) = \cos x\\ centered at \\x_0 = 0\\, the derivatives follow a repeating cycle of length 4:
>
> \\\begin{aligned} f(0) &= \cos(0) \\ &= 1, \\ f'(0) &= -\sin(0) \\ &= 0, \\ f''(0) &= -\cos(0) \\ &= -1, \\ f'''(0) &= \sin(0) \\ &= 0, \end{aligned}\\
>
> and in general \\f^{(2k)}(0) = (-1)^k\\ and \\f^{(2k+1)}(0) = 0\\ for all \\k \ge 0\\. The Taylor series (Maclaurin series) converges everywhere to \\\cos x\\:
>
> \\ \begin{aligned} \cos x &= 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots \\ &= \sum\_{k=0}^\infty \frac{(-1)^k}{(2k)!}x^{2k} \end{aligned} \\

> **NOTE:**
>
> **Example 14 (Taylor series of the sine function)** For \\f(x) = \sin x\\ centered at \\x_0 = 0\\, the derivatives evaluate at \\0\\ to \\f^{(2k)}(0) = 0\\ and \\f^{(2k+1)}(0) = (-1)^k\\ for all \\k \ge 0\\. The Taylor series converges everywhere to \\\sin x\\:
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
> *Solution 21*. Since
>
> \\ \begin{aligned} f(0) &= e^0 \\ &= 1 \end{aligned} \\
>
> and
>
> \\ \begin{aligned} f'(0) &= e^0 \\ &= 1: \end{aligned} \\
>
> \\ \begin{aligned} P_1(x) &= f(0) + f'(0)x \\ &= 1 + x \end{aligned} \\
>
> The full Taylor series is
>
> \\ \begin{aligned} e^x &= \sum\_{n=0}^\infty \frac{x^n}{n!} \\ &= 1 + x + \frac{x^2}{2} + \frac{x^3}{6} + \dots. \end{aligned} \\

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

Back to top

## References

Boyd, Stephen, and Lieven Vandenberghe. 2018. *Introduction to Applied Linear Algebra: Vectors, Matrices, and Least Squares*. Cambridge University Press. <https://doi.org/10.1017/9781108583664>.

Larson, Ron, and Bruce H. Edwards. 2018. *Calculus*. 11th ed. Cengage Learning. <https://www.cengage.com/c/calculus-11e-larson/>.

Miller, Steven J. 2016. *The Probability Lifesaver: Calculus Review Problems*. <https://web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/index.htm#:~:text=http%3A//web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/supplementalchap_calcreview.pdf>.
