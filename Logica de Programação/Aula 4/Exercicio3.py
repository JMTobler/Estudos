Nome = input("Entre com o nome do aluno: ")
N1 = float(input("Entre com a nota do 1º Bimestre: "))
N2 = float(input("Entre com a nota do 2º Bimestre: "))
N3 = float(input("Entre com a nota do 3º Bimestre: "))
N4 = float(input("Entre com a nota do 4º Bimestre: "))

Media = (N1 + N2 + N3+ N4) / 4

if Media < 60:
    print(f"O aluno {Nome} foi reprovado!")
else:
    print(f"O aluno {Nome} foi aprovado!")