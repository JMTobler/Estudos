while True:
    Nome = input("Qual o seu nome?\n")

    if Nome.isnumeric():
       print("Utilize somente letras em seu nome!")
    else:
      break 

while True:
    try:
        RendaMensal = float(input("Entre com a sua renda mensal!\n"))
        if RendaMensal < 0:
            print("Valor invalido, Utilize apenas numeros positivos!")
        else:
            break
    except:
        print("Valor invalido, Utilize apenas valores validos!(Numerais Positivos)")

while True:
    try:
        Aluguel = float(input("Entre com o valor gasto com aluguel/moradia!\n"))
        if Aluguel < 0:
            print("Valor invalido, Utilize apenas numeros positivos!")
        else:
            break
    except:
        print("Valor invalido, Utilize apenas valores validos!(Numerais Positivos)")

while True:
    try:
        Alimentacao = float(input("Entre com o valor gasto com alimentação!\n"))
        if Alimentacao < 0:
            print("Valor invalido, Utilize apenas numeros positivos!")
        else:
            break
    except:
        print("Valor invalido, Utilize apenas valores validos!(Numerais positivos)")

while True:
    try:
        Transporte = float(input("Entre com o valor gasto em transporte!\n"))
        if Transporte < 0:
            print("Valor invalido, Utilize apenas numeros positivos!")
        else:
            break
    except:
        print("Valor invalido, Utilize apenas valores validos!(Numerais positivos)")

while True:
    try:
        Saude = float(input("Entre com o valor gasto em saude!\n"))
        if Saude < 0:
            print("Valor invalido, Utilize apenas numeros positivos!")
        else:
            break
    except:
        print("Valor invalido, Utilize somente valores validos(Numerais positivos)")

while True:
    try:
        Educacao = float(input("Entre com o valor gasto em educação!\n"))
        if Educacao < 0:
            print("Valor invalido, Utilize apenas numeros positivos!")
        else:
            break
    except:
        print("Valor invalido, Utilize somente valores validos(Numerais positivos)")

while True:
    try:
        Entreterimento = float(input("Entre com o valor gasto em entreterimento!\n"))
        if Entreterimento < 0:
            print("Valor invalido, Utilize apenas numeros positivos!")
        else:
            break
    except:
        print("Valor invalido, Utilize somente valores validos(Numerais positivos)")

while True:
    try:
        DemaisDespesas = float(input("Entre com o valor gasto em demais despesas!\n"))
        if DemaisDespesas < 0:
            print("Valor invalido, Utilize apenas numeros positivos!")
        else:
            break
    except:
        print("Valor invalido, Utilize somente valores validos(Numerais positivos)")

TotalDespesas = Aluguel + Alimentacao + Transporte + Saude + Educacao + Entreterimento + DemaisDespesas

if TotalDespesas < RendaMensal:
    Sobrou = RendaMensal - TotalDespesas
    print(F"Olá {Nome} Voçê esta dentro do orçamento e sobrou R${Sobrou}. Aproveite como quiser ou invista para o futuro!")
elif TotalDespesas == RendaMensal:
    print(f"Olá {Nome} voçê esta dentro do orçamento, Infelizmente não sobrou nada esse mês")
else:
    Faltou = TotalDespesas - RendaMensal
    print(f"Olá {Nome} infelizmente esse mes voçê esta fora do orçamente e faltara R${Faltou}")
