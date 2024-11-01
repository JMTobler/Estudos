#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
		
int registro(){
	
	char arquivo[40]; // inicio da definição de variaveis
	char cpf[40];
	char nome[40];
	char sobrenome[40];
	char cargo[40]; // fim da definição de variaveis
	
	
	printf("Digite o CPF a ser cadastrado: ");
	scanf("%s", cpf);
	
	strcpy(arquivo, cpf); // copia o valor do cpf para o nome do arquivo
	
	FILE *file;
	file = fopen(arquivo, "w");
	fprintf(file,cpf);
	fclose(file);
	
	file = fopen(arquivo, "a");
	fprintf(file,",");
	fclose(file);
	
	printf("Digite o nome a ser cadastrado: ");
	scanf("%s",nome);
	
	file = fopen(arquivo, "a");
	fprintf(file,nome);
	fclose(file);
	
	file = fopen(arquivo, "a");
	fprintf(file,",");
	fclose(file);
	
	printf("Digite o sobrenome a ser cadastrado: ");
	scanf("%s",sobrenome);
	
	file = fopen(arquivo, "a");
	fprintf(file,sobrenome);
	fclose(file);
	
	file = fopen(arquivo, "a");
	fprintf(file,",");
	fclose(file);
	
	printf("Digite o cargo a ser cadastrado: ");
	scanf("%s",cargo);
	
	file = fopen(arquivo, "a");
	fprintf(file,cargo);
	fclose(file);	
	
    system("pause");

}

int consulta(){

	setlocale(LC_ALL, "Portuguese");

	char cpf[40];
	char conteudo[200];
	
	printf("Digite o CPF a ser consultado: "); 
	scanf("%s",cpf);
	
	FILE *file;
	file = fopen(cpf,"r");
	
	if(file == NULL) // verificação se o usuariuo ja foi cadastrado
	{
		printf("N�o foi possivel abrir o arquivo, n�o localizado!.\n");
	}
	
	while(fgets(conteudo, 200, file) != NULL)
	{
		printf("\nEssas s�o as informa��es do usu�rio: ");
		printf("%s", conteudo);
		printf("\n\n");
	}
	
	fclose(file);
	system("pause");


}

int deletar(){

	char cpf[40];
	
	printf("Digite o CPF do usu�rio a ser deletado: "); // recebe o valor do cpf a ser deletado
	scanf("%s",cpf);
		
		
	
	FILE *file;	
	file = fopen(cpf,"r");
	
	if(file == NULL){

		printf("O usu�rio n�o se encontra no sistema!.\n");
		system("pause");
	}
	else{

		fclose(file);
		remove(cpf);
		FILE *file;	
		file = fopen(cpf,"r");
		if(file == NULL)
		{
			printf("Usu�rio deletado com sucesso!.\n");
			system("pause");
		}
	}
	fclose(file);
	
}
	
int main(){

	int opcao=0;
	int laco=1;
	char senhadigitada[]="a";
	int comparacao;
	
	printf("### Cart�rio da EBAC ###\n\n");
	printf("Login de adminstrador!\n\nDigite a sua senha: ");
	scanf("%s",senhadigitada);
	
	comparacao = strcmp(senhadigitada, "admin"); // definição da senha de acesso
	
	if(comparacao == 0){

		system ("cls");
		for(laco=1;laco=1;){

			setlocale(LC_ALL, "Portuguese");
			
			printf("### Cart�rio da EBAC ###\n\n"); // inicio do menu
			printf("Escolha a op��o desejada do menu\n\n");
			printf("\t1 - Registrar nomes\n");
			printf("\t2 - Consultar nomes\n");
			printf("\t3 - Deletar nomes\n\n"); 
			printf("\t4 - Sair do sistema\n\n");
			printf("Op��o: "); // fim do menu
				
			scanf("%d", &opcao);
		
			system("cls");
	
			switch(opcao){ // verificação de opção selecionada

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
				printf("Obrigado por utilizar o sistema!\n");
				return 0;
				break;
			
	
				default:
				printf("Essa op��o n�o est� disponivel!\n");
				system("pause");
				break;
			}
		}
	}
	
	else
		printf("Senha incorreta!");	

}
