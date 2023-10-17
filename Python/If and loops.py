#!/usr/bin/env python
# coding: utf-8

# In[1]:


#check if x is greater than 0
x=9
if x>0:
    print("x is a positive number")
else:
    print("x is a negative number")


# In[2]:


#check if age is greater than 18
age=13
if age>0:
    print("You are eligible to vote")
else:
    print("You are not eligible to vote")


# In[3]:


#check if x is a positive or negative or zero
x = 0
if x>0:
    print("x is a positive number")
elif x<0:
    print("x is a negative number")
else:
    print("x is zero")


# In[4]:


#check if x is positive then check if x is even or odd
x=-6
if x>0:
    if x%2 ==0:
        print("x is positive even")
    else:
        print("x is positive odd")
else:
    if x%2 ==0:
        print("x is negative even")
    else:
        print("x is negative odd")


# In[9]:


#WHILE loops
#print numbers 1 to 10
x=1
while x<=10:
    print(x)
    x+=1


# In[11]:


#while loop to calculate sum
x=1
sum=0
while x<=10:
    sum=sum+x
    x+=1
print(sum)


# In[13]:


#FOR LOOPS
#for loop
for i in range(1,10):
        print(i)


# In[14]:


#nested for loops
for i in range(1,5):
    for j in range(3,9):
        if (i+j)<10:
            print(i,j)


# In[ ]:




