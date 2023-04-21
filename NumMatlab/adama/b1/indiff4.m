clear all; close all; clc
syms hf T
hf = 0.006*T - 5e-6 * T^2;

pretty(hf)

double(int(hf, T, 50, 350)/0.35)

