clear all;
clc;
syms x y;
f(x,y)=input('enter the 1st function');
g(x,y)=input('enter the 2nd function');
a=input('enter first value');
b=input('enter last value');

d_x(x,y)=diff (f,x);
d_y(x,y)=diff(f,y);
e_x(x,y)=diff(g,x);
e_y(x,y)=diff(g,y);



for i=0:3
    A=[d_x(a,b),d_y(a,b);e_x(a,b),e_y(a,b)];
    B=[f(a,b);g(a,b)];
    X=double(A\B);
    e=a-X(1,1);
    h=b-X(2,1);
    if f(e,h)~=0
        a=e;
        b=h;
    end
end
e
h

