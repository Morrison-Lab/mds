# Convexity, Infimum and Supremum

Code

Published

Last modified: 2026-11-20 17:52:26 (PST)

# 1 Convex functions

> **NOTE:**
>
> **Exercise 1 (A value compared with an average of values)** Let $f(x) = (x - 2)^2$, and take the points $x = 0$ and $y = 4$ with $t = \tfrac{1}{2}$.
>
> 1.  Compute $f(t x + (1 - t) y)$.
> 2.  Compute $t f(x) + (1 - t) f(y)$.
> 3.  Is $f(t x + (1 - t) y) \le t f(x) + (1 - t) f(y)$?

> **NOTE:**
>
> *Solution 1*.
>
> 1.  With $t = \tfrac{1}{2}$,
>
>     $$\begin{aligned}
>     t x + (1 - t) y &= \tfrac{1}{2} \cdot 0 + \tfrac{1}{2} \cdot 4 \\
>     &= 2,
>     \end{aligned}$$
>
>     so
>
>     $$\begin{aligned}
>     f(2) &= (2 - 2)^2 \\
>     &= 0.
>     \end{aligned}$$
>
> 2.  $$\begin{aligned}
>     f(0) &= (0 - 2)^2 \\
>     &= 4
>     \end{aligned}$$
>
>     and
>
>     $$\begin{aligned}
>     f(4) &= (4 - 2)^2 \\
>     &= 4,
>     \end{aligned}$$
>
>     so $\tfrac{1}{2} \cdot 4 + \tfrac{1}{2} \cdot 4 = 4$.
>
> 3.  Yes: $0 \le 4$. The value of $f$ at the midpoint of $0$ and $4$ is below the average of its values at the two endpoints.

> **NOTE:**
>
> **Definition 1 (Line segment)** Let $x, y \in \mathbb{R}^p$. The **line segment** from $x$ to $y$ [\[1\]](#ref-wikipedia_line_segment) is the set of points $$\mathopen{}\left\{t x + (1 - t) y : t \in [0, 1]\right\}\mathclose{}.$$ The value $t = 1$ gives $x$, the value $t = 0$ gives $y$, and $t = \tfrac{1}{2}$ gives the midpoint $\tfrac{1}{2}(x + y)$.

> **NOTE:**
>
> **Example 1 (A line segment in** $\mathbb{R}$) For $p = 1$, $x = 0$ and $y = 4$, the [line segment](#def-line-segment) from $x$ to $y$ is the [interval](https://morrison-lab.github.io/mcs/sets.html#def-interval) $[0, 4]$. The value $t = \tfrac{1}{4}$ gives the point $\tfrac{1}{4} \cdot 0 + \tfrac{3}{4} \cdot 4 = 3$.

> **NOTE:**
>
> **Definition 2 (Chord)** Let $f : \mathbb{R}^p \to \mathbb{R}$ be a [function](https://morrison-lab.github.io/mcs/functions.html#def-function), and let $x, y \in \mathbb{R}^p$. The **chord** of $f$ from $x$ to $y$ [\[2\]](#ref-wikipedia_chord_geometry) is the line segment ([Definition 1](#def-line-segment)) in $\mathbb{R}^{p+1}$ from the point $(x, f(x))$ to the point $(y, f(y))$ of the [graph](https://morrison-lab.github.io/mcs/functions.html#def-graph) of $f$: $$\mathopen{}\left\{\mathopen{}\left(t x + (1 - t) y,\ t f(x) + (1 - t) f(y)\right)\mathclose{} : t \in [0, 1]\right\}\mathclose{}.$$ Above the point $t x + (1 - t) y$, the chord has height $t f(x) + (1 - t) f(y)$.

> **NOTE:**
>
> **Example 2 (A chord of** $x^2$) For $f(x) = x^2$, $x = -1$ and $y = 3$, the chord runs from $(-1, f(-1)) = (-1, 1)$ to $(3, f(3)) = (3, 9)$. With $t = \tfrac{1}{2}$, it passes through $\mathopen{}\left(\tfrac{1}{2} \cdot (-1) + \tfrac{1}{2} \cdot 3,\ \tfrac{1}{2} \cdot 1 + \tfrac{1}{2} \cdot 9\right)\mathclose{} = (1, 5)$, so above the point $1$ it has height $5$.

> **NOTE:**
>
> **Definition 3 (Convex function)** Let $f : \mathbb{R}^p \to \mathbb{R}$ be a [function](https://morrison-lab.github.io/mcs/functions.html#def-function). $f$ is **convex** [\[3\]](#ref-wikipedia_convex_function) if $$f(t x + (1 - t) y) \le t f(x) + (1 - t) f(y)$$ for all $x, y \in \mathbb{R}^p$ and all $t \in [0, 1]$.

> **NOTE:**
>
> *Remark 1* (Chords lie on or above the graph). The point $t x + (1 - t) y$ lies on the [line segment](#def-line-segment) from $x$ to $y$, and the right-hand side is the height above that point of the [chord](#def-chord) of $f$ from $x$ to $y$. So $f$ is [convex](#def-convex-function) when every chord lies on or above the [graph](https://morrison-lab.github.io/mcs/functions.html#def-graph).
>
> For example, take $f(x) = x^2$, $x = -1$, $y = 3$, and $t = \tfrac{1}{2}$. The point is $\tfrac{1}{2} \cdot (-1) + \tfrac{1}{2} \cdot 3 = 1$, where the graph has height $f(1) = 1$ and the chord has height
>
> $$\begin{aligned}
> \tfrac{1}{2} f(-1) + \tfrac{1}{2} f(3) &= \tfrac{1}{2} \cdot 1 + \tfrac{1}{2} \cdot 9 \\
> &= 5.
> \end{aligned}$$
>
> The chord is above the graph: $1 \le 5$.

> **NOTE:**
>
> **Example 3 (A function that is not convex)** The function in [Exercise 4 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#exr-local-vs-global-min), $f(x) = x^3 - 3x$, is not convex. Take $x = -2$, $y = 0$, $t = \tfrac{1}{2}$. The point is $\tfrac{1}{2} \cdot (-2) + \tfrac{1}{2} \cdot 0 = -1$, where the graph has height
>
> $$\begin{aligned}
> f(-1) &= -1 + 3 \\
> &= 2,
> \end{aligned}$$
>
> but the chord has height
>
> $$\begin{aligned}
> \tfrac{1}{2} f(-2) + \tfrac{1}{2} f(0) &= \tfrac{1}{2} (-8 + 6) + \tfrac{1}{2} \cdot 0 \\
> &= -1,
> \end{aligned}$$
>
> and $2 \le -1$ is false.

> **NOTE:**
>
> **Example 4 (A convex and a non-convex function)** $f(x) = (x - 2)^2$ is convex ([Definition 3](#def-convex-function)): by expanding the square, $f(t x + (1 - t) y) - t f(x) - (1 - t) f(y) = -t (1 - t) (x - y)^2 \le 0$. Its local minimizer $x^* = 2$ is also a global minimizer, since
>
> $$\begin{aligned}
> f(x) &= (x - 2)^2 \\
> &\ge 0 \\
> &= f(2)
> \end{aligned}$$
>
> for every $x$.
>
> Without convexity, a local minimizer need not be global: $f(x) = x^3 - 3x$ is not convex ([Example 3](#exm-cubic-not-convex)), and it has a local minimizer at $x^* = 1$ that is not global ([Exercise 4 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#exr-local-vs-global-min)).

> **NOTE:**
>
> **Theorem 1 (Local minimizers of convex functions are global)** Let $f : \mathbb{R}^p \to \mathbb{R}$ be a [convex function](#def-convex-function). Every [local minimizer](algebra-basics.llms.md#def-local-minimizer) of $f$ is a [global minimizer](algebra-basics.llms.md#def-global-minimizer) of $f$ over $\mathbb{R}^p$.

> **NOTE:**
>
> *Proof*. Let $x^*$ be a local minimizer of $f$, so there is a $\delta> 0$ with $f(x^*) \le f(x)$ whenever $\mathopen{}\left\lVert x - x^*\right\rVert\mathclose{} < \delta$ ([Definition 19 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#def-local-minimizer)). Suppose $x^*$ is not a global minimizer ([Definition 18 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#def-global-minimizer)). Then some $y \in \mathbb{R}^p$ has $f(y) < f(x^*)$, and in particular $y \ne x^*$.
>
> Let $t = \min{\mathopen{}\left\{\tfrac{1}{2}, \dfrac{\delta}{2 \mathopen{}\left\lVert y - x^*\right\rVert\mathclose{}}\right\}\mathclose{}}$, so $t \in (0, 1)$, and let $z = t y + (1 - t) x^*$. Then $z - x^* = t (y - x^*)$, so $\mathopen{}\left\lVert z - x^*\right\rVert\mathclose{} = t \mathopen{}\left\lVert y - x^*\right\rVert\mathclose{} \le \delta/ 2 < \delta$.
>
> By convexity, $$f(z) \le t f(y) + (1 - t) f(x^*) < t f(x^*) + (1 - t) f(x^*) = f(x^*),$$ where the strict inequality uses $t > 0$ and $f(y) < f(x^*)$. So $f(z) < f(x^*)$ with $\mathopen{}\left\lVert z - x^*\right\rVert\mathclose{} < \delta$, which contradicts $x^*$ being a local minimizer. Hence $x^*$ is a global minimizer.

> **NOTE:**
>
> **Theorem 2 (Jensen’s inequality for a weighted average)** Let $f : \mathbb{R}^p \to \mathbb{R}$ be a [convex function](#def-convex-function) [\[4\]](#ref-wikipedia_jensens_inequality). Let $x_1, \ldots, x_n \in \mathbb{R}^p$, and let $w_1, \ldots, w_n \ge 0$ be weights with $\sum_{i=1}^nw_i = 1$. Then $$f\mathopen{}\left(\sum_{i=1}^nw_i x_i\right)\mathclose{} \le \sum_{i=1}^nw_i f(x_i).$$

> **NOTE:**
>
> *Proof*. The proof is by induction on $n$.
>
> For $n = 1$ the weight is $w_1 = 1$, and both sides equal $f(x_1)$.
>
> Now let $n \ge 2$, and assume the inequality holds for $n - 1$ points. If $w_n = 1$, the other weights are all $0$, and both sides equal $f(x_n)$. Otherwise let
>
> $$\begin{aligned}
> s &= 1 - w_n \\
> &= \sum_{i=1}^{n-1} w_i \\
> &> 0
> \end{aligned}$$
>
> and $$y = \sum_{i=1}^{n-1} \frac{w_i}{s} x_i.$$ The weights $w_i / s$ are non-negative and sum to $1$, so the induction assumption gives $$f(y) \le \sum_{i=1}^{n-1} \frac{w_i}{s} f(x_i).$$ Since $\sum_{i=1}^nw_i x_i = s y + (1 - s) x_n$ and $s \in (0, 1]$, the definition of a convex function ([Definition 3](#def-convex-function)) gives $$f\mathopen{}\left(\sum_{i=1}^nw_i x_i\right)\mathclose{}
> = f(s y + (1 - s) x_n)
> \le s f(y) + (1 - s) f(x_n).$$ Substituting the bound on $f(y)$, and using $1 - s = w_n$, $$s f(y) + (1 - s) f(x_n)
> \le \sum_{i=1}^{n-1} w_i f(x_i) + w_n f(x_n)
> = \sum_{i=1}^nw_i f(x_i).$$

> **NOTE:**
>
> **Example 5 (The average of the squares is at least the square of the average)** Take $f(x) = x^2$. It is convex by [Definition 3](#def-convex-function): for $t \in [0, 1]$, $$t x^2 + (1 - t) y^2 - \mathopen{}\left(t x + (1 - t) y\right)\mathclose{}^2 = t (1 - t) (x - y)^2 \ge 0.$$ Take the three points $x_1 = 1$, $x_2 = 2$, $x_3 = 6$, and the equal weights
>
> $$\begin{aligned}
> w_1 &= w_2 \\
> &= w_3 \\
> &= \tfrac{1}{3}.
> \end{aligned}$$
>
> The weighted average of the points is their ordinary average, $\tfrac{1}{3}(1 + 2 + 6) = 3$, so the left side of [Theorem 2](#thm-jensen) is $f(3) = 9$. The right side is the average of the squares, $\tfrac{1}{3}(1 + 4 + 36) = \tfrac{41}{3}$. The inequality holds: $9 \le \tfrac{41}{3}$.
>
> The gap is $\tfrac{41}{3} - 9 = \tfrac{14}{3}$. That is the average squared distance of the points from their average, $\tfrac{1}{3}\mathopen{}\left((1-3)^2 + (2-3)^2 + (6-3)^2\right)\mathclose{} = \tfrac{14}{3}$, which statistics calls the variance of the three points (about their [mean](linear-algebra-vectors.llms.md#def-mean), defined later). For $f(x) = x^2$, Jensen’s inequality says this average squared distance is never negative.

> **NOTE:**
>
> *Remark 2* (The inequality reverses for concave functions). If $f$ is [concave](optimization-convexity.llms.md#def-concave), then $-f$ is convex, and applying [Theorem 2](#thm-jensen) to $-f$ reverses the inequality: $f\mathopen{}\left(\sum_i w_i x_i\right)\mathclose{} \ge \sum_i w_i f(x_i)$. For $f(x) = -x^2$ and the points in [Example 5](#exm-jensen), $f(3) = -9 \ge -\tfrac{41}{3}$.

# 2 Infimum and supremum

> **NOTE:**
>
> **Definition 4 (Upper bound)** Let $A \subseteq \mathbb{R}$. A real number $u$ is an **upper bound** for $A$ [\[5\]](#ref-wikipedia_upper_and_lower_bounds) if $a \le u$ for all $a \in A$.

> **NOTE:**
>
> **Definition 5 (Lower bound)** Let $A \subseteq \mathbb{R}$. A real number $\ell$ is a **lower bound** for $A$ [\[5\]](#ref-wikipedia_upper_and_lower_bounds) if $\ell\le a$ for all $a \in A$.

> **NOTE:**
>
> **Definition 6 (Bounded above)** A set $A \subseteq \mathbb{R}$ is **bounded above** if it has an upper bound ([Definition 4](#def-upper-bound)). A [real-valued function](linear-algebra-vectors.llms.md#def-real-vector-valued) is bounded above if its [image](https://morrison-lab.github.io/mcs/functions.html#def-image) is.

> **NOTE:**
>
> **Definition 7 (Bounded below)** A set $A \subseteq \mathbb{R}$ is **bounded below** if it has a lower bound ([Definition 5](#def-lower-bound)). A [real-valued function](linear-algebra-vectors.llms.md#def-real-vector-valued) is bounded below if its [image](https://morrison-lab.github.io/mcs/functions.html#def-image) is.

> **NOTE:**
>
> **Definition 8 (Bounded)** A set $A \subseteq \mathbb{R}$ is **bounded** if it is both bounded above ([Definition 6](#def-bounded-above)) and bounded below ([Definition 7](#def-bounded-below)). A [real-valued function](linear-algebra-vectors.llms.md#def-real-vector-valued) is bounded if its [image](https://morrison-lab.github.io/mcs/functions.html#def-image) is.

> **NOTE:**
>
> **Example 6 (Bounded and unbounded sets)**  
>
> - For $A = (0, 1]$, $1$, $2$, and $100$ are upper bounds, and $0$ and $-5$ are lower bounds, so $A$ is bounded. $0.5$ is not an upper bound, because $0.6 \in A$ and $0.6 > 0.5$.
> - The natural numbers $\mathbb{N}= \mathopen{}\left\{1, 2, 3, \ldots\right\}\mathclose{}$ are bounded below, by $1$, but not bounded above: for any real number $u$, some natural number $n$ satisfies $n > u$.

> **NOTE:**
>
> **Theorem 3 (Completeness of the real numbers)** Let $A \subseteq \mathbb{R}$ be nonempty [\[6\]](#ref-wikipedia_least_upper_bound_property).
>
> - If $A$ is [bounded above](#def-bounded-above), the set of upper bounds of $A$ has a [minimum](algebra-basics.llms.md#def-minimum).
> - If $A$ is bounded below, the set of lower bounds of $A$ has a [maximum](algebra-basics.llms.md#def-maximum).

> **NOTE:**
>
> *Proof*. The first statement is the least-upper-bound property of $\mathbb{R}$ [\[7\]](#ref-rudin1976principles), Definition 1.8, p. 4, and Theorem 1.19, p. 8. For the second, let $-A = \mathopen{}\left\{-a : a \in A\right\}\mathclose{}$. Negating both sides of an inequality reverses it ([Theorem 6 in Equalities, Inequalities and Minimizers](algebra-basics.llms.md#thm-neg-ineq)), so $\ell$ is a lower bound of $A$ exactly when $-\ell$ is an upper bound of $-A$. The set $-A$ is nonempty and bounded above, so by the first statement its upper bounds have a minimum $u$, and then $-u$ is the largest lower bound of $A$.

> **NOTE:**
>
> **Example 7 (Completeness for an interval)** For $A = (1, 2]$, the lower bounds of $A$ are the numbers $\ell\le 1$, and the largest of them is $1$. The upper bounds of $A$ are the numbers $u\ge 2$, and the smallest of them is $2$.

> **NOTE:**
>
> **Definition 9 (Infimum, greatest lower bound)** Let $A \subseteq \mathbb{R}$ be nonempty and bounded below ([Definition 7](#def-bounded-below)). The **infimum** of $A$ [\[8\]](#ref-wikipedia_infimum_and_supremum), written $\inf A$, is the greatest real number $t$ satisfying $t \le a$ for all $a \in A$:
>
> $$\inf A \stackrel{\text{def}}{=}\max\mathopen{}\left\{t \in \mathbb{R}: \forall a \in A,\ t \le a\right\}\mathclose{}$$
>
> If $A$ is nonempty but not bounded below, we write $\inf A = -\infty$ by convention.

> **NOTE:**
>
> *Remark 3* (Existence of the infimum, and when it is a minimum). The maximum in [Definition 9](#def-infimum) always exists, by the completeness of the real numbers ([Theorem 3](#thm-completeness)). For example, for $A = (1, 2]$, the numbers $t$ with $t \le a$ for all $a \in A$ are those with $t \le 1$, and the largest of them is $1$, so $\inf A = 1$.
>
> If the infimum belongs to $A$, it equals the minimum: $\inf A = \min A$. For example,
>
> $$\begin{aligned}
> \inf [1, 2] &= 1 \\
> &= \min [1, 2].
> \end{aligned}$$
>
> For $A = (1, 2]$, the infimum $1$ is not in $A$, and $A$ has no minimum.

> **NOTE:**
>
> **Example 8 (Numerical examples of infimum)**  
>
> - $\inf\{1, 2, 3\} = 1$, since $1$ is the smallest element.
>
> - $$\begin{aligned}
>   \inf(0.5, 1] &= 0.5 \\
>   &= \min[0.5, 1]:
>   \end{aligned}$$
>
>   for intervals open below, the infimum equals the minimum of the corresponding closed-below interval, even though $0.5 \notin (0.5, 1]$. More generally,
>
>   $$\begin{aligned}
>   \inf(c, b] &= \min[c, b] \\
>   &= c
>   \end{aligned}$$
>
>   for any $c < b$.
>
> - $\inf\{t \ge 0 : t > 0.5\} = 0.5$, even though $0.5$ itself is not in the set.
>
> - $\inf\{-1, -2, -3, \ldots\} = -\infty$, because no real number is less than or equal to every element of that set.

> **NOTE:**
>
> **Definition 10 (Supremum, least upper bound)** Let $A \subseteq \mathbb{R}$ be nonempty and bounded above ([Definition 6](#def-bounded-above)). The **supremum** of $A$ [\[8\]](#ref-wikipedia_infimum_and_supremum), written $\sup A$, is the smallest real number $t$ satisfying $a \le t$ for all $a \in A$:
>
> $$\sup A \stackrel{\text{def}}{=}\min\mathopen{}\left\{t \in \mathbb{R}: \forall a \in A,\ a \le t\right\}\mathclose{}$$
>
> If $A$ is nonempty but not bounded above, we write $\sup A = +\infty$ by convention.

> **NOTE:**
>
> *Remark 4* (Existence of the supremum, and when it is a maximum). The minimum in [Definition 10](#def-supremum) always exists, by the completeness of the real numbers ([Theorem 3](#thm-completeness)). For example, for $A = [1, 2)$, the numbers $t$ with $a \le t$ for all $a \in A$ are those with $t \ge 2$, and the smallest of them is $2$, so $\sup A = 2$.
>
> If the supremum belongs to $A$, it equals the maximum: $\sup A = \max A$. For example,
>
> $$\begin{aligned}
> \sup [1, 2] &= 2 \\
> &= \max [1, 2].
> \end{aligned}$$
>
> For $A = [1, 2)$, the supremum $2$ is not in $A$, and $A$ has no maximum.

> **NOTE:**
>
> **Example 9 (Numerical examples of supremum)**  
>
> - $\sup\{1, 2, 3\} = 3$, since $3$ is the largest element.
> - $\sup\{t \ge 0 : t < 0.5\} = 0.5$, even though $0.5$ itself is not in the set.
> - $\sup\{1, 2, 3, \ldots\} = +\infty$, because no real number is greater than or equal to every element of that set.

# Definitions on this page

- [Definition 1 (Line segment)](#def-line-segment)
- [Definition 2 (Chord)](#def-chord)
- [Definition 3 (Convex function)](#def-convex-function)
- [Definition 4 (Upper bound)](#def-upper-bound)
- [Definition 5 (Lower bound)](#def-lower-bound)
- [Definition 6 (Bounded above)](#def-bounded-above)
- [Definition 7 (Bounded below)](#def-bounded-below)
- [Definition 8 (Bounded)](#def-bounded)
- [Definition 9 (Infimum, greatest lower bound)](#def-infimum)
- [Definition 10 (Supremum, least upper bound)](#def-supremum)

Back to top

## References

\[1\]

Wikipedia contributors, “Line segment — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Line_segment>

\[2\]

Wikipedia contributors, “Chord (geometry) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Chord_(geometry)>

\[3\]

Wikipedia contributors, “Convex function — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Convex_function>

\[4\]

Wikipedia contributors, “Jensen’s inequality — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Jensen%27s_inequality>

\[5\]

Wikipedia contributors, “Upper and lower bounds — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Upper_and_lower_bounds>

\[6\]

Wikipedia contributors, “Least-upper-bound property — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Least-upper-bound_property>

\[7\]

W. Rudin, *Principles of mathematical analysis*, 3rd ed. in International series in pure and applied mathematics. New York: McGraw-Hill, 1976.

\[8\]

Wikipedia contributors, “Infimum and supremum — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Infimum_and_supremum>
