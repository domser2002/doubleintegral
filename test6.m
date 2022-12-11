function test6
%Autor: Dominik_Seredyn_320732

format short e
more on
disp("This is a numeric test which shows how the method works for specific types of functons")
disp("It checks how big the error is for n=1,10,20 and 30")
disp("m=n^2 as default - error for both variables should be similar")

n=[1;10;20;30];
k=4;

disp(' ')
disp("Polynomials:")
disp("f(x)=x^5+y^5")
disp("D=<0,1>x<0,1>")
f=@(x,y)(x.^5+y.^5);
correct=1/3;
correct=repmat(correct,k,1);
result=zeros(k,1);
for i=1:k
    result(i)=P1Z33_DSE_doubleintegral(f,0,1,0,1,n(i));
end
error=abs(result-correct);
T=table(n,error);
disp(T)

disp("f(x)=x^15+y^15")
disp("D=<0,1>x<0,1>")
f=@(x,y)(x.^15+y.^15);
correct=1/8;
correct=repmat(correct,k,1);
result=zeros(k,1);
for i=1:k
    result(i)=P1Z33_DSE_doubleintegral(f,0,1,0,1,n(i));
end
error=abs(result-correct);
T=table(n,error);
disp(T)

disp(' ')
disp("Trig functions:")
disp("f(x)=sin(x+y)")
disp("D=<0,pi/2>x<0,pi/2>")
f=@(x,y)(sin(x+y));
correct=2;
correct=repmat(correct,k,1);
result=zeros(k,1);
for i=1:k
    result(i)=P1Z33_DSE_doubleintegral(f,0,pi/2,0,pi/2,n(i));
end
error=abs(result-correct);
T=table(n,error);
disp(T)

disp("f(x)=cos(5x+6y)")
disp("D=<0,pi/2>x<0,pi/2>")
f=@(x,y)(cos(5*x+6*y));
correct=-1/15;
correct=repmat(correct,k,1);
result=zeros(k,1);
for i=1:k
    result(i)=P1Z33_DSE_doubleintegral(f,0,pi/2,0,pi/2,n(i));
end
error=abs(result-correct);
T=table(n,error);
disp(T)

disp(' ')
disp("Exponential functions:")
disp("f(x)=e^(x+y)")
disp("D=<0,1>x<0,1>")
f=@(x,y)(exp(x+y));
correct=exp(1)^2-2*exp(1)+1;
correct=repmat(correct,k,1);
result=zeros(k,1);
for i=1:k
    result(i)=P1Z33_DSE_doubleintegral(f,0,1,0,1,n(i));
end
error=abs(result-correct);
T=table(n,error);
disp(T)

disp("f(x)=2^(5x+6y)")
disp("D=<0,1>x<0,1>")
f=@(x,y)(2.^(5*x+6*y));
correct=651/(10*(log(2)^2));
correct=repmat(correct,k,1);
result=zeros(k,1);
for i=1:k
    result(i)=P1Z33_DSE_doubleintegral(f,0,1,0,1,n(i));
end
error=abs(result-correct);
T=table(n,error);
disp(T)

disp(' ')
disp("Logarithms:")
disp("f(x)=ln(x+y)")
disp("D=<1,2>x<1,2>")
f=@(x,y)(log(x+y));
correct=(16*log(4)-18*log(3)+4*log(2)-3)/2;
correct=repmat(correct,k,1);
result=zeros(k,1);
for i=1:k
    result(i)=P1Z33_DSE_doubleintegral(f,1,2,1,2,n(i));
end
error=abs(result-correct);
T=table(n,error);
disp(T)

disp("f(x)=log(5x+6y)")
disp("D=<1,2>x<1,2>")
f=@(x,y)(log10(5*x+6*y));
correct=(484*log(22)-289*log(17)-256*log(16)+121*log(11)-90)/(60*log(10));
correct=repmat(correct,k,1);
result=zeros(k,1);
for i=1:k
    result(i)=P1Z33_DSE_doubleintegral(f,1,2,1,2,n(i));
end
error=abs(result-correct);
T=table(n,error);
disp(T)
end

