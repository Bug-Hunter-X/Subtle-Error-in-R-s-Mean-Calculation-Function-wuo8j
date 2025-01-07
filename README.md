# R Mean Calculation Bug

This repository demonstrates a subtle error in an R function designed to calculate the mean of a numeric vector, including handling of empty vectors and NA (Not Available) values. The error lies in how the function handles NA values when calculating the mean. The initial implementation does not correctly adjust the divisor (denominator) after removing NA values.

## Bug Description

The provided R function `calculate_mean` intends to calculate the mean while correctly handling empty vectors and NA values. However, it incorrectly calculates the mean when NA values exist. This is because it uses the length of the original vector instead of the length of the vector after removing NA values.

## Solution

The solution addresses this by calculating the length of the vector *after* removing NA values, thereby obtaining the correct divisor for the mean calculation.
