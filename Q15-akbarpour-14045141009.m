clear 
clc 

temps = [50 -25 115];
for C = temps
    fprintf('%.1f C = %.2f K\n', C, c2k(C));
end


v1 = [3 4];
v2 = [1 2 2];
fprintf('norm3([3 4])= %.6f\n', norm3(v1));  
fprintf('norm3([1 2 2])= %.6f\n', norm3(v2)); 

[P, S] = powerCalc(220, 5, 0.9);
fprintf('For V = 220 V, I = 5 A, s = 0.9, P = %.1f W, S = %.1f VA\n', P, S);
