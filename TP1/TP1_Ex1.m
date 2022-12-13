clear variables;
close all;

n = 1000;
LancerDeSixFaces = @(n)(randi(6,n,1));

X = LancerDeSixFaces(n);

% histogramme des effectifs de X 
figure(1);
hX=histogram(X);

cpt = 0;
CPT = 0;
N = 1000;
for k=1:N
    X = LancerDeSixFaces(4); %On lance 4 des
    if ismember(6,X)
        cpt = cpt + 1;
    end
    
    X1 = LancerDeSixFaces(24);
    X2 = LancerDeSixFaces(24);
    if ismember(6,X1)
        if ismember(6,X2)
            CPT = CPT + 1;
        end
    end
end
%Joueur A
disp(['prob_empA : ',num2str(cpt/N)]);
disp(['prob_thA : ',num2str(1-((5/6)^4))]);

%Joueur B
disp(['prob_empB : ',num2str(CPT/(2*N))]);
disp(['prob_thB : ',num2str(1-(35/36)^24)]);







