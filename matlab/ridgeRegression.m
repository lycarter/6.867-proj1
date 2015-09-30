function [ Theta ] = ridgeRegression( lambda, X, Y, M)
%implementation of ridge regression, finds theta
%   Detailed explanation goes here

Phi = zeros(length(X), M + 1);
for n = 1:size(Phi, 1)
    for m = 1:size(Phi, 2)
        Phi(n, m) = X(n, 1).^(m - 1);
    end
end
Theta = inv(lambda .* eye(M + 1) + Phi' * Phi) * Phi' * Y;

end

