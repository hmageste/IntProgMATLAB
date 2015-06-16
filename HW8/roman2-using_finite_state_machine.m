%% Uses a Finite State Machine (FSM)
function num = roman2(rom)
% State machine-based implementation
        % the variable states contains the value of each state
        % the index into this vector is the ID of the given state
    states = [0 1 1 1 3 8 5 1 1 1 10 10 10 30 80 50 10 10 10 100 100 100];
        % each row of trans contains one state transition
        % 1st col: current state; 2nd col: input char; 3rd col: next state
    trans = [
        1  'I'  2; 1  'X' 11;  1 'C' 20; 1 'L' 16; 1  'V'  7;
        2  'I'  3; 2  'V'  5;  2 'X'  6;
        3  'I'  4;
        7  'I'  8;
        8  'I'  9;
        9  'I' 10;
        11 'X' 12; 11 'V'  7; 11 'I'  2; 11 'L' 14; 11 'C' 15;
        12 'X' 13; 12 'V'  7; 12 'I'  2;
        13 'V'  7; 13 'I'  2;
        14 'V'  7; 14 'I'  2;
        15 'V'  7; 15 'I'  2;
        16 'V'  7; 16 'I'  2; 16 'X' 17;
        17 'V'  7; 17 'I'  2; 17 'X' 18;
        18 'V'  7; 18 'I'  2; 18 'X' 19;
        19 'V'  7; 19 'I'  2;
        20 'V'  7; 20 'I'  2; 20 'C' 21; 20 'X' 11; 20 'L' 16;
        21 'V'  7; 21 'I'  2; 21 'C' 22; 21 'X' 11; 21 'L' 16;
        22 'V'  7; 22 'I'  2; 22 'X' 11; 22 'L' 16;
    ];

    state = 1;                                          % initial state: 1
    num = 0;                                            % initial value: 0
    for ii = 1:length(rom)                              % take input from left
        state = next_state(state, rom(ii), trans);      % find next state
        if state == -1                                  % no such transition
            num = 0;                                    % illegal roman number
            break;                                      % get out
        end
        num = num + states(state);                      % otherwise, increase value
    end
    num = uint16(num);
end

function state = next_state(state,ch,trans)
    for ii = 1:size(trans,1)                            % check each legal transition
        if trans(ii,1) == state && trans(ii,2) == ch    % for current state and input char
            state = trans(ii,3);                        % return next state
            return;
        end
    end
    state = -1;                                         % no transition found
end
