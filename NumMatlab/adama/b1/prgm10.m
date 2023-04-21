clear all; close all; clc
bi = biot(0.0786, 58, 205);
display(bi);

if bi < 0.1
    Tf = input("Tf: \n");
    Tfl = input("Tfl: \n");
    To = input("To: \n");
    r = .0786; h = 60; rho = 2700; cp = 900;
    T = log((Tf - Tfl) / (To -Tfl));
    fra = -((h*3) / (rho * cp *r));
    time = (T/fra);
    display(time)
else
    display("use Heislers chart to find the solution.")
end