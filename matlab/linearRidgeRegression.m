function [ Theta ] = linearRidgeRegression( lambda, X, Y)
%implementation of ridge regression, finds theta

a = size(X);
l = a(2);

Theta = (lambda .* eye(l) + X' * X) \( X' * Y );

end

