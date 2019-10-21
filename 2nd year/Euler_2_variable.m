clear all;
clc;
syms x y;

f=input('enter the function of x&y:');
a=input('enter initial value of x');
b=input('enter initial value of y');
h=input('enter the intercept');
n=input('enter the number of iteration');

for i=1:n
    b=b+(f(a,b)*h);
    a=a+h;
end
b