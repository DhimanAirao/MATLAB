clear all;
clc;

n=input('enter the value of n');
a=input('enter the value of 1st no.');
b=input('enter the value of last no.');
h=(b-a)/n;
sum1=0;
sum2=0;
sum3=0;
for i=3:3:n-1
    sum1=sum1+myfunc(a+i*h);
end
for i=1:n-1
    sum2=sum2+myfunc(a+i*h);
end
sum3=sum2-sum1;
area=(3*h/8)*(myfunc(a)+myfunc(b)+(2*sum1)+(3*sum3));
area

