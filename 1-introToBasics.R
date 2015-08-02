# DataCamp introduction to R
# Chapter 1 intro to basics


# Little arithmetics with R 

# An addition
5 + 5 

# A subtraction
5 - 5 

# A multiplication
3 * 5

# A division
(5 + 5)/2 

# Exponentiation
2^5

# Modulo
28 %% 6


# Variable assignment

# Assign the value 42 to 'x'
x <- 42

# Print out the value of the variable 'x'
x

# Assign a value to the variables called 'my_apples' and 'my_oranges'
my_apples <- 5
my_oranges <- 6

# Add these two variables together and print the result
my_fruit <- my_apples + my_oranges

# Print
my_fruit


# Basic data types in R

# Decimals values like 4.5 are called numerics.
# Natural numbers like 4 are called integers. Integers are also numerics.
# Boolean values (TRUE or FALSE) are called logical (TRUE can be abbreviated to T and FALSE to F).
# Text (or string) values are called characters.

# Declare variables of different types
my_numeric <- 42
my_character <- "forty-two"
my_logical <- FALSE 

# Check which type these variables have:
class(my_numeric)
class(my_character)
class(my_logical)


