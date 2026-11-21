# Bases and Dimension

Code

Published

Last modified: 2026-11-20 17:19:06 (PST)

# 1 Bases and dimension

> **NOTE:**
>
> **Definition 1 (Basis)** A **basis** [\[1\]](#ref-wikipedia_basis_linear_algebra) of a subspace $\mathcal{S}$ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)) is a list of vectors that are linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)) and span $\mathcal{S}$ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)).

> **NOTE:**
>
> **Example 1 (Two bases of** $\mathbb{R}^2$)  
>
> - $(1, 0)$ and $(0, 1)$ form a basis of $\mathbb{R}^2$: they are linearly independent, and any $(x, y) \in \mathbb{R}^2$ equals $x\,(1, 0) + y\,(0, 1)$.
> - $(1, 0)$ and $(1, 1)$ also form a basis of $\mathbb{R}^2$: [Example 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-linearly-independent) shows they are linearly independent, and any $(x, y)$ equals $(x - y)\,(1, 0) + y\,(1, 1)$, because $(x - y) + y = x$ in the first entry and $0 + y = y$ in the second.

> **NOTE:**
>
> **Example 2 (Lists that are not bases of** $\mathbb{R}^2$)  
>
> - $(1, 0)$ and $(2, 0)$ are not a basis of $\mathbb{R}^2$. They are not linearly independent, since $2\,(1, 0) - (2, 0) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and they do not span $\mathbb{R}^2$: every combination $c_1 (1, 0) + c_2 (2, 0)$ has second entry $0$, so $(0, 1)$ is not in their span.
> - $(1, 0)$, $(0, 1)$ and $(1, 1)$ span $\mathbb{R}^2$, but they are not a basis: $(1, 0) + (0, 1) - (1, 1) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so they are not linearly independent.

> **NOTE:**
>
> **Exercise 1 (Testing whether** $(1, 1)$ and $(1, -1)$ form a basis of $\mathbb{R}^2$) Describing every vector in $\mathbb{R}^2$ through $(1, 1)$ and $(1, -1)$ instead of the axes works only if those two vectors form a [basis](#def-basis). Let
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = \begin{bmatrix}1 \\ 1\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = \begin{bmatrix}1 \\ -1\end{bmatrix}.$$
>
> Is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$ a basis of $\mathbb{R}^2$?
>
> > **TIP:**
> >
> > Check both conditions of [Definition 1](#def-basis). For spanning, look for $c_1$ and $c_2$ with $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = {(x, y)}^{\top}$.

> **NOTE:**
>
> *Solution 1*. Yes. They [span](linear-algebra-subspaces.llms.md#def-span) $\mathbb{R}^2$: for every ${(x, y)}^{\top} \in \mathbb{R}^2$,
>
> $$\frac{x + y}{2} \begin{bmatrix}1 \\ 1\end{bmatrix} + \frac{x - y}{2} \begin{bmatrix}1 \\ -1\end{bmatrix} = \begin{bmatrix}x \\ y\end{bmatrix}.$$
>
> They are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent): if $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, then $c_1 + c_2 = 0$ and $c_1 - c_2 = 0$, and adding the two equations gives $c_1 = 0$ and then $c_2 = 0$. By [Definition 1](#def-basis), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$ is a [basis](#def-basis) of $\mathbb{R}^2$.

> **NOTE:**
>
> **Theorem 1 (Coefficients in a basis are unique)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ is a basis of a subspace $\mathcal{S}$ ([Definition 1](#def-basis)), then every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{S}$ is a linear combination $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ for exactly one list of numbers $c_1, \ldots, c_k$.

> **NOTE:**
>
> *Proof*. At least one such list exists, because the basis spans $\mathcal{S}$ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)).
>
> Suppose two lists both work:
>
> $$\begin{aligned}
> c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \\
> &= d_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + d_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k.
> \end{aligned}$$
>
> Subtracting the right side from the left side gives
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}
> &= (c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k)
> - (d_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + d_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k)
> && \text{(both combinations equal } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \text{)}
> \\
> &= (c_1 - d_1)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + (c_k - d_k)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k
> && \text{(regroup, and distribute each } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i \text{)}
> \end{aligned}$$
>
> Because $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ are linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)), every coefficient $c_i - d_i$ is $0$, so $c_i = d_i$ for each $i$.

> **NOTE:**
>
> **Example 3 (Coefficients of** $(3, 5)$ in two bases) In the basis $(1, 0), (0, 1)$ of [Example 1](#exm-basis), $(3, 5) = 3\,(1, 0) + 5\,(0, 1)$, and no other coefficients work. In the basis $(1, 0), (1, 1)$, the formula in [Example 1](#exm-basis) gives
>
> $$\begin{aligned}
> (3, 5) &= (3 - 5)\,(1, 0) + 5\,(1, 1) \\
> &= -2\,(1, 0) + 5\,(1, 1).
> \end{aligned}$$
>
> The same vector has different coefficients in different bases, but within one basis its coefficients are unique.
>
> The list $(1, 0), (0, 1), (1, 1)$ in [Example 2](#exm-not-basis) spans $\mathbb{R}^2$ but is not linearly independent, and the coefficients of $(3, 5)$ are not unique:
>
> $$\begin{aligned}
> (3, 5) &= 3\,(1, 0) + 5\,(0, 1) + 0\,(1, 1) \\
> &= 0\,(1, 0) + 2\,(0, 1) + 3\,(1, 1).
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 2 (Counting the ways to write a vector in a basis)** The vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = {(1, 1)}^{\top}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = {(1, -1)}^{\top}$ form a [basis](#def-basis) of $\mathbb{R}^2$, and
>
> $$\begin{bmatrix}5 \\ 1\end{bmatrix} = 3 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + 2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2.$$
>
> How many lists of numbers $c_1, c_2$ satisfy ${(5, 1)}^{\top} = c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$?
>
> > **TIP:**
> >
> > Use [Theorem 1](#thm-basis-unique).

> **NOTE:**
>
> *Solution 2*. Exactly one, namely $c_1 = 3$ and $c_2 = 2$. By [Theorem 1](#thm-basis-unique), a vector in the [span](linear-algebra-subspaces.llms.md#def-span) of a [basis](#def-basis) has only one list of numbers, and $3, 2$ is a list that works.

> **NOTE:**
>
> **Definition 2 (Coordinates in a basis)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ be a basis of a subspace $\mathcal{S}$ ([Definition 1](#def-basis)), and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{S}$. The **coordinates** [\[2\]](#ref-wikipedia_coordinate_vector) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ in this basis are the numbers $c_1, \ldots, c_k$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$. By [Theorem 1](#thm-basis-unique) there is exactly one such list of numbers.

> **NOTE:**
>
> **Definition 3 (Coordinate vector)** With $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and its coordinates $c_1, \ldots, c_k$ as in [Definition 2](#def-coordinates), $(c_1, \ldots, c_k) \in \mathbb{R}^k$ is the **coordinate vector** of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.

> **NOTE:**
>
> **Example 4 (Coordinates of** $(4, 1)$ in two bases of $\mathbb{R}^2$) In the basis $(1, 0), (1, 1)$ of [Example 1](#exm-basis), the coordinates of $(4, 1)$ are $3$ and $1$:
>
> $$\begin{aligned}
> 3\,(1, 0) + 1\,(1, 1)
> &= (3 + 1,\; 0 + 1)
> && \text{(}\href{linear-algebra-vectors.qmd#def-linear-combination}{\text{Definition~11 in Vectors}}\text{, entry by entry)}
> \\
> &= (4, 1).
> && \text{(add)}
> \end{aligned}$$
>
> In the basis $(1, 0), (0, 1)$, its coordinates are its entries, $4$ and $1$.

> **NOTE:**
>
> **Exercise 3 (Finding coordinates in a basis other than the indicator vectors)** The [coordinates](#def-coordinates) of a vector depend on the [basis](#def-basis), and they match its entries only in the basis of [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector). The vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = {(2, 0)}^{\top}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = {(1, 1)}^{\top}$ form a basis of $\mathbb{R}^2$. Let
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \begin{bmatrix}7 \\ 3\end{bmatrix}.$$
>
> Find the coordinates of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ in the basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$.
>
> > **TIP:**
> >
> > Write $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$ entry by entry, and start from the second entry.

> **NOTE:**
>
> *Solution 3*. The [coordinates](#def-coordinates) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ are $2$ and $3$. Entry by entry, $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = {(2 c_1 + c_2,\ c_2)}^{\top}$. The second entry gives $c_2 = 3$, and then the first gives $2 c_1 + 3 = 7$, so $c_1 = 2$. As a check, $2 {(2, 0)}^{\top} + 3 {(1, 1)}^{\top} = {(7, 3)}^{\top}$.

> **NOTE:**
>
> **Exercise 4 (Describing a point on a plane in** $\mathbb{R}^3$ with two numbers) A point on a plane through the origin in $\mathbb{R}^3$ needs only two numbers, its [coordinate vector](#def-coordinate-vector) in a [basis](#def-basis) of the plane. The vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = {(1, 1, 0)}^{\top}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = {(0, 1, 1)}^{\top}$ form a basis of a plane $\mathcal{S}$, which contains
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \begin{bmatrix}2 \\ 5 \\ 3\end{bmatrix}.$$
>
> Find the coordinate vector of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ in the basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$.
>
> > **TIP:**
> >
> > Write $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$ entry by entry, then use [Definition 3](#def-coordinate-vector).

> **NOTE:**
>
> *Solution 4*. Entry by entry, $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = {(c_1,\ c_1 + c_2,\ c_2)}^{\top}$. Matching $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ gives $c_1 = 2$ and $c_2 = 3$, and the second entry checks: $2 + 3 = 5$. By [Definition 3](#def-coordinate-vector), the [coordinate vector](#def-coordinate-vector) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is ${(2, 3)}^{\top} \in \mathbb{R}^2$.

> **NOTE:**
>
> **Theorem 2 (All bases of a subspace have the same number of vectors)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_l$ are both bases of a subspace $\mathcal{S}$ of $\mathbb{R}^p$ ([Definition 1](#def-basis)), then $k = l$.

> **NOTE:**
>
> *Proof*. Let $\mathbf{A}$ be the $p \times k$ matrix with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$, and $\mathbf{B}$ the $p \times l$ matrix with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_l$.
>
> **Write** $\mathbf{A}$ in terms of $\mathbf{B}$. Each $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$ is in $\mathcal{S}$, and the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$’s span $\mathcal{S}$ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j = \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_j$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_j \in \mathbb{R}^l$ ([Definition 8 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matvec-mult)). Let $\mathbf{C}$ be the $l \times k$ matrix with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_k$. Then $\underbrace{\mathbf{A}}_{p \times k}
> = \underbrace{\mathbf{B}}_{p \times l}\,\underbrace{\mathbf{C}}_{l \times k}$, because column $j$ of $\mathbf{B} \mathbf{C}$ is $\mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_j$.
>
> **The columns of** $\mathbf{C}$ are linearly independent. Suppose $\mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^k$. Then
>
> $$\begin{aligned}
> \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= (\mathbf{B} \mathbf{C})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(substitute } \mathbf{A} = \mathbf{B} \mathbf{C} \text{)}
> \\
> &= \mathbf{B}\,(\mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= \mathbf{B}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}
> && \text{(substitute } \mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}
> && \text{(a matrix times the zero vector is } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{)}
> \end{aligned}$$
>
> $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is the combination $x_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + x_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ ([Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns)), and the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}$’s are linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. So the only combination of the columns of $\mathbf{C}$ that equals $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ has all coefficients $0$.
>
> **Count.** $\mathbf{C}$ has $k$ linearly independent columns of length $l$. More than $l$ vectors in $\mathbb{R}^l$ are never linearly independent ([Theorem 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-many-vectors-dependent)), so $k \le l$. Exchanging the roles of the two bases gives $l \le k$, so $k = l$.

> **NOTE:**
>
> **Example 5 (Both bases of** $\mathbb{R}^2$ in [Example 1](#exm-basis) have two vectors) The bases $(1, 0), (0, 1)$ and $(1, 0), (1, 1)$ of $\mathbb{R}^2$ in [Example 1](#exm-basis) both have $2$ vectors, as [Theorem 2](#thm-basis-size) requires. So no list of $3$ vectors is a basis of $\mathbb{R}^2$, which agrees with [Example 2](#exm-not-basis): the list $(1, 0), (0, 1), (1, 1)$ spans $\mathbb{R}^2$ but is not linearly independent.

> **NOTE:**
>
> **Definition 4 (Dimension)** The **dimension** of a subspace $\mathcal{S}$, written $\dim(\mathcal{S})$, is the number of vectors in any basis of $\mathcal{S}$ ([Definition 1](#def-basis)). [Theorem 2](#thm-basis-size) makes this number well defined. By convention, the empty list is the basis of $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, so $\dim(\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}) = 0$.

> **NOTE:**
>
> **Example 6 (The dimensions of some subspaces)**  
>
> - $\dim(\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}) = 0$, by the convention in [Definition 4](#def-dimension).
> - $\dim(\mathbb{R}^2) = 2$, by [Example 1](#exm-basis). More generally, $\dim(\mathbb{R}^p) = p$: the indicator vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_p$ ([Definition 21 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)) are linearly independent, since $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1 + \cdots + c_p \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_p = (c_1, \ldots, c_p)$, which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$ only if every $c_i = 0$; and they span $\mathbb{R}^p$, since any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = x_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1 + \cdots + x_p \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_p$.
> - The line in [Example 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-subspace) has dimension $1$: the single vector $(1, 2)$ is linearly independent and spans the line.
> - The plane $z = 0$ in [Example 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-span) has dimension $2$, with basis $(1, 0, 0), (0, 1, 0)$.

> **NOTE:**
>
> **Exercise 5 (Testing whether two vectors can form a basis of** $\mathbb{R}^3$) A list of two features cannot describe every point in $\mathbb{R}^3$, and [Theorem 2](#thm-basis-size) says why in terms of [bases](#def-basis). The [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3$ form a basis of $\mathbb{R}^3$.
>
> Can a list of $2$ vectors be a basis of $\mathbb{R}^3$?
>
> > **TIP:**
> >
> > Use [Theorem 2](#thm-basis-size) with the [basis](#def-basis) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3$.

> **NOTE:**
>
> *Solution 5*. No. $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3$ is a [basis](#def-basis) of $\mathbb{R}^3$ with $3$ vectors, so by [Theorem 2](#thm-basis-size) every basis of $\mathbb{R}^3$ has $3$ vectors, not $2$.

> **NOTE:**
>
> **Exercise 6 (Finding the dimension of a span that includes a multiple)** The [dimension](#def-dimension) of a [span](linear-algebra-subspaces.llms.md#def-span) can be smaller than the number of vectors that span it, for example when one vector is a multiple of another. Let
>
> $$\mathcal{S} = \operatorname{span}\mathopen{}\left\{{(1, 2, 0)}^{\top},\ {(2, 4, 0)}^{\top},\ {(0, 0, 1)}^{\top}\right\}\mathclose{}.$$
>
> Find $\dim(\mathcal{S})$.
>
> > **TIP:**
> >
> > Look for a vector in the list that is a multiple of another, then check that the rest are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent).

> **NOTE:**
>
> *Solution 6*. $\dim(\mathcal{S}) = 2$. Since ${(2, 4, 0)}^{\top} = 2 {(1, 2, 0)}^{\top}$, dropping ${(2, 4, 0)}^{\top}$ leaves the [span](linear-algebra-subspaces.llms.md#def-span) unchanged, so ${(1, 2, 0)}^{\top}$ and ${(0, 0, 1)}^{\top}$ span $\mathcal{S}$. They are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent): if $c_1 {(1, 2, 0)}^{\top} + c_2 {(0, 0, 1)}^{\top} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, the first entry gives $c_1 = 0$ and the third gives $c_2 = 0$. So they form a [basis](#def-basis) of $\mathcal{S}$ with $2$ vectors, and by [Definition 4](#def-dimension) the [dimension](#def-dimension) is $2$.

> **NOTE:**
>
> **Theorem 3 (Adding a vector outside the span keeps a list independent)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k$ are linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is not in $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k\right\}\mathclose{}$ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)), then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ are linearly independent.

> **NOTE:**
>
> *Proof*. Suppose $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k + d\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.
>
> **The coefficient** $d$ is $0$. If $d \neq 0$, then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> &= \frac{1}{d}\,\mathopen{}\left(d\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right)\mathclose{}
> && \text{(} d \neq 0 \text{)}
> \\
> &= \frac{1}{d}\,\mathopen{}\left(-c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 - \cdots - c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k\right)\mathclose{}
> && \text{(solve the supposed equation for } d\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \text{)}
> \\
> &= \mathopen{}\left(-\frac{c_1}{d}\right)\mathclose{}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + \mathopen{}\left(-\frac{c_k}{d}\right)\mathclose{}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k,
> && \text{(distribute } \tfrac{1}{d} \text{)}
> \end{aligned}$$
>
> which puts $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ in $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k\right\}\mathclose{}$, contrary to the assumption.
>
> **The other coefficients are** $0$. With $d = 0$, the equation reads $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so every $c_i = 0$, because $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k$ are linearly independent.

> **NOTE:**
>
> **Example 7 (Adding** $(0, 0, 1)$ to two independent vectors in $\mathbb{R}^3$) The vectors $(1, 0, 0)$ and $(0, 1, 0)$ are linearly independent, and their span is the plane $z = 0$ ([Example 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-span)). The vector $(0, 0, 1)$ has third entry $1$, so it is not in that plane, and by [Theorem 3](#thm-add-outside-span) the three vectors $(1, 0, 0)$, $(0, 1, 0)$, $(0, 0, 1)$ are linearly independent. Adding $(1, 1, 0)$ instead would not work: $(1, 1, 0)$ is in the span, and $(1, 0, 0) + (0, 1, 0) - (1, 1, 0) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Exercise 7 (Adding a third feature to an independent pair)** Adding a new feature keeps a list of features [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent) when the new one is not a combination of the old ones, which is what [Theorem 3](#thm-add-outside-span) says. Let
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 = \begin{bmatrix}1 \\ 0 \\ 0\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 = \begin{bmatrix}0 \\ 1 \\ 0\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \begin{bmatrix}1 \\ 1 \\ 1\end{bmatrix}.$$
>
> Are $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ linearly independent?
>
> > **TIP:**
> >
> > Check whether $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is in $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2\right\}\mathclose{}$, then use [Theorem 3](#thm-add-outside-span).

> **NOTE:**
>
> *Solution 7*. Yes. $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2$ are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent): $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 = {(c_1, c_2, 0)}^{\top}$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only for $c_1 = c_2 = 0$. Every vector in their [span](linear-algebra-subspaces.llms.md#def-span) has third entry $0$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ has third entry $1$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is not in the span. By [Theorem 3](#thm-add-outside-span), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ are linearly independent.

> **NOTE:**
>
> **Theorem 4 (An independent list extends to a basis)** If $\mathcal{S}$ is a subspace of $\mathbb{R}^p$ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k \in \mathcal{S}$ are linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)), then adding vectors of $\mathcal{S}$ to the list gives a basis of $\mathcal{S}$ ([Definition 1](#def-basis)). Starting from the empty list shows that every subspace has a basis.

> **NOTE:**
>
> *Proof*. Repeat the following step. If the current list spans $\mathcal{S}$, stop: it is linearly independent and spans $\mathcal{S}$, so it is a basis. Otherwise, some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathcal{S}$ is not in the span of the current list; add $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ to the list, which stays linearly independent by [Theorem 3](#thm-add-outside-span).
>
> Every list produced is a linearly independent list of vectors in $\mathbb{R}^p$, so it has at most $p$ vectors ([Theorem 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-many-vectors-dependent)). Each step adds one vector, so the process stops after at most $p - k$ steps, and when it stops the list is a basis of $\mathcal{S}$.
>
> For the empty list, which is linearly independent and spans $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ by the conventions in [Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span), the first step asks whether $\mathcal{S} = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$: if so, the empty list is already a basis; if not, the process adds vectors as described.

> **NOTE:**
>
> **Example 8 (Extending** $(1, 1, 0)$ to a basis of $\mathbb{R}^3$) Start with the single vector $(1, 1, 0)$.
>
> 1.  $(1, 0, 0)$ is not in $\operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$, because every multiple $c\,(1, 1, 0)$ has equal first and second entries. Add it.
> 2.  $(0, 0, 1)$ is not in $\operatorname{span}\mathopen{}\left\{(1, 1, 0), (1, 0, 0)\right\}\mathclose{}$, because every combination of those two vectors has third entry $0$. Add it.
> 3.  The list $(1, 1, 0), (1, 0, 0), (0, 0, 1)$ spans $\mathbb{R}^3$: $(x, y, z) = y\,(1, 1, 0) + (x - y)\,(1, 0, 0) + z\,(0, 0, 1)$. Stop.
>
> The result is a basis of $\mathbb{R}^3$ that contains the starting vector.

> **NOTE:**
>
> **Exercise 8 (Extending one vector to a basis of** $\mathbb{R}^3$) [Theorem 4](#thm-extend-basis) says that any [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent) list can be completed to a [basis](#def-basis). Let
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 = \begin{bmatrix}1 \\ 1 \\ 0\end{bmatrix}.$$
>
> Find two [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) that extend $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1$ to a basis of $\mathbb{R}^3$.
>
> > **TIP:**
> >
> > Add [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) one at a time, each outside the [span](linear-algebra-subspaces.llms.md#def-span) of the list so far, as [Theorem 3](#thm-add-outside-span) allows.

> **NOTE:**
>
> *Solution 8*. One answer is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3$. The list $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1$ is [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent), since $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2 = {(0, 1, 0)}^{\top}$ is not a multiple of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1$, whose first two entries match, so by [Theorem 3](#thm-add-outside-span) the list $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2$ is linearly independent. Every vector in its [span](linear-algebra-subspaces.llms.md#def-span) has third entry $0$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3$ is outside it, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3$ is linearly independent too. These three vectors span $\mathbb{R}^3$, because ${(x, y, z)}^{\top} = x \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + (y - x) \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2 + z \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3$, so they form a [basis](#def-basis) of $\mathbb{R}^3$. The pair $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3$ works too.

> **NOTE:**
>
> **Theorem 5 (An independent list in a subspace has at most** $\dim$ vectors) Let $\mathcal{S}$ be a subspace of $\mathbb{R}^p$ with $\dim(\mathcal{S}) = d$ ([Definition 4](#def-dimension)).
>
> 1.  Any linearly independent list of vectors in $\mathcal{S}$ has at most $d$ vectors.
> 2.  If $\mathcal{T}$ is a subspace with $\mathcal{T} \subseteq \mathcal{S}$, then $\dim(\mathcal{T}) \le \dim(\mathcal{S})$.

> **NOTE:**
>
> *Proof*. **Part 1.** If $d = 0$, then $\mathcal{S} = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, so every vector in a nonempty list from $\mathcal{S}$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and $1 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ shows the list is not linearly independent; only the empty list, with $0 = d$ vectors, is. Now let $d \ge 1$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_d$ be a basis of $\mathcal{S}$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_k \in \mathcal{S}$ be linearly independent. Each $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j$ is in $\mathcal{S}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j = c_{1j} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + c_{dj} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_d$ for some coordinate vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_j = (c_{1j}, \ldots, c_{dj}) \in \mathbb{R}^d$. Suppose $k > d$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_k$ are $k > d$ vectors in $\mathbb{R}^d$, so some $x_1, \ldots, x_k$, not all zero, satisfy $x_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_1 + \cdots + x_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_k = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_d$ ([Theorem 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-many-vectors-dependent)); entry $i$ of that equation says $\sum_{j=1}^{k} x_j c_{ij} = 0$. Then
>
> $$\begin{aligned}
> \sum_{j=1}^{k} x_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j
> &= \sum_{j=1}^{k} x_j \sum_{i=1}^{d} c_{ij} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i
> && \text{(substitute each } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j \text{)}
> \\
> &= \sum_{j=1}^{k} \sum_{i=1}^{d} x_j c_{ij}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i
> && \text{(distribute each } x_j \text{ over the inner sum)}
> \\
> &= \sum_{i=1}^{d} \sum_{j=1}^{k} x_j c_{ij}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i
> && \text{(swap the order of the finite sums)}
> \\
> &= \sum_{i=1}^{d} \mathopen{}\left(\sum_{j=1}^{k} x_j c_{ij}\right)\mathclose{}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i
> && \text{(factor } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i \text{ out of the inner sum)}
> \\
> &= \sum_{i=1}^{d} 0 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i
> && \text{(entry } i \text{ of } \textstyle\sum_j x_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_j = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_d \text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p,
> && \text{(a zero multiple of a vector is } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{)}
> \end{aligned}$$
>
> a combination of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_k$ with coefficients not all zero that equals $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$. That contradicts their linear independence, so $k \le d$.
>
> **Part 2.** $\mathcal{T}$ has a basis ([Theorem 4](#thm-extend-basis)) with $\dim(\mathcal{T})$ vectors. Those vectors are linearly independent and lie in $\mathcal{S}$, so by Part 1 there are at most $\dim(\mathcal{S})$ of them.

> **NOTE:**
>
> **Example 9 (Subspaces of a plane have dimension at most two)** The plane $\mathcal{S} = \mathopen{}\left\{(x, y, 0) : x, y \in \mathbb{R}\right\}\mathclose{}$ in $\mathbb{R}^3$ has dimension $2$ ([Example 6](#exm-dimension)). By [Theorem 5](#thm-dim-bound), no three vectors with third entry $0$ are linearly independent; for instance, $(1, 0, 0) + (0, 1, 0) - (1, 1, 0) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. The line $\mathcal{T} = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$ lies in $\mathcal{S}$, and
>
> $$\begin{aligned}
> \dim(\mathcal{T}) &= 1 \\
> &\le 2 \\
> &= \dim(\mathcal{S}).
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 9 (Testing whether four independent vectors fit in a three-dimensional subspace)** [Theorem 5](#thm-dim-bound) caps how many [linearly independent vectors](linear-algebra-subspaces.llms.md#def-linearly-independent) a [subspace](linear-algebra-subspaces.llms.md#def-subspace) can hold. Let $\mathcal{S}$ be a subspace of $\mathbb{R}^5$ with [dimension](#def-dimension) $3$.
>
> Can $\mathcal{S}$ contain $4$ linearly independent vectors?
>
> > **TIP:**
> >
> > Use part 1 of [Theorem 5](#thm-dim-bound) with $d = 3$.

> **NOTE:**
>
> *Solution 9*. No. By part 1 of [Theorem 5](#thm-dim-bound), a [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent) list of vectors in $\mathcal{S}$ has at most $\dim(\mathcal{S}) = 3$ vectors, so it cannot have $4$.

> **NOTE:**
>
> **Theorem 6 (A subspace inside another of the same dimension equals it)** If $\mathcal{T}$ and $\mathcal{S}$ are subspaces of $\mathbb{R}^p$ with $\mathcal{T} \subseteq \mathcal{S}$ and $\dim(\mathcal{T}) = \dim(\mathcal{S})$ ([Definition 4](#def-dimension)), then $\mathcal{T} = \mathcal{S}$.

> **NOTE:**
>
> *Proof*. Let $d = \dim(\mathcal{S})$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{t}}\vphantom{t}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{t}}\vphantom{t}}_d$ be a basis of $\mathcal{T}$ ([Theorem 4](#thm-extend-basis)); it has $d$ vectors because $\dim(\mathcal{T}) = d$. (When $d = 0$ it is the empty list, whose span is $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ by the convention in [Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span), and the argument is unchanged.) Suppose some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} \in \mathcal{S}$ is not in $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{t}}\vphantom{t}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{t}}\vphantom{t}}_d\right\}\mathclose{} = \mathcal{T}$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{t}}\vphantom{t}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{t}}\vphantom{t}}_d, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}$ are linearly independent ([Theorem 3](#thm-add-outside-span)), and they are $d + 1$ vectors of $\mathcal{S}$, which contradicts part 1 of [Theorem 5](#thm-dim-bound). So every vector of $\mathcal{S}$ is in $\mathcal{T}$, that is, $\mathcal{S} \subseteq \mathcal{T}$. Together with $\mathcal{T} \subseteq \mathcal{S}$, this inclusion gives $\mathcal{T} = \mathcal{S}$.

> **NOTE:**
>
> **Example 10 (Two independent vectors in a plane span it)** Let $\mathcal{S} = \mathopen{}\left\{(x, y, 0) : x, y \in \mathbb{R}\right\}\mathclose{}$, the plane $z = 0$, which has dimension $2$ ([Example 6](#exm-dimension)), and let $\mathcal{T} = \operatorname{span}\mathopen{}\left\{(1, 0, 0), (1, 1, 0)\right\}\mathclose{}$. Both vectors have third entry $0$, so $\mathcal{T} \subseteq \mathcal{S}$. They are linearly independent: $c_1 (1, 0, 0) + c_2 (1, 1, 0) = (c_1 + c_2, c_2, 0)$, which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only if $c_2 = 0$ and then $c_1 = 0$. So $\dim(\mathcal{T}) = 2$, and [Theorem 6](#thm-subspace-equal-dim) gives $\mathcal{T} = \mathcal{S}$ without solving for any coefficients. As a check, $(x, y, 0) = (x - y)\,(1, 0, 0) + y\,(1, 1, 0)$.

> **NOTE:**
>
> **Example 11 (Equal dimensions without containment)** The lines $\operatorname{span}\mathopen{}\left\{(1, 0, 0)\right\}\mathclose{}$ and $\operatorname{span}\mathopen{}\left\{(0, 1, 0)\right\}\mathclose{}$ in $\mathbb{R}^3$ both have dimension $1$, but they are not equal: $(1, 0, 0)$ is in the first and not the second. [Theorem 6](#thm-subspace-equal-dim) does not apply, because neither line contains the other.

> **NOTE:**
>
> **Exercise 10 (Showing that a span of two vectors is all of** $\mathbb{R}^2$) [Theorem 6](#thm-subspace-equal-dim) shows that two [subspaces](linear-algebra-subspaces.llms.md#def-subspace) coincide by comparing [dimensions](#def-dimension) instead of checking every vector. Let
>
> $$\mathcal{T} = \operatorname{span}\mathopen{}\left\{{(1, 2)}^{\top},\ {(3, 1)}^{\top}\right\}\mathclose{}.$$
>
> Is $\mathcal{T}$ all of $\mathbb{R}^2$?
>
> > **TIP:**
> >
> > Find $\dim(\mathcal{T})$ and $\dim(\mathbb{R}^2)$, then use [Theorem 6](#thm-subspace-equal-dim) with $\mathcal{S} = \mathbb{R}^2$.

> **NOTE:**
>
> *Solution 10*. Yes. The two vectors are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent): if $c_1 {(1, 2)}^{\top} + c_2 {(3, 1)}^{\top} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, then $c_1 + 3 c_2 = 0$ and $2 c_1 + c_2 = 0$. Subtracting twice the first equation from the second gives $-5 c_2 = 0$, so $c_2 = 0$ and then $c_1 = 0$. So they form a [basis](#def-basis) of $\mathcal{T}$, and $\dim(\mathcal{T}) = 2$. The [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2$ form a basis of $\mathbb{R}^2$, so $\dim(\mathbb{R}^2) = 2$. Since $\mathcal{T} \subseteq \mathbb{R}^2$ and the [dimensions](#def-dimension) agree, [Theorem 6](#thm-subspace-equal-dim) gives $\mathcal{T} = \mathbb{R}^2$.

# Definitions on this page

- [Definition 1 (Basis)](#def-basis)
- [Definition 2 (Coordinates in a basis)](#def-coordinates)
- [Definition 3 (Coordinate vector)](#def-coordinate-vector)
- [Definition 4 (Dimension)](#def-dimension)

Back to top

## References

\[1\]

Wikipedia contributors, “Basis (linear algebra) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Basis_(linear_algebra)>

\[2\]

Wikipedia contributors, “Coordinate vector — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Coordinate_vector>
