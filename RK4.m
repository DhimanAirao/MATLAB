clear all;
clc;
format long;
f=input('enter the function of x ');
startvalue=input('enter the initial value of y ');
init_x=input('enter the initial value of x : ');
final_x=input('enter the final value of x at which y is needed :');
interval_size=input('enter the interval size ');
intervals=(final_x-init_x)/interval_size;

for i=1:intervals
    K1=f(startvalue);
    K2=f(startvalue+(K1/2)*interval_size);
    K3=f(startvalue+(K2/2)*interval_size);
    K4=f(startvalue+K3*interval_size);
    P=(K1+2*(K2+K3)+K4)/6;
    newvalue=startvalue+(P*interval_size);
    startvalue=newvalue;
end
disp('The value of y is ');
disp(newvalue);
