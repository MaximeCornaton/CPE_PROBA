clear variables;
close all;

%% U
N = 50000;
X = 1+rand(1,N);
Y = 1+rand(1,N);

S = X+Y;
P = X.*Y;
Q = X./Y;

%% Densites
s1 = 2:0.1:3;
s2 = 3:0.1:4;
Ds1 = s1-2;
Ds2 = 4-s2;

p1 = 1:0.1:2;
p2 = 2:0.1:4;
Dp1 = log(p1);
Dp2 = 2*log(2)-log(p2);

q1 = 0.5:0.1:1;
q2 = 1:0.1:2;
Dq1 = 0.5*(4-1./q1.^2);
Dq2 = 0.5*(4./q2.^2-1);

%% Affichage
figure(1);
subplot(2,2,1);hold on;
histogram(X,'Normalization','pdf');ylim([0,1.5]);xlim([1,2]);
text(1,1.2,'Loi uniforme sur [1,2]');

subplot(2,2,2);hold on;
histogram(S,'Normalization','pdf');ylim([0,1.5]);xlim([2,4]);
text(2.1,1.2,'S=X+Y');
plot(s1,Ds1,'b','LineWidth',2);plot(s2,Ds2,'b','LineWidth',2);

subplot(2,2,3);hold on;
histogram(P,'Normalization','pdf');ylim([0,1.5]);xlim([1,4]);
text(1.1,1.25,'P=X+Y');
plot(p1,Dp1,'b','LineWidth',2);plot(p2,Dp2,'b','LineWidth',2);

subplot(2,2,4);hold on;
histogram(Q,'Normalization','pdf');ylim([0,1.5]);xlim([0.5,2]);
text(1.5,0.75,'Q=X/Y');
plot(q1,Dq1,'b','LineWidth',2);plot(q2,Dq2,'b','LineWidth',2);


