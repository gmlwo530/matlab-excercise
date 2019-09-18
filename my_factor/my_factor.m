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
        if isprime(a) && ~mod(n,a) % 소수인지 체크하고, 해당 소수로 나뉘어 지는지 체크한다.
            if b > 1 % 첫 번째로 해당 되는 소수를 제외한 숫자 앞에 곱셈 기호를 붙여준다.
                y = y + 'x';
            end
            
            q = n;
            e = 0; % 소수의 승으로 들어갈 변수이다.
            
            while mod(q, a) == 0  % n이 나뉘어지지 않을 때까지 loop를 돌린다
                q = q / a;
                e = e + 1;
            end
            
            if e > 1 % 승이 1일 때 생략 하기 위한 분기이다
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
