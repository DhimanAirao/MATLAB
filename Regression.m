clear all;
clc;

m=input('enter the order of equation you have : ');
n=input('Enter the number of readings you have : ');
prompt='State the type of regression,X axis Variable and Y axis variable : ';
p=input(prompt,'s');
q=input(prompt,'s');
r=input(prompt,'s');

for i=1:n
    X(i)=input('enter the value of x : ');
    Y(i)=input('enter the value of y : ');
end
X=reshape(X,n,1);
Y=reshape(Y,n,1);

for i=1:m+1
    for j=1:m+1
        X_Mat(i,j)=sum(X.^(i+j-2));    %X.(OPERATION) PERFORM ELEMENT WISE OPERATION ON X
        Y_Mat(i,1)=sum(X.^(i-1).*Y);   %X.*Y PERFORM THE ELEMENT WISE MULTIPLICATION OF MATRIX X AND MATRIX Y
    end
end
disp('The Values of constants are as follow :');
Constant_Mat=X_Mat\Y_Mat;
disp(Constant_Mat);

for i=1:n
    for j=1:m+1
        x(j)=X(i)^(j-1);
    end
    Y_func(i)=x*Constant_Mat;
end

plot(X,Y);
hold on;
plot(X,Y_func)

legend('old value','new value');
xlabel('%s',q);
ylabel('%s',r);
title(sprintf('%s Regression model',p));
