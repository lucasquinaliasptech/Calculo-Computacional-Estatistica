# Criando um DF
df_grupo <- rbind(captura.bob,
             captura.dan,
             captura.giuliana,
             captura.mel,
             captura.tom)

df_grupo
rm(captura.bob)
rm(captura.dan)
rm(captura.giuliana)
rm(captura.mel)
rm(captura.tom)

hist(df_grupo$cpu,
     main = "Histograma de uso de CPU",
     xlab = "CPU (%)",
     ylab = "Frequência",
     col = "#ff0044")

df_grupo$status_cpu <- ifelse(df_grupo$cpu > 40, "BOA", "RUIM")

barplot(table(df_grupo$status_cpu),
        col = "#ff0044")

# Análise de relação -> interessante para análise preditiva
# Gráfico de dispersão
plot(df_grupo$cpu, df_grupo$disco)
