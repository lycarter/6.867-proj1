function z = gaus( x )
z = -exp(-.5*sum(x.^2));
global counter
counter = counter + 1;
end

