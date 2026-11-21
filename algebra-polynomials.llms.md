# Polynomials, Affine Functions and Series

Code

Published

Last modified: 2026-11-20 16:35:55 (PST)

# 1 Polynomials

> **NOTE:**
>
> **Exercise 1 (Reading a polynomial)** Let $f(x) = 3x^4 - x + 7$.
>
> 1.  Write $f$ in the form $a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0$, listing every coefficient $a_4, a_3, a_2, a_1, a_0$.
> 2.  What is the degree of $f$, and what is its leading coefficient?

> **NOTE:**
>
> *Solution 1*.
>
> 1.  $f(x) = 3x^4 + 0 \cdot x^3 + 0 \cdot x^2 + (-1) \cdot x + 7$, so $a_4 = 3$, $a_3 = 0$, $a_2 = 0$, $a_1 = -1$, and $a_0 = 7$. Powers of $x$ that do not appear have coefficient $0$.
>
> 2.  The highest power with a nonzero coefficient is $x^4$, so the degree is $4$ and the leading coefficient is $a_4 = 3$.

> **NOTE:**
>
> **Definition 1 (Constant function)** A [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f : A \to B$ is **constant** if there is some $c \in B$ with $f(x) = c$ for all $x \in A$.

> **NOTE:**
>
> **Example 1 (Constant and non-constant functions)**  
>
> - $f(x) = 7$ on $\mathbb{R}$ is constant, with $c = 7$.
> - $f(x) = x^2$ on $\mathbb{R}$ is not constant: $f(0) = 0$ but $f(1) = 1$.

> **NOTE:**
>
> **Definition 2 (Polynomial)** A **polynomial** (in one variable $x$) [\[1\]](#ref-wikipedia_polynomial) is a [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f : \mathbb{R}\to \mathbb{R}$ that can be written as $$f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0$$ for some integer $n \ge 0$ and constants $a_0, a_1, \ldots, a_n \in \mathbb{R}$ with $a_n \ne 0$. The [terms](algebra-sums.llms.md#def-term) of $f$ are $a_n x^n, \ldots, a_1 x, a_0$.

> **NOTE:**
>
> *Remark 1* (Constant and zero polynomials). A [constant function](#def-constant-function) $f(x) = 7$ is a polynomial with $n = 0$ and $a_0 = 7$. The requirement $a_n \ne 0$ means this definition covers nonzero polynomials only: the zero function $f(x) = 0$ is excluded here, because it has no nonzero coefficient to serve as $a_n$.

> **NOTE:**
>
> **Definition 3 (Coefficients of a polynomial)** The constants $a_0, a_1, \ldots, a_n$ of a polynomial $f$ ([Definition 2](#def-polynomial)) are the **coefficients** of $f$, with $a_k$ the coefficient of $x^k$.

> **NOTE:**
>
> **Definition 4 (Degree of a polynomial)** Let $f(x) = a_n x^n + \cdots + a_1 x + a_0$ be a [polynomial](#def-polynomial) with $a_n \ne 0$. The integer $n$ is the **degree** of $f$.

> **NOTE:**
>
> **Example 2 (Degrees of some polynomials)**  
>
> - $f(x) = 4x$ has degree $1$.
> - $f(x) = 5 - 2x^2 + x^3$ has degree $3$: the degree is the highest power with a nonzero coefficient, not the power in the first term written.
> - A [constant](#def-constant-function) polynomial $f(x) = 7$ has degree $0$.

> **NOTE:**
>
> **Definition 5 (Leading coefficient)** Let $f(x) = a_n x^n + \cdots + a_1 x + a_0$ be a [polynomial](#def-polynomial) of [degree](#def-polynomial-degree) $n$. The constant $a_n$ is the **leading coefficient** of $f$.

> **NOTE:**
>
> **Example 3 (Leading coefficients)**  
>
> - $f(x) = 5 - 2x^2 + x^3$ has degree $3$, so its leading coefficient is $a_3 = 1$, not the $5$ written first.
> - $f(x) = 3 - x^2$ has leading coefficient $a_2 = -1$.

> **NOTE:**
>
> **Definition 6 (Quadratic polynomial)** A [polynomial](#def-polynomial) of [degree](#def-polynomial-degree) $2$, $f(x) = a_2 x^2 + a_1 x + a_0$ with $a_2 \ne 0$, is a **quadratic** [\[2\]](#ref-wikipedia_quadratic_function) polynomial.

> **NOTE:**
>
> **Definition 7 (Cubic polynomial)** A [polynomial](#def-polynomial) of [degree](#def-polynomial-degree) $3$ is a **cubic** polynomial.

> **NOTE:**
>
> **Example 4 (Quadratic and cubic polynomials)**  
>
> - $$\begin{aligned}
>   f(x) &= (x - 2)^2 \\
>   &= x^2 - 4x + 4
>   \end{aligned}$$
>
>   is quadratic, by [Remark 1 in Sums, Products and Quotients](algebra-sums.llms.md#rem-square-of-a-difference) with $a = x$ and $b = 2$.
>
> - $f(x) = x^3 - 3x$ is cubic.
>
> - $f(x) = 4x + 1$ is neither: it has degree $1$.

> **NOTE:**
>
> **Definition 8 (Parabola)** A **parabola** [\[3\]](#ref-wikipedia_parabola) is the [graph](https://morrison-lab.github.io/mcs/functions.html#def-graph) of a quadratic polynomial ([Definition 6](#def-quadratic-polynomial)).

> **NOTE:**
>
> **Example 5 (The parabola** $y = x^2$) The graph of $f(x) = x^2$ is a parabola. It contains the points $(-1, 1)$, $(0, 0)$ and $(2, 4)$, and its lowest point is $(0, 0)$, since $x^2 \ge 0$ for every $x$.

> **NOTE:**
>
> **Definition 9 (Monomial (power product))** A **monomial**, also called a **power product** [\[4\]](#ref-wikipedia_monomial), in the variables $x_1, \ldots, x_p$ is an [expression](https://morrison-lab.github.io/mcs/expressions-algorithms.html#def-expression)
>
> $$x_1^{a_1} x_2^{a_2} \cdots x_p^{a_p}
> \tag{1}$$
>
> that multiplies [powers](algebra-basics.llms.md#def-power) of those variables, whose [exponents](algebra-basics.llms.md#def-power-exponent) $a_1, \ldots, a_p$ are nonnegative [integers](https://morrison-lab.github.io/mcs/number-systems.html#def-integers).
>
> Each $a_j = 0$ contributes the factor $x_j^0 = 1$ ([zero exponent](algebra-basics.llms.md#def-power-integer)).

> **NOTE:**
>
> **Example 6 (Which expressions are monomials)** Take the four variables $x_1, x_2, x_3, x_4$.
>
> - $x_1^3 x_4$ is a [monomial](#def-monomial), with [exponents](algebra-basics.llms.md#def-power-exponent) $(a_1, a_2, a_3, a_4) = (3, 0, 0, 1)$.
> - The [constant](#def-constant-function) $1$ is the monomial whose exponents are all $0$.
> - $x_1 / x_2 = x_1 x_2^{-1}$ is not a monomial, because the [exponent](algebra-basics.llms.md#def-power-exponent) of $x_2$ is negative.
> - $\sqrt{x_3} = x_3^{1/2}$ is not a monomial, because its exponent is not an [integer](https://morrison-lab.github.io/mcs/number-systems.html#def-integers).
> - $x_1 + x_4$ is not a monomial: it adds two monomials rather than multiplying [powers](algebra-basics.llms.md#def-power).

> **NOTE:**
>
> **Definition 10 (Degree of a monomial)** The **degree** of the [monomial](#def-monomial) $x_1^{a_1} x_2^{a_2} \cdots x_p^{a_p}$ is the [sum](algebra-sums.llms.md#def-summation) of its [exponents](algebra-basics.llms.md#def-power-exponent), $a_1 + a_2 + \cdots + a_p$ [\[4\]](#ref-wikipedia_monomial).

> **NOTE:**
>
> **Example 7 (Degrees of some monomials)**  
>
> - $x_1^3 x_4$ has [degree](#def-monomial-degree) $3 + 1 = 4$.
> - $x_2^2 x_3^5$ has degree $2 + 5 = 7$.
> - The [constant](#def-constant-function) [monomial](#def-monomial) $1$ has degree $0$.
> - With one variable, the monomial $x^n$ has degree $n$, which is the [degree](#def-polynomial-degree) of the one-term [polynomial](#def-polynomial) $f(x) = x^n$.

# 2 Affine and linear functions of one variable

> **NOTE:**
>
> **Definition 11 (Affine function of one variable)** A [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f: \mathbb{R}\to \mathbb{R}$ is **affine** [\[5\]](#ref-wikipedia_affine_transformation) if there are numbers $m$ and $b$ such that
>
> $$f(x) = m x + b \quad \text{for all } x \in \mathbb{R}$$

> **NOTE:**
>
> **Definition 12 (Slope)** In the formula $f(x) = m x + b$ for an affine function $f$ ([Definition 11](#def-affine-function)), $m$ is called the **slope** of $f$ [\[6\]](#ref-wikipedia_slope).

> **NOTE:**
>
> **Definition 13 (Intercept, y-intercept)** The **intercept** (or **y-intercept**) of a [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f$ whose [domain](https://morrison-lab.github.io/mcs/functions.html#def-domain) contains $0$ is $f(0)$, the height at which the [graph](https://morrison-lab.github.io/mcs/functions.html#def-graph) of $f$ crosses the vertical axis.

> **NOTE:**
>
> **Definition 14 (Intercept term)** When a [function](https://morrison-lab.github.io/mcs/functions.html#def-function) is written as [terms](algebra-sums.llms.md#def-term) added together, its **intercept term** is the [term](algebra-sums.llms.md#def-term) with no factor of the [input](https://morrison-lab.github.io/mcs/functions.html#def-argument). When every other term has a factor of the input, the intercept ([Definition 13](#def-intercept)) of the function is this term.

> **NOTE:**
>
> **Definition 15 (x-intercept)** An **x-intercept** of a [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f$ is an [input](https://morrison-lab.github.io/mcs/functions.html#def-argument) $x$ with $f(x) = 0$, a point where the [graph](https://morrison-lab.github.io/mcs/functions.html#def-graph) of $f$ crosses the horizontal axis. A function can have no x-intercept, one, or many.

> **NOTE:**
>
> *Remark 2* (Intercepts of an affine function). For an affine function $f(x) = m x + b$ ([Definition 11](#def-affine-function)):
>
> - the [intercept term](#def-intercept-term) is $b$,
> - the [intercept](#def-intercept) is $f(0) = b$,
> - if $m \ne 0$, the only [x-intercept](#def-x-intercept) is $-b / m$.

> **NOTE:**
>
> **Definition 16 (Linear function of one variable)** A function $f: \mathbb{R}\to \mathbb{R}$ is **linear** [\[7\]](#ref-wikipedia_linear_function) if it is affine ([Definition 11](#def-affine-function)) with intercept $0$; that is, if there is a number $m$ such that
>
> $$f(x) = m x \quad \text{for all } x \in \mathbb{R}$$

> **NOTE:**
>
> **Theorem 1 (Intercept and slope of an affine function)** Let $f(x) = m x + b$ be an affine function ([Definition 11](#def-affine-function)).
>
> 1.  The intercept is the value at zero: $f(0) = b$.
> 2.  The slope is the change in $f$ per unit change in $x$: for any $x_1 \neq x_2$, $$\frac{f(x_2) - f(x_1)}{x_2 - x_1} = m$$
> 3.  So $f$ determines its slope and intercept: if also $f(x) = m' x + b'$ for all $x$, then $m' = m$ and $b' = b$.

> **NOTE:**
>
> *Proof*. **Part 1.**
>
> $$\begin{aligned}
> f(0)
> &= m \cdot 0 + b
> && \text{(}\href{#def-affine-function}{\text{Definition~11}}\text{)}
> \\&= 0 + b
> && \text{(any number times } 0 \text{ is } 0 \text{)}
> \\&= b + 0
> && \text{(}\href{algebra-sums.qmd#thm-sum-symmetric}{\text{Theorem~2 in Sums, Products and Quotients}}\text{)}
> \\&= b
> && \text{(}\href{algebra-sums.qmd#thm-add-ident}{\text{Theorem~1 in Sums, Products and Quotients}}\text{)}
> \end{aligned}$$
>
> **Part 2.** First the numerator:
>
> $$\begin{aligned}
> f(x_2) - f(x_1)
> &= (m x_2 + b) - (m x_1 + b)
> && \text{(}\href{#def-affine-function}{\text{Definition~11}}\text{)}
> \\&= m x_2 + b - m x_1 - b
> && \text{(subtracting a sum subtracts each term)}
> \\&= m x_2 - m x_1 + b - b
> && \text{(}\href{algebra-sums.qmd#thm-sum-symmetric}{\text{Theorem~2 in Sums, Products and Quotients}}\text{, swapping } b \text{ and } {-m x_1} \text{)}
> \\&= (m x_2 - m x_1) + (b - b)
> && \text{(}\href{algebra-sums.qmd#thm-sum-assoc}{\text{Theorem~3 in Sums, Products and Quotients}}\text{)}
> \\&= (m x_2 - m x_1) + 0
> && (b - b = 0)
> \\&= m x_2 - m x_1
> && \text{(}\href{algebra-sums.qmd#thm-add-ident}{\text{Theorem~1 in Sums, Products and Quotients}}\text{)}
> \\&= m x_2 + m (-x_1)
> && (-(m x_1) = m (-x_1) \text{, by }\href{algebra-basics.qmd#thm-negative-one}{\text{Theorem~8 in Equalities, Inequalities and Minimizers}}\text{ and }\href{algebra-sums.qmd#thm-prod-assoc}{\text{Theorem~6 in Sums, Products and Quotients}}\text{)}
> \\&= m (x_2 + (-x_1))
> && \text{(}\href{algebra-sums.qmd#thm-mult-distr}{\text{Theorem~8 in Sums, Products and Quotients}}\text{, read right to left)}
> \\&= m (x_2 - x_1)
> && \text{(adding a negative is subtracting)}
> \end{aligned}$$
>
> Then, writing $d = x_2 - x_1$, which is not $0$ because $x_1 \neq x_2$,
>
> $$\begin{aligned}
> \frac{f(x_2) - f(x_1)}{x_2 - x_1}
> &= \frac{m d}{d}
> && \text{(the numerator above)}
> \\&= (m d) \cdot\frac{1}{d}
> && \text{(}\href{algebra-sums.qmd#thm-prod-div}{\text{Theorem~7 in Sums, Products and Quotients}}\text{)}
> \\&= m \cdot\mathopen{}\left(d \cdot\frac{1}{d}\right)\mathclose{}
> && \text{(}\href{algebra-sums.qmd#thm-prod-assoc}{\text{Theorem~6 in Sums, Products and Quotients}}\text{)}
> \\&= m \cdot\frac{d}{d}
> && \text{(}\href{algebra-sums.qmd#thm-prod-div}{\text{Theorem~7 in Sums, Products and Quotients}}\text{)}
> \\&= m \cdot 1
> && \text{(a nonzero number divided by itself is } 1 \text{)}
> \\&= m
> && \text{(}\href{algebra-sums.qmd#thm-mult-one}{\text{Theorem~4 in Sums, Products and Quotients}}\text{)}
> \end{aligned}$$
>
> **Part 3.** Part 1, applied to each formula, gives
>
> $$\begin{aligned}
> b &= f(0) \\
> &= b'.
> \end{aligned}$$
>
> Part 2 with $x_1 = 0$ and $x_2 = 1$, applied to each formula, gives
>
> $$\begin{aligned}
> m &= f(1) - f(0) \\
> &= m'.
> \end{aligned}$$

> **NOTE:**
>
> **Example 8 (An affine function, and a linear one)** $f(x) = 2x + 3$ is affine with slope $2$ and intercept $3$. By [Theorem 1](#thm-affine-function-props), $f(0) = 3$, and each unit step in $x$ raises $f$ by $2$: for example, $f(1) = 5$ and $f(2) = 7$. Its intercept is not $0$, so it is not linear.
>
> $g(x) = -\tfrac{1}{2} x$ is affine with intercept $0$, so it is linear: $g(0) = 0$, and each unit step in $x$ lowers $g$ by $\tfrac{1}{2}$.

> **NOTE:**
>
> *Remark 3* (Elementary algebra calls $m x + b$ “linear”). Elementary algebra usually calls $f(x) = m x + b$ a *linear function*, because its graph is a straight line. This site calls that an affine function and keeps “linear” for the case $b = 0$, because that is the sense used in linear algebra, where a [linear map](linear-algebra-linear-maps.llms.md#def-linear-map) must send $0$ to $0$ ([theorem](linear-algebra-linear-maps.llms.md#thm-linear-map-zero)).

# 3 Limits of sequences

> **NOTE:**
>
> **Definition 17 (Limit of a sequence)** A [real number](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers) $L$ is the **limit** of a [sequence](https://morrison-lab.github.io/mcs/functions.html#def-sequence) $(a_n)$ of [real numbers](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers) [\[8\]](#ref-wikipedia_limit_of_a_sequence), written $\lim_{n \to \infty} a_n = L$ or $a_n \to L$, if for every $\varepsilon> 0$ there is a natural number $N$ such that
>
> $$\mathopen{}\left|a_n - L\right|\mathclose{} < \varepsilon\quad \text{for every } n \ge N.$$

> **NOTE:**
>
> **Example 9 (The limit of a sequence)** $a_n = \frac{1}{n}$ has limit $0$. Given $\varepsilon> 0$, take $N$ to be any natural number larger than $\frac{1}{\varepsilon}$. For every $n \ge N$, $\mathopen{}\left|\frac{1}{n} - 0\right|\mathclose{} = \frac{1}{n} \le \frac{1}{N} < \varepsilon$. For example, with $\varepsilon= 0.01$, take $N = 101$: every $n \ge 101$ has $\frac{1}{n} \le \frac{1}{101} < 0.01$.

> **NOTE:**
>
> **Definition 18 (Convergent sequence (converges))** A sequence $(a_n)$ of real numbers **converges** to a real number $L$ if $L$ is its limit ([Definition 17](#def-sequence-limit)). A sequence that converges to some real number is **convergent**.

> **NOTE:**
>
> **Example 10 (A convergent sequence)** $a_n = \frac{1}{n}$ converges to $0$, because $0$ is its limit ([Example 9](#exm-sequence-limit)), so $a_n = \frac{1}{n}$ is convergent.

> **NOTE:**
>
> **Definition 19 (Divergent sequence (diverges))** A sequence that does not converge ([Definition 18](#def-convergent-sequence)) to any real number **diverges**, and a sequence that diverges is **divergent**.

> **NOTE:**
>
> **Example 11 (A divergent sequence)** $c_n = n$ diverges. For any real number $L$ and $\varepsilon= 1$, every $n > L + 1$ has $\mathopen{}\left|n - L\right|\mathclose{} > 1$, so no $N$ works. For example, with $L = 5$, every $n \ge 7$ has $\mathopen{}\left|n - 5\right|\mathclose{} \ge 2$. It diverges to $\infty$: for every real number $M$, every $n \ge N$ has $c_n = n > M$ when $N$ is a natural number larger than $M$.

> **NOTE:**
>
> **Definition 20 (Divergence of a sequence to infinity)** A [sequence](https://morrison-lab.github.io/mcs/functions.html#def-sequence) $(a_n)$ of [real numbers](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers) **diverges to** $\infty$, written $\lim_{n \to \infty} a_n = \infty$, if for every real number $M$ there is a natural number $N$ such that $a_n > M$ for every $n \ge N$.

# 4 Series

> **NOTE:**
>
> **Definition 21 (Non-decreasing sequence)** A [sequence](https://morrison-lab.github.io/mcs/functions.html#def-sequence) $a_1, a_2, \ldots$ of [real numbers](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers) or of [extended non-negative reals](https://morrison-lab.github.io/mcs/sets.html#def-extended-nonneg-reals) is **non-decreasing** if each term is at least as large as the one before it:
>
> $$a_n \le a_{n+1} \quad \text{for every } n \in \mathbb{N}$$

> **NOTE:**
>
> **Example 12 (Non-decreasing and not)**  
>
> - $1, 2, 2, 3, 3, 3, \ldots$ is non-decreasing: a term may equal the one before it.
>
> - $1, 2, \infty, \infty, \ldots$ is non-decreasing, because $\infty$ is greater than every real number.
>
> - $1, \frac{1}{2}, \frac{1}{3}, \ldots$ is not non-decreasing, because
>
>   $$\begin{aligned}
>   a_2 &= \frac{1}{2} \\
>   &< 1 \\
>   &= a_1.
>   \end{aligned}$$

> **NOTE:**
>
> **Definition 22**  
>
> #### Partial sum
>
> Let $a_1, a_2, \ldots$ be a [sequence](https://morrison-lab.github.io/mcs/functions.html#def-sequence) of [real numbers](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers) or of [extended non-negative reals](https://morrison-lab.github.io/mcs/sets.html#def-extended-nonneg-reals). For each $n \in \mathbb{N}$, its $n$th **partial sum** [\[9\]](#ref-wikipedia_series_mathematics) is the [sum](algebra-sums.llms.md#def-summation) of its first $n$ terms:
>
> $$s_n \stackrel{\text{def}}{=}\sum_{i=1}^na_i = a_1 + \cdots + a_n$$

> **NOTE:**
>
> **Example 13 (Partial sums of halves)** For $a_i = 1/2^i$, the sequence $\frac{1}{2}, \frac{1}{4}, \frac{1}{8}, \ldots$, the first three partial sums are $s_1 = \frac{1}{2}$,
>
> $$\begin{aligned}
> s_2 &= \frac{1}{2} + \frac{1}{4} \\
> &= \frac{3}{4},
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> s_3 &= \frac{3}{4} + \frac{1}{8} \\
> &= \frac{7}{8}.
> \end{aligned}$$
>
> In general, $s_n = 1 - 1/2^n$.

> **NOTE:**
>
> **Definition 23 (Infinite sum, series)** Let $a_1, a_2, \ldots$ be a sequence in $[0, \infty]$, with partial sums $s_n$ ([Definition 22](#def-partial-sum)). The **infinite sum** (also called a **series**) [\[9\]](#ref-wikipedia_series_mathematics) $\sum_{i=1}^{\infty} a_i$ is the limit of the partial sums:
>
> $$\sum_{i=1}^{\infty} a_i \stackrel{\text{def}}{=}\lim_{n \to \infty} s_n$$
>
> Here the limit is a real number when the partial sums are real numbers that [converge](#def-convergent-sequence) to it, and it is $\infty$ when the partial sums [diverge to](#def-diverges-to-infinity) $\infty$ or some partial sum is $\infty$. Sums with other index ranges, such as $\sum_{k=0}^{\infty} a_k$, are defined the same way.

> **NOTE:**
>
> **Example 14 (A finite and an infinite sum)**  
>
> - For $a_i = 1/2^i$, the partial sums $s_n = 1 - 1/2^n$ ([Example 13](#exm-partial-sum)) converge to $1$, because $1/2^n \to 0$. So $\sum_{i=1}^{\infty} 1/2^i = 1$.
> - For $a_i = 1$, the partial sums are $s_n = n$, which diverge to $\infty$. So $\sum_{i=1}^{\infty} 1 = \infty$.

> **NOTE:**
>
> **Lemma 1 (Sums of non-negative terms)** Let $a_1, a_2, \ldots$ be values in $[0, \infty]$, with partial sums $s_n$ ([Definition 22](#def-partial-sum)), where $x + \infty = \infty$ for every $x$ in $[0, \infty]$. Then the partial sums are [non-decreasing](#def-non-decreasing), $s_1 \le s_2 \le \cdots$, so their [limit](#def-sequence-limit), the infinite sum $\sum_{i=1}^{\infty} a_i$ ([Definition 23](#def-infinite-sum)), always exists, and it is either a finite number or $\infty$.

> **NOTE:**
>
> *Proof*. For each $n$:
>
> $$\begin{aligned}
> s_{n+1}
> &= s_n + a_{n+1}
> && \text{(definition of } s_{n+1} \text{)} \\
> &\ge s_n
> && \text{(} a_{n+1} \ge 0 \text{)}
> \end{aligned}$$
>
> If some partial sum $s_N$ is $\infty$, then $s_n = \infty$ for every $n \ge N$, so the limit is $\infty$. Otherwise, the [partial sums](#def-partial-sum) form a [non-decreasing sequence](#def-non-decreasing) of [real numbers](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers). If that sequence is [bounded above](algebra-convexity.llms.md#def-bounded-above), it [converges](#def-convergent-sequence) to a finite number [\[10\]](#ref-wikipedia_monotone_convergence_theorem). If it is not bounded above, then for every number $M$ some $s_N$ exceeds $M$, and so does every later $s_n \ge s_N$; the limit is $\infty$.

# Definitions on this page

- [Definition 1 (Constant function)](#def-constant-function)
- [Definition 2 (Polynomial)](#def-polynomial)
- [Definition 3 (Coefficients of a polynomial)](#def-polynomial-coefficient)
- [Definition 4 (Degree of a polynomial)](#def-polynomial-degree)
- [Definition 5 (Leading coefficient)](#def-polynomial-leading-coefficient)
- [Definition 6 (Quadratic polynomial)](#def-quadratic-polynomial)
- [Definition 7 (Cubic polynomial)](#def-cubic-polynomial)
- [Definition 8 (Parabola)](#def-parabola)
- [Definition 9 (Monomial (power product))](#def-monomial)
- [Definition 10 (Degree of a monomial)](#def-monomial-degree)
- [Definition 11 (Affine function of one variable)](#def-affine-function)
- [Definition 12 (Slope)](#def-slope)
- [Definition 13 (Intercept, y-intercept)](#def-intercept)
- [Definition 14 (Intercept term)](#def-intercept-term)
- [Definition 15 (x-intercept)](#def-x-intercept)
- [Definition 16 (Linear function of one variable)](#def-linear-function)
- [Definition 17 (Limit of a sequence)](#def-sequence-limit)
- [Definition 18 (Convergent sequence (converges))](#def-convergent-sequence)
- [Definition 19 (Divergent sequence (diverges))](#def-divergent-sequence)
- [Definition 20 (Divergence of a sequence to infinity)](#def-diverges-to-infinity)
- [Definition 21 (Non-decreasing sequence)](#def-non-decreasing)
- [Definition 22](#def-partial-sum)
- [Definition 23 (Infinite sum, series)](#def-infinite-sum)

Back to top

## References

\[1\]

Wikipedia contributors, “Polynomial — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Polynomial>

\[2\]

Wikipedia contributors, “Quadratic function — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Quadratic_function>

\[3\]

Wikipedia contributors, “Parabola — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Parabola>

\[4\]

Wikipedia contributors, “Monomial — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Monomial>

\[5\]

Wikipedia contributors, “Affine transformation — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Affine_transformation>

\[6\]

Wikipedia contributors, “Slope — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Slope>

\[7\]

Wikipedia contributors, “Linear function — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Linear_function>

\[8\]

Wikipedia contributors, “Limit of a sequence — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Limit_of_a_sequence>

\[9\]

Wikipedia contributors, “Series (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Series_(mathematics)>

\[10\]

Wikipedia contributors, “Monotone convergence theorem — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Monotone_convergence_theorem>
