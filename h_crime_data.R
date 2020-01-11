library(readr)
crime_data <- read_csv("C:/Users/Admin/Desktop/Assignments/Clustering/crime_data.csv")
View(crime_data)
normalized_data<- scale(crime_data[,2:5])
view(normalized_data)
normalized_data
h_dist<- dist(normalized_data,method = "euclidean")
h_dist
fit<- hclust(h_dist,method = "average")
fit
plot(fit)
plot(fit,hang = -1)
groups<- cutree(fit,k=5)
groups
rect.hclust(fit,k=5,border = "red")
rect.hclust(fit,k=5,border = 2)
membership <- as.matrix(groups)
membership
finalx<- data.frame(membership,crime_data)
finalx
view(finalx)
aggregate(crime_data[,2:5], by=list(finalx$membership),FUN=mean)
install.packages("WriteXLS")
library(WriteXLS)
install.packages("xlsx")
library("xlsx")
write.xlsx(finalx,file="final_clust_h.xlsx")
getwd()
