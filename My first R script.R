
# -----
# MY VERY FIRST INRODUCTION TO R
# Author: Tian-Yu Song
# Date: March 4 2024
# Description: First lecture notes from the CP Bootcamp
# ----

# Introduction ----

3  + 4



# This is my first vectors:
1:6

# Here is a longer vector
23:59

# My first R object
a <- 3

# Naming Objects:
namesAreCaseSensitive <- 3

# They cannot start with a number: or a special character
1object <- 100
@noSpecialcharacter <- 200

underscores_or.dots.are.okay <- 10

namesAreCaseSensitive / 2

is()

NA <- 3
Null <- 3
TRUE <- 10

# Elementwise Objects
die <- 1
double_die <- die * 2
double_die

die * die

die %*% die
die %o% die

die
rep(1/6, 6)
probability = rep(1/6, 6)
sum(die * probability)
die %*% probability

c(1,2,1,2,1,2)
die * 1:2
die * c(1,2,1,2,1,2)

die %o% c(1,2)

die * 1:4

# Functions ----

round(3,5)

rnorm(1)
factorial(5)
exp(2)
log(100)
log2(16)
log10(120)

rnorm(n = 10, mean = 0, sd = 3)
mean(1:10)

round(mean(1:10))
round(exp(2))

a <- exp(2)
rounded_a <- round(a)

sample(x = die, 2, replace = TRUE)
sample(die, 2, TRUE)
sample(size = 2, x = die, replace = TRUE)

# Wrong ----
sample(size = 3)
sample(x = die, size = 3)

?sample()

sample(size = 2, x = 6, replace = TRUE)

??sample

roll2 <- function(){
  dice <- sample(x = 1:6, size = 2, replace = TRUE)
  return(sum(dice))
}


roll2()

outcome <- roll2()



die

roll3 <- function(){
  dice <- sample(x = 1:6, size = 2, replace = TRUE)
  return(sum(dice))
}

roll3()


die

roll4 <- function(die){
dice <- sample(x = die, 2, TRUE)
sum(dice)
}



# Packages ----

?install.packages()

install.packages("useful")

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

# The following initializes usage of Bioc devel
BiocManager::install(version='devel')

BiocManager::install("ComplexHeatmap")

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ComplexHeatmap")


library(ComplexHeatmap)

ComplexHeatmap::Heatmap()

Heatmap()

qplot()

x <- c(-1, 0.8, 0.5, 3, -2, 10, 1.1, 5)
x <- sort(x)
y <- x^3
y
plot(x,y, type = "b")

?base::sort
?base::plot

qplot(x,y)

qplot(y)

x <- c(-1, 0.8, 0.5, 3, -2, 10, 1.1, 5)
x <- sort(x)
y <- x^3
y
plot(x,y, type = "b")
qplot(y)






