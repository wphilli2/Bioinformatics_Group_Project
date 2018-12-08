data=read.table("hitcounts.txt")
data
library(ggplot2)
a=ggplot(data = data)
Protein=data$V1
Category=data$V2
Hits=data$V3
a+geom_bar(stat = "identity",aes(x=Protein, y=Hits, fill=Category), position = position_dodge2(width = 1))+ggtitle("Protein Hits")+theme_classic()
           
           
