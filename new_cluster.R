x<- runif(50)
x
y<- runif(50)
y
data<-cbind(x,y)
data
view(data)
plot(data)
plot(data,type="n")
text(data,rownames(data))
km<-kmeans(data,4)
km
km$centers
str(km)
install.packages("animation")
library(animation)
km1<-kmeans.ani(data,4)
km1$centers
str(km1)
km1
