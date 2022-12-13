clear variables;
close all;

N = 1000;
X = zeros(N,1);
Y = zeros(N,1);
Z = zeros(N,1);

lambda = 0.3;
nu = 0.5;
p = lambda+nu-lambda*nu;

for i=1:N
    X(i) = LoiGeometrique(lambda);
    Y(i) = LoiGeometrique(nu);
    Z(i) = min(X(i),Y(i));
end

figure(1);
subplot(1,3,1);hold on;
histogram(X);
x = 1:max(X);
y = (1-lambda).^(x-1)*lambda;
bar(x,y*N,0.5,'w');

subplot(1,3,2);hold on;
histogram(Y);
x2 = 1:max(Y);
y2 = (1-nu).^(x2-1)*nu;
bar(x2,y2*N,0.5,'w');

subplot(1,3,3);hold on;
histogram(Z);
x3 = 1:max(Z);
y3 = (1-p).^(x3-1)*p;
bar(x3,y3*N,0.5,'w');






