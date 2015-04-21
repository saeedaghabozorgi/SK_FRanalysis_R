setwd("C:/saeed/WorkingDirectory")
library(ggplot2)
FR = read.csv("C:/saeed/FR_Interactions.csv") 



ggplot(FR, aes(FR$cont,fill=factor(inter))) +
  geom_density()


require(gridExtra)


p1=ggplot(FR, aes(x=FR$INT_InPerson, y=FR$CONSTITUENT_COUNT,  color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) + # to set color legend off
  aes(size=FR$REVENUE_AMOUNT)+
  guides(size=FALSE)+
  geom_smooth(method=lm) +
 # ylim(0, 2000000) +
  xlab("InPerson Intraction #") +
  ylab("Constituent #")

p2=ggplot(FR, aes(x=FR$INT_Email, y=FR$CONSTITUENT_COUNT,color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) +
  aes(size=FR$REVENUE_AMOUNT)+
  guides(size=FALSE)+
  geom_smooth(method=lm) +
  xlab("Email Intraction #") +
  ylab("Constituent #")

p3=ggplot(FR, aes(x=FR$INT_Phone, y=FR$CONSTITUENT_COUNT,color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  aes(size=FR$REVENUE_AMOUNT)+
  scale_colour_continuous(guide = FALSE) +
  guides(size=FALSE)+
  geom_smooth(method=lm) +
  xlab("Phone Intraction #") +
  ylab("Constituent #")







grid.arrange(p1, p2,p3, ncol=3)

