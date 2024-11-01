"use strict";
const alunos = [
    {
        nome: 'Joao',
        cursos: ['Backend', 'java'],
        idade: 24
    },
    {
        nome: 'Carlos',
        cursos: ['Front-end', 'ui/ux'],
        idade: 23
    }
];
alunos.push({
    nome: "julia",
    cursos: ['arquitetura'],
    idade: 29
});
const novoAluno = {
    nome: 'Lucas',
    idade: 32,
};
function exibeAluno(aluno) {
    console.log(aluno.nome);
}
