library(tidyverse)
library(dplyr)
library(ggplot2)
#Gapminder Datasets: it tracks economic and social indicators like life expectancy and the GDP per capita of countries over time
library(gapminder)

#Datasets
gapminder

#ggplot2 function for data visualization------------------------------------------------
gapminder_2007 <- gapminder %>%
  filter(year == 2007)
ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

#log scale
gapminder_1952 <- gapminder %>%
  filter(year == 1952)
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) +
  geom_point() +
  scale_x_log10()

ggplot(gapminder_1952, aes(x=pop, y=gdpPercap))+
  geom_point() +
  scale_x_log10() +
  scale_y_log10()

#additional aesthetics
filter(year == 1952)
ggplot(gapminder_1952, aes(x = gdpPercap, y = lifeExp, color = continent, size = pop)) +
  geom_point() +
  scale_x_log10()

#Faceting: divide your plot into subplots to get one smaller graph for each continent: Africa, the Americas, and so on. This is called faceting, and it's another powerful way to communicate relationships within your data.
ggplot(gapminder_1952, aes(x = pop, y = lifeExp, color = continent, size = gdpPercap )) +
  geom_point() +
  scale_x_log10() +
  facet_wrap(~ continent)

ggplot(gapminder, aes(x=gdpPercap, y=lifeExp, color=continent, size = pop)) +
  geom_point()+
  scale_x_log10()+
  facet_wrap(~ year)

#summarized data visualization
by_year <- gapminder %>%
  group_by(year) %>%
  summarise(meanlifeExp = mean(lifeExp),
            totalpop = sum(pop))

ggplot(by_year, aes(x= year, y=totalpop)) +
  geom_point()+
  expand_limits(y=0) #specified y-axis to start at zero

ggplot(by_continent, aes(x= year, y=totalpop, color = continent)) +
  geom_point()+
  expand_limits(y=0) #specified y-axis to start at zero

# Summarize medianGdpPercap within each continent within each year: by_year_continent
by_year_continent <- gapminder %>%
  group_by(continent, year)%>%
  summarize(medianGdpPercap = median(gdpPercap))

# Plot the change in medianGdpPercap in each continent over time
ggplot(by_year_continent, aes(x=year, y=medianGdpPercap, color = continent))+
  geom_point()+
  expand_limits(y=0)



##LIne plots------------------------------------------------
ggplot(by_year_continent, aes(x=year, y=medianGdpPercap, color = continent))+
  geom_line()+
  expand_limits(y=0)

#Bar Plots----------------------------------------
ggplot(by_year_continent, aes(x=year, y=medianGdpPercap, color = continent))+
  geom_col()+
  expand_limits(y=0)

#Histogram------------------------------------
ggplot(gapminder_2007, aes(x=lifeExp))+
  geom_histogram(binwidth = 5)

#Boxplots-----------------------------------
ggplot(gapminder_2007, aes(x=continent, y=lifeExp))+
  geom_boxplot()