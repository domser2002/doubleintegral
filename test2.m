function test2
disp("This test will test the order of implemented method")
disp("Expected order is 4 for variable x and 2 for variable y")
disp("It calls a function with default number of subintervals")

disp("f(x,y)=1 - 0th order polynomial, correct result is expected")
f=@(x,y)(1);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1);
disp("Correct: 1")
disp(strcat("Returned: ",num2str(I)));

disp("f(x,y)=12x-20y - 1st order polynomial, correct result is expected")
f=@(x,y)(12*x-20*y);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1);
disp("Correct: -4")
disp(strcat("Returned: ",num2str(I)));

disp("f(x,y)=12x^2-20y - 2nd order polynomial, correct result is expected")
f=@(x,y)(12*x.^2-20*y);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1);
disp("Correct: -6")
disp(strcat("Returned: ",num2str(I)));

disp("f(x,y)=12x^3-20y - 3rd order polynomial, correct result is expected")
f=@(x,y)(12*x.^3-20*y);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1);
disp("Correct: -7")
disp(strcat("Returned: ",num2str(I)));

disp("f(x,y)=2x^3+3x^2+4xy+5y^2 - 4th order polynomial, result may not be accurate")
f=@(x,y)(2*x.^3+3*x.^2+4*x.*y+5*y);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1,10,10);
disp("Correct: 4.16")
disp(strcat("Returned: ",num2str(I)));

disp("f(x,y)=x^4+2x^3+3x^2+4xy+5y^2 - 4th order polynomial, result may not be accurate")
f=@(x,y)(-11*x.^4+22*x.^3+3*x.^2+4*x.*y+5*y);
I=P1Z33_DSE_doubleintegral(f,0,3,0,3);
disp("Correct: 4.36")
disp(strcat("Returned: ",num2str(I)));

f=@(x,y)(x.^3+y.^2);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1);
disp("Expected: 0.5833...")
disp(strcat("Returned:",num2str(I)));

f=@(x,y)(x.^3+y.^3);
I=P1Z33_DSE_doubleintegral(f,0,1,0,1);
disp("Expected: 0.5")
disp(strcat("Returned:",num2str(I)));
end

