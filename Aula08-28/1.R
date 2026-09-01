a <- 2
b <- 40

if(c <- 0) {
  "teste 1"
} else {
  "teste 2"
}

somar <- function(num1, num2 = 10){
  cat(num1 + num2)
}

somar(10,32)
somar(2)

21 -> c
rm(c)

nomes <- c("Tom", "Bob", "Ana", "Dan")
nomes[1]
nomes[-2]

for (nome in nomes) {
  cat(nome, "\n")
}
