clear;
clc;
input=xlsread('book2','input')  
output=xlsread('book2','output')
test=xlsread('book2','test')
net=newp(input,output);
net.trainparam.epochs=1000;
net.trainparam.goal=0;
net=train(net,input,output);
y=sim(net,test);
x=y';
for i=1:5
    k=0;
    l=0;
    for j=1:10
       if x(i,j)==1
           k=k+1;
           l=j;
       end
    end
    if k==1
         s=sprintf('Test Pattern %d is Recognised as %d',i,l-1);
         disp(s);
    else
         s=sprintf('Test Pattern %d is Not Recognised',i);
         disp(s);
    end
end
