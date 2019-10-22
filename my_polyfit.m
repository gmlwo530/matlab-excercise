function p = my_polyfit(x,y)
    n = length(x) - 1;
    p = zeros(1, n+1);
    
    for i = 1 : n+1
        p = p + Lagrange_poly(x,n,i)*y(i); % Lagrange_poly만 정의
    end
end
