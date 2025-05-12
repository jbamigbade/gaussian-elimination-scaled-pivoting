function [A, l] = Gauss(A)
    % Get the size of the matrix
    [n, ~] = size(A);
    
    % Initialize index vector l
    l = 1:n;
    
    % Compute the scale factors
    s = max(abs(A), [], 2);
    
    % Perform Gaussian elimination with scaled partial pivoting
    for k = 1:n-1
        % Select the pivot row using scaled partial pivoting
        [~, maxIndex] = max(abs(A(l(k:n), k)) ./ s(l(k:n)));
        maxIndex = maxIndex + (k - 1);
        
        % Swap rows in the index vector
        if maxIndex ~= k
            temp = l(k);
            l(k) = l(maxIndex);
            l(maxIndex) = temp;
        end
        
        % Eliminate below the pivot
        for i = k+1:n
            m = A(l(i), k) / A(l(k), k);
            A(l(i), k) = m;  % Store multiplier in the lower triangle
            A(l(i), k+1:n) = A(l(i), k+1:n) - m * A(l(k), k+1:n);
        end
    end
end
