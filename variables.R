#This is the document where I learn introductory R and Git.
#January 4-5, 2016
#WISE Software Carpentry Workshop

rm(list=ls())  #clean up environment variables

dist10 <- rnorm(10)

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

#Data types
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

#Sequences
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

getwd()  #confirm working directory


#Day 2 R Training
x <- factor(c("yes","no","no","yes","yes"))
y <- factor(c("case","control","control","case"))  #default levels:  case = 1, control =2 
y <- factor(c("case","control","control","case"),levels = c("control","case")) 
z <- list(1,"a",TRUE,1+4i)
z

xlist <- list(a="Research Bazar", b= 1:10, data=head(iris))  #iris is data inherent to R base package
xlist
?head
help(iris)

#Data Frames
df <- data.frame(id=c('a','b','c','d','e', 'f'), x=16, y=214:219)
length(df)  #gives the number of columns for a data frame, not number of rows, or items
df
nrow(df) #how many rows
?data.frame

dim(df)

df<- cbind(df,6:1) #add another column with numbers in reverse order from 6 to 1
df
names(df)[4] <- "SixToOne" #rename the fourth column in the data frame
df
df <-cbind(df, seq(1,11, by=2))  
df <- cbind(df, seq(1,11,by=2),name="myname")  #adds two new columns, one without a name for the sequence
#and one with a name with all values equal to "myname"
df <- cbind(df, myseq=seq(1,11,by=2))  #name the column at the same time as you create the name
df<-cbind(df,caps=LETTERS[1:6]) #add the first six items as a column called caps
df

#"remove columns" in the dataframe:
#make a new dataframe with just the desired columns
df2 <- df[c(1,2,3,8,11)]
df <- df2[c(1,2,3,5)]

df <- rbind(df,list('g',11,42.0,"G"))  #this will error due to having items with different classes
df
df$id <- as.character(df$id)  #changes everything in the id column to be a character, not a "factor"

#If we want the column 'caps' to remain factor, then we need to add a new factor level
class(df$caps)
levels(df$caps) <- c(levels(df$caps),"G")
class(df$caps)
df <- rbind(df,list('g',11,42.0,"G"))
df


df[-7,]  #show all rows except for row 7
df[-8,]  #show all rows except for row 8

#if you want to remove multiple rows with NA, use na.omit(datafamename)
df <- na.omit(df)

#could also just ignore the na items during your analysis

#To add two dataframes WITH MATCHING COLUMNS (add columns first as needed)
rbind(df,df)
#this makes your row names a little strange -- it appends a 1 to your original row name if they are duplicated

df2 <-rbind(c(df, df), rownames=NULL)
df2 <- rbind(df,df,make.row.names=FALSE)
df2
#This is the same as 
df3<-(rbind(df,df))
df3
rownames(df3) <- NULL
df3
?rbind
