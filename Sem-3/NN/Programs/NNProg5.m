clear
p=5;
N=50;
X=2*rand(p-1,2*N)-1;
nn=round((2*N-1)*rand(N,1))+1;
X(:,nn)=sin(X(:,nn));
X=[X;ones(1,2*N)];
wht=3*rand(1,p)-1; wht=wht/norm(wht);
wht;
D=(wht*X>=0);
Xv=X(:, N+1:2*N);
Dv=D(:,N+1:2*N);
X=X(:,1:N);
D=D(:,1:N);
%[X;D]
pr=[1,3];
Xp=X(pr,:);
wp=wht([pr p]);
c0=find(D==0); c1=find(D==1);
figure(1),clf reset
plot(Xp(1,c0),Xp(2,c0),'o',Xp(1,c1),Xp(2,c1),'X')
axis(axis),hold on
L=[-1 1];
S=-diag([1 1]./wp(1:2.))*(wp([2,1])'*L+wp(3));
plot([S(1,:) L],[L S(2,:)]), grid, drawnow
%PART 2:Learning
eta=0.5;%The training gain
wh=2*rand(1,p)-1;
wp=wh([pr p]);
S=-diag([1 1]./wp(1:2))*(wp([2,1])'*L +wp(3));
plot([S(1,:) L],[L S(2,:)]),grid on, drawnow
C=50;
E=[C+1,zeros(1,C)];
WW=zeros(C*N,p);
c=1;
cw=0;
while(E(c)>1)||(c==1)
    c=c+1;
    plot([S(1,:) L],[L S(2,:)],'w'),drawnow;
    for n=1:N
        eps=D(n)-((wh*X(:,n))>=0);%eps(n)=d(n)-y(n)
        wh=wh+eta*eps*X(:,n)';
        cw=cw+1;
        WW(cw,:)=wh/norm(wh);
        E(c)=E(c)+abs(eps);
    end;
    wp=wh([pr p]);
    S=-diag([1 1]./wp(1:2))*(wp([2 1])'*L+wp(3));
    plot([S(1,:) L],[L S(2,:)],'g'),drawnow
end;
WW=WW(1:cw,pr);
E=E(2:c+1);