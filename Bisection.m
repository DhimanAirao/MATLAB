clear all;
clc;

f=input('enter the function : ')  %format to enter function :- @(x) function
a=1.5635;
b=4.3658;

for i=0:100
    c=(a+b)/2;
    if f(a)*f(c)<0
        b=c;
    elseif f(b)*f(c)<0
        a=c;
    end
end
