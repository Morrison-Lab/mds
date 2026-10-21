# Trigonometry

Code

Published

Last modified: 2026-10-21 15:00:24 (PDT)

## 1 Cosine and sine

> **NOTE:**
>
> **Definition 1 (Unit circle)** The **unit circle** [\[1\]](#ref-wikipedia_unit_circle) is the set of points \\(x_1, x_2)\\ in the plane with \\x_1^2 + x_2^2 = 1\\.

> **NOTE:**
>
> **Example 1 (Points on the unit circle)**  
>
> - \\(1, 0)\\ is on the unit circle, because \\1^2 + 0^2 = 1\\.
> - \\(0, -1)\\ is on the unit circle, because \\0^2 + (-1)^2 = 1\\.
> - \\(\tfrac{3}{5}, \tfrac{4}{5})\\ is on the unit circle, because \\\tfrac{9}{25} + \tfrac{16}{25} = 1\\.
> - \\(1, 1)\\ is not on the unit circle, because \\1^2 + 1^2 = 2 \ne 1\\.

> **NOTE:**
>
> **Definition 2 (The number \\\pi\\)** The number \\\pi \approx 3.14159\\ [\[2\]](#ref-wikipedia_pi) is half of the circumference of the unit circle ([Definition 1](#def-unit-circle)).

> **NOTE:**
>
> **Example 2 (Distances around the unit circle)** The whole unit circle has circumference \\2\pi\\. Moving from \\(1, 0)\\ to \\(-1, 0)\\ along the upper half of the circle covers a distance of \\\pi\\, and moving from \\(1, 0)\\ to \\(0, 1)\\ covers a quarter of the circle, a distance of \\\pi/2\\.

> **NOTE:**
>
> **Definition 3 (Angle on the unit circle)** The **angle** between two points of the [unit circle](#def-unit-circle) is how far apart they are along the circle, going the short way round. Let the counterclockwise distance from the first point to the second be \\s \in \[0, 2\pi)\\. Then the angle is
>
> \\ \theta\stackrel{\text{def}}{=}\min\mathopen{}\left\\s, 2\pi - s\right\\\mathclose{}. \\
>
> In words, the angle is the smaller of two distances from the first point to the second: the counterclockwise one, \\s\\, or the clockwise one, \\2\pi - s\\.

> **NOTE:**
>
> **Example 3 (Three angles on the unit circle)**  
>
> - The points \\(1, 0)\\, \\(0, 1)\\ are a quarter of the circle apart, so their [angle](#def-angle-unit-circle) is \\\pi/2\\.
> - The points \\(1, 0)\\, \\(-1, 0)\\ are half of the circle apart, so their angle is \\\pi\\.
> - The point \\(1, 0)\\ is \\0\\ apart from itself, so their angle is \\0\\.

> **NOTE:**
>
> **Definition 4 (Radian)** A **radian** is the [angle on the unit circle](#def-angle-unit-circle) between two points that are a distance of \\1\\ apart along the circle. An [angle](#def-angle-unit-circle) of \\\theta\\ is then \\\theta\\ radians.

> **NOTE:**
>
> **Example 4 (Angles in radians)**  
>
> - The points \\(0, 1)\\, \\(-1, 0)\\ are a quarter of the [unit circle](#def-unit-circle) apart, so their [angle](#def-angle-unit-circle) is \\\pi/2\\ [radians](#def-radian).
> - The points \\(0, 1)\\, \\(0, -1)\\ are half of the circle apart, so their angle is \\\pi\\ radians.

> **NOTE:**
>
> **Proposition 1 (Range of an angle on the unit circle)** An [angle](#def-angle-unit-circle) between two points of the [unit circle](#def-unit-circle) is at least \\0\\, at most \\\pi\\ ([Definition 2](#def-pi)).

> **NOTE:**
>
> *Proof*. The whole circle has length \\2\pi\\ ([Definition 2](#def-pi)). Going the short way round covers at most half of the circle, which is \\\pi\\. A distance along the circle is at least \\0\\.

> **NOTE:**
>
> **Definition 5 (Cosine)** For a real number \\\theta\\, start at the point \\(1, 0)\\ of the unit circle ([Definition 1](#def-unit-circle)) and move a distance \\\mathopen{}\left\|\theta\right\|\mathclose{}\\ along the circle, counterclockwise if \\\theta\ge 0\\ and clockwise if \\\theta\< 0\\. The first coordinate of the point reached is the **cosine** of \\\theta\\ [\[3\]](#ref-wikipedia_sine_and_cosine), written \\\cos\theta\\.

> **NOTE:**
>
> **Example 5 (Cosines of some angles)**  
>
> - \\\theta= 0\\ stays at \\(1, 0)\\, so \\\cos 0 = 1\\.
> - \\\theta= \pi\\ goes half way around the circle, to \\(-1, 0)\\, so \\\cos\pi = -1\\.
> - \\\theta= \pi/2\\ goes a quarter of the way round, to \\(0, 1)\\, so \\\cos(\pi/2) = 0\\.
> - \\\theta= \pi/4\\ goes an eighth of the way round, to the point of the circle with \\x_1 = x_2 \> 0\\. There \\x_1^2 + x_1^2 = 1\\, so \\x_1^2 = \tfrac{1}{2}\\ and \\\cos(\pi/4) = x_1 = \tfrac{1}{\sqrt{2}} \approx 0.7071\\.
>
> Angles are also measured in *degrees*, with a full turn of \\2\pi\\ equal to \\360\\ degrees, so \\\pi/2\\ is \\90\\ degrees and \\\pi/4\\ is \\45\\ degrees.

> **NOTE:**
>
> **Definition 6 (Sine)** For a real number \\\theta\\, the second coordinate of the point reached from \\(1, 0)\\ by moving a distance \\\mathopen{}\left\|\theta\right\|\mathclose{}\\ along the unit circle ([Definition 5](#def-cosine-sine)) is the **sine** of \\\theta\\ [\[3\]](#ref-wikipedia_sine_and_cosine), written \\\sin\theta\\. The sine is one of the trigonometric functions [\[4\]](#ref-wikipedia_trigonometric_functions).

> **NOTE:**
>
> **Example 6 (Sines of some angles)**  
>
> - \\\theta= 0\\ stays at \\(1, 0)\\, so \\\sin 0 = 0\\.
> - \\\theta= \pi\\ goes half way around the circle, to \\(-1, 0)\\, so \\\sin\pi = 0\\.
> - \\\theta= \pi/2\\ goes a quarter of the way round, to \\(0, 1)\\, so \\\sin(\pi/2) = 1\\.
> - \\\theta= \pi/4\\ reaches the point with \\x_1 = x_2 = \tfrac{1}{\sqrt{2}}\\ ([Example 5](#exm-cosine-sine)), so \\\sin(\pi/4) = \tfrac{1}{\sqrt{2}}\\.

> **NOTE:**
>
> **Theorem 1 (The Pythagorean identity)** For every real number \\\theta\\ [\[5\]](#ref-wikipedia_pythagorean_trigonometric_identity),
>
> \\ \cos^2\theta+ \sin^2\theta= 1. \\

> **NOTE:**
>
> *Proof*. The point \\(\cos\theta, \sin\theta)\\ lies on the unit circle ([Definition 1](#def-unit-circle)), so its coordinates satisfy \\x_1^2 + x_2^2 = 1\\.

> **NOTE:**
>
> **Example 7 (The unit circle and the angle \\\pi/3\\)** Take \\\theta= \pi/3\\, one sixth of the way round the circle. [Figure 1](#fig-cosine-sine-unit-circle) shows the point reached, \\(\cos\theta, \sin\theta)\\, and its two coordinates. The point is a vertex of a regular hexagon inscribed in the unit circle, whose sides have the same length as its radius, so the point is at distance \\1\\ from \\(1, 0)\\. Writing \\(x_1, x_2) = (\cos\theta, \sin\theta)\\,
>
> \\ \begin{aligned} 1 &= (x_1 - 1)^2 + x_2^2 \\ &= x_1^2 + x_2^2 - 2 x_1 + 1 \\ &= 2 - 2 x_1, \end{aligned} \\
>
> so \\\cos(\pi/3) = x_1 = \tfrac{1}{2}\\, and then \\\sin(\pi/3) = \sqrt{1 - \tfrac{1}{4}} = \tfrac{\sqrt{3}}{2}\\. To three decimal places these are 0.5 and 0.866. As [Theorem 1](#thm-cosine-sine-identity) says, the squared coordinates add to 1.
>
> > **NOTE:**
> >
> > Show R code
> >
> > ``` downlit
> > # angle in radians, and the point it reaches on the unit circle
> > angle <- pi / 3
> > point <- data.frame(x1 = cos(angle), x2 = sin(angle))
> >
> > # points around the whole circle
> > circle <- data.frame(t = seq(0, 2 * pi, length.out = 200))
> > circle$x1 <- cos(circle$t)
> > circle$x2 <- sin(circle$t)
> >
> > # arc from angle 0 to the chosen angle
> > arc <- data.frame(t = seq(0, angle, length.out = 50))
> > arc$x1 <- 0.25 * cos(arc$t)
> > arc$x2 <- 0.25 * sin(arc$t)
> >
> > unit_circle_plot <- ggplot2::ggplot() +
> >   ggplot2::geom_path(data = circle, ggplot2::aes(x1, x2)) +
> >   ggplot2::geom_path(data = arc, ggplot2::aes(x1, x2)) +
> >   ggplot2::geom_segment(
> >     ggplot2::aes(x = 0, y = 0, xend = point$x1, yend = point$x2),
> >     colour = "firebrick"
> >   ) +
> >   ggplot2::geom_segment(
> >     ggplot2::aes(x = point$x1, y = 0, xend = point$x1, yend = point$x2),
> >     linetype = "dashed"
> >   ) +
> >   ggplot2::geom_segment(
> >     ggplot2::aes(x = 0, y = 0, xend = point$x1, yend = 0),
> >     colour = "steelblue", linewidth = 1.2
> >   ) +
> >   ggplot2::geom_point(data = point, ggplot2::aes(x1, x2)) +
> >   ggplot2::annotate("text", x = 0.4, y = 0.1, label = "angle") +
> >   ggplot2::annotate(
> >     "text", x = point$x1 / 2, y = -0.09, label = "cosine"
> >   ) +
> >   ggplot2::annotate(
> >     "text", x = point$x1 + 0.05, y = point$x2 / 2, label = "sine",
> >     hjust = 0
> >   ) +
> >   ggplot2::coord_equal() +
> >   ggplot2::labs(x = "x1", y = "x2") +
> >   ggplot2::theme_minimal()
> >
> > if (knitr::is_html_output()) {
> >   plotly::ggplotly(unit_circle_plot)
> > } else {
> >   unit_circle_plot
> > }
> > ```
> >
> > Figure 1: The unit circle with the point at angle \\\pi/3\\. Its horizontal coordinate is the cosine and its vertical coordinate is the sine.

> **NOTE:**
>
> **Theorem 2 (Cosine takes each value from \\-1\\ to \\1\\ exactly once between \\0\\ and \\\pi\\)** The function \\\cos : \[0, \pi\] \to \[-1, 1\]\\ is decreasing, with \\\cos 0 = 1\\ and \\\cos\pi = -1\\, and takes each value in \\\[-1, 1\]\\ exactly once. On \\\[0, \pi\]\\, \\\sin\theta\ge 0\\.

> **NOTE:**
>
> *Proof*. For \\\theta\in \[0, \pi\]\\, the point \\(\cos\theta, \sin\theta)\\ is at distance \\\theta\\ along the circle from \\(1, 0)\\, counterclockwise, so it lies on the upper half of the unit circle, \\\mathopen{}\left\\(x_1, x_2) : x_1^2 + x_2^2 = 1,\\ x_2 \ge 0\right\\\mathclose{}\\, which gives \\\sin\theta\ge 0\\. Different values of \\\theta\\ in \\\[0, \pi\]\\ are different distances along that half circle, so they give different points. Two different points of the upper half have different first coordinates, because \\x_2 = \sqrt{1 - x_1^2}\\ is determined by \\x_1\\. So \\\cos\\ is one-to-one on \\\[0, \pi\]\\. Every \\x_1 \in \[-1, 1\]\\ is the first coordinate of the point \\(x_1, \sqrt{1 - x_1^2})\\ of the upper half, and the distance along the half circle from \\(1, 0)\\ to that point is some \\\theta\in \[0, \pi\]\\, so \\\cos\\ takes every value in \\\[-1, 1\]\\. Finally, move along the upper half circle from \\(1, 0)\\ to \\(-1, 0)\\ as \\\theta\\ increases from \\0\\ to \\\pi\\. The first coordinate never takes the same value twice, so it never turns back. It starts at \\\cos 0 = 1\\ and ends at \\\cos\pi = -1\\, so it only decreases.

> **NOTE:**
>
> **Definition 7 (Arccosine)** The **arccosine** \\\arccos : \[-1, 1\] \to \[0, \pi\]\\ is the [function](functions.llms.md#def-function) that sends each [cosine](#def-cosine-sine), \\c \in \[-1, 1\]\\, to the one [real number](number-systems.llms.md#def-real-numbers) \\\theta\in \[0, \pi\]\\ whose cosine is \\c\\. By [Theorem 2](#thm-cosine-bijection), there is just one such \\\theta\\.

> **NOTE:**
>
> **Example 8 (Three arccosines)**  
>
> - The [arccosine](#def-arccosine) of one is \\\arccos 1 = 0\\, because the [cosine](#def-cosine-sine) of zero is \\\cos 0 = 1\\.
> - The arccosine of zero is \\\arccos 0 = \pi/2\\, because the cosine of a quarter turn is \\\cos(\pi/2) = 0\\.
> - The arccosine of minus one is \\\arccos(-1) = \pi\\, because the cosine of a half turn is \\\cos\pi = -1\\.

Back to top

## References

\[1\]

Wikipedia contributors, “Unit circle — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Unit_circle>

\[2\]

Wikipedia contributors, “Pi — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Pi>

\[3\]

Wikipedia contributors, “Sine and cosine — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Sine_and_cosine>

\[4\]

Wikipedia contributors, “Trigonometric functions — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Trigonometric_functions>

\[5\]

Wikipedia contributors, “Pythagorean trigonometric identity — Wikipedia, the free encyclopedia.” 2026. Available: <https://en.wikipedia.org/wiki/Pythagorean_trigonometric_identity>
