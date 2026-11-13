clear 
clc 

for k = 3:2:34
    fprintf('%d ', k);
end
fprintf('\n')

k = 3;
while k <= 34
    fprintf('%d ', k);
    k = k + 2;
end
fprintf('\n')

x = input('x: ');
n = input('n: ');
sum = 0;                          
for k = 1:n
    sum = sum + (2/x)^k;
end
fprintf('Sum = %g\n', sum);

v = 0;               
s = 0;
while abs(500 - v) >= 5
    v = v + 0.1*(500 - v);
    s = s + 1;
end
fprintf('Final speed = %.4f m/s, steps= %d\n', v, s);
