function [X,Y, Xtest, Ytest] = blogTrainData()
%y = sin(2 pi x) + N(0,0.3),
X = importdata('BlogFeedback_data/x_train.csv');
Y = importdata('BlogFeedback_data/y_train.csv');
Xtest = importdata('BlogFeedback_data/x_test.csv');
Ytest = importdata('BlogFeedback_data/y_test.csv');
end