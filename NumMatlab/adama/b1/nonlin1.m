% Intermediate value theorem
% If f(x) is continuous function between [a,b]
% , and if f(a) * f(b) < 0, 
% then there exists at least one root between a and b

clear all; close all; clc

%% plots
subplot(2,2,1)
fplot('2*x*exp(-x)-0.4', [0 1]);
title('[0 1]')

subplot(2,2,2)
fplot('2*x*exp(-x)-0.4', [1 2]);
title('[1 2]')

subplot(2,2,3)
fplot('2*x*exp(-x)-0.4', [2 3]);
title('[2 3]')


subplot(2,2,4)
fplot('2*x*exp(-x)-0.4', [3 4]);
title('[3 4]')

%% fzero
fzero('2*x*exp(-x)-0.4', [0 1])
% fzero('2*x*exp(-x)-0.4', [1 2]) % no solution
fzero('2*x*exp(-x)-0.4', [2 3])
% fzero('2*x*exp(-x)-0.4', [3 4]) % no solution

figure
fplot('2*x*exp(-x)-0.4', [0 10]);
title('[0 10]')
