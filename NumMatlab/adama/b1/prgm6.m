clear all; close all; clc

A = 1:6;
B = 2:7;

ops = input("p : addition, m : subtraction, d: element-by-element multiplication \n", "s");

switch ops
    case "p"
        C = A + B
    case "m"
        C = A - B
    case "d"
        C = A .* B
    otherwise
        display("Wrong input!")
end
