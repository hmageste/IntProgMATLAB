 function score = bowl(frames)
score = -1;
lenframes = length(frames);

if lenframes < 12 || lenframes > 21, return; end
for i = 1: lenframes
    if frames(i)<0, return; end
end

% building a complete table vector
%compframes = linspace(0,0,20);
compframes = [];
last = 1;
for i = 1:lenframes
    if frames(i) == 10 && length(compframes) < 20 && (i == 1 || frames(i-1) ~= 0)
        compframes(last) = 10;
        compframes(last+1) = 0;
        last = last + 2;
    else
        compframes(last) = frames(i);
        last = last + 1;
    end
end

if length(compframes)<20 || length(compframes)>22 || ...
        (length(compframes)>20 && compframes(19)+compframes(20) < 10)
    score = -1;
    return;
end;

% checking for wrong even entries and get the chance to add up values
score = 0;
for i = 1:2:20
    aux = sum(compframes(i:i+1));
    if aux <= 10
        score = score + aux;
    else
        score = -1;
        return;
    end
end

% adding up 'bonus' values
last = 1;
for i = 1:2:20
    if compframes(i) == 10 %strike
        last = last + 1;
        aux = 0;
        if last+1<=lenframes
            aux = frames(last+1);
        else
            score = -1;
            return;
        end
        score = score + frames(last) + aux;
    elseif (compframes(i) + compframes(i+1)) == 10 %spare
        last = last + 2;
        score = score + frames(last);
    else
        last = last + 2;
    end
end

end
