# Faça um script com revisão de: variáveis, estrutura de decisão, estrutura de repetição e funções.

continuar = True

alunos = []
notas = []

def avaliarAluno(nome, nota):
    if nota < 5:
        print(f"O(A) aluno(a) {nome} reprovou.")
    elif nota <= 6.5:
        print(f"O(A) aluno(a) {nome} passou, mas precisa revisar um pouco.")
    else:
        print(f"O(A) aluno(a) {nome} passou!")

while continuar:
    nome = str(input("Digite o nome do(a) aluno(a) que deseja cadastrar: "))
    nota = float(input("Digite a nota do(a) aluno(a): "))

    print(f"{nome} teve a nota {nota}")

    avaliarAluno(nome,nota)

    alunos.append(nome)
    notas.append(nota)

    pergunta = input("Deseja continuar inserindo alunos? (S/N)")

    if pergunta == "S" or pergunta == "s":
        continuar = True
    else:
        continuar = False

print(f"Alunos cadastrados:")

for i in range(0, len(alunos)):
    print(f"{alunos[i]} tirou {notas[i]}")