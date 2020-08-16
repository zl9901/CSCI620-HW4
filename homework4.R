require(data.table)
iris <-as.data.frame(fread("iris.data", quote = ""))
sepalLength <-iris[,1]

sepalmean <-mean(sepalLength)
print(mean)
sepalmedian <-median(sepalLength)
print(sepalmedian)
sepalmin <-range(sepalLength)
print(sepalmin)
sepalvariance <-var(sepalLength)
print(sepalvariance)
sepalpercentile <-quantile(sepalLength)
print(sepalpercentile)

summary(iris)

v1 <-iris[,1]
hist(v1)
v2 <-iris[,2]
hist(v2)
v3 <-iris[,3]
hist(v3)
v4 <-iris[,4]
hist(v4)
v5 <-iris[,5]

boxplot(v1)
boxplot(v2)
boxplot(v3)
boxplot(v4)

test <-table(v5)
num <-as.numeric(test)
pie(num,names(test))

library(corrgram)
corrgram(iris[,1:4],order=TRUE,lower.panel=panel.shade,
         upper.panel=panel.pie,text.panel=panel.txt,
         main='correlogram of mydata intercorrelations',
         diag.panel=panel.minmax
           )
pairs(~ V1 + V2 + V3 + V4,iris)