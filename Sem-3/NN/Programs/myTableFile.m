function [] = myTableFile()  
fprintf('Printing to a file\n');  
fprintf('==================\n');  
filname = input('Enter file to write to (between quotes):\n');  u = fopen(filname,'w'); %open output file 
fprintf('======================================\n');  
fprintf(u,'\n======================================\r');  fprintf(' a b c d \n');  
fprintf(u,'\n a b c d \r');  
fprintf('======================================\n');  
fprintf(u,'\n======================================\r');  for j = 1:10  
 a = sin(10*j);  
 b = a*cos(10*j);  
 c = a + b;  
 d = a - b;  
 fprintf('%+6.5f %+6.5f %+6.5f %+6.5f\n',a,b,c,d); 
 fprintf(u,'\n%+6.5f %+6.5f %+6.5f %+6.5f\r',a,b,c,d); end;  
fprintf('======================================\n');  
fprintf(u,'\n======================================\r');  fclose(u);