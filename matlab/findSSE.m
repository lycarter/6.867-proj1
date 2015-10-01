function [ SSE, derivative ] = findSSE(X, Y, basis, theta )
%finds SSE and derivative
%   Detailed explanation goes here

SSE = 0;
for n = 1:length(X)
    SSE = SSE + (Y(n, 1) - theta(1, n) * basis{n}(X(n, 1))).^2; %some things here to add to the sum
end

derivative = 0;
for n = 1:length(X)
    derivative = derivative + 2 * basis{n}(X(n, 1)) * (Y(n, 1) - theta(1, n) * basis{n}(X(n, 1)));
end

end

