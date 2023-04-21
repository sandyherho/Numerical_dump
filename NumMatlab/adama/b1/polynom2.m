% s = 0.3t^3 + 0.4 t^2 + 1.4
% s(4), u(4), a(4) ?

clear all; close all; clc

s = [0.3 0.4 0 1.4];

s4 = polyval(s, 4);
fprintf("s(4) = %2.2f m\n", s4)

u = polyder(s);
u4 = polyval(u, 4);
fprintf("u(4) = %2.2f m/s\n", u4)

a = polyder(u);
a4 = polyval(a, 4);
fprintf("a(4) = %2.2f m/s^2\n", a4)

