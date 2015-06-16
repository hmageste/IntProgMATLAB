function A = sparse_array_in( filenm )
fid = fopen(filenm,'r');
A = [];
if fid < 0, return; end

dim = fread( fid, 2, 'uint32' );
numelem = fread( fid, 1, 'uint32' );
A = zeros( dim' );
for i = 1:numelem
    pos = fread( fid, 2, 'uint32' );
    A(pos(1),pos(2)) = fread( fid, 1, 'double' );
end
fclose(fid);
end