# Table of Content <a name="backtotop"></a>
- [Information about variables](#variableinfo)
- [How to check and extract a variable from a dataset](#chexvariable)


# Information about variables <a name="variableinfo"></a>
```
x <- 6
n <- 1:4
let <- LETTERS[1:4]
df = data.frame(n, let)
```
#### Information About Existence
```
# List currently defined variables
ls()
# Check if a variable named "x" exists
exists("x")
# Check if "y" exists
exists("y")
x
```
#### Information about size/structure
```
# Get information about structure
str(n)
str(df)
# Get the length of a vector
length(n)
# Length probably doesn't give us what we want here:
length(df)
# Number of rows
nrow(df)
#Number of columns
ncol(df)
# Get rows and columns
dim(df)
```
# How to check and extract a variable from a dataset <a name="chexvariable"></a>
#### Loading LungCapData file
```
LungCapData = read.xlsx(file="LungCapData.xlsx", sheetIndex = 1)

# Check structure of dataset
str(LungCapData)

# Getting names of this dataset 
names(LungCapData)

# Getting mean for Age variable
mean(Age)
> Error in mean(Age) : object 'Age' not found

# We have to use dollar sign to detect the variable on this dataset
mean(LungCapData$Age)

# Lets attach the data in R's memory
attach(LungCapData)

# Now we don't need to use dollar sign to detec variables
 mean(Age)
[1] 12.3269
mean(Height)
[1] 64.83628

# We can detach the data also
detach(LungCapData)
mean(Age)
Error: object 'Age' not found
```
#### Getting the type of variable with class command
```
# Attach the data again
attach(LungCapData)
names(LungCapData)
class(LungCap)
[1] "numeric"
 class(Age)
[1] "numeric"
 class(Height)
[1] "numeric"
 class(Smoke)
[1] "character"
 class(Gender)
[1] "character"
 class(Caesarean)
[1] "character"

# To find out what levels or categroy have on this character variable

# get the summary 
summary(LungCapData)
```

- [Back To Top](#backtotop)
