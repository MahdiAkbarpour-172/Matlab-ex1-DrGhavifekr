clear 
clc 

t1 = 0:0.01:5;
v1 = 3*t1.^2 + 2*t1;
d1 = trapz(t1, v1);
fprintf('Distance = %.4f m\n', d1);

syms ts
vs = 3*ts^2 + 2*ts;
dSym = int(vs, ts, 0, 5);           
d2 = double(dSym);
fprintf('Distance = %.4f m\n', d2);

t2 = 0:0.5:5;
v3 = 3*t2.^2 + 2*t2;
d3 = trapz(t2, v3);
e = abs(d3 - d2);
fprintf('Distance = %.4f m, error = %.4f m\n', d3, e);

d4 = cumtrapz(t1, v1);
idx  = find(d4 >= d2/2, 1);        
fprintf('t at half of total d = %.2f s\n', t1(idx));
