clc;
clear;
x=[1 1 -1 -1];
w=zeros(4,4);
w=x'*x;
yin=x*w;
for i=1:4
    if yin(i)>0
        y(i)=1;
    else
        y(i)=-1;
    end
end
disp('weight matrix');
disp(w);
if x==y
    disp('the vector is a known vector')
else
    disp('the vector is unknown vector');
    
end