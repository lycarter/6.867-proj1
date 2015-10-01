function [ phi ] = phii2(M, x)

phi = zeros(M, 1);
for i = 1:M
    phi(i, 1) = sin(2 * pi * i * x);
end
end