% 5x + 10y + 7z = 15
% 12x + 13y + 7z = 0
% 9x + 10y - 5z = 10

clear; close all; clc

A = [5 10 7; 12 13 7; 9 10 -5];
C = [15;0;10];

% slow
X = inv(A) * C

% fast
X = A\C

A*X