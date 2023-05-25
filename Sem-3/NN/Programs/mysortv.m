function [v] = MySort(u,itype)
n = length(u); 
v = u; 
%Start sorting process
if itype == 'i' 
 for i = 1:n-1 
 for j = i+1:n 
 if v(i)>v(j) 
 temp = v(i); 
 v(i) = v(j); 
 v(j) = temp; 
 end 
 end 
 end 
else 
 for i = 1:n-1 
 for j = i+1:n 
 if v(i)<v(j) 
 temp = v(i); 
 v(i) = v(j); 
 v(j) = temp; 
 end 
 end 
 end 
end