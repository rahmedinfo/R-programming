#01-Create New Dataframe-------------------------------------------------------------------------
df= data.frame(col1=letters[1:5], col2=rep("r", 5),col3= 1:5)
row.names(df) <- c("abc", "abd", "acb", "cbd", "cda")
=========================================================================================================================================
#02-Create Data Frame-----
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
print(emp.data)
str(emp.data) #Get the structure of the data frame.
summary(emp.data) #Get the summary of dataframe
print(summary(emp.data)) #Print the summary.
result <- data.frame(emp.data$emp_name,emp.data$salary)  #Extract Specific columns.
print(result)
result <- emp.data[1:2,] #Extract first two rows.
print(result)
result <- emp.data[,1:3] # extract first 3 columns with all the rows
print(result)
result <- emp.data[c(3,5),c(2,4)] # Extract 3rd and 5th row with 2nd and 4th column.
print(result)
# New Colum Addition/ Add the "dept" coulmn.
emp.data$dept <- c("IT","Operations","IT","HR","Finance")
v <- emp.data
print(v)

#Create a Vector called DESIGNATION and Adding as a New Colum
emp.data$designation<-c("Entry level","Manager","Technical specialist","Entry level","Senior Level")
X<-emp.data
#Or By using cbind() function
designation <- c ("Entry level","Manager","Technical specialist","Entry level","Senior Level")
emp.table<-cbind(emp.data,designation)

#Create the second data frame/ To add more rows permanently to an existing data frame, we need to bring in the new rows
#in the same structure as the existing data frame and use the rbind() function.
#In the example below we create a data frame with new rows and merge it with the existing data frame to create the final data frame.
emp.newdata <- 	data.frame(
  emp_id = c (6:8), 
  emp_name = c("Rasmi","Pranab","Tusar"),
  salary = c(578.0,722.5,632.8), 
  start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
  dept = c("IT","Operations","Fianance"),
  stringsAsFactors = FALSE
)
emp.finaldata <- rbind(emp.data,emp.newdata) # Bind the two data frames using rbind()
print(emp.finaldata)
====================================================================================================================================
#03-Create New DAtaframe----------
students_df<-data.frame(
  Subjects=c("Math", "English", "Bangla", "Science", "Sociology", "Islam" ),
  Percentage=c("90", "80", "97", "100", "87", "99")
)
row.names(students_df)<-c("A", "B", "C", "D", "E", "F")
names(students_df)<-c("Course","Score") #Rename the data frame
nrow(students_df) # number of rows in data frame
ncol(students_df) # number of columns in data frame.
dim(students_df) # Dimension of data frame
students_df[1,2] # Access first row and second column of the data frame
students_df[,1] # Access all the elements of the first column

=====================================================================================================================
#-------------04 MELTING AND CASTING IN DATAFRAME-------------------------------------
install.packages("MASS")
library(MASS)
install.packages("reshape2")
library(reshape2)
install.packages("reshape")
library(reshape)

shipdata<-(head(ships,n=10))
molten.ships <- melt(shipdata, id = c("type","year")) #Melting function
recasted.ship <- cast(molten.ships, type+year~variable,sum) #Casting function
=====================================================================================================================
#Apply Function in R – apply vs lapply vs sapply vs mapply vs tapply vs rapply vs vapply
#---05 Create DataFrame------------
#Where the first Argument X is a data frame or matrix
#Second argument 1 indicated Processing along rows .if it is 2 then it indicated processing along the columns
#Third Argument is some aggregate function like sum, mean etc or some other user defined functions.
Age<-c(56,34,67,33,25,28)
Weight<-c(78,67,56,44,56,89)
Height<-c(165, 171,167,167,166,181)

BMI_df<-data.frame(Age,Weight,Height)
apply(BMI_df,1,sum)# row wise sum up of dataframe using apply function in R
apply(BMI_df,2,sum)# column wise sum up of dataframe using apply function in R
apply(BMI_df,2,mean)# column wise mean of dataframe using apply function in R
#PAGE LINK: http://www.datasciencemadesimple.com/apply-function-r/
====================================================================================================
# CREATE A DATAFRAME OF THREE GENES WITH DIFFERENT VALUES
data = data.frame(
  C1 = c(1887.7, 9.9, 236.4), C2=c(8.1, 8.9, 8.4), C3=c(1799.6, 7.7, 220.9), 
  P1 = c(800.2, 400.1, 127.8), P2 = c(785.3, 389.3, 156.3), P3 = c(800.4, 403.9, 140.2)
)
row.names(data) <- c( "TP53", "SEZ6L", "MICALL1")
=====================================================================================================
