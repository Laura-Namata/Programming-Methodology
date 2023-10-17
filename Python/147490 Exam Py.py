#!/usr/bin/env python
# coding: utf-8

# In[2]:


###Qn.1
##This is an implementation in Python
#E
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
reverser(34)


# In[4]:


#F
def binaryToDecimal(binary):
    assert len(str(binary))<=8,"Number must have less than 8 characters"
    
    decimal, i = 0, 0
    while(binary != 0):
        dec = binary % 10
        decimal = decimal + dec * pow(2, i)
        binary = binary//10
        i += 1
    return replace_digits(binary,1,decimal)
#
binaryToDecimal(200)


# In[5]:


###Qn.5
##This is an implementation in Python.
#B
#i
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
#ii
L=[5,4,13,2,5,11,9,3]

removeduplicate(L)
#


# In[4]:


S=[1,2,5,6,11,23]
removeduplicate(S)


# In[1]:


#C
#Iterate through results to see when the character shows signs of haaving appeared more times than the rest of the characters.
#First get the low index at the first point when a streak occurs.
#Then get the high index at the point when the streak stops.
#Subtract the low index from the high index and that would be the longest streak.

# Python program to return the maximum occurring character in the input string
def longest(seq):
    max_count = 0
    max_char = ""
    prev_char = ""
    
    for current in seq:
        if prev_char == current:
            count += 1
        else:
            count = 1
        if count > max_count:
            max_count = count
            max_char = current
        prev_char = current
    print(max_char,max_count)

longest("bbbccccddddddde")


# In[1]:


#D
def replace_digits(num,digit,newdigit):
    nums = str(num)
    assert 0<=digit<=9,"Number not between 0 and 9"
    assert 0<=newdigit<=9,"Number not between 0 and 9" 
    if str(digit) not in nums or str(digit) == str(newdigit):
        return nums

    low_index = nums.find(str(digit)) # get lowest index of substring
    high_index = low_index + len(str(digit)) # evaluate the highest index of substring

    return replace_digits(nums[:low_index]+ str(newdigit) + nums[high_index:], digit, newdigit) 
#
replace_digits(1349848,9,4)
replace_digits(5,2,3)
replace_digits(45261,1,1)


# In[ ]:




