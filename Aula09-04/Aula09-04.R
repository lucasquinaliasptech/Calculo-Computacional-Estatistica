# random norm: não tão aleatório

valor_por_pedido <- abs(round(rnorm(500, mean = 100, sd = 40), 1))

hist(valor_por_pedido, 
    main = "Histograma de valor por pedido",
    col = "lightblue",
    xlab = "Valor por pedido (R$)",
    ylab = "Frequência",
    breaks = 10)

abline(v = mean(valor_por_pedido), col = "red")
abline(v = median(valor_por_pedido), col = "blue")

mean(valor_por_pedido)
median(valor_por_pedido)

sd(valor_por_pedido)
