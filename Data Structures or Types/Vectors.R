#Here we will learn about all data structures
library(tidyverse)
typeof(letters)
typeof(1:12)
x <- list("a", "b", 1:10)
length(x)
#----------------------------------------------------
# LinK: https://www.tutorialspoint.com/r/r_vectors.htm

#SINGLE ELEMENT VECTOR
typeof("abc") # Atomic vector of type character.
typeof(12.5)# Atomic vector of type double.
typeof(63L)# Atomic vector of type integer.
typeof(TRUE)# Atomic vector of type logical.
typeof(2+4i)# Atomic vector of type complex.
typeof(charToRaw('hello'))# Atomic vector of type raw.

#MULTIPLE ELEMENTS VECTOR
v <- 5:13
print(v)
v <- 3.8:11.4
print(v)

#-Using sequence (Seq.) operator
print(seq(5,9, by=0.4))#Create vector with elements from 5 to 9 incrementing by 0.4

#ACCESSING VECTOR ELEMENTS
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")#Accessing vector elements using position
u <- t[c(3,1,7)]
print(u)
v<- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)] # Accessing vector elements using logical indexing
print(v)
y <- t[c(1,0,0,0,0,0,7)]# Accessing vector elements using 0/1 indexing.
print(y)

#Vector Manipulation
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



