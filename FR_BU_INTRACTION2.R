setwd("C:/saeed/WorkingDirectory")
library(ggplot2)
FR = read.csv("C:/saeed/FR7.csv") 


require(gridExtra)


p1=ggplot(FR, aes(x=FR$INT_InPerson, y=FR$BU_CP,  color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) + # to set color legend off
  aes(size=FR$REVENUE_AMOUNT)+
  guides(size=FALSE)+
  geom_smooth(method=lm) +

  xlab("InPerson Intraction #") +
  ylab("Cooperative Partnership Rev")

p2=ggplot(FR, aes(x=FR$INT_Email, y=FR$BU_CP,color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) +
  aes(size=FR$REVENUE_AMOUNT)+
  guides(size=FALSE)+
  geom_smooth(method=lm) +

  xlab("Email Intraction #") +
  ylab("Cooperative Partnership Rev")

p3=ggplot(FR, aes(x=FR$INT_Phone, y=FR$BU_CP,color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  aes(size=FR$REVENUE_AMOUNT)+
  scale_colour_continuous(guide = FALSE) +
  guides(size=FALSE)+
  geom_smooth(method=lm) +

  xlab("Phone Intraction #") +
  ylab("Cooperative Partnership Rev")




p4=ggplot(FR, aes(x=FR$INT_InPerson, y=FR$BU_Events,  color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) + # to set color legend off
  geom_smooth(method=lm) +
  aes(size=FR$REVENUE_AMOUNT)+
  guides(size=FALSE)+
  xlab("InPerson Intractio #") +
  ylab("Events Rev") 
p5=ggplot(FR, aes(x=FR$INT_Email, y=FR$BU_Events,color=FR$REVENUE_AMOUNT)) +
  geom_point() +    # Use hollow circles
  scale_colour_continuous(guide = FALSE) +
  aes(size=FR$REVENUE_AMOUNT)+
  guides(size=FALSE)+
  geom_smooth(method=lm) +
   xlab("Email Intraction #") +
  ylab("Events Rev") 
p6=ggplot(FR, aes(x=FR$INT_Phone, y=FR$BU_Events,color=FR$REVENUE_AMOUNT)) +
  geom_point() + 
  scale_colour_continuous(guide = FALSE) +
  aes(size=FR$REVENUE_AMOUNT)+
  guides(size=FALSE)+
  geom_smooth(method=lm) +
  xlab("Phone Intraction #") +
  ylab("Events Rev") 




grid.arrange(p1, p2,p3,p4, p5,p6, ncol=3)

