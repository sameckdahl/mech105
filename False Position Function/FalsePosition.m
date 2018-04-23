function[root , fx , ea , iter] = FalsePosition(func , xi , xf , ed , maxiter , varargin)
%The function FalsePosition.m will calculate the root of the user inputted function using the false position meathod.
%The inputs for the function consist of the following:
        %func:    The function of which the roots are to be found
        %xi:      The left bound guess for a root
        %xf:      The right bound guess for a root
        %ed:      The desired relative error produced by the False Position's
        %         approximation
        %maxiter: The number of interations that will be run
%The outputs for the function consist of the following:
        %root:    The approximate x-value of the root.
        %ea:      The approximate relative error calculated by the program
        %iter:    The number of iterations run by the program
        %fx:      The function evaluated at the root approximation         
        
test = func(xi, varargin{:}) *func(xf, varargin{:});

if test > 0                           %Finds the interval in which the root exists
    error('Error -> No sign change')
    
end

if nargin < 4 || isempty(ed)          %Set bounds for error and iterations based on user input
    
    ed = 0.0001;
end

iter = 0;
xr = xi;
ea = 100;

while (1)
    xrold = xr;
    num = double(func(xf))*(xi-xf);
    den = double(func(xi))-double(func(xf)); %Calc. False Position
    xr = xf-((num)/(den));                   %Tell program to reassign value of iter for every pass
    iter = iter + 1;
    
    if xr ~= 0
        ea = abs((xrold-xr)/(xr))*100; %Calc. Error
    end
    test = func(xi , varargin{:})*func(xr , varargin{:});
    if test < 0
        xf = xr;
    elseif test > 0
        xi = xr;
    else
        ea = 0;
    end
    if ea <= ed ||iter >= maxiter
        break
    end
end
    root = xr;
    fx = func(xr, varargin{:});              %Program Outputs.
end