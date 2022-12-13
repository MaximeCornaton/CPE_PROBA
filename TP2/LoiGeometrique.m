function n = LoiGeometrique(p)
    n = 1;
    x = LoiBernouilli(p);
    while x == 0
        n = n+1;
        x = LoiBernouilli(p);
    end
end