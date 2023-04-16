% generate 500 normally dist random nums, mean=4, std = 2
clear all; close all; clc
A = randn(1, 500);

mean(A) % almost 0
std(A) % almost 1

B = 2*A; % std = 2

std(B) % almost 2

B = B + 4; % mean = 4

mean(B) % almost 4

hist(B)


% cara singkat
r = 4 + 2*randn(1,500);
figure
hist(r)
mean(r)
std(r)