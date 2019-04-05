clear all;
clc;
syms x;
f=input('enter the function : ');
a=input('enter the 1st value : ');
b=input('enter the 2nd value : ');


for i=0:100
    d=(f(b)-f(a))/(b-a);
    h=f(b)/d;
    c=b-h;
    if f(c)*f(b)<0
        a=c;
    elseif f(c)*f(a)<0
        b=c;
    elseif f(c)==0
        disp(c);
    end
end
disp('The root of equation is at : ');
disp(c);