notas <- notas.ccob

# 1. Analise as distribuições e responda:

hist(notas$Entrega.01, 
     main = "Histograma de notas da entrega 01",
     col = "lightblue",
     xlab = "Nota",
     ylab = "Frequência")

hist(notas$Entrega.02, 
     main = "Histograma de notas da entrega 02",
     col = "lightblue",
     xlab = "Nota",
     ylab = "Frequência")

hist(notas$Entrega.03, 
     main = "Histograma de notas da entrega 03",
     col = "lightblue",
     xlab = "Nota",
     ylab = "Frequência")

hist(notas$Integrada, 
     main = "Histograma de notas da integrada",
     col = "lightblue",
     xlab = "Nota",
     ylab = "Frequência")

hist(notas$Pratica, 
     main = "Histograma de notas da prova",
     col = "lightblue",
     xlab = "Nota",
     ylab = "Frequência")

mean(notas$Entrega.01)
mean(notas$Entrega.02)
mean(notas$Entrega.03)
mean(notas$Integrada)
mean(notas$Pratica)

median(notas$Entrega.01)
median(notas$Entrega.02)
median(notas$Entrega.03)
median(notas$Integrada)
median(notas$Pratica)

sd(notas$Entrega.01)
sd(notas$Entrega.02)
sd(notas$Entrega.03)
sd(notas$Integrada)
sd(notas$Pratica)

#   As notas são próximas ou apresentam muita variação?
# Pode-se dizer que as notas são próximas entre todas as entregas e provas, tendo em vista que
# a nota que apresentou a maior dispersão foi a nota da entrega 3, apresentando 1.41.

#   Qual entrega apresentou maior dispersão?
# Como dito anteriormente, a nota com a maior dispersão foi a nota da entrega 3, apresentando 1.41.

#   As distribuições parecem simétricas ou assimétricas?
# Todas as distribuições são assimétricas, com inclinação para a direita, com maior frequência de notas
# altas. As únicas exceções são as notas da entrega 2, que apresentam uma dispersão de 0, então todas
# estão no mesmo número (10) e as notas da integrada, onde apesar de ainda tender para a direita, 
# este histograma apresenta um pouco mais de simetria entre os lados.

#   A média parece representar bem as notas?
# Sim, pois quando comparamos tanto a média quanto a mediana de cada nota, temos uma variação de no
# máximo 0.3 entre elas, mostrando que a média, neste caso, é um indicador confiável na
# representação das notas.

#   Há indícios de uma distribuição aproximadamente normal?
# Como anteriormente dito, o único histograma que representa uma distribuição aproximadamente
# normal é o histograma da integrada, que apesar de ainda tender para a direita, tem, até certo
# ponto, certa simetria.
   
# 2. Compare as três entregas:

mean(notas$Entrega.01)
mean(notas$Entrega.02)
mean(notas$Entrega.03)

sd(notas$Entrega.01)
sd(notas$Entrega.02)
sd(notas$Entrega.03)
   
#   Qual teve a maior média?
# A entrega que teve a maior média foi a entrega 02, com exatamente 10 de média.

#   Qual apresentou maior desvio padrão?
# A que apresentou o maior desvio padrão doi a entrega 03, com aproximadametne 1.41 de desvio padrão.

#   Em qual entrega a turma teve melhor desempenho?
# Definitivamente a entrega 02, tendo em vista que TODOS os alunos tiraram 10 nela.

#   Em qual houve maior desigualdade entre as notas?
# A entrega 03, já que além de ter tido o maior desvio padrão, ao analisar o histograma, foi possível
# observar que é a entrega que teve a maior frequência de notas variadas.
   
# 3. Calcule a média final de cada aluno, adicionando-a como uma nova coluna no dataset.
notas$media <- (notas$Entrega.01 + notas$Entrega.02 + notas$Entrega.03 + notas$Integrada + notas$Pratica) / 5
