function y = my_factor3(n)
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
    prev = 0;
    
    while a < n
        if isprime(a)
            tmp = n;
            
            while mod(tmp, a) == 0   
                tmp = tmp / a;
                
                if prev == a
                    y = y + "x";
                   y = y + num2str(a);
                else
                    if b > 1
                         y = y + "x";
                    end
                   y = y + num2str(a);
                end
                prev = a;
               
                b = b + 1;
            end
        end
        a = a + 1;
    end
   
    return
end
