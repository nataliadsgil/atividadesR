library(readr)
dados <-read.csv("c:/dados/puffinbill.csv", header = TRUE, sep = ",")
View(dados)
str(dados)

#divisao do dataset em treino e valida��o
amostra <-sample(nrow(dados), nrow(dados) * 0.6)

ordena <-sort(amostra)

treino <-dados[ordena, ]

teste <-dados[-ordena,]

#modelo de regress�o log�stica
modelo_treinamento <- glm(sex ~ curlen, family = binomial, data = treino)

#Aplica��o do modelo que aprendeu com o dataset de treino para retornar as probabilidades
#sobre o dataset de teste
predicao <-predict(modelo_treinamento, teste, type="response")

predicao.alterado <- ifelse(predicao >= 0.5, "M", "F")

predicao.alterado <- as.factor(predicao.alterado)
