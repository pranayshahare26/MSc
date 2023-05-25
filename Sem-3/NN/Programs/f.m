function [y] = f(x)
y = zeros(3,1); %create output vector
y(1) = x(1)*cos(x(2))+x(2)*cos(x(1))+x(3); 
y(2) = x(1)*x(2) + x(2)*x(3) + x(3)*x(1); 
y(3) = x(1)^2 + 2*x(1)*x(2)*x(3) + x(3)^2