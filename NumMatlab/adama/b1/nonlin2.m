clear all; close all; clc
syms x y
eqns = [x^2 + y^2 == 20, y - x^2 == 0]
sol = solve(eqns, [x y])
x_sol = sol.x;
y_sol = sol.y;