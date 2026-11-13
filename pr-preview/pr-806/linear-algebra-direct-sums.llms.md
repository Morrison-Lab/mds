# Direct Sums and Orthogonal Complements

Code

Published

Last modified: 2026-11-12 21:28:54 (PST)

# 1 Sums and direct sums

> **NOTE:**
>
> This section, [Section 2](#sec-orthogonal-complements) and [Section 3](#sec-fundamental-theorem) are adapted from Zhou [\[1\]](#ref-zhou2024orthproj), used under the MIT License (see the license text in [Section  in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source proves that a subspace and its orthogonal complement together make up $\mathbb{R}^p$ by extending an orthonormal basis; the proof here uses the rank-nullity theorem ([Theorem 8 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-nullity)) instead. The source defines the orthogonal complement inside an ambient vector space $V \subseteq \mathbb{R}^m$; here the ambient space is always $\mathbb{R}^p$, which is all that the fundamental theorem and the projections need.

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
> *Proof*. All three sets in the formula are subspaces ([Theorem 1](#thm-sum-intersection-subspace)), so each has a dimension ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)). Let $k = \dim(\mathcal{S}_1 \cap \mathcal{S}_2)$, $d_1 = \dim(\mathcal{S}_1)$ and $d_2 = \dim(\mathcal{S}_2)$.
>
> **Build a list.** Choose a basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_k$ of $\mathcal{S}_1 \cap \mathcal{S}_2$ ([Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis)). These vectors are linearly independent and lie in $\mathcal{S}_1$, so [Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis) extends them to a basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_k, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_{d_1 - k}$ of $\mathcal{S}_1$, which has $d_1$ vectors ([Theorem 7 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-basis-size)). In the same way, extend them to a basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_k, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}_{d_2 - k}$ of $\mathcal{S}_2$. We show that the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}$’s, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$’s and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$’s together, $k + (d_1 - k) + (d_2 - k) = d_1 + d_2 - k$ vectors, are a basis of $\mathcal{S}_1 + \mathcal{S}_2$ ([Definition 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-basis)).
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
> **Example 4 (Two planes in** $\mathbb{R}^3$, by dimension) For the planes $z = 0$ and $x = 0$ in [Example 3](#exm-sum-intersection-subspace), each has dimension $2$: the plane $z = 0$ has basis $(1, 0, 0), (0, 1, 0)$ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)), and the plane $x = 0$ has basis $(0, 1, 0), (0, 0, 1)$ by the same argument. Their intersection, the $y$-axis $\operatorname{span}\mathopen{}\left\{(0, 1, 0)\right\}\mathclose{}$, has dimension $1$, because the single nonzero vector $(0, 1, 0)$ is linearly independent ($c\,(0, 1, 0) = (0, c, 0)$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only if $c = 0$) and so is a basis of it. [Theorem 2](#thm-dim-sum) gives
>
> $$\begin{aligned}
> \dim(\mathcal{S}_1 + \mathcal{S}_2)
> &= 2 + 2 - 1 \\
> &= 3,
> \end{aligned}$$
>
> which agrees with $\mathcal{S}_1 + \mathcal{S}_2 = \mathbb{R}^3$ ([Example 3](#exm-sum-intersection-subspace)) and $\dim(\mathbb{R}^3) = 3$ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)).

> **NOTE:**
>
> **Corollary 1 (The dimension of a sum is at most the sum of the dimensions)** If $\mathcal{S}_1$ and $\mathcal{S}_2$ are subspaces of $\mathbb{R}^p$, then
>
> $$\dim(\mathcal{S}_1 + \mathcal{S}_2) \le \dim(\mathcal{S}_1) + \dim(\mathcal{S}_2),$$
>
> with equality exactly when $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$.

> **NOTE:**
>
> *Proof*. By [Theorem 2](#thm-dim-sum), the two sides differ by $\dim(\mathcal{S}_1 \cap \mathcal{S}_2) \ge 0$. That dimension is $0$ exactly when a basis of the intersection is the empty list, that is, when the intersection is the span of the empty list, $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span), [Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)).

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
>   the sum is the plane $z = 0$ ([Example 1](#exm-subspace-sum)), which has dimension $2$ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)), and each line has dimension $1$, with its spanning vector as a basis.
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
> **Exercise 3 (Finding the dimension of a sum of two planes in** $\mathbb{R}^4$) [Theorem 2](#thm-dim-sum) finds the [dimension](linear-algebra-subspaces.llms.md#def-dimension) of a [sum of two subspaces](#def-subspace-sum) without describing it. Let $\mathcal{S}_1 = \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2\right\}\mathclose{}$ and $\mathcal{S}_2 = \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3\right\}\mathclose{}$, two planes in $\mathbb{R}^4$, where $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_4$ are the [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) of $\mathbb{R}^4$.
>
> Find $\dim(\mathcal{S}_1 + \mathcal{S}_2)$ from [Theorem 2](#thm-dim-sum).
>
> > **TIP:**
> >
> > First find $\mathcal{S}_1 \cap \mathcal{S}_2$ by comparing entries.

> **NOTE:**
>
> *Solution 3*. A vector of $\mathcal{S}_1$ is $(a, b, 0, 0)$, and a vector of $\mathcal{S}_2$ is $(0, c, d, 0)$. They coincide exactly when $a = 0$, $d = 0$ and $b = c$, so $\mathcal{S}_1 \cap \mathcal{S}_2 = \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2\right\}\mathclose{}$, of [dimension](linear-algebra-subspaces.llms.md#def-dimension) $1$. Each plane has dimension $2$, since two distinct [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent). By [Theorem 2](#thm-dim-sum),
>
> $$\dim(\mathcal{S}_1 + \mathcal{S}_2) = 2 + 2 - 1 = 3.$$

> **NOTE:**
>
> **Exercise 4 (Finding the dimension of a sum of subspaces that meet only at the origin)** [Corollary 1](#cor-dim-subadditive) says when the [dimension](linear-algebra-subspaces.llms.md#def-dimension) of a [sum](#def-subspace-sum) matches the total of the dimensions. Let $\mathcal{S}_1$ and $\mathcal{S}_2$ be [subspaces](linear-algebra-subspaces.llms.md#def-subspace) of $\mathbb{R}^5$ with $\dim(\mathcal{S}_1) = 2$, $\dim(\mathcal{S}_2) = 3$ and $\mathcal{S}_1 \cap \mathcal{S}_2 = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, so that they meet only at the origin.
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
> Since $\mathcal{S}_1 + \mathcal{S}_2 \subseteq \mathbb{R}^5$ and both have [dimension](linear-algebra-subspaces.llms.md#def-dimension) $5$, [the two are equal](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim): $\mathcal{S}_1 + \mathcal{S}_2 = \mathbb{R}^5$.

> **NOTE:**
>
> **Theorem 3 (Rank is subadditive)** For $m \times n$ matrices $\mathbf{A}$ and $\mathbf{B}$,
>
> $$\operatorname{rank}(\mathbf{A} + \mathbf{B})
> \le \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(\mathbf{B}).$$

> **NOTE:**
>
> *Proof*. $\mathcal{C}(\mathbf{A} + \mathbf{B}) \subseteq \mathcal{C}(\mathbf{A}) + \mathcal{C}(\mathbf{B})$. Any vector of $\mathcal{C}(\mathbf{A} + \mathbf{B})$ is $(\mathbf{A} + \mathbf{B})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^n$ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)), and $(\mathbf{A} + \mathbf{B})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Theorem 8 in Matrices](linear-algebra-matrices.llms.md#thm-matmul-distrib), with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ as an $n \times 1$ matrix), a vector of $\mathcal{C}(\mathbf{A})$ plus a vector of $\mathcal{C}(\mathbf{B})$.
>
> **Compare dimensions.** All the sets involved are subspaces of $\mathbb{R}^m$ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span), [Theorem 1](#thm-sum-intersection-subspace)), so
>
> $$\begin{aligned}
> \operatorname{rank}(\mathbf{A} + \mathbf{B})
> &= \dim\mathopen{}\left(\mathcal{C}(\mathbf{A} + \mathbf{B})\right)\mathclose{}
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-dim}{\text{Theorem~7 in Column Space, Null Space and Rank-Nullity}}\text{)}
> \\
> &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A}) + \mathcal{C}(\mathbf{B})\right)\mathclose{}
> && \text{(the containment, and part 2 of }\href{linear-algebra-subspaces.qmd#thm-dim-bound}{\text{Theorem~10 in Subspaces and Rank}}\text{)}
> \\
> &\le \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} + \dim\mathopen{}\left(\mathcal{C}(\mathbf{B})\right)\mathclose{}
> && \text{(}\href{#cor-dim-subadditive}{\text{Corollary~1}}\text{)}
> \\
> &= \operatorname{rank}(\mathbf{A}) + \operatorname{rank}(\mathbf{B}).
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-dim}{\text{Theorem~7 in Column Space, Null Space and Rank-Nullity}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 6 (Subadditivity with equality and without)** Let $\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ and $\mathbf{B} = \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix}$. Each has one nonzero column and one zero column. The nonzero column on its own is linearly independent ($c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$ forces $c = 0$), and the two columns together are not, since $1$ times the zero column is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$; so each matrix has rank $1$ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)). By the same argument, $-\mathbf{A}$ has rank $1$.
>
> - $\mathbf{A} + \mathbf{B}$ is the $2 \times 2$ identity matrix, which has rank $2$ ([Example 13 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-rank-nullity)), so the bound $2 \le 1 + 1$ holds with equality.
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
>   since the plane has dimension $2$ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)), the $z$-axis has the single nonzero vector $(0, 0, 1)$ as a basis, and $\dim(\mathbb{R}^3) = 3$ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension));
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
> **Exercise 8 (Recognizing a direct sum by counting dimensions)** Statement 2 of [Theorem 4](#thm-direct-sum-equiv) recognizes a [direct sum](#def-direct-sum) from [dimensions](linear-algebra-subspaces.llms.md#def-dimension) alone. Let $\mathcal{S}_1 = \operatorname{span}\mathopen{}\left\{(1, 0, 0), (0, 1, 0)\right\}\mathclose{}$ and $\mathcal{S}_2 = \operatorname{span}\mathopen{}\left\{(0, 1, 1)\right\}\mathclose{}$, and suppose that you have already checked that $\mathcal{S}_1 + \mathcal{S}_2 = \mathbb{R}^3$.
>
> Decide whether $\mathbb{R}^3 = \mathcal{S}_1 \oplus \mathcal{S}_2$, using statement 2 of [Theorem 4](#thm-direct-sum-equiv).
>
> > **TIP:**
> >
> > Find $\dim(\mathcal{S}_1)$ and $\dim(\mathcal{S}_2)$, add them, and compare the total with $\dim(\mathbb{R}^3) = 3$.

> **NOTE:**
>
> *Solution 8*. Both $(1, 0, 0)$ and $(0, 1, 0)$ lie in $\mathcal{S}_1$, and they are [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent), so they are a [basis](linear-algebra-subspaces.llms.md#def-basis) of $\mathcal{S}_1$ and $\dim(\mathcal{S}_1) = 2$. The single nonzero vector $(0, 1, 1)$ is a basis of $\mathcal{S}_2$, so $\dim(\mathcal{S}_2) = 1$. Then
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

# 2 Orthogonal complements

> **NOTE:**
>
> **Theorem 5 (The dot product is linear in each slot)** For vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathbb{R}^p$ and numbers $a, b$,
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
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)}
> \\
> &= \sum_{i=1}^px_i\,(a u_i + b w_i)
> && \text{(}\href{linear-algebra-matrices.qmd#def-scalar-mult}{\text{Definition~9 in Matrices}}\text{, }\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~7 in Vectors}}\text{)}
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
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)}
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
> **Example 11 (Splitting a dot product)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (1, 2)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (3, 0)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = (0, 1)$, $a = 2$ and $b = -1$. Directly, $a\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + b\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = (6, -1)$ and
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (6, -1) &= 6 - 2 \\
> &= 4.
> \end{aligned}$$
>
> By [Theorem 5](#thm-dot-linear),
>
> $$\begin{aligned}
> a\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) + b\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}) &= 2 \cdot 3 + (-1) \cdot 2 \\
> &= 4,
> \end{aligned}$$
>
> the same number.

> **NOTE:**
>
> **Exercise 10 (Finding a dot product from two known dot products)** [Theorem 5](#thm-dot-linear) lets a [dot product](linear-algebra-vectors.llms.md#def-dot-product) with a combination be found from the dot products with its parts. Suppose that $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = 3$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = -1$.
>
> Find $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (2\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + 5\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})$.
>
> > **TIP:**
> >
> > Use [Theorem 5](#thm-dot-linear) with $a = 2$ and $b = 5$.

> **NOTE:**
>
> *Solution 10*. By [Theorem 5](#thm-dot-linear),
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (2\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + 5\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> = 2\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) + 5\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})
> = 2 \cdot 3 + 5 \cdot(-1)
> = 1.$$

> **NOTE:**
>
> **Definition 5 (Orthogonal complement)** The **orthogonal complement** [\[5\]](#ref-wikipedia_orthogonal_complement) of a set $\mathcal{X}$ of vectors in $\mathbb{R}^p$ is the set of vectors orthogonal ([Definition 19 in Vectors](linear-algebra-vectors.llms.md#def-orthogonal-vectors)) to every vector of $\mathcal{X}$:
>
> $$\mathcal{X}^\perp
> \stackrel{\text{def}}{=}
> \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathbb{R}^p : \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = 0 \text{ for all } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{X}\right\}\mathclose{}.$$
>
> $\mathcal{X}^\perp$ is read “$\mathcal{X}$ perp”.

> **NOTE:**
>
> **Example 12 (Orthogonal complements in** $\mathbb{R}^3$)  
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
> **Exercise 11 (Testing whether a vector is in an orthogonal complement)** A vector is in the [orthogonal complement](#def-orthogonal-complement) of a [set](https://morrison-lab.github.io/mcs/sets.html#def-set) when it is [orthogonal](linear-algebra-vectors.llms.md#def-orthogonal-vectors) to every vector of the set. Let $\mathcal{X} = \mathopen{}\left\{(1, 2, 0), (0, 3, 1)\right\}\mathclose{}$, a set of two vectors in $\mathbb{R}^3$.
>
> Decide whether the vector $(2, -1, 3)$ is in $\mathcal{X}^\perp$.
>
> > **TIP:**
> >
> > Take the [dot product](linear-algebra-vectors.llms.md#def-dot-product) of $(2, -1, 3)$ with each vector of $\mathcal{X}$.

> **NOTE:**
>
> *Solution 11*. Here
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
> *Remark 1* (The orthogonal complement of a set that is not a subspace). $\mathcal{X}$ in [Definition 5](#def-orthogonal-complement) need not be a subspace.

> **NOTE:**
>
> **Theorem 6 (An orthogonal complement is a subspace)** For any set $\mathcal{X}$ of vectors in $\mathbb{R}^p$, $\mathcal{X}^\perp$ ([Definition 5](#def-orthogonal-complement)) is a subspace of $\mathbb{R}^p$ ([Definition 4 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-subspace)).

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
> && \text{(}\href{#thm-dot-linear}{\text{Theorem~5}}\text{, special case } a \text{ and } b \text{ both equal to } 1 \text{)}
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
> && \text{(}\href{#thm-dot-linear}{\text{Theorem~5}}\text{, special case } b = 0 \text{)}
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
> **Example 13 (The complement of a single vector is a line)** The one-element set $\mathcal{X} = \mathopen{}\left\{(1, 2)\right\}\mathclose{}$ in $\mathbb{R}^2$ is not a subspace: $2\,(1, 2) = (2, 4)$ is not in it. Its orthogonal complement is
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
> That set is $\operatorname{span}\mathopen{}\left\{(-2, 1)\right\}\mathclose{}$, a subspace by [Theorem 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-span-subspace), as [Theorem 6](#thm-orthogonal-complement-subspace) says it must be. It contains $(-2, 1)$, the vector [Remark 8 in Vectors](linear-algebra-vectors.llms.md#rem-orthogonal-perpendicular) found perpendicular to $(1, 2)$.

> **NOTE:**
>
> **Exercise 12 (Finding the orthogonal complement of two vectors)** [Theorem 6](#thm-orthogonal-complement-subspace) says that an [orthogonal complement](#def-orthogonal-complement) is always a [subspace](linear-algebra-subspaces.llms.md#def-subspace), even when the original [set](https://morrison-lab.github.io/mcs/sets.html#def-set) is not. Let $\mathcal{X} = \mathopen{}\left\{(1, 0, 1), (1, 0, -1)\right\}\mathclose{}$, a set of two vectors in $\mathbb{R}^3$.
>
> Find $\mathcal{X}^\perp$ as a [span](linear-algebra-subspaces.llms.md#def-span).
>
> > **TIP:**
> >
> > A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is in $\mathcal{X}^\perp$ when $u_1 + u_3 = 0$ and $u_1 - u_3 = 0$.

> **NOTE:**
>
> *Solution 12*. A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is in $\mathcal{X}^\perp$ exactly when $(1, 0, 1) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = u_1 + u_3 = 0$ and $(1, 0, -1) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = u_1 - u_3 = 0$. Adding the two equations gives $u_1 = 0$, and then $u_3 = 0$, while $u_2$ is free. So
>
> $$\mathcal{X}^\perp = \mathopen{}\left\{(0, u_2, 0) : u_2 \in \mathbb{R}\right\}\mathclose{} = \operatorname{span}\mathopen{}\left\{(0, 1, 0)\right\}\mathclose{},$$
>
> the second coordinate axis, which is a [subspace](linear-algebra-subspaces.llms.md#def-subspace), as [Theorem 6](#thm-orthogonal-complement-subspace) says.

> **NOTE:**
>
> **Theorem 7 (The orthogonal complement of a column space is a null space)** For any $m \times n$ matrix $\mathbf{A}$,
>
> $$\mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top}).$$

> **NOTE:**
>
> *Proof*. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n$ be the columns of $\mathbf{A}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j = (a_{1j}, \ldots, a_{mj})$. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^m$, entry $j$ of ${\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is
>
> $$\begin{aligned}
> ({\mathbf{A}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_j
> &= \sum_{i=1}^{m} ({\mathbf{A}}^{\top})_{ji}\, x_i
> && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~16 in Matrices}}\text{)}
> \\
> &= \sum_{i=1}^{m} a_{ij}\, x_i
> && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-transpose}{\text{Definition~6 in Matrices}}\text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}.
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)}
> \end{aligned}$$
>
> So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{N}({\mathbf{A}}^{\top})$ ([Definition 3 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-null-space)) exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = 0$ for every column $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$.
>
> $\mathcal{C}(\mathbf{A})^\perp \subseteq \mathcal{N}({\mathbf{A}}^{\top})$. Each column $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$ is in $\mathcal{C}(\mathbf{A})$ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)), so a vector orthogonal to all of $\mathcal{C}(\mathbf{A})$ is orthogonal to every column.
>
> $\mathcal{N}({\mathbf{A}}^{\top}) \subseteq \mathcal{C}(\mathbf{A})^\perp$. Suppose $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = 0$ for every $j$, and take any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \in \mathcal{C}(\mathbf{A})$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}} \in \mathbb{R}^n$ ([Definition 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-column-space)). Then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \sum_{i=1}^{m} (\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}})_i\, x_i
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)}
> \\
> &= \sum_{i=1}^{m} \mathopen{}\left(\sum_{j=1}^na_{ij} z_j\right)\mathclose{}\, x_i
> && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~16 in Matrices}}\text{)}
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
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)}
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
> **Example 14 (The complement of the column space in [Example 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-column-space))** For $\mathbf{A}$ in [Example 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-column-space), $\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(1, 3)\right\}\mathclose{}$ (1). [Example 3 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-null-space) found $\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\{(-3, 1)\right\}\mathclose{}$, so by [Theorem 7](#thm-complement-null-space) this line is $\mathcal{C}(\mathbf{A})^\perp$. Directly, for any $c$,
>
> $$\begin{aligned}
> \mathopen{}\left(c\,(1, 3)\right)\mathclose{} \cdot (-3, 1)
> &= c\,\mathopen{}\left((1, 3) \cdot (-3, 1)\right)\mathclose{}
> && \text{(}\href{#thm-dot-linear}{\text{Theorem~5}}\text{, special case } b = 0 \text{, first slot)}
> \\
> &= c\,(-3 + 3)
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)}
> \\
> &= 0.
> && \text{(arithmetic)}
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 13 (Finding the orthogonal complement of a column space)** [Theorem 7](#thm-complement-null-space) turns the [orthogonal complement](#def-orthogonal-complement) of a [column space](linear-algebra-rank-nullity.llms.md#def-column-space) into a [null space](linear-algebra-rank-nullity.llms.md#def-null-space), which a [linear system](linear-algebra-matrices.llms.md#def-linear-system) describes. Let
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
> *Solution 13*. By [Theorem 7](#thm-complement-null-space), $\mathcal{C}(\mathbf{A})^\perp = \mathcal{N}({\mathbf{A}}^{\top})$. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (y_1, y_2, y_3)$,
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
> **Theorem 8 (A subspace and its orthogonal complement make up the whole space)** Let $\mathcal{S}$ be a subspace of $\mathbb{R}^p$. Then
>
> 1.  $\mathcal{S} \cap \mathcal{S}^\perp = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$;
> 2.  $\dim(\mathcal{S}) + \dim(\mathcal{S}^\perp) = p$;
> 3.  $\mathbb{R}^p = \mathcal{S} \oplus \mathcal{S}^\perp$ ([Definition 3](#def-direct-sum)).
>
> So every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} \in \mathbb{R}^p$ can be written as $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{S}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{S}^\perp$ in only one way ([Theorem 4](#thm-direct-sum-equiv)).

> **NOTE:**
>
> *Proof*. $\mathcal{S}^\perp$ is a subspace ([Theorem 6](#thm-orthogonal-complement-subspace)), so it has a dimension ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)).
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
> **Part 2.** Let $d = \dim(\mathcal{S})$. If $d = 0$, then $\mathcal{S}$ has a basis ([Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis)) with $0$ vectors ([Definition 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-dimension)), the empty list, whose span is $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)); so $\mathcal{S} = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, $\mathcal{S}^\perp = \mathbb{R}^p$ (every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ satisfies $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = 0$), and $0 + p = p$ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)). If $d \ge 1$, choose a basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_d$ of $\mathcal{S}$ ([Theorem 9 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-extend-basis)), and let $\mathbf{A}$ be the $p \times d$ matrix with these columns. The basis spans $\mathcal{S}$, so $\mathcal{S} = \mathcal{C}(\mathbf{A})$ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)), and $\mathcal{S}^\perp = \mathcal{N}({\mathbf{A}}^{\top})$ ([Theorem 7](#thm-complement-null-space)). ${\mathbf{A}}^{\top}$ is $d \times p$, so
>
> $$\begin{aligned}
> \dim(\mathcal{S}^\perp)
> &= \dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{}
> && \text{(}\href{#thm-complement-null-space}{\text{Theorem~7}}\text{)}
> \\
> &= \operatorname{nullity}({\mathbf{A}}^{\top})
> && \text{(}\href{linear-algebra-rank-nullity.qmd#def-nullity}{\text{Definition~7 in Column Space, Null Space and Rank-Nullity}}\text{)}
> \\
> &= p - \operatorname{rank}({\mathbf{A}}^{\top})
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-nullity}{\text{Theorem~8 in Column Space, Null Space and Rank-Nullity}}\text{, for the } p \text{ columns of } {\mathbf{A}}^{\top} \text{)}
> \\
> &= p - \operatorname{rank}(\mathbf{A})
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-transpose}{\text{Theorem~10 in Column Space, Null Space and Rank-Nullity}}\text{)}
> \\
> &= p - \dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{}
> && \text{(}\href{linear-algebra-rank-nullity.qmd#thm-rank-dim}{\text{Theorem~7 in Column Space, Null Space and Rank-Nullity}}\text{)}
> \\
> &= p - d.
> && \text{(} \mathcal{C}(\mathbf{A}) = \mathcal{S} \text{)}
> \end{aligned}$$
>
> **Part 3.** $\mathcal{S} + \mathcal{S}^\perp$ is a subspace of $\mathbb{R}^p$ ([Theorem 1](#thm-sum-intersection-subspace)), and
>
> $$\begin{aligned}
> \dim(\mathcal{S} + \mathcal{S}^\perp)
> &= \dim(\mathcal{S}) + \dim(\mathcal{S}^\perp) - \dim(\mathcal{S} \cap \mathcal{S}^\perp)
> && \text{(}\href{#thm-dim-sum}{\text{Theorem~2}}\text{)}
> \\
> &= p - \dim(\mathcal{S} \cap \mathcal{S}^\perp)
> && \text{(part 2)}
> \\
> &= p - 0
> && \text{(part 1, and } \dim(\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}) = 0 \text{ by }\href{linear-algebra-subspaces.qmd#exm-dimension}{\text{Example~16 in Subspaces and Rank}}\text{)}
> \\
> &= p.
> && \text{(arithmetic)}
> \end{aligned}$$
>
> Since $\mathcal{S} + \mathcal{S}^\perp \subseteq \mathbb{R}^p$, $\mathbb{R}^p$ is a subspace ([Example 3 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-subspace)) and $\dim(\mathbb{R}^p) = p$ ([Example 16 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-dimension)), [Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim) gives $\mathcal{S} + \mathcal{S}^\perp = \mathbb{R}^p$. Together with part 1, $\mathbb{R}^p = \mathcal{S} \oplus \mathcal{S}^\perp$. The uniqueness of the split then follows from [Theorem 4](#thm-direct-sum-equiv) (statement 1 implies statement 3).

> **NOTE:**
>
> **Example 15 (Splitting a vector of** $\mathbb{R}^3$ along a line and its complement) Let $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$ in $\mathbb{R}^3$. A single nonzero vector is linearly independent ($c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ forces $c = 0$), so $(1, 1, 0)$ is a basis of $\mathcal{S}$ and $\dim(\mathcal{S}) = 1$. A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is in $\mathcal{S}^\perp$ exactly when $u_1 + u_2 = 0$: that condition says $(1, 1, 0) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = 0$, and then
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
> **Exercise 14 (Splitting a vector into a piece in a line and an orthogonal piece)** By [Theorem 8](#thm-orthogonal-direct-sum), every vector of $\mathbb{R}^p$ splits in only one way into a piece in a [subspace](linear-algebra-subspaces.llms.md#def-subspace) $\mathcal{S}$ and a piece in its [orthogonal complement](#def-orthogonal-complement). Let $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 2)\right\}\mathclose{}$, a line in $\mathbb{R}^2$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (5, 0)$.
>
> Find $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{S}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{S}^\perp$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$.
>
> > **TIP:**
> >
> > Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = t\,(1, 2)$, and choose $t$ so that $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is [orthogonal](linear-algebra-vectors.llms.md#def-orthogonal-vectors) to $(1, 2)$.

> **NOTE:**
>
> *Solution 14*. Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = t\,(1, 2)$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (5 - t, -2t)$ is in $\mathcal{S}^\perp$ exactly when
>
> $$(1, 2) \cdot (5 - t, -2t) = 5 - t - 4t = 5 - 5t = 0,$$
>
> so $t = 1$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 2)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (4, -2)$, with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (5, 0)$ and $(1, 2) \cdot (4, -2) = 4 - 4 = 0$.

> **NOTE:**
>
> **Theorem 9 (The orthogonal complement of the orthogonal complement)** For any subspace $\mathcal{S}$ of $\mathbb{R}^p$,
>
> $$(\mathcal{S}^\perp)^\perp = \mathcal{S}.$$

> **NOTE:**
>
> *Proof*. $\mathcal{S} \subseteq (\mathcal{S}^\perp)^\perp$. Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} \in \mathcal{S}$ and any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{S}^\perp$. By [Definition 5](#def-orthogonal-complement), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = 0$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} = 0$ too ([Theorem 1 in Vectors](linear-algebra-vectors.llms.md#thm-lincom-symmetric)). So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}$ is orthogonal to every vector of $\mathcal{S}^\perp$, that is, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} \in (\mathcal{S}^\perp)^\perp$.
>
> **Equal dimensions.** $\mathcal{S}^\perp$ is a subspace ([Theorem 6](#thm-orthogonal-complement-subspace)), so part 2 of [Theorem 8](#thm-orthogonal-direct-sum) applies to it as well as to $\mathcal{S}$:
>
> $$\begin{aligned}
> \dim\mathopen{}\left((\mathcal{S}^\perp)^\perp\right)\mathclose{}
> &= p - \dim(\mathcal{S}^\perp)
> && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~8}}\text{, applied to } \mathcal{S}^\perp \text{)}
> \\
> &= p - \mathopen{}\left(p - \dim(\mathcal{S})\right)\mathclose{}
> && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~8}}\text{, applied to } \mathcal{S} \text{)}
> \\
> &= \dim(\mathcal{S}).
> && \text{(arithmetic)}
> \end{aligned}$$
>
> $(\mathcal{S}^\perp)^\perp$ is a subspace ([Theorem 6](#thm-orthogonal-complement-subspace)) that contains $\mathcal{S}$ and has the same dimension, so it equals $\mathcal{S}$ ([Theorem 11 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-subspace-equal-dim)).

> **NOTE:**
>
> **Example 16 (Back to the line)** In [Example 15](#exm-orthogonal-direct-sum), $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$ and $\mathcal{S}^\perp = \operatorname{span}\mathopen{}\left\{(1, -1, 0), (0, 0, 1)\right\}\mathclose{}$. Put those two spanning vectors in the columns of the $3 \times 2$ matrix $\mathbf{B} = \begin{bmatrix} 1 & 0 \\ -1 & 0 \\ 0 & 1 \end{bmatrix}$, so $\mathcal{S}^\perp = \mathcal{C}(\mathbf{B})$ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)) and $(\mathcal{S}^\perp)^\perp = \mathcal{N}({\mathbf{B}}^{\top})$ ([Theorem 7](#thm-complement-null-space)). Since ${\mathbf{B}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = (w_1 - w_2,\ w_3)$ ([Definition 16 in Matrices](linear-algebra-matrices.llms.md#def-matvec-mult)), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in (\mathcal{S}^\perp)^\perp$ exactly when $w_1 - w_2 = 0$ and $w_3 = 0$. So
>
> $$\begin{aligned}
> (\mathcal{S}^\perp)^\perp &= \mathopen{}\left\{(a, a, 0) : a \in \mathbb{R}\right\}\mathclose{} \\
> &= \mathcal{S}.
> \end{aligned}$$

> **NOTE:**
>
> **Example 17 (A set that is not a subspace does not come back)** The one-element set $\mathcal{X} = \mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$ is not a subspace. Its orthogonal complement is the same as that of $\mathcal{S}$ in [Example 16](#exm-double-complement), since both are defined by the single condition $u_1 + u_2 = 0$, so $(\mathcal{X}^\perp)^\perp = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$, which contains $(2, 2, 0) \notin \mathcal{X}$. [Theorem 9](#thm-double-complement) needs $\mathcal{S}$ to be a subspace.

> **NOTE:**
>
> **Exercise 15 (Taking the orthogonal complement twice)** [Theorem 9](#thm-double-complement) says that taking the [orthogonal complement](#def-orthogonal-complement) of a [subspace](linear-algebra-subspaces.llms.md#def-subspace) twice gives back the subspace. Let $\mathcal{S} = \operatorname{span}\mathopen{}\left\{(1, 2)\right\}\mathclose{}$ in $\mathbb{R}^2$, whose orthogonal complement is $\mathcal{S}^\perp = \operatorname{span}\mathopen{}\left\{(-2, 1)\right\}\mathclose{}$.
>
> Find $(\mathcal{S}^\perp)^\perp$ directly from $\mathcal{S}^\perp = \operatorname{span}\mathopen{}\left\{(-2, 1)\right\}\mathclose{}$.
>
> > **TIP:**
> >
> > A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is [orthogonal](linear-algebra-vectors.llms.md#def-orthogonal-vectors) to every multiple of $(-2, 1)$ exactly when $-2 w_1 + w_2 = 0$.

> **NOTE:**
>
> *Solution 15*. A vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is in $(\mathcal{S}^\perp)^\perp$ exactly when $c\,(-2, 1) \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = c\,(-2 w_1 + w_2) = 0$ for every $c$, that is, when $w_2 = 2 w_1$. So
>
> $$(\mathcal{S}^\perp)^\perp = \mathopen{}\left\{(w_1, 2 w_1) : w_1 \in \mathbb{R}\right\}\mathclose{} = \operatorname{span}\mathopen{}\left\{(1, 2)\right\}\mathclose{} = \mathcal{S},$$
>
> as [Theorem 9](#thm-double-complement) says.

# 3 The fundamental theorem of linear algebra

> **NOTE:**
>
> **Theorem 10 (Fundamental theorem of linear algebra)** Let $\mathbf{A}$ be an $m \times n$ matrix with $\operatorname{rank}(\mathbf{A}) = r$. Then
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
> *Proof*. **Part 1.** The first equation is [Theorem 7](#thm-complement-null-space). $\mathcal{C}(\mathbf{A})$ is a subspace of $\mathbb{R}^m$ ([Theorem 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-column-space-span)), so
>
> $$\begin{aligned}
> \mathbb{R}^m
> &= \mathcal{C}(\mathbf{A}) \oplus \mathcal{C}(\mathbf{A})^\perp
> && \text{(}\href{#thm-orthogonal-direct-sum}{\text{Theorem~8}}\text{)}
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
> && \text{(}\href{#thm-double-complement}{\text{Theorem~9}}\text{)}
> \\
> &= \mathcal{N}({\mathbf{A}}^{\top})^\perp.
> && \text{(part 1)}
> \end{aligned}$$
>
> **Part 3.** Apply parts 2 and 1 to the $n \times m$ matrix ${\mathbf{A}}^{\top}$, using ${({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}$: part 2 gives $\mathcal{C}({\mathbf{A}}^{\top}) = \mathcal{N}(\mathbf{A})^\perp$, and part 1 gives $\mathbb{R}^n = \mathcal{C}({\mathbf{A}}^{\top}) \oplus \mathcal{N}(\mathbf{A})$.
>
> **Part 4.** $\dim\mathopen{}\left(\mathcal{C}(\mathbf{A})\right)\mathclose{} = r$ by [Theorem 7 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-dim). $\dim\mathopen{}\left(\mathcal{C}({\mathbf{A}}^{\top})\right)\mathclose{} = \operatorname{rank}({\mathbf{A}}^{\top})$ by [Theorem 7 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-dim), and that is $r$ by [Theorem 10 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-transpose). $\mathbf{A}$ has $n$ columns, so $\dim\mathopen{}\left(\mathcal{N}(\mathbf{A})\right)\mathclose{} = n - r$ ([Definition 7 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#def-nullity), [Theorem 8 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#thm-rank-nullity)). ${\mathbf{A}}^{\top}$ has $m$ columns and rank $r$, so $\dim\mathopen{}\left(\mathcal{N}({\mathbf{A}}^{\top})\right)\mathclose{} = m - r$ in the same way.

> **NOTE:**
>
> **Example 18 (The four subspaces of the matrix in [Example 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-column-space))** For $\mathbf{A}$ in [Example 1 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-column-space), $m = 2$, $n = 3$ and $r = 1$ ([Example 11 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-rank-dim)).
>
> - **In** $\mathbb{R}^3$: the row space $\mathcal{C}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\{(1, -2, -2)\right\}\mathclose{}$
>
>   1.  has dimension $1 = r$, and $\mathcal{N}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(2, 1, 0), (2, 0, 1)\right\}\mathclose{}$ has dimension $2 = n - r$ ([Example 12 in Column Space, Null Space and Rank-Nullity](linear-algebra-rank-nullity.llms.md#exm-nullity)). The spanning vectors are orthogonal:
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
> - **In** $\mathbb{R}^2$: $\mathcal{C}(\mathbf{A}) = \operatorname{span}\mathopen{}\left\{(1, 3)\right\}\mathclose{}$ has dimension $1 = r$, and $\mathcal{N}({\mathbf{A}}^{\top}) = \operatorname{span}\mathopen{}\left\{(-3, 1)\right\}\mathclose{}$ has dimension $1 = m - r$ ([Example 14](#exm-complement-null-space)).
>
> By part 3, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (1, 0, 0)$ splits uniquely into a row-space part $t\,(1, -2, -2)$ and a null-space part. The null-space part $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} - t\,(1, -2, -2)$ lies in $\mathcal{N}(\mathbf{A})$ (part 3), and $\mathcal{N}(\mathbf{A}) = \mathcal{C}({\mathbf{A}}^{\top})^\perp$ ([Theorem 7](#thm-complement-null-space) applied to ${\mathbf{A}}^{\top}$, with ${({\mathbf{A}}^{\top})}^{\top} = \mathbf{A}$), so it must be orthogonal to $(1, -2, -2)$:
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
> && \text{(}\href{#thm-dot-linear}{\text{Theorem~5}}\text{)}
> \\
> &= 1 \cdot 1 + (-t) \cdot 9
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~8 in Vectors}}\text{)}
> \\
> &= 1 - 9t,
> && \text{(arithmetic)}
> \end{aligned}$$
>
> so $t = \frac{1}{9}$. The row-space part is $\mathopen{}\left(\frac{1}{9}, -\frac{2}{9}, -\frac{2}{9}\right)\mathclose{}$ and the null-space part is $\mathopen{}\left(\frac{8}{9}, \frac{2}{9}, \frac{2}{9}\right)\mathclose{}$; as a check, row 1 of $\mathbf{A}$ gives $\frac{8}{9} - 2 \cdot\frac{2}{9} - 2 \cdot\frac{2}{9} = 0$, and row 2 is $3$ times row 1, so $\mathbf{A}$ sends the null-space part to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_2$.
>
> These four statements are the fundamental theorem of linear algebra [\[6\]](#ref-wikipedia_fundamental_theorem_of_linear_algebra).

> **NOTE:**
>
> **Exercise 16 (Testing whether a linear system has a solution through the left null space)** Part 2 of [Theorem 10](#thm-fundamental-subspaces) says that $\mathcal{C}(\mathbf{A}) = \mathcal{N}({\mathbf{A}}^{\top})^\perp$, so a [linear system](linear-algebra-matrices.llms.md#def-linear-system) $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has a solution exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is [orthogonal](linear-algebra-vectors.llms.md#def-orthogonal-vectors) to every vector of the [left null space](linear-algebra-rank-nullity.llms.md#def-left-null-space). Let
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
> *Solution 16*. Here ${\mathbf{A}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}} = (y_1 + y_2, y_1 + y_2)$, so $(1, -1, 0)$ is in $\mathcal{N}({\mathbf{A}}^{\top})$. But
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \cdot (1, -1, 0) = 1 - 2 + 0 = -1 \neq 0,$$
>
> so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is not in $\mathcal{N}({\mathbf{A}}^{\top})^\perp = \mathcal{C}(\mathbf{A})$, and $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ has no solution. Directly, the first two entries of $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ are both $x_1 + x_2$, while those of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ are $1$ and $2$.

# Definitions on this page

- [Definition 1 (Sum of subspaces)](#def-subspace-sum)
- [Definition 2 (Complementary subspaces)](#def-complementary-subspaces)
- [Definition 3 (Direct sum)](#def-direct-sum)
- [Definition 4 (Projection onto a subspace along a complement)](#def-projection)
- [Definition 5 (Orthogonal complement)](#def-orthogonal-complement)

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

\[5\]

Wikipedia contributors, “Orthogonal complement — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Orthogonal_complement>

\[6\]

Wikipedia contributors, “Fundamental theorem of linear algebra — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Fundamental_theorem_of_linear_algebra>
