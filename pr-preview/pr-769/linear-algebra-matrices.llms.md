# Matrices

Code

Published

Last modified: 2026-11-12 12:27:17 (PST)

> **NOTE:**
>
> **Definition 1 (Matrix)** A **matrix** [\[1\]](#ref-wikipedia_matrix_mathematics) of dimensions $m \times n$ is a rectangular array of $m \cdot n$ numbers, arranged in $m$ rows and $n$ columns:
>
> $$\mathbf{A} =
> \begin{bmatrix}
> a_{11} & a_{12} & \cdots & a_{1n} \\
> a_{21} & a_{22} & \cdots & a_{2n} \\
> \vdots & \vdots & \ddots & \vdots \\
> a_{m1} & a_{m2} & \cdots & a_{mn}
> \end{bmatrix}$$

> **NOTE:**
>
> *Remark 1* (Matrix entries, and vectors as matrices). The entry in row $i$ and column $j$ of $\mathbf{A}$ is written $a_{ij}$ or $(\mathbf{A})_{ij}$. For example, for the $2 \times 3$ matrix
>
> $$\mathbf{A} =
> \begin{bmatrix}
> 1 & 2 & 3 \\
> 4 & 5 & 6
> \end{bmatrix},$$
>
> $a_{12} = 2$ and $a_{23} = 6$.
>
> A column vector of length $p$ is a $p \times 1$ matrix, and a row vector of length $p$ is a $1 \times p$ matrix. For example, the column vector $(7, 8)$ is a $2 \times 1$ matrix, and the row vector $[7,\; 8]$ is a $1 \times 2$ matrix.

> **NOTE:**
>
> **Definition 2 (Equal matrices)** Two [matrices](#def-matrix) $\mathbf{A}$ and $\mathbf{B}$ are **equal**, written $\mathbf{A} = \mathbf{B}$, if both are $m \times n$ and $a_{ij} = b_{ij}$ for every $i = 1, \ldots, m$ and $j = 1, \ldots, n$.

> **NOTE:**
>
> **Example 1 (Equal and unequal matrices)** $$\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix},
> \qquad
> \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \ne \begin{bmatrix} 1 & 2 \\ 3 & 5 \end{bmatrix},
> \qquad
> \begin{bmatrix} 1 & 2 & 3 & 4 \end{bmatrix} \ne \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}.$$
>
> The second pair differs in one entry. The third pair lists the same four numbers in the same order, but one [matrix](#def-matrix) is $1 \times 4$ and the other $2 \times 2$, so the two are not [equal](#def-matrix-equality).

> **NOTE:**
>
> **Exercise 1 (Solving for an unknown entry)** Two [matrices](#def-matrix) are [equal](#def-matrix-equality) only when every pair of matching entries agrees, so one matrix equation stands for several equations between numbers. Let
>
> $$\begin{bmatrix} 2 & x + 1 \\ 0 & 5 \end{bmatrix}
> = \begin{bmatrix} 2 & 4 \\ 0 & 5 \end{bmatrix}.$$
>
> Find $x$.
>
> > **TIP:**
> >
> > Both [matrices](#def-matrix) are $2 \times 2$, so by [Definition 2](#def-matrix-equality) each entry on the left is the same number as the entry in the same position on the right.

> **NOTE:**
>
> *Solution 1*. Both [matrices](#def-matrix) are $2 \times 2$, so they are [equal](#def-matrix-equality) when their entries in each position agree. Three positions already agree, and the entries in position $(1, 2)$ give
>
> $$\begin{aligned}
> x + 1 &= 4
> && \text{(}\href{#def-matrix-equality}{\text{Definition~2}}\text{)}
> \\
> x &= 3.
> && \text{(subtract } 1 \text{ from both sides)}
> \end{aligned}$$

> **NOTE:**
>
> **Definition 3 (Row of a matrix)** The $i$th **row** of an $m \times n$ [matrix](#def-matrix) $\mathbf{A}$ is the $1 \times n$ row vector of the entries in row $i$:
>
> $$\mathbf{A}_{i,:} = \begin{bmatrix} a_{i1} & a_{i2} & \cdots & a_{in} \end{bmatrix}.$$

> **NOTE:**
>
> **Definition 4 (Column of a matrix)** The $j$th **column** of an $m \times n$ [matrix](#def-matrix) $\mathbf{A}$ is the [column vector](linear-algebra-vectors.llms.md#def-column-vector) of the entries in column $j$:
>
> $$\mathbf{A}_{:,j} =
> \begin{bmatrix} a_{1j} \\ a_{2j} \\ \vdots \\ a_{mj} \end{bmatrix}.$$

> **NOTE:**
>
> **Example 2 (Rows and columns of a matrix)** For $\mathbf{A} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}$, the [rows](#def-matrix-row) are $\mathbf{A}_{1,:} = \begin{bmatrix} 1 & 2 & 3 \end{bmatrix}$ and $\mathbf{A}_{2,:} = \begin{bmatrix} 4 & 5 & 6 \end{bmatrix}$, and the [columns](#def-matrix-column) are $\mathbf{A}_{:,1} = \begin{bmatrix} 1 \\ 4 \end{bmatrix}$, $\mathbf{A}_{:,2} = \begin{bmatrix} 2 \\ 5 \end{bmatrix}$ and $\mathbf{A}_{:,3} = \begin{bmatrix} 3 \\ 6 \end{bmatrix}$.

> **NOTE:**
>
> **Exercise 2 (Reading off a column of a matrix)** When each [row of a matrix](#def-matrix-row) records one observation, each [column](#def-matrix-column) holds one measured quantity for every observation, so reading off a column extracts that quantity’s values. Let
>
> $$\mathbf{A} = \begin{bmatrix} 2 & 0 & -1 \\ 5 & 3 & 4 \end{bmatrix}.$$
>
> Find $\mathbf{A}_{:,2}$, the second [column of](#def-matrix-column) $\mathbf{A}$.
>
> > **TIP:**
> >
> > The $j$th [column of an](#def-matrix-column) $m \times n$ matrix lists the entries $a_{1j}, \ldots, a_{mj}$ from top to bottom, as in [Example 2](#exm-matrix-rows-columns).

> **NOTE:**
>
> *Solution 2*. $\mathbf{A}$ has $m = 2$ [row](#def-matrix-row)s, so its second [column](#def-matrix-column) holds the two entries $a_{12}$ and $a_{22}$:
>
> $$\mathbf{A}_{:,2} = \begin{bmatrix} a_{12} \\ a_{22} \end{bmatrix}
> = \begin{bmatrix} 0 \\ 3 \end{bmatrix}.$$

> **NOTE:**
>
> **Exercise 3 (Counting the rows and columns of a matrix)** Data with one [row](#def-matrix-row) per observation and one [column](#def-matrix-column) per measured quantity is stored as a [matrix](#def-matrix), so the matrix’s number of rows is the number of observations and its number of columns is the number of quantities. Let
>
> $$\mathbf{C} = \begin{bmatrix} 4 & 0 \\ 1 & -3 \\ 2 & 7 \end{bmatrix}.$$
>
> Find $m$ and $n$ such that $\mathbf{C}$ is an $m \times n$ matrix.
>
> > **TIP:**
> >
> > In [Definition 1](#def-matrix), $m$ counts the [row](#def-matrix-row)s and $n$ counts the [column](#def-matrix-column)s.

> **NOTE:**
>
> *Solution 3*. $\mathbf{C}$ has three [row](#def-matrix-row)s, $\begin{bmatrix} 4 & 0 \end{bmatrix}$, $\begin{bmatrix} 1 & -3 \end{bmatrix}$ and $\begin{bmatrix} 2 & 7 \end{bmatrix}$, and each row has two entries, so $\mathbf{C}$ has two [column](#def-matrix-column)s. So $m = 3$ and $n = 2$: $\mathbf{C}$ is a $3 \times 2$ [matrix](#def-matrix), with $3 \cdot 2 = 6$ entries.

> **NOTE:**
>
> **Exercise 4 (Reading off a row of a matrix)** When each [row of a matrix](#def-matrix-row) records one observation, reading off a [row](#def-matrix-row) extracts every measured quantity for that one observation. Let
>
> $$\mathbf{D} = \begin{bmatrix} 1 & -4 & 2 \\ 0 & 6 & 3 \\ 5 & 5 & -1 \end{bmatrix}.$$
>
> Find $\mathbf{D}_{3,:}$, the third [row of](#def-matrix-row) $\mathbf{D}$.
>
> > **TIP:**
> >
> > A [row of a matrix](#def-matrix-row) lists the entries $a_{i1}, \ldots, a_{in}$ from left to right, as in [Example 2](#exm-matrix-rows-columns).

> **NOTE:**
>
> *Solution 4*. Write $d_{ij}$ for the entry of $\mathbf{D}$ in [row](#def-matrix-row) $i$ and [column](#def-matrix-column) $j$. $\mathbf{D}$ has $n = 3$ columns, so its third [row](#def-matrix-row) holds the three entries $d_{31}$, $d_{32}$ and $d_{33}$:
>
> $$\mathbf{D}_{3,:} = \begin{bmatrix} d_{31} & d_{32} & d_{33} \end{bmatrix}
> = \begin{bmatrix} 5 & 5 & -1 \end{bmatrix}.$$

> **NOTE:**
>
> **Theorem 1 (A matrix is a column of its rows)** An $m \times n$ [matrix](#def-matrix) $\mathbf{A}$ is the [column vector](linear-algebra-vectors.llms.md#def-column-vector) whose entries are its [rows](#def-matrix-row):
>
> $$\mathbf{A} =
> \begin{bmatrix}
> \mathbf{A}_{1,:} \\
> \vdots \\
> \mathbf{A}_{m,:}
> \end{bmatrix}.$$

> **NOTE:**
>
> **Exercise 5 (Stacking rows into a matrix)** [Theorem 1](#thm-matrix-column-of-rows) says that a [matrix](#def-matrix) is determined by its [row](#def-matrix-row)s, so data recorded one observation at a time can be assembled into a matrix by stacking those records. Let $\mathbf{M}$ be the $3 \times 2$ matrix with
>
> $$\mathbf{M}_{1,:} = \begin{bmatrix} 1 & 2 \end{bmatrix},
> \qquad
> \mathbf{M}_{2,:} = \begin{bmatrix} 3 & -1 \end{bmatrix},
> \qquad
> \mathbf{M}_{3,:} = \begin{bmatrix} 0 & 4 \end{bmatrix}.$$
>
> What is $\mathbf{M}_{:,2}$, the second [column of](#def-matrix-column) $\mathbf{M}$?
>
> > **TIP:**
> >
> > Stack the [row](#def-matrix-row)s from top to bottom, as in [Theorem 1](#thm-matrix-column-of-rows), then read down the second [column](#def-matrix-column).

> **NOTE:**
>
> *Solution 5*. Stacking the three [row](#def-matrix-row)s from top to bottom gives
>
> $$\begin{aligned}
> \mathbf{M}
> &= \begin{bmatrix} \mathbf{M}_{1,:} \\ \mathbf{M}_{2,:} \\ \mathbf{M}_{3,:} \end{bmatrix}
> && \text{(}\href{#thm-matrix-column-of-rows}{\text{Theorem~1}}\text{)}
> \\
> &= \begin{bmatrix} 1 & 2 \\ 3 & -1 \\ 0 & 4 \end{bmatrix},
> && \text{(substitute the rows)}
> \end{aligned}$$
>
> so the second [column of](#def-matrix-column) $\mathbf{M}$ lists the second entry of each [row](#def-matrix-row):
>
> $$\mathbf{M}_{:,2} = \begin{bmatrix} 2 \\ -1 \\ 4 \end{bmatrix}.$$

> **NOTE:**
>
> **Theorem 2 (A matrix is a row of its columns)** An $m \times n$ [matrix](#def-matrix) $\mathbf{A}$ is the row vector whose entries are its [columns](#def-matrix-column):
>
> $$\mathbf{A} =
> \begin{bmatrix}
> \mathbf{A}_{:,1} & \cdots & \mathbf{A}_{:,n}
> \end{bmatrix}.$$

> **NOTE:**
>
> **Exercise 6 (Placing columns side by side)** [Theorem 2](#thm-matrix-row-of-columns) says that a [matrix](#def-matrix) is determined by its [column](#def-matrix-column)s, so measurements recorded one quantity at a time can be assembled into a matrix by placing those lists side by side. Let $\mathbf{N}$ be the $2 \times 3$ matrix with
>
> $$\mathbf{N}_{:,1} = \begin{bmatrix} 2 \\ -1 \end{bmatrix},
> \qquad
> \mathbf{N}_{:,2} = \begin{bmatrix} 0 \\ 3 \end{bmatrix},
> \qquad
> \mathbf{N}_{:,3} = \begin{bmatrix} 4 \\ 1 \end{bmatrix}.$$
>
> What is $\mathbf{N}_{2,:}$, the second [row of](#def-matrix-row) $\mathbf{N}$?
>
> > **TIP:**
> >
> > Place the [column](#def-matrix-column)s from left to right, as in [Theorem 2](#thm-matrix-row-of-columns), then read across the second [row](#def-matrix-row).

> **NOTE:**
>
> *Solution 6*. Placing the three [column](#def-matrix-column)s from left to right gives
>
> $$\begin{aligned}
> \mathbf{N}
> &= \begin{bmatrix} \mathbf{N}_{:,1} & \mathbf{N}_{:,2} & \mathbf{N}_{:,3} \end{bmatrix}
> && \text{(}\href{#thm-matrix-row-of-columns}{\text{Theorem~2}}\text{)}
> \\
> &= \begin{bmatrix} 2 & 0 & 4 \\ -1 & 3 & 1 \end{bmatrix},
> && \text{(substitute the columns)}
> \end{aligned}$$
>
> so the second [row of](#def-matrix-row) $\mathbf{N}$ lists the second entry of each [column](#def-matrix-column):
>
> $$\mathbf{N}_{2,:} = \begin{bmatrix} -1 & 3 & 1 \end{bmatrix}.$$

> **NOTE:**
>
> **Definition 5 (Tensor)** A **tensor** [\[2\]](#ref-wikipedia_tensor) of order $k \ge 1$ is an array of numbers with $k$ indices, $$\mathcal{A} = \mathopen{}\left(a_{i_1 i_2 \cdots i_k}\right)\mathclose{},
> \quad i_1 = 1, \ldots, n_1, \ \ldots, \ i_k = 1, \ldots, n_k,$$ and its dimensions are $n_1 \times n_2 \times \cdots \times n_k$.

> **NOTE:**
>
> **Example 3 (Vectors, matrices and images as tensors)** A vector of length $p$ is a tensor of order $1$, and an $m \times n$ [matrix](#def-matrix) is a tensor of order $2$. A $28 \times 28$ grayscale image is a matrix: the entry $a_{ij}$ is the brightness of the pixel in row $i$ and column $j$. A $28 \times 28$ color image stores three numbers per pixel (red, green, blue), so it is an order-3 tensor with dimensions $28 \times 28 \times 3$, and $a_{ijc}$ is the value of color channel $c$ at the pixel in row $i$ and column $j$. It has $28 \cdot 28 \cdot 3 = 2352$ entries.

> **NOTE:**
>
> **Exercise 7 (Counting the entries of a batch of photos)** Software for neural networks often stores a batch of color photos as one [tensor](#def-tensor), with one index for the photo, two for the pixel’s position, and one for the color channel, and the software stores one number per entry, so the count of entries determines how much memory the batch needs. Let $\mathcal{B}$ be the order-4 tensor for a batch of $10$ color photos of $32 \times 32$ pixels, with $n_1 = 10$, $n_2 = 32$, $n_3 = 32$ and $n_4 = 3$.
>
> How many entries does $\mathcal{B}$ have?
>
> > **TIP:**
> >
> > Each index $i_r$ in [Definition 5](#def-tensor) takes $n_r$ values, and each choice of all four indices picks one entry, as in [Example 3](#exm-tensor).

> **NOTE:**
>
> *Solution 7*. An entry of $\mathcal{B}$ is picked by choosing $i_1$ from $10$ values, $i_2$ and $i_3$ from $32$ values each, and $i_4$ from $3$ values, so the number of entries is
>
> $$\begin{aligned}
> n_1 \cdot n_2 \cdot n_3 \cdot n_4
> &= 10 \cdot 32 \cdot 32 \cdot 3
> && \text{(substitute the index ranges)}
> \\
> &= 30720.
> && \text{(multiply)}
> \end{aligned}$$

# 1 Matrix transpose

> **NOTE:**
>
> **Definition 6 (Matrix transpose)** The **transpose** [\[3\]](#ref-wikipedia_transpose) of an $m \times n$ matrix $\mathbf{A}$ is the $n \times m$ matrix ${\mathbf{A}}^{\top}$ obtained by swapping the rows and columns of $\mathbf{A}$:
>
> $$({\mathbf{A}}^{\top})_{ij} = a_{ji}$$

> **NOTE:**
>
> **Example 4 (Transposing a** $2 \times 3$ matrix) For $\mathbf{A} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}$,
>
> $${\mathbf{A}}^{\top}
> = \begin{bmatrix} 1 & 4 \\ 2 & 5 \\ 3 & 6 \end{bmatrix},$$
>
> a $3 \times 2$ matrix. For instance, entry $(1, 2)$ of the transpose is $a_{21} = 4$.

> **NOTE:**
>
> **Exercise 8 (Transposing a** $3 \times 2$ matrix) The [transpose](#def-matrix-transpose) turns the [row](#def-matrix-row)s of a [matrix](#def-matrix) into [column](#def-matrix-column)s, just as the [transpose of a vector](linear-algebra-vectors.llms.md#def-transpose) turns a column into a row. Let
>
> $$\mathbf{B} = \begin{bmatrix} 1 & -2 \\ 0 & 3 \\ 4 & 5 \end{bmatrix}.$$
>
> Compute ${\mathbf{B}}^{\top}$.
>
> > **TIP:**
> >
> > Entry $(i, j)$ of the [transpose](#def-matrix-transpose) is entry $(j, i)$ of the original [matrix](#def-matrix), as in [Example 4](#exm-matrix-transpose).

> **NOTE:**
>
> *Solution 8*. $\mathbf{B}$ is $3 \times 2$, so its [transpose](#def-matrix-transpose) is $2 \times 3$. The $i$th [row of](#def-matrix-row) ${\mathbf{B}}^{\top}$ is the $i$th [column of](#def-matrix-column) $\mathbf{B}$:
>
> $${\mathbf{B}}^{\top} = \begin{bmatrix} 1 & 0 & 4 \\ -2 & 3 & 5 \end{bmatrix}.$$
>
> For instance, entry $(2, 3)$ of ${\mathbf{B}}^{\top}$ is $b_{32} = 5$.

# 2 Matrix addition

> **NOTE:**
>
> **Definition 7 (Zero matrix)** The $m \times n$ **zero matrix** [\[4\]](#ref-wikipedia_zero_matrix) $\mathbf{0}_{m \times n}$ (or $\mathbf{0}$ when dimensions are clear from context) has all entries equal to zero:
>
> $$\mathbf{0}_{m \times n} =
> \begin{bmatrix}
> 0      & 0      & \cdots & 0      \\
> 0      & 0      & \cdots & 0      \\
> \vdots & \vdots & \ddots & \vdots \\
> 0      & 0      & \cdots & 0
> \end{bmatrix}$$

> **NOTE:**
>
> **Example 5 (Zero matrices of two shapes)** $$\mathbf{0}_{2 \times 3} = \begin{bmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \end{bmatrix},
> \qquad
> \mathbf{0}_{3 \times 2} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \\ 0 & 0 \end{bmatrix}.$$
>
> Both have all entries $0$, but one is $2 \times 3$ and the other $3 \times 2$, so they are different matrices.

> **NOTE:**
>
> **Exercise 9 (Whether a matrix of zeros is a given zero matrix)** A [zero matrix](#def-zero-matrix) carries its shape in its subscript, because, as [Example 5](#exm-zero-matrix) shows, [zero matrices](#def-zero-matrix) of different shapes are different [matrices](#def-matrix). Let
>
> $$\mathbf{Z} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \\ 0 & 0 \end{bmatrix}.$$
>
> Is $\mathbf{Z} = \mathbf{0}_{2 \times 3}$?
>
> > **TIP:**
> >
> > Compare the shapes of the two [matrices](#def-matrix), using [Definition 2](#def-matrix-equality).

> **NOTE:**
>
> *Solution 9*. No. $\mathbf{Z}$ has three [row](#def-matrix-row)s and two [column](#def-matrix-column)s, so it is $3 \times 2$. But $\mathbf{0}_{2 \times 3}$ is $2 \times 3$. Two [matrices](#def-matrix) of different shapes are not [equal](#def-matrix-equality), even when every entry of both is $0$. Instead, $\mathbf{Z}$ is the [zero matrix](#def-zero-matrix) $\mathbf{0}_{3 \times 2}$.

> **NOTE:**
>
> **Definition 8 (Matrix addition)** Two matrices $\mathbf{A}$ and $\mathbf{B}$ of the same dimensions $m \times n$ can be added element-wise; their **matrix sum** [\[5\]](#ref-wikipedia_matrix_addition) is:
>
> $$(\mathbf{A} + \mathbf{B})_{ij} = a_{ij} + b_{ij}$$

> **NOTE:**
>
> **Example 6 (Adding matrices, and a sum that is not defined)** $$\begin{aligned}
> \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}
> + \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}
> &= \begin{bmatrix} 1 + 0 & 2 + 1 \\ 3 + 1 & 4 + 0 \end{bmatrix}
> && \text{(add entry by entry)}
> \\
> &= \begin{bmatrix} 1 & 3 \\ 4 & 4 \end{bmatrix}.
> && \text{(add)}
> \end{aligned}$$
>
> A $2 \times 2$ matrix and a $2 \times 3$ matrix cannot be added: they do not have the same dimensions, so entry $(1, 3)$ of the sum would have no first term.

> **NOTE:**
>
> **Exercise 10 (Adding two** $2 \times 2$ matrices) A [matrix sum](#def-matrix-addition) combines two tables of the same shape entry by entry, such as two months of counts recorded in the same [row](#def-matrix-row)s and [column](#def-matrix-column)s. Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & -1 \\ 2 & 0 \end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix} 3 & 2 \\ -2 & 5 \end{bmatrix}.$$
>
> Compute $\mathbf{A} + \mathbf{B}$.
>
> > **TIP:**
> >
> > Add the entries in the same position, as in [Example 6](#exm-matrix-addition).

> **NOTE:**
>
> *Solution 10*. Both [matrices](#def-matrix) are $2 \times 2$, so the [matrix sum](#def-matrix-addition) is defined:
>
> $$\begin{aligned}
> \mathbf{A} + \mathbf{B}
> &= \begin{bmatrix} 1 + 3 & -1 + 2 \\ 2 + (-2) & 0 + 5 \end{bmatrix}
> && \text{(add entry by entry)}
> \\
> &= \begin{bmatrix} 4 & 1 \\ 0 & 5 \end{bmatrix}.
> && \text{(add)}
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 3 (Matrix addition is commutative)** For $m \times n$ matrices $\mathbf{A}$ and $\mathbf{B}$, matrix addition is [commutative](algebra-sums.llms.md#def-commutative):
>
> $$\mathbf{A} + \mathbf{B} = \mathbf{B} + \mathbf{A}$$

> **NOTE:**
>
> **Exercise 11 (Proving that matrix addition is commutative)** [Theorem 3](#thm-matadd-commutative) lets two [matrices](#def-matrix) be added in either order, just as two numbers can be ([sums are symmetric](algebra-sums.llms.md#thm-sum-symmetric)).
>
> Prove [Theorem 3](#thm-matadd-commutative).
>
> > **TIP:**
> >
> > Two $m \times n$ [matrices](#def-matrix) are [equal](#def-matrix-equality) when their $(i, j)$ entries agree for every $i$ and $j$. Express the $(i, j)$ entry of each side with [Definition 8](#def-matrix-addition).

> **NOTE:**
>
> *Solution 11*. Both sides are $m \times n$ [matrices](#def-matrix), so they are [equal](#def-matrix-equality) when their $(i, j)$ entries agree for every $i$ and $j$. For each $i$ and $j$,
>
> $$\begin{aligned}
> (\mathbf{A} + \mathbf{B})_{ij}
> &= a_{ij} + b_{ij}
> && \text{(}\href{#def-matrix-addition}{\text{Definition~8}}\text{)}
> \\
> &= b_{ij} + a_{ij}
> && \text{(sums of numbers are symmetric)}
> \\
> &= (\mathbf{B} + \mathbf{A})_{ij},
> && \text{(}\href{#def-matrix-addition}{\text{Definition~8}}\text{)}
> \end{aligned}$$
>
> where the middle step uses [the symmetry of sums of numbers](algebra-sums.llms.md#thm-sum-symmetric). So $\mathbf{A} + \mathbf{B} = \mathbf{B} + \mathbf{A}$.

> **NOTE:**
>
> **Theorem 4 (Matrix addition is associative)** For $m \times n$ matrices $\mathbf{A}$, $\mathbf{B}$, and $\mathbf{C}$, matrix addition is [associative](algebra-sums.llms.md#def-associative):
>
> $$(\mathbf{A} + \mathbf{B}) + \mathbf{C} = \mathbf{A} + (\mathbf{B} + \mathbf{C})$$

> **NOTE:**
>
> **Exercise 12 (Proving that matrix addition is associative)** [Theorem 4](#thm-matadd-assoc) lets three [matrices](#def-matrix) be added without parentheses, just as three numbers can be ([sums are associative](algebra-sums.llms.md#thm-sum-assoc)).
>
> Prove [Theorem 4](#thm-matadd-assoc).
>
> > **TIP:**
> >
> > Two $m \times n$ [matrices](#def-matrix) are [equal](#def-matrix-equality) when their $(i, j)$ entries agree for every $i$ and $j$. Apply [Definition 8](#def-matrix-addition) twice on each side.

> **NOTE:**
>
> *Solution 12*. Both sides are $m \times n$ [matrices](#def-matrix), so they are [equal](#def-matrix-equality) when their $(i, j)$ entries agree for every $i$ and $j$. For each $i$ and $j$,
>
> $$\begin{aligned}
> ((\mathbf{A} + \mathbf{B}) + \mathbf{C})_{ij}
> &= (\mathbf{A} + \mathbf{B})_{ij} + c_{ij}
> && \text{(}\href{#def-matrix-addition}{\text{Definition~8}}\text{)}
> \\
> &= (a_{ij} + b_{ij}) + c_{ij}
> && \text{(}\href{#def-matrix-addition}{\text{Definition~8}}\text{)}
> \\
> &= a_{ij} + (b_{ij} + c_{ij})
> && \text{(sums of numbers are associative)}
> \\
> &= a_{ij} + (\mathbf{B} + \mathbf{C})_{ij}
> && \text{(}\href{#def-matrix-addition}{\text{Definition~8}}\text{)}
> \\
> &= (\mathbf{A} + (\mathbf{B} + \mathbf{C}))_{ij},
> && \text{(}\href{#def-matrix-addition}{\text{Definition~8}}\text{)}
> \end{aligned}$$
>
> where the middle step uses [the associativity of sums of numbers](algebra-sums.llms.md#thm-sum-assoc). So $(\mathbf{A} + \mathbf{B}) + \mathbf{C} = \mathbf{A} + (\mathbf{B} + \mathbf{C})$.

> **NOTE:**
>
> **Theorem 5 (Zero matrix is the additive identity)** For an $m \times n$ matrix $\mathbf{A}$:
>
> $$\mathbf{A} + \mathbf{0}_{m \times n} = \mathbf{A}$$

> **NOTE:**
>
> **Exercise 13 (Proving that the zero matrix is the additive identity)** [Theorem 5](#thm-matadd-identity) says that adding the [zero matrix](#def-zero-matrix) leaves a [matrix](#def-matrix) unchanged, just as adding the number $0$ leaves a number unchanged.
>
> Prove [Theorem 5](#thm-matadd-identity).
>
> > **TIP:**
> >
> > Express the $(i, j)$ entry of $\mathbf{A} + \mathbf{0}_{m \times n}$ with [Definition 8](#def-matrix-addition), and use that every entry of $\mathbf{0}_{m \times n}$ is $0$.

> **NOTE:**
>
> *Solution 13*. Both sides are $m \times n$ [matrices](#def-matrix), so they are [equal](#def-matrix-equality) when their $(i, j)$ entries agree for every $i$ and $j$. For each $i$ and $j$,
>
> $$\begin{aligned}
> (\mathbf{A} + \mathbf{0}_{m \times n})_{ij}
> &= a_{ij} + (\mathbf{0}_{m \times n})_{ij}
> && \text{(}\href{#def-matrix-addition}{\text{Definition~8}}\text{)}
> \\
> &= a_{ij} + 0
> && \text{(}\href{#def-zero-matrix}{\text{Definition~7}}\text{)}
> \\
> &= a_{ij}.
> && \text{(adding } 0 \text{ to a number leaves it unchanged)}
> \end{aligned}$$
>
> So $\mathbf{A} + \mathbf{0}_{m \times n} = \mathbf{A}$.

> **NOTE:**
>
> **Theorem 6 (Additive inverse)** For any $m \times n$ matrix $\mathbf{A}$, the $m \times n$ matrix $-\mathbf{A}$ (defined by $(-\mathbf{A})_{ij} = -a_{ij}$) satisfies:
>
> $$\mathbf{A} + (-\mathbf{A}) = \mathbf{0}_{m \times n}$$

> **NOTE:**
>
> **Exercise 14 (Proving that a matrix plus its negation is zero)** [Theorem 6](#thm-matadd-inverse) says that adding $-\mathbf{A}$ to a [matrix](#def-matrix) $\mathbf{A}$ gives the [zero matrix](#def-zero-matrix), just as adding $-a$ to a number $a$ gives $0$. Here $-\mathbf{A}$, the negation of $\mathbf{A}$, negates every entry of $\mathbf{A}$.
>
> Prove [Theorem 6](#thm-matadd-inverse).
>
> > **TIP:**
> >
> > Express the $(i, j)$ entry of $\mathbf{A} + (-\mathbf{A})$ with [Definition 8](#def-matrix-addition), and use $(-\mathbf{A})_{ij} = -a_{ij}$ from [Theorem 6](#thm-matadd-inverse).

> **NOTE:**
>
> *Solution 14*. Both sides are $m \times n$ [matrices](#def-matrix), so they are [equal](#def-matrix-equality) when their $(i, j)$ entries agree for every $i$ and $j$. For each $i$ and $j$,
>
> $$\begin{aligned}
> (\mathbf{A} + (-\mathbf{A}))_{ij}
> &= a_{ij} + (-\mathbf{A})_{ij}
> && \text{(}\href{#def-matrix-addition}{\text{Definition~8}}\text{)}
> \\
> &= a_{ij} + (-a_{ij})
> && \text{(definition of } -\mathbf{A} \text{ in }\href{#thm-matadd-inverse}{\text{Theorem~6}}\text{)}
> \\
> &= 0
> && \text{(a number plus its negative is } 0 \text{)}
> \\
> &= (\mathbf{0}_{m \times n})_{ij}.
> && \text{(}\href{#def-zero-matrix}{\text{Definition~7}}\text{)}
> \end{aligned}$$
>
> So $\mathbf{A} + (-\mathbf{A}) = \mathbf{0}_{m \times n}$.

# 3 Scalar multiplication

> **NOTE:**
>
> **Definition 9 (Scalar multiplication)** The **scalar multiple** [\[6\]](#ref-wikipedia_scalar_multiplication) of a matrix $\mathbf{A}$ by a scalar $c$ is:
>
> $$(c\mathbf{A})_{ij} = c \cdot a_{ij}$$

> **NOTE:**
>
> **Example 7 (A scalar multiple)** $$\begin{aligned}
> 3 \begin{bmatrix} 1 & -2 \\ 0 & 4 \end{bmatrix}
> &= \begin{bmatrix} 3 \cdot 1 & 3 \cdot(-2) \\ 3 \cdot 0 & 3 \cdot 4 \end{bmatrix} \\
> &= \begin{bmatrix} 3 & -6 \\ 0 & 12 \end{bmatrix}.
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 15 (Multiplying a matrix by a negative factor)** A [scalar multiple](#def-scalar-mult) rescales every entry of a [matrix](#def-matrix) by the same factor, as when a table of distances is converted from meters to centimeters. A negative factor flips the sign of every entry, and a factor between $-1$ and $1$ shrinks every entry toward $0$. Let
>
> $$\mathbf{C} = \begin{bmatrix} 4 & -2 \\ 0 & 6 \end{bmatrix}.$$
>
> Compute $-\frac{1}{2} \mathbf{C}$.
>
> > **TIP:**
> >
> > Multiply each entry by $-\frac{1}{2}$, as in [Example 7](#exm-scalar-mult).

> **NOTE:**
>
> *Solution 15*. $$\begin{aligned}
> -\frac{1}{2} \mathbf{C}
> &= \begin{bmatrix}
> -\frac{1}{2} \cdot 4 & -\frac{1}{2} \cdot(-2) \\
> -\frac{1}{2} \cdot 0 & -\frac{1}{2} \cdot 6
> \end{bmatrix}
> && \text{(}\href{#def-scalar-mult}{\text{Definition~9}}\text{)}
> \\
> &= \begin{bmatrix} -2 & 1 \\ 0 & -3 \end{bmatrix}.
> && \text{(multiply)}
> \end{aligned}$$

# 4 Matrix multiplication

> **NOTE:**
>
> **Definition 10 (Matrix multiplication)** The **product** [\[7\]](#ref-wikipedia_matrix_multiplication) of an $m \times k$ matrix $\mathbf{A}$ and a $k \times n$ matrix $\mathbf{B}$ is the $m \times n$ matrix $\mathbf{C} = \mathbf{A}\mathbf{B}$ with entries:
>
> $$c_{ij} = \sum_{s=1}^{k} a_{is}\, b_{sj}$$

> **NOTE:**
>
> *Remark 2* (Matrix multiplication is not commutative). When $\mathbf{A}\mathbf{B}$ and $\mathbf{B}\mathbf{A}$ are both defined, they are usually different. For example, with
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
> **Example 8 (Dot product as matrix multiplication)** The dot product of two column vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$ can be written as a matrix product of the row vector ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ with the column vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{\beta}}\vphantom{\beta}}$:
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
> **Exercise 16 (Computing the product of a** $2 \times 3$ and a $3 \times 2$ matrix) The [product](#def-matrix-mult) of two [matrices](#def-matrix) is defined only when the first has as many [column](#def-matrix-column)s as the second has [row](#def-matrix-row)s. Each entry of the product combines one [row of the first factor](#def-matrix-row) with one [column of the second](#def-matrix-column). Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 0 & 2 \\ -1 & 3 & 1 \end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix} 2 & 1 \\ 0 & -1 \\ 1 & 4 \end{bmatrix}.$$
>
> Find $\mathbf{A}\mathbf{B}$.
>
> > **TIP:**
> >
> > $\mathbf{A}$ is $2 \times 3$, and $\mathbf{B}$ is $3 \times 2$. By [Definition 10](#def-matrix-mult), $\mathbf{A}\mathbf{B}$ is therefore $2 \times 2$. Its entry $c_{ij}$ is $a_{i1} b_{1j} + a_{i2} b_{2j} + a_{i3} b_{3j}$.

> **NOTE:**
>
> *Solution 16*. $\mathbf{A}$ has three [column](#def-matrix-column)s, and $\mathbf{B}$ has three [row](#def-matrix-row)s. So the [product](#def-matrix-mult) is defined and is $2 \times 2$. Its entries are
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B}
> &= \begin{bmatrix}
> 1 \cdot 2 + 0 \cdot 0 + 2 \cdot 1 & 1 \cdot 1 + 0 \cdot(-1) + 2 \cdot 4 \\
> (-1) \cdot 2 + 3 \cdot 0 + 1 \cdot 1 & (-1) \cdot 1 + 3 \cdot(-1) + 1 \cdot 4
> \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~10}}\text{)}
> \\
> &= \begin{bmatrix} 4 & 9 \\ -1 & 0 \end{bmatrix}.
> && \text{(multiply and add)}
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 7 (Matrix multiplication is associative)** For an $m \times k$ matrix $\mathbf{A}$, a $k \times l$ matrix $\mathbf{B}$, and an $l \times n$ matrix $\mathbf{C}$:
>
> $$\underbrace{(\mathbf{A}\mathbf{B})\mathbf{C}}_{m \times n}
> = \underbrace{\mathbf{A}(\mathbf{B}\mathbf{C})}_{m \times n}$$

> **NOTE:**
>
> *Proof*. Entry $(i, j)$ of each side, from [Definition 10](#def-matrix-mult):
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
> **Exercise 17 (Grouping a product of three matrices)** By [Theorem 7](#thm-matmul-assoc), a [product](#def-matrix-mult) of three [matrices](#def-matrix) can be grouped either way, so $\mathbf{A}\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ can be computed as $\mathbf{A}(\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$, without ever forming $\mathbf{A}\mathbf{B}$. Let
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
> > By [Definition 10](#def-matrix-mult), $\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a $2 \times 1$ [matrix](#def-matrix); multiply $\mathbf{A}$ by it.

> **NOTE:**
>
> *Solution 17*. First,
>
> $$\begin{aligned}
> \mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \begin{bmatrix} 2 \cdot 1 + 0 \cdot 2 \\ 1 \cdot 1 + 1 \cdot 2 \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~10}}\text{)}
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
> && \text{(}\href{#thm-matmul-assoc}{\text{Theorem~7}}\text{)}
> \\
> &= \begin{bmatrix} 1 \cdot 2 + 1 \cdot 3 \\ 0 \cdot 2 + 1 \cdot 3 \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~10}}\text{)}
> \\
> &= \begin{bmatrix} 5 \\ 3 \end{bmatrix}.
> && \text{(multiply and add)}
> \end{aligned}$$
>
> Grouping the other way gives the same answer: $\mathbf{A}\mathbf{B} = \begin{bmatrix} 3 & 1 \\ 1 & 1 \end{bmatrix}$, and $(\mathbf{A}\mathbf{B})\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \begin{bmatrix} 3 + 2 \\ 1 + 2 \end{bmatrix} = \begin{bmatrix} 5 \\ 3 \end{bmatrix}$.

> **NOTE:**
>
> **Theorem 8 (Matrix multiplication is distributive over addition)** Matrix multiplication [distributes](algebra-sums.llms.md#def-distributes-over) over addition from the left and from the right. For an $m \times k$ matrix $\mathbf{A}$ and $k \times n$ matrices $\mathbf{B}$ and $\mathbf{C}$:
>
> $$\mathbf{A}(\mathbf{B} + \mathbf{C}) = \mathbf{A}\mathbf{B} + \mathbf{A}\mathbf{C}$$
>
> For $m \times k$ matrices $\mathbf{A}$ and $\mathbf{B}$ and a $k \times n$ matrix $\mathbf{C}$:
>
> $$(\mathbf{A} + \mathbf{B})\mathbf{C} = \mathbf{A}\mathbf{C} + \mathbf{B}\mathbf{C}$$

> **NOTE:**
>
> **Exercise 18 (Proving that matrix multiplication distributes from the left)** [Theorem 8](#thm-matmul-distrib) lets a [product](#def-matrix-mult) with a [matrix sum](#def-matrix-addition) be expanded term by term, just as multiplication of numbers [distributes over](algebra-sums.llms.md#def-distributes-over) addition. Let $\mathbf{A}$ be an $m \times k$ [matrix](#def-matrix), and let $\mathbf{B}$ and $\mathbf{C}$ be $k \times n$ matrices.
>
> Prove that $\mathbf{A}(\mathbf{B} + \mathbf{C}) = \mathbf{A}\mathbf{B} + \mathbf{A}\mathbf{C}$.
>
> > **TIP:**
> >
> > Express the $(i, j)$ entry of the left side with [Definition 10](#def-matrix-mult) and [Definition 8](#def-matrix-addition), then split the result with [the rule for a sum of sums](algebra-sums.llms.md#thm-sum-of-sums).

> **NOTE:**
>
> *Solution 18*. Both sides are $m \times n$ [matrices](#def-matrix), so they are [equal](#def-matrix-equality) when their $(i, j)$ entries agree for every $i$ and $j$. For each $i$ and $j$,
>
> $$\begin{aligned}
> \mathopen{}\left[\mathbf{A}(\mathbf{B} + \mathbf{C})\right]\mathclose{}_{ij}
> &= \sum_{s=1}^{k} a_{is} (\mathbf{B} + \mathbf{C})_{sj}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~10}}\text{)}
> \\
> &= \sum_{s=1}^{k} a_{is} (b_{sj} + c_{sj})
> && \text{(}\href{#def-matrix-addition}{\text{Definition~8}}\text{)}
> \\
> &= \sum_{s=1}^{k} \mathopen{}\left(a_{is} b_{sj} + a_{is} c_{sj}\right)\mathclose{}
> && \text{(multiplication of numbers distributes over addition)}
> \\
> &= \sum_{s=1}^{k} a_{is} b_{sj} + \sum_{s=1}^{k} a_{is} c_{sj}
> && \text{(a sum of sums splits)}
> \\
> &= (\mathbf{A}\mathbf{B})_{ij} + (\mathbf{A}\mathbf{C})_{ij}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~10}}\text{)}
> \\
> &= (\mathbf{A}\mathbf{B} + \mathbf{A}\mathbf{C})_{ij}.
> && \text{(}\href{#def-matrix-addition}{\text{Definition~8}}\text{)}
> \end{aligned}$$
>
> The third step uses that multiplication of numbers [distributes over](algebra-sums.llms.md#def-distributes-over) addition, and the fourth uses [the rule for a sum of sums](algebra-sums.llms.md#thm-sum-of-sums). So $\mathbf{A}(\mathbf{B} + \mathbf{C}) = \mathbf{A}\mathbf{B} + \mathbf{A}\mathbf{C}$.

> **NOTE:**
>
> **Theorem 9 (Product of two sums of matrices)** For $m \times k$ matrices $\mathbf{A}$ and $\mathbf{B}$ and $k \times n$ matrices $\mathbf{C}$ and $\mathbf{D}$,
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
> && \text{(}\href{#thm-matmul-distrib}{\text{Theorem~8}}\text{, from the left)}
> \\ &= \mathbf{A}\mathbf{C} + \mathbf{B}\mathbf{C} + \mathbf{A}\mathbf{D} + \mathbf{B}\mathbf{D}
> && \text{(}\href{#thm-matmul-distrib}{\text{Theorem~8}}\text{, from the right, twice)}
> \\ &= \mathbf{A}\mathbf{C} + \mathbf{A}\mathbf{D} + \mathbf{B}\mathbf{C} + \mathbf{B}\mathbf{D}
> && \text{(matrix addition is commutative)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 9 (Why the middle terms do not combine)** Take $\mathbf{A} = \mathbf{C} = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}$ and $\mathbf{B} = \mathbf{D} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \end{bmatrix}$. Then $\mathbf{A} + \mathbf{B} = \begin{bmatrix} 2 & 1 \\ 1 & 2 \end{bmatrix}$, so
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
> Here $\mathbf{A}\mathbf{B} \neq \mathbf{B}\mathbf{A}$, so the middle terms do not combine into $2\mathbf{A}\mathbf{B}$. The squared norm of a sum of vectors, $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\right\rVert\mathclose{}^2$, is a case where they do combine ([Theorem 2 in Inner Products and Orthogonality](linear-algebra-inner-products.llms.md#thm-norm-sum-square)), because $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. Matrices that commute, such as $\mathbf{A}$ and $\mathbf{A}^2$, combine the same way.

> **NOTE:**
>
> **Exercise 19 (Comparing** $(\mathbf{A} + \mathbf{B})(\mathbf{A} + \mathbf{B})$ with the rule for numbers) For numbers, $(a + b)^2 = a^2 + 2ab + b^2$. [Theorem 9](#thm-matmul-product-of-sums) expands a [product](#def-matrix-mult) of two [matrix sums](#def-matrix-addition) into four terms instead, because $\mathbf{A}\mathbf{B}$ and $\mathbf{B}\mathbf{A}$ can differ. Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix}.$$
>
> Is $(\mathbf{A} + \mathbf{B})(\mathbf{A} + \mathbf{B})$ [equal](#def-matrix-equality) to $\mathbf{A}\mathbf{A} + 2\mathbf{A}\mathbf{B} + \mathbf{B}\mathbf{B}$?
>
> > **TIP:**
> >
> > Compute $\mathbf{A} + \mathbf{B}$ and its [product](#def-matrix-mult) with itself, then compute $\mathbf{A}\mathbf{A}$, $\mathbf{A}\mathbf{B}$ and $\mathbf{B}\mathbf{B}$ with [Definition 10](#def-matrix-mult).

> **NOTE:**
>
> *Solution 19*. No. On the left, $\mathbf{A} + \mathbf{B} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}$, so
>
> $$\begin{aligned}
> (\mathbf{A} + \mathbf{B})(\mathbf{A} + \mathbf{B})
> &= \begin{bmatrix} 1 \cdot 1 + 1 \cdot 0 & 1 \cdot 1 + 1 \cdot 0 \\ 0 \cdot 1 + 0 \cdot 0 & 0 \cdot 1 + 0 \cdot 0 \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~10}}\text{)}
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
> The entries in position $(1, 2)$ differ, $1 \ne 2$, so the two [matrices](#def-matrix) are not [equal](#def-matrix-equality). The rule for numbers fails because $\mathbf{B}\mathbf{A} = \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix}$ differs from $\mathbf{A}\mathbf{B}$: [Theorem 9](#thm-matmul-product-of-sums) gives $\mathbf{A}\mathbf{A} + \mathbf{A}\mathbf{B} + \mathbf{B}\mathbf{A} + \mathbf{B}\mathbf{B} = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}$, which does match the left side.

> **NOTE:**
>
> **Exercise 20 (Which of these products are defined?)** Let $\mathbf{A}$ be $4 \times 3$, let $\mathbf{B}$ be $3 \times 2$, and let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^3$. For each expression, say whether it is defined, and if so give the shape of the result:
>
> 1.  $\mathbf{A}\mathbf{B}$
> 2.  $\mathbf{B}\mathbf{A}$
> 3.  $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$
> 4.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$
> 5.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{\top}$

> **NOTE:**
>
> *Solution 20*. A vector in $\mathbb{R}^3$ is a $3 \times 1$ matrix, so the same rule settles every case.
>
> 1.  $\mathbf{A}\mathbf{B}$: $(4 \times 3)(3 \times 2)$. The inner pair is $3$ and $3$, so it is defined, and the result is $4 \times 2$.
> 2.  $\mathbf{B}\mathbf{A}$: $(3 \times 2)(4 \times 3)$. The inner pair is $2$ and $4$, which do not match, so it is **not defined**. Matrix multiplication is not commutative, and this is the blunt form of that: swapping the order can leave an expression that means nothing.
> 3.  $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$: $(4 \times 3)(3 \times 1)$, defined, result $4 \times 1$ — a vector in $\mathbb{R}^4$.
> 4.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$: $(1 \times 3)(3 \times 1)$, defined, result $1 \times 1$ — a single number. The product is the inner product of [Equation 1 in Vectors](linear-algebra-vectors.llms.md#eq-inner-product).
> 5.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}^{\top}$: $(3 \times 1)(1 \times 3)$, defined, result $3 \times 3$ — a matrix.
>
> The last two use the same two vectors and differ only in order, and they return objects of different kinds. Reading a transpose as decoration rather than as a shape change is the commonest way to lose track of an expression.

# 5 Square and identity matrices

> **NOTE:**
>
> **Definition 11 (Square matrix)** A matrix is **square** [\[8\]](#ref-wikipedia_square_matrix) if it has the same number of rows as columns.

> **NOTE:**
>
> **Example 10 (Square and not square)** $\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$ is square ($2$ rows, $2$ columns); $\begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}$ is not ($2$ rows, $3$ columns).

> **NOTE:**
>
> **Exercise 21 (Whether a data matrix times its transpose is square)** Many statistical methods start from an $n \times p$ data [matrix](#def-matrix) $\mathbf{X}$, with one [row](#def-matrix-row) per observation, and form the [product](#def-matrix-mult) ${\mathbf{X}}^{\top}\mathbf{X}$ of its [transpose](#def-matrix-transpose) with itself. Whether that product is [square](#def-square-matrix) matters, because some operations, such as taking the [inverse of a matrix](linear-algebra-special-matrices.llms.md#def-matrix-inverse), apply only to [square matrices](#def-square-matrix).
>
> Is ${\mathbf{X}}^{\top}\mathbf{X}$ square?
>
> > **TIP:**
> >
> > Find the shape of ${\mathbf{X}}^{\top}$ from [Definition 6](#def-matrix-transpose), then the shape of the [product](#def-matrix-mult) from [Definition 10](#def-matrix-mult).

> **NOTE:**
>
> *Solution 21*. Yes. The [transpose](#def-matrix-transpose) ${\mathbf{X}}^{\top}$ is $p \times n$, so ${\mathbf{X}}^{\top}$ has $n$ [column](#def-matrix-column)s. $\mathbf{X}$ has $n$ [row](#def-matrix-row)s, so the [product](#def-matrix-mult) ${\mathbf{X}}^{\top}\mathbf{X}$ is defined and is $p \times p$. It has $p$ rows and $p$ columns, so it is [square](#def-square-matrix) for every $n$ and $p$.

> **NOTE:**
>
> **Definition 12 (Main diagonal)** The **main diagonal** [\[9\]](#ref-wikipedia_main_diagonal) of an $m \times n$ matrix $\mathbf{A}$ is the list of its entries $a_{11}, a_{22}, \ldots, a_{kk}$, where $k$ is the smaller of $m$ and $n$.

> **NOTE:**
>
> **Definition 13 (Diagonal entry)** The entries on the main diagonal ([Definition 12](#def-main-diagonal)) of a matrix $\mathbf{A}$ are the **diagonal entries** of $\mathbf{A}$.

> **NOTE:**
>
> **Definition 14 (Off-diagonal entry)** In an $m \times n$ matrix $\mathbf{A}$ with main diagonal ([Definition 12](#def-main-diagonal)), every entry $a_{ij}$ with $i \ne j$ is an **off-diagonal entry**.

> **NOTE:**
>
> **Example 11 (Diagonal entries of a square and a non-square matrix)**  
>
> - For $\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$, the diagonal entries are $a_{11} = 1$ and $a_{22} = 4$, and the off-diagonal entries are $a_{12} = 2$ and $a_{21} = 3$.
> - For $\mathbf{B} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}$, $m = 2$ and $n = 3$, so $k = 2$, and the diagonal entries are $b_{11} = 1$ and $b_{22} = 5$; the other four entries, $2$, $3$, $4$ and $6$, are off-diagonal.

> **NOTE:**
>
> **Exercise 22 (The main diagonal of a tall matrix)** The [main diagonal](#def-main-diagonal) of a [matrix](#def-matrix) that is not [square](#def-square-matrix) stops when it runs out of [row](#def-matrix-row)s or [column](#def-matrix-column)s, whichever comes first. A tall matrix, with more rows than columns, runs out of columns first. Let
>
> $$\mathbf{E} = \begin{bmatrix} 7 & -2 \\ 1 & 3 \\ 0 & 5 \\ 4 & -6 \end{bmatrix}.$$
>
> Find the main diagonal of $\mathbf{E}$.
>
> > **TIP:**
> >
> > Find $m$, $n$ and $k$ in [Definition 12](#def-main-diagonal).

> **NOTE:**
>
> *Solution 22*. Write $e_{ij}$ for the entry of $\mathbf{E}$ in [row](#def-matrix-row) $i$ and [column](#def-matrix-column) $j$. $\mathbf{E}$ is $4 \times 2$, so $m = 4$, $n = 2$ and $k = 2$. The [main diagonal](#def-main-diagonal) of $\mathbf{E}$ is therefore the list $e_{11}, e_{22}$, that is, $7, 3$. The list stops at $e_{22}$ because $\mathbf{E}$ has no third [column](#def-matrix-column). It therefore has no entry $e_{33}$.

> **NOTE:**
>
> **Exercise 23 (Adding the diagonal entries of a square matrix)** The [sum](algebra-sums.llms.md#def-summation) of the [diagonal entries](#def-diagonal-entry) of a [square matrix](#def-square-matrix) summarizes that [matrix](#def-matrix) in one number, called its [trace](linear-algebra-special-matrices.llms.md#def-trace). Let
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
> *Solution 23*. Write $f_{ij}$ for the entry of $\mathbf{F}$ in [row](#def-matrix-row) $i$ and [column](#def-matrix-column) $j$. $\mathbf{F}$ is $3 \times 3$, so its [diagonal entries](#def-diagonal-entry) are $f_{11} = 2$, $f_{22} = -3$ and $f_{33} = 6$, and adding them gives
>
> $$f_{11} + f_{22} + f_{33} = 2 + (-3) + 6 = 5.$$

> **NOTE:**
>
> **Exercise 24 (Counting the off-diagonal entries of a square matrix)** In a table of pairwise comparisons among several items, the [off-diagonal entries](#def-off-diagonal-entry) are the comparisons between two different items, so counting them counts the ordered pairs of different items. Let $\mathbf{A}$ be a $5 \times 5$ [matrix](#def-matrix), so $\mathbf{A}$ is [square](#def-square-matrix).
>
> How many off-diagonal entries does $\mathbf{A}$ have?
>
> > **TIP:**
> >
> > Count all the entries, then subtract the [diagonal entries](#def-diagonal-entry).

> **NOTE:**
>
> *Solution 24*. $\mathbf{A}$ has $5 \cdot 5 = 25$ entries. Its [diagonal entries](#def-diagonal-entry) are the $5$ entries $a_{ii}$, $i = 1, \ldots, 5$, and every other entry has $i \ne j$, so $\mathbf{A}$ has $25 - 5 = 20$ [off-diagonal entries](#def-off-diagonal-entry).

> **NOTE:**
>
> **Definition 15 (Identity matrix)** The $p \times p$ **identity matrix** [\[10\]](#ref-wikipedia_identity_matrix) $\mathbf{I}_p$ (or $\mathbf{I}$ when the size is clear from context) has ones on the [main diagonal](#def-main-diagonal) and zeros elsewhere:
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
> **Example 12 (The** $3 \times 3$ identity) $$\mathbf{I}_3 = \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix},$$
>
> so, for instance, $(\mathbf{I}_3)_{22} = 1$ and $(\mathbf{I}_3)_{23} = 0$.

> **NOTE:**
>
> **Exercise 25 (Whether a matrix with the identity pattern is an identity matrix)** An [identity matrix](#def-identity-matrix) has ones on its [main diagonal](#def-main-diagonal) and zeros elsewhere. The [matrix](#def-matrix) below has the same pattern of ones and zeros. Let
>
> $$\mathbf{J} = \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \end{bmatrix}.$$
>
> Is $\mathbf{J}$ an identity matrix?
>
> > **TIP:**
> >
> > Compare the shape of $\mathbf{J}$ with the shape of $\mathbf{I}_p$ in [Definition 15](#def-identity-matrix).

> **NOTE:**
>
> *Solution 25*. No. Every [identity matrix](#def-identity-matrix) $\mathbf{I}_p$ is $p \times p$, so it is [square](#def-square-matrix). $\mathbf{J}$ is $2 \times 3$, so it is not square. Therefore $\mathbf{J}$ is not an identity matrix, even though its [main diagonal](#def-main-diagonal) holds ones and its other entries are zeros.

> **NOTE:**
>
> *Remark 3* (The identity matrix and the Kronecker delta). The entries of the identity matrix are given by the [Kronecker delta](indicator-functions.llms.md#def-kronecker-delta): $(\mathbf{I}_p)_{ij} = \delta_{ij}$.

> **NOTE:**
>
> **Theorem 10 (Identity matrix is a multiplicative identity)** For any $m \times p$ matrix $\mathbf{A}$:
>
> $$\mathbf{A}\,\mathbf{I}_p = \mathbf{A}$$
>
> $$\mathbf{I}_m\,\mathbf{A} = \mathbf{A}$$

> **NOTE:**
>
> **Exercise 26 (Multiplying by an identity matrix)** [Theorem 10](#thm-identity) says that an [identity matrix](#def-identity-matrix) of the right size leaves a [matrix](#def-matrix) unchanged under [matrix multiplication](#def-matrix-mult), just as multiplying a number by $1$ leaves it unchanged. Let
>
> $$\mathbf{A} = \begin{bmatrix} 2 & 0 & -1 \\ 5 & 3 & 4 \end{bmatrix}.$$
>
> Compute $\mathbf{I}_2 \mathbf{A}$ entry by entry, from the definition of matrix multiplication.
>
> > **TIP:**
> >
> > Entry $(i, j)$ of $\mathbf{I}_2 \mathbf{A}$ is the [dot product](linear-algebra-vectors.llms.md#def-dot-product) of the $i$th [row of](#def-matrix-row) $\mathbf{I}_2$ with the $j$th [column of](#def-matrix-column) $\mathbf{A}$, as in [Example 8](#exm-dot-product-matmul).

> **NOTE:**
>
> *Solution 26*. $\mathbf{I}_2$ is $2 \times 2$ and $\mathbf{A}$ is $2 \times 3$, so the [product](#def-matrix-mult) is defined and is $2 \times 3$. The first [row of](#def-matrix-row) $\mathbf{I}_2$ is $\begin{bmatrix} 1 & 0 \end{bmatrix}$ and the second is $\begin{bmatrix} 0 & 1 \end{bmatrix}$, so by [Definition 10](#def-matrix-mult)
>
> $$\begin{aligned}
> \mathbf{I}_2 \mathbf{A}
> &= \begin{bmatrix}
> 1 \cdot 2 + 0 \cdot 5 & 1 \cdot 0 + 0 \cdot 3 & 1 \cdot(-1) + 0 \cdot 4 \\
> 0 \cdot 2 + 1 \cdot 5 & 0 \cdot 0 + 1 \cdot 3 & 0 \cdot(-1) + 1 \cdot 4
> \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~10}}\text{)}
> \\
> &= \begin{bmatrix} 2 & 0 & -1 \\ 5 & 3 & 4 \end{bmatrix}
> && \text{(multiply and add)}
> \\
> &= \mathbf{A}.
> \end{aligned}$$
>
> Each row of $\mathbf{I}_2$ has a single $1$, so entry $(i, j)$ of the product picks out entry $(i, j)$ of $\mathbf{A}$, as [Theorem 10](#thm-identity) says.

# 6 Matrix-vector multiplication

> **NOTE:**
>
> **Definition 16 (Matrix-vector multiplication)** The **matrix-vector product** of an $m \times p$ matrix $\mathbf{A}$ and a $p \times 1$ column vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is the $m \times 1$ column vector $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with entries:
>
> $$(\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_i = \sum_{j=1}^pa_{ij}\, x_j$$

> **NOTE:**
>
> *Remark 4* (Each entry is a dot product). Matrix-vector multiplication extends the dot product ([Definition 8 in Vectors](linear-algebra-vectors.llms.md#def-dot-product)): entry $i$ of $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is the dot product of row $i$ of $\mathbf{A}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. For example,
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
> **Exercise 27 (A matrix-vector product with more columns than rows)** A [matrix-vector product](#def-matvec-mult) $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ computes one [weighted sum](linear-algebra-vectors.llms.md#def-weighted-sum) of the entries of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for each [row of](#def-matrix-row) $\mathbf{A}$, so one multiplication computes several weighted sums at once. The [matrix](#def-matrix) $\mathbf{A}$ below has more [column](#def-matrix-column)s than [row](#def-matrix-row)s, so $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is shorter than $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. Let
>
> $$\mathbf{A} = \begin{bmatrix} 2 & 0 & -1 \\ 5 & 3 & 4 \end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}.$$
>
> Compute $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$.
>
> > **TIP:**
> >
> > Entry $i$ of $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is the [dot product](linear-algebra-vectors.llms.md#def-dot-product) of the $i$th [row of](#def-matrix-row) $\mathbf{A}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, as in [Remark 4](#rem-matvec-row-dot-products).

> **NOTE:**
>
> *Solution 27*. $\mathbf{A}$ is $2 \times 3$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is $3 \times 1$, so the [matrix-vector product](#def-matvec-mult) is defined and is $2 \times 1$:
>
> $$\begin{aligned}
> \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \begin{bmatrix}
> 2 \cdot 1 + 0 \cdot 2 + (-1) \cdot 3 \\
> 5 \cdot 1 + 3 \cdot 2 + 4 \cdot 3
> \end{bmatrix}
> && \text{(}\href{#def-matvec-mult}{\text{Definition~16}}\text{)}
> \\
> &= \begin{bmatrix} 2 + 0 - 3 \\ 5 + 6 + 12 \end{bmatrix}
> && \text{(multiply)}
> \\
> &= \begin{bmatrix} -1 \\ 23 \end{bmatrix}.
> && \text{(add)}
> \end{aligned}$$

> **NOTE:**
>
> **Definition 17 (Linear system, system of linear equations)** A **linear system** [\[11\]](#ref-wikipedia_system_of_linear_equations) (or **system of linear equations**) with $m$ equations in $n$ unknowns is an equation $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ in which the $m \times n$ matrix $\mathbf{A}$ and the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$ are given. A **solution** of the system is a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^n$ for which $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ holds.

> **NOTE:**
>
> **Example 13 (Two equations in two unknowns)** By [Definition 16](#def-matvec-mult), row $i$ of $\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is the equation $a_{i1} x_1 + \cdots + a_{in} x_n = b_i$. So the two equations $x_1 + 2 x_2 = 5$ and $3 x_1 + 4 x_2 = 6$ form the linear system $\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \begin{bmatrix} 5 \\ 6 \end{bmatrix}$. The vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (-4, 4.5)$ is a solution:
>
> $$\begin{aligned}
> \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}
> \begin{bmatrix} -4 \\ 4.5 \end{bmatrix}
> &= \begin{bmatrix} 1 \cdot(-4) + 2 \cdot 4.5 \\ 3 \cdot(-4) + 4 \cdot 4.5 \end{bmatrix}
> && \text{(}\href{#def-matvec-mult}{\text{Definition~16}}\text{)}
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
> **Exercise 28 (Checking whether a vector solves a linear system)** Checking whether a vector solves a [linear system](#def-linear-system) takes only one [matrix-vector product](#def-matvec-mult), which is much less work than solving the system. Let
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
> > Compute $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with [Definition 16](#def-matvec-mult). Then compare it with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, as in [Example 13](#exm-linear-system).

> **NOTE:**
>
> *Solution 28*. Yes. The [matrix-vector product](#def-matvec-mult) is
>
> $$\begin{aligned}
> \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> &= \begin{bmatrix} 3 \cdot 2 + 1 \cdot(-1) \\ 1 \cdot 2 + (-2) \cdot(-1) \end{bmatrix}
> && \text{(}\href{#def-matvec-mult}{\text{Definition~16}}\text{)}
> \\
> &= \begin{bmatrix} 5 \\ 4 \end{bmatrix},
> && \text{(multiply and add)}
> \end{aligned}$$
>
> which matches $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ entry by entry, so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a [solution of the system](#def-linear-system).

# 7 Linear and affine maps

> **NOTE:**
>
> **Definition 18 (Additive function)** A [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f: \mathbb{R}^p \to \mathbb{R}^m$ is **additive** [\[12\]](#ref-wikipedia_linear_map) if it preserves [vector addition](linear-algebra-vectors.llms.md#def-vector-addition): [for all](https://morrison-lab.github.io/mcs/proof-writing.html#def-universal-quantifier) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^p$,
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) + f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})$$

> **NOTE:**
>
> **Example 14 (An additive function, and one that is not)**  
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
> **Exercise 29 (Testing whether** $x_1 x_2$ is additive) An [additive function](#def-additive-function) can be evaluated at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ by evaluating it at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}$ separately, so additivity is worth checking before splitting a computation that way. Let $f: \mathbb{R}^2 \to \mathbb{R}$ be $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1 x_2$.
>
> Is $f$ [additive](#def-additive-function)?
>
> > **TIP:**
> >
> > Try $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 0)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (0, 1)$ in [Definition 18](#def-additive-function).

> **NOTE:**
>
> *Solution 29*. No. For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= (1, 0)$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (0, 1)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}= (1, 1)$, so
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) = 1 \cdot 1 = 1,
> \qquad
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) + f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) = 1 \cdot 0 + 0 \cdot 1 = 0.$$
>
> These differ, so $f$ does not satisfy [Definition 18](#def-additive-function) for this pair of inputs, and $f$ is not [additive](#def-additive-function).

> **NOTE:**
>
> **Definition 19 (Homogeneous function)** A [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f: \mathbb{R}^p \to \mathbb{R}^m$ is **homogeneous** [\[12\]](#ref-wikipedia_linear_map) if it preserves [scalar multiplication](#def-scalar-mult): [for all](https://morrison-lab.github.io/mcs/proof-writing.html#def-universal-quantifier) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$ and $c \in \mathbb{R}$,
>
> $$f(c\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = c f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$$

> **NOTE:**
>
> **Example 15 (Homogeneous functions, and one that is not)**  
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
> **Exercise 30 (Testing whether the absolute value is homogeneous)** A [homogeneous function](#def-homogeneous-function) turns a rescaled input into the same rescaling of its output, including a rescaling by a negative number. Let $f: \mathbb{R}\to \mathbb{R}$ be the [absolute value](algebra-basics.llms.md#def-absolute-value), $f(x) = \mathopen{}\left|x\right|\mathclose{}$.
>
> Is $f$ [homogeneous](#def-homogeneous-function)?
>
> > **TIP:**
> >
> > Try a negative $c$ in [Definition 19](#def-homogeneous-function).

> **NOTE:**
>
> *Solution 30*. No. Take $c = -1$ and $x = 1$. Then
>
> $$f(c x) = \mathopen{}\left|-1\right|\mathclose{} = 1,
> \qquad
> c f(x) = -1 \cdot\mathopen{}\left|1\right|\mathclose{} = -1.$$
>
> These differ, so $f$ is not [homogeneous](#def-homogeneous-function). It does satisfy $f(c x) = c f(x)$ for every $c \ge 0$, since then $\mathopen{}\left|c x\right|\mathclose{} = c \mathopen{}\left|x\right|\mathclose{}$.

> **NOTE:**
>
> **Definition 20 (Linear map, linear transformation, linear function)** A [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f: \mathbb{R}^p \to \mathbb{R}^m$ is a **linear map** [\[12\]](#ref-wikipedia_linear_map) (also called a **linear transformation** or **linear function**) if it is both [additive](#def-additive-function) and [homogeneous](#def-homogeneous-function).

> **NOTE:**
>
> **Example 16 (A linear map, and two functions that are not)**  
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
> **Exercise 31 (Testing whether a difference of scaled measurements is a linear map)** A score that scales two measurements and takes their difference, such as $3 x_1 - x_2$, is a common building block of a model. Let $f: \mathbb{R}^2 \to \mathbb{R}$ be $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 3 x_1 - x_2$.
>
> Is $f$ a [linear map](#def-linear-map)?
>
> > **TIP:**
> >
> > Check the two conditions in [Definition 20](#def-linear-map) one at a time, for any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^2$ and $c \in \mathbb{R}$.

> **NOTE:**
>
> *Solution 31*. Yes. For any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}\in \mathbb{R}^2$, $f$ is [additive](#def-additive-function):
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})
> &= 3 (x_1 + y_1) - (x_2 + y_2)
> && \text{(}\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~7 in Vectors}}\text{)}
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
> && \text{(}\href{#def-scalar-mult}{\text{Definition~9}}\text{)}
> \\&= c (3 x_1 - x_2)
> && \text{(factoring out } c \text{)}
> \\&= c f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}).
> \end{aligned}$$
>
> Since $f$ is both, it is a [linear map](#def-linear-map).

> **NOTE:**
>
> **Definition 21 (Linear operator)** A **linear operator** on $\mathbb{R}^p$ is a linear map ([Definition 20](#def-linear-map)) from $\mathbb{R}^p$ to itself, that is, a linear map $f : \mathbb{R}^p \to \mathbb{R}^p$ whose input and output have the same length. Some authors use “operator” more loosely, for any linear map.

> **NOTE:**
>
> **Example 17 (A linear operator, and a linear map that is not one)** The map $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (2 x_1,\ x_1 + x_2)$ from [Example 16](#exm-linear-map) sends $\mathbb{R}^2$ to $\mathbb{R}^2$, so it is a linear operator on $\mathbb{R}^2$. The linear map $g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1 + x_2$ sends $\mathbb{R}^2$ to $\mathbb{R}$, so it is linear but not an operator: its outputs have length $1$, not $2$.

> **NOTE:**
>
> **Exercise 32 (Testing whether a projection is a linear operator)** Dropping the last coordinate of a point in $\mathbb{R}^3$ projects it onto a plane, as a shadow does. Let $f: \mathbb{R}^3 \to \mathbb{R}^2$ be $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (x_1, x_2)$. This $f$ is a [linear map](#def-linear-map).
>
> Is $f$ a [linear operator](#def-linear-operator) on $\mathbb{R}^3$?
>
> > **TIP:**
> >
> > Write $f$ as $f: \mathbb{R}^p \to \mathbb{R}^m$, and compare $p$ with $m$ as in [Definition 21](#def-linear-operator).

> **NOTE:**
>
> *Solution 32*. No. A [linear operator](#def-linear-operator) on $\mathbb{R}^3$ sends $\mathbb{R}^3$ to $\mathbb{R}^3$. The outputs of $f$ lie in $\mathbb{R}^2$, not $\mathbb{R}^3$, so $f$ is a [linear map](#def-linear-map) but not a linear operator.

> **NOTE:**
>
> **Theorem 11 (A linear map sends zero to zero)** If $f: \mathbb{R}^p \to \mathbb{R}^m$ is a linear map ([Definition 20](#def-linear-map)), then $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> *Proof*. On the left, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ is the zero vector of length $p$; on the right, it is the zero vector of length $m$.
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})
> &= f(0 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})
> && \text{(every entry of } 0 \cdot\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{ is } 0 \cdot 0 = 0 \text{; }\href{#def-scalar-mult}{\text{Definition~9}}\text{)}
> \\&= 0 \cdot f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})
> && \text{(homogeneity, with } c = 0 \text{ and } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{)}
> \\&= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}
> && \text{(every entry of } 0 \cdot f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) \text{ is } 0 \text{; }\href{#def-scalar-mult}{\text{Definition~9}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 18 (Ruling out linearity at zero)** In [Example 16](#exm-linear-map), $g(x) = x + 1$ has $g(0) = 1 \neq 0$, so by [Theorem 11](#thm-linear-map-zero) it is not linear, without checking additivity or homogeneity.
>
> Sending $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ is necessary but not sufficient: $h(x) = x^2$ in the same example has $h(0) = 0$ and is still not linear.

> **NOTE:**
>
> **Exercise 33 (Ruling out a linear map from its value at zero)** [Theorem 11](#thm-linear-map-zero) gives a quick test: a [function](https://morrison-lab.github.io/mcs/functions.html#def-function) that does not send $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ cannot be a [linear map](#def-linear-map). Let $g: \mathbb{R}^2 \to \mathbb{R}^2$ be
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
> *Solution 33*. No.
>
> $$g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = (0 + 0,\ 0 - 1) = (0, -1) \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}.$$
>
> Every [linear map](#def-linear-map) sends $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ to $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ by [Theorem 11](#thm-linear-map-zero), so $g$ is not one.

> **NOTE:**
>
> **Theorem 12 (Multiplying by a matrix is a linear map)** For any $m \times p$ matrix $\mathbf{A}$, the function $f: \mathbb{R}^p \to \mathbb{R}^m$ defined by $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is a linear map ([Definition 20](#def-linear-map)).

> **NOTE:**
>
> *Proof*. Both conditions are checked one entry at a time. For each $i \in \{1, \ldots, m\}$, additivity:
>
> $$\begin{aligned}
> \mathopen{}\left(\mathbf{A}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})\right)\mathclose{}_i
> &= \sum_{j=1}^pa_{ij} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})_j
> && \text{(}\href{#def-matvec-mult}{\text{Definition~16}}\text{)}
> \\&= \sum_{j=1}^pa_{ij} (x_j + y_j)
> && \text{(}\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~7 in Vectors}}\text{)}
> \\&= \sum_{j=1}^p(a_{ij} x_j + a_{ij} y_j)
> && \text{(multiplication distributes over addition)}
> \\&= \sum_{j=1}^pa_{ij} x_j + \sum_{j=1}^pa_{ij} y_j
> && \text{(a sum of sums splits)}
> \\&= (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_i + (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})_i
> && \text{(}\href{#def-matvec-mult}{\text{Definition~16}}\text{)}
> \\&= (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})_i
> && \text{(}\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~7 in Vectors}}\text{)}
> \end{aligned}$$
>
> and homogeneity:
>
> $$\begin{aligned}
> \mathopen{}\left(\mathbf{A}(c\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})\right)\mathclose{}_i
> &= \sum_{j=1}^pa_{ij} (c\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_j
> && \text{(}\href{#def-matvec-mult}{\text{Definition~16}}\text{)}
> \\&= \sum_{j=1}^pa_{ij}\, c\, x_j
> && \text{(}\href{#def-scalar-mult}{\text{Definition~9}}\text{)}
> \\&= \sum_{j=1}^pc\, a_{ij} x_j
> && \text{(products are symmetric)}
> \\&= c \sum_{j=1}^pa_{ij} x_j
> && \text{(a constant factor comes out of a sum)}
> \\&= c\, (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_i
> && \text{(}\href{#def-matvec-mult}{\text{Definition~16}}\text{)}
> \\&= (c\, \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_i
> && \text{(}\href{#def-scalar-mult}{\text{Definition~9}}\text{)}
> \end{aligned}$$
>
> The four algebra rules cited here are on the [algebra page](algebra.llms.md): [distributivity](algebra-sums.llms.md#thm-mult-distr), [a sum of sums](algebra-sums.llms.md#thm-sum-of-sums), [symmetry of products](algebra-sums.llms.md#thm-prod-symmetric), and [a constant factor](algebra-sums.llms.md#thm-sum-constant-factor).

> **NOTE:**
>
> **Exercise 34 (Recognizing a linear map as multiplication by a matrix)** [Theorem 12](#thm-matrix-map-linear) saves checking additivity and homogeneity by hand: a [function](https://morrison-lab.github.io/mcs/functions.html#def-function) that multiplies its input by a fixed [matrix](#def-matrix) is a [linear map](#def-linear-map). Let $f: \mathbb{R}^2 \to \mathbb{R}^2$ be
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (x_1 + 2 x_2,\ 3 x_1 - x_2).$$
>
> Is $f$ a [linear map](#def-linear-map)?
>
> > **TIP:**
> >
> > Find a $2 \times 2$ [matrix](#def-matrix) $\mathbf{A}$ with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, using [Definition 16](#def-matvec-mult).

> **NOTE:**
>
> *Solution 34*. Yes. Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 3 & -1 \end{bmatrix}.$$
>
> By [Definition 16](#def-matvec-mult),
>
> $$\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \begin{bmatrix} 1 \cdot x_1 + 2 \cdot x_2 \\ 3 \cdot x_1 + (-1) \cdot x_2 \end{bmatrix}
> = \begin{bmatrix} x_1 + 2 x_2 \\ 3 x_1 - x_2 \end{bmatrix}
> = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}).$$
>
> So $f$ multiplies its input by $\mathbf{A}$, and $f$ is a [linear map](#def-linear-map) by [Theorem 12](#thm-matrix-map-linear).

> **NOTE:**
>
> **Theorem 13 (A linear map preserves linear combinations)** If $f: \mathbb{R}^p \to \mathbb{R}^m$ is a linear map ([Definition 20](#def-linear-map)), then for any vectors $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1, \ldots, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_k \in \mathbb{R}^p$ and any coefficients $c_1, \ldots, c_k \in \mathbb{R}$:
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
> **Exercise 35 (Evaluating a linear map on a linear combination)** A [linear map](#def-linear-map) is determined on a [linear combination](linear-algebra-vectors.llms.md#def-linear-combination) of vectors by its values on those vectors alone. Let $f: \mathbb{R}^2 \to \mathbb{R}^2$ be a linear map with
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1) = \begin{bmatrix} 1 \\ 2 \end{bmatrix},
> \qquad
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2) = \begin{bmatrix} 0 \\ -1 \end{bmatrix}.$$
>
> Find $f(3 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 - 2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2)$.
>
> > **TIP:**
> >
> > Apply [Theorem 13](#thm-linear-map-lincom) with $c_1 = 3$ and $c_2 = -2$.

> **NOTE:**
>
> *Solution 35*. $$\begin{aligned}
> f(3 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1 - 2 \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2)
> &= 3 f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_1) - 2 f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}_2)
> && \text{(}\href{#thm-linear-map-lincom}{\text{Theorem~13}}\text{)}
> \\&= 3 \begin{bmatrix} 1 \\ 2 \end{bmatrix} - 2 \begin{bmatrix} 0 \\ -1 \end{bmatrix}
> && \text{(the given values)}
> \\&= \begin{bmatrix} 3 \\ 6 \end{bmatrix} - \begin{bmatrix} 0 \\ -2 \end{bmatrix}
> && \text{(}\href{#def-scalar-mult}{\text{Definition~9}}\text{)}
> \\&= \begin{bmatrix} 3 \\ 8 \end{bmatrix}
> && \text{(subtracting entry by entry)}
> \end{aligned}$$

> **NOTE:**
>
> **Theorem 14 (Every linear map is multiplication by a matrix)** If $f: \mathbb{R}^p \to \mathbb{R}^m$ is a linear map ([Definition 20](#def-linear-map)), then there is exactly one $m \times p$ matrix $\mathbf{A}$ such that
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\quad \text{for all } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$$
>
> Column $j$ of $\mathbf{A}$ is $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$, the value of $f$ at the $j$th indicator vector ([Definition 18 in Vectors](linear-algebra-vectors.llms.md#def-indicator-vector)); that is, $a_{ij} = \mathopen{}\left(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)\right)\mathclose{}_i$.

> **NOTE:**
>
> *Proof*. **Existence.** Let $\mathbf{A}$ be the $m \times p$ matrix with $a_{ij} = \mathopen{}\left(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)\right)\mathclose{}_i$. For any $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$,
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> &= f\mathopen{}\left(\sum_{j=1}^px_j \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j\right)\mathclose{}
> && \text{(}\href{linear-algebra-vectors.qmd#thm-standard-basis-expansion}{\text{Theorem~4 in Vectors}}\text{)}
> \\&= \sum_{j=1}^px_j f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)
> && \text{(}\href{#thm-linear-map-lincom}{\text{Theorem~13}}\text{)}
> \end{aligned}$$
>
> and entry $i$ of that sum is
>
> $$\begin{aligned}
> \mathopen{}\left(\sum_{j=1}^px_j f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)\right)\mathclose{}_i
> &= \sum_{j=1}^px_j \mathopen{}\left(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)\right)\mathclose{}_i
> && \text{(}\href{linear-algebra-vectors.qmd#def-linear-combination}{\text{Definition~9 in Vectors}}\text{, entry by entry)}
> \\&= \sum_{j=1}^px_j a_{ij}
> && \text{(definition of } \mathbf{A} \text{)}
> \\&= \sum_{j=1}^pa_{ij} x_j
> && \text{(products are symmetric)}
> \\&= (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})_i
> && \text{(}\href{#def-matvec-mult}{\text{Definition~16}}\text{)}
> \end{aligned}$$
>
> **Uniqueness.** Suppose $\mathbf{B}$ is any $m \times p$ matrix with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for all $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. Taking $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j$, for each $i$:
>
> $$\begin{aligned}
> \mathopen{}\left(f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)\right)\mathclose{}_i
> &= (\mathbf{B}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)_i
> && \text{(assumption on } \mathbf{B} \text{)}
> \\&= \sum_{k=1}^{p} b_{ik} (\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)_k
> && \text{(}\href{#def-matvec-mult}{\text{Definition~16}}\text{)}
> \\&= b_{ij} \cdot 1 + \sum_{k \neq j} b_{ik} \cdot 0
> && \text{(}\href{linear-algebra-vectors.qmd#def-indicator-vector}{\text{Definition~18 in Vectors}}\text{, splitting off the } k = j \text{ term)}
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
> **Definition 22 (Matrix of a linear map)** The **matrix of** a linear map $f: \mathbb{R}^p \to \mathbb{R}^m$ is the unique $m \times p$ matrix $\mathbf{A}$ with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ for all $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Theorem 14](#thm-linear-map-matrix)). Its column $j$ is $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$.

> **NOTE:**
>
> **Example 19 (Finding the matrix of a linear map)** For $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (2 x_1,\ x_1 + x_2)$ from [Example 16](#exm-linear-map), the values of $f$ at the indicator vectors are
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1) = f\mathopen{}\left(\begin{bmatrix}1 \\ 0\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}2 \cdot 1 \\ 1 + 0\end{bmatrix} = \begin{bmatrix}2 \\ 1\end{bmatrix},
> \qquad
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2) = f\mathopen{}\left(\begin{bmatrix}0 \\ 1\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}2 \cdot 0 \\ 0 + 1\end{bmatrix} = \begin{bmatrix}0 \\ 1\end{bmatrix}$$
>
> and these are the columns of the matrix of $f$ ([Definition 22](#def-matrix-of-linear-map)): $\mathbf{A} = \begin{bmatrix}2 & 0 \\ 1 & 1\end{bmatrix}$.

> **NOTE:**
>
> **Exercise 36 (Evaluating a linear map from its values on the indicator vectors)** By [Theorem 14](#thm-linear-map-matrix), the values of a [linear map](#def-linear-map) at the [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) determine it everywhere. Let $f: \mathbb{R}^2 \to \mathbb{R}^2$ be a linear map with
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
> *Solution 36*. By [Theorem 14](#thm-linear-map-matrix), $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, where [column](#def-matrix-column) $j$ of $\mathbf{A}$ is $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$:
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
> **Exercise 37 (Finding the matrix of a linear map into** $\mathbb{R}^3$) The [matrix of a linear map](#def-matrix-of-linear-map) turns the map into a table of numbers that software can store and multiply. Let $f: \mathbb{R}^2 \to \mathbb{R}^3$ be the [linear map](#def-linear-map)
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (x_2,\ x_1,\ x_1 - x_2).$$
>
> Find the [matrix of](#def-matrix-of-linear-map) $f$.
>
> > **TIP:**
> >
> > [Column](#def-matrix-column) $j$ of the matrix is $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$.

> **NOTE:**
>
> *Solution 37*. The values of $f$ at the [indicator vectors](linear-algebra-vectors.llms.md#def-indicator-vector) are
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_1) = f\mathopen{}\left(\begin{bmatrix} 1 \\ 0 \end{bmatrix}\right)\mathclose{} = \begin{bmatrix} 0 \\ 1 \\ 1 \end{bmatrix},
> \qquad
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_2) = f\mathopen{}\left(\begin{bmatrix} 0 \\ 1 \end{bmatrix}\right)\mathclose{} = \begin{bmatrix} 1 \\ 0 \\ -1 \end{bmatrix}.$$
>
> These values are the [columns](#def-matrix-column) of the [matrix of](#def-matrix-of-linear-map) $f$:
>
> $$\mathbf{A} = \begin{bmatrix} 0 & 1 \\ 1 & 0 \\ 1 & -1 \end{bmatrix}.$$
>
> It is $3 \times 2$, since $f$ sends $\mathbb{R}^2$ to $\mathbb{R}^3$.

> **NOTE:**
>
> **Corollary 1 (Linear functions from vectors to numbers)** A function $f: \mathbb{R}^p \to \mathbb{R}$ is linear ([Definition 20](#def-linear-map)) if and only if there is a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathbb{R}^p$ such that
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} \quad \text{for all } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$$
>
> and then $w_j = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$ for each $j$.

> **NOTE:**
>
> *Proof*. **If** $f$ is linear. [Theorem 14](#thm-linear-map-matrix) with $m = 1$ gives a $1 \times p$ matrix $\mathbf{A}$ with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $a_{1j} = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ be the vector with $w_j = a_{1j}$, so that $\mathbf{A} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top}$. Then
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> &= \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}
> && \text{(}\href{#thm-linear-map-matrix}{\text{Theorem~14}}\text{)}
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
> **If** $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$. Here $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top}$ is a $1 \times p$ matrix, so $f$ is linear by [Theorem 12](#thm-matrix-map-linear).

> **NOTE:**
>
> **Example 20 (A linear function from** $\mathbb{R}^2$ to $\mathbb{R}$) $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 3 x_1 + 5 x_2$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = {(3, 5)}^{\top}$, so it is linear by [Corollary 1](#cor-linear-scalar). The entries of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ are the values at the indicator vectors:
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
> $g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 3 x_1 + 5 x_2 + 1$ is not linear, because $g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = 1 \neq 0$ ([Theorem 11](#thm-linear-map-zero)).

> **NOTE:**
>
> **Exercise 38 (Finding the weight vector of a linear score)** A linear score of $p$ measurements is a [dot product](linear-algebra-vectors.llms.md#def-dot-product) of the measurements with a vector of [weights](linear-algebra-vectors.llms.md#def-weight), by [Corollary 1](#cor-linear-scalar). Let $f: \mathbb{R}^3 \to \mathbb{R}$ be a [linear map](#def-linear-map) with
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
> *Solution 38*. By [Corollary 1](#cor-linear-scalar), $w_j = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{e}}\vphantom{e}}_j)$ for each $j$, so
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \begin{bmatrix} 2 \\ 0 \\ -1 \end{bmatrix}.$$
>
> Then $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 2 x_1 - x_3$ for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^3$.

> **TIP:**
>
> Two chapters of the [*Essence of linear algebra*](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) series by 3Blue1Brown show the results above geometrically:
>
> - [Linear transformations and matrices](https://www.youtube.com/watch?v=kYB8IZa5AuE) (Chapter 3) shows why a linear map is fixed by where it sends the indicator vectors, which become the columns of its matrix ([Definition 22](#def-matrix-of-linear-map)).
> - [Dot products and duality](https://www.youtube.com/watch?v=LyGKycYT2v0) (Chapter 9) shows why every linear map from $\mathbb{R}^p$ to $\mathbb{R}$ is a dot product with a fixed vector ([Corollary 1](#cor-linear-scalar)).

> **NOTE:**
>
> **Definition 23 (Translation)** For a fixed vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$, the **translation** [\[13\]](#ref-wikipedia_translation_geometry) by $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is the function $t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}} : \mathbb{R}^m \to \mathbb{R}^m$ defined by
>
> $$t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$$

> **NOTE:**
>
> **Example 21 (Translating two points)** The translation by $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = {(1, -2)}^{\top}$ sends
>
> $$t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}\mathopen{}\left(\begin{bmatrix}0 \\ 0\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}0 + 1 \\ 0 + (-2)\end{bmatrix} = \begin{bmatrix}1 \\ -2\end{bmatrix},
> \qquad
> t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}\mathopen{}\left(\begin{bmatrix}3 \\ 4\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}3 + 1 \\ 4 + (-2)\end{bmatrix} = \begin{bmatrix}4 \\ 2\end{bmatrix}$$
>
> Both points move one unit right and two units down.

> **NOTE:**
>
> *Remark 5* (A translation moves every point by the same vector). A translation by $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ moves every point by the same vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> **Exercise 39 (Finding the translation that moves one point to another)** A [translation](#def-translation) moves every point by the same vector, so where it sends one point fixes the whole translation. A translation $t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}$ of $\mathbb{R}^2$ sends ${(2, 3)}^{\top}$ to ${(5, 1)}^{\top}$.
>
> Find $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.
>
> > **TIP:**
> >
> > Solve ${(2, 3)}^{\top} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = {(5, 1)}^{\top}$ entry by entry.

> **NOTE:**
>
> *Solution 39*. By [Definition 23](#def-translation), $t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}\mathopen{}\left({(2, 3)}^{\top}\right)\mathclose{} = {(2, 3)}^{\top} + \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$. Matching this vector with ${(5, 1)}^{\top}$ entry by entry gives
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \begin{bmatrix}5 - 2 \\ 1 - 3\end{bmatrix} = \begin{bmatrix}3 \\ -2\end{bmatrix}.$$

> **NOTE:**
>
> **Definition 24**  
>
> #### Affine map, affine transformation, affine function
>
> A [function](https://morrison-lab.github.io/mcs/functions.html#def-function) $f: \mathbb{R}^p \to \mathbb{R}^m$ is an **affine map** (also called an **affine transformation** or **affine function**) if it is a matrix product followed by a translation ([Definition 23](#def-translation)) (a [composition](https://morrison-lab.github.io/mcs/functions.html#def-composition), with the matrix product as the [inner function](https://morrison-lab.github.io/mcs/functions.html#def-inner-function)): there are an $m \times p$ matrix $\mathbf{A}$ and a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \in \mathbb{R}^m$ such that
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})
> &= t_{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}}(\mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) \\
> &= \mathbf{A} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} \quad \text{for all } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 40 (Testing whether a rescale-and-shift is an affine map)** Rescaling a measurement and then shifting it, as when converting units with a different zero point, is the typical [affine map](#def-affine-map). Let $f: \mathbb{R}^2 \to \mathbb{R}^2$ be
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (2 x_1 + 1,\ x_2 - 3).$$
>
> Is $f$ an [affine map](#def-affine-map)?
>
> > **TIP:**
> >
> > Look for a $2 \times 2$ [matrix](#def-matrix) $\mathbf{A}$ and a vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> *Solution 40*. Yes. Let
>
> $$\mathbf{A} = \begin{bmatrix}2 & 0 \\ 0 & 1\end{bmatrix},
> \qquad
> \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \begin{bmatrix}1 \\ -3\end{bmatrix}.$$
>
> By [Definition 16](#def-matvec-mult), $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(2 x_1, x_2)}^{\top}$, so
>
> $$\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \begin{bmatrix}2 x_1 + 1 \\ x_2 - 3\end{bmatrix} = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$$
>
> for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^2$. So $f$ is an [affine map](#def-affine-map).

> **NOTE:**
>
> **Definition 25 (Offset of an affine map, intercept, bias)** In [Definition 24](#def-affine-map), the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is called the **offset** of $f$ (statistics also calls it the **intercept**, and machine learning the **bias**).

> **NOTE:**
>
> *Remark 6* (Real-valued affine maps). For a real-valued function ([Definition 4 in Vectors](linear-algebra-vectors.llms.md#def-real-vector-valued), $m = 1$), $\mathbf{A}$ is a single row, written $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top}$, and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is a single number $b$, so an affine function is a linear function $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ ([Corollary 1](#cor-linear-scalar)) plus an offset:
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b, \qquad \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathbb{R}^p, \quad b \in \mathbb{R} \tag{1}$$

> **NOTE:**
>
> **Exercise 41 (Reading off the offset of an affine map)** In a fitted model, the [offset](#def-affine-offset) is the part of the output that does not depend on the input. Let $f: \mathbb{R}^2 \to \mathbb{R}^2$ be the [affine map](#def-affine-map)
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = (x_1 - x_2 + 4,\ 3 x_2 - 1).$$
>
> Find the [offset of](#def-affine-offset) $f$.
>
> > **TIP:**
> >
> > Write $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$ as $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ as in [Definition 24](#def-affine-map).

> **NOTE:**
>
> *Solution 41*. $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \begin{bmatrix}1 & -1 \\ 0 & 3\end{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \begin{bmatrix}4 \\ -1\end{bmatrix},$$
>
> so the [offset of](#def-affine-offset) $f$ is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = {(4, -1)}^{\top}$. Each entry of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ is the term with no $x_j$ in the matching entry of $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}})$.

> **NOTE:**
>
> **Definition 26 (Augmented vector)** The **augmented vector** of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$ is the vector ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}} \in \mathbb{R}^{p+1}$ formed by placing a $1$ above the entries of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$:
>
> $$\begin{aligned}
> {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}}
> &= \begin{bmatrix}1 \\ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\end{bmatrix} \\
> &= {(1, x_1, \ldots, x_p)}^{\top}
> \end{aligned}$$

> **NOTE:**
>
> **Example 22 (An affine function as a dot product with an augmented vector)** For $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= {(2, 5)}^{\top}$, the augmented vector is ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}} = {(1, 2, 5)}^{\top}$. With $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = {(3, -1)}^{\top}$ and $b = 4$, the affine function $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b$ ([Equation 1](#eq-linear-scalar)) equals the dot product of ${(b, w_1, w_2)}^{\top} = {(4, 3, -1)}^{\top}$ with ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}}$:
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
> **Exercise 42 (Absorbing an offset into a dot product with the augmented vector)** The [augmented vector](#def-augmented-vector) lets software treat an [affine](#def-affine-map) score as a [dot product](linear-algebra-vectors.llms.md#def-dot-product), with the [offset](#def-affine-offset) as one more [weight](linear-algebra-vectors.llms.md#def-weight). Let $f: \mathbb{R}^2 \to \mathbb{R}$ be
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = 2 x_1 - x_2 + 5.$$
>
> Find the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \in \mathbb{R}^3$ with $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \cdot {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}}$ for every $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^2$.
>
> > **TIP:**
> >
> > Follow [Example 22](#exm-augmented-vector). The first entry of ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}}$ is $1$.

> **NOTE:**
>
> *Solution 42*. Let $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = {(5, 2, -1)}^{\top}$. Since ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}} = {(1, x_1, x_2)}^{\top}$ by [Definition 26](#def-augmented-vector),
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} \cdot {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}} = 5 \cdot 1 + 2 x_1 + (-1) x_2 = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}).$$
>
> The first entry of $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is the [offset](#def-affine-offset) $5$, and the other two are the numbers multiplying $x_1$ and $x_2$.

> **NOTE:**
>
> **Theorem 15 (An affine map sends zero to its offset)** An affine map $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ ([Definition 24](#def-affine-map)) satisfies $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> *Proof*. First, $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$: for each $i$,
>
> $$\begin{aligned}
> (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})_i
> &= \sum_{j=1}^pa_{ij} \cdot 0
> && \text{(}\href{#def-matvec-mult}{\text{Definition~16}}\text{)}
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
> && \text{(}\href{#def-affine-map}{\text{Definition~24}}\text{)}
> \\&= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && (\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}})
> \\&= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && \text{(adding } \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\text{ changes no entry; }\href{linear-algebra-vectors.qmd#def-vector-addition}{\text{Definition~7 in Vectors}}\text{)}
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 43 (Recovering a column of an affine map’s matrix from two values)** [Theorem 15](#thm-affine-map-zero) says that the value of an [affine map](#def-affine-map) at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ is its [offset](#def-affine-offset), so subtracting that value isolates the [matrix](#def-matrix) part. Let $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ be an affine map from $\mathbb{R}^2$ to $\mathbb{R}^2$ with
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \begin{bmatrix}1 \\ 2\end{bmatrix},
> \qquad
> f\mathopen{}\left(\begin{bmatrix}1 \\ 0\end{bmatrix}\right)\mathclose{} = \begin{bmatrix}4 \\ 2\end{bmatrix}.$$
>
> Find the first [column of](#def-matrix-column) $\mathbf{A}$.
>
> > **TIP:**
> >
> > $\mathbf{A} \begin{bmatrix}1 \\ 0\end{bmatrix}$ is the first [column of](#def-matrix-column) $\mathbf{A}$.

> **NOTE:**
>
> *Solution 43*. By [Theorem 15](#thm-affine-map-zero), $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = {(1, 2)}^{\top}$. So
>
> $$\begin{aligned}
> \mathbf{A} \begin{bmatrix}1 \\ 0\end{bmatrix}
> &= f\mathopen{}\left(\begin{bmatrix}1 \\ 0\end{bmatrix}\right)\mathclose{} - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}
> && \text{(}\href{#def-affine-map}{\text{Definition~24}}\text{)}
> \\&= \begin{bmatrix}4 - 1 \\ 2 - 2\end{bmatrix}
> && \text{(the given values)}
> \\&= \begin{bmatrix}3 \\ 0\end{bmatrix}.
> \end{aligned}$$
>
> By [Definition 16](#def-matvec-mult), $\mathbf{A} {(1, 0)}^{\top}$ is the first [column of](#def-matrix-column) $\mathbf{A}$, which is therefore ${(3, 0)}^{\top}$.

> **NOTE:**
>
> **Theorem 16 (An affine map is linear exactly when its offset is zero)** An affine map $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ ([Definition 24](#def-affine-map)) is linear ([Definition 20](#def-linear-map)) if and only if $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> *Proof*. If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, then
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) &= \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\\
> &= \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}},
> \end{aligned}$$
>
> which is linear by [Theorem 12](#thm-matrix-map-linear). Conversely, if $f$ is linear, then $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ by [Theorem 11](#thm-linear-map-zero), and $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ by [Theorem 15](#thm-affine-map-zero), so $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Example 23 (Two affine maps with the same matrix)** Let $\mathbf{A} = \begin{bmatrix}2 & 0 \\ 1 & 1\end{bmatrix}$, the matrix of the linear map in [Example 16](#exm-linear-map). $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ has offset $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so it is linear. $g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \begin{bmatrix}1 \\ 0\end{bmatrix}$ has offset $\begin{bmatrix}1 \\ 0\end{bmatrix} \neq \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, so by [Theorem 16](#thm-affine-linear-iff) it is not linear: indeed $g(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}) = \begin{bmatrix}1 \\ 0\end{bmatrix}$, not $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Exercise 44 (Choosing a constant that makes an affine map linear)** By [Theorem 16](#thm-affine-linear-iff), an [affine map](#def-affine-map) is a [linear map](#def-linear-map) exactly when its [offset](#def-affine-offset) is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. For $c \in \mathbb{R}$, let $f: \mathbb{R}^2 \to \mathbb{R}^2$ be
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
> *Solution 44*. Only for $c = 2$. The map is
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \begin{bmatrix}1 & -1 \\ 3 & 0\end{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \begin{bmatrix}c - 2 \\ c^2 - 4\end{bmatrix},$$
>
> so its [offset](#def-affine-offset) is ${(c - 2,\ c^2 - 4)}^{\top}$. By [Theorem 16](#thm-affine-linear-iff), $f$ is linear exactly when both entries are $0$. The first entry is $0$ only for $c = 2$, and then the second entry is $2^2 - 4 = 0$ too.

> **NOTE:**
>
> **Corollary 2 (Every linear map is affine)** Every linear map $f : \mathbb{R}^p \to \mathbb{R}^m$ ([Definition 20](#def-linear-map)) is an affine map ([Definition 24](#def-affine-map)) with offset $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> *Proof*. If $f$ is linear, [Theorem 14](#thm-linear-map-matrix) gives a matrix $\mathbf{A}$ with
>
> $$\begin{aligned}
> f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) &= \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\\
> &= \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}},
> \end{aligned}$$
>
> which is [Definition 24](#def-affine-map) with $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Exercise 45 (Testing whether a linear score is an affine map)** Some results hold only for [affine maps](#def-affine-map), so it helps to check whether a given score qualifies. Let $f: \mathbb{R}^2 \to \mathbb{R}$ be $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = x_1 - 4 x_2$, a [linear map](#def-linear-map).
>
> Is $f$ an [affine map](#def-affine-map)?
>
> > **TIP:**
> >
> > Use [Corollary 2](#cor-linear-is-affine).

> **NOTE:**
>
> *Solution 45*. Yes. By [Corollary 2](#cor-linear-is-affine), every [linear map](#def-linear-map) is an [affine map](#def-affine-map) with [offset](#def-affine-offset) $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$. Here
>
> $$f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \begin{bmatrix}1 & -4\end{bmatrix} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ 0,$$
>
> with the $1 \times 2$ [matrix](#def-matrix) $\begin{bmatrix}1 & -4\end{bmatrix}$ and offset $0$.

> **NOTE:**
>
> **Theorem 17 (An affine map determines its matrix and offset)** If $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ and $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathbf{A}'\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}'$ for all $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$ ([Definition 24](#def-affine-map)), then $\mathbf{A}' = \mathbf{A}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}' = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$.

> **NOTE:**
>
> *Proof*. By [Theorem 15](#thm-affine-map-zero), applied to each formula,
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
> for all $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$, so $\mathbf{A}$ and $\mathbf{A}'$ are both matrices ([Definition 22](#def-matrix-of-linear-map)) of the linear map $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\mapsto f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) - \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$ (linear by [Theorem 12](#thm-matrix-map-linear)), and the uniqueness in [Theorem 14](#thm-linear-map-matrix) gives $\mathbf{A}' = \mathbf{A}$.

> **NOTE:**
>
> **Exercise 46 (Matching the offsets of two formulas for one affine map)** [Theorem 17](#thm-affine-map-unique) says that an [affine map](#def-affine-map) has only one [matrix](#def-matrix) and one [offset](#def-affine-offset), so two ways of writing the same map must agree term by term. For $c \in \mathbb{R}$, suppose that
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
> *Solution 46*. $c = 3$. Both sides describe the same [affine map](#def-affine-map). By [Theorem 17](#thm-affine-map-unique), the two sides have the same [offset](#def-affine-offset), so ${(3, 1)}^{\top} = {(c, 1)}^{\top}$ and $c = 3$. Setting $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}= \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ gives the same answer directly.

> **NOTE:**
>
> *Remark 7* (“Linear” in this site, and in machine learning and statistics). This site uses “linear” only in the sense of [Definition 20](#def-linear-map), so by [Theorem 16](#thm-affine-linear-iff) a function with a nonzero offset is affine but not linear. For functions of one variable, this is the same split as [affine](algebra-exponentials.llms.md#def-affine-function) $a x + b$ versus [linear](algebra-exponentials.llms.md#def-linear-function) $a x$ on the algebra page. (The algebra page writes these as $m x + b$ and $m x$; here $m$ already names the number of outputs.)
>
> Machine learning and statistics often call any function of the form [Equation 1](#eq-linear-scalar) “linear”, as in a *linear model* in statistics or a *linear layer* in a neural network, and call the offset $b$ the bias (machine learning) or the intercept (statistics), as [Definition 24](#def-affine-map) notes. A model with an intercept is affine in $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ but linear in its coefficients $(b, \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}})$, and that is the sense of “linear” in “linear model”: it stays linear in the coefficients even when the inputs are transformed: $w_1 x + w_2 x^2 + b$ is not affine in $x$, but it is linear in $(b, w_1, w_2)$. Separately, the affine function $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b$ is a linear function of the augmented vector ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\mathrm{aug}}$ ([Definition 26](#def-augmented-vector)), with $b$ as the coefficient on its first entry.

> **TIP:**
>
> - Zhou [\[14\]](#ref-zhou2024matrix), sections 6 (“Linear functions and operators”; see [Definition 21](#def-linear-operator)) and 7 (“Affine functions”), proves that every linear function is a matrix-vector product by the same route as [Theorem 14](#thm-linear-map-matrix), and that every affine function has the form $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$. It defines “affine” differently, by $f(\alpha\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \beta\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}}) = \alpha f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) + \beta f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{y}}\vphantom{y}})$ whenever $\alpha+ \beta= 1$, and shows that this condition holds exactly for the maps $\mathbf{A}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{b}}\vphantom{b}}$, so the two definitions agree.
> - Boyd and Vandenberghe [\[15\]](#ref-boyd2018vmls), chapter 2 (“Linear functions”), covers the vector-to-number case: linear functions as inner products, affine functions, the [first-order Taylor approximation](calculus-derivatives.llms.md#def-linear-approximation) as an affine function, and the regression model. Section 8.1 (“Linear and affine functions”) covers the vector-to-vector case. A free PDF is on the book’s website.

> **NOTE:**
>
> **Definition 27 (Hyperplane)** A **hyperplane** [\[16\]](#ref-wikipedia_hyperplane) in $\mathbb{R}^p$ is the set of points $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^p$ satisfying
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b = 0$$
>
> for some vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathbb{R}^p \setminus \{\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}\}$ and number $b \in \mathbb{R}$. The number $b$ is the offset of the hyperplane.

> **NOTE:**
>
> **Definition 28 (Normal vector of a hyperplane)** In [Definition 27](#def-hyperplane), the vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is a **normal vector** [\[17\]](#ref-wikipedia_normal_geometry) of the hyperplane.

> **NOTE:**
>
> **Example 24 (A line in** $\mathbb{R}^2$, and why the normal vector must be nonzero)  
>
> - With $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = (1, 1)$ and $b = -1$, the hyperplane in $\mathbb{R}^2$ is the line $x_1 + x_2 - 1 = 0$. The point $(1, 0)$ is on it, since $1 + 0 - 1 = 0$; the point $(1, 1)$ is not, since $1 + 1 - 1 = 1 > 0$, so it lies in the half-space where $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b > 0$.
> - With $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$, the equation reads $b = 0$: if $b \ne 0$ no point satisfies it, and if $b = 0$ every point does, so the set is empty or all of $\mathbb{R}^2$, not a line. That degenerate case is why the definition requires $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$.

> **NOTE:**
>
> **Exercise 47 (Testing whether a vertical line is a hyperplane)** A vertical line in $\mathbb{R}^2$ is parallel to the $x_2$-axis. It cannot be written as $x_2 = m x_1 + k$ for any numbers $m$ and $k$. Let $L$ be the [set](https://morrison-lab.github.io/mcs/sets.html#def-set) of points $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^2$ with $x_1 = 3$.
>
> Is $L$ a [hyperplane](#def-hyperplane) in $\mathbb{R}^2$?
>
> > **TIP:**
> >
> > Look for $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and $b$ in [Definition 27](#def-hyperplane).

> **NOTE:**
>
> *Solution 47*. Yes. Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = {(1, 0)}^{\top} \ne \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ and $b = -3$. Then
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \cdot \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}} + b = x_1 - 3,$$
>
> which is $0$ exactly when $x_1 = 3$. So $L$ is the [hyperplane](#def-hyperplane) with these $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ and $b$.

> **NOTE:**
>
> **Exercise 48 (Finding a normal vector of a plane in** $\mathbb{R}^3$) In $\mathbb{R}^3$ a [hyperplane](#def-hyperplane) is a plane, and a [normal vector](#def-normal-vector) points straight out of it. Let $H$ be the hyperplane of points $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}\in \mathbb{R}^3$ with
>
> $$2 x_1 - x_2 + 4 x_3 = 7.$$
>
> Find a [normal vector of](#def-normal-vector) $H$.
>
> > **TIP:**
> >
> > Rewrite the equation in the form of [Definition 27](#def-hyperplane).

> **NOTE:**
>
> *Solution 48*. Subtracting $7$ from both sides gives
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
> **Exercise 49 (Write a rule in matrix form)** A clinic scores a patient’s risk from three measurements.
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
> *Solution 49*. Read the [coefficients](linear-algebra-vectors.llms.md#def-lincom-coefficient) straight off the rule. There are three inputs, so $p = 3$:
>
> $$\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \begin{bmatrix} 0.4 \\ 0.2 \\ 1.5 \end{bmatrix},
> \qquad b = -30$$
>
> and the rule is $f(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}) = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}+ b$.

> **NOTE:**
>
> **Exercise 50 (Score a patient)** Give the score from the rule in [Exercise 49](#exr-write-in-matrix-form) for a patient aged $50$ with blood pressure $130$ and BMI $28$.

> **NOTE:**
>
> *Solution 50*. For the patient,
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
> **Exercise 51 (Which of these are affine in** $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$?) Each of the five expressions is a function of the weights $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} \in \mathbb{R}^p$, with the data $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ and $y$ held fixed. Say which ones are affine ([Definition 24](#def-affine-map)), that is, have the form [Equation 1](#eq-linear-scalar) — an inner product plus an offset — and which of those are also linear ([Definition 20](#def-linear-map)).
>
> 1.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$
> 2.  $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}- y$
> 3.  $(\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}- y)^2$
> 4.  $\mathopen{}\left\lVert\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}\right\rVert\mathclose{}_2^2$
> 5.  $w_1 x_1 + 3$

> **NOTE:**
>
> *Solution 51*.
>
> 1.  **Affine, and linear.** It is [Equation 1](#eq-linear-scalar) with $b = 0$, which is a linear map by [Theorem 12](#thm-matrix-map-linear): the matrix ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}}^{\top}$ times $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$.
> 2.  **Affine.** Still an inner product plus an offset; here the offset is $b = -y$, which is a constant because $y$ is held fixed. It is linear only when $y = 0$: otherwise $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ gives $-y \ne 0$, and a linear map sends $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ to $0$ ([Theorem 11](#thm-linear-map-zero)).
> 3.  **Not affine.** Squaring is not an inner product plus an offset. This expression is the squared error of one observation, and its curvature in $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ is exactly why fitting a model is an optimization problem rather than a lookup.
> 4.  **Not affine.** By [Equation 2 in Vectors](linear-algebra-vectors.llms.md#eq-l2-norm) this is $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}^{\top} \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$, which has $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ in both slots at once. Hold either slot fixed and it is linear in the other; as a function of the single variable $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$ it is quadratic.
> 5.  **Affine, not linear.** It is [Equation 1](#eq-linear-scalar) with coefficient vector $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}= (x_1, 0, \dots, 0)^{\top}$ and $b = 3$; at $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}} = \mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{0}}\vphantom{0}}$ it equals $3 \ne 0$, so it is not linear ([Theorem 11](#thm-linear-map-zero)). The data $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{x}}\vphantom{x}}$ is untouched — $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{a}}\vphantom{a}}$ is a new vector built from its first entry.
>
> Items 1, 2 and 5 are affine and items 3 and 4 are not, which is the split that matters: a *model* can be affine in its weights while the *quantity we minimize* is not. Squared error and the norm penalty are both curved in $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{w}}\vphantom{w}}$, and that curvature is what makes fitting an optimization problem at all: there is always a downhill direction to follow. Curvature alone does not promise a *single* answer. The squared error of one observation is completely flat along a whole line of weight vectors, every one of which fits that observation exactly, and pinning down one of them is part of what the norm penalty is added for in week 3.

# 8 Transposes of sums and products

> **NOTE:**
>
> **Theorem 18 (Transpose of a sum)** For $m \times n$ matrices $\mathbf{A}$ and $\mathbf{B}$:
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
> **Exercise 52 (Transposing a sum of two matrices)** [Theorem 18](#thm-transpose-sum) lets a [transpose](#def-matrix-transpose) be taken before or after adding, whichever is less work. Let
>
> $$\mathbf{A} = \begin{bmatrix}1 & 2 & 0 \\ 3 & -1 & 4\end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix}0 & 1 & 1 \\ 2 & 2 & -3\end{bmatrix}.$$
>
> Find ${(\mathbf{A} + \mathbf{B})}^{\top}$.
>
> > **TIP:**
> >
> > Add first with [Definition 8](#def-matrix-addition), then take the [transpose](#def-matrix-transpose).

> **NOTE:**
>
> *Solution 52*. Adding entry by entry,
>
> $$\mathbf{A} + \mathbf{B} = \begin{bmatrix}1 & 3 & 1 \\ 5 & 1 & 1\end{bmatrix},$$
>
> so
>
> $${(\mathbf{A} + \mathbf{B})}^{\top} = \begin{bmatrix}1 & 5 \\ 3 & 1 \\ 1 & 1\end{bmatrix}.$$
>
> By [Theorem 18](#thm-transpose-sum), adding ${\mathbf{A}}^{\top} = \begin{bmatrix}1 & 3 \\ 2 & -1 \\ 0 & 4\end{bmatrix}$ and ${\mathbf{B}}^{\top} = \begin{bmatrix}0 & 2 \\ 1 & 2 \\ 1 & -3\end{bmatrix}$ gives the same [matrix](#def-matrix).

> **NOTE:**
>
> **Theorem 19 (Transpose of a product)** For an $m \times k$ matrix $\mathbf{A}$ and a $k \times n$ matrix $\mathbf{B}$:
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
> *Remark 8* (The order of the factors reverses). Transposing a product reverses the order of the factors. Keeping the original order usually gives an undefined product or a different matrix. For example, with $\mathbf{A} = [1,\; 2]$ ($1 \times 2$) and $\mathbf{B} = \begin{bmatrix} 3 \\ 4 \end{bmatrix}$ ($2 \times 1$),
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
> **Exercise 53 (The order of the factors in a transposed square product)** [Remark 8](#rem-transpose-product-order) shows that, for factors that are not [square](#def-square-matrix), keeping the original order of the factors in the [transpose](#def-matrix-transpose) of a [product](#def-matrix-mult) can give an undefined product. For two [square matrices](#def-square-matrix) of the same size, both ${\mathbf{A}}^{\top}{\mathbf{B}}^{\top}$ and ${\mathbf{B}}^{\top}{\mathbf{A}}^{\top}$ are defined, so the shapes alone cannot settle which order gives ${(\mathbf{A}\mathbf{B})}^{\top}$. Let
>
> $$\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix},
> \qquad
> \mathbf{B} = \begin{bmatrix} 1 & 0 \\ 1 & 1 \end{bmatrix}.$$
>
> Does ${\mathbf{A}}^{\top}{\mathbf{B}}^{\top}$ equal ${(\mathbf{A}\mathbf{B})}^{\top}$ for these $\mathbf{A}$ and $\mathbf{B}$?
>
> > **TIP:**
> >
> > Compute $\mathbf{A}\mathbf{B}$ with [Definition 10](#def-matrix-mult) and take its [transpose](#def-matrix-transpose), then compute ${\mathbf{A}}^{\top}{\mathbf{B}}^{\top}$ and compare the two entry by entry.

> **NOTE:**
>
> *Solution 53*. No: the two [matrices](#def-matrix) differ, so keeping the order of the factors gives the wrong [transpose](#def-matrix-transpose).
>
> The [product](#def-matrix-mult) $\mathbf{A}\mathbf{B}$ and its transpose are
>
> $$\begin{aligned}
> \mathbf{A}\mathbf{B}
> &= \begin{bmatrix}
> 1 \cdot 1 + 2 \cdot 1 & 1 \cdot 0 + 2 \cdot 1 \\
> 0 \cdot 1 + 1 \cdot 1 & 0 \cdot 0 + 1 \cdot 1
> \end{bmatrix}
> && \text{(}\href{#def-matrix-mult}{\text{Definition~10}}\text{)}
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
> && \text{(}\href{#def-matrix-mult}{\text{Definition~10}}\text{)}
> \\
> &= \begin{bmatrix} 1 & 1 \\ 2 & 3 \end{bmatrix}.
> && \text{(multiply and add)}
> \end{aligned}$$
>
> Entry $(1, 1)$ is $3$ in ${(\mathbf{A}\mathbf{B})}^{\top}$ and $1$ in ${\mathbf{A}}^{\top}{\mathbf{B}}^{\top}$. In the reversed order, as [Theorem 19](#thm-transpose-product) says, ${\mathbf{B}}^{\top}{\mathbf{A}}^{\top}
> = \begin{bmatrix} 1 \cdot 1 + 1 \cdot 2 & 1 \cdot 0 + 1 \cdot 1 \\ 0 \cdot 1 + 1 \cdot 2 & 0 \cdot 0 + 1 \cdot 1 \end{bmatrix}
> = \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix}$, which matches ${(\mathbf{A}\mathbf{B})}^{\top}$.

> **NOTE:**
>
> **Theorem 20 (A** $1 \times 1$ product equals its own transpose) If $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ and $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ are vectors of length $p$ and $\mathbf{M}$ is a $p \times p$ matrix, then ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$ is a number, and
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
> The transpose step is [Theorem 19](#thm-transpose-product). Taking $\mathbf{M} = \mathbf{I}$ gives the last statement.

> **NOTE:**
>
> **Example 25 (Two ways to write the same number)** Take $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = (1, 2)$, $\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (3, -1)$ and $\mathbf{M} = \begin{bmatrix} 1 & 2 \\ 0 & 3 \end{bmatrix}$. Then $\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = (1, -3)$, so
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
> **Exercise 54 (Evaluating a product of a vector, a matrix and a vector)** [Theorem 20](#thm-scalar-transpose) turns ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,{\mathbf{M}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}$ back into ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$, which can be the easier [product](#def-matrix-mult) of a vector, a [matrix](#def-matrix) and a vector to compute. Let
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
> > By [Theorem 20](#thm-scalar-transpose), it is enough to compute ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$.

> **NOTE:**
>
> *Solution 54*. By [Theorem 20](#thm-scalar-transpose), ${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}}^{\top}\,{\mathbf{M}}^{\top}\,\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}} = {\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}}$. By [Definition 16](#def-matvec-mult),
>
> $$\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = \begin{bmatrix}0 \cdot 2 + 1 \cdot 3 \\ 2 \cdot 2 + 0 \cdot 3\end{bmatrix} = \begin{bmatrix}3 \\ 4\end{bmatrix},$$
>
> so
>
> $${\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{u}}\vphantom{u}}}^{\top}\mathbf{M}\mathord{\smash[b]{\underset{\raise.3ex\hbox{$\scriptstyle\sim$}}{v}}\vphantom{v}} = 1 \cdot 3 + (-1) \cdot 4 = -1.$$
>
> The answer is $-1$.

# Definitions on this page

- [Definition 1 (Matrix)](#def-matrix)
- [Definition 2 (Equal matrices)](#def-matrix-equality)
- [Definition 3 (Row of a matrix)](#def-matrix-row)
- [Definition 4 (Column of a matrix)](#def-matrix-column)
- [Definition 5 (Tensor)](#def-tensor)
- [Definition 6 (Matrix transpose)](#def-matrix-transpose)
- [Definition 7 (Zero matrix)](#def-zero-matrix)
- [Definition 8 (Matrix addition)](#def-matrix-addition)
- [Definition 9 (Scalar multiplication)](#def-scalar-mult)
- [Definition 10 (Matrix multiplication)](#def-matrix-mult)
- [Definition 11 (Square matrix)](#def-square-matrix)
- [Definition 12 (Main diagonal)](#def-main-diagonal)
- [Definition 13 (Diagonal entry)](#def-diagonal-entry)
- [Definition 14 (Off-diagonal entry)](#def-off-diagonal-entry)
- [Definition 15 (Identity matrix)](#def-identity-matrix)
- [Definition 16 (Matrix-vector multiplication)](#def-matvec-mult)
- [Definition 17 (Linear system, system of linear equations)](#def-linear-system)
- [Definition 18 (Additive function)](#def-additive-function)
- [Definition 19 (Homogeneous function)](#def-homogeneous-function)
- [Definition 20 (Linear map, linear transformation, linear function)](#def-linear-map)
- [Definition 21 (Linear operator)](#def-linear-operator)
- [Definition 22 (Matrix of a linear map)](#def-matrix-of-linear-map)
- [Definition 23 (Translation)](#def-translation)
- [Definition 24](#def-affine-map)
- [Definition 25 (Offset of an affine map, intercept, bias)](#def-affine-offset)
- [Definition 26 (Augmented vector)](#def-augmented-vector)
- [Definition 27 (Hyperplane)](#def-hyperplane)
- [Definition 28 (Normal vector of a hyperplane)](#def-normal-vector)

Back to top

## References

\[1\]

Wikipedia contributors, “Matrix (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Matrix_(mathematics)>

\[2\]

Wikipedia contributors, “Tensor — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Tensor>

\[3\]

Wikipedia contributors, “Transpose — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Transpose>

\[4\]

Wikipedia contributors, “Zero matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Zero_matrix>

\[5\]

Wikipedia contributors, “Matrix addition — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Matrix_addition>

\[6\]

Wikipedia contributors, “Scalar multiplication — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Scalar_multiplication>

\[7\]

Wikipedia contributors, “Matrix multiplication — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Matrix_multiplication>

\[8\]

Wikipedia contributors, “Square matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Square_matrix>

\[9\]

Wikipedia contributors, “Main diagonal — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Main_diagonal>

\[10\]

Wikipedia contributors, “Identity matrix — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Identity_matrix>

\[11\]

Wikipedia contributors, “System of linear equations — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/System_of_linear_equations>

\[12\]

Wikipedia contributors, “Linear map — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Linear_map>

\[13\]

Wikipedia contributors, “Translation (geometry) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Translation_(geometry)>

\[14\]

H. Zhou, “Matrices.” Lecture notes for Biostat 216, Mathematical Methods for Biostatistics, University of California, Los Angeles, 2024. Accessed: Oct. 05, 2026. \[Online\]. Available: <https://ucla-biostat-216.github.io/2024fall/slides/03-matrix/03-matrix.html>

\[15\]

S. Boyd and L. Vandenberghe, *Introduction to applied linear algebra: Vectors, matrices, and least squares*. Cambridge University Press, 2018. doi: [10.1017/9781108583664](https://doi.org/10.1017/9781108583664).

\[16\]

Wikipedia contributors, “Hyperplane — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Hyperplane>

\[17\]

Wikipedia contributors, “Normal (geometry) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Normal_(geometry)>
