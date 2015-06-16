function output_cell = censor(input_cell, str)
output_cell = {};
for i = 1:length(input_cell)
    if isempty(strfind(input_cell{i},str))
        output_cell{end + 1} = input_cell{i};
    end
end
end