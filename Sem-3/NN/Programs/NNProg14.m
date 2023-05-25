clc;
clear;
x=[-1 -1 -1 -1;-1 -1 1 1];
t=[1 1 1 1];
w=zeros(4,4);
for i=1:2
    w=w+x(i,1:4)'*x(i,1:4);
end
yin=t*w;
for i=1:4
    if yin(i)>0
        y(i)=1;
    else
        y(i)=-1;
    end 
end
disp('the calculated weight matrix');
disp(w);
if x(1,1:4)==y(1:4)| x(2,1:4)==y(1:4)
    disp('the vector is a known vector');
else
    disp('the vector is a unknown vector');
end