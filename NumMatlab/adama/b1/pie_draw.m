% Hear losses
% radiation : 20 W/s
% conduction: 120 W/s
% forced convection: 200 W/s

clear all; close all; clc
H = [20 120 200];
pie(H)
title("Heat transfer losses in a system")


figure
explode = [0 0 1];
pie(H, explode, {"Radiation (20 W/s)", "Conduction (120 W/s)", "Convection (200 W/s)"})
title("Heat transfer losses in the system")