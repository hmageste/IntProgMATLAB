function sorted_vector = sort3( arg1, arg2, arg3 )
sorted_vector = [ arg1 arg2 arg3 ];
if sorted_vector(1)>sorted_vector(2)
	aux = sorted_vector(1);
	sorted_vector(1) = sorted_vector(2);
	sorted_vector(2) = aux;
end
if sorted_vector(3)>=sorted_vector(1) && sorted_vector(3)<sorted_vector(2)
	aux = sorted_vector(2);
	sorted_vector(2) = sorted_vector(3);
	sorted_vector(3) = aux;
elseif sorted_vector(3)<=sorted_vector(1) && sorted_vector(3)<sorted_vector(2)
	aux = sorted_vector(3);
	sorted_vector(3) = sorted_vector(2);
    sorted_vector(2) = sorted_vector(1);
    sorted_vector(1) = aux;
end
end
