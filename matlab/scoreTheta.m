function [train,test, train2, test2] = scoreTheta(theta, X, Y, Xtest, Ytest)

train = sum(abs(X*theta - Y));
test = sum(abs(Xtest*theta - Ytest));
train2 = sum((X*theta - Y).^2);
test2 = sum((Xtest*theta - Ytest).^2);

end