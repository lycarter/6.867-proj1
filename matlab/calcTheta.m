function [theta] = calcTheta(lambda, X, Y)

err = @(theta)sum(abs(X*theta - Y)) + lambda*sum((theta).^2);

options = optimoptions(@fminunc,'Display','iter','Algorithm','quasi-newton','MaxFunEvals',2800);

theta = fminunc(err, ones(280,1), options);
end