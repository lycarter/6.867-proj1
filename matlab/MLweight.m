function [ Theta ] = MLweight( X, Y, M )
%MLweight finds the optimal maximum likelihood weight vector
%   Detailed explanation goes here

Phi = zeros(length(X), M);
for n = 1:size(Phi, 1)
    for m = 1:size(Phi, 2)
        Phi(n, m) = sin(2 * pi * m * X(n, 1));
    end
end
Theta = ((Phi' * Phi) \ Phi') * Y;
end

