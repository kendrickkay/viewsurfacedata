function f = joinpairs(m)

% function f = joinpairs(m)
%
% <m> is a N x 2 matrix where a row with [a b]
%   indicates a directed edge from a to b.
%   the directed edges collectively must define
%   exactly a cycle.
%
% return a vector of vertices of size 1 x N,
% reflecting the cycle.  the first two vertices
% are identical to m(1,:).

% calc
num = size(m,1);

% do it
f = zeros(1,num+1);
f(1:2) = m(1,:);
cnt = 3;
while cnt <= num+1
  found = find(m(:,1)==f(cnt-1));
  assert(isscalar(found));
  f(cnt) = m(found,2);
  cnt = cnt + 1;
end

% check that circularity was achieved
assert(f(1)==f(end),'circularity was not present');

% output
f = f(1:end-1);
