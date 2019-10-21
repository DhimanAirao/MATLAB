clear all;
clc;

n=input('Enter the order of the equation from which you want to solve : ');
c=input('enter the value of x at which y is required : ');
disp('----------------------');
disp('Enter the appropriate readings : ');
for i=1:n+1
    for j=1:2
        R(i,j)=input('enter the value of X and press enter and then Value of Y : ');
    end
end
R=reshape(R,n+1,2);
X=R(:,1);
Y=R(:,2);

for i=1:n+1
    for j=1:n+1
        A(i,j)=X(i).^(j-1);
    end
end
A=reshape(A,n+1,n+1);
Constant_Mat=A\Y;
for i=1:n+1
    B(1,i)=c^(i-1);
end
B=reshape(B,1,n+1);
y=B*Constant_Mat;
disp('The value of y at given point is : ');
disp(y);
