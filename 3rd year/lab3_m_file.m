clear all;
clc;

V1= 100;

V2=100;

R1_LOAD=10;

R1_LINE=0.05;

R2_LINE=R1_LINE;

I1=V1/(R1_LOAD+ 2* R1_LINE);

I2=2* I1 / sqrt(3);

LINE_DROP_2=  3* I2^2 *R2_LINE;

P1=V1*I1;

P2=sqrt(3)*V2*I2;

disp(P2/P1);