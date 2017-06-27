set view 130, 10, 1, 1
set samples 50, 50
set isosamples 50, 50
unset surface
set title "Ein nettes Beispiel"
set pm3d implicit at s
set pm3d scansbackward
splot sin(sqrt(x**2+y**2))/sqrt(x**2+y**2)
