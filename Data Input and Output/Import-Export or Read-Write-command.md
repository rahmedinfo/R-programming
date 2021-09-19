# Tble of Content
- [Requried Packages to be installed](#pacakgess)
- [DATA Export, Output or write command ](#dataexport)
- [Data Import, Input, or reading data](#dataimport)
- [Loading a data file from the internet](#datafrominternet)
- [How to delete row or columns from a dataset?](#rowcoldelelte)
- [Treating strings as factors or characters](#conversiondata)
- [Fixed-width text files- Remove extra spaces](#spaceremove)
- [Add spaces to columns in text formate data file](#addspace)
- [Getting Fixed Column Data Into R with 'read.fwf()'](#fixcolumdata)
- [Reading Excel Spreadsheets into R From The Clipboard](#redingfromclipboard)
 


# Requried Packages to be installed <a name="pacakgess"></a>
```
#tidyverse istall require updated version of R---------
#install.packages("tidyverse")
library(tidyverse)
#install.packages("stringi")
library(stringi)
install.packages("stringr")
library(stringr)
#install.packages("dplyr")
library(dplyr) #It is necessary for data read and write
#libraray and require are same function
install.packages('"gapminder"')
require(gapminder)
library(gapminder)
head(gapminder)
```

```
data<- read.csv("myfile.csv")
head(data)
tail(data)
names(data)
dim(data)
class(data)
str(data) #To see the structure of data
data[c(5,6,7,8,9),5] #(rows, coulums)
data[5:9,6] #(rows, colums)
data[-(4:1700),] #It will show all rows and colum except 4 to 1700
data[1,3] #it will show fist row and 3rd colum data
data[100,1] #it will show 100th row and 1st colum data
data[,5] #it will show entire colum
data[11,] #it will show just entire row
data$pop  #it will show the entire colum of it. 
data$continent  #it will show the entire colum of it. 
```


# DATA Export, Output or write command <a name="dataexport"></a>
```
data("gapminder")

#With Fixed directory and row.names=F command to avoid extra row in dataset
write.table(gapminder, file = "new_file.csv", row.names=F, sep = ",")

# Export as tab delimited  files
write.table(gapminder, file = "new_file_tabs.txt", row.names=F, sep = "\t")

# Export as space seperated values
write.table(gapminder, file = "new_file_space.txt", row.names=F, sep = " ")

# Export as csv file
write.csv(gapminder, file = "new_file2.csv", row.names = F)

#With custome directory
write.table(gapminder, "I:/Bioinformatics/Project 01/mygapminder_file.csv", row.names = F,
            quote = F, sep = "|" )

```

# Data Import, Input, or reading data <a name="dataimport"></a>
```
#This function is best for read and write
myfile<-read.csv(file = "new_file.csv")

#If you use this "write.table" function it will create some problem, therefore use alwayse the upper one. 
mydata<-read.table(file = "new_file001.csv", header = TRUE, sep = "|")

#Another data reading approaches, using 'file.choose()' will open a file chooser dialog window
mydata<-read.table(file.choose(), header = TRUE,  )

# Another method for importing tab delimited file
newda <- read.delim(file.choose(), header = T)
data2 <- read.table(file.choose(), header = T, sep="\t")

#Reading and writing data for xlsx file
install.packages("xlsx")
library(xlsx)
library(gapminder)
write.table(gapminder, file = "xlsxfile.xlsx")
newfile=read.table(file="xlsxfile.xlsx",)
```
# Loading a data file from the internet <a name="datafrominternet"></a>

```
data <- read.csv("http://www.cookbook-r.com/Data_input_and_output/Loading_data_from_a_file/datafile.csv", header = F)

#Manually Assign header names
names(data)<- c("First", "Last", "Sex", "Number")
```
# How to delete row or columns from a dataset? <a name="rowcoldelelte"></a>
```
# Delete the row from a dataframe- first argument for row and 2nd for columns
data2 <- data[-c(1), ]

# Delete the column if you put only one argument it will decide only for column and it will deleted the column
data3 <- data2[-c(3)]

# Another way to decide
row_to_keep = c( FALSE, TRUE, TRUE, TRUE)
myData = data [row_to_keep,]
```
# Treating strings as factors or characters.<a name="conversiondata"></a> 
By default, strings  the data are converted to factors. If you load the data below with read.csv, then all the text columns will be treated as factors, even though it might make more sense to treat some of them as strings. If you don't want your data to be treated as factor instead of string then use the following command.
```
data <- read.csv("new_file.csv", stringsAsFactors = FALSE)

# You might have to convert some columns to factors
data$country <- factor(data$country)
class(data$country)

```
#### Another Method for converting factor to character Or character to factor
```
# Load data file
data <- read.csv(file="new_file.csv")

# Check the class of a sepcific variable
class(data$continent)
[1] "character"

# if you want to convert this variable from character to factor then use the following command
data$continent <- as.factor(data$continent)

#Check the class now
class(data$continent)
[1] "factor"

# If you want to convert a variable form factor to character then use the follwoing command
data$continent <- as.character(data$continent)
class(data$continent)
[1] "character"

# Another method: convert columns factor to character or character to factor
stringcols <- c("country", "continent")
data[stringcols] <- lapply(data[stringcols], as.character)

class(data$country)
```
# Fixed-width text files- Remove extra spaces. <a name="spaceremove"></a>
 Suppose your data has fixed-width columns, like this:
```
First     Last  Sex Number
 Currer     Bell    F      2
    Dr.    Seuss    M     49
    ""   Student   NA     21
    
#One way to read it in is to simply use read.table() with strip.white=TRUE, which will remove extra spaces.
f1 = read.table("clipboard", header = TRUE, strip.white = TRUE)
```
# Add spaces to columns in text formate data file. <a name="addspace"></a>
However, your data file may have columns containing spaces, or columns with no spaces separating them, like this, where the scores column represents six different measurements, each from 0 to 3.
```
# this is data txt
subject  sex  scores
   N  1    M  113311
   NE 2    F  112231
   S  3    F  111221
   W  4    M  011002
   
```
In this case, you may need to use the read.fwf() function. If you read the column names from the file, it requires that they be separated with a delimiter like a single tab, space, or comma. If they are separated with multiple spaces, as in this example, you will have to assign the column names directly.

#### Getting Fixed Column Data Into R with 'read.fwf()'. <a name="fixcolumdata"></a>
when you have no space in your column data use the following command

```
# Width of the columns. -2 means drop those columns
# 'Skip=1' - skip the first line (contains header here)
# Strip out leading and trailing whitespace when reading each
f3 = read.fwf("New Text Document.txt", 
         widths = c(7, 5, -2, 1, 1, 1, 1, 1, 1),
         skip = 1,
         col.names = c("subject", "sex", "s1", "s2", "s3", "s4", "s5", "s6"),
         strip.white=TRUE)

```
# Reading Excel Spreadsheets into R From The Clipboard. <a name="redingfromclipboard"></a>
If you have a spreadsheet open, you can actually copy the contents to your clipboard and import them quickly into R. To do this, you can either use the readClipboard() or read.table() functions:
```
readClipboard()
```










