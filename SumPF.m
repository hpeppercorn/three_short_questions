function SumPF
% SUMPF   find an approximation of the sum of reciprocal squares with prime factors, based on truncations at most 100000 terms

smallesterr = 1;    % sets an initial value for the smallest truncation error

for N = 10.^[0:1:5]     
   
    format long
    
    sum = 0;    % sets initial value of the sum

    for k = 1:1:N   % loops through all positive integers up to N in order to compute the sum
    
        if k == 1
            sum = sum + 1;  % accounts for the convention, factor(1) = 0 [MATLAB gives factor(1) = 1]
        else
            sum = sum + ((-1)^(length(factor(k)))/(k^2));   % for all other values of k, adds the term to the sum
        end   
    
    end
    
    err = 1/((N+1)^2);  % calculates the truncation error for each sum [(-1)^(length(factor(k)) not necessary as absolute value needed]
    
    if err <= smallesterr   % ensures the approximation is the sum with the smallest error
    end
        smallesterr = err;
        approx = sum;   
    
end

approx
err = smallesterr

end


