clear 
clc 

T = [22.5 22.8 23.1 24.0 25.2 23.2 24.3 25.4 26.0 26.1];

Tmean = mean(T);
fprintf('Mean = %.2f C\n', Tmean);
Tmax  = max(T);
fprintf('Max  = %.2f C\n', Tmax);
Tmin  = min(T);
fprintf('Min  = %.2f C\n', Tmin);
Tstd  = std(T);
fprintf('Std  = %.2f C\n', Tstd);

a = T - Tmean;     
disp('T - mean:');
disp(a)

sort = sort(T);
disp('The third sorted one:')
disp(sort(3))



