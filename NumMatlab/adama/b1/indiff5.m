clear all; close all; clc

%% cara 1
dx = 0.001;
dy = 0.0002;

[X, Y] = meshgrid(1:dx:2, 3:dy:4);
z = 4.*X.*Y;

I = sum(sum(z))*dx*dy;
display(I)

%% cara 2
clear all; close all
syms x y
z = 4*x*y;
I = int(int(4*x*y, x, 1, 2), y, 3, 4);
display(I)