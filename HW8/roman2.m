function arabic = roman2(roman)
cents = 0;
tens = 0;
units = 0;
chars = length(roman);
units_ok = false;
tens_ok = false;

arabic = uint16(0);

%treat wrong entries first
for i = 1:chars
    if roman(i) == 'X' && (i+1 <= chars && roman(i+1) == 'X') && (i+2 <= chars && roman(i+2) == 'X') && ...
            (i+3 <= chars && roman(i+3) == 'X')
        return;
    end
    if roman(i) == 'V' && i+1 <= chars && roman(i+1) == 'V'
        return;
    end
    if roman(i) == 'X' && i+1 <= chars && roman(i+1) == 'L'  && i+2 <= chars && roman(i+2) == 'X'
        return;
    end
    if roman(i) == 'I' && i+1 <= chars && (roman(i+1) == 'V' || roman(i+1) == 'X') && ...
            i+2 <= chars && (roman(i+2) == 'I' || roman(i+2) == 'V')
        return;
    end
end

for i = 1:chars
    if roman(i) == 'C' && (i == 1 || roman(i-1) ~= 'X')
        cents = cents + 1;
    elseif roman(i) == 'X' && (i+1 <= chars && roman(i+1) == 'C')
        tens = 9;
        tens_ok = true;
    elseif roman(i) == 'X' && ~tens_ok && (i+1 <= chars && roman(i+1) == 'L')
        tens = 4;
        tens_ok = true;
    elseif roman(i) == 'L' && ~tens_ok
        tens = 5;
    elseif roman(i) == 'I' && (i+1 <= chars && roman(i+1) == 'X')
        units = 9;
        units_ok = true;
        tens_ok = true;
    elseif roman(i) == 'I' && ~units_ok && (i+1 <= chars && roman(i+1) == 'V')
        units = 4;
        units_ok = true;
    elseif roman(i) == 'X' && ~tens_ok %&& roman(i+1) ~= 'L' && roman(i+1) ~= 'C'
        tens = tens + 1;
    elseif roman(i) == 'I' && ~units_ok
        units = units + 1;
    elseif roman(i) == 'V' && ~units_ok
        units = units + 5;
    end
end
arabic = uint16( cents*100 + tens*10 + units );
if arabic > 399, arabic = uint16(0); end
end