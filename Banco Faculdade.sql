create database Faculdade;

create table Diciplina(
   id INT AUTO_INCREMENT PRIMARY KEY,
   nome VARCHAR(100)
);

create table Turma(
    id INT AUTO_INCREMENT PRIMARY KEY,
    diciplina_id INT,
    sala VARCHAR(50),
   FOREIGN KEY (diciplina_id) REFERENCES Diciplina(id)
);

create table Professor(
   id INT AUTO_INCREMENt PRIMARY KEY,
   nome VARCHAR(100)
);

CREATE TABLE Turma_Professor(
   turma_id INT,
   professor_id INT,
   PRIMARY KEY (turma_id, professor_id),
   FOREIGN KEY (turma_id) REFERENCES Turma(id),
   FOREIGN KEY (professor_id) REFERENCES Professor(id)
);

CREATE TABLE Aluno(
   id INT auto_increment primary key,
   nome varchar(100)
);

CREATE TABLE Turma_Aluno(
   turma_id INT,
   aluno_id INT,
   PRIMARY KEY (turma_id, aluno_id),
   FOREIGN KEY (turma_id) REFERENCES Turma(id),
   FOREIGN KEY (aluno_id) REFERENCES Aluno(id)
);

insert into Diciplina(nome) VALUES
('Matematica'),
('Geografia'),
('Filsofia'),
('Historia'),
('Portugues');

insert into Turma(diciplina_id, sala) VALUES
(1,'Sala 201'),
(1,'Sala 202'),
(1,'Sala 203');


insert into Professor(nome) VALUES
('Professor 1'),
('Professor 2'),
('Professor 3'),
('Professor 4');

insert into Turma_Professor(turma_id, professor_id) VALUES
(1,1),
(2,2),
(3,3);

insert into Aluno(nome) values
('Aluno 1'),
('Aluno 2'),
('Aluno 3'),
('Aluno 4'),
('Aluno 5'),
('Aluno 6'),
('Aluno 7'),
('Aluno 8'),
('Aluno 9'),
('Aluno 10'),
('Aluno 11'),
('Aluno 12'),
('Aluno 13'),
('Aluno 14'),
('Aluno 15');

INSERT INTO turma_aluno(turma_id, aluno_id)
SELECT t.id, a.id
FROM Turma t
JOIN Diciplina d ON t.diciplina_id = d.id
JOIN Aluno a
WHERE d.nome = 'Matematica'
LIMIT 15;

select * from  Aluno, Professor, Turma, Diciplina;



