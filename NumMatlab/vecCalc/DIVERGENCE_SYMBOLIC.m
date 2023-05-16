clear all; close all; clc

syms x y z 
field = [-sin(x)*sin(y) cos(x)*cos(y) 0 ];
vars = [x y z];
divergence(field,vars)
