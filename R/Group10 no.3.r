setwd("C:/Users/Lenovo/Documents/Programming-Methodology/R")
###Understanding regression
#Regression describes the process of fitting lines to data while specifying the relationship between a depent variable and independent variables.
#Linear regression is the kind of regression that uses straight lines. It can be simple or multiple regression that is with one independent variable or many independent variables.
#Under linear regression, the dependent variable is assumed to be continuous.

###Simple Linear regression
#O-rings against temperature
#y=4.30-0.057x

###Ordinary Least Squares estimation
#In OLS the slope and intercept are chosen such that they minimize the sum of squared errors.

#We want to use the file challenger to do our calculations.
launch<- read.csv("challenger.csv")

#We use this to calculate the slope b 
b<-cov(launch$temperature, launch$distress_ct)/ var(launch$temperature)
b

#we use this to calculate the intercept a
a<-mean(launch$distress_ct)-b*mean(launch$temperature)
a

#Correlations
#These 2 methods are used to find correlation between variables.
r<-cov(launch$temperature, launch$distress_ct)/ (sd(launch$temperature)*sd(launch$distress_ct))
r

cor(launch$temperature,launch$distress_ct)

###Multiple linear regression
#We create a function reg which returns the estimated beta coefficients given x and y.
reg<-function(y,x){
    x<-as.matrix(x)
    x<-cbind(Intercept=1,x)
    solve(t(x)%*%x)%*%t(x)%*%y
}
#The above function gives you the beta coefficients when you have the independent variables and the dependent variable.

##We are now going to apply our function reg to the shuttle launch data.
str(launch)

#Here we find the betas of the shuttle launch data from above just take temperature and distress_ct.
reg(y=launch$distress_ct,x=launch[3])

#Since the above worked now we try for the rext of the independent variables.
reg(y=launch$distress_ct,x=launch[3:5])
#The above model predicts the number of O-ring failures versus temperature,pressure and the launch ID number.


##Example predicting medical expenses using linear regression.
#We start by reading the csv file and then stringAsFactor = true which makes sure that the nominal variables arre factors.
insurance <- read.csv('insurance.csv',  stringsAsFactors = TRUE)

str(insurance)

#In this example our dependent variable is charges and this is how it is distributed.
summary(insurance$charges)

#We confirm the right skewedness of the charges data by drawing a histogram.
hist(insurance$charges)

#We have a challenge that regression models require everyfeature to be numeric which isn't the case with our data.
#We are going to see closely how region is distributed in our data.
table(insurance$region)
#We see from our table that the data has been nearly equally distributed among four regions.

##Exploring relationships among features-the correlation matrix
#A correlataion matrix enables us to know how the independent variables correlate to eachother and the dependent variable
cor(insurance[c("age","bmi","children","charges")])

##Visualising relationships among features - the scatterplot matrix
#we create a scatterplot matrix(SPLOM) which is a collection fo scatter plots arranged on a grid.
#It is used to detect patterns among three or more variables.
#creating a SPLOM for the four numeric variables age,bmi,children and charges.
pairs(insurance[c("age","bmi","children","charges")])
#The intersections of rows and columns show the scatterplot of the variables indicated.

library(psych)
pairs.panels(insurance[c("age","bmi","children","charges")])
#The above produces a slightly more informative scatterplot
#Correlation matrix replaces scatterplot and a histogram diagonally.
#The correlation elipse which is the oval shaped object in each scatterplot  provides a visualisation of how strongly correlated the variables are.
#curve drawn on the scatter plot known as a loess smooth indicates general relationship between x and y axes.

##Training a model on data.
ins_model <- lm(charges~age+children+bmi+sex +smoker+region,data=insurance)
#The above function returns the regression model object that can be used to make predictions.
ins_model <- lm(charges~.,data = insurance)
ins_model
#ins_pred<- predict(ins_model,insurance_test)
#This function returns a vector of predicted values.

##Evaluating model performance.
summary(ins_model)
#This enables us to tell how well the model fits the data.

##Improving model performance.
#Model specification like adding non-linear relationships.
insurance$age2<-insurance$age^2

#Converting a numeric variable to a binary indicator.
insurance$bmi30<-ifelse(insurance$bmi >= 30,1,0)

#Adding interaction effects.
#Improved regression.
ins_model2<-lm(charges~age + age2 +children +bmi +sex+bmi30*smoker +region, data = insurance)
summary(ins_model2)




