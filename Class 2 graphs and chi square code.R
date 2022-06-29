install.packages('ggplot2')
library(ggplot2)

Titanic$Pclass=factor(Titanic$Pclass)
Titanic$Survived=factor(Titanic$Survived)
summary(Titanic)
str(Titanic)
ggplot(Titanic,aes(x=Pclass))+geom_bar()
ggplot(Titanic,aes(Age))+geom_boxplot()
ggplot(Titanic,aes(Age))+geom_histogram(binwidth=10)


Dominos$Site=factor(Dominos$Site)
Titanic$Time=factor(Titanic$Time)
ggplot(Dominos,aes(x=Site,y=Time))+geom_jitter()

#answer 2
#hypothesis is that the system change has had effect on time
#one tailed t test
t.test(Dominos$Time,alternative = 'less',mu=173.62)
t.test(Dominos$Time,mu=173.62)
#true mean is less than 173.62 95 percent confidence interval: -Inf 164.7089
#sample estimates:
 # mean of x 
#158.789 
#hence indicating that the change has had an impact on Drive through time

#answer 3
mydata<-mtcars[,c(1,2,3,4,5,6,7)]
head(mydata)
cormat = round(cor(mydata),2)
head(cormat)
#h0 is no correlation between cyl and hp
#h1 there is correlation
t.test(mydata$cyl, mydata$hp, alt="two.sided")
#Welch Two Sample t-test

data:  mydata$cyl and mydata$hp
t = -11.588, df = 31.042, p-value = 8.322e-13
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -165.2266 -115.7734
sample estimates:
  mean of x mean of y 
6.1875  146.6875 
#p value is lower than 0.05 hence null hypothesis is rejected


#chi square
Titanic.Survived<-xtabs(~Survived+Sex,data=Titanic)
prop.table(Titanic.Survived,1)*100
prop.table(Titanic.Survived,2)*100
chisq.test(Titanic.Survived)
#p value less than 0.05 hence null hypothesis is rejected

t.test(Titanic$Fare,alternative = 'less',mu=173.62)
t.test(Dominos$Time,mu=173.62)






