set pm3d
set hidden3d
set title "f(x,y) = cos(x^2+y^2) + sin(x+y)"
set nokey # Hides legend.
set xlabel "x"
set ylabel "y"
set zlabel "f(x,y)"
set grid
set autoscale
set ticslevel 0.1 # Adjusts the position at which the xy plane is drawn. 0 sticks it to the beginning of the z axis ticks.
#set style fill transparent solid 0.5 # Set transparency.
splot "data.txt" using 1:2:3 ps 0 with pm3d # "with pm3d" smooths the plot's movement.
