clear all; close all; clc
syms x y
y = 4*x^2 + 5*x + 6;
z = int(y);
pretty(z)

hasil = int(y, x, 1, 2); % int y w.r.t x 1 to 2
pretty(hasil)