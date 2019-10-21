clc;
clear all;
syms x
f(x)=input('enter the function  ');
a=input('entre the 1st value  ');
b=input('enter the final value  ');
e=input('enter the perimssible error  ');

c=(a+b)/2;

while abs(f(c))>e
    c=(a+b)/2;
    if f(a)*f(c)<0
        b=c;
    elseif f(b)*f(c)<0
        a=c;
    end
end
c

