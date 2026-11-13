clear 
clc 

p = [-5 40 0];
t = [0 2 4 6];

h = polyval(p, t);
fprintf('h(0)=%g, h(2)=%g, h(4)=%g, h(6)=%g\n', h);

roots = roots(p);
disp('Roots in h=0:')
disp(roots) 

f1 = [5 0];                        
f2 = [1 -8];                       
p2 = conv(f1, f2);               
disp('conv result:'); disp(p2)
disp('poly p:'); disp(p)

if isequal(p2, p)
    disp('The factorization is correct: conv result equals p.');
else
    disp('NOT equal!');
end

a = p(1); b = p(2);
tmax = -b / (2*a);                   
hmax = polyval(p, tmax);            
fprintf('Maximum height = %.1f m at t = %.1f s\n', hmax, tmax);
