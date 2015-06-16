function B = bell( n )
if n < 0 || n ~= fix(n), B = []; return; end

A = zeros( n );
B = zeros(n);
A(1,1) = 1;
for k = 1:n-1
   A(k+1,1:k+1) = cumsum(A(k,[k,1:k]),2);
end
for j = 1:n
    B((j:n)-j+1,j) = A(j:n,j);
end
end