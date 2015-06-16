function B = divvy( B, k )
B(mod(B,k)~=0) = B(mod(B,k)~=0)*k;
end