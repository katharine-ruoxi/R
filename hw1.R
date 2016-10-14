# Problem 1
myFun(4)

myNum <- 4
myFun <- function(x){
  myNum <- 2
  return(myNum*yourFun(x))
}

yourFun <- function(x){
  x*myNum
}


# Problem 2
Left <- matrix(c(3,1,2,1),2,2)
Right <- matrix(c(12,5))
solve (Left,Right)


# Problem 3

Left <- function(u,r,v,s){
  matrix(c(u,r,v,s),2,2)
  }
Right <- function(b1,b2){
  matrix(c(b1,b2))
} 
solve (Left(3,1,2,1),Right(12,5))

# Problem 4
data <- read.csv("Downloads/adultData.txt")
colnames(data)<-c("age", "workclass", "fnlwgt", "education", 
                  "education-num", "marital-status", 
                  "occupation", "relationship", "race", "sex", 
                  "capital-gain", "capital-loss", 
                  "hours", "native-country", "income")

PoorNum <- as.matrix(table(data[,15]))[1,1]
PoorPeople <- subset(data, as.character(income) == " <=50K")
PoorMale <- as.matrix(table(PoorPeople[,10]))[2,1]
AnswerA <- PoorMale/PoorNum*100 #a
PoorFemale <- as.matrix(table(PoorPeople[,10]))[1,1]
AnswerB <- PoorFemale/PoorNum*100 #b

#c
FT <- subset(data, hours >= 40)
FTtotal <- nrow(FT)
FTM <- as.matrix(table(FT[,10]))[2,1]
FTF <- as.matrix(table(FT[,10]))[1,1]
AnswerC1 <- FTM/FTtotal*100  #c1
AnswerC2 <- FTF/FTtotal*100  #c2


#d
FullTime <- subset(PoorPeople, hours >= 40)
FTNum <- nrow(FullTime)
FTMale <- as.matrix(table(FullTime[,10]))[2,1]
AnswerD1 <- FTMale/FTNum*100 #d1
FTFemale <- as.matrix(table(FullTime[,10]))[1,1]
AnswerD2 <- FTFemale/FTNum*100 #d2

#e





