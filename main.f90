
! https://cyber.dabamos.de/programming/modernfortran/gnuplot.html        -> Consulted for the data file creation and gnuplot plotting. To call gnuplot, it must have been added to the PATH.
! https://web.stanford.edu/class/me200c/tutorial_90/08_subprograms.html  -> Consulted for creating functions in Fortran 90.

program main

    implicit none

    integer, parameter          :: N = 50                ! Number of steps in the x and y axis.
    real, parameter             :: xlim = 4, ylim = 4    ! x in [-xlim,xlim] & y in [-ylim, ylim] intervals.
    real                        :: dx, dy                ! Size of the steps.
    real, dimension(N+1)        :: x, y                  ! Arrays to store the points of each axis.
    integer                     :: i, j, fileunit        ! i & j are indices, fileunit is the file unit.
    character(len=*), parameter :: filename = 'data.txt' ! Name of the file where the generated data will be stored.


    interface
        function fxy(xx, yy)
            real :: fxy
            real, intent(in) :: xx, yy
        end function fxy
    end interface


    dx = 2*xlim/N
    dy = 2*ylim/N

    ! Fill the arrays.
    do i = 1, N+1
        x(i) = (i-1)*dx - xlim
        y(i) = (i-1)*dy - ylim
    end do

    ! Create the data.txt file.
    open (newunit=fileunit, file=filename, status='replace', action='write')

    ! Fill the data file with the desired x, y & f(x, y) values in the appropriate format for the 3D surface plotting in Gnuplot.
    do i = 1, N
        do j = 1, N
            write (fileunit, *) x(i), y(j), fxy(x(i), y(j))
        end do
        write (fileunit,*)
    end do

    ! Close the data file.
    close (fileunit)

    ! Call the Gnuplot script "gnuplot_script.plt" for making the desired 3D plot.
    call execute_command_line('gnuplot -p gnuplot_script.plt')

end program main


function fxy(xx, yy)

    ! This is the mathematical function to be represented.

    implicit none
    real :: fxy
    real, intent(in) :: xx, yy

    fxy = cos(xx**2+yy*2) + sin(xx+yy)

end function fxy
