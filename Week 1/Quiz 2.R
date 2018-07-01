
x <- matrix(1:6,2,3)
x
x[2,]

x <- list(list(c()))

x <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
x[[c(1, 3)]]
x[[1]][[2]]

x <- c(4,TRUE)
typeof(x)
x[2]

x <- c(1,3,5)
y <- c(3,2,10)
rbind(x,y)

x <- list(2, "a", "b", TRUE)
x[1]

x <- 1:4
y <- 2
x+y


x <- c(3, 5, 1, 10, 12, 6) 
x[x < 6] ==0
x
x[x %in% 1:5] <- 0

a <- read.csv(file="hw1_data.csv")
length(a)
nrow(a)
a[1:6,]
tail(a,2)

a[47,"Ozone"]
a$Ozone[47]

Ozonebadcount <- length(is.na(a[,1]))

na <- is.na(a$Ozone)
sum(na)
mean(a$Ozone %in% na)
mean(a$Ozone[na == FALSE])

na <- is.na(a$Ozone)
nona <- a[a$Ozone != NA]
a[a$Ozone > 31, ,drop = FALSE]


ozone <- na.omit(a$Ozone)

a.OFilter <- a[a$Ozone >31, , drop=FALSE]
a.OTFilter <- a.OFilter[a.OFilter$Temp > 90, , drop=FALSE]
a.OTFilterNoNA <- na.omit(a.OTFilter)

mean(a.OTFilterNoNA$Solar.R)

a.MonthFilter <- a[a$Month == 6, , drop=FALSE]
a.MonthFilterNoNA <- na.omit(a.MonthFilter)
mean(a.MonthFilter$Temp)


a.May <- a[a$Month == 5, , drop=FALSE]
max(na.omit(a.May$Ozone))

x<-c(4,TRUE)
class(x)

t <- 4L
class(t)

x <- c(4, "a", TRUE)
class(x)

x <- c(1,3, 5)
y <- c(3, 2, 10)
cbind(x,y)

x <- list(2, "a", "b", TRUE)
class(x[[2]])

x <- 1:4 
y <- 2
x+y


x <- c(17, 14, 4, 5, 13, 12, 10)
x[x > 10] <- 4

x <- c(4, "a", TRUE)
class(x)

