# R Package "combcaculator"

## Description

The `combination_count` function in this package is a utility for calculating the number of combinations when selecting `n` elements from a set of `N` elements. It is particularly useful in combinatorics and probability calculations.

## Installation

Simply use the one line of command `devtools::install("dsuolang/combcaculator")` to install the package.

## Usage

To use the `combination_count` function, follow these steps:
1. Copy the function code and paste it into your R script or RStudio.

2. Call the function with the appropriate values for `N` and `n`. For example example, result will be assigned the value 10 because there are 10 different ways to choose 2 elements from a set of 5.

3. Ensure that your input values are whole numbers (integers) and that they meet the required conditions. The function will return an error message if the inputs are invalid.

4. The function will return the number of combinations, and you can store this result in a variable for further use or analysis.


## Input Validation

The function includes input validation to ensure that the inputs are valid for the calculation. It checks for the following conditions:

1. Both N and n must be whole numbers (integers).

2. n should be greater than or equal to 0 and less than or equal to N.

3. If n is 0 or n is equal to N, the function will return 1 because there is only one way to choose 0 or all elements from a set.

## License

This function is provided under an open-source license.
