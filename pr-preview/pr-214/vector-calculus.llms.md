# Vector Calculus

Code

- [Show All Code](javascript:void(0))

- [Hide All Code](javascript:void(0))

- 

  ------------------------------------------------------------------------

- [View Source](javascript:void(0))

Published

Last modified: 2026-10-09 01:32:36 (PDT)

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
> \\ \begin{aligned} \frac{\partial f}{\partial y} &= x^2 + 0 + x\cos(xy) \\ &= x^2 + x\cos(xy) \end{aligned} \\

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
> *Remark:* Setting \\\frac{\partial f}{\partial \mu} = 0\\ and \\\frac{\partial f}{\partial \sigma} = 0\\ for a sample of independent observations leads directly to the maximum likelihood estimators \\\hat{\mu}= \bar{x}\\ and \\\hat{\sigma}^2 = \frac{1}{n}\sum\_{i=1}^n(x_i - \bar{x})^2\\.

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
> \\ \begin{aligned} \frac{\partial f}{\partial x} &= (1)\operatorname{exp}\mathopen{}\left\\x^2 + y^2\right\\\mathclose{} + x \cdot\mathopen{}\left\[2x\operatorname{exp}\mathopen{}\left\\x^2 + y^2\right\\\mathclose{}\right\]\mathclose{} \\ &= (1 + 2x^2)\operatorname{exp}\mathopen{}\left\\x^2 + y^2\right\\\mathclose{} \end{aligned} \\
>
> With respect to \\y\\, treat \\x\\ as constant:
>
> \\ \begin{aligned} \frac{\partial f}{\partial y} &= x \cdot\mathopen{}\left\[2y\operatorname{exp}\mathopen{}\left\\x^2 + y^2\right\\\mathclose{}\right\]\mathclose{} \\ &= 2xy\operatorname{exp}\mathopen{}\left\\x^2 + y^2\right\\\mathclose{} \end{aligned} \\

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
> **Definition 2 (Vector derivative (gradient))** If \\f(\tilde{\beta})\\ is a scalar-valued function of a \\p \times 1\\ vector \\\tilde{\beta}\\, such as \\f(\tilde{\beta}) = \tilde{x} \cdot \tilde{\beta}\\, then its **vector derivative** is the column vector of its partial derivatives ([Definition 1](#def-partial-derivative)):
>
> \\ \frac{\partial}{\partial \tilde{\beta}} f(\tilde{\beta}) = \begin{bmatrix} \frac{\partial}{\partial \beta\_{1}}f(\tilde{\beta}) \\ \frac{\partial}{\partial \beta\_{2}}f(\tilde{\beta}) \\ \vdots \\ \frac{\partial}{\partial \beta\_{p}}f(\tilde{\beta}) \end{bmatrix} \\
>
> The vector derivative is also called the **gradient** of \\f\\ with respect to \\\tilde{\beta}\\, written \\\nabla\_{\tilde{\beta}} f(\tilde{\beta})\\.

> **NOTE:**
>
> **Example 2 (A vector derivative)** Let \\\tilde{\beta}= {(\beta\_{1}, \beta\_{2})}^{\top}\\ and \\f(\tilde{\beta}) = 3 \beta\_{1} + 5 \beta\_{2}^2\\. Then
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}} f(\tilde{\beta})}\_{2 \times 1} &= \begin{bmatrix} \frac{\partial}{\partial \beta\_{1}} (3 \beta\_{1} + 5 \beta\_{2}^2) \\ \frac{\partial}{\partial \beta\_{2}} (3 \beta\_{1} + 5 \beta\_{2}^2) \end{bmatrix} \\ &= \begin{bmatrix} 3 \\ 10 \beta\_{2} \end{bmatrix}, \end{aligned} \\
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
> 3.  Assemble \\\nabla\_{\tilde{w}} f\\ and evaluate it at \\\tilde{w} = \begin{bmatrix} 2 & -1 \end{bmatrix}^{\top}\\.
> 4.  Check the shape of your answer against [Table 1](#tbl-gradient-shape).

> **NOTE:**
>
> *Solution 5*. **1.** Differentiate with respect to \\w_1\\, holding \\w_2\\ fixed. The first term is the constant \\3w_2\\ times \\w_1\\, so it contributes \\3w_2\\. The second term has no \\w_1\\ in it, so it contributes \\0\\. The third term is \\-5\\ times \\w_1\\, so it contributes \\-5\\:
>
> \\ \begin{aligned} \frac{\partial f}{\partial w_1} &= 3w_2 + 0 - 5 \\ &= 3w_2 - 5 \end{aligned} \\
>
> **2.** Now with respect to \\w_2\\, holding \\w_1\\ fixed. The first term is the constant \\3w_1\\ times \\w_2\\, contributing \\3w_1\\. The second term contributes \\3w_2^2\\. The third has no \\w_2\\ in it, contributing \\0\\:
>
> \\ \begin{aligned} \frac{\partial f}{\partial w_2} &= 3w_1 + 3w_2^2 + 0 \\ &= 3w_1 + 3w_2^2 \end{aligned} \\
>
> **3.** Stack the two, in the order the coordinates are numbered:
>
> \\\nabla\_{\tilde{w}} f(\tilde{w}) = \begin{bmatrix} 3w_2 - 5 \\ 3w_1 + 3w_2^2 \end{bmatrix}\\
>
> The gradient is a vector-valued *function* of \\\tilde{w}\\, not a single vector. At \\\tilde{w} = \begin{bmatrix} 2 & -1 \end{bmatrix}^{\top}\\,
>
> \\ \begin{aligned} \nabla\_{\tilde{w}} f &= \begin{bmatrix} 3(-1) - 5 \\ 3(2) + 3(-1)^2 \end{bmatrix} \\ &= \begin{bmatrix} -3 - 5 \\ 6 + 3 \end{bmatrix} \\ &= \begin{bmatrix} -8 \\ 9 \end{bmatrix} \end{aligned} \\
>
> **4.** The input was a vector in \\\mathbb{R}^2\\ and so is the answer, as [Table 1](#tbl-gradient-shape) requires. Note the signs: from this point, increasing \\w_1\\ *decreases* \\f\\ while increasing \\w_2\\ increases it, so the uphill direction is neither axis.

> **NOTE:**
>
> **Definition 5 (Row-vector derivative (total derivative))** If \\f(\tilde{\beta})\\ is a scalar-valued function of a \\p \times 1\\ vector \\\tilde{\beta}\\, such as \\f(\tilde{\beta}) = \tilde{x} \cdot \tilde{\beta}\\, then its **row-vector derivative** is the row vector of its partial derivatives ([Definition 1](#def-partial-derivative)):
>
> \\ \frac{\partial f(\tilde{\beta})}{\partial {\tilde{\beta}}^{\top}} = \begin{bmatrix} \frac{\partial}{\partial \beta\_{1}}f(\tilde{\beta}) & \frac{\partial}{\partial \beta\_{2}}f(\tilde{\beta}) & \cdots & \frac{\partial}{\partial \beta\_{p}}f(\tilde{\beta}) \end{bmatrix} \tag{1}\\
>
> Some sources write the same row vector as \\\frac{\partial}{\partial {\tilde{\beta}}^{\top}} f(\tilde{\beta})\\, with the operator on the left, read as each operator \\\frac{\partial}{\partial \beta\_{i}}\\ applied to \\f\\ rather than as a matrix product (see [Remark 1](#rem-row-derivative-shape)).
>
> The row-vector derivative is also called the **total derivative** of \\f\\, the name used when the derivative of a scalar-valued function is written as a row vector.

> **NOTE:**
>
> *Remark 1* (Which side the operator goes on). Read \\\frac{\partial}{\partial \tilde{\beta}}\\ as a \\p \times 1\\ column vector of operators with entries \\\frac{\partial}{\partial \beta\_{1}}, \ldots, \frac{\partial}{\partial \beta\_{p}}\\, and \\\frac{\partial}{\partial {\tilde{\beta}}^{\top}}\\ as the \\1 \times p\\ row vector of operators with the same entries. Writing either one next to \\f\\ can be read in two ways:
>
> - **As a matrix product,** with \\f\\ a \\1 \times 1\\ matrix, under the shape rule of [matrix multiplication](linear-algebra.llms.md#def-matrix-mult). The column-vector operator works on the left: \\\frac{\partial}{\partial \tilde{\beta}} f\\ is \\(p \times 1)(1 \times 1)\\, a \\p \times 1\\ column vector ([Definition 2](#def-vector-derivative)). The row-vector operator does not: \\\frac{\partial}{\partial {\tilde{\beta}}^{\top}} f\\ is \\(1 \times p)(1 \times 1)\\, whose inner dimensions \\p\\ and \\1\\ do not match when \\p \> 1\\. For the shape rule to give the \\1 \times p\\ row vector, the operator would have to go on the right of \\f\\, as in \\(1 \times 1)(1 \times p)\\, which changes its meaning (see below).
> - **As a scalar multiple,** with \\f\\ a scalar, the way \\c \tilde{x}\\ is read in [scalar multiplication](linear-algebra.llms.md#def-scalar-mult), which has no shape rule: each entry of the operator vector is applied to \\f\\. Then both \\\frac{\partial}{\partial \tilde{\beta}} f\\ and \\\frac{\partial}{\partial {\tilde{\beta}}^{\top}} f\\ work with the operator on the left.
>
> The fraction \\\frac{\partial f}{\partial {\tilde{\beta}}^{\top}}\\ of [Equation 1](#eq-row-vector-derivative) means the same thing under both readings: the transpose in the denominator says the result is a row vector, without making the derivative a product.
>
> Treating the operators as vectors is sound for checking shapes, but “multiplying” an operator by a function means applying the operator to it, so two rules of ordinary matrix algebra do not carry over: scalars commute with matrices, and products can be regrouped.
>
> - **Scalars do not commute with operators.** \\\frac{\partial}{\partial \beta\_{i}} f\\ is a function, but \\f \frac{\partial}{\partial \beta\_{i}}\\ is still an unapplied operator, waiting for something to act on. So, unlike \\c \tilde{x}= \tilde{x}c\\, the operator cannot move to the other side of \\f\\ without changing the meaning. Putting the row-vector operator on the right of \\f\\ gives the row-vector derivative only under the convention that it acts on the factor to its left.
> - **Products cannot be regrouped.** An operator acts on the whole product to its right, so by the [product rule](calculus.llms.md#thm-product-rule), \\\frac{\partial}{\partial \beta\_{i}} (f g) \ne \mathopen{}\left(\frac{\partial}{\partial \beta\_{i}} f\right)\mathclose{} g\\ in general. For example, with \\f(\tilde{\beta}) = \beta\_{1}\\, \\\frac{\partial}{\partial \beta\_{1}} (f f) = 2 \beta\_{1}\\ but \\\mathopen{}\left(\frac{\partial}{\partial \beta\_{1}} f\right)\mathclose{} f = \beta\_{1}\\.

> **NOTE:**
>
> **Theorem 1 (Row and column derivatives are transposes)** \\\frac{\partial f(\tilde{\beta})}{\partial {\tilde{\beta}}^{\top}} = {\mathopen{}\left(\frac{\partial f(\tilde{\beta})}{\partial \tilde{\beta}}\right)\mathclose{}}^{\top} \tag{2}\\
>
> \\\frac{\partial f(\tilde{\beta})}{\partial \tilde{\beta}} = {\mathopen{}\left(\frac{\partial f(\tilde{\beta})}{\partial {\tilde{\beta}}^{\top}}\right)\mathclose{}}^{\top} \tag{3}\\

> **NOTE:**
>
> *Proof*. By [Definition 2](#def-vector-derivative) and [Definition 5](#def-row-vector-derivative), entry \\j\\ of both \\\frac{\partial f(\tilde{\beta})}{\partial \tilde{\beta}}\\ and \\\frac{\partial f(\tilde{\beta})}{\partial {\tilde{\beta}}^{\top}}\\ is \\\frac{\partial}{\partial \beta\_{j}} f(\tilde{\beta})\\; the first is a \\p \times 1\\ column vector and the second a \\1 \times p\\ row vector with the same entries in the same order, so each is the transpose of the other.

> **NOTE:**
>
> **Example 5 (Row and column derivatives of a linear function)** For \\f(\tilde{\beta}) = 3\beta\_{1} + 5\beta\_{2}\\:
>
> \\ \frac{\partial f(\tilde{\beta})}{\partial \tilde{\beta}} = \begin{bmatrix}3 \\ 5\end{bmatrix}, \qquad \frac{\partial f(\tilde{\beta})}{\partial {\tilde{\beta}}^{\top}} = \begin{bmatrix}3 & 5\end{bmatrix}, \\
>
> and each is the transpose of the other.

> **NOTE:**
>
> **Definition 6 (Derivative of a vector-valued function)** If \\\tilde{y}= \tilde{y}(\tilde{\beta}) = {(y_1, \ldots, y_q)}^{\top}\\ is a \\q \times 1\\ vector-valued function of the \\p \times 1\\ vector \\\tilde{\beta}\\, its **derivative with respect to** \\\tilde{\beta}\\ is the \\p \times q\\ matrix whose \\(i, j)\\ entry is
>
> \\ \mathopen{}\left\[\frac{\partial}{\partial \tilde{\beta}} {\tilde{y}}^{\top}\right\]\mathclose{}\_{ij} \stackrel{\text{def}}{=}\frac{\partial}{\partial \beta\_{i}} y_j, \qquad i = 1, \ldots, p, \quad j = 1, \ldots, q. \\
>
> Writing derivatives this way is the **denominator layout**, which these notes use throughout: rows index the entries of \\\tilde{\beta}\\ (the denominator) and columns index the entries of \\\tilde{y}\\ (the numerator), so column \\j\\ is the vector derivative \\\frac{\partial}{\partial \tilde{\beta}} y_j\\ ([Definition 2](#def-vector-derivative)). Both \\\frac{\partial}{\partial \tilde{\beta}} \tilde{y}\\ and \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{y}}^{\top}\\ denote this \\p \times q\\ matrix.

> **NOTE:**
>
> **Example 6 (Differentiating a \\3 \times 1\\ function of a \\2 \times 1\\ vector)** Let \\\tilde{\beta}= {(\beta\_{1}, \beta\_{2})}^{\top}\\ (\\p = 2\\) and \\\tilde{y}(\tilde{\beta}) = {(\beta\_{1}^2,\\ \beta\_{1}\beta\_{2},\\ 3\beta\_{2})}^{\top}\\ (\\q = 3\\). Then
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}} {\tilde{y}}^{\top}}\_{2 \times 3} &= \begin{bmatrix} \frac{\partial}{\partial \beta\_{1}} \beta\_{1}^2 & \frac{\partial}{\partial \beta\_{1}} \beta\_{1}\beta\_{2} & \frac{\partial}{\partial \beta\_{1}} 3\beta\_{2} \\ \frac{\partial}{\partial \beta\_{2}} \beta\_{1}^2 & \frac{\partial}{\partial \beta\_{2}} \beta\_{1}\beta\_{2} & \frac{\partial}{\partial \beta\_{2}} 3\beta\_{2} \end{bmatrix} \\ &= \begin{bmatrix} 2\beta\_{1} & \beta\_{2} & 0 \\ 0 & \beta\_{1} & 3 \end{bmatrix} \end{aligned} \\

> **NOTE:**
>
> **Definition 7 (Jacobian matrix)** Let \\\tilde{y}= \tilde{y}(\tilde{\beta}) = {(y_1, \ldots, y_q)}^{\top}\\ be a \\q \times 1\\ vector-valued function of the \\p \times 1\\ vector \\\tilde{\beta}\\. The **Jacobian matrix** of \\\tilde{y}\\ is the \\q \times p\\ matrix whose \\(j, i)\\ entry is \\\frac{\partial}{\partial \beta\_{i}} y_j\\, for \\j = 1, \ldots, q\\ and \\i = 1, \ldots, p\\. It is the transpose of the derivative \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{y}}^{\top}\\ of [Definition 6](#def-vector-valued-derivative). Writing derivatives this way, with rows indexing the entries of \\\tilde{y}\\ (the numerator) and columns indexing the entries of \\\tilde{\beta}\\ (the denominator), is the **numerator layout**.

> **NOTE:**
>
> **Example 7 (The Jacobian matrix of a \\3 \times 1\\ function of a \\2 \times 1\\ vector)** For \\\tilde{y}(\tilde{\beta}) = {(\beta\_{1}^2,\\ \beta\_{1}\beta\_{2},\\ 3\beta\_{2})}^{\top}\\ of [Example 6](#exm-vector-valued-derivative), the Jacobian matrix is the \\3 \times 2\\ matrix
>
> \\ \begin{bmatrix} \frac{\partial}{\partial \beta\_{1}} \beta\_{1}^2 & \frac{\partial}{\partial \beta\_{2}} \beta\_{1}^2 \\ \frac{\partial}{\partial \beta\_{1}} \beta\_{1}\beta\_{2} & \frac{\partial}{\partial \beta\_{2}} \beta\_{1}\beta\_{2} \\ \frac{\partial}{\partial \beta\_{1}} 3\beta\_{2} & \frac{\partial}{\partial \beta\_{2}} 3\beta\_{2} \end{bmatrix} = \begin{bmatrix} 2\beta\_{1} & 0 \\ \beta\_{2} & \beta\_{1} \\ 0 & 3 \end{bmatrix}, \\
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
> **Example 8 (A constant vector)** Let \\\tilde{\beta}= {(\beta\_{1}, \beta\_{2})}^{\top}\\ and \\\tilde{x}= {(3, 5)}^{\top}\\, so \\x_1 = 3\\ and \\x_2 = 5\\ do not depend on \\\tilde{\beta}\\. Expanding \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}\\ into its matrix of scalar partial derivatives ([Definition 6](#def-vector-valued-derivative)) and evaluating each entry:
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}}\_{2 \times 2} &= \frac{\partial}{\partial \tilde{\beta}} \begin{bmatrix}x_1 & x_2\end{bmatrix} \\ &= \begin{bmatrix} \frac{\partial}{\partial \beta\_{1}} x_1 & \frac{\partial}{\partial \beta\_{1}} x_2 \\ \frac{\partial}{\partial \beta\_{2}} x_1 & \frac{\partial}{\partial \beta\_{2}} x_2 \end{bmatrix} \\ &= \begin{bmatrix} \frac{\partial}{\partial \beta\_{1}} 3 & \frac{\partial}{\partial \beta\_{1}} 5 \\ \frac{\partial}{\partial \beta\_{2}} 3 & \frac{\partial}{\partial \beta\_{2}} 5 \end{bmatrix} \\ &= \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix} \\ &= \underbrace{\mathbf{0}}\_{2 \times 2} \end{aligned} \\
>
> Every entry is the derivative of a constant, so \\\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top} = \underbrace{\mathbf{0}}\_{2 \times 2}\\ and \\\tilde{x}\\ is constant with respect to \\\tilde{\beta}\\ ([Definition 8](#def-constant-wrt-vector)).

> **NOTE:**
>
> **Example 9 (A vector that is not constant)** With the same \\\tilde{\beta}\\, let \\\tilde{x}= {(\beta\_{1}, 3)}^{\top}\\. Then
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}} {\tilde{x}}^{\top}}\_{2 \times 2} &= \begin{bmatrix} \frac{\partial}{\partial \beta\_{1}} \beta\_{1} & \frac{\partial}{\partial \beta\_{1}} 3 \\ \frac{\partial}{\partial \beta\_{2}} \beta\_{1} & \frac{\partial}{\partial \beta\_{2}} 3 \end{bmatrix} \\ &= \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}, \end{aligned} \\
>
> which is not \\\underbrace{\mathbf{0}}\_{2 \times 2}\\, so this \\\tilde{x}\\ is not constant with respect to \\\tilde{\beta}\\: its first entry changes when \\\beta\_{1}\\ does.

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
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\tilde{x}\cdot \tilde{\beta})}\_{p \times 1} &= \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\tilde{\beta}\cdot \tilde{x})}\_{p \times 1} \\ &= \underbrace{\tilde{x}}\_{p \times 1} \end{aligned} \\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}} (\tilde{x}\cdot \tilde{\beta}) &= \begin{bmatrix} \frac{\partial}{\partial \beta\_{1}}(x_1\beta\_{1}+x_2\beta\_{2} +...+x_p \beta\_{p} ) \\ \frac{\partial}{\partial \beta\_{2}}(x_1\beta\_{1}+x_2\beta\_{2} +...+x_p \beta\_{p} ) \\ \vdots \\ \frac{\partial}{\partial \beta\_{p}}(x_1\beta\_{1}+x_2\beta\_{2} +...+x_p \beta\_{p} ) \end{bmatrix} \\ &= \begin{bmatrix} x\_{1} \\ x\_{2} \\ \vdots \\ x\_{p} \end{bmatrix} \\ &= \tilde{x} \end{aligned} \\

> **NOTE:**
>
> **Example 10 (Derivative of a dot product)** Let \\\tilde{x}= {(3, 5)}^{\top}\\ (constant with respect to \\\tilde{\beta}\\; see [Example 8](#exm-constant-wrt-vector)) and \\\tilde{\beta}= {(\beta\_{1}, \beta\_{2})}^{\top}\\. Then \\\tilde{x}\cdot \tilde{\beta}= 3\beta\_{1} + 5\beta\_{2}\\, and by [Theorem 2](#thm-deriv-lincom):
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\tilde{x}\cdot \tilde{\beta})}\_{2 \times 1} &= \underbrace{\tilde{x}}\_{2 \times 1} \\ &= \begin{pmatrix} 3 \\ 5 \end{pmatrix} \end{aligned} \\
>
> Verifying entry-wise:
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}}(3\beta\_{1} + 5\beta\_{2}) &= \begin{pmatrix} \frac{\partial}{\partial \beta\_{1}}(3\beta\_{1} + 5\beta\_{2}) \\ \frac{\partial}{\partial \beta\_{2}}(3\beta\_{1} + 5\beta\_{2}) \end{pmatrix} \\ &= \begin{pmatrix} 3 \\ 5 \end{pmatrix} \end{aligned} \\
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
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{x}} (\tilde{a} \cdot \tilde{b})\right\]\_i &= \frac{\partial}{\partial x_i} \sum\_{k=1}^{p} a_k b_k \\ &= \sum\_{k=1}^{p} \mathopen{}\left(b_k \frac{\partial}{\partial x_i} a_k + a_k \frac{\partial}{\partial x_i} b_k\right)\mathclose{} \\ &= \left\[\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} {\tilde{a}}^{\top}\right)\mathclose{}\tilde{b}\right\]\_i + \left\[\mathopen{}\left(\frac{\partial}{\partial \tilde{x}} {\tilde{b}}^{\top}\right)\mathclose{}\tilde{a}\right\]\_i \end{aligned} \\

> **NOTE:**
>
> **Example 11 (Example of the dot-product rule)** Apply [Theorem 3](#thm-deriv-dot-product) with the vector \\\tilde{\beta}= {(\beta\_{1}, \beta\_{2})}^{\top}\\ in the role of \\\tilde{x}\\. Let \\\tilde{a}(\tilde{\beta}) = {(\beta\_{1}, \beta\_{1}\beta\_{2})}^{\top}\\ and \\\tilde{b}(\tilde{\beta}) = {(\beta\_{2}, \beta\_{1})}^{\top}\\. Then:
>
> \\ \begin{aligned} \tilde{a} \cdot \tilde{b} &= \beta\_{1} \cdot \beta\_{2} + \beta\_{1}\beta\_{2} \cdot \beta\_{1} \\ &= \beta\_{1}\beta\_{2} + \beta\_{1}^2\beta\_{2} \end{aligned} \\
>
> By direct calculation:
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\tilde{a} \cdot \tilde{b})}\_{2 \times 1} &= \frac{\partial}{\partial \tilde{\beta}}(\beta\_{1}\beta\_{2} + \beta\_{1}^2\beta\_{2}) \\ &= \begin{pmatrix} \beta\_{2} + 2\beta\_{1}\beta\_{2} \\ \beta\_{1} + \beta\_{1}^2 \end{pmatrix} \end{aligned} \\
>
> By the product rule ([Theorem 3](#thm-deriv-dot-product)), using \\\underbrace{\frac{\partial}{\partial \tilde{\beta}}{\tilde{a}}^{\top}}\_{2 \times 2} = \begin{pmatrix}1 & \beta\_{2} \\ 0 & \beta\_{1}\end{pmatrix}\\ and \\\underbrace{\frac{\partial}{\partial \tilde{\beta}}{\tilde{b}}^{\top}}\_{2 \times 2} = \begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix}\\:
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\tilde{a} \cdot \tilde{b})}\_{2 \times 1} &= \underbrace{\begin{pmatrix}1 & \beta\_{2} \\ 0 & \beta\_{1}\end{pmatrix}}\_{2 \times 2} \underbrace{\begin{pmatrix}\beta\_{2} \\ \beta\_{1}\end{pmatrix}}\_{2 \times 1} + \underbrace{\begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix}}\_{2 \times 2} \underbrace{\begin{pmatrix}\beta\_{1} \\ \beta\_{1}\beta\_{2}\end{pmatrix}}\_{2 \times 1} \\ &= \begin{pmatrix}\beta\_{2} + \beta\_{1}\beta\_{2} \\ \beta\_{1}^2\end{pmatrix} + \begin{pmatrix}\beta\_{1}\beta\_{2} \\ \beta\_{1}\end{pmatrix} \\ &= \begin{pmatrix}\beta\_{2} + 2\beta\_{1}\beta\_{2} \\ \beta\_{1}^2 + \beta\_{1}\end{pmatrix} \end{aligned} \\
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
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{\beta})\right\]\_{ij} &= \frac{\partial}{\partial \beta\_{i}} (\mathbf{A}\tilde{\beta})\_j \\ &= \frac{\partial}{\partial \beta\_{i}} \sum\_{k=1}^{p} a\_{jk} \beta\_{k} \\ &= a\_{ji} \\ &= \left\[{\mathbf{A}}^{\top}\right\]\_{ij} \end{aligned} \\

> **NOTE:**
>
> **Example 12 (Derivative of a linear map)** Let \\\mathbf{A} = \begin{pmatrix} 2 & 3 \end{pmatrix}\\ (\\1 \times 2\\) and \\\tilde{\beta}= {(\beta\_{1}, \beta\_{2})}^{\top}\\. Then \\\mathbf{A}\tilde{\beta}= 2\beta\_{1} + 3\beta\_{2}\\, and by [Theorem 4](#thm-deriv-linear-map):
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\mathbf{A}\tilde{\beta})}\_{2 \times 1} &= \underbrace{{\mathbf{A}}^{\top}}\_{2 \times 1} \\ &= \begin{pmatrix} 2 \\ 3 \end{pmatrix} \end{aligned} \\

> **NOTE:**
>
> **Theorem 5 (Vector-derivative of a matrix-vector product)** If \\\mathbf{A}\\ is an \\m \times q\\ matrix that is constant with respect to \\\tilde{\beta}\\, and \\\tilde{v} = \tilde{v}(\tilde{\beta})\\ is a \\q \times 1\\ vector that depends on the \\p \times 1\\ vector \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{v})}\_{p \times m} = \underbrace{\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{}}\_{p \times q} \underbrace{{\mathbf{A}}^{\top}}\_{q \times m} \\

> **NOTE:**
>
> *Proof*. For entry \\(i,j)\\, where row \\i\\ indexes the denominator \\\tilde{\beta}\\ and column \\j\\ indexes the numerator \\\mathbf{A}\tilde{v}\\ (see [Definition 6](#def-vector-valued-derivative)):
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{v})\right\]\_{ij} &= \frac{\partial}{\partial \beta\_{i}} (\mathbf{A}\tilde{v})\_j \\ &= \frac{\partial}{\partial \beta\_{i}} \sum\_{k=1}^{q} a\_{jk} v_k \\ &= \sum\_{k=1}^{q} a\_{jk} \frac{\partial}{\partial \beta\_{i}} v_k \\ &= \sum\_{k=1}^{q} \left\[\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right\]\_{ik} \left\[{\mathbf{A}}^{\top}\right\]\_{kj} \\ &= \left\[\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{} {\mathbf{A}}^{\top}\right\]\_{ij} \end{aligned} \\

> **NOTE:**
>
> **Example 13 (Vector-derivative of a matrix-vector product)** Let \\\mathbf{A} = \begin{pmatrix} 2 & 3 \end{pmatrix}\\ (\\1 \times 2\\, constant) and \\\tilde{v}(\tilde{\beta}) = {(\beta\_{1}^2, \beta\_{2}^2)}^{\top}\\. Then \\\mathbf{A}\tilde{v} = 2\beta\_{1}^2 + 3\beta\_{2}^2\\. By [Theorem 5](#thm-deriv-matrix-vector):
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\mathbf{A}\tilde{v})}\_{2 \times 1} &= \begin{pmatrix} 2\beta\_{1} & 0 \\ 0 & 2\beta\_{2} \end{pmatrix} \begin{pmatrix} 2 \\ 3 \end{pmatrix} \\ &= \begin{pmatrix} 4\beta\_{1} \\ 6\beta\_{2} \end{pmatrix} \end{aligned} \\

> **NOTE:**
>
> *Remark 3* (The derivative of a linear map as a special case). This result generalizes [Theorem 4](#thm-deriv-linear-map), which is the special case \\\tilde{v} = \tilde{\beta}\\ (so that \\q = p\\, \\\frac{\partial}{\partial \tilde{\beta}} \tilde{\beta}= \mathbf{I}\_p\\, and \\\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A}\tilde{\beta}) = \mathbf{I}\_p {\mathbf{A}}^{\top} = {\mathbf{A}}^{\top}\\). For example, [Example 12](#exm-deriv-linear-map) is the case \\\mathbf{A} = \begin{pmatrix} 2 & 3 \end{pmatrix}\\ and \\\tilde{v} = \tilde{\beta}= {(\beta\_{1}, \beta\_{2})}^{\top}\\, where this result gives \\\mathbf{I}\_2 {\mathbf{A}}^{\top} = {(2, 3)}^{\top}\\.

> **NOTE:**
>
> **Theorem 6 (Vector-derivative of a product of matrices)** If \\\mathbf{A}\\ (\\k \times m\\) and \\\mathbf{B}\\ (\\m \times q\\) are constant with respect to \\\tilde{\beta}\\, and \\\tilde{v} = \tilde{v}(\tilde{\beta})\\ is a \\q \times 1\\ vector that depends on the \\p \times 1\\ vector \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\mathbf{A} \mathbf{B} \tilde{v})}\_{p \times k} = \underbrace{\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{}}\_{p \times q} \underbrace{{\mathbf{B}}^{\top}}\_{q \times m} \underbrace{{\mathbf{A}}^{\top}}\_{m \times k} \\

> **NOTE:**
>
> *Proof*. Apply [Theorem 5](#thm-deriv-matrix-vector) with the constant \\k \times q\\ matrix \\\mathbf{A}\mathbf{B}\\, then use the [transpose of a product](linear-algebra.llms.md#thm-transpose-product):
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}} (\mathbf{A} \mathbf{B} \tilde{v}) &= \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{} {(\mathbf{A}\mathbf{B})}^{\top} && \text{(derivative of a matrix-vector product)} \\ &= \mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}} \tilde{v}\right)\mathclose{} {\mathbf{B}}^{\top}\\{\mathbf{A}}^{\top} && \text{(transpose of a product)} \end{aligned} \\

> **NOTE:**
>
> **Example 14** Let \\\mathbf{A} = \begin{pmatrix}1 & 0\end{pmatrix}\\ (\\1 \times 2\\), \\\mathbf{B} = \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix}\\ (\\2 \times 2\\), and \\\tilde{v}(\tilde{\beta}) = \tilde{\beta}\\ where \\\tilde{\beta}= {(\beta\_{1}, \beta\_{2})}^{\top}\\. Then \\\mathbf{A}\mathbf{B}\tilde{v} = 2\beta\_{1}\\, and:
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\mathbf{A}\mathbf{B}\tilde{v})}\_{2 \times 1} &= \underbrace{\mathopen{}\left(\frac{\partial}{\partial \tilde{\beta}}\tilde{\beta}\right)\mathclose{}}\_{2 \times 2} \underbrace{{\mathbf{B}}^{\top}}\_{2 \times 2} \underbrace{{\mathbf{A}}^{\top}}\_{2 \times 1} \\ &= \mathbf{I}\_2 \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix} \begin{pmatrix}1 \\ 0\end{pmatrix} \\ &= \begin{pmatrix}2 \\ 0\end{pmatrix} \end{aligned} \\

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
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}}({\tilde{x}}^{\top}\tilde{\beta}) &= \frac{\partial}{\partial \tilde{\beta}}(\tilde{x}\cdot \tilde{\beta}) \\ &= \tilde{x} \end{aligned} \\
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
> **Example 15 (Derivative of a transpose product)** Let \\\tilde{x}= {(3, 5)}^{\top}\\ and \\\tilde{\beta}= {(\beta\_{1}, \beta\_{2})}^{\top}\\. Then \\{\tilde{x}}^{\top}\tilde{\beta}= 3\beta\_{1} + 5\beta\_{2}\\, and by [Corollary 1](#cor-deriv-lincom-tp):
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}\left(\underbrace{{\tilde{x}}^{\top}}\_{1 \times 2}\underbrace{\tilde{\beta}}\_{2 \times 1}\right)}\_{2 \times 1} &= \underbrace{\tilde{x}}\_{2 \times 1} \\ &= \begin{pmatrix} 3 \\ 5 \end{pmatrix} \end{aligned} \\

> **NOTE:**
>
> *Remark 4* (The coefficient gets transposed). This vector derivative formula looks a lot like non-vector calculus, except that you have to transpose the coefficient: in scalar calculus \\\frac{\partial}{\partial x}(cx) = c\\, but here the coefficient \\{\tilde{x}}^{\top}\\ (a row vector) becomes \\\tilde{x}\\ (a column vector) in the result. For example, with \\\tilde{x}= {(2, -1)}^{\top}\\, \\{\tilde{x}}^{\top}\tilde{\beta}= 2\beta\_{1} - \beta\_{2}\\, whose vector derivative is the column vector \\{(2, -1)}^{\top} = \tilde{x}\\, not the row vector \\{\tilde{x}}^{\top} = (2, -1)\\.

> **NOTE:**
>
> **Theorem 7 (Derivative of a quadratic form)** For a quadratic form (see [quadratic form](linear-algebra.llms.md#def-quadratic-form)), if \\\mathbf{S}\\ is a symmetric \\p \times p\\ matrix that is constant with respect to \\\tilde{\beta}\\, then:
>
> \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} ({\tilde{\beta}}^{\top} \mathbf{S} \tilde{\beta})}\_{p \times 1} = \underbrace{2 \mathbf{S} \tilde{\beta}}\_{p \times 1} \\

> **NOTE:**
>
> *Proof*. Expanding entry-wise, \\{\tilde{\beta}}^{\top} \mathbf{S} \tilde{\beta}= \sum\_{j=1}^p\sum\_{k=1}^{p} s\_{jk} \beta\_{j} \beta\_{k}\\. Differentiating component-wise with respect to \\\beta\_{i}\\ for \\i = 1, \ldots, p\\:
>
> \\ \begin{aligned} \left\[\frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\mathbf{S}\tilde{\beta})\right\]\_i &= \frac{\partial}{\partial \beta\_{i}} \sum\_{j=1}^p\sum\_{k=1}^{p} s\_{jk} \beta\_{j} \beta\_{k} && \text{(expand quadratic form)} \\ &= \sum\_{k=1}^{p} s\_{ik} \beta\_{k} + \sum\_{j=1}^ps\_{ji} \beta\_{j} && \text{(product rule for } \beta\_{i} \beta\_{k} \text{)} \\ &= \[\mathbf{S}\tilde{\beta}\]\_i + \[{\mathbf{S}}^{\top}\tilde{\beta}\]\_i && \text{(matrix-vector multiplication definition)} \\ &= \[(\mathbf{S} + {\mathbf{S}}^{\top})\tilde{\beta}\]\_i && \text{(linearity of matrix multiplication)} \end{aligned} \\
>
> When \\\mathbf{S}\\ is symmetric (\\\mathbf{S} = {\mathbf{S}}^{\top}\\), \\\mathbf{S} + {\mathbf{S}}^{\top} = 2\mathbf{S}\\, so \\\frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\mathbf{S}\tilde{\beta}) = 2\mathbf{S}\tilde{\beta}\\.

> **NOTE:**
>
> *Remark 5* (Like the derivative of \\cx^2\\). This operation is like taking the derivative of \\cx^2\\ with respect to \\x\\ in non-vector calculus: \\\frac{\partial}{\partial x} (cx^2) = 2cx\\, and [Theorem 7](#thm-quadratic-form) says \\\frac{\partial}{\partial \tilde{\beta}} ({\tilde{\beta}}^{\top} \mathbf{S} \tilde{\beta}) = 2 \mathbf{S} \tilde{\beta}\\. For example, with \\p = 1\\, \\\mathbf{S} = (3)\\, and \\\tilde{\beta}= (\beta\_{1})\\, \\{\tilde{\beta}}^{\top} \mathbf{S} \tilde{\beta}= 3\beta\_{1}^2\\, and its derivative is \\6\beta\_{1} = 2 \mathbf{S} \tilde{\beta}\\.

> **NOTE:**
>
> **Example 16 (Derivative of a quadratic form)** Let \\\mathbf{S} = \begin{pmatrix} 3 & 1 \\ 1 & 2 \end{pmatrix}\\ (\\2 \times 2\\, symmetric and constant) and \\\tilde{\beta}= {(\beta\_{1}, \beta\_{2})}^{\top}\\. Then \\{\tilde{\beta}}^{\top}\mathbf{S}\tilde{\beta}= 3\beta\_{1}^2 + 2\beta\_{1}\beta\_{2} + 2\beta\_{2}^2\\. By [Theorem 7](#thm-quadratic-form):
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\mathbf{S}\tilde{\beta})}\_{2 \times 1} &= 2 \mathbf{S} \tilde{\beta}\\ &= 2 \begin{pmatrix} 3 & 1 \\ 1 & 2 \end{pmatrix} \begin{pmatrix} \beta\_{1} \\ \beta\_{2} \end{pmatrix} \\ &= \begin{pmatrix} 6\beta\_{1} + 2\beta\_{2} \\ 2\beta\_{1} + 4\beta\_{2} \end{pmatrix} \end{aligned} \\
>
> Differentiating component-wise directly:
>
> \\ \begin{pmatrix} \frac{\partial}{\partial \beta\_{1}}(3\beta\_{1}^2 + 2\beta\_{1}\beta\_{2} + 2\beta\_{2}^2) \\ \frac{\partial}{\partial \beta\_{2}}(3\beta\_{1}^2 + 2\beta\_{1}\beta\_{2} + 2\beta\_{2}^2) \end{pmatrix} = \begin{pmatrix} 6\beta\_{1} + 2\beta\_{2} \\ 2\beta\_{1} + 4\beta\_{2} \end{pmatrix} \\
>
> Both methods agree.

> **NOTE:**
>
> **Corollary 2 (Derivative of a simple quadratic form)** \\ \underbrace{\frac{\partial}{\partial \tilde{\beta}} (\tilde{\beta} \cdot \tilde{\beta})}\_{p \times 1} = \underbrace{2\tilde{\beta}}\_{p \times 1} \\

> **NOTE:**
>
> *Proof*. Applying [Theorem 7](#thm-quadratic-form) with \\\mathbf{S} = \mathbf{I}\_{p \times p}\\ (which is symmetric and constant with respect to \\\tilde{\beta}\\):
>
> \\ \begin{aligned} \frac{\partial}{\partial \tilde{\beta}}(\tilde{\beta} \cdot \tilde{\beta}) &= \frac{\partial}{\partial \tilde{\beta}}({\tilde{\beta}}^{\top}\mathbf{I}\_{p \times p}\tilde{\beta}) && \text{(rewrite with identity matrix)} \\ &= 2\mathbf{I}\_{p \times p}\tilde{\beta} && \text{(derivative of a quadratic form, with } \mathbf{S} = \mathbf{I}\_{p \times p} \text{)} \\ &= 2\tilde{\beta} && \text{(identity matrix property)} \end{aligned} \\

> **NOTE:**
>
> *Remark 6* (Like the derivative of \\x^2\\). This vector derivative is like taking the derivative of \\x^2\\: in scalar calculus \\\frac{\partial}{\partial x} x^2 = 2x\\, and [Corollary 2](#cor-deriv-normsq) says \\\frac{\partial}{\partial \tilde{\beta}} (\tilde{\beta} \cdot \tilde{\beta}) = 2\tilde{\beta}\\. For example, with \\p = 1\\ and \\\tilde{\beta}= (\beta\_{1})\\, \\\tilde{\beta} \cdot \tilde{\beta} = \beta\_{1}^2\\, and its derivative is \\2\beta\_{1} = 2\tilde{\beta}\\.

> **NOTE:**
>
> **Example 17 (Derivative of a sum of squares)** Let \\\tilde{\beta}= {(\beta\_{1}, \beta\_{2})}^{\top}\\, so \\\tilde{\beta} \cdot \tilde{\beta} = \beta\_{1}^2 + \beta\_{2}^2\\. By [Corollary 2](#cor-deriv-normsq):
>
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \tilde{\beta}}(\tilde{\beta} \cdot \tilde{\beta})}\_{2 \times 1} &= 2\tilde{\beta}\\ &= \begin{pmatrix} 2\beta\_{1} \\ 2\beta\_{2} \end{pmatrix} \end{aligned} \\
>
> Direct partial differentiation yields the same column vector.

> **NOTE:**
>
> **Definition 9 (Residuals and squared errors)** Let \\\mathbf{X}\\ be an \\n \times p\\ matrix, \\\tilde{y}\in \mathbb{R}^n\\, and \\\tilde{\beta}\in \mathbb{R}^p\\. The **residual vector** of \\\tilde{\beta}\\ is \\\tilde{\varepsilon}(\tilde{\beta}) \stackrel{\text{def}}{=}\tilde{y}- \mathbf{X}\tilde{\beta}\\, and its entries \\\varepsilon_i = y_i - (\mathbf{X}\tilde{\beta})\_i\\ are the **residuals**. The square \\\varepsilon_i^2\\ is the \\i\\th **squared error**, and their sum
>
> \\ \begin{aligned} \tilde{\varepsilon}\cdot \tilde{\varepsilon} &= \sum\_{i=1}^n\tilde{\varepsilon}\_i^2 \\ &= \mathopen{}\left\lVert\tilde{y}- \mathbf{X}\tilde{\beta}\right\rVert\mathclose{}^2 \end{aligned} \\
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
> \\ \begin{aligned} \underbrace{\frac{\partial}{\partial \mathbf{X}} \operatorname{tr}(\mathbf{A} \mathbf{X} \mathbf{B})}\_{2 \times 2} &= \underbrace{{\mathbf{A}}^{\top}}\_{2 \times 2} \underbrace{{\mathbf{B}}^{\top}}\_{2 \times 2} \\ &= \mathbf{I}\_2 \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix} \\ &= \begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix} \end{aligned} \\

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
> \\ \begin{aligned} \nabla_W\\ g(W) &= \begin{bmatrix} 2 & -1 & 0 \\ 4 & 3 & -2 \end{bmatrix} \\ &= A \end{aligned} \\
>
> What is unusual is that the gradient came out **constant**: it does not mention \\W\\ at all. The constant answer is not a quirk of this particular \\A\\. \\g\\ is a linear function of \\W\\, and the gradient of a linear function is constant everywhere, for the same reason the derivative of \\f(w) = cw\\ is \\c\\ no matter where it is evaluated.
>
> A constant gradient is the easy case, and it is not the case we usually face. Most functions we minimize are curved — the residual sum of squares of a linear model ([Definition 9](#def-residual)) is the standard example — so their gradient changes from point to point and the downhill direction has to be worked out afresh at every step.

## 2 Second partial derivatives and the Hessian

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
> \\ \begin{aligned} \mathbf{H}\_f(\tilde{x}) &= \frac{\partial}{\partial \tilde{x}} \mathopen{}\left(\frac{\partial f(\tilde{x})}{\partial {\tilde{x}}^{\top}}\right)\mathclose{} \\ &= \frac{\partial^2 f(\tilde{x})}{\partial \tilde{x} \partial {\tilde{x}}^{\top}}. \end{aligned} \tag{5}\\
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
> \\ \begin{aligned} \mathbf{H}\_f(\tilde{x}) &= \begin{bmatrix} \frac{\partial}{\partial x_1} (2 e^{u} - 1) & \frac{\partial}{\partial x_1} e^{u} \\ \frac{\partial}{\partial x_2} (2 e^{u} - 1) & \frac{\partial}{\partial x_2} e^{u} \end{bmatrix} \\ &= \begin{bmatrix} 4 e^{u} & 2 e^{u} \\ 2 e^{u} & e^{u} \end{bmatrix}, \end{aligned} \\
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
> **Definition 14 (Continuity in several variables)** A function \\f\\ from \\\mathbb{R}^p\\ to \\\mathbb{R}^q\\ is **continuous at** \\\tilde{x}\\ if for every \\\varepsilon\> 0\\ there is a \\\delta\> 0\\ such that \\\mathopen{}\left\lVert f(\tilde{y}) - f(\tilde{x})\right\rVert\mathclose{} \< \varepsilon\\ whenever \\\mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{} \< \delta\\. It is **continuous on** a set if it is continuous at every point of the set. For \\q = 1\\, \\\mathopen{}\left\lVert f(\tilde{y}) - f(\tilde{x})\right\rVert\mathclose{} = \mathopen{}\left\|f(\tilde{y}) - f(\tilde{x})\right\|\mathclose{}\\. For \\p = q = 1\\, this definition is the usual [continuity](calculus.llms.md#def-continuous), written out with the \\\varepsilon\\-\\\delta\\ definition of the limit \\\lim\_{y \to x} f(y) = f(x)\\.
>
> Continuity survives the usual operations:
>
> - A [composition](sets-functions.llms.md#def-composition) of continuous functions is continuous: choose the \\\delta\\ for the [outer function](sets-functions.llms.md#def-composition) first, and use it as the \\\varepsilon\\ for the inner one.
> - A sum \\f + g\\ of continuous real-valued functions is continuous, since \\\mathopen{}\left\|(f + g)(\tilde{y}) - (f + g)(\tilde{x})\right\|\mathclose{} \le \mathopen{}\left\|f(\tilde{y}) - f(\tilde{x})\right\|\mathclose{} + \mathopen{}\left\|g(\tilde{y}) - g(\tilde{x})\right\|\mathclose{}\\: use \\\varepsilon/ 2\\ for each.
> - A constant multiple \\c f\\ is continuous, since \\\mathopen{}\left\|c f(\tilde{y}) - c f(\tilde{x})\right\|\mathclose{} = \mathopen{}\left\|c\right\|\mathclose{}\\\mathopen{}\left\|f(\tilde{y}) - f(\tilde{x})\right\|\mathclose{}\\: use \\\varepsilon/ (\mathopen{}\left\|c\right\|\mathclose{} + 1)\\ for \\f\\.

> **NOTE:**
>
> **Example 27 (A continuous function, and a discontinuous one)**  
>
> - \\f(\tilde{x}) = x_1 + x_2\\ is continuous at every \\\tilde{x}\\. Each \\\mathopen{}\left\|y_i - x_i\right\|\mathclose{} \le \mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{}\\, since the squared length is a sum of nonnegative squares, so
>
>   \\ \begin{aligned} \mathopen{}\left\|f(\tilde{y}) - f(\tilde{x})\right\|\mathclose{} &= \mathopen{}\left\|(y_1 - x_1) + (y_2 - x_2)\right\|\mathclose{} && \text{(subtract)} \\ &\le \mathopen{}\left\|y_1 - x_1\right\|\mathclose{} + \mathopen{}\left\|y_2 - x_2\right\|\mathclose{} && \text{(triangle inequality for numbers)} \\ &\le 2\\\mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{}, && \text{(each term is at most } \mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{} \text{)} \end{aligned} \\
>
>   which is less than \\\varepsilon\\ whenever \\\mathopen{}\left\lVert\tilde{y}- \tilde{x}\right\rVert\mathclose{} \< \delta= \varepsilon/ 2\\.
>
> - \\f(\tilde{x}) = 1\\ if \\x_1 \> 0\\ and \\f(\tilde{x}) = 0\\ otherwise is not continuous at \\\tilde{0}\\: for \\\varepsilon= \tfrac{1}{2}\\ and any \\\delta\> 0\\, the point \\\tilde{y}= {(\delta/ 2, 0)}^{\top}\\ has \\\mathopen{}\left\lVert\tilde{y}- \tilde{0}\right\rVert\mathclose{} = \delta/ 2 \< \delta\\ but \\\mathopen{}\left\|f(\tilde{y}) - f(\tilde{0})\right\|\mathclose{} = 1 \> \tfrac{1}{2}\\.

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
> **But \\f\\ is not continuous at \\\tilde{0}\\** ([Definition 14](#def-continuous-several)). Take \\\varepsilon= \tfrac{1}{4}\\ and any \\\delta\> 0\\, and let \\t = \delta/ 2\\ and \\\tilde{y}= {(t, t)}^{\top}\\. Then \\\mathopen{}\left\lVert\tilde{y}- \tilde{0}\right\rVert\mathclose{} = \sqrt{t^2 + t^2} = t \sqrt{2} = \delta/ \sqrt{2} \< \delta\\, but
>
> \\ \begin{aligned} \mathopen{}\left\|f(\tilde{y}) - f(\tilde{0})\right\|\mathclose{} &= \mathopen{}\left\|\frac{t \cdot t}{t^2 + t^2} - 0\right\|\mathclose{} && \text{(} \tilde{y}\ne \tilde{0}\text{, since } t \> 0 \text{)} \\ &= \frac{t^2}{2 t^2} && \text{(} t^2 + t^2 = 2 t^2 \text{)} \\ &= \tfrac{1}{2}, && \text{(cancel } t^2 \> 0 \text{)} \end{aligned} \\
>
> which is more than \\\varepsilon= \tfrac{1}{4}\\.
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
> \\ \begin{aligned} \frac{\partial}{\partial x_1} f(0, x_2) &= \lim\_{h \to 0} \frac{f(h, x_2) - f(0, x_2)}{h} && \text{(definition of the partial derivative, }\href{#def-partial-derivative}{\text{Definition~1}}\text{)} \\ &= \lim\_{h \to 0} \frac{x_2 (h^2 - x_2^2)}{h^2 + x_2^2} && \text{(} f(0, x_2) = 0 \text{; cancel } h \text{)} \\ &= \frac{x_2 \cdot (-x_2^2)}{x_2^2} \\ &= -x_2, && \text{(the quotient is continuous at } h = 0 \text{)} \end{aligned} \\
>
> and \\\frac{\partial}{\partial x_1} f(\tilde{0}) = \lim\_{h \to 0} (0 - 0)/h = 0\\, so \\\frac{\partial}{\partial x_1} f(0, x_2) = -x_2\\ holds at \\x_2 = 0\\ too. In the same way, with the roles of \\x_1\\ and \\x_2\\ swapped, \\f(x_1, k) / k = x_1 (x_1^2 - k^2) / (x_1^2 + k^2) \to x_1\\, so \\\frac{\partial}{\partial x_2} f(x_1, 0) = x_1\\ for every \\x_1\\. So at \\\tilde{0}\\ ([Definition 13](#def-hessian))
>
> \\ \begin{aligned} \mathopen{}\left\[\mathbf{H}\_f(\tilde{0})\right\]\mathclose{}\_{21} &= \frac{\partial}{\partial x_2} \mathopen{}\left(\frac{\partial}{\partial x_1} f\right)\mathclose{} \\ &= \frac{d }{d x_2} (-x_2) \\ &= -1, \\ \mathopen{}\left\[\mathbf{H}\_f(\tilde{0})\right\]\mathclose{}\_{12} &= \frac{\partial}{\partial x_1} \mathopen{}\left(\frac{\partial}{\partial x_2} f\right)\mathclose{} \\ &= \frac{d }{d x_1} x_1 \\ &= 1: \end{aligned} \\
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
> **Example 31 (The Hessian of a \\2 \times 2\\ quadratic form)** For \\\mathbf{S} = \begin{bmatrix} 3 & 1 \\ 1 & 2 \end{bmatrix}\\ as in [Example 16](#exm-deriv-quadratic-form), [Theorem 11](#thm-hessian-quadratic) gives \\\mathbf{H}\_f(\tilde{x}) = \begin{bmatrix} 6 & 2 \\ 2 & 4 \end{bmatrix}\\. Directly, the gradient found there, with \\\beta\_{i}\\ renamed \\x_i\\, is \\{(6 x_1 + 2 x_2,\\ 2 x_1 + 4 x_2)}^{\top}\\, and differentiating its entries by \\x_1\\ and by \\x_2\\ ([Definition 13](#def-hessian)) gives
>
> \\ \begin{aligned} \mathbf{H}\_f(\tilde{x}) &= \begin{bmatrix} \frac{\partial}{\partial x_1} (6 x_1 + 2 x_2) & \frac{\partial}{\partial x_1} (2 x_1 + 4 x_2) \\ \frac{\partial}{\partial x_2} (6 x_1 + 2 x_2) & \frac{\partial}{\partial x_2} (2 x_1 + 4 x_2) \end{bmatrix} \\ &= \begin{bmatrix} 6 & 2 \\ 2 & 4 \end{bmatrix}. \end{aligned} \\

## 3 Further reading

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

Back to top
