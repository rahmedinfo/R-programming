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
# How to get Help for any Packages? How to see R documentation for a Packages?
?pacakgename
help(packagename)
browseVignettes("packagename")
?BSgenome
help(BSgenome)
browseVignettes("BSgenome")
==============================================================
