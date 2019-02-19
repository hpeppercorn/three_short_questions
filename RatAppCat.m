function [p, q] = RatAppCat(N)
% RATAPPCAT Finds the best rational approximation p/q of the Catalan's constant, among all pairs of (p,q) such that p+q <=N

G = 0.915965594177219;
app = N;    % sets an initial value for the best approximation

for t = 1:1:N-1 
    
    s = 1;
    
    while s <= N-t 
    
        rat = t/s;  % finds the ratio of the two positive integers 
        
        close = abs(G - rat);   % evaluates how close to G this ratio is
    
        if close < abs(G - app) % if the ratio is less than the current best approximation, reassigns the value of the best approximation
           
            p = t;              
            q = s;              
            app = p/q;
        end
    
        s = s + 1;  % increases s for the while loop
    
    end
    
end

end


