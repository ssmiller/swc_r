ls()
#This is my test for commit
x<-1
y <- x*2
z <- y^2
x+y+z
getwd()   #get working directory
x <- 1:10 #assigns the vector 1,2,3...10 to x
x
x*2
ls()  #gets list of all variables in the environment
rm(z)  #removes a variable from the environment


#Challenge 1
#What will be the value of each variable after each statement in the following program?
mass <- 47.5
age <- 122
mass <- mass * 2.3
age <- age - 20
print(c(mass, age))

#Challenge 2
#Run the code from the previous challenge, and write a command to compare mass to age. 
#Is mass larger than age?
mass > age  #yes, prints as TRUE

#Challenge 3
#Clean up your working environment by deleting the mass and age variables.
rm(list = c("mass","age"))  #removes multiple varibles at once
mass <- 47.5
rm(mass)

#Challenge 4
#Install the following packages: ggplot2, plyr, gapminder
#ggplot2, plyr already installed
#install.packages(c("ggplot2","plyr","gapminder"))
install.packages("gapminder")
library("gapminder")
install.packages("tm")
library("tm")

x <- 1L  #sets x to be an integer 
typeof(x)
is.integer(x)
is.character(x)
z <- x
z
z = "1"
z
is.character(z)
answer = T
height = 15
dog_name = "alice"
typeof(answer)
typeof(height)
typeof(dog_name)


mysequence = seq(10)
seq2 <- c(mysequence, 45:50)
seq2
names <- c("a","b","c","d")
x <- matrix(rnorm(18),ncol=6,nrow=3)

length(x)

my_matrix <- matrix(1:50,nrow=10,ncol=5)
my_matrix  #default fill is by column
my_matrix2 <- matrix(1:50,nrow=10,ncol=5,byrow=TRUE)
my_matrix2

getwd()
