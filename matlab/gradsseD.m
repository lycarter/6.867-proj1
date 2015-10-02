function  [ grad ] = gradsseD( theta, X, Y)
%numerically computes the gradient
M = length(theta);
grad = zeros(length(theta), 1);
for i = 1:length(theta)
    theta1 = theta;
    theta2 = theta;
    theta1(i) = theta1(i) + 0.00001;
    theta2(i) = theta2(i) - 0.00001;
    for n = 1:length(X)
        grad(i, 1) = grad(i, 1) + ((Y(n, 1) - theta1 * phii(M, X(n, 1))).^2 - (Y(n, 1) - theta2 * phii(M, X(n, 1))).^2)/0.00002;
        
    end
end
grad = grad ./ length(X);
end