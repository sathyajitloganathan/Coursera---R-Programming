library(datasets)
data(iris)

?iris

tapply(iris$Sepal.Length, iris$Species, summary)

#Question 2
apply(iris[,1:4],2,mean)

#Question 3
data(mtcars)
mtcars

tapply(mtcars$mpg, mtcars$cyl, mean)
sapply(split(mtcars$mpg,mtcars$cyl),mean)
with(mtcars, tapply(mpg, cyl, mean))

#Question 4
mtcars
abs(tapply(mtcars$hp,mtcars$cyl,mean)[3] - tapply(mtcars$hp,mtcars$cyl,mean)[1])

#Question 5
debug(ls)
ls()
