t = [-4:0.1:4]; % create time points in plot
f = zeros(size(t)); % initialize function f(t)
for k = 1:length(t) % construct function f(t)
if t(k) < 0; f(k) = 0; else f(k) = t(k); end;
if t(k) < -pi; f(k) = t(k) + 2*pi; end;
if t(k) > pi ; f(k) = 0; end;
%%
% 
% $$e^{\pi i} + 1 = 0$$
% 
end
% initialize Fourier series with the mean term
fs = (pi/4) * ones(size(t));
clf % clear any figures
for n = 1:6
% create plot of truncated FS with only n harmonic
fs = fs - (2/pi) * cos((2*n-1)*t) / (2*n-1)^2;
fs = fs - (-1)^n * sin(n*t) / n;
subplot(3,2,n), plot(t,fs,t,f)
if n==1
%legend(�mean plus 1 term�,�f(t)�); legend boxoff;
else
%legend([�mean plus �,num2str(n),� terms�],�f(t)�)
legend boxoff
end
if n >= 5; xlabel('t'); end;
end