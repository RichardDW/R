# show objects in current workspace
ls()

# Analyze the shape of a quantitative variable
install.packages("moments")

library(moments)

a <- 1
b <- c(1,2,3)
# create a list c
c <- list(a,b)
c[[1]]
c[[2]][1]

x <- c("a","b","c","d")

for(i in 1:4) {
  print(x[i])
}
for(i in seq_along(x)) {
  print(x[i])
}

for(letter in x) {
  print (letter)
}

# create a function
myfunction <- function() {
	x <- rnorm(100)
	mean(x)
}

second <- function(x) {
  x + rnorm(length(x))
}

# create a matrix
m <-matrix(1:6,byrow = TRUE,nrow = 2)
# add rows
rbind(m, 7:9)
# add columns
cbind(m, c(10,11))

# set row names
rownames(m) <- c("row1", "row2")
# set column names
colnames(m) <- c("col1","col2","col3")

# Row and column names can be set at creation of the matrix
m <- matrix(1:6,byrow = TRUE,nrow = 2,
            dimnames = list(c("row1","row2"),
                            c("col1","col2","col3")))

mychar <- matrix(LETTERS[1:6], nrow = 4, ncol = 3)


# create 2 matrices
# create the first star wars matrix
# Star Wars box office in millions (!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)

# Name the columns and rows of star_wars_matrix
rownames(star_wars_matrix) <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
colnames(star_wars_matrix) <- c("US","non-US")

# Calculate the worldwide box office: worldwide_vector
worldwide_vector <- rowSums(star_wars_matrix)
# Bind the new variable worldwide_vector as a column to star_wars_matrix: star_wars_ext
star_wars_ext <- cbind(star_wars_matrix,worldwide_vector)

# create 2nd star wars matrix
phantom_menace <- c(474.5,552.5)
attack_clones <- c(310.7,338.7)
revenge_sith <- c(380.3,468.5)
star_wars_matrix2 <- rbind(phantom_menace, attack_clones, revenge_sith)
# Name the columns and rows of star_wars_matrix
rownames(star_wars_matrix2) <- c("The Phantom Menace","Attack of the Clones","Revenge of the Sith")
colnames(star_wars_matrix2) <- c("US","non-US")

# combine 2 matrices
all_wars_matrix <- rbind(star_wars_matrix,star_wars_matrix2)


# Total revenue for US and non-US: total_revenue_vector
total_revenue_vector <- colSums(all_wars_matrix)

# star_wars_matrix is already defined in your workspace

# Select all US box office revenue
star_wars_matrix[,1]

# Select revenue for "A New Hope"
star_wars_matrix[1,]

# Average non-US revenue per movie: non_us_all
non_us_all <- (sum(star_wars_matrix[,2])) / 3

# Average non-US revenue of first two movies: non_us_some
non_us_some <- (sum(star_wars_matrix[1:2,2])) /2

# All figures for "A New Hope" and "Return of the Jedi"
star_wars_matrix[c(1,3), c(1,2)]

# Select the US revenues for "A New Hope" and "The Empire Strikes Back"
star_wars_matrix[c("A New Hope","The Empire Strikes Back"),c("US")]

# Select the last two rows and both columns
star_wars_matrix[c(FALSE,TRUE,TRUE),c(TRUE,TRUE)]

# Select the non-US revenue for "The Empire Strikes Back"
star_wars_matrix[c("The Empire Strikes Back"),c("non-US")]

##

# Theater plus movie ratings per seat (4 rows each 6 seats)
first_row <- c(6,8,7,9,9,10)
second_row <- c(6,8,7,5,9,6)
third_row <- c(5,4,6,6,7,8)
fourth_row <- c(4,5,3,4,6,8)

# Create the theater matrix
theater <- rbind(first_row,second_row,third_row,fourth_row)

# Calculate row_scores with rowSums()
row_scores <- rowSums(theater)

##

# create a matrix with random numbers
myrand <- matrix(sample(1:15,12), nrow = 3)
myrand[1,3]
# select complete row (result is a vector)
myrand[3,]
# select complete column (result is a vector)
myrand[,2]
# with a single parameter, R goes thru column by column till the nth element
myrand[7]
# Subset multiple elements
myrand[2,c(2,3)]
myrand[c(1,2),c(2,3)]
myrand[c(1,3),c(1,3,4)]
# subsetting by names
rownames(myrand) <- c("r1","r2","r3")
colnames(myrand) <- c("a","b","c","d")
myrand["r2","c"]
myrand[3, c("c","d")]
# subsetting with logical vector
myrand[c(FALSE, FALSE, TRUE),
       c(FALSE, FALSE, TRUE, TRUE)]


# cbind() together theater and row_scores: scores
scores <- cbind(theater, row_scores)


the_fellowship <- c(316, 556)
two_towers <- c(343, 584)
return_king <- c(378, 742)
lotr_matrix <- rbind(the_fellowship, two_towers, return_king)
colnames(lotr_matrix) <- c("US", "non-US")
rownames(lotr_matrix) <- c("Fellowship", "Two Towers",
                             "Return King")


mydf <- data.frame(c("a","b","c"),c(1,2,3))

