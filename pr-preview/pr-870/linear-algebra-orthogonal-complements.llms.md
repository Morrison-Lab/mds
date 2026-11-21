# Orthogonal Complements and the Fundamental Theorem

Code

Published

Last modified: 2026-11-20 15:19:01 (PST)

# 1 Orthogonal complements

> **NOTE:**
>
> **Theorem 1 (The dot product is linear in each slot)** For vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathbb{R}^p$ and numbers $a, b$,
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (a\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + b\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> = a\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) + b\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})$$
>
> and
>
> $$(a\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + b\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> = a\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) + b\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}).$$

> **NOTE:**
>
> *Proof*. **Second slot.**
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (a\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + b\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> &= \sum_{i=1}^px_i\,(a\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + b\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})_i
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \\
> &= \sum_{i=1}^px_i\,(a u_i + b w_i)
> && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{, }\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~9 in Vectors}}\text{)}
> \\
> &= \sum_{i=1}^p\mathopen{}\left(x_i a u_i + x_i b w_i\right)\mathclose{}
> && \text{(distribute each } x_i \text{)}
> \\
> &= \sum_{i=1}^p\mathopen{}\left(a\,x_i u_i + b\,x_i w_i\right)\mathclose{}
> && \text{(commute the factors in each product)}
> \\
> &= \sum_{i=1}^pa\,x_i u_i + \sum_{i=1}^pb\,x_i w_i
> && \text{(split the finite sum)}
> \\
> &= a \sum_{i=1}^px_i u_i + b \sum_{i=1}^px_i w_i
> && \text{(factor } a \text{ and } b \text{ out of the sums)}
> \\
> &= a\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) + b\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}).
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \end{aligned}$$
>
> **First slot.**
>
> $$\begin{aligned}
> (a\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + b\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (a\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + b\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> && \text{(}\href{linear-algebra-vectors.qmd#thm-lincom-symmetric}{\text{Theorem~1 in Vectors}}\text{)}
> \\
> &= a\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) + b\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> && \text{(second slot)}
> \\
> &= a\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) + b\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}).
> && \text{(}\href{linear-algebra-vectors.qmd#thm-lincom-symmetric}{\text{Theorem~1 in Vectors}}\text{, twice)}
> \end{aligned}$$
>
> Two special cases are used often. With
>
> $$\begin{aligned}
> a &= b \\
> &= 1,
> \end{aligned}$$
>
> and $1\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$, the theorem gives $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$. With $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ and $b = 0$, and $0\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, it gives $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (a\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) = a\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}})$, and likewise in the first slot.

> **NOTE:**
>
> **Example 1 (Splitting a dot product)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (1, 2)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (3, 0)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = (0, 1)$, $a = 2$ and $b = -1$. Directly, $a\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + b\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = (6, -1)$ and
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (6, -1) &= 6 - 2 \\
> &= 4.
> \end{aligned}$$
>
> By [Theorem 1](#thm-dot-linear),
>
> $$\begin{aligned}
> a\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) + b\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}) &= 2 \cdot 3 + (-1) \cdot 2 \\
> &= 4,
> \end{aligned}$$
>
> the same number.

> **NOTE:**
>
> **Exercise 1 (Finding a dot product from two known dot products)** [Theorem 1](#thm-dot-linear) lets a [dot product](linear-algebra-vectors.llms.md#def-dot-product) with a combination be found from the dot products with its parts. Suppose that $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = 3$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = -1$.
>
> Find $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (2\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + 5\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})$.
>
> > **TIP:**
> >
> > Use [Theorem 1](#thm-dot-linear) with $a = 2$ and $b = 5$.

> **NOTE:**
>
> *Solution 1*. By [Theorem 1](#thm-dot-linear),
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (2\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + 5\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> = 2\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) + 5\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> = 2 \cdot 3 + 5 \cdot(-1)
> = 1.$$

> **NOTE:**
>
> **Definition 1 (Orthogonal complement)** The **orthogonal complement** [\[1\]](#ref-wikipedia_orthogonal_complement) of a set $\mathcal{X}$ of vectors in $\mathbb{R}^p$ is the set of vectors orthogonal ([Definition 22 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)) to every vector of $\mathcal{X}$:
>
> $$\mathcal{X}^\perp
> \stackrel{\text{def}}{=}
> \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathbb{R}^p : \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = 0 \text{ for all } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{X}\right\}\mathclose{}.$$
>
> $\mathcal{X}^\perp$ is read “$\mathcal{X}$ perp”.

> **NOTE:**
>
> **Example 2 (Orthogonal complements in** $\mathbb{R}^3$)  
>
> - **A plane.** Let $\mathcal{X} = \mathopen{}\left\{(a, b, 0) : a, b \in \mathbb{R}\right\}\mathclose{}$, the plane $z = 0$. A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is in $\mathcal{X}^\perp$ when
>
>   $$\begin{aligned}
>   (a, b, 0) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} &= a u_1 + b u_2 \\
>   &= 0
>   \end{aligned}$$
>
>   for all $a$ and $b$. Taking $(a, b) = (1, 0)$ forces $u_1 = 0$, and taking $(a, b) = (0, 1)$ forces $u_2 = 0$; conversely, if
>
>   $$\begin{aligned}
>   u_1 &= u_2 \\
>   &= 0,
>   \end{aligned}$$
>
>   then $a u_1 + b u_2 = 0$ for all $a$ and $b$. So $\mathcal{X}^\perp = \mathopen{}\left\{(0, 0, c) : c \in \mathbb{R}\right\}\mathclose{}$, the $z$-axis.
>
> - **Two vectors.** The two-element set $\mathopen{}\left\{(1, 0, 0), (0, 1, 0)\right\}\mathclose{}$ is not a subspace, and its orthogonal complement is the $z$-axis too: the two conditions $u_1 = 0$ and $u_2 = 0$ are the same as for the plane.
>
> - **The extremes.** $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}^\perp = \mathbb{R}^3$, because $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = 0$ for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$. $(\mathbb{R}^3)^\perp = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, because a $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ in it is orthogonal to itself, and
>
>   $$\begin{aligned}
>   \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} &= u_1^2 + u_2^2 + u_3^2 \\
>   &= 0
>   \end{aligned}$$
>
>   forces $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Exercise 2 (Testing whether a vector is in an orthogonal complement)** A vector is in the [orthogonal complement](#def-orthogonal-complement) of a [set](https://morrison-lab.github.io/mcs/sets.html#def-set) when it is [orthogonal](linear-algebra-vectors.llms.md#def-orthogonal-vectors) to every vector of the set. Let $\mathcal{X} = \mathopen{}\left\{(1, 2, 0), (0, 3, 1)\right\}\mathclose{}$, a set of two vectors in $\mathbb{R}^3$.
>
> Decide whether the vector $(2, -1, 3)$ is in $\mathcal{X}^\perp$.
>
> > **TIP:**
> >
> > Take the [dot product](linear-algebra-vectors.llms.md#def-dot-product) of $(2, -1, 3)$ with each vector of $\mathcal{X}$.

> **NOTE:**
>
> *Solution 2*. Here
>
> $$\begin{aligned}
> (1, 2, 0) \cdot (2, -1, 3) &= 2 - 2 + 0 = 0,
> \\
> (0, 3, 1) \cdot (2, -1, 3) &= 0 - 3 + 3 = 0,
> \end{aligned}$$
>
> so $(2, -1, 3)$ is [orthogonal](linear-algebra-vectors.llms.md#def-orthogonal-vectors) to both vectors of $\mathcal{X}$, and it is in $\mathcal{X}^\perp$.

> **NOTE:**
>
> *Remark 1* (The orthogonal complement of a set that is not a subspace). $\mathcal{X}$ in [Definition 1](#def-orthogonal-complement) need not be a subspace.

> **NOTE:**
>
> **Theorem 2 (An orthogonal complement is a subspace)** For any set $\mathcal{X}$ of vectors in $\mathbb{R}^p$, $\mathcal{X}^\perp$ ([Definition 1](#def-orthogonal-complement)) is a subspace of $\mathbb{R}^p$ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)).

> **NOTE:**
>
> *Proof*. $\mathcal{X}^\perp$ is not empty:
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}&= \sum_i x_i \cdot 0 \\
> &= 0
> \end{aligned}$$
>
> for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\in \mathcal{X}^\perp$. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathcal{X}^\perp$, let $c \in \mathbb{R}$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{X}$.
>
> **Addition.**
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> && \text{(}\href{#thm-dot-linear}{\text{Theorem~1}}\text{, special case } a \text{ and } b \text{ both equal to } 1 \text{)}
> \\
> &= 0 + 0
> && \text{(} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathcal{X}^\perp \text{)}
> \\
> &= 0.
> && \text{(arithmetic)}
> \end{aligned}$$
>
> **Scalar multiplication.**
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}})
> &= c\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}})
> && \text{(}\href{#thm-dot-linear}{\text{Theorem~1}}\text{, special case } b = 0 \text{)}
> \\
> &= c \cdot 0
> && \text{(} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{X}^\perp \text{)}
> \\
> &= 0.
> && \text{(arithmetic)}
> \end{aligned}$$
>
> These two equations hold for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{X}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ and $c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ are in $\mathcal{X}^\perp$.

> **NOTE:**
>
> **Example 3 (The complement of a single vector is a line)** The one-element set $\mathcal{X} = \mathopen{}\left\{(1, 2)\right\}\mathclose{}$ in $\mathbb{R}^2$ is not a subspace: $2\,(1, 2) = (2, 4)$ is not in it. Its orthogonal complement is
>
> $$\begin{aligned}
> \mathcal{X}^\perp
> &= \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathbb{R}^2 : u_1 + 2 u_2 = 0\right\}\mathclose{} \\
> &= \mathopen{}\left\{c\,(-2, 1) : c \in \mathbb{R}\right\}\mathclose{},
> \end{aligned}$$
>
> since $u_1 + 2u_2 = 0$ means
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} &= (-2u_2, u_2) \\
> &= u_2\,(-2, 1).
> \end{aligned}$$
>
> That set is $\operatorname{span}\mathopen{}\left\{(-2, 1)\right\}\mathclose{}$, a subspace by [Theorem 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-span-subspace), as [Theorem 2](#thm-orthogonal-complement-subspace) says it must be. It contains $(-2, 1)$, the vector [Remark 8 in Vectors](linear-algebra-vectors.llms.md#rem-orthogonal-perpendicular) found perpendicular to $(1, 2)$.

> **NOTE:**
>
> **Exercise 3 (Finding the orthogonal complement of two vectors)** [Theorem 2](#thm-orthogonal-complement-subspace) says that an [orthogonal complement](#def-orthogonal-complement) is always a [subspace](linear-algebra-subspaces.llms.md#def-subspace), even when the original [set](https://morrison-lab.github.io/mcs/sets.html#def-set) is not. Let $\mathcal{X} = \mathopen{}\left\{(1, 0, 1), (1, 0, -1)\right\}\mathclose{}$, a set of two vectors in $\mathbb{R}^3$.
>
> Find $\mathcal{X}^\perp$ as a [span](linear-algebra-subspaces.llms.md#def-span).
>
> > **TIP:**
> >
> > A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is in $\mathcal{X}^\perp$ when $u_1 + u_3 = 0$ and $u_1 - u_3 = 0$.

> **NOTE:**
>
> *Solution 3*. A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is in $\mathcal{X}^\perp$ exactly when $(1, 0, 1) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = u_1 + u_3 = 0$ and $(1, 0, -1) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = u_1 - u_3 = 0$. Adding the two equations gives $u_1 = 0$, and then $u_3 = 0$, while $u_2$ is free. So
>
> $$\mathcal{X}^\perp = \mathopen{}\left\{(0, u_2, 0) : u_2 \in \mathbb{R}\right\}\mathclose{} = \operatorname{span}\mathopen{}\left\{(0, 1, 0)\right\}\mathclose{},$$
>
> the second coordinate axis, which is a [subspace](linear-algebra-subspaces.llms.md#def-subspace), as [Theorem 2](#thm-orthogonal-complement-subspace) says.

> **NOTE:**
>
> **Theorem 3 (The orthogonal complement of a column space is a null space)** For any $m \times n$ matrix $\mathbf{A}$,
>
> $$\mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top}).$$

> **NOTE:**
>
> *Proof*. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n$ be the columns of $\mathbf{A}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j = (a_{1j}, \ldots, a_{mj})$. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^m$, entry $j$ of ${\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is
>
> $$\begin{aligned}
> ({\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_j
> &= \sum_{i=1}^{m} ({\mathbf{A}}^{\top})_{ji}\, x_i
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\
> &= \sum_{i=1}^{m} a_{ij}\, x_i
> && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~6 in Matrices}}\text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}.
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \end{aligned}$$
>
> So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{N}({\mathbf{A}}^{\top})$ ([Definition 3 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-null-space)) exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = 0$ for every column $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$.
>
> $\mathcal{C}(\mathbf{A})^\perp \subseteq \mathcal{N}({\mathbf{A}}^{\top})$. Each column $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$ is in $\mathcal{C}(\mathbf{A})$ ([Theorem 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-column-space-span)), so a vector orthogonal to all of $\mathcal{C}(\mathbf{A})$ is orthogonal to every column.
>
> $\mathcal{N}({\mathbf{A}}^{\top}) \subseteq \mathcal{C}(\mathbf{A})^\perp$. Suppose $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = 0$ for every $j$, and take any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \in \mathcal{C}(\mathbf{A})$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} \in \mathbb{R}^n$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)). Then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \sum_{i=1}^{m} (\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}})_i\, x_i
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \\
> &= \sum_{i=1}^{m} \mathopen{}\left(\sum_{j=1}^na_{ij} z_j\right)\mathclose{}\, x_i
> && \text{(}\href{linear-algebra-matrix-multiplication.qmd#def-matvec-mult}{\text{Definition~8 in Matrix Multiplication}}\text{)}
> \\
> &= \sum_{i=1}^{m} \sum_{j=1}^na_{ij}\, z_j\, x_i
> && \text{(distribute each } x_i \text{ over the inner sum)}
> \\
> &= \sum_{j=1}^n\sum_{i=1}^{m} a_{ij}\, z_j\, x_i
> && \text{(swap the order of the finite sums)}
> \\
> &= \sum_{j=1}^nz_j \sum_{i=1}^{m} a_{ij}\, x_i
> && \text{(commute, then factor } z_j \text{ out of the inner sum)}
> \\
> &= \sum_{j=1}^nz_j\, (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \\
> &= \sum_{j=1}^nz_j \cdot 0
> && \text{(each } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = 0 \text{)}
> \\
> &= 0.
> && \text{(arithmetic)}
> \end{aligned}$$
>
> So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is orthogonal to every vector of $\mathcal{C}(\mathbf{A})$.

> **NOTE:**
>
> **Example 4 (The complement of the column space in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space))** For $\mathbf{A}$ in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space), $\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(1, 3)\right\}\mathclose{}$ (1). [Example 3 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-null-space) found $\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\{(-3, 1)\right\}\mathclose{}$, so by [Theorem 3](#thm-complement-null-space) this line is $\mathcal{C}(\mathbf{A})^\perp$. Directly, for any $c$,
>
> $$\begin{aligned}
> \mathopen{}\left(c\,(1, 3)\right)\mathclose{} \cdot (-3, 1)
> &= c\,\mathopen{}\left((1, 3) \cdot (-3, 1)\right)\mathclose{}
> && \text{(}\href{#thm-dot-linear}{\text{Theorem~1}}\text{, special case } b = 0 \text{, first slot)}
> \\
> &= c\,(-3 + 3)
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \\
> &= 0.
> && \text{(arithmetic)}
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 4 (Finding the orthogonal complement of a column space)** [Theorem 3](#thm-complement-null-space) turns the [orthogonal complement](#def-orthogonal-complement) of a [column space](linear-algebra-column-null-space.llms.md#def-column-space) into a [null space](linear-algebra-column-null-space.llms.md#def-null-space), which a [linear system](linear-algebra-matrix-multiplication.llms.md#def-linear-system) describes. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 0 \\ 0 & 1 \\ 1 & 1\end{bmatrix}.$$
>
> Find $\mathcal{C}(\mathbf{A})^\perp$ as a [span](linear-algebra-subspaces.llms.md#def-span).
>
> > **TIP:**
> >
> > Solve ${\mathbf{A}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$.

> **NOTE:**
>
> *Solution 4*. By [Theorem 3](#thm-complement-null-space), $\mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top})$. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (y_1, y_2, y_3)$,
>
> $${\mathbf{A}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \begin{bmatrix}1 & 0 & 1 \\ 0 & 1 & 1\end{bmatrix} \begin{bmatrix}y_1 \\ y_2 \\ y_3\end{bmatrix} = \begin{bmatrix}y_1 + y_3 \\ y_2 + y_3\end{bmatrix},$$
>
> which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ exactly when $y_1 = y_2 = -y_3$. So
>
> $$\mathcal{C}(\mathbf{A})^\perp = \operatorname{span}\mathopen{}\left\{(-1, -1, 1)\right\}\mathclose{}.$$
>
> As a check, $(-1, -1, 1)$ is [orthogonal](linear-algebra-vectors.llms.md#def-orthogonal-vectors) to both [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$: $-1 + 0 + 1 = 0$ and $0 - 1 + 1 = 0$.

> **NOTE:**
>
> **Theorem 4 (A subspace and its orthogonal complement make up the whole space)** Let $\mathcal{S}$ be a subspace of $\mathbb{R}^p$. Then
>
> 1.  $\mathcal{S} \cap \mathcal{S}^\perp = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$;
> 2.  $\dim(\mathcal{S}) + \dim(\mathcal{S}^\perp) = p$;
> 3.  $\mathbb{R}^p = \mathcal{S} \oplus \mathcal{S}^\perp$ ([Definition 3 in Sums and Direct Sums](linear-algebra-direct-sums.llms.md#def-direct-sum)).
>
> So every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \in \mathbb{R}^p$ can be written as $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{S}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{S}^\perp$ in only one way ([Theorem 4 in Sums and Direct Sums](linear-algebra-direct-sums.llms.md#thm-direct-sum-equiv)).

> **NOTE:**
>
> *Proof*. $\mathcal{S}^\perp$ is a subspace ([Theorem 2](#thm-orthogonal-complement-subspace)), so it has a dimension ([Definition 4 in Bases and Dimension](linear-algebra-bases.llms.md#def-dimension)).
>
> **Part 1.** Both $\mathcal{S}$ and $\mathcal{S}^\perp$ contain $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ ([Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)). If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is in both, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is orthogonal to every vector of $\mathcal{S}$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ itself included, so
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= x_1^2 + \cdots + x_p^2 \\
> &= 0,
> \end{aligned}$$
>
> which forces every $x_i = 0$.
>
> **Part 2.** Let $d = \dim(\mathcal{S})$. If $d = 0$, then $\mathcal{S}$ has a basis ([Theorem 4 in Bases and Dimension](linear-algebra-bases.llms.md#thm-extend-basis)) with $0$ vectors ([Definition 4 in Bases and Dimension](linear-algebra-bases.llms.md#def-dimension)), the empty list, whose span is $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)); so $\mathcal{S} = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, $\mathcal{S}^\perp = \mathbb{R}^p$ (every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ satisfies $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = 0$), and $0 + p = p$ ([Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension)). If $d \ge 1$, choose a basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_d$ of $\mathcal{S}$ ([Theorem 4 in Bases and Dimension](linear-algebra-bases.llms.md#thm-extend-basis)), and let $\mathbf{A}$ be the $p \times d$ matrix with these columns. The basis spans $\mathcal{S}$, so $\mathcal{S} = \mathcal{C}(\mathbf{A})$ ([Theorem 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-column-space-span)), and $\mathcal{S}^\perp = \mathcal{N}({\mathbf{A}}^{\top})$ ([Theorem 3](#thm-complement-null-space)). ${\mathbf{A}}^{\top}$ is $d \times p$, so
>
> $$\begin{aligned}
> \dim(\mathcal{S}^\perp)
> &= \dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{}
> && \text{(}\href{#thm-complement-null-space}{\text{Theorem~3}}\text{)}
> \\
> &= \operatorname{nullity}({\mathbf{A}}^{\top})
> && \text{(}\href{linear-algebra-rank-nullity.qmd#def-nullity}{\text{Definition~1 in Rank-Nullity and Rank Factorization}}\text{)}
> \\
> &= p - \operatorname{rank}({\mathbf{A}}^{\top})
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-nullity}{\text{Theorem~2 in Rank-Nullity and Rank Factorization}}\text{, for the } p \text{ columns of } {\mathbf{A}}^{\top} \text{)}
> \\
> &= p - \operatorname{rank}(\mathbf{A})
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-transpose}{\text{Theorem~4 in Rank-Nullity and Rank Factorization}}\text{)}
> \\
> &= p - \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{}
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-dim}{\text{Theorem~1 in Rank-Nullity and Rank Factorization}}\text{)}
> \\
> &= p - d.
> && \text{(} \mathcal{C}(\mathbf{A}) = \mathcal{S} \text{)}
> \end{aligned}$$
>
> **Part 3.** $\mathcal{S} + \mathcal{S}^\perp$ is a subspace of $\mathbb{R}^p$ ([Theorem 1 in Sums and Direct Sums](linear-algebra-direct-sums.llms.md#thm-sum-intersection-subspace)), and
>
> $$\begin{aligned}
> \dim(\mathcal{S} + \mathcal{S}^\perp)
> &= \dim(\mathcal{S}) + \dim(\mathcal{S}^\perp) - \dim(\mathcal{S} \cap \mathcal{S}^\perp)
> && \text{(}\href{linear-algebra-direct-sums.qmd#thm-dim-sum}{\text{Theorem~2 in Sums and Direct Sums}}\text{)}
> \\
> &= p - \dim(\mathcal{S} \cap \mathcal{S}^\perp)
> && \text{(part 2)}
> \\
> &= p - 0
> && \text{(part 1, and } \dim(\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}) = 0 \text{ by }\href{linear-algebra-bases.qmd#exm-dimension}{\text{Example~6 in Bases and Dimension}}\text{)}
> \\
> &= p.
> && \text{(arithmetic)}
> \end{aligned}$$
>
> Since $\mathcal{S} + \mathcal{S}^\perp \subseteq \mathbb{R}^p$, $\mathbb{R}^p$ is a subspace ([Example 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-subspace)) and $\dim(\mathbb{R}^p) = p$ ([Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension)), [Theorem 6 in Bases and Dimension](linear-algebra-bases.llms.md#thm-subspace-equal-dim) gives $\mathcal{S} + \mathcal{S}^\perp = \mathbb{R}^p$. Together with part 1, $\mathbb{R}^p = \mathcal{S} \oplus \mathcal{S}^\perp$. The uniqueness of the split then follows from [Theorem 4 in Sums and Direct Sums](linear-algebra-direct-sums.llms.md#thm-direct-sum-equiv) (statement 1 implies statement 3).

> **NOTE:**
>
> **Example 5 (Splitting a vector of** $\mathbb{R}^3$ along a line and its complement) Let $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$ in $\mathbb{R}^3$. A single nonzero vector is linearly independent ($c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ forces $c = 0$), so $(1, 1, 0)$ is a basis of $\mathcal{S}$ and $\dim(\mathcal{S}) = 1$. A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is in $\mathcal{S}^\perp$ exactly when $u_1 + u_2 = 0$: that condition says $(1, 1, 0) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = 0$, and then
>
> $$\begin{aligned}
> c\,(1, 1, 0) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} &= c\,(u_1 + u_2) \\
> &= 0
> \end{aligned}$$
>
> for every $c$. So
>
> $$\begin{aligned}
> \mathcal{S}^\perp &= \mathopen{}\left\{(a, -a, c) : a, c \in \mathbb{R}\right\}\mathclose{} \\
> &= \operatorname{span}\mathopen{}\left\{(1, -1, 0), (0, 0, 1)\right\}\mathclose{}.
> \end{aligned}$$
>
> Those two vectors are linearly independent, because $a\,(1, -1, 0) + c\,(0, 0, 1) = (a, -a, c)$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only if
>
> $$\begin{aligned}
> a &= c \\
> &= 0,
> \end{aligned}$$
>
> so $\dim(\mathcal{S}^\perp) = 2$, and $1 + 2 = 3$, as part 2 says.
>
> To split $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (3, 1, 2)$, look for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = t\,(1, 1, 0)$ with
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \\
> &= (3 - t, 1 - t, 2)
> \end{aligned}$$
>
> in $\mathcal{S}^\perp$: that membership needs $(3 - t) + (1 - t) = 0$, so $t = 2$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (2, 2, 0)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (1, -1, 2)$, with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (3, 1, 2)$ and
>
> $$\begin{aligned}
> (1, 1, 0) \cdot (1, -1, 2) &= 1 - 1 + 0 \\
> &= 0.
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 5 (Splitting a vector into a piece in a line and an orthogonal piece)** By [Theorem 4](#thm-orthogonal-direct-sum), every vector of $\mathbb{R}^p$ splits in only one way into a piece in a [subspace](linear-algebra-subspaces.llms.md#def-subspace) $\mathcal{S}$ and a piece in its [orthogonal complement](#def-orthogonal-complement). Let $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 2)\right\}\mathclose{}$, a line in $\mathbb{R}^2$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (5, 0)$.
>
> Find $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{S}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{S}^\perp$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$.
>
> > **TIP:**
> >
> > Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = t\,(1, 2)$, and choose $t$ so that $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is [orthogonal](linear-algebra-vectors.llms.md#def-orthogonal-vectors) to $(1, 2)$.

> **NOTE:**
>
> *Solution 5*. Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = t\,(1, 2)$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (5 - t, -2t)$ is in $\mathcal{S}^\perp$ exactly when
>
> $$(1, 2) \cdot (5 - t, -2t) = 5 - t - 4t = 5 - 5t = 0,$$
>
> so $t = 1$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 2)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (4, -2)$, with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (5, 0)$ and $(1, 2) \cdot (4, -2) = 4 - 4 = 0$.

> **NOTE:**
>
> **Theorem 5 (The orthogonal complement of the orthogonal complement)** For any subspace $\mathcal{S}$ of $\mathbb{R}^p$,
>
> $$(\mathcal{S}^\perp)^\perp = \mathcal{S}.$$

> **NOTE:**
>
> *Proof*. $\mathcal{S} \subseteq (\mathcal{S}^\perp)^\perp$. Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} \in \mathcal{S}$ and any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{S}^\perp$. By [Definition 1](#def-orthogonal-complement), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = 0$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} = 0$ too ([Theorem 1 in Vectors](linear-algebra-vectors.llms.md#thm-lincom-symmetric)). So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}$ is orthogonal to every vector of $\mathcal{S}^\perp$, that is, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} \in (\mathcal{S}^\perp)^\perp$.
>
> **Equal dimensions.** $\mathcal{S}^\perp$ is a subspace ([Theorem 2](#thm-orthogonal-complement-subspace)), so part 2 of [Theorem 4](#thm-orthogonal-direct-sum) applies to it as well as to $\mathcal{S}$:
>
> $$\begin{aligned}
> \dim\mathopen{}\left((\mathcal{S}^\perp)^\perp\right)\mathclose{}
> &= p - \dim(\mathcal{S}^\perp)
> && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~4}}\text{, applied to } \mathcal{S}^\perp \text{)}
> \\
> &= p - \mathopen{}\left(p - \dim(\mathcal{S})\right)\mathclose{}
> && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~4}}\text{, applied to } \mathcal{S} \text{)}
> \\
> &= \dim(\mathcal{S}).
> && \text{(arithmetic)}
> \end{aligned}$$
>
> $(\mathcal{S}^\perp)^\perp$ is a subspace ([Theorem 2](#thm-orthogonal-complement-subspace)) that contains $\mathcal{S}$ and has the same dimension, so it equals $\mathcal{S}$ ([Theorem 6 in Bases and Dimension](linear-algebra-bases.llms.md#thm-subspace-equal-dim)).

> **NOTE:**
>
> **Example 6 (Back to the line)** In [Example 5](#exm-orthogonal-direct-sum), $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$ and $\mathcal{S}^\perp = \operatorname{span}\mathopen{}\left\{(1, -1, 0), (0, 0, 1)\right\}\mathclose{}$. Put those two spanning vectors in the columns of the $3 \times 2$ matrix $\mathbf{B} = \begin{bmatrix} 1 & 0 \\ -1 & 0 \\ 0 & 1 \end{bmatrix}$, so $\mathcal{S}^\perp = \mathcal{C}(\mathbf{B})$ ([Theorem 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-column-space-span)) and $(\mathcal{S}^\perp)^\perp = \mathcal{N}({\mathbf{B}}^{\top})$ ([Theorem 3](#thm-complement-null-space)). Since ${\mathbf{B}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = (w_1 - w_2,\ w_3)$ ([Definition 8 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matvec-mult)), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in (\mathcal{S}^\perp)^\perp$ exactly when $w_1 - w_2 = 0$ and $w_3 = 0$. So
>
> $$\begin{aligned}
> (\mathcal{S}^\perp)^\perp &= \mathopen{}\left\{(a, a, 0) : a \in \mathbb{R}\right\}\mathclose{} \\
> &= \mathcal{S}.
> \end{aligned}$$

> **NOTE:**
>
> **Example 7 (A set that is not a subspace does not come back)** The one-element set $\mathcal{X} = \mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$ is not a subspace. Its orthogonal complement is the same as that of $\mathcal{S}$ in [Example 6](#exm-double-complement), since both are defined by the single condition $u_1 + u_2 = 0$, so $(\mathcal{X}^\perp)^\perp = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$, which contains $(2, 2, 0) \notin \mathcal{X}$. [Theorem 5](#thm-double-complement) needs $\mathcal{S}$ to be a subspace.

> **NOTE:**
>
> **Exercise 6 (Taking the orthogonal complement twice)** [Theorem 5](#thm-double-complement) says that taking the [orthogonal complement](#def-orthogonal-complement) of a [subspace](linear-algebra-subspaces.llms.md#def-subspace) twice gives back the subspace. Let $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 2)\right\}\mathclose{}$ in $\mathbb{R}^2$, whose orthogonal complement is $\mathcal{S}^\perp = \operatorname{span}\mathopen{}\left\{(-2, 1)\right\}\mathclose{}$.
>
> Find $(\mathcal{S}^\perp)^\perp$ directly from $\mathcal{S}^\perp = \operatorname{span}\mathopen{}\left\{(-2, 1)\right\}\mathclose{}$.
>
> > **TIP:**
> >
> > A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is [orthogonal](linear-algebra-vectors.llms.md#def-orthogonal-vectors) to every multiple of $(-2, 1)$ exactly when $-2 w_1 + w_2 = 0$.

> **NOTE:**
>
> *Solution 6*. A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is in $(\mathcal{S}^\perp)^\perp$ exactly when $c\,(-2, 1) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = c\,(-2 w_1 + w_2) = 0$ for every $c$, that is, when $w_2 = 2 w_1$. So
>
> $$(\mathcal{S}^\perp)^\perp = \mathopen{}\left\{(w_1, 2 w_1) : w_1 \in \mathbb{R}\right\}\mathclose{} = \operatorname{span}\mathopen{}\left\{(1, 2)\right\}\mathclose{} = \mathcal{S},$$
>
> as [Theorem 5](#thm-double-complement) says.

# 2 The fundamental theorem of linear algebra

> **NOTE:**
>
> **Theorem 6 (Fundamental theorem of linear algebra)** Let $\mathbf{A}$ be an $m \times n$ matrix with $\operatorname{rank}(\mathbf{A}) = r$. Then
>
> 1.  $\mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top})$, and $\mathbb{R}^m = \mathcal{C}(\mathbf{A}) \oplus \mathcal{N}({\mathbf{A}}^{\top})$;
>
> 2.  $\mathcal{C}(\mathbf{A}) = \mathcal{N}({\mathbf{A}}^{\top})^\perp$;
>
> 3.  $\mathcal{N}(\mathbf{A})^\perp = \mathcal{C}({\mathbf{A}}^{\top})$, and $\mathbb{R}^n = \mathcal{C}({\mathbf{A}}^{\top}) \oplus \mathcal{N}(\mathbf{A})$;
>
> 4.  $$\begin{aligned}
>     \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} &= \dim\mathopen{}\left(\mathcal{C}({\mathbf{A}}^{\top})\right)\mathclose{} \\
>     &= r,
>     \end{aligned}$$
>
>     $\dim\mathopen{}\left(\mathcal{N}(\mathbf{A})\right)\mathclose{} = n - r$, and $\dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{} = m - r$.

> **NOTE:**
>
> *Proof*. **Part 1.** The first equation is [Theorem 3](#thm-complement-null-space). $\mathcal{C}(\mathbf{A})$ is a subspace of $\mathbb{R}^m$ ([Theorem 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-column-space-span)), so
>
> $$\begin{aligned}
> \mathbb{R}^m
> &= \mathcal{C}(\mathbf{A}) \oplus \mathcal{C}(\mathbf{A})^\perp
> && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~4}}\text{)}
> \\
> &= \mathcal{C}(\mathbf{A}) \oplus \mathcal{N}({\mathbf{A}}^{\top}).
> && \text{(first equation)}
> \end{aligned}$$
>
> **Part 2.**
>
> $$\begin{aligned}
> \mathcal{C}(\mathbf{A})
> &= \mathopen{}\left(\mathcal{C}(\mathbf{A})^\perp\right)\mathclose{}^\perp
> && \text{(}\href{#thm-double-complement}{\text{Theorem~5}}\text{)}
> \\
> &= \mathcal{N}({\mathbf{A}}^{\top})^\perp.
> && \text{(part 1)}
> \end{aligned}$$
>
> **Part 3.** Apply parts 2 and 1 to the $n \times m$ matrix ${\mathbf{A}}^{\top}$, using ${({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}$: part 2 gives $\mathcal{C}({\mathbf{A}}^{\top}) = \mathcal{N}(\mathbf{A})^\perp$, and part 1 gives $\mathbb{R}^n = \mathcal{C}({\mathbf{A}}^{\top}) \oplus \mathcal{N}(\mathbf{A})$.
>
> **Part 4.** $\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = r$ by [Theorem 1 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-dim). $\dim\mathopen{}\left(\mathcal{C}({\mathbf{A}}^{\top})\right)\mathclose{} = \operatorname{rank}({\mathbf{A}}^{\top})$ by [Theorem 1 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-dim), and that is $r$ by [Theorem 4 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-transpose). $\mathbf{A}$ has $n$ columns, so $\dim\mathopen{}\left(\mathcal{N}(\mathbf{A})\right)\mathclose{} = n - r$ ([Definition 1 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#def-nullity), [Theorem 2 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-nullity)). ${\mathbf{A}}^{\top}$ has $m$ columns and rank $r$, so $\dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{} = m - r$ in the same way.

> **NOTE:**
>
> **Example 8 (The four subspaces of the matrix in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space))** For $\mathbf{A}$ in [Example 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#exm-column-space), $m = 2$, $n = 3$ and $r = 1$ ([Example 1 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#exm-rank-dim)).
>
> - **In** $\mathbb{R}^3$: the row space $\mathcal{C}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\{(1, -2, -2)\right\}\mathclose{}$
>
>   1.  has dimension $1 = r$, and $\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(2, 1, 0), (2, 0, 1)\right\}\mathclose{}$ has dimension $2 = n - r$ ([Example 2 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#exm-nullity)). The spanning vectors are orthogonal:
>
>   $$\begin{aligned}
>   (1, -2, -2) \cdot (2, 1, 0) &= 2 - 2 + 0 \\
>   &= 0
>   \end{aligned}$$
>
>   and
>
>   $$\begin{aligned}
>   (1, -2, -2) \cdot (2, 0, 1) &= 2 + 0 - 2 \\
>   &= 0.
>   \end{aligned}$$
>
> - **In** $\mathbb{R}^2$: $\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(1, 3)\right\}\mathclose{}$ has dimension $1 = r$, and $\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\{(-3, 1)\right\}\mathclose{}$ has dimension $1 = m - r$ ([Example 4](#exm-complement-null-space)).
>
> By part 3, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (1, 0, 0)$ splits uniquely into a row-space part $t\,(1, -2, -2)$ and a null-space part. The null-space part $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - t\,(1, -2, -2)$ lies in $\mathcal{N}(\mathbf{A})$ (part 3), and $\mathcal{N}(\mathbf{A}) = \mathcal{C}({\mathbf{A}}^{\top})^\perp$ ([Theorem 3](#thm-complement-null-space) applied to ${\mathbf{A}}^{\top}$, with ${({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}$), so it must be orthogonal to $(1, -2, -2)$:
>
> $$\begin{aligned}
> 0
> &= (1, -2, -2) \cdot \mathopen{}\left((1, 0, 0) - t\,(1, -2, -2)\right)\mathclose{}
> && \text{(orthogonality)}
> \\
> &= (1, -2, -2) \cdot \mathopen{}\left(1 \cdot(1, 0, 0) + (-t)\,(1, -2, -2)\right)\mathclose{}
> && \text{(write the difference as a linear combination)}
> \\
> &= 1 \cdot\mathopen{}\left((1, -2, -2) \cdot (1, 0, 0)\right)\mathclose{} + (-t)\,\mathopen{}\left((1, -2, -2) \cdot (1, -2, -2)\right)\mathclose{}
> && \text{(}\href{#thm-dot-linear}{\text{Theorem~1}}\text{)}
> \\
> &= 1 \cdot 1 + (-t) \cdot 9
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \\
> &= 1 - 9t,
> && \text{(arithmetic)}
> \end{aligned}$$
>
> so $t = \frac{1}{9}$. The row-space part is $\mathopen{}\left(\frac{1}{9}, -\frac{2}{9}, -\frac{2}{9}\right)\mathclose{}$ and the null-space part is $\mathopen{}\left(\frac{8}{9}, \frac{2}{9}, \frac{2}{9}\right)\mathclose{}$; as a check, row 1 of $\mathbf{A}$ gives $\frac{8}{9} - 2 \cdot\frac{2}{9} - 2 \cdot\frac{2}{9} = 0$, and row 2 is $3$ times row 1, so $\mathbf{A}$ sends the null-space part to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$.
>
> These four statements are the fundamental theorem of linear algebra [\[2\]](#ref-wikipedia_fundamental_theorem_of_linear_algebra).

> **NOTE:**
>
> **Exercise 7 (Testing whether a linear system has a solution through the left null space)** Part 2 of [Theorem 6](#thm-fundamental-subspaces) says that $\mathcal{C}(\mathbf{A}) = \mathcal{N}({\mathbf{A}}^{\top})^\perp$, so a [linear system](linear-algebra-matrix-multiplication.llms.md#def-linear-system) $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has a solution exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is [orthogonal](linear-algebra-vectors.llms.md#def-orthogonal-vectors) to every vector of the [left null space](linear-algebra-column-null-space.llms.md#def-left-null-space). Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 1 \\ 1 & 1 \\ 0 & 0\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \begin{bmatrix}1 \\ 2 \\ 0\end{bmatrix}.$$
>
> Decide whether $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has a solution, by testing $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ against $\mathcal{N}({\mathbf{A}}^{\top})$.
>
> > **TIP:**
> >
> > Find one nonzero vector of $\mathcal{N}({\mathbf{A}}^{\top})$ whose third entry is $0$.

> **NOTE:**
>
> *Solution 7*. Here ${\mathbf{A}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (y_1 + y_2, y_1 + y_2)$, so $(1, -1, 0)$ is in $\mathcal{N}({\mathbf{A}}^{\top})$. But
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \cdot (1, -1, 0) = 1 - 2 + 0 = -1 \neq 0,$$
>
> so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is not in $\mathcal{N}({\mathbf{A}}^{\top})^\perp = \mathcal{C}(\mathbf{A})$, and $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has no solution. Directly, the first two entries of $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ are both $x_1 + x_2$, while those of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ are $1$ and $2$.

# Definitions on this page

- [Definition 1 (Orthogonal complement)](#def-orthogonal-complement)

Back to top

## References

\[1\]

Wikipedia contributors, “Orthogonal complement — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Orthogonal_complement>

\[2\]

Wikipedia contributors, “Fundamental theorem of linear algebra — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Fundamental_theorem_of_linear_algebra>
