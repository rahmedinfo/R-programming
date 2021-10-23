```
library(tidyverse)
```
# How to edit a data frame or rename a columns in data frame, or data frame manupulation, or how to manipulate a dataframe
### Now create a dataframe or you can load any dataset
```
my_data = data.frame(Metagenomics = c(12, 13, 14, 15, 67),
                     RNAseq = c(34, 46, 67, 65, 89),
                     Cancer_Genomics = c (23, 43, 86, 90, 80))
```

### Rename any column in a data frame or edit a column in any dataframe
```
my_data2 = my_data %>%
  rename(
    Microbiome = Metagenomics,
    RNAsequence = RNAseq,
    Cancer_Bioinformatics = Cancer_Genomics
  )
```

### get column names
```
colnames(my_data)
```

### Another way to rename or edit column names in dataframe
```
names(my_data2)[names(my_data2) == "Microbiome"] <- "Metagenomic"
names(my_data2)[names(my_data2) == "RNAsequence"] <- "RNAs"
names(my_data2)[names(my_data2) == "Cancer_Bioinformatics"] <- "Cancer"
```

















