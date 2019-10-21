clear all;
clc;

n=input('Enter the number of data points : ');
disp('----------------------');
disp('Enter the appropriate readings : ');
for i=1:n
    X(i)=input('Enter value of x : ');
    Y(i)=input('Enter value of y : ');
end
X=reshape(X,n,1);
Y=reshape(Y,n,1);

syms lambda;
sum1=0;
sum2=0;
sum3=0;
g=0;
h=0;
k=0;
for i=1:n
    g=g+exp(X(i)*2*lambda);
    sum1=sum1+(Y(i)*X(i)*exp(X(i)*lambda));
    sum2=sum2+(Y(i)*exp(X(i)*lambda));
    sum3=sum3+(X(i)*exp(X(i)*2*lambda));
end
f(lambda)= (-1*sum1)+(sum2/g)*sum3;
a=input('enter the initial point : ');
b=input('enter the final point : ');
e=input('enter the permissible error : ');
c=((a*f(b))-(b*f(a)))/(f(b)-f(a));

while abs(f(c))>e
    c=((a*f(b))-(b*f(a)))/(f(b)-f(a));
    if f(c)*f(a)<0
        b=c;
    elseif f(c)*f(b)<0
        a=c;
    end
end
lambda=double(c);
sum2=inline(sum2);
g=inline(g);

a=sum2(lambda)/g(lambda);
disp('Values of constants A and lambda are respectively ');
disp(a);
disp(lambda);

for i=1:n
    Y_func(i)=double(a*exp(lambda*X(i)));
end
plot(X,Y);
hold on;
plot(X,Y_func)
