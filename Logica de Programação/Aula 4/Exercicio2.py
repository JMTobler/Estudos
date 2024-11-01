#Codigo para saber a idade, o nome e a categoria de basquete que a pessoa se encaixa
Nome = input("Digite o seu nome:")
Id = int(input("Entre com a sua idade: "))


if Id >= 10 and Id <= 12:
    print(f"O atleta {Nome} de {Id} anos se encaixa na categotra Sub-11")
elif Id >= 13 and Id <= 14:
    print(f"O atleta {Nome} de {Id} anos se encaixa na categoria Sub-13")
elif Id >= 15 and Id <= 16:
    print(f"O atleta {Nome} de {Id} anos se encaixa na categoria Sub-15")
elif Id >= 17 and Id <= 18:
    print(f"O atleta {Nome} de {Id} anos se encaixa na categoria Sub-18")
else:
    print(f"O atleta {Nome} de {Id} anos não se encaixa em nenhuma categoria")
    