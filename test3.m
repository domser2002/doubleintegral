function test3
%Autor: Dominik_Seredyn_320732

format long
more on

disp("This test will test the order of implemented method")
disp("Expected order is 4 for variable x and 2 for variable y")
disp("It calls a function with 1 subinterval for each variable")

disp(' ')
disp("For variable x:")
disp("f(x,y)=1 - 0th order polynomial, correct result is expected")
f=@(x,y)(1);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,1);
disp("Correct: 1")
disp(strcat("Returned: ",num2str(I)));

disp("f(x,y)=12x-20y - 1st order polynomial, correct result is expected")
f=@(x,y)(12*x-20*y);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,1);
disp("Correct: -4")
disp(strcat("Returned: ",num2str(I)));

disp("f(x,y)=12x^2-20y - 2nd order polynomial, correct result is expected")
f=@(x,y)(12*x.^2-20*y);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,1);
disp("Correct: -6")
disp(strcat("Returned: ",num2str(I)));

disp("f(x,y)=12x^3-20y - 3rd order polynomial, correct result is expected")
f=@(x,y)(12*x.^3-20*y);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,1);
disp("Correct: -7")
disp(strcat("Returned: ",num2str(I)));

disp("f(x,y)=12x^4-20y - 4th order polynomial, result may not be accurate")
f=@(x,y)(12*x.^4-20*y);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,1);
disp("Correct: -7.6")
disp(strcat("Returned: ",num2str(I)));

disp(' ')
disp("For variable y:")
disp("f(x,y)=1 - 0th order polynomial, correct result is expected")
f=@(x,y)(1);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,1);
disp("Correct: 1")
disp(strcat("Returned: ",num2str(I)));

disp("f(x,y)=12y-20x - 1st order polynomial, correct result is expected")
f=@(x,y)(12*y-20*x);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,1);
disp("Correct: -4")
disp(strcat("Returned: ",num2str(I)));

disp("f(x,y)=12y^2-20x - 2nd order polynomial, result may not be accurate")
f=@(x,y)(12*y.^2-20*x);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,1);
disp("Correct: -6")
disp(strcat("Returned: ",num2str(I)));
end

