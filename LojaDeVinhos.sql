drop database if exists LojaDeVinhos;
create database LojaDeVinhos;
use LojaDeVinhos;


-- drop table if exists LojaDeVinhos.Regiao;
create table LojaDeVinhos.Regiao
(
	idRegiao bigint not null primary key,
    nomeRegiao varchar(100) not null,
    descRegiao text
);

-- drop table if exists LojaDeVinhos.Vinicola;
create table LojaDeVinhos.Vinicola
(
	idVinicola bigint not null primary key,
    nomeVinicola varchar(100) not null,
    descVinicola text,
    foneVinicola varchar(15),
    emailVinicola varchar(30),
    Regiao_idRegiao bigint not null,
    
    foreign key(Regiao_idRegiao) references LojaDeVinhos.Regiao(idRegiao)
);

-- drop table if exists LojaDeVinhos.Vinho;
create table LojaDeVinhos.Vinho
(
	idVinho bigint not null primary key,
    nomeVinho varchar(50) not null,
    tipoVinho varchar(30) not null,
    anoVinho int not null,
    descVinho text,
    Vinicola_idVinicola bigint not null,
    
    foreign key(Vinicola_idVinicola) references LojaDeVinhos.Vinicola(idVinicola)
);


