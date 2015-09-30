function y = quad(x)
y = sum(x.^2);
global counter
counter = counter + 1;
end