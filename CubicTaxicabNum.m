function ctn = CubicTaxicabNum(N)
% takes an integer N and return the smallest number n >= N such that n is a cubic taxicab number

n = N;

while n >= N
              
    ways = 0;   % number of ways of expressing n as two cube numbers
    
    cubes = zeros(2);   % 2 by 2 matrix to store such cube numbers
    
    for a = 1:1:(n^(1/3))  
               
        b = nthroot(n-a^3, 3);  
                
        if mod(b, 1) == 0 && ~ismember(b, cubes) % checks that b is an integer and is not part of a solution already found
            
            ways = ways + 1;
            cubes(ways, 1:2) = [a, b];  % stores solution a and b
            
            if ways == 2    % checks if two distinct ways of expressing n as two cube numbers have been found
                
                ctn = n;    
                n = -1;      
                break;      
            end
        end
    end
       
    n = n+1;    % increases n for the while loop
    
end

end

        



       

          
        
    
