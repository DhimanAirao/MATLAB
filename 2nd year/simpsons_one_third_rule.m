clear all;
clc;

n=input('enter the value of n'); %n must be even number
a=input('enter the 1st point');
b=input('enter the last point');
h=(b-a)/n;
sum1=0;
sum2=0;
for i=1:2:n-1
    sum1=sum1+myfunc(a+i*h);
end
for i=2:2:n-1
    sum2=sum2+myfunc(a+i*h);
end
area=(h/3)*(myfunc(a)+myfunc(b)+(4*sum1)+(2*sum2));
area
 