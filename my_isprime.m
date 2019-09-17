function y=my_isprime(n)
    if n == inf
        y=false;
        return
    elseif ~isreal(n)
        y=false;
        return
    elseif n <= 1
        y=false;
        return
    elseif ~(n == floor(n))
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
