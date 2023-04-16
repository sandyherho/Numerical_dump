clear all; close all; clc
x = linspace(-4*pi, 4*pi, 400);
y = x;
r = sqrt(x.^2 + y.^2);
z = sin(r) ./ r;
plot3(x,y,z, "-*k")
grid on

% top view: view(0,90)
% side view (x,z): view(0,0)
% side view (y,z): view(90,0)

figure
plot3(x,y,z, "-*k")
grid on
view(0,0)

%% mesh plot
[X, Y] = meshgrid(x,y);
r = sqrt(X.^2 + Y.^2);
z = sin(r) ./ r;
figure
mesh(X, Y, z);

figure
mesh(X, Y, z);
view(0,0)