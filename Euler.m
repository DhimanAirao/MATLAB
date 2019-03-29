clear all;
clc;
format long;
syms x;
f=input('enter the function of x ');
startvalue=input('enter the initial value ');
intervals=input('enter the number of intervals ');
interval_size=input('enter the interval size ');

for i=1:intervals
    newvalue=startvalue+(f(startvalue)*interval_size);
    startvalue=newvalue;
end
disp(newvalue);
