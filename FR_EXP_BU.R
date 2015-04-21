setwd("C:/saeed/WorkingDirectory")
library(ggplot2)
FR = read.csv("C:/saeed/FR7.csv") 


require(gridExtra)


p1=ggplot(FR, aes(x=FR$experience, y=FR$BU_DM,  color=FR$experience)) +
  geom_point(shape=1) +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) + # to set color legend off
  geom_smooth(method=lm) 
p2=ggplot(FR, aes(x=FR$experience, y=FR$BU_MG,color=FR$experience)) +
  geom_point(shape=1) +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) +
  geom_smooth(method=lm) 
p3=ggplot(FR, aes(x=FR$experience, y=FR$BU_CP,color=FR$experience)) +
  geom_point(shape=1) +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) +
  geom_smooth(method=lm) 





grid.arrange(p1, p2,p3, ncol=3)
