
clear;
clc;
f=4e3;
fm=300;
fa=200;
ts=2e-5;
N=400;
t=(0:N-1)*ts;
ut=(1+0.2*sin(2*pi*fa*t)).*sin(2*pi*f*(1+0.2*cos(2*pi*fm*t)).*t);
xt=sawtooth(2*pi*1e3*t,0.7);
b=[1 -0.6 -0.3];
vt=filter(b,1,xt);
dt=ut+vt;
figure(1)
subplot(2,1,1)
plot(1e3*t, ut, 1e3*t, dt),grid,title('Input u(t) and noisy input signal d(t)'),xlabel('time -- msec')
subplot(2,1,2)
plot(1e3*t, xt, 1e3*t, vt),grid,title('Noise x(t) and coloured noise v(t)'),xlabel('time --- msec')
p=4;
X=convmtx(xt,p); X=X(:,1:N);
y=zeros(1,N);
eps=zeros(1,N);
eta=0.05;
w=2*(rand(1,p)-0.5);
for c=1:4
    for n=1:N
        y(n)=w*X(:,n);
        eps(n)=dt(n)-y(n);
        w=w+eta*eps(n)*X(:,n)';
    end
    eta=0.8*eta;
end
    figure(2)
    subplot(2,1,1)
    plot(1e3*t,ut,1e3*t,eps),grid,...
        title('Input signal u(t) and estimated signal uh(t)'),...
        xlabel('time--msec')
    subplot(2,1,2)
    plot(1e3*t(p:N),ut(p:N)-eps(p:N)),grid,...
        title('estimation error'),xlabel('time --[msec]')