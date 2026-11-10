# Taylor Series

Code

Published

Last modified: 2026-11-10 04:29:17 (PST)

# 1 Taylor polynomials and series

> **NOTE:**
>
> **Definition 1 (Taylor polynomial (Taylor expansion))** Let $f$ be a function that has at least $n$ derivatives at a point $x_0$. The **Taylor polynomial** (also called the **Taylor expansion**) of [degree](algebra-exponentials.llms.md#def-polynomial-degree) $n$ for $f$ centered at $x_0$ is:
>
> $$\begin{aligned}
> P_n(x)
> &= \sum_{k=0}^n \frac{f^{(k)}(x_0)}{k!}(x - x_0)^k \\
> &= f(x_0) + f'(x_0)(x - x_0) + \frac{f''(x_0)}{2!}(x - x_0)^2 + \dots + \frac{f^{(n)}(x_0)}{n!}(x - x_0)^n
> \end{aligned}
> \tag{1}$$

> **NOTE:**
>
> **Example 1 (Taylor series of the exponential function)** For $f(x) = e^x$ centered at $x_0 = 0$, every derivative is
>
> $$\begin{aligned}
> f^{(k)}(0) &= e^0 \\
> &= 1.
> \end{aligned}$$
>
> The degree-$n$ Maclaurin polynomial is:
>
> $$\begin{aligned}
> P_n(x)
> &= 1 + x + \frac{x^2}{2!} + \dots + \frac{x^n}{n!} \\
> &= \sum_{k=0}^n \frac{x^k}{k!}
> \end{aligned}$$
>
> Because the remainder $R_n(x) \to 0$ as $n \to \infty$ for all $x \in \mathbb{R}$, the Taylor series converges everywhere to $e^x$:
>
> $$e^x = \sum_{k=0}^\infty \frac{x^k}{k!}$$

> **NOTE:**
>
> **Definition 2 (Maclaurin polynomial)** When $x_0 = 0$, the Taylor polynomial $P_n(x)$ ([Definition 1](#def-taylor-polynomial)) is called the **Maclaurin polynomial**.

> **NOTE:**
>
> **Definition 3 (Taylor series)** Let $f$ and $x_0$ be as in [Definition 1](#def-taylor-polynomial). When $f$ is infinitely differentiable and the series converges to $f(x)$ on an open interval containing $x_0$, the infinite sum $\sum_{k=0}^\infty \frac{f^{(k)}(x_0)}{k!}(x - x_0)^k$ is the **Taylor series** of $f$ centered at $x_0$.

> **TIP:**
>
> Chapter 11 of the [*Essence of calculus*](https://www.youtube.com/playlist?list=PLZHQObOWTQDMsr9K-rj53DwVRMYO3t5Yr) series by 3Blue1Brown develops the geometric and polynomial intuition behind Taylor approximations:
>
> - [Taylor series](https://www.youtube.com/watch?v=3d6DsjIBzJ4) shows how higher-order derivatives match the curvature and rate of change of a function near a point to build polynomial approximations ([Definition 1](#def-taylor-polynomial)).

# 2 Polynomials, exponentials and trigonometric functions

> **NOTE:**
>
> **Exercise 1 (Taylor polynomial of a polynomial at the origin)** Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.16.
>
> Find the first five terms (up to degree 4) of the Taylor series for
>
> $$f(x) = x^8 + x^4 + 3$$
>
> at $x_0 = 0$.

> **NOTE:**
>
> *Solution 1*. Evaluate $f$ and its first four derivatives at $x = 0$:
>
> $$\begin{aligned}
> f(x) &= x^8 + x^4 + 3 &\implies f(0) &= 3
> \\
> f'(x) &= 8x^7 + 4x^3 &\implies f'(0) &= 0
> \\
> f''(x) &= 56x^6 + 12x^2 &\implies f''(0) &= 0
> \\
> f'''(x) &= 336x^5 + 24x &\implies f'''(0) &= 0
> \\
> f^{(4)}(x) &= 1680x^4 + 24 &\implies f^{(4)}(0) &= 24
> \end{aligned}$$
>
> By [Equation 1](#eq-taylor-poly-def):
>
> $$\begin{aligned}
> P_4(x)
> &= 3 + 0x + \frac{0}{2!}x^2 + \frac{0}{3!}x^3 + \frac{24}{4!}x^4 \\
> &= 3 + x^4
> \end{aligned}$$
>
> Because $f$ is already a polynomial centered at $0$, its Taylor polynomial of degree 4 simply collects its terms of degree at most 4.

> **NOTE:**
>
> **Exercise 2 (Taylor expansion of a polynomial at a nonzero point)** Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.17.
>
> Find the first three terms (up to degree 2) of the Taylor series for
>
> $$f(x) = x^8 + x^4 + 3$$
>
> at $x_0 = 1$.

> **NOTE:**
>
> *Solution 2*. Evaluate $f$ and its first two derivatives at $x_0 = 1$:
>
> $$\begin{aligned}
> f(1) &= 1^8 + 1^4 + 3 \\
> &= 5
> \\
> f'(1) &= 8(1)^7 + 4(1)^3 \\
> &= 12
> \\
> f''(1) &= 56(1)^6 + 12(1)^2 \\
> &= 68
> \end{aligned}$$
>
> The degree-2 Taylor polynomial is:
>
> $$\begin{aligned}
> P_2(x)
> &= f(1) + f'(1)(x - 1) + \frac{f''(1)}{2!}(x - 1)^2 \\
> &= 5 + 12(x - 1) + 34(x - 1)^2
> \end{aligned}$$

> **NOTE:**
>
> **Example 2 (Taylor series of the cosine function)** For $f(x) = \cos x$ centered at $x_0 = 0$, the derivatives follow a repeating cycle of length 4:
>
> $$\begin{aligned}
> f(0) &= \cos(0) \\
> &= 1, \\
> f'(0) &= -\sin(0) \\
> &= 0, \\
> f''(0) &= -\cos(0) \\
> &= -1, \\
> f'''(0) &= \sin(0) \\
> &= 0,
> \end{aligned}$$
>
> and in general $f^{(2k)}(0) = (-1)^k$ and $f^{(2k+1)}(0) = 0$ for all $k \ge 0$. The Taylor series (Maclaurin series) converges everywhere to $\cos x$:
>
> $$\begin{aligned}
> \cos x
> &= 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots \\
> &= \sum_{k=0}^\infty \frac{(-1)^k}{(2k)!}x^{2k}
> \end{aligned}$$

> **NOTE:**
>
> **Example 3 (Taylor series of the sine function)** For $f(x) = \sin x$ centered at $x_0 = 0$, the derivatives evaluate at $0$ to $f^{(2k)}(0) = 0$ and $f^{(2k+1)}(0) = (-1)^k$ for all $k \ge 0$. The Taylor series converges everywhere to $\sin x$:
>
> $$\begin{aligned}
> \sin x
> &= x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots \\
> &= \sum_{k=0}^\infty \frac{(-1)^k}{(2k+1)!}x^{2k+1}
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 3 (Taylor expansion of a scaled cosine)** Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.18.
>
> Find the terms up to degree 4 in the Taylor series for
>
> $$f(x) = \cos(5x)$$
>
> at $x_0 = 0$.

> **NOTE:**
>
> *Solution 3*. Recall the standard Maclaurin series for cosine:
>
> $$\cos u = 1 - \frac{u^2}{2!} + \frac{u^4}{4!} - \dots$$
>
> Substitute $u = 5x$:
>
> $$\begin{aligned}
> \cos(5x)
> &= 1 - \frac{(5x)^2}{2!} + \frac{(5x)^4}{4!} - \dots \\
> &= 1 - \frac{25}{2}x^2 + \frac{625}{24}x^4 - \dots
> \end{aligned}$$
>
> *Remark:* Substituting into known Taylor expansions avoids computing high-order derivatives by hand.

> **NOTE:**
>
> **Exercise 4 (Taylor series of a power of a function)** Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.19.
>
> Find the terms up to degree 4 in the Taylor series for
>
> $$f(x) = \cos^3(5x)$$
>
> at $x_0 = 0$.

> **NOTE:**
>
> *Solution 4*. From [Exercise 3](#exr-miller-taylor-cos-scaled), the expansion of $\cos(5x)$ up to order $x^4$ is:
>
> $$\cos(5x) = 1 - \frac{25}{2}x^2 + \frac{625}{24}x^4 + O(x^6)$$
>
> Cube this expansion using $(1 - y)^3 = 1 - 3y + 3y^2 - y^3$ with $y = \frac{25}{2}x^2 - \frac{625}{24}x^4$:
>
> $$\begin{aligned}
> \cos^3(5x) &= 1 - 3\mathopen{}\left(\frac{25}{2}x^2 - \frac{625}{24}x^4\right)\mathclose{} + 3\mathopen{}\left(\frac{25}{2}x^2\right)\mathclose{}^2 + O(x^6)
> \\
> &= 1 - \frac{75}{2}x^2 + \frac{625}{8}x^4 + \frac{1875}{4}x^4 + O(x^6)
> \\
> &= 1 - \frac{75}{2}x^2 + \frac{4375}{8}x^4 + O(x^6)
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 5 (Linear Taylor polynomial of the exponential)** Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.20.
>
> Find the first two terms (degree 1) of the Taylor series for
>
> $$f(x) = e^x$$
>
> at $x_0 = 0$.

> **NOTE:**
>
> *Solution 5*. Since
>
> $$\begin{aligned}
> f(0) &= e^0 \\
> &= 1
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> f'(0) &= e^0 \\
> &= 1:
> \end{aligned}$$
>
> $$\begin{aligned}
> P_1(x)
> &= f(0) + f'(0)x \\
> &= 1 + x
> \end{aligned}$$
>
> The full Taylor series is
>
> $$\begin{aligned}
> e^x &= \sum_{n=0}^\infty \frac{x^n}{n!} \\
> &= 1 + x + \frac{x^2}{2} + \frac{x^3}{6} + \dots.
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 6 (Taylor series of a composite exponential)** Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.21.
>
> Find the first six terms (up to degree 5) of the Taylor series for
>
> $$f(x) = {\operatorname{exp}\mathopen{}\left\{x^8\right\}\mathclose{}}$$
>
> at $x_0 = 0$.

> **NOTE:**
>
> *Solution 6*. Substitute $u = x^8$ into $e^u = 1 + u + \frac{u^2}{2!} + \dots$:
>
> $${\operatorname{exp}\mathopen{}\left\{x^8\right\}\mathclose{}} = 1 + x^8 + \frac{x^{16}}{2} + \dots$$
>
> Because the lowest-order variable term is $x^8$, all coefficients for powers $x^1, x^2, x^3, x^4, x^5$ are zero:
>
> $$\begin{aligned}
> P_5(x)
> &= 1 + 0x + 0x^2 + 0x^3 + 0x^4 + 0x^5 \\
> &= 1
> \end{aligned}$$

# 3 Roots, logarithms and compound functions

> **NOTE:**
>
> **Exercise 7 (Taylor expansion of the normal density)** Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.22.
>
> Find the terms up to degree 3 of the Taylor series for the standard normal density
>
> $$\phi(x) = \frac{1}{\sqrt{2\pi}}{\operatorname{exp}\mathopen{}\left\{-\frac{x^2}{2}\right\}\mathclose{}}$$
>
> at $x_0 = 0$.

> **NOTE:**
>
> *Solution 7*. Using $e^u = 1 + u + O(u^2)$ with $u = -x^2/2$:
>
> $${\operatorname{exp}\mathopen{}\left\{-\frac{x^2}{2}\right\}\mathclose{}} = 1 - \frac{x^2}{2} + O(x^4)$$
>
> Multiplying by the normalization constant $1/\sqrt{2\pi}$:
>
> $$\phi(x) = \frac{1}{\sqrt{2\pi}} - \frac{x^2}{2\sqrt{2\pi}} + O(x^4)$$
>
> Up to degree 3, the odd powers vanish by symmetry, so:
>
> $$P_3(x) = \frac{1}{\sqrt{2\pi}} - \frac{x^2}{2\sqrt{2\pi}}$$

> **NOTE:**
>
> **Theorem 1 (Maclaurin polynomial of the standard normal density)** The Maclaurin polynomial ([Definition 2](#def-maclaurin-polynomial)) of degree 3 of the standard normal density $\phi(x) = \frac{1}{\sqrt{2\pi}}{\operatorname{exp}\mathopen{}\left\{-\frac{x^2}{2}\right\}\mathclose{}}$ is
>
> $$P_3(x) = \frac{1}{\sqrt{2\pi}} - \frac{x^2}{2\sqrt{2\pi}}$$

> **NOTE:**
>
> *Proof*. This is the solution to [Exercise 7](#exr-miller-taylor-normal-density), worked in [Solution 7](#sol-miller-taylor-normal-density).

> **NOTE:**
>
> **Exercise 8 (Taylor expansion of the square root)** Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.23.
>
> Find the first three terms (up to degree 2) of the Taylor series for
>
> $$f(x) = \sqrt{x}$$
>
> at $x_0 = 1/3$.

> **NOTE:**
>
> *Solution 8*. Compute the values at $x_0 = 1/3$:
>
> $$\begin{aligned}
> f(1/3) &= \mathopen{}\left(\frac{1}{3}\right)\mathclose{}^{1/2}
> \\
> &= \frac{1}{\sqrt{3}}
> \\
> &= \frac{\sqrt{3}}{3}
> \\
> f'(x) &= \frac{1}{2}x^{-1/2}
> \\
> \implies f'(1/3) &= \frac{1}{2}\sqrt{3}
> \\
> &= \frac{\sqrt{3}}{2}
> \\
> f''(x) &= -\frac{1}{4}x^{-3/2}
> \\
> \implies f''(1/3) &= -\frac{1}{4} \cdot 3\sqrt{3}
> \\
> &= -\frac{3\sqrt{3}}{4}
> \end{aligned}$$
>
> The degree-2 Taylor polynomial is:
>
> $$P_2(x) = \frac{\sqrt{3}}{3} + \frac{\sqrt{3}}{2}\mathopen{}\left(x - \frac{1}{3}\right)\mathclose{} - \frac{3\sqrt{3}}{8}\mathopen{}\left(x - \frac{1}{3}\right)\mathclose{}^2$$

> **NOTE:**
>
> **Exercise 9 (Taylor expansion of a fractional power)** Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.24.
>
> Find the first three terms of the Taylor series for
>
> $$f(x) = (1 + x)^{1/3}$$
>
> at $x_0 = 1/2$.

> **NOTE:**
>
> *Solution 9*. At $x_0 = 1/2$, $1 + x_0 = 3/2$:
>
> $$\begin{aligned}
> f(1/2) &= \mathopen{}\left(\frac{3}{2}\right)\mathclose{}^{1/3}
> \\
> f'(x) &= \frac{1}{3}(1 + x)^{-2/3}
> \\
> \implies f'(1/2) &= \frac{1}{3}\mathopen{}\left(\frac{3}{2}\right)\mathclose{}^{-2/3}
> \\
> &= \frac{1}{3}\mathopen{}\left(\frac{2}{3}\right)\mathclose{}^{2/3}
> \\
> f''(x) &= -\frac{2}{9}(1 + x)^{-5/3}
> \\
> \implies f''(1/2) &= -\frac{2}{9}\mathopen{}\left(\frac{3}{2}\right)\mathclose{}^{-5/3}
> \\
> &= -\frac{2}{9}\mathopen{}\left(\frac{2}{3}\right)\mathclose{}^{5/3}
> \end{aligned}$$
>
> Dividing $f''(1/2)$ by $2!$ gives $-\frac{1}{9}\mathopen{}\left(\frac{2}{3}\right)\mathclose{}^{5/3}$. The Taylor polynomial is:
>
> $$P_2(x) = \mathopen{}\left(\frac{3}{2}\right)\mathclose{}^{1/3} + \frac{1}{3}\mathopen{}\left(\frac{2}{3}\right)\mathclose{}^{2/3}\mathopen{}\left(x - \frac{1}{2}\right)\mathclose{} - \frac{1}{9}\mathopen{}\left(\frac{2}{3}\right)\mathclose{}^{5/3}\mathopen{}\left(x - \frac{1}{2}\right)\mathclose{}^2$$

> **NOTE:**
>
> **Exercise 10 (Taylor expansion of** $x \log x$) Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.25.
>
> Find the first three terms (up to degree 2) of the Taylor series for
>
> $$f(x) = x\log x$$
>
> at $x_0 = 1$.

> **NOTE:**
>
> *Solution 10*. Evaluate derivatives at $x_0 = 1$:
>
> $$\begin{aligned}
> f(1) &= 1 \log 1
> \\
> &= 0
> \\
> f'(x) &= \log x + 1
> \\
> \implies f'(1) &= 0 + 1
> \\
> &= 1
> \\
> f''(x) &= \frac{1}{x} \implies f''(1) = 1
> \end{aligned}$$
>
> Therefore:
>
> $$\begin{aligned}
> P_2(x)
> &= f(1) + f'(1)(x - 1) + \frac{f''(1)}{2!}(x - 1)^2 \\
> &= (x - 1) + \frac{1}{2}(x - 1)^2
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 11 (Maclaurin series of** $\log(1 + x)$) Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.26.
>
> Find the first three terms of the Taylor series for
>
> $$f(x) = \log(1 + x)$$
>
> at $x_0 = 0$.

> **NOTE:**
>
> *Solution 11*. Differentiating repeatedly at $x_0 = 0$:
>
> $$\begin{aligned}
> f(0) &= \log 1 \\
> &= 0
> \\
> f'(x) &= (1 + x)^{-1} \implies f'(0) = 1
> \\
> f''(x) &= -(1 + x)^{-2} \implies f''(0) = -1
> \\
> f'''(x) &= 2(1 + x)^{-3} \implies f'''(0) = 2
> \end{aligned}$$
>
> The Taylor polynomial of degree 3 is:
>
> $$P_3(x) = x - \frac{x^2}{2} + \frac{x^3}{3}$$

> **NOTE:**
>
> **Theorem 2 (Maclaurin polynomial of** $\log(1 + x)$) The Maclaurin polynomial ([Definition 2](#def-maclaurin-polynomial)) of degree 3 of $f(x) = \log(1 + x)$ is
>
> $$P_3(x) = x - \frac{x^2}{2} + \frac{x^3}{3}$$

> **NOTE:**
>
> *Proof*. This is the solution to [Exercise 11](#exr-miller-taylor-log-one-plus-x), worked in [Solution 11](#sol-miller-taylor-log-one-plus-x).

> **NOTE:**
>
> **Exercise 12 (Maclaurin series of** $\log(1 - x)$) Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.27.
>
> Find the terms up to degree 3 of the Taylor series for
>
> $$f(x) = \log(1 - x)$$
>
> at $x_0 = 0$.

> **NOTE:**
>
> *Solution 12*. Substitute $u = -x$ into the expansion for $\log(1 + u)$ from [Theorem 2](#thm-taylor-log-one-plus-x):
>
> $$\begin{aligned}
> \log(1 - x)
> &= (-x) - \frac{(-x)^2}{2} + \frac{(-x)^3}{3} - \dots \\
> &= -x - \frac{x^2}{2} - \frac{x^3}{3} - \dots
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 3 (Maclaurin polynomial of** $\log(1 - x)$) The Maclaurin polynomial ([Definition 2](#def-maclaurin-polynomial)) of degree 3 of $f(x) = \log(1 - x)$ is
>
> $$P_3(x) = -x - \frac{x^2}{2} - \frac{x^3}{3}$$

> **NOTE:**
>
> *Proof*. This is the solution to [Exercise 12](#exr-miller-taylor-log-one-minus-x), worked in [Solution 12](#sol-miller-taylor-log-one-minus-x).

> **NOTE:**
>
> **Exercise 13 (Taylor series of** $\log((1 - x)e^x)$) Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.28.
>
> Find the first two non-zero terms of the Taylor series for
>
> $$f(x) = \log((1 - x)e^x)$$
>
> at $x_0 = 0$.

> **NOTE:**
>
> *Solution 13*. Expand using logarithm properties:
>
> $$\begin{aligned}
> f(x)
> &= \log(1 - x) + \log(e^x) \\
> &= \log(1 - x) + x
> \end{aligned}$$
>
> Substitute the series for $\log(1 - x)$ from [Theorem 3](#thm-taylor-log-one-minus-x):
>
> $$\begin{aligned}
> f(x)
> &= \mathopen{}\left(-x - \frac{x^2}{2} - \frac{x^3}{3} - \dots\right)\mathclose{} + x \\
> &= -\frac{x^2}{2} - \frac{x^3}{3} - \dots
> \end{aligned}$$
>
> The constant and linear terms vanish ($f(0) = 0$, $f'(0) = 0$). The first two non-zero terms are:
>
> $$-\frac{x^2}{2} - \frac{x^3}{3}$$

> **NOTE:**
>
> **Exercise 14 (Taylor series of a product of known expansions)** Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.29.
>
> Find the terms up to degree 2 of the Taylor series for
>
> $$f(x) = \cos(x)\log(1 + x)$$
>
> at $x_0 = 0$.

> **NOTE:**
>
> *Solution 14*. Multiply the known Maclaurin expansions:
>
> $$\begin{aligned}
> \cos x &= 1 - \frac{x^2}{2} + O(x^4)
> \\
> \log(1 + x) &= x - \frac{x^2}{2} + O(x^3)
> \end{aligned}$$
>
> Multiplying and dropping terms of order $x^3$ and higher:
>
> $$\begin{aligned}
> f(x)
> &= \mathopen{}\left(1 - \frac{x^2}{2} + \dots\right)\mathclose{}\mathopen{}\left(x - \frac{x^2}{2} + \dots\right)\mathclose{} \\
> &= x - \frac{x^2}{2} + O(x^3)
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 15 (Taylor series of** $\log(1 + 2x)$) Adapted from Miller [\[1\]](#ref-problifesavercalc), Question 1.1.30.
>
> Find the first two non-zero terms of the Taylor series for
>
> $$f(x) = \log(1 + 2x)$$
>
> at $x_0 = 0$.

> **NOTE:**
>
> *Solution 15*. Substitute $u = 2x$ into the Maclaurin series $\log(1 + u) = u - \frac{u^2}{2} + \dots$:
>
> $$\begin{aligned}
> \log(1 + 2x)
> &= (2x) - \frac{(2x)^2}{2} + \dots \\
> &= 2x - 2x^2 + \dots
> \end{aligned}$$

# Definitions on this page

- [Definition 1 (Taylor polynomial (Taylor expansion))](#def-taylor-polynomial)
- [Definition 2 (Maclaurin polynomial)](#def-maclaurin-polynomial)
- [Definition 3 (Taylor series)](#def-taylor-series)

Back to top

## References

\[1\]

S. J. Miller, *The probability lifesaver: Calculus review problems*. 2016. Available: <https://web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/index.htm#:~:text=http%3A//web.williams.edu/Mathematics/sjmiller/public_html/probabilitylifesaver/supplementalchap_calcreview.pdf>
