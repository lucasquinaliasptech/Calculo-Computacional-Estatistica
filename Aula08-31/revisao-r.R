# Criando um DF
df_grupo <- rbind(captura.bob,
                  captura.giuliana,
                  captura.dan,
                  captura.mel,
                  captura.tom)

#Removendo variáveis do ambiente
rm(captura.bob,
   captura.giuliana,
   captura.dan,
   captura.mel,
   captura.tom)

# Primeiros passos:
#Exibindo os primeiros registros
head(df_grupo, n = 12)

#Vendo a estrutura do DF
str(df_grupo)

# Tamanho e quantidade variváveis (dimensões)
dim(df_grupo)

# O básico da estatística
# Quartis, min e max, média e mediana
summary(df_grupo)

# Manipulando um DF:
# df[linha, coluna]
# Acessando linhas e colunas:
df_grupo[1,]
df_grupo[,1]

# Filtrando linhas
df_grupo[df_grupo$cpu > 50,]

# Filtrando colunas:
df_grupo[,c("ram", "cpu")]

# Criando colunas
df_grupo$alerta <-  df_grupo$ram > 50
df_grupo$alerta <-  ifelse(df_grupo$ram > 50,"CUIDADO"," DE BOA")

# Removendo uma coluna
df_grupo$alerta <- NULL

#Média
mean(df_grupo$ram)

#Média por usuário
mean(df_grupo$ram[df_grupo$user == "bob"])
mean(df_grupo$ram[df_grupo$user == "giuliana"])
mean(df_grupo$ram[df_grupo$user == "dan"])
mean(df_grupo$ram[df_grupo$user == "tom"])

#Armazenando em variável
media_ram_mel <- 
  mean(df_grupo$ram[df_grupo$user == "mel"])
rm(media_ram_mel)

# Média de CPU de todos os usuários
aggregate(cpu ~ user, data = df_grupo, FUN = mean)

#Usuário com maior consumo de RAM
df_grupo[which.max(df_grupo$ram),]





