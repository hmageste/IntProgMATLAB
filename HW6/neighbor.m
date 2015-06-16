function dif_v = neighbor( v )
[ x1, x2 ] = size(v);
if ( x1 ~= 1 || x2 < 2 )
    dif_v = [];
    return;
end
dif_v = 1:length(v)-1;
for i = 1:length(dif_v)
    dif_v(i) = abs(v(i+1)-v(i));
end
end