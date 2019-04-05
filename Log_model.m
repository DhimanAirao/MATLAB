clear all;
clc;

m=input('enter the order of equation you have : ');
n=input('Enter the number of readings you have : ');

for i=1:n
    X(i)=input('enter the value of x : ');
    Y(i)=input('enter the value of y : ');
end
X=reshape(X,n,1);
Y=reshape(Y,n,1);
Y=log(Y);

for i=1:m+1
    for j=1:m+1
        X_Mat(i,j)=sum(X.^(i+j-2));
        Y_Mat(i,1)=sum(X.^(i-1).*Y);
    end
end

Constant_Mat=X_Mat\Y_Mat;
a=exp(Constant_Mat(1,1));
Constant_Mat=[a;Constant_Mat(2,1)];
disp(Constant_Mat);

for i=1:n
    Y_func(i)=double(Constant_Mat(1,1)*exp(Constant_Mat(2,1)*X(i)));
end
scatter(X,exp(Y));
hold on;
plot(X,Y_func)
legend('old value','new value');
xlabel('time in hours');
ylabel('decay ');
title('Decay model');
