entregas <- entregas.ccoa

entregas

# Análise descritiva

# Entrega 01
mean(entregas$Entrega.01)
median(entregas$Entrega.01)
sd(entregas$Entrega.01)

# Entrega 02
mean(entregas$Entrega.02)
median(entregas$Entrega.02)
sd(entregas$Entrega.02)

# Entrega 03
mean(entregas$Entrega.03)
median(entregas$Entrega.03)
sd(entregas$Entrega.03)

# As notas são parecidas entre os alunos ou muito diferentes?
# Eu poderia dizer que são parecidas, tendo em vista que a média e a mediana de todas as entregas ficaram
# similares. Além disso, posso destacar que em todas as entregas o desvio padrão ficou abaixo de 1.9 e, 
# em especial, na entrega 2 ele ficou próximo de 1.04, mostrando que não houve tanta variação
# entre as notas dos alunos.

# Existe alguma entrega com maior variação de notas?
# A com a maior variação de notas foi a entrega 3, onde o desvio padrão atingiu 1.88. Porém, não podemos
# ignorar que a entrega 1 também obteve o desvio padrão de 1.80, o que não fica muito longe.

# A média representa bem os dados em todos os casos?
# Sim, pois tanto a média quanto a mediana apresentam uma pequena variação em todos os casos,
# não ultrapassando 0.5 de diferença em nenhuma das entregas.

# O desvio padrão ajuda a entender o comportamento das notas? Como?
# Com certeza. O desvio padrão nos mostra o quanto as notas variam em relação à média. Ou seja,
# ele consegue nos trazer uma visão mais holística sobre os dados com os quais trabalhamos,
# evitando que fiquemos focados somente em um dado em específico, ignorando a amostra completa.

# Existe alguma evidência de distribuição normal? Justifique com base nos gráficos.
# Não. Nos histogramas das entregas 1 e 2, pode-se notar que há mais frequência de notas maiores (mais
# próximas de 10). Enquanto isso, no histograma da entrega 3, podemos ver que as notas já estão
# mais distribuídas em direção ao meio, mas ainda assim não estão exatamente no meio e também
# não estão simetricamente distribuídas, o que seria necessário para uma distribuição normal.


# Visualização dos dados

# Entrega 01
hist(entregas$Entrega.01, 
     main = "Histograma de notas da entrega 01",
     col = "lightblue",
     xlab = "Nota",
     ylab = "Frequência")

abline(v = mean(entregas$Entrega.01), col = "red")
abline(v = median(entregas$Entrega.01), col = "blue")

# Entrega 02
hist(entregas$Entrega.02, 
     main = "Histograma de notas da entrega 02",
     col = "lightblue",
     xlab = "Nota",
     ylab = "Frequência")

abline(v = mean(entregas$Entrega.02), col = "red")
abline(v = median(entregas$Entrega.02), col = "blue")

# Entrega 03
hist(entregas$Entrega.03, 
     main = "Histograma de notas da entrega 03",
     col = "lightblue",
     xlab = "Nota",
     ylab = "Frequência")

abline(v = mean(entregas$Entrega.03), col = "red")
abline(v = median(entregas$Entrega.03), col = "blue")

# Parece simétrica (normal)?
# Não. Assim como citado anteriormente, a que mais se assemelha à uma distribuição normal é a entrega 3,
# mas mesmo assim a nota com maior frequência não está posicionada no meio e também não há simetria
# entre os lados, o que seria necessário para sua classificação como distribuição normal.

# Existe assimetria? Para qual lado?
# Em todos os histogramas há assimetria para a direita, demonstrando que há mais frequência de
# notas que estão mais próximas de 10, porém no histograma da entrega 3, a distribuição continua
# assimétrica para a direita, mas apresenta uma leve inclinação para o centro, com a maior frequência
# de notas estando entre 6 e 7.


# Comparação entre entregas

# Qual entrega teve maior média?
# A entrega que teve a maior média foi a entrefa de número 2, apresentando 8.84.

# Qual teve maior desvio padrão?
# A entrega 3 foi a que apresentou o maior desvio padrão, atingindo 1.88.

# Em qual atividade os alunos tiveram melhor desempenho?
# Definitivamente a entrega 2, tendo em vista que tanto sua média quanto sua mediana
# foram as maiores dentre as 3 entregas.

# Em qual houve maior dificuldade ou desigualdade?
# A que apresentou uma maior dificuldade dos alunos (indicada pelas notas) definitivamente foi a
# entrega 3, apresentando a menor média e mediana da amostra (6.51 e 6.87, respectivamente), além
# de também apresentar o maior desvio padrão (1.88)

# Análise por aluno
 
# Calcule a média final de cada aluno utilizando as três entregas.
# Adicione essa média como uma nova coluna no data frame.

entregas$media <- (entregas$Entrega.01 + entregas$Entrega.02 + entregas$Entrega.03) / 3
entregas[, c("RA", "media")]

# Identifique:
  
# Aluno com maior média

max(entregas$media)
entregas[entregas$media == max(entregas$media), c("RA", "media")]

# O aluno com a maior média é o aluno de RA 049.

# Aluno com menor média

min(entregas$media)
entregas[entregas$media == min(entregas$media), c("RA", "media")]

# O aluno com a menor média é o aluno de RA 033.
 
# Gere um gráfico (ex: histograma) com as médias finais.

hist(entregas$media, 
     main = "Histograma de média de notas das entregas 1 a 3",
     col = "lightblue",
     xlab = "Média de notas",
     ylab = "Frequência")
