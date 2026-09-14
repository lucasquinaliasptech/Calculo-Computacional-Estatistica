df_clientes <- data.frame(
  nome = c("bob", "tom", "ian", "mel", "dan"), # variável qualidativa nominal
  idade = c(20, 50, 40, 30, 41), # variável quantitativa discreta
  salario = c(1000.5, 5000.4, 4000.4, 2500.4, 7000.4), # variável quantitativa contínua
  area = factor(
      c("humanas", "biológicas", "exatas", "exatas", "humanas"),
      levels = c("humanas", "biológicas", "exatas")
    ), # variável qualitativa nominal
  plano = factor(
    c("prata", "prata", "ouro", "bronze", "ouro"),
    levels = c("bronze", "prata", "ouro"),
    labels = c("Bronze Top +", "Prata ++", "Super Ouro"),
    ordered = TRUE
  )
)

df_clientes$area
df_clientes$plano
