create table categorias(
		categoriaId integer not null identity primary key,
		descricao varchar(30) null
)

create database vendascomercial 

create table categorias(
		categoriaId integer not null identity primary key,
		descricao varchar(30) null
)

select * from categorias

insert into categorias (descricao) values ('Tablets')

create table clientes (
			clienteId int identity (1,1) not null,
			nome varchar(60) null,
			endereco varchar(60) null,
			cidade varchar(50) null,
			bairro varchar(40) null,
			estado varchar(2) null,
			cep varchar(10) null,
			telefone varchar(14) null,
			email varchar(100) null,
			dataNascimento datetime null
			Primary Key (clienteId)
			)

select clienteId,
			 nome,
			 endereco,
			 cidade,
			 bairro varchar,
			 estado varchar,
			 cep varchar,
			 telefone,
			 email,
			 dataNascimento
  from clientes


CREATE TABLE produtos(
		produtoId int IDENTITY(1,1) NOT NULL,
		nome varchar(60) NULL,
		descricao varchar(255) null,
		valor decimal(18,5) default 0.00000 null,
		quantidade decimal(18,5) default 0.00000 null,
		categoriaId int null,
		PRIMARY KEY (produtoId),
		CONSTRAINT FK_ProdutosCategorias 
		FOREIGN KEY (categoriaId) references categorias(categoriaId)
	)