/*Criando as tabelas*/
CREATE TABLE Aluno (
    ra SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    dataNascimento DATE NOT NULL,
    sexo CHAR(1) CHECK (sexo IN ('M', 'F')) NOT NULL,
    escolaridade VARCHAR(50),
    email VARCHAR(100) NOT NULL
);

CREATE TABLE Professor (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    dataNascimento DATE NOT NULL,
    sexo CHAR(1) CHECK (sexo IN ('M', 'F')) NOT NULL,
    titulacao VARCHAR(50),
    email VARCHAR(100) NOT NULL
);

CREATE TABLE Periodo (
    id SERIAL PRIMARY KEY,
    dataInicio DATE NOT NULL,
    dataFim DATE NOT NULL
);

CREATE TABLE Curso (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    cargaHoraria INT NOT NULL,
    status BOOLEAN NOT NULL,
    professorResponsavel INT REFERENCES Professor(id),
    periodoOferta INT REFERENCES Periodo(id)
);

CREATE TABLE Matricula (
    id SERIAL PRIMARY KEY,
    raAluno INT REFERENCES Aluno(ra),
    cursoId INT REFERENCES Curso(id),
    dataMatricula DATE NOT NULL,
    nota1 DECIMAL(5, 2),
    nota2 DECIMAL(5, 2),
    notaFinal DECIMAL(5, 2) GENERATED ALWAYS AS 
        (COALESCE(nota1, 0) * 0.5 + COALESCE(nota2, 0) * 0.5) STORED,
    resultado VARCHAR(10) GENERATED ALWAYS AS 
        (CASE 
            WHEN COALESCE(nota1, 0) * 0.5 + COALESCE(nota2, 0) * 0.5 >= 7.0 
            THEN 'Aprovado' 
            ELSE 'Reprovado' 
        END) STORED
);

/*Criando os indexs*/
CREATE INDEX idx_aluno_cpf ON Aluno(cpf);
CREATE INDEX idx_professor_cpf ON Professor(cpf);

/*inserindo Dados*/
INSERT INTO Aluno (nome, cpf, dataNascimento, sexo, escolaridade, email) VALUES 
('João Silva', '12345678901', '1990-05-10', 'M', 'Ensino Médio', 'joao@gmail.com'),
('Maria Oliveira', '23456789012', '1992-08-15', 'F', 'Ensino Superior', 'maria@gmail.com'),
('Jorge Matheus', '10987654321', '1995-07-20', 'M', 'Ensino Médio', 'jorge@gmail.com'),
('Jaqueline Cristina', '56487236546', '2000-12-31', 'F', 'Ensino Superior', 'jaqueline@gmail.com'),
('Mario Fontes', '09080706059', '1975-10-10', 'M', 'Ensino Superior', 'mario@gmail.com'),
('Silvana Silveira', '20212223242', '1980-01-02', 'F', 'Ensino Médio', 'silvana@gmail.com');

INSERT INTO Professor (nome, cpf, dataNascimento, sexo, titulacao, email) VALUES 
('Carlos Pereira', '34567890123', '1980-07-20', 'M', 'Doutorado', 'carlos@gmail.com'),
('Ana Souza', '45678901234', '1975-09-25', 'F', 'Mestrado', 'ana@gmail.com'),
('Carlota Joaquina', '12345678925', '1965-12-25', 'F', 'Doutorado', 'carlota@gmail.com'),
('Manoel', '45786237812', '1945-01-25', 'M', 'Mestrado', 'manoel@gmail.com');

INSERT INTO Periodo (dataInicio, dataFim) VALUES
('2020-01-01', '2022-12-31'),
('2024-01-01', '2026-12-31');

INSERT INTO Curso (nome, valor, cargaHoraria, status, professorResponsavel, periodoOferta) VALUES
('Administração', '1000', '580', 'false', '3', '1'),
('Engenharia de software', '2000', '1500', 'true', '1', '2');

INSERT INTO Matricula (raAluno, cursoId, dataMatricula, nota1, nota2) VALUES 
('1', '1', '2020-01-02', '5', '3'),
('4', '1', '2020-02-01', '2', '10'),
('6', '1', '2020-01-05', '10', '10'),
('2', '2', '2024-01-05', '5', '5'),
('3', '2', '2024-01-05', '2', '5'),
('5', '2', '2024-01-05', '4', '3');

/*Fazendo as listagens*/
SELECT * FROM Aluno;

SELECT * FROM Professor;

SELECT * FROM Periodo;

SELECT * FROM Curso;

SELECT * FROM Matricula;

SELECT ra, nome, email 
FROM Aluno 
WHERE sexo = 'F' 
ORDER BY nome;

SELECT nome 
FROM Professor 
WHERE titulacao IS NULL;

SELECT Aluno.ra, Aluno.nome, Aluno.cpf, Matricula.dataMatricula, Curso.nome, Curso.cargaHoraria
FROM Matricula 
JOIN Aluno ON Matricula.raAluno = Aluno.ra
JOIN Curso ON Matricula.cursoId = Curso.id
WHERE Curso.nome = 'Administração';

SELECT Curso.nome, Curso.cargaHoraria, Curso.valor, Professor.nome, Professor.titulacao
FROM Curso 
JOIN Professor ON Curso.professorResponsavel = Professor.id
JOIN Periodo ON Curso.periodoOferta = Periodo.id
WHERE Periodo.dataInicio >= '2020-01-01' AND Periodo.dataFim <= '2026-12-31';

/*Fazendo alteraçoes nas tabelas*/
UPDATE Professor SET titulacao = 'Mestrado' WHERE titulacao = 'Mestre';

/*Exclusão de Períodos Letivos de Anos Anteriores*/
DELETE FROM matricula WHERE cursoId = 1;
DELETE FROM Curso WHERE periodoOferta = 1;
DELETE FROM Periodo WHERE EXTRACT(YEAR FROM dataFim) < 2023;