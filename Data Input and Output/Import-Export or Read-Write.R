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

#-------------------------------------------------------
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
#----------------------------------------------------------
#--------------Import DAta from Excel-----------------
library(readr)
myfile <- read_csv("myfile.csv")
View(myfile)


# DATA Export or data output,or writing data 

data("gapminder")

#With Fixed directory and row.names=F command to avoid extra row in dataset
write.table(gapminder, file = "new_file.csv", row.names=F, sep = ",")

# Export as tab delimited  files
write.table(gapminder, file = "new_file_tabs.txt", row.names=F, sep = "\t")

# Export as space seperated values
write.table(gapminder, file = "new_file_space.txt", row.names=F, sep = " ")

# Export as csv file
write.csv(gapminder, file = "new_file2.csv", row.names = F)

#With directory
write.table(gapminder, "I:/Bioinformatics/Project 01/mygapminder_file.csv", row.names = F,
            quote = F, sep = "|" )


# Data Import, or Data Input, or reading data

#This function is best for read and write
myfile<-read.csv(file = "new_file.csv")

#If you use this "write.table" function it will create some problem, therefore use alwayse the upper one. 
mydata<-read.table(file = "new_file001.csv", header = TRUE, sep = "|")

#Another data reading approaches, using file.choose() will open a file chooser dialog window
mydata<-read.table(file.choose(), header = TRUE,  )

newda <- read.delim(file.choose(), header = T)
data2 <- read.table(file.choose(), header = T, sep="\t")

# Treating strings as factors or characters
#By default, strings  the data are converted to factors. If you load the data below with read.csv, 
#then all the text columns will be treated as factors, even though it might make more sense to treat some of them 
#as strings. If you don't want your data to be treated as factor instead of string then use the following command.

data <- read.csv("new_file.csv", stringsAsFactors = FALSE)
# You might have to convert some columns to factors
data$country <- factor(data$country)
class(data$country)
class(newda$country)

# Another Method for coverting factor to character Or character to factor

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

# Loading a file from the internet
data <- read.csv("http://www.cookbook-r.com/Data_input_and_output/Loading_data_from_a_file/datafile.csv", header = F)
# Manually Assign header names
names(data)<- c("First", "Last", "Sex", "Number")
# Delete the row from a dataframe- first argument for row and 2nd for columns
data2 <- data[-c(1), ]
# Delete the column if you put only one argument it will decide only for column and it will deleted the column
data3 <- data2[-c(3)]
# Another way to decide
row_to_keep = c( FALSE, TRUE, TRUE, TRUE)
myData = data [row_to_keep,]
-------------------------------------------
#Reading and writing data for xlsx file
install.packages("xlsx")
library(xlsx)
library(gapminder)
write.table(gapminder, file = "xlsxfile.xlsx")
newfil2e=read.table(file="xlsxfile.xlsx",)

# Fixed-width text files
# Suppose your data has fixed-width columns, like this:

# One way to read it in is to simply use read.table() with strip.white=TRUE, which will remove extra spaces.
f1 = read.table("clipboard", header = TRUE, strip.white = TRUE)

# Getting Fixed Column Data Into R with read.fwf(), when you have no space in your column data use the following command

f3 = read.fwf("New Text Document.txt", 
         widths = c(7, 5, -2, 1, 1, 1, 1, 1, 1),
         skip = 1,
         col.names = c("subject", "sex", "s1", "s2", "s3", "s4", "s5", "s6"),
         strip.white=TRUE)
f4 = read.fwf("New Text Document.txt", c(7,5,-2,1,1,1,1,1,1), header=TRUE, strip.white=TRUE)
readClipboard()
data5 = read.table(file = "clipboard")


























