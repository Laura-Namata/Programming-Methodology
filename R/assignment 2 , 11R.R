#let the vector be called v
v<-c(21,22,23,24,25,26,27,28,29,30)
v

#or
v<-c(21:30)
v

#or 
seq(21,30,length=10)

#question 2

class(c(3,2,FALSE))


class(c(TRUE,"bob",FALSE))

class(c("larry,7,2"))

class(c(5,TRUE,"ginger"))

#question 3
seq(70,85)
seq(50,14,-3)
seq(1,31,length=7)

#question 4
temp <- c(London = 18, Paris = 20, Stockholm = 15)
temp
indices_vector <- c( 6125.7, 17140.20, 15323.10)
names(indices_vector) <- c( "FTSE 100", "Dow Jones", "Nikkei 225")
indices_vector

#question 5
v<-c(21,22,23,24,25,26,27,28,29,30)
v
# the third element 
v[3]
# the forth and seventh element
v[c(4,7)]
# sixth to tenth element
v[6:10]
# all but the fifth
v[-5]
# all but the second and eighth element
v[-c(2,8)]
#all but the third to sixth element
v[-(3:6)]
# all elements smaller than 27
v[v<27]

# question 6
# let vector a be "a" and vector b be "b" and "c"
a<-c(1:6)
a
b<-c(0,1)
b
c<-c(5,1,3,2)
c

b-1
b*c
a+b
a^b
a/c

# question 7
n <- rnorm(1000)
n
m <- n[n > 2]
m
length(n)
length(m)
