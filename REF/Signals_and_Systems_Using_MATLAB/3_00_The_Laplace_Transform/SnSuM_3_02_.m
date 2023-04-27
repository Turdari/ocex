%%
% Example 3.2---Laplace transform of unit-step, delta and pulse
%%
syms t u d p s
% unit-step function
u=str2sym('heaviside(t)')
U=laplace(u)
% delta function
d=str2sym('dirac(t)')
D=laplace(d)
% pulse
p=heaviside(t)-heaviside(t-1)
P=laplace(p)
u = heaviside(t)
U = 1/s
d = dirac(t)
D =1
p = heaviside(t) - heaviside(t - 1)
P = 1/s - 1/(s*exp(s))