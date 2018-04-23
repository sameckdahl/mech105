function [I] = Simpson(x, y)
%This function is designed to calculate a numerical approximation of the integral 
%of a data set provided as a variable in matlab. An even number of
%intervals will be calculated using Simpson's 1/3 rule. If there is an odd
%number of intervals, the trapazoidal rule will be used to calculate the
%last interval.
%Inputs:
%   x = independent data points given
%   y = dependent data points given
%
%Outputs:
%   I = numerically approximated integral value
%
%
%Samuel Eckdahl
%20180409

                %Assigns 'n' and 'm' values according to 'x' and 'y' dimensions.
n = length(x);
m = length(y);

                %Checks for square set of data points given.
if n ~= m 
    error('Input dimensions must be equal')
end

j = diff(x);

                %Ensures linear spacing of 'x' values.
if min(j) ~= max(j) 
    error('Intervals must be evenly spaced')
end

                %Analyzes interval values to find if number of intervals is odd or even.
intervaleven = mod(n, 2)

if intervaleven == 0
    warning('Trapazoidal rule will be used: Odd number of intervals')
    int = n-1;
else
    
                %Nothing changes if number of intervals is even.
    int = n;
end

                %Finding step size for aproximate integral value calculation.
h = (max(x) - min(x)) / int;

                %Calculates Simpson's 1/3 Rule.
I = sum(y(1:2:l - 2) + 4*y(2:2:int - 1) + y(3:2:int))*h/3;

                %Calculates remaining Trapazoidal Rule and adds value to previously
                %calculated Simpson's 1/3 Rule.
if intervaleven == 0
    I = I + ((y(n - 1) + y(n))/2)*h;
end
end

