#aula 7
#Clusterização - KMeans
m <- mtcars
plot(m$mpg~m$wt + m$cyl)

#clusterização
set.seed(33)
k<-kmeans(m[,c("mpg","wt")], 4)

plot(m$mpg~m$wt, col=k$cluster, pch=k$cluster)

k$cluster

m$wt_2 <- m$wt*6
k<-kmeans(m[,c("mpg","wt_2")], 4)
plot(m$mpg~m$wt, col=k$cluster, pch=k$cluster)
summary(lm(mpg~wt+as.factor(k$cluster),data=m))


#Mais algoritmos
#ctree

install.packages("e1071")
library("e1071")

treino <- read.csv("train.csv")
teste <-read.csv("test.csv")
t <- read.csv("train.csv")
set.seed(62)
va<-sample(891)
treino<-t[1:600,]
teste <- t[601:891,]
mod<-ctree(Survived~Sex+Pclass+Age+Embarked,data=treino)
p<-predict(mod, newdata=teste)
pred<-ifelse(p<=.401,0,1)
cm <- table(pred,teste$Survived)
Precision <- cm[2,2]/ ( cm[1,2] + cm[2,2])
Recall <- cm[2,2]/ ( cm[2,1] + cm[2,2])
accuracy <- (cm[1,1] + cm[2,2] )/ nrow(teste)
cm
accuracy
Precision
Recall



install.packages("e1071")
library(e1071)

treino <- read.csv("train.csv")
teste <-read.csv("test.csv")
t <- read.csv("train.csv")
# TRATAMENTO DOS DADOS
t[is.na(t$Age),]$Age<-mean(t[!is.na(t$Age),]$Age)
#regressãologistica


set.seed(33)
va<-sample(891)
treino<-t[1:600,]
teste <- t[601:891,]
mod <- glm(Survived~Sex+Pclass+Age,data=treino,family=binomial())
p<-predict(mod, newdata=teste)
pred<-ifelse(p<.5,0,1)
cm <- table(pred,teste$Survived)
Precision <- cm[2,2]/ ( cm[1,2] + cm[2,2])
Recall <- cm[2,2]/ ( cm[2,1] + cm[2,2])
accuracy <- (cm[1,1] + cm[2,2] )/ nrow(teste)
cm
accuracy
Precision
Recall



#randomforest
install.packages("randomForest")
library(randomForest)

t <- read.csv("train.csv")
# TRATAMENTO DOS DADOS
t[is.na(t$Age),]$Age<-mean(t[!is.na(t$Age),]$Age)
#regressãologistica
t$Survived_F<-as.factor(t$Survived)

set.seed(33)
va<-sample(891)
treino<-t[1:600,]
teste <- t[601:891,]
mod <- randomForest(Survived_F~Sex+Pclass+Age,data=treino)
p<-predict(mod, newdata=teste)
#pred<-ifelse(p<.5,0,1)
cm <- table(p,teste$Survived)
Precision <- cm[2,2]/ ( cm[1,2] + cm[2,2])
Recall <- cm[2,2]/ ( cm[2,1] + cm[2,2])
accuracy <- (cm[1,1] + cm[2,2] )/ nrow(teste)
cm
accuracy
Precision
Recall

#svm
install.packages("e1071")
library(e1071)

t <- read.csv("train.csv")
# TRATAMENTO DOS DADOS
t[is.na(t$Age),]$Age<-mean(t[!is.na(t$Age),]$Age)
t$Survived_F<-as.factor(t$Survived)


set.seed(33)
va<-sample(891)
treino<-t[1:600,]
teste <- t[601:891,]
mod <- svm(Survived_F~Sex+Pclass+Age,data=treino)
p<-predict(mod, newdata=teste)
#pred<-ifelse(p<.5,0,1)
cm <- table(p,teste$Survived)
Precision <- cm[2,2]/ ( cm[1,2] + cm[2,2])
Recall <- cm[2,2]/ ( cm[2,1] + cm[2,2])
accuracy <- (cm[1,1] + cm[2,2] )/ nrow(teste)
cm
accuracy
Precision
Recall
