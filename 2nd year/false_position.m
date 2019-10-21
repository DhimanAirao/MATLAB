clear all;
clc;

f=input('enter the function');
a=input('enter the initial point');
b=input('enter the final point');

for i=0:100
    c=((a*f(b))-(b*f(a)))/(f(b)-f(a));
    if f(c)*f(a)<0
        b=c;
    elseif f(c)*f(b)<0
        a=c;
    end
end
c
    