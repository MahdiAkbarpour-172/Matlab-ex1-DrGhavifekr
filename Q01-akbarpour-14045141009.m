clear 
clc 
a = 245;
if a <= 100
    cost = a*1500;
else 
    cost = 100*1500 + (a - 100)*3000;
end 
fprintf('for %d kwh, cost = %.0f Toman\n', a, cost);

b = [245 400];
for k = 1:length(b)
    if b(k) <= 100
        cost2 = b(k) * 1500;
    else
        cost2 = 100*1500 + (b(k) - 100)*3000;
    end
    fprintf('for %d kwh, Cost = %.0f Toman\n', b(k), cost2);
end