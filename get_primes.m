% 1���� n���� �Ҽ� ���ؼ� �迭�� �ֱ�
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
    y = A(1:b-1); % 0�� ���Ҹ� ����
end