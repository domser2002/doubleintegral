function test5
%Autor: Dominik_Seredyn_320732

disp("This test is meant to show the order of error")
disp("It uses functions for which we expect accurate result for one variable")
disp("and inaccurate results for second variable")
format short e
more on

k=4;
b=1;
a=0;

disp(' ')
disp("Functions inaccurate for variable x:")
disp("f(x)=x^5+y")
disp("D=<0,1>x<0,1>")
f=@(x,y)(x.^5+y);
n=[1; 10; 100; 1000];
correct=2/3;
correct=repmat(correct,k,1);
H=(b-a)./n;
result=zeros(k,1);
for i=1:k
    result(i)=P1Z33_DSE_doubleintegral(f,0,1,0,1,n(i),1);
end
error=abs(result-correct);
T=table(n,H,correct,result,error);
disp(T)

disp("f(x)=x^6+y")
disp("D=<0,1>x<0,1>")
f=@(x,y)(x.^6+y);
correct=9/14;
correct=repmat(correct,k,1);
b=1;
a=0;
n=[1; 10; 100; 1000];
H=(b-a)./n;
result=zeros(k,1);
for i=1:k
    result(i)=P1Z33_DSE_doubleintegral(f,0,1,0,1,n(i),1);
end
error=abs(result-correct);
T=table(n,H,correct,result,error);
disp(T)

disp(' ')
disp("Functions inaccurate for variable y:")
disp("f(x)=x^2+y^2")
disp("D=<0,1>x<0,1>")
f=@(x,y)(x.^2+y.^2);
correct=2/3;
correct=repmat(correct,k,1);
b=1;
a=0;
m=[1 ;10 ;100 ;1000];
H=(b-a)./m;
result=zeros(k,1);
for i=1:k
    result(i)=P1Z33_DSE_doubleintegral(f,0,1,0,1,1,m(i));
end
error=abs(result-correct);
T=table(m,H,correct,result,error);
disp(T)

disp("f(x)=x^2+y^3")
disp("D=<0,1>x<0,1>")
f=@(x,y)(x.^2+y.^3);
correct=7/12;
correct=repmat(correct,k,1);
b=1;
a=0;
m=[1 ;10 ;100 ;1000];
H=(b-a)./m;
result=zeros(k,1);
for i=1:k
    result(i)=P1Z33_DSE_doubleintegral(f,0,1,0,1,1,m(i));
end
error=abs(result-correct);
T=table(m,H,correct,result,error);
disp(T)

end

