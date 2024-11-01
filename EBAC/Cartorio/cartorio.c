#include <stdio.h> //biblioteca de comunicação com o usuario
#include <stdlib.h> //biblioteca de alocação de espaço em memória
#include <locale.h> //biblioteca de alocações de texto por região
#include <string.h> //biblioteca responsavel por cuidar das string

int registro() //função responsavel pelo cadastro de usuarios
{
	system("cls");
	
	char arquivo[40]; // inicio da criação de variaveis
	char cpf[40];
	char nome[40];
	char sobrenome[40];
	char cargo[40];
	int opcao = 1; // final da criação de variaveis
	
	printf("Digite o CPF a ser cadastrado: "); //coletando informaçao do usuario
	scanf("%s", cpf); //%s = string
	
	strcpy(arquivo, cpf); //responsavel por copiar os valores das string
	
	FILE *file; //cria o arquivo no banco de dados
	file = fopen(arquivo, "w"); //cria o arquivo
	fprintf(file, cpf); //salva o valor da variavel no arquivo
	fclose(file); //fecha o arquivo
	
	file = fopen(arquivo, "a");
	fprintf(file,",");
	fclose(file);
	
	printf("Digite o nome a ser cadastrado: ");
	scanf("%s", nome);
	
	file = fopen(arquivo, "a");
	fprintf(file, nome);
	fclose(file);
	
	file = fopen(arquivo, "a");
	fprintf(file,",");
	fclose(file);
	
	printf("Digite o sobrenome a ser cadastrado: ");
	scanf("%s",sobrenome);
	
	file = fopen(arquivo, "a");
	fprintf(file, sobrenome);
	fclose(file);
	
	file = fopen(arquivo, "a");
	fprintf(file,",");
	fclose(file);
	
	printf("Digite o cargo a ser cadastrado: ");
	scanf("%s",cargo);
	
	file = fopen(arquivo, "a");
	fprintf(file, cargo);
	fclose(file);
	
	printf("Usuario Cadastrado com sucesso!!\n\n");
	
	printf("Para voltar ao menu digite - 1\n");
	printf("Para continuar cadastrando digite - 2 \n\n");
	
	printf("Opção:");
	scanf("%d", &opcao);
	
	if(opcao == 1){
		return 1;
	}else{
		registro();
	}
	system("pause");
}

int consulta() //função responsavel pela consulta de dados
{
	char cpf[40]; // inicio da criação de string
	char conteudo[200];// fim da criação de variaveis
	
	setlocale(LC_ALL, "Portuguese");
	
	printf("Digite o CPF a ser consultado: ");
	scanf("%s", cpf);
	
	FILE *file;
	file = fopen(cpf, "r");
	
	if(file == NULL)
	{
		printf("Arquivo não localizado! \n");	
	}
	
	while(fgets(conteudo, 200, file) != NULL)
	{
		printf("\nEssas são as informaçoes do usuario: ");
		printf("%s", conteudo);
		printf("\n\n");
	}
	
	system("pause");
	
}

int deletar()
{
	char cpf[40];
	
	printf("Digite o CPF do usuario a ser deletado:");
	scanf("%s",cpf);
	
	remove(cpf);
		
	FILE * file;
	file = fopen(cpf, "r");
	
	if(file == NULL)
	{
		printf("Usuario não localizado no sistema! \n");
		system("pause");	
	}
}
	
int main()
{	
	system("cls");
	
	int opcao = 0; //Variavel definida para o menu
	int x = 1; //variavel definada para o for
	char Senha[10] = "a";
	int comparacao;
	
	printf("### Cartório da EBAC ###\n\n");
	printf("Login de Administrador!\n\nDigite a senha:");
	scanf("%s",Senha);
	
	comparacao = strcmp(Senha, "admin");
	
	if(comparacao == 0){
	
		for(x = 1; x = 1;)
		{
		
			system("cls");
		
			setlocale(LC_ALL, "Portuguese"); //seta a linguagem para portugues
			
			printf("### Cartório da EBAC ###\n\n"); //inicio do menu
			
			printf("Escolha a opção desejada no menu:\n\n");
			printf("\t1 - Registrar nomes\n");
			printf("\t2 - Consultar nomes\n");
			printf("\t3 - Excluir nomes\n");
			printf("\t4 - Sair do Sistema\n\n");
			printf("Opção:"); //final do menu
			
			scanf("%d", &opcao); //armazena o valor da variavel do menu
			
			system("cls");
			
			switch(opcao) //verifica a opção escolhida pelo cliente
			{
				case 1:
					registro();
				break;
				
				case 2:
					consulta();
				break;
				
				case 3:
					deletar();
				break;
				
				case 4:
					printf("Obrigado por utilizar o Sistema!\n\n");
					return 0;
				break;
				
				default:
					printf("Essa opção não esta disponivel!! \n");
					system("pause");
				break;
			}
		}
	}else{
		printf("Senha incorreta!!");
	}
	
}
