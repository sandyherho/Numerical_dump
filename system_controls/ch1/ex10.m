clear all; close all; clc

%% with residue
N1 = [2]; % nominator
D1 = [1 5 5]; % denominator
[r1, p1, k1] = residue(N1,D1);

N2 = [2];
D2 = [1 8 20 15];
[r2, p2, k2] = residue(N2, D2);

t = 0:.05:10;
x1 = -0.8944*exp(-3.618*t) + 0.8944*exp(-1.3682*t);
x2 = 1.4472*exp(-3.6188*t) - 2*exp(-3*t) + 0.5528*exp(-1.382*t);

plot(t, x1, "g.");
hold on
plot(t, x2, "cs");
legend('x1', 'x2')

%% with ilaplace
clear all; clc
syms s

A =[s+2 -1;-1 s+3];
b = [2/(s+3); 0];
X_s = inv(A)*b
x_t = ilaplace(X_s)

t = 0:.05:10;
y1 = subs(x_t(1),t);
y2 = subs(x_t(2), t);

figure
plot(t, y1, 'r.')
hold on
plot(t, y2, 'bs')
xlabel('t')
legend('x1', 'x2')
ylabel('x(t)')
