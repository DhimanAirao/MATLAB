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
M=ones(1,n+1);

for i=1:n+1
    for j=1:n+1
        if(j~=i)
            M(i)=M(i)*(c-X(j))/(X(i)-X(j));
        end
    end
end

ans=M*Y;
disp('The value of Y at given X is : ');
disp(ans);
