function average = moving_average( x )
persistent buffer;

if ( length(buffer) > 24 )
    buffer = [ buffer(2:end) x ];
else
    buffer = [ buffer x ];
end

average = mean(buffer);
end