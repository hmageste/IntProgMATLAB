function [even, odd] = separate_by_two( A )
keepers = (mod(A(1:end),2) == 0)';
even = A(keepers)';
odd = A(~keepers)';
end