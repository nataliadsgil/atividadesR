#apagar todas as variaveis
rm(list = ls())

library(readxl)
precos <- read_excel("C:/dados/precos.xlsx")
View(precos)

#fazendo uma regressao, para encontrar a relação entre preco com todo o restante das colunas
regmult <- lm(precos$preço ~ ., data = precos)
regmult


regmult2 <- lm(precos$preço ~ precos$tamanho + precos$`idade do prédio`, data = precos)

#summary mostra dados
#R-squared é a porcentagem que as informações do modelo são relacionadas
#p-value mostra se há evidência de que pelo menos 1 variavel no modelo está relacionada com o preço
#se o p-value for maior que 0.05 o modelo não é bom
summary(regmult)
