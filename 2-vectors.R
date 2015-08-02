# DataCamp introduction to R
# Chapter 2 vectors



# Create a vector

# Vectors are one-dimension arrays that can hold numeric data, character data, or logical data. 
# In other words, a vector is a simple tool to store data. 

c()

numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE,FALSE,TRUE)

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <-  c(-24, -50, 100, -350, 10)



# Naming a vector

# In the previous exercise, we created a vector with your winnings over the week. Each vector element refers to a day of the week but it is hard to tell which element belongs to which day. It would be nice if you could show that in the vector itself.
# You can give a name to the elements of a vector with the names()function. Have a look at this example:

names()
  
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

#Assign the names of the day to 'roulette_vector' and 'poker_vector'
names(poker_vector) <- days_vector 
names(roulette_vector) <- days_vector

# Or create "days vector" then assign it to the poker and roulette vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

#Assign the names of the day to 'roulette_vector' and 'poker_vector'
names(poker_vector) <- days_vector 
names(roulette_vector) <- days_vector


# Calculating total winnings

A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of 'A_vector' and 'B_vector'
total_vector <- A_vector + B_vector

# Print 'total_vector' to the console
total_vector

# Poker winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday:
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Find daily winnings
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)
total_daily <- poker_vector + roulette_vector



# Comparing total winnings

# Check if you realized higher total gains in poker than in roulette 
answer <- total_poker > total_roulette


# Vector selection: the good times

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]

# Define a new variable based on a selection
poker_midweek <- poker_vector[c(2,3,4)]

# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[2:5]

# Mean midweek for vector
average_midweek_gain <- mean(poker_vector[1:3])

# Selection vector using names
poker_vector[c("Monday","Tuesday")]


# selection by comparison

# The (logical) comparison operators known to R are:

# <   for less than
# >   for greater than
# >=  for greater than or equal to
# ==  for equal to each other
# !=  not equal to each other

# What days of the week did you make money on poker?
selection_vector <- poker_vector >0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]

# What days of the week did you make money on roulette?
selection_vector <- roulette_vector > 0

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]


