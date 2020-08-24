#install dplyr
install.packages("dplyr")
install.packages("gapminder")
#load libraries
library(dplyr)
library(gapminder)
?dplyr
head(gapminder)

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
