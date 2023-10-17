# importing the data from xlsx
str(Part_f)
# plotting using ggplot2
# you need the ggplot2 package installed
# if you have not installed the package 
# you can install it using install.packages("ggplot2")

library(ggplot2) # calling the library
# We can a histogram and a boxplot
# histogram
names(Part_f)
ggplot(Part_f, aes(x=Income))+
  geom_histogram(col="white")+
  labs(title="Histogram of the Income Variable")
# boxplot
ggplot(Part_f, aes(x=Income))+
  geom_boxplot()+
  labs(title="Boxplot of the Income Variable")
# the boxplot reveals an outlier
#  let's remove the outlier

# Drawing the histogram
#removing the outlier
n_max <- max(Part_f$Income)
n_max
x <- Part_f$Income[Part_f$Income != n_max]
range(x)
# defining the class limits
a <- seq(50000, 120000, 10000)
colors <- c("red", "blue","red","blue","red", "blue",
            "red")
hist(x, breaks=a,col=colors)
range(Income)



# past exam
# question 4 (April 2022)
# part A
Z <- seq(5, 160, 5)
X <- seq(87, 56, -1)

Y <- X * Z
# i
Y[13:15]
# ii
Y[Y < 1800]
# iii
sum(Y>4800)

# Part B
#creating matrix
m <- rbind(
  c(10, 4, 1),
  c(5, 10, 2),
  c(15, 3, 4)
)
m
# creating vector
v <- c(345, 450, 490)
# solving the simul equations
solve(m, v)

# Part C

# reading the data
Y <- c(61 , 47,  75,  63,  79 , 75 , 67,  47 , 71 , 84 )
Y <- as.matrix(Y, ncol=1)
Y
x <- c(19 , 19,  10 , 17 , 19,  12,  18 , 10,  15,  15 )
X <- cbind(1, x)
X
# model parameters
# solution A
solve(crossprod(X)) %*% (t(X) %*% Y)
# solution B
x_trans_x <- t(X) %*% X
x_trans_y <- t(X) %*% Y

solve(x_trans_x) %*% x_trans_y

# solution C
x_trans_x <- crossprod(X)
x_trans_y <- t(X) %*% Y
solve(x_trans_x) %*% x_trans_y

# alpha and beta
beta <- solve(x_trans_x) %*% x_trans_y
beta
# predicted values
y_hat <- X %*% beta
y_hat


# Example of data frame question
# question 5
# checking the names of the columns
names(Salaries)
head(Salaries)
# to avoid using the dollar sign, attach the data
attach(Salaries)

# Part A
# i
table(rank)
# ii
table(sex)

# Part B

# i measures of central tendency
mean(salary)
median(salary)
# for you to calculate the model..use the mfv function
# in the modeest package
library(modeest)
# the mode
mfv(salary)
# ii measures of dispersion
# standard devitiation
sd(salary)
# interquartile range
IQR(salary)
# range
# solution A
max(salary)- min(salary)
# range : solution B
diff(range(salary))




# Part C
# make_ninth
make_ninth <- function(number){
  # creating an empty vector that will store the
  # digits of the number
  digits <- c()
  # collecting the digits and appending to the list
  for (i in 1:nchar(number)){
    digits = append(digits, substr(number, i, i))
  }
  # getting the sum in odd positions
 
  sums <- sum(as.numeric(digits)[c(1,3,5,7)])
  sums
  # getting the digits in even positions
  even_pos_dig <- as.numeric(digits)[c(2,4,6,8)]
  even_pos_dig
  # doubling the digits in even positions
  double_even <- 2 * even_pos_dig
  double_even
  # making sure that in products bigger than 9,
  # the last digit has been selected
  for (i in 1:4){
    if (as.numeric(double_even[i]) > 9){
      double_even[i] = substr(double_even[i],2,2)
    }
  }
  double_even
  # adding the double corrected even numbers
  add_double_even <- sum(as.numeric(double_even))
  add_double_even
  
  # getting the total of the previous sums i.e. 
  # even and odd positions
  total <- sums + add_double_even
  total
  # getting the last digit of the total using 
  # modulo arithmetic
  last_digit_total <- total %% 10
  last_digit_total
  # subtracting the last digit from 10 to obtain 
  # the ninth digit
  ninth_digit = 10 - last_digit_total
  ninth_digit
  # appending the ninth digit to the first eight
  # numbers that was input by the user
  number = number * 10 + ninth_digit
  number
  
  
}
# an example 

make_ninth(11233456)

