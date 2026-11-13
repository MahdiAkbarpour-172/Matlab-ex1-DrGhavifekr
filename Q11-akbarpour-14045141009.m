clear; clc;

syms t

L1 = limit((1 - cos(t))/t^2, t, 0);
disp('limit of (1 - cos(t))/t^2 at 0:');
disp(L1);
fprintf('\n');

L2 = limit((2*t+1)/(t-3), t, inf);
disp('limit of (2*t+1)/(t-3) at inf:');
disp(L2);
fprintf('\n');

Ll = limit(1/t, t, 0, 'left');
Lr = limit(1/t, t, 0, 'right');
disp('Left limit  of 1/t at 0:');  disp(Ll)
disp('Right limit of 1/t at 0:');  disp(Lr)