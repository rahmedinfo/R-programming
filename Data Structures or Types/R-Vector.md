# Table of Contents
- [Combining Vectors](#comvector)
- [Single Element Vector](#singleelementvector)
- [Multiple Element Vector](#multiplevector)
- [Vector Using sequence (Seq.) operator](#seqvector)
- [Indexing into data structure](#indexingvector)
- [Vector Manipulation](#manipulatingvector)
- [Vector Recycling](#recyclingvector )
- [Vector Elements Sorting](#elementsortingvector)
- [Vector Arithmetics](#arthmeticvector)
- [Named Vector Members](#namedvector)


# Vector
Vectors are the most basic R data objects and there are six types of atomic vectors. They are **logical, integer, double, complex, character and raw**.
```
library(tidyverse)
typeof(letters)
typeof(1:12)
x <- list("a", "b", 1:10)
length(x)
```
#### [Details on this Link](https://www.tutorialspoint.com/r/r_vectors.htm)

# Combining Vectors <a name="comvector"></a>
***Vectors can be combined via the function c. For examples, the following two vectors n and s are combined into a new vector containing elements from both vectors.***
#### [Details on this link](http://www.r-tutor.com/r-introduction/vector/combining-vectors)
```
n= c(2, 3, 5) 
s= c("aa", "bb", "cc", "dd", "ee")
c(n,s)
c(s,n)
combined=c( s,  n)
print(combined)
```
***In the code snippet above, notice how the numeric values are being coerced into character strings when the two vectors are combined. This is necessary so as to maintain the same primitive data type for members in the same vector.***

# Single Element Vector <a name="singleelementvector"></a>
```
typeof("abc"){Atomic vector of type CHARACTER}
typeof(12.5){Atomic vector of type DOUBLE}
typeof(63L){Atomic vector of type INTEGER}
typeof(TRUE){Atomic vector of type LOGICAL}
typeof(2+4i){Atomic vector of type COMPLEX}
typeof(charToRaw('hello')){Atomic vector of type RAW}
```
# Multiple Element Vector <a name="multiplevector"></a>
```
v <- 5:13
print(v)
v <- 3.8:11.4
print(v)
```
# Vector Using sequence (Seq.) operator. <a name="seqvector"></a>
### Create vector with elements from 5 to 9 incrementing by 0.4
```
print(seq(5,9, by=0.4))
```

# Accessing Vector Element 
## Indexing into data structure.<a namn="indexingvector"></a>

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
 # Get the element at row 1, column 3
data[1, 3]
[1] 7
data[1, "size"]
[1] 7

# Get rows 1 and 2, and all columns
data[1:2, ]
data[c(1,2), ]

# Get rows 1 and 2, and only column 2
data[1:2, 2]
data[c(1,2), 2]

#Get rows 1 and 2, and only the columns named "sex" and "size"
data[1:2, c(2,3)]
data[c(1,2), c("sex", "size")]
data[c(1,2), c(2,3)]
```
### Indexing with a boolean vector
with the vector v from above
```
v <- c(1,4,4,3,2,2,3)
v > 2
v[v>2]
v[c(F,T,T,T,F,F,T)]
```
With the data frame from the above
```
data$subject <3
data[data$subject<3, ]
data[c(T, T, F, F), ]
# It is also possible to get the numeric indices of the TRUEs
which(data$subject < 3)
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
### Negative Indexing
***Unlike in some other programming languages, when you use negative numbers for indexing in R, it doesn't mean to index backward from the end. Instead, it means to drop the element at that index, counting the usual way, from the beginning.***
With the vector v from above
```
#Here is the vector again
v
[1] 1 4 4 3 2 2 3
#Drop the first element
v[-1]
[1] 4 4 3 2 2 3
# Drop the 4th element
v[-4]
[1] 1 4 4 2 2 3
#Drop the first three
v[-1:-3]
[1] 3 2 2 3
#Drop the just last element
v[-length(v)]
[1] 1 4 4 3 2 2
```
# Vector Manipulation <a name="manipulatingvector"></a>
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
# Vector Recycling <a name="recyclingvector"></a>
If two vector are unequal in length, then shorter vector will recyle to match the longer vector, here below the shorter vector is v2, and it recyle two time to match the longer cycle. 
```
v1<- c(3, 4, 5, 6, 7, 8, 9)
v2<-c(4, 11)# v2 becomes (4,11,4,11,4,11,4)
add.result<- v1+v2
print(add.result)
sub.result<-v1-v2
print(sub.result)
```
# Vector Element Sorting <a name="elementsortingvector"></a>
```
v<- c(3,8,4,5,0,11, -9, 304) or,
v <- c("Blue", "Red", "Yellow", "violet", "Green")
sort.result<- sort(v)
print(sort.result)
revsort.result<- sort(v, decreasing = TRUE)
revsort.result<- sort(v, decreasing = FALSE)
print(revsort.result)
```
# Vector Arithmetics <a name="arthmeticvector"></a>
```
For example, suppose we have two vectors a and b.
a = c (2, 3, 4, 5, 7)
b = c (4, 7, 8, 9, 10)
# We can multiply a and b vector with 5
5 * a
5 * b
# We can sum this two vector togther
a + b
# we can subtraction, multiplication and division of these two vector
a - b
a * b
a / b
```

# Named Vector Members <a name="namedvector"></a>
***We can assign names to vector members. For example, the following variable v is a character string vector with two members.***
```
v <- c("Mary", "Nishi")
names(v)= c("First", "Last")
v["First"]
v["Last"]
v[c("Last", "First")]
```

















