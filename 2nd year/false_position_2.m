clear all;
clc;
syms x;
f(x)=input('enter the function : ');
a=input('enter the initial point : ');
b=input('enter the final point : ');
e=input('enter the permissible error : ');
c=((a*f(b))-(b*f(a)))/(f(b)-f(a));

while abs(f(c))>e
    c=((a*f(b))-(b*f(a)))/(f(b)-f(a));
    if f(c)*f(a)<0
        b=c;
    elseif f(c)*f(b)<0
        a=c;
    end
end
double(c)