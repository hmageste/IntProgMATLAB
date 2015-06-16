function v = int_col(n)
v = (n:-1:1)';
if mod(n,2) ~= 0
    v(ceil(n/2)) = ceil(n/2) + 1;
    v(ceil(n/2)-1) = ceil(n/2);
end
end
