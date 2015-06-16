function coded = codeit(txt)
coded = txt;
for i = 1:length(txt)
    if 'a' <= txt(i) && 'z' >= txt(i)
        coded(i) = char( 'a' + 'z' - txt(i) );
    elseif 'A' <= txt(i) && 'Z' >= txt(i)
        coded(i) = char( 'A' + 'Z' - txt(i) );
    else
        coded(i) = txt(i);
    end
end
end

%% alternative solution
function txt = codeit (txt)
    U = txt > 64 & txt < 91;    % identify uppercase
    L = txt > 96 & txt < 123;   % identify lowercase
    txt(U) = char(155-txt(U));  % encrypt uppercase
    txt(L) = char(219-txt(L));  % encrypt lowercase
end