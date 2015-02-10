function f = iscolorname(x)

% function f = iscolorname(x)
%
% f is true iff x is a color string
%
% see also listcolornames.m, colorname2num.m, iscolorname.m.

f = isequal(x,'red') || ...
    isequal(x,'green') || ...
    isequal(x,'blue') || ...
    isequal(x,'cyan') || ...
    isequal(x,'magenta') || ...
    isequal(x,'yellow') || ...
    isequal(x,'black') || ...
    isequal(x,'white') || ...
    isequal(x,'gray') || ...
    isequal(x,'light gray');