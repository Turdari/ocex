% Special variables
%{
    ans :
    pi :
    inf :
    NaN :
    i,j :
%}

% Mathematical
%{
    abs     : magnitude
    angle   : angle of complex number
    acos    : inverse cosine
    asine   : inverse sine
    atan    : inverse tangent
    acosh   : inverse cosh
    asinh   : inverse sinh
    atanh   : inverse tanh
    cos     : cos
    sin     : sine
    tan     : tangent
    cosh    : cosine hyperbolic
    sinh    : sine hyperbolic
    tanh    : tangent hyperbolic
    conj    : complex conjugate
    imag    : imaginary
    real    : real parts
    exp     : exponential
    log     : natural log
    log10   : base 10 log
%}

% Special operations
%{
    ceil    : round up, 
    floor   : round down to integer
    fix     : round toward zero, 
    round   : round toward to nearest integer
    .*      : entry-by-entry multiplication
    ./      : entry-by-entry division
    .^      : entry-by-entry power
    x'      : transpose of vector x
    A'      : transpose of matrix A
%}

% Array operations
%{
    x=first:increment:last      : row vector x from first to last by increment 
    x=linspace(first, last, n)  : row vector x with n elements from first
                                  to last  
    A=[x1;x2]                   : A matrix with rows x1, x2
    ones(N,M), zeros(N,M)       : N x M ones and zero arrays
    A(i,j)                      : (i,j) entry of matrix A
    A(i,:), A(:,j)              : i-row (j-column) and all column (???)
    whos                        : display variables in workspace
    size(A)                     : (number rows, number of columns) of A
    length(x)                   : number rows (columns) of vector x
%}

% Control flow
%{
    for, elseif     : for loop, else-if-loop
    while           : while loop
    pause, pause(n) : pause and pause n seconds
%}

% Plotting
%{
    plot, stem          : continuous, discrete plots
    figure              : figure for plotting
    subplot             : subplots
    hold on, hold off   : hold plot on or off
    axis, grid          : axis, grid of plots
    xlabel, ylabel,     
    title, legend       : labeling of axes, plots, and subplots
%}

%%
% Example 0.1 --- Computation with complex numbers
%%

clear all ; clf

z = 8 + 1j * 3;
v = 9 - 1j * 2;

a = real(z) + imag(v) ;
b = abs(z +conj(v));
c = abs(z*v);
d = angle(z) + angle(v);
dl = d * 180/pi ;
e = abs(v/z);
f=log(1j*imag(z+v));

