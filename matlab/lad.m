function [ err ] = lad( basis, X, Y, lambda, theta )
%implementation of LAD, uses gradient descent
%   Detailed explanation goes here

err = 0;
for n = 1:length(X)
    err = err + abs(Y(n, 1) - theta(1, n) * basis{n}(X(n, 1))); %some things here to add to the sum
end

err = err + lambda * norm(theta).^2;

end

