clear all; clf

th = linspace(pi/4,2*pi,10);

r = linspace(5,20,10);

[u,v] = pol2cart(th,r);

compass(u,v)