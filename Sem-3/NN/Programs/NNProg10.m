clear;
clc;
f=0.8;
ts=0.005;
N1=800;
N2=400;
N=N1+N2;
t1=(0:N1-1)*ts;
t2=(N1:N-1)*ts;
t=[t1 t2];
xt=sin(3*t.*sin(2*pi*f*t));
p=3;
b1=[1 -0.6 0.4];
b2=[0.9 -0.5 0.7];
[d1,stt]=filter(b1,1,xt(1:N1));
d2=filter(b2,1,xt(N1+1:N),stt);
dd=[d1 d2];
x=convmtx(xt,p);
x=x(:,1:N);
d=[b1*x(:,1:N1) b2*x(:,N1+1:N)];
y=zeros(size(d));
eps=zeros(size(d));
eta=0.2;
w=2*(rand(1,p) -0.5);
for n=1:N
    y(n)=w*x(:,n);
    eps(n)=d(n)-y(n);
    w=w+eta*eps(n)*x(:,n)';
    if n==N1-1,w1=w;
    end
end
figure(1)
subplot(2,1,1)
plot(t,xt),grid,title('Input Signal,x(t)'),xlabel('time sec')
subplot(2,1,2)
plot(t,d,'b',t,y,'-r'),grid,....
    title('target and predicted signals'),....
    Xlabel('time[sec]')
figure(2)
plot(t,eps),grid,title(['prediction error for eta=',num2str(eta)]),....
    xlabel('time[sec]')
[b1; w1]
[b2; w]