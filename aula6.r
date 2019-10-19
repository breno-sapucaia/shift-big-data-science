# aula 6 - árvores de decisão

d <- read.csv("train.csv")
dTest <- read.csv("test.csv")

  
View(d)

install.packages("party")
library(party)

#Árvore com 1 variável
mod <- ctree(Survived~Sex, data=d)
plot(mod, type="simple")

# Árvore com 2 variáveis
mod <- ctree(Survived~Sex+Pclass, data=d)
plot(mod, type="simple")

#Árvore com 3 variáveis
mod <- ctree(Survived~Sex+Pclass+Age, data=d)
plot(mod, type="simple")


#ML Classificador AD
d <- read.csv("train.csv")
# Separação base treino e teste
set.seed(44)
va <-sample(nrow(d))
treino <- d[va[1:691],]
teste <- d[va[692:891],]

# Modelagem
#mod <- ctree(Survived~Sex+Pclass+Embarked, data=treino)
#mod <- ctree(Survived~Sex+Pclass+Age+Embarked, data=treino)
#mod <- ctree(Survived~Sex+Pclass+Age, data=treino)
#mod <- ctree(Survived~Sex+Pclass, data=treino)
#mod <- ctree(Survived~Sex+Pclass+Age+Fare, data=treino)
mod <- ctree(as.factor(Survived)~Sex+Pclass+Embarked+Sibsp+Parch, data=treino)
plot(mod, type="simple")
#Previsão em teste

p <- predict(mod, newdata=teste)
prev <- ifelse(p<=.407,0,1)
cbind(prev,teste$Survived)

# Matriz de confusão
# cm - A.K.A - Confusion Matrix
cm <- table(p, teste$Survived)
Precision <- cm[2,2]/ ( cm[1,2] + cm[2,2])
Recall <- cm[2,2]/ ( cm[2,1] + cm[2,2])
accuracy <- (cm[1,1] + cm[2,2] )/ nrow(teste)
cm
accuracy
Precision
Recall

