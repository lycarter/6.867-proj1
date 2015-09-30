function [ Theta ] = MLweight( X, Y, M )
%MLweight finds the optimal maximum likelihood weight vector
%   Detailed explanation goes here

Phi = zeros(length(X), M + 1);
for n = 1:size(Phi, 1)
    for m = 1:size(Phi, 2)
        Phi(n, m) = X(n, 1).^(m - 1);
    end
end
Theta = inv(Phi' * Phi) * Phi' * Y;
end

