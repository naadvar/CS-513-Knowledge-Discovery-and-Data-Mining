###  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : Assignment 
#  First Name	: vardaan
#  Last Name	: Kishore Kumar
#  Id			    : 10434327
#  Date       :10-10-2018
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
apply(df[c("Class", "Bare_Nuclei")], 2, table)
p<-dfNew[,1:6]
pairs(p)
hist(df$Bare_Nuclei)
hist(df$Bland_Chromatin)
hist(df$Normal_Nucleoli)
B <- boxplot(x, horizontal=TRUE, outline=TRUE, frame=FALSE, col="green", notch=FALSE)
