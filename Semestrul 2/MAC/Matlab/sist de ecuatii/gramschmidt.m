function [Q,R]=gramschmidt(A)
[m,n]=size(A);
Q=zeros(m,n);
R=zeros(m-1,n);
for j=1:n
    y=A(:,j);
    for i=1:j-1
        R(i,j)=Q(:,i)' * A(:,j);
        y=y-R(i,j)*Q(:,i);
    end
    R(j,j)=norm(y);
    Q(:,j)=y / R(j,j);
end
end