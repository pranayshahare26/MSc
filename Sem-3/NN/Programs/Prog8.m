
clear 

for k=0:70 
x(k+1)=0.1*k;
sum = 0;

for m=0:10 
sum = sum+(x(k+1)^m)/gamma(m+1);
end 

e(k+1) = sum;
end 

semilogy(x,e) 
title('Approximation of e^x for x between 0 and 7') 
xlabel('x') 
ylabel('e^x')