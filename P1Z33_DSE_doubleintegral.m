function I = P1Z33_DSE_doubleintegral(f,a,b,c,d,n,m)
%Autor: Dominik_Seredyn_320732
%Project 1, task 33
%
%I=P1Z33_DSE_doubleintegral(a,b,c,d,f,n,m) numerically approximates double
%integral of given function using composite Newton 3/8 quadrature with 
%respect to x and composite quadrature of trapezoids with respect to y.
%Parameters:
%f=f(x,y) - handle to integrated function of 2 variables,
%a - the beginning of integration interval for variable x,
%b - the end of integration interval for variable x (b>a),
%c - the beginning of integration interval for variable y,
%d - the end of integration interval for variable y (d>c),
%n(optional) - number of subintervals for variable x, by default 1000,
%m(optional) - number of subintervals for variable y, by default 1000.
%Return value I is equal to double integral of function f on rectangle
%D=<a,b>x<c,d>.
arguments
    f function_handle
    a
    b
    c
    d
    n=1000
    m=1000
end
% H=(b-a)/n;
% k=1:(n-1);
% Sx=@(y)(f(a+k*H,y));
% g=@(y)(H/2*(f(0,y)+f(1,y)+2*sum(Sx(y))));
g=integral38(f,a,b,n);
I=integraltrap(g,c,d,m);
end