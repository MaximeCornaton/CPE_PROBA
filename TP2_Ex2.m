clear variables;
close all;

n = 10;
p = 0.28;
Nrep = 10000;
Y = zeros(1,n);
X = zeros(1,n);
Nb = zeros(1,n);
N = zeros(1,n);

for k = 1:Nrep
    Y(k) = LoiUniforme(n);
    X(k) = LoiBernouilli(p);
    Nb(k) = LoiBinomiale(n,p);
    N(k) = LoiGeometrique(p);
end

figure(1);
%Loi uniforme
subplot(2,2,1);hold on;
title('Loi Uniforme');
hY = histogram(Y);

k1 = 1:n;
Pk1 = ones(n,1)./n;

%Histogramme de la loi theorique
bar(k1,Pk1,'w');

%Loi de Bernouilli
subplot(2,2,2);hold on;
title('Loi de Bernouilli');
hX = histogram(X);


%Loi Binomiale
subplot(2,2,3);hold on;
title('Loi Binomiale');
hNb = histogram(Nb);


%Loi Geometrique
subplot(2,2,4);hold on;
title('Loi Geometrique');
hN = histogram(N);



