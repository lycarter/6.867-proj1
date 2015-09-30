function [ SSE, derivative ] = findSSE( Y, basis, theta )
%finds SSE and derivative
%   Detailed explanation goes here

sum = 0;
for n = 1:length(X)
    sum = sum + (Y(n, 1) - theta' * basis(X)).^2; %some things here to add to the sum
end

end

