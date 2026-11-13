clear 
clc 

a = input('Enter a positive number: ');

if a <= 0
    error('A must be a positive number.');
end

x = a;
d= inf;
it = 0;
while d >= 0.0001
    x_new = (x + a / x) / 2;
    it = it + 1;
    d = abs(x_new - x);
    x = x_new;
end
fprintf('Root of %g = %.6f  (%d iterations)\n', a, x, it)

for a = [25 7 0.5]
    x  = a;
    while true
        xNew = (x + a/x) / 2;
        if abs(xNew - x) < 0.0001, x = xNew; break, end
        x = xNew;
    end
    fprintf('a = %5g, secend-root = %.6f, sqrt = %.6f, difference = %.2e\n', ...
            a, x, sqrt(a), abs(x - sqrt(a)));
end


