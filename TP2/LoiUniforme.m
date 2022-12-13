function y = LoiUniforme(n)
    y = randi(n,1);
    while y == 0
        y = randi(n,1);
    end
end