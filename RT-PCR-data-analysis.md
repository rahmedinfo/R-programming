# Table of Contents
- [Quality Assessment](#qualityassessment)
  - [Amplification Efficiency](#amplificationefficiency)
  - [Standard Curve](#standard_curve)




# Required Packages and Library
```
install.packages('pcr')
library(pcr)
library(ggplot2)
install.packages('cowplot')
library(cowplot)
library(dplyr)
install.packages('xtable')
library(xtable)
install.packages('readr')
library(readr)
install.packages('writexl')
library("writexl")
install.packages("xlsx")
library(xlsx)
```

# Quality Assessment (pcr_assessd) <a name="qualityassessment"></a>
#===========================================================================

## Export a data frame or r data file into excel file
```
write_xlsx(ct3,"E:/THESIS/RT PCR Data Analysis/CT3.xlsx")
```

## Reading CT3 xlsx/csv file from directory
**ekhane ct3 or table 1 data use kora hoise - ei table a every ng amount of sample koto ct value dey tar average value deya ase**
```
ct3=read.xlsx(file="CT3.xlsx", sheetIndex = 1)
```

## Make a vector of RNA amounts
**ekhane each ng amount of sample er ct value 3 times kore deya ase data file er moddhe, setai deya ase, tar mane holo ct3 excel er c_myc er first 3 ta ct value er jonno 1 ng RNA diye pcr run deya hoisilo, and setar ct value evabe prottek tar khetre hobe**
```
amount <- rep(c(1 , .5 , .2 , .1 , .05 , .02 , .01 ), each = 3)
```

## Calculate amplification efficiency <a name="amplificationefficiency"></a>
```
res1 <- pcr_assess(ct3,
                  amount = amount ,
                  reference_gene = 'GAPDH',
                  method = 'efficiency')
```

## Exporting C_MYC amplification efficiency file 'res1'
```
write_xlsx(res1, "E:/THESIS/RT PCR Data Analysis/efficiency_of_c_myc.xlsx")
```

## Making Amplification efficiency plot of c_myc gene
```
gg <- pcr_assess(ct3,
                 amount = amount,
                 reference_gene = 'GAPDH',
                 method = 'efficiency',
                 plot = TRUE)

gg + 
  labs(x = 'log10 amount', y= 'Delta Ct') +
  theme(strip.background = element_blank(),
        strip.text = element_blank())
```

## Calculating Standard Curve <a name="standard_curve"></a>
```
res2 <- pcr_assess(ct3,
                  amount = amount,
                  method = 'standard_curve')
```

## Exporting Standard curv of c_myc and GAPDH 'res2'
```
write_xlsx(res2, "E:/THESIS/RT PCR Data Analysis/standard_curv.xlsx")
```

## Retain curve information
```
intercept <- res2$intercept
slope <- res2$slope
```

## Standard curve of c_myc and GAPDH
gg <- pcr_assess(ct3,
                 amount = amount,
                 method = 'standard_curve',
                 plot = TRUE)
gg + 
  labs(x = 'Log 10 amount', y = 'CT value')

#End of Quality Assessment====================================================== 


# Start of Analysis Model (pcr_analyze)
#===========================================================================

#Exporting ct1 r data file into xlsx file format
write.xlsx(ct1, "E:/THESIS/RT PCR Data Analysis/Pcr data analysis with R/CT1.xlsx")

#Reading the CT1 xlsx file
ct1=read.xlsx(file="CT1.xlsx", sheetIndex = 1)

#Add Grouping Variable
# ekhane first 6 ta ct value holo brain er and last 6 ta holo kidney er
group_var <- rep(c('brain', 'kidney'), each = 6)

#Calculate all values and errors in one step
## mode == 'seperate_tube' default
res3 <- pcr_analyze(ct1,
                    group_var = group_var,
                    reference_gene = 'GAPDH',
                    reference_group = 'brain')

#Exporting res3 (Double delta CT method (separate tubes))
write.xlsx(res3, "E:/THESIS/RT PCR Data Analysis/Pcr data analysis with R/Double delta CT method (separate tubes).xlsx")

#Calculate Stardard amounts and errors
res4 <- pcr_analyze(ct1,
                    group_var = group_var,
                    reference_gene = 'GAPDH',
                    reference_group = 'brain',
                    intercept = intercept,
                    slope = slope,
                    method = 'relative_curve')

#Exporting res4 file
write.xlsx(res4, "E:/THESIS/RT PCR Data Analysis/Pcr data analysis with R/Standard curve method(seperate tube).xlsx")

#Exporting ct2 r data file into xlsx format
write.xlsx(ct2, "E:/THESIS/RT PCR Data Analysis/Pcr data analysis with R/CT2.xlsx")
#Reading xlsx ct2 file
ct2=read.xlsx(file="CT2.xlsx", sheetIndex = 1 )

#Calculate all values and errors in one step
## mode== 'same_tube'
res5 <- pcr_analyze(ct2,
                    group_var = group_var,
                    reference_gene = 'GAPDH',
                    reference_group = 'brain',
                    mode = 'same_tube')
#Exporting res5 file
write.xlsx(res5, "E:/THESIS/RT PCR Data Analysis/Pcr data analysis with R/Double delta CT method (same tube).xlsx")

#Relative expression of c-myc using double delta CT
gg1 <- pcr_analyze(ct1,
                   group_var = group_var,
                   reference_gene = 'GAPDH',
                   reference_group = 'brain',
                   plot = TRUE,)+
                   labs(x = '', y = 'Relative mRNA expression')+
                     ggtitle(label = 'Seperate Tubes')

gg2 <- pcr_analyze(ct2,
                   group_var = group_var,
                   reference_gene = 'GAPDH',
                   reference_group = 'brain',
                   mode = 'same_tube',
                   plot = TRUE) +
                  labs(x='', y='Relative mRNA expression')+
                  ggtitle(label = 'Same Tubes')
plot_grid(gg1, gg2)  

## make a data.frame of two identical columns
pcr_hk <- data.frame(
  GAPDH1 = ct1$GAPDH,
  GAPDH2 = ct1$GAPDH
)
## add grouping variable
group_var <- rep(c('brain', 'kidney'), each = 6)

# delta_ct method
## calculate caliberation
res6 <- pcr_analyze(pcr_hk,
                   group_var = group_var,
                   reference_group = 'brain',
                   method = 'delta_ct')

#Exporting this delta_ct method
write.xlsx(res6, "E:/THESIS/RT PCR Data Analysis/Pcr data analysis with R/delta_ct.xlsx")

#GAPDH relative fold change using delta CT
pcr_analyze(pcr_hk,
            group_var = group_var,
            reference_group = 'brain',
            method = 'delta_ct',
            plot = TRUE)+
  theme(legend.position = 'top',
        legend.direction = 'horizontal')+
  labs(x='', y='Relative fold change')
#===============================================================================
#Significance Testing (pcr_test)
#Loading ct4 r data file and exporting into xlsx file format
write.xlsx(ct4, "E:/THESIS/RT PCR Data Analysis/Pcr data analysis with R/ct4.xlsx")
#Reading ct4 xlsx file
ct4=read.xlsx(file = "ct4.xlsx", sheetIndex = 1)

#make group variable
group <- rep(c('control', 'treatment'), each=12)
#Test using t-test
test1 <- pcr_test(ct4,
                 group_var= group,
                 reference_gene = 'ref',
                 reference_group= 'control',
                 test = 't.test')
#Exporting t-test file test1
write.xlsx(test1, "E:/THESIS/RT PCR Data Analysis/Pcr data analysis with R/t-test1.xlsx")
#Test using wilcox.test
test2 <- pcr_test(ct4,
                  group_var = group,
                  reference_gene = 'ref',
                  reference_group = 'control',
                  test = 'wilcox.test')
#Exporting wilcox test file to excel
write.xlsx(test2, "E:/THESIS/RT PCR Data Analysis/Pcr data analysis with R/wilcox-test.xlsx")
#Test using lm
test3 <- pcr_test(ct4,
                  group_var = group,
                  reference_gene = 'ref',
                  reference_group = 'control',
                  test = 'lm')
#Exporting the lm test file
write.xlsx(test3, "E:/THESIS/RT PCR Data Analysis/Pcr data analysis with R/lm-test.xlsx")
































