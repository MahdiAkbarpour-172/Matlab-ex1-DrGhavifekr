clear 
clc 
energy = 4.2;
price = 5000;

monthlyIncome = energy * 30 * price;
yearlyIncome  = energy * 365 * price;

%monthly income 
fprintf('Income: %.2f \n', monthlyIncome);
%yearly income 
fprintf('Income: %.2f \n',  yearlyIncome);

who
format long
fprintf('format long : %.15f\n', 10/3)  
10/3

format short
fprintf('format short: %g\n', 10/3)      
10/3