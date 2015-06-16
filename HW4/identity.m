function I = identity( n )
I = zeros( n, n );
I(1:n+1:end) = 1;
end