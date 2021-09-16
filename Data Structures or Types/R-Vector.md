# Vector
Vectors are the most basic R data objects and there are six types of atomic vectors. They are **logical, integer, double, complex, character and raw**.
```
library(tidyverse)
typeof(letters)
typeof(1:12)
x <- list("a", "b", 1:10)
length(x)
```
### [Details on this Link](https://www.tutorialspoint.com/r/r_vectors.htm)

# Combining Vectors
### [Details on this link](http://www.r-tutor.com/r-introduction/vector/combining-vectors)
```
n= c(2, 3, 5) 
s= c("aa", "bb", "cc", "dd", "ee") 
combined=c( s,  n)
print(combined)
```

# SINGLE ELEMENT VECTOR
```
typeof("abc"){Atomic vector of type CHARACTER}
typeof(12.5){Atomic vector of type DOUBLE}
typeof(63L){Atomic vector of type INTEGER}
typeof(TRUE){Atomic vector of type LOGICAL}
typeof(2+4i){Atomic vector of type COMPLEX}
typeof(charToRaw('hello')){Atomic vector of type RAW}
```
# MULTIPLE ELEMENTS VECTOR
```
v <- 5:13
print(v)
v <- 3.8:11.4
print(v)
```
# Vector Using sequence (Seq.) operator.
### Create vector with elements from 5 to 9 incrementing by 0.4
```
print(seq(5,9, by=0.4))
```
# ACCESSING VECTOR ELEMENTS
## Indexing into data structure.
***If you want to get a part of data structure? Then Elements from a vector, matrix, or data frame can be extracted using numeric indexing, or by using a boolean vector of the appropriate length.***
### Indexing with numbers and names
With a vector
```
v <- c(1,4,4,3,2,2,3)
v[c(2,3,4)]
[1] 4 4 3
 v[1:2]
[1] 1 4
v[5:6]
[1] 2 2
```
With a Data Frame
```
# Create a sample data frame
data <- read.table(header=T, text='
 subject sex size
       1   M    7
       2   F    6
       3   F    9
       4   M   11
 ')
data[1, 3]
data[3, 2]
```
#### Accessing vector elements using position
```
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")
u <- t[c(3,1,7)]
print(u)
[1] "Tue" "Sun" "Sat"
```
#### Accessing vector elements using logical indexing
```
v<- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(v)
[1] "Sun" "Fri"
```
#### Accessing vector elements using 0/1 indexing.
```
y <- t[c(1,0,0,0,0,0,7)]
print(y)
[1] "Sun" "Sat"
```
# VECTOR MANIPULATION
```
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)
add.result<- v1+v2 #Vector Addition 
print(add.result)
sub.result<- v2-v1 #Vector subtraction 
print(sub.result)
multi.result<- v1*v2 #Vector Multiplication
print(multi.result)
divi.result<-v1/v2 #Vector Division 
print(divi.result)
```
# VECTOR RECYCLING
```
v1<- c(3, 4, 5, 6, 7, 8, 9)
v2<-c(4, 11)# v2 becomes (4,11,4,11,4,11,4)
add.result<- v1+v2
print(add.result)
sub.result<-v1-v2
print(sub.result)
```
# VECTOR ELEMENTS SORTING
```
v<- c(3,8,4,5,0,11, -9, 304) or,
v <- c("Blue", "Red", "Yellow", "violet", "Green")
sort.result<- sort(v)
print(sort.result)
revsort.result<- sort(v, decreasing = TRUE)
revsort.result<- sort(v, decreasing = FALSE)
print(revsort.result)
```
# 

















































