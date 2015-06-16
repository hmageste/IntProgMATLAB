function number = dial(code)
number = code;

for i = 1:length(code)
    letter = code(i);
    if letter == 'Q' || letter == 'Z', number = []; return; end

    if ('A' <= letter && 'Z' >= letter)...
            || letter == '(' || letter ==')' || letter == '-'...
            || letter == ' ' || letter == '*' || letter == '#'...
            || ( letter >='0' && letter <='9' )
        
        if letter == '(' || letter == ')' || letter == '-'
        number(i) = ' ';
        elseif letter == ' ' || letter == '*' || letter == '#'...
                || ( letter >='0' && letter <='9' )
        elseif letter <= 'C'
            number(i) = '2';
        elseif letter <= 'F'
            number(i) = '3';
        elseif letter <= 'I'
            number(i) = '4';
        elseif letter <= 'L'
            number(i) = '5';
        elseif letter <= 'O'
            number(i) = '6';
        elseif letter <= 'S'
            number(i) = '7';
        elseif letter <= 'V'
            number(i) = '8';
        elseif letter <= 'Y'
            number(i) = '9';
        end
    else
        number = [];
        return;
    end

    if letter == '(' || letter == ')' || letter == '-'
        number(i) = ' ';
    elseif letter == ' ' || letter == '*' || letter == '#'...
            || ( letter >='0' && letter <='9' )
    elseif letter <= 'C'
        number(i) = '2';
    elseif letter <= 'F'
        number(i) = '3';
    elseif letter <= 'I'
        number(i) = '4';
    elseif letter <= 'L'
        number(i) = '5';
    elseif letter <= 'O'
        number(i) = '6';
    elseif letter <= 'S'
        number(i) = '7';
    elseif letter <= 'V'
        number(i) = '8';
    elseif letter <= 'Y'
        number(i) = '9';
    elseif letter <= 'F'
        number(i) = 3;
    end
end
end

%% alternative solution
function ph = dial(str)
    % the variable code has the characters' required mapping starting from space, ending with Y
    % x is for illegal input (e.g., see how Q maps to x in-between 7-s)
    code = ' xx#xxxx  *xx xx0123456789xxxxxxx2223334445556667x77888999';
    ph = [];        % default return value in case of illegal input
    n = str-' '+1;  % creates a vector of indexes into code from the input characters
    % the first two sum()-s  check for out-of-range input (smaller than space or larger than Y )
    % the third sum() checks for any input char mapping to x, that is, illegal input
    if ~((sum(n <= 0) + sum(n > length(code))) || sum(code(n) == 'x'))
        ph = code(n);   % a single assignment does the actual transformation of the input string
    end
end