clear all;
clc;

v = input('Voltage value= ');

output_p = input('Power value= ');

efficiency = input('Enter efficiency= ');

input_power = output_p/efficiency;

power_factor = input('Enter power factor= ');

improved_power_factor = input('Enter improved power factor= ');

freq = input('Enter frequency= ');

net_capacitance = input_power * ( tan( acos(power_factor) ) - tan( acos(improved_power_factor) )) / (2* pi* freq * 3 * v^2) ;

capacitance= 4* net_capacitance;

disp(capacitance)               