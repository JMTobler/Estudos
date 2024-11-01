import random

Num = int(input("Descubra o numero de 1 a 100: "))

Rnum = random.randint(1,100)

if Num < Rnum:
    print(f"O numero {Num} é menor que o numero a ser adivinhado({Rnum})")
elif Num > Rnum:
    print(f"O numero {Num} é maior que o numero a ser adivinhado({Rnum})")
elif Num == Rnum:
    print(f"Parabens!! o Numero {Num} é igual ao numero a ser adivinhado({Rnum})")
