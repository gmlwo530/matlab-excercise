% 배열을 사용하지 않고, my_factor, my_factor_2와 다른 형태의 소인수분해 식을 구하는 함수
% 출력 값 예시) 12 = 2x2x3

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
