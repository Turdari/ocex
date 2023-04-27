%% Pro 3.25
syms s t yzs yzi
% zero-state response
num=[0 0 0 1];
den=[1 2 1 0];
figure(1)
subplot(121)
[r,p]=pfeLaplace(num,den);
disp('>>>>> Inverse Laplace <<<<<')
yzs=ilaplace(num(4)/(den(1)*s^3+den(2)*s^2+den(3)*s))
subplot(122)
ezplot(yzs,[0,10])
axis([0 10 -0.1 1.2]); grid;
%zero-input response
num=[0 0 1 1];
figure(2)
subplot(121)
[r,p]=pfeLaplace(num,den);
disp('>>>>> Inverse Laplace <<<<<')
yzi=ilaplace((num(3)*s+num(4))/(den(1)*s^2+den(2)*s+den(3)))
subplot(122)
ezplot(yzi,[0,10])
axis([0 10 -0.1 1.2]); grid;
% complete response
y=yzs+yzi;
figure(3)
ezplot(y,[0,10])
axis([0 10 -0.1 1.2])
grid;
% transient response
yt=y-1;
figure(4)
ezplot(yt,[0,10])
axis([0 10 -0.5 .2]); grid;