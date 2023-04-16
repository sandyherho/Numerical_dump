clear all; close all; clc
theta = linspace(0, 2*pi, 200);
rad = 4*sin(2*theta).^2 + 2*theta;
polar(theta, rad, "*k")