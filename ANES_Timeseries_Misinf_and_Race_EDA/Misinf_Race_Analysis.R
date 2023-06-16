# leave space for libraries later
install.packages("visreg")
install.packages("dplyr")
library("visreg")
library("dplyr")
library("ggplot2")
setwd("C://Users//19195//Documents//Project2")

#import filtered csv
misinf <- read.csv("anes_pilot_20191.csv")


#create labels for our misinformation variables
names(misinf) <- c("warm", "autism1", "gmo1", "ftblack", "ftwhite", "fthisp", "ftasian", "ftmuslim")
head(misinf)


#create desired model with race and warm variables
#desired_model <- data.frame(misinf$warm)
#desired_model <- merge(desired_model,, 

                       #by.x = "misinf.warm", by.y = "warm")

#Removed answers that were categorized as "no answer" or "inapplicable"
misinf$warm[misinf$warm == -7] <- NA
plot(misinf)
summary(misinf)
misinf$autism1[misinf$autism1 == -7] <- NA
plot(misinf)
summary(misinf)
misinf$gmo1[misinf$gmo1 == -7] <- NA
plot(misinf)
summary(misinf)
misinf$warm[misinf$warm == -1] <- NA
plot(misinf)
summary(misinf)
misinf$autism1[misinf$autism1 == -1] <- NA
plot(misinf)
summary(misinf)
misinf$gmo1[misinf$gmo1 == -1] <- NA
plot(misinf)
summary(misinf)


model1 <- lm(warm ~ ftblack, data = misinf)
summary(model1)
visreg(model1, "ftblack")

model2 <- lm(gmo1 ~ ftblack, data = misinf)
summary(model2)
visreg(model2, "ftblack")

model3 <- lm(autism1 ~ ftblack, data = misinf)
summary(model3)
visreg(model3, "ftblack")

model4 <- lm(warm ~ ftwhite, data = misinf)
summary(model4)
visreg(model4, "ftwhite")

model5 <- lm(gmo1 ~ ftwhite, data = misinf)
summary(model5)
visreg(model5, "ftwhite")

model6 <- lm(autism1 ~ ftwhite, data = misinf)
summary(model6)
visreg(model6, "ftwhite")

model7 <- lm(warm ~ fthisp, data = misinf)
summary(model7)
visreg(model7, "fthisp")

model8 <- lm(gmo1 ~ fthisp, data = misinf)
summary(model8)
visreg(model8, "fthisp")

model9 <- lm(autism1 ~ fthisp, data = misinf)
summary(model9)
visreg(model9, "fthisp")

model10 <- lm(warm ~ ftasian, data = misinf)
summary(model10)
visreg(model10, "ftasian")

model11 <- lm(gmo1 ~ ftasian, data = misinf)
summary(model11)
visreg(model11, "ftasian")

model12 <- lm(autism1 ~ ftasian, data = misinf)
summary(model12)
visreg(model12, "ftasian")

model13 <- lm(warm ~ ftmuslim, data = misinf)
summary(model13)
visreg(model13, "ftmuslim")

model14 <- lm(gmo1 ~ ftmuslim, data = misinf)
summary(model14)
visreg(model14, "ftmuslim")

model15 <- lm(autism1 ~ ftmuslim, data = misinf)
summary(model15)
visreg(model15, "ftmuslim")


