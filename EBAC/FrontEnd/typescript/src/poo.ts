class pessoa {
    nome: string;
    renda?: number;

    constructor(nome: string, renda?: number){
        this.nome = nome;
        this.renda = renda;
    }

    dizOla(): string {
        return `${this.nome} disse olá`;
    }
}

class contaBancaria {
    protected saldo: number = 0;
    numeroConta: number;

    constructor(numeroDaConta: number) {
        this.numeroConta = numeroDaConta;
    }

    static retornaNumeroBanco() {
        return 125;
    }

    private getSaldo() {
        return this.saldo;
    }

    depositar(valor: number) {
        this.saldo += valor;
    }
}

class contaBancariaPessoaFisica extends contaBancaria {
    depositar(valor: number): void {
        this.saldo = valor * 2;
    }
}

const contaJoao = new contaBancariaPessoaFisica(123);
contaBancaria.retornaNumeroBanco()