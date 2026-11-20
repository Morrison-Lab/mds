# Matrix Multiplication

Code

Published

Last modified: 2026-11-19 18:36:30 (PST)

# 1 Matrix multiplication

> **NOTE:**
>
> **Definition 1 (Matrix multiplication)** The **product** [\[1\]](#ref-wikipedia_matrix_multiplication) of an $m \times k$ matrix $\mathbf{A}$ and a $k \times n$ matrix $\mathbf{B}$ is the $m \times n$ matrix $\mathbf{C} = \mathbf{A}\mathbf{B}$ with entries:
>
> $$c_{ij} = \sum_{s=1}^{k} a_{is}\, b_{sj}$$

> **NOTE:**
>
> *Remark 1* (Matrix multiplication is not commutative). When $\mathbf{A}\mathbf{B}$ and $\mathbf{B}\mathbf{A}$ are both defined, they are usually different. For example, with
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \end{bmatrix},$$
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B}
> &= \begin{bmatrix} 3 & 2 \\ 1 & 1 \end{bmatrix} \\
> \mathbf{B}\mathbf{A}
> &= \begin{bmatrix} 1 & 2 \\ 1 & 3 \end{bmatrix},
> \end{aligned}$$
>
> so $\mathbf{A}\mathbf{B} \neq \mathbf{B}\mathbf{A}$.

> **NOTE:**
>
> **Definition 2 (Shape rule)** The **shape rule** of [matrix multiplication](#def-matrix-mult) says that an $m \times k$ [matrix](linear-algebra-matrices.llms.md#def-matrix) times a $k \times n$ matrix is an $m \times n$ matrix, and that the multiplication is defined only when the inner pair of sizes matches:
>
> $$(m \times k)(k \times n) \;\longrightarrow\; m \times n \tag{1}$$

> **NOTE:**
>
> **Example 1 (Shape of a product of three matrices)**  
>
> Let $\mathbf{A}$ be $2 \times 3$, let $\mathbf{B}$ be $3 \times 4$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^4$, which is a $4 \times 1$ [matrix](linear-algebra-matrices.llms.md#def-matrix). Apply the [shape rule](#def-shape-rule) one [product](#def-matrix-mult) at a time:
>
> - $\mathbf{A}\mathbf{B}$ is $(2 \times 3)(3 \times 4)$. The inner pair $3, 3$ matches, so the product is $2 \times 4$.
> - $(\mathbf{A}\mathbf{B})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is $(2 \times 4)(4 \times 1)$. The inner pair $4, 4$ matches, so the product is $2 \times 1$, a vector in $\mathbb{R}^2$.

> **NOTE:**
>
> **Example 2 (A product that the shape rule rules out)**  
>
> Let $\mathbf{A}$ be $2 \times 3$, and let $\mathbf{B}$ be $3 \times 4$. The [product](#def-matrix-mult) $\mathbf{B}\mathbf{A}$ is $(3 \times 4)(2 \times 3)$. Its inner pair $4, 2$ does not match, so the [shape rule](#def-shape-rule) says that $\mathbf{B}\mathbf{A}$ is not defined, although $\mathbf{A}\mathbf{B}$ is.

> **NOTE:**
>
> **Example 3 (Dot product as matrix multiplication)** The dot product of two column vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ can be written as a matrix product of the row vector ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ with the column vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$:
>
> $$\begin{aligned}
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}\, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}
> \\ &= [x_1,\; x_2,\; \ldots,\; x_p]
> \begin{bmatrix}
> \beta_{1} \\
> \beta_{2} \\
> \vdots \\
> \beta_{p}
> \end{bmatrix}
> \\ &=
> x_1\beta_{1} + x_2\beta_{2} + \cdots + x_p \beta_{p}
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 1 (Computing the product of a** $2 \times 3$ and a $3 \times 2$ matrix) The [product](#def-matrix-mult) of two [matrices](linear-algebra-matrices.llms.md#def-matrix) is defined only when the first has as many [column](linear-algebra-matrices.llms.md#def-matrix-column)s as the second has [row](linear-algebra-matrices.llms.md#def-matrix-row)s. Each entry of the product combines one [row of the first factor](linear-algebra-matrices.llms.md#def-matrix-row) with one [column of the second](linear-algebra-matrices.llms.md#def-matrix-column). Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 0 & 2 \\ -1 & 3 & 1 \end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix} 2 & 1 \\ 0 & -1 \\ 1 & 4 \end{bmatrix}.$$
>
> Find $\mathbf{A}\mathbf{B}$.
>
> > **TIP:**
> >
> > $\mathbf{A}$ is $2 \times 3$, and $\mathbf{B}$ is $3 \times 2$. By [Definition 1](#def-matrix-mult), $\mathbf{A}\mathbf{B}$ is therefore $2 \times 2$. Its entry $c_{ij}$ is $a_{i1} b_{1j} + a_{i2} b_{2j} + a_{i3} b_{3j}$.

> **NOTE:**
>
> *Solution 1*. $\mathbf{A}$ has three [column](linear-algebra-matrices.llms.md#def-matrix-column)s, and $\mathbf{B}$ has three [row](linear-algebra-matrices.llms.md#def-matrix-row)s. So the [product](#def-matrix-mult) is defined and is $2 \times 2$. Its entries are
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B}
> &= \begin{bmatrix}
> 1 \cdot 2 + 0 \cdot 0 + 2 \cdot 1 & 1 \cdot 1 + 0 \cdot(-1) + 2 \cdot 4 \\
> (-1) \cdot 2 + 3 \cdot 0 + 1 \cdot 1 & (-1) \cdot 1 + 3 \cdot(-1) + 1 \cdot 4
> \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~1}}\text{)}
> \\
> &= \begin{bmatrix} 4 & 9 \\ -1 & 0 \end{bmatrix}.
> && \text{(multiply and add)}
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 1 (Matrix multiplication is associative)** For an $m \times k$ matrix $\mathbf{A}$, a $k \times l$ matrix $\mathbf{B}$, and an $l \times n$ matrix $\mathbf{C}$:
>
> $$\underbrace{(\mathbf{A}\mathbf{B})\mathbf{C}}_{m \times n}
> = \underbrace{\mathbf{A}(\mathbf{B}\mathbf{C})}_{m \times n}$$

> **NOTE:**
>
> *Proof*. Entry $(i, j)$ of each side, from [Definition 1](#def-matrix-mult):
>
> $$\begin{aligned}
> \mathopen{}\left[(\mathbf{A}\mathbf{B})\mathbf{C}\right]\mathclose{}_{ij}
> &= \sum_{t=1}^{l} (\mathbf{A}\mathbf{B})_{it}\, c_{tj}
> && \text{(definition of } (\mathbf{A}\mathbf{B})\mathbf{C} \text{)}
> \\
> &= \sum_{t=1}^{l} \mathopen{}\left(\sum_{s=1}^{k} a_{is}\, b_{st}\right)\mathclose{} c_{tj}
> && \text{(definition of } \mathbf{A}\mathbf{B} \text{)}
> \\
> &= \sum_{s=1}^{k} a_{is} \mathopen{}\left(\sum_{t=1}^{l} b_{st}\, c_{tj}\right)\mathclose{}
> && \text{(distribute and swap the finite sums)}
> \\
> &= \sum_{s=1}^{k} a_{is}\, (\mathbf{B}\mathbf{C})_{sj}
> && \text{(definition of } \mathbf{B}\mathbf{C} \text{)}
> \\
> &= \mathopen{}\left[\mathbf{A}(\mathbf{B}\mathbf{C})\right]\mathclose{}_{ij}
> && \text{(definition of } \mathbf{A}(\mathbf{B}\mathbf{C}) \text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 2 (Grouping a product of three matrices)** By [Theorem 1](#thm-matmul-assoc), a [product](#def-matrix-mult) of three [matrices](linear-algebra-matrices.llms.md#def-matrix) can be grouped either way, so $\mathbf{A}\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ can be computed as $\mathbf{A}(\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$, without ever forming $\mathbf{A}\mathbf{B}$. Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix} 2 & 0 \\ 1 & 1 \end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \begin{bmatrix} 1 \\ 2 \end{bmatrix},$$
>
> where $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a $2 \times 1$ matrix.
>
> Find $\mathbf{A}\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ by computing $\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ first.
>
> > **TIP:**
> >
> > By [Definition 1](#def-matrix-mult), $\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a $2 \times 1$ [matrix](linear-algebra-matrices.llms.md#def-matrix); multiply $\mathbf{A}$ by it.

> **NOTE:**
>
> *Solution 2*. First,
>
> $$\begin{aligned}
> \mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \begin{bmatrix} 2 \cdot 1 + 0 \cdot 2 \\ 1 \cdot 1 + 1 \cdot 2 \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~1}}\text{)}
> \\
> &= \begin{bmatrix} 2 \\ 3 \end{bmatrix},
> && \text{(multiply and add)}
> \end{aligned}$$
>
> so
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \mathbf{A}(\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~1}}\text{)}
> \\
> &= \begin{bmatrix} 1 \cdot 2 + 1 \cdot 3 \\ 0 \cdot 2 + 1 \cdot 3 \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~1}}\text{)}
> \\
> &= \begin{bmatrix} 5 \\ 3 \end{bmatrix}.
> && \text{(multiply and add)}
> \end{aligned}$$
>
> Grouping the other way gives the same answer: $\mathbf{A}\mathbf{B} = \begin{bmatrix} 3 & 1 \\ 1 & 1 \end{bmatrix}$, and $(\mathbf{A}\mathbf{B})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \begin{bmatrix} 3 + 2 \\ 1 + 2 \end{bmatrix} = \begin{bmatrix} 5 \\ 3 \end{bmatrix}$.

> **NOTE:**
>
> **Theorem 2 (Matrix multiplication is distributive over addition)** Matrix multiplication [distributes](algebra-sums.llms.md#def-distributes-over) over addition from the left and from the right. For an $m \times k$ matrix $\mathbf{A}$ and $k \times n$ matrices $\mathbf{B}$ and $\mathbf{C}$:
>
> $$\mathbf{A}(\mathbf{B} + \mathbf{C}) = \mathbf{A}\mathbf{B} + \mathbf{A}\mathbf{C}$$
>
> For $m \times k$ matrices $\mathbf{A}$ and $\mathbf{B}$ and a $k \times n$ matrix $\mathbf{C}$:
>
> $$(\mathbf{A} + \mathbf{B})\mathbf{C} = \mathbf{A}\mathbf{C} + \mathbf{B}\mathbf{C}$$

> **NOTE:**
>
> **Exercise 3 (Proving that matrix multiplication distributes from the left)** [Theorem 2](#thm-matmul-distrib) lets a [product](#def-matrix-mult) with a [matrix sum](linear-algebra-matrices.llms.md#def-matrix-addition) be expanded term by term, just as multiplication of numbers [distributes over](algebra-sums.llms.md#def-distributes-over) addition. Let $\mathbf{A}$ be an $m \times k$ [matrix](linear-algebra-matrices.llms.md#def-matrix), and let $\mathbf{B}$ and $\mathbf{C}$ be $k \times n$ matrices.
>
> Prove that $\mathbf{A}(\mathbf{B} + \mathbf{C}) = \mathbf{A}\mathbf{B} + \mathbf{A}\mathbf{C}$.
>
> > **TIP:**
> >
> > Express the $(i, j)$ entry of the left side with [Definition 1](#def-matrix-mult) and [Definition 8 in Matrices](linear-algebra-matrices.llms.md#def-matrix-addition), then split the result with [the rule for a sum of sums](algebra-sums.llms.md#thm-sum-of-sums).

> **NOTE:**
>
> *Solution 3*. Both sides are $m \times n$ [matrices](linear-algebra-matrices.llms.md#def-matrix), so they are [equal](linear-algebra-matrices.llms.md#def-matrix-equality) when their $(i, j)$ entries agree for every $i$ and $j$. For each $i$ and $j$,
>
> $$\begin{aligned}
> \mathopen{}\left[\mathbf{A}(\mathbf{B} + \mathbf{C})\right]\mathclose{}_{ij}
> &= \sum_{s=1}^{k} a_{is} (\mathbf{B} + \mathbf{C})_{sj}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~1}}\text{)}
> \\
> &= \sum_{s=1}^{k} a_{is} (b_{sj} + c_{sj})
> && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-addition}{\text{Definition~8 in Matrices}}\text{)}
> \\
> &= \sum_{s=1}^{k} \mathopen{}\left(a_{is} b_{sj} + a_{is} c_{sj}\right)\mathclose{}
> && \text{(multiplication of numbers distributes over addition)}
> \\
> &= \sum_{s=1}^{k} a_{is} b_{sj} + \sum_{s=1}^{k} a_{is} c_{sj}
> && \text{(a sum of sums splits)}
> \\
> &= (\mathbf{A}\mathbf{B})_{ij} + (\mathbf{A}\mathbf{C})_{ij}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~1}}\text{)}
> \\
> &= (\mathbf{A}\mathbf{B} + \mathbf{A}\mathbf{C})_{ij}.
> && \text{(}\href{linear-algebra-matrices.qmd#def-matrix-addition}{\text{Definition~8 in Matrices}}\text{)}
> \end{aligned}$$
>
> The third step uses that multiplication of numbers [distributes over](algebra-sums.llms.md#def-distributes-over) addition, and the fourth uses [the rule for a sum of sums](algebra-sums.llms.md#thm-sum-of-sums). So $\mathbf{A}(\mathbf{B} + \mathbf{C}) = \mathbf{A}\mathbf{B} + \mathbf{A}\mathbf{C}$.

> **NOTE:**
>
> **Theorem 3 (Product of two sums of matrices)** For $m \times k$ matrices $\mathbf{A}$ and $\mathbf{B}$ and $k \times n$ matrices $\mathbf{C}$ and $\mathbf{D}$,
>
> $$(\mathbf{A} + \mathbf{B})(\mathbf{C} + \mathbf{D})
> = \mathbf{A}\mathbf{C} + \mathbf{A}\mathbf{D} + \mathbf{B}\mathbf{C} + \mathbf{B}\mathbf{D}.$$
>
> Each product keeps its factors in the order they appear on the left, because matrix multiplication is not commutative. So $\mathbf{A}\mathbf{D}$ and $\mathbf{B}\mathbf{C}$ are not collected into $2\mathbf{A}\mathbf{D}$.

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> (\mathbf{A} + \mathbf{B})(\mathbf{C} + \mathbf{D})
> &= (\mathbf{A} + \mathbf{B})\mathbf{C} + (\mathbf{A} + \mathbf{B})\mathbf{D}
> && \text{(}\href{#thm-matmul-distrib}{\text{Theorem~2}}\text{, from the left)}
> \\ &= \mathbf{A}\mathbf{C} + \mathbf{B}\mathbf{C} + \mathbf{A}\mathbf{D} + \mathbf{B}\mathbf{D}
> && \text{(}\href{#thm-matmul-distrib}{\text{Theorem~2}}\text{, from the right, twice)}
> \\ &= \mathbf{A}\mathbf{C} + \mathbf{A}\mathbf{D} + \mathbf{B}\mathbf{C} + \mathbf{B}\mathbf{D}
> && \text{(matrix addition is commutative)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 4 (Why the middle terms do not combine)** Take $\mathbf{A} = \mathbf{C} = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}$ and $\mathbf{B} = \mathbf{D} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \end{bmatrix}$. Then $\mathbf{A} + \mathbf{B} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$, so
>
> $$\begin{aligned}
> (\mathbf{A} + \mathbf{B})^2 &= \begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}, \\
> \mathbf{A}^2 + \mathbf{A}\mathbf{B} + \mathbf{B}\mathbf{A} + \mathbf{B}^2
> &= \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix}
> + \begin{bmatrix} 2 & 1 \\ 1 & 1 \end{bmatrix}
> + \begin{bmatrix} 1 & 1 \\ 1 & 2 \end{bmatrix}
> + \begin{bmatrix} 1 & 0 \\ 2 & 1 \end{bmatrix} \\
> &= \begin{bmatrix} 5 & 4 \\ 4 & 5 \end{bmatrix}.
> \end{aligned}$$
>
> Here $\mathbf{A}\mathbf{B} \neq \mathbf{B}\mathbf{A}$, so the middle terms do not combine into $2\mathbf{A}\mathbf{B}$. The squared norm of a sum of vectors, $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2$, is a case where they do combine ([Theorem 2 in Inner Products and the Cauchy-Schwarz Inequality](linear-algebra-inner-products.llms.md#thm-norm-sum-square)), because $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. Matrices that commute, such as $\mathbf{A}$ and $\mathbf{A}^2$, combine the same way.

> **NOTE:**
>
> **Exercise 4 (Comparing** $(\mathbf{A} + \mathbf{B})(\mathbf{A} + \mathbf{B})$ with the rule for numbers) For numbers, $(a + b)^2 = a^2 + 2ab + b^2$. [Theorem 3](#thm-matmul-product-of-sums) expands a [product](#def-matrix-mult) of two [matrix sums](linear-algebra-matrices.llms.md#def-matrix-addition) into four terms instead, because $\mathbf{A}\mathbf{B}$ and $\mathbf{B}\mathbf{A}$ can differ. Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix}.$$
>
> Is $(\mathbf{A} + \mathbf{B})(\mathbf{A} + \mathbf{B})$ [equal](linear-algebra-matrices.llms.md#def-matrix-equality) to $\mathbf{A}\mathbf{A} + 2\mathbf{A}\mathbf{B} + \mathbf{B}\mathbf{B}$?
>
> > **TIP:**
> >
> > Compute $\mathbf{A} + \mathbf{B}$ and its [product](#def-matrix-mult) with itself, then compute $\mathbf{A}\mathbf{A}$, $\mathbf{A}\mathbf{B}$ and $\mathbf{B}\mathbf{B}$ with [Definition 1](#def-matrix-mult).

> **NOTE:**
>
> *Solution 4*. No. On the left, $\mathbf{A} + \mathbf{B} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}$, so
>
> $$\begin{aligned}
> (\mathbf{A} + \mathbf{B})(\mathbf{A} + \mathbf{B})
> &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 1 + 1 \cdot 0 \\ 0 \cdot 1 + 0 \cdot 0 & 0 \cdot 1 + 0 \cdot 0 \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~1}}\text{)}
> \\
> &= \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}.
> && \text{(multiply and add)}
> \end{aligned}$$
>
> On the right, the same rule gives $\mathbf{A}\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$, $\mathbf{A}\mathbf{B} = \begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix}$ and $\mathbf{B}\mathbf{B} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix}$, so
>
> $$\mathbf{A}\mathbf{A} + 2\mathbf{A}\mathbf{B} + \mathbf{B}\mathbf{B}
> = \begin{bmatrix} 1 & 2 \\ 0 & 0 \end{bmatrix}.$$
>
> The entries in position $(1, 2)$ differ, $1 \ne 2$, so the two [matrices](linear-algebra-matrices.llms.md#def-matrix) are not [equal](linear-algebra-matrices.llms.md#def-matrix-equality). The rule for numbers fails because $\mathbf{B}\mathbf{A} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix}$ differs from $\mathbf{A}\mathbf{B}$: [Theorem 3](#thm-matmul-product-of-sums) gives $\mathbf{A}\mathbf{A} + \mathbf{A}\mathbf{B} + \mathbf{B}\mathbf{A} + \mathbf{B}\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}$, which does match the left side.

> **NOTE:**
>
> **Exercise 5 (Which of these products are defined?)** Let $\mathbf{A}$ be $4 \times 3$, let $\mathbf{B}$ be $3 \times 2$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^3$. For each expression, say whether it is defined, and if so give the shape of the result:
>
> 1.  $\mathbf{A}\mathbf{B}$
> 2.  $\mathbf{B}\mathbf{A}$
> 3.  $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$
> 4.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$
> 5.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{\top}$

> **NOTE:**
>
> *Solution 5*. A vector in $\mathbb{R}^3$ is a $3 \times 1$ matrix, so the same rule settles every case.
>
> 1.  $\mathbf{A}\mathbf{B}$: $(4 \times 3)(3 \times 2)$. The inner pair is $3$ and $3$, so it is defined, and the result is $4 \times 2$.
> 2.  $\mathbf{B}\mathbf{A}$: $(3 \times 2)(4 \times 3)$. The inner pair is $2$ and $4$, which do not match, so it is **not defined**. Matrix multiplication is not commutative, and this is the blunt form of that: swapping the order can leave an expression that means nothing.
> 3.  $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$: $(4 \times 3)(3 \times 1)$, defined, result $4 \times 1$ — a vector in $\mathbb{R}^4$.
> 4.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$: $(1 \times 3)(3 \times 1)$, defined, result $1 \times 1$ — a single number. The product is the inner product of [Equation 1 in Vectors](linear-algebra-vectors.llms.md#eq-inner-product).
> 5.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{\top}$: $(3 \times 1)(1 \times 3)$, defined, result $3 \times 3$ — a matrix.
>
> The last two use the same two vectors and differ only in order, and they return objects of different kinds. Reading a transpose as decoration rather than as a shape change is the commonest way to lose track of an expression.

# 2 Square and identity matrices

> **NOTE:**
>
> **Definition 3 (Square matrix)** A matrix is **square** [\[2\]](#ref-wikipedia_square_matrix) if it has the same number of rows as columns.

> **NOTE:**
>
> **Example 5 (Square and not square)** $\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$ is square ($2$ rows, $2$ columns); $\begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}$ is not ($2$ rows, $3$ columns).

> **NOTE:**
>
> **Exercise 6 (Whether a data matrix times its transpose is square)** Many statistical methods start from an $n \times p$ data [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{X}$, with one [row](linear-algebra-matrices.llms.md#def-matrix-row) per observation, and form the [product](#def-matrix-mult) ${\mathbf{X}}^{\top}\mathbf{X}$ of its [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose) with itself. Whether that product is [square](#def-square-matrix) matters, because some operations, such as taking the [inverse of a matrix](linear-algebra-special-matrices.llms.md#def-matrix-inverse), apply only to [square matrices](#def-square-matrix).
>
> Is ${\mathbf{X}}^{\top}\mathbf{X}$ square?
>
> > **TIP:**
> >
> > Find the shape of ${\mathbf{X}}^{\top}$ from [Definition 6 in Matrices](linear-algebra-matrices.llms.md#def-matrix-transpose), then the shape of the [product](#def-matrix-mult) from [Definition 1](#def-matrix-mult).

> **NOTE:**
>
> *Solution 6*. Yes. The [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose) ${\mathbf{X}}^{\top}$ is $p \times n$, so ${\mathbf{X}}^{\top}$ has $n$ [column](linear-algebra-matrices.llms.md#def-matrix-column)s. $\mathbf{X}$ has $n$ [row](linear-algebra-matrices.llms.md#def-matrix-row)s, so the [product](#def-matrix-mult) ${\mathbf{X}}^{\top}\mathbf{X}$ is defined and is $p \times p$. It has $p$ rows and $p$ columns, so it is [square](#def-square-matrix) for every $n$ and $p$.

> **NOTE:**
>
> **Definition 4 (Main diagonal)** The **main diagonal** [\[3\]](#ref-wikipedia_main_diagonal) of an $m \times n$ matrix $\mathbf{A}$ is the list of its entries $a_{11}, a_{22}, \ldots, a_{kk}$, where $k$ is the smaller of $m$ and $n$.

> **NOTE:**
>
> **Definition 5 (Diagonal entry)** The entries on the main diagonal ([Definition 4](#def-main-diagonal)) of a matrix $\mathbf{A}$ are the **diagonal entries** of $\mathbf{A}$.

> **NOTE:**
>
> **Definition 6 (Off-diagonal entry)** In an $m \times n$ matrix $\mathbf{A}$ with main diagonal ([Definition 4](#def-main-diagonal)), every entry $a_{ij}$ with $i \ne j$ is an **off-diagonal entry**.

> **NOTE:**
>
> **Example 6 (Diagonal entries of a square and a non-square matrix)**  
>
> - For $\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$, the diagonal entries are $a_{11} = 1$ and $a_{22} = 4$, and the off-diagonal entries are $a_{12} = 2$ and $a_{21} = 3$.
> - For $\mathbf{B} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}$, $m = 2$ and $n = 3$, so $k = 2$, and the diagonal entries are $b_{11} = 1$ and $b_{22} = 5$; the other four entries, $2$, $3$, $4$ and $6$, are off-diagonal.

> **NOTE:**
>
> **Exercise 7 (The main diagonal of a tall matrix)** The [main diagonal](#def-main-diagonal) of a [matrix](linear-algebra-matrices.llms.md#def-matrix) that is not [square](#def-square-matrix) stops when it runs out of [row](linear-algebra-matrices.llms.md#def-matrix-row)s or [column](linear-algebra-matrices.llms.md#def-matrix-column)s, whichever comes first. A tall matrix, with more rows than columns, runs out of columns first. Let
>
> $$\mathbf{E} = \begin{bmatrix} 7 & -2 \\ 1 & 3 \\ 0 & 5 \\ 4 & -6 \end{bmatrix}.$$
>
> Find the main diagonal of $\mathbf{E}$.
>
> > **TIP:**
> >
> > Find $m$, $n$ and $k$ in [Definition 4](#def-main-diagonal).

> **NOTE:**
>
> *Solution 7*. Write $e_{ij}$ for the entry of $\mathbf{E}$ in [row](linear-algebra-matrices.llms.md#def-matrix-row) $i$ and [column](linear-algebra-matrices.llms.md#def-matrix-column) $j$. $\mathbf{E}$ is $4 \times 2$, so $m = 4$, $n = 2$ and $k = 2$. The [main diagonal](#def-main-diagonal) of $\mathbf{E}$ is therefore the list $e_{11}, e_{22}$, that is, $7, 3$. The list stops at $e_{22}$ because $\mathbf{E}$ has no third [column](linear-algebra-matrices.llms.md#def-matrix-column). It therefore has no entry $e_{33}$.

> **NOTE:**
>
> **Exercise 8 (Adding the diagonal entries of a square matrix)** The [sum](algebra-sums.llms.md#def-summation) of the [diagonal entries](#def-diagonal-entry) of a [square matrix](#def-square-matrix) summarizes that [matrix](linear-algebra-matrices.llms.md#def-matrix) in one number, called its [trace](linear-algebra-special-matrices.llms.md#def-trace). Let
>
> $$\mathbf{F} = \begin{bmatrix} 2 & 5 & -1 \\ 0 & -3 & 8 \\ 4 & 1 & 6 \end{bmatrix}.$$
>
> Find the sum of the diagonal entries of $\mathbf{F}$.
>
> > **TIP:**
> >
> > Find the [main diagonal](#def-main-diagonal) of $\mathbf{F}$ first.

> **NOTE:**
>
> *Solution 8*. Write $f_{ij}$ for the entry of $\mathbf{F}$ in [row](linear-algebra-matrices.llms.md#def-matrix-row) $i$ and [column](linear-algebra-matrices.llms.md#def-matrix-column) $j$. $\mathbf{F}$ is $3 \times 3$, so its [diagonal entries](#def-diagonal-entry) are $f_{11} = 2$, $f_{22} = -3$ and $f_{33} = 6$, and adding them gives
>
> $$f_{11} + f_{22} + f_{33} = 2 + (-3) + 6 = 5.$$

> **NOTE:**
>
> **Exercise 9 (Counting the off-diagonal entries of a square matrix)** In a table of pairwise comparisons among several items, the [off-diagonal entries](#def-off-diagonal-entry) are the comparisons between two different items, so counting them counts the ordered pairs of different items. Let $\mathbf{A}$ be a $5 \times 5$ [matrix](linear-algebra-matrices.llms.md#def-matrix), so $\mathbf{A}$ is [square](#def-square-matrix).
>
> How many off-diagonal entries does $\mathbf{A}$ have?
>
> > **TIP:**
> >
> > Count all the entries, then subtract the [diagonal entries](#def-diagonal-entry).

> **NOTE:**
>
> *Solution 9*. $\mathbf{A}$ has $5 \cdot 5 = 25$ entries. Its [diagonal entries](#def-diagonal-entry) are the $5$ entries $a_{ii}$, $i = 1, \ldots, 5$, and every other entry has $i \ne j$, so $\mathbf{A}$ has $25 - 5 = 20$ [off-diagonal entries](#def-off-diagonal-entry).

> **NOTE:**
>
> **Definition 7 (Identity matrix)** The $p \times p$ **identity matrix** [\[4\]](#ref-wikipedia_identity_matrix) $\mathbf{I}_p$ (or $\mathbf{I}$ when the size is clear from context) has ones on the [main diagonal](#def-main-diagonal) and zeros elsewhere:
>
> $$(\mathbf{I}_p)_{ij} =
> \begin{cases}
> 1 & \text{if } i = j \\
> 0 & \text{if } i \neq j
> \end{cases}
> \qquad
> \mathbf{I}_p =
> \begin{bmatrix}
> 1      & 0      & \cdots & 0      \\
> 0      & 1      & \cdots & 0      \\
> \vdots & \vdots & \ddots & \vdots \\
> 0      & 0      & \cdots & 1
> \end{bmatrix}$$

> **NOTE:**
>
> **Example 7 (The** $3 \times 3$ identity) $$\mathbf{I}_3 = \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix},$$
>
> so, for instance, $(\mathbf{I}_3)_{22} = 1$ and $(\mathbf{I}_3)_{23} = 0$.

> **NOTE:**
>
> **Exercise 10 (Whether a matrix with the identity pattern is an identity matrix)** An [identity matrix](#def-identity-matrix) has ones on its [main diagonal](#def-main-diagonal) and zeros elsewhere. The [matrix](linear-algebra-matrices.llms.md#def-matrix) below has the same pattern of ones and zeros. Let
>
> $$\mathbf{J} = \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \end{bmatrix}.$$
>
> Is $\mathbf{J}$ an identity matrix?
>
> > **TIP:**
> >
> > Compare the shape of $\mathbf{J}$ with the shape of $\mathbf{I}_p$ in [Definition 7](#def-identity-matrix).

> **NOTE:**
>
> *Solution 10*. No. Every [identity matrix](#def-identity-matrix) $\mathbf{I}_p$ is $p \times p$, so it is [square](#def-square-matrix). $\mathbf{J}$ is $2 \times 3$, so it is not square. Therefore $\mathbf{J}$ is not an identity matrix, even though its [main diagonal](#def-main-diagonal) holds ones and its other entries are zeros.

> **NOTE:**
>
> *Remark 2* (The identity matrix and the Kronecker delta). The entries of the identity matrix are given by the [Kronecker delta](indicator-functions.llms.md#def-kronecker-delta): $(\mathbf{I}_p)_{ij} = \delta_{ij}$.

> **NOTE:**
>
> **Theorem 4 (Identity matrix is a multiplicative identity)** For any $m \times p$ matrix $\mathbf{A}$:
>
> $$\mathbf{A}\,\mathbf{I}_p = \mathbf{A}$$
>
> $$\mathbf{I}_m\,\mathbf{A} = \mathbf{A}$$

> **NOTE:**
>
> **Exercise 11 (Multiplying by an identity matrix)** [Theorem 4](#thm-identity) says that an [identity matrix](#def-identity-matrix) of the right size leaves a [matrix](linear-algebra-matrices.llms.md#def-matrix) unchanged under [matrix multiplication](#def-matrix-mult), just as multiplying a number by $1$ leaves it unchanged. Let
>
> $$\mathbf{A} = \begin{bmatrix} 2 & 0 & -1 \\ 5 & 3 & 4 \end{bmatrix}.$$
>
> Compute $\mathbf{I}_2 \mathbf{A}$ entry by entry, from the definition of matrix multiplication.
>
> > **TIP:**
> >
> > Entry $(i, j)$ of $\mathbf{I}_2 \mathbf{A}$ is the [dot product](linear-algebra-vectors.llms.md#def-dot-product) of the $i$th [row of](linear-algebra-matrices.llms.md#def-matrix-row) $\mathbf{I}_2$ with the $j$th [column of](linear-algebra-matrices.llms.md#def-matrix-column) $\mathbf{A}$, as in [Example 3](#exm-dot-product-matmul).

> **NOTE:**
>
> *Solution 11*. $\mathbf{I}_2$ is $2 \times 2$ and $\mathbf{A}$ is $2 \times 3$, so the [product](#def-matrix-mult) is defined and is $2 \times 3$. The first [row of](linear-algebra-matrices.llms.md#def-matrix-row) $\mathbf{I}_2$ is $\begin{bmatrix} 1 & 0 \end{bmatrix}$ and the second is $\begin{bmatrix} 0 & 1 \end{bmatrix}$, so by [Definition 1](#def-matrix-mult)
>
> $$\begin{aligned}
> \mathbf{I}_2 \mathbf{A}
> &= \begin{bmatrix}
> 1 \cdot 2 + 0 \cdot 5 & 1 \cdot 0 + 0 \cdot 3 & 1 \cdot(-1) + 0 \cdot 4 \\
> 0 \cdot 2 + 1 \cdot 5 & 0 \cdot 0 + 1 \cdot 3 & 0 \cdot(-1) + 1 \cdot 4
> \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~1}}\text{)}
> \\
> &= \begin{bmatrix} 2 & 0 & -1 \\ 5 & 3 & 4 \end{bmatrix}
> && \text{(multiply and add)}
> \\
> &= \mathbf{A}.
> \end{aligned}$$
>
> Each row of $\mathbf{I}_2$ has a single $1$, so entry $(i, j)$ of the product picks out entry $(i, j)$ of $\mathbf{A}$, as [Theorem 4](#thm-identity) says.

# 3 Matrix-vector multiplication

> **NOTE:**
>
> **Definition 8 (Matrix-vector multiplication)** The **matrix-vector product** of an $m \times p$ matrix $\mathbf{A}$ and a $p \times 1$ column vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is the $m \times 1$ column vector $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with entries:
>
> $$(\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_i = \sum_{j=1}^pa_{ij}\, x_j$$

> **NOTE:**
>
> *Remark 3* (Each entry is a dot product). Matrix-vector multiplication extends the dot product ([Definition 10 in Vectors](linear-algebra-vectors.llms.md#def-dot-product)): entry $i$ of $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is the dot product of row $i$ of $\mathbf{A}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. For example,
>
> $$\begin{aligned}
> \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}
> \begin{bmatrix} 1 \\ -1 \end{bmatrix}
> &=
> \begin{bmatrix} 1 \cdot 1 + 2 \cdot(-1) \\ 3 \cdot 1 + 4 \cdot(-1) \end{bmatrix} \\
> &=
> \begin{bmatrix} -1 \\ -1 \end{bmatrix}.
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 12 (A matrix-vector product with more columns than rows)** A [matrix-vector product](#def-matvec-mult) $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ computes one [weighted sum](linear-algebra-vectors.llms.md#def-weighted-sum) of the entries of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for each [row of](linear-algebra-matrices.llms.md#def-matrix-row) $\mathbf{A}$, so one multiplication computes several weighted sums at once. The [matrix](linear-algebra-matrices.llms.md#def-matrix) $\mathbf{A}$ below has more [column](linear-algebra-matrices.llms.md#def-matrix-column)s than [row](linear-algebra-matrices.llms.md#def-matrix-row)s, so $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is shorter than $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. Let
>
> $$\mathbf{A} = \begin{bmatrix} 2 & 0 & -1 \\ 5 & 3 & 4 \end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}.$$
>
> Compute $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.
>
> > **TIP:**
> >
> > Entry $i$ of $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is the [dot product](linear-algebra-vectors.llms.md#def-dot-product) of the $i$th [row of](linear-algebra-matrices.llms.md#def-matrix-row) $\mathbf{A}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, as in [Remark 3](#rem-matvec-row-dot-products).

> **NOTE:**
>
> *Solution 12*. $\mathbf{A}$ is $2 \times 3$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is $3 \times 1$, so the [matrix-vector product](#def-matvec-mult) is defined and is $2 \times 1$:
>
> $$\begin{aligned}
> \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \begin{bmatrix}
> 2 \cdot 1 + 0 \cdot 2 + (-1) \cdot 3 \\
> 5 \cdot 1 + 3 \cdot 2 + 4 \cdot 3
> \end{bmatrix}
> && \text{(}\href{#def-matvec-mult}{\text{Definition~8}}\text{)}
> \\
> &= \begin{bmatrix} 2 + 0 - 3 \\ 5 + 6 + 12 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \begin{bmatrix} -1 \\ 23 \end{bmatrix}.
> && \text{(add)}
> \end{aligned}$$

> **NOTE:**
>
> **Definition 9 (Linear system, system of linear equations)** A **linear system** [\[5\]](#ref-wikipedia_system_of_linear_equations) (or **system of linear equations**) with $m$ equations in $n$ unknowns is an equation $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ in which the $m \times n$ matrix $\mathbf{A}$ and the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$ are given. A **solution** of the system is a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^n$ for which $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ holds.

> **NOTE:**
>
> **Example 8 (Two equations in two unknowns)** By [Definition 8](#def-matvec-mult), row $i$ of $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is the equation $a_{i1} x_1 + \cdots + a_{in} x_n = b_i$. So the two equations $x_1 + 2 x_2 = 5$ and $3 x_1 + 4 x_2 = 6$ form the linear system $\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \begin{bmatrix} 5 \\ 6 \end{bmatrix}$. The vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (-4, 4.5)$ is a solution:
>
> $$\begin{aligned}
> \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}
> \begin{bmatrix} -4 \\ 4.5 \end{bmatrix}
> &= \begin{bmatrix} 1 \cdot(-4) + 2 \cdot 4.5 \\ 3 \cdot(-4) + 4 \cdot 4.5 \end{bmatrix}
> && \text{(}\href{#def-matvec-mult}{\text{Definition~8}}\text{)}
> \\
> &= \begin{bmatrix} -4 + 9 \\ -12 + 18 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \begin{bmatrix} 5 \\ 6 \end{bmatrix}
> && \text{(add)}
> \end{aligned}$$
>
> The vector $(1, 2)$ is not a solution: its first equation holds, since $1 + 2 \cdot 2 = 5$, but its second gives $3 \cdot 1 + 4 \cdot 2 = 11 \ne 6$.

> **NOTE:**
>
> **Exercise 13 (Checking whether a vector solves a linear system)** Checking whether a vector solves a [linear system](#def-linear-system) takes only one [matrix-vector product](#def-matvec-mult), which is much less work than solving the system. Let
>
> $$\mathbf{A} = \begin{bmatrix} 3 & 1 \\ 1 & -2 \end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \begin{bmatrix} 5 \\ 4 \end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \begin{bmatrix} 2 \\ -1 \end{bmatrix}.$$
>
> Is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ a [solution of](#def-linear-system) $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$?
>
> > **TIP:**
> >
> > Compute $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with [Definition 8](#def-matvec-mult). Then compare it with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, as in [Example 8](#exm-linear-system).

> **NOTE:**
>
> *Solution 13*. Yes. The [matrix-vector product](#def-matvec-mult) is
>
> $$\begin{aligned}
> \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \begin{bmatrix} 3 \cdot 2 + 1 \cdot(-1) \\ 1 \cdot 2 + (-2) \cdot(-1) \end{bmatrix}
> && \text{(}\href{#def-matvec-mult}{\text{Definition~8}}\text{)}
> \\
> &= \begin{bmatrix} 5 \\ 4 \end{bmatrix},
> && \text{(multiply and add)}
> \end{aligned}$$
>
> which matches $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ entry by entry, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a [solution of the system](#def-linear-system).

# 4 Transposes of sums and products

> **NOTE:**
>
> **Theorem 5 (Transpose of a sum)** For $m \times n$ matrices $\mathbf{A}$ and $\mathbf{B}$:
>
> $${(\mathbf{A} + \mathbf{B})}^{\top} = {\mathbf{A}}^{\top} + {\mathbf{B}}^{\top}$$
>
> In particular, for column vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ of the same length:
>
> $${(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})}^{\top} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top} + {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}}^{\top}$$

> **NOTE:**
>
> *Proof*. Entry $(i, j)$ of each side:
>
> $$\begin{aligned}
> \mathopen{}\left[{(\mathbf{A} + \mathbf{B})}^{\top}\right]\mathclose{}_{ij}
> &= (\mathbf{A} + \mathbf{B})_{ji}
> && \text{(definition of the transpose)}
> \\
> &= a_{ji} + b_{ji}
> && \text{(definition of matrix addition)}
> \\
> &= ({\mathbf{A}}^{\top})_{ij} + ({\mathbf{B}}^{\top})_{ij}
> && \text{(definition of the transpose)}
> \\
> &= \mathopen{}\left[{\mathbf{A}}^{\top} + {\mathbf{B}}^{\top}\right]\mathclose{}_{ij}
> && \text{(definition of matrix addition)}
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 14 (Transposing a sum of two matrices)** [Theorem 5](#thm-transpose-sum) lets a [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose) be taken before or after adding, whichever is less work. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 2 & 0 \\ 3 & -1 & 4\end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix}0 & 1 & 1 \\ 2 & 2 & -3\end{bmatrix}.$$
>
> Find ${(\mathbf{A} + \mathbf{B})}^{\top}$.
>
> > **TIP:**
> >
> > Add first with [Definition 8 in Matrices](linear-algebra-matrices.llms.md#def-matrix-addition), then take the [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose).

> **NOTE:**
>
> *Solution 14*. Adding entry by entry,
>
> $$\mathbf{A} + \mathbf{B} = \begin{bmatrix}1 & 3 & 1 \\ 5 & 1 & 1\end{bmatrix},$$
>
> so
>
> $${(\mathbf{A} + \mathbf{B})}^{\top} = \begin{bmatrix}1 & 5 \\ 3 & 1 \\ 1 & 1\end{bmatrix}.$$
>
> By [Theorem 5](#thm-transpose-sum), adding ${\mathbf{A}}^{\top} = \begin{bmatrix}1 & 3 \\ 2 & -1 \\ 0 & 4\end{bmatrix}$ and ${\mathbf{B}}^{\top} = \begin{bmatrix}0 & 2 \\ 1 & 2 \\ 1 & -3\end{bmatrix}$ gives the same [matrix](linear-algebra-matrices.llms.md#def-matrix).

> **NOTE:**
>
> **Theorem 6 (Transpose of a product)** For an $m \times k$ matrix $\mathbf{A}$ and a $k \times n$ matrix $\mathbf{B}$:
>
> $$\underbrace{{(\mathbf{A}\mathbf{B})}^{\top}}_{n \times m}
> = \underbrace{{\mathbf{B}}^{\top}}_{n \times k}\,\underbrace{{\mathbf{A}}^{\top}}_{k \times m}$$

> **NOTE:**
>
> *Proof*. Entry $(i, j)$ of each side:
>
> $$\begin{aligned}
> \mathopen{}\left[{(\mathbf{A}\mathbf{B})}^{\top}\right]\mathclose{}_{ij}
> &= (\mathbf{A}\mathbf{B})_{ji}
> && \text{(definition of the transpose)}
> \\
> &= \sum_{s=1}^{k} a_{js}\, b_{si}
> && \text{(definition of matrix multiplication)}
> \\
> &= \sum_{s=1}^{k} ({\mathbf{B}}^{\top})_{is}\, ({\mathbf{A}}^{\top})_{sj}
> && \text{(definition of the transpose; reorder each product)}
> \\
> &= \mathopen{}\left[{\mathbf{B}}^{\top}\,{\mathbf{A}}^{\top}\right]\mathclose{}_{ij}
> && \text{(definition of matrix multiplication)}
> \end{aligned}$$

> **NOTE:**
>
> *Remark 4* (The order of the factors reverses). Transposing a product reverses the order of the factors. Keeping the original order usually gives an undefined product or a different matrix. For example, with $\mathbf{A} = [1,\; 2]$ ($1 \times 2$) and $\mathbf{B} = \begin{bmatrix} 3 \\ 4 \end{bmatrix}$ ($2 \times 1$),
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B} &= 1 \cdot 3 + 2 \cdot 4 \\
> &= 11,
> \end{aligned}$$
>
> so ${(\mathbf{A}\mathbf{B})}^{\top} = 11$, and
>
> $${\mathbf{B}}^{\top}\,{\mathbf{A}}^{\top}
> = [3,\; 4] \begin{bmatrix} 1 \\ 2 \end{bmatrix}
> = 11,
> \qquad
> {\mathbf{A}}^{\top}\,{\mathbf{B}}^{\top}
> = \begin{bmatrix} 1 \\ 2 \end{bmatrix} [3,\; 4]
> = \begin{bmatrix} 3 & 4 \\ 6 & 8 \end{bmatrix}.$$
>
> If instead $\mathbf{A}$ is $2 \times 3$ and $\mathbf{B}$ is $3 \times 1$, then ${\mathbf{B}}^{\top}\,{\mathbf{A}}^{\top}$ is a $(1 \times 3)(3 \times 2)$ product, but ${\mathbf{A}}^{\top}\,{\mathbf{B}}^{\top}$ is a $(3 \times 2)(1 \times 3)$ product, which is undefined.

> **NOTE:**
>
> **Exercise 15 (The order of the factors in a transposed square product)** [Remark 4](#rem-transpose-product-order) shows that, for factors that are not [square](#def-square-matrix), keeping the original order of the factors in the [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose) of a [product](#def-matrix-mult) can give an undefined product. For two [square matrices](#def-square-matrix) of the same size, both ${\mathbf{A}}^{\top}{\mathbf{B}}^{\top}$ and ${\mathbf{B}}^{\top}{\mathbf{A}}^{\top}$ are defined, so the shapes alone cannot settle which order gives ${(\mathbf{A}\mathbf{B})}^{\top}$. Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \end{bmatrix}.$$
>
> Does ${\mathbf{A}}^{\top}{\mathbf{B}}^{\top}$ equal ${(\mathbf{A}\mathbf{B})}^{\top}$ for these $\mathbf{A}$ and $\mathbf{B}$?
>
> > **TIP:**
> >
> > Compute $\mathbf{A}\mathbf{B}$ with [Definition 1](#def-matrix-mult) and take its [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose), then compute ${\mathbf{A}}^{\top}{\mathbf{B}}^{\top}$ and compare the two entry by entry.

> **NOTE:**
>
> *Solution 15*. No: the two [matrices](linear-algebra-matrices.llms.md#def-matrix) differ, so keeping the order of the factors gives the wrong [transpose](linear-algebra-matrices.llms.md#def-matrix-transpose).
>
> The [product](#def-matrix-mult) $\mathbf{A}\mathbf{B}$ and its transpose are
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B}
> &= \begin{bmatrix}
> 1 \cdot 1 + 2 \cdot 1 & 1 \cdot 0 + 2 \cdot 1 \\
> 0 \cdot 1 + 1 \cdot 1 & 0 \cdot 0 + 1 \cdot 1
> \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~1}}\text{)}
> \\
> &= \begin{bmatrix} 3 & 2 \\ 1 & 1 \end{bmatrix},
> && \text{(multiply and add)}
> \end{aligned}$$
>
> so ${(\mathbf{A}\mathbf{B})}^{\top} = \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix}$.
>
> The transposes are ${\mathbf{A}}^{\top} = \begin{bmatrix} 1 & 0 \\ 2 & 1 \end{bmatrix}$ and ${\mathbf{B}}^{\top} = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}$, so
>
> $$\begin{aligned}
> {\mathbf{A}}^{\top}{\mathbf{B}}^{\top}
> &= \begin{bmatrix}
> 1 \cdot 1 + 0 \cdot 0 & 1 \cdot 1 + 0 \cdot 1 \\
> 2 \cdot 1 + 1 \cdot 0 & 2 \cdot 1 + 1 \cdot 1
> \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~1}}\text{)}
> \\
> &= \begin{bmatrix} 1 & 1 \\ 2 & 3 \end{bmatrix}.
> && \text{(multiply and add)}
> \end{aligned}$$
>
> Entry $(1, 1)$ is $3$ in ${(\mathbf{A}\mathbf{B})}^{\top}$ and $1$ in ${\mathbf{A}}^{\top}{\mathbf{B}}^{\top}$. In the reversed order, as [Theorem 6](#thm-transpose-product) says, ${\mathbf{B}}^{\top}{\mathbf{A}}^{\top}
> = \begin{bmatrix} 1 \cdot 1 + 1 \cdot 2 & 1 \cdot 0 + 1 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 2 & 0 \cdot 0 + 1 \cdot 1 \end{bmatrix}
> = \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix}$, which matches ${(\mathbf{A}\mathbf{B})}^{\top}$.

> **NOTE:**
>
> **Theorem 7 (A** $1 \times 1$ product equals its own transpose) If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ are vectors of length $p$ and $\mathbf{M}$ is a $p \times p$ matrix, then ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is a number, and
>
> $${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,{\mathbf{M}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}.$$
>
> In particular, ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$.

> **NOTE:**
>
> *Proof*. The product ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is a $(1 \times p)(p \times p)(p \times 1)$ product, so it is a $1 \times 1$ matrix. The transpose of a $1 \times 1$ matrix is itself, so
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}
> &= {\mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}\right)\mathclose{}}^{\top}
> && \text{(a } 1 \times 1 \text{ matrix equals its transpose)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,{\mathbf{M}}^{\top}\,{\mathopen{}\left({\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\right)\mathclose{}}^{\top}
> && \text{(transpose of a product, twice)}
> \\
> &= {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,{\mathbf{M}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}
> && \text{(transposing twice changes nothing)}
> \end{aligned}$$
>
> The transpose step is [Theorem 6](#thm-transpose-product). Taking $\mathbf{M} = \mathbf{I}$ gives the last statement.

> **NOTE:**
>
> **Example 9 (Two ways to write the same number)** Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 2)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (3, -1)$ and $\mathbf{M} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}$. Then $\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (1, -3)$, so
>
> $${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = 1 \cdot 1 + 2 \cdot (-3) = -5.$$
>
> Also ${\mathbf{M}}^{\top} = \begin{bmatrix} 1 & 0 \\ 2 & 3 \end{bmatrix}$ and ${\mathbf{M}}^{\top}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 8)$, so
>
> $${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,{\mathbf{M}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = 3 \cdot 1 + (-1) \cdot 8 = -5.$$
>
> The two products are equal, as the theorem says. In least squares, this is why the two cross terms of ${(\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})}^{\top}(\mathbf{X}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}- \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})$ are equal and can be combined.

> **NOTE:**
>
> **Exercise 16 (Evaluating a product of a vector, a matrix and a vector)** [Theorem 7](#thm-scalar-transpose) turns ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,{\mathbf{M}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ back into ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$, which can be the easier [product](#def-matrix-mult) of a vector, a [matrix](linear-algebra-matrices.llms.md#def-matrix) and a vector to compute. Let
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = \begin{bmatrix}1 \\ -1\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \begin{bmatrix}2 \\ 3\end{bmatrix},
> \qquad
> \mathbf{M} = \begin{bmatrix}0 & 1 \\ 2 & 0\end{bmatrix}.$$
>
> Find ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,{\mathbf{M}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$.
>
> > **TIP:**
> >
> > By [Theorem 7](#thm-scalar-transpose), it is enough to compute ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$.

> **NOTE:**
>
> *Solution 16*. By [Theorem 7](#thm-scalar-transpose), ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,{\mathbf{M}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$. By [Definition 8](#def-matvec-mult),
>
> $$\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \begin{bmatrix}0 \cdot 2 + 1 \cdot 3 \\ 2 \cdot 2 + 0 \cdot 3\end{bmatrix} = \begin{bmatrix}3 \\ 4\end{bmatrix},$$
>
> so
>
> $${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = 1 \cdot 3 + (-1) \cdot 4 = -1.$$
>
> The answer is $-1$.

# Definitions on this page

- [Definition 1 (Matrix multiplication)](#def-matrix-mult)
- [Definition 2 (Shape rule)](#def-shape-rule)
- [Definition 3 (Square matrix)](#def-square-matrix)
- [Definition 4 (Main diagonal)](#def-main-diagonal)
- [Definition 5 (Diagonal entry)](#def-diagonal-entry)
- [Definition 6 (Off-diagonal entry)](#def-off-diagonal-entry)
- [Definition 7 (Identity matrix)](#def-identity-matrix)
- [Definition 8 (Matrix-vector multiplication)](#def-matvec-mult)
- [Definition 9 (Linear system, system of linear equations)](#def-linear-system)

Back to top

## References

\[1\]

Wikipedia contributors, “Matrix multiplication — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Matrix_multiplication>

\[2\]

Wikipedia contributors, “Square matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Square_matrix>

\[3\]

Wikipedia contributors, “Main diagonal — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Main_diagonal>

\[4\]

Wikipedia contributors, “Identity matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Identity_matrix>

\[5\]

Wikipedia contributors, “System of linear equations — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/System_of_linear_equations>
