library(datasets)

head

s <- split(airquality,airquality$Month)

x <- rnorm(10)

f1 <- gl(2,5)
f2 <- gl(5,2)

interaction(f1,f2)

str(split(x,list(f1,f2)))

str(split(x,list(f1,f2),drop="TRUE"))
