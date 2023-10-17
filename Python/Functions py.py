#!/usr/bin/env python
# coding: utf-8

# In[3]:


#Function to determine a leap year
#divisible by 400
#divisible by 4 but not 100

def leap_year(year):
    if year % 4 == 0 and year % 100 != 0 or year % 400 == 0 :
        return(True)
    else:
        return(False)
        
leap_year(2000)


# In[6]:


#Function to count days until Christmas

def count_days(christmas,feb,day,month,year):
    if month==1:
        return(christmas-day)
    elif month==2:
        return(christmas-31-day)
    elif month==3:
        return(christmas-31-feb-day)
    elif month==4:
        return(christmas-31-feb-31-day)
    elif month==5:
        return(christmas-31-feb-31-30-day)
    elif month == 6:
        return(christmas-31-feb-31-30-31-day)
    elif month == 7:
        return(christmas-31-feb-31-30-31-30-day)
    elif month == 8:
        return(christmas-31-feb-31-30-31-30-31-day)
    elif month == 9:
        return(christmas-31-feb-31-30-31-30-31-31-day)
    elif month==10:
        return(christmas-31-feb-31-30-31-30-31-31-30-day)
    elif month == 11:
        return(christmas-31-feb-31-30-31-30-31-31-30-31-day)
    else:
        if day>25 and leap_year(year+1)==False:
            return((31-day)+359)
        elif day> 25 and leap_year(year+1)==True:
            return((31-day)+360)
        else:
            return(christmas-31-feb-31-30-31-30-31-31-30-31-30-day)
#   
def days_until_christmas(day,month,year):
    christmas=0
    feb=0
    if leap_year(year)==True:
        return(count_days(360,29,day,month,year))
    else:
        return(count_days(359,28,day,month,year))
    

    
days_until_christmas(24,12,2024)


# In[ ]:


#Function to count days util Christmas

def d_u_c(year,month,day):


# In[15]:


#Function to replace digit in no.
def replace_digits(num,digit,newdigit):
    nums = str(num)
    assert 0<=digit<=9,"Number not between 0 and 9"
    assert 0<=newdigit<=9,"Number not between 0 and 9" 
    if str(digit) not in nums:
        return nums

    low_index = nums.find(str(digit)) # get lowest index of substring
    high_index = low_index + len(str(digit)) # evaluate the highest index of substring

    return replace_digits(nums[:low_index]+ str(newdigit) + nums[high_index:], digit, newdigit) 

replace_digits(564456444,14,9)
           


# In[13]:


a="asdf"
a[1]


# In[3]:


def getSum(n):
    sum = 0
    for digit in str(n):
        sum += int(digit)
    return (sum)
#
def getProduct(m):
    prod = 1
    for i in str(m):
        prod *= int(i)
    return(prod)
#
print(getSum(2034))
print(getProduct(234))

#
def max(v):
    tempy = 0
    sumy = getSum(v)
    while sumy >= 10:
        tempy = sumy
        sumy = getSum(tempy)
    prode = getProduct(v)
    while prode >= 10:
        tempy = prode
        prode = getProduct(tempy)
    if sumy > prode:
        return sumy
    else:
        return prode
#
max(534)
        


# In[16]:


def removeduplicate(m):
    k=[]
    for i in m:
        if i not in k:
           k.append(i)
    if len(k)==len(m):
        return "None"
    else:
        return k
#
m=[5,4,13,2,5,11,9,3]
removeduplicate(m)


# In[13]:


def reverser(n):
    if len(str(n)) != 3:
        raise ValueError("You did not input 3-digit number.")
    else:
         result =0
    while n>0:
        remainder = n%10
        result = (result*10) +remainder
        n=n//10
    return(result)
#
reverser(234)


# In[14]:


reverser(67)


# In[ ]:




