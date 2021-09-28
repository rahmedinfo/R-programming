# Lets learn  "filter", "select", and "mutate" functions

## Loding requried package
```
library(tidyverse)
```

## it will show you all the existing data in R
```
data()
```

## Load starwars data
```
starwars
view(starwars)
```


**Here we select 4 variable from starwars dataset. Then filter only human data. Then remove NA values with "na.omit()" funciton. Then convert height value from cm to m. Then create new variable for BMI with mutate functions. Then group the data by sex and get average BMI with mutate functions**
```
starwars %>%
  select(sex, mass, height, species) %>%
  filter(species == "Human") %>%
  na.omit() %>%
  mutate(height = height / 100) %>%
  mutate(BMI = mass / height^2) %>%
  group_by(sex) %>%
  summarise(Average = mean(BMI))
```

# How to use **'filter'** function?

## Loading required packages and library
```
install.packages("dplyr")
library(dplyr)
install.packages("hflights")
library(hflights)
View(hflights)
```

## 'filter' functions to filter Distance variable more than 3000
```
filter(hflights, Distance > 3000) -> flight1
range(flight1$Distance)
```

## Same function can be run with pipe operator, both does the same thing
```
hflights %>%
  filter( Distance > 2000) -> flight2
```


## Now filter with '%in%' operator
** it will filter just OO, AA, and US data. That mean it will show only those row where UniqueCarrier value is OO, AA, and US, other than that now row will be appear here on flight1 dataframe.**

```
filter(hflights, UniqueCarrier %in% c("OO", "AA", "US")) -> flight1
table(flight1$UniqueCarrier)
```



filter(hflights, TaxiIn+TaxiOut>AirTime)->flight1

filter(hflights, DepTime<500|ArrTime>2200)->flight1
filter(hflights,Dest=="JFK" & Cancelled==1 )->flight



# How to use **'select'** Function?
## Using Select function to extract some specific variable and render into new dataframe 'sw'
```
hflights %>%
  select(Year, Month, UniqueCarrier, Distance, TaxiIn, TaxiOut) -> sw
```




# How to use **'mutate'** function?
mutate(hflights,TotalTaxi=TaxiIn+TaxiOut)->flight2