# Linear and Affine Maps

Code

Published

Last modified: 2026-11-20 12:51:03 (PST)

# 1 Linear and affine maps

> **NOTE:**
>
> **Definition 1 (Additive function)** A [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f: \mathbb{R}^p \to \mathbb{R}^m$ is **additive** [\[1\]](#ref-wikipedia_linear_map) if it preserves [vector addition](linear-algebra-vectors.llms.md#def-vector-addition): [for all](https://morrison-lab.github.io/mcs/proof-writing.html#def-universal-quantifier) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^p$,
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) + f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})$$

> **NOTE:**
>
> **Example 1 (An additive function, and one that is not)**  
>
> - $f(x) = 2x$ on $\mathbb{R}$ is [additive](#def-additive-function). For $x, y \in \mathbb{R}$:
>
>   $$\begin{aligned}
>   f(x + y) &= 2(x + y) \\
>   &= 2x + 2y \\
>   &= f(x) + f(y)
>   \end{aligned}$$
>
> - $g(x) = x + 1$ on $\mathbb{R}$ is not additive, since $g(0 + 0) = 1$ but $g(0) + g(0) = 2$.

> **NOTE:**
>
> **Exercise 1 (Testing whether** $x_1 x_2$ is additive) An [additive function](#def-additive-function) can be evaluated at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ by evaluating it at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ separately, so additivity is worth checking before splitting a computation that way. Let $f: \mathbb{R}^2 \to \mathbb{R}$ be $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1 x_2$.
>
> Is $f$ [additive](#def-additive-function)?
>
> > **TIP:**
> >
> > Try $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 0)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (0, 1)$ in [Definition 1](#def-additive-function).

> **NOTE:**
>
> *Solution 1*. No. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 0)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (0, 1)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (1, 1)$, so
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) = 1 \cdot 1 = 1,
> \qquad
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) + f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) = 1 \cdot 0 + 0 \cdot 1 = 0.$$
>
> These differ, so $f$ does not satisfy [Definition 1](#def-additive-function) for this pair of inputs, and $f$ is not [additive](#def-additive-function).

> **NOTE:**
>
> **Definition 2 (Homogeneous function)** A [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f: \mathbb{R}^p \to \mathbb{R}^m$ is **homogeneous** [\[1\]](#ref-wikipedia_linear_map) if it preserves [scalar multiplication](linear-algebra-matrices.llms.md#def-scalar-mult): [for all](https://morrison-lab.github.io/mcs/proof-writing.html#def-universal-quantifier) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$ and $c \in \mathbb{R}$,
>
> $$f(c\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = c f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$$

> **NOTE:**
>
> **Example 2 (Homogeneous functions, and one that is not)**  
>
> - $f(x) = 2x$ on $\mathbb{R}$ is [homogeneous](#def-homogeneous-function). For $x, c \in \mathbb{R}$:
>
>   $$\begin{aligned}
>   f(c x) &= 2 c x \\
>   &= c (2x) \\
>   &= c f(x)
>   \end{aligned}$$
>
> - $h(x) = x^2$ on $\mathbb{R}$ is not homogeneous, since $h(2 \cdot 1) = 4$ but $2\,h(1) = 2$.
>
> - $k(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathopen{}\left(x_1^3 + x_2^3\right)\mathclose{}^{1/3}$ on $\mathbb{R}^2$ is homogeneous but not [additive](#def-additive-function). For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^2$ and $c \in \mathbb{R}$:
>
>   $$\begin{aligned}
>   k(c \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) &= \mathopen{}\left(c^3 x_1^3 + c^3 x_2^3\right)\mathclose{}^{1/3} \\
>   &= \mathopen{}\left(c^3 \mathopen{}\left(x_1^3 + x_2^3\right)\mathclose{}\right)\mathclose{}^{1/3} \\
>   &= c \mathopen{}\left(x_1^3 + x_2^3\right)\mathclose{}^{1/3} \\
>   &= c\, k(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
>   \end{aligned}$$
>
>   but $k((1, 0) + (0, 1)) = k((1, 1)) = 2^{1/3}$, while $k((1, 0)) + k((0, 1)) = 2$.

> **NOTE:**
>
> **Exercise 2 (Testing whether the absolute value is homogeneous)** A [homogeneous function](#def-homogeneous-function) turns a rescaled input into the same rescaling of its output, including a rescaling by a negative number. Let $f: \mathbb{R}\to \mathbb{R}$ be the [absolute value](algebra-basics.llms.md#def-absolute-value), $f(x) = \mathopen{}\left|x\right|\mathclose{}$.
>
> Is $f$ [homogeneous](#def-homogeneous-function)?
>
> > **TIP:**
> >
> > Try a negative $c$ in [Definition 2](#def-homogeneous-function).

> **NOTE:**
>
> *Solution 2*. No. Take $c = -1$ and $x = 1$. Then
>
> $$f(c x) = \mathopen{}\left|-1\right|\mathclose{} = 1,
> \qquad
> c f(x) = -1 \cdot\mathopen{}\left|1\right|\mathclose{} = -1.$$
>
> These differ, so $f$ is not [homogeneous](#def-homogeneous-function). It does satisfy $f(c x) = c f(x)$ for every $c \ge 0$, since then $\mathopen{}\left|c x\right|\mathclose{} = c \mathopen{}\left|x\right|\mathclose{}$.

> **NOTE:**
>
> **Definition 3 (Linear map, linear transformation, linear function)** A [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f: \mathbb{R}^p \to \mathbb{R}^m$ is a **linear map** [\[1\]](#ref-wikipedia_linear_map) (also called a **linear transformation** or **linear function**) if it is both [additive](#def-additive-function) and [homogeneous](#def-homogeneous-function).

> **NOTE:**
>
> **Example 3 (A linear map, and two functions that are not)**  
>
> - $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (2 x_1,\ x_1 + x_2)$ on $\mathbb{R}^2$ is linear. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^2$ and $c \in \mathbb{R}$:
>
>   $$\begin{aligned}
>   f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) &= (2 (x_1 + y_1),\ (x_1 + y_1) + (x_2 + y_2)) \\
>   &= f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) + f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})
>   \end{aligned}$$
>
>   and
>
>   $$\begin{aligned}
>   f(c \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) &= (2 c x_1,\ c x_1 + c x_2) \\
>   &= c f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}).
>   \end{aligned}$$
>
> - $g(x) = x + 1$ on $\mathbb{R}$ is not linear: additivity fails, since $g(0 + 0) = 1$ but $g(0) + g(0) = 2$.
>
> - $h(x) = x^2$ on $\mathbb{R}$ is not linear: $h(2 \cdot 1) = 4$ but $2\,h(1) = 2$, so $h(c x) \ne c\,h(x)$ for $c = 2$, $x = 1$.

> **NOTE:**
>
> **Exercise 3 (Testing whether a difference of scaled measurements is a linear map)** A score that scales two measurements and takes their difference, such as $3 x_1 - x_2$, is a common building block of a model. Let $f: \mathbb{R}^2 \to \mathbb{R}$ be $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 3 x_1 - x_2$.
>
> Is $f$ a [linear map](#def-linear-map)?
>
> > **TIP:**
> >
> > Check the two conditions in [Definition 3](#def-linear-map) one at a time, for any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^2$ and $c \in \mathbb{R}$.

> **NOTE:**
>
> *Solution 3*. Yes. For any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^2$, $f$ is [additive](#def-additive-function):
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})
> &= 3 (x_1 + y_1) - (x_2 + y_2)
> && \text{(}\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~9 in Vectors}}\text{)}
> \\&= (3 x_1 - x_2) + (3 y_1 - y_2)
> && \text{(rearranging the terms)}
> \\&= f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) + f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}).
> \end{aligned}$$
>
> For any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^2$ and $c \in \mathbb{R}$, $f$ is [homogeneous](#def-homogeneous-function):
>
> $$\begin{aligned}
> f(c \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> &= 3 c x_1 - c x_2
> && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{)}
> \\&= c (3 x_1 - x_2)
> && \text{(factoring out } c \text{)}
> \\&= c f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}).
> \end{aligned}$$
>
> Since $f$ is both, it is a [linear map](#def-linear-map).

> **NOTE:**
>
> **Definition 4 (Linear operator)** A **linear operator** on $\mathbb{R}^p$ is a linear map ([Definition 3](#def-linear-map)) from $\mathbb{R}^p$ to itself, that is, a linear map $f : \mathbb{R}^p \to \mathbb{R}^p$ whose input and output have the same length. Some authors use “operator” more loosely, for any linear map.

> **NOTE:**
>
> **Example 4 (A linear operator, and a linear map that is not one)** The map $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (2 x_1,\ x_1 + x_2)$ from [Example 3](#exm-linear-map) sends $\mathbb{R}^2$ to $\mathbb{R}^2$, so it is a linear operator on $\mathbb{R}^2$. The linear map $g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1 + x_2$ sends $\mathbb{R}^2$ to $\mathbb{R}$, so it is linear but not an operator: its outputs have length $1$, not $2$.

> **NOTE:**
>
> **Exercise 4 (Testing whether a projection is a linear operator)** Dropping the last coordinate of a point in $\mathbb{R}^3$ projects it onto a plane, as a shadow does. Let $f: \mathbb{R}^3 \to \mathbb{R}^2$ be $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (x_1, x_2)$. This $f$ is a [linear map](#def-linear-map).
>
> Is $f$ a [linear operator](#def-linear-operator) on $\mathbb{R}^3$?
>
> > **TIP:**
> >
> > Write $f$ as $f: \mathbb{R}^p \to \mathbb{R}^m$, and compare $p$ with $m$ as in [Definition 4](#def-linear-operator).

> **NOTE:**
>
> *Solution 4*. No. A [linear operator](#def-linear-operator) on $\mathbb{R}^3$ sends $\mathbb{R}^3$ to $\mathbb{R}^3$. The outputs of $f$ lie in $\mathbb{R}^2$, not $\mathbb{R}^3$, so $f$ is a [linear map](#def-linear-map) but not a linear operator.

> **NOTE:**
>
> **Theorem 1 (A linear map sends zero to zero)** If $f: \mathbb{R}^p \to \mathbb{R}^m$ is a linear map ([Definition 3](#def-linear-map)), then $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> *Proof*. On the left, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ is the zero vector of length $p$; on the right, it is the zero vector of length $m$.
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})
> &= f(0 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})
> && \text{(every entry of } 0 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{ is } 0 \cdot 0 = 0 \text{; }\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{)}
> \\&= 0 \cdot f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})
> && \text{(homogeneity, with } c = 0 \text{ and } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{)}
> \\&= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}
> && \text{(every entry of } 0 \cdot f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) \text{ is } 0 \text{; }\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 5 (Ruling out linearity at zero)** In [Example 3](#exm-linear-map), $g(x) = x + 1$ has $g(0) = 1 \neq 0$, so by [Theorem 1](#thm-linear-map-zero) it is not linear, without checking additivity or homogeneity.
>
> Sending $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ is necessary but not sufficient: $h(x) = x^2$ in the same example has $h(0) = 0$ and is still not linear.

> **NOTE:**
>
> **Exercise 5 (Ruling out a linear map from its value at zero)** [Theorem 1](#thm-linear-map-zero) gives a quick test: a [function](https://morrison-lab.github.io/mcs/functions.html#def-function) that does not send $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ cannot be a [linear map](#def-linear-map). Let $g: \mathbb{R}^2 \to \mathbb{R}^2$ be
>
> $$g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (x_1 + x_2,\ x_2 - 1).$$
>
> Is $g$ a [linear map](#def-linear-map)?
>
> > **TIP:**
> >
> > Compute $g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})$.

> **NOTE:**
>
> *Solution 5*. No.
>
> $$g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = (0 + 0,\ 0 - 1) = (0, -1) \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}.$$
>
> Every [linear map](#def-linear-map) sends $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ by [Theorem 1](#thm-linear-map-zero), so $g$ is not one.

> **NOTE:**
>
> **Theorem 2 (Multiplying by a matrix is a linear map)** For any $m \times p$ matrix $\mathbf{A}$, the function $f: \mathbb{R}^p \to \mathbb{R}^m$ defined by $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a linear map ([Definition 3](#def-linear-map)).

> **NOTE:**
>
> *Proof*. Both conditions are checked one entry at a time. For each $i \in \{1, \ldots, m\}$, additivity:
>
> $$\begin{aligned}
> \mathopen{}\left(\mathbf{A}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})\right)\mathclose{}_i
> &= \sum_{j=1}^pa_{ij} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})_j
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\&= \sum_{j=1}^pa_{ij} (x_j + y_j)
> && \text{(}\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~9 in Vectors}}\text{)}
> \\&= \sum_{j=1}^p(a_{ij} x_j + a_{ij} y_j)
> && \text{(multiplication distributes over addition)}
> \\&= \sum_{j=1}^pa_{ij} x_j + \sum_{j=1}^pa_{ij} y_j
> && \text{(a sum of sums splits)}
> \\&= (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_i + (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})_i
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\&= (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})_i
> && \text{(}\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~9 in Vectors}}\text{)}
> \end{aligned}$$
>
> and homogeneity:
>
> $$\begin{aligned}
> \mathopen{}\left(\mathbf{A}(c\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{}_i
> &= \sum_{j=1}^pa_{ij} (c\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_j
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\&= \sum_{j=1}^pa_{ij}\, c\, x_j
> && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{)}
> \\&= \sum_{j=1}^pc\, a_{ij} x_j
> && \text{(products are symmetric)}
> \\&= c \sum_{j=1}^pa_{ij} x_j
> && \text{(a constant factor comes out of a sum)}
> \\&= c\, (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_i
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\&= (c\, \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_i
> && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{)}
> \end{aligned}$$
>
> The four algebra rules cited here are on the [algebra page](algebra.llms.md): [distributivity](algebra-sums.llms.md#thm-mult-distr), [a sum of sums](algebra-sums.llms.md#thm-sum-of-sums), [symmetry of products](algebra-sums.llms.md#thm-prod-symmetric), and [a constant factor](algebra-sums.llms.md#thm-sum-constant-factor).

> **NOTE:**
>
> **Exercise 6 (Recognizing a linear map as multiplication by a matrix)** [Theorem 2](#thm-matrix-map-linear) saves checking additivity and homogeneity by hand: a [function](https://morrison-lab.github.io/mcs/functions.html#def-function) that multiplies its input by a fixed [matrix](linear-algebra-matrices.llms.md#def-matrix) is a [linear map](#def-linear-map). Let $f: \mathbb{R}^2 \to \mathbb{R}^2$ be
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (x_1 + 2 x_2,\ 3 x_1 - x_2).$$
>
> Is $f$ a [linear map](#def-linear-map)?
>
> > **TIP:**
> >
> > Find a $2 \times 2$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, using [Definition 8 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matvec-mult).

> **NOTE:**
>
> *Solution 6*. Yes. Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & -1 \end{bmatrix}.$$
>
> By [Definition 8 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matvec-mult),
>
> $$\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \begin{bmatrix} 1 \cdot x_1 + 2 \cdot x_2 \\ 3 \cdot x_1 + (-1) \cdot x_2 \end{bmatrix}
> = \begin{bmatrix} x_1 + 2 x_2 \\ 3 x_1 - x_2 \end{bmatrix}
> = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}).$$
>
> So $f$ multiplies its input by $\mathbf{A}$, and $f$ is a [linear map](#def-linear-map) by [Theorem 2](#thm-matrix-map-linear).

> **NOTE:**
>
> **Theorem 3 (A linear map preserves linear combinations)** If $f: \mathbb{R}^p \to \mathbb{R}^m$ is a linear map ([Definition 3](#def-linear-map)), then for any vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k \in \mathbb{R}^p$ and any coefficients $c_1, \ldots, c_k \in \mathbb{R}$:
>
> $$f\mathopen{}\left(\sum_{j=1}^{k} c_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_j\right)\mathclose{} = \sum_{j=1}^{k} c_j f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_j)$$

> **NOTE:**
>
> *Proof*. By [induction](https://morrison-lab.github.io/mcs/proof-writing.html#def-proof-by-induction) on $k$. For $k = 1$, the claim $f(c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1) = c_1 f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1)$ is homogeneity.
>
> Suppose the claim holds for $k$ vectors. Then for $k + 1$:
>
> $$\begin{aligned}
> f\mathopen{}\left(\sum_{j=1}^{k+1} c_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_j\right)\mathclose{}
> &= f\mathopen{}\left(\sum_{j=1}^{k} c_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_j + c_{k+1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_{k+1}\right)\mathclose{}
> && \text{(split off the last term)}
> \\&= f\mathopen{}\left(\sum_{j=1}^{k} c_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_j\right)\mathclose{} + f(c_{k+1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_{k+1})
> && \text{(additivity)}
> \\&= \sum_{j=1}^{k} c_j f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_j) + f(c_{k+1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_{k+1})
> && \text{(induction hypothesis)}
> \\&= \sum_{j=1}^{k} c_j f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_j) + c_{k+1} f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_{k+1})
> && \text{(homogeneity)}
> \\&= \sum_{j=1}^{k+1} c_j f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_j)
> && \text{(join the last term back on)}
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 7 (Evaluating a linear map on a linear combination)** A [linear map](#def-linear-map) is determined on a [linear combination](linear-algebra-vectors.llms.md#def-linear-combination) of vectors by its values on those vectors alone. Let $f: \mathbb{R}^2 \to \mathbb{R}^2$ be a linear map with
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1) = \begin{bmatrix} 1 \\ 2 \end{bmatrix},
> \qquad
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2) = \begin{bmatrix} 0 \\ -1 \end{bmatrix}.$$
>
> Find $f(3 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 - 2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2)$.
>
> > **TIP:**
> >
> > Apply [Theorem 3](#thm-linear-map-lincom) with $c_1 = 3$ and $c_2 = -2$.

> **NOTE:**
>
> *Solution 7*. $$\begin{aligned}
> f(3 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 - 2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2)
> &= 3 f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1) - 2 f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2)
> && \text{(}\href{#thm-linear-map-lincom}{\text{Theorem~3}}\text{)}
> \\&= 3 \begin{bmatrix} 1 \\ 2 \end{bmatrix} - 2 \begin{bmatrix} 0 \\ -1 \end{bmatrix}
> && \text{(the given values)}
> \\&= \begin{bmatrix} 3 \\ 6 \end{bmatrix} - \begin{bmatrix} 0 \\ -2 \end{bmatrix}
> && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{)}
> \\&= \begin{bmatrix} 3 \\ 8 \end{bmatrix}
> && \text{(subtracting entry by entry)}
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 4 (Every linear map is multiplication by a matrix)** If $f: \mathbb{R}^p \to \mathbb{R}^m$ is a linear map ([Definition 3](#def-linear-map)), then there is exactly one $m \times p$ matrix $\mathbf{A}$ such that
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\quad \text{for all } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$$
>
> Column $j$ of $\mathbf{A}$ is $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$, the value of $f$ at the $j$th indicator vector ([Definition 21 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)); that is, $a_{ij} = \mathopen{}\left(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)\right)\mathclose{}_i$.

> **NOTE:**
>
> *Proof*. **Existence.** Let $\mathbf{A}$ be the $m \times p$ matrix with $a_{ij} = \mathopen{}\left(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)\right)\mathclose{}_i$. For any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$,
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> &= f\mathopen{}\left(\sum_{j=1}^px_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j\right)\mathclose{}
> && \text{(}\href{linear-algebra-vectors.qmd#thm-standard-basis-expansion}{\text{Theorem~4 in Vectors}}\text{)}
> \\&= \sum_{j=1}^px_j f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)
> && \text{(}\href{#thm-linear-map-lincom}{\text{Theorem~3}}\text{)}
> \end{aligned}$$
>
> and entry $i$ of that sum is
>
> $$\begin{aligned}
> \mathopen{}\left(\sum_{j=1}^px_j f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)\right)\mathclose{}_i
> &= \sum_{j=1}^px_j \mathopen{}\left(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)\right)\mathclose{}_i
> && \text{(}\href{linear-algebra-vectors.qmd#def-linear-combination}{\text{Definition~11 in Vectors}}\text{, entry by entry)}
> \\&= \sum_{j=1}^px_j a_{ij}
> && \text{(definition of } \mathbf{A} \text{)}
> \\&= \sum_{j=1}^pa_{ij} x_j
> && \text{(products are symmetric)}
> \\&= (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_i
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \end{aligned}$$
>
> **Uniqueness.** Suppose $\mathbf{B}$ is any $m \times p$ matrix with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for all $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. Taking $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j$, for each $i$:
>
> $$\begin{aligned}
> \mathopen{}\left(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)\right)\mathclose{}_i
> &= (\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)_i
> && \text{(assumption on } \mathbf{B} \text{)}
> \\&= \sum_{k=1}^{p} b_{ik} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)_k
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\&= b_{ij} \cdot 1 + \sum_{k \neq j} b_{ik} \cdot 0
> && \text{(}\href{linear-algebra-vectors.qmd#def-indicator-vector}{\text{Definition~21 in Vectors}}\text{, splitting off the } k = j \text{ term)}
> \\&= b_{ij} + 0
> && \text{(times } 1 \text{ changes nothing; times } 0 \text{ gives } 0 \text{)}
> \\&= b_{ij}
> && \text{(adding } 0 \text{ changes nothing)}
> \end{aligned}$$
>
> So
>
> $$\begin{aligned}
> b_{ij} &= \mathopen{}\left(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)\right)\mathclose{}_i \\
> &= a_{ij}
> \end{aligned}$$
>
> for every $i$ and $j$, and $\mathbf{B} = \mathbf{A}$.

> **NOTE:**
>
> **Definition 5 (Matrix of a linear map)** The **matrix of** a linear map $f: \mathbb{R}^p \to \mathbb{R}^m$ is the unique $m \times p$ matrix $\mathbf{A}$ with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for all $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Theorem 4](#thm-linear-map-matrix)). Its column $j$ is $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$.

> **NOTE:**
>
> **Example 6 (Finding the matrix of a linear map)** For $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (2 x_1,\ x_1 + x_2)$ from [Example 3](#exm-linear-map), the values of $f$ at the indicator vectors are
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1) = f\mathopen{}\left(\begin{bmatrix}1 \\ 0\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}2 \cdot 1 \\ 1 + 0\end{bmatrix} = \begin{bmatrix}2 \\ 1\end{bmatrix},
> \qquad
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2) = f\mathopen{}\left(\begin{bmatrix}0 \\ 1\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}2 \cdot 0 \\ 0 + 1\end{bmatrix} = \begin{bmatrix}0 \\ 1\end{bmatrix}$$
>
> and these are the columns of the matrix of $f$ ([Definition 5](#def-matrix-of-linear-map)): $\mathbf{A} = \begin{bmatrix}2 & 0 \\ 1 & 1\end{bmatrix}$.

> **NOTE:**
>
> **Exercise 8 (Evaluating a linear map from its values on the indicator vectors)** By [Theorem 4](#thm-linear-map-matrix), the values of a [linear map](#def-linear-map) at the [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) determine it everywhere. Let $f: \mathbb{R}^2 \to \mathbb{R}^2$ be a linear map with
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1) = \begin{bmatrix} 1 \\ 3 \end{bmatrix},
> \qquad
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2) = \begin{bmatrix} -2 \\ 0 \end{bmatrix}.$$
>
> Find $f\mathopen{}\left(\begin{bmatrix} 4 \\ 1 \end{bmatrix}\right)\mathclose{}$.
>
> > **TIP:**
> >
> > Build the [matrix of](#def-matrix-of-linear-map) $f$ from the two given values, then multiply.

> **NOTE:**
>
> *Solution 8*. By [Theorem 4](#thm-linear-map-matrix), $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, where [column](linear-algebra-matrices.llms.md#def-matrix-column) $j$ of $\mathbf{A}$ is $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$:
>
> $$\mathbf{A} = \begin{bmatrix} 1 & -2 \\ 3 & 0 \end{bmatrix}.$$
>
> So
>
> $$f\mathopen{}\left(\begin{bmatrix} 4 \\ 1 \end{bmatrix}\right)\mathclose{}
> = \begin{bmatrix} 1 \cdot 4 + (-2) \cdot 1 \\ 3 \cdot 4 + 0 \cdot 1 \end{bmatrix}
> = \begin{bmatrix} 2 \\ 12 \end{bmatrix}.$$

> **NOTE:**
>
> **Exercise 9 (Finding the matrix of a linear map into** $\mathbb{R}^3$) The [matrix of a linear map](#def-matrix-of-linear-map) turns the map into a table of numbers that software can store and multiply. Let $f: \mathbb{R}^2 \to \mathbb{R}^3$ be the [linear map](#def-linear-map)
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (x_2,\ x_1,\ x_1 - x_2).$$
>
> Find the [matrix of](#def-matrix-of-linear-map) $f$.
>
> > **TIP:**
> >
> > [Column](linear-algebra-matrices.llms.md#def-matrix-column) $j$ of the matrix is $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$.

> **NOTE:**
>
> *Solution 9*. The values of $f$ at the [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) are
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1) = f\mathopen{}\left(\begin{bmatrix} 1 \\ 0 \end{bmatrix}\right)\mathclose{} = \begin{bmatrix} 0 \\ 1 \\ 1 \end{bmatrix},
> \qquad
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2) = f\mathopen{}\left(\begin{bmatrix} 0 \\ 1 \end{bmatrix}\right)\mathclose{} = \begin{bmatrix} 1 \\ 0 \\ -1 \end{bmatrix}.$$
>
> The [matrix of](#def-matrix-of-linear-map) $f$ has these values as its [columns](linear-algebra-matrices.llms.md#def-matrix-column):
>
> $$\mathbf{A} = \begin{bmatrix} 0 & 1 \\ 1 & 0 \\ 1 & -1 \end{bmatrix}.$$
>
> It is $3 \times 2$, since $f$ sends $\mathbb{R}^2$ to $\mathbb{R}^3$.

> **NOTE:**
>
> **Corollary 1 (Linear functions from vectors to numbers)** A function $f: \mathbb{R}^p \to \mathbb{R}$ is linear ([Definition 3](#def-linear-map)) if and only if there is a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathbb{R}^p$ such that
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \quad \text{for all } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$$
>
> and then $w_j = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$ for each $j$.

> **NOTE:**
>
> *Proof*. **If** $f$ is linear. [Theorem 4](#thm-linear-map-matrix) with $m = 1$ gives a $1 \times p$ matrix $\mathbf{A}$ with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $a_{1j} = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ be the vector with $w_j = a_{1j}$, so that $\mathbf{A} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top}$. Then
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> &= \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(}\href{#thm-linear-map-matrix}{\text{Theorem~4}}\text{)}
> \\&= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && (\mathbf{A} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top})
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> w_j &= a_{1j} \\
> &= f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j).
> \end{aligned}$$
>
> **If** $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. Here $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top}$ is a $1 \times p$ matrix, so $f$ is linear by [Theorem 2](#thm-matrix-map-linear).

> **NOTE:**
>
> **Example 7 (A linear function from** $\mathbb{R}^2$ to $\mathbb{R}$) $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 3 x_1 + 5 x_2$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = {(3, 5)}^{\top}$, so it is linear by [Corollary 1](#cor-linear-scalar). The entries of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ are the values at the indicator vectors:
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1) &= 3 \cdot 1 + 5 \cdot 0 \\
> &= 3
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2) &= 3 \cdot 0 + 5 \cdot 1 \\
> &= 5.
> \end{aligned}$$
>
> $g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 3 x_1 + 5 x_2 + 1$ is not linear, because $g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = 1 \neq 0$ ([Theorem 1](#thm-linear-map-zero)).

> **NOTE:**
>
> **Exercise 10 (Finding the weight vector of a linear score)** A linear score of $p$ measurements is a [dot product](linear-algebra-vectors.llms.md#def-dot-product) of the measurements with a vector of [weights](linear-algebra-vectors.llms.md#def-weight), by [Corollary 1](#cor-linear-scalar). Let $f: \mathbb{R}^3 \to \mathbb{R}$ be a [linear map](#def-linear-map) with
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1) = 2,
> \qquad
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2) = 0,
> \qquad
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3) = -1.$$
>
> Find the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^3$.
>
> > **TIP:**
> >
> > [Corollary 1](#cor-linear-scalar) gives each entry $w_j$ of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$.

> **NOTE:**
>
> *Solution 10*. By [Corollary 1](#cor-linear-scalar), $w_j = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$ for each $j$, so
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \begin{bmatrix} 2 \\ 0 \\ -1 \end{bmatrix}.$$
>
> Then $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 2 x_1 - x_3$ for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^3$.

> **TIP:**
>
> Two chapters of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown show the results above geometrically:
>
> - [Linear transformations and matrices](https://www.youtube.com/watch?v=kYB8IZa5AuE) (Chapter 3) shows why a linear map is fixed by where it sends the indicator vectors, which become the columns of its matrix ([Definition 5](#def-matrix-of-linear-map)).
> - [Dot products and duality](https://www.youtube.com/watch?v=LyGKycYT2v0) (Chapter 9) shows why every linear map from $\mathbb{R}^p$ to $\mathbb{R}$ is a dot product with a fixed vector ([Corollary 1](#cor-linear-scalar)).

> **NOTE:**
>
> **Definition 6 (Translation)** For a fixed vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$, the **translation** [\[2\]](#ref-wikipedia_translation_geometry) by $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is the function $t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}} : \mathbb{R}^m \to \mathbb{R}^m$ defined by
>
> $$t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$$

> **NOTE:**
>
> **Example 8 (Translating two points)** The translation by $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = {(1, -2)}^{\top}$ sends
>
> $$t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}\mathopen{}\left(\begin{bmatrix}0 \\ 0\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}0 + 1 \\ 0 + (-2)\end{bmatrix} = \begin{bmatrix}1 \\ -2\end{bmatrix},
> \qquad
> t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}\mathopen{}\left(\begin{bmatrix}3 \\ 4\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}3 + 1 \\ 4 + (-2)\end{bmatrix} = \begin{bmatrix}4 \\ 2\end{bmatrix}$$
>
> Both points move one unit right and two units down.

> **NOTE:**
>
> *Remark 1* (A translation moves every point by the same vector). A translation by $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ moves every point by the same vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> **Exercise 11 (Finding the translation that moves one point to another)** A [translation](#def-translation) moves every point by the same vector, so where it sends one point fixes the whole translation. A translation $t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}$ of $\mathbb{R}^2$ sends ${(2, 3)}^{\top}$ to ${(5, 1)}^{\top}$.
>
> Find $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.
>
> > **TIP:**
> >
> > Solve ${(2, 3)}^{\top} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = {(5, 1)}^{\top}$ entry by entry.

> **NOTE:**
>
> *Solution 11*. By [Definition 6](#def-translation), $t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}\mathopen{}\left({(2, 3)}^{\top}\right)\mathclose{} = {(2, 3)}^{\top} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$. Matching this vector with ${(5, 1)}^{\top}$ entry by entry gives
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \begin{bmatrix}5 - 2 \\ 1 - 3\end{bmatrix} = \begin{bmatrix}3 \\ -2\end{bmatrix}.$$

> **NOTE:**
>
> **Definition 7**  
>
> #### Affine map, affine transformation, affine function
>
> A [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f: \mathbb{R}^p \to \mathbb{R}^m$ is an **affine map** (also called an **affine transformation** or **affine function**) if it is a matrix product followed by a translation ([Definition 6](#def-translation)) (a [composition](https://morrison-lab.github.io/mcs/functions.html#def-composition), with the matrix product as the [inner function](https://morrison-lab.github.io/mcs/functions.html#def-inner-function)): there are an $m \times p$ matrix $\mathbf{A}$ and a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$ such that
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> &= t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \\
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \quad \text{for all } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 12 (Testing whether a rescale-and-shift is an affine map)** Rescaling a measurement and then shifting it, as when converting units with a different zero point, is the typical [affine map](#def-affine-map). Let $f: \mathbb{R}^2 \to \mathbb{R}^2$ be
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (2 x_1 + 1,\ x_2 - 3).$$
>
> Is $f$ an [affine map](#def-affine-map)?
>
> > **TIP:**
> >
> > Look for a $2 \times 2$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ and a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> *Solution 12*. Yes. Let
>
> $$\mathbf{A} = \begin{bmatrix}2 & 0 \\ 0 & 1\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \begin{bmatrix}1 \\ -3\end{bmatrix}.$$
>
> By [Definition 8 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matvec-mult), $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(2 x_1, x_2)}^{\top}$, so
>
> $$\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \begin{bmatrix}2 x_1 + 1 \\ x_2 - 3\end{bmatrix} = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$$
>
> for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^2$. So $f$ is an [affine map](#def-affine-map).

> **NOTE:**
>
> **Definition 8 (Offset of an affine map, intercept, bias)** In [Definition 7](#def-affine-map), the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is called the **offset** of $f$ (statistics also calls it the **intercept**, and machine learning the **bias**).

> **NOTE:**
>
> *Remark 2* (Real-valued affine maps). For a real-valued function ([Definition 6 in Vectors](linear-algebra-vectors.llms.md#def-real-vector-valued), $m = 1$), $\mathbf{A}$ is a single row, written $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top}$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is a single number $b$, so an affine function is a linear function $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Corollary 1](#cor-linear-scalar)) plus an offset:
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b, \qquad \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathbb{R}^p, \quad b \in \mathbb{R} \tag{1}$$

> **NOTE:**
>
> **Exercise 13 (Reading off the offset of an affine map)** In a fitted model, the [offset](#def-affine-offset) is the part of the output that does not depend on the input. Let $f: \mathbb{R}^2 \to \mathbb{R}^2$ be the [affine map](#def-affine-map)
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (x_1 - x_2 + 4,\ 3 x_2 - 1).$$
>
> Find the [offset of](#def-affine-offset) $f$.
>
> > **TIP:**
> >
> > Write $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$ as $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ as in [Definition 7](#def-affine-map).

> **NOTE:**
>
> *Solution 13*. $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \begin{bmatrix}1 & -1 \\ 0 & 3\end{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \begin{bmatrix}4 \\ -1\end{bmatrix},$$
>
> so the [offset of](#def-affine-offset) $f$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = {(4, -1)}^{\top}$. Each entry of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is the term with no $x_j$ in the matching entry of $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$.

> **NOTE:**
>
> **Definition 9 (Augmented vector)** The **augmented vector** of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$ is the vector ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}} \in \mathbb{R}^{p+1}$ formed by placing a $1$ above the entries of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}}
> &= \begin{bmatrix}1 \\ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\end{bmatrix} \\
> &= {(1, x_1, \ldots, x_p)}^{\top}
> \end{aligned}$$

> **NOTE:**
>
> **Example 9 (An affine function as a dot product with an augmented vector)** For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(2, 5)}^{\top}$, the augmented vector is ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}} = {(1, 2, 5)}^{\top}$. With $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = {(3, -1)}^{\top}$ and $b = 4$, the affine function $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b$ ([Equation 1](#eq-linear-scalar)) equals the dot product of ${(b, w_1, w_2)}^{\top} = {(4, 3, -1)}^{\top}$ with ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}}$:
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b
> &= 3 \cdot 2 + (-1) \cdot 5 + 4 \\
> &= 5, \\
> {(4, 3, -1)}^{\top} \cdot {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}}
> &= 4 \cdot 1 + 3 \cdot 2 + (-1) \cdot 5 \\
> &= 5
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 14 (Absorbing an offset into a dot product with the augmented vector)** The [augmented vector](#def-augmented-vector) lets software treat an [affine](#def-affine-map) score as a [dot product](linear-algebra-vectors.llms.md#def-dot-product), with the [offset](#def-affine-offset) as one more [weight](linear-algebra-vectors.llms.md#def-weight). Let $f: \mathbb{R}^2 \to \mathbb{R}$ be
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 2 x_1 - x_2 + 5.$$
>
> Find the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathbb{R}^3$ with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \cdot {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}}$ for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^2$.
>
> > **TIP:**
> >
> > Follow [Example 9](#exm-augmented-vector). The first entry of ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}}$ is $1$.

> **NOTE:**
>
> *Solution 14*. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = {(5, 2, -1)}^{\top}$. Since ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}} = {(1, x_1, x_2)}^{\top}$ by [Definition 9](#def-augmented-vector),
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \cdot {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}} = 5 \cdot 1 + 2 x_1 + (-1) x_2 = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}).$$
>
> The first entry of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is the [offset](#def-affine-offset) $5$, and the other two are the numbers multiplying $x_1$ and $x_2$.

> **NOTE:**
>
> **Theorem 5 (An affine map sends zero to its offset)** An affine map $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ ([Definition 7](#def-affine-map)) satisfies $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> *Proof*. First, $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$: for each $i$,
>
> $$\begin{aligned}
> (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})_i
> &= \sum_{j=1}^pa_{ij} \cdot 0
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\&= \sum_{j=1}^p0
> && \text{(any number times } 0 \text{ is } 0 \text{)}
> \\&= 0
> && \text{(a sum of zeros is } 0 \text{)}
> \end{aligned}$$
>
> Then
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})
> &= \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && \text{(}\href{#def-affine-map}{\text{Definition~7}}\text{)}
> \\&= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})
> \\&= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && \text{(adding } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{ changes no entry; }\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~9 in Vectors}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 15 (Recovering a column of an affine map’s matrix from two values)** [Theorem 5](#thm-affine-map-zero) says that the value of an [affine map](#def-affine-map) at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ is its [offset](#def-affine-offset), so subtracting that value isolates the [matrix](linear-algebra-matrices.llms.md#def-matrix) part. Let $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ be an affine map from $\mathbb{R}^2$ to $\mathbb{R}^2$ with
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \begin{bmatrix}1 \\ 2\end{bmatrix},
> \qquad
> f\mathopen{}\left(\begin{bmatrix}1 \\ 0\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}4 \\ 2\end{bmatrix}.$$
>
> Find the first [column of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$.
>
> > **TIP:**
> >
> > $\mathbf{A} \begin{bmatrix}1 \\ 0\end{bmatrix}$ is the first [column of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$.

> **NOTE:**
>
> *Solution 15*. By [Theorem 5](#thm-affine-map-zero), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = {(1, 2)}^{\top}$. So
>
> $$\begin{aligned}
> \mathbf{A} \begin{bmatrix}1 \\ 0\end{bmatrix}
> &= f\mathopen{}\left(\begin{bmatrix}1 \\ 0\end{bmatrix}\right)\mathclose{} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && \text{(}\href{#def-affine-map}{\text{Definition~7}}\text{)}
> \\&= \begin{bmatrix}4 - 1 \\ 2 - 2\end{bmatrix}
> && \text{(the given values)}
> \\&= \begin{bmatrix}3 \\ 0\end{bmatrix}.
> \end{aligned}$$
>
> By [Definition 8 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matvec-mult), $\mathbf{A} {(1, 0)}^{\top}$ is the first [column of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$, which is therefore ${(3, 0)}^{\top}$.

> **NOTE:**
>
> **Theorem 6 (An affine map is linear exactly when its offset is zero)** An affine map $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ ([Definition 7](#def-affine-map)) is linear ([Definition 3](#def-linear-map)) if and only if $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> *Proof*. If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, then
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) &= \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\\
> &= \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}},
> \end{aligned}$$
>
> which is linear by [Theorem 2](#thm-matrix-map-linear). Conversely, if $f$ is linear, then $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ by [Theorem 1](#thm-linear-map-zero), and $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ by [Theorem 5](#thm-affine-map-zero), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Example 10 (Two affine maps with the same matrix)** Let $\mathbf{A} = \begin{bmatrix}2 & 0 \\ 1 & 1\end{bmatrix}$, the matrix of the linear map in [Example 3](#exm-linear-map). $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ has offset $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so it is linear. $g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \begin{bmatrix}1 \\ 0\end{bmatrix}$ has offset $\begin{bmatrix}1 \\ 0\end{bmatrix} \neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so by [Theorem 6](#thm-affine-linear-iff) it is not linear: indeed $g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \begin{bmatrix}1 \\ 0\end{bmatrix}$, not $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Exercise 16 (Choosing a constant that makes an affine map linear)** By [Theorem 6](#thm-affine-linear-iff), an [affine map](#def-affine-map) is a [linear map](#def-linear-map) exactly when its [offset](#def-affine-offset) is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. For $c \in \mathbb{R}$, let $f: \mathbb{R}^2 \to \mathbb{R}^2$ be
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (x_1 - x_2 + c - 2,\ 3 x_1 + c^2 - 4).$$
>
> For which values of $c$ is $f$ linear?
>
> > **TIP:**
> >
> > Find the [offset of](#def-affine-offset) $f$ as a function of $c$.

> **NOTE:**
>
> *Solution 16*. Only for $c = 2$. The map is
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \begin{bmatrix}1 & -1 \\ 3 & 0\end{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \begin{bmatrix}c - 2 \\ c^2 - 4\end{bmatrix},$$
>
> so its [offset](#def-affine-offset) is ${(c - 2,\ c^2 - 4)}^{\top}$. By [Theorem 6](#thm-affine-linear-iff), $f$ is linear exactly when both entries are $0$. The first entry is $0$ only for $c = 2$, and then the second entry is $2^2 - 4 = 0$ too.

> **NOTE:**
>
> **Corollary 2 (Every linear map is affine)** Every linear map $f : \mathbb{R}^p \to \mathbb{R}^m$ ([Definition 3](#def-linear-map)) is an affine map ([Definition 7](#def-affine-map)) with offset $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> *Proof*. If $f$ is linear, [Theorem 4](#thm-linear-map-matrix) gives a matrix $\mathbf{A}$ with
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) &= \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\\
> &= \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}},
> \end{aligned}$$
>
> which is [Definition 7](#def-affine-map) with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Exercise 17 (Testing whether a linear score is an affine map)** Some results hold only for [affine maps](#def-affine-map), so it helps to check whether a given score qualifies. Let $f: \mathbb{R}^2 \to \mathbb{R}$ be $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1 - 4 x_2$, a [linear map](#def-linear-map).
>
> Is $f$ an [affine map](#def-affine-map)?
>
> > **TIP:**
> >
> > Use [Corollary 2](#cor-linear-is-affine).

> **NOTE:**
>
> *Solution 17*. Yes. By [Corollary 2](#cor-linear-is-affine), every [linear map](#def-linear-map) is an [affine map](#def-affine-map) with [offset](#def-affine-offset) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Here
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \begin{bmatrix}1 & -4\end{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ 0,$$
>
> with the $1 \times 2$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\begin{bmatrix}1 & -4\end{bmatrix}$ and offset $0$.

> **NOTE:**
>
> **Theorem 7 (An affine map determines its matrix and offset)** If $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ and $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}'\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}'$ for all $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$ ([Definition 7](#def-affine-map)), then $\mathbf{A}' = \mathbf{A}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}' = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> *Proof*. By [Theorem 5](#thm-affine-map-zero), applied to each formula,
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} &= f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}'.
> \end{aligned}$$
>
> Then
>
> $$\begin{aligned}
> \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}&= f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \\
> &= \mathbf{A}'\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> \end{aligned}$$
>
> for all $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, so $\mathbf{A}$ and $\mathbf{A}'$ are both matrices ([Definition 5](#def-matrix-of-linear-map)) of the linear map $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\mapsto f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ (linear by [Theorem 2](#thm-matrix-map-linear)), and the uniqueness in [Theorem 4](#thm-linear-map-matrix) gives $\mathbf{A}' = \mathbf{A}$.

> **NOTE:**
>
> **Exercise 18 (Matching the offsets of two formulas for one affine map)** [Theorem 7](#thm-affine-map-unique) says that an [affine map](#def-affine-map) has only one [matrix](linear-algebra-matrices.llms.md#def-matrix) and one [offset](#def-affine-offset), so two ways of writing the same map must agree term by term. For $c \in \mathbb{R}$, suppose that
>
> $$\begin{bmatrix}1 & 0 \\ 2 & 1\end{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \begin{bmatrix}3 \\ 1\end{bmatrix}
> = \begin{bmatrix}1 & 0 \\ 2 & 1\end{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \begin{bmatrix}c \\ 1\end{bmatrix}
> \quad \text{for every } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^2.$$
>
> Find $c$.
>
> > **TIP:**
> >
> > Compare the [offsets](#def-affine-offset) of the two sides.

> **NOTE:**
>
> *Solution 18*. $c = 3$. Both sides describe the same [affine map](#def-affine-map). By [Theorem 7](#thm-affine-map-unique), the two sides have the same [offset](#def-affine-offset), so ${(3, 1)}^{\top} = {(c, 1)}^{\top}$ and $c = 3$. Setting $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ gives the same answer directly.

> **NOTE:**
>
> *Remark 3* (“Linear” in this site, and in machine learning and statistics). This site uses “linear” only in the sense of [Definition 3](#def-linear-map), so by [Theorem 6](#thm-affine-linear-iff) a function with a nonzero offset is affine but not linear. For functions of one variable, this is the same split as [affine](algebra-exponentials.llms.md#def-affine-function) $a x + b$ versus [linear](algebra-exponentials.llms.md#def-linear-function) $a x$ on the algebra page. (The algebra page writes these as $m x + b$ and $m x$; here $m$ already names the number of outputs.)
>
> Machine learning and statistics often call any function of the form [Equation 1](#eq-linear-scalar) “linear”, as in a *linear model* in statistics or a *linear layer* in a neural network, and call the offset $b$ the bias (machine learning) or the intercept (statistics), as [Definition 7](#def-affine-map) notes. A model with an intercept is affine in $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ but linear in its coefficients $(b, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})$, and that is the sense of “linear” in “linear model”: it stays linear in the coefficients even when the inputs are transformed: $w_1 x + w_2 x^2 + b$ is not affine in $x$, but it is linear in $(b, w_1, w_2)$. Separately, the affine function $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b$ is a linear function of the augmented vector ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}}$ ([Definition 9](#def-augmented-vector)), with $b$ as the coefficient on its first entry.

> **TIP:**
>
> - Zhou [\[3\]](#ref-zhou2024matrix), sections 6 (“Linear functions and operators”; see [Definition 4](#def-linear-operator)) and 7 (“Affine functions”), proves that every linear function is a matrix-vector product by the same route as [Theorem 4](#thm-linear-map-matrix), and that every affine function has the form $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$. It defines “affine” differently, by $f(\alpha\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \beta\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) = \alpha f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) + \beta f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})$ whenever $\alpha+ \beta= 1$, and shows that this condition holds exactly for the maps $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, so the two definitions agree.
> - Boyd and Vandenberghe [\[4\]](#ref-boyd2018vmls), chapter 2 (“Linear functions”), covers the vector-to-number case: linear functions as inner products, affine functions, the [first-order Taylor approximation](calculus-derivatives.llms.md#def-linear-approximation) as an affine function, and the regression model. Section 8.1 (“Linear and affine functions”) covers the vector-to-vector case. A free PDF is on the book’s website.

> **NOTE:**
>
> **Definition 10 (Hyperplane)** A **hyperplane** [\[5\]](#ref-wikipedia_hyperplane) in $\mathbb{R}^p$ is the set of points $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$ satisfying
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b = 0$$
>
> for some vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathbb{R}^p \setminus \{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\}$ and number $b \in \mathbb{R}$. The number $b$ is the offset of the hyperplane.

> **NOTE:**
>
> **Definition 11 (Normal vector of a hyperplane)** In [Definition 10](#def-hyperplane), the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is a **normal vector** [\[6\]](#ref-wikipedia_normal_geometry) of the hyperplane.

> **NOTE:**
>
> **Example 11 (A line in** $\mathbb{R}^2$, and why the normal vector must be nonzero)  
>
> - With $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = (1, 1)$ and $b = -1$, the hyperplane in $\mathbb{R}^2$ is the line $x_1 + x_2 - 1 = 0$. The point $(1, 0)$ is on it, since $1 + 0 - 1 = 0$; the point $(1, 1)$ is not, since $1 + 1 - 1 = 1 > 0$, so it lies in the half-space where $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b > 0$.
> - With $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, the equation reads $b = 0$: if $b \ne 0$ no point satisfies it, and if $b = 0$ every point does, so the set is empty or all of $\mathbb{R}^2$, not a line. That degenerate case is why the definition requires $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Exercise 19 (Testing whether a vertical line is a hyperplane)** A vertical line in $\mathbb{R}^2$ is parallel to the $x_2$-axis. It cannot be written as $x_2 = m x_1 + k$ for any numbers $m$ and $k$. Let $L$ be the [set](https://morrison-lab.github.io/mcs/sets.html#def-set) of points $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^2$ with $x_1 = 3$.
>
> Is $L$ a [hyperplane](#def-hyperplane) in $\mathbb{R}^2$?
>
> > **TIP:**
> >
> > Look for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and $b$ in [Definition 10](#def-hyperplane).

> **NOTE:**
>
> *Solution 19*. Yes. Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = {(1, 0)}^{\top} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and $b = -3$. Then
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b = x_1 - 3,$$
>
> which is $0$ exactly when $x_1 = 3$. So $L$ is the [hyperplane](#def-hyperplane) with these $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ and $b$.

> **NOTE:**
>
> **Exercise 20 (Finding a normal vector of a plane in** $\mathbb{R}^3$) In $\mathbb{R}^3$ a [hyperplane](#def-hyperplane) is a plane, and a [normal vector](#def-normal-vector) points straight out of it. Let $H$ be the hyperplane of points $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^3$ with
>
> $$2 x_1 - x_2 + 4 x_3 = 7.$$
>
> Find a [normal vector of](#def-normal-vector) $H$.
>
> > **TIP:**
> >
> > Rewrite the equation in the form of [Definition 10](#def-hyperplane).

> **NOTE:**
>
> *Solution 20*. Subtracting $7$ from both sides gives
>
> $$2 x_1 - x_2 + 4 x_3 - 7 = 0,$$
>
> which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b = 0$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = {(2, -1, 4)}^{\top}$ and $b = -7$. So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = {(2, -1, 4)}^{\top}$ is a [normal vector of](#def-normal-vector) $H$. Any nonzero multiple of it is one too, since multiplying the equation by a nonzero number leaves $H$ unchanged.

> **NOTE:**
>
> Show code
>
> ``` js
> viewof planeW1 = Inputs.range([-1.5, 1.5], {value: 1, step: 0.1, label: "w1"})
> viewof planeW2 = Inputs.range([-1.5, 1.5], {value: 0.5, step: 0.1, label: "w2"})
> viewof planeB = Inputs.range([-2, 2], {value: 0, step: 0.1, label: "b"})
> viewof planeTurn = Inputs.range([0, 360], {value: 30, step: 5, label: "turn the view"})
> ```
>
> Show code
>
> ``` js
> {
>   const sign = (v) => (v < 0 ? "\u2212" : "+");
>   const fmt = (v) => Math.abs(v).toFixed(1);
>   return md`f(x1, x2) = ${planeW1.toFixed(1)} x1 ${sign(planeW2)} ${fmt(planeW2)} x2 ${sign(planeB)} ${fmt(planeB)}.
> The orange slice, along x1 with x2 = 0, rises ${planeW1.toFixed(1)} for each unit of x1;
> the green slice, along x2, rises ${planeW2.toFixed(1)} for each unit of x2.
> Both slices cross the vertical axis at height b = ${planeB.toFixed(1)}.`;
> }
> ```
>
> Show code
>
> ``` js
> // The graph z = f(x1, x2) over the square [-2, 2] x [-2, 2], drawn in 3-D:
> // turn the square about the vertical axis, then look down on it from 30 degrees.
> planeView = {
>   const f = (x1, x2) => planeW1 * x1 + planeW2 * x2 + planeB;
>   const w = 340, h = 300, s = 38, sz = 16, elev = 30 * Math.PI / 180;
>   const turn = planeTurn * Math.PI / 180;
>   const at = (x1, x2, z) => {
>     const u = x1 * Math.cos(turn) - x2 * Math.sin(turn);
>     const v = x1 * Math.sin(turn) + x2 * Math.cos(turn);
>     return [w / 2 + s * u, h / 2 - s * Math.sin(elev) * v - sz * Math.cos(elev) * z];
>   };
>   const path = (pts) => d3.line()(pts.map(([a, b, z]) => at(a, b, z)));
>   const svg = d3.create("svg").attr("width", w).attr("height", h)
>     .attr("role", "img")
>     .attr("aria-label", "A tilted plane drawn in three dimensions over a square of inputs, " +
>       "with its two slices through the origin highlighted, " +
>       "and a vertical marker at the origin showing the height b.");
>   const ticks = d3.range(-2, 2.01, 0.5);
>   const corners = [[-2, -2], [2, -2], [2, 2], [-2, 2], [-2, -2]];
>   // the floor, z = 0, and the three axes
>   svg.append("path").attr("d", path(corners.map(([a, b]) => [a, b, 0])))
>     .attr("fill", "#eee").attr("stroke", "#bbb");
>   const axis = (p, q, name) => {
>     svg.append("path").attr("d", path([p, q])).attr("stroke", "#888");
>     const [tx, ty] = at(...q);
>     svg.append("text").attr("x", tx + 4).attr("y", ty).attr("font-size", 13).text(name);
>   };
>   axis([0, 0, 0], [2.6, 0, 0], "x1");
>   axis([0, 0, 0], [0, 2.6, 0], "x2");
>   axis([0, 0, -8], [0, 0, 8], "f");
>   // the plane itself, as a mesh of lines along each input
>   svg.append("path").attr("d", path(corners.map(([a, b]) => [a, b, f(a, b)])))
>     .attr("fill", "#1f77b4").attr("fill-opacity", 0.18).attr("stroke", "#1f77b4");
>   for (const t of ticks) {
>     svg.append("path").attr("d", path([[t, -2, f(t, -2)], [t, 2, f(t, 2)]]))
>       .attr("stroke", "#1f77b4").attr("stroke-opacity", 0.35).attr("fill", "none");
>     svg.append("path").attr("d", path([[-2, t, f(-2, t)], [2, t, f(2, t)]]))
>       .attr("stroke", "#1f77b4").attr("stroke-opacity", 0.35).attr("fill", "none");
>   }
>   // the slice along x1 (x2 = 0) has slope w1; the slice along x2 has slope w2
>   svg.append("path").attr("d", path([[-2, 0, f(-2, 0)], [2, 0, f(2, 0)]]))
>     .attr("stroke", "#ff7f0e").attr("stroke-width", 3);
>   svg.append("path").attr("d", path([[0, -2, f(0, -2)], [0, 2, f(0, 2)]]))
>     .attr("stroke", "#2ca02c").attr("stroke-width", 3);
>   const [ox, oy] = at(0, 0, planeB);
>   svg.append("circle").attr("cx", ox).attr("cy", oy).attr("r", 4).attr("fill", "#222");
>   svg.append("text").attr("x", ox + 6).attr("y", oy - 6).attr("font-size", 13).text("b");
>   return svg.node();
> }
> ```
>
> Show code
>
> ``` js
> Plot.plot({
>   ariaLabel: 'Contour map of the same plane seen from directly above, ' +
>     'with x1 across and x2 up, ' +
>     'shaded by the value of f, ' +
>     'with straight level lines one unit of f apart.',
>   width: 300, height: 300, marginLeft: 40,
>   x: {domain: [-2, 2], label: "x1"},
>   y: {domain: [-2, 2], label: "x2"},
>   color: {type: "diverging", scheme: "RdBu", domain: [-8, 8], legend: true, label: "f(x1, x2)"},
>   marks: [
>     Plot.contour({
>       x1: -2, y1: -2, x2: 2, y2: 2,
>       fill: (x1, x2) => planeW1 * x1 + planeW2 * x2 + planeB,
>       thresholds: d3.range(-8, 8.01, 1), stroke: "#333", strokeOpacity: 0.5
>     }),
>     Plot.ruleY([0], {stroke: "#ff7f0e", strokeWidth: 3}),
>     Plot.ruleX([0], {stroke: "#2ca02c", strokeWidth: 3})
>   ]
> })
> ```
>
> Figure 1: The [graph](https://morrison-lab.github.io/mcs/functions.html#def-graph) of $f(x_1, x_2) = w_1 x_1 + w_2 x_2 + b$, drawn as a surface in $\mathbb{R}^3$ and as seen from above.

> **NOTE:**
>
> **Exercise 21 (Write a rule in matrix form)** A clinic scores a patient’s risk from three measurements.
>
> | symbol | meaning                 | units    |
> |--------|-------------------------|----------|
> | $x_1$  | age                     | years    |
> | $x_2$  | systolic blood pressure | mmHg     |
> | $x_3$  | body mass index         | kg/m$^2$ |
>
> The rule in use is
>
> $$\text{score} = 0.4\,x_1 + 0.2\,x_2 + 1.5\,x_3 - 30$$
>
> Write this rule in the form of [Equation 1](#eq-linear-scalar), naming $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$, $b$ and $p$ explicitly.

> **NOTE:**
>
> *Solution 21*. Read the [coefficients](linear-algebra-vectors.llms.md#def-lincom-coefficient) straight off the rule. There are three inputs, so $p = 3$:
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \begin{bmatrix} 0.4 \\ 0.2 \\ 1.5 \end{bmatrix},
> \qquad b = -30$$
>
> and the rule is $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ b$.

> **NOTE:**
>
> **Exercise 22 (Score a patient)** Give the score from the rule in [Exercise 21](#exr-write-in-matrix-form) for a patient aged $50$ with blood pressure $130$ and BMI $28$.

> **NOTE:**
>
> *Solution 22*. For the patient,
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \begin{bmatrix} 50 \\ 130 \\ 28 \end{bmatrix}$$
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= (0.4)(50) + (0.2)(130) + (1.5)(28) \\
> &= 20 + 26 + 42 \\
> &= 88
> \end{aligned}$$
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> &= 88 - 30 \\
> &= 58
> \end{aligned}$$
>
> Two things are worth noticing. The [coefficients](linear-algebra-vectors.llms.md#def-lincom-coefficient) are not comparable as they stand. The [weight](linear-algebra-vectors.llms.md#def-weight) on BMI, $1.5$, is $7.5$ times the weight on blood pressure, $0.2$, but the contribution of BMI, $42$, is less than twice the contribution of blood pressure, $26$, because the BMI [value](https://morrison-lab.github.io/mcs/functions.html#def-value), $28$, is much smaller than the blood pressure value, $130$. So the weight on a feature says nothing on its own about how much that feature contributes to the score. And $b = -30$ changes the score: without it, the score would be $88$ instead of $58$.

> **NOTE:**
>
> **Exercise 23 (Which of these are affine in** $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$?) Each of the five expressions is a function of the weights $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathbb{R}^p$, with the data $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $y$ held fixed. Say which ones are affine ([Definition 7](#def-affine-map)), that is, have the form [Equation 1](#eq-linear-scalar) — an inner product plus an offset — and which of those are also linear ([Definition 3](#def-linear-map)).
>
> 1.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$
> 2.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}- y$
> 3.  $(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}- y)^2$
> 4.  $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right\rVert\mathclose{}_2^2$
> 5.  $w_1 x_1 + 3$

> **NOTE:**
>
> *Solution 23*.
>
> 1.  **Affine, and linear.** It is [Equation 1](#eq-linear-scalar) with $b = 0$, which is a linear map by [Theorem 2](#thm-matrix-map-linear): the matrix ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ times $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$.
> 2.  **Affine.** Still an inner product plus an offset; here the offset is $b = -y$, which is a constant because $y$ is held fixed. It is linear only when $y = 0$: otherwise $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ gives $-y \ne 0$, and a linear map sends $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ to $0$ ([Theorem 1](#thm-linear-map-zero)).
> 3.  **Not affine.** Squaring is not an inner product plus an offset. This expression is the squared error of one observation, and its curvature in $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is exactly why fitting a model is an optimization problem rather than a lookup.
> 4.  **Not affine.** By [Equation 5 in Vectors](linear-algebra-vectors.llms.md#eq-norm-dot-product), the squared [norm](linear-algebra-vectors.llms.md#def-euclidean-norm) $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right\rVert\mathclose{}_2^2$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$, which has $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ in both slots at once. Hold either slot fixed and it is linear in the other; as a function of the single variable $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ it is quadratic.
> 5.  **Affine, not linear.** It is [Equation 1](#eq-linear-scalar) with coefficient vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}= (x_1, 0, \dots, 0)^{\top}$ and $b = 3$; at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ it equals $3 \ne 0$, so it is not linear ([Theorem 1](#thm-linear-map-zero)). The data $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is untouched — $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}$ is a new vector built from its first entry.
>
> Items 1, 2 and 5 are affine and items 3 and 4 are not, which is the split that matters: a *model* can be affine in its weights while the *quantity we minimize* is not. Squared error and the norm penalty are both curved in $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$, and that curvature is what makes fitting an optimization problem at all: there is always a downhill direction to follow. Curvature alone does not promise a *single* answer. The squared error of one observation is completely flat along a whole line of weight vectors, every one of which fits that observation exactly, and pinning down one of them is part of what the norm penalty is added for in week 3.

# Definitions on this page

- [Definition 1 (Additive function)](#def-additive-function)
- [Definition 2 (Homogeneous function)](#def-homogeneous-function)
- [Definition 3 (Linear map, linear transformation, linear function)](#def-linear-map)
- [Definition 4 (Linear operator)](#def-linear-operator)
- [Definition 5 (Matrix of a linear map)](#def-matrix-of-linear-map)
- [Definition 6 (Translation)](#def-translation)
- [Definition 7](#def-affine-map)
- [Definition 8 (Offset of an affine map, intercept, bias)](#def-affine-offset)
- [Definition 9 (Augmented vector)](#def-augmented-vector)
- [Definition 10 (Hyperplane)](#def-hyperplane)
- [Definition 11 (Normal vector of a hyperplane)](#def-normal-vector)

Back to top

## References

\[1\]

Wikipedia contributors, “Linear map — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Linear_map>

\[2\]

Wikipedia contributors, “Translation (geometry) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Translation_(geometry)>

\[3\]

H. Zhou, “Matrices.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/03-matrix/03-matrix.html>

\[4\]

S. Boyd and L. Vandenberghe, *Introduction to applied linear algebra: Vectors, matrices, and least squares*. Cambridge University Press, 2018. doi: [10.1017/9781108583664](https://doi.org/10.1017/9781108583664).

\[5\]

Wikipedia contributors, “Hyperplane — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Hyperplane>

\[6\]

Wikipedia contributors, “Normal (geometry) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Normal_(geometry)>
