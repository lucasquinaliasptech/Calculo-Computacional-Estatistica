# Primeiro data frame

df_teste <- data.frame(
  nome = c("bob", "mel", "dan", "tom", "ian"),
  idade = c(50,64,18,47,64),
  salario = c(1000.1, 1400.5, 1100.2, 1800.4, 50000.7)
)

mean(df_teste$idade)
mean(df_teste$salario)
median(df_teste$salario)

summary(df_teste)

df_teste$ganha_bem <- "Sim"
df_teste$ganha_bem <- NULL
df_teste$ganha_bem <- df_teste$salario > 1400
df_teste$ganha_bem <- ifelse(df_teste$salario > 1400, "GANHA BEM!", "IXI")

# acessar a documentação de forma rápida
?ifelse

df_teste[2,2]
df_teste[2,]
df_teste[,2]
df_teste[df_teste$idade > 50,]
