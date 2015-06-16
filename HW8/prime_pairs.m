function p = prime_pairs( n )
p = -1;
all_primes = primes(10e5);
for i = 1:length(all_primes)
    if isprime(all_primes(i) + n )
        p = all_primes(i);
        break;
    end
end
end

%% faster solution - treating entries before loop
function p = prime_pairs(n)
    if isprime(2+n)             % many times the answer is 2
        p = 2;
    elseif rem(n,2)             % if not, and n is odd, no such prime exists
        p = -1;
    else
        for p = primes(1e5)     % check all primes smaller than 100,000
            if isprime(p+n)     % if p+n is prime
                return;         % found it! Return immediately
            end
        end
        p = -1;                 % none found (btw, we never get here)
    end
end
% It turns out that for n-s smaller than 100,000 that are even, there is
% always a pretty small such prime. In fact, the largest is 227.
% So we could use primes(300) instead of primes(1e5) to make this even
% faster. Also, the for-loop would be slow, if we did not check for even n-s,
% since it would need to go through all primes smaller than 100,000 to
% realize that no solution exists. So, handling the first two cases (p is 2
% and n is odd) separately makes the function very efficient.

%%elegant solution
function p = prime_pairs(n)

    allp = primes(1e5+n);       % Get all primes up to max value + n
    p = intersect(allp,allp+n); % Get which values are prime when n is added
    if isempty(p)               % Check to see if there are any such values
        p = -1;
    else
        p = p(1)-n;             % If so, subtract off the n to get the smaller value of the prime pair
    end
end
% Because it does not check for odd n and because it
% always handles the entire vector of primes even though the answer, if it
% exists, is small, it is about 4x slower than the for-loop version above
% even though the built-in function intersect is very fast.
