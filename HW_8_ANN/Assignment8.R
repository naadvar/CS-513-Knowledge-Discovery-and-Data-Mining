###  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : Assignment 
#  First Name	: vardaan
#  Last Name	: Kishore Kumar
#  Id			    : 10434327
#  Date       :27-11-2018
library(neuralnet)
data<-read.csv("C:/Users/admin/Downloads/IBM_Employee_Attrition_V2.csv" ,header=TRUE,na.strings = "?")
data<-na.omit(i_data)
head(data)
data$Attrition<-as.integer(data$Attrition)
data$BusinessTravel<-as.integer(data$BusinessTravel)
data$Gender<-as.integer(data$Gender)
data$MaritalStatus<-as.integer(data$MaritalStatus)
data$OverTime<-as.integer(data$OverTime)
index<-seq(1,nrow(data),by=5)
test<-data[index,]
train<-data[-index,]
class(data$Attrition)
str(data)
data$Attrition
neural<-neuralnet(Attrition ~ Age+BusinessTravel+DistanceFromHome+Education+EmployeeID+EnvironmentSatisfaction+Gender+MaritalStatus+MonthlyIncome+NumCompaniesWorked+OverTime+TotalWorkingYears,train,hidden = 7,threshold =0.01)
plot(neural)
neural_results <-compute(neural, test[,c(-2)])
ANN=as.numeric(neural_results$net.result)
factor(ANN)
ANN_<-round(ANN)
ANNc<-ifalse(ANN>1.15,1,2)
table(Actual=test$Attrition,ANNc)
wrong_C<- (test$Attrition!=ANNc)
rate<-sum(wrong_C)/length(wrong_C)
rate










