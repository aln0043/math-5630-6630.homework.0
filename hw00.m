% Author: Andrew Nelson / aln0043@auburn.edu
% Date: 2024-09-01
% Assignment Name: hw00

% The following class defines 3 functions for each problem respectively.
% Please follow the instruction inside each function. 

classdef hw00 
    methods (Static)

        function [am] = p1(n)
           
            if n < 0
                error('n must be a non-negative integer')
            elseif n == 0
                am = 0;
            elseif n == 1
                am = 1;
            elseif n == 2
                am = 1;
            else 
                am = p1(n-1) + p1(n-2) + p1(n-3);
            end
            
        end

        function det_A = p2(A)
           
            [~,n] = size(A);

            if size(A,1) ~= size(A,2)
               error('A must be a square matrix')
            elseif size(A,1)==1
               det_A = A;
            elseif size(A,1)==2
                det_A = det(A);
            else 
                 det_A = 0;
                for i=1:n
                    B = A(2:n, [1:i-1, i+1:n]);
                    det_A = det_A + (-1)^(i + 1)*A(1,i)*p2(B);
                end
        
            end
        end

        function p3()
            tic;
            duration = 1.0;
            while toc < duration
        
            end
            elapsedTime = toc;
            fprintf('Elapsed time reported by function %.2f seconds.\n', elapsedTime);
        end
    end
end
