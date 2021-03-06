function [train,test] = scoreTheta(theta, X, Y, Xtest, Ytest)

M = length(theta) - 1;

Phi = zeros(length(X), M+1);
for n = 1:size(Phi,1)
    for m = 1:size(Phi,2)
        Phi(n,m) = X(n).^(m-1);
    end
end

Phitest = zeros(length(Xtest), M+1);
for n = 1:size(Phitest,1)
    for m = 1:size(Phitest,2)
        Phitest(n,m) = Xtest(n).^(m-1);
    end
end

train = sum((theta'*Phi' - Y).^2);
test = sum((theta'*Phitest' - Ytest).^2);

end