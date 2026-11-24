# Matrices

Code

Published

Last modified: 2026-11-23 17:02:11 (PST)

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
