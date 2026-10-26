// code of zain ul abideen
clear; clc;

// size of the grid matrix.
lent = 10000
lenx = 100

// heat equation constant.
a = 1

// see what works best.
delt = 0.001

// The Matrix.
M = zeros(lent, lenx)

// tailor-made for this application.
x = linspace(0, 10, lenx)

delx = x(2)

// defining placeholder variables.
l = (a .* a) .* (delt) ./ (delx .* delx)

// initial condition.
function [y]=f(x)
    y = exp(- (x - 5) .^ 2)
endfunction

y = f(x)

M(1, :) = y

// boundary condition.
M(:, 1) = 0; M(:, lenx) = 0;

// solving the PDE.
for j = 2 : lent
    for i = 2 : lenx - 1
        M(j, i) = M(j - 1, i) + l .* (M(j - 1, i - 1) - 2 .* M(j - 1, i) + M(j - 1, i + 1))
    end
end

// plotting all iterations.
for k = 1 : 100 : lent
    plot(x, M(k, :))      
end

// see the relevant paper for theoretical formulation.
