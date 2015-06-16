function cell_vec = replace(cell_vec, c1, c2)
for i = 1:length(cell_vec)
    cell_vec{i}(cell_vec{i} == c1) = c2;
end
end