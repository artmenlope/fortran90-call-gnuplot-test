# fortran90-call-gnuplot-test
This is a test to try calling Gnuplot from a Fortran 90 script. The compiler used is GFortran.

The [main program](https://github.com/artmenlope/fortran90-call-gnuplot-test/blob/master/main.f90) generates 3D data of the function

$$
f(x, y) = \cos\left(x^2+y^2\right) + \sin\left(x+y\right)
$$

in a suitable format for Gnuplot storing it in the file [_data.txt_](https://github.com/artmenlope/fortran90-call-gnuplot-test/blob/master/data.txt). Then, it calls Gnuplot for plotting the generated data using the commands from the file [_gnuplot_script.plt_](https://github.com/artmenlope/fortran90-call-gnuplot-test/blob/master/gnuplot_script.plt).

The resulting plot is

<p align="center">
<img src="https://github.com/artmenlope/fortran90-call-gnuplot-test/blob/master/plot.png" width="60%">
</p>


For the making of the [main program](https://github.com/artmenlope/fortran90-call-gnuplot-test/blob/master/main.f90) the following references have been consulted:

1. [Engel, P., 2020. _Gnuplot | Programming In Modern Fortran_. [online] cyber.dabamos.de, The Cyber Vanguard.](https://cyber.dabamos.de/programming/modernfortran/gnuplot.html)

2. [Moin, P., 2002. _Mathematical And Computational Methods For Engineers. Fortran 90 Tutorial: Subprograms_. [online] web.stanford.edu, Standford University.](https://web.stanford.edu/class/me200c/tutorial_90/08_subprograms.html)

(Engel 2020) was consulted for the data file creation and gnuplot plotting from Fortran. (Moin 2002) was consulted for the creation of functions in Fortran 90.
