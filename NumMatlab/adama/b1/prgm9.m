clear all; close all; clc
format long g

u = linspace(.1,1, 10);
mu = 1.306e-6;
d = input("Enter diameter of pipe (m): \n");

for i = 1:1:10
    Re = u(i) * d / mu;
    if Re < 2100
        I = [u(i); Re];
        fprintf("The flow is laminar for the u = %2.2f m/s, and Re = %6.6f and the f = \n ", I)
        f = 32 / Re;
        display(f)
        
    elseif ((Re > 2100) & (Re < 4200))
        I = [u(i); Re];
        fprintf("The flow is transient for the u = %2.2f m/s, and Re = %6.6f \n", I)
        display("No model for friction factor")
    
    else
        I = [u(i); Re];
        fprintf("The flow is turbulent for the u = %2.2f m/s, and Re = %6.6f and the f = \n ", I)
        f = 0.316*Re^(-1/4);
        display(f)
    end
end