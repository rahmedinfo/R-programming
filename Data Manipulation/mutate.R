library(tidyverse)
library(dplyr)
library(ggplot2)
#Gapminder Datasets: it tracks economic and social indicators like life expectancy and the GDP per capita of countries over time
library(gapminder)

#Datasets
gapminder

##mutate functions---------------------------------------------------------
gapminder %>%
  mutate(pop = pop / 1000000)
#add new variable
gapminder %>%
  mutate(gdp = pop * gdpPercap)

#Find Highest total gdp
gapminder %>%
  mutate(gdp = pop * gdpPercap) %>%
  filter(year == 2007) %>%
  arrange(desc(gdp))









