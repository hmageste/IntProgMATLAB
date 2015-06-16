function m = integerize( A )
max_number = max ( A );

if max_number == uint8(max_number)
	m = 'uint8';
elseif max_number == uint16(max_number)
	m = 'uint16';
elseif max_number == uint32(max_number)
	m = 'uint32';
elseif max_number == uint64(max_number)
	m = 'uint64';
else
	m = 'NONE';
end
end
