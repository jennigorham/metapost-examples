input common;

u:=3.5u;
delta=1/150; %"pixel" size

%If these two numbers are too high, metapost will make an Emergency stop
maxiterations=800;
maxboundarypoints=1200;

vardef ismember primary c = %is a point a member of the mandelbrot set?
	pair z; z=c;
	boolean ans; ans:=true;
	for i=1 upto maxiterations:
		if (xpart z ++ ypart z > 2): ans:=false; fi; %If the magnitude of z gets above 2, it will escape, and so the point is not in the mandelbrot set
		exitunless ans;
		z:=(z zscaled z) + c; %zscaled gives the complex product
	endfor;
	ans
enddef;

beginfig(1)
	%go around the boundary of the mandelbrot set, finding one point just inside and one point just outside the set. Add their midpoint to the path.
	path boundary; %path formed by the midpoints
	pair ip; pair op; %inner pixel and outer pixel

	%Start on the intersection of the boundary with the positive real axis, at (0.25,0)
	ip=(0.25-delta/2,0);
	op=ip+(delta,0);
	boundary=(ip+op)/2;

	pair a,b; %the next pixels to check to see which way the boundary goes
	for i=1 upto maxboundarypoints:
		a:=ip + ((op-ip) rotated 90);
		b:=a + op-ip;

		%Check if a and b are in the mandelbrot set, and set new outer and inner pixels accordingly
		if (ismember a):
			if (ismember b):
				ip:=b;
			else:
				ip:=a; op:=b;
			fi;
		else :
			op:=a;
		fi;

		exitif (xpart op < 0) and (ypart op < 0); %check if we've gone half-way around (the set is symmetric about the real axis, so no need to go all the way)
		boundary:=boundary..tension 3..((ip+op)/2); %add midpoint between new outer and inner pixels to the boundary
	endfor;
	boundary:=boundary..(reverse (boundary yscaled -1))..cycle; %add the other half of the set
	draw boundary scaled u;
endfig;
end
