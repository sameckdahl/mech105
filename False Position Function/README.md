# FalsePosition.m Function Overview
The function FalsePosition.m will calculate the root of the user inputted function using the false position meathod.

## The inputs for the function consist of the following:
       
        func:    The function of which the roots are to be found
        
        xi:      The left bound guess for a root
        
        xf:      The right bound guess for a root
        
        ed:      The desired relative error produced by the False Position's
                 approximation
        
        maxiter: The number of interations that will be run

## The outputs for the function consist of the following:
        
        root:    The approximate x-value of the root.
        
        ea:      The approximate relative error calculated by the program
        
        iter:    The number of iterations run by the program
        
        fx:      The function evaluated at the root approximation    
