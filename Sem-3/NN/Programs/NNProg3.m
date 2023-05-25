clear
clc
%XOR function using McCulloch-Pits
disp('Enter Weights ')
w11=input('Weight W11= ');
w12=input('Weight W12= ');
w21=input('Weight W21= ');
w22=input('Weight W22= ');
v1=input('Weight V1= ');
v2=input('Weight V2= ');
disp('Enter the value of theta');
theta=input('theta= ');
%y1=[0 0 0 0];
%y2=[0 0 0 0];
y=[0 0 0 0];
x1=[0 0 1 1];
x2=[0 1 0 1];
%zin=[0 0 0 0];
z=[0 1 1 0];
con=1;
while con
    zin1=x1*w11+x2*w21;
    zin2=x1*w12+x2*w22;
    for i=1:4
        if zin1(i)>=theta
            y1(i)=1;
        else
            y1(i)=0;
        end
        if zin2(i)>=theta
            y2(i)=1;
        else
            y2(i)=0;
        end
        
    end
    yin=y1*v1+y2*v2;
    for i=1:4
        if yin(i)>=theta
            y(i)=1;
        else
            y(i)=0;
        end
    end
    
        disp('Output of net ');
        disp(y);
        disp(z);
        if y==z
            con=0;
        else
        disp('Net is not learning enter another set of weights and Threshold value');
        w11=input('Weight W11= ');
        w12=input('Weight W12= ');
        w21=input('Weight W21= ');
        w22=input('Weight W22= ');
        v1=input('Weight V1= ');
        v2=input('Weight V2= ');
        disp('Enter the value of theta');
        theta=input('theta= ');
        end
end
    disp('Mcculloch-pitts Net for XOR function');
disp('The weights of neuron');
disp(w11);
disp(w12);
disp(w21);
disp(w22);
disp(v1);
disp(v2);
disp('Threshold value');
disp(theta);