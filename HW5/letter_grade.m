function grade = letter_grade( score )
if score>90
	grade = 'A';
elseif score>80 && score<=90
	grade = 'B';
elseif score>70 && score<=80
	grade = 'C';
elseif score>60 && score<=70
	grade = 'D';
else
	grade = 'F';
end
end
