#marketing
x <- c(201,225,305,380,560,600,685,735) 

#vol.vendas
y <- c(17,20,21,23,25,24,27,27)

dados <- data.frame(x, y)
View(dados)

plot(dados, ylab="Volume Vendas", xlab="Investimento Marketing")
cor(x, y)

regressao<-lm(y~x,data=dados) 
summary(regressao)
