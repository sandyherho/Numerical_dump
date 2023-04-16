clear all; close all; clc
d = [.2 .3 .4 .45 .5 .6 .7 .8]; % diameter (m)
u = [19.2 28.8 38.4 43.2 48 57.6 67.2 76.8]; % init. velocity (m/s)
w = [2898.8 3804.8 4348 4484 4529 4348.3 3804.8 2898.8]; % work (N m/kg/s)

% diameter vs work
plot(d, w)
title("Diameter vs Work")
xlabel("diameter (m)")
ylabel("work done by pelton (Nm/kg/s)")
grid on

% diameter vs initial velocity
plot(d, u)
title("diameter vs init velocity")
xlabel("diameter (m)")
ylabel("initial velocity (m/s)")

plotyy(d, w, d, u)

figure

subplot(2,1,1)
plot(d, w, "-*k")
xlabel("diameter (m)")
ylabel("work (Nm/kg/s)")
title("diameter vs work")

subplot(2,1,2)
plot(d, u, "-ok")
xlabel("diameter (m)")
ylabel("initial velocity (m/s)")
title("diameter vs initial velocity")


figure
subplot(2,1,1)
plot(d, w, "-*k", d, u, "-+k")
bar(d, w)
xlabel("diameter (m)")
ylabel("work (Nm/kg/s)")
title("diameter vs work")

subplot(2,1,2)
bar(d, u)
xlabel("diameter (m)")
ylabel("initial velocity (m/s)")
title("diameter vs initial velocity")


figure
subplot(3,1,1)
hist(d)
title("Diameter")

subplot(3,1,2)
hist(u)
title("Initial Velocity")

subplot(3,1,3)
hist(d)
title("Work Done")
