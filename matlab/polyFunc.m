function [y] = polyFunc(theta, x)
y = 0;
for i = 1:size(theta, 1)
    y = y + theta(i)*x.^(i-1);
end