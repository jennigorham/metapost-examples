# metapost-examples

Some examples of what MetaPost (a programming language for creating diagrams) can do. The diagrams use the mathjax fonts from [mathjax-fonts-in-latex](https://github.com/jennigorham/mathjax-fonts-in-latex).

## Usage

Run `make` or `mptopdf <filename.mp>` to create the pdfs, assuming you have MetaPost installed already (it's included in TeX Live or MiKTeX; on Ubuntu, run `sudo apt install texlive-latex-base` to install it). More info on MetaPost can be found [here](https://www.tug.org/metapost.html).

## [uv.mp](https://github.com/jennigorham/metapost-examples/blob/master/uv.mp)

![uv](https://user-images.githubusercontent.com/24600895/50458111-cc6d7700-09b4-11e9-95e2-24efd29e3fd3.png)

## [circuit.mp](https://github.com/jennigorham/metapost-examples/blob/master/circuit.mp)

A recreation of a diagram on page 54 of Foundations of Analog and Digital Electronic Circuits, by Anant Agarwal and Jeffrey Lang. The arrows were created with [mpsketch](https://github.com/jennigorham/mpsketch).

![circuit](https://user-images.githubusercontent.com/24600895/50427944-5ad6ef80-0906-11e9-85cf-3bf7bc5b3324.png)

## [mandelbrot.mp](https://github.com/jennigorham/metapost-examples/blob/master/mandelbrot.mp)

![mandelbrot](https://user-images.githubusercontent.com/24600895/50428310-b3a88700-090a-11e9-846b-c2abfb873fdb.png)

## [isosceles-trapezoid.mp](https://github.com/jennigorham/metapost-examples/blob/master/isosceles-trapezoid.mp)

Made for the following geometry problem: "Let ABCD be an isosceles trapezoid with (AB parallel to CD). Let E be the mid-point of AC. Denote by omega and ohm the circumcircles of triangles ABE and CDE, respectively. Let P be the crossing point of the tangent to omega at A with the tangent to ohm at D. Prove that PE is tangent to ohm."

See [youtube video](https://youtu.be/iT622ZK31iU).

![isosceles-trapezoid.mp](https://user-images.githubusercontent.com/24600895/60692241-5f650c00-9f18-11e9-9eb9-e018c839dd2d.png)

## [sunflower.mp](https://github.com/jennigorham/metapost-examples/blob/master/sunflower.mp)

Have you ever heard that if you count the number of spirals in a sunflower, it's a Fibonacci number? Like 8 spirals one way and 13 the other, or 34 one way and 21 the other. I made these diagrams to try to understand why it might be 8 spirals in one sunflower but 21 in another. It turns out all the spirals are there all the time, but the smaller numbered spirals are more obvious near the centre.

The 8 spirals:

![sunflower-3](https://user-images.githubusercontent.com/24600895/50431926-97b0df80-0922-11e9-9ea8-e6f6a4af4210.png)

The 21 spirals:

![sunflower-4](https://user-images.githubusercontent.com/24600895/50431927-97b0df80-0922-11e9-99a1-1dec76c9bc16.png)

One of each of the 8, 13, 21, and 34 spirals in one diagram:

![sunflower-1](https://user-images.githubusercontent.com/24600895/50431528-861a0880-091f-11e9-9c1c-2571ad7eb8d7.png)

All glory to the hypnoflower:

![sunflower-2](https://user-images.githubusercontent.com/24600895/50431529-86b29f00-091f-11e9-864c-403f875149af.png)
