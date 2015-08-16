# DataCamp introduction to R
# Chapter 5 Data Frames




# What's a data frame?
# A data frame has the variables of a data set as columns and the observations as rows. 
# This will be a familiar concept for those coming from different statistical software packages such as SAS or SPSS.




# Quick, have a look at your data set

# Working with large data sets is not uncommon in data analysis. 
# When you work with (extremely) large data sets and data frames, your first task as a data analyst is to develop a clear understanding of its structure and main elements. 
# Therefore, it is often useful to show only a small part of the entire data set.

head() # enables you to show the first observations of a data frame (or any R object you pass to it). 
tail() # prints out the last observations in your data set.

# Have a quick look at your data
head(mtcars)




# Have a look at the structure
str() # shows you the structure of your data set. 

# Investigate the structure of the mtcars data set to get started!
str(mtcars)




# Creating a data frame

# You  can construct a data frame with the function:
data.frame()

# Use the function data.frame() to construct a data frame. Call this variable planets_df.
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883); 
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);

# Create the data frame:
planets_df  <- data.frame(planets, type, diameter, rotation, rings)




# Check the structure of 'planets_df'
str(planets_df)




# Selection of data frame elements
# Similar to vectors and matrices, you select elements from a data frame with the help of square brackets [ ]. 
# By using a comma, you can indicate what to select from the rows and the columns respectively. For example:


my_data_frame[1,2]     # Selects from the first row in my_data_frame the second element.
my_data_frame[1:3,2:4] # Selects rows 1,2,3 and columns 2,3,4 in my_data_frame.


# Create the data frame closest_planets_df that contains all data on the first three planets.
# All data from the first three planets
closest_planets_df <- planets_df[1:3,]


# Create the data frame furthest_planets_df that contains all data on the last three planets.
# All data from the last three planets
furthest_planets_df <- planets_df[6:8,]


# Have a look:
closest_planets_df
furthest_planets_df




# Instead of using numerics to select elements of a data frame, you can also use the variable names to select columns of a data frame.
# Maybe you want to select only the first 3 elements of the variable 'type'. One way to do this is: 
planets_df[1:3,1] 


# A possible disadvantage of this approach is that you have to know (or look up) the position of the variable 'type', 
# which gets hard if you have a lot of variables. 
# It is often easier to just make use of the variable name, e.g.: 
planets_df[1:3,"type"]


# Select for the last six rows only the diameter and assign this selection to furthest_planets_diameter.
# Do selection on both rows and columns
furthest_planets_diameter <- planets_df[3:8,3]

or 

furthest_planets_diameter <- planets_df[3:8,"diameter"]




# Only planets with rings
# You will often want to select an entire column, namely one specific variable from a data frame. 
# If you want to select all elements of the variable rings, both planets_df[,5] and planets_df[,"rings"] do the trick.

# However, there is a short-cut. Use the $-sign to tell R that it only has to look up all the elements of the variable behind the sign:
data_frame_name$variable_name

# Make use of the $-sign to create the variable rings_vector that contains all elements of the rings variable in the planets_df data frame.

# Create the rings_vector
rings_vector <- planets_df$rings




# Assign to planets_with_rings_df all data in the planets_dfdata set for the planets with rings,
# that is, where rings_vector is TRUE.
rings_vector <- planets_df$rings
planets_with_rings_df <- planets_df[rings_vector,]




# Only planets with rings but shorter

# Now, let us move up one level and use the function subset(). 
# You should see the subset() function as a short-cut to do exactly the same as what you did in the previous exercises.
subset(my_data_frame, subset = some_condition)

# The first argument of subset() specifies the data set for which you want a subset. 
# By adding the second argument, you give R the necessary information and conditions to select the correct subset.
# For example:
subset(planets_df, subset = rings == TRUE)


# Create a dataframe small_planets_df with planets that have a diameter smaller than the Earth
# (so smaller than 1, since diameter is a relative measure of the planet's diameter w.r.t that of planet Earth).


# Planets that are smaller than planet Earth:
small_planets_df  <- subset(planets_df, subset = planets_df$diameter < 1)
small_planets_df




# sorting

# In data analysis you will sort your data according to a certain variable in the data set. 
# In R, this is done with the help of the function 
order()

order() # is a function that gives you the ranked position of each element when it is applied on a variable, such as a vector for example. 

# Let us look at the vector a 
a <- c(100,9,101)

order(a)    # returns the vector {2, 1, 3} since 100 is the second largest element of the vector, 9 is the smallest element and 101 is the largest element.

a[order(a)] # will thus give you the ordered vector {9, 100, 101}, since it first picks the second element of a, then the first and then the last. 


# Just play around with the order function in the console to see how it works!
a <- c(1,80,100,9,101,102,103)
order(a)
a[order(a)]





# Sorting your data frame

# Alright, now that you understand the order() function, let us do something useful with it. 
# You would like to rearrange your data frame such that it starts with the largest planet and ends with the smallest one. 
# A sort on the diameter column, as you will.


# Assign to the variable positions the desired ordering for the new data frame that you will create in the next step. 
# You can use the order() function for that, with the additional argument decreasing = TRUE.
# What is the correct ordering based on the planets_df$diameter variable?
positions <- order(planets_df$diameter, decreasing = T)

# Now create the data frame largest_first_df:
# Which contains the same information as planets_df, but with the planets in decreasing order of magnitude.
# Create new "ordered" data frame:
largest_first_df <- planets_df[positions,]



