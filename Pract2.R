library(UsingR)
m  = UsingR::homedata
y1970 = UsingR::homedata$y1970
y2000 = UsingR::homedata$y2000

min(y2000)
max(y2000)
y1970[which(y2000 == min(y2000))]
y1970[which(y2000 == max(y2000))]

attach(homedata)
rm(y1970)

tail(sort(y1970), 5) 

length(which(y2000 >= 750000))

length(which(homedata$y2000 > 750000))

ans1 = y1970[(y2000 > 750000)]
mean(ans1)


y2000[which(y2000 < y1970)]

x = (y2000 - y1970) / y1970

head(sort(x, decreasing = TRUE))

library(MASS)

summary(survey)

sum(survey$Sex == "Male", na.rm = TRUE)
sum(survey$Sex == "Male" & survey$Smoke != "Never", na.rm = TRUE )

mean(survey$Height, na.rm = TRUE)

attach(survey)
survey[Sex == "Male", ]

mean(survey$Height, na.rm = TRUE)

survey[survey$Age == sort(survey$Age), c("Height", "Sex")]