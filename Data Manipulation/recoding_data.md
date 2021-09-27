
# Manupulating dataset starwars
This document covers how to recode, mutate, filter a starwars dataset and how to add variable with if_else function

## Loding requried library
```
library(tidyverse)
```
## Loading data
```
starwars
```


```
# ei variable gula niye sw data arrange hobe
sw = starwars %>%
  select(name, height, mass, sex) %>% 
  rename(weight = mass) %>%  # mass variable k weight te rename korlam
  na.omit() %>%
  
# Height variable er value cm a deya ase, eta ke meter a nilam
  mutate(height = height / 100) %>% 
  
# filter = ei function diye only male and female value gula k filter kore nilam  
  filter(sex == "male" |             
         sex == "female") %>%
# or you can write , both function does the same thing= filter( sex %in% c("male", "female"))
 
# erpor mutate function diye male k M and female k F diye express korlam 
  mutate(sex = recode(sex, 
                      male = "M",
                      female = "F")) %>%
  
# ekhane ami notun ekta variable create koral size nam diye, ekhane height jodi 1 theke beshi hoy and weight jodi 75 theke beshi hoy tahole eta true or Big hobe and jodi er cheye kom hoy tahole false or Small hobe
  mutate(size = height > 1 & weight > 75,
         size = if_else(size == TRUE, "Big", "Small"))
 ``` 
