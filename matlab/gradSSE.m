function [ SSE ] = gradSSE(theta, X, Y)
%finds SSE and derivative
%   Detailed explanation goes here

SSE = 0;
M = length(theta);
for n = 1:length(X)
    SSE = SSE + (Y(n, 1) - theta * phii(M, X(n, 1))).^2; %some things here to add to the sum
end



end