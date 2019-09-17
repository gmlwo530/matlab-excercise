function y=lcm(a,b)
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
    
    y = (a * b) / gcd(a, b);
    return
end
