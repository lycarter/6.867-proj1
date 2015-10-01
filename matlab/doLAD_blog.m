function [theta] = calcTheta(lambda, X, Y,Xtest,Ytest)

err = @(theta)sum((X*theta - Y).^2) + lambda*sum(abs(theta));

options = optimoptions(@fminunc,'Display','iter','Algorithm','quasi-newton','MaxFunEvals',280000);

theta = fminunc(err, zeros(280,1), options);
end