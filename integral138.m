function I = integral138(f,a,b,n)
arguments
f function_handle
a
b
n=1000;
end
H=(b-a)/n;
k=0:(n-1);
S1=f(a+k*H);
S1=sum(S1);
S2=f(a+k*H+H/3);
S2=sum(S2);
S3=f(a+k*H+2*H/3);
S3=sum(S3);
I=((H/8)*(f(a)+f(b)+2*S1+3*S2+3*S3));
end

