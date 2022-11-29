function I = integralrect(f,a,b,n)
arguments
f=@(x)(x.^2);
a=0;
b=1;
n=10;
end
H=(b-a)/n;
k=1:(n-1);
S=f(a+k*H);
S
S=sum(S);
I=(H/2)*(f(a)+f(b)+2*S);
end

