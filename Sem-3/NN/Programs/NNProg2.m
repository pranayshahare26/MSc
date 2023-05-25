clc;
clear;
disp('Enter weights: ');
w1=input('weight w1= ');
w2=input('weight w2= ');
disp('Enter Threshold value: ');
theta=input('theta= ');
y=[0 0 0 0];
x1=[0 0 1 1];
x2=[0 1 0 1];
z=[0 0 1 0];
con=1;
while con
    zin=x1*w1+x2*w2;
    for i=1:4
        if(zin(i)>=theta)
            y(i)=1;
        else
            y(i)=0;
        end
    end
    disp('output of net');
    disp(y);
    disp(z);
    if y==z
        con=0;
    else
        disp('Net is not learning enter another set of weights and Threshold value');
        w1=input('weight w1=');
        w2=input('weight w2=');
        theta=input('theta=');
    end
end
disp('Mcculloch-pitts Net for ANDNOT function');
disp('The weights of neuron');


disp(w1);
disp(w2);
disp(' Threshold value');
disp(theta);
