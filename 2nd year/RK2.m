clear all;
clc;
format long;
f=input('enter the function of y ');
startvalue=input('enter the initial value of y ');
init_x=input('enter the initial value of x : ');
final_x=input('enter the final value of x : ');
intervals=input('enter the number of intervals ');
interval_size=(final_x-init_x)/intervals;

for i=1:intervals
    K1=f(startvalue);
    K2=f(startvalue+(K1*interval_size));
    P=(K1+K2)/2;
    newvalue=startvalue+(P*interval_size);
    startvalue=newvalue;
end
disp('The value of y is ');
disp(newvalue);