# Equalities, Inequalities and Minimizers

Code

Published

Last modified: 2026-11-11 16:53:41 (PST)

# 1 Equalities

Mastery of [Elementary Algebra](https://en.wikipedia.org/wiki/Elementary_algebra) (a.k.a. “College Algebra”) is a prerequisite for calculus, which is in turn a prerequisite for most statistics and data science courses. Nevertheless, each year, some students are still uncomfortable with algebraic manipulations of mathematical formulas. Therefore, I include this section as a quick reference.

> **NOTE:**
>
> **Example 1 (A transitive relation and one that is not)**  
>
> - $\le$ is [transitive](https://morrison-lab.github.io/mcs/chapters/relations.html#def-transitive): for example, $1 \le 2$ and $2 \le 5$, and indeed $1 \le 5$.
> - $\ne$ is not transitive: $1 \ne 2$ and $2 \ne 1$, but $1 \ne 1$ is false.

> **NOTE:**
>
> **Theorem 1 (Equalities are transitive)** If $a=b$ and $b=c$, then $a=c$. That is, $=$ is a [transitive](https://morrison-lab.github.io/mcs/chapters/relations.html#def-transitive) relation.

> **NOTE:**
>
> **Theorem 2 (Substituting equivalent expressions)** If $a = b$, then for any function $f(x)$, $f(a) = f(b)$

> **NOTE:**
>
> **Definition 1 (Identity)** An **identity** [\[1\]](#ref-wikipedia_identity_mathematics) is an equation between two expressions that holds for every value of its variables in a stated [set](https://morrison-lab.github.io/mcs/sets.html#def-set), such as the [real numbers](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers).

> **NOTE:**
>
> **Example 2 (An identity, and an equation that is not one)**  
>
> - $2(x + 1) = 2x + 2$ is an identity: it holds for every real $x$. For example, at $x = 3$, both sides equal $8$.
> - $x + 1 = 3$ is not an identity: it holds at $x = 2$, but at $x = 0$ the left side is $1$ and the right side is $3$.

# 2 Inequalities

> **NOTE:**
>
> **Definition 2 (Strict inequalities)** For [real numbers](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers) $a$ and $b$, $a < b$ (“$a$ is less than $b$”) and $a > b$ (“$a$ is greater than $b$”) are **strict inequalities** [\[2\]](#ref-wikipedia_inequality_mathematics).

> **NOTE:**
>
> **Definition 3 (Non-strict inequalities)** For [real numbers](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers) $a$ and $b$, the **non-strict inequalities** also allow equality, unlike the strict inequalities ([Definition 2](#def-strict-inequality)):
>
> - $a \le b$ means $a < b$ or $a = b$;
> - $a \ge b$ means $a > b$ or $a = b$.

> **NOTE:**
>
> **Example 3 (Strict and non-strict inequalities)**  
>
> - $3 \le 3$ is true, because $3 = 3$, but $3 < 3$ is false.
> - $2 < 3$ and $2 \le 3$ are both true.
> - $4 \ge 5$ is false, because $4 > 5$ and $4 = 5$ are both false.

> **NOTE:**
>
> **Theorem 3 (Strict inequalities are transitive)** If $a < b$ and $b < c$, then $a < c$. That is, $<$ is a [transitive](https://morrison-lab.github.io/mcs/chapters/relations.html#def-transitive) relation.

> **NOTE:**
>
> **Example 4 (Chaining strict inequalities)** Since $1 < 2$ and $2 < 5$, it follows that $1 < 5$.

> **NOTE:**
>
> **Theorem 4 (Non-strict inequalities are transitive)** If $a \le b$ and $b \le c$, then $a \le c$. That is, $\le$ is a [transitive](https://morrison-lab.github.io/mcs/chapters/relations.html#def-transitive) relation.

> **NOTE:**
>
> **Example 5 (Chaining non-strict inequalities)** Since $3 \le 3$ and $3 \le 4$, it follows that $3 \le 4$.

> **NOTE:**
>
> **Theorem 5 (Adding to both sides of an inequality)** If $a<b$, then $a+c < b+c$

> **NOTE:**
>
> **Theorem 6 (Negating both sides of an inequality)** If $a < b$, then: $-a > -b$

> **NOTE:**
>
> **Theorem 7 (Multiplying both sides of an inequality by a positive number)** If $a < b$ and $c > 0$, then $ca < cb$.

> **NOTE:**
>
> **Theorem 8 (Negation is multiplication by** $-1$) $$-a = (-1)*a$$

# 3 Powers, square roots, and absolute values

> **NOTE:**
>
> **Definition 4 (Power)** Let $a$ be a real number and $n$ a [natural number](https://morrison-lab.github.io/mcs/number-systems.html#def-natural-numbers). The $n$th **power** of $a$ is the product of $n$ copies of $a$ [\[3\]](#ref-wikipedia_exponentiation):
>
> $$a^n \stackrel{\text{def}}{=}\underbrace{a \cdot a \cdot\cdots \cdot a}_{n \text{ factors}}$$

> **NOTE:**
>
> **Definition 5 (Base of a power)** In $a^n$ ([Definition 4](#def-power)), $a$ is the **base**.

> **NOTE:**
>
> **Definition 6 (Exponent of a power)** In $a^n$ ([Definition 4](#def-power)), $n$ is the **exponent**.

> **NOTE:**
>
> **Definition 7 (Square)** The second power $a^2$ ([Definition 4](#def-power)) is the **square** of $a$.

> **NOTE:**
>
> **Example 6 (Powers)**  
>
> - $$\begin{aligned}
>   2^3 &= 2 \cdot 2 \cdot 2 \\
>   &= 8,
>   \end{aligned}$$
>
>   with base $2$ and exponent $3$.
>
> - $$\begin{aligned}
>   (-3)^2 &= (-3) \cdot(-3) \\
>   &= 9,
>   \end{aligned}$$
>
>   but
>
>   $$\begin{aligned}
>   -3^2 &= -(3^2) \\
>   &= -9:
>   \end{aligned}$$
>
>   the exponent applies only to the $3$.
>
> - $5^0 = 1$.
>
> - $$\begin{aligned}
>   2^{-2} &= \frac{1}{2^2} \\
>   &= \frac{1}{4}.
>   \end{aligned}$$

> **NOTE:**
>
> **Definition 8 (Powers with exponent zero or a negative integer)** For the [exponent](#def-power-exponent) $0$ and negative [integer](https://morrison-lab.github.io/mcs/number-systems.html#def-integers) [exponents](#def-power-exponent):
>
> - $a^0 \stackrel{\text{def}}{=}1$, including $0^0 = 1$ by convention;
> - $a^{-n} \stackrel{\text{def}}{=}\frac{1}{a^n}$, when $a \ne 0$.

> **NOTE:**
>
> *Remark 1* (Powers with real exponents). [Definition 28 in Polynomials, Exponentials and Logarithms](algebra-exponentials.llms.md#def-real-power) extends powers to real exponents when the base is positive.

> **NOTE:**
>
> **Definition 9 (Square root)** For a real number $a \ge 0$, the **square root** of $a$, written $\sqrt{a}$ [\[4\]](#ref-wikipedia_square_root), is the non-negative real number whose square ([Definition 4](#def-power)) is $a$.

> **NOTE:**
>
> **Example 7 (Square roots)**  
>
> - $\sqrt{9} = 3$. Although $(-3)^2 = 9$ too, $-3$ is negative, so $\sqrt{9}$ is not $-3$.
> - $\sqrt{0} = 0$.
> - $\sqrt{2} \approx 1.41421$.
> - $\sqrt{-4}$ is not a real number, because no real number squares to $-4$ (see **?@sec-complex-numbers**).

> **NOTE:**
>
> **Definition 10 (Absolute value of a real number)** The **absolute value** of a real number $a$ [\[5\]](#ref-wikipedia_absolute_value) is
>
> $$\mathopen{}\left|a\right|\mathclose{} \stackrel{\text{def}}{=}\begin{cases}
> a, & a \ge 0 \\
> -a, & a < 0
> \end{cases}$$

> **NOTE:**
>
> **Example 8 (Absolute values)**  
>
> - $\mathopen{}\left|2.5\right|\mathclose{} = 2.5$, because $2.5 \ge 0$.
>
> - $$\begin{aligned}
>   \mathopen{}\left|-3\right|\mathclose{} &= -(-3) \\
>   &= 3,
>   \end{aligned}$$
>
>   because $-3 < 0$.
>
> - $\mathopen{}\left|0\right|\mathclose{} = 0$.
>
> - $$\begin{aligned}
>   \mathopen{}\left|-3\right|\mathclose{} &= 3 \\
>   &= \sqrt{9} \\
>   &= \sqrt{(-3)^2}:
>   \end{aligned}$$
>
>   for every real $a$, $\mathopen{}\left|a\right|\mathclose{} = \sqrt{a^2}$ ([Definition 9](#def-square-root)).
>
> - $\mathopen{}\left|x - 1\right|\mathclose{} < 1$ says that $x$ is less than $1$ away from $1$, that is, $0 < x < 2$.

> **NOTE:**
>
> *Remark 2* (Absolute value as distance). For real numbers $a$ and $b$, $\mathopen{}\left|a - b\right|\mathclose{}$ is the distance between $a$ and $b$ on the number line.

# 4 Percent

The word “percent” comes from the Latin “per centum”; “centum” is Latin for 100, so “percent” means “per hundred” [\[6\]](#ref-wikipedia_percentage).

> **NOTE:**
>
> **Definition 11 (Percent)** For a real number $x$, “$x$ **percent**”, written $x\%$, means $x / 100$ [\[6\]](#ref-wikipedia_percentage):
>
> $$x\% \stackrel{\text{def}}{=}\frac{x}{100}$$
>
> The percent sign “%” is a shorthand for “$/100$”.

> **NOTE:**
>
> **Example 9 (Ten percent is one tenth)** Contrary to what you may have learned previously, the equality $10\% = 0.1$ is true and correct, just as $10 \text{kg} = 10,000 \text{g}$ is true and correct:
>
> $$\begin{aligned}
> 10\% &= \frac{10}{100}
> && \text{(definition of percent)}
> \\ &= 0.1
> && \text{(divide)}
> \end{aligned}$$

You are welcome to switch between decimal and percent notation freely; just make sure you execute it correctly.

# 5 Minimum, maximum, argmin and argmax

> **NOTE:**
>
> **Exercise 1 (Smallest value, and where it occurs)**  
>
> 1.  Let $f(x) = (x - 2)^2 + 1$ for every $x \in \mathbb{R}$. What is the smallest value $f$ takes, and at which $x$ does it take that value?
> 2.  Now let $g(x) = (x - 2)^2 + 1$ only for $x \in \mathopen{}\left\{0, 1, 3, 4\right\}\mathclose{}$. What is the smallest value $g$ takes, and at which $x$ does it take that value?

> **NOTE:**
>
> *Solution 1*.
>
> 1.  The square of a real number is never negative, so $(x - 2)^2 \ge 0$ for every $x$, and therefore $f(x) \ge 0 + 1 = 1$. The square is $0$ only when $x - 2 = 0$, that is, when $x = 2$, and there $f(2) = 1$. So the smallest value of $f$ is $1$, and $x = 2$ is the only input where $f$ takes it.
>
> 2.  Evaluate $g$ at each of its four inputs:
>
>     | $x$    | $0$ | $1$ | $3$ | $4$ |
>     |--------|-----|-----|-----|-----|
>     | $g(x)$ | $5$ | $2$ | $2$ | $5$ |
>
>     The smallest value of $g$ is $2$, and $g$ takes it at two inputs, $x = 1$ and $x = 3$. The answer to “where?” is the set $\mathopen{}\left\{1, 3\right\}\mathclose{}$, not a single number.

> **NOTE:**
>
> **Definition 12 (Minimum)** Let $A \subseteq \mathbb{R}$. A number $m$ is the **minimum** of $A$ [\[7\]](#ref-wikipedia_maxima_and_minima), written $\min A$, if $m \in A$ and $m \le a$ for all $a \in A$.

> **NOTE:**
>
> *Remark 3* (Not every set has a minimum). The set $\mathopen{}\left\{3, 1, 4\right\}\mathclose{}$ has minimum $1$, and the [interval](https://morrison-lab.github.io/mcs/sets.html#def-interval) $[0, 1]$ has minimum $0$. The interval $(0, 1]$ has no minimum: every element $a$ of it has a smaller element, $a/2$, also in it.

> **NOTE:**
>
> **Definition 13 (Maximum)** Let $A \subseteq \mathbb{R}$. A number $M$ is the **maximum** of $A$ [\[7\]](#ref-wikipedia_maxima_and_minima), written $\max A$, if $M \in A$ and $a \le M$ for all $a \in A$.

> **NOTE:**
>
> **Example 10 (A maximum, and a set without one)**  
>
> - $\max \mathopen{}\left\{-2, 5, 0\right\}\mathclose{} = 5$: $5$ is in the set, and $-2 \le 5$, $5 \le 5$, $0 \le 5$.
> - The interval $[0, 1)$ has no maximum. For any $a \in [0, 1)$, the number $\tfrac{a + 1}{2}$ is also in $[0, 1)$, and it is larger than $a$, since $\tfrac{a + 1}{2} > a$ exactly when $a < 1$. So no element of $[0, 1)$ is at least as large as every element.

> **NOTE:**
>
> **Definition 14 (Argmin)** Let $f : A \to \mathbb{R}$ be a [function](https://morrison-lab.github.io/mcs/functions.html#def-function). The **argmin** of $f$ over $A$ [\[8\]](#ref-wikipedia_arg_max) is the set of inputs where $f$ takes its smallest value:
>
> $$\arg \min_{x \in A} f(x) \stackrel{\text{def}}{=}\mathopen{}\left\{x \in A : \forall a \in A,\ f(x) \le f(a)\right\}\mathclose{}$$
>
> When this set has exactly one element $\hat{x}$, we write $\hat{x} = \arg \min_{x \in A} f(x)$.

> **NOTE:**
>
> *Remark 4* (Smallest value versus where it occurs). The smallest value itself is $\min f(A)$, the minimum ([Definition 12](#def-minimum)) of the [image](https://morrison-lab.github.io/mcs/functions.html#def-image) of $f$, and the argmin is where that value is attained. For example, let $f(x) = x^2$ on $A = \mathopen{}\left\{-1, 0, 2\right\}\mathclose{}$. The image is $f(A) = \mathopen{}\left\{1, 0, 4\right\}\mathclose{}$, so the smallest value is $\min f(A) = 0$, and $\arg \min_{x \in A} f(x) = \mathopen{}\left\{0\right\}\mathclose{}$.
>
> The argmin is empty when $f$ has no smallest value, for example $f(x) = x$ on $(0, 1]$.

> **NOTE:**
>
> **Definition 15 (Argmax)** Let $f : A \to \mathbb{R}$ be a [function](https://morrison-lab.github.io/mcs/functions.html#def-function). The **argmax** of $f$ over $A$ [\[8\]](#ref-wikipedia_arg_max) is the set of inputs where $f$ takes its largest value:
>
> $$\arg \max_{x \in A} f(x) \stackrel{\text{def}}{=}\mathopen{}\left\{x \in A : \forall a \in A,\ f(a) \le f(x)\right\}\mathclose{}$$
>
> When this set has exactly one element $\hat{x}$, we write $\hat{x} = \arg \max_{x \in A} f(x)$.

> **NOTE:**
>
> **Example 11 (An argmax with two points, and an empty one)**  
>
> - Let $g(x) = x^2$ on $A = \mathopen{}\left\{-2, 0, 1, 2\right\}\mathclose{}$. The values are $g(-2) = 4$, $g(0) = 0$, $g(1) = 1$ and $g(2) = 4$, so the largest value is $4$ and $\arg \max_{x \in A} g(x) = \mathopen{}\left\{-2, 2\right\}\mathclose{}$. This argmax has two elements, so it is not written as a single $\hat{x}$.
> - Let $f(x) = x$ on $[0, 1)$. As in [Example 10](#exm-maximum), for every input $x$ the input $\tfrac{x + 1}{2}$ has a larger value, so no input attains a largest value, and $\arg \max_{x \in [0, 1)} f(x)$ is the [empty set](https://morrison-lab.github.io/mcs/sets.html#def-empty-set).

> **NOTE:**
>
> **Exercise 2 (The argmax of a quadratic)** Let $g(x) = x(4 - x)$ for $x \in [0, 4]$. Find the [argmax](#def-argmax) of $g$ over $[0, 4]$.

> **NOTE:**
>
> *Solution 2*. Completing the [square](#def-square) gives
>
> $$\begin{aligned}
> g(x) &= 4x - x^2 \\
> &= 4 - (x - 2)^2.
> \end{aligned}$$
>
> The square $(x - 2)^2$ is never negative and is $0$ only at $x = 2$, so $g(x) \le 4 = g(2)$ for every $x \in [0, 4]$, with equality only at $x = 2$. So $\arg \max_{x \in [0, 4]} g(x) = \mathopen{}\left\{2\right\}\mathclose{}$.

> **NOTE:**
>
> **Exercise 3 (The argmax of a scaled quadratic)** Let $f(x) = 5\,x(4 - x)$ for $x \in [0, 4]$. Find the [argmax](#def-argmax) of $f$ over $[0, 4]$.

> **NOTE:**
>
> *Solution 3*. Completing the [square](#def-square) gives
>
> $$\begin{aligned}
> f(x) &= 5\,(4x - x^2) \\
> &= 20 - 5\,(x - 2)^2.
> \end{aligned}$$
>
> The square $(x - 2)^2$ is never negative and is $0$ only at $x = 2$, so $f(x) \le 20 = f(2)$ for every $x \in [0, 4]$, with equality only at $x = 2$. So $\arg \max_{x \in [0, 4]} f(x) = \mathopen{}\left\{2\right\}\mathclose{}$.

> **NOTE:**
>
> **Theorem 9 (A positive multiple has the same argmax)** Let $g : A \to \mathbb{R}$ be a [function](https://morrison-lab.github.io/mcs/functions.html#def-function) and let $c > 0$. Then
>
> $$\arg \max_{x \in A} c\,g(x) = \arg \max_{x \in A} g(x).$$

> **NOTE:**
>
> *Proof*. Let $x^* \in A$. By [Definition 15](#def-argmax), $x^*$ is in the [argmax](#def-argmax) of $c\,g$ [if and only if](https://morrison-lab.github.io/mcs/proof-writing.html#def-iff) $c\,g(a) \le c\,g(x^*)$ for every $a \in A$.
>
> Suppose $g(a) \le g(x^*)$. If $g(a) = g(x^*)$, then $c\,g(a) = c\,g(x^*)$. If $g(a) < g(x^*)$, then $c\,g(a) < c\,g(x^*)$ by [Theorem 7](#thm-mult-ineq). Either way, $c\,g(a) \le c\,g(x^*)$.
>
> Conversely, suppose $c\,g(a) \le c\,g(x^*)$. Since $1/c > 0$ and $(1/c)\,(c\,g) = g$, the same reasoning applied to the [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $c\,g$ and the multiple $1/c$ gives $g(a) \le g(x^*)$.
>
> So $c\,g(a) \le c\,g(x^*)$ for every $a \in A$ if and only if $g(a) \le g(x^*)$ for every $a \in A$. Hence $x^*$ is in the argmax of $c\,g$ exactly when it is in the argmax of $g$.

> **NOTE:**
>
> **Example 12 (A quadratic and its positive multiple)** With $g(x) = x(4 - x)$ of [Exercise 2](#exr-argmax-quadratic) and $f = 5\,g$ of [Exercise 3](#exr-argmax-scaled-quadratic), [Theorem 9](#thm-argmax-positive-multiple) (with $c = 5$) gives $\arg \max_{x \in [0, 4]} f(x) = \arg \max_{x \in [0, 4]} g(x) = \mathopen{}\left\{2\right\}\mathclose{}$, the same [argmax](#def-argmax) as the exercises found. The largest [values](https://morrison-lab.github.io/mcs/functions.html#def-value) differ, $f(2) = 20$ and $g(2) = 4$, so only the argmax is unchanged by the multiple.

> **NOTE:**
>
> **Definition 16 (Positive part of a function)** Let $S$ be a [set](https://morrison-lab.github.io/mcs/sets.html#def-set), and let $f : S \to \mathbb{R}$ be a [function](https://morrison-lab.github.io/mcs/functions.html#def-function). The **positive part** of $f$ is the non-negative function
>
> $$f^{+}(s) \stackrel{\text{def}}{=}\max\mathopen{}\left\{f(s), 0\right\}\mathclose{}.$$

> **NOTE:**
>
> **Example 13 (The positive part of the identity function)** For $f(x) = x$ on $\mathbb{R}$, the [positive part](#def-positive-negative-parts) is $f^{+}(x) = \max\mathopen{}\left\{x, 0\right\}\mathclose{}$. At $x = 3$, $f^{+}(3) = \max\mathopen{}\left\{3, 0\right\}\mathclose{} = 3$, and at $x = -2$, $f^{+}(-2) = \max\mathopen{}\left\{-2, 0\right\}\mathclose{} = 0$.

> **NOTE:**
>
> **Definition 17 (Negative part of a function)** For $f$ as in [Definition 16](#def-positive-negative-parts), the **negative part** of $f$ is the non-negative [function](https://morrison-lab.github.io/mcs/functions.html#def-function)
>
> $$f^{-}(s) \stackrel{\text{def}}{=}\max\mathopen{}\left\{-f(s), 0\right\}\mathclose{}.$$

> **NOTE:**
>
> **Example 14 (The negative part of the identity function)** For $f(x) = x$ on $\mathbb{R}$, the [negative part](#def-negative-part) is $f^{-}(x) = \max\mathopen{}\left\{-x, 0\right\}\mathclose{}$. At $x = 3$, $f^{-}(3) = \max\mathopen{}\left\{-3, 0\right\}\mathclose{} = 0$, and at $x = -2$, $f^{-}(-2) = \max\mathopen{}\left\{2, 0\right\}\mathclose{} = 2$.

# 6 Global and local minimizers

> **NOTE:**
>
> **Exercise 4 (A dip that is not the bottom)** Let $f(x) = x^3 - 3x$ for $x \in \mathbb{R}$.
>
> 1.  Factor $f(x) - f(1)$ completely.
> 2.  Use part 1 to compare $f(x)$ with $f(1)$ for every $x$ in the interval $(0, 2)$. Is $f(x)$ larger than, smaller than, or equal to $f(1)$, and for which $x$?
> 3.  Compute $f(-3)$. Is $f(1)$ the smallest value $f$ takes on all of $\mathbb{R}$?
> 4.  Does $f$ take a smallest value anywhere on $\mathbb{R}$?

> **NOTE:**
>
> *Solution 4*.
>
> 1.  Since
>
>     $$\begin{aligned}
>     f(1) &= 1 - 3 \\
>     &= -2,
>     \end{aligned}$$
>
>     so
>
>     $$\begin{aligned}
>     f(x) - f(1) &= x^3 - 3x + 2
>     \\ &= (x - 1)(x^2 + x - 2)
>     \\ &= (x - 1)(x - 1)(x + 2)
>     \\ &= (x - 1)^2 (x + 2).
>     \end{aligned}$$
>
> 2.  For $x \in (0, 2)$, $(x - 1)^2 \ge 0$ and $x + 2 > 0$, so their product is at least $0$. By part 1, $f(x) - f(1) \ge 0$, that is, $f(x) \ge f(1)$. So $f(x)$ is never smaller than $f(1)$ on $(0, 2)$. It equals $f(1)$ only when $(x - 1)^2 = 0$, that is, only at $x = 1$, and it is larger than $f(1)$ at every other $x \in (0, 2)$.
>
> 3.  $$\begin{aligned}
>     f(-3) &= -27 + 9 \\
>     &= -18.
>     \end{aligned}$$
>
>     Since $-18 < -2 = f(1)$, $f(1)$ is not the smallest value of $f$ on $\mathbb{R}$.
>
> 4.  No. For each $n \ge 2$,
>
>     $$\begin{aligned}
>     f(-n) &= -n^3 + 3n \\
>     &= -n(n^2 - 3) \\
>     &\le -n,
>     \end{aligned}$$
>
>     so no value of $f$ is smaller than all the others: for any $x$, picking $n \ge 2$ with $-n < f(x)$ gives $f(-n) < f(x)$.

> **NOTE:**
>
> **Definition 18 (Global minimizer)** Let $A \subseteq \mathbb{R}^p$ and let $f : A \to \mathbb{R}$ be a [function](https://morrison-lab.github.io/mcs/functions.html#def-function). A point $x^* \in A$ is a **global minimizer** of $f$ over $A$ if $f(x^*) \le f(x)$ for all $x \in A$.

> **NOTE:**
>
> *Remark 5* (Global minimizers form the argmin). The global minimizers of $f$ are exactly the elements of $\arg \min_{x \in A} f(x)$ ([Definition 14](#def-argmin)). A function can have more than one global minimizer. For example, $f(x) = (x^2 - 1)^2$ on $\mathbb{R}$ satisfies $f(x) \ge 0$ for every $x$, and $f(x) = 0$ exactly when $x = -1$ or $x = 1$, so its global minimizers are $-1$ and $1$, and $\arg \min_{x \in \mathbb{R}} f(x) = \mathopen{}\left\{-1, 1\right\}\mathclose{}$.

> **NOTE:**
>
> **Definition 19 (Local minimizer)** Let $A \subseteq \mathbb{R}^p$ and let $f : A \to \mathbb{R}$ be a [function](https://morrison-lab.github.io/mcs/functions.html#def-function). A point $x^* \in A$ is a **local minimizer** of $f$ if there is a number $\delta> 0$ such that $f(x^*) \le f(x)$ for all $x \in A$ with $\mathopen{}\left\lVert x - x^*\right\rVert\mathclose{} < \delta$, where $\mathopen{}\left\lVert\cdot\right\rVert\mathclose{}$ is the [Euclidean norm](linear-algebra-vectors.llms.md#def-euclidean-norm).

> **NOTE:**
>
> *Remark 6* (Local and global minimizers). For $p = 1$, $\mathopen{}\left\lVert x - x^*\right\rVert\mathclose{} = \mathopen{}\left|x - x^*\right|\mathclose{}$. For example, with $x^* = 1$ and $\delta= 1$, the condition $\mathopen{}\left|x - 1\right|\mathclose{} < 1$ means $0 < x < 2$.
>
> Every [global minimizer](#def-global-minimizer) is a [local minimizer](#def-local-minimizer): take any $\delta> 0$. For example, $x^* = 0$ is a global minimizer of $f(x) = x^2$ on $\mathbb{R}$, so it is also a local minimizer.
>
> The [converse](https://morrison-lab.github.io/mcs/proof-writing.html#def-converse) fails. In [Exercise 4](#exr-local-vs-global-min), $x^* = 1$ is a local minimizer of $f(x) = x^3 - 3x$ (take $\delta= 1$), but not a global one.

> **NOTE:**
>
> **Example 15 (A point that is not a local minimizer)** For $f(x) = x^3 - 3x$, the point $x = -1$ is not a local minimizer. For any $t$,
>
> $$\begin{aligned}
> f(-1 + t)
> &= (-1 + t)^3 - 3(-1 + t)
> && \text{(substitute)}
> \\
> &= (-1 + 3t - 3t^2 + t^3) - 3(-1 + t)
> && \text{(expand the cube)}
> \\
> &= -1 + 3t - 3t^2 + t^3 + 3 - 3t
> && \text{(multiply } -3 \text{ into the parentheses)}
> \\
> &= 2 - 3t^2 + t^3
> && \text{(} 3t - 3t = 0 \text{ and } -1 + 3 = 2 \text{)}
> \\
> &= 2 + t^2 (t - 3)
> && \text{(factor out } t^2 \text{)}
> \\
> &= f(-1) + t^2 (t - 3),
> && \text{(} f(-1) = (-1)^3 - 3(-1) \text{, which equals } 2 \text{)}
> \end{aligned}$$
>
> and $t^2 (t - 3) < 0$ whenever $t \ne 0$ and $t < 3$. So whatever $\delta> 0$ is, the point $x = -1 + t$ with $t = \min\mathopen{}\left\{\delta/ 2, 1\right\}\mathclose{}$ satisfies $\mathopen{}\left|x - (-1)\right|\mathclose{} < \delta$ and $f(x) < f(-1)$. For example,
>
> $$\begin{aligned}
> f(-0.9) &= -0.729 + 2.7 \\
> &= 1.971 \\
> &< 2.
> \end{aligned}$$

# Definitions on this page

- [Definition 1 (Identity)](#def-identity)
- [Definition 2 (Strict inequalities)](#def-strict-inequality)
- [Definition 3 (Non-strict inequalities)](#def-non-strict-inequality)
- [Definition 4 (Power)](#def-power)
- [Definition 5 (Base of a power)](#def-power-base)
- [Definition 6 (Exponent of a power)](#def-power-exponent)
- [Definition 7 (Square)](#def-square)
- [Definition 8 (Powers with exponent zero or a negative integer)](#def-power-integer)
- [Definition 9 (Square root)](#def-square-root)
- [Definition 10 (Absolute value of a real number)](#def-absolute-value)
- [Definition 11 (Percent)](#def-percent)
- [Definition 12 (Minimum)](#def-minimum)
- [Definition 13 (Maximum)](#def-maximum)
- [Definition 14 (Argmin)](#def-argmin)
- [Definition 15 (Argmax)](#def-argmax)
- [Definition 16 (Positive part of a function)](#def-positive-negative-parts)
- [Definition 17 (Negative part of a function)](#def-negative-part)
- [Definition 18 (Global minimizer)](#def-global-minimizer)
- [Definition 19 (Local minimizer)](#def-local-minimizer)

Back to top

## References

\[1\]

Wikipedia contributors, “Identity (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Identity_(mathematics)>

\[2\]

Wikipedia contributors, “Inequality (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Inequality_(mathematics)>

\[3\]

Wikipedia contributors, “Exponentiation — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Exponentiation>

\[4\]

Wikipedia contributors, “Square root — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Square_root>

\[5\]

Wikipedia contributors, “Absolute value — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Absolute_value>

\[6\]

Wikipedia contributors, “Percentage — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Percentage>

\[7\]

Wikipedia contributors, “Maxima and minima — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Maxima_and_minima>

\[8\]

Wikipedia contributors, “Arg max — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Arg_max>
