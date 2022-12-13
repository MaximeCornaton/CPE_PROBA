clear variables;
close all;

N = 10000;
n = 8;
X = zeros(1,n); %Variable aleatoire

for k = 1:N
    boules = randi(n,1,2);
    while boules(1) == boules(2)
        boules = randi(n,1,2);
    end
    X(k) = min(boules);
end

%Histogramme de la loi empirique
figure(1);hold on
h = histogram(X);


k = 1:n-1;
Pk = 2*(n-k)/n/(n-1);

%Histogramme de la loi theorique
bar(k,Pk*N,'w');


%Calcul et affichage de l'esperance dans le terminal
disp(['Esperance empirique : ',num2str(mean(X))]);
disp(['Esperance theorique : ',num2str((n+1)/3)]);

%Calcul et affichage de l'ecart type dans le terminal
disp(['Ecart type empirique : ',num2str(std(X))]);
disp(['Ecart type theorique : ',num2str(sqrt((n^2-n-2)/18))]);