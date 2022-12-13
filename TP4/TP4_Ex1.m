clear variables;
close all;

%% Loi empirique
N = 50000; a = -2; b = 3;
X = a + (b-a).*rand(N,1);
histogram(X,'Normalization','pdf');hold on;
disp(['Esperance empirique : ',num2str(mean(X))]);
disp(['Ecart type empirique : ',num2str(std(X))]);

%% Loi théorique
x = a:0.01:b;
y = 1/(b-a);
plot(x,y,'r.');
disp(['Esperance theorique : ',num2str((a+b)/2)]);
disp(['Ecart type theorique : ',num2str(sqrt(((b-a)^2)/12))]);