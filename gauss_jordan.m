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

for i=1:m-1
    for j=1:m-i
        a=(C(i+j,i)/C(i,i));
        C(i+j,:)=C(i+j,:)-a*C(i,:);
    end
end

for i=m:-1:m-1
    for j=i-1:-1:1
        a=C(j,i)/C(i,i);
        C(j,:)=C(j,:)-a*C(i,:);
    end
end

X=zeros(m,1);

for i=1:m
    X(i)=C(i,end)/C(i,i);
end
X
        
        
        
        
        
        
        