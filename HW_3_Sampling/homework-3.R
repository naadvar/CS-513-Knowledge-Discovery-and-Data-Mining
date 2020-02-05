###  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : Assignment 3
#  First Name	: vardaan
#  Last Name	: Kishore Kumar
#  Id			    : 10434327
#  Date       :10-10-2018
#  Comments   :

wisconsin<-read.csv("breast.csv",header = TRUE) #read data from csv
str(wisconsin) #this shows the variables and type of data
summary(wisconsin) #gives the summary of data
nrow(wisconsin)
print(699*.75)
train<-wisconsin[1:524,] #create training data
nrow(train)
test<- wisconsin[525:699,] #create test data
nrow(test)