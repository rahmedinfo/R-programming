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
require(gapminder)



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
#---------------------## DATA READING AND WRITING ##------------------------------------------
data("starwars")
#With Fixed directory
write.table(starwars, file = "new_file.csv")
head(gapminder)
#With directory
write.table(gapminder, "I:/Bioinformatics/Project 01/mygapminder_file.csv", row.names = F,
            quote = F, sep = "|" )
write_csv(gapminder, "new_file001.csv")
#This function is best for read and write
myfile<-read_csv(file = "new_file001.csv")

#If you use this "write.table" function it will create some problem, therefore use alwayse the upper one. 
mydata<-read.table(file = "new_file001.csv", header = TRUE, sep = "|")
#Another data reading approaches
mydata<-read.table(file.choose(), header = TRUE,  )
-------------------------------------------
#Reading and writing data for xlsx file
install.packages("xlsx")
library(xlsx)
library(gapminder)
write.table(gapminder, file = "xlsxfile.xlsx")
newfile=read.table(file="xlsxfile.xlsx",)



