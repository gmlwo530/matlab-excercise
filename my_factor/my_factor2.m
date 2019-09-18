function y = my_factor2(n)
    if n==1
        y = "1";
        return 
    elseif isprime(n)
        y = num2str(n);
        return
    end
    
    a = 2;  
    
    A = zeros(1, n);
    E = zeros(1, n);
    
    b = 1;
    
    while a < n
        if isprime(a)
            tmp = n;
            
            if mod(tmp, a) == 0
                A(1, b) = a;
                E(1, b) = 0;
                while mod(tmp, a) == 0   
                    tmp = tmp / a;
                    E(1, b) = E(1, b) + 1;
                end
                b = b + 1;
            end
        end
        a = a + 1;
    end
    
    y = [];
   
    for x = 1:n
        if A(1,x) > 0
            if x > 1
                y = [y, 'x'] % ""는 string 배열로 출력 되고, ''는 string으로 출력 된다
            end
            y = [y, num2str(A(1,x))]  
            if E(1,x) > 1
                y = [y, '^', num2str(E(1,x))]
            end
        end
    end
    
    return 
end
