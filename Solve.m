function x = Solve(A, l, b)
    n = length(b);
    x = zeros(n, 1);
    
    % Forward substitution
    for i = 1:n
        sum_val = b(l(i));
        for j = 1:i-1
            sum_val = sum_val - A(l(i), j) * x(j);
        end
        x(i) = sum_val;
    end
    
    % Back substitution
    for i = n:-1:1
        sum_val = x(i);
        for j = i+1:n
            sum_val = sum_val - A(l(i), j) * x(j);
        end
        x(i) = sum_val / A(l(i), i);
    end
end
