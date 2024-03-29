#apagar todas as variaveis
rm(list = ls())

library(readxl)
precos <- read_excel("C:/dados/precos.xlsx")
View(precos)

#fazendo uma regressao, para encontrar a rela��o entre preco com todo o restante das colunas
regmult <- lm(precos$pre�o ~ ., data = precos)
regmult


regmult2 <- lm(precos$pre�o ~ precos$tamanho + precos$`idade do pr�dio`, data = precos)

#summary mostra dados
#R-squared � a porcentagem que as informa��es do modelo s�o relacionadas
#p-value mostra se h� evid�ncia de que pelo menos 1 variavel no modelo est� relacionada com o pre�o
#se o p-value for maior que 0.05 o modelo n�o � bom
summary(regmult)
