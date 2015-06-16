function dimension = classify( x )
[ a, b ] = size( x );
if a==0 || b==0 
    dimension = -1;
elseif a==1 && b==1
    dimension = 0;
elseif a==1 || b==1
    dimension = 1;
else
    dimension = 2;
end
end