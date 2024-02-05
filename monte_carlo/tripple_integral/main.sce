// code of Zain Ul Abideen
clc; clear;

aa = -1
bb = 2
cc = 0
dd = 1
ee = -5
ff = 6

n = 10000000

// random number generations
x = grand(1, n, "unf", aa, bb)
y = grand(1, n, "unf", cc, dd)
z = grand(1, n, "unf", ee, ff)

function [k]=f(x, y, z)
    k = sin(x .* y .* z)
endfunction

// function evaluations
k = f(x, y, z)

// solution to the integrals
integral = ((bb - aa) .* (dd - cc) .* (ff - ee) ./ n) .* sum(k)
disp(integral)

// see the relevant paper for more info
