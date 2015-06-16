function indices = saddle( M )
[dim1, dim2] = size(M);
indices = [];
row = 0;
for j = 1:dim2
    for i = 1:dim1
        maxcounter = 0;
        mincounter = 0;
        for j_ = 1:dim2
            if j == j_, continue; end;
            if M(i,j) >= M(i,j_)
                maxcounter = maxcounter + 1;
            else
                break;                
            end
        end
        if maxcounter == dim2 - 1;
            for i_ = 1:dim1
                if i == i_, continue; end;
                if M(i,j) <= M(i_,j)
                    mincounter = mincounter + 1;
                else
                    break;
                end
            end
            if mincounter == dim1 - 1;
                row = row + 1;
                indices(row,1) = i;
                indices(row,2) = j;
            end
        end
    end
end
end

%% proposed solution
function s = saddle(M)
    [r c] = size(M);
    s = [];
    if r > 1
        cols = min(M);          % find the min value in each column
    else
        cols = M;               % vector is a special case, min would give a single value
    end
    if c > 1
        rows = max(M');         % find the max value in each row
    else
        rows = M;               % vector is a special case, max would give a single value
    end
    for ii = 1:c                % visit each column
        for jj = 1:r            % and each row, that is, each element of M
            if M(jj,ii) == cols(ii) && M(jj,ii) == rows(jj) % if both conditions hold
                s = [s; jj ii];                             % saddle point! Let's add it!
            end
        end
    end
end