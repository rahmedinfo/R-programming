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
# Loading Gapminder dataset and extract data with condition applying on each variable

```
#install dplyr
install.packages("dplyr")
install.packages("gapminder")
#load libraries
library(dplyr)
library(gapminder)

head(gapminder)
write.xlsx(gapminder, file = "E:/Bioinformatics/GitHub/R-programming/Data Wrangling/gapminder.xlsx")
gapminder = read.xlsx(file = "gapminder.xlsx",header = TRUE,  sheetIndex = 1)

str(gapminder)
attach(gapminder)

# Get mean value of each variable 
mean(gdpPercap)
mean(lifeExp)

#Find liefexp more thant 40 and assign into new dataframe
gapminder2 = subset(gapminder, lifeExp > 40)

# Applying conditions to each column and row and assigning them into new dataframe
gapminder3 = subset(gapminder, lifeExp > 40 & year > 2000 & continent == "Asia")
gapminder4 = subset(gapminder, lifeExp > 40 & year > 2000 & continent == "Asia" & country == "Bangladesh")
data4 = subset(gapminder, year > 2000, select = c(country, lifeExp, year))
data5 = subset(gapminder, year < 2000, select = -pop)
```


















