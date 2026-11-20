# Column Space and Null Space

Code

Published

Last modified: 2026-11-20 10:27:54 (PST)

# 1 Column space and null space

> **NOTE:**
>
> **Definition 1 (Column space, range, image)** The **column space** [\[1\]](#ref-wikipedia_row_and_column_spaces) of an $m \times n$ matrix $\mathbf{A}$ is
>
> $$\mathcal{C}(\mathbf{A})
> \stackrel{\text{def}}{=}
> \mathopen{}\left\{\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} : \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^n\right\}\mathclose{},$$
>
> the set of all vectors $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ in $\mathbb{R}^m$. It is also called the **range** or **image** of $\mathbf{A}$.

> **NOTE:**
>
> **Definition 2 (Row space)** The **row space** of an $m \times n$ matrix $\mathbf{A}$ is $\mathcal{C}({\mathbf{A}}^{\top})$, a set of vectors in $\mathbb{R}^n$.

> **NOTE:**
>
> **Example 1 (The column space of a rank-one matrix)** Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix}.$$
>
> For any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^3$,
>
> $$\begin{aligned}
> \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= (x_1 - 2x_2 - 2x_3,\; 3\,(x_1 - 2x_2 - 2x_3)) \\
> &= (x_1 - 2x_2 - 2x_3)\,(1, 3)
> \end{aligned}$$
>
> ([Definition 8 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matvec-mult)). The number $x_1 - 2x_2 - 2x_3$ can be any real number (take $x_2 = 0$ and $x_3 = 0$), so $\mathcal{C}(\mathbf{A}) = \mathopen{}\left\{c\,(1, 3) : c \in \mathbb{R}\right\}\mathclose{}$, a line in $\mathbb{R}^2$. The vector $(1, 0)$ is not in $\mathcal{C}(\mathbf{A})$: $c\,(1, 3)$ has second entry $3c$, which is $0$ only if $c = 0$, and then the first entry is $0$, not $1$.

> **NOTE:**
>
> **Theorem 1 (The column space is the span of the columns)** If $\mathbf{A}$ is an $m \times n$ matrix with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n$, then
>
> $$\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n\right\}\mathclose{},$$
>
> so $\mathcal{C}(\mathbf{A})$ is a subspace of $\mathbb{R}^m$, and the row space $\mathcal{C}({\mathbf{A}}^{\top})$ is a subspace of $\mathbb{R}^n$.

> **NOTE:**
>
> *Proof*. By [Theorem 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-matvec-columns), $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = x_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + x_n \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n$, and as $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ranges over $\mathbb{R}^n$, the coefficients $x_1, \ldots, x_n$ range over all lists of $n$ numbers. So the set of all $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Definition 1](#def-column-space)) is the set of all linear combinations of the columns, which is their span ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)). A span is a subspace ([Theorem 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-span-subspace)). Applying the same argument to ${\mathbf{A}}^{\top}$, whose columns are the rows of $\mathbf{A}$, shows the row space is a subspace of $\mathbb{R}^n$.

> **NOTE:**
>
> **Example 2 (Reading off the column space and row space from the columns and rows)** For $\mathbf{A}$ in [Example 1](#exm-column-space), the columns are $(1, 3)$, $(-2, -6) = -2\,(1, 3)$ and $(-2, -6) = -2\,(1, 3)$, so by [Theorem 1](#thm-column-space-span) $\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(1, 3)\right\}\mathclose{}$, the same line found in [Example 1](#exm-column-space). The rows are $(1, -2, -2)$ and $(3, -6, -6) = 3\,(1, -2, -2)$, so the row space is $\operatorname{span}\mathopen{}\left\{(1, -2, -2)\right\}\mathclose{}$, a line in $\mathbb{R}^3$.

> **NOTE:**
>
> **Definition 3 (Null space, kernel)** The **null space** of an $m \times n$ matrix $\mathbf{A}$ is
>
> $$\mathcal{N}(\mathbf{A})
> \stackrel{\text{def}}{=}
> \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^n : \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m\right\}\mathclose{},$$
>
> the set of [solutions](linear-algebra-matrix-multiplication.llms.md#def-linear-system) of the linear system $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$. It is also called the **kernel** of $\mathbf{A}$.

> **NOTE:**
>
> **Definition 4 (Left null space)** The **left null space** of an $m \times n$ matrix $\mathbf{A}$ is $\mathcal{N}({\mathbf{A}}^{\top})$, a set of vectors in $\mathbb{R}^m$.

> **NOTE:**
>
> **Example 3 (The null space and left null space of a rank-one matrix)** For $\mathbf{A}$ in [Example 1](#exm-column-space), $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (x_1 - 2x_2 - 2x_3,\; 3\,(x_1 - 2x_2 - 2x_3))$, so $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ exactly when $x_1 = 2x_2 + 2x_3$. Writing
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= (2x_2 + 2x_3, x_2, x_3) \\
> &= x_2\,(2, 1, 0) + x_3\,(2, 0, 1)
> \end{aligned}$$
>
> shows $\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(2, 1, 0), (2, 0, 1)\right\}\mathclose{}$, a plane in $\mathbb{R}^3$.
>
> For the left null space, ${\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (y_1 + 3y_2,\; -2\,(y_1 + 3y_2),\; -2\,(y_1 + 3y_2))$, which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$ exactly when $y_1 = -3y_2$, so $\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\{(-3, 1)\right\}\mathclose{}$, a line in $\mathbb{R}^2$.

> **NOTE:**
>
> **Exercise 1 (Testing whether a vector is in a column space)** A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is in the [column space](#def-column-space) of a [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ exactly when some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ gives $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 2 \\ 3 & 6\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \begin{bmatrix}2 \\ 6\end{bmatrix}.$$
>
> Decide whether $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is in $\mathcal{C}(\mathbf{A})$.
>
> > **TIP:**
> >
> > Try $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (x_1, 0)$ and solve for $x_1$.

> **NOTE:**
>
> *Solution 1*. Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (2, 0)$. Then
>
> $$\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> = \begin{bmatrix}1 \cdot 2 + 2 \cdot 0 \\ 3 \cdot 2 + 6 \cdot 0\end{bmatrix}
> = \begin{bmatrix}2 \\ 6\end{bmatrix}
> = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}},$$
>
> so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is in $\mathcal{C}(\mathbf{A})$.

> **NOTE:**
>
> **Exercise 2 (Testing whether a vector is in a row space)** The [row space](#def-row-space) of a [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ is the [column space](#def-column-space) of its [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose). Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 2 \\ 3 & 6\end{bmatrix}$$
>
> and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ be the [column vector](linear-algebra-vectors.llms.md#def-column-vector) $(1, 2)$.
>
> Decide whether $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is in the row space $\mathcal{C}({\mathbf{A}}^{\top})$.
>
> > **TIP:**
> >
> > Write out ${\mathbf{A}}^{\top}$ and look for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ with ${\mathbf{A}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$.

> **NOTE:**
>
> *Solution 2*. Here
>
> $${\mathbf{A}}^{\top} = \begin{bmatrix}1 & 3 \\ 2 & 6\end{bmatrix}.$$
>
> Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 0)$. Then
>
> $${\mathbf{A}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}
> = \begin{bmatrix}1 \cdot 1 + 3 \cdot 0 \\ 2 \cdot 1 + 6 \cdot 0\end{bmatrix}
> = \begin{bmatrix}1 \\ 2\end{bmatrix}
> = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}},$$
>
> so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is in the [row space](#def-row-space).

> **NOTE:**
>
> **Exercise 3 (Showing that a column space is all of** $\mathbb{R}^2$) [Theorem 1](#thm-column-space-span) describes a [column space](#def-column-space) as the [span](linear-algebra-subspaces.llms.md#def-span) of the [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 0 & 1 \\ 0 & 1 & 1\end{bmatrix}.$$
>
> Show that $\mathcal{C}(\mathbf{A}) = \mathbb{R}^2$.
>
> > **TIP:**
> >
> > Two of the [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$ are the [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2$.

> **NOTE:**
>
> *Solution 3*. By [Theorem 1](#thm-column-space-span), $\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(1, 0), (0, 1), (1, 1)\right\}\mathclose{}$. Every $(b_1, b_2) \in \mathbb{R}^2$ is $b_1\,(1, 0) + b_2\,(0, 1) + 0\,(1, 1)$, so it is in that [span](linear-algebra-subspaces.llms.md#def-span). The [column space](#def-column-space) also lies inside $\mathbb{R}^2$, so $\mathcal{C}(\mathbf{A}) = \mathbb{R}^2$.

> **NOTE:**
>
> **Exercise 4 (Finding a null space)** The [null space](#def-null-space) of a [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ holds every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 2 & 0 \\ 0 & 0 & 1\end{bmatrix}.$$
>
> Find $\mathcal{N}(\mathbf{A})$ as a [span](linear-algebra-subspaces.llms.md#def-span).
>
> > **TIP:**
> >
> > Write out the two entries of $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and make each $0$.

> **NOTE:**
>
> *Solution 4*. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (x_1, x_2, x_3)$,
>
> $$\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \begin{bmatrix}x_1 + 2 x_2 \\ x_3\end{bmatrix}.$$
>
> This vector is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ exactly when $x_3 = 0$ and $x_1 = -2 x_2$. So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (-2 x_2, x_2, 0) = x_2\,(-2, 1, 0)$, and
>
> $$\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(-2, 1, 0)\right\}\mathclose{}.$$

> **NOTE:**
>
> **Exercise 5 (Testing whether a vector is in a left null space)** The [left null space](#def-left-null-space) of a [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ is the [null space](#def-null-space) of its [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose). Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 2 \\ 2 & 4\end{bmatrix}$$
>
> and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ be the [column vector](linear-algebra-vectors.llms.md#def-column-vector) $(2, -1)$.
>
> Decide whether $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is in $\mathcal{N}({\mathbf{A}}^{\top})$.
>
> > **TIP:**
> >
> > Compute ${\mathbf{A}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$.

> **NOTE:**
>
> *Solution 5*. Here
>
> $${\mathbf{A}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}
> = \begin{bmatrix}1 & 2 \\ 2 & 4\end{bmatrix} \begin{bmatrix}2 \\ -1\end{bmatrix}
> = \begin{bmatrix}2 - 2 \\ 4 - 4\end{bmatrix}
> = \begin{bmatrix}0 \\ 0\end{bmatrix},$$
>
> so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is in $\mathcal{N}({\mathbf{A}}^{\top})$. Here $\mathbf{A}$ [equals](linear-algebra-matrices.llms.md#def-matrix-equality) its own [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ is in $\mathcal{N}(\mathbf{A})$ as well.

> **NOTE:**
>
> **Theorem 2 (A null space is a subspace)** For any $m \times n$ matrix $\mathbf{A}$, $\mathcal{N}(\mathbf{A})$ ([Definition 3](#def-null-space)) is a subspace of $\mathbb{R}^n$ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)).

> **NOTE:**
>
> *Proof*. $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n \in \mathcal{N}(\mathbf{A})$, and the null space is not empty. If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathcal{N}(\mathbf{A})$ and $c \in \mathbb{R}$, then
>
> $$\begin{aligned}
> \mathbf{A}\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-distrib}{\text{Theorem~2 in Matrix Multiplication}}\text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m
> && \text{(} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \text{ and } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \text{ are in the null space)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m
> && \text{(adding } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m \text{ changes nothing)}
> \end{aligned}$$
>
> and, for each entry $i = 1, \ldots, m$,
>
> $$\begin{aligned}
> \mathopen{}\left(\mathbf{A}\,(c \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}})\right)\mathclose{}_i
> &= a_{i1} (c u_1) + \cdots + a_{in} (c u_n)
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\
> &= c\,(a_{i1} u_1 + \cdots + a_{in} u_n)
> && \text{(factor } c \text{ out of each term)}
> \\
> &= c\,(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}})_i
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\
> &= c \cdot 0
> && \text{(} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \text{ is in the null space)}
> \\
> &= 0,
> && \text{(arithmetic)}
> \end{aligned}$$
>
> so $\mathbf{A}\,(c \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$. Therefore $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ and $c \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ are in $\mathcal{N}(\mathbf{A})$.

> **NOTE:**
>
> **Example 4 (The solutions of** $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ are not a subspace) In [Example 3](#exm-null-space), $(2, 1, 0)$ and $(2, 0, 1)$ are in $\mathcal{N}(\mathbf{A})$, and so is their sum $(4, 1, 1)$, since $4 - 2 \cdot 1 - 2 \cdot 1 = 0$. By contrast, the solutions of $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (1, 3)$ for the same $\mathbf{A}$ are the vectors with $x_1 - 2x_2 - 2x_3 = 1$. That set does not contain $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$, so by [Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero) it is not a subspace.

> **NOTE:**
>
> **Exercise 6 (Showing that the solutions of two equations are a subspace)** [Theorem 2](#thm-null-space-subspace) turns a question about a [subspace](linear-algebra-subspaces.llms.md#def-subspace) into a question about a [null space](#def-null-space). Let $\mathcal{S}$ hold the [solutions](linear-algebra-matrix-multiplication.llms.md#def-linear-system) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^3$ of the two equations $x_1 + x_2 - x_3 = 0$ and $x_2 = 2 x_3$.
>
> Show that $\mathcal{S}$ is a subspace of $\mathbb{R}^3$.
>
> > **TIP:**
> >
> > Write both equations as $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ for one $2 \times 3$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$.

> **NOTE:**
>
> *Solution 6*. Move every term to the left side: $x_1 + x_2 - x_3 = 0$ and $x_2 - 2 x_3 = 0$. With
>
> $$\mathbf{A} = \begin{bmatrix}1 & 1 & -1 \\ 0 & 1 & -2\end{bmatrix},$$
>
> the two equations say $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$, so $\mathcal{S} = \mathcal{N}(\mathbf{A})$. By [Theorem 2](#thm-null-space-subspace), $\mathcal{S}$ is a [subspace](linear-algebra-subspaces.llms.md#def-subspace) of $\mathbb{R}^3$.

> **NOTE:**
>
> **Theorem 3 (Independent columns exactly when the null space is trivial)** For an $m \times n$ matrix $\mathbf{A}$, the following are equivalent:
>
> 1.  The columns of $\mathbf{A}$ are linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)).
> 2.  $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$ only for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n$.
> 3.  $\mathcal{N}(\mathbf{A}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n\right\}\mathclose{}$ ([Definition 3](#def-null-space)).
>
> So $\mathbf{A}$ has full column rank ([Definition 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-full-column-rank)) exactly when its null space contains only the zero vector.

> **NOTE:**
>
> *Proof*. Write $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n$ for the columns of $\mathbf{A}$. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (x_1, \ldots, x_n)$, the matrix-vector product is the combination of the columns with weights $x_1, \ldots, x_n$:
>
> $$\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = x_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + x_n \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n.$$
>
> So $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$ says exactly that $x_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + x_n \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$. By [Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent), the columns are linearly independent exactly when the only weights with this property are $x_1 = \cdots = x_n = 0$. That is statement 2, so statements 1 and 2 are equivalent. Statement 2 says that the only vector in $\mathcal{N}(\mathbf{A})$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n$, which is statement 3. The last sentence is the definition of full column rank ([Definition 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-full-column-rank)).

> **NOTE:**
>
> **Example 5 (Checking independence through the null space)** For $\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}$,
>
> $$\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> = \begin{bmatrix} x_1 + x_2 \\ x_1 + 2 x_2 \\ x_1 + 3 x_2 \end{bmatrix}.$$
>
> This is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$ only if $x_2 = 0$ (subtract the first entry from the second), and then $x_1 = 0$. So $\mathcal{N}(\mathbf{A}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2\right\}\mathclose{}$ and the two columns are linearly independent.
>
> For $\mathbf{B} = \begin{bmatrix} 1 & 2 \\ 1 & 2 \\ 1 & 2 \end{bmatrix}$, $\mathbf{B} (2, -1) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$, so $\mathcal{N}(\mathbf{B})$ contains a nonzero vector and the columns of $\mathbf{B}$ are linearly dependent.

> **NOTE:**
>
> **Exercise 7 (Testing independent columns through the null space)** [Theorem 3](#thm-independent-null-space) turns a question about independence into one about solving $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 2 \\ 2 & 4 \\ 0 & 1\end{bmatrix}.$$
>
> Decide whether the [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$ are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent).
>
> > **TIP:**
> >
> > Solve $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$, starting with the third entry.

> **NOTE:**
>
> *Solution 7*. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (x_1, x_2)$,
>
> $$\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \begin{bmatrix}x_1 + 2 x_2 \\ 2 x_1 + 4 x_2 \\ x_2\end{bmatrix}.$$
>
> The third entry gives $x_2 = 0$, and then the first gives $x_1 = 0$. So $\mathcal{N}(\mathbf{A}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2\right\}\mathclose{}$, and by [Theorem 3](#thm-independent-null-space) the [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$ are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent).

> **NOTE:**
>
> **Theorem 4 (The row space and null space share only the zero vector)** For any $m \times n$ matrix $\mathbf{A}$,
>
> $$\mathcal{C}({\mathbf{A}}^{\top}) \cap \mathcal{N}(\mathbf{A}) = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n\right\}\mathclose{}.$$

> **NOTE:**
>
> *Proof*. Both sets are subspaces, by [Theorem 1](#thm-column-space-span) and [Theorem 2](#thm-null-space-subspace), so both contain $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n$ ([Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)).
>
> Now take any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ in both sets. Being in the row space means $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = {\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathbb{R}^m$ ([Definition 1](#def-column-space)), and being in the null space means $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$ ([Definition 3](#def-null-space)). Then
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= {({\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}})}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(substitute } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = {\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \text{ in the first factor)}
> \\
> &= \mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\,{({\mathbf{A}}^{\top})}^{\top}\right)\mathclose{}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= \mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top} \mathbf{A}\right)\mathclose{}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(transposing twice returns the original matrix)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\,(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m
> && \text{(substitute } \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m \text{)}
> \\
> &= 0.
> && \text{(every term of the inner product is } 0 \text{)}
> \end{aligned}$$
>
> But ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = x_1^2 + \cdots + x_n^2$, which is $0$ only when every $x_i = 0$. So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n$.

> **NOTE:**
>
> **Example 6 (The row space and null space in [Example 3](#exm-null-space))** For $\mathbf{A}$ in [Example 1](#exm-column-space), the row space is $\operatorname{span}\mathopen{}\left\{(1, -2, -2)\right\}\mathclose{}$ and the null space is $\operatorname{span}\mathopen{}\left\{(2, 1, 0), (2, 0, 1)\right\}\mathclose{}$ ([Example 3](#exm-null-space)). A vector $c\,(1, -2, -2)$ of the row space is in the null space only if
>
> $$\begin{aligned}
> \mathbf{A}\,\mathopen{}\left(c\,(1, -2, -2)\right)\mathclose{}
> &= c\,\mathopen{}\left(1 - 2 \cdot(-2) - 2 \cdot(-2),\; 3\,(1 - 2 \cdot(-2) - 2 \cdot(-2))\right)\mathclose{}
> && \text{(}\href{#exm-null-space}{\text{Example~3}}\text{'s formula for } \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \text{)}
> \\
> &= c\,(9, 27)
> && \text{(arithmetic)}
> \end{aligned}$$
>
> is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$, that is, only if $c = 0$. So the two subspaces share only $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$.

> **NOTE:**
>
> **Exercise 8 (Testing a row-space vector against the null space)** [Theorem 4](#thm-row-null-disjoint) says that a nonzero vector in the [row space](#def-row-space) is never in the [null space](#def-null-space). Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 1 & 0 \\ 0 & 1 & 1\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \begin{bmatrix}1 \\ 2 \\ 1\end{bmatrix},$$
>
> so that $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (1, 1, 0) + (0, 1, 1)$ adds the two [rows of](linear-algebra-matrices.llms.md#def-matrix-row) $\mathbf{A}$.
>
> Check that $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is not in $\mathcal{N}(\mathbf{A})$.
>
> > **TIP:**
> >
> > Multiply each [row of](linear-algebra-matrices.llms.md#def-matrix-row) $\mathbf{A}$ by $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$.

> **NOTE:**
>
> *Solution 8*. Here
>
> $$\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> = \begin{bmatrix}1 + 2 + 0 \\ 0 + 2 + 1\end{bmatrix}
> = \begin{bmatrix}3 \\ 3\end{bmatrix}
> \neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2,$$
>
> so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is not in $\mathcal{N}(\mathbf{A})$, as [Theorem 4](#thm-row-null-disjoint) requires of a nonzero vector in the [row space](#def-row-space).

> **NOTE:**
>
> **Definition 5 (Cross-product matrix)** Let $\mathbf{A}$ be an $m \times n$ matrix with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n$ and $\mathbf{B}$ an $m \times q$ matrix with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_q$. The **cross-product matrix** of $\mathbf{A}$ and $\mathbf{B}$ is the $n \times q$ matrix ${\mathbf{A}}^{\top} \mathbf{B}$, whose entry $(i, j)$ is the dot product $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_j$.

This is what R’s `crossprod(A, B)` computes, and `crossprod(A)` is ${\mathbf{A}}^{\top} \mathbf{A}$. In NumPy it has no name of its own: write `A.T @ B`.

For two column vectors it is the $1 \times 1$ matrix holding their [dot product](linear-algebra-vectors.llms.md#def-dot-product). It is unrelated to the cross product $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \times \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ of two vectors in $\mathbb{R}^3$, and differs from the Frobenius inner product $\operatorname{tr}\mathopen{}\left({\mathbf{A}}^{\top} \mathbf{B}\right)\mathclose{}$, which sums the diagonal of this matrix into a single number.

> **NOTE:**
>
> **Example 7 (A cross-product matrix)** Let $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \\ 0 & 1 \end{bmatrix}$ and $\mathbf{B} = \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}$. Then ${\mathbf{A}}^{\top} \mathbf{B}$ is $2 \times 1$, and
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top} \mathbf{B}
> &= \begin{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_1 \\ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_1 \end{bmatrix}
> && \text{(}\href{#def-cross-product-matrix}{\text{Definition~5}}\text{)}
> \\
> &= \begin{bmatrix} 1 + 2 + 0 \\ 0 + 2 + 3 \end{bmatrix}
> && \text{(multiply and add)}
> \\
> &= \begin{bmatrix} 3 \\ 5 \end{bmatrix}.
> && \text{(add)}
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 9 (Computing a cross-product matrix)** In R, `crossprod(A, B)` computes the [cross-product matrix](#def-cross-product-matrix) ${\mathbf{A}}^{\top} \mathbf{B}$. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 0 \\ 1 & 1\end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix}2 \\ 3\end{bmatrix}.$$
>
> Compute ${\mathbf{A}}^{\top} \mathbf{B}$.
>
> > **TIP:**
> >
> > Entry $i$ is the [dot product](linear-algebra-vectors.llms.md#def-dot-product) of [column](linear-algebra-matrices.llms.md#def-matrix-column) $i$ of $\mathbf{A}$ with $(2, 3)$.

> **NOTE:**
>
> *Solution 9*. The [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$ are $(1, 1)$ and $(0, 1)$, so
>
> $${\mathbf{A}}^{\top} \mathbf{B}
> = \begin{bmatrix}1 \cdot 2 + 1 \cdot 3 \\ 0 \cdot 2 + 1 \cdot 3\end{bmatrix}
> = \begin{bmatrix}5 \\ 3\end{bmatrix}.$$

> **NOTE:**
>
> *Remark 1* (Column-column products). Ordinary [matrix multiplication](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult) pairs a row of the left factor with a column of the right factor, which makes each entry a [row-by-column product](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult) [\[2, Sec. 2\]](#ref-northwestern_linalg_chap1). Each entry of a [cross-product matrix](#def-cross-product-matrix) instead pairs a column of $\mathbf{A}$ with a column of $\mathbf{B}$, so in these notes we call it a column-column [product](linear-algebra-vectors.llms.md#def-dot-product).

> **NOTE:**
>
> **Definition 6 (Gram matrix)** The **Gram matrix** [\[3\]](#ref-wikipedia_gram_matrix) of an $m \times n$ matrix $\mathbf{A}$ is the $n \times n$ matrix ${\mathbf{A}}^{\top} \mathbf{A}$, the [cross-product matrix](#def-cross-product-matrix) of $\mathbf{A}$ with itself.

> **NOTE:**
>
> **Example 8 (A Gram matrix and its entries)** Let $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \\ 0 & 1 \end{bmatrix}$, with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = (1, 1, 0)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = (0, 1, 1)$. Then
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top} \mathbf{A}
> &= \begin{bmatrix} 1 & 1 & 0 \\ 0 & 1 & 1 \end{bmatrix}
> \begin{bmatrix} 1 & 0 \\ 1 & 1 \\ 0 & 1 \end{bmatrix}
> && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~6 in Matrices}}\text{)}
> \\
> &= \begin{bmatrix}
> 1 \cdot 1 + 1 \cdot 1 + 0 \cdot 0 & 1 \cdot 0 + 1 \cdot 1 + 0 \cdot 1 \\
> 0 \cdot 1 + 1 \cdot 1 + 1 \cdot 0 & 0 \cdot 0 + 1 \cdot 1 + 1 \cdot 1
> \end{bmatrix}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{)}
> \\
> &= \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}.
> && \text{(multiply and add)}
> \end{aligned}$$
>
> Row $i$ of ${\mathbf{A}}^{\top}$ is column $i$ of $\mathbf{A}$, so entry $(i, j)$ of the Gram matrix is the dot product $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$: for instance,
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 &= 0 + 1 + 0 \\
> &= 1
> \end{aligned}$$
>
> is entry $(1, 2)$.

> **NOTE:**
>
> **Exercise 10 (Computing a Gram matrix)** The [Gram matrix](#def-gram-matrix) holds the [dot products](linear-algebra-vectors.llms.md#def-dot-product) of every pair of [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 2 \\ 0 & 1 \\ 1 & 0\end{bmatrix}.$$
>
> Compute ${\mathbf{A}}^{\top}\mathbf{A}$.
>
> > **TIP:**
> >
> > Entry $(i, j)$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$, so entries $(1, 2)$ and $(2, 1)$ agree.

> **NOTE:**
>
> *Solution 10*. The [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$ are $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = (1, 0, 1)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = (2, 1, 0)$, so
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 &= 1 + 0 + 1 = 2,
> \\
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 &= 2 + 0 + 0 = 2,
> \\
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 &= 4 + 1 + 0 = 5,
> \end{aligned}$$
>
> and
>
> $${\mathbf{A}}^{\top}\mathbf{A} = \begin{bmatrix}2 & 2 \\ 2 & 5\end{bmatrix}.$$

> **NOTE:**
>
> **Theorem 5 (The cross-product matrix is the sum of the outer products of the rows)** Let $\mathbf{A}$ be an $m \times n$ [matrix](linear-algebra-matrices.llms.md#def-matrix) with rows ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_1}^{\top}, \ldots, {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_m}^{\top}$. Let $\mathbf{B}$ be an $m \times q$ matrix with rows ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}_1}^{\top}, \ldots, {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}_m}^{\top}$. Then the [cross-product matrix](#def-cross-product-matrix) of $\mathbf{A}$ with $\mathbf{B}$ is
>
> $${\mathbf{A}}^{\top} \mathbf{B} = \sum_{i=1}^{m} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_i\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}_i}^{\top}.$$

> **NOTE:**
>
> *Proof*. Compare entry $(j, k)$ of each side.
>
> $$\begin{aligned}
> \mathopen{}\left({\mathbf{A}}^{\top} \mathbf{B}\right)\mathclose{}_{jk}
> &= \sum_{i=1}^{m} \mathopen{}\left(\mathbf{A}\right)\mathclose{}_{ij} \mathopen{}\left(\mathbf{B}\right)\mathclose{}_{ik}
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matrix-mult}{\text{Definition~1 in Matrix Multiplication}}\text{)}
> \\
> &= \sum_{i=1}^{m} \mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_i\right)\mathclose{}_j \mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}_i\right)\mathclose{}_k
> && \text{(entries of the rows)}
> \\
> &= \sum_{i=1}^{m} \mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_i\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}_i}^{\top}\right)\mathclose{}_{jk}
> && \text{(}\href{linear-algebra-inner-products.qmd#def-outer-product}{\text{Definition~17 in Inner Products and Orthogonality}}\text{)}
> \\
> &= \mathopen{}\left(\sum_{i=1}^{m} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_i\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}_i}^{\top}\right)\mathclose{}_{jk}.
> && \text{(entries of a sum)}
> \end{aligned}$$
>
> Every entry agrees, so the two matrices agree.

> **NOTE:**
>
> **Example 9 (The Gram matrix and a cross-product as sums of outer products)** Let $\mathbf{A} = \begin{bmatrix}1 & 0 \\ 1 & 1 \\ 0 & 1\end{bmatrix}$, $\mathbf{B} = \begin{bmatrix}1 \\ 2 \\ 3\end{bmatrix}$ be the matrices of [Example 7](#exm-cross-product-matrix). The rows of $\mathbf{A}$ are $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_1 = (1, 0)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_2 = (1, 1)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_3 = (0, 1)$. Taking $\mathbf{B} = \mathbf{A}$ in [Theorem 5](#thm-cross-product-sum-outer), the [Gram matrix](#def-gram-matrix) is the [sum](algebra-sums.llms.md#def-summation) of the [outer products](linear-algebra-inner-products.llms.md#def-outer-product) of the rows with themselves:
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top} \mathbf{A}
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_1\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_1}^{\top} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_2\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_2}^{\top} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_3\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_3}^{\top}
> && \text{(}\href{#thm-cross-product-sum-outer}{\text{Theorem~5}}\text{)}
> \\
> &= \begin{bmatrix}1 & 0 \\ 0 & 0\end{bmatrix}
> + \begin{bmatrix}1 & 1 \\ 1 & 1\end{bmatrix}
> + \begin{bmatrix}0 & 0 \\ 0 & 1\end{bmatrix}
> && \text{(}\href{linear-algebra-inner-products.qmd#def-outer-product}{\text{Definition~17 in Inner Products and Orthogonality}}\text{)}
> \\
> &= \begin{bmatrix}2 & 1 \\ 1 & 2\end{bmatrix}.
> && \text{(add)}
> \end{aligned}$$
>
> This is the Gram matrix of [Example 8](#exm-gram-matrix). Now keep the column $\mathbf{B}$ above. Its rows are the 1-vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}_1 = (1)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}_2 = (2)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}_3 = (3)$, so
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top} \mathbf{B}
> &= 1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_1 + 2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_2 + 3 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{r}}\vphantom{r}}_3
> && \text{(}\href{#thm-cross-product-sum-outer}{\text{Theorem~5}}\text{)}
> \\
> &= \begin{bmatrix}1 \\ 0\end{bmatrix}
> + \begin{bmatrix}2 \\ 2\end{bmatrix}
> + \begin{bmatrix}0 \\ 3\end{bmatrix}
> && \text{(scalar multiples)}
> \\
> &= \begin{bmatrix}3 \\ 5\end{bmatrix},
> && \text{(add)}
> \end{aligned}$$
>
> the same as in [Example 7](#exm-cross-product-matrix).

> **NOTE:**
>
> **Exercise 11 (Computing a cross-product matrix one row at a time)** [Theorem 5](#thm-cross-product-sum-outer) builds a [cross-product matrix](#def-cross-product-matrix) by adding one [outer product](linear-algebra-inner-products.llms.md#def-outer-product) per [row](linear-algebra-matrices.llms.md#def-matrix-row), which is how it can be updated as observations arrive. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 2 \\ 0 & 1\end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix}3 \\ 1\end{bmatrix}.$$
>
> Compute ${\mathbf{A}}^{\top} \mathbf{B}$ by adding two outer products.
>
> > **TIP:**
> >
> > [Rows of](linear-algebra-matrices.llms.md#def-matrix-row) $\mathbf{A}$ are $(1, 2)$ and $(0, 1)$, and rows of $\mathbf{B}$ are $3$ and $1$.

> **NOTE:**
>
> *Solution 11*. By [Theorem 5](#thm-cross-product-sum-outer),
>
> $${\mathbf{A}}^{\top} \mathbf{B}
> = \begin{bmatrix}1 \\ 2\end{bmatrix} \begin{bmatrix}3\end{bmatrix} + \begin{bmatrix}0 \\ 1\end{bmatrix} \begin{bmatrix}1\end{bmatrix}
> = \begin{bmatrix}3 \\ 6\end{bmatrix} + \begin{bmatrix}0 \\ 1\end{bmatrix}
> = \begin{bmatrix}3 \\ 7\end{bmatrix}.$$
>
> Multiplying directly gives the same: ${\mathbf{A}}^{\top}\mathbf{B} = (1 \cdot 3 + 0 \cdot 1,\; 2 \cdot 3 + 1 \cdot 1) = (3, 7)$.

> **NOTE:**
>
> **Theorem 6 (**${\mathbf{A}}^{\top} \mathbf{A}$ has the same null space as $\mathbf{A}$) For any $m \times n$ matrix $\mathbf{A}$,
>
> $$\mathcal{N}({\mathbf{A}}^{\top} \mathbf{A}) = \mathcal{N}(\mathbf{A}).$$

> **NOTE:**
>
> *Proof*. $\mathcal{N}(\mathbf{A}) \subseteq \mathcal{N}({\mathbf{A}}^{\top} \mathbf{A})$. If $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$, then
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= {\mathbf{A}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n.
> \end{aligned}$$
>
> $\mathcal{N}({\mathbf{A}}^{\top} \mathbf{A}) \subseteq \mathcal{N}(\mathbf{A})$. If ${\mathbf{A}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n$, then
>
> $$\begin{aligned}
> 0
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n
> && \text{(every term of the inner product is } 0 \text{)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\,\mathopen{}\left({\mathbf{A}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right)\mathclose{}
> && \text{(substitute } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_n = {\mathbf{A}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \text{)}
> \\
> &= \mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} {\mathbf{A}}^{\top}\right)\mathclose{}\,(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-matmul-assoc}{\text{Theorem~1 in Matrix Multiplication}}\text{)}
> \\
> &= {(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})}^{\top}\,(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#thm-transpose-product}{\text{Theorem~6 in Matrix Multiplication}}\text{)}
> \\
> &= (\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \cdot (\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#exm-dot-product-matmul}{\text{Example~3 in Matrix Multiplication}}\text{)}
> \\
> &= \mathopen{}\left\lVert\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{}^2.
> && \text{(square both sides of }\href{linear-algebra-vectors.qmd#eq-norm-dot-product}{\text{Equation~5 in Vectors}}\text{)}
> \end{aligned}$$
>
> A vector whose Euclidean norm is $0$ has every entry $0$, so $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_m$.

> **NOTE:**
>
> **Example 10 (The null space of a Gram matrix)** For $\mathbf{A}$ in [Example 1](#exm-column-space),
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top} \mathbf{A}
> &= \begin{bmatrix} 1 & 3 \\ -2 & -6 \\ -2 & -6 \end{bmatrix}
>   \begin{bmatrix} 1 & -2 & -2 \\ 3 & -6 & -6 \end{bmatrix} \\
> &= \begin{bmatrix} 10 & -20 & -20 \\ -20 & 40 & 40 \\ -20 & 40 & 40 \end{bmatrix}.
> \end{aligned}$$
>
> Every row is a multiple of $(1, -2, -2)$, so ${\mathbf{A}}^{\top} \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$ exactly when $x_1 - 2x_2 - 2x_3 = 0$, the same condition as for $\mathcal{N}(\mathbf{A})$ in [Example 3](#exm-null-space).

> **NOTE:**
>
> **Exercise 12 (Finding the null space of a Gram matrix)** [Theorem 6](#thm-null-gram) lets the [null space](#def-null-space) of a [Gram matrix](#def-gram-matrix) be read off from the original [matrix](linear-algebra-matrices.llms.md#def-matrix). Let $\mathbf{A}$ be the $3 \times 2$ matrix whose every entry is $1$.
>
> Find $\mathcal{N}({\mathbf{A}}^{\top}\mathbf{A})$.
>
> > **TIP:**
> >
> > Find $\mathcal{N}(\mathbf{A})$ first. Each entry of $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is $x_1 + x_2$.

> **NOTE:**
>
> *Solution 12*. Each entry of $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is $x_1 + x_2$, so $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_3$ exactly when $x_2 = -x_1$, and $\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(1, -1)\right\}\mathclose{}$. By [Theorem 6](#thm-null-gram),
>
> $$\mathcal{N}({\mathbf{A}}^{\top}\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(1, -1)\right\}\mathclose{}.$$
>
> As a check, ${\mathbf{A}}^{\top}\mathbf{A} = \begin{bmatrix}3 & 3 \\ 3 & 3\end{bmatrix}$, which sends $(1, -1)$ to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$.

# Definitions on this page

- [Definition 1 (Column space, range, image)](#def-column-space)
- [Definition 2 (Row space)](#def-row-space)
- [Definition 3 (Null space, kernel)](#def-null-space)
- [Definition 4 (Left null space)](#def-left-null-space)
- [Definition 5 (Cross-product matrix)](#def-cross-product-matrix)
- [Definition 6 (Gram matrix)](#def-gram-matrix)

Back to top

## References

\[1\]

Wikipedia contributors, “Row and column spaces — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Row_and_column_spaces>

\[2\]

“Chapter I: Linear algebra, basic notions.” Lecture notes, Department of Mathematics, Northwestern University. Available: <https://sites.math.northwestern.edu/len/LinAlg/chap1.pdf>

\[3\]

Wikipedia contributors, “Gram matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Gram_matrix>
