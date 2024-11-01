type aluno = {
    nome: string;
    cursos?: string[];
    idade: number;
}

const alunos: aluno[] = [
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
]

alunos.push({
    nome: "julia",
    cursos: ['arquitetura'],
    idade: 29
});

const novoAluno: aluno = {
    nome: 'Lucas',
    idade: 32,
}

function exibeAluno(aluno: aluno) {
    console.log(aluno.nome)
}