#Get Current Working Directory
getwd()
#Set New Working Directory
setwd("I:/Bioinformatics/Scripts")
=========================================
#If you want to check what things you have done througout the full session at a particular time, you should use 
sessionInfo()
==================================================
#TO SEE THE STRUCTURE OF DATA
str(datafilename)
=====================================================
#TO SEE THE NUMBER OF ROWS IN DATA
nrow(datafilename)
==================================================
# CHECK  VERSIONS (Bioconductor, Packages, R)
R.version
version()
packageVersion("BiocManager")
packageVersion("dplyr")
====================================================
# HOW TO GET HELP FOR ANY PACKAGES? HOW TO SEE R DOCUMENTATION FOR A PACKAGE?
?pacakgename
help(packagename)
browseVignettes("packagename")
?BSgenome
help(BSgenome)
browseVignettes("BSgenome")
==============================================================
