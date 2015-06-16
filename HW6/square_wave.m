function sum = square_wave( n )
t = linspace(0,4*pi,1001);
sum = linspace(0,0,1001);
for k = 1:n
    sum = sum + sin((2*k-1)*t)/(2*k-1);
end

end