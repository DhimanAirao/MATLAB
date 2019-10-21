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

C=[A,eye(m)];
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

for i=1:m
    for j=1:m
        if j==i
            C(j,:)=C(j,:)/C(j,j);
        end
    end
end
disp('the inverted matrix is');
disp(C(:,m+1:end));
