# Orthonormal Bases, Outer Products and Hilbert Spaces

Code

Published

Last modified: 2026-11-20 16:05:26 (PST)

# 1 Orthonormal bases and Gram-Schmidt

> **NOTE:**
>
> Like [Section  in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#sec-cauchy-schwarz), this section is adapted from Zhou [\[1\]](#ref-zhou2024vector), used under the MIT License (see the license text in [Section  in Subspaces and Rank](linear-algebra-subspaces.llms.md#sec-subspaces)). The source leaves the proof that orthonormal vectors are linearly independent to class; it is written out here.

> **NOTE:**
>
> **Theorem 1 (The dot product of a vector with a linear combination)** For vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_k \in \mathbb{R}^p$ and numbers $c_1, \ldots, c_k$, with $k \ge 1$,
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathopen{}\left(\sum_{j=1}^{k} c_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j\right)\mathclose{}
> = \sum_{j=1}^{k} c_j\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j).$$

> **NOTE:**
>
> *Proof*. Write $u_{ji}$ for entry $i$ of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j$. Then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathopen{}\left(\sum_{j=1}^{k} c_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j\right)\mathclose{}
> &= \sum_{i=1}^px_i \sum_{j=1}^{k} c_j u_{ji}
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{, }\href{linear-algebra-vectors.qmd#def-linear-combination}{\text{Definition~11 in Vectors}}\text{)}
> \\
> &= \sum_{i=1}^p\sum_{j=1}^{k} x_i c_j u_{ji}
> && \text{(distribute each } x_i \text{ over the inner sum)}
> \\
> &= \sum_{j=1}^{k} \sum_{i=1}^px_i c_j u_{ji}
> && \text{(swap the order of the finite sums)}
> \\
> &= \sum_{j=1}^{k} \sum_{i=1}^pc_j x_i u_{ji}
> && \text{(commute the factors in each product)}
> \\
> &= \sum_{j=1}^{k} c_j \sum_{i=1}^px_i u_{ji}
> && \text{(factor } c_j \text{ out of the inner sum)}
> \\
> &= \sum_{j=1}^{k} c_j\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j).
> && \text{(}\href{linear-algebra-vectors.qmd#def-dot-product}{\text{Definition~10 in Vectors}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 1 (Dotting with a combination of three vectors)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (1, 2, 3)$ and take the combination $2\,(1, 0, 0) - (0, 1, 0) + 4\,(0, 0, 1) = (2, -1, 4)$. Directly,
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \cdot (2, -1, 4) &= 2 - 2 + 12 \\
> &= 12.
> \end{aligned}$$
>
> By [Theorem 1](#thm-dot-linear-sum), $2 \cdot 1 - 1 \cdot 2 + 4 \cdot 3 = 12$, the same number.

> **NOTE:**
>
> **Theorem 2 (Orthonormal vectors are linearly independent)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_k$ are orthonormal ([Definition 28 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)), then they are linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)).

> **NOTE:**
>
> *Proof*. Suppose $\sum_{j=1}^{k} c_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Take any $i \in \mathopen{}\left\{1, \ldots, k\right\}\mathclose{}$. Then
>
> $$\begin{aligned}
> 0
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}
> && \text{(every term of the dot product is } 0 \text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \cdot \mathopen{}\left(\sum_{j=1}^{k} c_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j\right)\mathclose{}
> && \text{(substitute the supposed equation)}
> \\
> &= \sum_{j=1}^{k} c_j\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j)
> && \text{(}\href{#thm-dot-linear-sum}{\text{Theorem~1}}\text{)}
> \\
> &= c_i.
> && \text{(} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \text{ is } 1 \text{ if } j = i \text{ and } 0 \text{ otherwise)}
> \end{aligned}$$
>
> So every $c_i = 0$.

> **NOTE:**
>
> **Example 2 (Three orthonormal vectors in** $\mathbb{R}^3$) Let
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 = (0, 0, 1), \quad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 = \tfrac{1}{\sqrt{2}}\,(1, 1, 0), \quad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3 = \tfrac{1}{\sqrt{2}}\,(1, -1, 0).$$
>
> Each has norm $1$:
>
> $$\begin{aligned}
> \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2\right\rVert\mathclose{}^2 &= \tfrac{1}{2}\,(1 + 1 + 0) \\
> &= 1,
> \end{aligned}$$
>
> and likewise for the others. They are mutually orthogonal: $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 = 0$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3 = 0$, because $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1$ has its only nonzero entry where the others have $0$, and
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3 &= \tfrac{1}{2}\,(1 - 1 + 0) \\
> &= 0.
> \end{aligned}$$
>
> So by [Theorem 2](#thm-orthonormal-independent) they are linearly independent, with no need to solve $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 + c_3 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.
>
> The converse fails: $(1, 0)$ and $(1, 1)$ are linearly independent, since $c_1 (1, 0) + c_2 (1, 1) = (c_1 + c_2, c_2)$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only if $c_2 = 0$ and then $c_1 = 0$, but they are not orthonormal, since $(1, 0) \cdot (1, 1) = 1 \ne 0$.

> **NOTE:**
>
> **Definition 1 (Orthonormal basis)** An **orthonormal basis** [\[2\]](#ref-wikipedia_orthonormal_basis) of a subspace $\mathcal{S}$ of $\mathbb{R}^p$ is a basis of $\mathcal{S}$ ([Definition 1 in Bases and Dimension](linear-algebra-bases.llms.md#def-basis)) whose vectors are orthonormal ([Definition 28 in Vectors](linear-algebra-vectors.llms.md#def-orthonormal-vectors)).

> **NOTE:**
>
> **Example 3 (Orthonormal bases of** $\mathbb{R}^3$)  
>
> - The indicator vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_3$ are orthonormal
>   1.  and a basis of $\mathbb{R}^3$ ([Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension)).
> - The vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3$ of [Example 2](#exm-orthonormal-independent) are orthonormal and linearly independent, so they are a basis of their span ([Definition 1 in Bases and Dimension](linear-algebra-bases.llms.md#def-basis)), which therefore has dimension $3$ ([Definition 4 in Bases and Dimension](linear-algebra-bases.llms.md#def-dimension)) and is all of $\mathbb{R}^3$ ([Theorem 6 in Bases and Dimension](linear-algebra-bases.llms.md#thm-subspace-equal-dim), [Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension)). So they are an orthonormal basis of $\mathbb{R}^3$ too.

> **NOTE:**
>
> **Example 4 (Bases that are not orthonormal, and orthonormal lists that are not bases)**  
>
> - $(1, 0), (1, 1)$ is a basis of $\mathbb{R}^2$ ([Example 1 in Bases and Dimension](linear-algebra-bases.llms.md#exm-basis)). It is not an orthonormal basis, since $(1, 0) \cdot (1, 1) = 1$.
> - $(1, 0, 0), (0, 1, 0)$ is orthonormal but not a basis of $\mathbb{R}^3$: its span is the plane $z = 0$ ([Example 6 in Subspaces and Rank](linear-algebra-subspaces.llms.md#exm-span)), which does not contain $(0, 0, 1)$.

> **NOTE:**
>
> **Theorem 3 (Coordinates in an orthonormal basis are dot products)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_k$ is an orthonormal basis of a subspace $\mathcal{S}$ ([Definition 1](#def-orthonormal-basis)), then every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{S}$ satisfies
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \sum_{i=1}^{k} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i.$$

> **NOTE:**
>
> *Proof*. The basis spans $\mathcal{S}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \sum_{j=1}^{k} c_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j$ for some numbers $c_j$. For each $i$,
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \cdot \mathopen{}\left(\sum_{j=1}^{k} c_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j\right)\mathclose{}
> && \text{(substitute)}
> \\
> &= \sum_{j=1}^{k} c_j\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j)
> && \text{(}\href{#thm-dot-linear-sum}{\text{Theorem~1}}\text{)}
> \\
> &= c_i,
> && \text{(}\href{linear-algebra-vectors.qmd#def-orthonormal-vectors}{\text{Definition~28 in Vectors}}\text{)}
> \end{aligned}$$
>
> so each coefficient $c_i$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.

> **NOTE:**
>
> **Example 5 (Expanding a vector in an orthonormal basis)** With the orthonormal basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3$ of $\mathbb{R}^3$ from [Example 3](#exm-orthonormal-basis) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = (1, 2, 3)$: $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = 3$,
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= \tfrac{1}{\sqrt{2}}\,(1 + 2) \\
> &= \tfrac{3}{\sqrt{2}}
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} &= \tfrac{1}{\sqrt{2}}\,(1 - 2) \\
> &= -\tfrac{1}{\sqrt{2}}.
> \end{aligned}$$
>
> Then
>
> $$\begin{aligned}
> \sum_{i=1}^{3} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i
> &= 3\,(0, 0, 1) + \tfrac{3}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\,(1, 1, 0)
> - \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\,(1, -1, 0)
> && \text{(substitute)}
> \\
> &= (0, 0, 3) + \mathopen{}\left(\tfrac{3}{2}, \tfrac{3}{2}, 0\right)\mathclose{} + \mathopen{}\left(-\tfrac{1}{2}, \tfrac{1}{2}, 0\right)\mathclose{}
> && \text{(multiply out each term)}
> \\
> &= (1, 2, 3),
> && \text{(add entrywise)}
> \end{aligned}$$
>
> which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, as [Theorem 3](#thm-orthonormal-expansion) says.

> **NOTE:**
>
> **Definition 2 (Gram-Schmidt process)** The **Gram-Schmidt process** [\[3\]](#ref-wikipedia_gram_schmidt_process) takes vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k \in \mathbb{R}^p$ and, for $i = 1, 2, \ldots, k$ in turn:
>
> 1.  **Orthogonalize:** $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i \stackrel{\text{def}}{=}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i - \sum_{j=1}^{i-1} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j$ (for $i = 1$ the sum is empty, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_1 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1$);
> 2.  **Test:** if $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, stop;
> 3.  **Normalize:** $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \stackrel{\text{def}}{=}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i / \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i\right\rVert\mathclose{}$.
>
> The output is the list $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2, \ldots$ produced before the process stops, or all $k$ of them if it never stops.

> **NOTE:**
>
> **Example 6 (Two steps of Gram-Schmidt in** $\mathbb{R}^3$) Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = (1, 1, 0)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = (1, 0, 1)$.
>
> - **Step 1.** $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_1 = (1, 1, 0)$, with norm $\sqrt{2}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 = \tfrac{1}{\sqrt{2}}\,(1, 1, 0)$.
>
> - **Step 2.**
>
>   $$\begin{aligned}
>   \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 &= \tfrac{1}{\sqrt{2}}\,(1 + 0 + 0) \\
>   &= \tfrac{1}{\sqrt{2}},
>   \end{aligned}$$
>
>   so
>
>   $$\begin{aligned}
>   \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_2
>   &= (1, 0, 1) - \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\,(1, 1, 0)
>   && \text{(orthogonalize)}
>   \\
>   &= (1, 0, 1) - \mathopen{}\left(\tfrac{1}{2}, \tfrac{1}{2}, 0\right)\mathclose{}
>   && \text{(multiply out)}
>   \\
>   &= \mathopen{}\left(\tfrac{1}{2}, -\tfrac{1}{2}, 1\right)\mathclose{},
>   && \text{(subtract entrywise)}
>   \end{aligned}$$
>
>   with norm $\sqrt{\tfrac{1}{4} + \tfrac{1}{4} + 1} = \sqrt{\tfrac{3}{2}}$, so
>
>   $$\begin{aligned}
>   \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 &= \sqrt{\tfrac{2}{3}}\,\mathopen{}\left(\tfrac{1}{2}, -\tfrac{1}{2}, 1\right)\mathclose{} \\
>   &= \tfrac{1}{\sqrt{6}}\,(1, -1, 2).
>   \end{aligned}$$
>
> As a check,
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 &= \tfrac{1}{\sqrt{12}}\,(1 - 1 + 0) \\
> &= 0.
> \end{aligned}$$

> **NOTE:**
>
> **Example 7 (Gram-Schmidt stops on dependent vectors)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = (1, 2)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = (2, 4)$. Step 1 gives $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 = \tfrac{1}{\sqrt{5}}\,(1, 2)$. In step 2,
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 &= \tfrac{1}{\sqrt{5}}\,(2 + 8) \\
> &= \tfrac{10}{\sqrt{5}},
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_2
> &= (2, 4) - \tfrac{10}{\sqrt{5}} \cdot\tfrac{1}{\sqrt{5}}\,(1, 2) \\
> &= (2, 4) - 2\,(1, 2) \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}},
> \end{aligned}$$
>
> so the process stops: $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$ is a multiple of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1$.

> **NOTE:**
>
> **Theorem 4 (What Gram-Schmidt produces)** Run the Gram-Schmidt process ([Definition 2](#def-gram-schmidt)) on $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k \in \mathbb{R}^p$.
>
> 1.  If it has produced $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i$ without stopping, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i$ are orthonormal and $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i\right\}\mathclose{}
>     = \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i\right\}\mathclose{}$.
> 2.  If it reaches step $i$ (that is, it did not stop at steps $1, \ldots, i - 1$), it stops there exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i \in \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_{i-1}\right\}\mathclose{}$.
> 3.  It completes all $k$ steps exactly when $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ are linearly independent; then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_k$ is an orthonormal basis of $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k\right\}\mathclose{}$ ([Definition 1](#def-orthonormal-basis)).

> **NOTE:**
>
> *Proof*. **Parts 1 and 2, by [induction](https://morrison-lab.github.io/mcs/proof-writing.html#def-proof-by-induction) on** $i$. Before step $1$, the list of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}$’s is empty, which is orthonormal, and both spans are $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ ([Definition 5 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-span)). Suppose part 1 holds after step $i - 1$, and write
>
> $$\begin{aligned}
> \mathcal{S}_{i-1} &= \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_{i-1}\right\}\mathclose{} \\
> &= \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_{i-1}\right\}\mathclose{}.
> \end{aligned}$$
>
> The orthonormal vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_{i-1}$ are linearly independent ([Theorem 2](#thm-orthonormal-independent)) and span $\mathcal{S}_{i-1}$, so they are an orthonormal basis of it.
>
> $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i$ is orthogonal to the earlier $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}$’s. For each $l < i$,
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_l \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_l \cdot \mathopen{}\left(1\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i + \sum_{j=1}^{i-1} \mathopen{}\left(-\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i\right)\mathclose{}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j\right)\mathclose{}
> && \text{(}\href{#def-gram-schmidt}{\text{Definition~2}}\text{, as a linear combination)}
> \\
> &= 1\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_l \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i) + \sum_{j=1}^{i-1} \mathopen{}\left(-\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i\right)\mathclose{}\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_l \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j)
> && \text{(}\href{#thm-dot-linear-sum}{\text{Theorem~1}}\text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_l \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i - \sum_{j=1}^{i-1} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i)\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_l \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j)
> && \text{(} 1\,z = z \text{, and pull the minus signs out of the sum)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_l \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_l \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i
> && \text{(only the } j = l \text{ term survives, }\href{linear-algebra-vectors.qmd#def-orthonormal-vectors}{\text{Definition~28 in Vectors}}\text{)}
> \\
> &= 0.
> && \text{(arithmetic)}
> \end{aligned}$$
>
> *Part 2 at step* $i$. If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i = \sum_{j<i} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \in \mathcal{S}_{i-1}$. Conversely, if $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i \in \mathcal{S}_{i-1}$, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i = \sum_{j<i} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j$ ([Theorem 3](#thm-orthonormal-expansion)), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.
>
> *Part 1 at step* $i$, if the process does not stop. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i\right\rVert\mathclose{} > 0$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i / \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i\right\rVert\mathclose{}$ has norm $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i\right\rVert\mathclose{} / \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i\right\rVert\mathclose{} = 1$ ([Theorem 1 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#thm-norm-properties)) and for $l < i$
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_l \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i
> &= \frac{1}{\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i\right\rVert\mathclose{}}\,(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_l \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i)
> && \text{(}\href{linear-algebra-orthogonal-complements.qmd#thm-dot-linear}{\text{Theorem~1 in Orthogonal Complements and the Fundamental Theorem}}\text{, special case } b = 0 \text{)}
> \\
> &= 0,
> && \text{(} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i \text{ is orthogonal to } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_l \text{)}
> \end{aligned}$$
>
> and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_l = 0$ too ([Theorem 1 in Vectors](linear-algebra-vectors.llms.md#thm-lincom-symmetric)). So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i$ are orthonormal. For the spans:
>
> - $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i = \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i\right\rVert\mathclose{}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i + \sum_{j<i} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j$ is in $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i\right\}\mathclose{}$, and so is each of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_{i-1}$, which lie in $\mathcal{S}_{i-1} = \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_{i-1}\right\}\mathclose{}
>   \subseteq \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i\right\}\mathclose{}$.
> - $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i = \mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i - \sum_{j<i} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j\right)\mathclose{} / \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i\right\rVert\mathclose{}$ is in $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i\right\}\mathclose{}$, because each $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_j$ with $j < i$ lies in $\mathcal{S}_{i-1}$; and so is each of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_{i-1}$.
>
> A span is a subspace ([Theorem 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#thm-span-subspace)), so it contains every linear combination of vectors in it; each span therefore contains the other, and they are equal.
>
> **Part 3.** If the process completes, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 \notin \operatorname{span}$ of the empty list, and for each $i \ge 2$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i \notin \operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_{i-1}\right\}\mathclose{}$ (part 2). Applying [Theorem 3 in Bases and Dimension](linear-algebra-bases.llms.md#thm-add-outside-span) $k$ times, starting from the empty list, shows that $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ are linearly independent. Conversely, if they are linearly independent, no $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i$ is a linear combination $\sum_{j<i} c_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$ of the earlier ones, because then $\sum_{j<i} c_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_i = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ would be a combination with a nonzero coefficient; so by part 2 the process never stops. When it completes, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_k$ are orthonormal, hence linearly independent ([Theorem 2](#thm-orthonormal-independent)), and span $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k\right\}\mathclose{}$ (part 1), so they are an orthonormal basis of it.

> **NOTE:**
>
> **Example 8 (Finishing an orthonormal basis of** $\mathbb{R}^3$) Continue [Example 6](#exm-gram-schmidt) with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_3 = (0, 1, 1)$. $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_3 = \tfrac{1}{\sqrt{2}}$ and
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_3 &= \tfrac{1}{\sqrt{6}}\,(0 - 1 + 2) \\
> &= \tfrac{1}{\sqrt{6}},
> \end{aligned}$$
>
> so
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_3
> &= (0, 1, 1) - \tfrac{1}{\sqrt{2}} \cdot\tfrac{1}{\sqrt{2}}\,(1, 1, 0) - \tfrac{1}{\sqrt{6}} \cdot\tfrac{1}{\sqrt{6}}\,(1, -1, 2)
> && \text{(orthogonalize)}
> \\
> &= (0, 1, 1) - \tfrac{1}{2}\,(1, 1, 0) - \tfrac{1}{6}\,(1, -1, 2)
> && \text{(multiply the scalars)}
> \\
> &= \mathopen{}\left(0 - \tfrac{1}{2} - \tfrac{1}{6},\; 1 - \tfrac{1}{2} + \tfrac{1}{6},\; 1 - 0 - \tfrac{2}{6}\right)\mathclose{}
> && \text{(subtract entrywise)}
> \\
> &= \mathopen{}\left(-\tfrac{2}{3}, \tfrac{2}{3}, \tfrac{2}{3}\right)\mathclose{},
> && \text{(arithmetic)}
> \end{aligned}$$
>
> with norm $\sqrt{3 \cdot\tfrac{4}{9}} = \tfrac{2}{\sqrt{3}}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3 = \tfrac{1}{\sqrt{3}}\,(-1, 1, 1)$. The process did not stop, so by [Theorem 4](#thm-gram-schmidt) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_3$ are linearly independent and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3$ is an orthonormal basis of their span. That span therefore has dimension $3$ ([Definition 4 in Bases and Dimension](linear-algebra-bases.llms.md#def-dimension)), so it is $\mathbb{R}^3$ ([Theorem 6 in Bases and Dimension](linear-algebra-bases.llms.md#thm-subspace-equal-dim), [Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension)). As a check,
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3 &= \tfrac{1}{\sqrt{6}}\,(-1 + 1 + 0) \\
> &= 0
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3 &= \tfrac{1}{\sqrt{18}}\,(-1 - 1 + 2) \\
> &= 0.
> \end{aligned}$$

> **NOTE:**
>
> **Corollary 1 (Every subspace has an orthonormal basis)** Let $\mathcal{S}$ be a subspace of $\mathbb{R}^p$. Every orthonormal list of vectors in $\mathcal{S}$ extends to an orthonormal basis of $\mathcal{S}$ ([Definition 1](#def-orthonormal-basis)). Starting from the empty list shows that $\mathcal{S}$ has an orthonormal basis.

> **NOTE:**
>
> *Proof*. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_r \in \mathcal{S}$ be orthonormal. They are linearly independent ([Theorem 2](#thm-orthonormal-independent)), so they extend to a basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_r, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_{r+1}, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_d$ of $\mathcal{S}$ ([Theorem 4 in Bases and Dimension](linear-algebra-bases.llms.md#thm-extend-basis)). Run the Gram-Schmidt process on this basis. It is linearly independent, so the process completes, and the output is an orthonormal basis of its span, which is $\mathcal{S}$ ([Theorem 4](#thm-gram-schmidt), part 3).
>
> The first $r$ outputs are $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_r$ themselves, by [induction](https://morrison-lab.github.io/mcs/proof-writing.html#def-proof-by-induction) on $i \le r$. Suppose the outputs before step $i$ are $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_{i-1}$ (for $i = 1$ there are none, and the sum below is empty). Then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_i - \sum_{j<i} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_i)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_i,
> \end{aligned}$$
>
> because each $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_i = 0$; $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_i = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_i \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, because $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_i\right\rVert\mathclose{} = 1$, so the process does not stop; and
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_i &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_i / \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_i\right\rVert\mathclose{} \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_i.
> \end{aligned}$$
>
> So the orthonormal basis contains the starting list.

> **NOTE:**
>
> **Example 9 (Extending one unit vector to an orthonormal basis of** $\mathbb{R}^3$) Start from the unit vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1 = \tfrac{1}{\sqrt{2}}\,(1, 1, 0)$. Extend it to a basis of $\mathbb{R}^3$ as in [Example 8 in Bases and Dimension](linear-algebra-bases.llms.md#exm-extend-basis), starting from the empty list: $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1$ is not in the span of the empty list, $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, because $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1\right\rVert\mathclose{} = 1$; $(1, 0, 0)$ is not in $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1\right\}\mathclose{}$, because every multiple of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1$ has equal first and second entries, and $(0, 0, 1)$ is not in $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, (1, 0, 0)\right\}\mathclose{}$, because every combination of those two vectors has third entry $0$. So $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, (1, 0, 0), (0, 0, 1)$ are linearly independent ([Theorem 3 in Bases and Dimension](linear-algebra-bases.llms.md#thm-add-outside-span)), and three linearly independent vectors in $\mathbb{R}^3$ are a basis of it (they are a basis of their span, which has dimension $3$ ([Definition 4 in Bases and Dimension](linear-algebra-bases.llms.md#def-dimension)) and so is $\mathbb{R}^3$ ([Theorem 6 in Bases and Dimension](linear-algebra-bases.llms.md#thm-subspace-equal-dim), [Example 6 in Bases and Dimension](linear-algebra-bases.llms.md#exm-dimension))). Gram-Schmidt on $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, (1, 0, 0), (0, 0, 1)$:
>
> 1.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1$.
>
> 2.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1 \cdot (1, 0, 0) = \tfrac{1}{\sqrt{2}}$, so
>
>     $$\begin{aligned}
>     \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_2 &= (1, 0, 0) - \tfrac{1}{2}\,(1, 1, 0) \\
>     &= \mathopen{}\left(\tfrac{1}{2}, -\tfrac{1}{2}, 0\right)\mathclose{},
>     \end{aligned}$$
>
>     with norm $\tfrac{1}{\sqrt{2}}$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2 = \tfrac{1}{\sqrt{2}}\,(1, -1, 0)$.
>
> 3.  $(0, 0, 1)$ is orthogonal to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_1$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_2$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}'_3 = (0, 0, 1)$, which already has norm $1$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{q}}\vphantom{q}}_3 = (0, 0, 1)$.
>
> The result is the orthonormal basis of [Example 3](#exm-orthonormal-basis), in a different order.

# 2 Outer product

> **NOTE:**
>
> **Definition 3 (Outer product)** The **outer product** [\[4\]](#ref-wikipedia_outer_product) of a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ of length $m$ and a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ of length $n$ is the $m \times n$ matrix product ([Definition 1 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#def-matrix-mult)) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ of the column vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ with the row vector ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$. Its entries are
>
> $$\mathopen{}\left(\underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}_{m \times 1}\,\underbrace{{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}}_{1 \times n}\right)\mathclose{}_{ij}
> = u_i v_j
> \qquad \text{(definition of matrix multiplication; the sum has one term)}$$

> **NOTE:**
>
> **Example 10 (An outer product)** For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 2, 3)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (4, 5)$:
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}
> &= \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}
> \begin{bmatrix} 4 & 5 \end{bmatrix}
> && \text{(definition of the outer product)}
> \\
> &= \begin{bmatrix}
> 1 \cdot 4 & 1 \cdot 5 \\
> 2 \cdot 4 & 2 \cdot 5 \\
> 3 \cdot 4 & 3 \cdot 5
> \end{bmatrix}
> && \text{(entry } (i, j) \text{ is } u_i v_j \text{)}
> \\
> &= \begin{bmatrix}
> 4 & 5 \\
> 8 & 10 \\
> 12 & 15
> \end{bmatrix}
> && \text{(multiply)}
> \end{aligned}$$

> **NOTE:**
>
> *Remark 1* (Outer product and dot product). The dot product ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ ([Example 3 in Matrix Multiplication](linear-algebra-matrix-multiplication.llms.md#exm-dot-product-matmul)) needs two vectors of the same length and gives a number. The outer product $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ takes vectors of any two lengths and gives a matrix [\[5, Ch. 1\]](#ref-banerjee2014linear), p. 11.
>
> For example, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 2, 3)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (4, 5)$ in [Example 10](#exm-outer-product) have different lengths, so they have no dot product, but their outer product is a $3 \times 2$ matrix. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}} = (1, 2)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = (3, 4)$, which have the same length, both products exist:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> &= 1 \cdot 3 + 2 \cdot 4 \\
> &= 11 \\
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}^{\top}
> &= \begin{bmatrix} 1 \cdot 3 & 1 \cdot 4 \\ 2 \cdot 3 & 2 \cdot 4 \end{bmatrix} \\
> &= \begin{bmatrix} 3 & 4 \\ 6 & 8 \end{bmatrix}
> \end{aligned}$$

> **NOTE:**
>
> **Definition 4 (Self outer product)** The **self outer product** of a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with $n$ entries is the [outer product](#def-outer-product) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with itself, the $n \times n$ [matrix](linear-algebra-matrices.llms.md#def-matrix)
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} \stackrel{\text{def}}{=}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$$

> **NOTE:**
>
> **Example 11 (A self outer product)** For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 2)$, the [self outer product](#def-self-outer-product) is
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}
> &= \begin{bmatrix} 1 \\ 2 \end{bmatrix}
> \begin{bmatrix} 1 & 2 \end{bmatrix}
> && \text{(definition of the self outer product)}
> \\
> &= \begin{bmatrix}
> 1 \cdot 1 & 1 \cdot 2 \\
> 2 \cdot 1 & 2 \cdot 2
> \end{bmatrix}
> && \text{(multiply each entry of the column by each entry of the row)}
> \\
> &= \begin{bmatrix}
> 1 & 2 \\
> 2 & 4
> \end{bmatrix}
> && \text{(multiply)}
> \end{aligned}$$

> **NOTE:**
>
> *Remark 2* (Self outer products in statistics). Statistics meets the [self outer product](#def-self-outer-product) mostly through [sum](algebra-sums.llms.md#def-summation)s of them. The [Gram matrix](linear-algebra-column-null-space.llms.md#def-gram-matrix) ${\mathbf{X}}^{\top} \mathbf{X}$ of a data [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{X}$ is the sum of the self outer products of its [row](linear-algebra-matrices.llms.md#def-matrix-row)s, as [the Gram matrix example](linear-algebra-column-null-space.llms.md#exm-cross-product-sum-outer) shows. For observation vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_n$, the sum $\sum_{i=1}^n\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_i - {\bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}}\right)\mathclose{} {\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_i - {\bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}}\right)\mathclose{}}^{\top}$ of the self outer products of their deviations from the vector ${\bar{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}}$ of entrywise [mean](linear-algebra-vectors.llms.md#def-mean)s is what other sources call the *scatter matrix* [\[6\]](#ref-wikipedia_scatter_matrix). Each term of either sum is one observation’s contribution to the total.

> **NOTE:**
>
> **Theorem 5 (An outer product has rank one)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ is a nonzero vector of length $m$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is a nonzero vector of length $n$, then $\operatorname{rank}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}) = 1$ ([Definition 2 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-rank)).

> **NOTE:**
>
> *Proof*. Column $j$ of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ has entries $u_1 v_j, \ldots, u_m v_j$, so it is the vector $v_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$.
>
> **The rank is at least one.** Because $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, some entry $v_j$ is nonzero. Then column $j$, $v_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$, is a nonzero vector, and a single nonzero vector is linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)): $c\,(v_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ forces $c = 0$.
>
> **The rank is at most one.** Take any two columns $j \neq k$. If
>
> $$\begin{aligned}
> v_j &= v_k \\
> &= 0,
> \end{aligned}$$
>
> both columns are $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and $1 \cdot(v_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) + 1 \cdot(v_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Otherwise, use the coefficients $c_j = v_k$ and $c_k = -v_j$, which are not both zero:
>
> $$\begin{aligned}
> v_k\,(v_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}) - v_j\,(v_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}})
> &= (v_k v_j - v_j v_k)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}
> && \text{(collect the scalar multiples of } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \text{)}
> \\
> &= 0 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}
> && \text{(multiplication of numbers is commutative)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}
> && \text{(a zero multiple of a vector is } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{)}
> \end{aligned}$$
>
> Either way, every pair of columns has a combination with coefficients that are not all zero and that equals $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Now take any set of two or more columns. It contains a pair $j \neq k$. Use that pair’s coefficients for columns $j$ and $k$, and the coefficient $0$ for every other column in the set. This combination equals $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and its coefficients are not all zero, so the set is not linearly independent ([Definition 1 in Subspaces and Rank](linear-algebra-subspaces.llms.md#def-linearly-independent)). The largest linearly independent set of columns therefore has one column.

> **NOTE:**
>
> **Example 12 (The rank of an outer product)** In [Example 10](#exm-outer-product), the second column $(5, 10, 15)$ of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\,{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ is $\frac{5}{4}$ times the first column $(4, 8, 12)$, because the columns are $v_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = 4\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ and $v_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = 5\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$. So the two columns are not linearly independent, and the $3 \times 2$ matrix has rank $1$.

> **NOTE:**
>
> **Corollary 2 (A self outer product has rank one)** For a nonzero vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, the [self outer product](#def-self-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ has [rank](linear-algebra-subspaces.llms.md#def-rank) $1$:
>
> $${\operatorname{rank}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\right)\mathclose{}} = 1$$

> **NOTE:**
>
> *Proof*. The [self outer product](#def-self-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ is the [outer product](#def-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$. Both of its factors are the nonzero vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, so [Theorem 5](#thm-outer-product-rank), with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ in place of both $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$, gives [rank](linear-algebra-subspaces.llms.md#def-rank) $1$.

> **NOTE:**
>
> **Example 13 (The rank of a self outer product)** For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 2)$, [the example of a self outer product](#exm-self-outer-product) found the [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} = \begin{bmatrix} 1 & 2 \\ 2 & 4 \end{bmatrix}$. Its second [column](linear-algebra-matrices.llms.md#def-matrix-column) $(2, 4)$ is $2$ times its first column $(1, 2)$, so the two columns are not [linearly independent](linear-algebra-subspaces.llms.md#def-linearly-independent), and the matrix has [rank](linear-algebra-subspaces.llms.md#def-rank) $1$, as [Corollary 2](#cor-self-outer-product-rank) says.

> **NOTE:**
>
> **Theorem 6 (The transpose of an outer product)** For a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ with $m$ entries and a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ with $n$ entries, the [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose) of the [outer product](#def-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ [equals](linear-algebra-matrices.llms.md#def-matrix-equality) the outer product $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}$:
>
> $$\underbrace{{\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{}}^{\top}}_{n \times m}
> = \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}}_{n \times m}$$

> **NOTE:**
>
> *Proof*. Entry $(i, j)$ of each side, for $i$ from $1$ to $n$ and $j$ from $1$ to $m$:
>
> $$\begin{aligned}
> \mathopen{}\left[{\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{}}^{\top}\right]\mathclose{}_{ij}
> &= \mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{}_{ji}
> && \text{(definition of the transpose)}
> \\
> &= u_j v_i
> && \text{(entries of an outer product)}
> \\
> &= v_i u_j
> && \text{(multiplication of numbers is commutative)}
> \\
> &= \mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\right)\mathclose{}_{ij}
> && \text{(entries of an outer product)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 14 (Transposing an outer product)** For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 2, 3)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (4, 5)$, [the example of an outer product](#exm-outer-product) found the $3 \times 2$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$. Swapping the two vectors gives its [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose):
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}
> &= \begin{bmatrix} 4 \\ 5 \end{bmatrix}
> \begin{bmatrix} 1 & 2 & 3 \end{bmatrix}
> && \text{(definition of the outer product)}
> \\
> &= \begin{bmatrix}
> 4 \cdot 1 & 4 \cdot 2 & 4 \cdot 3 \\
> 5 \cdot 1 & 5 \cdot 2 & 5 \cdot 3
> \end{bmatrix}
> && \text{(entry } (i, j) \text{ is } v_i u_j \text{)}
> \\
> &= \begin{bmatrix}
> 4 & 8 & 12 \\
> 5 & 10 & 15
> \end{bmatrix}
> && \text{(multiply)}
> \end{aligned}$$
>
> Each [row of](linear-algebra-matrices.llms.md#def-matrix-row) this matrix is a [column of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$, as [Theorem 6](#thm-outer-product-transpose) says.

> **NOTE:**
>
> **Theorem 7 (An outer product times a vector)** For a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ with $m$ entries and two vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ with $n$ entries, the [product](linear-algebra-matrix-multiplication.llms.md#def-matvec-mult) of the [outer product](#def-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ [equals](linear-algebra-matrices.llms.md#def-matrix-equality) the [scalar multiple](linear-algebra-matrices.llms.md#def-scalar-mult) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ by the [dot product](linear-algebra-vectors.llms.md#def-dot-product) ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$:
>
> $$\underbrace{\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}}_{m \times 1}
> = \mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right)\mathclose{} \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}_{m \times 1}$$

> **NOTE:**
>
> *Proof*. Entry $i$ of each side, for $i$ from $1$ to $m$:
>
> $$\begin{aligned}
> \mathopen{}\left[\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right]\mathclose{}_{i}
> &= \sum_{j=1}^{n} \mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{}_{ij} w_j
> && \text{(definition of matrix-vector multiplication)}
> \\
> &= \sum_{j=1}^{n} u_i v_j w_j
> && \text{(entries of an outer product)}
> \\
> &= u_i \sum_{j=1}^{n} v_j w_j
> && \text{(factor } u_i \text{ out of the sum)}
> \\
> &= u_i \mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right)\mathclose{}
> && \text{(definition of the dot product)}
> \\
> &= \mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right)\mathclose{} u_i
> && \text{(multiplication of numbers is commutative)}
> \\
> &= \mathopen{}\left[\mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right)\mathclose{} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}\right]\mathclose{}_{i}
> && \text{(definition of scalar multiplication)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 15 (Multiplying an outer product by a vector)** Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 2, 3)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (4, 5)$ from [the example of an outer product](#exm-outer-product), and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = (1, -1)$. [Multiplying](linear-algebra-matrix-multiplication.llms.md#def-matvec-mult) the [outer product](#def-outer-product) by $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ directly gives
>
> $$\begin{aligned}
> \mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> &= \begin{bmatrix}
> 4 & 5 \\
> 8 & 10 \\
> 12 & 15
> \end{bmatrix}
> \begin{bmatrix} 1 \\ -1 \end{bmatrix}
> && \text{(the outer product found in that example)}
> \\
> &= \begin{bmatrix}
> 4 - 5 \\
> 8 - 10 \\
> 12 - 15
> \end{bmatrix}
> && \text{(definition of matrix-vector multiplication)}
> \\
> &= \begin{bmatrix} -1 \\ -2 \\ -3 \end{bmatrix}
> && \text{(subtract)}
> \end{aligned}$$
>
> The [dot product](linear-algebra-vectors.llms.md#def-dot-product) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> &= 4 \cdot 1 + 5 \cdot(-1)
> && \text{(definition of the dot product)}
> \\
> &= -1
> && \text{(multiply and add)}
> \end{aligned}$$
>
> and $(-1)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (-1, -2, -3)$ is the same vector, as [Theorem 7](#thm-outer-product-matvec) says.

# 3 Kronecker product

> **NOTE:**
>
> **Definition 5 (Kronecker product)** The **Kronecker product** of an $m \times n$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ and a $p \times q$ matrix $\mathbf{B}$ is the $mp \times nq$ [block matrix](linear-algebra-cholesky.llms.md#def-block-matrix) whose block in row $i$ and column $j$ is $a_{ij} \mathbf{B}$, where $a_{ij}$ is the $(i, j)$ entry of $\mathbf{A}$:
>
> $$\mathbf{A} \otimes \mathbf{B}
> = \begin{bmatrix}
> a_{11} \mathbf{B} & \cdots & a_{1n} \mathbf{B} \\
> \vdots & \ddots & \vdots \\
> a_{m1} \mathbf{B} & \cdots & a_{mn} \mathbf{B}
> \end{bmatrix}.$$

> **NOTE:**
>
> **Example 16 (A Kronecker product)** For $\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$ and $\mathbf{B} = \begin{bmatrix} 0 & 1 \end{bmatrix}$:
>
> $$\begin{aligned}
> \mathbf{A} \otimes \mathbf{B}
> &= \begin{bmatrix}
> 1 \cdot\mathbf{B} & 2 \cdot\mathbf{B} \\
> 3 \cdot\mathbf{B} & 4 \cdot\mathbf{B}
> \end{bmatrix}
> && \text{(definition of the Kronecker product)} \\
> &= \begin{bmatrix}
> 0 & 1 & 0 & 2 \\
> 0 & 3 & 0 & 4
> \end{bmatrix}
> && \text{(multiply each entry of } \mathbf{A} \text{ by } \mathbf{B} \text{)}
> \end{aligned}$$
>
> The result is $2 \times 4$: $\mathbf{A}$ is $2 \times 2$ and $\mathbf{B}$ is $1 \times 2$, so $\mathbf{A} \otimes \mathbf{B}$ is $(2 \cdot 1) \times (2 \cdot 2)$.

> **NOTE:**
>
> **Theorem 8 (An outer product is a Kronecker product)** For a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ with $m$ entries and a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ with $n$ entries, the [Kronecker product](#def-kronecker-product) of the [column vector](linear-algebra-vectors.llms.md#def-column-vector) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ with the [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose) ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ [equals](linear-algebra-matrices.llms.md#def-matrix-equality) the [outer product](#def-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$:
>
> $$\underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}_{m \times 1} \otimes \underbrace{{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}}_{1 \times n}
> = \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}}_{m \times n}$$

> **NOTE:**
>
> *Proof*. The [Kronecker product](#def-kronecker-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \otimes {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ stacks $u_1 {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}, \ldots, u_m {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$, so its $i$th [row](linear-algebra-matrices.llms.md#def-matrix-row) is $u_i {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$. So entry $(i, j)$ of each side, for $i$ from $1$ to $m$ and $j$ from $1$ to $n$, is
>
> $$\begin{aligned}
> \mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \otimes {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{}_{ij}
> &= \mathopen{}\left(u_i {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{}_{j}
> && \text{(definition of the Kronecker product)}
> \\
> &= u_i v_j
> && \text{(entry } j \text{ of the scalar multiple } u_i {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top} \text{)}
> \\
> &= \mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{}_{ij}
> && \text{(entries of an outer product)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 17 (An outer product as a Kronecker product)** For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 2, 3)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (4, 5)$, the [Kronecker product](#def-kronecker-product) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ with ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ is
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \otimes {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}
> &= \begin{bmatrix}
> 1 \cdot\begin{bmatrix} 4 & 5 \end{bmatrix} \\
> 2 \cdot\begin{bmatrix} 4 & 5 \end{bmatrix} \\
> 3 \cdot\begin{bmatrix} 4 & 5 \end{bmatrix}
> \end{bmatrix}
> && \text{(definition of the Kronecker product)}
> \\
> &= \begin{bmatrix}
> 4 & 5 \\
> 8 & 10 \\
> 12 & 15
> \end{bmatrix}
> && \text{(multiply)}
> \end{aligned}$$
>
> This [matrix](linear-algebra-matrices.llms.md#def-matrix) is the [outer product](#def-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ that [the example of an outer product](#exm-outer-product) found, as [Theorem 8](#thm-kronecker-outer-product) says.

> **NOTE:**
>
> **Definition 6 (Vectorization)** The **vectorization** [\[7\]](#ref-wikipedia_vectorization) of an $m \times n$ [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ is the [column vector](linear-algebra-vectors.llms.md#def-column-vector) with $mn$ entries that stacks the [column](linear-algebra-matrices.llms.md#def-matrix-column)s $\mathbf{A}_{:,1}, \ldots, \mathbf{A}_{:,n}$ of $\mathbf{A}$ in order:
>
> $${\operatorname{vec}\mathopen{}\left(\mathbf{A}\right)\mathclose{}} \stackrel{\text{def}}{=}
> \begin{bmatrix} \mathbf{A}_{:,1} \\ \vdots \\ \mathbf{A}_{:,n} \end{bmatrix}$$

> **NOTE:**
>
> **Example 18 (Vectorizing a** $2 \times 2$ matrix) For $\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$, the [column](linear-algebra-matrices.llms.md#def-matrix-column)s are $(1, 3)$ and $(2, 4)$, so the [vectorization](#def-vectorization) stacks them:
>
> $${\operatorname{vec}\mathopen{}\left(\mathbf{A}\right)\mathclose{}} = \begin{bmatrix} 1 \\ 3 \\ 2 \\ 4 \end{bmatrix}$$

> **NOTE:**
>
> **Theorem 9 (The vectorization of an outer product is a Kronecker product)** For a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ with $m$ entries and a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ with $n$ entries, the [vectorization](#def-vectorization) of the [outer product](#def-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ [equals](linear-algebra-matrices.llms.md#def-matrix-equality) the [Kronecker product](#def-kronecker-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \otimes \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$:
>
> $$\underbrace{{\operatorname{vec}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{}}}_{mn \times 1}
> = \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}_{n \times 1} \otimes \underbrace{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}_{m \times 1}$$

> **NOTE:**
>
> *Proof*. The $j$th [column of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$ has entries $u_1 v_j, \ldots, u_m v_j$, so it is the vector $v_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$. Then
>
> $$\begin{aligned}
> {\operatorname{vec}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{}}
> &= \begin{bmatrix} v_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \\ \vdots \\ v_n \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \end{bmatrix}
> && \text{(definition of vectorization)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \otimes \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}
> && \text{(definition of the Kronecker product, with one column of blocks)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 19 (Vectorizing an outer product)** For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 2, 3)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (4, 5)$, [the example of an outer product](#exm-outer-product) found the [outer product](#def-outer-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}$, whose [column](linear-algebra-matrices.llms.md#def-matrix-column)s are $(4, 8, 12)$ and $(5, 10, 15)$. Its [vectorization](#def-vectorization) and the [Kronecker product](#def-kronecker-product) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \otimes \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ agree:
>
> $$\begin{aligned}
> {\operatorname{vec}\mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\right)\mathclose{}}
> &= \begin{bmatrix} 4 \\ 8 \\ 12 \\ 5 \\ 10 \\ 15 \end{bmatrix}
> && \text{(stack the columns)}
> \\
> &= \begin{bmatrix} 4 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \\ 5 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \end{bmatrix}
> && \text{(each column is a multiple of } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \otimes \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}
> && \text{(definition of the Kronecker product)}
> \end{aligned}$$
>
> as [Theorem 9](#thm-vec-outer-product) says.

# 4 Hilbert spaces

> **NOTE:**
>
> **Definition 7 (Cauchy sequence)** A [sequence](https://morrison-lab.github.io/mcs/functions.html#def-sequence) $(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_n)$ of vectors in a [real inner product space](linear-algebra-inner-products.llms.md#def-inner-product-space) $V$ is a **Cauchy sequence** [\[8\]](#ref-wikipedia_cauchy_sequence) if for every $\varepsilon> 0$ there is a [natural number](https://morrison-lab.github.io/mcs/number-systems.html#def-natural-numbers) $N$ such that
>
> $$\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_m - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_n\right\rVert\mathclose{} < \varepsilon\quad \text{for all } m, n \ge N,$$
>
> where $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rVert\mathclose{} = \sqrt{{\mathopen{}\left\langle \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\right\rangle\mathclose{}}}$ for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in V$.

> **NOTE:**
>
> **Example 20 (A Cauchy sequence of real numbers)** The [real numbers](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers) $\mathbb{R}$ with the [inner product](linear-algebra-inner-products.llms.md#def-inner-product) ${\mathopen{}\left\langle x, y\right\rangle\mathclose{}} = x\,y$ form an [inner product space](linear-algebra-inner-products.llms.md#def-inner-product-space), and $\mathopen{}\left\lVert x\right\rVert\mathclose{} = \mathopen{}\left|x\right|\mathclose{}$ in it. The [sequence](https://morrison-lab.github.io/mcs/functions.html#def-sequence) $x_n = \frac{1}{n}$ is a [Cauchy sequence](#def-cauchy-sequence). Given $\varepsilon> 0$, take $N$ to be any [natural number](https://morrison-lab.github.io/mcs/number-systems.html#def-natural-numbers) larger than $\frac{1}{\varepsilon}$. [For all](https://morrison-lab.github.io/mcs/proof-writing.html#def-universal-quantifier) $m, n \ge N$, both $\frac{1}{m}$ and $\frac{1}{n}$ lie in $(0, \frac{1}{N}]$, so $\mathopen{}\left|\frac{1}{m} - \frac{1}{n}\right|\mathclose{} < \frac{1}{N} < \varepsilon$. For example, with $\varepsilon= 0.01$, take $N = 101$: all $m, n \ge 101$ have $\mathopen{}\left|\frac{1}{m} - \frac{1}{n}\right|\mathclose{} < \frac{1}{101} < 0.01$.

> **NOTE:**
>
> **Definition 8 (Complete inner product space)** A [real inner product space](linear-algebra-inner-products.llms.md#def-inner-product-space) $V$ is **complete** [\[9\]](#ref-wikipedia_complete_metric_space) if for every [Cauchy sequence](#def-cauchy-sequence) $(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_n)$ in $V$ there is a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in V$ such that for every $\varepsilon> 0$ there is a [natural number](https://morrison-lab.github.io/mcs/number-systems.html#def-natural-numbers) $N$ with
>
> $$\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_n - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rVert\mathclose{} < \varepsilon\quad \text{for every } n \ge N.$$

> **NOTE:**
>
> **Example 21 (Polynomials are not complete)** Let $V$ be the [set](https://morrison-lab.github.io/mcs/sets.html#def-set) of [polynomials](algebra-polynomials.llms.md#def-polynomial) on $[0, 1]$, with the [inner product](linear-algebra-inner-products.llms.md#def-inner-product) ${\mathopen{}\left\langle f, g\right\rangle\mathclose{}} = \int_0^1 f(t)\,g(t)\,dt$. The [partial sums](algebra-polynomials.llms.md#def-partial-sum) $p_n(t) = \sum_{k=0}^{n} \frac{t^k}{k!}$ are a [Cauchy sequence](#def-cauchy-sequence) in $V$, because they [converge](algebra-polynomials.llms.md#def-convergent-sequence) uniformly on $[0, 1]$ to $\text{e}^{t}$. The only candidate for a [limit](algebra-polynomials.llms.md#def-sequence-limit) is $\text{e}^{t}$, which is not a [polynomial](algebra-polynomials.llms.md#def-polynomial), so no polynomial $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in V$ satisfies the condition of [Definition 8](#def-complete-inner-product-space), and $V$ is not [complete](#def-complete-inner-product-space).

> **NOTE:**
>
> **Definition 9 (Hilbert space)** A **Hilbert space** [\[10\]](#ref-wikipedia_hilbert_space) is a [complete](#def-complete-inner-product-space) [real inner product space](linear-algebra-inner-products.llms.md#def-inner-product-space) [\[5, Sec. 16.8\]](#ref-banerjee2014linear), Definition 16.8, p. 547.

> **NOTE:**
>
> **Example 22 (Real coordinate space is a Hilbert space)** The Euclidean [space](linear-algebra-vectors.llms.md#def-real-coordinate-space) $\mathbb{R}^2$ with the [dot product](linear-algebra-vectors.llms.md#def-dot-product) ([Example 2 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#exm-inner-product-space)) is a [Hilbert space](#def-hilbert-space). Let $(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_n)$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_n = (x_{n,1}, x_{n,2})$ be a [Cauchy sequence](#def-cauchy-sequence) in it. Each coordinate [sequence](https://morrison-lab.github.io/mcs/functions.html#def-sequence) is a Cauchy sequence of [real numbers](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers), because $\mathopen{}\left|x_{m,j} - x_{n,j}\right|\mathclose{} \le \mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_m - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_n\right\rVert\mathclose{}$ for $j = 1, 2$. Each coordinate sequence then [converges](algebra-polynomials.llms.md#def-convergent-sequence) to a [real number](https://morrison-lab.github.io/mcs/number-systems.html#def-real-numbers) $y_j$, because every Cauchy sequence of real numbers converges [\[9\]](#ref-wikipedia_complete_metric_space), and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (y_1, y_2)$ satisfies the condition of [Definition 8](#def-complete-inner-product-space). For example, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}_n = (\frac{1}{n}, 1 + \frac{1}{n})$ is a Cauchy sequence with [limit](algebra-polynomials.llms.md#def-sequence-limit) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (0, 1)$.

# Definitions on this page

- [Definition 1 (Orthonormal basis)](#def-orthonormal-basis)
- [Definition 2 (Gram-Schmidt process)](#def-gram-schmidt)
- [Definition 3 (Outer product)](#def-outer-product)
- [Definition 4 (Self outer product)](#def-self-outer-product)
- [Definition 5 (Kronecker product)](#def-kronecker-product)
- [Definition 6 (Vectorization)](#def-vectorization)
- [Definition 7 (Cauchy sequence)](#def-cauchy-sequence)
- [Definition 8 (Complete inner product space)](#def-complete-inner-product-space)
- [Definition 9 (Hilbert space)](#def-hilbert-space)

Back to top

## References

\[1\]

H. Zhou, “Vectors.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/02-vector/02-vector.html>

\[2\]

Wikipedia contributors, “Orthonormal basis — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Orthonormal_basis>

\[3\]

Wikipedia contributors, “Gram–schmidt process — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Gram%E2%80%93Schmidt_process>

\[4\]

Wikipedia contributors, “Outer product — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Outer_product>

\[5\]

S. Banerjee and A. Roy, *Linear algebra and matrix analysis for statistics*, vol. 181. Crc Press Boca Raton, 2014. Available: <https://www.routledge.com/Linear-Algebra-and-Matrix-Analysis-for-Statistics/Banerjee-Roy/p/book/9781420095388>

\[6\]

Wikipedia contributors, “Scatter matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Scatter_matrix>

\[7\]

Wikipedia contributors, “Vectorization (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Vectorization_(mathematics)>

\[8\]

Wikipedia contributors, “Cauchy sequence — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Cauchy_sequence>

\[9\]

Wikipedia contributors, “Complete metric space — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Complete_metric_space>

\[10\]

Wikipedia contributors, “Hilbert space — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Hilbert_space>
