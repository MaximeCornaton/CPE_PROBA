clear variables;
close all;

%% 
N = 50000;
FX = rand(1,N);
FY = rand(1,N);

lambda1 = 1;
lambda2 = 2;

X = -log(1-FX)/lambda1;
Y = -log(1-FY)/lambda2;

U = X+2*Y;

%% Densite
u = 0:0.1:10;
fU = u.*exp(-u);

%% Esperances
Eemp = mean(U);
Eth = 2;
Vemp = std(U)^2;
Vth = 2;

%% Affichage
figure(1);hold on;
histogram(U,'Normalization','pdf');
plot(u,fU,'b','LineWidth',2);

text(6,0.3,sprintf('N = %f', N));
text(6,0.25,sprintf('E(U)emp = %f', Eemp));
text(6,0.22,sprintf('E(U)th = %f', Eth));
text(6,0.17,sprintf('V(U)emp = %f', Vemp));
text(6,0.14,sprintf('V(U)th = %f', Vth));
