% p(x) = x^5 + 2x^4 + 3x^3 + 4x + 5

clear all; close all; clc
p = [1 2 3 0 4 5];

polyval(p, 0) % p(0)
polyval(p, 2) % p(2)

x = roots(p) 

poly(x) % create polynom from roots

% g(x) = 2x^2 + 3x + 4
g = [2 3 4];

conv(p, g) % p(x) * g(x)
% 2x^7+7x^6+16x^5+17x^4+20x^3+22x^2+31x+ 20

[a, b] = deconv(p, g) % p(x) / g(x) 
% a : quotien polynom
% b: remainder polynom

polyder(g) % g'(x) = 4x + 3

polyder(p,g) %(g(x) f(x))'

[a, b] = polyder(p, g) % (p / g)'; a = numerator; b = denominator


