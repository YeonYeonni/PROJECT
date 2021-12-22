mydata <- read.table(file = "C:\\test\\등산로_엑셀_0제거.csv", sep = ",", header = T)
mydata


# 등산로길이 ~ 

result <- lm(mydata$등산로길이.km. ~ mydata$등산로상행시간 + mydata$등산로하행시간, data = mydata)

summary(result)

with(mydata, {
  qqnorm(mydata$등산로상행시간);
  qqline(mydata$등산로상행시간)})

plot(result)

# 잔차

rs<-rstandard(result)
plot(rs)

# 경험치 = 등산로길이 (등산로길이 = 0.119179 + 0.022065 * 등산로상행시간 + 0.028561 * 등산로하행시간) * 속력 (거리 / 시간)
