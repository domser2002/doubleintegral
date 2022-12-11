function test4
%Autor: Dominik_Seredyn_320732

disp("This is a numeric and implementation test")
disp("It plots approximate computational complexity of the function")
n=1:1000;
f=@(x,y)(x+y);
t=zeros([1000 1]);
for i=1:1000
    tic;
    P1Z33_DSE_doubleintegral(f,0,1,0,1,i,i);
    t(i)=toc;
end
plot(n,t);
xlabel("n")
ylabel("O(n)")
end

