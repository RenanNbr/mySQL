use db_biblioteca;

select database();

show tables;

create table if not exists tbl_livro(
ID_livro smallint auto_increment primary key,
NOME_livro varchar(50) not null,
ISBN varchar(30) not null,
ID_autor smallint not null,
DATA_pub date not null,
PRECO_livro decimal not null
);

show tables;

create table tbl_autores(
ID_autor smallint primary key,
NOME_autor varchar(50) not null,
SOBRENOME_autor varchar(60) not null
);

show tables;

create table tbl_categoria(
ID_categoria smallint primary key,
CATEGORIAS varchar(30) not null
);

show tables;

create table tbl_editoras(
ID_editora smallint primary key auto_increment,
NOME_editora varchar(50) not null
);

show tables;

create table tbl_teste_incremento(
CODIGO smallint primary key auto_increment,
NOME varchar(20) not null
)auto_increment = 15;

insert into tbl_teste_incremento(NOME) value('ANA');
insert into tbl_teste_incremento(NOME) value('MARCELO');
insert into tbl_teste_incremento(NOME) value('SABRINA');
insert into tbl_teste_incremento(NOME) value('VANIA');

select*from tbl_teste_incremento;

select max(CODIGO)
from tbl_teste_incremento;

alter table tbl_teste_incremento
auto_increment = 90;

insert into tbl_teste_incremento(NOME)values('RENATA');
insert into tbl_teste_incremento(NOME)values('RODRIGO');
insert into tbl_teste_incremento(NOME)values('LIVIA');
insert into tbl_teste_incremento(NOME)values('FELIPE');
insert into tbl_teste_incremento(NOME)values('BORATO');

select*from tbl_teste_incremento;