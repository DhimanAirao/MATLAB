clear all;
clc;

m=input('enter the number of rows for matrix A ');
n=input('enter the number of colouns for matrix A ');
e=input('enter permissible error in soln. ');

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

disp('Enter the initial gusses matrix C');
for i=1:m
    for j=1:1
        C(i,j)=input('enter the element and press enter   ');
    end
end
C=reshape(C,m,1);
disp('-----------------------------');

D=zeros(m,1);
Error=ones(m,1);
E=abs(min(Error));

while(E>e)
    for j=1:m
        num=B(j,1)-((A(j,1:end)*C(1:m))-(A(j,j)*C(j)));
        D(j)=num/A(j,j);
        Error(j)=(D(j)-C(j))/D(j);
        C(j)=D(j);
    end
    E=abs(min(Error));
end
D       
        
        
        
        
        