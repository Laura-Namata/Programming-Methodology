#No.1

#(a)
C<-matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),3,4,TRUE)

#(b)
C<-matrix(1:12,3,4,TRUE)

#(c)
C<-matrix(seq(1,12),3,4,TRUE)


#no.2
b<-c(13,14,15,16)
D<-rbind(C,b)
D

#no.3
#(a)
matrix(c(3,FALSE,1,TRUE),2,2)
#numeric

#(b)
matrix(c(TRUE,"bob",FALSE,"harry"),2,2)
#character

#(c)
matrix(c("larry",7,2,-1),2,2)
#character

#(d)
matrix(c(5,TRUE,"ginger",0),2,2)
#character

#no.4
#(a)
T<-matrix(c(18,20,15,20,19,13),3,2,dimnames=list(c("London","Paris","Stockholm"),c("Mon","Tue")))
T

#(b)
T<-matrix(c(6125.7,17140.2,15323.1,6078.2,17160.7,15323.8),3,2)
rownames(T)<-c("FTSE","Dow Jones","Nikkei")
colnames(T)<-c("Mon","Tue")
T

#no.5
C
#(a)
C[2,3]

#(b)
C[3,]

#(c)
C[,1]

#(d)
C[-2,]

#(e)
C[c(2,3),c(3,4)]

#(f)
C[c(1,2),c(2,3)]

#(g)
C[C<10]

#no.6
M<-matrix(c(1,2,0,-3,5,9),3,2)

#(a)
3*M
t(M)
M%*%t(M)

#(b)
M-3

#(c)
rowSums(M)
colSums(M)

#no.7
A<-matrix(c(1,2,9,10),2,2)
B<-matrix(c(1,3,2,4),2,2)

#(a)
A%*%B
B%*%A

#(b)
det(B)
solve(B)
B%*%solve(B)

#(c)
eigen(B)

#no.8
K<-matrix(c(2,-3,-4,2),2,2)

j<-matrix(c(-14,13))
solve(K,j)


