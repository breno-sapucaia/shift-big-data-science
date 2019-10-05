# Leitura dos arquivos
train <- read.csv("train.csv")
test <- read.csv("test.csv")


# Execução do modelo
m <- lm(Survived ~ SipSp, data = new2_train)
m1<-lm(Survived ~ Pclass+Age, data=new2_train)
m3<-lm(Survived~Pclass + Age + Sex, data=new2_train)
summary(m3)
View(new2_train)
# Previsão dos dados
p<-predict(mod, newdata=test)
test$Sex <- ifelse(test$Sex == "female",as.numeric(1),as.numeric(0))

# Classificação de Survived, através do gatilho 0.5

pr <- ifelse(p<0.5, 0, 1)

# Montagem do dataframe para saída de dados
pr_data <- cbind(test$PassengerId, pr)
pr_data <- as.data.frame(pr_data)

# Nomes das colunas
names(pr_data) <- c("PassengerId", "Survived")

# Gravação em disco do arquivo a ser submetido no site Kaggle
write.csv(pr_data, file="predict.csv", row.names = FALSE)


my_predict <- read.csv("predict.csv")
View(my_predict)
summary(m1)
