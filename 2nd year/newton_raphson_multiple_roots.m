clear all;
clc;
syms x;

f(x)=input('Enter the function : ');
p=input('Enter the number of same roots in equation : ');
a=input('Enter the initial gusses : ');
e=input('Enter the permissible error : ');
X_Mat=zeros(p,1);
df(x)=diff(f(x));
copy_f(x)=f(x);

for i=p:-1:1
    copy_a=a;
    while abs(copy_f(a))>e
        a=a-f(a)/df(a);
        X_Mat(i)=double(a);
    end
    f(x)=diff(f(x));
    df(x)=diff(f(x));
    a=copy_a;
end
disp('The solns of func. are : ');
disp(X_Mat);
        
    
