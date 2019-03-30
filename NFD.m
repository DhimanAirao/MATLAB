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
B=zeros(n+1);
B(:,1)=Y;
M=ones(n+1,1);
h=X(2)-X(1);
p=(c-X(1))/h;
for i=2:n+1
    for j=1:n+2-i
        B(j,i)=(B(j+1,i-1)-B(j,i-1));
    end
end

for i=2:n+1
    for j=1:i-1
        M(i)=M(i)*(p-(j-1))/j;
    end
end
D=zeros(1,n+1);
D(1,:)=B(1,:);

ans=D*M;
disp('The value of Y is');
disp(ans);