Nome = input("Entre com o nome do aluno: ")

N1 = float(input("Entre com a nota do 1º bimestre: "))
while N1 < 0 or N1 > 100:
    N1 = float(input("Entre com a nota do 1º bimestre: "))

N2 = float(input("Entre com a nota do 2º bimestre: "))
while N2 < 0 or N2 > 100:
    N2 = float(input("Entre com a nota do 2º bimestre: "))

N3 = float(input("Entre com a nota do 3º bimestre: "))
while N3 < 0 or N3 > 100:
    N3 = float(input("Entre com a nota do 3º bimestre: "))

N4 = float(input("Entre com a nota do 4º bimestre: "))
while N4 < 0 or N4 > 100:
    N4 = float(input("Entre com a nota do 4º bimestre: "))

Media = (N1 + N2 + N3+ N4) / 4

if Media < 60:
    print(f"O aluno {Nome} foi reprovado com media {Media}!")
else:
    print(f"O aluno {Nome} foi aprovado com media {Media}!")