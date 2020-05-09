create database agenda;
use agenda;

create table usuarios (
	id     int primary key auto_increment,
	nome   varchar(64) not null,
	email  varchar(64) not null,
	senha  varchar(64) not null,
	cidade varchar(64) not null,
    dtNasc date
);

create table contatos (
	id      int primary key auto_increment,
	nome    varchar(64) not null,
    dtNasc  date,
    email   varchar(64) not null,
    logradouro varchar(64) not null,
    bairro varchar(64) not null,
    cidade varchar(64) not null,
    estado varchar(64) not null,
    cep    varchar(64) not null,
    telefone varchar(64) not null,
    celular  varchar(64) not null,
    sexo varchar(64) not null,
    idUsuario int not null
);
    
ALTER TABLE contatos ADD FOREIGN KEY (idUsuario) 
REFERENCES usuarios(id);

insert into usuarios values('2', 'sobrevivente', 'gilberto@mail.com', '123', 'barueri', '2019-02-02');