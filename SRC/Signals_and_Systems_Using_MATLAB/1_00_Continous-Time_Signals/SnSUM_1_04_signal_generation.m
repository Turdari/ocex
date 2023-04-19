%%
% Example 1.16---Signal generation
%%
clear all; clf
Ts=0.01; t=-5:Ts:5; % support of signal
% ramps with support [-5, 5]

% y1=ramp(t,3,3); % slope of 3 and advanced by 3
% y2=ramp(t,-6,1); % slope of -6 and advanced by 1
% y3=ramp(t,3,0); % slope of 3


% unit-step signal with support [-5,5]
% y4=-3*unitstep(t,-3); % amplitude -3 and delayed by 3
%y=y1+y2+y3+y4;

y = unitstep(t, 0);
plot(t,y,'k'); axis([-5 5 -1 7]); grid
