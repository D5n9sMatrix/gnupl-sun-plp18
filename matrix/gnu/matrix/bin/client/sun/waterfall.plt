#!/usr/bin/gnuplot
#
# Plotting a color map using the blue to red colors described here:
# http://bastian.rieck.ru/blog/posts/2012/gnuplot_better_colour_palettes/
# http://www.sandia.gov/~kmorel/documents/ColorMaps/
#
# AUTHOR: Hagen Wierstorf

reset

# wxt
set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
# png
#set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
#set output 'default_color_palette1.png'

unset key

# border
set style line 11 lc rgb '#808080' lt 1
set border 3 front ls 11
set tics nomirror out scale 0.75

set xrange [0:59]
set yrange [0:59]
set xlabel 'x (Âµm)'
set ylabel 'y (Âµm)'

# disable colorbar tics
set cbtics scale 0
# loading new default color palette
plot "/home/denis/Workspace/gnupl-sun/matrix/bin/data/data9.txt" u ($1/3.0):($2/3.0):($3/1000.0) matrix with image
