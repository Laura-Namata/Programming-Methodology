#check if x is greater than 0
x=9
if(x>0){
    print("x is a positive number")
}else{
    print("x is a negative number")
}

#check if age is greater than 18
age <- 6
if(age>18){
    print("You are eligible to vote")
}else{
    print("You are not eligible to vote")
}

#check if x is positive or negative or zero
x=0
if(x>0){
    print("x is a positive number")
}else if(x<0){
    print("x is a negative number")
}else{
    print("x is zero")
}

#check if x is positive then check if x is even or odd for both cases
x=-6
if(x>0){
    if(x%%2 ==0){
        print("x is positive even")
    }else{
        print("x is positive odd")
    }
}else{
    if(x%%2 ==0){
        print("x is negative even")
    }else{
        print("x is negative odd")
    }
}

#WHILE loops
#print numbers from 1 to 10
x=1
while(x<=10){
    print(x)
    x=x+1
}

#while loop to calculate sum
x=1
sum=0
while(x<=10){
    sum=sum+x
    x=x+1
}
print(sum)

#FOR LOOPS
for(i in 1:10){
    print(i)
}

#nested for loops
for(i in 1:5){
    for(j in 3:9){
        if((i+j)<10){
            print(paste(i,j))
        }
    }
}


