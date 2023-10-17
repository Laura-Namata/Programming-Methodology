# function to sort the array using bubble sort
bubble_sort <- function(x)
{
  s<-x[!duplicated(x)]
  # calculate the length of array
  n <- length(s)
  # run loop n-1 times
  for (i in 1 : (n - 1)) {
    # run loop (n-i) times
    for (j in 1 : (n - i)) {
      # compare elements
      if (s[j] > s[j + 1]) {
        temp <- s[j]
        s[j] <- s[j + 1]
        s[j + 1] <- temp
      }
    }
  }
  s
}

# take 20 random numbers between 1 - 100
arr <- c(5,3,2,3,7,8,4,5,9)

# sort the array and store the result
# in sorted_array
sorted_array <- bubble_sort(arr)

# print sorted_array
sorted_array


# insertion sort function to sort array
insertion_sort <- function(x)
{
  v<-x[!duplicated(x)]
  # calculate the length of array
  n <- length(v)
  # outer loop
  for (i in 2 : (n))
  {
    # store first element as key
    key = x[i]
    j   = i - 1
    # compare key with elements for
    # its correct position
    while (j > 0 && x[j] > key)
    {
      x[j + 1] = x[j]
      j = j - 1
    }
    # Place key at its correct position
    x[j + 1] = key
  }
  # return sorted array
  x
}

# take sample array
arr <- c(9,8,1,2,6,4,5,5,6,7)

# call insertion sort function
sorted_arr <- insertion_sort(arr)

# print sorted array
sorted_arr

# function to sort array using selection sort
selection_sort <- function(x)
{
  m<-x[!duplicated(x)]
  # length of array
  n <- length(m)
  for (i in 1 : (n - 1))
  {
    # assume element at i is minimum
    min_index <- i
    for (j in (i + 1) : (n))
    {
      # check if element at j is smaller
      # than element at min_index
      if (m[j] < m[min_index]) {
        # if yes, update min_index
        min_index = j
      }
    }
    # swap element at i with element at min_index
    temp <- m[i]
    m[i] <- m[min_index]
    m[min_index] <- temp
  }
  m
}

# take sample input
arr <- sample(1,4,5,5,6,7,8,9,9,10)

# sort array
sorted_arr <- selection_sort(arr)

# print array
sorted_arr


# function to sort the values
quickSort <- function(arr) {
  s<-arr[!duplicated(arr)]
  # Pick a number at random
  random_index <- sample(seq_along(arr), 1);
  pivot <- s[random_index]
  s <- s[-random_index]
  
  # Create array for left and right values.
  left <- c()
  right <- c()
  
  # Move all smaller and equal values to the
  # left and bigger values to the right.
  # compare element with pivot
  left<-s[which(s <= pivot)]
  right<-s[which(s > pivot)]
  
  if (length(left) > 1)
  {
    left <- quickSort(left)
  }
  if (length(right) > 1)
  {
    right <- quickSort(right)
  }
  
  # Return the sorted values.
  return(c(left, pivot, right))
}

# take sample array
s <- c(1,2,4,5,6,6,7,8,9,9)

# call quickSort function
result <- quickSort(arr)

# print result
result


# function to merge two sorted arrays
merge <- function(a, b) {
  # create temporary array
  temp <- numeric(length(a) + length(b))
  
  # take two variables which initially points to
  # starting of the sorted sub arrays
  # and j which points to starting of starting
  # of temporary array
  astart <- 1
  bstart <- 1
  j <- 1
  for(j in 1 : length(temp)) {
    # if a[astart] < b[bstart]
    if((astart <= length(a) &&
        a[astart] < b[bstart]) ||
       bstart > length(b)) {
      # insert a[astart] in temp and increment
      # astart pointer to next
      temp[j] <- a[astart]
      astart <- astart + 1
    }
    else {
      temp[j] <- b[bstart]
      bstart <- bstart + 1         
    }
  }
  temp
}

# function to sort the array
mergeSort <- function(arr) {
  l<-arr[!duplicated(arr)]
  # if length of array is greater than 1,
  # then perform sorting
  if(length(l) > 1) {
    
    # find mid point through which
    # array need to be divided
    mid <- ceiling(length(l)/2)
    
    # first part of array will be from 1 to mid
    a <- mergeSort(l[1:mid])
    
    # second part of array will be
    # from (mid+1) to length(arr)
    b <- mergeSort(l[(mid+1):length(l)])
    
    # merge above sorted arrays
    merge(a, b)
  }
  # else just return arr with single element
  else {
    l
  }
}

# take sample input
l <- c(2,1,4,5,3,2,8,9,4)

# call mergeSort function
result <- mergeSort(l)

# print result
result