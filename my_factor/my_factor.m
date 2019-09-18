% 배열을 사용하지 않고 소인수분해 식을 
function y = my_factor(n)
    if n==1
        y = "1";
        return 
    elseif isprime(n)
        y = num2str(n);
        return
    end
    y = "";
    
    a = 2;    
    b = 1;
    
    while a < n
        if isprime(a) && ~mod(n,a)
            if b > 1
                y = y + 'x';
            end
            
            q = n;
            e = 0;
            
            while mod(q, a) == 0   
                q = q / a;
                e = e + 1;
            end
            
            if e > 1
                y = y + num2str(a) + '^' + num2str(e);
            else
                y = y + num2str(a);
            end
            b = b + 1;
        end
        a = a + 1;
    end
   
    return
end
