function [v] = MySort(u)
n = length(u); 
%Copy vector u to v
v = u; 
%Start sorting process
for i = 1:n-1 
 for j = i+1:n 
 if v(i)>v(j) 
 temp = v(i); 
 v(i) = v(j); 
 v(j) = temp; 
 end 
 end 
end