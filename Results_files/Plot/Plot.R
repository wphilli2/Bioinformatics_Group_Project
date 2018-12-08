## Description: This R script sets hitcounts.txt (containing the protein name, the category (control 1 or 2 and obese 1 or 2) 
##         and the number of hits from the hmmsearch as an object ("data"). Then it sets objects for each of the variable (protein, type,
##         and hit number) and plots them in a bar graph using ggplot. The bars are colored by category.


data=read.table("hitcounts.txt")
data
library(ggplot2)
a=ggplot(data = data)
Protein=data$V1
Category=data$V2
Hits=data$V3
a+geom_bar(stat = "identity",aes(x=Protein, y=Hits, fill=Category), position = position_dodge2(width = 1))+ggtitle("Protein Hits")+theme_classic()
           
           
