#função para falor ola e o nome da pessoa
def Saudacao(Nome):
    print(f"Olá, {Nome}")

Saudacao("João!")

#função para fazer o quadrado do 10
def Quadrado(Num):
    return Num ** 2

result = Quadrado(10)

print(f"O quadrado de 10 é: {result}")

#função para somar os numeros dos resultados
def soma(a, b):
    return a + b

Result1 = soma(3, 5)
Result2 = soma(10, 20)

print("Resultado 1:", Result1)
print("Resultado 2:", Result2)