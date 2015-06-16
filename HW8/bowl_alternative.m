 function score = bowl(frames)

lenframes = length(frames);

if lenframes < 12 || lenframes > 21 , score = -1; return; end

% building a complete table vector
compframes = linspace(0,0,22);
last = 1;
for i = 1:lenframes
    if frames(i) == 10 && (i == 1 || frames(i-1) ~= 0)
        compframes(last) = 10;
        compframes(last+1) = 0;
        last = last + 2;
    else
        compframes(last) = frames(i);
        last = last + 1;
    end
end

% adding up values
last = 1;
score = 0;
for i = 1:2:20
    if compframes(i) == 10 %strike
        score = score + frames(last+1) + frames(last+2);
        last = last + 1;
    elseif (compframes(i) + compframes(i+1)) == 10 %spare
        last = last + 2;
        score = score + frames(last);
    else
        last = last + 2;
    end
end
score = score  + sum(compframes(1:20));
end