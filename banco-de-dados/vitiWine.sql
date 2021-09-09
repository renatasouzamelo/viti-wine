-- criando database
create database vitiWine;


-- usar database
use vitiWine;


-- criando tabela base Empresa
create table Empresa(
idEmpresa int primary key auto_increment,
nomeEmpresa varchar(45),
cnpjEmpresa varchar(19),  
email varchar(45),
celular varchar(11),
endereço varchar(45)
)auto_increment = 1;


-- inserindo dados na tabela Empresa
insert into Empresa (nomeEmpresa, cnpjEmpresa, email, celular, endereço) values
("Renan", "352.023.768.0001/55", "renan.cardoso@gamil.com", 11978758585, "rua cardoso-1001");

insert into Empresa (nomeEmpresa, cnpjEmpresa, email, celular, endereço)  values
("Abrasil", "452.789.987.0001/85", "robert.souza@yahoo.com", 11985259696, "rua sefora-320");

insert into Empresa (nomeEmpresa, cnpjEmpresa, email, celular, endereço)  values
("Ciagol", "652.147.87.0001/25", "robert.souza@yahoo.com", 11956547896, "rua demostenes- 20");

insert into Empresa (nomeEmpresa, cnpjEmpresa, email, celular, endereço)  values
("Ford", "258.852.963.0001/35", "forbrasil@gmail.com", 11947569898, "rua castanhal -1020");

insert into Empresa (nomeEmpresa, cnpjEmpresa, email, celular, endereço)  values
("Contazil", "147.741.258.0001/85", "contazil@yahoo.com", 1145428589, "av ibirapuera - 1250");

-- Alterar o tamanho da coluna cnpjEmpresa para 20 caracteres
alter table Empresa  modify cnpjEmpresa varchar (20);

-- Mostrar a estrutura da tabela
 desc Empresa;
 
 
-- selecionando tabela 
select * from Empresa;

create table Usuario(
idUsusario int primary key auto_increment, -- chave primaria
nomeUsuario varchar(45),
sobreNomeUsuario varchar(45),
senha varchar(45),
celular varchar(11)
)auto_increment = 1001;

-- inserindo dados na tabela Usuario
insert into Usuario (nomeUsuario, sobreNomeUsuario,senha, celular)  values
("Paulo", "souza", "Popis#1204", "1145428589");

insert into Usuario (nomeUsuario, sobreNomeUsuario,senha, celular)  values
("renan", "oliveira", "Oliveira#2020", "11865198529");

insert into Usuario (nomeUsuario, sobreNomeUsuario,senha, celular)  values
("carlos", "silva", "Sol#325", "1173300458");

insert into Usuario (nomeUsuario, sobreNomeUsuario,senha, celular)  values
("robert", "araujo", "robIs#04", "114528585");

insert into Usuario (nomeUsuario, sobreNomeUsuario,senha, celular)  values
("carlos", "eduarod", "Edu#2021", "1196638587");

-- Atualizar os dados do nomeUsuario idFilme 1002
    update Usuario set nomeUsuario  = " Fiat"  where idUsuario = 1002;
    

-- selecionando tabela 
select * from Usuario;


-- criando a tabela estufas
create table Estufa
(idEstufa int primary key auto_increment,
qtdPes varchar(45),
coordenadas varchar(45)
)auto_increment = 2001;

-- inserindo dados na tabela Estufa
insert into Estufa (qtdPes, coordenadas) values 
(456, 55.7508);

insert into Estufa (qtdPes, coordenadas) values 
(328, 65.8525);

insert into Estufa (qtdPes, coordenadas) values 
(852,78.147);

insert into Estufa (qtdPes, coordenadas) values 
(125, 25.654);

insert into Estufa (qtdPes, coordenadas) values 
(85, 65.789);

-- Selecione a tabela 
select * from Estufa;



-- criando a tabela sensores
create table Sensor
(idSensor int primary key auto_increment,
numeroDeRegistro varchar(45),
dataEhoraInstalacao datetime
)auto_increment = 3001;

-- inserindo dados na tabela sensor
insert into Sensor (numeroDeRegistro, dataEhoraInstalacao) values
("125.852.369.7898", "2021-02-02 14:00");

insert into Sensor (numeroDeRegistro,dataEhoraInstalacao) values
("332.123.456.78", "2020-02-05 15:00");

insert into Sensor (numeroDeRegistro, dataEhoraInstalacao) values
("321.654.987.89", "2020-08-02 19:00");

insert into Sensor (numeroDeRegistro, dataEhoraInstalacao) values
("369.852.741.25", "2021-05-02 13:45");

-- selecione a tabela 
select * from Sensor;

-- Exibir os dados da tabela ordenados em forma descendent pela  dtInstalacao
select * from Sensor order by dataEhoraInstalacao desc;



-- criando a tabela registro
create table Registro(
idRegistros int primary key auto_increment,
temperatura float,
dataEhoraMedicao datetime
)auto_increment = 4001;


-- inserindo dados na table registros
insert into Registro (temperatura, dataEhoraMedicao) values 
(18.01, "2021-02-11 12:00");

insert into Registro (temperatura, dataEhoraMedicao) values 
(27.01, "2020-12-11 15:45");

insert into Registro (temperatura, dataEhoraMedicao) values 
(25.02, "2021-01-05 12:00");

insert into Registro (temperatura, dataEhoraMedicao) values 
(22.02, "2021-02-20 19:58");

insert into Registro (temperatura, dataEhoraMedicao) values 
(25.06, "2021-05-11 12:00");

-- selecione a tabela 
select * from Registro;