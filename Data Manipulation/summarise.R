library(tidyverse)
library(dplyr)
library(ggplot2)
#Gapminder Datasets: it tracks economic and social indicators like life expectancy and the GDP per capita of countries over time
library(gapminder)

#Datasets
gapminder

#summarize function--------------------------------------------------------------
#average life expectancy across all countries and years in the dataset
gapminder %>%
  summarise(meanlifeExp = mean(lifeExp))
#averages lifeExp in a particular year, such as 2007 and you want to find the total population in that year
gapminder %>%
  filter(year == 2007, continent == "Asia") %>%
  summarise(meanlifeExp = mean(lifeExp),
            totalpop = sum(pop))

#median: the median represents the point in a set of numbers where half the numbers are above that point and half of the numbers are below.
gapminder %>%
  summarize (medianlifeExp = median(lifeExp))

#max
gapminder %>%
  filter(year == 1957) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))

#Lets find each continent min population, maximum lifeExp, and average GdpPercap
gapminder %>%
  group_by(continent) %>%
  summarize(min_pop = min(pop),
          max_lifeExp = max(lifeExp),
          average_gdpPercap = mean(gdpPercap))
