# Heatmap. 
When to use: Heat Map uses intensity (density) of colors to display relationship between two or three or many variables in a two 
dimensional image. It allows you to explore two dimensions as the axis and the third dimension by intensity of color.

From our dataset, if we want to know cost of each item on every outlet, we can plot heatmap as shown below using three variables Item MRP,
Outlet Identifier & Item Type from our mart dataset. Credit: R Bloggers

## Install pheatmap package 
```
install.packagesa("pheatmap")
library(pheatmap)
library(ggplot2)
?pheatmap
 ```
## Make a Datafrme or Matrix by using your desired Data
```
head(mtcars)
class(mtcars)
 ```
## You have to scaling first before you create heatmap
```
df=scale(mtcars)
pheatmap(df, 
         border_color = "blue",
         cellwidth = 30,
         cluster_rows = T,
         cluster_cols = T,
         cutree_rows = 2,
         cutree_cols = 1,
         show_rownames = T,
         fontsize = 9,
         display_numbers = T,
         main = "mtcars heatmap intro"
         )
```		 
![Heatmap 01](https://github.com/r1ridwan/R-programming/blob/master/Pictures/Pheatmap%2001.png "Heatmap")

## What will happen if we don't scale

pheatmap(mtcars )

![Heatmap 02](https://github.com/r1ridwan/R-programming/blob/master/Pictures/Pheatmap%2002.png "Heatmap")

## After Scalling

pheatmap(mtcars, scale = "column")

![Heatmap 03](https://github.com/r1ridwan/R-programming/blob/master/Pictures/Pheatmap%2003.png "Heatmap")

pheatmap(mtcars, scale = "row")

![Heatmap 04](https://github.com/r1ridwan/R-programming/blob/master/Pictures/Pheatmap%2004.png "Heatmap")