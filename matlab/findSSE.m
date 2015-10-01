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
    theta1 = theta;
    theta2 = theta;
    theta1(1, i) = theta1(1, i) + 0.00001;
    theta2(1, i) = theta2(1, i) - 0.00001;
    for n = 1:length(X)
        grad(i, 1) = grad(i, 1) + ((Y(n, 1) - theta1 * phii(M, X(n, 1))).^2 - (Y(n, 1) - theta2 * phii(M, X(n, 1))).^2)/0.00001;
        
    end
end
grad = grad ./ length(X);
grad = norm(grad);

derivative = 0;
for n = 1:length(X)
    derivative = derivative + 2 * norm(phii(M, X(n, 1))) * (Y(n, 1) - theta * phii(M, X(n, 1)));
end

end

