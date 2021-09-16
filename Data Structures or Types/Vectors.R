#Here we will learn about all data structures
Vectors are the most basic R data objects and there are six types of atomic vectors. They are logical, integer, double, complex, 
character and raw.
library(tidyverse)
typeof(letters)
typeof(1:12)
x <- list("a", "b", 1:10)
length(x)
======================================================================================================
# LinK: https://www.tutorialspoint.com/r/r_vectors.htm

==>Combining Vectors: http://www.r-tutor.com/r-introduction/vector/combining-vectors
n= c(2, 3, 5) 
s= c("aa", "bb", "cc", "dd", "ee") 
combined=c( s,  n)
print(combined)

==>SINGLE ELEMENT VECTOR
typeof("abc") # Atomic vector of type CHARACTER
typeof(12.5)# Atomic vector of type DOUBLE
typeof(63L)# Atomic vector of type INTEGER
typeof(TRUE)# Atomic vector of type LOGICAL
typeof(2+4i)# Atomic vector of type COMPLEX
typeof(charToRaw('hello'))# Atomic vector of type RAW

==>MULTIPLE ELEMENTS VECTOR
v <- 5:13
print(v)
v <- 3.8:11.4
print(v)

==>Using sequence (Seq.) operator
print(seq(5,9, by=0.4))#Create vector with elements from 5 to 9 incrementing by 0.4

==>ACCESSING VECTOR ELEMENTS
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")#Accessing vector elements using position
u <- t[c(3,1,7)]
print(u)
v<- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)] # Accessing vector elements using logical indexing
print(v)
y <- t[c(1,0,0,0,0,0,7)]# Accessing vector elements using 0/1 indexing.
print(y)

==>VECTOR MANUPULATION
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

==>VECTOR RECYCLING
v1<- c(3, 4, 5, 6, 7, 8, 9)
v2<-c(4, 11)# v2 becomes (4,11,4,11,4,11,4)
add.result<- v1+v2
print(add.result)
sub.result<-v1-v2
print(sub.result)
========================================================================================================================
===>VECTOR ELEMENTS SORTING
v<- c(3,8,4,5,0,11, -9, 304)
sort.result<- sort(v)
print(sort.result)
revsort.result<- sort(v, decreasing = TRUE)
print(revsort.result)
revsort.result<- sort(v, decreasing = FALSE)
------------------------------------------------------
v <- c("Blue", "Red", "Yellow", "violet", "Green")
sort.resutl<-sort(v)
print(sot.resutl)
revsort.result<-sort(v, decreasing = FALSE)
print(revsort.result)
revsort.result<-sort(v, decreasing = TRUE)
print(revsort.result)


#Sample Vector
v <- c(1,4,4,3,2,2,3)
v[c(2,3,4)]
v[1:2]

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
data[1, "size"]

data[1:2, ]
data[c(1,2), ]

data[1:2, c(2,3)]
data[c(1,2), c("sex", "size")]
data[c(1,2), c(2,3)]


v <- c(1,4,4,3,2,2,3)
v > 2
v[v>2]
v[c(F,T,T,T,F,F,T)]

data <- read.table(header=T, text='
 subject sex size
       1   M    7
       2   F    6
       3   F    9
       4   M   11
 ')
data$subject <3
data[data$subject<3, ]
data[c(T, T, F, F), ]
# It is also possible to get the numeric indices of the TRUEs
which(data$subject < 3)

#Here is the vector again
v
#Drop the first element
v[-1]
# Drop the 4th element
v[-4]
#Drop the first three
v[-1:-3]
#Drop the just last element
v[-length(v)]





