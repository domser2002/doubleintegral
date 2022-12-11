function test1
%Autor: Dominik_Seredyn_320732

format long
more on

disp("This test will show that the method is implemented correctly")
disp("It will use only functions for which the method converges")
disp("It calls a function with default number of subintervals")

disp("f(x,y)=x+y")
disp("D=<0,1>x<0,1>")
disp("Correct result is 1")
f=@(x,y)(x+y);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1);
disp(strcat("Function returned ",num2str(I)));

disp(' ')
disp("f(x,y)=x^2+y")
disp("D=<0,1>x<0,1>")
disp("Correct result is 0.833...")
f=@(x,y)(x.^2+y);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1);
disp(strcat("Function returned ",num2str(I)));
disp("D=<-3,4>x<2,4>")
disp("Correct result is 102.666...")
I=P1Z33_DSE_doubleintegral(f,-3,4,2,4);
disp(strcat("Function returned ",num2str(I)));

disp(' ')
disp("f(x,y)=2x^2+3xy+0.5y")
disp("D=<0,1>x<0,1>")
disp("Correct result is 1.666...")
f=@(x,y)(2*x.^2+3*x.*y+0.5*y);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1);
disp(strcat("Function returned ",num2str(I)));
disp("D=<-3,4>x<2,4>")
disp("Correct result is 205.333...")
I=P1Z33_DSE_doubleintegral(f,-3,4,2,4);
disp(strcat("Function returned ",num2str(I)));
end

