install.packages("tidyverse")
installed.packages("readr")
library(tidyverse)
library(dplyr)
library(readr)
myfile <- read_csv("U133AGNF1B.gcrma.avg.csv")

#EXTRACTING ROWS
myfile2<-myfile[c(1, 3, 5, 7, 22, 45), ]

#EXTRACTING ROWS WOTH DIFFERENT APPROACH
myfile3<-myfile[c(1:5, 44, 200:300, 898), ]

#FILTER FUNCTION TO EXTRACT A SPECIFIC CULUMN 
myfile4<-filter(myfile, X1== "1431_at")

#FILTER MULTIPLE ROWS BY USING THEIR COLUMN NAMES
myfile5 = filter(myfile, X1 %in% c("1007_s_at", "1053_at", "117_at"))

#SELECTING ROWS USING SLICE FUNCTIONS
myfile6 <- myfile %>% slice(10:50)

#DELETING ROWS BY THEIRS ROW NUMBERS
myfile7<- myfile[-c(1:50), ]

