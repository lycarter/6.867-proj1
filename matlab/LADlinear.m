function [ err ] = LADlinear( lambda, theta, X, Y)
%LAD

err = sum((X*theta - Y).^2) + lambda*sum(abs(theta));

end

