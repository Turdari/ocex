[X,Y] = meshgrid(-10:.1:10);
s=X+j*Y;
%Z= abs((s+3)./((s+3).^2+25));

Z = log(abs(2 * (s.^2 +1) ./ (s.^2 + 2*s + 5)))


mesh(X,Y,Z)