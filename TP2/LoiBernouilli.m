function x = LoiBernouilli(p)
    nb = rand();
    if nb < p
        x = 1;
    else
        x = 0;
    end
end