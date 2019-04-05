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

U=A;

for i=1:m-1                         %% select the row for iteration
    for j=1:m-i                     %%ketli vaar loop chalavu che ee select karva
        a=(U(i+j,i)/U(i,i));
        U(i+j,:)=U(i+j,:)-a*U(i,:);  %%C(i,:) aakhi row select kar lese
    end
end

L=A/U;
Y=L\B;      %Replace inv(A)*b with A\b Replace b*inv(A) with b/A for more accuracy and fast soln.        
X=U\Y;
disp(X);
