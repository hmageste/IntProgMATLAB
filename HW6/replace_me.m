function w = replace_me( v, a, b, c )
if ( nargin < 3 ), b = 0; end
if ( nargin < 4 ), c = b; end

w = v;
j = 0;
for i = 1:length(v)
if ( v(i) == a )
   w = [ w(1:i-1+j) b c w(i+1+j:end)];
   j = j+1;
end
end
end