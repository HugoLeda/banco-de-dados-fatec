CREATE DATABASE MinhaEmpresa;

USE MinhaEmpresa;

CREATE TABLE Funcionarios(
	id		  INT AUTO_INCREMENT PRIMARY KEY,
  nome	  VARCHAR(100)	NOT NULL,
  cargo	  VARCHAR(50),
  salario	FLOAT
);

INSERT INTO Funcionarios
(nome, cargo, salario)
VALUES
('Rafa', 'Pesquisadora', 200000),
('João', 'CTO', 200000),
('Helo', 'Cyber Security Manager', 180000);

CREATE TABLE Departamentos(
	id			    INT AUTO_INCREMENT PRIMARY KEY,
  nome		    VARCHAR(50)		NOT NULL,
  localizacao	VARCHAR(100)
);

INSERT INTO Departamentos
(nome)
VALUES
('Diretoria'),
('Administracao');

UPDATE Funcionarios
SET departamento_id = 1
WHERE id = 2;

UPDATE Funcionarios
SET departamento_id = 2
WHERE id = 1 OR id = 3;

SELECT Funcionarios.nome, cargo, salario, Departamentos.nome
FROM Funcionarios
INNER JOIN Departamentos ON Funcionarios.departamento_id = Departamentos.id

SELECT Departamentos.nome
FROM Departamentos
LEFT JOIN Funcionarios ON Departamentos.id = Funcionarios.departamento_id
GROUP BY Departamentos.nome;

DELETE FROM Funcionarios
WHERE id = 3;

UPDATE Funcionarios
SET salario = 500000
WHERE id = 2;

SELECT Funcionarios.nome AS NomeFuncionario, Departamentos.nome AS NomeDepartamento
FROM Funcionarios
INNER JOIN Departamentos ON Funcionarios.departamento_id = Departamentos.id
WHERE salario = (SELECT MAX(salario) FROM Funcionarios);

CREATE TABLE Projetos(
	id			                INT AUTO_INCREMENT PRIMARY KEY,
  nome		                VARCHAR(100)	NOT NULL,
  funciorario_responsavel INT       NOT NULL,
  data_inicio	            DATE			NOT NULL,
  data_fim	              DATE,
  CONSTRAINT fk_category
  FOREIGN KEY (funciorario_responsavel)
    REFERENCES Funcionarios(id)
);

INSERT INTO Projetos
(nome, funcionario_responsavel, data_inicio)
VALUES
('TG', 2, '2023-10-01'),
('BD', 2, '2023-10-01'),
('TG', 1, '2023-10-01');

SELECT
    Funcionarios.nome AS NomeFuncionario,
    Funcionarios.cargo AS CargoFuncionario,
    Projetos.nome AS NomeProjeto
FROM
    Funcionarios
INNER JOIN
    Projetos ON Funcionarios.id = Projetos.funciorario_responsavel;
