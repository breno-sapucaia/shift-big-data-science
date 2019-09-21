# Aula 4

pib <- read.csv("PIB.csv", sep=";", dec=",")
View(pib)

treino<- pib[1:132,]
teste <- pib[133:138,]

# Regr. Linear simples - BRL

mod <- lm(PIB~BRL, data=treino) 
summary(mod)

prev <- predict(mod, teste)
View(teste)
prev

cbind(prev, teste$PIB, prev - teste$PIB)
SSE <- sum((prev - teste$PIB)^2)
sse <- SSE

# regr. linaer mulitpla brl + brp
mod <- lm(PIB~BRL+BRP, data=treino) 
summary(mod)
prev <- predict(mod, teste)
sse <- sum((prev - teste$PIB)^2)


# rlm + dummies
mod <- lm(PIB~BRL+BRP+D2+D5+D6+D7, data=treino) 
summary(mod)
prev <- predict(mod, teste)
sse <- sum((prev - teste$PIB)^2)

# AR
mod <- lm(PIB~PIBi1+PIBi2+PIBi12, data=treino) 
summary(mod)
prev <- predict(mod, teste)
sse <- sum((prev - teste$PIB)^2)


