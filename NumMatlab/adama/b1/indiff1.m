% y = 4x^5 + 20x^4
% y', y'', y''', y^(4) ?

clear all; close all; clc
syms x
y = 4*x^5 + 20 * x^4;
pretty(y)

y1 = diff(y,1);
pretty(y1)

y2 = diff(y, 2);
pretty(y2)

y3 = diff(y,3);
pretty(y3)

y4 = diff(y, 4);
pretty(y4)

