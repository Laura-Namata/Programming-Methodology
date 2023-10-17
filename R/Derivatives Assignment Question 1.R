#number of steps
n<-4
#let the intial stock price be represented by S0
s0<-100
#the exercise price is represented by k
k<-100
#the treasury rate
r<-0.1
#the market volatility rate
volatility<-0.35

#assuming the time to maturity is 1 year:
t<-1

#Calculating the upward and downward movement rate, letting the upward rate be u and the downward rate be d:
#upward rate:
u<-exp(r*t+volatility^2/2*t)
u
##u=1.174979

#downward rate
d<-exp(r*t-volatility^2/2*t)
d
##d=1.039511

#Calculating the time step and iscount factor
#let the difference in time be represented by dt
dt<-1/n
dt
##dt=0.25

#let the discount factor be represented by df
df<-exp(-r*dt)
df
##df=0.9753099

#Initializing the stock price and option price matrices
#let the stock price matrix be given by X and the option price matrix be given by Y
#Stock price matrix
X<-matrix(0, nrow = n+1, ncol = n+1)
X

#Option price matrix
Y<-matrix(0, nrow = n+1, ncol= n+1)
Y

#Calculating the stock prices at each time step
for (i in 0:n) {
  for(j in 0:i){
    X[j+1, i+1] <- s0 * u^j * d^(1 - j)
  }
  
}

#Calculating the option prices at the final time step
for (j in 0:n) {
  Y[j+1, n+1]<-pmax(X[j+1,n+1]-k,0)
  
}
# note that the equation Y[j+1, n+1]<-pmax(X[j+1,n+1]-k,0) above is the payoff of the option

#Using b ackard induction to calculate option prices at the previous time steps
for (i in (n-1):0) {
  for (j in 0:i) {
    Y[j+1,i+1]<-df*(0.5*(Y[j+1,i+2]+Y[j+2,i+2]))
    X[j+1,i+1]<-max(X[j+1,i+1],Y[j+1,i+1]-k)
    
  }
  
}
#where Y[j+1,n+1]<-df*(0.5*(Y[j+1,i+2]+Y[j+2,i+2])) is the discounted expected option price and X[j+1,i+1]<-max(X[j+1,i+1],Y[j+1,i+1]-k) is the early exercise

#To getthe current value of the American call option you get the one at time step 0
c0<-Y[1,1]
c0
