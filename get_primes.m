% 1���� 100���� �Ҽ� ���ؼ� �迭�� �ֱ�
A=zeros(1,100);
a=1;
b=1;
while a < 100
    if isprime(a)
        A(1,b) = a;
        b = b+1;
    end
    a = a+1;
end

A(1:b-1) % 0�� ���Ҹ� ����