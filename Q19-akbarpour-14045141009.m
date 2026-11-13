clear
clc 

A = rand(4);
isSym = isequal(A == A', ones(4));
if isequal(A, A')
    disp('Matrix A is symmetric.');
else
    disp('Matrix A is NOT symmetric.');
end
disp('Matrix A:'); disp(A);

S = (A + A.') / 2;
if isequal(S, S')
    disp('Matrix S is symmetric.');
else
    disp('Matrix S is NOT symmetric.');
end
disp('Matrix s:'); disp(S);

M = [1 2 3; 2 5 6; 3 6 9];
if isequal(M, M')
    disp('Matrix M is symmetric.');
else
    disp('Matrix M is NOT symmetric.');
end
disp('Matrix M:'); disp(M);

