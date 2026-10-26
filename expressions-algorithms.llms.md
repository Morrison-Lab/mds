# Expressions and Algorithms

Code

Published

Last modified: 2026-10-26 12:55:55 (PDT)

> **NOTE:**
>
> *Remark*. A function can be written down as an expression and computed by an algorithm. This page defines expressions, which write down the [functions](functions.llms.md) in the Morrison Lab’s probability and statistics notes, the parse trees of expressions, and algorithms, which compute those functions.

## 1 Expressions

> **NOTE:**
>
> **Definition 1 (Expression)** An **expression** [\[1\]](#ref-wikipedia_expression_mathematics) is a string of symbols, built from constants, variables, operations and function names according to the rules of the notation. When its variables are read as inputs, an expression *denotes* a [function](functions.llms.md#def-function): it fixes the output for each input.

> **NOTE:**
>
> **Example 1 (Two expressions for one function)** The expressions \\a x^2 + b x + c\\ and \\(a x + b)\\x + c\\ denote the same function of \\x\\ for any fixed \\a\\, \\b\\ and \\c\\, because they give the same value at every \\x\\.
>
> Precedence parses \\a x^2 + b x + c\\ as a sum of three terms: the power \\x^2\\ is applied first, then \\a\\ multiplies \\x^2\\ and \\b\\ multiplies \\x\\, and the three products are added. The parentheses in \\(a x + b)\\x + c\\ force a different tree: \\a\\ multiplies \\x\\, \\b\\ is added, the sum multiplies \\x\\, and \\c\\ is added.

> **NOTE:**
>
> **Definition 2 (Parse tree)** The **parse tree** [\[2\]](#ref-wikipedia_parse_tree) of an [expression](#def-expression) is the tree that shows how its symbols group into operations. Its leaves are the constants and variables of the expression, and each internal node is an operation applied to the nodes below it.

> **NOTE:**
>
> **Example 2 (The parse tree of a polynomial)** The parse tree of \\(a x + b)\\x + c\\, with each operation having two children, is:
>
> - the root \\+\\, whose children are
>   - the node \\\times\\, whose children are
>     - the node \\+\\, whose children are
>       - the node \\\times\\, whose children are the leaves \\a\\ and \\x\\,
>       - the leaf \\b\\;
>     - the leaf \\x\\;
>   - the leaf \\c\\.
>
> Read from the leaves up, the tree says to multiply \\a\\ by \\x\\, add \\b\\, multiply by \\x\\, and add \\c\\. The expression \\a x^2 + b x + c\\ has a different tree. Its root is the \\+\\ whose children are \\a x^2 + b x\\ and \\c\\, and the first of these is a \\+\\ whose children are \\a x^2\\ and \\b x\\.

> **NOTE:**
>
> *Remark 1* (Expressions, precedence and parse trees). An expression does not say how to compute the output it fixes, and many expressions denote the same function. A function is the input-output relationship itself; an expression is one way of writing it down.
>
> The rules of operator precedence (PEMDAS: parentheses, exponents, multiplication and division, addition and subtraction) decide how the symbols group. They turn the string into its parse tree ([Definition 2](#def-parse-tree)).

## 2 Algorithms

> **NOTE:**
>
> **Definition 3 (Algorithm)** An **algorithm** [\[3\]](#ref-wikipedia_algorithm) is a finite list of unambiguous steps that, applied to any valid input, halts and returns an output.

> **NOTE:**
>
> **Definition 4 (Computes)** An [algorithm](#def-algorithm) **computes** a [function](functions.llms.md#def-function) when, for each [input](functions.llms.md#def-argument), it returns the function’s [value](functions.llms.md#def-value) at that input.

> **NOTE:**
>
> **Example 3 (Two algorithms for one function)** Take the function that [Example 1](#exm-expression) writes two ways. Evaluating the tree of \\a x^2 + b x + c\\, with \\x^2\\ computed as \\x \cdot x\\, takes three multiplications and two additions. Evaluating the tree of Horner’s form \\(a x + b)\\x + c\\ takes two multiplications and two additions. At \\a = 2\\, \\b = -3\\, \\c = 5\\ and \\x = 1.5\\, the first algorithm computes \\4.5 - 4.5 + 5 = 5\\ and the second computes \\(3 - 3) \cdot 1.5 + 5 = 5\\, the same value by different steps.

> **NOTE:**
>
> *Remark 2* (Procedures that are not algorithms here). By the definition of an [algorithm](#def-algorithm), every algorithm [computes](#def-computes) some [function](functions.llms.md#def-function). That holds because an algorithm has unambiguous steps and halts on every valid [input](functions.llms.md#def-argument). A procedure that makes random choices can return different [values](functions.llms.md#def-value) for the same input. A procedure that never halts returns no [value](functions.llms.md#def-value) for some inputs. Neither computes a function, and neither is an algorithm in this sense, although some texts call them [algorithms](#def-algorithm).

> **NOTE:**
>
> *Remark 3* (How functions, expressions and algorithms relate). The three ideas fit together this way:
>
> - A function is the input-output relationship.
> - An [expression](#def-expression) denotes a function, and many expressions denote the same one.
> - An [algorithm](#def-algorithm) computes a function, and many algorithms compute the same one.
>
> An expression is not an algorithm, because it does not say what to do, or in what order. Given values for its variables, evaluating its parse tree from the leaves up is one algorithm for the function it denotes, and a different expression for the same function gives a different tree and a different algorithm.

> **NOTE:**
>
> *Remark 4* (Values with no known algorithm). Some functions have no known finite algorithm for their exact values, and expressions that denote them, such as a limit, a supremum, an integral with no closed form, or an \\\arg \min\\ over a set with no formula for the minimizer, cannot be evaluated by following their tree. Such a value can still be well defined and approximated by an algorithm.

> **NOTE:**
>
> **Example 4 (A minimizer with no known formula)** The minimizer \\\arg \min\_{x \in \mathbb{R}} \mathopen{}\left(x - \cos x\right)\mathclose{}^2\\ is well defined, because \\x - \cos x\\ is strictly increasing and equals zero at one point, yet that point has no known closed-form expression, so no known finite list of arithmetic steps returns it exactly. An algorithm such as bisection approximates it as closely as we like.

## 3 Exercises

> **NOTE:**
>
> **Exercise 1 (Is an expression an algorithm?)** How do a [function](functions.llms.md#def-function), an [expression](#def-expression) and an [algorithm](#def-algorithm) differ?

> **NOTE:**
>
> *Solution 1*. A [function](functions.llms.md#def-function) is the input-output relationship. An [expression](#def-expression) is a string of symbols that denotes a function, and many [expressions](#def-expression) denote the same one. An [algorithm](#def-algorithm) is a [finite](functions.llms.md#def-finite-sequence) list of steps that computes a function, and many [algorithms](#def-algorithm) compute the same one.

> **NOTE:**
>
> **Exercise 2 (Is an expression an algorithm? (part 2))** Use the setup of [Exercise 1](#exr-expression-or-algorithm).
>
> Which of the three does \\a x^2 + b x + c\\ name: a [function](functions.llms.md#def-function), an [expression](#def-expression) or an [algorithm](#def-algorithm)?

> **NOTE:**
>
> *Solution 2*. It is an [expression](#def-expression): it names a [function](functions.llms.md#def-function), and it is not an [algorithm](#def-algorithm).

> **NOTE:**
>
> **Exercise 3 (Is an expression an algorithm? (part 3))** Use the setup of [Exercise 1](#exr-expression-or-algorithm).
>
> Does the [expression](#def-expression) \\a x^2 + b x + c\\ tell you which arithmetic steps to carry out?

> **NOTE:**
>
> *Solution 3*. Not by itself. The [expression](#def-expression) says *what* to compute, not *how* to compute it. Once \\a\\, \\b\\, \\c\\ and \\x\\ are known, evaluating its [parse tree](#def-parse-tree) from the leaves up is an [algorithm](#def-algorithm).

> **NOTE:**
>
> **Exercise 4 (Is an expression an algorithm? (part 4))** Use the setup of [Exercise 1](#exr-expression-or-algorithm).
>
> What do the rules of precedence (PEMDAS) contribute to the [expression](#def-expression) \\a x^2 + b x + c\\?

> **NOTE:**
>
> *Solution 4*. Precedence resolves how the symbols group: \\a x^2 + b x + c\\ groups into three parts added together, with \\x^2\\ evaluated before the multiplication by \\a\\, and that grouping is a [tree](#def-parse-tree). Precedence is a rule for reading the [expression](#def-expression), not a step in an [algorithm](#def-algorithm) that evaluates it.

> **NOTE:**
>
> **Exercise 5 (Is an expression an algorithm? (part 5))** Use the setup of [Exercise 1](#exr-expression-or-algorithm).
>
> Write a second [expression](#def-expression) that denotes the same [function](functions.llms.md#def-function) as \\a x^2 + b x + c\\ and needs fewer multiplications.

> **NOTE:**
>
> *Solution 5*. \\(a x + b)\\x + c\\, Horner’s form. It uses two multiplications and two additions, where the first form, with \\x^2\\ computed as \\x \cdot x\\, uses three multiplications and two additions. The two [expressions](#def-expression) denote the same [function](functions.llms.md#def-function) and describe different [algorithms](#def-algorithm).

Back to top

## References

\[1\]

Wikipedia contributors, “Expression (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Expression_(mathematics)>

\[2\]

Wikipedia contributors, “Parse tree — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Parse_tree>

\[3\]

Wikipedia contributors, “Algorithm — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Algorithm>
