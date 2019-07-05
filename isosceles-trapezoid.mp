input common;

vardef circumcentre(expr p,q,r) =
	save ax,ay,bx,by,cx,cy;
	%From https://en.wikipedia.org/wiki/Circumscribed_circle#Circumcenter_coordinates
	(ax,ay)*u = p; (bx,by)*u = q; (cx,cy)*u = r;
	D := 2*(ax * (by - cy) + bx * (cy - ay) + cx * (ay - by));
	ux := ((ax**2 + ay**2)*(by - cy) + (bx**2 + by**2)*(cy-ay) + (cx**2 + cy**2)*(ay-by))/D;
	uy := ((ax**2 + ay**2)*(cx - bx) + (bx**2 + by**2)*(ax-cx) + (cx**2 + cy**2)*(bx-ax))/D;
	(ux,uy)
enddef;

beginfig(1)
	pair a,b,c,d,e,centre[];
	a = (-2u,3u);
	b = a xscaled -1;
	c = (4u,0);
	d = c xscaled -1;
	e = (a + c)/2;
	draw a--b--c--d--cycle;
	draw a--c;
	drawdot a withpen dotpen;
	drawdot b withpen dotpen;
	drawdot c withpen dotpen;
	drawdot d withpen dotpen;
	drawdot e withpen dotpen;
	label.ulft("A",a);
	label.urt("B",b);
	label.urt("C",c);
	label.ulft("D",d);
	label.bot("E",e);

	centre1 = u*circumcentre(a,b,e);
	centre2 = u*circumcentre(c,d,e);
	r1 = abs(a - centre1);
	r2 = abs(c - centre2);
	draw fullcircle scaled (2*r1) shifted centre1;
	draw fullcircle scaled (2*r2) shifted centre2;
	label.lft(btex $\omega$ etex, centre1 + r1 * dir 150);
	label.ulft(btex $\Omega$ etex, centre2 + r2 * dir 150);

	path tangent[];
	tangent1 = a--(2*(centre1 - a) rotated -90 shifted a); %tangent to circle 1 through a
	tangent2 = d--(2*(centre2 - d) rotated 90 shifted d); %tangent to circle 2 through d
	pair p; p = tangent1 intersectionpoint tangent2;
	draw a--p--d;
	drawdot p withpen dotpen;
	label.lft("P",p);
	draw p--e;
	draw d--e;
	draw b--e;
endfig;
end
