function grad = finGrad(f, x, delta)
d = delta/2;
dims = size(x);
vdim = dims(2);
empty = zeros(dims);
z = zeros(dims);
for i = 1:vdim
    temp = empty;
    temp(i) = 1;
    z(i) = f(x+d*temp) - f(x-d*temp);
end
grad = z./delta;
end
