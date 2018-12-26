input common;

beginfig(1)
	xs = 1.5cm; ys = 0.8cm; %horizontal and vertical scale
	label.top("SYDNEY NOON UV INDEX",(6.5,13.5) xscaled xs yscaled ys);

	%axes
	drawdblarrow ((0.5,-1)--(0.5,13.5)) xscaled xs yscaled ys; %is at 0.5 because centre of jan is at 1, so jan runs from 0.5 to 1.5
	drawdblarrow ((0,0)--(13,0)) xscaled xs yscaled ys;

	%y-axis
	for i = 1 upto 13:
		draw ((0.5,i)--(12.5,i)) xscaled xs yscaled ys withcolor (white*0.7) dashed evenly; %horizontal dashed lines
		label.lft(decimal(i) infont numfont scaled defaultscale,(0.5,i) xscaled xs yscaled ys);
	endfor;

	%estimate of monthly average uv (at noon, clear skies). from http://www.bom.gov.au/jsp/ncc/climate_averages/uv-index/index.jsp?period=feb#maps
	path p; p = 
	(1,12.3){dir -30}.. %jan. fudging the angle
	(2,11.1).. %feb
	(3,8.5).. %etc
	(4,5.7)..
	(5,3.5)..
	(6,2.5)..
	(7,2.7)..
	(8,3.9)..
	(9,5.9)..
	(10,8.2)..
	(11,10.4)..
	(12,11.9); %dec
	%draw p connected to copies of p to the left and right, so that the left of the graph matches with the right (but cut them out so they're not displayed)
	draw (((p shifted (-12,0))..p..(p shifted (12,0)) cutbefore ((0.5,12)--(0.5,13))) cutafter ((12.5,12)--(12.5,13))) xscaled xs yscaled ys; %

	string months; months = "JanFebMarAprMayJunJulAugSepOctNovDec";
	pair q;
	for i = 1 upto 12:
		draw ((i+0.5,0)--(i+0.5,13)) xscaled xs yscaled ys withcolor (white*0.7) dashed evenly; %vertical dashed lines
		q := point i-1 of p;
		theta := angle (direction (i-1) of p xscaled xs yscaled ys);
		%label each point with the uv index and month
		draw thelabel.top(TEX("$" & decimal(ypart (point i-1 of p)) & "$"),(0,0)) rotated theta shifted (q xscaled xs yscaled ys);
		draw thelabel.bot(substring (3i-3,3i) of months,(0,0)) rotated theta shifted (q xscaled xs yscaled ys);
		drawdot q xscaled xs yscaled ys withpen dotpen;
	endfor;
endfig;
end
