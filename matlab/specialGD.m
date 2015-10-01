function theta = specialGD(f, guess, step, threshold, lambda, X, Y)
% call with finDifGradDescent(@quad, [-108, 646], .008, .01)
xn = guess;
x0 = zeros(size(guess));
iterations = 0;
while abs(f(lambda, x0, X, Y) - f(lambda, xn, X, Y)) > threshold
    iterations = iterations + 1
    grad = finGrad(f, xn, step/10, lambda, X, Y);
    x0 = xn;
    xn = xn - step*grad;
    m0 = min(x0)
    mn = min(xn)
end
iterations;
theta = xn;
end

function grad = finGrad(f, x, delta, lambda, X, Y)
d = delta/2;
dims = size(x);
vdim = dims(1);
empty = zeros(dims);
z = zeros(dims);
for i = 1:vdim
    temp = empty;
    temp(i) = 1;
    z(i) = f(lambda, x+d*temp, X, Y) - f(lambda, x-d*temp, X, Y);
end
grad = z./delta;
end
