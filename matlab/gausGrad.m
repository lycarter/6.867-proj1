function v = gausGrad( x )
v = x*exp(-.5*sum(x.^2));
end