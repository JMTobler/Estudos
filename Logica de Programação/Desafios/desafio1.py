Ano = int(input("Entre com o ano: "))

if Ano % 4 == 0 or Ano % 400 == 0:
    print(f"O ano {Ano} é Bissexto!")
else:
    print(f"O ano {Ano} não é Bissexto!")

