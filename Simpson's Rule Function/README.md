# Simpson.m Function Overview

This function is designed to calculate a numerical approximation of the integral 
of a data set provided as a variable in matlab. An even number of
intervals will be calculated using Simpson's 1/3 rule. If there is an odd
number of intervals, the trapazoidal rule will be used to calculate the
last interval.

## Inputs:
   
   x = independent data points given
   
   y = dependent data points given

## Outputs:
   
   I = numerically approximated integral value
