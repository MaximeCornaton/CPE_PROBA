clear variables;
close all;

%% Uniforme
N = 50000;
a = 2;
b = 3;

X = a + (b-a)*rand(1,N);
Y = a + (b-a)*rand(1,N);
Z = min(X,Y);

%% Geometrique
lambda = 2;
x1 = rand(1,N);
y1 = rand(1,N);

X1 = -log(1-x1)/lambda;
Y1 = -log(1-y1)/lambda;

Z1 = min(X1,Y1);

%% Densite uniforme
z = 0:0.1:max(Z);
fX_z = 1/(b-a);
FY_z = (z-a)/(b-a);
fY_z = fX_z;
FX_z = FY_z;

fZ = fX_z*(1-FY_z)+fY_z*(1-FX_z);

%% Densite geometrique
z1 = 0:0.1:max(Z1);
fX_z1 = lambda*exp(-lambda.*z1);
FY_z1 = 1 - exp(-lambda.*z1);
fY_z1 = fX_z1;
FX_z1 = FY_z1;

fZ1 = fX_z1.*(1-FY_z1)+fY_z1.*(1-FX_z1);

%% Affichage
figure(1);hold on;
histogram(Z,'Normalization','pdf');
plot(z,fZ,'b','LineWidth',2);xlim([a,b]);

figure(2);hold on;
histogram(Z1,'Normalization','pdf');
plot(z1,fZ1,'b','LineWidth',2);xlim([0,1.5]);

