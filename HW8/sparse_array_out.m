function resp = sparse_array_out( A, filenm )
fid = fopen( filenm, 'w+' );
resp = false;
if fid < 0, return; end

dim = size( A );
fwrite( fid, [dim sum(A(1:end)~=0)], 'uint32' );
for i = 1:dim(1)
    for j = 1:dim(2)
        if A(i,j) ~= 0
            fwrite( fid, [i j], 'uint32' );
            fwrite( fid, A(i,j), 'double' );
        end
    end
end

fclose( fid );
resp = true;
end