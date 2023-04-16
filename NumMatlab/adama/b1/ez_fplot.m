% y = sin(2x) + cos(2x) - 1
clear all; close all; clc

subplot(2,1,1)
fplot("sin(2*x) + cos(2*x) - 1", [-2*pi 2*pi], "-*k")

subplot(2,1,2)
ezplot("sin(2*x) + cos(2*x) - 1") % default range
