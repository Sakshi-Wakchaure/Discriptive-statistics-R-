par(mfrow=c(3,3),mar=(2,5,2,1), las=0 , bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="l")
barplot(airquality$Ozone, main='Ozone Concentration in air',
        xlab='Ozone levels',col='green',horiz=TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main='Multipie Box plots')

summary(airquality)

e_quakes<-datasets::quakes
sd(airquality$Ozone,na.rm=T)
