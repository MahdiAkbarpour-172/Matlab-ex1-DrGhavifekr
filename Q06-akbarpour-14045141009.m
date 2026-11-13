clear 
clc 
A = [75  140  90;
     30   60  200;
     45   80  120];  
p = [35000; 80000; 120000];

value = A*p;
fprintf('Branch %d value = %.0f Toman\n', [1 2 3; value']);

value2 = A.*p;
disp('A * p :')
disp(value)
disp('A .* p:')
disp(value2)

TA = A';      
disp('Transpose of A:')
disp(TA)

totalPieces = A * ones(3, 1);
fprintf('Total pieces in branch %d = %d\n', [1 2 3; totalPieces']);
