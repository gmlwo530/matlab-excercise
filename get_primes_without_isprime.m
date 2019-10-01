function y=get_primes_without_isprime(n)
    A=zeros(1,n);
    a=2;
    b=1;
    while a < n
        myIsPrime = 1;
        for i=2:sqrt(a)
            if ~mod(a,i)
              myIsPrime=0;
            end
        end
        if myIsPrime
            A(1,b) = a;
            b = b+1;
        end
        a = a+1;
    end
    y = A(1:b-1); 
end
