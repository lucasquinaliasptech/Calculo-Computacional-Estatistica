# Faça um script com revisão de: variáveis, estrutura de decisão, estrutura de repetição e funções.

zero = 0
um = 1
dois = 2

print(f"Variáveis: {zero}, {um} e {dois}")

lista = [zero, um, dois]

print(f"Lista: {lista}")

matriz = [
    [zero, um, dois], 
    [zero, um, dois], 
    [zero, um, dois]
]

print(f"Matriz: {matriz}")

def exibirMatriz(nome):
    print(f"Matriz {nome} linha por linha:")
    for linha in matriz:
        print(linha)

exibirMatriz("Números")

if lista[0] != 0:
    print(f"O primeiro índice da lista {lista} não é o número zero!")
elif lista[0] == 0:
    print(f"O primeiro índice da lista {lista} é o número zero!")

nome = input("Digite o seu nome: ")
print(f"O seu nome é {nome}")