# Vector Calculus

Code

- [Show All Code](javascript:void(0))

- [Hide All Code](javascript:void(0))

- 

  ------------------------------------------------------------------------

- [View Source](javascript:void(0))

Published

Last modified: 2026-10-07 17:58:46 (PDT)

(adapted from Fieller ([2016](#ref-fieller2018basics)), [Section 7.2](https://www.taylorfrancis.com/chapters/mono/10.1201/9781315370200-7/vector-matrix-calculus-nick-fieller?context=ubx&refId=c310b723-786a-4f33-ae56-720a6cccd3a1))

This section covers [derivatives](calculus.llms.md#def-derivative) of functions of vectors and matrices. Its linear algebra prerequisites, such as vectors, matrices, transposes, dot products, and quadratic forms, are covered in [Linear Algebra](linear-algebra.llms.md).

Let \\\tilde{x}\\ and \\\tilde{\beta}\\ be column vectors of length \\p\\ (see [column vector](linear-algebra.llms.md#def-column-vector) and [dot product](linear-algebra.llms.md#def-dot-product)).

> **NOTE:**
>
> **Definition 1 (Partial derivative)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ and \\\tilde{x}= {(x_1, \ldots, x_p)}^{\top} \in \mathbb{R}^p\\. The **partial derivative** of \\f\\ with respect to \\x_j\\ at \\\tilde{x}\\ is
>
> \\ \frac{\partial}{\partial x_j} f(\tilde{x}) \stackrel{\text{def}}{=} \lim\_{h \to 0} \frac{f(x_1, \ldots, x_j + h, \ldots, x_p) - f(x_1, \ldots, x_p)}{h}, \\
>
> when this [limit](calculus.llms.md#def-limit) exists. It is the [derivative](calculus.llms.md#def-derivative) at \\x_j\\ of the one-variable function \\t \mapsto f(x_1, \ldots, t, \ldots, x_p)\\, which varies the \\j\\th coordinate and holds the other coordinates fixed.

> **NOTE:**
>
> **Example 1 (Partial derivatives of \\x_1^2 x_2 + 3 x_2\\)** Let \\f(x_1, x_2) = x_1^2 x_2 + 3 x_2\\. At \\\tilde{x}= {(1, 2)}^{\top}\\, \\f(1, 2) = 1 \cdot 2 + 6 = 8\\, and for \\h \ne 0\\
>
> \\ \begin{aligned} \frac{f(1 + h, 2) - f(1, 2)}{h} &= \frac{(1 + h)^2 \cdot 2 + 6 - 8}{h} && \text{(substitute into } f \text{)} \\ &= \frac{(1 + h)^2 \cdot 2 - 2}{h} && \text{(} 6 - 8 = -2 \text{)} \\ &= \frac{(1 + 2h + h^2) \cdot 2 - 2}{h} && \text{(expand } (1 + h)^2 \text{)} \\ &= \frac{2 + 4h + 2h^2 - 2}{h} && \text{(distributive law)} \\ &= \frac{4h + 2h^2 + 2 - 2}{h} && \text{(reorder the terms)} \\ &= \frac{4h + 2h^2}{h} && \text{(} 2 - 2 = 0 \text{)} \\ &= 4 + 2h, && \text{(divide by } h \ne 0 \text{)} \end{aligned} \\
>
> which tends to \\4\\ as \\h \to 0\\, so \\\frac{\partial}{\partial x_1} f(1, 2) = 4\\. Holding \\x_2\\ fixed and differentiating in \\x_1\\ gives the same answer: \\\frac{\partial}{\partial x_1} f(\tilde{x}) = 2 x_1 x_2\\, which is \\2 \cdot 1 \cdot 2 = 4\\ at \\{(1, 2)}^{\top}\\. Holding \\x_1\\ fixed instead gives \\\frac{\partial}{\partial x_2} f(\tilde{x}) = x_1^2 + 3\\, which is \\1 + 3 = 4\\ at \\{(1, 2)}^{\top}\\.

> **NOTE:**
>
> **Exercise 1 (First-order partial derivatives)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.42.
>
> Let \\f(x, y) = x^2 y + e^x + \sin(xy)\\. Find \\\frac{\partial f}{\partial x}\\ and \\\frac{\partial f}{\partial y}\\.

> **NOTE:**
>
> *Solution 1*. To compute \\\frac{\partial f}{\partial x}\\, treat \\y\\ as a constant:
>
> \\\frac{\partial f}{\partial x} = 2xy + e^x + y\cos(xy)\\
>
> To compute \\\frac{\partial f}{\partial y}\\, treat \\x\\ as a constant:
>
> \\\frac{\partial f}{\partial y} = x^2 + 0 + x\cos(xy) = x^2 + x\cos(xy)\\

> **NOTE:**
>
> **Exercise 2 (Partial derivatives of the normal density with respect to parameters)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.43.
>
> Let
>
> \\f(x; \mu, \sigma) = \frac{1}{\sqrt{2\pi\sigma^2}}\operatorname{exp}\mathopen{}\left\\-\frac{(x - \mu)^2}{2\sigma^2}\right\\\mathclose{}\\
>
> Find \\\frac{\partial f}{\partial \mu}\\ and \\\frac{\partial f}{\partial \sigma}\\.

> **NOTE:**
>
> *Solution 2*. **1. Derivative with respect to \\\mu\\:** Treat \\\sigma\\ as constant. Differentiating the exponential factor via the chain rule:
>
> \\\begin{aligned} \frac{\partial f}{\partial \mu} &= \frac{1}{\sqrt{2\pi\sigma^2}}\operatorname{exp}\mathopen{}\left\\-\frac{(x - \mu)^2}{2\sigma^2}\right\\\mathclose{} \cdot\mathopen{}\left\[-\frac{2(x - \mu)(-1)}{2\sigma^2}\right\]\mathclose{} \\ &= \frac{x - \mu}{\sigma^2} f(x; \mu, \sigma) \end{aligned}\\
>
> **2. Derivative with respect to \\\sigma\\:** Write \\f(x; \mu, \sigma) = \frac{1}{\sqrt{2\pi}}\sigma^{-1}\operatorname{exp}\mathopen{}\left\\-\frac{(x - \mu)^2}{2\sigma^2}\right\\\mathclose{}\\ and apply the product rule:
>
> \\\begin{aligned} \frac{\partial f}{\partial \sigma} &= -\frac{1}{\sqrt{2\pi}}\sigma^{-2}\operatorname{exp}\mathopen{}\left\\-\frac{(x - \mu)^2}{2\sigma^2}\right\\\mathclose{} + \frac{1}{\sqrt{2\pi}}\sigma^{-1}\operatorname{exp}\mathopen{}\left\\-\frac{(x - \mu)^2}{2\sigma^2}\right\\\mathclose{} \cdot\mathopen{}\left\[\frac{(x - \mu)^2}{\sigma^3}\right\]\mathclose{} \\ &= \mathopen{}\left\[-\frac{1}{\sigma} + \frac{(x - \mu)^2}{\sigma^3}\right\]\mathclose{} f(x; \mu, \sigma) \end{aligned}\\
>
> *Remark:* Setting \\\frac{\partial f}{\partial \mu} = 0\\ and \\\frac{\partial f}{\partial \sigma} = 0\\ for a sample of independent observations leads directly to the maximum likelihood estimators \\\hat{\mu} = \bar{x}\\ and \\\hat{\sigma}^2 = \frac{1}{n}\sum\_{i=1}^n (x_i - \bar{x})^2\\.

> **NOTE:**
>
> **Exercise 3 (Partial derivatives with exponential of quadratic form)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.44.
>
> Find \\\frac{\partial f}{\partial x}\\ and \\\frac{\partial f}{\partial y}\\ for
>
> \\f(x, y) = x\operatorname{exp}\mathopen{}\left\\x^2 + y^2\right\\\mathclose{}\\

> **NOTE:**
>
> *Solution 3*. With respect to \\x\\, apply the product rule:
>
> \\\frac{\partial f}{\partial x} = (1)\operatorname{exp}\mathopen{}\left\\x^2 + y^2\right\\\mathclose{} + x \cdot\mathopen{}\left\[2x\operatorname{exp}\mathopen{}\left\\x^2 + y^2\right\\\mathclose{}\right\]\mathclose{} = (1 + 2x^2)\operatorname{exp}\mathopen{}\left\\x^2 + y^2\right\\\mathclose{}\\
>
> With respect to \\y\\, treat \\x\\ as constant:
>
> \\\frac{\partial f}{\partial y} = x \cdot\mathopen{}\left\[2y\operatorname{exp}\mathopen{}\left\\x^2 + y^2\right\\\mathclose{}\right\]\mathclose{} = 2xy\operatorname{exp}\mathopen{}\left\\x^2 + y^2\right\\\mathclose{}\\

> **NOTE:**
>
> **Exercise 4 (Using symmetry to compute partial derivatives)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.45.
>
> Find \\\frac{\partial f}{\partial x}\\ and \\\frac{\partial f}{\partial y}\\ for
>
> \\f(x, y) = e^{xy} - \log(x^2 + y^2)\\
>
> on \\\mathbb{R}^2 \setminus \\(0, 0)\\\\.

> **NOTE:**
>
> *Solution 4*. Holding \\y\\ constant, differentiate with respect to \\x\\:
>
> \\\frac{\partial f}{\partial x} = ye^{xy} - \frac{2x}{x^2 + y^2}\\
>
> Notice that the function is symmetric in \\x\\ and \\y\\: \\f(x, y) = f(y, x)\\. Interchanging \\x\\ and \\y\\ gives \\\frac{\partial f}{\partial y}\\ immediately:
>
> \\\frac{\partial f}{\partial y} = xe^{xy} - \frac{2y}{x^2 + y^2}\\
>
> *Remark:* Recognizing symmetry in multi-variable functions eliminates redundant calculations.

> **NOTE:**
>
> **Definition 2 (Vector derivative (gradient))** If \\f(\tilde{\beta})\\ is a scalar-valued function of a \\p \times 1\\ vector \\\tilde{\beta}\\, such as \\f(\tilde{\beta}) = {\tilde{x}}^{\top}\tilde{\beta}\\, then its **vector derivative** is the column vector of its partial derivatives ([Definition 1](#def-partial-derivative)):
>
> \\ \frac{\partial}{\partial \tilde{\beta}} f(\tilde{\beta}) = \begin{bmatrix} \frac{\partial}{\partial \beta_1}f(\tilde{\beta}) \\ \frac{\partial}{\partial \beta_2}f(\tilde{\beta}) \\ \vdots \\ \frac{\partial}{\partial \beta_p}f(\tilde{\beta}) \end{bmatrix} \\
>
> The vector derivative is also called the **gradient** of \\f\\ with respect to \\\tilde{\beta}\\, written \\\nabla\_{\tilde{\beta}} f(\tilde{\beta})\\.

> **NOTE:**
>
> **Example 2 (A vector derivative)** Let \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\ and \\f(\tilde{\beta}) = 3 \beta_1 + 5 \beta_2^2\\. Then
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} f(\tilde{\beta})}\_{2 \times 1} = \begin{bmatrix} \frac{\partial}{\partial \beta_1} (3 \beta_1 + 5 \beta_2^2) \\ \frac{\partial}{\partial \beta_2} (3 \beta_1 + 5 \beta_2^2) \end{bmatrix} = \begin{bmatrix} 3 \\ 10 \beta_2 \end{bmatrix}, \\
>
> and at \\\tilde{\beta}= {(1, 2)}^{\top}\\ the vector derivative is \\{(3, 20)}^{\top}\\.

> **TIP:**
>
> Hutchinson’s [Gradients Refresher](https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/#gradients) (17 min) covers gradients and partial derivatives, the ideas behind this section ([Hutchinson, n.d.](#ref-hutchinson_wwu_ml_videos)). The login for the video site is posted [on Canvas](https://wwu.instructure.com/courses/1906010/modules#module_3922392).

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on partial derivatives:
>
> - [What Partial Derivatives Are (Hands-on Introduction)](https://www.youtube.com/watch?v=lRq7xtPxOGk&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Partial Derivative Exercises](https://www.youtube.com/watch?v=8bHZJOBizwE&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Advanced Partial Derivatives](https://www.youtube.com/watch?v=0YzXHf-u5zU&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Advanced Partial-Derivative Exercises](https://www.youtube.com/watch?v=WFmUDiABfUI&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Partial Derivative Notation](https://www.youtube.com/watch?v=kIKVHguEpvA&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

## 1 Checking a gradient by its shape

The gradient always has the same shape as the input it is taken with respect to, because it holds exactly one partial derivative per component of that input:

| \\f\\ is a function of | its gradient is |
|----|----|
| a single number | a single number — the ordinary derivative |
| a vector in \\\mathbb{R}^p\\ | a vector in \\\mathbb{R}^p\\ |
| a matrix in \\\mathbb{R}^{m \times n}\\ | a matrix in \\\mathbb{R}^{m \times n}\\ |

Table 1: The shape of a gradient follows the shape of what it differentiates with respect to.

The table is the cheapest check there is on a gradient just worked out by hand: if the shapes disagree, something went wrong. It is the shape rule of matrix multiplication again, applied to calculus.

> **NOTE:**
>
> **Definition 3 (Direction)** A **direction** in \\\mathbb{R}^p\\ is given by a nonzero vector \\\tilde{d} \in \mathbb{R}^p\\: moving from a point \\\tilde{x}\\ in the direction \\\tilde{d}\\ means moving to the points \\\tilde{x}+ t \tilde{d}\\ with \\t \> 0\\. For any \\c \> 0\\, \\c \tilde{d}\\ reaches the same points (with \\t / c\\ in place of \\t\\), so \\\tilde{d}\\ and \\c \tilde{d}\\ give the same direction.

> **NOTE:**
>
> **Example 3 (Moving from \\{(2, -1)}^{\top}\\ in the direction \\{(1, 1)}^{\top}\\)** From \\\tilde{x}= {(2, -1)}^{\top}\\, moving in the direction \\\tilde{d} = {(1, 1)}^{\top}\\ reaches the points \\\tilde{x}+ t \tilde{d} = {(2 + t,\\ -1 + t)}^{\top}\\ for \\t \> 0\\, such as \\{(3, 0)}^{\top}\\ at \\t = 1\\. The vector \\{(2, 2)}^{\top}\\ gives the same direction: it reaches \\{(3, 0)}^{\top}\\ at \\t = \tfrac{1}{2}\\. The vector \\{(-1, -1)}^{\top}\\ gives the opposite direction, reaching points such as \\{(1, -2)}^{\top}\\.

> **NOTE:**
>
> **Definition 4 (Level set (level curve, contour))** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ and let \\c\\ be a real number. The **level set** of \\f\\ at \\c\\ is
>
> \\ \mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : f(\tilde{x}) = c\right\\\mathclose{}, \\
>
> the set of points where \\f\\ takes the value \\c\\. For \\p = 2\\, a level set is often a curve in the plane, called a **level curve** (or **contour**) of \\f\\.

> **NOTE:**
>
> **Example 4 (Level sets of \\x_1^2 + x_2^2\\)** Let \\f(\tilde{x}) = x_1^2 + x_2^2\\ for \\\tilde{x}= {(x_1, x_2)}^{\top}\\.
>
> - The level set at \\1\\ is the circle of radius \\1\\ around \\\tilde{0}\\. For example, \\{(0.6, 0.8)}^{\top}\\ is on it, since \\0.36 + 0.64 = 1\\, and \\{(1, 1)}^{\top}\\ is not, since \\1 + 1 = 2\\.
> - The level set at \\0\\ is the single point \\\tilde{0}\\.
> - The level set at \\-1\\ is empty, since \\x_1^2 + x_2^2 \ge 0\\.

Show R code

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

Turn the blue arrow in [Figure 1](#fig-gradient-explorer) and watch the rate: it is largest along the red arrow, zero along the black level curve ([Definition 4](#def-level-set)), and most negative pointing straight back. Then look for a point where the red arrow shrinks to nothing.

Show R code

``` js
viewof gradWhich = Inputs.radio(Object.keys(gradFns), {value: "3 w1 w2 + w2^3 - 5 w1", label: "f(w) ="})
viewof gradW1 = Inputs.range([-3, 3], {value: 2, step: 0.05, label: "w1"})
viewof gradW2 = Inputs.range([-3, 3], {value: -1, step: 0.05, label: "w2"})
viewof gradTheta = Inputs.range([0, 359], {value: 0, step: 1, label: "step direction (degrees)"})
```

Show R code

``` js
{
  const f2 = (v) => v.toFixed(2);
  const deg = "\u00b0";
  return md`f(w) = ${f2(gradF(gradW1, gradW2))};
gradient (${f2(gradG[0])}, ${f2(gradG[1])}), length ${f2(gradLen)}, at ${gradPhi.toFixed(0)}${deg}.
Along the blue arrow, f changes at rate ${f2(gradRate(gradTheta))} per unit step,
${(gradRate(gradTheta) / (gradLen || 1) * 100).toFixed(0)}% of the steepest rate.`;
}
```

Show R code

``` js
{
  const u = [Math.cos(gradTheta * Math.PI / 180), Math.sin(gradTheta * Math.PI / 180)];
  const g = gradLen > 1e-9 ? gradG.map((v) => v / gradLen) : [0, 0];
  return Plot.plot({
    ariaLabel: 'Contour map of f over w1 and w2, ' +
      'with the chosen point, ' +
      'the level curve through it drawn in black, ' +
      'a red arrow along the gradient and a blue arrow in the chosen step direction.',
    width: 310, height: 310, marginLeft: 40,
    x: {domain: [-3, 3], label: "w1"},
    y: {domain: [-3, 3], label: "w2"},
    color: {scheme: "YlGnBu", legend: true, label: "f(w)"},
    marks: [
      Plot.contour({x1: -3, y1: -3, x2: 3, y2: 3, fill: gradF, thresholds: 20,
                    stroke: "#fff", strokeOpacity: 0.4}),
      // Sampled past the edges and clipped, so the border is not drawn as part of the curve.
      Plot.contour({x1: -3.5, y1: -3.5, x2: 3.5, y2: 3.5, value: gradF, clip: true,
                    thresholds: [gradF(gradW1, gradW2)], stroke: "#222", strokeWidth: 2}),
      Plot.arrow([0], {x1: gradW1, y1: gradW2, x2: gradW1 + u[0], y2: gradW2 + u[1],
                       stroke: "#1f77b4", strokeWidth: 2.5, clip: true}),
      Plot.arrow([0], {x1: gradW1, y1: gradW2, x2: gradW1 + g[0], y2: gradW2 + g[1],
                       stroke: "#d62728", strokeWidth: 3, clip: true}),
      Plot.dot([0], {x: gradW1, y: gradW2, r: 5, fill: "#222"})
    ]
  });
}
```

Show R code

``` js
Plot.plot({
  ariaLabel: 'The rate at which f changes when stepping from the chosen point, ' +
    'plotted against the step direction in degrees: ' +
    'a cosine wave whose peak is at the gradient direction and whose zeros are a quarter turn either side of it.',
  width: 300, height: 220, grid: true,
  x: {domain: [0, 360], label: "step direction (degrees)", ticks: d3.range(0, 361, 90)},
  y: {label: "rate of change of f"},
  marks: [
    Plot.ruleY([0], {stroke: "#888"}),
    Plot.ruleX([gradPhi], {stroke: "#d62728", strokeDasharray: "4,3"}),
    Plot.line(d3.range(0, 360.1, 2), {x: (d) => d, y: gradRate, stroke: "#555"}),
    Plot.dot([gradTheta], {x: (d) => d, y: gradRate, r: 5, fill: "#1f77b4"})
  ]
})
```

Figure 1: A gradient explorer: the red arrow points along the gradient at the chosen point, and the blue arrow along the chosen step direction ([Definition 3](#def-direction)).

> **NOTE:**
>
> **Exercise 5 (Take a gradient by hand)** Let \\f : \mathbb{R}^2 \to \mathbb{R}\\ be
>
> \\f(\tilde{w}) = 3 w_1 w_2 + w_2^3 - 5 w_1\\
>
> 1.  Compute \\\partial f / \partial w_1\\ ([Definition 1](#def-partial-derivative)), treating \\w_2\\ as a constant.
> 2.  Compute \\\partial f / \partial w_2\\, treating \\w_1\\ as a constant.
> 3.  Assemble \\\nabla\_{\tilde{w}} f\\ and evaluate it at \\\tilde{w} = \begin{bmatrix} 2 & -1 \end{bmatrix}^\top\\.
> 4.  Check the shape of your answer against [Table 1](#tbl-gradient-shape).

> **NOTE:**
>
> *Solution 5*. **1.** Differentiate with respect to \\w_1\\, holding \\w_2\\ fixed. The first term is the constant \\3w_2\\ times \\w_1\\, so it contributes \\3w_2\\. The second term has no \\w_1\\ in it, so it contributes \\0\\. The third term is \\-5\\ times \\w_1\\, so it contributes \\-5\\:
>
> \\\frac{\partial f}{\partial w_1} = 3w_2 + 0 - 5 = 3w_2 - 5\\
>
> **2.** Now with respect to \\w_2\\, holding \\w_1\\ fixed. The first term is the constant \\3w_1\\ times \\w_2\\, contributing \\3w_1\\. The second term contributes \\3w_2^2\\. The third has no \\w_2\\ in it, contributing \\0\\:
>
> \\\frac{\partial f}{\partial w_2} = 3w_1 + 3w_2^2 + 0 = 3w_1 + 3w_2^2\\
>
> **3.** Stack the two, in the order the coordinates are numbered:
>
> \\\nabla\_{\tilde{w}} f(\tilde{w}) = \begin{bmatrix} 3w_2 - 5 \\ 3w_1 + 3w_2^2 \end{bmatrix}\\
>
> The gradient is a vector-valued *function* of \\\tilde{w}\\, not a single vector. At \\\tilde{w} = \begin{bmatrix} 2 & -1 \end{bmatrix}^\top\\,
>
> \\\nabla\_{\tilde{w}} f = \begin{bmatrix} 3(-1) - 5 \\ 3(2) + 3(-1)^2 \end{bmatrix} = \begin{bmatrix} -3 - 5 \\ 6 + 3 \end{bmatrix} = \begin{bmatrix} -8 \\ 9 \end{bmatrix}\\
>
> **4.** The input was a vector in \\\mathbb{R}^2\\ and so is the answer, as [Table 1](#tbl-gradient-shape) requires. Note the signs: from this point, increasing \\w_1\\ *decreases* \\f\\ while increasing \\w_2\\ increases it, so the uphill direction is neither axis.

> **NOTE:**
>
> **Definition 5 (Row-vector derivative (total derivative))** If \\f(\tilde{\beta})\\ is a scalar-valued function of a \\p \times 1\\ vector \\\tilde{\beta}\\, such as \\f(\tilde{\beta}) = {\tilde{x}}^{\top}\tilde{\beta}\\, then its **row-vector derivative** is the row vector of its partial derivatives ([Definition 1](#def-partial-derivative)):
>
> \\ \frac{\partial f(\tilde{\beta})}{\partial {\tilde{\beta}}^{\top}} = \begin{bmatrix} \frac{\partial}{\partial \beta_1}f(\tilde{\beta}) & \frac{\partial}{\partial \beta_2}f(\tilde{\beta}) & \cdots & \frac{\partial}{\partial \beta_p}f(\tilde{\beta}) \end{bmatrix} \tag{1}\\
>
> Some sources write the same row vector as \\\frac{\partial}{\partial {\tilde{\beta}}^{\top}} f(\tilde{\beta})\\, with the operator on the left, read as each operator \\\frac{\partial}{\partial \beta_i}\\ applied to \\f\\ rather than as a matrix product (see [Remark 1](#rem-row-derivative-shape)).
>
> The row-vector derivative is also called the **total derivative** of \\f\\, the name used when the derivative of a scalar-valued function is written as a row vector.

> **NOTE:**
>
> *Remark 1* (Which side the operator goes on). Read \\\frac{\partial}{\partial \tilde{\beta}}\\ as a \\p \times 1\\ column vector of operators with entries \\\frac{\partial}{\partial \beta_1}, \ldots, \frac{\partial}{\partial \beta_p}\\, and \\\frac{\partial}{\partial {\tilde{\beta}}^{\top}}\\ as the \\1 \times p\\ row vector of operators with the same entries. Writing either one next to \\f\\ can be read in two ways:
>
> - **As a matrix product,** with \\f\\ a \\1 \times 1\\ matrix, under the shape rule of [matrix multiplication](linear-algebra.llms.md#def-matrix-mult). The column-vector operator works on the left: \\\frac{\partial}{\partial \tilde{\beta}} f\\ is \\(p \times 1)(1 \times 1)\\, a \\p \times 1\\ column vector ([Definition 2](#def-vector-derivative)). The row-vector operator does not: \\\frac{\partial}{\partial {\tilde{\beta}}^{\top}} f\\ is \\(1 \times p)(1 \times 1)\\, whose inner dimensions \\p\\ and \\1\\ do not match when \\p \> 1\\. For the shape rule to give the \\1 \times p\\ row vector, the operator would have to go on the right of \\f\\, as in \\(1 \times 1)(1 \times p)\\, which changes its meaning (see below).
> - **As a scalar multiple,** with \\f\\ a scalar, the way \\c \tilde{x}\\ is read in [scalar multiplication](linear-algebra.llms.md#def-scalar-mult), which has no shape rule: each entry of the operator vector is applied to \\f\\. Then both \\\frac{\partial}{\partial \tilde{\beta}} f\\ and \\\frac{\partial}{\partial {\tilde{\beta}}^{\top}} f\\ work with the operator on the left.
>
> The fraction \\\frac{\partial f}{\partial {\tilde{\beta}}^{\top}}\\ of [Equation 1](#eq-row-vector-derivative) means the same thing under both readings: the transpose in the denominator says the result is a row vector, without making the derivative a product.
>
> Treating the operators as vectors is sound for checking shapes, but “multiplying” an operator by a function means applying the operator to it, so two rules of ordinary matrix algebra do not carry over: scalars commute with matrices, and products can be regrouped.
>
> - **Scalars do not commute with operators.** \\\frac{\partial}{\partial \beta_i} f\\ is a function, but \\f \frac{\partial}{\partial \beta_i}\\ is still an unapplied operator, waiting for something to act on. So, unlike \\c \tilde{x}= \tilde{x}c\\, the operator cannot move to the other side of \\f\\ without changing the meaning. Putting the row-vector operator on the right of \\f\\ gives the row-vector derivative only under the convention that it acts on the factor to its left.
> - **Products cannot be regrouped.** An operator acts on the whole product to its right, so by the [product rule](calculus.llms.md#thm-product-rule), \\\frac{\partial}{\partial \beta_i} (f g) \ne \mathopen{}\left(\frac{\partial}{\partial \beta_i} f\right)\mathclose{} g\\ in general. For example, with \\f(\tilde{\beta}) = \beta_1\\, \\\frac{\partial}{\partial \beta_1} (f f) = 2 \beta_1\\ but \\\mathopen{}\left(\frac{\partial}{\partial \beta_1} f\right)\mathclose{} f = \beta_1\\.

> **NOTE:**
>
> **Theorem 1 (Row and column derivatives are transposes)** \\\frac{\partial f(\tilde{\beta})}{\partial {\tilde{\beta}}^{\top}} = {\mathopen{}\left(\frac{\partial f(\tilde{\beta})}{\partial \tilde{\beta}}\right)\mathclose{}}^{\top} \tag{2}\\
>
> \\\frac{\partial f(\tilde{\beta})}{\partial \tilde{\beta}} = {\mathopen{}\left(\frac{\partial f(\tilde{\beta})}{\partial {\tilde{\beta}}^{\top}}\right)\mathclose{}}^{\top} \tag{3}\\

> **NOTE:**
>
> *Proof*. By [Definition 2](#def-vector-derivative) and [Definition 5](#def-row-vector-derivative), entry \\j\\ of both \\\frac{\partial f(\tilde{\beta})}{\partial \tilde{\beta}}\\ and \\\frac{\partial f(\tilde{\beta})}{\partial {\tilde{\beta}}^{\top}}\\ is \\\frac{\partial}{\partial \beta_j} f(\tilde{\beta})\\; the first is a \\p \times 1\\ column vector and the second a \\1 \times p\\ row vector with the same entries in the same order, so each is the transpose of the other.

> **NOTE:**
>
> **Example 5 (Row and column derivatives of a linear function)** For \\f(\tilde{\beta}) = 3\beta_1 + 5\beta_2\\:
>
> \\ \frac{\partial f(\tilde{\beta})}{\partial \tilde{\beta}} = \begin{bmatrix}3 \\ 5\end{bmatrix}, \qquad \frac{\partial f(\tilde{\beta})}{\partial {\tilde{\beta}}^{\top}} = \begin{bmatrix}3 & 5\end{bmatrix}, \\
>
> and each is the transpose of the other.

> **NOTE:**
>
> **Definition 6 (Derivative of a vector-valued function)** If \\\tilde{y}= \tilde{y}(\tilde{\beta}) = {(y_1, \ldots, y_q)}^{\top}\\ is a \\q \times 1\\ vector-valued function of the \\p \times 1\\ vector \\\tilde{\beta}\\, its **derivative with respect to** \\\tilde{\beta}\\ is the \\p \times q\\ matrix whose \\(i, j)\\ entry is
>
> \\ \mathopen{}\left\[\frac{\partial}{\partial \tilde{\beta}} {\tilde{y}}^{\top}\right\]\mathclose{}\_{ij} \stackrel{\text{def}}{=}\frac{\partial}{\partial \beta_i} y_j, \qquad i = 1, \ldots, p, \quad j = 1, \ldots, q. \\
>
> Writing derivatives this way is the **denominator layout**, which these notes use throughout: rows index the entries of \\\tilde{\beta}\\ (the denominator) and columns index the entries of \\\tilde{y}\\ (the numerator), so column \\j\\ is the vector derivative \\\frac{\partial}{\partial \tilde{\beta}} y_j\\ ([Definition 2](#def-vector-derivative)). Both \\\frac{\partial}{\partial \tilde{\beta}} \tilde{y}\\ and \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{y}}^{\top}\\ denote this \\p \times q\\ matrix.

> **NOTE:**
>
> **Example 6 (Differentiating a \\3 \times 1\\ function of a \\2 \times 1\\ vector)** Let \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\ (\\p = 2\\) and \\\tilde{y}(\tilde{\beta}) = {(\beta_1^2,\\ \beta_1\beta_2,\\ 3\beta_2)}^{\top}\\ (\\q = 3\\). Then
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} {\tilde{y}}^{\top}}\_{2 \times 3} = \begin{bmatrix} \frac{\partial}{\partial \beta_1} \beta_1^2 & \frac{\partial}{\partial \beta_1} \beta_1\beta_2 & \frac{\partial}{\partial \beta_1} 3\beta_2 \\ \frac{\partial}{\partial \beta_2} \beta_1^2 & \frac{\partial}{\partial \beta_2} \beta_1\beta_2 & \frac{\partial}{\partial \beta_2} 3\beta_2 \end{bmatrix} = \begin{bmatrix} 2\beta_1 & \beta_2 & 0 \\ 0 & \beta_1 & 3 \end{bmatrix} \\

> **NOTE:**
>
> **Definition 7 (Jacobian matrix)** Let \\\tilde{y}= \tilde{y}(\tilde{\beta}) = {(y_1, \ldots, y_q)}^{\top}\\ be a \\q \times 1\\ vector-valued function of the \\p \times 1\\ vector \\\tilde{\beta}\\. The **Jacobian matrix** of \\\tilde{y}\\ is the \\q \times p\\ matrix whose \\(j, i)\\ entry is \\\frac{\partial}{\partial \beta_i} y_j\\, for \\j = 1, \ldots, q\\ and \\i = 1, \ldots, p\\. It is the transpose of the derivative \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{y}}^{\top}\\ of [Definition 6](#def-vector-valued-derivative). Writing derivatives this way, with rows indexing the entries of \\\tilde{y}\\ (the numerator) and columns indexing the entries of \\\tilde{\beta}\\ (the denominator), is the **numerator layout**.

> **NOTE:**
>
> **Example 7 (The Jacobian matrix of a \\3 \times 1\\ function of a \\2 \times 1\\ vector)** For \\\tilde{y}(\tilde{\beta}) = {(\beta_1^2,\\ \beta_1\beta_2,\\ 3\beta_2)}^{\top}\\ of [Example 6](#exm-vector-valued-derivative), the Jacobian matrix is the \\3 \times 2\\ matrix
>
> \\ \begin{bmatrix} \frac{\partial}{\partial \beta_1} \beta_1^2 & \frac{\partial}{\partial \beta_2} \beta_1^2 \\ \frac{\partial}{\partial \beta_1} \beta_1\beta_2 & \frac{\partial}{\partial \beta_2} \beta_1\beta_2 \\ \frac{\partial}{\partial \beta_1} 3\beta_2 & \frac{\partial}{\partial \beta_2} 3\beta_2 \end{bmatrix} = \begin{bmatrix} 2\beta_1 & 0 \\ \beta_2 & \beta_1 \\ 0 & 3 \end{bmatrix}, \\
>
> the transpose of the \\2 \times 3\\ matrix found there.

> **NOTE:**
>
> *Remark 2* (Numerator layout). Some sources use the numerator layout ([Definition 7](#def-jacobian-matrix)) throughout, so that their derivative of a vector-valued function is the Jacobian matrix, the transpose of the derivative used in these notes. In numerator layout, the derivative of a scalar-valued function is a row vector: the row-vector derivative ([Definition 5](#def-row-vector-derivative)). Check a source’s layout before combining its formulas with these.

> **NOTE:**
>
> **Definition 8 (Constant)** A \\q \times 1\\ vector \\\tilde{x}\\ is **constant with respect to** the \\p \times 1\\ vector \\\tilde{\beta}\\ if its derivative ([Definition 6](#def-vector-valued-derivative)) is zero:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}}\_{p \times q} = \underbrace{\mathbf{0}}\_{p \times q} \\

> **NOTE:**
>
> **Example 8 (A constant vector)** Let \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\ and \\\tilde{x}= {(3, 5)}^{\top}\\, so \\x_1 = 3\\ and \\x_2 = 5\\ do not depend on \\\tilde{\beta}\\. Expanding \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}\\ into its matrix of scalar partial derivatives ([Definition 6](#def-vector-valued-derivative)) and evaluating each entry:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}}\_{2 \times 2} = \frac{\partial}{\partial \tilde{\beta}} \begin{bmatrix}x_1 & x_2\end{bmatrix} = \begin{bmatrix} \frac{\partial}{\partial \beta_1} x_1 & \frac{\partial}{\partial \beta_1} x_2 \\ \frac{\partial}{\partial \beta_2} x_1 & \frac{\partial}{\partial \beta_2} x_2 \end{bmatrix} = \begin{bmatrix} \frac{\partial}{\partial \beta_1} 3 & \frac{\partial}{\partial \beta_1} 5 \\ \frac{\partial}{\partial \beta_2} 3 & \frac{\partial}{\partial \beta_2} 5 \end{bmatrix} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix} = \underbrace{\mathbf{0}}\_{2 \times 2} \\
>
> Every entry is the derivative of a constant, so \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top} = \underbrace{\mathbf{0}}\_{2 \times 2}\\ and \\\tilde{x}\\ is constant with respect to \\\tilde{\beta}\\ ([Definition 8](#def-constant-wrt-vector)).

> **NOTE:**
>
> **Example 9 (A vector that is not constant)** With the same \\\tilde{\beta}\\, let \\\tilde{x}= {(\beta_1, 3)}^{\top}\\. Then
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}}\_{2 \times 2} = \begin{bmatrix} \frac{\partial}{\partial \beta_1} \beta_1 & \frac{\partial}{\partial \beta_1} 3 \\ \frac{\partial}{\partial \beta_2} \beta_1 & \frac{\partial}{\partial \beta_2} 3 \end{bmatrix} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}, \\
>
> which is not \\\underbrace{\mathbf{0}}\_{2 \times 2}\\, so this \\\tilde{x}\\ is not constant with respect to \\\tilde{\beta}\\: its first entry changes when \\\beta_1\\ does.

> **NOTE:**
>
> **Exercise 6 (Partial derivative with respect to an unreferenced variable)** Adapted from Miller ([2016](#ref-problifesavercalc)), Question 1.1.46.
>
> Find \\\frac{\partial f}{\partial x}\\ and \\\frac{\partial f}{\partial y}\\ for
>
> \\f(x, y, t) = 5t^4 - 4t^5 \cos(t\sin t)\\

> **NOTE:**
>
> *Solution 6*. Although the function is declared as a function of three variables \\(x, y, t)\\, its expression depends solely on \\t\\.
>
> Because neither \\x\\ nor \\y\\ appears in the formula, \\f\\ is constant with respect to both \\x\\ and \\y\\:
>
> \\\frac{\partial f}{\partial x} = 0, \qquad \frac{\partial f}{\partial y} = 0\\
>
> *Remark:* Always verify which variables actually appear in a formula before performing lengthy algebraic differentiation.

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
> **Example 10 (Derivative of a dot product)** Let \\\tilde{x}= {(3, 5)}^{\top}\\ (constant with respect to \\\tilde{\beta}\\; see [Example 8](#exm-constant-wrt-vector)) and \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\\tilde{x}\cdot \tilde{\beta}= 3\beta_1 + 5\beta_2\\, and by [Theorem 2](#thm-deriv-lincom):
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
> **Example 11 (Example of the dot-product rule)** Apply [Theorem 3](#thm-deriv-dot-product) with the vector \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\ in the role of \\\tilde{x}\\. Let \\\tilde{a}(\tilde{\beta}) = {(\beta_1, \beta_1\beta_2)}^{\top}\\ and \\\tilde{b}(\tilde{\beta}) = {(\beta_2, \beta_1)}^{\top}\\. Then:
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
> *Proof*. For entry \\(i,j)\\, where row \\i\\ indexes the denominator \\\tilde{\beta}\\ (see [Definition 6](#def-vector-valued-derivative)) and column \\j\\ indexes the numerator \\\mathbf{A}\tilde{\beta}\\:
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{\beta})\right\]\_{ij} &= \frac{\partial}{\partial \beta_i} (\mathbf{A}\tilde{\beta})\_j \\ &= \frac{\partial}{\partial \beta_i} \sum\_{k=1}^{p} a\_{jk} \beta_k \\ &= a\_{ji} \\ &= \left\[{\mathbf{A}}^{\top}\right\]\_{ij} \end{aligned} \\

> **NOTE:**
>
> **Example 12 (Derivative of a linear map)** Let \\\mathbf{A} = \begin{pmatrix} 2 & 3 \end{pmatrix}\\ (\\1 \times 2\\) and \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\\mathbf{A}\tilde{\beta}= 2\beta_1 + 3\beta_2\\, and by [Theorem 4](#thm-deriv-linear-map):
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\mathbf{A}\tilde{\beta})}\_{2 \times 1} = \underbrace{{\mathbf{A}}^{\top}}\_{2 \times 1} = \begin{pmatrix} 2 \\ 3 \end{pmatrix} \\

> **NOTE:**
>
> **Theorem 5 (Vector-derivative of a matrix-vector product)** If \\\mathbf{A}\\ is an \\m \times q\\ matrix that is constant with respect to \\\tilde{\beta}\\, and \\\tilde{v} = \tilde{v}(\tilde{\beta})\\ is a \\q \times 1\\ vector that depends on the \\p \times 1\\ vector \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{v})}\_{p \times m} = \underbrace{\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{}}\_{p \times q} \underbrace{{\mathbf{A}}^{\top}}\_{q \times m} \\

> **NOTE:**
>
> *Proof*. For entry \\(i,j)\\, where row \\i\\ indexes the denominator \\\tilde{\beta}\\ and column \\j\\ indexes the numerator \\\mathbf{A}\tilde{v}\\ (see [Definition 6](#def-vector-valued-derivative)):
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{v})\right\]\_{ij} &= \frac{\partial}{\partial \beta_i} (\mathbf{A}\tilde{v})\_j \\ &= \frac{\partial}{\partial \beta_i} \sum\_{k=1}^{q} a\_{jk} v_k \\ &= \sum\_{k=1}^{q} a\_{jk} \frac{\partial}{\partial \beta_i} v_k \\ &= \sum\_{k=1}^{q} \left\[\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right\]\_{ik} \left\[{\mathbf{A}}^{\top}\right\]\_{kj} \\ &= \left\[\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{} {\mathbf{A}}^{\top}\right\]\_{ij} \end{aligned} \\

> **NOTE:**
>
> **Example 13 (Vector-derivative of a matrix-vector product)** Let \\\mathbf{A} = \begin{pmatrix} 2 & 3 \end{pmatrix}\\ (\\1 \times 2\\, constant) and \\\tilde{v}(\tilde{\beta}) = {(\beta_1^2, \beta_2^2)}^{\top}\\. Then \\\mathbf{A}\tilde{v} = 2\beta_1^2 + 3\beta_2^2\\. By [Theorem 5](#thm-deriv-matrix-vector):
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\mathbf{A}\tilde{v})}\_{2 \times 1} &= \begin{pmatrix} 2\beta_1 & 0 \\ 0 & 2\beta_2 \end{pmatrix} \begin{pmatrix} 2 \\ 3 \end{pmatrix} \\ &= \begin{pmatrix} 4\beta_1 \\ 6\beta_2 \end{pmatrix} \end{aligned} \\

> **NOTE:**
>
> *Remark 3* (The derivative of a linear map as a special case). This result generalizes [Theorem 4](#thm-deriv-linear-map), which is the special case \\\tilde{v} = \tilde{\beta}\\ (so that \\q = p\\, \\\frac{\partial}{\partial \tilde{\beta}} \tilde{\beta}= \mathbf{I}\_p\\, and \\\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{\beta}) = \mathbf{I}\_p {\mathbf{A}}^{\top} = {\mathbf{A}}^{\top}\\). For example, [Example 12](#exm-deriv-linear-map) is the case \\\mathbf{A} = \begin{pmatrix} 2 & 3 \end{pmatrix}\\ and \\\tilde{v} = \tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\, where this result gives \\\mathbf{I}\_2 {\mathbf{A}}^{\top} = {(2, 3)}^{\top}\\.

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
> **Example 14** Let \\\mathbf{A} = \begin{pmatrix}1 & 0\end{pmatrix}\\ (\\1 \times 2\\), \\\mathbf{B} = \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix}\\ (\\2 \times 2\\), and \\\tilde{v}(\tilde{\beta}) = \tilde{\beta}\\ where \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\\mathbf{A}\mathbf{B}\tilde{v} = 2\beta_1\\, and:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\mathbf{A}\mathbf{B}\tilde{v})}\_{2 \times 1} = \underbrace{\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}}\tilde{\beta}\right)\mathclose{}}\_{2 \times 2} \underbrace{{\mathbf{B}}^{\top}}\_{2 \times 2} \underbrace{{\mathbf{A}}^{\top}}\_{2 \times 1} = \mathbf{I}\_2 \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix} \begin{pmatrix}1 \\ 0\end{pmatrix} = \begin{pmatrix}2 \\ 0\end{pmatrix} \\

> **NOTE:**
>
> **Corollary 1 (Derivative of a dot product, transpose-product form)** If \\\tilde{x}\\ is constant with respect to \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\underbrace{{\tilde{x}}^{\top}}\_{1 \times p} \underbrace{\tilde{\beta}}\_{p \times 1})}\_{p \times 1} = \underbrace{\tilde{x}}\_{p \times 1} \\

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
> **Example 15 (Derivative of a transpose product)** Let \\\tilde{x}= {(3, 5)}^{\top}\\ and \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\{\tilde{x}}^{\top}\tilde{\beta}= 3\beta_1 + 5\beta_2\\, and by [Corollary 1](#cor-deriv-lincom-tp):
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}\left(\underbrace{{\tilde{x}}^{\top}}\_{1 \times 2}\underbrace{\tilde{\beta}}\_{2 \times 1}\right)}\_{2 \times 1} = \underbrace{\tilde{x}}\_{2 \times 1} = \begin{pmatrix} 3 \\ 5 \end{pmatrix} \\

> **NOTE:**
>
> *Remark 4* (The coefficient gets transposed). This vector derivative formula looks a lot like non-vector calculus, except that you have to transpose the coefficient: in scalar calculus \\\frac{\partial}{\partial x}(cx) = c\\, but here the coefficient \\{\tilde{x}}^{\top}\\ (a row vector) becomes \\\tilde{x}\\ (a column vector) in the result. For example, with \\\tilde{x}= {(2, -1)}^{\top}\\, \\{\tilde{x}}^{\top}\tilde{\beta}= 2\beta_1 - \beta_2\\, whose vector derivative is the column vector \\{(2, -1)}^{\top} = \tilde{x}\\, not the row vector \\{\tilde{x}}^{\top} = (2, -1)\\.

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

> **NOTE:**
>
> *Remark 5* (Like the derivative of \\cx^2\\). This operation is like taking the derivative of \\cx^2\\ with respect to \\x\\ in non-vector calculus: \\\frac{\partial}{\partial x} (cx^2) = 2cx\\, and [Theorem 7](#thm-quadratic-form) says \\\frac{\partial}{\partial \tilde{\beta}} ({\tilde{\beta}}^{\top} \mathbf{S} \tilde{\beta}) = 2 \mathbf{S} \tilde{\beta}\\. For example, with \\p = 1\\, \\\mathbf{S} = (3)\\, and \\\tilde{\beta}= (\beta_1)\\, \\{\tilde{\beta}}^{\top} \mathbf{S} \tilde{\beta}= 3\beta_1^2\\, and its derivative is \\6\beta_1 = 2 \mathbf{S} \tilde{\beta}\\.

> **NOTE:**
>
> **Example 16 (Derivative of a quadratic form)** Let \\\mathbf{S} = \begin{pmatrix} 3 & 1 \\ 1 & 2 \end{pmatrix}\\ (\\2 \times 2\\, symmetric and constant) and \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\. Then \\{\tilde{\beta}}^{\top}\mathbf{S}\tilde{\beta}= 3\beta_1^2 + 2\beta_1\beta_2 + 2\beta_2^2\\. By [Theorem 7](#thm-quadratic-form):
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

> **NOTE:**
>
> *Remark 6* (Like the derivative of \\x^2\\). This vector derivative is like taking the derivative of \\x^2\\: in scalar calculus \\\frac{\partial}{\partial x} x^2 = 2x\\, and [Corollary 2](#cor-deriv-normsq) says \\\frac{\partial}{\partial \tilde{\beta}} ({\tilde{\beta}}^{\top}\tilde{\beta}) = 2\tilde{\beta}\\. For example, with \\p = 1\\ and \\\tilde{\beta}= (\beta_1)\\, \\{\tilde{\beta}}^{\top}\tilde{\beta}= \beta_1^2\\, and its derivative is \\2\beta_1 = 2\tilde{\beta}\\.

> **NOTE:**
>
> **Example 17 (Derivative of a sum of squares)** Let \\\tilde{\beta}= {(\beta_1, \beta_2)}^{\top}\\, so \\{\tilde{\beta}}^{\top}\tilde{\beta}= \beta_1^2 + \beta_2^2\\. By [Corollary 2](#cor-deriv-normsq):
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\tilde{\beta})}\_{2 \times 1} = 2\tilde{\beta} = \begin{pmatrix} 2\beta_1 \\ 2\beta_2 \end{pmatrix} \\
>
> Direct partial differentiation yields the same column vector.

> **NOTE:**
>
> **Definition 9 (Residuals and squared errors)** Let \\\mathbf{X}\\ be an \\n \times p\\ matrix, \\\tilde{y}\in \mathbb{R}^n\\, and \\\tilde{\beta}\in \mathbb{R}^p\\. The **residual vector** of \\\tilde{\beta}\\ is \\\tilde{\varepsilon}(\tilde{\beta}) \stackrel{\text{def}}{=}\tilde{y}- \mathbf{X}\tilde{\beta}\\, and its entries \\\varepsilon_i = y_i - (\mathbf{X}\tilde{\beta})\_i\\ are the **residuals**. The square \\\varepsilon_i^2\\ is the \\i\\th **squared error**, and their sum
>
> \\ \tilde{\varepsilon}\cdot \tilde{\varepsilon}= \sum\_{i=1}^n \varepsilon_i^2 = \mathopen{}\left\lVert\tilde{y}- \mathbf{X}\tilde{\beta}\right\rVert\mathclose{}^2 \\
>
> is the **residual sum of squares**. A [least squares solution](linear-algebra.llms.md#def-least-squares) of \\\mathbf{X}\tilde{\beta}= \tilde{y}\\ makes \\\mathopen{}\left\lVert\tilde{y}- \mathbf{X}\tilde{\beta}\right\rVert\mathclose{}\\ as small as possible, and so makes the residual sum of squares as small as possible too.

> **NOTE:**
>
> **Example 18 (Residuals of a constant fit)** Let \\\mathbf{X}= {(1, 1)}^{\top}\\ (\\n = 2\\, \\p = 1\\) and \\\tilde{y}= {(1, 3)}^{\top}\\. For \\\tilde{\beta}= (2)\\, \\\mathbf{X}\tilde{\beta}= {(2, 2)}^{\top}\\, so
>
> \\ \begin{aligned} \tilde{\varepsilon}(\tilde{\beta}) &= {(1, 3)}^{\top} - {(2, 2)}^{\top} && \text{(definition of the residual vector)} \\ &= {(-1, 1)}^{\top}, && \text{(subtract entry by entry)} \end{aligned} \\
>
> the squared errors are \\(-1)^2 = 1\\ and \\1^2 = 1\\, and the residual sum of squares is \\1 + 1 = 2\\. For \\\tilde{\beta}= (1)\\ the residuals are \\0\\ and \\2\\, and the residual sum of squares is \\0 + 4 = 4\\.

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on gradients of sums and means of squared errors ([Definition 9](#def-residual)):
>
> - [The Gradient of Quadratic Cost](https://www.youtube.com/watch?v=rhn7ie7JBdA&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [The Gradient of Mean Squared Error](https://www.youtube.com/watch?v=KLXP2RL0-Vg&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Theorem 8 (Vector chain rule)** Let \\\tilde{x}\\ be a \\p \times 1\\ vector, let \\\tilde{y}= \tilde{g}(\tilde{x})\\ be a \\q \times 1\\ vector-valued function of \\\tilde{x}\\, and let \\z = f(\tilde{y})\\ be a scalar-valued function of \\\tilde{y}\\, where \\\tilde{g}\\ and \\f\\ have continuous partial derivatives. Then \\z = f(\tilde{g}(\tilde{x}))\\, as a function of \\\tilde{x}\\, satisfies
>
> \\ \underbrace{\frac{\partial z}{\partial \tilde{x}}}\_{p \times 1} = \underbrace{\frac{\partial \tilde{y}}{\partial \tilde{x}}}\_{p \times q} \underbrace{\frac{\partial z}{\partial \tilde{y}}}\_{q \times 1} \\
>
> where \\\frac{\partial \tilde{y}}{\partial \tilde{x}}\\ is the derivative of [Definition 6](#def-vector-valued-derivative) and \\\frac{\partial z}{\partial \tilde{x}}\\ and \\\frac{\partial z}{\partial \tilde{y}}\\ are vector derivatives ([Definition 2](#def-vector-derivative)).

> **NOTE:**
>
> *Remark 7* (The order of the factors matters). The vector chain rule ([Theorem 8](#thm-chain-vec)) is like the univariate [chain rule](calculus.llms.md#thm-chain-rule), but the order matters now: \\\frac{\partial \tilde{y}}{\partial \tilde{x}}\\ is \\p \times q\\ and \\\frac{\partial z}{\partial \tilde{y}}\\ is \\q \times 1\\, so the product \\\frac{\partial z}{\partial \tilde{y}} \frac{\partial \tilde{y}}{\partial \tilde{x}}\\ in the other order is not even defined unless \\p = 1\\.
>
> The version presented here is for the gradient ([Definition 2](#def-vector-derivative)), a column vector. The total derivative ([Definition 5](#def-row-vector-derivative)), a row vector, is the transpose of the gradient ([Theorem 1](#thm-row-deriv-tp-col-deriv)), and transposing both sides gives \\{\mathopen{}\left(\frac{\partial z}{\partial \tilde{x}}\right)\mathclose{}}^{\top} = {\mathopen{}\left(\frac{\partial z}{\partial \tilde{y}}\right)\mathclose{}}^{\top} {\mathopen{}\left(\frac{\partial \tilde{y}}{\partial \tilde{x}}\right)\mathclose{}}^{\top}\\, with the factors in the reverse order; there \\{\mathopen{}\left(\frac{\partial \tilde{y}}{\partial \tilde{x}}\right)\mathclose{}}^{\top}\\ is the Jacobian matrix of \\\tilde{y}\\ as a function of \\\tilde{x}\\ ([Definition 7](#def-jacobian-matrix)).

> **NOTE:**
>
> **Example 19 (Applying the vector chain rule)** Let \\\tilde{x}= {(x_1, x_2)}^{\top}\\, \\\tilde{y}= \tilde{g}(\tilde{x}) = {(x_1 + x_2,\\ x_1 x_2)}^{\top}\\, and \\z = f(\tilde{y}) = y_1^2 + y_2\\. Then
>
> \\ \begin{aligned} \underbrace{\frac{\partial z}{\partial \tilde{x}}}\_{2 \times 1} &= \underbrace{\frac{\partial \tilde{y}}{\partial \tilde{x}}}\_{2 \times 2} \underbrace{\frac{\partial z}{\partial \tilde{y}}}\_{2 \times 1} && \text{(vector chain rule)} \\ &= \begin{bmatrix} 1 & x_2 \\ 1 & x_1 \end{bmatrix} \begin{bmatrix} 2y_1 \\ 1 \end{bmatrix} && \text{(differentiate } \tilde{g} \text{ and } f \text{)} \\ &= \begin{bmatrix} 2(x_1 + x_2) + x_2 \\ 2(x_1 + x_2) + x_1 \end{bmatrix} && \text{(multiply, and substitute } y_1 = x_1 + x_2 \text{)} \\ &= \begin{bmatrix} 2x_1 + 3x_2 \\ 3x_1 + 2x_2 \end{bmatrix} && \text{(collect terms)} \end{aligned} \\
>
> This matches differentiating \\z\\ directly: \\z = (x_1 + x_2)^2 + x_1 x_2 = x_1^2 + 3x_1 x_2 + x_2^2\\, so \\\frac{\partial}{\partial x_1} z = 2x_1 + 3x_2\\ and \\\frac{\partial}{\partial x_2} z = 3x_1 + 2x_2\\. The product in the other order, a \\2 \times 1\\ matrix times a \\2 \times 2\\ matrix, is not defined. The total derivative is the transpose, the row vector \\(2x_1 + 3x_2,\\ 3x_1 + 2x_2)\\.

See Felippa ([n.d.](#ref-felippa_ifem_matrix_calculus)), and Wikipedia contributors ([n.d.](#ref-wp:gradient)), section “Relationship with Frechet derivative”.

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
> **Example 20 (Derivative of the residual sum of squares)** Let \\\tilde{y}\\ (\\n \times 1\\) and \\\mathbf{X}\\ (\\n \times p\\) be constant with respect to \\\tilde{\beta}\\, and let \\\tilde{\varepsilon}(\tilde{\beta}) = \tilde{y}- \mathbf{X}\tilde{\beta}\\ be the residual vector ([Definition 9](#def-residual)). By [Theorem 4](#thm-deriv-linear-map), \\\frac{\partial}{\partial \tilde{\beta}}(\mathbf{X}\tilde{\beta}) = {\mathbf{X}}^{\top}\\, and \\\frac{\partial}{\partial \tilde{\beta}}\tilde{y}= \mathbf{0}\_{p \times n}\\ because \\\tilde{y}\\ is constant, so \\\frac{\partial}{\partial \tilde{\beta}}\tilde{\varepsilon}= -{\mathbf{X}}^{\top}\\ (\\p \times n\\). By [Corollary 3](#cor-chain-qf):
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}}\mathopen{}\left(\tilde{\varepsilon}\cdot \tilde{\varepsilon}\right)\mathclose{} &= \mathopen{}\left(-{\mathbf{X}}^{\top}\right)\mathclose{} \mathopen{}\left(2\tilde{\varepsilon}\right)\mathclose{} && \text{(vector chain rule for quadratic forms)} \\ &= -2\\{\mathbf{X}}^{\top}\mathopen{}\left(\tilde{y}- \mathbf{X}\tilde{\beta}\right)\mathclose{} && \text{(substitute } \tilde{\varepsilon}= \tilde{y}- \mathbf{X}\tilde{\beta}\text{)} \end{aligned} \\
>
> Setting this \\p \times 1\\ vector to \\\tilde{0}\\ gives the normal equations \\{\mathbf{X}}^{\top}\mathbf{X}\tilde{\beta}= {\mathbf{X}}^{\top}\tilde{y}\\ of least squares.

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on the chain rule for partial derivatives:
>
> - [The Chain Rule for Partial Derivatives](https://www.youtube.com/watch?v=_XeqwcVLf-s&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Exercises on the Multivariate Chain Rule](https://www.youtube.com/watch?v=zjLUIkF4H6M&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Definition 10 (Matrix derivative (gradient))** For a scalar-valued function \\f(\mathbf{X})\\ of an \\m \times n\\ matrix \\\mathbf{X}\\, the **matrix derivative** is the \\m \times n\\ matrix whose \\(i,j)\\ entry is the partial derivative of \\f\\ with respect to the \\(i,j)\\ entry of \\\mathbf{X}\\:
>
> \\ \left\[\frac{\partial}{\partial \mathbf{X}} f\right\]\_{ij} = \frac{\partial}{\partial X\_{ij}} f \\
>
> Like the vector derivative ([Definition 2](#def-vector-derivative)), the matrix derivative is also called the **gradient** of \\f\\ with respect to \\\mathbf{X}\\, written \\\nabla\_{\mathbf{X}} f\\.

> **NOTE:**
>
> **Example 21 (The matrix derivative of a trace)** Let \\\mathbf{X}\\ be a \\2 \times 2\\ matrix and \\f(\mathbf{X}) = \operatorname{tr}(\mathbf{X}) = X\_{11} + X\_{22}\\ (see [trace](linear-algebra.llms.md#def-trace)). Then \\\frac{\partial}{\partial X\_{ij}} f = 1\\ if \\i = j\\ and \\0\\ otherwise, so:
>
> \\ \frac{\partial}{\partial \mathbf{X}} f = \mathbf{I}\_2 \\

> **NOTE:**
>
> **Theorem 9 (Matrix derivative of the trace of a matrix product)** If \\\mathbf{A}\\ (\\r \times m\\) and \\\mathbf{B}\\ (\\n \times r\\) are constant with respect to the \\m \times n\\ matrix \\\mathbf{X}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \mathbf{X}} \operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})}\_{m \times n} = \underbrace{{\mathbf{A}}^{\top}}\_{m \times r} \underbrace{{\mathbf{B}}^{\top}}\_{r \times n} \\

> **NOTE:**
>
> *Proof*. Write \\A\_{kl}\\, \\X\_{kl}\\, and \\B\_{kl}\\ for the entries of \\\mathbf{A}\\, \\\mathbf{X}\\, and \\\mathbf{B}\\. For entry \\(i,j)\\:
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \mathbf{X}} \operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})\right\]\_{ij} &= \frac{\partial}{\partial X\_{ij}} \sum\_{a=1}^{r} \sum\_{b=1}^{m} \sum\_{c=1}^{n} A\_{ab} X\_{bc} B\_{ca} && \text{(trace of the } r \times r \text{ product } \mathbf{A}\mathbf{X}\mathbf{B} \text{)} \\ &= \sum\_{a=1}^{r} A\_{ai} B\_{ja} && \text{(only the terms with } b = i,\\ c = j \text{ depend on } X\_{ij} \text{)} \\ &= \sum\_{a=1}^{r} \left\[{\mathbf{A}}^{\top}\right\]\_{ia} \left\[{\mathbf{B}}^{\top}\right\]\_{aj} && \text{(definition of the transpose)} \\ &= \left\[{\mathbf{A}}^{\top}\\{\mathbf{B}}^{\top}\right\]\_{ij} && \text{(definition of matrix multiplication)} \end{aligned} \\

> **NOTE:**
>
> *Remark 8* (Why the theorem uses the trace). The trace makes \\\operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})\\ a scalar, so its matrix derivative ([Definition 10](#def-matrix-derivative)) is again an \\m \times n\\ matrix. The matrix product \\\mathbf{A} \mathbf{X} \mathbf{B}\\ itself (without the trace) is an \\r \times r\\ matrix, and each of its \\r^2\\ entries has a partial derivative with respect to each of the \\m n\\ entries of \\\mathbf{X}\\. Those \\r^2 m n\\ partial derivatives form a four-index array (a fourth-order tensor), not a matrix, which is why this result is stated for the scalar \\\operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})\\.
>
> For example, with \\\mathbf{A} = \mathbf{B} = \mathbf{I}\_2\\, the product \\\mathbf{A} \mathbf{X} \mathbf{B} = \mathbf{X}\\ has \\4\\ entries, each with \\4\\ partial derivatives, \\16\\ in all, while its trace \\X\_{11} + X\_{22}\\ has the \\4\\ partial derivatives that form the \\2 \times 2\\ matrix \\\mathbf{I}\_2\\ of [Example 21](#exm-matrix-derivative).

> **NOTE:**
>
> **Example 22 (Differentiating a weighted trace)** Let \\\mathbf{A} = \mathbf{I}\_2\\ (\\2 \times 2\\) and \\\mathbf{B} = \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix}\\ (\\2 \times 2\\). Then \\\operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B}) = 2X\_{11} + 3X\_{22}\\, and:
>
> \\ \underbrace{\frac{\partial}{\partial \mathbf{X}} \operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})}\_{2 \times 2} = \underbrace{{\mathbf{A}}^{\top}}\_{2 \times 2} \underbrace{{\mathbf{B}}^{\top}}\_{2 \times 2} = \mathbf{I}\_2 \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix} = \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix} \\

> **NOTE:**
>
> **Exercise 7 (A gradient that does not mention its variable)** Fix
>
> \\A = \begin{bmatrix} 2 & -1 & 0 \\ 4 & 3 & -2 \end{bmatrix}\\
>
> let \\W \in \mathbb{R}^{2 \times 3}\\ vary, and define
>
> \\g(W) = \sum\_{i=1}^{2} \sum\_{j=1}^{3} W\_{ij} A\_{ij}\\
>
> which is the entry-by-entry version of the inner product for matrices. Compute \\\nabla_W\\ g(W)\\, and say what is unusual about the answer.

> **NOTE:**
>
> *Solution 7*. Written out over the six positions,
>
> \\g(W) = 2W\_{11} - W\_{12} + 0\\W\_{13} + 4W\_{21} + 3W\_{22} - 2W\_{23}\\
>
> Each \\W\_{ij}\\ appears in exactly one term, multiplied by \\A\_{ij}\\ and by nothing else, so differentiating with respect to it leaves \\A\_{ij}\\ behind:
>
> \\\frac{\partial g}{\partial W\_{ij}} = A\_{ij}\\
>
> Collecting those partial derivatives into a matrix of the same shape as \\W\\, as [Table 1](#tbl-gradient-shape) requires,
>
> \\\nabla_W\\ g(W) = \begin{bmatrix} 2 & -1 & 0 \\ 4 & 3 & -2 \end{bmatrix} = A\\
>
> What is unusual is that the gradient came out **constant**: it does not mention \\W\\ at all. The constant answer is not a quirk of this particular \\A\\. \\g\\ is a linear function of \\W\\, and the gradient of a linear function is constant everywhere, for the same reason the derivative of \\f(w) = cw\\ is \\c\\ no matter where it is evaluated.
>
> A constant gradient is the easy case, and it is not the case we usually face. Most functions we minimize are curved — the residual sum of squares of a linear model ([Definition 9](#def-residual)) is the standard example — so their gradient changes from point to point and the downhill direction has to be worked out afresh at every step.

## 2 Second derivatives and optimality conditions

> **NOTE:**
>
> This section is adapted from the multivariate calculus and optimality-condition parts of Zhou ([2024](#ref-zhou2024optim)), used under the MIT License (see the license text in [Linear Algebra](linear-algebra.llms.md#sec-subspaces)). The source states the second-order Taylor approximation and the optimality conditions without [proof](notation.llms.md#def-proof); here they are proved from the one-variable Taylor theorem, and the approximation is made exact by evaluating the Hessian at a point between \\\tilde{z}\\ and \\\tilde{z} + \tilde{h}\\. The source calls points with zero gradient critical points; here they are stationary points, because the [calculus notes](calculus.llms.md#def-critical-point) give “critical point” a wider meaning. These parts of the source are not part of this section:
>
> - its one-variable Taylor example and its plots
> - matrix calculus
> - convexity
> - Lagrange multipliers
> - Newton’s method and gradient descent

A local minimizer of a differentiable function on an open interval is a [flat point](calculus.llms.md#def-flat-point), and, at a flat point, a positive [second derivative](calculus.llms.md#def-second-derivative) guarantees a strict local minimum. This section extends both facts to a function \\f\\ of a \\p \times 1\\ vector \\\tilde{x}\\: the gradient \\\frac{\partial}{\partial \tilde{x}} f(\tilde{x})\\ ([Definition 2](#def-vector-derivative)) takes the place of the first derivative, and a \\p \times p\\ matrix of second partial derivatives takes the place of the second; both facts are proved in this section, for every \\p \ge 1\\. Throughout, \\\frac{\partial}{\partial \tilde{x}} f(\tilde{z})\\ means the gradient evaluated at \\\tilde{x}= \tilde{z}\\.

> **NOTE:**
>
> **Definition 11 (Open and closed balls)** Let \\\tilde{x}\in \mathbb{R}^p\\ and \\r \> 0\\. The **open ball** of radius \\r\\ around \\\tilde{x}\\ is the set \\\mathopen{}\left\\\tilde{y}\in \mathbb{R}^p : \mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{} \< r\right\\\mathclose{}\\, of points whose distance from \\\tilde{x}\\ (the [Euclidean norm](linear-algebra.llms.md#def-euclidean-norm) of the difference) is less than \\r\\. The **closed ball** of radius \\r\\ around \\\tilde{x}\\ is \\\mathopen{}\left\\\tilde{y}\in \mathbb{R}^p : \mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{} \le r\right\\\mathclose{}\\. The open and closed balls of radius \\1\\ around \\\tilde{0}\\ are the open and closed **unit balls**.

> **NOTE:**
>
> **Example 23 (Points in the unit balls of \\\mathbb{R}^2\\)**  
>
> - \\{(0.5, 0.5)}^{\top}\\ has \\\mathopen{}\left\lVert{(0.5, 0.5)}^{\top}\right\rVert\mathclose{}^2 = 0.25 + 0.25 = 0.5 \< 1\\, so it is in both the open and the closed unit ball.
> - \\{(0.6, 0.8)}^{\top}\\ has \\\mathopen{}\left\lVert{(0.6, 0.8)}^{\top}\right\rVert\mathclose{}^2 = 0.36 + 0.64 = 1\\, so it is in the closed unit ball but not the open one.
> - For \\p = 1\\, the open ball of radius \\r\\ around \\c\\ is the open interval \\(c - r, c + r)\\.

> **NOTE:**
>
> **Definition 12 (Second partial derivative and mixed partial derivative)** Let \\f\\ be a scalar-valued function of a \\p \times 1\\ vector \\\tilde{x}\\, and let \\i, j \in \mathopen{}\left\\1, \ldots, p\right\\\mathclose{}\\. Suppose the partial derivative \\\frac{\partial}{\partial x_j} f\\ ([Definition 1](#def-partial-derivative)) exists at every point of an open ball around \\\tilde{x}\\ ([Definition 11](#def-ball)). The **second partial derivative** of \\f\\ at \\\tilde{x}\\, first with respect to \\x_j\\ and then with respect to \\x_i\\, is
>
> \\ \frac{\partial}{\partial x_i} \mathopen{}\left(\frac{\partial}{\partial x_j} f(\tilde{x})\right)\mathclose{}, \\
>
> the partial derivative with respect to \\x_i\\ of the function \\\frac{\partial}{\partial x_j} f\\, when it exists. When \\i \ne j\\, it is a **mixed partial derivative**.

> **NOTE:**
>
> **Example 24 (Second partial derivatives of \\x_1^2 x_2 + 3 x_2\\)** For \\f(\tilde{x}) = x_1^2 x_2 + 3 x_2\\ of [Example 1](#exm-partial-derivative), \\\frac{\partial}{\partial x_1} f(\tilde{x}) = 2 x_1 x_2\\ and \\\frac{\partial}{\partial x_2} f(\tilde{x}) = x_1^2 + 3\\. Differentiating each of these again:
>
> - \\\frac{\partial}{\partial x_1} \mathopen{}\left(\frac{\partial}{\partial x_1} f(\tilde{x})\right)\mathclose{} = \frac{\partial}{\partial x_1} (2 x_1 x_2) = 2 x_2\\;
> - \\\frac{\partial}{\partial x_2} \mathopen{}\left(\frac{\partial}{\partial x_1} f(\tilde{x})\right)\mathclose{} = \frac{\partial}{\partial x_2} (2 x_1 x_2) = 2 x_1\\;
> - \\\frac{\partial}{\partial x_1} \mathopen{}\left(\frac{\partial}{\partial x_2} f(\tilde{x})\right)\mathclose{} = \frac{\partial}{\partial x_1} (x_1^2 + 3) = 2 x_1\\;
> - \\\frac{\partial}{\partial x_2} \mathopen{}\left(\frac{\partial}{\partial x_2} f(\tilde{x})\right)\mathclose{} = \frac{\partial}{\partial x_2} (x_1^2 + 3) = 0\\.
>
> The two mixed partial derivatives are both \\2 x_1\\.

> **NOTE:**
>
> **Definition 13 (Hessian matrix)** Let \\f\\ be a scalar-valued function of a \\p \times 1\\ vector \\\tilde{x}\\ whose first partial derivatives exist on an open ball around \\\tilde{x}\\ ([Definition 11](#def-ball)) and whose second partial derivatives ([Definition 12](#def-second-partial-derivative)) exist at \\\tilde{x}\\. The **Hessian matrix** of \\f\\ at \\\tilde{x}\\ is the derivative ([Definition 6](#def-vector-valued-derivative)) of the transposed gradient \\{\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} f(\tilde{x})\right)\mathclose{}}^{\top}\\ ([Definition 2](#def-vector-derivative)):
>
> \\ \underbrace{\mathbf{H}\_f(\tilde{x})}\_{p \times p} \stackrel{\text{def}}{=}\frac{\partial}{\partial \tilde{x}} {\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} f(\tilde{x})\right)\mathclose{}}^{\top}. \tag{4}\\
>
> By [Theorem 1](#thm-row-deriv-tp-col-deriv), the transposed gradient is the row-vector derivative \\\frac{\partial f(\tilde{x})}{\partial {\tilde{x}}^{\top}}\\ ([Definition 5](#def-row-vector-derivative)), so the Hessian can also be written
>
> \\ \mathbf{H}\_f(\tilde{x}) = \frac{\partial}{\partial \tilde{x}} \mathopen{}\left(\frac{\partial f(\tilde{x})}{\partial {\tilde{x}}^{\top}}\right)\mathclose{} = \frac{\partial^2 f(\tilde{x})}{\partial \tilde{x} \partial {\tilde{x}}^{\top}}. \tag{5}\\
>
> Both forms follow the shape rule of matrix multiplication ([Remark 1](#rem-row-derivative-shape)): the \\p \times 1\\ column-vector operator \\\frac{\partial}{\partial \tilde{x}}\\ stands on the left of a \\1 \times p\\ row vector, giving a \\p \times p\\ matrix.
>
> By [Definition 6](#def-vector-valued-derivative), with \\y_j = \frac{\partial}{\partial x_j} f(\tilde{x})\\, the \\(i, j)\\ entry of the Hessian is
>
> \\ \mathopen{}\left\[\mathbf{H}\_f(\tilde{x})\right\]\mathclose{}\_{ij} = \frac{\partial}{\partial x_i} \mathopen{}\left(\frac{\partial}{\partial x_j} f(\tilde{x})\right)\mathclose{}. \\

> **NOTE:**
>
> **Example 25 (A Hessian matrix)** Let \\f(\tilde{x}) = e^{2x_1 + x_2} - x_1\\ for \\\tilde{x}= {(x_1, x_2)}^{\top}\\, where \\e\\ is [Euler’s number](algebra.llms.md#def-euler-number), and write \\u = 2x_1 + x_2\\. By the [chain rule](calculus.llms.md#thm-chain-rule), \\\frac{\partial}{\partial x_1} e^{u} = 2 e^{u}\\ and \\\frac{\partial}{\partial x_2} e^{u} = e^{u}\\, so
>
> \\ \frac{\partial}{\partial \tilde{x}} f(\tilde{x}) = \begin{bmatrix} 2 e^{u} - 1 \\ e^{u} \end{bmatrix}. \\
>
> Differentiating each entry again,
>
> \\ \mathbf{H}\_f(\tilde{x}) = \begin{bmatrix} \frac{\partial}{\partial x_1} (2 e^{u} - 1) & \frac{\partial}{\partial x_1} e^{u} \\ \frac{\partial}{\partial x_2} (2 e^{u} - 1) & \frac{\partial}{\partial x_2} e^{u} \end{bmatrix} = \begin{bmatrix} 4 e^{u} & 2 e^{u} \\ 2 e^{u} & e^{u} \end{bmatrix}, \\
>
> and at \\\tilde{x}= \tilde{0}\\, where \\u = 0\\, \\\mathbf{H}\_f(\tilde{0}) = \begin{bmatrix} 4 & 2 \\ 2 & 1 \end{bmatrix}\\.

> **NOTE:**
>
> **Example 26 (A function with a gradient but no Hessian at a point)** Let \\f(\tilde{x}) = x_1 \mathopen{}\left\|x_1\right\|\mathclose{}\\ for \\\tilde{x}= {(x_1, x_2)}^{\top}\\, where \\\mathopen{}\left\|\cdot\right\|\mathclose{}\\ is the [absolute value](algebra.llms.md#def-absolute-value). For \\x_1 \> 0\\, \\f = x_1^2\\ and \\\frac{\partial}{\partial x_1} f = 2 x_1\\; for \\x_1 \< 0\\, \\f = -x_1^2\\ and \\\frac{\partial}{\partial x_1} f = -2 x_1\\; and at \\x_1 = 0\\ the [difference quotient](calculus.llms.md#def-difference-quotient) is \\h \mathopen{}\left\|h\right\|\mathclose{} / h = \mathopen{}\left\|h\right\|\mathclose{} \to 0\\. So the gradient exists everywhere: it is \\{(2 \mathopen{}\left\|x_1\right\|\mathclose{},\\ 0)}^{\top}\\. But \\2 \mathopen{}\left\|x_1\right\|\mathclose{}\\ has no derivative in \\x_1\\ at \\x_1 = 0\\ (its difference quotient \\2 \mathopen{}\left\|h\right\|\mathclose{} / h\\ is \\2\\ for \\h \> 0\\ and \\-2\\ for \\h \< 0\\), so \\\mathopen{}\left\[\mathbf{H}\_f(\tilde{x})\right\]\mathclose{}\_{11}\\, and with it the Hessian, does not exist at any \\\tilde{x}\\ with \\x_1 = 0\\.

> **TIP:**
>
> Jon Krohn’s “Calculus for Machine Learning” YouTube playlist has videos on second and higher partial derivatives:
>
> - [Higher-Order Partial Derivatives](https://www.youtube.com/watch?v=3HAOTYo39A8&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)
> - [Exercise on Higher-Order Partial Derivatives](https://www.youtube.com/watch?v=E7ZN4y2tW0I&list=PLRDl2inPrWQVu2OvnTvtkRpJ-wz-URMJx)

> **NOTE:**
>
> **Definition 14 (Continuity in several variables)** A function \\f\\ from \\\mathbb{R}^p\\ to \\\mathbb{R}^q\\ is **continuous at** \\\tilde{x}\\ if for every \\\varepsilon \> 0\\ there is a \\\delta \> 0\\ such that \\\mathopen{}\left\lVert f(\tilde{y}) - f(\tilde{x})\right\rVert\mathclose{} \< \varepsilon\\ whenever \\\mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{} \< \delta\\. It is **continuous on** a set if it is continuous at every point of the set. For \\q = 1\\, \\\mathopen{}\left\lVert f(\tilde{y}) - f(\tilde{x})\right\rVert\mathclose{} = \mathopen{}\left\|f(\tilde{y}) - f(\tilde{x})\right\|\mathclose{}\\. For \\p = q = 1\\, this definition is the usual [continuity](calculus.llms.md#def-continuous), written out with the \\\varepsilon\\-\\\delta\\ definition of the limit \\\lim\_{y \to x} f(y) = f(x)\\.
>
> Continuity survives the usual operations:
>
> - A [composition](sets-functions.llms.md#def-composition) of continuous functions is continuous: choose the \\\delta\\ for the [outer function](sets-functions.llms.md#def-composition) first, and use it as the \\\varepsilon\\ for the inner one.
> - A sum \\f + g\\ of continuous real-valued functions is continuous, since \\\mathopen{}\left\|(f + g)(\tilde{y}) - (f + g)(\tilde{x})\right\|\mathclose{} \le \mathopen{}\left\|f(\tilde{y}) - f(\tilde{x})\right\|\mathclose{} + \mathopen{}\left\|g(\tilde{y}) - g(\tilde{x})\right\|\mathclose{}\\: use \\\varepsilon / 2\\ for each.
> - A constant multiple \\c f\\ is continuous, since \\\mathopen{}\left\|c f(\tilde{y}) - c f(\tilde{x})\right\|\mathclose{} = \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\|f(\tilde{y}) - f(\tilde{x})\right\|\mathclose{}\\: use \\\varepsilon / (\mathopen{}\left\|c\right\|\mathclose{} + 1)\\ for \\f\\.

> **NOTE:**
>
> **Example 27 (A continuous function, and a discontinuous one)**  
>
> - \\f(\tilde{x}) = x_1 + x_2\\ is continuous at every \\\tilde{x}\\. Each \\\mathopen{}\left\|y_i - x_i\right\|\mathclose{} \le \mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{}\\, since the squared length is a sum of nonnegative squares, so
>
>   \\ \begin{aligned} \mathopen{}\left\|f(\tilde{y}) - f(\tilde{x})\right\|\mathclose{} &= \mathopen{}\left\|(y_1 - x_1) + (y_2 - x_2)\right\|\mathclose{} && \text{(subtract)} \\ &\le \mathopen{}\left\|y_1 - x_1\right\|\mathclose{} + \mathopen{}\left\|y_2 - x_2\right\|\mathclose{} && \text{(triangle inequality for numbers)} \\ &\le 2\\\mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{}, && \text{(each term is at most } \mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{} \text{)} \end{aligned} \\
>
>   which is less than \\\varepsilon\\ whenever \\\mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{} \< \delta = \varepsilon / 2\\.
>
> - \\f(\tilde{x}) = 1\\ if \\x_1 \> 0\\ and \\f(\tilde{x}) = 0\\ otherwise is not continuous at \\\tilde{0}\\: for \\\varepsilon = \tfrac{1}{2}\\ and any \\\delta \> 0\\, the point \\\tilde{y}= {(\delta / 2, 0)}^{\top}\\ has \\\mathopen{}\left\lVert\tilde{y}- \tilde{0}\right\rVert\mathclose{} = \delta / 2 \< \delta\\ but \\\mathopen{}\left\|f(\tilde{y}) - f(\tilde{0})\right\|\mathclose{} = 1 \> \tfrac{1}{2}\\.

> **NOTE:**
>
> **Example 28 (Partial derivatives can exist where a function is not continuous)** Let \\f : \mathbb{R}^2 \to \mathbb{R}\\ be
>
> \\ f(\tilde{x}) = \begin{cases} \dfrac{x_1 x_2}{x_1^2 + x_2^2} & \text{if } \tilde{x}\ne \tilde{0}, \\ 0 & \text{if } \tilde{x}= \tilde{0}. \end{cases} \\
>
> **Both partial derivatives exist at \\\tilde{0}\\.** For \\h \ne 0\\, \\f(h, 0) = \frac{h \cdot 0}{h^2 + 0} = 0\\, so
>
> \\ \begin{aligned} \frac{f(0 + h, 0) - f(0, 0)}{h} &= \frac{0 - 0}{h} && \text{(} f(h, 0) = 0 \text{ and } f(0, 0) = 0 \text{)} \\ &= 0, && \text{(} 0 / h = 0 \text{ for } h \ne 0 \text{)} \end{aligned} \\
>
> and the limit as \\h \to 0\\ is \\0\\: \\\frac{\partial}{\partial x_1} f(\tilde{0}) = 0\\ ([Definition 1](#def-partial-derivative)). The same steps with \\f(0, h) = 0\\ give \\\frac{\partial}{\partial x_2} f(\tilde{0}) = 0\\.
>
> **But \\f\\ is not continuous at \\\tilde{0}\\** ([Definition 14](#def-continuous-several)). Take \\\varepsilon = \tfrac{1}{4}\\ and any \\\delta \> 0\\, and let \\t = \delta / 2\\ and \\\tilde{y}= {(t, t)}^{\top}\\. Then \\\mathopen{}\left\lVert\tilde{y}- \tilde{0}\right\rVert\mathclose{} = \sqrt{t^2 + t^2} = t \sqrt{2} = \delta / \sqrt{2} \< \delta\\, but
>
> \\ \begin{aligned} \mathopen{}\left\|f(\tilde{y}) - f(\tilde{0})\right\|\mathclose{} &= \mathopen{}\left\|\frac{t \cdot t}{t^2 + t^2} - 0\right\|\mathclose{} && \text{(} \tilde{y}\ne \tilde{0}\text{, since } t \> 0 \text{)} \\ &= \frac{t^2}{2 t^2} && \text{(} t^2 + t^2 = 2 t^2 \text{)} \\ &= \tfrac{1}{2}, && \text{(cancel } t^2 \> 0 \text{)} \end{aligned} \\
>
> which is more than \\\varepsilon = \tfrac{1}{4}\\.
>
> The partial derivatives only look along the two coordinate axes, where \\f\\ is \\0\\; along the line \\x_1 = x_2\\, \\f\\ is \\\tfrac{1}{2}\\ everywhere except at \\\tilde{0}\\. So partial derivatives existing at a point says little about how \\f\\ behaves near it.

> **NOTE:**
>
> **Theorem 10 (Symmetry of the Hessian)** If the second partial derivatives of \\f\\ exist and are continuous ([Definition 14](#def-continuous-several)) on an open ball around \\\tilde{x}\\ ([Definition 11](#def-ball)), then \\\frac{\partial}{\partial x_i} \mathopen{}\left(\frac{\partial}{\partial x_j} f(\tilde{x})\right)\mathclose{} = \frac{\partial}{\partial x_j} \mathopen{}\left(\frac{\partial}{\partial x_i} f(\tilde{x})\right)\mathclose{}\\ for all \\i, j\\, so \\\mathbf{H}\_f(\tilde{x})\\ ([Definition 13](#def-hessian)) is symmetric ([symmetric matrix](linear-algebra.llms.md#def-symmetric-matrix)).

The proof applies the one-variable mean value theorem twice, which these notes do not develop; see ([Rudin 1976](#ref-rudin1976principles), Theorem 9.41), which is stated for two variables: apply it to \\f\\ as a function of \\x_i\\ and \\x_j\\, with the other coordinates held fixed.

> **NOTE:**
>
> **Example 29 (Mixed partial derivatives agree)** In [Example 25](#exm-hessian), the \\(1, 2)\\ and \\(2, 1)\\ entries of \\\mathbf{H}\_f(\tilde{x})\\ are both \\2 e^{2x_1 + x_2}\\.

> **NOTE:**
>
> **Example 30 (Without continuity, the mixed partials can differ)** Let \\f(x_1, x_2) = \dfrac{x_1 x_2 (x_1^2 - x_2^2)}{x_1^2 + x_2^2}\\ for \\\tilde{x}\ne \tilde{0}\\, and \\f(\tilde{0}) = 0\\. For \\x_2 \ne 0\\, the partial derivative ([Definition 1](#def-partial-derivative)) in \\x_1\\ at \\(0, x_2)\\ is
>
> \\ \begin{aligned} \frac{\partial}{\partial x_1} f(0, x_2) &= \lim\_{h \to 0} \frac{f(h, x_2) - f(0, x_2)}{h} && \text{(definition of the partial derivative, }\href{#def-partial-derivative}{\text{Definition~1}}\text{)} \\ &= \lim\_{h \to 0} \frac{x_2 (h^2 - x_2^2)}{h^2 + x_2^2} && \text{(} f(0, x_2) = 0 \text{; cancel } h \text{)} \\ &= \frac{x_2 \cdot (-x_2^2)}{x_2^2} = -x_2, && \text{(the quotient is continuous at } h = 0 \text{)} \end{aligned} \\
>
> and \\\frac{\partial}{\partial x_1} f(\tilde{0}) = \lim\_{h \to 0} (0 - 0)/h = 0\\, so \\\frac{\partial}{\partial x_1} f(0, x_2) = -x_2\\ holds at \\x_2 = 0\\ too. In the same way, with the roles of \\x_1\\ and \\x_2\\ swapped, \\f(x_1, k) / k = x_1 (x_1^2 - k^2) / (x_1^2 + k^2) \to x_1\\, so \\\frac{\partial}{\partial x_2} f(x_1, 0) = x_1\\ for every \\x_1\\. So at \\\tilde{0}\\ ([Definition 13](#def-hessian))
>
> \\ \mathopen{}\left\[\mathbf{H}\_f(\tilde{0})\right\]\mathclose{}\_{21} = \frac{\partial}{\partial x_2} \mathopen{}\left(\frac{\partial}{\partial x_1} f\right)\mathclose{} = \frac{d }{d x_2} (-x_2) = -1, \qquad \mathopen{}\left\[\mathbf{H}\_f(\tilde{0})\right\]\mathclose{}\_{12} = \frac{\partial}{\partial x_1} \mathopen{}\left(\frac{\partial}{\partial x_2} f\right)\mathclose{} = \frac{d }{d x_1} x_1 = 1: \\
>
> the Hessian at \\\tilde{0}\\ is not symmetric. By [Theorem 10](#thm-hessian-symmetric), then, the second partial derivatives of this \\f\\ cannot all be continuous near \\\tilde{0}\\.

> **NOTE:**
>
> **Theorem 11 (Hessian of a quadratic form)** If \\\mathbf{S}\\ is a symmetric \\p \times p\\ matrix that is constant with respect to \\\tilde{x}\\, then \\f(\tilde{x}) = {\tilde{x}}^{\top} \mathbf{S} \tilde{x}\\ has \\\mathbf{H}\_f(\tilde{x}) = 2 \mathbf{S}\\ for every \\\tilde{x}\\.

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \mathbf{H}\_f(\tilde{x}) &= \frac{\partial}{\partial \tilde{x}} {\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} ({\tilde{x}}^{\top} \mathbf{S} \tilde{x})\right)\mathclose{}}^{\top} && \text{(}\href{#def-hessian}{\text{Definition~13}}\text{)} \\ &= \frac{\partial}{\partial \tilde{x}} {\mathopen{}\left(2 \mathbf{S} \tilde{x}\right)\mathclose{}}^{\top} && \text{(}\href{#thm-quadratic-form}{\text{Theorem~7}}\text{)} \\ &= \mathopen{}\left(\frac{\partial}{\partial \tilde{x}} \tilde{x}\right)\mathclose{}\\{(2 \mathbf{S})}^{\top} && \text{(}\href{#thm-deriv-matrix-vector}{\text{Theorem~5}}\text{, with } \mathbf{A} = 2 \mathbf{S} \text{ and } \tilde{v} = \tilde{x}\text{; } \frac{\partial}{\partial \tilde{x}} {(2 \mathbf{S} \tilde{x})}^{\top} = \frac{\partial}{\partial \tilde{x}} (2 \mathbf{S} \tilde{x}) \text{, }\href{#def-vector-valued-derivative}{\text{Definition~6}}\text{)} \\ &= \mathbf{I}\_p\\{(2 \mathbf{S})}^{\top} && \text{(} \frac{\partial}{\partial \tilde{x}} \tilde{x}= \mathbf{I}\_p \text{, }\href{#rem-deriv-matrix-vector-special-case}{\text{Remark~3}}\text{)} \\ &= 2 \mathbf{S}. && \text{(} \mathbf{S} \text{ is symmetric)} \end{aligned} \\

> **NOTE:**
>
> **Example 31 (The Hessian of a \\2 \times 2\\ quadratic form)** For \\\mathbf{S} = \begin{bmatrix} 3 & 1 \\ 1 & 2 \end{bmatrix}\\ as in [Example 16](#exm-deriv-quadratic-form), [Theorem 11](#thm-hessian-quadratic) gives \\\mathbf{H}\_f(\tilde{x}) = \begin{bmatrix} 6 & 2 \\ 2 & 4 \end{bmatrix}\\. Directly, the gradient found there, with \\\beta_i\\ renamed \\x_i\\, is \\{(6 x_1 + 2 x_2,\\ 2 x_1 + 4 x_2)}^{\top}\\, and differentiating its entries by \\x_1\\ and by \\x_2\\ ([Definition 13](#def-hessian)) gives
>
> \\ \mathbf{H}\_f(\tilde{x}) = \begin{bmatrix} \frac{\partial}{\partial x_1} (6 x_1 + 2 x_2) & \frac{\partial}{\partial x_1} (2 x_1 + 4 x_2) \\ \frac{\partial}{\partial x_2} (6 x_1 + 2 x_2) & \frac{\partial}{\partial x_2} (2 x_1 + 4 x_2) \end{bmatrix} = \begin{bmatrix} 6 & 2 \\ 2 & 4 \end{bmatrix}. \\

> **NOTE:**
>
> **Theorem 12 (A minimizer has derivative zero)** Let \\g\\ be a [real](notation.llms.md#def-real-numbers)-valued function on an [open interval](sets-functions.llms.md#def-interval) containing \\c\\, and let \\g\\ be [differentiable](calculus.llms.md#def-differentiable) at \\c\\. If \\c\\ is a [local minimizer](algebra.llms.md#def-local-minimizer) of \\g\\, then \\g'(c) = 0\\.

> **NOTE:**
>
> *Proof*. Take \\\delta \> 0\\ as in the definition of a local minimizer, shrunk if needed so that \\(c - \delta, c + \delta)\\ lies inside the interval; then \\g(c) \le g(c + h)\\ whenever \\\mathopen{}\left\|h\right\|\mathclose{} \< \delta\\. For \\0 \< h \< \delta\\, the difference quotient is
>
> \\ \frac{g(c + h) - g(c)}{h} \ge 0, \\
>
> because its numerator is at least \\0\\ and its denominator is positive. As \\h \to 0\\ from the right, these quotients tend to \\g'(c)\\ (the two-sided limit exists, so the [one-sided limit](calculus.llms.md#def-one-sided-limit) equals it), and a limit of numbers that are all at least \\0\\ is at least \\0\\; so \\g'(c) \ge 0\\. For \\-\delta \< h \< 0\\, the numerator is still at least \\0\\ but the denominator is negative, so the quotient is at most \\0\\, and in the same way, with \\h \to 0\\ from the left, \\g'(c) \le 0\\. Together, \\g'(c) = 0\\.

> **NOTE:**
>
> **Example 32 (Applying the test, and its limits)**  
>
> - \\g(x) = (x - 2)^2\\ has its minimizer at \\c = 2\\, and \\g'(2) = 2 (2 - 2) = 0\\.
> - The [converse](notation.llms.md#def-converse) fails: \\g(x) = x^3\\ has \\g'(0) = 3 \cdot 0^2 = 0\\, but \\0\\ is not a local minimizer, since \\g(-h) = -h^3 \< 0 = g(0)\\ for every \\h \> 0\\.
> - Differentiability is needed: \\g(x) = \mathopen{}\left\|x\right\|\mathclose{}\\ has its minimizer at \\0\\, but the difference quotient \\\mathopen{}\left\|h\right\|\mathclose{} / h\\ is \\1\\ for \\h \> 0\\ and \\-1\\ for \\h \< 0\\, so it has no limit and \\g'(0)\\ does not exist.

> **NOTE:**
>
> **Definition 15 (Stationary point)** Let \\f\\ be a scalar-valued function of a \\p \times 1\\ vector \\\tilde{x}\\. A point \\\tilde{z}\\ at which the gradient exists and
>
> \\ \frac{\partial}{\partial \tilde{x}} f(\tilde{z}) = \tilde{0}\_{p \times 1} \\
>
> is a **stationary point** of \\f\\. For \\p = 1\\, this is a [flat point](calculus.llms.md#def-flat-point).

> **NOTE:**
>
> **Example 33 (A stationary point, and a point that is not one)** Let \\f(\tilde{x}) = x_1^2 + x_2^2 - 2 x_1\\. Its gradient is \\{(2 x_1 - 2,\\ 2 x_2)}^{\top}\\, which is \\\tilde{0}\_{2 \times 1}\\ exactly when \\x_1 = 1\\ and \\x_2 = 0\\. So \\{(1, 0)}^{\top}\\ is its only stationary point, and \\\tilde{0}\\ is not one: the gradient there is \\{(-2, 0)}^{\top}\\.

> **NOTE:**
>
> **Theorem 13 (First-order necessary condition)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\. If \\\tilde{x}^\*\\ is a [local minimizer](algebra.llms.md#def-local-minimizer) of \\f\\ and the gradient of \\f\\ exists at \\\tilde{x}^\*\\, then \\\tilde{x}^\*\\ is a stationary point of \\f\\ ([Definition 15](#def-stationary-point)).

> **NOTE:**
>
> *Proof*. Take \\\delta \> 0\\ as in the definition of a local minimizer. Fix \\i \in \mathopen{}\left\\1, \ldots, p\right\\\mathclose{}\\, let \\\tilde{e}\_i\\ be the vector with \\1\\ in entry \\i\\ and \\0\\ elsewhere, and let \\g_i(t) \stackrel{\text{def}}{=}f(\tilde{x}^\* + t\\\tilde{e}\_i)\\ for \\t \in \mathbb{R}\\. For \\\mathopen{}\left\|t\right\|\mathclose{} \< \delta\\, \\\mathopen{}\left\lVert(\tilde{x}^\* + t\\\tilde{e}\_i) - \tilde{x}^\*\right\rVert\mathclose{} = \mathopen{}\left\|t\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{e}\_i\right\rVert\mathclose{} = \mathopen{}\left\|t\right\|\mathclose{} \< \delta\\, so \\g_i(0) = f(\tilde{x}^\*) \le f(\tilde{x}^\* + t\\\tilde{e}\_i) = g_i(t)\\: \\0\\ is a local minimizer of \\g_i\\. Moving \\\tilde{x}\\ from \\\tilde{x}^\*\\ along \\\tilde{e}\_i\\ changes only \\x_i\\, so \\g_i'(0)\\ is the partial derivative \\\frac{\partial}{\partial x_i} f(\tilde{x}^\*)\\, which exists because the gradient does. By [Theorem 12](#thm-fermat), \\\frac{\partial}{\partial x_i} f(\tilde{x}^\*) = g_i'(0) = 0\\. The equation \\g_i'(0) = 0\\ holds for every \\i\\, so every entry of the gradient at \\\tilde{x}^\*\\ is \\0\\ ([Definition 2](#def-vector-derivative)).

> **NOTE:**
>
> **Example 34 (Using the condition to locate, and to rule out, minimizers)**  
>
> - For \\f(\tilde{x}) = x_1^2 + x_2^2 - 2 x_1\\ of [Example 33](#exm-stationary-point), any local minimizer must be the stationary point \\{(1, 0)}^{\top}\\. It is one: completing the square, \\f(\tilde{x}) = (x_1 - 1)^2 + x_2^2 - 1 \ge -1 = f(1, 0)\\.
> - For \\f(\tilde{x}) = e^{2x_1 + x_2} - x_1\\ of [Example 25](#exm-hessian), the second entry of the gradient is \\e^{2x_1 + x_2} \> 0\\, so \\f\\ has no stationary point, and so no local minimizer.
> - The converse fails: \\f(\tilde{x}) = x_1^2 - x_2^2\\ has gradient \\{(2 x_1,\\ -2 x_2)}^{\top}\\, so \\\tilde{0}\\ is a stationary point, but \\f(0, t) = -t^2 \< 0 = f(\tilde{0})\\ for every \\t \ne 0\\, so \\\tilde{0}\\ is not a local minimizer.

> **NOTE:**
>
> **Theorem 14 (Taylor’s theorem with a second-order remainder)** Let \\a \< b\\, and let \\g\\ be a real-valued function on \\\[a, b\]\\ whose derivative \\g'\\ is [continuous](calculus.llms.md#def-continuous) on \\\[a, b\]\\ and whose [second derivative](calculus.llms.md#def-second-derivative) \\g''\\ exists at every point of \\(a, b)\\. Then there is a \\\tau \in (a, b)\\ with
>
> \\ g(b) = g(a) + g'(a)\\(b - a) + \frac{1}{2}\\g''(\tau)\\(b - a)^2. \\

This theorem is the case \\n = 2\\ of ([Rudin 1976](#ref-rudin1976principles), Theorem 5.15); its proof uses the mean value theorem, which these notes do not develop.

> **NOTE:**
>
> **Example 35 (The remainder point for \\e^x\\)** Take \\g(x) = e^x\\ on \\\[0, 1\]\\, so \\g' = g'' = g\\. [Theorem 14](#thm-taylor-1d) says \\e = 1 + 1 + \tfrac{1}{2}\\e^{\tau}\\ for some \\\tau \in (0, 1)\\. Solving, \\e^{\tau} = 2 (e - 2) \approx 2 \times 0.71828 = 1.43656\\, so \\\tau = \log 1.43656 \approx 0.362\\ ([natural logarithm](algebra.llms.md#def-natural-log)), which is in \\(0, 1)\\.

> **NOTE:**
>
> **Theorem 15 (Second-order Taylor theorem in several variables)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first and second partial derivatives that are continuous on \\\mathbb{R}^p\\ ([Definition 14](#def-continuous-several)), and let \\\tilde{z}, \tilde{h} \in \mathbb{R}^p\\. Then there is a \\\tau \in (0, 1)\\ with
>
> \\ f(\tilde{z} + \tilde{h}) = f(\tilde{z}) + {\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} f(\tilde{z})\right)\mathclose{}}^{\top} \tilde{h} + \frac{1}{2}\\{\tilde{h}}^{\top}\\\mathbf{H}\_f(\tilde{z} + \tau \tilde{h})\\\tilde{h}. \\

> **NOTE:**
>
> *Proof*. Let \\g(t) \stackrel{\text{def}}{=}f(\tilde{z} + t \tilde{h})\\ for \\t \in \mathbb{R}\\, the values of \\f\\ along the line through \\\tilde{z}\\ in the direction \\\tilde{h}\\. The [inner function](sets-functions.llms.md#def-composition) \\\tilde{y}(t) = \tilde{z} + t \tilde{h}\\ has entries \\y_j = z_j + t h_j\\, so \\\frac{\partial}{\partial t} y_j = h_j\\, and its derivative ([Definition 6](#def-vector-valued-derivative)) is the \\1 \times p\\ matrix \\{\tilde{h}}^{\top}\\. By the vector chain rule ([Theorem 8](#thm-chain-vec), with its input \\t\\ of length \\1\\, its inner function \\\tilde{y}(t) = \tilde{z} + t \tilde{h}\\, and its outer function \\f\\),
>
> \\ \begin{aligned} g'(t) &= {\tilde{h}}^{\top}\\\frac{\partial}{\partial \tilde{x}} f(\tilde{z} + t \tilde{h}) && \text{(}\href{#thm-chain-vec}{\text{Theorem~8}}\text{)} \\ &= \sum\_{j=1}^{p} h_j\\\frac{\partial}{\partial x_j} f(\tilde{z} + t \tilde{h}). && \text{(matrix product)} \end{aligned} \\
>
> The second step writes out the [matrix product](linear-algebra.llms.md#def-matrix-mult). \\g'\\ is continuous ([Definition 14](#def-continuous-several)): \\t \mapsto \tilde{z} + t \tilde{h}\\ is continuous, since \\\mathopen{}\left\lVert(\tilde{z} + s \tilde{h}) - (\tilde{z} + t \tilde{h})\right\rVert\mathclose{} = \mathopen{}\left\|s - t\right\|\mathclose{}\\\mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{}\\, each \\\frac{\partial}{\partial x_j} f\\ is continuous by assumption, and compositions, sums and constant multiples of continuous functions are continuous. Each \\\frac{\partial}{\partial x_j} f\\ has continuous partial derivatives, the second partial derivatives of \\f\\, so the same chain-rule computation applies to it: \\\frac{\partial}{\partial t} \mathopen{}\left\[\frac{\partial}{\partial x_j} f(\tilde{z} + t \tilde{h})\right\]\mathclose{} = \sum\_{i=1}^{p} h_i\\\frac{\partial}{\partial x_i} \mathopen{}\left(\frac{\partial}{\partial x_j} f(\tilde{z} + t \tilde{h})\right)\mathclose{}\\. So
>
> \\ \begin{aligned} g''(t) &= \sum\_{j=1}^{p} h_j \sum\_{i=1}^{p} h_i\\\frac{\partial}{\partial x_i} \mathopen{}\left(\frac{\partial}{\partial x_j} f(\tilde{z} + t \tilde{h})\right)\mathclose{} && \text{(differentiate each term of } g'(t) \text{)} \\ &= \sum\_{i=1}^{p} \sum\_{j=1}^{p} h_i\\\mathopen{}\left\[\mathbf{H}\_f(\tilde{z} + t \tilde{h})\right\]\mathclose{}\_{ij}\\h_j && \text{(}\href{#def-hessian}{\text{Definition~13}}\text{; reorder the finite sums)} \\ &= {\tilde{h}}^{\top}\\\mathbf{H}\_f(\tilde{z} + t \tilde{h})\\\tilde{h}. && \text{(matrix product)} \end{aligned} \\
>
> The last step is again the [matrix product](linear-algebra.llms.md#def-matrix-mult). Now apply [Theorem 14](#thm-taylor-1d) to \\g\\ on \\\[0, 1\]\\: there is a \\\tau \in (0, 1)\\ with
>
> \\ \begin{aligned} f(\tilde{z} + \tilde{h}) &= g(1) && \text{(definition of } g \text{)} \\ &= g(0) + g'(0)\\(1 - 0) + \frac{1}{2}\\g''(\tau)\\(1 - 0)^2 && \text{(}\href{#thm-taylor-1d}{\text{Theorem~14}}\text{, with } a = 0, b = 1 \text{)} \\ &= g(0) + g'(0) + \frac{1}{2}\\g''(\tau) && \text{(} 1 - 0 = 1 \text{)} \\ &= f(\tilde{z}) + {\tilde{h}}^{\top}\\\frac{\partial}{\partial \tilde{x}} f(\tilde{z}) + \frac{1}{2}\\{\tilde{h}}^{\top}\\\mathbf{H}\_f(\tilde{z} + \tau \tilde{h})\\\tilde{h} && \text{(substitute } g(0), g'(0), g''(\tau) \text{)} \\ &= f(\tilde{z}) + {\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} f(\tilde{z})\right)\mathclose{}}^{\top} \tilde{h} + \frac{1}{2}\\{\tilde{h}}^{\top}\\\mathbf{H}\_f(\tilde{z} + \tau \tilde{h})\\\tilde{h}. && \text{(a } 1 \times 1 \text{ matrix equals its transpose)} \end{aligned} \\

> **NOTE:**
>
> **Example 36 (For a quadratic form the expansion is exact)** Let \\f(\tilde{x}) = {\tilde{x}}^{\top} \mathbf{S} \tilde{x}\\ with \\\mathbf{S}\\ symmetric and constant. Its gradient is \\2 \mathbf{S} \tilde{x}\\ ([Theorem 7](#thm-quadratic-form)) and its Hessian is \\2 \mathbf{S}\\ at every point ([Theorem 11](#thm-hessian-quadratic)), so whatever \\\tau\\ is, [Theorem 15](#thm-taylor-mv) reads
>
> \\ f(\tilde{z} + \tilde{h}) = {\tilde{z}}^{\top} \mathbf{S} \tilde{z} + {(2 \mathbf{S} \tilde{z})}^{\top} \tilde{h} + \frac{1}{2}\\{\tilde{h}}^{\top} (2 \mathbf{S}) \tilde{h} = {\tilde{z}}^{\top} \mathbf{S} \tilde{z} + 2\\{\tilde{z}}^{\top} \mathbf{S} \tilde{h} + {\tilde{h}}^{\top} \mathbf{S} \tilde{h}, \\
>
> using \\{(2 \mathbf{S} \tilde{z})}^{\top} = 2\\{\tilde{z}}^{\top}\\{\mathbf{S}}^{\top} = 2\\{\tilde{z}}^{\top} \mathbf{S}\\. Multiplying out directly gives the same:
>
> \\ \begin{aligned} {(\tilde{z} + \tilde{h})}^{\top} \mathbf{S} (\tilde{z} + \tilde{h}) &= {\tilde{z}}^{\top} \mathbf{S} \tilde{z} + {\tilde{z}}^{\top} \mathbf{S} \tilde{h} + {\tilde{h}}^{\top} \mathbf{S} \tilde{z} + {\tilde{h}}^{\top} \mathbf{S} \tilde{h} && \text{(distribute)} \\ &= {\tilde{z}}^{\top} \mathbf{S} \tilde{z} + 2\\{\tilde{z}}^{\top} \mathbf{S} \tilde{h} + {\tilde{h}}^{\top} \mathbf{S} \tilde{h}. && \text{(} {\tilde{h}}^{\top} \mathbf{S} \tilde{z} = {({\tilde{h}}^{\top} \mathbf{S} \tilde{z})}^{\top} = {\tilde{z}}^{\top} \mathbf{S} \tilde{h} \text{)} \end{aligned} \\

> **NOTE:**
>
> **Definition 16 (Strict local minimizer)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\. A point \\\tilde{x}^\*\\ is a **strict local minimizer** of \\f\\ if there is a number \\\delta \> 0\\ such that \\f(\tilde{x}^\*) \< f(\tilde{x})\\ for every \\\tilde{x}\ne \tilde{x}^\*\\ with \\\mathopen{}\left\lVert\tilde{x}- \tilde{x}^\*\right\rVert\mathclose{} \< \delta\\.

> **NOTE:**
>
> **Example 37 (Strict and non-strict local minimizers)**  
>
> - \\f(x) = (x - 2)^2\\ has \\f(2) = 0 \< (x - 2)^2 = f(x)\\ for every \\x \ne 2\\, so \\2\\ is a strict local minimizer (any \\\delta \> 0\\ works).
> - A constant function \\f(\tilde{x}) = 0\\ has \\f(\tilde{x}^\*) \le f(\tilde{x})\\ for all \\\tilde{x}^\*\\ and \\\tilde{x}\\, so every point is a [local minimizer](algebra.llms.md#def-local-minimizer), but no point is a strict one: \\f(\tilde{x}^\*) \< f(\tilde{x})\\ never holds.

> **NOTE:**
>
> **Lemma 1 (A quadratic form is at least the smallest eigenvalue times the squared length)** Let \\\mathbf{A}\\ be a symmetric \\p \times p\\ matrix, and let \\\lambda\_{\min}\\ be the smallest of its eigenvalues ([eigendecomposition](linear-algebra.llms.md#def-eigendecomposition)). Then \\{\tilde{h}}^{\top} \mathbf{A} \tilde{h} \ge \lambda\_{\min}\\\mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{}^2\\ for every \\\tilde{h} \in \mathbb{R}^p\\.

> **NOTE:**
>
> *Proof*. Write \\\mathbf{A} = \mathbf{Q} \mathbf{\Lambda} {\mathbf{Q}}^{\top}\\ with \\\mathbf{Q}\\ orthogonal and \\\mathbf{\Lambda} = \operatorname{diag}(\lambda_1, \ldots, \lambda_p)\\ ([spectral theorem](linear-algebra.llms.md#thm-spectral)), and let \\\tilde{y} \stackrel{\text{def}}{=}{\mathbf{Q}}^{\top} \tilde{h}\\. Then
>
> \\ \begin{aligned} {\tilde{h}}^{\top} \mathbf{A} \tilde{h} &= {\tilde{h}}^{\top} \mathbf{Q} \mathbf{\Lambda} {\mathbf{Q}}^{\top} \tilde{h} && \text{(substitute the eigendecomposition)} \\ &= {\tilde{y}}^{\top} \mathbf{\Lambda} \tilde{y} && \text{(} {\tilde{h}}^{\top} \mathbf{Q} = {({\mathbf{Q}}^{\top} \tilde{h})}^{\top} \text{, transpose of a product)} \\ &= \sum\_{i=1}^{p} \lambda_i\\y_i^2 && \text{(} \mathbf{\Lambda} \text{ is diagonal)} \\ &\ge \sum\_{i=1}^{p} \lambda\_{\min}\\y_i^2 && \text{(} \lambda_i \ge \lambda\_{\min} \text{ and } y_i^2 \ge 0 \text{)} \\ &= \lambda\_{\min}\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{}^2 && \text{(the squared length is the sum of squares)} \\ &= \lambda\_{\min}\\\mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{}^2. && \text{(orthogonal matrices preserve length)} \end{aligned} \\
>
> The second step is the [transpose of a product](linear-algebra.llms.md#thm-transpose-product). The last step applies [orthogonal matrices preserve length](linear-algebra.llms.md#thm-orthogonal-norm) to \\{\mathbf{Q}}^{\top}\\, which is orthogonal because \\{\mathbf{Q}}^{\top} \mathbf{Q} = \mathbf{Q} {\mathbf{Q}}^{\top} = \mathbf{I}\_p\\ ([orthogonal matrix](linear-algebra.llms.md#def-orthogonal-matrix)).

> **NOTE:**
>
> **Example 38 (Checking the bound)** \\\mathbf{A} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}\\ has eigenvalues \\3\\ and \\1\\ ([eigenvalue example](linear-algebra.llms.md#exm-eigenvalue)), so \\\lambda\_{\min} = 1\\. At \\\tilde{h} = {(1, 0)}^{\top}\\, \\{\tilde{h}}^{\top} \mathbf{A} \tilde{h} = 2 \ge 1 \cdot 1\\. At \\\tilde{h} = {(1, -1)}^{\top}\\, \\{\tilde{h}}^{\top} \mathbf{A} \tilde{h} = 2 - 1 - 1 + 2 = 2 = 1 \cdot 2\\: the bound holds with equality, since this \\\tilde{h}\\ is an eigenvector for \\\lambda\_{\min}\\.

> **NOTE:**
>
> **Lemma 2 (A quadratic form with small entries is small)** Let \\\mathbf{E}\\ be a \\p \times p\\ matrix whose entries all satisfy \\\mathopen{}\left\|e\_{ij}\right\|\mathclose{} \le m\\. Then \\\mathopen{}\left\|{\tilde{h}}^{\top} \mathbf{E} \tilde{h}\right\|\mathclose{} \le p\\m\\\mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{}^2\\ for every \\\tilde{h} \in \mathbb{R}^p\\.

> **NOTE:**
>
> *Proof*. Let \\\tilde{a} \stackrel{\text{def}}{=}{(\mathopen{}\left\|h_1\right\|\mathclose{}, \ldots, \mathopen{}\left\|h_p\right\|\mathclose{})}^{\top}\\ and \\\tilde{1} \stackrel{\text{def}}{=}{(1, \ldots, 1)}^{\top}\\, both in \\\mathbb{R}^p\\. Then
>
> \\ \begin{aligned} \mathopen{}\left\|{\tilde{h}}^{\top} \mathbf{E} \tilde{h}\right\|\mathclose{} &= \mathopen{}\left\|\sum\_{i=1}^{p} \sum\_{j=1}^{p} h_i\\e\_{ij}\\h_j\right\|\mathclose{} && \text{(matrix product)} \\ &\le \sum\_{i=1}^{p} \sum\_{j=1}^{p} \mathopen{}\left\|h_i\right\|\mathclose{}\\\mathopen{}\left\|e\_{ij}\right\|\mathclose{}\\\mathopen{}\left\|h_j\right\|\mathclose{} && \text{(triangle inequality for numbers)} \\ &\le m \sum\_{i=1}^{p} \sum\_{j=1}^{p} \mathopen{}\left\|h_i\right\|\mathclose{}\\\mathopen{}\left\|h_j\right\|\mathclose{} && \text{(} \mathopen{}\left\|e\_{ij}\right\|\mathclose{} \le m \text{)} \\ &= m\\\mathopen{}\left(\sum\_{i=1}^{p} \mathopen{}\left\|h_i\right\|\mathclose{}\right)\mathclose{}^2 && \text{(the double sum factors)} \\ &= m\\(\tilde{1} \cdot \tilde{a})^2 && \text{(dot product)} \\ &\le m\\\mathopen{}\left\lVert\tilde{1}\right\rVert\mathclose{}^2\\\mathopen{}\left\lVert\tilde{a}\right\rVert\mathclose{}^2 && \text{(Cauchy-Schwarz, squared)} \\ &= m\\p\\\mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{}^2. && \text{(} \mathopen{}\left\lVert\tilde{1}\right\rVert\mathclose{}^2 = p \text{ and } \mathopen{}\left\lVert\tilde{a}\right\rVert\mathclose{}^2 = \textstyle\sum_i h_i^2 = \mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{}^2 \text{)} \end{aligned} \\
>
> The steps use the [matrix product](linear-algebra.llms.md#def-matrix-mult), the [dot product](linear-algebra.llms.md#def-dot-product) and the [Cauchy-Schwarz inequality](linear-algebra.llms.md#thm-cauchy-schwarz).

> **NOTE:**
>
> **Example 39 (Checking the bound)** Let \\\mathbf{E} = \begin{bmatrix} 0.1 & -0.2 \\ -0.2 & 0.1 \end{bmatrix}\\, so \\m = 0.2\\ works, and \\\tilde{h} = {(1, 1)}^{\top}\\, so \\\mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{}^2 = 2\\. Then \\{\tilde{h}}^{\top} \mathbf{E} \tilde{h} = 0.1 - 0.2 - 0.2 + 0.1 = -0.2\\, and \\\mathopen{}\left\|-0.2\right\|\mathclose{} = 0.2 \le 2 \cdot 0.2 \cdot 2 = 0.8\\.

> **NOTE:**
>
> **Theorem 16 (Second-order sufficient condition)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first and second partial derivatives that are continuous on \\\mathbb{R}^p\\ ([Definition 14](#def-continuous-several)). If \\\tilde{x}^\*\\ is a stationary point of \\f\\ ([Definition 15](#def-stationary-point)) and \\\mathbf{H}\_f(\tilde{x}^\*)\\ is [positive definite](linear-algebra.llms.md#def-positive-definite), then \\\tilde{x}^\*\\ is a strict local minimizer of \\f\\ ([Definition 16](#def-strict-local-minimizer)).

> **NOTE:**
>
> *Proof*. \\\mathbf{H}\_f(\tilde{x}^\*)\\ is positive definite, and so symmetric, so its smallest eigenvalue \\\lambda\\ is positive ([definiteness and eigenvalues](linear-algebra.llms.md#thm-definite-eigenvalues)). Each of the \\p^2\\ entries of \\\mathbf{H}\_f\\ is continuous at \\\tilde{x}^\*\\ ([Definition 14](#def-continuous-several)): for \\\varepsilon = \lambda / (2p)\\ there is a \\\delta\_{ij} \> 0\\ with \\\mathopen{}\left\|\mathopen{}\left\[\mathbf{H}\_f(\tilde{y})\right\]\mathclose{}\_{ij} - \mathopen{}\left\[\mathbf{H}\_f(\tilde{x}^\*)\right\]\mathclose{}\_{ij}\right\|\mathclose{} \< \lambda / (2p)\\ whenever \\\mathopen{}\left\lVert\tilde{y}- \tilde{x}^\*\right\rVert\mathclose{} \< \delta\_{ij}\\. Let \\\delta\\ be the smallest of these \\p^2\\ numbers.
>
> Now let \\0 \< \mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{} \< \delta\\. By [Theorem 15](#thm-taylor-mv) there is a \\\tau \in (0, 1)\\ for which the first step of the next display holds; let \\\tilde{y}\stackrel{\text{def}}{=}\tilde{x}^\* + \tau \tilde{h}\\ and \\\mathbf{E} \stackrel{\text{def}}{=}\mathbf{H}\_f(\tilde{y}) - \mathbf{H}\_f(\tilde{x}^\*)\\. Since \\\mathopen{}\left\lVert\tilde{y}- \tilde{x}^\*\right\rVert\mathclose{} = \tau\\\mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{} \< \delta\\, every entry of \\\mathbf{E}\\ has absolute value less than \\\lambda / (2p)\\, so [Lemma 2](#lem-qf-entry-bound) applies with \\m = \lambda / (2p)\\:
>
> \\ \begin{aligned} f(\tilde{x}^\* + \tilde{h}) - f(\tilde{x}^\*) &= {\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} f(\tilde{x}^\*)\right)\mathclose{}}^{\top} \tilde{h} + \frac{1}{2}\\{\tilde{h}}^{\top}\\\mathbf{H}\_f(\tilde{y})\\\tilde{h} && \text{(}\href{#thm-taylor-mv}{\text{Theorem~15}}\text{)} \\ &= \frac{1}{2}\\{\tilde{h}}^{\top}\\\mathbf{H}\_f(\tilde{y})\\\tilde{h} && \text{(} \tilde{x}^\* \text{ is stationary)} \\ &= \frac{1}{2}\\{\tilde{h}}^{\top}\\\mathbf{H}\_f(\tilde{x}^\*)\\\tilde{h} + \frac{1}{2}\\{\tilde{h}}^{\top}\\\mathbf{E}\\\tilde{h} && \text{(} \mathbf{H}\_f(\tilde{y}) = \mathbf{H}\_f(\tilde{x}^\*) + \mathbf{E} \text{; distribute)} \\ &\ge \frac{1}{2}\\\lambda\\\mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{}^2 + \frac{1}{2}\\{\tilde{h}}^{\top}\\\mathbf{E}\\\tilde{h} && \text{(}\href{#lem-qf-eigen-bound}{\text{Lemma~1}}\text{)} \\ &\ge \frac{1}{2}\\\lambda\\\mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{}^2 - \frac{1}{2}\\\mathopen{}\left\|{\tilde{h}}^{\top}\\\mathbf{E}\\\tilde{h}\right\|\mathclose{} && \text{(a number is at least minus its absolute value)} \\ &\ge \frac{1}{2}\\\lambda\\\mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{}^2 - \frac{1}{2}\\p\\\frac{\lambda}{2p}\\\mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{}^2 && \text{(}\href{#lem-qf-entry-bound}{\text{Lemma~2}}\text{, } m = \lambda / (2p) \text{)} \\ &= \frac{\lambda}{4}\\\mathopen{}\left\lVert\tilde{h}\right\rVert\mathclose{}^2 && \text{(arithmetic)} \\ &\> 0. && \text{(} \lambda \> 0 \text{ and } \tilde{h} \ne \tilde{0}\text{)} \end{aligned} \\
>
> So \\f(\tilde{x}^\*) \< f(\tilde{x})\\ whenever \\0 \< \mathopen{}\left\lVert\tilde{x}- \tilde{x}^\*\right\rVert\mathclose{} \< \delta\\ (take \\\tilde{h} = \tilde{x}- \tilde{x}^\*\\).

> **NOTE:**
>
> **Example 40 (Classifying stationary points)**  
>
> - \\f(\tilde{x}) = x_1^2 + x_2^2 - 2 x_1\\ has the stationary point \\{(1, 0)}^{\top}\\ ([Example 33](#exm-stationary-point)), and its Hessian is \\\mathbf{H}\_f(\tilde{x}) = \begin{bmatrix} 2 & 0 \\ 0 & 2 \end{bmatrix} = 2 \mathbf{I}\_2\\, which is positive definite, so \\{(1, 0)}^{\top}\\ is a strict local minimizer.
> - \\f(\tilde{x}) = x_1^2 - x_2^2\\ has the stationary point \\\tilde{0}\\ and Hessian \\\begin{bmatrix} 2 & 0 \\ 0 & -2 \end{bmatrix}\\, which is not positive definite (\\{(0, 1)}^{\top}\\ gives \\-2\\), and indeed \\\tilde{0}\\ is not a local minimizer ([Example 34](#exm-first-order-condition)).

> **NOTE:**
>
> **Example 41 (The condition is sufficient, not necessary)** \\f(\tilde{x}) = x_1^2 + x_2^4\\ and \\g(\tilde{x}) = x_1^2 - x_2^4\\ both have gradient \\\tilde{0}\\ at \\\tilde{0}\\ and the same Hessian there, \\\begin{bmatrix} 2 & 0 \\ 0 & 0 \end{bmatrix}\\, since \\\frac{\partial}{\partial x_2} \mathopen{}\left(\frac{\partial}{\partial x_2} (\pm x_2^4)\right)\mathclose{} = \pm 12 x_2^2 = 0\\ at \\x_2 = 0\\. That Hessian is not positive definite (\\{(0, 1)}^{\top}\\ gives \\0\\), so [Theorem 16](#thm-second-order-condition) says nothing about either function. In fact \\\tilde{0}\\ is a strict local minimizer of \\f\\, since \\f(\tilde{x}) \> 0 = f(\tilde{0})\\ for \\\tilde{x}\ne \tilde{0}\\, but not a local minimizer of \\g\\, since \\g(0, t) = -t^4 \< 0 = g(\tilde{0})\\ for \\t \ne 0\\.

## 3 Convexity in several variables

> **NOTE:**
>
> This section is adapted from the convexity part of Zhou ([2024](#ref-zhou2024optim)), used under the MIT License (see the license text in [Linear Algebra](linear-algebra.llms.md#sec-subspaces)). The source states the first-order test (in one direction) and the second-derivative test for convexity without proof; here both directions of the first-order test are proved, and the second-derivative test is proved from the Taylor theorem of [Section 2](#sec-optimality). The source defines both concave and strictly concave as “\\-f\\ is strictly convex”; here \\f\\ is concave when \\-f\\ is convex. These parts of the source are not part of this section:
>
> - its catalogs of convex sets and convex functions, including the positive semidefinite matrices and \\-\log \det\\
> - intersections of infinitely many convex sets, and suprema of infinitely many convex functions
> - its examples, exercises and figures, including the multivariate normal maximum likelihood example

> **NOTE:**
>
> **Definition 17 (Convex set)** A set \\K \subseteq \mathbb{R}^p\\ is **convex** if for all \\\tilde{x}, \tilde{y}\in K\\ and all \\t \in \[0, 1\]\\, the point \\t \tilde{x}+ (1 - t) \tilde{y}\\ is in \\K\\: \\K\\ contains the whole line segment between any two of its points.

> **NOTE:**
>
> **Example 42 (Convex sets)**  
>
> - \\\mathbb{R}^p\\ is convex, and so is any set with at most one point.
>
> - The closed ball ([Definition 11](#def-ball)) \\B = \mathopen{}\left\\\tilde{x}: \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \le r\right\\\mathclose{}\\ is convex: for \\\tilde{x}, \tilde{y}\in B\\ and \\t \in \[0, 1\]\\,
>
>   \\ \begin{aligned} \mathopen{}\left\lVert t \tilde{x}+ (1 - t) \tilde{y}\right\rVert\mathclose{} &\le \mathopen{}\left\lVert t \tilde{x}\right\rVert\mathclose{} + \mathopen{}\left\lVert(1 - t) \tilde{y}\right\rVert\mathclose{} && \text{(triangle inequality)} \\ &= t\\\mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} + (1 - t)\\\mathopen{}\left\lVert\tilde{y}\right\rVert\mathclose{} && \text{(norm of a multiple; } t, 1 - t \ge 0 \text{)} \\ &\le t\\r + (1 - t)\\r && \text{(} \tilde{x}, \tilde{y}\in B \text{)} \\ &= r. && \text{(arithmetic)} \end{aligned} \\
>
>   The first step is the [triangle inequality](linear-algebra.llms.md#thm-triangle-inequality), and the second uses [the norm of a multiple](linear-algebra.llms.md#thm-norm-properties).

> **NOTE:**
>
> **Example 43 (A set that is not convex)** \\K = \mathopen{}\left\\x \in \mathbb{R}: \mathopen{}\left\|x\right\|\mathclose{} \ge 1\right\\\mathclose{}\\ is not convex: \\-1\\ and \\1\\ are in \\K\\, but with \\t = \tfrac{1}{2}\\ the point \\\tfrac{1}{2}(-1) + \tfrac{1}{2}(1) = 0\\ is not.

> **NOTE:**
>
> **Definition 18 (Half-space)** Let \\\tilde{a} \in \mathbb{R}^p\\ be a nonzero vector and \\c\\ a real number. The set \\\mathopen{}\left\\\tilde{x}\in \mathbb{R}^p : {\tilde{a}}^{\top} \tilde{x}\ge c\right\\\mathclose{}\\ is a (closed) **half-space**: the points on one side of the boundary \\\mathopen{}\left\\\tilde{x}: {\tilde{a}}^{\top} \tilde{x}= c\right\\\mathclose{}\\, together with the boundary. In \\\mathbb{R}^2\\, a half-space is called a **half-plane**.

> **NOTE:**
>
> **Example 44 (The right half-plane)** With \\\tilde{a} = {(1, 0)}^{\top}\\ and \\c = 0\\, the half-plane \\\mathopen{}\left\\\tilde{x}\in \mathbb{R}^2 : x_1 \ge 0\right\\\mathclose{}\\ is the set of points on or to the right of the \\x_2\\-axis. \\{(1, 5)}^{\top}\\ is in it, since \\1 \ge 0\\; \\{(0, -3)}^{\top}\\ is in it, on the boundary; and \\{(-1, 0)}^{\top}\\ is not, since \\-1 \< 0\\.

> **NOTE:**
>
> **Theorem 17 (An intersection of convex sets is convex)** If \\K_1\\ and \\K_2\\ are convex subsets of \\\mathbb{R}^p\\ ([Definition 17](#def-convex-set)), then \\K_1 \cap K_2\\ is convex.

> **NOTE:**
>
> *Proof*. Let \\\tilde{x}, \tilde{y}\in K_1 \cap K_2\\ and \\t \in \[0, 1\]\\. Then \\\tilde{x}, \tilde{y}\in K_1\\, so \\t \tilde{x}+ (1 - t) \tilde{y}\in K_1\\, since \\K_1\\ is convex; in the same way \\t \tilde{x}+ (1 - t) \tilde{y}\in K_2\\. So \\t \tilde{x}+ (1 - t) \tilde{y}\in K_1 \cap K_2\\.

> **NOTE:**
>
> **Example 45 (Intersecting a ball with a half-plane)** The closed unit ball ([Definition 11](#def-ball)) in \\\mathbb{R}^2\\ is convex ([Example 42](#exm-convex-set)), and so is the half-plane ([Definition 18](#def-half-space)) \\\mathopen{}\left\\\tilde{x}: x_1 \ge 0\right\\\mathclose{}\\: if \\x_1 \ge 0\\ and \\y_1 \ge 0\\, then \\t x_1 + (1 - t) y_1 \ge 0\\ for \\t \in \[0, 1\]\\. By [Theorem 17](#thm-convex-intersection), the closed half-disk \\\mathopen{}\left\\\tilde{x}: \mathopen{}\left\lVert\tilde{x}\right\rVert\mathclose{} \le 1,\\ x_1 \ge 0\right\\\mathclose{}\\ is convex. A union need not be convex: \\\mathopen{}\left\\x \in \mathbb{R}: x \le -1\right\\\mathclose{}\\ and \\\mathopen{}\left\\x \in \mathbb{R}: x \ge 1\right\\\mathclose{}\\ are convex, but their union is the set of [Example 43](#exm-not-convex-set).

> **NOTE:**
>
> **Definition 19 (Strictly convex and concave functions)** A function \\f : \mathbb{R}^p \to \mathbb{R}\\ is **strictly convex** if \\f(t \tilde{x}+ (1 - t) \tilde{y}) \< t f(\tilde{x}) + (1 - t) f(\tilde{y})\\ for all \\\tilde{x}\ne \tilde{y}\\ in \\\mathbb{R}^p\\ and all \\t \in (0, 1)\\. It is **concave** if \\-f\\ is [convex](algebra.llms.md#def-convex-function), and **strictly concave** if \\-f\\ is strictly convex.

> **NOTE:**
>
> **Example 46 (Strictly convex, and convex but not strictly)**  
>
> - \\f(x) = x^2\\ is strictly convex:
>
>   \\ \begin{aligned} t x^2 + (1 - t) y^2 - (t x + (1 - t) y)^2 &= t x^2 + (1 - t) y^2 - t^2 x^2 - 2 t (1 - t) x y - (1 - t)^2 y^2 && \text{(expand the square)} \\ &= t (1 - t) x^2 - 2 t (1 - t) x y + t (1 - t) y^2 && \text{(} t - t^2 = t (1 - t) \text{, } (1 - t) - (1 - t)^2 = t (1 - t) \text{)} \\ &= t (1 - t) (x - y)^2, && \text{(factor)} \end{aligned} \\
>
>   which is positive when \\x \ne y\\ and \\t \in (0, 1)\\. At \\t \in \mathopen{}\left\\0, 1\right\\\mathclose{}\\ or \\x = y\\ it is \\0\\, so \\x^2\\ is also convex.
>
> - \\f(x) = 2x + 1\\ is convex but not strictly convex: \\f(t x + (1 - t) y) = 2 t x + 2 (1 - t) y + 1 = t f(x) + (1 - t) f(y)\\ for every \\x, y, t\\, so the inequality holds, but never strictly. It is also concave.

> **NOTE:**
>
> **Theorem 18 (The maximum of convex functions is convex)** If \\f_1\\ and \\f_2\\ are [convex](algebra.llms.md#def-convex-function) functions on \\\mathbb{R}^p\\, then \\f(\tilde{x}) \stackrel{\text{def}}{=}\max\mathopen{}\left\\f_1(\tilde{x}), f_2(\tilde{x})\right\\\mathclose{}\\ is convex.

> **NOTE:**
>
> *Proof*. Let \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\ and \\t \in \[0, 1\]\\. For \\i = 1, 2\\,
>
> \\ \begin{aligned} f_i(t \tilde{x}+ (1 - t) \tilde{y}) &\le t f_i(\tilde{x}) + (1 - t) f_i(\tilde{y}) && \text{(} f_i \text{ is convex)} \\ &\le t f(\tilde{x}) + (1 - t) f(\tilde{y}). && \text{(} f_i \le f \text{, and } t, 1 - t \ge 0 \text{)} \end{aligned} \\
>
> Both \\f_1\\ and \\f_2\\ at \\t \tilde{x}+ (1 - t) \tilde{y}\\ are at most \\t f(\tilde{x}) + (1 - t) f(\tilde{y})\\, so their maximum \\f(t \tilde{x}+ (1 - t) \tilde{y})\\ is too.

> **NOTE:**
>
> **Example 47 (A maximum is convex; a minimum need not be)**  
>
> - \\f_1(x) = x\\ is convex, by the computation for \\2x + 1\\ in [Example 46](#exm-strictly-convex) with \\2\\ and \\1\\ replaced by \\1\\ and \\0\\, and \\f_2(x) = x^2\\ is convex by the same example, so \\\max\mathopen{}\left\\x, x^2\right\\\mathclose{}\\ is convex by [Theorem 18](#thm-convex-max).
> - The minimum of two convex functions need not be convex: \\g(x) = \min\mathopen{}\left\\x^2, (x - 2)^2\right\\\mathclose{}\\ has \\g(0) = g(2) = 0\\, but at the midpoint \\g(1) = \min\mathopen{}\left\\1, 1\right\\\mathclose{} = 1 \> \tfrac{1}{2} g(0) + \tfrac{1}{2} g(2) = 0\\.

> **NOTE:**
>
> **Definition 20 (Epigraph)** The **epigraph** of \\f : \mathbb{R}^p \to \mathbb{R}\\ is the set of points on or over its [graph](sets-functions.llms.md#def-graph),
>
> \\ \operatorname{epi} f \stackrel{\text{def}}{=}\mathopen{}\left\\(\tilde{x}, s) : \tilde{x}\in \mathbb{R}^p,\\ s \in \mathbb{R},\\ f(\tilde{x}) \le s\right\\\mathclose{}. \\
>
> A pair \\(\tilde{x}, s)\\ is treated as the \\(p + 1)\\-vector with entries \\x_1, \ldots, x_p, s\\, so \\\operatorname{epi} f \subseteq \mathbb{R}^{p+1}\\, and sums and multiples of pairs are taken entry by entry.

> **NOTE:**
>
> **Example 48 (The epigraph of \\x^2\\)** For \\f(x) = x^2\\, \\\operatorname{epi} f = \mathopen{}\left\\(x, s) : x^2 \le s\right\\\mathclose{}\\, the points \\(x, s)\\ on the parabola \\s = x^2\\ or on the side of it where \\s\\ is larger. \\(1, 2)\\ is in it, since \\1^2 \le 2\\; \\(2, 1)\\ is not, since \\2^2 \> 1\\.

> **NOTE:**
>
> **Theorem 19 (Convexity through the epigraph)** \\f : \mathbb{R}^p \to \mathbb{R}\\ is [convex](algebra.llms.md#def-convex-function) if and only if its epigraph ([Definition 20](#def-epigraph)) is convex ([Definition 17](#def-convex-set)).

> **NOTE:**
>
> *Proof*. **If.** Let \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\ and \\t \in \[0, 1\]\\. The points \\(\tilde{x}, f(\tilde{x}))\\ and \\(\tilde{y}, f(\tilde{y}))\\ are in \\\operatorname{epi} f\\, since \\f(\tilde{x}) \le f(\tilde{x})\\ and \\f(\tilde{y}) \le f(\tilde{y})\\. Since \\\operatorname{epi} f\\ is convex, it contains
>
> \\ t\\(\tilde{x}, f(\tilde{x})) + (1 - t)\\(\tilde{y}, f(\tilde{y})) = \mathopen{}\left(t \tilde{x}+ (1 - t) \tilde{y},\\ t f(\tilde{x}) + (1 - t) f(\tilde{y})\right)\mathclose{}, \\
>
> and by [Definition 20](#def-epigraph) that membership means \\f(t \tilde{x}+ (1 - t) \tilde{y}) \le t f(\tilde{x}) + (1 - t) f(\tilde{y})\\.
>
> **Only if.** Let \\(\tilde{x}, s)\\ and \\(\tilde{y}, u)\\ be in \\\operatorname{epi} f\\, so \\f(\tilde{x}) \le s\\ and \\f(\tilde{y}) \le u\\, and let \\t \in \[0, 1\]\\. Then
>
> \\ \begin{aligned} f(t \tilde{x}+ (1 - t) \tilde{y}) &\le t f(\tilde{x}) + (1 - t) f(\tilde{y}) && \text{(} f \text{ is convex)} \\ &\le t s + (1 - t) u, && \text{(} f(\tilde{x}) \le s \text{, } f(\tilde{y}) \le u \text{, and } t, 1 - t \ge 0 \text{)} \end{aligned} \\
>
> so \\t\\(\tilde{x}, s) + (1 - t)\\(\tilde{y}, u) = (t \tilde{x}+ (1 - t) \tilde{y},\\ t s + (1 - t) u)\\ is in \\\operatorname{epi} f\\.

> **NOTE:**
>
> **Example 49 (Two epigraphs)**  
>
> - The epigraph of \\f(x) = \mathopen{}\left\|x\right\|\mathclose{}\\ is \\\mathopen{}\left\\(x, s) : \mathopen{}\left\|x\right\|\mathclose{} \le s\right\\\mathclose{}\\, a wedge. It is the intersection of the half-planes \\\mathopen{}\left\\(x, s) : s - x \ge 0\right\\\mathclose{}\\ and \\\mathopen{}\left\\(x, s) : s + x \ge 0\right\\\mathclose{}\\. Each half-plane is convex: if \\s_1 - x_1 \ge 0\\ and \\s_2 - x_2 \ge 0\\, then \\(t s_1 + (1 - t) s_2) - (t x_1 + (1 - t) x_2) = t (s_1 - x_1) + (1 - t)(s_2 - x_2) \ge 0\\, and the same with \\+\\ for the other. So the wedge is convex ([Theorem 17](#thm-convex-intersection)), and \\\mathopen{}\left\|x\right\|\mathclose{}\\ is convex by [Theorem 19](#thm-epigraph).
> - The epigraph of \\g(x) = -x^2\\ is not convex: \\(-1, -1)\\ and \\(1, -1)\\ are in it, since \\g(\pm 1) = -1\\, but their midpoint \\(0, -1)\\ is not, since \\g(0) = 0 \> -1\\. So \\-x^2\\ is not convex.

> **NOTE:**
>
> **Definition 21 (Tangent plane)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have a gradient at \\\tilde{y}\\ ([Definition 2](#def-vector-derivative)). The **tangent plane** to the [graph](sets-functions.llms.md#def-graph) of \\f\\ at \\\tilde{y}\\ is the graph of the function
>
> \\ \tilde{x}\mapsto f(\tilde{y}) + {\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} f(\tilde{y})\right)\mathclose{}}^{\top} (\tilde{x}- \tilde{y}), \\
>
> which takes the value \\f(\tilde{y})\\ at \\\tilde{x}= \tilde{y}\\ and has the same gradient as \\f\\ there. For \\p = 1\\ it is the [tangent line](calculus.llms.md#def-tangent-line) \\s = f(y) + f'(y)\\(x - y)\\, the line through \\(y, f(y))\\ with slope \\f'(y)\\.

> **NOTE:**
>
> **Example 50 (A tangent line and a tangent plane)**  
>
> - For \\f(x) = x^2\\ at \\y = 1\\, \\f(1) = 1\\ and \\f'(1) = 2\\, so the tangent line is
>
>   \\ \begin{aligned} s &= 1 + 2\\(x - 1) && \text{(substitute } f(1) \text{ and } f'(1) \text{)} \\ &= 1 + 2x - 2 && \text{(distribute)} \\ &= 2x - 1. && \text{(} 1 - 2 = -1 \text{)} \end{aligned} \\
>
> - For \\f(\tilde{x}) = x_1^2 + x_2^2\\ at \\\tilde{y}= {(1, 1)}^{\top}\\, \\f(\tilde{y}) = 2\\ and the gradient is \\{(2 y_1,\\ 2 y_2)}^{\top} = {(2, 2)}^{\top}\\, so the tangent plane is
>
>   \\ \begin{aligned} s &= 2 + 2\\(x_1 - 1) + 2\\(x_2 - 1) && \text{(substitute } f(\tilde{y}) \text{ and the gradient)} \\ &= 2 + 2 x_1 - 2 + 2 x_2 - 2 && \text{(distribute)} \\ &= 2 x_1 + 2 x_2 - 2. && \text{(} 2 - 2 - 2 = -2 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Theorem 20 (First-order characterization of convexity)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first partial derivatives that are continuous on \\\mathbb{R}^p\\ ([Definition 14](#def-continuous-several)). Then \\f\\ is [convex](algebra.llms.md#def-convex-function) if and only if
>
> \\ f(\tilde{x}) \ge f(\tilde{y}) + {\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} f(\tilde{y})\right)\mathclose{}}^{\top} (\tilde{x}- \tilde{y}) \qquad \text{for all } \tilde{x}, \tilde{y}\in \mathbb{R}^p: \tag{6}\\
>
> every tangent plane ([Definition 21](#def-tangent-plane)) lies on or under the graph. If the inequality is strict whenever \\\tilde{x}\ne \tilde{y}\\, then \\f\\ is strictly convex ([Definition 19](#def-strictly-convex)).

> **NOTE:**
>
> *Proof*. **Only if.** Let \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\, let \\\tilde{d} \stackrel{\text{def}}{=}\tilde{x}- \tilde{y}\\, and let \\g(t) \stackrel{\text{def}}{=}f(\tilde{y}+ t \tilde{d})\\. The inner function \\t \mapsto \tilde{y}+ t \tilde{d}\\ has derivative \\{\tilde{d}}^{\top}\\ ([Definition 6](#def-vector-valued-derivative)), so the vector chain rule ([Theorem 8](#thm-chain-vec)) gives
>
> \\ \begin{aligned} g'(0) &= {\tilde{d}}^{\top}\\\frac{\partial}{\partial \tilde{x}} f(\tilde{y}) && \text{(}\href{#thm-chain-vec}{\text{Theorem~8}}\text{)} \\ &= {\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} f(\tilde{y})\right)\mathclose{}}^{\top} \tilde{d}. && \text{(a } 1 \times 1 \text{ matrix equals its transpose)} \end{aligned} \\
>
> For \\t \in (0, 1\]\\, \\\tilde{y}+ t \tilde{d} = t \tilde{x}+ (1 - t) \tilde{y}\\, so
>
> \\ \begin{aligned} g(t) - g(0) &= f(t \tilde{x}+ (1 - t) \tilde{y}) - f(\tilde{y}) && \text{(definition of } g \text{)} \\ &\le t f(\tilde{x}) + (1 - t) f(\tilde{y}) - f(\tilde{y}) && \text{(} f \text{ is convex)} \\ &= t\\(f(\tilde{x}) - f(\tilde{y})), && \text{(collect terms)} \end{aligned} \\
>
> and dividing by \\t \> 0\\, \\\dfrac{g(t) - g(0)}{t} \le f(\tilde{x}) - f(\tilde{y})\\. As \\t \to 0\\ from the right, the left side tends to \\g'(0)\\ (\\g\\ is differentiable at \\0\\, so the one-sided limit equals the two-sided derivative), and a limit of numbers that are all at most \\f(\tilde{x}) - f(\tilde{y})\\ is at most \\f(\tilde{x}) - f(\tilde{y})\\. So \\{\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} f(\tilde{y})\right)\mathclose{}}^{\top} (\tilde{x}- \tilde{y}) \le f(\tilde{x}) - f(\tilde{y})\\, which rearranges to [Equation 6](#eq-supporting-hyperplane).
>
> **If.** Let \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\, \\t \in \[0, 1\]\\, \\\tilde{z} \stackrel{\text{def}}{=}t \tilde{x}+ (1 - t) \tilde{y}\\, and \\\tilde{g} \stackrel{\text{def}}{=}\frac{\partial}{\partial \tilde{x}} f(\tilde{z})\\. Applying [Equation 6](#eq-supporting-hyperplane) at the point \\\tilde{z}\\, once toward \\\tilde{x}\\ and once toward \\\tilde{y}\\,
>
> \\ f(\tilde{x}) \ge f(\tilde{z}) + {\tilde{g}}^{\top} (\tilde{x}- \tilde{z}), \qquad f(\tilde{y}) \ge f(\tilde{z}) + {\tilde{g}}^{\top} (\tilde{y}- \tilde{z}). \\
>
> Multiplying the first by \\t \ge 0\\ and the second by \\1 - t \ge 0\\ and adding,
>
> \\ \begin{aligned} t f(\tilde{x}) + (1 - t) f(\tilde{y}) &\ge t \mathopen{}\left(f(\tilde{z}) + {\tilde{g}}^{\top} (\tilde{x}- \tilde{z})\right)\mathclose{} + (1 - t) \mathopen{}\left(f(\tilde{z}) + {\tilde{g}}^{\top} (\tilde{y}- \tilde{z})\right)\mathclose{} && \text{(multiply by } t, 1 - t \ge 0 \text{ and add)} \\ &= (t + (1 - t))\\f(\tilde{z}) + t\\{\tilde{g}}^{\top} (\tilde{x}- \tilde{z}) + (1 - t)\\{\tilde{g}}^{\top} (\tilde{y}- \tilde{z}) && \text{(distribute } t \text{ and } 1 - t \text{)} \\ &= f(\tilde{z}) + t\\{\tilde{g}}^{\top} (\tilde{x}- \tilde{z}) + (1 - t)\\{\tilde{g}}^{\top} (\tilde{y}- \tilde{z}) && \text{(} t + (1 - t) = 1 \text{)} \\ &= f(\tilde{z}) + {\tilde{g}}^{\top} \mathopen{}\left(t (\tilde{x}- \tilde{z}) + (1 - t) (\tilde{y}- \tilde{z})\right)\mathclose{} && \text{(factor out } {\tilde{g}}^{\top} \text{; matrix products distribute)} \\ &= f(\tilde{z}) + {\tilde{g}}^{\top} \mathopen{}\left(t \tilde{x}+ (1 - t) \tilde{y}- \tilde{z}\right)\mathclose{} && \text{(collect terms)} \\ &= f(\tilde{z}). && \text{(definition of } \tilde{z} \text{)} \end{aligned} \\
>
> That inequality is the defining inequality of a [convex function](algebra.llms.md#def-convex-function). If [Equation 6](#eq-supporting-hyperplane) is strict for distinct points, and \\\tilde{x}\ne \tilde{y}\\ and \\t \in (0, 1)\\, then:
>
> - \\\tilde{z}\\ differs from both \\\tilde{x}\\ and \\\tilde{y}\\, since \\\tilde{x}- \tilde{z} = (1 - t)(\tilde{x}- \tilde{y}) \ne \tilde{0}\\ and \\\tilde{y}- \tilde{z} = t (\tilde{y}- \tilde{x}) \ne \tilde{0}\\;
> - so both inequalities at \\\tilde{z}\\ are strict;
> - both multipliers \\t\\ and \\1 - t\\ are positive, so the first step of the display is strict, and \\f\\ is strictly convex.

> **NOTE:**
>
> **Example 51 (Tangent lines under a parabola)** For \\f(x) = x^2\\, the right side of [Equation 6](#eq-supporting-hyperplane) is \\y^2 + 2y (x - y) = 2xy - y^2\\, and
>
> \\ f(x) - (2xy - y^2) = x^2 - 2xy + y^2 = (x - y)^2 \ge 0, \\
>
> with equality only at \\x = y\\, confirming that \\x^2\\ is strictly convex. For \\g(x) = -x^2\\ the inequality fails: at \\y = 0\\ the tangent line is \\s = 0\\, and \\g(1) = -1 \< 0\\.

> **NOTE:**
>
> **Theorem 21 (Second-derivative test for convexity)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first and second partial derivatives that are continuous on \\\mathbb{R}^p\\ ([Definition 14](#def-continuous-several)).
>
> 1.  If \\\mathbf{H}\_f(\tilde{x})\\ is [positive semidefinite](linear-algebra.llms.md#def-positive-semidefinite) for every \\\tilde{x}\\, then \\f\\ is [convex](algebra.llms.md#def-convex-function).
> 2.  If \\\mathbf{H}\_f(\tilde{x})\\ is [positive definite](linear-algebra.llms.md#def-positive-definite) for every \\\tilde{x}\\, then \\f\\ is strictly convex ([Definition 19](#def-strictly-convex)).

> **NOTE:**
>
> *Proof*. Let \\\tilde{x}, \tilde{y}\in \mathbb{R}^p\\. By [Theorem 15](#thm-taylor-mv) with \\\tilde{z} = \tilde{y}\\ and \\\tilde{h} = \tilde{x}- \tilde{y}\\, there is a \\\tau \in (0, 1)\\ such that, with \\\tilde{w} \stackrel{\text{def}}{=}\tilde{y}+ \tau (\tilde{x}- \tilde{y})\\,
>
> \\ \begin{aligned} f(\tilde{x}) &= f(\tilde{y}) + {\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} f(\tilde{y})\right)\mathclose{}}^{\top} (\tilde{x}- \tilde{y}) + \frac{1}{2}\\{(\tilde{x}- \tilde{y})}^{\top}\\\mathbf{H}\_f(\tilde{w})\\(\tilde{x}- \tilde{y}) && \text{(}\href{#thm-taylor-mv}{\text{Theorem~15}}\text{)} \\ &\ge f(\tilde{y}) + {\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} f(\tilde{y})\right)\mathclose{}}^{\top} (\tilde{x}- \tilde{y}). && \text{(} \mathbf{H}\_f(\tilde{w}) \text{ is positive semidefinite)} \end{aligned} \\
>
> This inequality is [Equation 6](#eq-supporting-hyperplane), so \\f\\ is convex by [Theorem 20](#thm-convex-first-order). Under the hypothesis of part 2 and with \\\tilde{x}\ne \tilde{y}\\, the quadratic-form term is positive, so the inequality is strict, and \\f\\ is strictly convex by the last sentence of [Theorem 20](#thm-convex-first-order).

> **NOTE:**
>
> **Example 52 (Using the Hessian to show convexity)**  
>
> - For a symmetric positive semidefinite \\\mathbf{A}\\, \\f(\tilde{x}) = {\tilde{x}}^{\top} \mathbf{A} \tilde{x}\\ has Hessian \\2 \mathbf{A}\\ ([Theorem 11](#thm-hessian-quadratic)), which is positive semidefinite because \\{\tilde{h}}^{\top} (2 \mathbf{A}) \tilde{h} = 2\\{\tilde{h}}^{\top} \mathbf{A} \tilde{h} \ge 0\\; so \\f\\ is convex.
>
> - \\f(\tilde{x}) = x_1^2 + x_2^2 - 2 x_1\\ has Hessian \\2 \mathbf{I}\_2\\ ([Example 40](#exm-second-order-condition)), which is positive definite, so \\f\\ is strictly convex.
>
> - \\f(\tilde{x}) = e^{2x_1 + x_2} - x_1\\ has Hessian \\e^{u} \begin{bmatrix} 4 & 2 \\ 2 & 1 \end{bmatrix}\\ with \\u = 2x_1 + x_2\\ ([Example 25](#exm-hessian)), and
>
>   \\ {\tilde{h}}^{\top}\\\mathbf{H}\_f(\tilde{x})\\\tilde{h} = e^{u} (4 h_1^2 + 4 h_1 h_2 + h_2^2) = e^{u} (2 h_1 + h_2)^2 \ge 0, \\
>
>   so \\f\\ is convex. The Hessian is not positive definite (\\\tilde{h} = {(1, -2)}^{\top}\\ gives \\0\\), so part 2 does not apply, and in fact \\f\\ is not strictly convex: along \\\tilde{x}= t\\{(1, -2)}^{\top}\\, \\u = 2t - 2t = 0\\ and \\f = 1 - t\\ is linear in \\t\\, so the convexity inequality holds with equality there.

> **NOTE:**
>
> **Example 53 (Strictly convex with a singular Hessian)** Part 2 is sufficient but not necessary. \\f(x) = x^4\\ has \\f''(0) = 12 \cdot 0^2 = 0\\, so \\\mathbf{H}\_f(0) = \[0\]\\ is [singular](linear-algebra.llms.md#def-invertible-matrix) and not positive definite. Yet \\f\\ is strictly convex, by the strict form of [Equation 6](#eq-supporting-hyperplane): for \\x \ne y\\,
>
> \\ \begin{aligned} x^4 - y^4 - 4 y^3 (x - y) &= (x - y)(x^3 + x^2 y + x y^2 + y^3) - 4 y^3 (x - y) && \text{(factor } x^4 - y^4 \text{)} \\ &= (x - y)(x^3 + x^2 y + x y^2 - 3 y^3) && \text{(collect the } y^3 \text{ terms)} \\ &= (x - y)^2 (x^2 + 2 x y + 3 y^2) && \text{(} (x - y)(x^2 + 2 x y + 3 y^2) = x^3 + x^2 y + x y^2 - 3 y^3 \text{)} \\ &= (x - y)^2 \mathopen{}\left((x + y)^2 + 2 y^2\right)\mathclose{}, && \text{(complete the square)} \end{aligned} \\
>
> which is positive: \\(x - y)^2 \> 0\\, and \\(x + y)^2 + 2 y^2 = 0\\ would need \\y = 0\\ and then \\x = 0 = y\\.

> **NOTE:**
>
> **Corollary 4 (Stationary points of a convex function are global minimizers)** If \\f\\ is as in [Theorem 20](#thm-convex-first-order) and convex, then every stationary point \\\tilde{x}^\*\\ of \\f\\ ([Definition 15](#def-stationary-point)) is a [global minimizer](algebra.llms.md#def-global-minimizer).

> **NOTE:**
>
> *Proof*. For every \\\tilde{x}\\,
>
> \\ \begin{aligned} f(\tilde{x}) &\ge f(\tilde{x}^\*) + {\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} f(\tilde{x}^\*)\right)\mathclose{}}^{\top} (\tilde{x}- \tilde{x}^\*) && \text{(}\href{#eq-supporting-hyperplane}{\text{Equation~6}}\text{ with } \tilde{y}= \tilde{x}^\* \text{)} \\ &= f(\tilde{x}^\*) + {\tilde{0}}^{\top} (\tilde{x}- \tilde{x}^\*) && \text{(} \tilde{x}^\* \text{ is stationary)} \\ &= f(\tilde{x}^\*). && \text{(} {\tilde{0}}^{\top} \tilde{v} = 0 \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 54 (A convex function, and a non-convex one)**  
>
> - \\f(\tilde{x}) = x_1^2 + x_2^2 - 2 x_1\\ is convex by [Theorem 21](#thm-convex-hessian), since its Hessian is \\2 \mathbf{I}\_2\\ ([Example 40](#exm-second-order-condition)), so its stationary point \\{(1, 0)}^{\top}\\ ([Example 33](#exm-stationary-point)) is a global minimizer, as completing the square showed in [Example 34](#exm-first-order-condition).
> - Without convexity, a stationary point need not be a minimizer at all: \\x_1^2 - x_2^2\\ has the stationary point \\\tilde{0}\\, which is not a minimizer ([Example 34](#exm-first-order-condition)).
> - The corollary says nothing about whether a minimizer exists: \\e^{2x_1 + x_2} - x_1\\ is convex ([Example 52](#exm-convex-hessian)) but has no stationary point, and so no local minimizer ([Example 34](#exm-first-order-condition)).

## 4 Minimizing a quadratic under linear constraints

> **NOTE:**
>
> This section is adapted from the Lagrange-multiplier part of Zhou ([2024](#ref-zhou2024optim)), used under the MIT License (see the license text in [Linear Algebra](linear-algebra.llms.md#sec-subspaces)). The source solves the stationarity equations of the Lagrangian and reports the solution; here the solution is also proved to be the unique minimizer, directly from the positive definiteness of the matrices involved. The source assumes only that \\\mathbf{S}\\ is positive definite; the added hypothesis that the columns of \\\mathbf{A}\\ are linearly independent makes \\{\mathbf{A}}^{\top} \mathbf{S}^{-1} \mathbf{A}\\ invertible. The source’s example with general coefficients \\a_1, a_2, b\\ is specialized here to \\3, 4, 5\\. These parts of the source are not part of this section:
>
> - the Lagrange multiplier method for constraints that are not linear, or objectives that are not quadratic, including its multinomial maximum likelihood example
> - the eigenvalues of the block matrix of the stationarity equations, and the convexity of the Lagrangian in \\\tilde{x}\\ and its concavity in the multipliers
> - its homework examples

> **NOTE:**
>
> **Definition 22 (Feasible set and constraints)** In a problem that looks for a best point among some allowed points of \\\mathbb{R}^p\\, the set \\F \subseteq \mathbb{R}^p\\ of allowed points is the **feasible set**, and its points are **feasible**. When \\F\\ is the set of points that satisfy some equations or inequalities, those equations or inequalities are the **constraints**.

> **NOTE:**
>
> **Example 55 (A line as a feasible set)** With the single constraint \\3 x_1 + 4 x_2 = 5\\, the feasible set is the line \\\mathopen{}\left\\\tilde{x}\in \mathbb{R}^2 : 3 x_1 + 4 x_2 = 5\right\\\mathclose{}\\. \\{(1, 0.5)}^{\top}\\ is feasible, since \\3 \cdot 1 + 4 \cdot 0.5 = 3 + 2 = 5\\; \\\tilde{0}\\ is not feasible, since \\3 \cdot 0 + 4 \cdot 0 = 0 \ne 5\\.

> **NOTE:**
>
> **Definition 23 (Objective function (objective) and minimization problem)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ and let \\F \subseteq \mathbb{R}^p\\ be a feasible set ([Definition 22](#def-feasible-set)). In the problem of minimizing \\f\\ over \\F\\, \\f\\ is the **objective function** (or **objective**). A **minimizer of \\f\\ over \\F\\** is a feasible \\\tilde{x}^\*\\ with \\f(\tilde{x}^\*) \le f(\tilde{x})\\ for every feasible \\\tilde{x}\\: a [global minimizer](algebra.llms.md#def-global-minimizer) of \\f\\ with its domain restricted to \\F\\. When \\F\\ is given by constraints, the problem is to minimize \\f\\ **subject to** them.

> **NOTE:**
>
> **Example 56 (Minimizing over a line)** In the problem of minimizing \\x_1^2 + x_2^2\\ subject to \\3 x_1 + 4 x_2 = 5\\, the objective function is \\f(\tilde{x}) = x_1^2 + x_2^2\\, and the feasible set is the line of [Example 55](#exm-feasible-set). The feasible point \\{(1, 0.5)}^{\top}\\ has \\f(1, 0.5) = 1 + 0.25 = 1.25\\. \\\tilde{0}\\ minimizes \\f\\ over all of \\\mathbb{R}^2\\, with \\f(\tilde{0}) = 0\\, but it is not a minimizer over the feasible set, because it is not feasible.

Here the objective ([Definition 23](#def-minimization-problem)) is a quadratic \\\tfrac{1}{2}\\{\tilde{x}}^{\top} \mathbf{S} \tilde{x}\\ with \\\mathbf{S}\\ positive definite, and the constraints ([Definition 22](#def-feasible-set)) are \\m\\ linear equations \\{\mathbf{A}}^{\top} \tilde{x}= \tilde{b}\\, where \\\mathbf{A}\\ is a \\p \times m\\ matrix and \\\tilde{b} \in \mathbb{R}^m\\. The only stationary point of the objective alone ([Definition 15](#def-stationary-point)) is \\\tilde{0}\_{p \times 1}\\ (its gradient is \\\mathbf{S} \tilde{x}\\, and \\\mathbf{S}\\ is invertible), which may not satisfy the constraints. A Lagrange multiplier adds one unknown per constraint, and the minimizer over the feasible set ([Definition 22](#def-feasible-set)) is then found among the stationary points of a new function of the extended set of unknowns.

> **NOTE:**
>
> **Definition 24 (Lagrangian)** For the problem of minimizing \\f(\tilde{x})\\ over \\\tilde{x}\in \mathbb{R}^p\\ subject to \\{\mathbf{A}}^{\top} \tilde{x}= \tilde{b}\\, with \\\mathbf{A}\\ a \\p \times m\\ matrix and \\\tilde{b} \in \mathbb{R}^m\\, the **Lagrangian** is the function of \\\tilde{x}\in \mathbb{R}^p\\ and \\\tilde{\lambda} \in \mathbb{R}^m\\
>
> \\ L(\tilde{x}, \tilde{\lambda}) \stackrel{\text{def}}{=}f(\tilde{x}) + {\tilde{\lambda}}^{\top} \mathopen{}\left({\mathbf{A}}^{\top} \tilde{x}- \tilde{b}\right)\mathclose{}, \\
>
> and the entries of \\\tilde{\lambda}\\ are the **Lagrange multipliers**, one per constraint.

> **NOTE:**
>
> **Example 57 (The gradients of the Lagrangian of a quadratic)** Let \\f(\tilde{x}) = \tfrac{1}{2}\\{\tilde{x}}^{\top} \mathbf{S} \tilde{x}\\ with \\\mathbf{S}\\ symmetric and constant. By the [transpose of a product](linear-algebra.llms.md#thm-transpose-product), \\{\tilde{\lambda}}^{\top} {\mathbf{A}}^{\top} = {(\mathbf{A} \tilde{\lambda})}^{\top}\\, so
>
> \\ \begin{aligned} L(\tilde{x}, \tilde{\lambda}) &= \tfrac{1}{2}\\{\tilde{x}}^{\top} \mathbf{S} \tilde{x}+ {\tilde{\lambda}}^{\top} {\mathbf{A}}^{\top} \tilde{x}- {\tilde{\lambda}}^{\top} \tilde{b} && \text{(distribute)} \\ &= \tfrac{1}{2}\\{\tilde{x}}^{\top} \mathbf{S} \tilde{x}+ {(\mathbf{A} \tilde{\lambda})}^{\top} \tilde{x}- {\tilde{\lambda}}^{\top} \tilde{b}, && \text{(transpose of a product)} \end{aligned} \\
>
> and, since \\{\tilde{\lambda}}^{\top} \mathopen{}\left({\mathbf{A}}^{\top} \tilde{x}- \tilde{b}\right)\mathclose{}\\ is \\1 \times 1\\ and so equals its transpose,
>
> \\ L(\tilde{x}, \tilde{\lambda}) = \tfrac{1}{2}\\{\tilde{x}}^{\top} \mathbf{S} \tilde{x}+ {\mathopen{}\left({\mathbf{A}}^{\top} \tilde{x}- \tilde{b}\right)\mathclose{}}^{\top} \tilde{\lambda}. \\
>
> The partial derivatives of a sum are the sums of the partial derivatives, entry by entry. Using the first of these forms, [Theorem 7](#thm-quadratic-form) for the first term, [Corollary 1](#cor-deriv-lincom-tp) for the second (\\\mathbf{A} \tilde{\lambda}\\ is constant in \\\tilde{x}\\), and [Definition 8](#def-constant-wrt-vector) for the third,
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{x}} L(\tilde{x}, \tilde{\lambda}) &= \tfrac{1}{2}\\\frac{\partial}{\partial \tilde{x}} \mathopen{}\left({\tilde{x}}^{\top} \mathbf{S} \tilde{x}\right)\mathclose{} + \frac{\partial}{\partial \tilde{x}} \mathopen{}\left({(\mathbf{A} \tilde{\lambda})}^{\top} \tilde{x}\right)\mathclose{} - \frac{\partial}{\partial \tilde{x}} \mathopen{}\left({\tilde{\lambda}}^{\top} \tilde{b}\right)\mathclose{} && \text{(sum and constant multiple)} \\ &= \tfrac{1}{2} \mathopen{}\left(2 \mathbf{S} \tilde{x}\right)\mathclose{} + \mathbf{A} \tilde{\lambda} - \tilde{0}\_{p \times 1} && \text{(the three derivatives)} \\ &= \mathbf{S} \tilde{x}+ \mathbf{A} \tilde{\lambda}. && \text{(simplify)} \end{aligned} \\
>
> Using the second form, in which \\f(\tilde{x})\\ and \\{\mathbf{A}}^{\top} \tilde{x}- \tilde{b}\\ are constant in \\\tilde{\lambda}\\, and [Corollary 1](#cor-deriv-lincom-tp) again,
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\lambda}} L(\tilde{x}, \tilde{\lambda}) &= \frac{\partial}{\partial \tilde{\lambda}} f(\tilde{x}) + \frac{\partial}{\partial \tilde{\lambda}} \mathopen{}\left({\mathopen{}\left({\mathbf{A}}^{\top} \tilde{x}- \tilde{b}\right)\mathclose{}}^{\top} \tilde{\lambda}\right)\mathclose{} && \text{(sum)} \\ &= \tilde{0}\_{m \times 1} + \mathopen{}\left({\mathbf{A}}^{\top} \tilde{x}- \tilde{b}\right)\mathclose{} && \text{(the two derivatives)} \\ &= {\mathbf{A}}^{\top} \tilde{x}- \tilde{b}. && \text{(simplify)} \end{aligned} \\
>
> So \\(\tilde{x}, \tilde{\lambda})\\ makes the gradients equal \\\tilde{0}\_{p \times 1}\\ and \\\tilde{0}\_{m \times 1}\\ exactly when
>
> \\ \mathbf{S} \tilde{x}+ \mathbf{A} \tilde{\lambda} = \tilde{0}\_{p \times 1} \quad \text{and} \quad {\mathbf{A}}^{\top} \tilde{x}= \tilde{b}, \qquad\text{that is,}\qquad \underbrace{\begin{bmatrix} \mathbf{S} & \mathbf{A} \\ {\mathbf{A}}^{\top} & \tilde{0}\_{m \times m} \end{bmatrix}}\_{(p + m) \times (p + m)} \underbrace{\begin{bmatrix} \tilde{x}\\ \tilde{\lambda} \end{bmatrix}}\_{(p + m) \times 1} = \underbrace{\begin{bmatrix} \tilde{0}\_{p \times 1} \\ \tilde{b} \end{bmatrix}}\_{(p + m) \times 1}, \tag{7}\\
>
> the second equation being the constraint itself.

> **NOTE:**
>
> **Theorem 22 (Minimizing a positive definite quadratic under linear constraints)** Let \\\mathbf{S}\\ be a \\p \times p\\ [positive definite](linear-algebra.llms.md#def-positive-definite) matrix, \\\mathbf{A}\\ a \\p \times m\\ matrix with [linearly independent](linear-algebra.llms.md#def-linearly-independent) columns, and \\\tilde{b} \in \mathbb{R}^m\\. Then the \\m \times m\\ matrix \\\mathbf{M} \stackrel{\text{def}}{=}{\mathbf{A}}^{\top} \mathbf{S}^{-1} \mathbf{A}\\ is invertible, and \\f(\tilde{x}) = \tfrac{1}{2}\\{\tilde{x}}^{\top} \mathbf{S} \tilde{x}\\ has exactly one minimizer over the \\\tilde{x}\in \mathbb{R}^p\\ with \\{\mathbf{A}}^{\top} \tilde{x}= \tilde{b}\\, namely
>
> \\ \tilde{x}^\* = \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \tilde{b}. \\
>
> With \\\tilde{\lambda}^\* \stackrel{\text{def}}{=}-\mathbf{M}^{-1} \tilde{b}\\, the pair \\(\tilde{x}^\*, \tilde{\lambda}^\*)\\ solves [Equation 7](#eq-kkt), and the minimum value is \\f(\tilde{x}^\*) = \tfrac{1}{2}\\{\tilde{b}}^{\top} \mathbf{M}^{-1} \tilde{b}\\.

> **NOTE:**
>
> *Proof*. The steps marked “transpose of a product” use the [transpose of a product](linear-algebra.llms.md#thm-transpose-product), and \\\mathbf{S}\\ is symmetric because it is [positive definite](linear-algebra.llms.md#def-positive-definite).
>
> **\\\mathbf{M}\\ is invertible.** \\\mathbf{S}^{-1}\\ exists and is positive definite ([positive definite inverse](linear-algebra.llms.md#thm-pd-inverse)), so \\\mathbf{M} = {\mathbf{A}}^{\top} \mathbf{S}^{-1} \mathbf{A}\\ is positive definite ([operations that preserve definiteness](linear-algebra.llms.md#thm-pd-operations), part 1), and so invertible (positive definite inverse again). \\\mathbf{S}^{-1}\\ and \\\mathbf{M}^{-1}\\ are symmetric ([inverse of a symmetric matrix](linear-algebra.llms.md#cor-inverse-symmetric)), because \\\mathbf{S}\\ and \\\mathbf{M}\\ are.
>
> **\\\tilde{x}^\*\\ satisfies the constraint, and the pair solves [Equation 7](#eq-kkt).**
>
> \\ \begin{aligned} {\mathbf{A}}^{\top} \tilde{x}^\* &= {\mathbf{A}}^{\top} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \tilde{b} && \text{(substitute } \tilde{x}^\* \text{)} \\ &= \mathbf{M} \mathbf{M}^{-1} \tilde{b} && \text{(definition of } \mathbf{M} \text{)} \\ &= \tilde{b}, && \text{(} \mathbf{M} \mathbf{M}^{-1} = \mathbf{I}\_m \text{)} \\ \mathbf{S} \tilde{x}^\* + \mathbf{A} \tilde{\lambda}^\* &= \mathbf{S} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \tilde{b} - \mathbf{A} \mathbf{M}^{-1} \tilde{b} && \text{(substitute } \tilde{x}^\* \text{ and } \tilde{\lambda}^\* \text{)} \\ &= \mathbf{A} \mathbf{M}^{-1} \tilde{b} - \mathbf{A} \mathbf{M}^{-1} \tilde{b} && \text{(} \mathbf{S} \mathbf{S}^{-1} = \mathbf{I}\_p \text{)} \\ &= \tilde{0}\_{p \times 1}. && \text{(subtract)} \end{aligned} \\
>
> **\\\tilde{x}^\*\\ is the unique minimizer.** Let \\\tilde{x}\\ satisfy \\{\mathbf{A}}^{\top} \tilde{x}= \tilde{b}\\, and let \\\tilde{d} \stackrel{\text{def}}{=}\tilde{x}- \tilde{x}^\*\\, so \\{\mathbf{A}}^{\top} \tilde{d} = {\mathbf{A}}^{\top} \tilde{x}- {\mathbf{A}}^{\top} \tilde{x}^\* = \tilde{b} - \tilde{b} = \tilde{0}\_{m \times 1}\\ (matrix products distribute; both points satisfy the constraint). First, the cross term vanishes:
>
> \\ \begin{aligned} {\tilde{d}}^{\top} \mathbf{S} \tilde{x}^\* &= {\tilde{d}}^{\top} \mathbf{S} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \tilde{b} && \text{(substitute } \tilde{x}^\* \text{)} \\ &= {\tilde{d}}^{\top} \mathbf{A} \mathbf{M}^{-1} \tilde{b} && \text{(} \mathbf{S} \mathbf{S}^{-1} = \mathbf{I}\_p \text{)} \\ &= {({\mathbf{A}}^{\top} \tilde{d})}^{\top} \mathbf{M}^{-1} \tilde{b} && \text{(transpose of a product; } {({\mathbf{A}}^{\top})}^{\top} = \mathbf{A} \text{)} \\ &= {\tilde{0}\_{m \times 1}}^{\top} \mathbf{M}^{-1} \tilde{b} && \text{(} {\mathbf{A}}^{\top} \tilde{d} = \tilde{0}\_{m \times 1} \text{)} \\ &= 0. && \text{(a product with a zero factor is zero)} \end{aligned} \\
>
> Then
>
> \\ \begin{aligned} f(\tilde{x}) &= \tfrac{1}{2}\\{(\tilde{x}^\* + \tilde{d})}^{\top} \mathbf{S} (\tilde{x}^\* + \tilde{d}) && \text{(} \tilde{x}= \tilde{x}^\* + \tilde{d} \text{)} \\ &= \tfrac{1}{2} \mathopen{}\left({\tilde{x}^\*{}}^{\top} + {\tilde{d}}^{\top}\right)\mathclose{} \mathbf{S} (\tilde{x}^\* + \tilde{d}) && \text{(the transpose of a sum is the sum of the transposes)} \\ &= \tfrac{1}{2} \mathopen{}\left({\tilde{x}^\*{}}^{\top} \mathbf{S} \tilde{x}^\* + {\tilde{x}^\*{}}^{\top} \mathbf{S} \tilde{d} + {\tilde{d}}^{\top} \mathbf{S} \tilde{x}^\* + {\tilde{d}}^{\top} \mathbf{S} \tilde{d}\right)\mathclose{} && \text{(distribute)} \\ &= \tfrac{1}{2} \mathopen{}\left({\tilde{x}^\*{}}^{\top} \mathbf{S} \tilde{x}^\* + {\tilde{d}}^{\top} {\mathbf{S}}^{\top} \tilde{x}^\* + {\tilde{d}}^{\top} \mathbf{S} \tilde{x}^\* + {\tilde{d}}^{\top} \mathbf{S} \tilde{d}\right)\mathclose{} && \text{(} 1 \times 1 \text{: } {\tilde{x}^\*{}}^{\top} \mathbf{S} \tilde{d} = {({\tilde{x}^\*{}}^{\top} \mathbf{S} \tilde{d})}^{\top} \text{; transpose of a product)} \\ &= \tfrac{1}{2} \mathopen{}\left({\tilde{x}^\*{}}^{\top} \mathbf{S} \tilde{x}^\* + 2\\{\tilde{d}}^{\top} \mathbf{S} \tilde{x}^\* + {\tilde{d}}^{\top} \mathbf{S} \tilde{d}\right)\mathclose{} && \text{(} {\mathbf{S}}^{\top} = \mathbf{S} \text{; combine)} \\ &= \tfrac{1}{2}\\{\tilde{x}^\*{}}^{\top} \mathbf{S} \tilde{x}^\* + {\tilde{d}}^{\top} \mathbf{S} \tilde{x}^\* + \tfrac{1}{2}\\{\tilde{d}}^{\top} \mathbf{S} \tilde{d} && \text{(distribute } \tfrac{1}{2} \text{)} \\ &= f(\tilde{x}^\*) + \tfrac{1}{2}\\{\tilde{d}}^{\top} \mathbf{S} \tilde{d} && \text{(the cross term is } 0 \text{)} \\ &\ge f(\tilde{x}^\*), && \text{(} \mathbf{S} \text{ is positive definite)} \end{aligned} \\
>
> with equality only when \\\tilde{d} = \tilde{0}\_{p \times 1}\\, that is, \\\tilde{x}= \tilde{x}^\*\\.
>
> **The minimum value.**
>
> \\ \begin{aligned} f(\tilde{x}^\*) &= \tfrac{1}{2}\\{(\mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \tilde{b})}^{\top} \mathbf{S} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \tilde{b} && \text{(substitute } \tilde{x}^\* \text{)} \\ &= \tfrac{1}{2}\\{\tilde{b}}^{\top}\\{(\mathbf{M}^{-1})}^{\top}\\{\mathbf{A}}^{\top}\\{(\mathbf{S}^{-1})}^{\top}\\\mathbf{S} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \tilde{b} && \text{(transpose of a product, applied repeatedly)} \\ &= \tfrac{1}{2}\\{\tilde{b}}^{\top} \mathbf{M}^{-1} {\mathbf{A}}^{\top} \mathbf{S}^{-1} \mathbf{S} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \tilde{b} && \text{(} \mathbf{S}^{-1} \text{ and } \mathbf{M}^{-1} \text{ are symmetric)} \\ &= \tfrac{1}{2}\\{\tilde{b}}^{\top} \mathbf{M}^{-1} {\mathbf{A}}^{\top} \mathbf{S}^{-1} \mathbf{A} \mathbf{M}^{-1} \tilde{b} && \text{(} \mathbf{S}^{-1} \mathbf{S} = \mathbf{I}\_p \text{)} \\ &= \tfrac{1}{2}\\{\tilde{b}}^{\top} \mathbf{M}^{-1} \mathbf{M} \mathbf{M}^{-1} \tilde{b} && \text{(definition of } \mathbf{M} \text{)} \\ &= \tfrac{1}{2}\\{\tilde{b}}^{\top} \mathbf{M}^{-1} \tilde{b}. && \text{(} \mathbf{M}^{-1} \mathbf{M} = \mathbf{I}\_m \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 58 (The closest point on a line to the origin)** Minimize \\x_1^2 + x_2^2\\ subject to \\3 x_1 + 4 x_2 = 5\\. In the form of [Theorem 22](#thm-qp-equality), \\x_1^2 + x_2^2 = \tfrac{1}{2}\\{\tilde{x}}^{\top} (2 \mathbf{I}\_2) \tilde{x}\\, so \\\mathbf{S} = 2 \mathbf{I}\_2\\, \\\mathbf{A} = {(3, 4)}^{\top}\\ (\\p = 2\\, \\m = 1\\) and \\\tilde{b} = \[5\]\\. The hypotheses hold: \\2 \mathbf{I}\_2\\ is positive definite, and the single column \\{(3, 4)}^{\top}\\ is nonzero, so it is linearly independent. Also \\\mathbf{S}^{-1} = \tfrac{1}{2} \mathbf{I}\_2\\. Then, from the formulas of [Theorem 22](#thm-qp-equality),
>
> \\ \begin{aligned} \mathbf{M} &= {\mathbf{A}}^{\top}\\\tfrac{1}{2} \mathbf{I}\_2\\\mathbf{A} = \tfrac{1}{2}\\(3^2 + 4^2) = \tfrac{25}{2}, \\ \tilde{x}^\* &= \tfrac{1}{2} \mathbf{I}\_2 \begin{bmatrix} 3 \\ 4 \end{bmatrix} \mathopen{}\left(\tfrac{2}{25}\right)\mathclose{} (5) = \tfrac{5}{25} \begin{bmatrix} 3 \\ 4 \end{bmatrix} = \begin{bmatrix} 0.6 \\ 0.8 \end{bmatrix}, \\ \tilde{\lambda}^\* &= -\mathopen{}\left(\tfrac{2}{25}\right)\mathclose{} (5) = -0.4, \\ f(\tilde{x}^\*) &= \tfrac{1}{2} (5) \mathopen{}\left(\tfrac{2}{25}\right)\mathclose{} (5) = 1. \end{aligned} \\
>
> Checks:
>
> - the constraint: \\3 (0.6) + 4 (0.8) = 1.8 + 3.2 = 5\\;
> - the first block of [Equation 7](#eq-kkt): \\\mathbf{S} \tilde{x}^\* + \mathbf{A} \tilde{\lambda}^\* = {(1.2, 1.6)}^{\top} + {(3, 4)}^{\top} (-0.4) = {(1.2, 1.6)}^{\top} - {(1.2, 1.6)}^{\top} = \tilde{0}\_{2 \times 1}\\;
> - the value: \\0.6^2 + 0.8^2 = 0.36 + 0.64 = 1\\.
>
> Geometrically, \\\tilde{x}^\*\\ is the point of the line nearest the origin, at distance \\1\\.

> **NOTE:**
>
> **Example 59 (The hypotheses are needed)**  
>
> - If \\\mathbf{S}\\ is not positive definite there may be no minimizer: with \\\mathbf{S} = \begin{bmatrix} 1 & 0 \\ 0 & -1 \end{bmatrix}\\ and the constraint \\x_1 = 1\\ (\\\mathbf{A} = {(1, 0)}^{\top}\\, \\\tilde{b} = \[1\]\\), \\f(1, x_2) = \tfrac{1}{2} (1 - x_2^2)\\ decreases without bound as \\x_2\\ grows.
> - If the columns of \\\mathbf{A}\\ are dependent, \\\mathbf{M}\\ is not invertible: with \\\mathbf{S} = \mathbf{I}\_2\\ and \\\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}\\, \\\mathbf{M} = {\mathbf{A}}^{\top} \mathbf{A} = \begin{bmatrix} 2 & 2 \\ 2 & 2 \end{bmatrix}\\, whose columns are equal. So \\\mathbf{M} {(1, -1)}^{\top} = \tilde{0}\_{2 \times 1}\\, and \\\mathbf{M}\\ is not invertible ([a square matrix is invertible exactly when its null space is zero](linear-algebra.llms.md#thm-invertible-rank)). The two constraints both read \\x_1 + x_2 = b_i\\, so they have no solution at all when \\b_1 \ne b_2\\. When \\b_1 = b_2\\ a unique minimizer still exists, \\x_1 = x_2 = b_1 / 2\\, but the formula of [Theorem 22](#thm-qp-equality) cannot produce it.

> **NOTE:**
>
> **Definition 25 (Sensitivity)** Suppose a minimization problem ([Definition 23](#def-minimization-problem)) depends on a vector \\\tilde{b} \in \mathbb{R}^m\\, and let \\f^\*(\tilde{b})\\ be its minimum value, as a function of \\\tilde{b}\\. When the gradient \\\frac{\partial}{\partial \tilde{b}} f^\*(\tilde{b})\\ exists ([Definition 2](#def-vector-derivative)), it is the **sensitivity** of the minimum value to \\\tilde{b}\\: by [Definition 1](#def-partial-derivative), its entry \\i\\ is the limit, as a change in \\b_i\\ alone shrinks to \\0\\, of the resulting change in the minimum value divided by the change in \\b_i\\.

> **NOTE:**
>
> **Example 60 (The sensitivity of a one-point problem)** Minimize \\x^2\\ subject to \\x = b\\, for a number \\b\\. The feasible set ([Definition 22](#def-feasible-set)) is \\\mathopen{}\left\\b\right\\\mathclose{}\\, so the minimum value is \\f^\*(b) = b^2\\, and its sensitivity to \\b\\ is \\\frac{d }{d b} f^\*(b) = 2b\\. At \\b = 3\\ the sensitivity is \\6\\: moving \\b\\ from \\3\\ to \\3.1\\ raises the minimum value from \\9\\ to \\9.61\\, an increase of \\0.61\\, close to \\6 \times 0.1 = 0.6\\.

> **NOTE:**
>
> **Corollary 5 (The multiplier is the sensitivity of the minimum value)** In [Theorem 22](#thm-qp-equality), write the minimum value as a function of \\\tilde{b}\\, \\f^\*(\tilde{b}) = \tfrac{1}{2}\\{\tilde{b}}^{\top} \mathbf{M}^{-1} \tilde{b}\\. Its sensitivity to \\\tilde{b}\\ ([Definition 25](#def-sensitivity)) is
>
> \\ \frac{\partial}{\partial \tilde{b}} f^\*(\tilde{b}) = \mathbf{M}^{-1} \tilde{b} = -\tilde{\lambda}^\*. \\

> **NOTE:**
>
> *Proof*. \\\mathbf{M}^{-1}\\ is symmetric and does not depend on \\\tilde{b}\\, so [Theorem 7](#thm-quadratic-form) applies with \\\mathbf{M}^{-1}\\ in place of \\\mathbf{S}\\:
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{b}} f^\*(\tilde{b}) &= \tfrac{1}{2}\\\frac{\partial}{\partial \tilde{b}} \mathopen{}\left({\tilde{b}}^{\top} \mathbf{M}^{-1} \tilde{b}\right)\mathclose{} && \text{(constant multiple)} \\ &= \tfrac{1}{2} \mathopen{}\left(2 \mathbf{M}^{-1} \tilde{b}\right)\mathclose{} && \text{(derivative of a quadratic form)} \\ &= \mathbf{M}^{-1} \tilde{b} && \text{(simplify)} \\ &= -\tilde{\lambda}^\*. && \text{(definition of } \tilde{\lambda}^\* \text{)} \end{aligned} \\

> **NOTE:**
>
> **Example 61 (Moving the line)** In [Example 58](#exm-qp-equality) with a general right side \\b\\ in place of \\5\\, \\\mathbf{M}^{-1} = \tfrac{2}{25}\\ and \\f^\*(b) = \tfrac{1}{2} \mathopen{}\left(\tfrac{2}{25}\right)\mathclose{}\\b^2 = \tfrac{b^2}{25}\\, so \\\frac{d }{d b} f^\*(b) = \tfrac{2b}{25}\\. At \\b = 5\\ this derivative is \\\tfrac{10}{25} = 0.4 = -\lambda^\*\\: moving the line \\3 x_1 + 4 x_2 = b\\ outward by a small step \\\varepsilon\\ in \\b\\ raises the minimum value by about \\0.4\\\varepsilon\\.

## 5 Newton’s method and gradient descent

> **NOTE:**
>
> This section is adapted from the Newton-Raphson and gradient descent parts of Zhou ([2024](#ref-zhou2024optim)), used under the MIT License (see the license text in [Linear Algebra](linear-algebra.llms.md#sec-subspaces)). The source motivates the Newton step by minimizing a quadratic approximation; here that step is proved to be the exact minimizer of the quadratic model. In the source’s zigzag example the starting value of the objective is \\\tfrac{1}{2}(b^2 + b)\\, not \\\tfrac{1}{2}(1 + b^2)\\ as the source writes; the ratio of successive values is unaffected. In the same example the source’s formula for \\\tilde{x}^{(1)}\\ has \\\tilde{x}^{(1)}\\ on its right side where \\\tilde{x}^{(0)}\\ is meant. These parts of the source are not part of this section:
>
> - the quadratic convergence theorem for Newton’s method in general, and its remedies for instability (a positive definite substitute for the Hessian, and shortening the Newton step by a search along its direction)
> - its remark that Hessians are expensive to compute
> - the convergence-rate theorem for strongly convex functions
> - gradient descent with momentum, and its optimal parameters
> - Nesterov acceleration, and stochastic gradient descent
> - its code and animations

> **NOTE:**
>
> **Definition 26 (Iterates and convergence of a sequence of vectors)** A [sequence](sets-functions.llms.md#def-sequence) \\\tilde{x}^{(0)}, \tilde{x}^{(1)}, \ldots\\ in \\\mathbb{R}^p\\ **converges** to \\\tilde{x}^\* \in \mathbb{R}^p\\ if the sequence of distances \\\mathopen{}\left\lVert\tilde{x}^{(t)} - \tilde{x}^\*\right\rVert\mathclose{}\\ [converges](algebra.llms.md#def-sequence-limit) to \\0\\. For \\p = 1\\, \\\mathopen{}\left\lVert x^{(t)} - x^\*\right\rVert\mathclose{} = \mathopen{}\left\|x^{(t)} - x^\*\right\|\mathclose{}\\, and this is the convergence of a sequence of numbers to \\x^\*\\.
>
> An **iterative method** starts from a point \\\tilde{x}^{(0)}\\ and computes \\\tilde{x}^{(t+1)}\\ from \\\tilde{x}^{(t)}\\ by a fixed rule, for \\t = 0, 1, 2, \ldots\\; the points \\\tilde{x}^{(t)}\\ are its **iterates**. For a point \\\tilde{x}^\*\\ that the method is meant to reach, \\\mathopen{}\left\lVert\tilde{x}^{(t)} - \tilde{x}^\*\right\rVert\mathclose{}\\ is the **error** of the iterate \\\tilde{x}^{(t)}\\.

> **NOTE:**
>
> **Example 62 (Halving a vector)** The iterative method \\\tilde{x}^{(t+1)} = \tfrac{1}{2}\\\tilde{x}^{(t)}\\ from \\\tilde{x}^{(0)} = {(4, 2)}^{\top}\\ has iterates \\{(4, 2)}^{\top}, {(2, 1)}^{\top}, {(1, 0.5)}^{\top}, \ldots\\, that is, \\\tilde{x}^{(t)} = 2^{-t}\\{(4, 2)}^{\top}\\. With \\\tilde{x}^\* = \tilde{0}\\, the error of \\\tilde{x}^{(t)}\\ is
>
> \\ \begin{aligned} \mathopen{}\left\lVert 2^{-t}\\{(4, 2)}^{\top} - \tilde{0}\right\rVert\mathclose{} &= 2^{-t}\\\mathopen{}\left\lVert{(4, 2)}^{\top}\right\rVert\mathclose{} && \text{(norm of a multiple)} \\ &= 2^{-t} \sqrt{20}, && \text{(} 4^2 + 2^2 = 20 \text{)} \end{aligned} \\
>
> which converges to \\0\\, so the iterates converge to \\\tilde{0}\\.

> **NOTE:**
>
> **Definition 27 (Newton’s method for minimization)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first and second partial derivatives, and let \\\tilde{x}^{(0)}\\ be a starting point. **Newton’s method** computes, for \\t = 0, 1, 2, \ldots\\, as long as \\\mathbf{H}\_f(\tilde{x}^{(t)})\\ is invertible,
>
> \\ \tilde{x}^{(t+1)} \stackrel{\text{def}}{=}\tilde{x}^{(t)} - \mathopen{}\left\[\mathbf{H}\_f(\tilde{x}^{(t)})\right\]\mathclose{}^{-1} \frac{\partial}{\partial \tilde{x}} f(\tilde{x}^{(t)}). \\
>
> The vector \\-\mathopen{}\left\[\mathbf{H}\_f(\tilde{x}^{(t)})\right\]\mathclose{}^{-1} \frac{\partial}{\partial \tilde{x}} f(\tilde{x}^{(t)})\\ is the **Newton step** at \\\tilde{x}^{(t)}\\.

> **NOTE:**
>
> **Example 63 (Newton’s method for a cubic)** Let \\f(x) = \tfrac{1}{3} x^3 - 4x\\, so \\f'(x) = x^2 - 4\\ and \\f''(x) = 2x\\. For \\x^{(t)} \ne 0\\, one Newton step gives
>
> \\ \begin{aligned} x^{(t+1)} &= x^{(t)} - \frac{(x^{(t)})^2 - 4}{2 x^{(t)}} && \text{(Newton's method with } p = 1 \text{)} \\ &= \frac{2 (x^{(t)})^2 - (x^{(t)})^2 + 4}{2 x^{(t)}} && \text{(common denominator)} \\ &= \frac{1}{2} \mathopen{}\left(x^{(t)} + \frac{4}{x^{(t)}}\right)\mathclose{}. && \text{(simplify)} \end{aligned} \\
>
> From \\x^{(0)} = 2.5\\:
>
> - \\x^{(1)} = \tfrac{1}{2} (2.5 + 1.6) = 2.05\\;
> - \\x^{(2)} = \tfrac{1}{2} (2.05 + 1.951219\ldots) = 2.000610\\ (to six decimals);
> - \\x^{(3)} = 2.0000001\\ (to seven decimals).
>
> The iterates ([Definition 26](#def-vector-sequence-limit)) approach \\2\\, the local minimizer of \\f\\ (a stationary point, since \\f'(2) = 0\\, with \\f''(2) = 4 \> 0\\; [Theorem 16](#thm-second-order-condition)).

> **NOTE:**
>
> **Definition 28 (Quadratic model (second-order Taylor polynomial))** Let \\f\\ be as in [Definition 27](#def-newton-method) and let \\\tilde{x}\\ be a point, with \\\tilde{g} \stackrel{\text{def}}{=}\frac{\partial}{\partial \tilde{x}} f(\tilde{x})\\ and \\\mathbf{H} \stackrel{\text{def}}{=}\mathbf{H}\_f(\tilde{x})\\. The **quadratic model** of \\f\\ at \\\tilde{x}\\ is the function of a step \\\tilde{\delta} \in \mathbb{R}^p\\
>
> \\ q(\tilde{\delta}) \stackrel{\text{def}}{=}f(\tilde{x}) + {\tilde{g}}^{\top} \tilde{\delta} + \tfrac{1}{2}\\{\tilde{\delta}}^{\top} \mathbf{H} \tilde{\delta}, \\
>
> also called the **second-order Taylor polynomial** of \\f\\ at \\\tilde{x}\\: when the second partial derivatives of \\f\\ are continuous, [Theorem 15](#thm-taylor-mv) says that \\f(\tilde{x}+ \tilde{\delta})\\ equals the same expression with the Hessian evaluated at a point between \\\tilde{x}\\ and \\\tilde{x}+ \tilde{\delta}\\.

> **NOTE:**
>
> **Example 64 (The model at \\x = 2.5\\)** For \\f(x) = \tfrac{1}{3} x^3 - 4x\\ at \\x = 2.5\\ ([Example 63](#exm-newton-method)), \\g = 2.5^2 - 4 = 2.25\\ and \\H = \[2 \cdot 2.5\] = \[5\]\\, so \\q(\delta) = f(2.5) + 2.25\\\delta + 2.5\\\delta^2\\. For \\f(\tilde{x}) = \tfrac{1}{2} (x_1^2 + 3 x_2^2)\\, whose Hessian is \\\begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix}\\ at every point, the model at any \\\tilde{x}\\ equals \\f(\tilde{x}+ \tilde{\delta})\\ exactly ([Example 36](#exm-taylor-mv) with \\\mathbf{S} = \begin{bmatrix} 1/2 & 0 \\ 0 & 3/2 \end{bmatrix}\\).

> **NOTE:**
>
> **Theorem 23 (The Newton step minimizes the quadratic model)** Let \\q\\ be the quadratic model of \\f\\ at \\\tilde{x}\\ ([Definition 28](#def-quadratic-model)), with \\\mathbf{H} = \mathbf{H}\_f(\tilde{x})\\ [positive definite](linear-algebra.llms.md#def-positive-definite). Its unique minimizer is the Newton step \\\tilde{\delta}^\* = -\mathbf{H}^{-1} \tilde{g}\\.

> **NOTE:**
>
> *Proof*. \\\mathbf{H}\\ is symmetric, by the definition of [positive definite](linear-algebra.llms.md#def-positive-definite), and invertible ([positive definite inverse](linear-algebra.llms.md#thm-pd-inverse)), so \\\tilde{\delta}^\*\\ exists and \\\mathbf{H} \tilde{\delta}^\* = -\tilde{g}\\. For any \\\tilde{d} \in \mathbb{R}^p\\, first
>
> \\ \begin{aligned} {\tilde{d}}^{\top} \mathbf{H} \tilde{\delta}^\* &= -{\tilde{d}}^{\top} \tilde{g} && \text{(} \mathbf{H} \tilde{\delta}^\* = -\tilde{g} \text{)} \\ &= -{\tilde{g}}^{\top} \tilde{d}, && \text{(a } 1 \times 1 \text{ matrix equals its transpose)} \end{aligned} \\
>
> and \\{\tilde{\delta}^\*{}}^{\top} \mathbf{H} \tilde{d} = {\tilde{d}}^{\top} \mathbf{H} \tilde{\delta}^\*\\ in the same way, using \\{\mathbf{H}}^{\top} = \mathbf{H}\\. Then
>
> \\ \begin{aligned} q(\tilde{\delta}^\* + \tilde{d}) &= f(\tilde{x}) + {\tilde{g}}^{\top} (\tilde{\delta}^\* + \tilde{d}) + \tfrac{1}{2}\\{(\tilde{\delta}^\* + \tilde{d})}^{\top} \mathbf{H} (\tilde{\delta}^\* + \tilde{d}) && \text{(definition of } q \text{)} \\ &= f(\tilde{x}) + {\tilde{g}}^{\top} \tilde{\delta}^\* + {\tilde{g}}^{\top} \tilde{d} + \tfrac{1}{2} \mathopen{}\left({\tilde{\delta}^\*{}}^{\top} \mathbf{H} \tilde{\delta}^\* + {\tilde{\delta}^\*{}}^{\top} \mathbf{H} \tilde{d} + {\tilde{d}}^{\top} \mathbf{H} \tilde{\delta}^\* + {\tilde{d}}^{\top} \mathbf{H} \tilde{d}\right)\mathclose{} && \text{(distribute)} \\ &= f(\tilde{x}) + {\tilde{g}}^{\top} \tilde{\delta}^\* + {\tilde{g}}^{\top} \tilde{d} + \tfrac{1}{2}\\{\tilde{\delta}^\*{}}^{\top} \mathbf{H} \tilde{\delta}^\* - {\tilde{g}}^{\top} \tilde{d} + \tfrac{1}{2}\\{\tilde{d}}^{\top} \mathbf{H} \tilde{d} && \text{(both cross terms equal } -{\tilde{g}}^{\top} \tilde{d} \text{)} \\ &= f(\tilde{x}) + {\tilde{g}}^{\top} \tilde{\delta}^\* + \tfrac{1}{2}\\{\tilde{\delta}^\*{}}^{\top} \mathbf{H} \tilde{\delta}^\* + \tfrac{1}{2}\\{\tilde{d}}^{\top} \mathbf{H} \tilde{d} && \text{(cancel } {\tilde{g}}^{\top} \tilde{d} \text{)} \\ &= q(\tilde{\delta}^\*) + \tfrac{1}{2}\\{\tilde{d}}^{\top} \mathbf{H} \tilde{d}, && \text{(definition of } q \text{)} \end{aligned} \\
>
> which is greater than \\q(\tilde{\delta}^\*)\\ for every \\\tilde{d} \ne \tilde{0}\_{p \times 1}\\, since \\\mathbf{H}\\ is positive definite.

> **NOTE:**
>
> **Example 65 (The Newton step at \\x = 2.5\\)** For the model \\q(\delta) = f(2.5) + 2.25\\\delta + 2.5\\\delta^2\\ of [Example 64](#exm-quadratic-model), \\H = \[5\]\\ is positive definite, so by [Theorem 23](#thm-newton-model) its minimizer is \\\delta^\* = -H^{-1} g = -2.25 / 5 = -0.45\\. Setting the derivative \\2.25 + 5 \delta\\ to \\0\\ gives the same \\\delta^\*\\, and \\2.5 - 0.45 = 2.05 = x^{(1)}\\ ([Example 63](#exm-newton-method)).

> **NOTE:**
>
> **Definition 29 (Quadratic convergence)** A [sequence](sets-functions.llms.md#def-sequence) \\\tilde{x}^{(0)}, \tilde{x}^{(1)}, \ldots\\ in \\\mathbb{R}^p\\ that converges ([Definition 26](#def-vector-sequence-limit)) to \\\tilde{x}^\*\\ **converges quadratically** if there is a constant \\C\\ with
>
> \\ \mathopen{}\left\lVert\tilde{x}^{(t+1)} - \tilde{x}^\*\right\rVert\mathclose{} \le C\\\mathopen{}\left\lVert\tilde{x}^{(t)} - \tilde{x}^\*\right\rVert\mathclose{}^2 \qquad \text{for every } t. \\

> **NOTE:**
>
> **Example 66 (Halving the error is not quadratic convergence)** \\x^{(t)} = 2^{-t}\\ converges to \\0\\, but it does not converge quadratically: the bound would need \\2^{-(t+1)} \le C\\(2^{-t})^2 = C\\2^{-2t}\\, that is, \\2^{t - 1} \le C\\, which fails once \\t \> 1 + \log_2 C\\. Each step only halves the error.

> **NOTE:**
>
> **Example 67 (The error squares at each step)** For the iteration \\x^{(t+1)} = \tfrac{1}{2} (x^{(t)} + 4 / x^{(t)})\\ of [Example 63](#exm-newton-method),
>
> \\ \begin{aligned} x^{(t+1)} - 2 &= \frac{1}{2} \mathopen{}\left(x^{(t)} + \frac{4}{x^{(t)}}\right)\mathclose{} - 2 && \text{(the iteration)} \\ &= \frac{(x^{(t)})^2 + 4 - 4 x^{(t)}}{2 x^{(t)}} && \text{(common denominator)} \\ &= \frac{(x^{(t)} - 2)^2}{2 x^{(t)}}. && \text{(the numerator is a perfect square)} \end{aligned} \\
>
> So near \\2\\ the error is roughly squared and divided by \\4\\ at each step: the errors are \\0.05\\, then \\0.00061\\, then \\0.000000093\\, and \\0.05^2 / (2 \cdot 2.05) \approx 0.00061\\. The iterates converge quadratically ([Definition 29](#def-quadratic-convergence)): \\C = \tfrac{1}{2}\\ works for every \\x^{(t)} \ge 1\\, since then \\\tfrac{1}{2 x^{(t)}} \le \tfrac{1}{2}\\, and every iterate from \\2.5\\ is at least \\2\\, since the identity makes \\x^{(t+1)} - 2 \ge 0\\ whenever \\x^{(t)} \> 0\\. Zhou ([2024](#ref-zhou2024optim)) states such a bound for Newton’s method in general; it holds from starting points close enough to a minimizer where the Hessian is positive definite, when near that minimizer the Hessian changes by at most a constant times the distance moved, which these notes do not prove.

> **NOTE:**
>
> **Example 68 (Newton’s method can find a maximum)** From \\x^{(0)} = -2.5\\ the same iteration gives \\-2.05\\, \\-2.000610\\, \\-2.0000001\\, approaching \\-2\\. But \\-2\\ is not a minimizer of \\f\\: it is a stationary point of \\-f\\, whose second derivative there is \\-f''(-2) = 4 \> 0\\, so it is a strict local minimizer of \\-f\\ ([Theorem 16](#thm-second-order-condition)), that is, \\f\\ is strictly larger at \\-2\\ than at all nearby points. Newton’s method looks only for a stationary point, and here the Hessian \\f''(x) = 2x\\ is negative along the way, so the quadratic model has no minimizer (with \\H \< 0\\, \\q(\delta) = f + g\\\delta + \tfrac{1}{2} H \delta^2\\ decreases without bound) and [Theorem 23](#thm-newton-model) does not apply: the positive definite hypothesis there is needed.

> **NOTE:**
>
> **Theorem 24 (Newton’s method minimizes a quadratic in one step)** Let \\\mathbf{S}\\ be a \\p \times p\\ [positive definite](linear-algebra.llms.md#def-positive-definite) matrix, \\\tilde{c} \in \mathbb{R}^p\\, and \\f(\tilde{x}) = \tfrac{1}{2}\\{\tilde{x}}^{\top} \mathbf{S} \tilde{x}- {\tilde{c}}^{\top} \tilde{x}\\. From any \\\tilde{x}^{(0)}\\, Newton’s method ([Definition 27](#def-newton-method)) gives \\\tilde{x}^{(1)} = \mathbf{S}^{-1} \tilde{c}\\, the unique minimizer of \\f\\.

> **NOTE:**
>
> *Proof*. Partial derivatives of a sum or of a constant multiple are the sum or multiple of the partial derivatives, so by [Theorem 7](#thm-quadratic-form) for \\\tfrac{1}{2}\\{\tilde{x}}^{\top} \mathbf{S} \tilde{x}\\ and [Corollary 1](#cor-deriv-lincom-tp) for \\{\tilde{c}}^{\top} \tilde{x}\\, \\\frac{\partial}{\partial \tilde{x}} f(\tilde{x}) = \tfrac{1}{2} (2 \mathbf{S} \tilde{x}) - \tilde{c} = \mathbf{S} \tilde{x}- \tilde{c}\\; by [Theorem 11](#thm-hessian-quadratic) with \\\tfrac{1}{2} \mathbf{S}\\ in place of \\\mathbf{S}\\, and because the gradient \\-\tilde{c}\\ of the linear term is constant ([Definition 8](#def-constant-wrt-vector)), \\\mathbf{H}\_f(\tilde{x}) = \mathbf{S}\\, which is invertible ([positive definite inverse](linear-algebra.llms.md#thm-pd-inverse)). So
>
> \\ \begin{aligned} \tilde{x}^{(1)} &= \tilde{x}^{(0)} - \mathbf{S}^{-1} (\mathbf{S} \tilde{x}^{(0)} - \tilde{c}) && \text{(definition of Newton's method)} \\ &= \tilde{x}^{(0)} - \mathbf{S}^{-1} \mathbf{S} \tilde{x}^{(0)} + \mathbf{S}^{-1} \tilde{c} && \text{(distribute)} \\ &= \tilde{x}^{(0)} - \tilde{x}^{(0)} + \mathbf{S}^{-1} \tilde{c} && \text{(} \mathbf{S}^{-1} \mathbf{S} = \mathbf{I}\_p \text{)} \\ &= \mathbf{S}^{-1} \tilde{c}. && \text{(cancel)} \end{aligned} \\
>
> The gradient at \\\mathbf{S}^{-1} \tilde{c}\\ is \\\mathbf{S} \mathbf{S}^{-1} \tilde{c} - \tilde{c} = \tilde{0}\_{p \times 1}\\, and \\f\\ is strictly convex ([Theorem 21](#thm-convex-hessian), part 2), so \\\mathbf{S}^{-1} \tilde{c}\\ is a global minimizer ([Corollary 4](#cor-convex-stationary)). It is the only one: a strictly convex function has at most one global minimizer, since the midpoint of two distinct global minimizers, which have equal values, would have a strictly smaller value ([Definition 19](#def-strictly-convex) with \\t = \tfrac{1}{2}\\).

> **NOTE:**
>
> **Example 69 (One step to the minimizer)** Let \\f(\tilde{x}) = \tfrac{1}{2} (x_1^2 + 3 x_2^2)\\, so \\\mathbf{S} = \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix}\\ and \\\tilde{c} = \tilde{0}\_{2 \times 1}\\. From \\\tilde{x}^{(0)} = {(3, 1)}^{\top}\\ the gradient is \\\mathbf{S} \tilde{x}^{(0)} = {(3, 3)}^{\top}\\, and \\\mathbf{S}^{-1} = \begin{bmatrix} 1 & 0 \\ 0 & 1/3 \end{bmatrix}\\, so the Newton step is \\-\mathbf{S}^{-1} {(3, 3)}^{\top} = -{(3, 1)}^{\top}\\ and \\\tilde{x}^{(1)} = {(3, 1)}^{\top} - {(3, 1)}^{\top} = \tilde{0}\_{2 \times 1}\\, the minimizer.

> **NOTE:**
>
> **Definition 30 (Gradient descent)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first partial derivatives, let \\\tilde{x}^{(0)}\\ be a starting point, and let \\s^{(0)}, s^{(1)}, \ldots\\ be positive **step lengths**. **Gradient descent** computes, for \\t = 0, 1, 2, \ldots\\,
>
> \\ \tilde{x}^{(t+1)} \stackrel{\text{def}}{=}\tilde{x}^{(t)} - s^{(t)}\\\frac{\partial}{\partial \tilde{x}} f(\tilde{x}^{(t)}). \\
>
> It is Newton’s method ([Definition 27](#def-newton-method)) with the Hessian replaced by \\\tfrac{1}{s^{(t)}} \mathbf{I}\_p\\, so it needs no second derivatives.

> **NOTE:**
>
> **Example 70 (Fixed steps on a parabola)** For \\f(x) = x^2\\, \\f'(x) = 2x\\, so gradient descent with fixed step length \\s\\ is \\x^{(t+1)} = x^{(t)} - 2 s\\x^{(t)} = (1 - 2s)\\x^{(t)}\\, and \\x^{(t)} = (1 - 2s)^t x^{(0)}\\.
>
> - With \\s = 0.25\\, \\x^{(t)} = 0.5^t x^{(0)}\\, which tends to the minimizer \\0\\.
> - With \\s = 0.5\\, the first step lands on \\0\\, since \\1 - 2s = 0\\.
> - With \\s = 1.5\\, \\x^{(t)} = (-2)^t x^{(0)}\\, which moves away from \\0\\ for any \\x^{(0)} \ne 0\\: too long a step can make gradient descent fail.

> **NOTE:**
>
> **Definition 31 (Line search and exact line search)** In gradient descent ([Definition 30](#def-gradient-descent)), a **line search** is a rule that chooses the step length \\s^{(t)}\\ by examining the values of \\f\\ along the line \\\mathopen{}\left\\\tilde{x}^{(t)} - s\\\frac{\partial}{\partial \tilde{x}} f(\tilde{x}^{(t)}) : s \> 0\right\\\mathclose{}\\. **Exact line search** is the line search that chooses \\s^{(t)}\\ to minimize \\f(\tilde{x}^{(t)} - s\\\frac{\partial}{\partial \tilde{x}} f(\tilde{x}^{(t)}))\\ over \\s \> 0\\.

> **NOTE:**
>
> **Example 71 (Exact line search on a parabola)** For \\f(x) = x^2\\ and \\x^{(t)} = 2\\, the derivative is \\f'(2) = 4\\, so the line is \\\mathopen{}\left\\2 - 4s : s \> 0\right\\\mathclose{}\\ and the values along it are
>
> \\ \begin{aligned} \phi(s) &= f(2 - 4s) && \text{(the value at step length } s \text{)} \\&= (2 - 4s)^2 && (f(x) = x^2) \end{aligned} \\
>
> \\\phi(s) \ge 0\\ for every \\s\\, and \\\phi(0.5) = (2 - 2)^2 = 0\\, so exact line search chooses \\s^{(t)} = 0.5\\, which lands on the minimizer \\x^{(t+1)} = 0\\ in one step.

> **NOTE:**
>
> **Definition 32 (Descent direction)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have a gradient \\\tilde{g} \stackrel{\text{def}}{=}\frac{\partial}{\partial \tilde{x}} f(\tilde{x})\\ at \\\tilde{x}\\. A direction \\\tilde{d}\\ ([Definition 3](#def-direction)) is a **descent direction** for \\f\\ at \\\tilde{x}\\ if \\{\tilde{g}}^{\top} \tilde{d} \< 0\\. When \\\tilde{g} \ne \tilde{0}\_{p \times 1}\\, \\-\tilde{g}\\ is a descent direction, since \\{\tilde{g}}^{\top} (-\tilde{g}) = -\mathopen{}\left\lVert\tilde{g}\right\rVert\mathclose{}^2 \< 0\\.

> **NOTE:**
>
> **Example 72 (Descent directions for \\x_1^2 + x_2^2\\ at \\{(1, 0)}^{\top}\\)** Let \\f(\tilde{x}) = x_1^2 + x_2^2\\ and \\\tilde{x}= {(1, 0)}^{\top}\\, so \\\tilde{g} = {(2 x_1,\\ 2 x_2)}^{\top} = {(2, 0)}^{\top}\\.
>
> - \\\tilde{d} = {(-1, 1)}^{\top}\\ is a descent direction: \\{\tilde{g}}^{\top} \tilde{d} = -2 + 0 = -2 \< 0\\.
> - \\\tilde{d} = {(0, 1)}^{\top}\\ is not: \\{\tilde{g}}^{\top} \tilde{d} = 0\\.
> - \\-\tilde{g} = {(-2, 0)}^{\top}\\ is: \\{\tilde{g}}^{\top} (-\tilde{g}) = -4 \< 0\\.

> **NOTE:**
>
> **Theorem 25 (A short enough step downhill decreases the function)** Let \\f : \mathbb{R}^p \to \mathbb{R}\\ have first partial derivatives that are continuous on \\\mathbb{R}^p\\ ([Definition 14](#def-continuous-several)), and let \\\tilde{x}\in \mathbb{R}^p\\ be a point with \\\tilde{g} \stackrel{\text{def}}{=}\frac{\partial}{\partial \tilde{x}} f(\tilde{x}) \ne \tilde{0}\_{p \times 1}\\. Then there is an \\\bar{s} \> 0\\ with \\f(\tilde{x}- s \tilde{g}) \< f(\tilde{x})\\ for every \\s \in (0, \bar{s})\\: a short enough step in the descent direction \\-\tilde{g}\\ ([Definition 32](#def-descent-direction)) decreases \\f\\.

> **NOTE:**
>
> *Proof*. Let \\h(s) \stackrel{\text{def}}{=}f(\tilde{x}- s \tilde{g})\\. The inner function \\s \mapsto \tilde{x}- s \tilde{g}\\ has derivative \\-{\tilde{g}}^{\top}\\ ([Definition 6](#def-vector-valued-derivative)), so by the vector chain rule ([Theorem 8](#thm-chain-vec))
>
> \\ \begin{aligned} h'(s) &= -{\tilde{g}}^{\top}\\\frac{\partial}{\partial \tilde{x}} f(\tilde{x}- s \tilde{g}), && \text{(chain rule)} \\ h'(0) &= -{\tilde{g}}^{\top}\\\frac{\partial}{\partial \tilde{x}} f(\tilde{x}) && \text{(set } s = 0 \text{)} \\ &= -{\tilde{g}}^{\top} \tilde{g} && \text{(definition of } \tilde{g} \text{)} \\ &= -\mathopen{}\left\lVert\tilde{g}\right\rVert\mathclose{}^2 && \text{(squared length)} \\ &\< 0. && \text{(} \tilde{g} \ne \tilde{0}\_{p \times 1} \text{)} \end{aligned} \\
>
> Since \\h'(0) = \lim\_{s \to 0} (h(s) - h(0)) / s\\ is negative, taking \\\varepsilon = \mathopen{}\left\|h'(0)\right\|\mathclose{}\\ in the definition of the limit gives an \\\bar{s} \> 0\\ such that \\(h(s) - h(0)) / s \< h'(0) + \mathopen{}\left\|h'(0)\right\|\mathclose{} = 0\\ for \\0 \< s \< \bar{s}\\. Multiplying by \\s \> 0\\, \\h(s) \< h(0)\\, that is, \\f(\tilde{x}- s \tilde{g}) \< f(\tilde{x})\\.

> **NOTE:**
>
> **Example 73 (How short is short enough)** In [Example 70](#exm-gradient-descent), \\f(x) = x^2\\ at \\x \ne 0\\ has \\g = 2x\\, and \\f(x - 2 s x) = (1 - 2s)^2 x^2 \< x^2\\ exactly when \\\mathopen{}\left\|1 - 2s\right\|\mathclose{} \< 1\\, that is, when \\0 \< s \< 1\\. So [Theorem 25](#thm-descent-direction) holds with \\\bar{s} = 1\\, and the step \\s = 1.5\\ of that example was too long.

> **NOTE:**
>
> **Example 74 (Gradient descent zigzags)** Let \\f(\tilde{x}) = \tfrac{1}{2} (x_1^2 + b\\x_2^2)\\ with \\b \> 0\\, so \\\frac{\partial}{\partial \tilde{x}} f(\tilde{x}) = {(x_1,\\ b x_2)}^{\top}\\ and one gradient step of length \\s\\ from \\\tilde{x}\\ gives \\{((1 - s) x_1,\\ (1 - b s) x_2)}^{\top}\\. For exact line search ([Definition 31](#def-line-search)), let \\\phi(s) \stackrel{\text{def}}{=}f\\ at that point:
>
> \\ \begin{aligned} \phi(s) &= \tfrac{1}{2} \mathopen{}\left((1 - s)^2 x_1^2 + b (1 - b s)^2 x_2^2\right)\mathclose{}, && \text{(definition of } f \text{)} \\ \phi'(s) &= -(1 - s) x_1^2 - b^2 (1 - b s) x_2^2 && \text{(chain rule, term by term)} \\ &= -x_1^2 + s\\x_1^2 - b^2 x_2^2 + b^3 s\\x_2^2 && \text{(expand the products)} \\ &= s\\(x_1^2 + b^3 x_2^2) - (x_1^2 + b^2 x_2^2). && \text{(collect the terms in } s \text{)} \end{aligned} \\
>
> For \\\tilde{x}\ne \tilde{0}\_{2 \times 1}\\, \\x_1^2 + b^3 x_2^2 \> 0\\, so \\\phi'\\ is increasing in \\s\\ with a single zero, and \\\phi\\ is minimized at \\s^\* = \dfrac{x_1^2 + b^2 x_2^2}{x_1^2 + b^3 x_2^2}\\. From \\\tilde{x}^{(0)} = {(b, 1)}^{\top}\\:
>
> \\ \begin{aligned} s^{(0)} &= \frac{b^2 + b^2}{b^2 + b^3} && \text{(substitute } x_1 = b, x_2 = 1 \text{)} \\ &= \frac{2}{1 + b}, && \text{(cancel } b^2 \text{)} \end{aligned} \\
>
> and, with \\r \stackrel{\text{def}}{=}\tfrac{b - 1}{b + 1}\\,
>
> \\ \begin{aligned} 1 - s^{(0)} &= \frac{1 + b - 2}{1 + b} = r, && \text{(common denominator)} \\ 1 - b\\s^{(0)} &= \frac{1 + b - 2b}{1 + b} = -r, && \text{(common denominator)} \\ \tilde{x}^{(1)} &= {\mathopen{}\left(r\\b,\\ -r \cdot 1\right)\mathclose{}}^{\top} = r\\{(b, -1)}^{\top}. && \text{(the gradient step from } {(b, 1)}^{\top} \text{)} \end{aligned} \\
>
> For \\b \ne 1\\ the same holds at every step, by [induction](proof-writing.llms.md#def-proof-by-induction) (when \\b = 1\\, \\r = 0\\ and \\\tilde{x}^{(1)}\\ is already the minimizer): if \\\tilde{x}^{(t)} = {(c\\b,\\ \pm c)}^{\top}\\ for a number \\c \ne 0\\, then \\s^\*\\, which depends only on \\x_1^2 = c^2 b^2\\ and \\x_2^2 = c^2\\, is again \\\tfrac{2}{1 + b}\\ (the factor \\c^2\\ cancels), and the step multiplies the first entry by \\r\\ and the second by \\-r\\. So
>
> \\ \tilde{x}^{(t)} = {\mathopen{}\left(b\\r^t,\\ (-r)^t\right)\mathclose{}}^{\top}, \qquad f(\tilde{x}^{(t)}) = \tfrac{1}{2} (b^2 + b)\\r^{2t} = r^{2t} f(\tilde{x}^{(0)}). \\
>
> For \\b \ne 1\\, exactly one entry changes sign at every step: the second when \\b \> 1\\ (then \\r \> 0\\), and the first when \\b \< 1\\ (then \\r \< 0\\). So the iterates zigzag toward the minimizer \\\tilde{0}\_{2 \times 1}\\.
>
> - With \\b = 3\\, \\r = \tfrac{1}{2}\\: \\\tilde{x}^{(1)} = {(1.5, -0.5)}^{\top}\\ and \\\tilde{x}^{(2)} = {(0.75, 0.25)}^{\top}\\, and \\f\\ falls from \\6\\ to \\1.5\\ to \\0.375\\, a quarter at each step.
> - With \\b = 1\\, \\r = 0\\ and one step reaches the minimizer.
> - With \\b = 0.01\\, \\r^2 = (0.99 / 1.01)^2 \approx 0.96\\, so \\f\\ shrinks by only about \\4\\\\ per step. Newton’s method reaches the minimizer of any such \\f\\ in one step ([Theorem 24](#thm-newton-quadratic)).

## 6 Further reading

- Marsden and Tromba ([2013](#ref-marsden2013vector)) is a standard textbook on multivariable and vector calculus. It covers differentiation of functions of several variables, multiple integrals, line and surface integrals, and the theorems of Green, Gauss, and Stokes.
- Petersen and Pedersen ([2012](#ref-petersen2012matrix)) is a free desk reference that collects matrix identities. Its chapter on derivatives lists derivatives of vector and matrix expressions, such as the linear and quadratic forms on this page.
- Miller ([2016](#ref-problifesavercalc)) The partial derivative review exercises and worked solutions on this page are adapted from this supplemental review chapter.

See also the [Linear Algebra and Vector Calculus further reading](linear-algebra.llms.md#sec-additional-resources).

- [Hua Zhou](https://hua-zhou.github.io/)’s [lecture notes for “UCLA Biostat 216 - Mathematical Methods for Biostatistics” (2023 Fall)](https://ucla-biostat-216.github.io/2023fall/schedule/schedule.html)
- [Neural Networks](https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi) is a YouTube playlist by Grant Sanderson (3Blue1Brown); its chapters on gradient descent and backpropagation calculus visually illustrate how gradients of multivariate cost functions are computed and used for optimization.

## References

Felippa, Carlos A. n.d. *Matrix Calculus*. Appendix F of Introduction to Finite Element Methods, course notes, University of Colorado Boulder. Accessed October 6, 2026. <https://quickfem.com/wp-content/uploads/IFEM.AppF_.pdf>.

Fieller, Nick. 2016. *Basics of Matrix Algebra for Statistics with R*. Chapman; Hall/CRC. <https://doi.org/10.1201/9781315370200>.

Hutchinson, Brian. n.d. *DATA 471/571 (Machine Learning) and CSCI 481/581 (Deep Learning) Video Lectures*. Western Washington University. Accessed September 28, 2026. <https://facultyweb.cs.wwu.edu/~hutchib2/video_lectures/data371/>.

Marsden, Jerrold E., and Anthony Tromba. 2013. *Vector Calculus*. 6th ed. Macmillan Learning. <https://www.macmillanlearning.com/college/us/product/Vector-Calculus/p/1429215089>.

Miller, Steven J. 2016. *The Probability Lifesaver: Calculus Review Problems*. <https://web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/index.htm#:~:text=http%3A//web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/supplementalchap_calcreview.pdf>.

Petersen, Kaare Brandt, and Michael Syskind Pedersen. 2012. *The Matrix Cookbook*. Technical University of Denmark. <https://www2.imm.dtu.dk/pubdb/edoc/imm3274.pdf>.

Rudin, Walter. 1976. *Principles of Mathematical Analysis*. 3rd ed. International Series in Pure and Applied Mathematics. McGraw-Hill.

Wikipedia contributors. n.d. *Gradient — Wikipedia, the Free Encyclopedia*. <https://en.wikipedia.org/wiki/Gradient>.

Zhou, Hua. 2024. *Optimization and Multivariate Calculus*. Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles. <https://ucla-biostat-216.github.io/2024fall/slides/13-optim/13-optim.html>.

Back to top
