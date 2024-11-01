import os

while True:
    try:
        Id = int(input("Qual a sua idade? \n"))

        if Id < 0:
            os.system("cls")
            print("Use somente números positivos!")
            os.system("Pause")
        else:
            break
    except:
        os.system("cls")
        print("Valor inserido é inválido. Tente usar somente números!")
        os.system("Pause")
        