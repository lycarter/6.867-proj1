def finDiff(f, guess, step, threshold):
    xn = guess
    xo = [0.0 for i in range(len(guess))]
    def grad(f, x, delta):
        z = []
        for dim in range(len(x)):
            z.append(f(x[:dim] + [x[dim] + delta/2] + x[dim+1:]) - f(x[:dim] + [x[dim] - delta/2] + x[dim+1:]))

        z = [float(i)/delta for i in z]
        return z
    while abs(f(xo) - f(xn)) > threshold:
        gradient = grad(f, xn, step/10)
        print gradient
        for el in range(len(xo)):
            xo[el] = xn[el]
            xn[el] = xo[el] - step * gradient[el]
        print xn
        #print("xo: ", xo)
        #print("f(xo): ", f(xo))
    return xn

def quad(x):
    return ((x[0]-2) ** 2)/12. + ((x[1]-3) ** 2)/24.

def quadN(x):
    r = 0
    for i in x:
        r += i**4
    return r

print finDiff(quadN, [1000], .1, .01)
