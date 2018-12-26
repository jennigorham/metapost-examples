%A recreation of a diagram on page 54 of Foundations of Analog and Digital Electronic Circuits, by Anant Agarwal and Jeffrey Lang
%using mpsketch to place the arrows and labels

input common;

picture element; element = image(
	w := 0.5*u;
	h := 0.8*u;
	path p; p = (-w/2,-h/2)--(w/2,-h/2)--(w/2,h/2)--(-w/2,h/2)--cycle; %rectangle
	fill p withcolor white;
	draw p;
);

beginfig(1)
	r := 2.5u;
	draw fullcircle scaled 2r;
	drawdot o withpen dotpen;

	%draw the elements and wires
	n := 5;
	for i = 0 upto n-1:
		z[i] = (0,r) rotated (360/n*i);
		draw o--z[i];
		drawdot z[i] withpen dotpen;
		draw element rotated (360/n*i) shifted (z[i]/2);
		draw element rotated (360/n*i + 90) shifted (-z[i]);
	endfor;

	%draw the loop
	offset = 0.15*u;
	path p[];
	p1 = fullcircle scaled (2*(r-offset));
	p2 = (o--z[0]) shifted (offset,0);
	p3 = (o--z[4]) shifted ((0,offset) rotated angle z[4]);
	draw buildcycle(p1,p2,p3) withcolor mycolour dashed evenly;


	%draw the branch
	p2 := o--z[1];
	p3 := o--z[2];
	draw (p1 cutbefore p2) cutafter p3 withcolor mycolour dashed evenly;

	%labels
	label("Loop",(0.38r,0.46r));
	drawarrow (0.22r,0.38r)..(0.16r,0.25r)..(0.16r,0.11r);

	label("Nodes",(-1.31r,1.13r));
	drawarrow (-1.31r,1.04r)..(-1.19r,0.81r)..(-1.13r,0.45r)..(-1.00r,0.31r);
	drawarrow (-1.20r,1.20r)..(-0.60r,1.29r)..(-0.05r,1.03r);

	label("Branch",(-1.59r,-0.25r));
	drawarrow (-1.56r,-0.19r)..(-1.33r,-0.03r)..(-0.97r,0.04r);

	label("Elements",(1.54r,0.46r));
	drawarrow (1.41r,0.53r)..(1.00r,0.86r)..(0.70r,0.87r);
	drawarrow (1.49r,0.33r)..(1.31r,-0.06r)..(1.12r,-0.23r);
endfig;
end
