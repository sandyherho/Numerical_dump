% Water at 10 deg C flows through a pipe of length 3 m and diameter 10 cm.
% The velocity at the inlet of the pipe is 0.4 m/s. Using "if" statements 
% find whether the flow is laminar, transient, or turbulent
% Take density of water to be 10^3 kg.m^-3 & kinematic viscosity
% 1.306e^-6 m^2.s^-1

% Fluid mech
% Re = u * d / nu 
% Re < 2100: laminar
% 2100 < Re < 4100 : transient
% Re > 4100 : turbulent

%% def params
d = input("Enter the diameter (m): "); % m
u = input("Enter the speed of inlet flow (m/s): "); % m/s
nu = 1.306e-6;

%% compute
Re = u * d / nu;

%% if statement
if Re < 2100
    fprintf("Laminar flow, Re = %4.5f\n", Re)
elseif ((Re > 2100) & (Re < 4100))
    fprintf("Transient flow, Re = %4.5f\n", Re)
else
    fprintf("Turbulent flow, Re = %4.5f\n", Re)
end

%% switch
ops = input("for calc. friction, press L (laminar), B (transient), T (turbulent): \n", "s");

switch ops
    case "L"
        f = 32 / Re;
        display(f)
    case "B"
       display("No model to calculate friction factor in this zone")
       display("Bye!")
    case "T"
        f = .316 * (Re) ^(-1/4);
        display(f)
    otherwise
        display("Wrong input!")
end
