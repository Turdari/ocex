
x = linspace(0,2*pi)
y = sin(x)

figure(1)

subplot(121)
plot(x,y)

grid()
set(gca,'xtick',[0:pi:2*pi]) % where to set the tick marks
set(gca,'xticklabels',{'0','\pi','2\pi'}) % give them user-defined labe

subplot(122)
[X,Y,Z] = peaks;
surf(X,Y,Z)
xlim([-inf 0]) 
ylim([-1 inf])

xlabel('x-axis')
ylabel('y-axis')
set(gca,'ztick',[0:pi:10*pi]) % where to set the tick marks
%set(gca,'zticklabels',{'0','\pi','2\pi'}) % give them user-defined labe

