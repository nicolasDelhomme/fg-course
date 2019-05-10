#' ---
#' title: R Basics
#' output: html_document
#' ---
#' 
#' # R Basics
#' 
#' Topics:
#' 
#' * Operators
#' * Arithmetic operators

1 + 1
1 - 1
2 * 2
2 / 2

2 ^ 4
2 ** 4

# * Logical operators

2 > 10
2 < 10
2 >= 10
2 <= 10
2 == 10
2 != 10

(2 > 1) & (2 < 5)
(10 > 9) | (10 < 1)

TRUE & TRUE
TRUE & FALSE
FALSE & FALSE

TRUE | TRUE
TRUE | FALSE
FALSE | FALSE

#' Specialized operators

# mat %*% mat
# opject %>% function() %>% function()
'house' %in% c('cat', 'dog', 'house')
'house' %in% c('cat', 'dog', 'housex')

#' * Variables

x <- 1
1 -> x
x = 1
# Bad: 1 = x

snake_case <- 'blast/scaff_aa_blast.tsv'
camelCase <- 'blast/scaff_aa_blast.tsv'

# This is the one from last december
blast_mat <- ''
my_blast_matrix_from_last_december <- ''

#' * Basic data types

# Numbers

int <- 42L
num <- 42

# Text

str <- "This is R!"
str <- 'This is R!'

fac <- factor('a')

long_vec <- c(rep('really long stuff', 50),
              rep('more long stuff', 50))
long_fac <- factor(long_vec)
as.integer(long_fac)
levels(long_fac)

#' * Getting Help

# ?c
# ??normality

#' * Basic data structures

# Vectors
num_vec <- c(1, 2, 3, 4)
non_num_vec <-c(1, 2, 3, 4, 'house') 

# List

lis <- list(1, 2, 3, 'house')
lis <- list(1, c(2, 3, 4, 5, 6), 3, 'house')

# Data Frames

df <- data.frame('first' = c(1, 2, 3),
                 'second' = c(4, 5, 6))
df

df <- data.frame('first' = c(1, 2, 3),
                 'second' = c('4', '5', '6'),
                 stringsAsFactors = FALSE)
df

# Matrix

mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3)
mat %*% t(mat)

class(mat)
class(df)

# * Selecting

df$first
df[, 1]
df[1, ]
df[2, 1]

df[c(TRUE, FALSE, TRUE), ]
df[c(1, 3), ]

df[df$first <= 2, ]

colnames(mat) <- c('C1', 'C2')
mat[, 'C1']

num_vec[c(1, 2)]

#' * Functions

sqrt(2)
sqrt(c(2, 4, 6, 8))
sum(c(2, 4, 6, 8))
cumsum(c(2, 4, 6, 8))

add_two <- function(x) {
  y <- x * 2
  y / 2 + 2
}

add_two(10)

add_random <- function(x, sd = 1, mean = 1) {
  x + rnorm(1, mean = mean, sd = sd)
}

add_random(10)
add_random(10, sd = 50, mean = 100)

#' * Loops

for (i in 1:10) {
  print(i)
}

i <- 1
while (i < 10) {
  print(i)
  i <<- i + 1
}

sapply(c(1, 2, 3, 4), add_random)

sapply(c(1, 2, 3, 4), function(x){
  x ^ 10
})

lapply(c(1, 2, 3, 4), add_random)

#' * Conditions

if (rnorm(1, 10, 1) <= 10) {
  print('Coffee break soon')
} else {
  print('No break for you')
}

#' * Packages
install.packages('matrixStats')

# rowVars(mat)

library(matrixStats)

rowVars(mat)

# install.packages('BiocManager')
# library(BiocManager)
# install('DESeq2')

