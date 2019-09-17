function A=divisor(n)
    A = zeros(1,n);
    b = 1;
    
    for a=1:n
        if ~mod(n,a)
            A(1,b) = a;
            b = b+1;
        end
    end
    A=A(1:b-1);
    return;
end
