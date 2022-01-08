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
# CHECK BIOCONDUCTOR VERSION
tools:::.BioC_version_associated_with_R_version()

====================================================

# HOW TO GET HELP FOR ANY PACKAGES? HOW TO SEE R DOCUMENTATION FOR A PACKAGE? 
# HOW TO BROWS VIGNETTES
?pacakgename
help(packagename)
browseVignettes("packagename")
?BSgenome
help(BSgenome)
browseVignettes("BSgenome")
help(package="GenomicRanges", help_type = "html")
==============================================================

# WHEN YOU WANT TO KNOW ABOUT A PARTICULAR FUNCTION, JUST DO THIS FILLOWING WAY-
packagesname::functionname
===========================================================






