clear all;
clc;

m=input('enter the number of rows');
n=input('enter the number of coloumns');

for i=1:m
    for j=1:n
        A(i,j)=input('enter the element and press enter');
    end
end
A=reshape(A,m,n)