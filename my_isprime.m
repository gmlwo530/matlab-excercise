function y=my_isprime(n)
    if n==1
        y=false;
        return
    end
    for i=2:sqrt(n)
        if mod(n,i)==0
            y=false;
            return
        end
    end
    y=true;
end