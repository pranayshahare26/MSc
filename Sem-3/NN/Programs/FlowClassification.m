function [] = FlowClassification(Re,Ma)
if Re <= 2000 
 class = 'The flow is laminar ';
elseif Re > 2000 & Re <= 5000 
 class = 'The flow is transitional ';
else 
 class = 'The flow is turbulent ';
end
if Ma < 1 
 class = strcat(class , ' and sub-sonic.'); 
elseif Ma == 1 
 class = strcat(class , ' and sonic.'); 
else 
 class = strcat(class , ' and super-sonic.'); 
end 
disp(class)