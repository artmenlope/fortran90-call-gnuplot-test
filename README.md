# fortran90-call-gnuplot-test
This is a test to try calling Gnuplot from a Fortran 90 script.

The [main program](https://github.com/artmenlope/fortran90-call-gnuplot-test/blob/master/main.f90) generates 3D data of the function

<p align="center">
<img src="https://render.githubusercontent.com/render/math?math=f(x%2Cy)%20%3D%20%5Ccos(x%5E2%2By%5E2)%20%2B%20%5Csin(x%2By)"> 
</p>

in a suitable format for Gnuplot. Then, using the commands from the file [_gnuplot_script.plt_](https://github.com/artmenlope/fortran90-call-gnuplot-test/blob/master/gnuplot_script.plt), the generated data in [_data.txt_](https://github.com/artmenlope/fortran90-call-gnuplot-test/blob/master/data.txt) can be plotted in Gnuplot.

The resulting plot is

<p align="center">
<img src="https://github.com/artmenlope/fortran90-call-gnuplot-test/blob/master/plot.png" width="60%">
</p>


For the making of the [main program](https://github.com/artmenlope/fortran90-call-gnuplot-test/blob/master/main.f90) the following references have been consulted:

1. [Engel, P., 2020. _Gnuplot | Programming In Modern Fortran_. [online] cyber.dabamos.de, The Cyber Vanguard.](https://cyber.dabamos.de/programming/modernfortran/gnuplot.html)

2. [Moin, P., 2002. _Mathematical And Computational Methods For Engineers. Fortran 90 Tutorial: Subprograms_. [online] web.stanford.edu, Standford University.](https://web.stanford.edu/class/me200c/tutorial_90/08_subprograms.html)

(Engel 2020) was consulted for the data file creation and gnuplot plotting from Fortran. (Moin 2002) was consulted for the creation of functions in Fortran 90.
