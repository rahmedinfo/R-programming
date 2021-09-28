
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
# Recoding a dataframe using %in% operator
## Create a new dataframe
```
my_basket = data.frame(ITEM_GROUP = c("Fruit","Fruit","Fruit","Fruit","Fruit","Vegetable","Vegetable","Vegetable","Vegetable","Dairy","Dairy","Dairy","Dairy","Dairy"), 
                       ITEM_NAME = c("Apple","Banana","Orange","Mango","Papaya","Carrot","Potato","Brinjal","Raddish","Milk","Curd","Cheese","Milk","Paneer"),
                       Price = c(100,80,80,90,65,70,60,70,25,60,40,35,50,60),
                       Tax = c(2,4,5,NA,2,3,NA,1,NA,4,5,NA,4,NA))
```

## Lets create a new column "IS_DAIRY". If the dairy name is milk, curd, cheese, paneer then it will say YES, and if the Item group name is Dairy it will say YES, otherwise it will say NO. 
```
my_basket1=within(my_basket,{
  IS_DAIRY='NO'
  IS_DAIRY[ITEM_NAME %in% c('Milk',"Curd","Cheese","Paneer")]='YES'
  IS_DAIRY[ITEM_GROUP %in% c("Dairy")]='YES'
  IS_DAIRY[ITEM_GROUP %in% c("Fruit","Vegetable")]='NO'
  
})
```
## Another way to do the same recoding in a dataframe. Recoding a new column or variable with condition
```
my_basket %>%
  mutate(IS_DAIRY = ITEM_NAME %in% c("Milk","Curd","Cheese","Paneer", "Apple"),
         IS_DAIRY = ITEM_GROUP %in% c("Dairy"),
         IS_DAIRY = if_else(IS_DAIRY == TRUE, "YES", "NO")) -> my_basket2
```
