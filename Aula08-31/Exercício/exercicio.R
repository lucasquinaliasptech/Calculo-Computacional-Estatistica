df <- rbind(amanda,
            andy,
            gabriel,
            juan,
            lucas,
            yuri)

df

# Cálculo de média de CPU, RAM e disco de todos os registros
mean(df$cpu)
mean(df$ram)
mean(df$disk)

# Agrupamento do uso médio de RAM por usuário
dados_ram <- aggregate(ram ~ user, data = df, FUN = mean)

# Ordenação do uso médio de RAM em ordem crescente
dados_ram_ordenados <- dados_ram[order(dados_ram$ram),]

# Atribuição do gráfico de barras para uma variável
bp_ram <- barplot(
  height = dados_ram_ordenados$ram, 
  names.arg = dados_ram_ordenados$user,
  col = rainbow(nrow(dados_ram_ordenados)),  
  ylim = c(0, 100),
  main = "Uso médio de RAM por usuário",
  xlab = "Usuário",
  ylab = "Média de RAM"
)

# Adição das labels (legenda) à quantidade média de RAM utilizada nas medições
# Este gráfico mostra que o usuário "amanda" tem a maior média de uso de RAM, atingindo 91.9%
# durante as medições, enquanto o usuário "gabriel" possui o menor, com 55.7%
text(
  x = bp_ram, 
  y = dados_ram_ordenados$ram, 
  label = paste0(round(dados_ram_ordenados$ram, 1), "%"), 
  pos = 3,                       
  cex = 0.8,                    
  col = "black"
)

# Mesma análise de RAM, porém para CPU

dados_cpu <- aggregate(cpu ~ user, data = df, FUN = mean)

dados_cpu_ordenados <- dados_cpu[order(dados_cpu$cpu),]

bp_cpu <- barplot(
  height = dados_cpu_ordenados$cpu, 
  names.arg = dados_cpu_ordenados$user,
  col = rainbow(nrow(dados_cpu_ordenados)),  
  ylim = c(0, 100),
  main = "Uso médio de CPU por usuário",
  xlab = "Usuário",
  ylab = "Média de CPU"
)

text(
  x = bp_cpu, 
  y = dados_cpu_ordenados$cpu, 
  label = paste0(round(dados_cpu_ordenados$cpu, 1), "%"), 
  pos = 3,                       
  cex = 0.8,                    
  col = "black"
)

# Este gráfico mostra que existe uma grande variação no uso de memória RAM nas medições,
# sendo o mais comum leituras entre 80% e 100%
hist(df$ram,
     xlab = "Porcentagem de uso de memória RAM",
     ylab = "Frequência de aparição dos dados",
     col = rainbow(nrow(dados_ram_ordenados)))

# Este gráfico mostra que a maioria das leituras mostra um baixíssimo uso de CPU (abaixo de 20%)
hist(df$cpu,
     xlab = "Porcentagem de uso de CPU",
     ylab = "Frequência de aparição dos dados",
     col = rainbow(nrow(dados_cpu_ordenados)))

# Este gráfico mostra que não há uma relação definida entre o uso de CPU e o uso de memória RAM de nenhum usuário
plot(df$ram, df$cpu,
     xlab = "Porcentagem de uso de memória RAM",
     ylab = "Porcentagem de uso de CPU",
     col = rainbow(nrow(df)))