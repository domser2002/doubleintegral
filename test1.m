function test1
%TEST1 Summary of this function goes here
%   Detailed explanation goes here
disp("This test is meant to show how fast the function is,")
disp("Area is rectangle <0,1>x<0,1>")
f=@(x,y)(x.^2+y.^2);
disp("Results for f(x,y)=x^2+y^2:")
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,10,10);
t=toc;
disp(strcat("For 10 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,100,100);
t=toc;
disp(strcat("For 100 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,1000,1000);
t=toc;
disp(strcat("For 1000 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,10000,10000);
t=toc;
disp(strcat("For 10000 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))

f=@(x,y)(sin(x)+sin(y));
disp("Results for f(x,y)=sin(x)+sin(y):")
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,10,10);
t=toc;
disp(strcat("For 10 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,100,100);
t=toc;
disp(strcat("For 100 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,1000,1000);
t=toc;
disp(strcat("For 1000 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,10000,10000);
t=toc;
disp(strcat("For 10000 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))

f=@(x,y)(x.^6+x.^3.*y.^5+y.^4);
disp("Results for f(x,y)=x^6+x^3*y^5+y^4:")
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,10,10);
t=toc;
disp(strcat("For 10 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,100,100);
t=toc;
disp(strcat("For 100 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,1000,1000);
t=toc;
disp(strcat("For 1000 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,10000,10000);
t=toc;
disp(strcat("For 10000 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))

f=@(x,y)(sin(x.^2+y.^2)+cos(x.^7+y.^11));
disp("Results for f(x,y)=sin(x^2+y^2)+cos(x^7+y^11):")
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,10,10);
t=toc;
disp(strcat("For 10 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,100,100);
t=toc;
disp(strcat("For 100 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,1000,1000);
t=toc;
disp(strcat("For 1000 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
tic;
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,10000,10000);
t=toc;
disp(strcat("For 10000 subintervals each variable program returned ",num2str(I)," after ",num2str(t)," seconds"))
end

