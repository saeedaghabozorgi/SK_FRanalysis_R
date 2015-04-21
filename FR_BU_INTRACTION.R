setwd("C:/saeed/WorkingDirectory")
library(ggplot2)
FR = read.csv("C:/saeed/FR7.csv") 


require(gridExtra)


p1=ggplot(FR, aes(x=FR$INT_InPerson, y=FR$BU_DM,  color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) + # to set color legend off
  aes(size=FR$REVENUE_AMOUNT)+
  guides(size=FALSE)+
  geom_smooth(method=lm) +
  ylim(0, 2000000) +
  xlab("InPerson Intraction #") +
  ylab("Rev Direct Marketing")

p2=ggplot(FR, aes(x=FR$INT_Email, y=FR$BU_DM,color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) +
  aes(size=FR$REVENUE_AMOUNT)+
  guides(size=FALSE)+
  geom_smooth(method=lm) +
  ylim(0, 2000000) +
  xlab("Email Intraction #") +
  ylab("Rev Direct Marketing")

p3=ggplot(FR, aes(x=FR$INT_Phone, y=FR$BU_DM,color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  aes(size=FR$REVENUE_AMOUNT)+
  scale_colour_continuous(guide = FALSE) +
  guides(size=FALSE)+
  geom_smooth(method=lm) +
  ylim(0, 2000000) +
  xlab("Phone Intraction #") +
  ylab("Rev Direct Marketing")




p4=ggplot(FR, aes(x=FR$INT_InPerson, y=FR$BU_MG,  color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) + # to set color legend off
  geom_smooth(method=lm) +
  aes(size=FR$REVENUE_AMOUNT)+
  guides(size=FALSE)+
  ylim(0, 40000000) +
  xlab("InPerson Intractio #") +
  ylab("Rev Major Gift") 
p5=ggplot(FR, aes(x=FR$INT_Email, y=FR$BU_MG,color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) +
  aes(size=FR$REVENUE_AMOUNT)+
  guides(size=FALSE)+
  geom_smooth(method=lm) +
   xlab("Email Intraction #") +
  ylab("Rev Major Gift") 
p6=ggplot(FR, aes(x=FR$INT_Phone, y=FR$BU_MG,color=FR$REVENUE_AMOUNT)) +
  geom_point() + 
  scale_colour_continuous(guide = FALSE) +
  aes(size=FR$REVENUE_AMOUNT)+
  guides(size=FALSE)+
  geom_smooth(method=lm) +
  xlab("Phone Intraction #") +
  ylab("Rev Major Gift") 




grid.arrange(p1, p2,p3,p4, p5,p6, ncol=3)

