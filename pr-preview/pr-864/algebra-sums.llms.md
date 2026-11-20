# Sums, Products and Quotients

Code

Published

Last modified: 2026-11-20 12:52:06 (PST)

# 1 Sums

> **NOTE:**
>
> **Definition 1 (Term of a sum)** In a sum $a_1 + a_2 + \cdots + a_n$, each of the numbers or expressions $a_1, a_2, \ldots, a_n$ being added is a **term** of the sum.

> **NOTE:**
>
> **Example 1 (Terms of a sum)**  
>
> - The sum $3 + 5 + 9$ has three terms: $3$, $5$ and $9$.
> - The sum $x^2 - 3x + 7 = x^2 + (-3x) + 7$ has three terms: $x^2$, $-3x$ and $7$. A subtracted expression counts as a term with a minus sign.

> **NOTE:**
>
> **Definition 2 (Identity element)** Let $S$ be a set, such as the real numbers $\mathbb{R}$, and let $\star$ be an operation that combines two elements $a$ and $b$ of $S$ into an element $a \star b$ of $S$, such as addition ($a + b$) or multiplication ($a \times b$) of real numbers. An element $u$ of $S$ is an **identity element** for $\star$ [\[1\]](#ref-wikipedia_identity_element) if $a \star u = a$ and $u \star a = a$ for every $a \in S$.

> **NOTE:**
>
> **Example 2 (Identity elements for addition and multiplication)**  
>
> - $0$ is the identity element for addition: for example, $5 + 0 = 5$ and $0 + 5 = 5$ ([Theorem 1](#thm-add-ident)).
> - $1$ is the identity element for multiplication: for example, $5 \times 1 = 5$ and $1 \times 5 = 5$ ([Theorem 4](#thm-mult-one)).
> - $0$ is not an identity element for subtraction: $5 - 0 = 5$, but $0 - 5 = -5 \ne 5$.

> **NOTE:**
>
> **Definition 3 (Commutative operation)** An operation $\star$ on a set $S$ ([Definition 2](#def-identity-element)) is **commutative** [\[2\]](#ref-wikipedia_commutative_property) if $a \star b = b \star a$ for all $a, b \in S$: the order of the two inputs does not matter. Some sources call a commutative operation **symmetric**, as in the theorem titles “Sums are symmetric” and “Products are symmetric”.

> **NOTE:**
>
> **Example 3 (A commutative operation, and one that is not)**  
>
> - Addition is commutative: for example,
>
>   $$\begin{aligned}
>   2 + 5 &= 7 \\
>   &= 5 + 2.
>   \end{aligned}$$
>
> - Subtraction is not commutative: $5 - 3 = 2$, but $3 - 5 = -2$.

> **NOTE:**
>
> **Definition 4 (Associative operation)** An operation $\star$ on a set $S$ ([Definition 2](#def-identity-element)) is **associative** [\[3\]](#ref-wikipedia_associative_property) if $(a \star b) \star c = a \star (b \star c)$ for all $a, b, c \in S$: which pair is combined first does not matter.

> **NOTE:**
>
> **Example 4 (An associative operation, and one that is not)**  
>
> - Multiplication is associative: for example,
>
>   $$\begin{aligned}
>   (2 \times 3) \times 4 &= 6 \times 4 \\
>   &= 24
>   \end{aligned}$$
>
>   and
>
>   $$\begin{aligned}
>   2 \times (3 \times 4) &= 2 \times 12 \\
>   &= 24.
>   \end{aligned}$$
>
> - Subtraction is not associative:
>
>   $$\begin{aligned}
>   (8 - 4) - 2 &= 4 - 2 \\
>   &= 2,
>   \end{aligned}$$
>
>   but
>
>   $$\begin{aligned}
>   8 - (4 - 2) &= 8 - 2 \\
>   &= 6.
>   \end{aligned}$$

> **NOTE:**
>
> **Theorem 1 (Adding zero changes nothing)** $$a+0=a$$

> **NOTE:**
>
> **Theorem 2 (Sums are symmetric)** $$a+b = b+a$$

> **NOTE:**
>
> **Theorem 3 (Sums are associative)** When adding three numbers, it does not matter which pair you add first:
>
> $$(a + b) + c = a + (b + c)$$

> **NOTE:**
>
> **Example 5 (Grouping a sum two ways)** $$\begin{aligned}
> (2 + 3) + 4 &= 5 + 4 \\
> &= 9,
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> 2 + (3 + 4) &= 2 + 7 \\
> &= 9.
> \end{aligned}$$

# 2 Products

> **NOTE:**
>
> **Theorem 4 (Multiplying by 1 changes nothing)** $$a \times 1 = a$$

> **NOTE:**
>
> **Theorem 5 (Products are symmetric)** $$a \times b = b \times a$$

> **NOTE:**
>
> **Theorem 6 (Products are associative)** $$(a \times b) \times c = a \times (b \times c)$$

# 3 Division

> **NOTE:**
>
> **Theorem 7 (Division can be written as a product)** If $b \neq 0$, then
>
> $$\frac {a}{b} = a \times \frac{1}{b}$$

# 4 Sums and products together

> **NOTE:**
>
> **Definition 5 (Distributes over)** An operation $\star$ on a set $S$ **distributes over** an operation $\diamond$ on $S$ if
>
> $$a \star (b \diamond c) = (a \star b) \diamond (a \star c)$$
>
> for all $a, b, c \in S$.

> **NOTE:**
>
> **Example 6 (Addition does not distribute over multiplication)** $$\begin{aligned}
> 2 + (3 \times 4) &= 2 + 12 \\
> &= 14,
> \end{aligned}$$
>
> but
>
> $$\begin{aligned}
> (2 + 3) \times (2 + 4) &= 5 \times 6 \\
> &= 30.
> \end{aligned}$$
>
> So [Definition 5](#def-distributes-over) fails with $\star = +$ and $\diamond = \times$.

> **NOTE:**
>
> **Theorem 8 (Multiplication is distributive)** $$a(b+c) = ab + ac$$

> **NOTE:**
>
> **Definition 6 (Distributive law)** The **distributive law** [\[4\]](#ref-wikipedia_distributive_property) is the statement that multiplication distributes over addition ([Definition 5](#def-distributes-over)): $a \times (b + c) = (a \times b) + (a \times c)$ ([Theorem 8](#thm-mult-distr)). We then say multiplication is **distributive**.

> **NOTE:**
>
> **Example 7 (Multiplication distributes over addition)** $$\begin{aligned}
> 3 \times (4 + 5) &= 3 \times 9 \\
> &= 27,
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> (3 \times 4) + (3 \times 5) &= 12 + 15 \\
> &= 27.
> \end{aligned}$$

> **NOTE:**
>
> **Definition 7 (Like terms)** Two [terms](#def-term) of a sum are **like terms** [\[5\]](#ref-wikipedia_like_terms) if they are the same product of variables, each to the same power, possibly multiplied by different constants: $c_1 m$ and $c_2 m$, where $c_1$ and $c_2$ are constants and $m$ is that product.

> **NOTE:**
>
> **Definition 8 (Collecting like terms)** To **collect** like terms ([Definition 7](#def-like-terms)) is to replace their sum by one term, using the distributive law ([Theorem 8](#thm-mult-distr)): $c_1 m + c_2 m = (c_1 + c_2) m$.

> **NOTE:**
>
> **Example 8 (Like and unlike terms)**  
>
> - $3ab$ and $-5ab$ are like terms; collecting them gives
>
>   $$\begin{aligned}
>   3ab + (-5ab) &= (3 - 5) ab \\
>   &= -2ab.
>   \end{aligned}$$
>
> - $2x$ and $2x^2$ are not like terms: $x$ appears to different powers.

> **NOTE:**
>
> **Exercise 1 (Expand a squared sum)** Is $(3 + 4)^2$ equal to $3^2 + 4^2$? Then expand $(a + b)^2$ for any numbers $a$ and $b$, using only the distributive law and the rules above.

> **NOTE:**
>
> *Solution 1*. No:
>
> $$\begin{aligned}
> (3 + 4)^2 &= 7^2 \\
> &= 49,
> \end{aligned}$$
>
> while
>
> $$\begin{aligned}
> 3^2 + 4^2 &= 9 + 16 \\
> &= 25.
> \end{aligned}$$
>
> The difference, $49 - 25 = 24$, is $2 \cdot 3 \cdot 4$.
>
> To see where that extra term comes from, write the square as a product and apply the distributive law ([Theorem 8](#thm-mult-distr)) twice:
>
> $$\begin{aligned}
> (a + b)^2
> &= (a + b)(a + b)
> && \text{(definition of a square)}
> \\ &= (a + b)\,a + (a + b)\,b
> && \text{(distributive law)}
> \\ &= (a^2 + ba) + (ab + b^2)
> && \text{(distributive law, twice)}
> \\ &= a^2 + ab + ab + b^2
> && \text{(commutative and associative laws)}
> \\ &= a^2 + 2ab + b^2
> && \text{(collect like terms, }\href{#def-collect-like-terms}{\text{Definition~8}}\text{)}
> \end{aligned}$$
>
> The step “commutative and associative laws” uses [Theorem 5](#thm-prod-symmetric) to write $ba$ as $ab$, and [Theorem 3](#thm-sum-assoc) to drop the parentheses.

> **NOTE:**
>
> **Theorem 9 (Product of two sums (FOIL))** For any numbers $a$, $b$, $c$ and $d$,
>
> $$(a + b)(c + d) = ac + ad + bc + bd.$$
>
> The four products pair the **F**irst terms ($ac$), the **O**uter terms ($ad$), the **I**nner terms ($bc$) and the **L**ast terms ($bd$), which gives this rule its name, **FOIL**.

> **NOTE:**
>
> *Proof*. $$\begin{aligned}
> (a + b)(c + d)
> &= (a + b)\,c + (a + b)\,d
> && \text{(distributive law, }\href{#thm-mult-distr}{\text{Theorem~8}}\text{)}
> \\ &= (ac + bc) + (ad + bd)
> && \text{(distributive law, twice)}
> \\ &= ac + ad + bc + bd
> && \text{(commutative and associative laws)}
> \end{aligned}$$

> **NOTE:**
>
> **Example 9 (Checking FOIL)** With $a = 1$, $b = 2$, $c = 3$ and $d = 4$,
>
> $$\begin{aligned}
> (1 + 2)(3 + 4) &= 3 \cdot 7 \\
> &= 21,
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> 1 \cdot 3 + 1 \cdot 4 + 2 \cdot 3 + 2 \cdot 4 &= 3 + 4 + 6 + 8 \\
> &= 21.
> \end{aligned}$$
>
> Setting $c = a$ and $d = b$ gives $(a + b)^2 = a^2 + ab + ba + b^2$, which is the [square of a sum](#thm-square-of-a-sum) once $ab$ and $ba$ are combined.

> **NOTE:**
>
> **Theorem 10 (Square of a sum)** For any numbers $a$ and $b$,
>
> $$(a + b)^2 = a^2 + 2ab + b^2$$

> **NOTE:**
>
> *Proof*. By [Solution 1](#sol-square-of-a-sum).

> **NOTE:**
>
> *Remark 1* (Square of a difference). Replacing $b$ by $-b$ in [Theorem 10](#thm-square-of-a-sum) gives $(a - b)^2 = a^2 - 2ab + b^2$. For example, the square $(y - \hat y)^2$ of the difference between an observed value $y$ and a prediction $\hat y$ of it expands this way. With $y = 5$ and $\hat y= 3$,
>
> $$\begin{aligned}
> (5 - 3)^2 &= 2^2 \\
> &= 4,
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> 5^2 - 2 \cdot 5 \cdot 3 + 3^2 &= 25 - 30 + 9 \\
> &= 4.
> \end{aligned}$$

# 5 Summation notation

> **NOTE:**
>
> **Exercise 2 (Expand a sum)** The expression $\sum_{i=1}^{4} i^2$ is shorthand for a sum of four terms.
>
> 1.  Guess which four terms, and add them up.
> 2.  Write $\frac{1}{N}\sum_{i=1}^N\mathopen{}\left(y_i - \hat y_i\right)\mathclose{}^2$ for $N = 3$ without the $\sum$ symbol.

> **NOTE:**
>
> *Solution 2*.
>
> 1.  Replace $i$ by each of $1, 2, 3, 4$ in turn, and add the results:
>
>     $$\begin{aligned}
>     \sum_{i=1}^{4} i^2
>     &= 1^2 + 2^2 + 3^2 + 4^2
>     \\ &= 1 + 4 + 9 + 16
>     \\ &= 30
>     \end{aligned}$$
>
> 2.  Replace $i$ by each of $1, 2, 3$ in turn inside the parentheses, add the three squares, and multiply the total by $\frac{1}{3}$:
>
>     $$\frac{1}{3} \sum_{i=1}^{3} \mathopen{}\left(y_i - \hat y_i\right)\mathclose{}^2
>     = \frac{1}{3} \mathopen{}\left[
>       \mathopen{}\left(y_1 - \hat y_1\right)\mathclose{}^2
>       + \mathopen{}\left(y_2 - \hat y_2\right)\mathclose{}^2
>       + \mathopen{}\left(y_3 - \hat y_3\right)\mathclose{}^2
>     \right]\mathclose{}$$

> **NOTE:**
>
> **Definition 9 (Summation notation)** Let $m$ and $n$ be integers with $m \le n$, and let $a_m, a_{m+1}, \ldots, a_n$ be numbers. The **sum** of $a_m$ through $a_n$ is
>
> $$\sum_{i=m}^{n} a_i \stackrel{\text{def}}{=}a_m + a_{m+1} + \cdots + a_n$$
>
> The numbers $m$ and $n$ are its lower and upper limits: the first and last values of the index.

> **NOTE:**
>
> **Definition 10 (Index of a sum)** The variable $i$ in $\sum_{i=m}^{n} a_i$ ([Definition 9](#def-summation)) is the **index** of the sum.

> **NOTE:**
>
> *Remark 2* (The index is a placeholder). The name of the index does not change the sum: $\sum_{i=1}^na_i$ and $\sum_{j=1}^na_j$ are the same number. For example,
>
> $$\begin{aligned}
> \sum_{i=1}^{3} i &= 1 + 2 + 3 \\
> &= 6
> \end{aligned}$$
>
> and
>
> $$\begin{aligned}
> \sum_{j=1}^{3} j &= 1 + 2 + 3 \\
> &= 6.
> \end{aligned}$$

> **NOTE:**
>
> **Definition 11 (Empty sum)** When the upper limit is less than the lower limit ($n < m$), the sum $\sum_{i=m}^{n} a_i$ has no terms. By convention, such an **empty sum** equals $0$. For example, $\sum_{i=1}^{0} a_i = 0$.

> **NOTE:**
>
> **Exercise 3 (Rearrange a sum)** Let $c$ be a number, and let $a_1, a_2, a_3$ and $b_1, b_2, b_3$ be numbers. Using [Definition 9](#def-summation) and the rules of algebra above, show that:
>
> 1.  $\sum_{i=1}^{3} c\, a_i = c \sum_{i=1}^{3} a_i$;
> 2.  $\sum_{i=1}^{3} \mathopen{}\left(a_i + b_i\right)\mathclose{} = \sum_{i=1}^{3} a_i + \sum_{i=1}^{3} b_i$.
>
> Does either argument depend on there being exactly three terms?

> **NOTE:**
>
> *Solution 3*. Each step below applies [Definition 9](#def-summation), the distributive law ([Theorem 8](#thm-mult-distr)), or the commutative and associative laws of addition ([Theorem 2](#thm-sum-symmetric) and [Theorem 3](#thm-sum-assoc)).
>
> 1.  Expand the sum, then factor out $c$:
>
>     $$\begin{aligned}
>     \sum_{i=1}^{3} c\, a_i
>     &= c\, a_1 + c\, a_2 + c\, a_3
>     && \text{(expand the sum)}
>     \\ &= c \mathopen{}\left(a_1 + a_2 + a_3\right)\mathclose{}
>     && \text{(distributive law)}
>     \\ &= c \sum_{i=1}^{3} a_i
>     && \text{(collect the sum)}
>     \end{aligned}$$
>
> 2.  Expand the sum, then regroup the terms:
>
>     $$\begin{aligned}
>     \sum_{i=1}^{3} \mathopen{}\left(a_i + b_i\right)\mathclose{}
>     &= \mathopen{}\left(a_1 + b_1\right)\mathclose{} + \mathopen{}\left(a_2 + b_2\right)\mathclose{} + \mathopen{}\left(a_3 + b_3\right)\mathclose{}
>     && \text{(expand the sum)}
>     \\ &= \mathopen{}\left(a_1 + a_2 + a_3\right)\mathclose{} + \mathopen{}\left(b_1 + b_2 + b_3\right)\mathclose{}
>     && \text{(commutative and associative laws)}
>     \\ &= \sum_{i=1}^{3} a_i + \sum_{i=1}^{3} b_i
>     && \text{(collect the sum)}
>     \end{aligned}$$
>
> Neither argument uses the number of terms: the same steps work for any lower and upper limits.

> **NOTE:**
>
> **Theorem 11 (A constant factor comes out of a sum)** For any number $c$ and numbers $a_m, \ldots, a_n$,
>
> $$\sum_{i=m}^{n} c\, a_i = c \sum_{i=m}^{n} a_i$$

> **NOTE:**
>
> *Proof*. By [Solution 3](#sol-sum-rules), part 1.

> **NOTE:**
>
> **Theorem 12 (A sum of sums splits)** For any numbers $a_m, \ldots, a_n$ and $b_m, \ldots, b_n$,
>
> $$\sum_{i=m}^{n} \mathopen{}\left(a_i + b_i\right)\mathclose{} = \sum_{i=m}^{n} a_i + \sum_{i=m}^{n} b_i$$

> **NOTE:**
>
> *Proof*. By [Solution 3](#sol-sum-rules), part 2.

> **NOTE:**
>
> **Exercise 4 (Sum over a set)** Let $A = \mathopen{}\left\{-1, 2, 5\right\}\mathclose{}$ and let $f(x) = x^2$. The expression $\sum_{x \in A} f(x)$ means: add up $f(x)$ for each element $x$ of $A$.
>
> Write $\sum_{x \in A} f(x)$ without the $\sum$ symbol.

> **NOTE:**
>
> *Solution 4*. Replace $x$ by each element of $A$ in turn, and add:
>
> $$\sum_{x \in A} f(x) = f(-1) + f(2) + f(5)$$

> **NOTE:**
>
> **Exercise 5 (Value of a sum over a set)** In the setting of [Exercise 4](#exr-sum-over-set), find the [value](https://morrison-lab.github.io/mcs/functions.html#def-value) of $\sum_{x \in A} f(x)$.

> **NOTE:**
>
> *Solution 5*. Evaluate each [term](#def-term) and add:
>
> $$\begin{aligned}
> f(-1) + f(2) + f(5)
> &= (-1)^2 + 2^2 + 5^2
> \\ &= 1 + 4 + 25
> \\ &= 30
> \end{aligned}$$

> **NOTE:**
>
> **Exercise 6 (List the terms in a different order)** In the setting of [Exercise 4](#exr-sum-over-set), list the elements of $A$ in a different order, and write the [term](#def-term) for each element in that order.

> **NOTE:**
>
> *Solution 6*. In the order $5, -1, 2$, the [terms](#def-term) are $25$, $1$ and $4$.

> **NOTE:**
>
> **Exercise 7 (Add the terms in the new order)** In the setting of [Exercise 6](#exr-sum-over-set-reorder), add up the [terms](#def-term).

> **NOTE:**
>
> *Solution 7*. The total is $25 + 1 + 4 = 30$.

> **NOTE:**
>
> **Exercise 8 (Does the order change the total?)** Say whether the total in [Exercise 7](#exr-sum-over-set-reorder-total) is the same as the total in [Exercise 5](#exr-sum-over-set-value).

> **NOTE:**
>
> *Solution 8*. The total is the same, because addition does not depend on the order of the terms.

> **NOTE:**
>
> **Definition 12 (Sum over a finite set)** Let $A = \mathopen{}\left\{x_1, x_2, \ldots, x_k\right\}\mathclose{}$ be a [finite set](https://morrison-lab.github.io/mcs/functions.html#def-finite-set) with $k \ge 1$ different elements. Let $f$ be a [function](https://morrison-lab.github.io/mcs/functions.html#def-function) that gives a number $f(x)$ for each element $x$ of $A$. The **sum of** $f$ over $A$ is
>
> $$\sum_{x \in A} f(x) \stackrel{\text{def}}{=}f(x_1) + f(x_2) + \cdots + f(x_k)$$
>
> If $A$ has no elements, the sum has no terms, and by convention it equals $0$.

> **NOTE:**
>
> *Remark 3* (The order of the terms does not matter). The order in which we list the elements of $A$ does not change the sum. The reason is that addition is commutative and associative: we can reorder and regroup the terms of a finite sum without changing the total. For example, if $A = \mathopen{}\left\{1, 2, 3\right\}\mathclose{}$ and $f(x) = x^2$, listing $A$ as $1, 2, 3$ gives $1 + 4 + 9 = 14$, and listing $A$ as $3, 1, 2$ gives $9 + 1 + 4 = 14$. [Exercise 5](#exr-sum-over-set-value) and [Exercise 7](#exr-sum-over-set-reorder-total) show another example.
>
> When $A = \mathopen{}\left\{m, m+1, \ldots, n\right\}\mathclose{}$, this sum is the same as $\sum_{i=m}^{n} f(i)$ from [Definition 9](#def-summation).

> **NOTE:**
>
> *Remark 4* (Leaving the set out). Some authors leave the set out and write $\sum_{x} f(x)$. This shorthand means the sum over every value $x$ can take, $\sum_{x \in \mathcal{R}(x)} f(x)$, where $\mathcal{R}(x)$ is the [range](#def-range-of-variable) of $x$. For example, if $x$ is the outcome of one roll of a six-sided die, $\sum_{x} f(x)$ means $\sum_{x \in \mathopen{}\left\{1, 2, 3, 4, 5, 6\right\}\mathclose{}} f(x)$. In these notes, we write the set out in full (see [Limits of sums and notational shorthands](#sec-notational-shorthands)).

> **NOTE:**
>
> **Example 10 (A sum over the empty set)** For example, $\sum_{x \in \mathopen{}\left\{\right\}\mathclose{}} x^2 = 0$.

# 6 Quotients

> **NOTE:**
>
> **Definition 13 (Quotient)** For real numbers $a$ and $b$ with $b \neq 0$, the **quotient** of $a$ by $b$ is the result of dividing $a$ by $b$:
>
> $$\frac{a}{b}$$

> **NOTE:**
>
> **Definition 14 (Fraction)** A quotient $\frac{a}{b}$ ([Definition 13](#def-quotient)) is also called a **fraction**.

> **NOTE:**
>
> **Definition 15 (Numerator)** In a fraction $\frac{a}{b}$ ([Definition 14](#def-fraction)), $a$ is its **numerator**.

> **NOTE:**
>
> **Definition 16 (Denominator)** In a fraction $\frac{a}{b}$ ([Definition 14](#def-fraction)), $b$ is its **denominator**.

> **NOTE:**
>
> **Example 11 (Numerator and denominator of a fraction)** The fraction $\frac{6}{4}$ has numerator $6$ and denominator $4$.

> **NOTE:**
>
> **Example 12 (A quotient)** The quotient of $6$ by $4$ is $\frac{6}{4} = 1.5$. The quotient of $6$ by $0$ is undefined, because [Definition 13](#def-quotient) requires a nonzero denominator.

> **NOTE:**
>
> **Definition 17 (Follow-up)** In a study that observes participants over time, a participant’s **follow-up** is the length of time the study observes that participant.

> **NOTE:**
>
> **Definition 18 (Person-years)** In a study that observes participants over time, the study’s **person-years** are the sum of the follow-up times ([Definition 17](#def-follow-up)) of all participants, measured in years.

> **NOTE:**
>
> **Example 13 (Counting person-years)** If $10$ people are each followed for $2$ years, the study has $10 \cdot 2 = 20$ person-years. If one person is followed for $3$ years and another for $\tfrac{1}{2}$ year, the study has $3 + \tfrac{1}{2} = 3.5$ person-years.

> **NOTE:**
>
> **Definition 19 (Rate)** A **rate** is a quotient of two quantities, usually with a denominator that measures time, such as weeks or person-years of follow-up ([Definition 18](#def-person-years)). For example, $12$ new cases in $4$ weeks is a rate of $\frac{12}{4} = 3$ new cases per week, and $30$ cases over $10{,}000$ person-years of follow-up is a rate of $\frac{30}{10{,}000} = 0.003$ cases per person-year.

cf. <https://en.wikipedia.org/wiki/Rate_(mathematics)>

> **NOTE:**
>
> **Definition 20 (Ratios)** A **ratio** is a quotient in which the numerator and denominator are measured using the same unit scales.
>
> cf. <https://en.wikipedia.org/wiki/Ratio>

> **NOTE:**
>
> **Example 14 (A ratio, and a quotient that is not one)**  
>
> - A board $150$ cm long and one $75$ cm long have length ratio $\tfrac{150 \text{ cm}}{75 \text{ cm}} = 2$: both lengths are in centimeters, so the units cancel and the ratio has none.
> - A sample of mass $300$ g and volume $150$ cm$^3$ gives the quotient $\tfrac{300 \text{ g}}{150 \text{ cm}^3} = 2$ g per cm$^3$, its density. The numerator and denominator are in different units, so this quotient is not a ratio.

> **NOTE:**
>
> **Definition 21 (Proportion)** In statistics, a **proportion** typically means a ratio where the numerator represents a subset of the denominator.
>
> See <https://en.wikipedia.org/wiki/Population_proportion>.
>
> See also <https://en.wikipedia.org/wiki/Proportion_(mathematics)> for other meanings.

> **NOTE:**
>
> **Example 15 (A proportion, and a ratio that is not one)** In a clinic with $120$ patients, $30$ of whom smoke:
>
> - the proportion of patients who smoke is $\tfrac{30}{120} = 0.25$: the $30$ smokers are a subset of the $120$ patients;
> - the ratio of smokers to non-smokers is $\tfrac{30}{90} = \tfrac{1}{3}$. Both counts are of patients, so this quotient is a ratio, but it is not a proportion: the $30$ smokers are not part of the $90$ non-smokers.

> **NOTE:**
>
> **Definition 22 (Proportional)** Two functions $f(x)$ and $g(x)$ are **proportional** if their ratio $\frac{f(x)}{g(x)}$ does not depend on $x$. (cf. <https://en.wikipedia.org/wiki/Proportionality_(mathematics)>)

> **NOTE:**
>
> **Example 16 (Proportional and non-proportional functions)**  
>
> - $f(x) = 6x^2$ and $g(x) = 2x^2$ are proportional: for $x \ne 0$,
>
>   $$\begin{aligned}
>   \tfrac{f(x)}{g(x)} &= \tfrac{6x^2}{2x^2} \\
>   &= 3,
>   \end{aligned}$$
>
>   which does not depend on $x$.
>
> - $f(x) = x + 1$ and $g(x) = x$ are not proportional: for $x \ne 0$,
>
>   $$\begin{aligned}
>   \tfrac{f(x)}{g(x)} &= \tfrac{x + 1}{x} \\
>   &= \tfrac{x}{x} + \tfrac{1}{x} \\
>   &= 1 + \tfrac{1}{x},
>   \end{aligned}$$
>
>   which is $2$ at $x = 1$ and $\tfrac{3}{2}$ at $x = 2$.

Additional reference for elementary algebra: <https://en.wikipedia.org/wiki/Population_proportion#Mathematical_definition>

# 7 Limits of sums and notational shorthands

> **NOTE:**
>
> **Definition 23 (Lower limit of a sum or integral)** In a [sum](#def-summation) $\sum_{i=m}^{n} a_i$, the **lower limit** $m$ is the first value of the index $i$. In an [integral](calculus-integration.llms.md#def-riemann-integral) $\int_a^b f(x)\,dx$, the **lower limit** $a$ is the left end of the interval of integration. In both, the lower limit is written below the symbol.

> **NOTE:**
>
> **Definition 24 (Upper limit of a sum or integral)** In a [sum](#def-summation) $\sum_{i=m}^{n} a_i$, the **upper limit** $n$ is the last value of the index $i$. In an [integral](calculus-integration.llms.md#def-riemann-integral) $\int_a^b f(x)\,dx$, the **upper limit** $b$ is the right end of the interval of integration. In both, the upper limit is written above the symbol.

> **NOTE:**
>
> **Definition 25 (Limits of integration)** In an [integral](calculus-integration.llms.md#def-riemann-integral) $\int_a^b f(x)\,dx$, the lower limit ([Definition 23](#def-lower-upper-limits)) $a$ and the upper limit ([Definition 24](#def-upper-limit)) $b$ together are the **limits of integration**.

> **NOTE:**
>
> **Example 17 (Reading off limits)**  
>
> - In $\sum_{i=2}^{5} i^2$, the lower limit is $2$ and the upper limit is $5$, so the sum is $2^2 + 3^2 + 4^2 + 5^2 = 54$.
> - In $\int_0^3 x\,dx$, the lower limit is $0$ and the upper limit is $3$.

> **NOTE:**
>
> *Remark 5* (Two meanings of “limit”). The lower and upper limits of a sum or integral ([Definition 23](#def-lower-upper-limits), [Definition 24](#def-upper-limit)) are not limits in the calculus sense, such as the [limit of a function](calculus-derivatives.llms.md#def-limit) or the [limit of a sequence](algebra-polynomials.llms.md#def-sequence-limit). They are the ends of the values the index or variable runs over. The two meanings meet in an integral such as $\int_0^{\infty} f(x)\,dx$, which means $\lim_{b \to \infty} \int_0^b f(x)\,dx$: the upper limit $b$ is sent to infinity by a calculus limit.

> **NOTE:**
>
> **Definition 26 (Notational shorthand)** A **notational shorthand** is a way of writing an [expression](https://morrison-lab.github.io/mcs/expressions-algorithms.html#def-expression) that leaves part of the expression out, such as the set a sum runs over or the limits of an integral, and relies on the reader to supply the missing part from context.

> **NOTE:**
>
> **Definition 27 (Full form)** The **full form** of a notational shorthand ([Definition 26](#def-notational-shorthand)) is the expression with every part written out.

> **NOTE:**
>
> In these notes, we avoid notational shorthands in permanent writing and write the full form of each expression, even where a shorthand would be shorter. A reader who supplies the missing part of a shorthand from a different context than the writer intended reads a different expression than the one the writer meant. Handwritten board work is often less complete, but it should still write out ranges and limits where it can.
>
> We make one exception: writing two factors side by side means multiplying them, as in $2x$ for $2 \cdot x$ and $ab$ for $a \cdot b$. We still write the multiplication sign when the side-by-side form could be misread:
>
> - $2 \cdot 3$, not $23$, which reads as twenty-three;
> - $a \cdot(b + c)$ when $a$ could be a function, since $a(b + c)$ could mean $a$ evaluated at $b + c$.

> **NOTE:**
>
> **Definition 28 (Range of a variable)** The **range** of a variable $x$, written $\mathcal{R}(x)$, is the [set](https://morrison-lab.github.io/mcs/chapters/sets.html#def-set) of values that $x$ can take.

For example, if $x$ is the number of heads in two tosses of a coin, then $\mathcal{R}(x) = \mathopen{}\left\{0, 1, 2\right\}\mathclose{}$. A [random variable](https://morrison-lab.github.io/pds/random-variables.html#def-random-variable) $X$ (defined in the Morrison Lab’s probability notes) is a [function](https://morrison-lab.github.io/mcs/functions.html#def-function), and the set of values $X$ can take, $\mathcal{R}(X)$, is the [image](https://morrison-lab.github.io/mcs/functions.html#def-image) of $X$. These notes use “range” only for variables: for a function, “range” can mean either the image or the codomain ([Range](https://morrison-lab.github.io/mcs/functions.html#def-range)). In statistics, “the range” of a dataset can also mean its largest value minus its smallest value; $\mathcal{R}(x)$ is a set, not that difference.

[Table 1](#tbl-notational-shorthands) lists shorthands you may encounter in other sources, the full form each one abbreviates, and the part each one leaves out. In the table, $x_1, \ldots, x_n$ and $a_1, \ldots, a_n$ are $n$ numbers, $b_{ij}$ is the entry in row $i$ and column $j$ of an $m \times n$ array, $k$ is an integer with $1 \le k \le n$, $f$ is a [function](https://morrison-lab.github.io/mcs/functions.html#def-function) from $\mathbb{R}$ to $\mathbb{R}$, and, in the first row, $\mathcal{R}(x)$ is a finite set.

> **NOTE:**
>
> | Shorthand | Full form | Part left out |
> |:---|:---|:---|
> | $\sum_{x} f(x)$ | $\sum_{x \in \mathcal{R}(x)} f(x)$ | the set the sum runs over ([sum over a finite set](#def-sum-over-set)) |
> | $\sum_{i} x_i$ | $\sum_{i=1}^nx_i$ | the lower and upper limits of the index ([summation notation](#def-summation)) |
> | $\sum x_i$ | $\sum_{i=1}^nx_i$ | the index and its lower and upper limits |
> | $\prod_{i} x_i$ | $\prod_{i=1}^nx_i$ | the lower and upper limits of the index |
> | $\prod x_i$ | $\prod_{i=1}^nx_i$ | the index and its lower and upper limits |
> | $\sum_{i, j} b_{ij}$ | $\sum_{i=1}^{m} \sum_{j=1}^nb_{ij}$ | the limits of both indices |
> | $\sum_{i \neq k} a_i$ | $\sum_{i \in \mathopen{}\left\{1, \ldots, n\right\}\mathclose{} \setminus \mathopen{}\left\{k\right\}\mathclose{}} a_i$ | the set $\mathopen{}\left\{1, \ldots, n\right\}\mathclose{}$ of indices that $k$ is removed from |
> | $\int f(x)\,dx$, used for a number | $\int_{-\infty}^{\infty} f(x)\,dx$ | the limits of integration |
> | $\int f$ | $\int_{-\infty}^{\infty} f(x)\,dx$ | the limits, the variable of integration, and the differential $dx$ |
> | $x_{1:n}$ | $(x_1, x_2, \ldots, x_n)$ | the explicit list of entries |
> | “the function $x^2$” | “the function $f : \mathbb{R}\to \mathbb{R}$ with $f(x) = x^2$” | the function’s name, domain, and codomain |
>
> Table 1: Common notational shorthands and their full forms

> **NOTE:**
>
> *Remark 6* ($\int f(x)\,dx$ has two readings). In calculus, $\int f(x)\,dx$ with no limits is not a shorthand: it is the [indefinite integral](calculus-integration.llms.md#def-indefinite-integral) of $f$, a family of functions rather than a number. Some sources, especially in probability, also write $\int f(x)\,dx$ for the number $\int_{-\infty}^{\infty} f(x)\,dx$. Writing the limits out tells the reader which of the two is meant.

> **NOTE:**
>
> **Example 18 (Writing out an index shorthand)** Let $n = 3$ and $(x_1, x_2, x_3) = (2, 5, 1)$. A source that writes $\sum_{i} x_i$ means $\sum_{i=1}^{3} x_i$:
>
> $$\begin{aligned}
> \sum_{i=1}^{3} x_i
> &= x_1 + x_2 + x_3
> && \text{(definition of summation notation)} \\
> &= 2 + 5 + 1
> && \text{(substitute the values)} \\
> &= 8
> && \text{(add)}
> \end{aligned}$$

# Definitions on this page

- [Definition 1 (Term of a sum)](#def-term)
- [Definition 2 (Identity element)](#def-identity-element)
- [Definition 3 (Commutative operation)](#def-commutative)
- [Definition 4 (Associative operation)](#def-associative)
- [Definition 5 (Distributes over)](#def-distributes-over)
- [Definition 6 (Distributive law)](#def-distributive)
- [Definition 7 (Like terms)](#def-like-terms)
- [Definition 8 (Collecting like terms)](#def-collect-like-terms)
- [Definition 9 (Summation notation)](#def-summation)
- [Definition 10 (Index of a sum)](#def-summation-index)
- [Definition 11 (Empty sum)](#def-empty-sum)
- [Definition 12 (Sum over a finite set)](#def-sum-over-set)
- [Definition 13 (Quotient)](#def-quotient)
- [Definition 14 (Fraction)](#def-fraction)
- [Definition 15 (Numerator)](#def-numerator)
- [Definition 16 (Denominator)](#def-denominator)
- [Definition 17 (Follow-up)](#def-follow-up)
- [Definition 18 (Person-years)](#def-person-years)
- [Definition 19 (Rate)](#def-rate)
- [Definition 20 (Ratios)](#def-ratio)
- [Definition 21 (Proportion)](#def-proportion)
- [Definition 22 (Proportional)](#def-proportional)
- [Definition 23 (Lower limit of a sum or integral)](#def-lower-upper-limits)
- [Definition 24 (Upper limit of a sum or integral)](#def-upper-limit)
- [Definition 25 (Limits of integration)](#def-limits-of-integration)
- [Definition 26 (Notational shorthand)](#def-notational-shorthand)
- [Definition 27 (Full form)](#def-full-form)
- [Definition 28 (Range of a variable)](#def-range-of-variable)

Back to top

## References

\[1\]

Wikipedia contributors, “Identity element — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Identity_element>

\[2\]

Wikipedia contributors, “Commutative property — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Commutative_property>

\[3\]

Wikipedia contributors, “Associative property — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Associative_property>

\[4\]

Wikipedia contributors, “Distributive property — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Distributive_property>

\[5\]

Wikipedia contributors, “Like terms — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Like_terms>
