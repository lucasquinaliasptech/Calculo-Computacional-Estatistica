import math

c = input("Digite o primeiro número: ")
d = input("Digite o segundo número: ")

c_elevado_ao_quadrado = math.pow(int(c),2)
c_elevado_ao_cubo = math.pow(int(c),3)
c_elevado_a_quarta = math.pow(int(c),4)
c_elevado_a_d = math.pow(int(c),int(d))

print(f"c elevado ao quadrado = {c_elevado_ao_quadrado}")
print(f"c elevado ao cubo = {c_elevado_ao_cubo}")
print(f"c elevado a quarta = {c_elevado_a_quarta}")
print(f"c elevado a d = {c_elevado_a_d}")