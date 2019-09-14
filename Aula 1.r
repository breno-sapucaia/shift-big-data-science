# Aula 2 - Geração de amostra

install.packages("ggplot2")
#   Instanciar o ggplot na memoria. 
library(ggplot2)

# Entrada e saida de dados 
# write.csv(d.file="d.csv") # Saida de csv
# d1 <- read.csv("d.csv") # Entrada de dados atravéz do csv

# Example de lógica
#if(mA1 != mA2){
#  teste <- mA1+ mA2  
#}

# Tabela de dados diamonds -> DataFrame
d <- diamonds
# +++++ Valores reais 
# Calcular media
mean(d$price)
# Calcular Tendencia central (Mediana)
median(d$price)
# Baseado nos dados apresentandos, 
# è bem provavel que temos valores outlier
# Desvio padrao 
sd(d$price)

# Geração de amostra
# ==== Amostra 01
a1 <- d[1:3000,]
# ==== Amostra 02
a2 <- d[3001:6000,]
# ==== Dados Amostra 01
mA1 <- mean(a1$price)
median(a1$price)
sd(a1$price)
# ==== Dados Amostra 02
mA2 <- mean(a2$price)
median(a2$price)
sd(a2$price)


# Gerar numeros rondom
sample(10)

# Definicao de semente de aleatoriedade
# Exemplo: Semente é o 3
# Para forçar a repetição de uma sequencia 
# Tomar cuidado com a caracteristica fisica do pc
set.seed(4)
sample(3)

set.seed(34)
va <- sample(53940)
d[1:2]
d[2:1,]

# Geracao de amostra aleatoria 
a3 <- d[va[1:3000],]
mean(a3$price)
median(a3$price)
sd(a3$price)


# Histograma 
hist(d$price)

# Visualizacao de 4 graficos 
par(mfrow=c(2,2))
# Comparativo de distribuicao
hist(d$price)
hist(a1$price)
hist(a2$price)
hist(a3$price)

# Descriao de uma amostra
summary(d)
summary(a3)
