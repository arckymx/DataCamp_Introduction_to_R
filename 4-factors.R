# DataCamp introduction to R
# Chapter 4 Factors

# What's a factor and why would you use it?

# The term factor refers to a statistical data type used to store categorical variables. 
# The difference between a categorical variable and a continuous variable is that a categorical variable can belong to a limited number of categories. 
# A continuous variable, on the other hand, can correspond to an infinite number of values.

# A good example of a categorical variable is the variable 'Gender'. 
# A human individual can either be "Male" or "Female", making abstraction of intersexes. 
# So here "Male" and "Female" are, in a simplified sense, the two values of the categorical variable "Gender", 
# and every observation can be assigned to either the value "Male" of "Female".



# To create factors in R, you make use of the function 
factor()

gender_vector <- c("Male", "Female", "Female", "Male", "Male")
factor_gender_vector <- factor(gender_vector)


# There are two types of categorical variables: a nominal categorical variable and an ordinal categorical variable.

animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
temperature_vector <- c("High", "Low", "High","Low", "Medium")

factor_animals_vector <- factor(animals_vector)
factor_animals_vector
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector



# Factor levels
levels()

# levels(factor_vector) <- c("name1","name2",...)

survey_vector <- c("M", "F", "F", "M", "M")

# Encode survey_vector as a factor
factor_survey_vector <- factor(survey_vector)

# Specify the levels of 'factor_survey_vector'
levels(factor_survey_vector) <- c("Female", "Male") 



# Summarizing a factor
summary()


# Type your code here for 'survey_vector'
summary(survey_vector)

# Type your code here for 'factor_survey_vector'
summary(factor_survey_vector)



# Battle of the sexes

# In factor_survey_vector we have a factor with two levels: Male and Female. 
# But how does R value these relatively to each other? 
# In other words, who does R think is better, males or females?

# Male
factor_survey_vector[1] 
# Female
factor_survey_vector[2] 
# Battle of the sexes: Male 'larger' than female?
factor_survey_vector[1] > factor_survey_vector[2] 

# [1] NA 
# Warning message:'>' Warning message:not meaningful for factors



# Ordered factors

# Create 'speed_vector'
speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast")

factor_speed_vector <-  factor(speed_vector, ordered=T, levels = c("Slow", "Fast", "Ultra-fast"))

compare_them <- factor_speed_vector

compare_them <- factor_speed_vector[2] > factor_speed_vector[5]
