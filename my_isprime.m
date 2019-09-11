function y=my_isprime(n)
    if ~isinteger(n) && n <=0
        y=false;
        return
    end
    for i=2:sqrt(n)
        if ~mod(n,i)
            y=false;
            return
        end
    end
    y=true;
end