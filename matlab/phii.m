function [ phi ] = phii(M, x)

phi = zeros(M, 1);
for i = 1:M
    phi(i, 1) = x.^(i-1);
end
end