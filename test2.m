function test2
%Autor: Dominik_Seredyn_320732

format long
more on

disp("This test is meant to show how fast the function is")
disp("It also shows that the function does not crush for too many subintervals")
disp("Area is a rectangle <0,1>x<0,1>.")
disp("It uses functions for which this method might be not accurate, " + ...
    "especially for small number of subintervals")

f=@(x,y)(x.^2+y.^2);
disp("Results for f(x,y)=x^2+y^2:")
disp("Correct result is 0.666...")
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

f=@(x,y)(x.^6+x.^3.*y.^5+y.^4);
disp("Results for f(x,y)=x^6+x^3*y^5+y^4:")
disp("Correct result is 0.384...")
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

f=@(x,y)(sin(x)+sin(y));
disp("Results for f(x,y)=sin(x)+sin(y):")
disp("Correct result is 0.9194...")
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

end

