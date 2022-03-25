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
# KEYBOARD SHORTCUT
ctrl + shift + M = Pipe operator (%>%)
alt + - = Assignment operator (<-)
ctrl + shift + R = Sectioncreate hobe
===================================================================
# Install packages from source file and by downloading the packages file
# download the source file
download.file(
"https://github.com/al2na/methylKit/releases/download/v0.99.2/methylKit_0.99.2.tar.gz",
               destfile="methylKit_0.99.2.tar.gz")
# install the package from the source file
install.packages("methylKit_0.99.2.tar.gz",
                 repos=NULL,type="source")
# delete the source file
unlink("methylKit_0.99.2.tar.gz")





