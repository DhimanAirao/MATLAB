clear all;
clc;

n=input('enter the value of n')
a=0.0000;
b=10.0000;
h= (a+b)/n;
sum=0;

for i=0:(n-1)
    sum=sum+myfunc(a+i*h);
end
area=(h/2)*(myfunc(a)+myfunc(b)+2*sum);
area
 
    