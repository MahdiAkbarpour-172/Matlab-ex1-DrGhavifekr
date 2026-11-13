clear 
clc 

t  = [0 1 2 5 10];
v  = 12 * (1 - exp(-t/2));
fprintf(' t = %2d s, v = %6.3f V\n', [t; v]);

t95 = -2 * log(0.05);
fprintf('95 percent of 12V: t = %.4f s\n', t95);

vd = 12 * exp(-t/2);
fprintf('V in t=10: V = %.4f V\n', vd(t == 10));