function theta = badCalcTheta(lambda, X, Y)

err = @(theta)sum(abs(X*theta - Y)) + lambda*sum((theta).^2);

theta = finDifGradDescent(err, zeros(280,1),.01, .01);
end

function min = finDifGradDescent(f, guess, step, threshold)
% call with finDifGradDescent(@quad, [-108, 646], .008, .01)
xn = guess;
x0 = ones(size(guess));
iterations = 0;
while (sum(abs(x0 - xn)) > threshold) && (iterations < 25)
    iterations = iterations + 1
    grad = finGrad(f, xn, step/10);
    diff = sum(abs(x0 - xn))
    x0 = xn;
    xn = xn - step*grad./abs(max(grad));
end
diff = sum(abs(x0 - xn))
min = xn;
end

function grad = finGrad(f, x, delta)
d = delta/2;
dims = size(x);
vdim = dims(1);
empty = zeros(dims);
z = zeros(dims);
for i = 1:vdim
    temp = empty;
    temp(i) = 1;
    z(i) = f(x+d*temp) - f(x-d*temp);
end
grad = z./delta;
end
