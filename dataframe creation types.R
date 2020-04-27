#01-Create New Dataframe-------------------------------------------------------------------------
df= data.frame(col1=letters[1:5], col2=rep("r", 5),col3= 1:5)
row.names(df) <- c("abc", "abd", "acb", "cbd", "cda")
#02-Create Data Frame-------------------------------------------------------------------------------
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
# Create the second data frame/ To add more rows permanently to an existing data frame, we need to bring in the new rows
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
emp.finaldata <- rbind(emp.data,emp.newdata) # Bind the two data frames.
print(emp.finaldata)

