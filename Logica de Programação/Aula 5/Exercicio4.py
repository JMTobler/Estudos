#Verifica quantos pares tem no array
Lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
Pares = 0

for Num in Lista:
    if Num % 2 == 0:
        Pares += 1

print(Pares)

#Verifica quantos impares tem no array
Lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
Impares = 0

for Num in Lista:
    if Num % 2 != 0:
            Impares += 1

print(Impares)

#Verifica quantos numeros positivos tem no array
Lista = [1, -2, 3, 4, -5, 6,- 7, -8, 9, -10, 11]
Positivos = 0

for Num in Lista:
    if Num > 0:
        Positivos += 1

print(Positivos)

#Verifica quantos numeros negativos tem no array
Lista = [1, -2, 3, 4, -5, 6,- 7, -8, 9, -10, 11]
Negativos = 0

for Num in Lista:
    if Num < 0:
        Negativos += 1

print(Negativos)

#cria um array apenas com os numeros pares
Lista = [1, -2, 3, 4, -5, 6,- 7, -8, 9, -10, 11]
Pares = []

for Num in Lista:
    if Num % 2 == 0:
        Pares.append(Num)

print(Pares)

#Cria um array apenas com numeros impares
Lista = [1, -2, 3, 4, -5, 6,- 7, -8, 9, -10, 11]
Impares = []

for Num in Lista:
    if Num % 2 != 0:
        Impares.append(Num)

print(Impares)

#Cria um array apenas com numeros positivos
Lista = [1, -2, 3, 4, -5, 6,- 7, -8, 9, -10, 11]
Positivos = []

for Num in Lista:
    if Num > 0:
        Positivos.append(Num)

print(Positivos)

#Cria um array com os numeros negativos
Lista = [1, -2, 3, 4, -5, 6,- 7, -8, 9, -10, 11]
Negativos = []

for Num in Lista:
    if Num < 0:
        Negativos.append(Num)

print(Negativos)