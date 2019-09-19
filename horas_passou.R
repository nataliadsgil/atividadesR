library(readxl)
horas_passou <- read_excel("C:/dados/horas_vs_passou.xlsx")
View(horas_passou)
str(horas_passou)

#1 - Quantidade de horas de todo o dataset (convertendo a string p/double p/somar)
soma < -sum(as.double(horas_passou$Horas))

#2 - A média de horas estudadas
media <- mean(as.double(horas_passou$Horas))

#3 - Crie o modelo de predicao, para isso divida o dataset em treino e teste
#pegando uma amostra de 60% do total de registros
treino <- sample(nrow(horas_passou), nrow(horas_passou) * 0.6)
ordenado <- sort(treino)
treino <- horas_passou[ordenado, ]
teste  <- horas_passou[-ordenado, ]

modelo_predicao <- glm(as.factor(Passou) ~ as.double(Horas), family = binomial, data = treino)
predicao <- predict(modelo_predicao, teste, type="response")
predicao.alterado <- ifelse(predicao >= 0.5, 1, 0);
teste$Passou

#matriz de confusao
table("Predito pelo modelo" = predicao.alterado, "dataset orginal de validacoa" = teste$Passou)
#diagonal principal - acertos
#diagonal secundário - erros
