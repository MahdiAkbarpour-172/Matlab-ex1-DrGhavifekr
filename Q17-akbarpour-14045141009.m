clear 
clc 

rng(1)
kwh =  rand(1, 5);
figure(1)
bar(kwh, 'r')          
xlabel('Day'); ylabel('kWh'); grid on

p = [22 28 8 33 11];
figure(2)
pie(p)

[~, idxMax] = max(p);          
explode = zeros(1, numel(p));
explode(idxMax) = 1;              
figure(3)
pie(p, explode)
