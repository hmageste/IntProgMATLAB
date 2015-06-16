function [row,col,numrows,numcols,summa] = maxsubsum( A )
[dim1, dim2] = size( A );
summa = sum(A(1:end));
for i = 1:dim1
    for j = 1:dim2
        for i_ = i:dim1
            for j_ = j:dim2
                sum_tmp = sum(sum(A(i:i_,j:j_)));
                if sum_tmp >= summa
                    row = i;
                    col = j;
                    numrows = i_ -i +1;
                    numcols = j_ - j + 1;
                    summa = sum_tmp;
                end
            end
        end
    end
end
end