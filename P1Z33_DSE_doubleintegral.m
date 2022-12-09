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
%n(optional) - number of subintervals for variable x, by default 10000,
%m(optional) - number of subintervals for variable y, by default 10000.
%Return value I is equal to double integral of function f on rectangle
%D=<a,b>x<c,d>.
arguments
    f function_handle
    a
    b
    c
    d
    n=10
    m=n.^2
end
%steps for each variable
Hx=(b-a)/n;
Hy=(d-c)/m;
%generate vector of newton 3/8 coefficients
N=[3 3 2];
N=repmat(N,1,n);
N(end)=[];
N=[1 N 1];
%generate vector of trapezoids coefficients
T=2;
T=repmat(T,1,m-1);
T=[1 T 1];
%generate matrix of coefficients for double integral
C=T'*N;
C=((Hx*Hy)/16)*C;
%generate matrix of function values in data points
x=a:(Hx/3):b;
y=c:Hy:d;
W=zeros(m+1,3*n+1);
for i=1:(3*n+1)
    W(:,i)=f(x(i),y);
end
%generate final result
S=C.*W;
I=sum(sum(S));
end