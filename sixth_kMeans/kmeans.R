library(cluster)
library(ggplot2)
#library(plyr)

#library(lattice)
#library(graphics)
x<-c(185,170,168,179,182,188)
y<-c(72,56,60,68,72,77)
clsample<-data.frame(x,y)
clsample
dim(clsample)
clsample1<-data.matrix(clsample)
clsample1
cldata<-clsample1[,1:2]
cldata

data("USArrests")
head(USArrests)
df <- scale(USArrests)
head(df)
w <- vector(mode = "numeric", length = nrow(df))
for (i in 1:(nrow(df)-1)) {
  w[i] = sum(kmeans(df, centers = i, nstart = 25)$withinss)
}
plot(w, xlim = c(1,20))

km.result = kmeans(USArrests, centers = 4, nstart = 25)
km.result
col <- vector(mode = "character", length = nrow(df))
col[km.result$cluster == 1] <- "red"
col[km.result$cluster == 2] <- "blue"
col[km.result$cluster == 3] <- "green"
col[km.result$cluster == 4] <- "black"
col[km.result$cluster == 5] <- "yellow"
plot(USArrests, col = col)
plot(df[km.result$cluster == 1, ], col = "red")

#Elbow Curve
wss<-vector(mode="numeric",length=6)
wss
wsss<-(nrow(clsample1)-1)*sum(apply(clsample1,2,var))
wsss
for(i in 1:5) {
 wss[i]=sum(kmeans(cldata,centers=i,nstart=25)$withinss)
}
plot(wss)

km=kmeans(cldata,2,nstart=10)
km
km$cluster
km$centers
km$withinss
km$betweenss
km$totss

#Visualizing clusters

plot(cldata[km$cluster ==1,],col="red",xlim=c(min(cldata[,1]),max(cldata[,1])),ylim=c(min(cldata[,2]),max(cldata[,2])))
points(cldata[km$cluster == 2,],col="blue")
