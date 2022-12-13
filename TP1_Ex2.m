clear variables;
close all;


%%
n = 100;
ni = 0;
nd = 0;
t=0:0.01:pi/2;
figure(1);hold on
plot(cos(t),sin(t),'black');
for k=1:n
    x=randi(1000)/1000;
    y=randi(1000)/1000;
    
    if sqrt(x^2+y^2) <= 1
        plot(x,y,'b*');
        ni = ni+1;
    else
        plot(x,y,'r*');
        nd = nd+1;
    end
end
pi = 4*ni/n;

fprintf('APPROXIMATION DE PI (METHODE DE MONTE-CARLO)\n');
disp(['Nombre total de fléchettes : ',num2str(n)]);
disp(['Nombre total de fléchettes dans le quadrant : ',num2str(ni)]);
disp(['Valeur approximative de pi : ',num2str(pi)]);


%%
N = 100;
Ni = 0;
Nd = 0;
x = 0:0.01:exp(1);
e = exp(1);

figure(2);hold on
plot(x,log(x)./x.^2,'k');

for k=1:N
    xl=randi(1000).*exp(1)/1000;
    yl=randi(1000).*exp(1)/1000;
    
    if sqrt(xl^2+yl^2) <= 
        plot(xl,figure(2);hold on
yl,'b*');
        Ni = Ni+1;
    else
        plot(xl,yl,'r*');
        Nd = Nd+1;
    end
end
pi = 4*Ni/N;

fprintf('VALEUR APPROXIMATIVE D''UNE INTEGRALE\n');
disp(['Nombre total de fléchettes : ',num2str(n)]);
disp(['Nombre de fléchettes sous la courbe : ',num2str(ni)]);
disp(['Valeur exacte de l''integrale : ',num2str(pi)]);




