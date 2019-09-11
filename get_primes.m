% 1에서 n까지 소수 구해서 배열에 넣기
function y=get_primes(n)
    A=zeros(1,n);
    a=1;
    b=1;
    while a < n
        if isprime(a)
            A(1,b) = a;
            b = b+1;
        end
        a = a+1;
    end
    y = A(1:b-1); % 0인 원소를 제거
end