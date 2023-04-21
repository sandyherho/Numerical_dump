clear all; close all; clc
syms x
y = exp(sin(2*x));
pretty(y)

y1 = diff(y,1);
pretty(y1)

z = log(1 + (sin(2*x + 1))^2);
pretty(z)

z1 = diff(z, 1);
pretty(z1)

z2 = diff(z, 2);
pretty(z2)