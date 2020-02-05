library('C50')
data <- read.csv(file="IBM_Employee_Attrition_V2.csv",header=TRUE,
                 sep=",")
str(data)

index <- seq(1,nrow(data),5)
test <-data[index,]
train <-data[-index,]
tree<-C5.0(factor(Attrition)~.,data = data)
summary(tree)
plot(tree)
pred<-predict(tree,test,type='class')
table(actual=test[,2],pred)
err<-(test[,2] == pred)*100
acc<-sum(err)/length(err)
acc
