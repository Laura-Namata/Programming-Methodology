#Initializing the increment of the brownian motion
W <-c(0,rnorm(100,0,1))
#Setting dt to 0.5
sigma <- 0.5
#Getting the dBt
for(i in W){
    m = match(i,W)
    i=i*sqrt(sigma)
    W[m]=i
}
W<- cumsum(W)
W




