#Vectors
v<-c(1,2,3,4,5,6,7,8,9,10)
v

is.vector(v)
length(v)

class(v)

#Exercise
#no.1
v<-21:30
v<-c(21,22,23,24,25,26,27,28,29,30)
v<-seq(21,30)
v

#no.2
c(3,2,FALSE)
#numeric
c(TRUE,"bob",FALSE)
#If bob has been used to name a number in a vector, then numeric and if not character.
c("larry",7,2)
#numeric if larry is assigned or character if it isn't
c(5,TRUE,"ginger")
#character

#no.3
seq(70,85)
seq(50,14,-3)
seq(1,31,length=7)

#no.4
temp<-c(London=18,Paris=20,Stockholm=15)
indice<-c(6125.7,17140.20,15323.10)
names(indice)<-c("FTSE 100","Dow Jones","Nikkei 225")
temp
indice

#no.5
v[3]
v[c(4,7)]
v[6:10]
v[-5]
v[-c(2,8)]
v[-(3:6)]
v[v<27]

#no.6
a<-c(1:6)
b<-c(0,1)
c<-c(5,1,2,3)
b-1
b*c
a+b
a^b
a/c

#no.7
n<-rnorm(1000)
m<-n[n>2]
P=length(m)/length(n)
P


