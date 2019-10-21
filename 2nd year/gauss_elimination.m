clear all;
clc;

m=input('enter the number of rows for matrix A');
n=input('enter the number of colouns for matrix A');

disp('-----------------------------');
disp('Enter the A matrix');
for i=1:m
    for j=1:n
        A(i,j)=input('enter the element and press enter   ');
    end
end
A=reshape(A,m,n);
disp('-----------------------------');
disp('Enter the B matrix');
for i=1:m
    for j=1:1
        B(i,j)=input('enter the element and press enter   ');
    end
end
B=reshape(B,m,1);
disp('-----------------------------');

C=[A,B];

for o=1:m-1
    for p=1:m-o
        a=(C(o+p,o)/C(o,o));
        C(o+p,:)=C(o+p,:)-a*C(o,:);
    end
end

X=zeros(m,1);
for i=m:-1:1
    X(i)=(C(i,end)-C(i,i+1:m)*X(i+1:m))/C(i,i);
end
X
    



