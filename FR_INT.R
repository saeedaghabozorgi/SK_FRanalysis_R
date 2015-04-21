setwd("C:/saeed/WorkingDirectory")
library(ggplot2)
FR = read.csv("C:/saeed/FR7.csv") 


require(gridExtra)


p1=ggplot(FR, aes(x=FR$REVENUE_AMOUNT, y=FR$INT_InPerson,  color=FR$experience)) +
  geom_point(shape=1) +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) + # to set color legend off
  geom_smooth(method=lm) 
p2=ggplot(FR, aes(x=FR$REVENUE_AMOUNT, y=FR$INT_Email,color=FR$experience)) +
  geom_point(shape=1) +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) +
  geom_smooth(method=lm) 
p3=ggplot(FR, aes(x=FR$REVENUE_AMOUNT, y=FR$INT_Phone,color=FR$experience)) +
  geom_point(shape=1) +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) +
  geom_smooth(method=lm) 
p4=ggplot(FR, aes(x=FR$REVENUE_AMOUNT, y=FR$TOTALINTERACTIONCOUNT,color=FR$experience)) +
  geom_point(shape=1) +    # Use hollow circles
#  scale_colour_continuous(guide = FALSE) +
  geom_smooth(method=lm) 

grid.arrange(p1, p2,p3,p4, ncol=2)