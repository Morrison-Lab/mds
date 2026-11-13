# Subspaces and Rank

Code

Published

Last modified: 2026-11-12 16:00:39 (PST)

# 1 Rank

> **NOTE:**
>
> **Definition 1 (Linearly independent vectors)** Vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k$ of the same length $p$ are **linearly independent** [\[1\]](#ref-wikipedia_linear_independence) if the only numbers $c_1, \ldots, c_k$ with
>
> $$c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$$
>
> are
>
> $$\begin{aligned}
> c_1 &= \cdots \\
> &= c_k \\
> &= 0.
> \end{aligned}$$
>
> Vectors that are not linearly independent are **linearly dependent**.

> **NOTE:**
>
> **Example 1 (Independent and dependent pairs of vectors)**  
>
> - $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 = (1, 0)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 = (1, 1)$ are linearly independent: $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 = (c_1 + c_2, c_2)$, which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only if $c_2 = 0$ and then $c_1 = 0$.
> - $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 = (1, 2)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 = (2, 4)$ are not: $2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Exercise 1 (Testing whether two features and their total are linearly independent)** A table of data that stores two features and also their total holds redundant information, which the test below detects. Let
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 = \begin{bmatrix}1 \\ 2 \\ 0\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 = \begin{bmatrix}0 \\ 1 \\ 1\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_3 = \begin{bmatrix}1 \\ 3 \\ 1\end{bmatrix}.$$
>
> Are $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_3$ [linearly independent](#def-linearly-independent)?
>
> > **TIP:**
> >
> > Compare $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_3$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2$.

> **NOTE:**
>
> *Solution 1*. No. $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 = {(1, 3, 1)}^{\top} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_3$, so
>
> $$1 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + 1 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 + (-1) \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_3 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}},$$
>
> with numbers $c_1 = 1$, $c_2 = 1$ and $c_3 = -1$ that are not all $0$. By [Definition 1](#def-linearly-independent), the three vectors are [linearly dependent](#def-linearly-independent).

> **NOTE:**
>
> **Definition 2 (Rank)** The **rank** [\[2\]](#ref-wikipedia_rank_linear_algebra) of a matrix $\mathbf{A}$, written $\operatorname{rank}(\mathbf{A})$, is the largest number of columns of $\mathbf{A}$ that are linearly independent ([Definition 1](#def-linearly-independent)).

> **NOTE:**
>
> **Example 2 (The rank of two** $3 \times 2$ matrices) The matrix $\begin{bmatrix} 1 & 1 \\ 1 & 2 \\ 1 & 3 \end{bmatrix}$ has rank $2$: if $c_1 (1, 1, 1) + c_2 (1, 2, 3) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, then subtracting the first entry from the second gives $c_2 = 0$, and then $c_1 = 0$.
>
> The matrix $\begin{bmatrix} 1 & 2 \\ 1 & 2 \\ 1 & 2 \end{bmatrix}$ has rank $1$: its second column is twice its first, so the two columns are not linearly independent, but the first column on its own is.

> **NOTE:**
>
> **Definition 3 (Full column rank)** An $n \times p$ matrix has **full column rank** if its rank ([Definition 2](#def-rank)) is $p$, so that all of its columns are linearly independent.

> **NOTE:**
>
> *Remark 1* (Full column rank needs at least as many rows as columns). In [Example 2](#exm-rank), the first matrix has full column rank: its rank is $2$, and it has $2$ columns. The second does not, because its rank is $1$.
>
> An $n \times p$ matrix can have full column rank only when $p \le n$, because more than $n$ vectors of length $n$ are never linearly independent. For example, the $2 \times 3$ matrix $\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \end{bmatrix}$ has $3$ columns of length $2$, and $1 \cdot(1, 0) + 1 \cdot(0, 1) - 1 \cdot(1, 1) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, with coefficients that are not all zero. So its $3$ columns are not linearly independent, and its rank is less than $3$.

> **NOTE:**
>
> **Exercise 2 (Finding the rank of a** $3 \times 3$ matrix) The [rank](#def-rank) of a data [matrix](linear-algebra-matrices.llms.md#def-matrix) counts how many of its [columns](linear-algebra-matrices.llms.md#def-matrix-column) carry new information. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 0 & 1 \\ 0 & 1 & 1 \\ 2 & 1 & 3\end{bmatrix}.$$
>
> Find ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}}$.
>
> > **TIP:**
> >
> > Add the first two [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$ and compare them with the third. Then check whether the first two are [linearly independent](#def-linearly-independent).

> **NOTE:**
>
> *Solution 2*. ${\operatorname{rank}\mathopen{}\left(\mathbf{A}\right)\mathclose{}} = 2$. The third [column of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$ adds up the first two: ${(1, 0, 2)}^{\top} + {(0, 1, 1)}^{\top} = {(1, 1, 3)}^{\top}$, so the three are not [linearly independent](#def-linearly-independent). The first two are: if $c_1 {(1, 0, 2)}^{\top} + c_2 {(0, 1, 1)}^{\top} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, then the first entry gives $c_1 = 0$, and the second gives $c_2 = 0$. By [Definition 2](#def-rank), the [rank](#def-rank) is $2$.

> **NOTE:**
>
> **Exercise 3 (Testing whether an all-ones column and one feature have full column rank)** Regression software often puts an all-ones [column](linear-algebra-matrices.llms.md#def-matrix-column) in the input [matrix](linear-algebra-matrices.llms.md#def-matrix), beside the features. With one feature, measured at $2$, $4$ and $6$, the input matrix is
>
> $$\mathbf{X} = \begin{bmatrix}1 & 2 \\ 1 & 4 \\ 1 & 6\end{bmatrix}.$$
>
> Does $\mathbf{X}$ have [full column rank](#def-full-column-rank)?
>
> > **TIP:**
> >
> > By [Definition 3](#def-full-column-rank), check whether the two [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{X}$ are [linearly independent](#def-linearly-independent).

> **NOTE:**
>
> *Solution 3*. Yes. Suppose $c_1 {(1, 1, 1)}^{\top} + c_2 {(2, 4, 6)}^{\top} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. The first two entries give
>
> $$c_1 + 2 c_2 = 0
> \quad \text{and} \quad
> c_1 + 4 c_2 = 0.$$
>
> Subtracting the first equation from the second gives $2 c_2 = 0$, so $c_2 = 0$, and then $c_1 = 0$. So the two [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{X}$ are [linearly independent](#def-linearly-independent), the [rank](#def-rank) of $\mathbf{X}$ is $2$, and $\mathbf{X}$ has [full column rank](#def-full-column-rank).

# 2 Subspaces

> **NOTE:**
>
> This section is adapted from Zhou [\[3\]](#ref-zhou2024vecsp), used under the MIT License. The license text is:
>
> > Copyright (c) 2024 ucla-biostat-216
> >
> > Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
> >
> > The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
> >
> > THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

> **NOTE:**
>
> **Definition 4 (Subspace, linear subspace)** A set $\mathcal{S}$ of vectors in $\mathbb{R}^p$ is a **subspace** [\[4\]](#ref-wikipedia_linear_subspace) of $\mathbb{R}^p$ if it is not empty and it is closed under vector addition and scalar multiplication:
>
> 1.  if $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{S}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{S}$, then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathcal{S}$;
> 2.  if $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{S}$ and $c \in \mathbb{R}$, then $c \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} \in \mathcal{S}$.
>
> A subspace is also called a **linear subspace**.

> **NOTE:**
>
> **Example 3 (A line through the origin is a subspace)** Let $\mathcal{S} = \mathopen{}\left\{c\,(1, 2) : c \in \mathbb{R}\right\}\mathclose{}$, the line in $\mathbb{R}^2$ through $(0, 0)$ and $(1, 2)$.
>
> - **Addition:** $a\,(1, 2) + b\,(1, 2) = (a + b)\,(1, 2)$, which is in $\mathcal{S}$.
> - **Scalar multiplication:** $c\,\mathopen{}\left(a\,(1, 2)\right)\mathclose{} = (ca)\,(1, 2)$, which is in $\mathcal{S}$.
>
> So $\mathcal{S}$ is a subspace of $\mathbb{R}^2$. Two other subspaces of $\mathbb{R}^p$ are the set $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ that holds only the zero vector, and $\mathbb{R}^p$ itself.

> **NOTE:**
>
> **Example 4 (A line that misses the origin is not a subspace)** Let $\mathcal{T} = \mathopen{}\left\{(x, 1) : x \in \mathbb{R}\right\}\mathclose{}$, the horizontal line in $\mathbb{R}^2$ at height $1$. The vectors $(0, 1)$ and $(2, 1)$ are in $\mathcal{T}$, but their sum $(2, 2)$ is not, because its second entry is $2$, not $1$. So $\mathcal{T}$ is not closed under addition, and it is not a subspace.

> **NOTE:**
>
> **Exercise 4 (Testing whether vectors with a nonnegative second entry are a subspace)** A constraint such as “this entry is at least $0$” cuts out a [set](https://morrison-lab.github.io/mcs/sets.html#def-set) of vectors, and it is worth knowing whether that set is a [subspace](#def-subspace). Let
>
> $$\mathcal{H} = \mathopen{}\left\{(x, y) \in \mathbb{R}^2 : y \ge 0\right\}\mathclose{},$$
>
> the vectors whose second entry is nonnegative.
>
> Is $\mathcal{H}$ a subspace of $\mathbb{R}^2$?
>
> > **TIP:**
> >
> > Check condition 2 of [Definition 4](#def-subspace) with $c = -1$.

> **NOTE:**
>
> *Solution 4*. No. The vector ${(0, 1)}^{\top}$ is in $\mathcal{H}$, but $(-1) \cdot{(0, 1)}^{\top} = {(0, -1)}^{\top}$ is not, because its second entry is negative. So $\mathcal{H}$ fails condition 2 of [Definition 4](#def-subspace), and it is not a [subspace](#def-subspace). $\mathcal{H}$ does satisfy condition 1, which shows that one condition alone is not enough.

> **NOTE:**
>
> **Theorem 1 (Every subspace contains the zero vector)** If $\mathcal{S}$ is a subspace of $\mathbb{R}^p$ ([Definition 4](#def-subspace)), then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\in \mathcal{S}$.

> **NOTE:**
>
> *Proof*. A subspace is not empty, so it contains some vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$. Closure under scalar multiplication with $c = 0$ puts $0 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ in $\mathcal{S}$, and $0 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Example 5 (Using the zero vector to rule out a subspace)** The plane $\mathopen{}\left\{(x, y, z) : x + y + z = 1\right\}\mathclose{}$ in $\mathbb{R}^3$ does not contain $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}= (0, 0, 0)$, because $0 + 0 + 0 = 0 \neq 1$. So, by [Theorem 1](#thm-subspace-zero), it is not a subspace. The line $\mathcal{T}$ in [Example 4](#exm-not-subspace) fails the same test: $(0, 0)$ is not in $\mathcal{T}$, because its second entry is not $1$.
>
> Containing $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ is necessary but not sufficient. The union of the two coordinate axes in $\mathbb{R}^2$, $\mathopen{}\left\{(x, 0) : x \in \mathbb{R}\right\}\mathclose{} \cup \mathopen{}\left\{(0, y) : y \in \mathbb{R}\right\}\mathclose{}$, contains $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, but $(1, 0) + (0, 1) = (1, 1)$ lies on neither axis, so the union is not closed under addition and is not a subspace.

> **NOTE:**
>
> **Exercise 5 (Testing whether** $p_1 + p_2 = 1$ defines a subspace) A coin toss can land heads or tails, and the [probabilities](https://morrison-lab.github.io/pds/probability-basics.html#def-probability) $p_1$ and $p_2$ of those two results satisfy $p_1 + p_2 = 1$. That condition defines the [set](https://morrison-lab.github.io/mcs/sets.html#def-set)
>
> $$\mathcal{P} = \mathopen{}\left\{(p_1, p_2) \in \mathbb{R}^2 : p_1 + p_2 = 1\right\}\mathclose{}.$$
>
> Is $\mathcal{P}$ a [subspace](#def-subspace) of $\mathbb{R}^2$?
>
> > **TIP:**
> >
> > Use [Theorem 1](#thm-subspace-zero).

> **NOTE:**
>
> *Solution 5*. No. The [zero vector](linear-algebra-vectors.llms.md#def-zero-vector) ${(0, 0)}^{\top}$ is not in $\mathcal{P}$, because $0 + 0 = 0 \neq 1$. By [Theorem 1](#thm-subspace-zero), every [subspace](#def-subspace) contains $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so $\mathcal{P}$ is not a subspace.

> **NOTE:**
>
> **Definition 5 (Span)** The **span** [\[5\]](#ref-wikipedia_linear_span) of vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k \in \mathbb{R}^p$ is the set of all their linear combinations:
>
> $$\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k\right\}\mathclose{}
> \stackrel{\text{def}}{=}
> \mathopen{}\left\{c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k : c_1, \ldots, c_k \in \mathbb{R}\right\}\mathclose{}.$$
>
> The vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k$ **span** a set $\mathcal{S}$ if their span equals $\mathcal{S}$.
>
> By convention, the span of the empty list ($k = 0$) is $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, and the empty list counts as linearly independent ([Definition 1](#def-linearly-independent)), since it has no coefficients that could fail to be zero.

> **NOTE:**
>
> **Example 6 (Two spans in** $\mathbb{R}^3$)  
>
> - $\operatorname{span}\mathopen{}\left\{(1, 0, 0), (0, 1, 0)\right\}\mathclose{}$ is the set of vectors $(c_1, c_2, 0)$, the plane $z = 0$ in $\mathbb{R}^3$.
> - $\operatorname{span}\mathopen{}\left\{(1, 2, 3), (2, 4, 6)\right\}\mathclose{}$ is only the line $\mathopen{}\left\{c\,(1, 2, 3) : c \in \mathbb{R}\right\}\mathclose{}$, because $(2, 4, 6) = 2\,(1, 2, 3)$, so $c_1 (1, 2, 3) + c_2 (2, 4, 6) = (c_1 + 2 c_2)\,(1, 2, 3)$. Adding a vector to a list does not always enlarge its span.

> **NOTE:**
>
> **Exercise 6 (Testing whether a vector lies in the span of two others)** Whether a target can be written as a [linear combination](linear-algebra-vectors.llms.md#def-linear-combination) of a few given vectors is a question about a [span](#def-span). Let
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 = \begin{bmatrix}1 \\ 1 \\ 0\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 = \begin{bmatrix}0 \\ 1 \\ 1\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \begin{bmatrix}3 \\ 5 \\ 2\end{bmatrix}.$$
>
> Is the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ in $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2\right\}\mathclose{}$?
>
> > **TIP:**
> >
> > Look for numbers $c_1$ and $c_2$ with $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$, one entry at a time.

> **NOTE:**
>
> *Solution 6*. Yes. Entry by entry, $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 = {(c_1,\ c_1 + c_2,\ c_2)}^{\top}$. Matching $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$, the first entry gives $c_1 = 3$ and the third gives $c_2 = 2$. Then the second entry is $3 + 2 = 5$, which matches too, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = 3 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + 2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2$ is in the [span](#def-span).

> **NOTE:**
>
> **Theorem 2 (A span is a subspace)** For any vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k \in \mathbb{R}^p$, $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k\right\}\mathclose{}$ ([Definition 5](#def-span)) is a subspace of $\mathbb{R}^p$ ([Definition 4](#def-subspace)).

> **NOTE:**
>
> *Proof*. The span is not empty: it contains $0 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + 0 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.
>
> **Addition.** Take two vectors in the span, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = a_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + a_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = b_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + b_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k$. Then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}
> &= (a_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + a_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k)
> + (b_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + b_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k)
> && \text{(substitute the two combinations)}
> \\
> &= (a_1 + b_1)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + (a_k + b_k)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k
> && \text{(regroup, and distribute each } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i \text{)}
> \end{aligned}$$
>
> which is a linear combination of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k$, so it is in the span.
>
> **Scalar multiplication.** For $c \in \mathbb{R}$,
>
> $$\begin{aligned}
> c\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}
> &= c\,(a_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + a_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k)
> && \text{(substitute the combination)}
> \\
> &= (c a_1)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + (c a_k)\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k
> && \text{(distribute } c \text{ over the sum)}
> \end{aligned}$$
>
> which is again in the span.

> **NOTE:**
>
> **Example 7 (The line in [Example 3](#exm-subspace) is a span)** The line $\mathcal{S} = \mathopen{}\left\{c\,(1, 2) : c \in \mathbb{R}\right\}\mathclose{}$ in [Example 3](#exm-subspace) is $\operatorname{span}\mathopen{}\left\{(1, 2)\right\}\mathclose{}$, so [Theorem 2](#thm-span-subspace) gives a second [proof](https://morrison-lab.github.io/mcs/proof-writing.html#def-proof) that it is a [subspace](#def-subspace). Likewise, the plane $z = 0$ in [Example 6](#exm-span) is a subspace of $\mathbb{R}^3$, because it is $\operatorname{span}\mathopen{}\left\{(1, 0, 0), (0, 1, 0)\right\}\mathclose{}$.

> **NOTE:**
>
> **Exercise 7 (Recognizing a set of vectors as a span)** Describing a [set](https://morrison-lab.github.io/mcs/sets.html#def-set) by free parameters often shows that it is a [span](#def-span). Let
>
> $$\mathcal{S} = \mathopen{}\left\{(a + b,\ a - b,\ 2a) : a, b \in \mathbb{R}\right\}\mathclose{}.$$
>
> Is $\mathcal{S}$ a [subspace](#def-subspace) of $\mathbb{R}^3$?
>
> > **TIP:**
> >
> > Write $(a + b,\ a - b,\ 2a)$ as $a$ times one vector plus $b$ times another, then use [Theorem 2](#thm-span-subspace).

> **NOTE:**
>
> *Solution 7*. Yes. For every $a, b \in \mathbb{R}$,
>
> $$\begin{bmatrix}a + b \\ a - b \\ 2a\end{bmatrix} = a \begin{bmatrix}1 \\ 1 \\ 2\end{bmatrix} + b \begin{bmatrix}1 \\ -1 \\ 0\end{bmatrix},$$
>
> so $\mathcal{S} = \operatorname{span}\mathopen{}\left\{{(1, 1, 2)}^{\top}, {(1, -1, 0)}^{\top}\right\}\mathclose{}$. By [Theorem 2](#thm-span-subspace), $\mathcal{S}$ is a [subspace](#def-subspace) of $\mathbb{R}^3$.

> **NOTE:**
>
> **Theorem 3 (A matrix-vector product combines the columns)** If $\mathbf{A}$ is an $m \times n$ matrix with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathbb{R}^n$, then
>
> $$\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = x_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + x_n \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n.$$

> **NOTE:**
>
> *Proof*. Compare entry $i$ of the two sides, for each $i = 1, \ldots, m$. Entry $i$ of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$ is $a_{ij}$, so
>
> $$\begin{aligned}
> (\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_i
> &= a_{i1} x_1 + \cdots + a_{in} x_n
> && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~16 in Matrices}}\text{)}
> \\
> &= x_1 a_{i1} + \cdots + x_n a_{in}
> && \text{(multiplication of numbers is commutative)}
> \\
> &= (x_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + x_n \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_n)_i
> && \text{(entry } i \text{ of each } x_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j \text{ is } x_j a_{ij} \text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 8 (A product as a combination of columns)** $$\begin{aligned}
> \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}
> \begin{bmatrix} 1 \\ -1 \end{bmatrix}
> &= 1 \cdot\begin{bmatrix} 1 \\ 3 \end{bmatrix}
> + (-1) \cdot\begin{bmatrix} 2 \\ 4 \end{bmatrix}
> && \text{(}\href{#thm-matvec-columns}{\text{Theorem~3}}\text{)}
> \\
> &= \begin{bmatrix} -1 \\ -1 \end{bmatrix},
> && \text{(arithmetic)}
> \end{aligned}$$
>
> the same answer as computing each entry as a row-times-vector dot product ([Remark 4 in Matrices](linear-algebra-matrices.llms.md#rem-matvec-row-dot-products)).

> **NOTE:**
>
> **Exercise 8 (Computing a matrix-vector product as a combination of columns)** A linear model’s predictions for every observation at once are a [matrix-vector product](linear-algebra-matrices.llms.md#def-matvec-mult) $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, and [Theorem 3](#thm-matvec-columns) writes it as a combination of the [columns of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$. Let
>
> $$\mathbf{A} = \begin{bmatrix}2 & 1 \\ 0 & 3 \\ 1 & -1\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \begin{bmatrix}3 \\ 2\end{bmatrix}.$$
>
> Find $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with [Theorem 3](#thm-matvec-columns).
>
> > **TIP:**
> >
> > Use [Theorem 3](#thm-matvec-columns) with $x_1 = 3$ and $x_2 = 2$.

> **NOTE:**
>
> *Solution 8*. By [Theorem 3](#thm-matvec-columns),
>
> $$\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> = 3 \begin{bmatrix}2 \\ 0 \\ 1\end{bmatrix} + 2 \begin{bmatrix}1 \\ 3 \\ -1\end{bmatrix}
> = \begin{bmatrix}6 + 2 \\ 0 + 6 \\ 3 - 2\end{bmatrix}
> = \begin{bmatrix}8 \\ 6 \\ 1\end{bmatrix}.$$

> **NOTE:**
>
> **Theorem 4 (A matrix maps a combination to the same combination of images)** If $\mathbf{A}$ is an $m \times n$ matrix, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_k \in \mathbb{R}^n$ and $c_1, \ldots, c_k \in \mathbb{R}$, then
>
> $$\mathbf{A}\,(c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1 + \cdots + c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_k)
> = c_1\,\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1 + \cdots + c_k\,\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_k.$$

> **NOTE:**
>
> *Proof*. The function $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\mapsto \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a linear map by [Theorem 12 in Matrices](linear-algebra-matrices.llms.md#thm-matrix-map-linear), and a linear map preserves linear combinations by [Theorem 13 in Matrices](linear-algebra-matrices.llms.md#thm-linear-map-lincom). Applying that theorem with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_i$ gives the identity.

> **NOTE:**
>
> **Example 9 (Applying a matrix to a combination)** Let $\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1 = (1, 0)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_2 = (0, 1)$. Then $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1 = (1, 3)$ and $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_2 = (2, 4)$, and for the combination $2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1 - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_2 = (2, -1)$:
>
> $$\begin{aligned}
> \mathbf{A}\,(2, -1)
> &= (1 \cdot 2 + 2 \cdot(-1),\; 3 \cdot 2 + 4 \cdot(-1))
> && \text{(}\href{linear-algebra-matrices.qmd#def-matvec-mult}{\text{Definition~16 in Matrices}}\text{)}
> \\
> &= (0, 2)
> && \text{(arithmetic)}
> \\
> &= 2\,(1, 3) - (2, 4),
> && \text{(arithmetic)}
> \end{aligned}$$
>
> which is $2\,\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1 - \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_2$, as [Theorem 4](#thm-matvec-linear) says.

> **NOTE:**
>
> **Exercise 9 (Applying a matrix to a combination without knowing the matrix)** [Theorem 4](#thm-matvec-linear) lets a [matrix-vector product](linear-algebra-matrices.llms.md#def-matvec-mult) of a combination be found from the matrix-vector product of each part, even when the [matrix](linear-algebra-matrices.llms.md#def-matrix) itself is not known. Suppose that a matrix $\mathbf{A}$ satisfies
>
> $$\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1 = \begin{bmatrix}1 \\ 2\end{bmatrix},
> \qquad
> \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_2 = \begin{bmatrix}0 \\ -1\end{bmatrix}.$$
>
> Find $\mathbf{A}\,(3 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1 + 2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_2)$.
>
> > **TIP:**
> >
> > Use [Theorem 4](#thm-matvec-linear) with $c_1 = 3$ and $c_2 = 2$.

> **NOTE:**
>
> *Solution 9*. By [Theorem 4](#thm-matvec-linear),
>
> $$\mathbf{A}\,(3 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_1 + 2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{z}}\vphantom{z}}_2)
> = 3 \begin{bmatrix}1 \\ 2\end{bmatrix} + 2 \begin{bmatrix}0 \\ -1\end{bmatrix}
> = \begin{bmatrix}3 \\ 4\end{bmatrix}.$$

> **NOTE:**
>
> **Theorem 5 (More than** $p$ vectors in $\mathbb{R}^p$ are linearly dependent) If $k > p$, then any $k$ vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k \in \mathbb{R}^p$ are not linearly independent ([Definition 1](#def-linearly-independent)): some numbers $c_1, \ldots, c_k$, not all zero, satisfy $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$.

> **NOTE:**
>
> *Proof*. [Induction](https://morrison-lab.github.io/mcs/proof-writing.html#def-proof-by-induction) on $p$.
>
> **Base case,** $p = 1$. Each $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i$ is a single number $v_i$, and $k \ge 2$. If $v_1 = 0$, take $c_1 = 1$ and every other $c_i = 0$. Otherwise take $c_1 = v_2$, $c_2 = -v_1$ and every other $c_i = 0$; then $c_2 \neq 0$, and $v_2 v_1 - v_1 v_2 = 0$.
>
> **Inductive step.** Let $p \ge 2$, assume the [theorem](https://morrison-lab.github.io/mcs/proof-writing.html#def-theorem) holds for vectors in $\mathbb{R}^{p-1}$, and take $k > p$ vectors in $\mathbb{R}^p$. Write $v_{i,p}$ for the last entry of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i$.
>
> *Case 1: every* $v_{i,p} = 0$. Deleting the last entry gives $k > p - 1$ vectors in $\mathbb{R}^{p-1}$, which by the inductive hypothesis have a combination with coefficients not all zero that equals $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_{p-1}$. The same coefficients combine the original vectors to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$, since every last entry is $0$.
>
> *Case 2: some* $v_{i,p} \neq 0$. Renumber the vectors so that $v_{k,p} \neq 0$, and for $i = 1, \ldots, k-1$ let
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_i \stackrel{\text{def}}{=}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i - \frac{v_{i,p}}{v_{k,p}}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k.$$
>
> The last entry of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_i$ is $v_{i,p} - \frac{v_{i,p}}{v_{k,p}}\,v_{k,p} = 0$. Deleting that zero last entry gives $k - 1 > p - 1$ vectors in $\mathbb{R}^{p-1}$, so by the inductive hypothesis there are numbers $c_1, \ldots, c_{k-1}$, not all zero, whose combination of the shortened vectors is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_{p-1}$. Putting the zero last entries back gives $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_1 + \cdots + c_{k-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_{k-1} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$. Then
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p
> &= c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_1 + \cdots + c_{k-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_{k-1}
> && \text{(choice of } c_1, \ldots, c_{k-1} \text{)}
> \\
> &= \sum_{i=1}^{k-1} c_i \mathopen{}\left(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i - \frac{v_{i,p}}{v_{k,p}}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k\right)\mathclose{}
> && \text{(definition of } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}_i \text{)}
> \\
> &= \sum_{i=1}^{k-1} c_i \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_i
> - \sum_{i=1}^{k-1} \frac{c_i v_{i,p}}{v_{k,p}}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k
> && \text{(distribute each } c_i \text{, and distribute the sum over the difference)}
> \\
> &= c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 + \cdots + c_{k-1} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_{k-1}
> - \mathopen{}\left(\sum_{i=1}^{k-1} \frac{c_i v_{i,p}}{v_{k,p}}\right)\mathclose{}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k,
> && \text{(factor } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k \text{ out of the second sum)}
> \end{aligned}$$
>
> a combination of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k$ equal to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$ whose first $k - 1$ coefficients are not all zero.

> **NOTE:**
>
> **Example 10 (Three vectors in** $\mathbb{R}^2$) [Theorem 5](#thm-many-vectors-dependent) says the three vectors $(1, 0)$, $(0, 1)$ and $(1, 1)$ in $\mathbb{R}^2$ are linearly dependent, and indeed $1 \cdot(1, 0) + 1 \cdot(0, 1) - 1 \cdot(1, 1) = (0, 0)$. The theorem says nothing about $k \le p$ vectors: $(1, 0)$ and $(0, 1)$ are linearly independent, while $(1, 2)$ and $(2, 4)$ are not ([Example 1](#exm-linearly-independent)).

> **NOTE:**
>
> **Exercise 10 (Testing four vectors in** $\mathbb{R}^3$ for linear independence) A table of data with more features than observations has more [columns](linear-algebra-matrices.llms.md#def-matrix-column) than each column has entries, and [Theorem 5](#thm-many-vectors-dependent) settles such cases without any arithmetic. Let
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 = \begin{bmatrix}1 \\ 2 \\ 3\end{bmatrix},
> \quad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2 = \begin{bmatrix}4 \\ 5 \\ 6\end{bmatrix},
> \quad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_3 = \begin{bmatrix}7 \\ 8 \\ 10\end{bmatrix},
> \quad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_4 = \begin{bmatrix}1 \\ 0 \\ 1\end{bmatrix}.$$
>
> Are these four vectors in $\mathbb{R}^3$ [linearly independent](#def-linearly-independent)?
>
> > **TIP:**
> >
> > Compare the number of vectors with $p = 3$ in [Theorem 5](#thm-many-vectors-dependent).

> **NOTE:**
>
> *Solution 10*. No. There are $k = 4$ vectors in $\mathbb{R}^3$, and $4 > 3$, so by [Theorem 5](#thm-many-vectors-dependent) they are [linearly dependent](#def-linearly-independent).

> **NOTE:**
>
> **Definition 6 (Basis)** A **basis** [\[6\]](#ref-wikipedia_basis_linear_algebra) of a subspace $\mathcal{S}$ ([Definition 4](#def-subspace)) is a list of vectors that are linearly independent ([Definition 1](#def-linearly-independent)) and span $\mathcal{S}$ ([Definition 5](#def-span)).

> **NOTE:**
>
> **Example 11 (Two bases of** $\mathbb{R}^2$)  
>
> - $(1, 0)$ and $(0, 1)$ form a basis of $\mathbb{R}^2$: they are linearly independent, and any $(x, y) \in \mathbb{R}^2$ equals $x\,(1, 0) + y\,(0, 1)$.
> - $(1, 0)$ and $(1, 1)$ also form a basis of $\mathbb{R}^2$: [Example 1](#exm-linearly-independent) shows they are linearly independent, and any $(x, y)$ equals $(x - y)\,(1, 0) + y\,(1, 1)$, because $(x - y) + y = x$ in the first entry and $0 + y = y$ in the second.

> **NOTE:**
>
> **Example 12 (Lists that are not bases of** $\mathbb{R}^2$)  
>
> - $(1, 0)$ and $(2, 0)$ are not a basis of $\mathbb{R}^2$. They are not linearly independent, since $2\,(1, 0) - (2, 0) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and they do not span $\mathbb{R}^2$: every combination $c_1 (1, 0) + c_2 (2, 0)$ has second entry $0$, so $(0, 1)$ is not in their span.
> - $(1, 0)$, $(0, 1)$ and $(1, 1)$ span $\mathbb{R}^2$, but they are not a basis: $(1, 0) + (0, 1) - (1, 1) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so they are not linearly independent.

> **NOTE:**
>
> **Exercise 11 (Testing whether** $(1, 1)$ and $(1, -1)$ form a basis of $\mathbb{R}^2$) Describing every vector in $\mathbb{R}^2$ through $(1, 1)$ and $(1, -1)$ instead of the axes works only if those two vectors form a [basis](#def-basis). Let
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = \begin{bmatrix}1 \\ 1\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = \begin{bmatrix}1 \\ -1\end{bmatrix}.$$
>
> Is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$ a basis of $\mathbb{R}^2$?
>
> > **TIP:**
> >
> > Check both conditions of [Definition 6](#def-basis). For spanning, look for $c_1$ and $c_2$ with $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = {(x, y)}^{\top}$.

> **NOTE:**
>
> *Solution 11*. Yes. They [span](#def-span) $\mathbb{R}^2$: for every ${(x, y)}^{\top} \in \mathbb{R}^2$,
>
> $$\frac{x + y}{2} \begin{bmatrix}1 \\ 1\end{bmatrix} + \frac{x - y}{2} \begin{bmatrix}1 \\ -1\end{bmatrix} = \begin{bmatrix}x \\ y\end{bmatrix}.$$
>
> They are [linearly independent](#def-linearly-independent): if $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, then $c_1 + c_2 = 0$ and $c_1 - c_2 = 0$, and adding the two equations gives $c_1 = 0$ and then $c_2 = 0$. By [Definition 6](#def-basis), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$ is a [basis](#def-basis) of $\mathbb{R}^2$.

> **NOTE:**
>
> **Theorem 6 (Coefficients in a basis are unique)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ is a basis of a subspace $\mathcal{S}$ ([Definition 6](#def-basis)), then every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{S}$ is a linear combination $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ for exactly one list of numbers $c_1, \ldots, c_k$.

> **NOTE:**
>
> *Proof*. At least one such list exists, because the basis spans $\mathcal{S}$ ([Definition 5](#def-span)).
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
> Because $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ are linearly independent ([Definition 1](#def-linearly-independent)), every coefficient $c_i - d_i$ is $0$, so $c_i = d_i$ for each $i$.

> **NOTE:**
>
> **Example 13 (Coefficients of** $(3, 5)$ in two bases) In the basis $(1, 0), (0, 1)$ of [Example 11](#exm-basis), $(3, 5) = 3\,(1, 0) + 5\,(0, 1)$, and no other coefficients work. In the basis $(1, 0), (1, 1)$, the formula in [Example 11](#exm-basis) gives
>
> $$\begin{aligned}
> (3, 5) &= (3 - 5)\,(1, 0) + 5\,(1, 1) \\
> &= -2\,(1, 0) + 5\,(1, 1).
> \end{aligned}$$
>
> The same vector has different coefficients in different bases, but within one basis its coefficients are unique.
>
> The list $(1, 0), (0, 1), (1, 1)$ in [Example 12](#exm-not-basis) spans $\mathbb{R}^2$ but is not linearly independent, and the coefficients of $(3, 5)$ are not unique:
>
> $$\begin{aligned}
> (3, 5) &= 3\,(1, 0) + 5\,(0, 1) + 0\,(1, 1) \\
> &= 0\,(1, 0) + 2\,(0, 1) + 3\,(1, 1).
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 12 (Counting the ways to write a vector in a basis)** The vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = {(1, 1)}^{\top}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = {(1, -1)}^{\top}$ form a [basis](#def-basis) of $\mathbb{R}^2$, and
>
> $$\begin{bmatrix}5 \\ 1\end{bmatrix} = 3 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + 2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2.$$
>
> How many lists of numbers $c_1, c_2$ satisfy ${(5, 1)}^{\top} = c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$?
>
> > **TIP:**
> >
> > Use [Theorem 6](#thm-basis-unique).

> **NOTE:**
>
> *Solution 12*. Exactly one, namely $c_1 = 3$ and $c_2 = 2$. By [Theorem 6](#thm-basis-unique), a vector in the [span](#def-span) of a [basis](#def-basis) has only one list of numbers, and $3, 2$ is a list that works.

> **NOTE:**
>
> **Definition 7 (Coordinates in a basis)** Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ be a basis of a subspace $\mathcal{S}$ ([Definition 6](#def-basis)), and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \in \mathcal{S}$. The **coordinates** [\[7\]](#ref-wikipedia_coordinate_vector) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ in this basis are the numbers $c_1, \ldots, c_k$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + c_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$. By [Theorem 6](#thm-basis-unique) there is exactly one such list of numbers.

> **NOTE:**
>
> **Definition 8 (Coordinate vector)** With $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and its coordinates $c_1, \ldots, c_k$ as in [Definition 7](#def-coordinates), $(c_1, \ldots, c_k) \in \mathbb{R}^k$ is the **coordinate vector** of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.

> **NOTE:**
>
> **Example 14 (Coordinates of** $(4, 1)$ in two bases of $\mathbb{R}^2$) In the basis $(1, 0), (1, 1)$ of [Example 11](#exm-basis), the coordinates of $(4, 1)$ are $3$ and $1$:
>
> $$\begin{aligned}
> 3\,(1, 0) + 1\,(1, 1)
> &= (3 + 1,\; 0 + 1)
> && \text{(}\href{linear-algebra-vectors.qmd#def-linear-combination}{\text{Definition~9 in Vectors}}\text{, entry by entry)}
> \\
> &= (4, 1).
> && \text{(add)}
> \end{aligned}$$
>
> In the basis $(1, 0), (0, 1)$, its coordinates are its entries, $4$ and $1$.

> **NOTE:**
>
> **Exercise 13 (Finding coordinates in a basis other than the indicator vectors)** The [coordinates](#def-coordinates) of a vector depend on the [basis](#def-basis), and they match its entries only in the basis of [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector). The vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = {(2, 0)}^{\top}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = {(1, 1)}^{\top}$ form a basis of $\mathbb{R}^2$. Let
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
> *Solution 13*. The [coordinates](#def-coordinates) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ are $2$ and $3$. Entry by entry, $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = {(2 c_1 + c_2,\ c_2)}^{\top}$. The second entry gives $c_2 = 3$, and then the first gives $2 c_1 + 3 = 7$, so $c_1 = 2$. As a check, $2 {(2, 0)}^{\top} + 3 {(1, 1)}^{\top} = {(7, 3)}^{\top}$.

> **NOTE:**
>
> **Exercise 14 (Describing a point on a plane in** $\mathbb{R}^3$ with two numbers) A point on a plane through the origin in $\mathbb{R}^3$ needs only two numbers, its [coordinate vector](#def-coordinate-vector) in a [basis](#def-basis) of the plane. The vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 = {(1, 1, 0)}^{\top}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = {(0, 1, 1)}^{\top}$ form a basis of a plane $\mathcal{S}$, which contains
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \begin{bmatrix}2 \\ 5 \\ 3\end{bmatrix}.$$
>
> Find the coordinate vector of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ in the basis $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$.
>
> > **TIP:**
> >
> > Write $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2$ entry by entry, then use [Definition 8](#def-coordinate-vector).

> **NOTE:**
>
> *Solution 14*. Entry by entry, $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + c_2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_2 = {(c_1,\ c_1 + c_2,\ c_2)}^{\top}$. Matching $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ gives $c_1 = 2$ and $c_2 = 3$, and the second entry checks: $2 + 3 = 5$. By [Definition 8](#def-coordinate-vector), the [coordinate vector](#def-coordinate-vector) of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is ${(2, 3)}^{\top} \in \mathbb{R}^2$.

> **NOTE:**
>
> **Theorem 7 (All bases of a subspace have the same number of vectors)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_l$ are both bases of a subspace $\mathcal{S}$ of $\mathbb{R}^p$ ([Definition 6](#def-basis)), then $k = l$.

> **NOTE:**
>
> *Proof*. Let $\mathbf{A}$ be the $p \times k$ matrix with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$, and $\mathbf{B}$ the $p \times l$ matrix with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}_l$.
>
> **Write** $\mathbf{A}$ in terms of $\mathbf{B}$. Each $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j$ is in $\mathcal{S}$, and the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$’s span $\mathcal{S}$ ([Definition 5](#def-span)), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_j = \mathbf{B} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_j$ for some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_j \in \mathbb{R}^l$ ([Definition 16 in Matrices](linear-algebra-matrices.llms.md#def-matvec-mult)). Let $\mathbf{C}$ be the $l \times k$ matrix with columns $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_k$. Then $\underbrace{\mathbf{A}}_{p \times k}
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
> && \text{(}\href{linear-algebra-matrices.qmd#thm-matmul-assoc}{\text{Theorem~7 in Matrices}}\text{)}
> \\
> &= \mathbf{B}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}
> && \text{(substitute } \mathbf{C} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{)}
> \\
> &= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}
> && \text{(a matrix times the zero vector is } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{)}
> \end{aligned}$$
>
> $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is the combination $x_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + x_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_k$ ([Theorem 3](#thm-matvec-columns)), and the $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}$’s are linearly independent ([Definition 1](#def-linearly-independent)), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. So the only combination of the columns of $\mathbf{C}$ that equals $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ has all coefficients $0$.
>
> **Count.** $\mathbf{C}$ has $k$ linearly independent columns of length $l$. More than $l$ vectors in $\mathbb{R}^l$ are never linearly independent ([Theorem 5](#thm-many-vectors-dependent)), so $k \le l$. Exchanging the roles of the two bases gives $l \le k$, so $k = l$.

> **NOTE:**
>
> **Example 15 (Both bases of** $\mathbb{R}^2$ in [Example 11](#exm-basis) have two vectors) The bases $(1, 0), (0, 1)$ and $(1, 0), (1, 1)$ of $\mathbb{R}^2$ in [Example 11](#exm-basis) both have $2$ vectors, as [Theorem 7](#thm-basis-size) requires. So no list of $3$ vectors is a basis of $\mathbb{R}^2$, which agrees with [Example 12](#exm-not-basis): the list $(1, 0), (0, 1), (1, 1)$ spans $\mathbb{R}^2$ but is not linearly independent.

> **NOTE:**
>
> **Definition 9 (Dimension)** The **dimension** of a subspace $\mathcal{S}$, written $\dim(\mathcal{S})$, is the number of vectors in any basis of $\mathcal{S}$ ([Definition 6](#def-basis)). [Theorem 7](#thm-basis-size) makes this number well defined. By convention, the empty list is the basis of $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, so $\dim(\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}) = 0$.

> **NOTE:**
>
> **Example 16 (The dimensions of some subspaces)**  
>
> - $\dim(\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}) = 0$, by the convention in [Definition 9](#def-dimension).
> - $\dim(\mathbb{R}^2) = 2$, by [Example 11](#exm-basis). More generally, $\dim(\mathbb{R}^p) = p$: the indicator vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_p$ ([Definition 18 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)) are linearly independent, since $c_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1 + \cdots + c_p \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_p = (c_1, \ldots, c_p)$, which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_p$ only if every $c_i = 0$; and they span $\mathbb{R}^p$, since any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} = x_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1 + \cdots + x_p \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_p$.
> - The line in [Example 3](#exm-subspace) has dimension $1$: the single vector $(1, 2)$ is linearly independent and spans the line.
> - The plane $z = 0$ in [Example 6](#exm-span) has dimension $2$, with basis $(1, 0, 0), (0, 1, 0)$.

> **NOTE:**
>
> **Theorem 8 (Adding a vector outside the span keeps a list independent)** If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k$ are linearly independent ([Definition 1](#def-linearly-independent)) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is not in $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k\right\}\mathclose{}$ ([Definition 5](#def-span)), then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ are linearly independent.

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
> **Example 17 (Adding** $(0, 0, 1)$ to two independent vectors in $\mathbb{R}^3$) The vectors $(1, 0, 0)$ and $(0, 1, 0)$ are linearly independent, and their span is the plane $z = 0$ ([Example 6](#exm-span)). The vector $(0, 0, 1)$ has third entry $1$, so it is not in that plane, and by [Theorem 8](#thm-add-outside-span) the three vectors $(1, 0, 0)$, $(0, 1, 0)$, $(0, 0, 1)$ are linearly independent. Adding $(1, 1, 0)$ instead would not work: $(1, 1, 0)$ is in the span, and $(1, 0, 0) + (0, 1, 0) - (1, 1, 0) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Theorem 9 (An independent list extends to a basis)** If $\mathcal{S}$ is a subspace of $\mathbb{R}^p$ ([Definition 4](#def-subspace)) and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k \in \mathcal{S}$ are linearly independent ([Definition 1](#def-linearly-independent)), then adding vectors of $\mathcal{S}$ to the list gives a basis of $\mathcal{S}$ ([Definition 6](#def-basis)). Starting from the empty list shows that every subspace has a basis.

> **NOTE:**
>
> *Proof*. Repeat the following step. If the current list spans $\mathcal{S}$, stop: it is linearly independent and spans $\mathcal{S}$, so it is a basis. Otherwise, some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathcal{S}$ is not in the span of the current list; add $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ to the list, which stays linearly independent by [Theorem 8](#thm-add-outside-span).
>
> Every list produced is a linearly independent list of vectors in $\mathbb{R}^p$, so it has at most $p$ vectors ([Theorem 5](#thm-many-vectors-dependent)). Each step adds one vector, so the process stops after at most $p - k$ steps, and when it stops the list is a basis of $\mathcal{S}$.
>
> For the empty list, which is linearly independent and spans $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ by the conventions in [Definition 5](#def-span), the first step asks whether $\mathcal{S} = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$: if so, the empty list is already a basis; if not, the process adds vectors as described.

> **NOTE:**
>
> **Example 18 (Extending** $(1, 1, 0)$ to a basis of $\mathbb{R}^3$) Start with the single vector $(1, 1, 0)$.
>
> 1.  $(1, 0, 0)$ is not in $\operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$, because every multiple $c\,(1, 1, 0)$ has equal first and second entries. Add it.
> 2.  $(0, 0, 1)$ is not in $\operatorname{span}\mathopen{}\left\{(1, 1, 0), (1, 0, 0)\right\}\mathclose{}$, because every combination of those two vectors has third entry $0$. Add it.
> 3.  The list $(1, 1, 0), (1, 0, 0), (0, 0, 1)$ spans $\mathbb{R}^3$: $(x, y, z) = y\,(1, 1, 0) + (x - y)\,(1, 0, 0) + z\,(0, 0, 1)$. Stop.
>
> The result is a basis of $\mathbb{R}^3$ that contains the starting vector.

> **NOTE:**
>
> **Theorem 10 (An independent list in a subspace has at most** $\dim$ vectors) Let $\mathcal{S}$ be a subspace of $\mathbb{R}^p$ with $\dim(\mathcal{S}) = d$ ([Definition 9](#def-dimension)).
>
> 1.  Any linearly independent list of vectors in $\mathcal{S}$ has at most $d$ vectors.
> 2.  If $\mathcal{T}$ is a subspace with $\mathcal{T} \subseteq \mathcal{S}$, then $\dim(\mathcal{T}) \le \dim(\mathcal{S})$.

> **NOTE:**
>
> *Proof*. **Part 1.** If $d = 0$, then $\mathcal{S} = \mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$, so every vector in a nonempty list from $\mathcal{S}$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, and $1 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ shows the list is not linearly independent; only the empty list, with $0 = d$ vectors, is. Now let $d \ge 1$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_d$ be a basis of $\mathcal{S}$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_k \in \mathcal{S}$ be linearly independent. Each $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j$ is in $\mathcal{S}$, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}_j = c_{1j} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_1 + \cdots + c_{dj} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}_d$ for some coordinate vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_j = (c_{1j}, \ldots, c_{dj}) \in \mathbb{R}^d$. Suppose $k > d$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_k$ are $k > d$ vectors in $\mathbb{R}^d$, so some $x_1, \ldots, x_k$, not all zero, satisfy $x_1 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_1 + \cdots + x_k \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{c}}\vphantom{c}}_k = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}_d$ ([Theorem 5](#thm-many-vectors-dependent)); entry $i$ of that equation says $\sum_{j=1}^{k} x_j c_{ij} = 0$. Then
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
> **Part 2.** $\mathcal{T}$ has a basis ([Theorem 9](#thm-extend-basis)) with $\dim(\mathcal{T})$ vectors. Those vectors are linearly independent and lie in $\mathcal{S}$, so by Part 1 there are at most $\dim(\mathcal{S})$ of them.

> **NOTE:**
>
> **Example 19 (Subspaces of a plane have dimension at most two)** The plane $\mathcal{S} = \mathopen{}\left\{(x, y, 0) : x, y \in \mathbb{R}\right\}\mathclose{}$ in $\mathbb{R}^3$ has dimension $2$ ([Example 16](#exm-dimension)). By [Theorem 10](#thm-dim-bound), no three vectors with third entry $0$ are linearly independent; for instance, $(1, 0, 0) + (0, 1, 0) - (1, 1, 0) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. The line $\mathcal{T} = \operatorname{span}\mathopen{}\left\{(1, 1, 0)\right\}\mathclose{}$ lies in $\mathcal{S}$, and
>
> $$\begin{aligned}
> \dim(\mathcal{T}) &= 1 \\
> &\le 2 \\
> &= \dim(\mathcal{S}).
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 11 (A subspace inside another of the same dimension equals it)** If $\mathcal{T}$ and $\mathcal{S}$ are subspaces of $\mathbb{R}^p$ with $\mathcal{T} \subseteq \mathcal{S}$ and $\dim(\mathcal{T}) = \dim(\mathcal{S})$ ([Definition 9](#def-dimension)), then $\mathcal{T} = \mathcal{S}$.

> **NOTE:**
>
> *Proof*. Let $d = \dim(\mathcal{S})$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{t}}\vphantom{t}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{t}}\vphantom{t}}_d$ be a basis of $\mathcal{T}$ ([Theorem 9](#thm-extend-basis)); it has $d$ vectors because $\dim(\mathcal{T}) = d$. (When $d = 0$ it is the empty list, whose span is $\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\right\}\mathclose{}$ by the convention in [Definition 5](#def-span), and the argument is unchanged.) Suppose some $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}} \in \mathcal{S}$ is not in $\operatorname{span}\mathopen{}\left\{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{t}}\vphantom{t}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{t}}\vphantom{t}}_d\right\}\mathclose{} = \mathcal{T}$. Then $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{t}}\vphantom{t}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{t}}\vphantom{t}}_d, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{s}}\vphantom{s}}$ are linearly independent ([Theorem 8](#thm-add-outside-span)), and they are $d + 1$ vectors of $\mathcal{S}$, which contradicts part 1 of [Theorem 10](#thm-dim-bound). So every vector of $\mathcal{S}$ is in $\mathcal{T}$, that is, $\mathcal{S} \subseteq \mathcal{T}$. Together with $\mathcal{T} \subseteq \mathcal{S}$, this inclusion gives $\mathcal{T} = \mathcal{S}$.

> **NOTE:**
>
> **Example 20 (Two independent vectors in a plane span it)** Let $\mathcal{S} = \mathopen{}\left\{(x, y, 0) : x, y \in \mathbb{R}\right\}\mathclose{}$, the plane $z = 0$, which has dimension $2$ ([Example 16](#exm-dimension)), and let $\mathcal{T} = \operatorname{span}\mathopen{}\left\{(1, 0, 0), (1, 1, 0)\right\}\mathclose{}$. Both vectors have third entry $0$, so $\mathcal{T} \subseteq \mathcal{S}$. They are linearly independent: $c_1 (1, 0, 0) + c_2 (1, 1, 0) = (c_1 + c_2, c_2, 0)$, which is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ only if $c_2 = 0$ and then $c_1 = 0$. So $\dim(\mathcal{T}) = 2$, and [Theorem 11](#thm-subspace-equal-dim) gives $\mathcal{T} = \mathcal{S}$ without solving for any coefficients. As a check, $(x, y, 0) = (x - y)\,(1, 0, 0) + y\,(1, 1, 0)$.

> **NOTE:**
>
> **Example 21 (Equal dimensions without containment)** The lines $\operatorname{span}\mathopen{}\left\{(1, 0, 0)\right\}\mathclose{}$ and $\operatorname{span}\mathopen{}\left\{(0, 1, 0)\right\}\mathclose{}$ in $\mathbb{R}^3$ both have dimension $1$, but they are not equal: $(1, 0, 0)$ is in the first and not the second. [Theorem 11](#thm-subspace-equal-dim) does not apply, because neither line contains the other.

# Definitions on this page

- [Definition 1 (Linearly independent vectors)](#def-linearly-independent)
- [Definition 2 (Rank)](#def-rank)
- [Definition 3 (Full column rank)](#def-full-column-rank)
- [Definition 4 (Subspace, linear subspace)](#def-subspace)
- [Definition 5 (Span)](#def-span)
- [Definition 6 (Basis)](#def-basis)
- [Definition 7 (Coordinates in a basis)](#def-coordinates)
- [Definition 8 (Coordinate vector)](#def-coordinate-vector)
- [Definition 9 (Dimension)](#def-dimension)

Back to top

## References

\[1\]

Wikipedia contributors, “Linear independence — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Linear_independence>

\[2\]

Wikipedia contributors, “Rank (linear algebra) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Rank_(linear_algebra)>

\[3\]

H. Zhou, “Vector space.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/04-vecsp/04-vecsp.html>

\[4\]

Wikipedia contributors, “Linear subspace — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Linear_subspace>

\[5\]

Wikipedia contributors, “Linear span — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Linear_span>

\[6\]

Wikipedia contributors, “Basis (linear algebra) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Basis_(linear_algebra)>

\[7\]

Wikipedia contributors, “Coordinate vector — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Coordinate_vector>
