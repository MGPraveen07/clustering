install.packages("plyr")
library(plyr)
x<- runif(50)
x
y<- runif(50)
y
data<- cbind(x,y)
data
plot(data)
plot(data,type="n")
text(data,rownames(data))
km<- kmeans(data,4)
km
km$centers
str(km)
#####  second instalation  ##################
install.packages("animation")
library(animation)
km1<- kmeans.ani(data,4)
km1
km1$centers
str
#####  k-means of clustering##################

