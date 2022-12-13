clear variables;
close all;

%% Partie a
k = [3 4 5 6 7 8];
Pk = [4/20 1/20 3/20 7/20 2/20 3/20];
E = sum(k.*Pk); %Produit scalaire
V = sum(k.^2.*Pk)-E^2;
Ecart = sqrt(V);

disp(['Esperance : ',num2str(E)]);
disp(['Ecart type : ',num2str(Ecart)]);

figure(1);
subplot(3,1,1);
bar(k,Pk);

%% Partie b
Conv = conv(Pk,Pk);

subplot(3,1,2);
bar((6:16),Conv);

%% Partie c
Conv2 = Pk;
n = 10;
for i = 1:n-1
    Conv2 = conv(Conv2,Pk);
end
subplot(3,1,3);
bar((n*3:n*8),Conv2);

%% Partie d
E2 = n*E;
Ecart2 = Ecart*sqrt(n);

disp(['Esperance : ',num2str(E2)]);
disp(['Ecart type : ',num2str(Ecart2)]);

%% Partie e





