###  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : Assignment 4.2
#  First Name	: vardaan
#  Last Name	: Kishore Kumar
#  Id			    : 10434327
#  Date       :15-10-2018
#  Comments   :
df <- read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/breast-cancer-wisconsin.data", header=FALSE, na.strings="?")
colnames(df) <- c("ID", "Clump_Thickness", "Uniform_Cell_Size", "Uniform_Cell_Shape",
                  "Marg_Adhesion", "Single_Epith_Cell_Size", "Bare_Nuclei", "Bland_Chromatin",
                  "Normal_Nucleoli", "Mitoses", "Class")
summary(df)

which(is.na(df),arr.ind = TRUE)
dfNew <- df
dfNew$Bare_Nuclei[is.na(dfNew$Bare_Nuclei)] <- mean(dfNew$Bare_Nuclei, na.rm=TRUE)
df<-dfNew
summary(df)
is.na(df)
test <-df[c(rep(FALSE,4),TRUE),]
train<-df[c(TRUE,rep(FALSE,4)),]
test
train
train_features<-train[,c(2,3,4,5,6,7,8,9,10)] #select the training feautres
train_class<-train[,c(11)]#training classes
train_class
test_features<-test[,c(2,3,4,5,6,7,8,9,10)] #select testing features
test_class<-test[,c(11)]#select test class
library(class)
model1<-knn(train=train_features,test=test_features,cl=train_class,k=1)
t<-table(test_class,model1) #testing model for knn=1
t
accuracy <- sum(diag(t))/139
accuracy*100

model2<-knn(train=train_features,test=test_features,cl=train_class,k=2)
tt<-table(test_class,model2) #testing model for knn=2
tt
accuracy1 <- sum(diag(tt))/139
accuracy1*100

model5<-knn(train=train_features,test=test_features,cl=train_class,k=5)
t5<-table(test_class,model5) #testing model for knn=5
t5
accuracy5 <- sum(diag(t5))/139
accuracy5*100
model10<-knn(train=train_features,test=test_features,cl=train_class,k=10)
t10<-table(test_class,model10) #testing model for knn=10
t10
accuracy10 <- sum(diag(t10))/139
accuracy10*100
