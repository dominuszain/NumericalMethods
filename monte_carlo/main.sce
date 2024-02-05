// code of Zain Ul Abideen
clc; clear;

a = 0
b = %pi

n = 100

x = grand(1, n, "unf", a, b)

function [y]=f(x)
    y = sin(x)
endfunction

y = f(x)

integral = ((b - a) ./ n) .* sum(y)
disp(integral)

clf()
scatter(x, y)
