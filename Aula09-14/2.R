datasets::iris

data('iris')

iris$NivelAlturaPetala <- factor(
  cut(iris$Petal.Length, c(0,2,4,7)),
  labels = c("pequena", "média", "grande")
)
