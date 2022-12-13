clear variable;
close all;

n_cases = 24;
cx = (0:n_cases);
cy = (0:n_cases);
[CX,CY] = meshgrid(cx,cy);

figure(1);hold on;
mesh(CX,CY,zeros(n_cases+1,n_cases+1));
n_impacts = 537;

M = zeros(n_cases,n_cases);
coord = (n_cases)*rand([2, n_impacts]);

for i = 1:n_impacts
    x = coord(1,i);
    y = coord(2,i);
    M(floor(x)+1,floor(y)+1) = M(floor(x)+1,floor(y)+1)+1 ;
end
M = M(:);   %On a transforme la matrice 24*24 par une 576*1

figure(1);
plot(coord(1,:),coord(2,:),'*r');

figure(2);hold on;
histogram(M);
lambda = n_impacts/(n_cases^2);
xth = 0:max(M);
yth = exp(-lambda)*lambda.^(xth)./factorial(xth);
bar(xth,yth*n_impacts,0.5,'r');

%Calcul et affichage de l'ecart type dans le terminal
disp(['Ecart type empirique : ',num2str(std(M))]);
disp(['Ecart type theorique : ',num2str(sqrt(lambda))]);





