function [train,test] = scoreLambda(l, X, Y, Xtest, Ytest)

theta = linearRidgeRegression(l,X,Y);

train = sum(abs(X*theta - Y));
test = sum(abs(Xtest*theta - Ytest));

end