clear all;
clc;
format long;

f=input('enter the function of x and y ');
init_y=input('enter the initial value of y ');
init_x=input('enter the initial value of x : ');
final_x=input('enter the final value of x at which y is needed :');
interval_size=input('enter the interval size ');
intervals=(final_x-init_x)/interval_size;

for i=1:intervals
    K1=f(init_x,init_y);
    K2=f(init_x+(interval_size/2),init_y+(K1*interval_size/2));
    K3=f(init_x+(interval_size/2),init_y+(K2*interval_size/2));
    K4=f(init_x+interval_size,init_y+K3*interval_size);
    P=(K1+2*(K2+K3)+K4)/6;
    final_y=init_y+P*interval_size;
    init_y=final_y;
end
disp('The value of y is ');
disp(final_y);
