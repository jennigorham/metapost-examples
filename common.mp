input TEX;
defaultfont:="mathjaxr--base"; %comment this out if you haven't installed mathjax-fonts-in-latex
string numfont;  numfont:="mathjaxcal"; %font for numbers
defaultscale := 12pt/fontsize defaultfont;
def dotpen = pencircle scaled 3 enddef;
u:=1cm;
pair o; o = (0,0); %handy shorthand for the origin
def mycolour = 0.7*red enddef;
def defaultpen = pencircle scaled 0.7bp enddef;
pickup defaultpen;
