clear all; close all; clc
A = pi;
B = 1.7725;

fprintf("the value of A is %4.2f\n", A)

fprintf("the value of A is %4.2f\n and its square root is %5.4f\n", A, B) 

x=1:4;
fprintf("The value of x are %4.2f\n", x)

y = x.^2;
C = [x; y];
fprintf("The number is %4.2f, and the square is %4.6f\n", C)

fprintf("Halo string!\n")