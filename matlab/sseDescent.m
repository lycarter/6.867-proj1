function min = sseDescent(guess, step, threshold, X, Y)
% numerically calculates the optimal theta
% call with sseDescent([-108, 646], .008, .0000001, X, Y)
xn = guess;
x0 = zeros(size(guess));
iterations = 0;
while abs(gradSSE(x0, X, Y) - gradSSE(xn, X, Y)) > threshold
    iterations = iterations + 1;
    grad = gradsseD(xn, X, Y);
    x0 = xn;
    xn = xn - step*grad';
end
min = xn;
end