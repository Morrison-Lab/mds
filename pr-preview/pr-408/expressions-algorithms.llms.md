# Expressions and Algorithms

Code

Published

Last modified: 2026-10-19 02:15:32 (PDT)

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
> **Definition 3 (Algorithm)** An **algorithm** [\[3\]](#ref-wikipedia_algorithm) is a finite list of unambiguous steps that, applied to any valid input, halts and returns an output. An algorithm *computes* a [function](functions.llms.md#def-function): for each input it returns the function’s value at that input.

> **NOTE:**
>
> **Example 3 (Two algorithms for one function)** Take the function that [Example 1](#exm-expression) writes two ways. Evaluating the tree of \\a x^2 + b x + c\\, with \\x^2\\ computed as \\x \cdot x\\, takes three multiplications and two additions. Evaluating the tree of Horner’s form \\(a x + b)\\x + c\\ takes two multiplications and two additions. At \\a = 2\\, \\b = -3\\, \\c = 5\\ and \\x = 1.5\\, the first algorithm computes \\4.5 - 4.5 + 5 = 5\\ and the second computes \\(3 - 3) \cdot 1.5 + 5 = 5\\, the same value by different steps.

> **NOTE:**
>
> *Remark 2* (How functions, expressions and algorithms relate). The three ideas fit together this way:
>
> - A function is the input-output relationship.
> - An [expression](#def-expression) denotes a function, and many expressions denote the same one.
> - An [algorithm](#def-algorithm) computes a function, and many algorithms compute the same one.
>
> An expression is not an algorithm, because it does not say what to do, or in what order. Given values for its variables, evaluating its parse tree from the leaves up is one algorithm for the function it denotes, and a different expression for the same function gives a different tree and a different algorithm.

> **NOTE:**
>
> *Remark 3* (Values with no known algorithm). Some functions have no known finite algorithm for their exact values, and expressions that denote them, such as a limit, a supremum, an integral with no closed form, or an \\\arg \min\\ over a set with no formula for the minimizer, cannot be evaluated by following their tree. Such a value can still be well defined and approximated by an algorithm.

> **NOTE:**
>
> **Example 4 (A minimizer with no known formula)** The minimizer \\\arg \min\_{x \in \mathbb{R}} \mathopen{}\left(x - \cos x\right)\mathclose{}^2\\ is well defined, because \\x - \cos x\\ is strictly increasing and equals zero at one point, yet that point has no known closed-form expression, so no known finite list of arithmetic steps returns it exactly. An algorithm such as bisection approximates it as closely as we like.

Back to top

## References

\[1\]

Wikipedia contributors, “Expression (mathematics) — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Expression_(mathematics)>

\[2\]

Wikipedia contributors, “Parse tree — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Parse_tree>

\[3\]

Wikipedia contributors, “Algorithm — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Algorithm>
