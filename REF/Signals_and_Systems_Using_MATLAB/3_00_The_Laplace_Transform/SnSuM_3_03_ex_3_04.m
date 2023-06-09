%%
% Example 3.4---Laplace transform of exponential and modulated exponential
%%
syms t
x=exp(-t);
y=x*cos(10*t);
X=laplace(x)
Y=laplace(y)
% plotting of signals and poles/zeros
figure(1)
subplot(221)
fplot(x,[0,5]);grid
axis([0 5 0 1.1]);title('x(t)=exp(-t)u(t)')
numx=[0 1];denx=[1 1];
subplot(222)
splane(numx,denx)
subplot(223)
fplot(y,[-1,5]);grid
axis([0 5 -1.1 1.1]);title('y(t)=cos(10t)exp(-t)u(t)')
numy=[0 1 1];deny=[1 2 101];
subplot(224)
splane(numy,deny)