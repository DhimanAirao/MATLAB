clear all;
clc;
syms x;
f=input('enter the function :');
a=input('enter first value');

d=inline(diff(f(x),x));
c=a;
for i=0:1000
    h=f(c)/d(c);
    e=c-h;
    if f(e)~=0
        c=e;
    end
end
e
 