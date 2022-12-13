clear variables;
close all;

%% Loi empirique
N = 100000;
Y = rand(N,1); %Loi uniforme sur [0,1]
X = exp(Y*log(6))-4; %VA
figure(1);
histogram(X,'Normalization','pdf');hold on;
disp(['Esperance empirique : ',num2str(mean(X))]);
disp(['Ecart type empirique : ',num2str(std(X))]);

%% Loi théorique
a = -3; b = 2;
x = a:5/N:b;
y = (1/log(6))./(x+4);
plot(x,y,'r.');
Eth = 5/log(6)-4;
disp(['Esperance theorique : ',num2str(Eth)]);
Etth = sqrt(((-45/(2*log(6)))+16)-(Eth^2));
disp(['Ecart type theorique : ',num2str(Etth)]);

%% Partie 2
Y1 = 0.5*rand(N,1); % VA uniforme sur [0,1/2]
Y2 = 0.5 + 0.5*rand(N,1); % VA uniforme sur [1/2,1]
X1 = sqrt(8*Y1); % simulation de la VA X sur [0,2[
X2 = -sqrt(-8*Y2 + 8)+4 ; % simulation de la VA X sur [2,4[
X = [X1,X2]; % concaténation des VA X1 et X2
figure(2);
histogram(X,'Normalization','pdf'); % histogramme de X
% mu_emp = % moyenne empirique
% sigma_emp = % écart type empirique
% mu_th = % moyenne théorique
% sigma_th = % écart type théorique
% fprintf('Moyenne empirique : %f,\t Moyenne théorique : %f\n',mu_emp,mu_emp);
% fprintf('Ecart type empirique : %f,\t Ecart type théorique :
% %f\n',sigma_emp,sigma_th);