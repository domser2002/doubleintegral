function I = integraltrap(f,a,b,n)
arguments
    f function_handle
a
b
n=1000;
end
H=(b-a)/n;
k=0:(n-1);
S=f(a+k*H);
S=sum(S);
I=(H/2)*(f(a)+f(b)+2*S);
end