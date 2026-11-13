clear
clc

A = rand(4) * 10;
disp('Matrix A:')
disp(A)

Amx = max(A(:));                    
Amn = min(A(:));                     

[rMax, cMax] = find(A == Amx);        
[rMin, cMin] = find(A == Amn);        
fprintf('Max = %.4f at (%d, %d)\n', Amx, rMax, cMax);
fprintf('Min = %.4f at (%d, %d)\n', Amn, rMin, cMin);

A(rMax, cMax) = Amn;
A(rMin, cMin) = Amx;
disp('Matrix A2:')
disp(A)

colMeans = mean(A);                
disp('Mean of each column:')
disp(colMeans)

for j = 1:size(A,2)
    fprintf('Column %d mean = %.4f\n', j, colMeans(j));
end