function y=myisprime(n)
    if n == inf
        y=false;
        return
    elseif ~isreal(n)
        y=false;
        return
    elseif n <= 2
        y=false;
        return
    elseif ~(n == floor(n))
        y=false;
        return      
    end
    
    for i=3:sqrt(n)
        if ~mod(n,i)
            y=false;
            return
        end
    end
    y=true;
    
end
