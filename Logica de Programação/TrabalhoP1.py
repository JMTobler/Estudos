import os

def Calcular():

    os.system("Cls")

    Bonus = 0

    while True:
        os.system("Cls")
        Nome = input("Entre com o seu nome: ")
        
        if Nome.isalpha():
            break
        else:
            os.system("Cls")
            print("Números são inválidos. Tente apenas letras")
            os.system("Pause")

    while True:
        try:
            os.system("Cls")
            Horas = float(input("Entre com a quantidade de horas trabalhadas: "))

            if Horas < 0:
                os.system("Cls")
                print("Horas não podem ser negativas insira horas válidas!")
                os.system("Pause")
            else:
                break
        except:
            os.system("Cls")
            print("Valor inserido é inválido. Use apenas números!")
            os.system("Pause")

    while True:
        try:
            os.system("Cls")
            SPHora = float(input("Entre com o seu salário por hora: "))

            if SPHora < 0:
                os.system("Cls")
                print("O seu salário não pode ser negativo. Insira um salário válido")
                os.system("Pause")
            else:
                break
        except:
            os.system("Cls")
            print("Valor inserido foi inválido. Tente apenas números!")
            os.system("Pause")

    Bruto = Horas * SPHora

    if Bruto > 2000:
        os.system("Cls")
        Bonus = Bruto + ((10 / 100) * Bruto)
        print(f"Olá {Nome} Você recebeu um bônus de 10%!\nO seu salário bruto foi de {Bruto}\nO seu salário com o bônus foi {Bonus}")
        os.system("Pause")
    else:
        os.system("Cls")
        print(f"Olá {Nome} infelizmente você não recebeu o bônus esse mês!\nO seu salário bruto foi de {Bruto}!\nO seu salário foi de {Bruto}")
        os.system("Pause")
    
    Continuar()
    
def Menu():
    print("### Bem vindo ao sistema de salários ###\n\n")

    while True:
        print("Oque deseja fazer?\n")
        print("1-Calcular salário!")
        print("2-sair do sistema!")
        try:
            Op = int(input("Opção:"))
            
            if Op == 1:
                Calcular()
            elif Op == 2:
                os.system("cls")
                print("Obrigado por usar o sistema!")
                os.system("Pause")
                break
            else:
                os.system("cls")
                print("Opção não encontrada no menu!")
                os.system("Pause")
        except:
            os.system("cls")
            print("Opção Inválida! Escolha apenas as opções do menu!")
            os.system("Pause")

def Continuar():

    os.system("cls")
    
    Cdnv = input("Deseja continuar calculando? Y/N \n")

    if Cdnv == "Y":
        Calcular()
    elif Cdnv == "N":
        Menu()
    else:
        os.system("cls")
        print("Valor inválido! Use apenas as opççoes do menu e respeite as letras maiusculas")
        os.system("Pause")
        Continuar()

Menu()
            