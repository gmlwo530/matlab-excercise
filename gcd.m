function y=gcd(a,b)
    if a == inf || b == inf
        y=false;
        return
    elseif ~(isreal(a) && isreal(b))
        y=false;
        return
    elseif a < 1 || b < 1
        y=false;
        return
    elseif ~((a == floor(a)) && (b == floor(b)))
        y=false;
        return      
    end
    
    while b > 0
        r = mod(a,b);
        a = b;
        b = r;
    end
    
    y = a;
    return 
end
