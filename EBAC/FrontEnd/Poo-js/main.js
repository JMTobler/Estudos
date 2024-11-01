const carroDoJoão = {
    modelo: 'Fiesta',
    fabricante: 'Ford',
    anoModelo: '2024',
    anoFabricacao: '2019',
    acelerar: function() {
        console.log('Vruuuum!!!');
    }
}

const carroDaMaria = {
    modelo: 'Gol',
    fabricante: 'volkswagen',
    anoModelo: '2020',
    anoFabricacao: '2010',
    acelerar: function() {
        console.log('Vrum!!');
    }

}

function Carro(modelo, fabricante, anoModelo, anoFabricacao) {
    this.modelo = modelo;
    this.fabricante = fabricante;
    this.anoModelo = anoModelo;
    this.anoFabricacao = anoFabricacao;

    this.acelerar = function() {
        console.log('acelerar')
    }
}

const carroDoJoao2 = new Carro('Fiesta', 'Ford', 2020, 2019);
const carroDaMaria2 = new Carro('KA', 'Ford', 2020, 2019);

console.log(carroDoJoao2);
console.log(carroDaMaria2);