# Optimization

Code

Published

Last modified: 2026-10-30 11:17:57 (PDT)

The optimization notes are split across these pages:

- [Critical Points and Optimality Conditions](optimization-critical-points.llms.md): flat points and critical points, Fermat’s theorem, Taylor approximations, and the first- and second-order conditions in several variables.
- [Convexity in Several Variables](optimization-convexity.llms.md): convex sets and functions, epigraphs, tangent planes, and the first-order and Hessian characterizations of convexity.
- [Quadratic Minimization under Linear Constraints](optimization-constrained.llms.md): minimization problems, optimization algorithms, the Lagrangian, and the sensitivity of the minimum to the constraints.
- [Newton’s Method](optimization-newton.llms.md): iterative methods, the quadratic model, and quadratic convergence.
- [Gradient Descent](optimization-gradient-descent.llms.md): descent directions, line search, step lengths, and the failure modes of gradient descent on the Rosenbrock function, double wells, and plateaus.
- [Quasi-Newton Methods](optimization-quasi-newton.llms.md): the secant condition, the BFGS update, and L-BFGS.

A link to a section, theorem or definition on this page from before the split goes on to the page that now holds it.

## 1 Further reading

- Boyd and Vandenberghe [\[1\]](#ref-boyd2004convex) is the standard reference on convex optimization, covering convex sets, convex functions, convex optimization problems, duality, unconstrained minimization, and interior-point methods.
- Nocedal and Wright [\[2\]](#ref-nocedal2006numerical) is a comprehensive reference on continuous numerical optimization, covering line search methods, trust-region methods, conjugate gradient methods, quasi-Newton methods, and nonlinear equations.
- [Hua Zhou](https://hua-zhou.github.io/)’s [course page for “UCLA Biostat 257 - Statistical Computing” (2025 Spring)](https://ucla-biostat-257.github.io/2025spring/) has lectures on optimization, from root finding to constrained problems. Its source is [on GitHub](https://github.com/ucla-biostat-257/2025spring) under the MIT License.
- [Hua Zhou](https://hua-zhou.github.io/)’s [lecture notes for “UCLA Biostat 216 - Mathematical Methods for Biostatistics” (2024 Fall)](https://ucla-biostat-216.github.io/2024fall/slides/13-optim/13-optim.html)
- [Neural Networks](https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi) is a YouTube playlist by Grant Sanderson (3Blue1Brown); its chapters on gradient descent and backpropagation calculus visually illustrate how gradients of multivariate cost functions are computed and used for optimization.

## References

\[1\]

S. Boyd and L. Vandenberghe, *Convex optimization*. Cambridge University Press, 2004. doi: [10.1017/CBO9780511804441](https://doi.org/10.1017/CBO9780511804441).

\[2\]

J. Nocedal and S. J. Wright, *Numerical optimization*, 2nd ed. in Springer series in operations research and financial engineering. Springer, 2006. doi: [10.1007/978-0-387-40065-5](https://doi.org/10.1007/978-0-387-40065-5).

Back to top
