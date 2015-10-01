function [train,test] = scoreLambda(l, X, Y, Xtest, Ytest)

theta = linearRidgeRegression(l,X,Y);

train = sum((X*theta - Y).^2);
test = sum((Xtest*theta - Ytest).^2);

end