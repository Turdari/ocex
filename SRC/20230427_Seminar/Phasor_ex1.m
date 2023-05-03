%%
% Example 0.3---Interactive graphing example
%%
clear all; clf


% f=input(' frequency in Hz >> ')
% A=input(' amplitude (>0) >> ')
% theta=input(' phase in degrees >> ')

% Can represent all in generic format
% x(t) = A * e^{at}
% x(t) = |A|e^{j \theta } * e ^ {\sigma + j\Omega}
% this is just continuous form.
f = 1 ;
A = 1 ;
theta = 0 ;
% Remember that.. 1Hz = 2\pi rad/s
% Also 1 rad/s = 1/2 \pi Hz 
omega = 2*pi*f; % frequency rad/s

tmax=1/f; % one period
% time=[ ]; n=0; % initialization

total_time = 5 ; 
frame_number_insec = 25 ;
pause_time = 1 / frame_number_insec ;
time = [ 0 : pause_time : total_time ] ;
n = 0;

figure(1)
% for t=0:tmax/36:tmax % loop 
for t = time
    z=A*exp(j*(omega*t+theta*pi/180));
    z1= (1/2) * A*exp(j*(2 *omega*t+theta*pi/180));
    x=real(z); 
    y=imag(z); % projectio
    x1=real(z1); 
    y1=imag(z1); 
    % time=[time t]; % sequence

    subplot(2,1,1) % subplot 1 of 2
    compass(x,y,'r'); % plot vector
    hold on % hold current plot
    compass(x1,y1); % plot vector
    text(pi/2, 1, 'Peak Value');    
    axis('square') % square axis
    hold off

    subplot(2,1,2)
    plot(t,x,'*r') % plot x point in red '*'
    hold on % hold current plot
    plot(t,x1,'*b') % plot x point in red '*'
    hold on % hold current plot
    % axis('square');
    axis([0 total_time -1.1*A 1.1*A]); grid % bounds; grid

    if n==0 % execute next statement when n=0
        pause(1) % pause
    else % if n=0 not satisfied go next statement
        pause(0.05)
    end % end of conditional
    n=n+1; % increment
end % end loop

hold off % dismiss hold on