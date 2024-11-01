Id = int(input("Entre com a sua idade: "))

if Id < 12:
    print("O seu ingresso será R$ 10,00")
elif Id >= 12 and Id <= 65:
    print("O seu ingresso será R$ 20,00")
elif Id > 65:
    print("O seu ingresso será R$ 15,00")