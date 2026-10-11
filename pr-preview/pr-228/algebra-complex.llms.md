# Complex Numbers

Code

Published

Last modified: 2026-10-10 18:58:14 (PDT)

## 1 Complex numbers

> **NOTE:**
>
> **Definition 1 (Imaginary unit)** The **imaginary unit** \\i\\ is a number whose square is \\-1\\:
>
> \\i^2 \stackrel{\text{def}}{=}-1.\\
>
> Apart from that one rule, \\i\\ obeys the usual rules of arithmetic:
>
> - sums and products with \\i\\ are [commutative](algebra-sums.llms.md#def-commutative);
> - sums and products with \\i\\ are [associative](algebra-sums.llms.md#def-associative);
> - multiplication [distributes](algebra-sums.llms.md#def-distributive) over addition.

Axler ([2024](#ref-axler2024linear), Definition 1.1, p. 2) makes this idea rigorous: it defines a complex number as an ordered pair \\(a, b)\\ of real numbers, written \\a + bi\\, defines addition and multiplication of such pairs, writes \\0 + 1i\\ as \\i\\, and leaves it to the reader to verify that \\i^2 = -1\\.

> **NOTE:**
>
> **Example 1 (Powers of the imaginary unit)** The powers of \\i\\ repeat in a cycle of four:
>
> \\ \begin{aligned} i^3 &= i^2 \cdot i && \text{(split off one factor of } i \text{)} \\ &= (-1) \cdot i && \text{(}\href{#def-imaginary-unit}{\text{Definition~1}}\text{)} \\ &= -i && \text{(multiply)} \end{aligned} \\
>
> and
>
> \\ \begin{aligned} i^4 &= i^2 \cdot i^2 && \text{(split the power into two squares)} \\ &= (-1) \cdot(-1) && \text{(}\href{#def-imaginary-unit}{\text{Definition~1}}\text{, twice)} \\ &= 1 && \text{(multiply)} \end{aligned} \\
>
> so the cycle starts again:
>
> \\ \begin{aligned} i^5 &= i^4 \cdot i && \text{(split off one factor of } i \text{)} \\ &= 1 \cdot i && \text{(} i^4 = 1 \text{)} \\ &= i && \text{(multiply)} \end{aligned} \\
>
> and the powers run \\i, -1, -i, 1, i, \ldots\\.

> **NOTE:**
>
> **Example 2 (No real number squares to \\-1\\)** The imaginary unit is not a real number, because the square of every real number \\x\\ is at least \\0\\:
>
> - if \\x \ge 0\\, then \\x^2 = x \cdot x\\ is a product of two nonnegative numbers, so \\x^2 \ge 0\\;
> - if \\x \< 0\\, then \\x^2 = x \cdot x\\ is a product of two negative numbers, so \\x^2 \> 0\\.
>
> For instance, \\3^2 = 9\\ and \\(-3)^2 = 9\\; neither is \\-1\\. So the equation \\x^2 = -1\\ has no real solution, and [Definition 1](#def-imaginary-unit) introduces a new number to solve it.

> **NOTE:**
>
> **Theorem 1 (The number \\-i\\ also squares to \\-1\\)** \\(-i)^2 = -1.\\

> **NOTE:**
>
> *Proof*. \\ \begin{aligned} (-i)^2 &= (-1)^2\\i^2 && \text{(} -i = (-1) \cdot i \text{, and } (ab)^2 = a^2 b^2 \text{ because products commute and associate)} \\ &= 1 \cdot(-1) && \text{(} (-1)^2 = 1 \text{ and }\href{#def-imaginary-unit}{\text{Definition~1}}\text{)} \\ &= -1 && \text{(multiply)} \end{aligned} \\

> **NOTE:**
>
> **Example 3 (Squaring \\i\\ and \\-i\\ in R)** R has the imaginary unit as `1i`. The code below squares it and its negative.
>
> ``` downlit
> squares <- c(i = (1i)^2, minus_i = (-1i)^2)
> squares
> #>       i minus_i 
> #> -1+0i -1+0i
> ```
>
> Both squares have real part -1 and imaginary part 0, as [Definition 1](#def-imaginary-unit) and [Theorem 1](#thm-negative-imaginary-unit) say.

> **NOTE:**
>
> *Remark 1* (The rule does not tell \\i\\ from \\-i\\). Because \\-i\\ obeys the same rule as \\i\\ ([Theorem 1](#thm-negative-imaginary-unit)), the rule \\i^2 = -1\\ does not single one of them out. The symbol \\i\\ names one of these two square roots of \\-1\\, chosen once and for all.

> **NOTE:**
>
> **Definition 2 (Complex number)** A **complex number** is a number of the form
>
> \\z = a + b\\i,\\
>
> where \\a\\ and \\b\\ are real numbers and \\i\\ is the imaginary unit ([Definition 1](#def-imaginary-unit)).
>
> - The **real part** of \\z\\ is \\\operatorname{Re} z \stackrel{\text{def}}{=}a\\.
> - The **imaginary part** of \\z\\ is \\\operatorname{Im} z \stackrel{\text{def}}{=}b\\.
> - The set of all complex numbers is \\\mathbb{C}\stackrel{\text{def}}{=}\\a + b\\i : a, b \in \mathbb{R}\\\\.
>
> Two complex numbers are equal exactly when their real parts are equal and their imaginary parts are equal.

Axler ([2024](#ref-axler2024linear), Definition 1.1, p. 2) defines \\\mathbb{C}\\ as the set of ordered pairs \\(a, b)\\ of real numbers, written \\a + bi\\, and Axler ([2024](#ref-axler2024linear), Definition 4.1, p. 120) defines the real and imaginary parts.

> **NOTE:**
>
> **Example 4 (Real and imaginary parts)** For \\z = 2 - 5\\i\\, the real part is \\\operatorname{Re} z = 2\\ and the imaginary part is \\\operatorname{Im} z = -5\\: the imaginary part is the real number \\-5\\, not \\-5\\i\\.
>
> The numbers \\1 + i\\ and \\1 - i\\ have the same real part, \\1\\, but different imaginary parts, \\1\\ and \\-1\\, so they are different complex numbers.
>
> The real number \\7\\ is the complex number \\7 + 0\\i\\, with real part \\7\\ and imaginary part \\0\\.

> **NOTE:**
>
> **Theorem 2 (Every real number is a complex number)** A complex number \\z\\ is a real number exactly when \\\operatorname{Im} z = 0\\. In particular, every real number \\a\\ is the complex number \\a + 0\\i\\, with \\\operatorname{Re} a = a\\ and \\\operatorname{Im} a = 0\\, so \\\mathbb{R}\\ is a subset of \\\mathbb{C}\\.

> **NOTE:**
>
> *Proof*. Let \\a\\ be a real number. Since \\0\\i = 0\\,
>
> \\ \begin{aligned} a + 0\\i &= a + 0 && \text{(} 0\\i = 0 \text{)} \\ &= a && \text{(}\href{algebra-sums.qmd#thm-add-ident}{\text{Theorem~4 in Convexity, Infimum and Sums}}\text{)} \end{aligned} \\
>
> so \\a\\ is the complex number \\a + 0\\i\\, whose imaginary part is \\0\\. The real part of \\a + 0\\i\\ is \\a\\, and by the equality rule in [Definition 2](#def-complex-number) no other pair of real and imaginary parts gives the same number.
>
> Conversely, if \\z = a + b\\i\\ has \\b = \operatorname{Im} z = 0\\, then \\z = a + 0\\i = a\\ by the same calculation, so \\z\\ is real.

> **NOTE:**
>
> **Example 5 (Which complex numbers are real)** R stores complex numbers as a real part and an imaginary part. The code below converts the real number \\7\\ to a complex number and reads the parts of three complex numbers.
>
> ``` downlit
> z <- c(as.complex(7), 2 - 5i, 3 + 0i)
> data.frame(z = z, re = Re(z), im = Im(z), is_real = Im(z) == 0)
> ```
>
> The real number \\7\\ becomes the complex number 7+0i, with imaginary part 0. Of the 3 numbers, 2 have imaginary part \\0\\, and by [Theorem 2](#thm-reals-in-complex) these are the real ones. The number \\2 - 5\\i\\ is not real, because its imaginary part is -5.

> **NOTE:**
>
> **Theorem 3 (Adding and multiplying complex numbers)** For real numbers \\a, b, c, d\\:
>
> \\(a + b\\i) + (c + d\\i) = (a + c) + (b + d)\\i\\
>
> and
>
> \\(a + b\\i)(c + d\\i) = (ac - bd) + (ad + bc)\\i.\\

> **NOTE:**
>
> *Proof*. **Sum.**
>
> \\ \begin{aligned} (a + b\\i) + (c + d\\i) &= a + c + b\\i + d\\i && \text{(rearrange the terms)} \\ &= (a + c) + (b + d)\\i && \text{(factor out } i \text{)} \end{aligned} \\
>
> **Product.**
>
> \\ \begin{aligned} (a + b\\i)(c + d\\i) &= ac + ad\\i + bc\\i + bd\\i^2 && \text{(distribute)} \\ &= ac + ad\\i + bc\\i - bd && \text{(}\href{#def-imaginary-unit}{\text{Definition~1}}\text{)} \\ &= (ac - bd) + (ad + bc)\\i && \text{(group the real terms and the terms with } i \text{)} \end{aligned} \\

Axler ([2024](#ref-axler2024linear), Definition 1.1, p. 2) takes these two formulas as the definitions of addition and multiplication.

> **NOTE:**
>
> **Example 6 (Adding and multiplying two complex numbers)** Let \\w = 1 + 2\\i\\ and \\z = 3 - i\\. Their sum is
>
> \\ \begin{aligned} w + z &= (1 + 3) + (2 + (-1))\\i && \text{(}\href{#thm-complex-arithmetic}{\text{Theorem~3}}\text{, sum)} \\ &= 4 + i && \text{(add)} \end{aligned} \\
>
> and their product, multiplying out directly, is
>
> \\ \begin{aligned} w z &= 1 \cdot 3 + 1 \cdot(-i) + 2\\i \cdot 3 + 2\\i \cdot(-i) && \text{(distribute)} \\ &= 3 - i + 6\\i - 2\\i^2 && \text{(multiply)} \\ &= 3 - i + 6\\i + 2 && \text{(}\href{#def-imaginary-unit}{\text{Definition~1}}\text{)} \\ &= (3 + 2) + (-1 + 6)\\i && \text{(group the real terms and the terms with } i \text{)} \\ &= 5 + 5\\i && \text{(add)} \end{aligned} \\
>
> The product formula in [Theorem 3](#thm-complex-arithmetic) gives the same answer: with \\a = 1\\, \\b = 2\\, \\c = 3\\ and \\d = -1\\,
>
> \\ \begin{aligned} ac - bd &= 3 - (-2) \\ &= 5 \end{aligned} \\
>
> and
>
> \\ \begin{aligned} ad + bc &= -1 + 6 \\ &= 5. \end{aligned} \\

> **NOTE:**
>
> **Definition 3 (Complex conjugate)** The **complex conjugate** of a complex number \\z = a + b\\i\\ ([Definition 2](#def-complex-number)) is
>
> \\\overline{z} \stackrel{\text{def}}{=}a - b\\i.\\

Axler ([2024](#ref-axler2024linear), Definition 4.2, p. 120) gives the same definition, as \\\overline{z} = \operatorname{Re} z - (\operatorname{Im} z)\\i\\.

> **NOTE:**
>
> **Example 7 (Complex conjugates)**  
>
> - \\\overline{3 + 4\\i} = 3 - 4\\i\\.
>
> - \\ \begin{aligned} \overline{-2\\i} &= \overline{0 + (-2)\\i} \\ &= 0 - (-2)\\i \\ &= 2\\i. \end{aligned} \\
>
> - \\ \begin{aligned} \overline{5} &= \overline{5 + 0\\i} \\ &= 5 - 0\\i \\ &= 5: \end{aligned} \\
>
>   a real number is its own complex conjugate. A complex number with a nonzero imaginary part, such as \\3 + 4\\i\\, is not.

> **NOTE:**
>
> **Definition 4 (Absolute value (modulus) of a complex number)** The **absolute value**, or **modulus**, of a complex number \\z = a + b\\i\\ ([Definition 2](#def-complex-number)) is
>
> \\\mathopen{}\left\|z\right\|\mathclose{} \stackrel{\text{def}}{=}\sqrt{a^2 + b^2}.\\

Axler ([2024](#ref-axler2024linear), Definition 4.2, p. 120) gives the same definition.

> **NOTE:**
>
> **Example 8 (Absolute values of complex numbers)**  
>
> - \\ \begin{aligned} \mathopen{}\left\|3 + 4\\i\right\|\mathclose{} &= \sqrt{3^2 + 4^2} \\ &= \sqrt{25} \\ &= 5. \end{aligned} \\
>
> - \\ \begin{aligned} \mathopen{}\left\|-2\\i\right\|\mathclose{} &= \sqrt{0^2 + (-2)^2} \\ &= \sqrt{4} \\ &= 2. \end{aligned} \\
>
> - For a real number \\a = a + 0\\i\\,
>
>   \\ \begin{aligned} \mathopen{}\left\|a\right\|\mathclose{} &= \sqrt{a^2 + 0^2} \\ &= \sqrt{a^2}, \end{aligned} \\
>
>   which is the usual absolute value of \\a\\; for instance,
>
>   \\ \begin{aligned} \mathopen{}\left\|-3\right\|\mathclose{} &= \sqrt{9} \\ &= 3. \end{aligned} \\

> **NOTE:**
>
> **Theorem 4 (A complex number times its conjugate)** For every complex number \\z\\,
>
> \\z\\\overline{z} = \mathopen{}\left\|z\right\|\mathclose{}^2.\\
>
> In particular, \\z\\\overline{z}\\ is a nonnegative real number.

> **NOTE:**
>
> *Proof*. Write \\z = a + b\\i\\ with \\a, b\\ real. Then
>
> \\ \begin{aligned} z\\\overline{z} &= (a + b\\i)(a - b\\i) && \text{(}\href{#def-complex-conjugate}{\text{Definition~3}}\text{)} \\ &= a^2 - ab\\i + ab\\i - b^2\\i^2 && \text{(distribute)} \\ &= a^2 - b^2\\i^2 && \text{(cancel } ab\\i \text{)} \\ &= a^2 + b^2 && \text{(}\href{#def-imaginary-unit}{\text{Definition~1}}\text{)} \\ &= \mathopen{}\left\|z\right\|\mathclose{}^2 && \text{(}\href{#def-complex-modulus}{\text{Definition~4}}\text{)} \end{aligned} \\

Axler ([2024](#ref-axler2024linear), result 4.4, p. 121) lists this identity among the properties of complex numbers.

> **NOTE:**
>
> **Example 9 (Multiplying \\3 + 4\\i\\ by its conjugate)** \\ \begin{aligned} &(3 + 4\\i)(3 - 4\\i) \\ &= 9 - 12\\i + 12\\i - 16\\i^2 && \text{(distribute)} \\ &= 9 - 16\\i^2 && \text{(cancel } 12\\i \text{)} \\ &= 9 + 16 && \text{(}\href{#def-imaginary-unit}{\text{Definition~1}}\text{)} \\ &= 25 && \text{(add)} \end{aligned} \\
>
> which is \\\mathopen{}\left\|3 + 4\\i\right\|\mathclose{}^2 = 5^2\\ from [Example 8](#exm-complex-modulus), as [Theorem 4](#thm-conj-product) says.

Back to top

## References

Axler, Sheldon. 2024. *Linear Algebra Done Right*. 4th ed. Undergraduate Texts in Mathematics. Springer. <https://doi.org/10.1007/978-3-031-41026-0>.
