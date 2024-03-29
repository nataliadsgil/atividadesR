library(readr)
milsa <- read_csv("C:/dados/milsa.csv")
#View(milsa)

#Distribui��o de Frequ�ncias Absolutas - Est. Civil
civil.tb <- table(milsa$Est.civil)
cbind("Freq" = civil.tb)
cbind("Freq" = addmargins(civil.tb))
cbind("FreqRel" = prop.table(civil.tb))


#Gr�ficos
par(mfrow = c(1,3))
barplot(civil.tb, ylab = "Frequ�ncia Absoluta")
barplot(prop.table(civil.tb), ylab = "Frequ�ncia Relativa", ylim = c(0, .6))

pie(civil.tb)

names(civil.tb)[which.max(civil.tb)]

inst.tb <- table(milsa$Inst)
cbind("f" = addmargins(inst.tb), "fr" = addmargins(prop.table(inst.tb)))

barplot(inst.tb, xlab = "Grau de Instru��o", ylim = c(0, 20))

#Vari�vel Quantitativa Discreta - Filhos
filhos.tb <- table(milsa$Filhos)
cbind("f" = addmargins(filhos.tb))
cbind("f" = addmargins(table(milsa$Filhos, useNA = "always")))

plot(filhos.tb, xlab = "N Filhos", ylab = "Freq")
sort(milsa$Salario)
max(milsa$Salario)
min(milsa$Salario)
mean(milsa$Salario)
plot(milsa$Salario)

regioes.tb <- table(milsa$Regiao)
idades.tb <- table(milsa$Anos)

#Quais s�o as regi�es dos funcion�rios da empresa?
names(regioes.tb)
#Quantos s�o os funcion�rios de cada regi�o
cbind("Regi�o" = regioes.tb)
#Qual a m�dia, a maior e a menor idade dos funcion�rios
mean(milsa$Anos)
max(milsa$Anos)
min(milsa$Anos)
#Ser� que os funcion�rios com maior grau de instru��o s�o da capital ou do interior?
cbind("Instru��o" = addmargins(inst.tb))
cbind("Regi�o" = addmargins(regioes.tb))
