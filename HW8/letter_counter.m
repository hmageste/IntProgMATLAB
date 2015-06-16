function letters = letter_counter( filenm )
fid = fopen( filenm, 'rt' );
letters = -1;
if fid < 0, return; end

letters = 0;
online = fgets(fid);
while ischar(online)
    letters = letters + sum( isletter(online) );
    online = fgets(fid);
end
end

%% shorter variant
function n = letter_counter(fname)
    n = -1;
    fid = fopen(fname,'r');
    if fid >= 0
        n = sum(isletter(fread(fid,inf,'char=>char')));
        fclose(fid);
    end
end