function [ approx_pi, k ] = approximate_pi( delta )
approx_pi = 1;
k = 0;
while ( abs(sqrt(12)*approx_pi - pi) > delta )
    k = k + 1;
    approx_pi = approx_pi + (-3)^(-k)/(2*k+1);
end
approx_pi = sqrt(12)*approx_pi;
end