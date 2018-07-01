library(datasets)
data(iris)

?iris

tapply(iris$Sepal.Length, iris$Species, summary)

apply(iris[,1:4],2,mean)

