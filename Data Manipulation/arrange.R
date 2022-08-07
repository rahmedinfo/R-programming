library(tidyverse)
library(dplyr)
library(ggplot2)
#Gapminder Datasets: it tracks economic and social indicators like life expectancy and the GDP per capita of countries over time
library(gapminder)

#Datasets
gapminder

##arrange function--------------------------------------------------
#ascending order (lowest to highest)
gapminder %>%
  arrange(gdpPercap)
#Descending order (Highest to Lowest)
gapminder %>%
  arrange(desc(gdpPercap))
#Highest gdpPercap countries in 2007
gapminder %>%
  filter(year == 2007) %>%
  arrange(desc(gdpPercap))

#United States pupulation 
gapminder %>%
  arrange(pop) %>%
  filter(country == "United States")

#find Highest populations and lifeExp is greater than 50
gapminder %>%
  arrange(desc(pop)) %>%
  filter(lifeExp > 50)
gapminder %>%
  arrange(desc(pop)) %>%
  filter(lifeExp > 50, 
         country == "United States")
