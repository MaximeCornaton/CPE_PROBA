function nbSucces = LoiBinomiale(n,p)
    nbSucces = 0;
    for i = 1:n
        x = LoiBernouilli(p);
        if x == 1
            nbSucces = nbSucces + 1;
        end
    end
end