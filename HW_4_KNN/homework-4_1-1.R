###  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : Assignment 4.1
#  First Name	: vardaan
#  Last Name	: Kishore Kumar
#  Id			    : 10434327
#  Date       :15-10-2018
#  Comments   :
iris_train <- read.csv("train_iriss.csv")
iris_train_t = iris_train[,c(1,2,3,4)]
iris_train_t #split into training features
iris_train_features = iris_train[,5]
iris_train_features #split into training classes
iris_test <-read.csv("test_iris.csv")
iris_test_t = iris_test[,c(1,2,3,4)]
iris_test_features = iris_test[,5]
iris_test_t #testing features
iris_test_features #testing classes
library(class)
model<-knn(train=iris_train_t,test=iris_test_t,cl=iris_train_features,k=2)
t<-table(iris_test_features, model)
t


