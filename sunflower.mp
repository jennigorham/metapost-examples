input common;

phi := (1+sqrt(5))/2; %golden ratio
theta := 360/(phi+1); %golden angle

rfactor:=1/20;
seedsizefactor:=1/9;

def seedloc(expr i) = %coordinates of the 'i'th seed in the sunflower
	(i*u*rfactor* dir (theta*i))
enddef;

def drawspiral(expr spiralnum) = %draw a curve passing through every 'spiralnum'th seed
	lastseed := ceiling(n/spiralnum)*spiralnum + 1;

	draw o
	for i=1 step spiralnum until n:
	..seedloc(i)
	endfor
	..seedloc(lastseed) withcolor mycolour;

	unfill fullcircle scaled u shifted seedloc(lastseed);
	draw fullcircle scaled u shifted seedloc(lastseed) withcolor mycolour;
	label(decimal(spiralnum) infont numfont scaled defaultscale,seedloc(lastseed));
enddef;

beginfig(1)
	n:=200;

	for i=1 upto n:
		r:= i*u*rfactor;
		seedsize := u*seedsizefactor*sqrt(i);
		fill fullcircle scaled seedsize shifted (r * dir (theta * i));
		%draw thelabel(decimal(i) infont numfont scaled (sqrt(i)*1.5pt/fontsize numfont),r * dir (theta * i)) withcolor white;
	endfor;

	pickup pencircle scaled 2;
	drawspiral(8);
	drawspiral(13);
	drawspiral(21);
	drawspiral(34);
endfig;

def mod(expr a,b) = a - b * floor (a/b) enddef;

beginfig(2)
	rfactor:= 1/40;
	seedsizefactor:=1/20;
	n:=1000;
	seedangle:=0;
	for i=1 upto n:
		r:= i*u*rfactor;
		seedsize := u*seedsizefactor*sqrt(i);
		seedangle:= mod(seedangle + theta,360);
		fill fullcircle scaled seedsize shifted (r * dir seedangle);
	endfor;
endfig;
end
