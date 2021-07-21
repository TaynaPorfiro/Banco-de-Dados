CREATE DATABASE ExercicioAcademia
USE ExercicioAcademia

CREATE TABLE tbAluno(
codAluno INT PRIMARY KEY IDENTITY,
nomeAluno VARCHAR (30),
rgAluno   INT,
cpfAluno  INT,
);

CREATE TABLE tbFoneAluno(
codFoneAluno INT PRIMARY KEY IDENTITY,
numFoneAluno INT,
codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno),
);

CREATE TABLE tbTipoPlano(
codTipoPlano INT PRIMARY KEY IDENTITY,
descTipoPlano VARCHAR (50),
);

CREATE TABLE tbHorario(
codHorario INT PRIMARY KEY IDENTITY,
descHorario VARCHAR (50),
);

CREATE TABLE tbProfessor(
codProfessor INT PRIMARY KEY IDENTITY,
nomeProfessor VARCHAR (30),
);

CREATE TABLE tbFoneProfessor(
codFoneProfessor INT PRIMARY KEY IDENTITY,
numFoneProfessor INT,
codProfessor INT FOREIGN KEY REFERENCES tbProfessor(codProfessor),
);

CREATE TABLE tbModalidade(
codModalidade INT PRIMARY KEY IDENTITY,
nomeModalidade VARCHAR (30),
codProfessor INT FOREIGN KEY REFERENCES tbProfessor(codProfessor),
codHorario INT FOREIGN KEY REFERENCES tbHorario(codHorario),
);

CREATE TABLE tbMatricula(
codMatricula INT PRIMARY KEY IDENTITY,
codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno),
codTipoPlano INT FOREIGN KEY REFERENCES tbTipoPlano(codTipoPlano),
codModalidade INT FOREIGN KEY REFERENCES tbModalidade(codModalidade),
dataMatricula DATE,
);