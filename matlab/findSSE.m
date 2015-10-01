function [ SSE, derivative, grad ] = findSSE(X, Y, theta )
%finds SSE and derivative
%   Detailed explanation goes here

SSE = 0;
M = length(theta);
for n = 1:length(X)
    SSE = SSE + (Y(n, 1) - theta * phii(M, X(n, 1))).^2; %some things here to add to the sum
end

grad = zeros(length(theta), 1);
for i = 1:length(theta)
    sum1 = 0;
    sum2 = 0;
    for n = 1:length(X)
        sum1 = sum1 + (theta(1, i)+0.0000001) * X(n, 1).^(i - 1);
        sum2 = sum2 + (theta(1, i)-0.0000001) * X(n, 1).^(i - 1);
        
    end
    grad(i, 1) = ((Y(n, 1) - sum1).^2 - (Y(n, 1) - sum2).^2)/0.0000001;
end

derivative = 0;
for n = 1:length(X)
    derivative = derivative + 2 * X(n, 1).^(n - 1) * (Y(n, 1) - theta(1, n) * X(n, 1).^(n - 1));
end

end

