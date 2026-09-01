import pandas as pd

agora = {'ITSA4', 'ECOR3', 'TAEE11', 'B3SA3', 'VALE3'}
ativa = {'B3SA3', 'BBDC4', 'BBSE3', 'BRDT3', 'TAEE11', 'TRPL4', 'VALE3', 'VIVT3'}
genial = {'CPFE3', 'BEEF3', 'CYRE3', 'SAPT4', 'TRPL4'}
easynvest = {'B3SA3', 'AGRO3', 'COCA34', 'TAEE11', 'VALE3', 'CPLE11', 'ITSA4', 'ABEV3'}
elite = {'BBDC4', 'BBSE3', 'BRSR6', 'EGIE3', 'ITSA4', 'SAPR11', 'TAEE11', 'TRPL4', 'VIVT3', 'VALE3'}
guide = {'ALUP11', 'BBAS3', 'CYRE3', 'CPFE3', 'KLBN11', 'PSSA3', 'TIMS3', 'VALE3'}
nova_futura = {'B3SA3', 'CYRE3', 'GGBR4', 'VIVT3', 'TRPL4'}
orama = {'ABCB4', 'BBDC4', 'BEEF3', 'CESP', 'EGIE3'}

if agora & ativa & genial & easynvest & elite & guide & nova_futura & orama:
    acao = agora & ativa & genial & easynvest & elite & guide & nova_futura & orama
    print(f"A ação {acao} está na carteira de todas as corretoras!")
else:
    print("Não há nenhuma ação em comum em todas as corretoras.")

if agora & ativa & elite & easynvest:
    acao = agora & ativa & elite & easynvest
    print(f"A(s) ação(ões) {acao} está(ão) na carteira das 4 corretoras escolhidas!")
else:
    print("Não há nenhuma ação em comum nas 4 corretoras escolhidas.")

if agora ^ ativa ^ elite ^ easynvest:
    acoes_unicas = agora ^ ativa ^ elite ^ easynvest
    print(f"A(s) ação(ões) única(s) das 4 corretoras escolhidas são: {acoes_unicas}!")
else:
    print("Não há nenhuma ação única nas 4 corretoras escolhidas.")

print(agora.issubset(ativa))
print(agora.issubset(elite))
print(agora.issubset(easynvest))
print(agora.issuperset(ativa))
print(agora.issuperset(elite))
print(agora.issuperset(easynvest))

print(ativa.issubset(agora))
print(ativa.issubset(elite))
print(ativa.issubset(easynvest))
print(ativa.issuperset(agora))
print(ativa.issuperset(elite))
print(ativa.issuperset(easynvest))

print(elite.issubset(agora))
print(elite.issubset(ativa))
print(elite.issubset(easynvest))
print(elite.issuperset(agora))
print(elite.issuperset(ativa))
print(elite.issuperset(easynvest))

print(easynvest.issubset(agora))
print(easynvest.issubset(ativa))
print(easynvest.issubset(elite))
print(easynvest.issuperset(agora))
print(easynvest.issuperset(ativa))
print(easynvest.issuperset(elite))

print("Não há subsets e nem supersets entre as 4 corretoras escolhidas.")

print(f"Ação(ões) única(s) da Easynvest: {easynvest ^ (agora.union(ativa, elite))}")
print(f"Ação(ões) única(s) da Elite: {elite ^ (agora.union(ativa, easynvest))}")
print(f"Ação(ões) única(s) da Ativa: {ativa ^ (agora.union(elite, easynvest))}")
print(f"Ação(ões) única(s) da Ágora: {agora ^ (ativa.union(elite, easynvest))}")