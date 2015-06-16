function [s1, s2, sums] = sines( pts, amp, f1, f2 )
% arguments treatment
% -------------------------
if nargin == 0
    pts = 1000;
end

if nargin < 2
    amp = 1;
end

if nargin < 3
    f1 = 100;
end

if nargin < 4
    f2 = 1.05*f1;
end
% -------------------------

s1 = amp*sin( linspace(0,f1*2*pi,pts) );
s2 = amp*sin( linspace(0,f2*2*pi,pts) );
sums = s1 + s2;

end