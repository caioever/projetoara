drop database if exists projetoara;

create database projetoara;

use projetoara;

create table usuarios
(
nome varchar(20) not null,
sobrenome varchar(20) not null,
senha varchar(20) not null,
email varchar(50) not null primary key,
tipoConta int(2) not null,
pathImgPerf varchar(30) not null,
sexo enum ( 'M' , 'F' ) not null,
telefone varchar(15) not null,
dataNascimento date not null
);
desc Usuarios;



create table documentarios
(
codigo int not null primary key,
nome varchar(40) not null,
sinopse varchar(2000) not null,
estudio varchar(50) not null,
diretor varchar(50) not null,
ano varchar(10),
idioma varchar(50),
url_youtube varchar(300) not null,
caminho_thumb varchar(300) not null
);
desc Documentarios;
