clear 
clc

V = input('Enter voltage (Volt): ');
R = input('Enter resistance (Ohm): ');
if R == 0
    error('Resistance cannot be zero. Program stopped.');
end


I = V / R;
P = V * I;


fprintf('Current = %.4f A\n', I);
fprintf('Power   = %.4f W\n', P);

diary('Q03.txt')      
V = 12; R = 820;
I = V / R;
P = V * I;
fprintf('V = %g V, R = %g Ohm\nCurrent = %.4f A, Power = %.4f W\n', V, R, I, P);
diary off                  