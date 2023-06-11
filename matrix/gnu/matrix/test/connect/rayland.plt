#!/usr/bin/gnuplot
#
# Plot of the Cross-blended Hypsometric Tints data from Natural Earth
# http://www.naturalearthdata.com/downloads/50m-raster-data/50m-cross-blend-hypso/
#
# AUTHOR: Hagen Wierstorf
# gnuplot 4.6 patchlevel 3

reset
# wxt
# set terminal wxt size 350,175 enhanced font 'Verdana,10' persist
# png
#set terminal pngcairo size 350,175 enhanced font 'Verdana,10'
# set output 'world_color.png'
unset key 
set border 0
unset tics
unset colorbox
set lmargin 0
set rmargin 0
set bmargin 0
set tmargin 0

set datafile separator ","
set size ratio -1
#
## plot the original rgb data
plot "/home/denis/Workspace/gnupl-sun/matrix/bin/data/data1.txt" w rgbimage
save "sunmap.plt"

