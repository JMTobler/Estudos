class Conta {
    numeroConta: number;
    saldo: number = 0;

    constructor(numeroDaConta: number) {
        this.numeroConta = numeroDaConta;
    }
}

class ContaSalario extends Conta {
    depositar(valor: number) {
        this.saldo += valor;
    }
}

interface ITransacional {
    tranferir: (valor: number, destinatario: Conta) => boolean;
    taxaTransferencia: number;
}

class ContaCorrente extends Conta implements ITransacional {
    tranferir(valor: number, destinatario: Conta) {
        destinatario.saldo += (valor - this.taxaTransferencia);
        return true;
    };

    taxaTransferencia: number = 0;

}