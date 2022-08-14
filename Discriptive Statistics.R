# Veriable

sal <- 54

s=<-5,1,9

#Vectors 1D data

x<-c(1,2,3)

x2<-c("a","b",1)

# Data Frame
df<-data.frame(age=c(1,2,3),name=c("sakshi","dipti","rani"))

df1<-data.frame(a=c(1,2,3),b=1:3)

#slicing
#vector
print(x2[2:6])
print(x2[2])
print(x2[2:3])
print(df1[2,2])

#df[row,column]
print(df1[c(2,3),2])
print(df[2,2])

#airquality = read.csv('path/airquality.csv',header=TRUE,sep=",")

airquality <-datasets::airquality

####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

####Colums
airquality[50:60,c(1,2)]
df<-airquality[,-6]

#Descriptive statistics
#1
summary(airquality[,c(4,5)])

airquality$Temp
airquality$Wind
airquality$Ozone

#1
summary(airquality$Wind)

############Summary of the data########

summary(airquality)
summary(airquality$Wind)

###################
#Visualization
plot(airquality$Wind)
plot(airquality$Temp,airquality$Ozone,type="p")
plot(airquality)

#points and lines
plot(airquality$Wind,type="l") #p:point l: lines,b: both

Plot(airquality$Wind,xlab='Ozone Concentration',
     ylab='No of Instances',main ='Ozone levels in NY city',
     col ='blue',type='l')

#Horizontal bar plote
barplot(airquality$Ozone,main='Ozone concentration in air',
        ylab='Ozone levels',col='blue',horiz=F,axes=T)

#Histogram
hist(airquality$Temp)
hist(airquality$Temp,
     main='Solar Radiation Value in air',
     xlab='Solar red',col='blue')

#Single box plot
boxplot(airquality$Wind,main='Boxplot')
boxplot.stats(airquality$Wind)$out


#Multiple box plots
boxplot(airquality[,1:4],main='multiple')
---------------------------


#margin of the grid(mar)
#no of rows and columns(mfrow)
#whether a border is to be included(bty)
#and position of the 
#lables(las:1 for horizontal, las:0 for vertical)
#byt -box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1), las=0, bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="l")
barplot(airquality$Ozone, main = 'Ozone Concentration in air',
        xlab = 'Ozone levels',col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box Plots')

summary((airquality))

##
e_quakes<-datasets::quakes
sd(airquality$Ozone,na.rm=T)

#Var
#skewness
#kurtosis
#Density piot
