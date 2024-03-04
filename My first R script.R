
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


# write a function that rolls apair of dice and reports their sum

roll_fair <- function(){
  dice <- sample(1:6, 2, TRUE)
  return(sum(dice))
}

# write a funtion that rolls a pair of loaded dice that are twice more likely 
# to come 5 or 6 than any other numbers and returns their sum

roll_loaded <- function(){
  #dice <- sample(x = c(1:6, 5,6), size = 2, replace = TRUE)
  dice <- sample(x = 1:6, size = 2, replace = TRUE, prob = c(1,1,1,1,2,2))
  return(sum(dice))
}

rep(1, 10)

roll_fair()
roll_loaded()

fair_sums <- replicate(1000, roll_fair())
loaded_sums <- replicate(1000, roll_loaded())

fair_sums

plot(loaded_sums)
hist(loaded_sums, 100)
hist(fair_sums, 100)

fig1 <- ggplot2::qplot(fair_sums)
fig2 <- ggplot2::qplot(loaded_sums)

fig1

install.packages("cowplot")
cowplot::plot_grid(fig1, fig2, nrow = 1)

?replicate()

?sample

roll_many(n ) # --> roll n pairs of dice and return the sums

roll_many <- function(n) {
  die1 <- sample(1:6, n, replace = TRUE)
  die2 <- sample(1:6, n, replace = TRUE)
  return(die1 + die2)
}

# Using ggplot2 to plot the histogram
library(ggplot2)
qplot(roll_many(1e4), geom = "histogram", binwidth = 1,
      main = "Sum of Dice Pairs", xlab = "Sum", ylab = "Frequency", fill = I("skyblue"))


# 模拟掷 n 对骰子，并返回每一对的总和
roll_n_pairs_of_dice <- function(n) {
  # 初始化一个空向量，用于存储每一对骰子的总和
  sums <- numeric(n)
  
  # 循环进行 n 次掷骰子操作
  for (i in 1:n) {
    # 使用 sample 函数模拟掷两次骰子并计算总和
    dice_result <- sum(sample(1:6, 2, replace = TRUE))
    
    # 将总和存储到向量中
    sums[i] <- dice_result
  }
  
  # 返回包含每一对骰子总和的向量
  return(sums)
}

# 设置要模拟的骰子对数
n_pairs <- 10

# 调用函数进行模拟
result <- roll_n_pairs_of_dice(n_pairs)

# 绘制柱形图
barplot(table(result), main = "Sum of Dice Pairs", xlab = "Sum", ylab = "Frequency", col = "skyblue")


install.packages("magrittr")  # Make sure to use quotes around the package name

library(magrittr)

x <- 3
y <- exp(x)
z <- sqrt(y)
t <- log10(z)
s <- abs(t)

# Alternatively, you can combine the operations in one line
s <- abs(log10(sqrt(exp(3))))

# Using the magrittr pipe operator
s <- x %>%
  exp() %>%
  sqrt() %>%
  log10() %>%
  abs()

# Correct the typo in the function definition
substraction <- function(x, y) {
  return(x - y)
}

x <- 3

# Two ways to use the substraction function with magrittr
result1 <- x %>%
  substraction(1)  # Assumes the second argument is 1

result2 <- x %>%
  substraction(y = 1)  # Specifies the second argument

# The line 'x %>% f()' is not clear without knowing what 'f()' represents

# Printing the results
cat("Result 1:", result1, "\n")
cat("Result 2:", result2, "\n")

# 检查已加载的包
search()

# 如果已加载，卸载 magrittr 包
if ("magrittr" %in% search()) detach("package:magrittr", unload = TRUE)





# OBJECTS ----

# atomic vectors
library(dplyr)
die = 1:6
is.vector(die)
length(die) # will use very common

five <-5
is.vector(five)
length(five)

near(sqrt(2)^2, 2)

typeof(die)
typeof(five)
sqrt(2)^2 - 2
sqrt(4)^2 - 4

logicals <- c(TRUE, FALSE, T, F, F, F)
logicals
typeof(logicals)

test <- c("Hello", "World")
length(text)
typeof(text)


five <- 5L
typeof(five)

#Correction

logicals
int <- c(1L, 5L)

c(logicals, int)

logicals %>%
  c(int)

as.logical(int)

logicals %>%
  c(int) %>%
  c(text) %>%
  typeof()

