function is_prime = myprime( n )
is_prime = true;
if n==2, return; end

for i = rem(n,(2:n-1)) == 0
    if i == 1, is_prime = false; return; end
end
end