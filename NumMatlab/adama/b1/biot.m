% Bi = h Lc / k
% h : convective heat transfer coeff. (W/m^2 K)
% Lc: charac length =  vol of sphere / surf. area of sphere
% k : thermal conductivity [W/m K]

function [bi] = biot(r, h, k)
    V = 4/3 * pi * r^3;
    A = 4*pi*r^2;
    Lc = V/A;
    bi = h*Lc/k;
end