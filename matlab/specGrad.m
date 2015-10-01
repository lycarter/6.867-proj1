function grad = specGrad(f, x, delta, lambda, X, Y)
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
