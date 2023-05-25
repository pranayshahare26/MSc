clear;
clc;
p=3;
L=12;
m=2;
na=16; N=na^2; nn=0:na-1;
X1=nn*4/na-2;
[X1 X2]=meshgrid(X1);
R=(X1.^2+X2.^2+1e-5);
D1=X1.*exp(-R); D=(D1(:))';
D2=0.25*sin(2*R)./R; D=[D;(D2(:))'];
Y=zeros(size(D));
X=[X1(:)'; X2(:)'; ones(1,N)];
figure(1), clf reset, hold off 
surfc([X1-2 X1+2], [X2 X2], [D1 D2]), title('Two 2-D target functions'), grid on , drawnow
Wh=randn(L-1, p)/p;
Wy=randn(m, L)/L;
C=100;
J=zeros(m, C);
eta=[0.005 0.2];
figure(2), clf reset, hold off
tic
for c=1:C
    H=ones(L-1, N)./(1+exp(-Wh*X));
    Hp=H.*(1-H);
    H=[H; ones(1,N)];
    Y=tanh(Wy*H);
    Yp=1-Y.^2;
    Ey=D-Y;
    JJ=(sum((Ey.*Ey)'))';
    J(:, c)=JJ;
    delY=Ey.*Yp;
    dWy=delY*H';
    Eh=Wy(:,1:L-1)'*delY;
    delH=Eh.*Hp;
    dWh=delH*X';
    Wy=Wy+eta(1)*dWy; Wh=Wh+eta(2)*dWh;
    D1(:)=Y(1, :)'; D2(:)=Y(2, :)';
    surfc([X1-2 X1+2], [X2 X2], [D1 D2]), grid on, title(['epoch:',num2str(c),'.error:',num2str(JJ'),',eta:',num2str(eta)]), drawnow
end
toc
figure(3)
clf reset
plot(J'), grid
title('The approximation error')
xlabel('number of training epochs')