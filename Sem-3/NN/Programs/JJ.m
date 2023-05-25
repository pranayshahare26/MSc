function [J] = JJ(x)
J = zeros(2,2); 
J(1,1) = x(1)+x(2); 
J(1,2) = (x(1)+x(2))^2; 
J(2,1) = x(1)*x(2); 
J(2,2) = sqrt(x(1)+x(2))