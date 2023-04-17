%%
% Example 0.3---Interactive graphing example
%%
clear all; clf
f=input(' frequency in Hz >> ')
A=input(' amplitude (>0) >> ')
theta=input(' phase in degrees >> ')
omega=2*pi*f; % frequency rad/s

tmax=1/f; % one period
time=[ ]; n=0; % initialization
figure(1)
for t=0:tmax/36:tmax % loop
z=A*exp(j*(omega*t+theta*pi/180));
x=real(z); y=imag(z); % projection
time=[time t]; % sequence
subplot(121) % subplot 1 of 2
compass(x,y); % plot vector
axis('square') % square axis
subplot(122)
plot(n*tmax/36,x,'*r') % plot x point in red '*'
axis('square');
axis([0 tmax -1.1*A 1.1*A]); grid % bounds; grid
hold on % hold current plot
if n==0 % execute next statement when n=0
pause(1) % pause
else % if n=0 not satisfied go next statement
pause(0.1)
end % end of conditional
n=n+1; % increment
end % end loop
hold off % dismiss hold on