function [] = myTable()  
fprintf('======================================\n');  fprintf(' a b c d \n')  
fprintf('======================================\n');  for j = 1:10  
 a = sin(10*j);  
 b = a*cos(10*j);  
 c = a + b;  
 d = a - b;  
 fprintf('("%+6.5f %+6.5f %+6.5f %+6.5f \n',a,b,c,d); end  
fprintf('======================================\n'); 