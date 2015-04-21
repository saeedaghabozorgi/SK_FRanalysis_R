setwd("C:/saeed/WorkingDirectory")
library(ggplot2)
FR = read.csv("C:/saeed/FR7.csv") 



ggplot(FR, aes(x=FR$REVENUE_AMOUNT, y=FR$REV_DONATION)) +
  geom_point(colour='red',shape=1) +    # Use hollow circles
  geom_point(aes(x = FR$REVENUE_AMOUNT, y = FR$REV_PLEDGE) , colour='blue')+
  geom_point(aes(x = FR$REVENUE_AMOUNT, y = FR$REV_RECG) , colour='green')+
 # scale_colour_manual(values = c("red", "blue"))
  geom_smooth(method=lm) 
