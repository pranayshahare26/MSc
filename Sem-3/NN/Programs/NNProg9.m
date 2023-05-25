clear;
clc;
f1=2;
ts=1/(40*f1);
N=100;
t1=(0:N)*4*ts;
t2=(0:2*N)*ts+4*(N+1)*ts;
t=[t1 t2];
N=size(t,2);
xt=[sin(2*pi*f1*t1) sin(2*pi*2*f1*t2)];
plot(t,xt),grid,title('Signal to be predicted')
p=4;
X=convmtx(xt,p);X=X(:,1:N);
d=xt;
y=zeros(size(d));
eps=zeros(size(d));
eta=0.4;
w=rand(1,p);
for n=1:N
    y(n)=w*X(:,n);
    eps(n)=d(n)-y(n);
    w=w+eta*eps(n)*X(:,n)';
end
figure(1)
plot(t,d,'b',t,y,'-r'),grid,...
title('target and predicted signals'),xlabel('time[sec]')
figure(2)
plot(t,eps),grid,title('prediction error'),xlabel('time[sec]')