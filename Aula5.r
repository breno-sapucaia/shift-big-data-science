# Aula 5
m <- mtcars

# gráfico de dispeção
plot(m$mpg~m$wt)
#semente de aleatoriedade
set.seed(33)
va<-sample(32)

treino<- m[va[1:24],]
teste<- m[va[25:32],]
#transformação linear 
#hiótese: wt tem comportamento exponecial
# para linearizar ela ustilizaermos log, inversamene resulando em ln
cor(m$mpg, m$mt)
cor(m$mpg, log(m$wt))

# VAr. Caeg Cyl?
plot(m$mpg~m$wt, col=m$cyl)
# variavel cyl como categórica
mod <- lm(mpg~wt+as.factor(cyl),data=treino)




#mod <- lm(mpg~wt, data=treino)
#mod <- lm(mpg~log(wt), data=treino)
#mod <- lm(mpg~poly(wt,2), data=treino)
#mod <- lm(mpg~poly(wt,3), data=treino)

#pegando uma curva (modelo)
#aos pontos de treino


#mod <- lm(mpg~poly(wt,4), data=treino)
mod <- lm(mpg~poly(wt,5), data=treino)
mod <- lm(mpg~poly(wt,6), data=treino)
mod <- lm(mpg~poly(wt,16), data=treino)

# anál. par. regressãosummary(mod)
summary(mod)
p<- predict(mod, newdata=teste)

#previsto x real x erro
#cbind(p, teste$mpg, p-teste$mpg)

sse <- sum((p-teste$mpg)^2)
#sse

## Aula 5.1
  ## classificadores


d <- read.csv("train.csv")

# Probabilidade de sobrevivência no titanic
nrow(d[d$Survived==1,])/891

# Utilizando SQL no R
install.packages("sqldf")
library(sqldf)

sqldf("select Survived, count(*) from d group by Survived")

prop.table(table(d$Survived))
prop.table(table(d$Sex))

#Matrix de contingência
table(d[,c("Survived","Sex")])


