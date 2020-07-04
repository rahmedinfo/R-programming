# Genomic Data Analysis Series 
### Introduction to Bioconductor: Annotation and Analysis of Genomes and Genomic Assays

* [Bioconductor Installation](https://bioconductor.org/install/ "Install Bioconductor")

### Bioconductor installation
Previously biocLite was used to install any Bioconductor packages but Now we use **BiocManager::install("")**

So, keep remember **BiocManager::install("")** every time when install Bioconductor packages
```
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("Biobase")
BiocManager::install(c("GenomicFeatures", "AnnotationDbi"))
n
help.start()
library(GenomicRanges)
?GRanges

```
Package Help: help(package="GenomicFeatures")

Object Help
```
	class(6)
	?numeric
	?"numeric-class"
	
```
============================================================================================