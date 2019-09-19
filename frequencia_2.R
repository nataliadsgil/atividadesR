library(readr)
milsa <- read_csv("C:/dados/milsa.csv")
#View(milsa)

#Distribuição de Frequências Absolutas - Est. Civil
civil.tb <- table(milsa$Est.civil)
cbind("Freq" = civil.tb)
cbind("Freq" = addmargins(civil.tb))
cbind("FreqRel" = prop.table(civil.tb))


#Gráficos
par(mfrow = c(1,3))
barplot(civil.tb, ylab = "Frequência Absoluta")
barplot(prop.table(civil.tb), ylab = "Frequência Relativa", ylim = c(0, .6))

pie(civil.tb)

names(civil.tb)[which.max(civil.tb)]

inst.tb <- table(milsa$Inst)
cbind("f" = addmargins(inst.tb), "fr" = addmargins(prop.table(inst.tb)))

barplot(inst.tb, xlab = "Grau de Instrução", ylim = c(0, 20))

#Variável Quantitativa Discreta - Filhos
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

#Quais são as regiões dos funcionários da empresa?
names(regioes.tb)
#Quantos são os funcionários de cada região
cbind("Região" = regioes.tb)
#Qual a média, a maior e a menor idade dos funcionários
mean(milsa$Anos)
max(milsa$Anos)
min(milsa$Anos)
#Será que os funcionários com maior grau de instrução são da capital ou do interior?
cbind("Instrução" = addmargins(inst.tb))
cbind("Região" = addmargins(regioes.tb))
