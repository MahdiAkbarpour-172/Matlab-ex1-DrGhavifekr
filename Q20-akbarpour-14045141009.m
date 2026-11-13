clear 
clc 

a = input('Enter a (ax^2 + bx + x): ');
b = input('Enter b (ax^2 + bx + x): ');
c = input('Enter c (ax^2 + bx + x): ');
p = [a, b, c];
r = roots(p);
disp('Roots of the equation:')
disp(r)

if all(isreal(r))
    rmin = min(r); rmax = max(r);
    margin = 0.25 * max(abs(rmax - rmin), 1);  
    x = linspace(rmin - margin, rmax + margin, 400);
    y = polyval(p, x);
    figure
    plot(x, y, 'b-')
    hold on
    plot(r, zeros(size(r)), 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 8)
    hold off
    xlabel('x'); ylabel('f(x)')
    grid on
    legend('f(x)', 'roots')
else
    disp('There is no plot.');
end


