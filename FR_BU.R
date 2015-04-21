setwd("C:/saeed/WorkingDirectory")
library(ggplot2)
FR = read.csv("C:/saeed/FR6.csv") 

FR$experience<-as.factor(FR$experience)
require(gridExtra)



p1=ggplot(FR, aes(x=FR$REVENUE_AMOUNT, y=FR$BU_DM)) +
  geom_point(shape=1) +    # Use hollow circles
  geom_smooth(method=lm) 
p2=ggplot(FR, aes(x=FR$REVENUE_AMOUNT, y=FR$BU_CP)) +
  geom_point(shape=1) +    # Use hollow circles
  geom_smooth(method=lm) 
p3=ggplot(FR, aes(x=FR$REVENUE_AMOUNT, y=FR$BU_Events)) +
  geom_point(shape=1) +    # Use hollow circles
  geom_smooth(method=lm) 
p4=ggplot(FR, aes(x=FR$REVENUE_AMOUNT, y=FR$BU_MG)) +
  geom_point(shape=1) +    # Use hollow circles
  geom_smooth(method=lm) 
p5=ggplot(FR, aes(x=FR$REVENUE_AMOUNT, y=FR$BU_HKI)) +
  geom_point(shape=1) +    # Use hollow circles
  geom_smooth(method=lm) 
p6=ggplot(FR, aes(x=FR$REVENUE_AMOUNT, y=FR$BU_SKF)) +
  geom_point(shape=1) +    # Use hollow circles
  geom_smooth(method=lm) 

grid.arrange(p1, p2,p3,p4,p5,p6, ncol=3)