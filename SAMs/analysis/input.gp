set terminal epslatex color
set output 'AnglePlot.tex'
set grid y
set key
#set bars large
#set style data lines
#set pointsize 4
#unset ytics
set xtics ("Sample 1" 1, "Sample 2" 2, "Sample 1+2" 3)
set ylabel '$\theta_c$ [$^\circ$]'
#set xlabel '$V_d$'
plot [0.75:3.25] 'contactAngles.txt' using 1:2:3 with errorbars lw 3 title 'Standard Deviation', 'shifted.txt' using 1:2:4:5 with errorbars lw 3 title 'Range'
#plot sin(x)
