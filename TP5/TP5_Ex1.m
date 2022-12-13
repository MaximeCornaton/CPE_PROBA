clear variables;
close all;

%% Densite simulee
N = 50000;
U1 = rand(N,1);
U2 = rand(N,1);

X = sqrt(-2*log(U1)).*cos(2*pi*U2);
Y = sqrt(-2*log(U1)).*sin(2*pi*U2);

figure(1);hold on;
histogram(X,'Normalization','pdf');histogram(Y,'Normalization','pdf');

%% Parametres quelconques
moy = 4;
rho = 3;

Xqq = (X*3)+4; 
Yqq = (Y*3)+4; 

EXqq = mean(Xqq);
EYqq = mean(Yqq);

figure(2);hold on;
histogram(Xqq,'Normalization','pdf');
histogram(Yqq,'Normalization','pdf');

%% Densite theorique
x = -10:0.1:20;

f = 1/(rho*sqrt(2*pi)).*exp(-(x-moy).^2/(2*rho^2));
plot(x,f,'b','LineWidth',3);