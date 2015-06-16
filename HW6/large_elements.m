function  indexes = large_elements( X )
[x1, x2] = size(X);
indexes = [];
count = 0;
for i = 1:x1
    for j = 1:x2
        if ( X(i,j) > i+j )
            count = count + 1;
            % check how to add like: indexes(count) = [ i j ];
            indexes(count,1) = i;
            indexes(count,2) = j;
        end
    end
end

end