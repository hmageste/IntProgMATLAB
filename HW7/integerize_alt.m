function iclass = integerize_alt(A)
    c = {'uint8','uint16','uint32','uint64','NONE'};
    % Array of maximum values for each class
    x = 2.^[8,16,32,64] - 1;
    iclass = c{sum(max(A(:))>x)+1};
end