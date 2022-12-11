function test7
%Autor: Dominik_Seredyn_320732

disp("This is a simple numeric test which shows on")
disp("the plot how error depends on area of D")
A=0.001:0.001:1;
f=@(x,y)(x.^5+y);
error=zeros(1000,1);
for i=1:1000
    correct=((i/1000)^6)/6+i/2000;
    result=P1Z33_DSE_doubleintegral(f,0,i/1000,0,1,1);
    error(i)=abs(correct-result);
end
plot(A,error);
xlabel("Area of D")
ylabel("Error")
end

