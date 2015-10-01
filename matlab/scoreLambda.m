function [train,test] = scoreLambda(l, X, Y, Xtest, Ytest)

theta = linearRidgeRegression(l,X,Y);

train = sum((X*theta > .5) == Y);
test = sum((Xtest*theta > .5) == Ytest);

end