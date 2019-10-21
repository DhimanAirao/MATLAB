clear all;
clc;
format long;
syms x;
f=input('enter the function of x ');
startvalue=input('enter the initial value ');
intervals=input('enter the number of intervals ');
interval_size=input('enter the interval size ');

for i=1:intervals
    predictedvalue=startvalue+(f(startvalue)*interval_size);
    P=(f(startvalue)+f(predictedvalue))/2;
    correctedvalue=startvalue+(P*interval_size);
    startvalue=correctedvalue;
end
disp(correctedvalue);
