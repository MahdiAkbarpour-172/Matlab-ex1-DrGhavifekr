clear; clc;

t = 0:0.5:20;
s = 60*(1 - exp(-t/5));

v_d = diff(s) ./ diff(t);
v_g = gradient(s, t);
fprintf('length(t)        = %d\n', length(t));
fprintf('length(diff)     = %d\n', length(v_d));
fprintf('length(gradient) = %d\n', length(v_g));

syms T
s_sym = 60*(1 - exp(-T/5));
v_sym = diff(s_sym, T);
v_at5 = double(subs(v_sym, T, 5));
fprintf('v(5) symbolic = %.4f m/s\n', v_at5);

v_max = max(v_g);
[~, i10] = min(abs(t - 10));
a_g = gradient(v_g, t);
fprintf('Maximum speed = %.4f m/s\n', v_max);
fprintf('At t = 10 s: speed = %.4f m/s, a = %.4f m/s^2\n', v_g(i10), a_g(i10));