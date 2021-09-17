# Getting a subset of a data structure
***If You want to do get a subset of the elements of a vector, matrix, or data frame, the do the follwoing***

```
# a sample vector
v = c(1,4,4,3,2,2,3)
subset (v, v<3)
subset (v, v>3)

# Another vector
t <- c("small", "small", "large", "medium")
subset(t, t!="small")
subset(t, t!="large")
```

With a data frame
```
# A sample data frame
data = read.table(header = T, text = '
  subject sex size
      1     M   7
      2     F   6
      3     F   9
      4     L   11
      5     M   12')
subset(data, subject < 3)
data[data$subject < 3, ]

# Assigning data frame to new data2 frame with condition
data2 = subset(data, subject < 3)
data3 = data[data$subject > 3, ]

# Subset of particular rows and columns
subset(data, subject < 3, select = -subject)
subset (data, subject < 3, select = c(sex, size))

# Assging to new data frame
data4 = subset(data, subject > 3, select = c(sex, size))

subset(data, subject<3, select=c(sex:size))
data[data$subject < 3, c("sex", "size")]

# Adding condition to each column to extract data 
data5 = subset(data, subject > 3 & size > 6 & sex=="M")

# Logical AND of two conditions
subset(data, subject <3 $ sex=="M")
data[data$subject < 3 & data$sex=="M", ]

# Logical OR of two conditions
subset(data, subject < 3 | sex=="M")
data[data$subject <3 | data$sex == "M", ]

# Condition based on transformed data
subset(data, log2(size) > 3)
data[log2(data$size) > 3, ]

# Subset if elements are in another vector
subset(data, subject %in% c(1,3))
data[data$subject %in% c(1,3), ]
```
# [How to Extract a Subset of a Vector in R](https://www.dummies.com/programming/r/how-to-extract-a-subset-of-a-vector-in-r/?keyword=vector%20in%20R&index=2&isSearch=1)






