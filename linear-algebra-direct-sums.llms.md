# Sums and Direct Sums

Code

Published

Last modified: 2026-11-23 17:43:07 (PST)

# 1 Sums and direct sums

> **NOTE:**
>
> This section, [Section  in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#sec-orthogonal-complements) and [Section  in Orthogonal Complements and the Fundamental Theorem](linear-algebra-orthogonal-complements.llms.md#sec-fundamental-theorem) are adapted from Zhou [\[1\]](#ref-zhou2024orthproj), used under the MIT License (see the license text in [Section  in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source proves that a subspace and its orthogonal complement together make up $\mathbb{R}^p$ by extending an orthonormal basis; the proof here uses the rank-nullity theorem ([Theorem 2 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#thm-rank-nullity)) instead. The source defines the orthogonal complement inside an ambient vector space $V \subseteq \mathbb{R}^m$; here the ambient space is always $\mathbb{R}^p$, which is all that the fundamental theorem and the projections need.

> **NOTE:**
>
> **Definition 1 (Sum of subspaces)** The **sum** of two subspaces $\mathcal{S}_1$ and $\mathcal{S}_2$ of $\mathbb{R}^p$ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)) is the set of all sums of a vector from $\mathcal{S}_1$ and a vector from $\mathcal{S}_2$:
>
> $$\mathcal{S}_1 + \mathcal{S}_2
> \stackrel{\text{def}}{=}
> \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_2 : \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1 \in \mathcal{S}_1,\ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_2 \in \mathcal{S}_2\right\}\mathclose{}.$$

> **NOTE:**
>
> **Example 1 (Two lines sum to a plane)** Let $\mathcal{S}_1 = \operatorname{span}\mathopen{}\left\{(1, 0, 0)\right\}\mathclose{}$ and $\mathcal{S}_2 = \operatorname{span}\mathopen{}\left\{(0, 1, 0)\right\}\mathclose{}$, two lines in $\mathbb{R}^3$. A vector of $\mathcal{S}_1 + \mathcal{S}_2$ has the form $a\,(1, 0, 0) + b\,(0, 1, 0) = (a, b, 0)$, and $a$ and $b$ can be any numbers, so $\mathcal{S}_1 + \mathcal{S}_2 = \mathopen{}\left\{(a, b, 0) : a, b \in \mathbb{R}\right\}\mathclose{}$, the plane $z = 0$.

> **NOTE:**
>
> **Example 2 (The sum is not the union)** For the two lines in [Example 1](#exm-subspace-sum), the union $\mathcal{S}_1 \cup \mathcal{S}_2$ contains $(1, 0, 0)$ and $(0, 1, 0)$ but not their sum $(1, 1, 0)$: every multiple of $(1, 0, 0)$ has second entry $0$, and every multiple of $(0, 1, 0)$ has first entry $0$. So the union is not closed under addition and is not a subspace, while the sum, the whole plane $z = 0$, is.

> **NOTE:**
>
> **Exercise 1 (Testing whether a vector is in a sum of two lines)** A vector is in the [sum of two subspaces](#def-subspace-sum) when it splits into one piece from each. Let $\mathcal{S}_1 = \operatorname{span}\mathopen{}\left\{(1, 0, 1)\right\}\mathclose{}$ and $\mathcal{S}_2 = \operatorname{span}\mathopen{}\left\{(0, 1, 1)\right\}\mathclose{}$, two lines in $\mathbb{R}^3$.
>
> Decide whether the vector $(2, 3, 5)$ is in $\mathcal{S}_1 + \mathcal{S}_2$.
>
> > **TIP:**
> >
> > Look for $a$ and $b$ with $a\,(1, 0, 1) + b\,(0, 1, 1) = (2, 3, 5)$, starting with the first two entries.

> **NOTE:**
>
> *Solution 1*. Here $a\,(1, 0, 1) + b\,(0, 1, 1) = (a, b, a + b)$, whose first two entries give $a = 2$ and $b = 3$, and then the third entry is $2 + 3 = 5$. So $(2, 3, 5) = 2\,(1, 0, 1) + 3\,(0, 1, 1)$, with $2\,(1, 0, 1) \in \mathcal{S}_1$ and $3\,(0, 1, 1) \in \mathcal{S}_2$, and $(2, 3, 5)$ is in $\mathcal{S}_1 + \mathcal{S}_2$.

> **NOTE:**
>
> **Theorem 1 (Sums and intersections of subspaces are subspaces)** If $\mathcal{S}_1$ and $\mathcal{S}_2$ are subspaces of $\mathbb{R}^p$ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)), then $\mathcal{S}_1 + \mathcal{S}_2$ ([Definition 1](#def-subspace-sum)) and $\mathcal{S}_1 \cap \mathcal{S}_2$ are subspaces of $\mathbb{R}^p$.

> **NOTE:**
>
> *Proof*. Both $\mathcal{S}_1$ and $\mathcal{S}_2$ contain $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ ([Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)).
>
> **The sum.** It is not empty: it contains $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Take two of its vectors, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_2$, with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_1 \in \mathcal{S}_1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_2 \in \mathcal{S}_2$, and a number $c$. Then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> &= (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2) + (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_2)
> && \text{(substitute)}
> \\
> &= (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_1) + (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_2),
> && \text{(regroup; vector addition is entrywise)}
> \end{aligned}$$
>
> where $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_1 \in \mathcal{S}_1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_2 \in \mathcal{S}_2$, because each subspace is closed under addition. Likewise
>
> $$\begin{aligned}
> c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}
> &= c\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2)
> && \text{(substitute)}
> \\
> &= c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 + c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2,
> && \text{(distribute } c \text{ entrywise)}
> \end{aligned}$$
>
> where $c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 \in \mathcal{S}_1$ and $c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2 \in \mathcal{S}_2$, because each subspace is closed under scalar multiplication. So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ and $c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ are in $\mathcal{S}_1 + \mathcal{S}_2$.
>
> **The intersection.** It is not empty: it contains $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ are in both $\mathcal{S}_1$ and $\mathcal{S}_2$, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ and $c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ are in $\mathcal{S}_1$, because $\mathcal{S}_1$ is a subspace, and in $\mathcal{S}_2$ for the same reason, so they are in $\mathcal{S}_1 \cap \mathcal{S}_2$.

> **NOTE:**
>
> **Example 3 (Two planes in** $\mathbb{R}^3$) Let $\mathcal{S}_1 = \mathopen{}\left\{(a, b, 0) : a, b \in \mathbb{R}\right\}\mathclose{}$, the plane $z = 0$, and $\mathcal{S}_2 = \mathopen{}\left\{(0, b, c) : b, c \in \mathbb{R}\right\}\mathclose{}$, the plane $x = 0$.
>
> - **Intersection:** a vector in both has third entry $0$ and first entry $0$, so $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{(0, b, 0) : b \in \mathbb{R}\right\}\mathclose{}$, the $y$-axis, which is a line through the origin.
> - **Sum:** $(a, b, 0) + (0, b', c) = (a, b + b', c)$, and any $(x, y, z)$ arises this way, with $a = x$, $b = y$, $b' = 0$ and $c = z$. So $\mathcal{S}_1 + \mathcal{S}_2 = \mathbb{R}^3$.

> **NOTE:**
>
> **Exercise 2 (Finding the intersection of two planes)** [Theorem 1](#thm-sum-intersection-subspace) says that two [subspaces](linear-algebra-subspaces.llms.md#def-subspace) meet in a subspace. Let $\mathcal{S}_1 = \mathopen{}\left\{(a, b, 0) : a, b \in \mathbb{R}\right\}\mathclose{}$, the plane $z = 0$ in $\mathbb{R}^3$, and $\mathcal{S}_2 = \operatorname{span}\mathopen{}\left\{(1, 1, 0), (0, 0, 1)\right\}\mathclose{}$.
>
> Find $\mathcal{S}_1 \cap \mathcal{S}_2$.
>
> > **TIP:**
> >
> > Express a vector of $\mathcal{S}_2$ as $s\,(1, 1, 0) + t\,(0, 0, 1)$, and ask when its third entry is $0$.

> **NOTE:**
>
> *Solution 2*. A vector of $\mathcal{S}_2$ is $s\,(1, 1, 0) + t\,(0, 0, 1) = (s, s, t)$. It is in $\mathcal{S}_1$ exactly when its third entry is $0$, that is, when $t = 0$. So
>
> $$\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{(s, s, 0) : s \in \mathbb{R}\right\}\mathclose{} = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{},$$
>
> a line through the origin, which is a [subspace](linear-algebra-subspaces.llms.md#def-subspace), as [Theorem 1](#thm-sum-intersection-subspace) says.

> **NOTE:**
>
> **Theorem 2 (The dimension of a sum of subspaces)** If $\mathcal{S}_1$ and $\mathcal{S}_2$ are subspaces of $\mathbb{R}^p$, then
>
> $$\dim(\mathcal{S}_1 + \mathcal{S}_2)
> = \dim(\mathcal{S}_1) + \dim(\mathcal{S}_2) - \dim(\mathcal{S}_1 \cap \mathcal{S}_2).$$

> **NOTE:**
>
> *Proof*. All three sets in the formula are subspaces ([Theorem 1](#thm-sum-intersection-subspace)), so each has a dimension ([Definition 4 in Bases and Dimension](linear-algebra-bases.llms.md#def-dimension)). Let $k = \dim(\mathcal{S}_1 \cap \mathcal{S}_2)$, $d_1 = \dim(\mathcal{S}_1)$ and $d_2 = \dim(\mathcal{S}_2)$.
>
> **Build a list.** Choose a basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_k$ of $\mathcal{S}_1 \cap \mathcal{S}_2$ ([Theorem 4 in Bases and Dimension](linear-algebra-bases.llms.md#thm-extend-basis)). These vectors are linearly independent and lie in $\mathcal{S}_1$, so [Theorem 4 in Bases and Dimension](linear-algebra-bases.llms.md#thm-extend-basis) extends them to a basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_k, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_{d_1 - k}$ of $\mathcal{S}_1$, which has $d_1$ vectors ([Theorem 2 in Bases and Dimension](linear-algebra-bases.llms.md#thm-basis-size)). In the same way, extend them to a basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_k, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_{d_2 - k}$ of $\mathcal{S}_2$. We show that the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}$’s, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$’s and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$’s together, $k + (d_1 - k) + (d_2 - k) = d_1 + d_2 - k$ vectors, are a basis of $\mathcal{S}_1 + \mathcal{S}_2$ ([Definition 1 in Bases and Dimension](linear-algebra-bases.llms.md#def-basis)).
>
> **They span** $\mathcal{S}_1 + \mathcal{S}_2$. Any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{S}_1 + \mathcal{S}_2$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 \in \mathcal{S}_1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 \in \mathcal{S}_2$. $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1$ is a linear combination of the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}$’s and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$’s, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2$ is a linear combination of the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}$’s and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$’s, so their sum is a linear combination of all three groups. Conversely, each vector in the list is in $\mathcal{S}_1 + \mathcal{S}_2$ (for example, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$), and $\mathcal{S}_1 + \mathcal{S}_2$ is a subspace, so it contains every linear combination of them.
>
> **They are linearly independent.** Suppose
>
> $$\sum_{i=1}^{k} a_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_i
> + \sum_{j=1}^{d_1 - k} b_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j
> + \sum_{l=1}^{d_2 - k} c_l \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_l
> = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}.$$
>
> Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \stackrel{\text{def}}{=}\sum_{l} c_l \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_l$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathcal{S}_2$, because it is a linear combination of vectors of $\mathcal{S}_2$. Subtracting $\sum_{i} a_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_i + \sum_{j} b_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j$ from both sides of the supposed equation gives
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \sum_{i=1}^{k} (-a_i)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_i + \sum_{j=1}^{d_1 - k} (-b_j)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j,$$
>
> a linear combination of vectors of $\mathcal{S}_1$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathcal{S}_1$ too. So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathcal{S}_1 \cap \mathcal{S}_2$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \sum_{i} e_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_i$ for some numbers $e_i$, since the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}$’s span the intersection. Then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> && \text{(a vector minus itself)}
> \\
> &= \sum_{i=1}^{k} e_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_i - \sum_{l=1}^{d_2 - k} c_l \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_l
> && \text{(substitute the two expressions for } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \text{)}
> \\
> &= \sum_{i=1}^{k} e_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_i + \sum_{l=1}^{d_2 - k} (-c_l)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_l,
> && \text{(write each subtraction as adding } -1 \text{ times)}
> \end{aligned}$$
>
> and because the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}$’s and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$’s are a basis of $\mathcal{S}_2$, every $c_l = 0$. The supposed equation then reads $\sum_{i} a_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_i + \sum_{j} b_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_j = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and because the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}$’s and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$’s are a basis of $\mathcal{S}_1$, every $a_i$ and $b_j$ is $0$.
>
> So $\dim(\mathcal{S}_1 + \mathcal{S}_2) = d_1 + d_2 - k$. When some of the groups are empty (for example $k = 0$, or $\mathcal{S}_1 = \mathcal{S}_1 \cap \mathcal{S}_2$), the sums over them are $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and the argument goes through unchanged.

> **NOTE:**
>
> **Example 4 (Two planes in** $\mathbb{R}^3$, by dimension) For the planes $z = 0$ and $x = 0$ in [Example 3](#exm-sum-intersection-subspace), each has dimension $2$: the plane $z = 0$ has basis $(1, 0, 0), (0, 1, 0)$ ([Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension)), and the plane $x = 0$ has basis $(0, 1, 0), (0, 0, 1)$ by the same argument. Their intersection, the $y$-axis $\operatorname{span}\mathopen{}\left\{(0, 1, 0)\right\}\mathclose{}$, has dimension $1$, because the single nonzero vector $(0, 1, 0)$ is linearly independent ($c\,(0, 1, 0) = (0, c, 0)$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only if $c = 0$) and so is a basis of it. [Theorem 2](#thm-dim-sum) gives
>
> $$\begin{aligned}
> \dim(\mathcal{S}_1 + \mathcal{S}_2)
> &= 2 + 2 - 1 \\
> &= 3,
> \end{aligned}$$
>
> which agrees with $\mathcal{S}_1 + \mathcal{S}_2 = \mathbb{R}^3$ ([Example 3](#exm-sum-intersection-subspace)) and $\dim(\mathbb{R}^3) = 3$ ([Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension)).

> **NOTE:**
>
> **Corollary 1 (The dimension of a sum is at most the sum of the dimensions)** If $\mathcal{S}_1$ and $\mathcal{S}_2$ are subspaces of $\mathbb{R}^p$, then
>
> $$\dim(\mathcal{S}_1 + \mathcal{S}_2) \le \dim(\mathcal{S}_1) + \dim(\mathcal{S}_2),$$
>
> with equality exactly when $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$.

> **NOTE:**
>
> *Proof*. By [Theorem 2](#thm-dim-sum), the two sides differ by $\dim(\mathcal{S}_1 \cap \mathcal{S}_2) \ge 0$. That dimension is $0$ exactly when a basis of the intersection is the empty list, that is, when the intersection is the span of the empty list, $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span), [Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension)).

> **NOTE:**
>
> **Example 5 (Equality and strict inequality)**  
>
> - For the lines $\mathcal{S}_1 = \operatorname{span}\mathopen{}\left\{(1, 0, 0)\right\}\mathclose{}$ and $\mathcal{S}_2 = \operatorname{span}\mathopen{}\left\{(0, 1, 0)\right\}\mathclose{}$ in [Example 1](#exm-subspace-sum), a common vector satisfies $a\,(1, 0, 0) = b\,(0, 1, 0)$, so $(a, -b, 0) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and
>
>   $$\begin{aligned}
>   a &= b \\
>   &= 0.
>   \end{aligned}$$
>
>   The intersection is $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, and indeed
>
>   $$\begin{aligned}
>   \dim(\mathcal{S}_1 + \mathcal{S}_2) &= 2 \\
>   &= 1 + 1:
>   \end{aligned}$$
>
>   the sum is the plane $z = 0$ ([Example 1](#exm-subspace-sum)), which has dimension $2$ ([Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension)), and each line has dimension $1$, with its spanning vector as a basis.
>
> - For
>
>   $$\begin{aligned}
>   \mathcal{S}_1 &= \mathcal{S}_2 \\
>   &= \operatorname{span}\mathopen{}\left\{(1, 0, 0)\right\}\mathclose{},
>   \end{aligned}$$
>
>   the sum is the same line, because $a\,(1, 0, 0) + b\,(1, 0, 0) = (a + b)\,(1, 0, 0)$, so $\dim(\mathcal{S}_1 + \mathcal{S}_2) = 1 < 1 + 1$, a [strict inequality](algebra-basics.llms.md#def-strict-inequality).

> **NOTE:**
>
> **Exercise 3 (Finding the dimension of a sum of two planes in** $\mathbb{R}^4$) [Theorem 2](#thm-dim-sum) finds the [dimension](linear-algebra-bases.llms.md#def-dimension) of a [sum of two subspaces](#def-subspace-sum) without describing it. Let $\mathcal{S}_1 = \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2\right\}\mathclose{}$ and $\mathcal{S}_2 = \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3\right\}\mathclose{}$, two planes in $\mathbb{R}^4$, where $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_4$ are the [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) of $\mathbb{R}^4$.
>
> Find $\dim(\mathcal{S}_1 + \mathcal{S}_2)$ from [Theorem 2](#thm-dim-sum).
>
> > **TIP:**
> >
> > First find $\mathcal{S}_1 \cap \mathcal{S}_2$ by comparing entries.

> **NOTE:**
>
> *Solution 3*. A vector of $\mathcal{S}_1$ is $(a, b, 0, 0)$, and a vector of $\mathcal{S}_2$ is $(0, c, d, 0)$. They coincide exactly when $a = 0$, $d = 0$ and $b = c$, so $\mathcal{S}_1 \cap \mathcal{S}_2 = \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2\right\}\mathclose{}$, of [dimension](linear-algebra-bases.llms.md#def-dimension) $1$. Each plane has dimension $2$, since two distinct [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent). By [Theorem 2](#thm-dim-sum),
>
> $$\dim(\mathcal{S}_1 + \mathcal{S}_2) = 2 + 2 - 1 = 3.$$

> **NOTE:**
>
> **Exercise 4 (Finding the dimension of a sum of subspaces that meet only at the origin)** [Corollary 1](#cor-dim-subadditive) says when the [dimension](linear-algebra-bases.llms.md#def-dimension) of a [sum](#def-subspace-sum) matches the total of the dimensions. Let $\mathcal{S}_1$ and $\mathcal{S}_2$ be [subspaces](linear-algebra-subspaces.llms.md#def-subspace) of $\mathbb{R}^5$ with $\dim(\mathcal{S}_1) = 2$, $\dim(\mathcal{S}_2) = 3$ and $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, so that they meet only at the origin.
>
> Find $\dim(\mathcal{S}_1 + \mathcal{S}_2)$.
>
> > **TIP:**
> >
> > Use the equality case of [Corollary 1](#cor-dim-subadditive).

> **NOTE:**
>
> *Solution 4*. Here $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, so [Corollary 1](#cor-dim-subadditive) holds with equality:
>
> $$\dim(\mathcal{S}_1 + \mathcal{S}_2) = 2 + 3 = 5.$$
>
> Since $\mathcal{S}_1 + \mathcal{S}_2 \subseteq \mathbb{R}^5$ and both have [dimension](linear-algebra-bases.llms.md#def-dimension) $5$, [the two are equal](linear-algebra-bases.llms.md#thm-subspace-equal-dim): $\mathcal{S}_1 + \mathcal{S}_2 = \mathbb{R}^5$.

> **NOTE:**
>
> **Theorem 3 (Rank is subadditive)** For $m \times n$ matrices $\mathbf{A}$ and $\mathbf{B}$,
>
> $$\operatorname{rank}(\mathbf{A} + \mathbf{B})
> \le \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(\mathbf{B}).$$

> **NOTE:**
>
> *Proof*. $\mathcal{C}(\mathbf{A} + \mathbf{B}) \subseteq \mathcal{C}(\mathbf{A}) + \mathcal{C}(\mathbf{B})$. Any vector of $\mathcal{C}(\mathbf{A} + \mathbf{B})$ is $(\mathbf{A} + \mathbf{B})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^n$ ([Definition 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#def-column-space)), and $(\mathbf{A} + \mathbf{B})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Theorem 2 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#thm-matmul-distrib), with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ as an $n \times 1$ matrix), a vector of $\mathcal{C}(\mathbf{A})$ plus a vector of $\mathcal{C}(\mathbf{B})$.
>
> **Compare dimensions.** All the sets involved are subspaces of $\mathbb{R}^m$ ([Theorem 1 in Column Space and Null Space](linear-algebra-column-null-space.llms.md#thm-column-space-span), [Theorem 1](#thm-sum-intersection-subspace)), so
>
> $$\begin{aligned}
> \operatorname{rank}(\mathbf{A} + \mathbf{B})
> &= \dim\mathopen{}\left(\mathcal{C}(\mathbf{A} + \mathbf{B})\right)\mathclose{}
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-dim}{\text{Theorem~1 in Rank-Nullity and Rank Factorization}}\text{)}
> \\
> &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A}) + \mathcal{C}(\mathbf{B})\right)\mathclose{}
> && \text{(the containment, and part 2 of }\href{linear-algebra-bases.qmd#thm-dim-bound}{\text{Theorem~5 in Bases and Dimension}}\text{)}
> \\
> &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} + \dim\mathopen{}\left(\mathcal{C}(\mathbf{B})\right)\mathclose{}
> && \text{(}\href{#cor-dim-subadditive}{\text{Corollary~1}}\text{)}
> \\
> &= \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(\mathbf{B}).
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-dim}{\text{Theorem~1 in Rank-Nullity and Rank Factorization}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 6 (Subadditivity with equality and without)** Let $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ and $\mathbf{B} = \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix}$. Each has one nonzero column and one zero column. The nonzero column on its own is linearly independent ($c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ forces $c = 0$), and the two columns together are not, since $1$ times the zero column is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$; so each matrix has rank $1$ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)). By the same argument, $-\mathbf{A}$ has rank $1$.
>
> - $\mathbf{A} + \mathbf{B}$ is the $2 \times 2$ identity matrix, which has rank $2$ ([Example 3 in Rank-Nullity and Rank Factorization](linear-algebra-rank-nullity.llms.md#exm-rank-nullity)), so the bound $2 \le 1 + 1$ holds with equality.
> - $\mathbf{A} + (-\mathbf{A})$ is the $2 \times 2$ zero matrix, which has rank $0$: any nonempty list of its columns contains $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$, and $1 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$. So the bound $0 \le \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(-\mathbf{A}) = 1 + 1$ is strict.

> **NOTE:**
>
> **Exercise 5 (Checking subadditivity of rank on two rank-one matrices)** [Theorem 3](#thm-rank-subadditive) says that ${\operatorname{rank}\mathopen{}\left(\mathbf{A} + \mathbf{B}\right)\mathclose{}} \le {\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}} + {\operatorname{rank}\mathopen{}\left(\mathbf{B}\right)\mathclose{}}$ for [matrices](linear-algebra-matrices.llms.md#def-matrix) of the same size. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 2 \\ 2 & 4\end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix}0 & 1 \\ 0 & 3\end{bmatrix}.$$
>
> Find ${\operatorname{rank}\mathopen{}\left(\mathbf{A} + \mathbf{B}\right)\mathclose{}}$.
>
> > **TIP:**
> >
> > Each of $\mathbf{A}$ and $\mathbf{B}$ has [rank](linear-algebra-subspaces.llms.md#def-rank) $1$, so [Theorem 3](#thm-rank-subadditive) allows at most $2$.

> **NOTE:**
>
> *Solution 5*. In $\mathbf{A}$, the second [column](linear-algebra-matrices.llms.md#def-matrix-column) is twice the first, so ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}} = 1$. In $\mathbf{B}$, the first column is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ and the second is not, so ${\operatorname{rank}\mathopen{}\left(\mathbf{B}\right)\mathclose{}} = 1$. Then
>
> $$\mathbf{A} + \mathbf{B} = \begin{bmatrix}1 & 3 \\ 2 & 7\end{bmatrix}.$$
>
> Its [columns](linear-algebra-matrices.llms.md#def-matrix-column) are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent): $c_1\,(1, 2) + c_2\,(3, 7) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ gives $c_1 = -3 c_2$ from the first entry, and then $-6 c_2 + 7 c_2 = c_2 = 0$ from the second. So ${\operatorname{rank}\mathopen{}\left(\mathbf{A} + \mathbf{B}\right)\mathclose{}} = 2 = 1 + 1$, and [Theorem 3](#thm-rank-subadditive) holds with equality.

> **NOTE:**
>
> **Definition 2 (Complementary subspaces)** Let $\mathcal{S}_1$, $\mathcal{S}_2$ and $\mathcal{V}$ be subspaces of $\mathbb{R}^p$. $\mathcal{S}_1$ and $\mathcal{S}_2$ are **complementary** in $\mathcal{V}$ if
>
> $$\mathcal{V} = \mathcal{S}_1 + \mathcal{S}_2
> \quad \text{and} \quad
> \mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$$
>
> ([Definition 1](#def-subspace-sum)).

> **NOTE:**
>
> **Definition 3 (Direct sum)** If $\mathcal{S}_1$ and $\mathcal{S}_2$ are complementary in $\mathcal{V}$ ([Definition 2](#def-complementary-subspaces)), then $\mathcal{V}$ is the **direct sum** [\[2\]](#ref-wikipedia_direct_sum) of $\mathcal{S}_1$ and $\mathcal{S}_2$, written $\mathcal{V} = \mathcal{S}_1 \oplus \mathcal{S}_2$.

> **NOTE:**
>
> **Example 7 (**$\mathbb{R}^3$ is a plane plus a line) Let $\mathcal{S}_1 = \mathopen{}\left\{(a, b, 0) : a, b \in \mathbb{R}\right\}\mathclose{}$, the plane $z = 0$, and $\mathcal{S}_2 = \mathopen{}\left\{(0, 0, c) : c \in \mathbb{R}\right\}\mathclose{}$, the $z$-axis.
>
> - **Sum:** any $(x, y, z) \in \mathbb{R}^3$ is $(x, y, 0) + (0, 0, z)$, so $\mathcal{S}_1 + \mathcal{S}_2 = \mathbb{R}^3$.
> - **Intersection:** a vector in both has third entry $0$ and first and second entries $0$, so $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$.
>
> So $\mathbb{R}^3 = \mathcal{S}_1 \oplus \mathcal{S}_2$.

> **NOTE:**
>
> **Example 8 (Two planes that sum to** $\mathbb{R}^3$ but not directly) The planes $z = 0$ and $x = 0$ sum to $\mathbb{R}^3$ ([Example 3](#exm-sum-intersection-subspace)), but they share the $y$-axis, so they are not complementary, and $\mathbb{R}^3$ is not their direct sum. The shared line shows up as more than one way to split a vector:
>
> $$\begin{aligned}
> (0, 1, 0) &= (0, 1, 0) + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}+ (0, 1, 0),
> \end{aligned}$$
>
> with the first term in the plane $z = 0$ and the second in the plane $x = 0$ both times.

> **NOTE:**
>
> **Exercise 6 (Testing whether two lines are complementary in** $\mathbb{R}^2$) Two [subspaces](linear-algebra-subspaces.llms.md#def-subspace) are [complementary](#def-complementary-subspaces) in $\mathcal{V}$ when their [sum](#def-subspace-sum) is $\mathcal{V}$ and they share only $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Let $\mathcal{S}_1 = \operatorname{span}\mathopen{}\left\{(1, 0)\right\}\mathclose{}$ and $\mathcal{S}_2 = \operatorname{span}\mathopen{}\left\{(1, 1)\right\}\mathclose{}$.
>
> Decide whether $\mathcal{S}_1$ and $\mathcal{S}_2$ are complementary in $\mathbb{R}^2$.
>
> > **TIP:**
> >
> > Solve $a\,(1, 0) = b\,(1, 1)$, and express $(x, y)$ as $a\,(1, 0) + b\,(1, 1)$.

> **NOTE:**
>
> *Solution 6*. If $a\,(1, 0) = b\,(1, 1)$, then $(a, 0) = (b, b)$, so $b = 0$ and then $a = 0$. So $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$. Any $(x, y) \in \mathbb{R}^2$ is $(x - y)\,(1, 0) + y\,(1, 1)$, so $\mathcal{S}_1 + \mathcal{S}_2 = \mathbb{R}^2$. Both conditions hold, so $\mathcal{S}_1$ and $\mathcal{S}_2$ are [complementary](#def-complementary-subspaces) in $\mathbb{R}^2$.

> **NOTE:**
>
> **Exercise 7 (Testing whether** $\mathbb{R}^3$ is the direct sum of a plane and a tilted line) The [direct sum](#def-direct-sum) $\mathcal{S}_1 \oplus \mathcal{S}_2$ needs the two [subspaces](linear-algebra-subspaces.llms.md#def-subspace) to be [complementary](#def-complementary-subspaces). Let $\mathcal{S}_1 = \mathopen{}\left\{(a, b, 0) : a, b \in \mathbb{R}\right\}\mathclose{}$, the plane $z = 0$, and $\mathcal{S}_2 = \operatorname{span}\mathopen{}\left\{(1, 1, 1)\right\}\mathclose{}$, a tilted line.
>
> Decide whether $\mathbb{R}^3 = \mathcal{S}_1 \oplus \mathcal{S}_2$.
>
> > **TIP:**
> >
> > To write $(x, y, z)$ as a vector of $\mathcal{S}_1$ plus $c\,(1, 1, 1)$, the third entry fixes $c$.

> **NOTE:**
>
> *Solution 7*. Any $(x, y, z)$ is $(x - z, y - z, 0) + z\,(1, 1, 1)$, with the first term in $\mathcal{S}_1$ and the second in $\mathcal{S}_2$, so $\mathcal{S}_1 + \mathcal{S}_2 = \mathbb{R}^3$. Also, $c\,(1, 1, 1)$ is in $\mathcal{S}_1$ only if its third entry $c$ is $0$, so $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$. So $\mathcal{S}_1$ and $\mathcal{S}_2$ are [complementary](#def-complementary-subspaces) in $\mathbb{R}^3$, and $\mathbb{R}^3 = \mathcal{S}_1 \oplus \mathcal{S}_2$.

> **NOTE:**
>
> **Theorem 4 (Three ways to recognize a direct sum)** Let $\mathcal{S}_1$ and $\mathcal{S}_2$ be subspaces of $\mathbb{R}^p$, and let $\mathcal{V} = \mathcal{S}_1 + \mathcal{S}_2$. The following statements are equivalent:
>
> 1.  $\mathcal{V} = \mathcal{S}_1 \oplus \mathcal{S}_2$ ([Definition 3](#def-direct-sum)).
> 2.  $\dim(\mathcal{V}) = \dim(\mathcal{S}_1) + \dim(\mathcal{S}_2)$.
> 3.  Every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{V}$ can be written as $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_2$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1 \in \mathcal{S}_1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_2 \in \mathcal{S}_2$ in only one way.

> **NOTE:**
>
> *Proof*. Since $\mathcal{V} = \mathcal{S}_1 + \mathcal{S}_2$ is given, statement 1 says exactly that $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$.
>
> **1 and 2 are equivalent.** By [Corollary 1](#cor-dim-subadditive), $\dim(\mathcal{S}_1 + \mathcal{S}_2) = \dim(\mathcal{S}_1) + \dim(\mathcal{S}_2)$ exactly when $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$.
>
> **1 implies 3.** Every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{V}$ has at least one such expression, because $\mathcal{V} = \mathcal{S}_1 + \mathcal{S}_2$. Suppose
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2 \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2,
> \end{aligned}$$
>
> with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 \in \mathcal{S}_1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 \in \mathcal{S}_2$. Then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1
> &= (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2) - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2 - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1
> && \text{(add and subtract } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2 \text{)}
> \\
> &= (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2) - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2 - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1
> && \text{(substitute } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 \text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2.
> && \text{(cancel } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 \text{)}
> \end{aligned}$$
>
> The left side is in $\mathcal{S}_1$ and the right side is in $\mathcal{S}_2$, because each subspace is closed under addition and scalar multiplication (the difference is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 + (-1)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1$). So both sides are in $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, which gives $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_2 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2$.
>
> **3 implies 1.** Take any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{S}_1 \cap \mathcal{S}_2$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{S}_1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\in \mathcal{S}_2$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\in \mathcal{S}_1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{S}_2$ ([Theorem 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-zero)). By statement 3 these two expressions are the same, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$.

> **NOTE:**
>
> **Example 9 (Checking the three statements)** For the plane $z = 0$ and the $z$-axis in [Example 7](#exm-direct-sum):
>
> - the dimensions add up:
>
>   $$\begin{aligned}
>   2 + 1 &= 3 \\
>   &= \dim(\mathbb{R}^3),
>   \end{aligned}$$
>
>   since the plane has dimension $2$ ([Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension)), the $z$-axis has the single nonzero vector $(0, 0, 1)$ as a basis, and $\dim(\mathbb{R}^3) = 3$ ([Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension));
>
> - the split is unique: if
>
>   $$\begin{aligned}
>   (x, y, z) &= (a, b, 0) + (0, 0, c) \\
>   &= (a, b, c),
>   \end{aligned}$$
>
>   then $a = x$, $b = y$ and $c = z$.
>
> For the planes $z = 0$ and $x = 0$ in [Example 8](#exm-not-direct-sum), both statements fail:
>
> $$\begin{aligned}
> 2 + 2 &= 4 \\
> &\ne 3 \\
> &= \dim(\mathcal{S}_1 + \mathcal{S}_2)
> \end{aligned}$$
>
> ([Example 4](#exm-dim-sum)), and $(0, 1, 0)$ splits in two ways.

> **NOTE:**
>
> **Exercise 8 (Recognizing a direct sum by counting dimensions)** Statement 2 of [Theorem 4](#thm-direct-sum-equiv) recognizes a [direct sum](#def-direct-sum) from [dimensions](linear-algebra-bases.llms.md#def-dimension) alone. Let $\mathcal{S}_1 = \operatorname{span}\mathopen{}\left\{(1, 0, 0), (0, 1, 0)\right\}\mathclose{}$ and $\mathcal{S}_2 = \operatorname{span}\mathopen{}\left\{(0, 1, 1)\right\}\mathclose{}$, and suppose that you have already checked that $\mathcal{S}_1 + \mathcal{S}_2 = \mathbb{R}^3$.
>
> Decide whether $\mathbb{R}^3 = \mathcal{S}_1 \oplus \mathcal{S}_2$, using statement 2 of [Theorem 4](#thm-direct-sum-equiv).
>
> > **TIP:**
> >
> > Find $\dim(\mathcal{S}_1)$ and $\dim(\mathcal{S}_2)$, add them, and compare the total with $\dim(\mathbb{R}^3) = 3$.

> **NOTE:**
>
> *Solution 8*. Both $(1, 0, 0)$ and $(0, 1, 0)$ lie in $\mathcal{S}_1$, and they are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent), so they are a [basis](linear-algebra-bases.llms.md#def-basis) of $\mathcal{S}_1$ and $\dim(\mathcal{S}_1) = 2$. The single nonzero vector $(0, 1, 1)$ is a basis of $\mathcal{S}_2$, so $\dim(\mathcal{S}_2) = 1$. Then
>
> $$\dim(\mathcal{S}_1) + \dim(\mathcal{S}_2) = 2 + 1 = 3 = \dim(\mathbb{R}^3),$$
>
> so by statement 2 of [Theorem 4](#thm-direct-sum-equiv), $\mathbb{R}^3 = \mathcal{S}_1 \oplus \mathcal{S}_2$.

> **NOTE:**
>
> **Definition 4 (Projection onto a subspace along a complement)** Let $\mathcal{S}$ and $\mathcal{T}$ be subspaces of $\mathbb{R}^p$ with $\mathbb{R}^p = \mathcal{S} \oplus \mathcal{T}$ ([Definition 3](#def-direct-sum)), and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \in \mathbb{R}^p$. By [Theorem 4](#thm-direct-sum-equiv), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ for exactly one $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{S}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{T}$. The vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is the **projection** [\[3\]](#ref-wikipedia_projection_linear_algebra) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{S}$ along $\mathcal{T}$ [\[4\]](#ref-banerjee2014linear), Definition 6.3, p. 163.

> **NOTE:**
>
> **Example 10 (The projection depends on the complement)** Let $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 0)\right\}\mathclose{}$, the horizontal axis in $\mathbb{R}^2$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (3, 2)$.
>
> - **Along** $\mathcal{T}_1 = \operatorname{span}\mathopen{}\left\{(1, -1)\right\}\mathclose{}$: $(3, 2) = (5, 0) + (-2, 2)$, with $(5, 0) \in \mathcal{S}$ and $(-2, 2) = -2 \cdot(1, -1) \in \mathcal{T}_1$, so the projection of $(3, 2)$ onto $\mathcal{S}$ along $\mathcal{T}_1$ is $(5, 0)$.
> - **Along** $\mathcal{T}_2 = \operatorname{span}\mathopen{}\left\{(0, 1)\right\}\mathclose{}$: $(3, 2) = (3, 0) + (0, 2)$, with $(3, 0) \in \mathcal{S}$ and $(0, 2) \in \mathcal{T}_2$, so the projection of $(3, 2)$ onto $\mathcal{S}$ along $\mathcal{T}_2$ is $(3, 0)$.
>
> Each of $\mathcal{T}_1$ and $\mathcal{T}_2$ is a line that meets $\mathcal{S}$ only at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so
>
> $$\begin{aligned}
> \mathbb{R}^2 &= \mathcal{S} \oplus \mathcal{T}_1 \\
> &= \mathcal{S} \oplus \mathcal{T}_2
> \end{aligned}$$
>
> ([Definition 3](#def-direct-sum), [Theorem 4](#thm-direct-sum-equiv)). The same vector has a different projection onto the same subspace when the complement changes.

> **NOTE:**
>
> **Exercise 9 (Projecting onto an axis along a diagonal line)** [A projection onto](#def-projection) $\mathcal{S}$ along $\mathcal{T}$ keeps the piece of a vector that lies in $\mathcal{S}$ when the vector is split along a [direct sum](#def-direct-sum). Let $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 0)\right\}\mathclose{}$, the horizontal axis in $\mathbb{R}^2$, let $\mathcal{T} = \operatorname{span}\mathopen{}\left\{(1, 1)\right\}\mathclose{}$, a diagonal line, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (4, 3)$.
>
> Find the [projection of](#def-projection) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{S}$ along $\mathcal{T}$.
>
> > **TIP:**
> >
> > Split $(4, 3)$ as $(a, 0) + c\,(1, 1)$, and use the second entry first.

> **NOTE:**
>
> *Solution 9*. Split $(4, 3)$ as $(a, 0) + c\,(1, 1) = (a + c, c)$. The second entry gives $c = 3$, and then the first gives $a = 1$. So $(4, 3) = (1, 0) + (3, 3)$, with $(1, 0) \in \mathcal{S}$ and $(3, 3) \in \mathcal{T}$, and the [projection of](#def-projection) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ onto $\mathcal{S}$ along $\mathcal{T}$ is $(1, 0)$.

# Definitions on this page

- [Definition 1 (Sum of subspaces)](#def-subspace-sum)
- [Definition 2 (Complementary subspaces)](#def-complementary-subspaces)
- [Definition 3 (Direct sum)](#def-direct-sum)
- [Definition 4 (Projection onto a subspace along a complement)](#def-projection)

Back to top

## References

\[1\]

H. Zhou, “Orthogonal projections.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/06-orthproj/06-orthproj.html>

\[2\]

Wikipedia contributors, “Direct sum — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Direct_sum>

\[3\]

Wikipedia contributors, “Projection (linear algebra) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Projection_(linear_algebra)>

\[4\]

S. Banerjee and A. Roy, *Linear algebra and matrix analysis for statistics*, vol. 181. Crc Press Boca Raton, 2014. Available: <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>
