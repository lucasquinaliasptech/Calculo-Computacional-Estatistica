a = 2

potencia_ao_quadrado = a**2
potencia_ao_cubo = a**3
potencia_a_quarta = a**4

def potencia(numero, potencia):
    return numero**potencia

print("Versão com variáveis:")
print(f"Potência ao quadrado: {potencia_ao_quadrado}")
print(f"Potência ao cubo: {potencia_ao_cubo}")
print(f"Potência à quarta: {potencia_a_quarta}")

print("\nVersão com cálculo na exibição")
print(f"Potência ao quadrado: {a**2}")
print(f"Potência ao cubo: {a**3}")
print(f"Potência à quarta: {a**4}")

print("\nVersão com função")
print(f"Potência ao quadrado: {potencia(a,2)}")
print(f"Potência ao cubo: {potencia(a,3)}")
print(f"Potência à quarta: {potencia(a,4)}")