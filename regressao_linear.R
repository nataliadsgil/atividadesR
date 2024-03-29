#apagar todas as variaveis
rm(list = ls())

#declarando variaveis (investimento em marketing, faturamento)
x <- c(201,225,305,380,560,600,685,735) 
y <- c(17,20,21,23,25,24,27,27)

#criando um data.frame
dados <- data.frame(x,y)
View(dados)

plot(dados)

#regressao
#lm - linear model cria um modelo baseado nos dados 
#(y em rela��o ao x, data = dados (data.frame))
regressao <- lm(y ~ x, data = dados)

#y = a + bx
#intercept � o "a" e o x � o coeficiente "b" 
regressao

#fazendo o forecasting (previsao)
regressao$coefficients
a <- summary(regressao)$coefficients[1, 1]
b <- summary(regressao)$coefficients[2, 1]

previsao <- a + b*1000;
previsao
