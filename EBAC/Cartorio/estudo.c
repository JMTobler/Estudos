#include <stdio.h>
#include <locale.h>

int calculadora(){
    int Op = 0;

    setlocale(LC_ALL,"portuguese");

    printf("### Bem vindo a Calculadora! ### \n\n");

    printf("Escolha a operação desejada:\n");
    printf("1-Soma!\n");
    printf("2-Sumtração!\n");
    printf("3-Divisão!\n");
    printf("4-Multiplicação!\n");

    scanf("%d", &Op);

    printf("Voce escolheu: %d", Op);
}

int main(){
    int opcao = 0;
    int laco = 1;

    for(laco =1; laco = 1;){

        setlocale(LC_ALL, "Portuguese");

        printf("### Bem Vindo ao Sistema! ### \n\n");

        printf("Escolha oque deseja acessar:\n");
        printf("1-Calculadora!\n");
        printf("2-Bloco de notas!\n");
        printf("3-Excluir Bloco de Notas!\n");
        
        scanf("%d", &opcao);

        system("cls");

        switch(opcao){
            case 1:
            calculadora();
            break;

            case 2:
            printf("Voce escolheu o bloco de notas!");
            return 0;
            break;

            case 3:
            printf("Voce escolheu excluir bloco de notas!");
            return 0;
            break;

            default:
                printf("Opcao invalida!");
                return 0;
            break;
        }

        system("pause");
    }
}