function [S] = sum1(n)  
S = 0; 
k = 0;
while k <= n  
 S = S + 1/(k^2+1); % add to summation 
 k = k + 1; % increase the index 
end
