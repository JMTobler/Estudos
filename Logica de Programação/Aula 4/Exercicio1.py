#Codigo para saber a idade e a categoria de basquete que a pessoa se encaixa
Id = int(input("Entre com a sua idade: "))

if Id >= 10 and Id <= 12:
    print(f"A sua idade é {Id} então sua categoria será a Sub-11")
elif Id >= 13 and Id <= 14:
    print(f"A sua idade é {Id} então sua categoria será a Sub-13")
elif Id >= 15 and Id <= 16:
    print(f"A sua idade é {Id} então sua categoria será a Sub-15")
elif Id >= 17 and Id <= 18:
    print(f"A sua idade é {Id} então a sua categoria será a Sub-18")
else:
    print(f"A idade {Id} não tem categoria disponivel!")
    