input TEX;

TEXPRE("\documentclass[12pt]{article}\usepackage[osf]{mathjax}\begin{document}");
defaultfont:="mathjaxr--base";
string numfont;  numfont:="mathjaxcal";
%%%%If you haven't installed mathjax-fonts-in-latex then comment out the three lines above and uncomment the lines below
%TEXPRE("\documentclass[12pt]{article}\begin{document}");
%string numfont;  numfont:=defaultfont;

defaultscale := 12pt/fontsize defaultfont;
def dotpen = pencircle scaled 3 enddef;
u:=1cm;
pair o; o = (0,0); %handy shorthand for the origin
def mycolour = 0.7*red enddef;
def defaultpen = pencircle scaled 0.7bp enddef;
pickup defaultpen;
