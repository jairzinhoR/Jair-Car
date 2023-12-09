CREATE DATABASE locadora_Jair;
use locadora_jair;

CREATE TABLE Veiculo (
Placa_Veiculo varchar(7) PRIMARY KEY,
Ano int,
Categoria varchar(20),
Cor varchar(20),
Modelo varchar(20),
Marca varchar(20)
);

CREATE TABLE  Cliente (
CPF_Cliente varchar(11) PRIMARY KEY,
Nome varchar(40),
CNH varchar(20),
Idade int,
Telefone varchar(12)
);

CREATE TABLE Tipo_Movimento (
Tipo_Movimento varchar(20),
Cod_Tipo_Movimento int PRIMARY KEY
);

CREATE TABLE Tipo_Servico (
Tipo varchar(20),
Cod_Tipo_do_Servico int PRIMARY KEY
);

CREATE TABLE Funcionarios (
Nome varchar(40),
Cargo varchar(20),
Matricula_Funcionario int PRIMARY KEY
);

CREATE TABLE Oficina (
Data date,
Ordem_de_servico int PRIMARY KEY,
Placa_Veiculo varchar(7),
Cod_Tipo_do_Servico int,
FOREIGN KEY(Placa_Veiculo) REFERENCES Veiculo (Placa_Veiculo),
FOREIGN KEY(Cod_Tipo_do_Servico) REFERENCES Tipo_Servico (Cod_Tipo_do_Servico)
);

CREATE TABLE Locacao_Movimento (
Cod_Locacao int PRIMARY KEY,
Valor decimal(10,2),
Data date,
Placa_Veiculo varchar(7),
CPF_Cliente varchar(11),
Matricula_Funcionario int,
Cod_Tipo_Movimento int,
FOREIGN KEY(Placa_Veiculo) REFERENCES Veiculo (Placa_Veiculo),
FOREIGN KEY(CPF_Cliente) REFERENCES  Cliente (CPF_Cliente),
FOREIGN KEY(Matricula_Funcionario) REFERENCES Funcionarios (Matricula_Funcionario),
FOREIGN KEY(Cod_Tipo_Movimento) REFERENCES Tipo_Movimento (Cod_Tipo_Movimento)
);



INSERT INTO Veiculo VALUES ('PER2212', 2020, 'Economico', 'Azul', 'Fiesta', 'Ford');
INSERT INTO Veiculo VALUES ('POP2456', 2022, 'Confort', 'Branco', 'Renegade', 'Jeep');
INSERT INTO Veiculo VALUES ('CPJ3542', 2021, 'Confort', 'Branco', 'EcoSport', 'Ford');
INSERT INTO Veiculo VALUES ('KAJ9888', 2022, 'Economico', 'Banco', 'Onix', 'Chevrolet');
INSERT INTO Veiculo VALUES ('CAC0101', 2022, 'Economico', 'Prata', 'HB20', 'Hyundai');

INSERT INTO Funcionarios VALUES ('Adilson Silva', 'Vendedor', 003);
INSERT INTO Funcionarios VALUES ('Fernando Cruz', 'Vendedor', 004);
INSERT INTO Funcionarios VALUES ('Jair Rocha', 'Vendedor', 005);
INSERT INTO Funcionarios VALUES ('Michelle Leiz', 'Gerente de Vendas', 002);
INSERT INTO Funcionarios VALUES ('Leonardo Andrade', 'Vendedor', 006);

INSERT INTO Cliente VALUES (1234567890, 'Adeildo Sampaio', 1234567890, 33, 819875121);
INSERT INTO Cliente VALUES (1234567891, 'Felipe Carrera', 1234567891, 22, 819873354);
INSERT INTO Cliente VALUES (1234567892, 'João Roberto', 1234567892, 23, 819873355);
INSERT INTO Cliente VALUES (1234567893, 'Marlene Luiza', 1234567893, 56, 819873115);
INSERT INTO Cliente VALUES (1234567894, 'Luana Alvares', 1234567894, 55, 819273113);

INSERT INTO Tipo_Movimento VALUES ('Aluguel', 1);
INSERT INTO Tipo_Movimento VALUES ('Retirada', 2);
INSERT INTO Tipo_Movimento VALUES ('Devolucao', 3);
INSERT INTO Tipo_Movimento VALUES ('Reserva', 4);
INSERT INTO Tipo_Movimento VALUES ('Renovacao', 5);

INSERT INTO Tipo_Servico VALUES ('Lavagem basica', 1);
INSERT INTO Tipo_Servico VALUES ('Lavagem completa', 2);
INSERT INTO Tipo_Servico VALUES ('Manutencao freios', 3);
INSERT INTO Tipo_Servico VALUES ('Manutencao suspensao', 4);
INSERT INTO Tipo_Servico VALUES ('Manutencao completa', 5);

INSERT INTO Oficina VALUES ('2022-01-03 08:30:10', 001,'PER2212',1);
INSERT INTO Oficina VALUES ('2022-01-03 09:34:10', 002,'PER2212',3);
INSERT INTO Oficina VALUES ('2022-01-03 09:55:50', 003,'POP2456',3);
INSERT INTO Oficina VALUES ('2022-01-03 11:52:50', 004,'CPJ3542',5);
INSERT INTO Oficina VALUES ('2022-01-03 12:33:50', 005,'CAC0101',2);

INSERT INTO Locacao_Movimento VALUES (1, 200,'2022-02-03 08:30:10','CAC0101',1234567890,006,1);
INSERT INTO Locacao_Movimento VALUES (2, 250,'2022-02-03 10:30:10','CPJ3542',1234567891,005,2);
INSERT INTO Locacao_Movimento VALUES (3, 150,'2022-02-03 11:31:20','POP2456',1234567892,004,3);
INSERT INTO Locacao_Movimento VALUES (4, 220,'2022-02-03 12:31:21','PER2212',1234567893,003,4);
INSERT INTO Locacao_Movimento VALUES (5, 200,'2022-02-03 13:51:01','KAJ9888',1234567894,002,5);

SELECT USER FROM mysql.user;

CREATE USER 'DBA'@'localhost' identified BY 'PASSWORD@00';
CREATE USER 'ADM_FROTA'@'localhost' identified BY 'PASSWORD@01';
CREATE USER 'ADM_RH'@'localhost' identified BY 'PASSWORD@02';
CREATE USER 'ADM_CLIENTE'@'localhost' identified BY 'PASSWORD@03';
CREATE USER 'ADM_VENDAS'@'localhost' identified BY 'PASSWORD@04';

GRANT ALL PRIVILEGES ON * . * TO 'DBA'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON locadora_jair.* TO DBA@localhost;

GRANT SELECT, INSERT, UPDATE, DELETE ON locadora_jair.Veiculo TO ADM_FROTA@localhost;
GRANT SELECT, INSERT, UPDATE, DELETE ON locadora_jair.Oficina TO ADM_FROTA@localhost;
GRANT SELECT, INSERT, UPDATE, DELETE ON locadora_jair.Tipo_Servico TO ADM_FROTA@localhost;

GRANT SELECT, INSERT, UPDATE, DELETE ON locadora_jair.Funcionarios TO ADM_RH@localhost;

GRANT SELECT, INSERT, UPDATE, DELETE ON locadora_jair.Cliente TO ADM_CLIENTE@localhost;

GRANT SELECT, INSERT, UPDATE, DELETE ON locadora_jair.Locacao_Movimento TO ADM_VENDAS@localhost;
GRANT SELECT, INSERT, UPDATE, DELETE ON locadora_jair.Tipo_Movimento TO ADM_VENDAS@localhost;