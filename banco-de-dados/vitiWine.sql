-- criando database
create database vitiWine;


-- usar database
use vitiWine;


-- criando tabela base Cadastro
create table Cadastro
(idCadastro int primary key auto_increment,
nome varchar(20),
sobrenome varchar(45),
cnpj varchar(14),  
email varchar(60),
telefone varchar(15)
)auto_increment = 1;

-- inserindo dados na tabela Cadastro
insert into Cadastro (nome, sobrenome, cnpj, email, telefone) values
("Renan", "Cardoso", 37087469887, "renan.cardoso@gamil.com", 978758585);

insert into Cadastro (nome, sobrenome, cnpj, email, telefone) values
("Robert", "Souza", 35202379885, "robert.souza@yahoo.com", 985259696);

insert into Cadastro (nome, sobrenome, cnpj, email, telefone) values
("Valeria", "Cardoso", 42589689952, "valeria.cardoso@outlook.com", 972525858);

insert into Cadastro (nome, sobrenome, cnpj, email, telefone) values
("Karina", "Fragoso", 35289696378, "karina.fragoso@uol.com.br", 972459689);

insert into Cadastro (nome, sobrenome, cnpj, email, telefone) values
("Maria", "Fabiana", 45247814725, "maria.fabiana@icloud.com", 972588989);



-- selecionando tabela 
select * from Cadastro;

create table Usuarios 
(idUsusario int primary key auto_increment, -- chave primaria
nome varchar(45),
cpf varchar(12),
email varchar(60),
senha varchar(30),
telefone varchar(15),
fkCadastro int,
foreign key (fkCadastro) references Cadastro (idCadastro)
)auto_increment = 1001;

-- inserindo dados na tabela usuarios




-- selecionando tabela 
select * from Usuarios;

-- criando a tabela estufas
create table Estufas
(idEstufa int primary key auto_increment,
hectares int,
qtdPes int,
coordenadas varchar(20),
fkCadastro int,
foreign key (fkCadastro) references Cadastro (idCadastro)) -- chave estrangeira 
auto_increment = 2001;

-- Selecione a tabela 
select * from Estufas;

-- inserindo dados na tabela estufas



-- criando a tabela sensores
create table Sensores
(idSensores int primary key auto_increment,
modelo varchar(30),
coordenadas varchar(20),
dtInstalacao date,
fkEstufas int,
foreign key (fkEstufas) references Estufas (idEstufa)) -- chave estrangeira 
auto_increment = 3001;


-- selecione a tabela 
select * from Sensores;

-- inserindo dados na tabela sensores 





-- criando a tabela registros
create table Registros
(idRegistros int primary key auto_increment,
temperatura float,
dtMedicao datetime,
fkSensores int,
foreign key (fkSensores) references Sensores (idSensores))
auto_increment = 4001;

-- selecione a tabela 
select * from Registros;


-- inserindo dados na table registros
insert into Registros (temperatura, dtMedicao, fkSensores) values 
(18.01, '2021-02-11 12:00:00', 4001);

