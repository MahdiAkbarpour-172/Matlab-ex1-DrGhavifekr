clear 
clc 

t  = 0:0.1:5;
y1 = sin(t).*cos(t).^2 ./ (t.^2 + 1);
y2 = sqrt(t.^3) .* exp(2);
figure(1)
plot(t, y1, 'b-', 'LineWidth', 1.5)
hold on
plot(t, y2, 'r', 'LineWidth', 2.5)   
hold off
legend('y1 = sin(t)cos(t)^2/(t^2+1)', 'y2 = sqrt(t^3)e^2')
title('Plot of y1 and y2')


x = -2:0.05:2;
f = sin(x).^2 + sinh(x).^2;
Z = cos(x).^2 + cosh(x).^2;
k = x.^2 + 2*x.*sin(x);
figure(2)
subplot(3,1,1);
plot(x, f); title('f(x) = sin^2(x) + sinh^2(x)')
subplot(3,1,2);
plot(x, Z); title('Z(x) = cos^2(x) + cosh^2(x)')
subplot(3,1,3); 
plot(x, k); title('k(x) = x^2 + 2x sin(x)')


figure(3)
subplot(2,1,1)
t2 = 0:0.001:2;                      
plot(t2, sin(2*pi*3*t2))
title('S1')
xlabel('t'); ylabel('s(t)'); grid on
subplot(2,1,2)
t3 = 0:0.1:2;                        
stem(t3, sin(2*pi*3*t3), 'filled')
title('S2')
xlabel('t (s)'); ylabel('samples'); grid on