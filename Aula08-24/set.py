array = [1,2,2,1]
s = set(array)

# print(s)

A = {1, 2, 3} 
B = {3, 4, 5} 
C = {1, 2}
print(A | B) # União → {1, 2, 3, 4, 5} 
print(A.union(B)) # União → {1, 2, 3, 4, 5} 
print(A & B) # Interseção → {3} 
print(A.intersection(B)) # Interseção → {3} 
print(A - B) # Diferença → {1, 2} 
print(B - A) # Diferença → {4, 5} 

print()

print(1 in B)
print(1 not in B)

print()

print(C.issubset(A))
print(A.issuperset(C))
print(C.issuperset(A))

print()

print(A == B)
print(A != B)

print()

print(A^B)
print(A.symmetric_difference(B))

print()

print(A)
A.add(5)
A.add(5)
print(A)
A.remove(5)
print(A)

print()
nums = [1,2,3,4,5,6,7,8,9,10]
numeros = {n for n in nums if n % 2 == 0}
print(numeros)