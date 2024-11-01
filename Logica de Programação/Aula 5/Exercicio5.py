while True:
    try:
        N1 = int(input("Nota 1: "))
        if N1 < 0 or N1 > 100:
            print("Insira notas entre 0 e 100!")
        else:
            break
    except:
        print("O valor inserido é invalido, tente usar um numero inteiro")
