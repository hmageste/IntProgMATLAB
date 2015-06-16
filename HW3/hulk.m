function H = hulk(v)
H = ones(length(v),3);
for i = 1:3
    H(:,i) = v.^i;
end
end