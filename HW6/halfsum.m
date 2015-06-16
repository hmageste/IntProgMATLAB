function sum = halfsum( A )
[x1, x2] = size(A);
sum = 0;
for i = 1:x1
    for j = i:x2
        sum = sum + A(i,j);
    end
end
end