clear all; close all; clc
A = 1:5;
B = [0 2 4 2 6];

A & B

C = 5;
D = 6;
E = 2;
(C > D) & (C < E) % FALSE & FALSE = FALSE (0)
(C > D) & (C > E) % F & T = F (0)
(C < D) & (C > E) %T & T = T (1)

A|B
(C > D) | (C < E) % FALSE | FALSE = FALSE (0)
(C > D) | (C > E) % F | T = T (1)
(C < D) | (C > E) %T | T = T (1)

~ A
~ B

~ ((C < D) | (C > E)) % ~(F | T) = ~ (T) = F atau 0
~((C > D) | (C < E)) % ~ (F | F) = ~ (F) = T atau 1 

