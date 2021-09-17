#install dplyr
install.packages("dplyr")
install.packages("gapminder")
#load libraries
library(dplyr)
library(gapminder)
?dplyr

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



#EXTRACT COLUMN BY SELECT FUNCTION
select(gapminder, country)
select(gapminder, country, continent)
select(gapminder, -country)
select(gapminder, -country, -continent)

#GET COLUMNS BY PARTIAL MATCHING OF COLUMN NAMES
select(gapminder, starts_with("c"))
select(gapminder, ends_with("p"))
select(gapminder, contains("co"))

#EXTRACT ROW BY FILTER FUNCTION
temp = filter(gapminder, country != "Afghanistan")
temp = filter(gapminder, country == "Afghanistan")
temp2 = filter(gapminder, country %in% c("Afghanistan", "Australia"))
temp3 = filter(gapminder, year >= 1952, lifeExp >=40)
