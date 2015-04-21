setwd("C:/saeed/WorkingDirectory")
library(ggplot2)
FR = read.csv("C:/saeed/FR_Interactions.csv") 
FR$inter <- factor(FR$inter) 


qplot(FR$cont, FR$revenue_amount, data=FR, geom=c("point", "smooth"), 
      main="Regression of interaction on revenue", 
      method="lm", formula=y~x, color=FR$inter, 
      xlab="interaction count", ylab="revenue_amount")


