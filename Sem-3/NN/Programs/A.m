function [] = Area()
disp('=============================')
disp('Open channel area calculation') 
disp('=============================') 
disp('Select an option:') 
disp(' 1 - Trapezoidal') 
disp(' 2 - Rectangular') 
disp(' 3 - Triangular') 
disp(' 4 - Circular') 
disp('=============================') 
itype = input(''); 
switch itype, 
 case 1 
 id = 'trapezoidal';
 b = input('Enter bottom width:'); 
 z = input('Enter side slope:'); 
 y = input('Flow depth:'); 
 A = (b+z*y)*y; 
 case 2 
 id = 'rectangular';
 b = input('Enter bottom width:'); 
 z = 0; 
 y = input('Flow depth:'); 
 A = (b+z*y)*y; 
 case 3 
 id = 'triangular';
 b = 0; 
 z = input('Enter side slope:'); 
 y = input('Flow depth:'); 
 A = (b+z*y)*y; 
 otherwise 
 id = 'circular';
 D = input('Enter pipe diameter:'); 
 y = input('Enter flow depth (y<D):'); 
 beta = acos(1-2*y/D); 
 A = D^2/4*(beta+sin(beta)*cos(beta)) ; 
end 
fprintf('\nThe area for a %s cross-section is %10.6f.\n\n',id,A)