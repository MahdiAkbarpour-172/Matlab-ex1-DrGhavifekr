clear 
clc 

syms s t
Is = 12 / (s*(4 + 0.2*s));

it = ilaplace(Is); 
disp('i(t) ='); disp(it);

i1 = double(subs(it, t, 1));
fprintf('i(1 s)   = %.6f A\n', i1);

i01 = double(subs(it, t, 0.1));
fprintf('i(0.1 s)   = %.6f A\n', i01);
        
v  = 12 / 4;                     
i_inf = double(limit(it, t, inf));
fprintf('I = %g A, V/R = %g A\n', i_inf, v);