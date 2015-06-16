function is_nocheck = queen_check( board )
is_nocheck = true;
for i = 1:8
    for j = 1:8
        if board(i,j) == true
            for i_ = i+1:8
                if board(i_,j) == true
                    is_nocheck = false;
                    return;
                end
            end
            for j_ = j+1:8
                if board(i,j_) == true
                    is_nocheck = false;
                    return;
                end
            end
            i_ = i; j_ = j;
            while i_ <8 && j_<8
                i_=i_+1;
                j_=j_+1;
                if board(i_,j_) == true
                    is_nocheck = false;
                    return;
                end
            end
            i_ = i; j_ = j;
            while i_ >1 && j_<8
                i_=i_-1;
                j_=j_+1;
                if board(i_,j_) == true
                    is_nocheck = false;
                    return;
                end
            end
        end
    end
end
end

%%alternative solution
function safe = queen_check (B)
    inC = sum(B);                       % sum of queens in each column
    inR = sum(B,2)';                    % sum of queens in each row
    F = flip(B);                        % flipped board for antidiagonals
    for k=-6:6
        inD(k+8) = sum(diag(B,k));      % sum of queens in each diagonal
        inE(k+8) = sum(diag(F,k));      % sum of queens in each antidiagonal
    end
    safe = max([inR inC inD inE])<=1;   % queen counts at most one
end