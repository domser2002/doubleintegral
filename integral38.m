function I = integral38(f,a,b,n)
arguments
f function_handle
a
b
n=1000;
end
H=(b-a)/n;
k=0:(n-1);
S1=@(y)(f(a+k*H,y));
S1=@(y)(sum(S1(y)));
S2=@(y)(f(a+k*H+H/3,y));
S2=@(y)(sum(S2(y)));
S3=@(y)(f(a+k*H+2*H/3,y));
S3=@(y)(sum(S3(y)));
I=@(y)((H/8)*(f(a,y)+f(b,y)+2*S1(y)+3*S2(y)+3*S3(y)));
end

