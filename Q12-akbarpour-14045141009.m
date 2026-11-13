clear 
clc 

z1 = (2 + 3i) / (3 - 4i);
fprintf('(2+3i)/(3-4i): %.4f + %.4fi \n\n', real(z1), imag(z1));

R = 10; L = 0.1; C = 2e-4; f = 50;
w = 2*pi*f;
Z = R + 1i*(w*L - 1/(w*C));
fprintf('Re(Z) = %.4f Ohm\n', real(Z));
fprintf('Im(Z) = %.4f Ohm\n', imag(Z));

z1 = abs(Z);
z2 = rad2deg(angle(Z));    
fprintf('|Z| = %.4f Ohm, angle(Z) = %.4f deg\n', z1, z2);