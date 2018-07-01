x <- c(1,2)

((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)

paste(LETTERS,1:4, sep="-")

y <- rnorm(1000)

z <- rep(NA,1000)

my_data <- sample(c(y,z),100)

my_na <- is.na(my_data)



y <- 10

f <- function(x){

        g <- function(x){
                x*y
        }
        y <- 2
        y^2 + g(x)
       
}

d <- f(3)


make.power <- function(n){
        pow <- function(x){
                x^n
        }
        pow
}


cube <- make.power(3)
square <- make.power(2)

ls(environment(square))
ls(environment(cube))

get("n",environment(square))
get("n",environment(cube))

cube(3)
square(3)


x <- 1:10
if(x > 5) {
        n <- 0
}
