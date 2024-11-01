#Codigo de uma calculadora
print("Escolha uma operação: \n")
print("1-Soma! \n")
print("2-Subtração! \n")
print("3-Multiplicação! \n")
print("4-Divisão! \n")
Op = int(input("Qual operação deseja? "))

if Op == 1:
    print("Voce escolheu Soma \n")
    N1 = int(input("Entre com o primeiro Numero: "))
    N2 = int(input("Entre com o segundo Numero: "))

    Soma = N1 + N2

    print(f"A soma dos numeros {N1} e {N2} é {Soma}")
elif Op == 2:
    print("Voce escolheu Subtração \n")
    N1 = int(input("Entre com o primeiro Numero: "))
    N2 = int(input("Entre com o segundo Numero: "))

    Soma = N1 - N2

    print(f"A subtração dos numeros {N1} e {N2} é {Soma}")
elif Op == 3:
    print("Voce escolheu Multiplicação \n")
    N1 = int(input("Entre com o primeiro Numero: "))
    N2 = int(input("Entre com quantas vezes o numero vai ser multiplicado: "))

    Soma = N1 * N2

    print(f"A multiplicação dos numeros {N1} e {N2} é {Soma}")
elif Op == 4:
    print("Voce escolheu Divisao! \n")

    N1 = int(input("Entre com o numero a ser dividido: "))
    N2 = int(input("Entre com a quantidade de vezes a ser divido: "))

    Soma = N1 / N2

    print(f"A divisao do {N1} por {N2} é igual a {Soma}")
else:
    print(f"A opção {Op} é invalida selecione apenas as opçoes do menu!")