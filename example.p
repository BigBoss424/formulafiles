# Gnuplot script file for plotting data in file "example.dat"
# This file is called   example.p
set     autoscale
unset   log
unset   label
set     xtic    auto
set     ytic    auto
set     title   "Force Deflection Data for a Beam and a Column"
set     xlabel  "Deflection (meters)"
set     ylabel  "Force (kN)"
set     key     0.01,100
set     label   "Yield Point" at 0.003,260
set     arrow   from 0.0028,250 to 0.003,280
set     xr      [0.0:0.022]
set     yr      [0:325]
plot      "example.dat" using 1:2 title 'Column' with linespoints       
          "example.dat" using 1:3 title 'Beam' with points
