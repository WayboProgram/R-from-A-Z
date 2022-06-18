

MyFirstVector <- c(3, 45, 56, 732)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

V2 <- c(3L, 12L, 243L, 0L)
is.numeric(V2)
is.integer(V2)

V3 <- c("a", "Hello", "B23", 6) #6 is a character
V3
is.character(V3)


seq() #sequence <- like ':'
rep() #replicate

seq(1,15)
1:15
seq(1,15,2) #de 1 a 15 de 2 en 2
z <- seq(1,15,4)

rep(3, 50) #replica el 3 50 cops
d <- rep(3,50)
rep("a", 5)

x <- c(80,20)
y <- rep(x, 10) #repeteix el vector 'x' 10 cops
