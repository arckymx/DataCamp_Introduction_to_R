# DataCamp introduction to R
# Chapter 3 Matrices

# In R, a matrix is a collection of elements of the same data type (numeric, character, or logical) arranged into a fixed number of rows and columns. 
# Since you are only working with rows and columns, a matrix is called two-dimensional.

# Construct a matrix using this symbol
matrix()

# Construction of a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow = T, nrow = 3)

# The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. 
# Here, we use 1:9 which constructs the vector c(1, 2, 3, 4, 5, 6, 7, 8, 9)
# The argument byrow indicates that the matrix is filled by the rows. 
# If we want the vector to be filled by the columns, we just place byrow = FALSE.
# The third argument nrow indicates that the matrix should have three rows.



# Analyzing matrices, you shall

# Box office Star Wars: In Millions!
# The first element: US, the second element: Non-US 
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Add your code below to Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE) 



# Naming a matrix
# Similar to vectors, you can add names for the rows and the columns of a matrix
rownames(my_matrix) <- row_names_vector
colnames(my_matrix) <- col_names_vector

# Naming matrix for the star wars matrix
colnames(star_wars_matrix) <- c("US", "non-US")
rownames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")



# Calculating the worldwide box office
rowSums()

# calculating the star wars global box office
worldwide_vector <- rowSums(star_wars_matrix)
names(worldwide_vector) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")



# Adding a column for the Worldwide box office
cbind()

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind (star_wars_matrix, worldwide_vector)

  # add the prequel trilogies matrix
  the_phantom_menace <- c(474.5, 552.5)
  attack_of_the_clones <- c(310.7, 338.7)
  revenge_of_the_sith <- c(380.3, 468.5)    
  star_wars_matrix2 <- matrix(c(the_phantom_menace, attack_of_the_clones, revenge_of_the_sith), nrow = 3, byrow = TRUE)
  colnames(star_wars_matrix2) <- c("US", "non-US")
  rownames(star_wars_matrix2) <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")

# Adding a row
rbind()

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)



# The total box office revenue for the entire saga
# Using colSum
colSum()

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)

# Adding the total revenue vetor to the matrix
all_wars_matrix2 <- rbind(all_wars_matrix, total_revenue_vector)



# Selection of matrix elements

# Similar to vectors, you can use the square brackets [ ] to select one or multiple elements from a matrix.
# Whereas vectors have one dimension, matrices have two dimensions. 
# You should therefore use a comma to separate that what to select from the rows from that what you want to select from the columns. 
# For example:

my_matrix[1,2] # selects from the first row the second element.
my_matrix[1:3,2:4] # selects rows 1,2,3 and columns 2,3,4.

# If you want to select all elements of a row or a column, no number is needed before or after the comma, respectively:

my_matrix[,1] # selects all elements of the first column.
my_matrix[1,] # selects all elements of the first row.

# Average non-US revenue per movie
non_us_all  <-  mean(star_wars_matrix[,2])

# Average non-US revenue of first two movies
non_us_some <- mean(star_wars_matrix[1:2,2])



# A little arithmetic with matrices

# Similar to what you have learned with vectors, the standard operators like +, -, /, *, etc. work in an element-wise way on matrices in R.
# For example: 2 * my_matrix multiplies each element of my_matrix by two. 
# Again, R recycles the value 2 behind the scenes, building a matrix containing only 2s with the same dimensions as my_matrix. 
# Then, R carries out the element-wise operation.

# Assuming ticket price is $5, how many visitors for the movies?
visitors <- star_wars_matrix/5


# After looking at the result of the previous exercise, big boss Lucas points out that the ticket prices went up over time with one dollar per movie.
# He asks to redo the analysis based on the prices you can find in ticket_prices_matrix

  # Reconfiguring ticket_prices_matrix
  movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
  col_titles <- c("US","non-US")
  ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles)) 

  # Estimated number of visitors
  visitors <- star_wars_matrix/ticket_prices_matrix

  # Average number of US visitors
  average_us_visitors <- mean(visitors[,1])
  
  # Average number of non-US visitors
  average_non_us_visitors <- mean(visitors[,2])