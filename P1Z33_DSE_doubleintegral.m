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
    n=1000
    m=1000
end
H1=(b-a)/n;
H2=(b-a)/m;
T=2;
T=repmat(T,1,n-1);
T=[1 T 1];
N=2;
N=repmat(N,1,m-1);
N=[1 N 1];
% N=[3 2];
% N=repmat(N,1,ceil((m-1)/2));
% if mod(m,2)==0
%     N(end)=[];
% end
% N=[1 N 1];

C=T'*N;
C=((H1*H2)/4)*C;

x=a:H1:b;
y=a:H2:b;
W=zeros(n+1,m+1);
for i=1:(m+1)
    W(:,i)=f(x,y(i));
end
S=C.*W;
I=sum(sum(S));

% H=(b-a)/n;
% k=1:(n-1);
% Sx=@(y)(f(a+k*H,y));
% g=@(y)(H/2*(f(0,y)+f(1,y)+2*sum(Sx(y))));
% g(0)
% g(1)
% g=integral38(f,a,b,n);
% g(0)
% g(1)
% I=integraltrap(g,c,d,m);
end